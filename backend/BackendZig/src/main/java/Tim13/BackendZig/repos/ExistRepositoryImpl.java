package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.Request;
import Tim13.BackendZig.model.RequestData;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.xmldb.api.DatabaseManager;
import org.xmldb.api.base.Collection;
import org.xmldb.api.base.Database;
import org.xmldb.api.base.Resource;
import org.xmldb.api.base.XMLDBException;
import org.xmldb.api.modules.XMLResource;

import javax.annotation.PostConstruct;
import javax.xml.bind.JAXBException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

@Repository
public class ExistRepositoryImpl implements ExistRepository {


    @Value("${exist.username}")
    private String DB_USERNAME;
    @Value("${exist.password}")
    private String DB_PASSWORD;
    @Value("${exist.collection}")
    private String DB_COLLECTION_NAME;
    @Value("${exist.collection.pdf}")
    private String DB_PDF_COLLECTION;
    @Value("${exist.driver}")
    private String DB_DRIVER;
    @Value("${exist.uri}")
    private String DB_URI;

    @PostConstruct
    public void init() throws XMLDBException {
        // Initialize the eXist database connection
        Class<?> cl = null;
        try {
            cl = Class.forName(DB_DRIVER);
            Database database = (Database) cl.newInstance();
            database.setProperty("create-database", "true");
            DatabaseManager.registerDatabase(database);
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | XMLDBException e) {
            throw new XMLDBException(505, "Error initializing eXist database connection: " + e.getMessage(), e);
        }
    }

    @Override
    public <S extends Request> S save(S entity) {
        try {
            String id = entity.getRequestData().getRequestId(); // assume entity has an "id" field
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            XMLResource resource;
            if (this.existsById(id)) {
                resource = (XMLResource) collection.getResource(id + ".xml");
            } else {
                resource = (XMLResource) collection.createResource(id + ".xml", "XMLResource");
            }
            resource.setContent(entity.toXml()); // assume entity has a "toXml" method that returns the XML content as a string
            collection.storeResource(resource);
            RequestData temp = entity.getRequestData();
            temp.setRequestId(resource.getId().split("\\.")[0]);
            entity.setRequestData(temp);
            return entity;
        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error saving entity to eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public void savePDF(String filePath, String documentName, String requestId) throws IOException, XMLDBException {

        byte[] binaryData = Files.readAllBytes(Paths.get(filePath));
        String base64Data = Base64.getEncoder().encodeToString(binaryData);

        String xmlString = "<pdf-file>" + base64Data + "</pdf-file>";
        Collection collection = DatabaseManager.getCollection(DB_URI + DB_PDF_COLLECTION + requestId, DB_USERNAME, DB_PASSWORD);
        XMLResource xmlResource = (XMLResource) collection.createResource(documentName, "XMLResource");
        xmlResource.setContent(xmlString);
        collection.storeResource(xmlResource);
    }

    @Override
    public String retrievePDF(String documentName, String requestId) throws XMLDBException {
        Collection collection = DatabaseManager.getCollection(DB_URI + DB_PDF_COLLECTION + requestId, DB_USERNAME, DB_PASSWORD);
        XMLResource xmlResource = (XMLResource) collection.getResource(documentName);
        byte[] binaryData = xmlResource.getContent().toString().getBytes();
        String base64Data = Base64.getEncoder().encodeToString(binaryData);
        return base64Data;
    }

    @Override
    public <S extends Request> Iterable<S> saveAll(Iterable<S> entities) {
        List<S> savedEntities = new ArrayList<>();
        for (S entity : entities) {
            savedEntities.add(save(entity));
        }
        return savedEntities;
    }

    @Override
    public Optional<Request> findById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            XMLResource resource = (XMLResource) collection.getResource(id + ".xml");
            if (resource != null) {
                Request entity = Request.fromXml(resource.getContent().toString()); // assume entity has a "fromXml" static method that creates an instance from an XML string
                RequestData temp = entity.getRequestData();
                temp.setRequestId(resource.getId().split("\\.")[0]);
                entity.setRequestData(temp);
                return Optional.of(entity);
            } else {
                return Optional.empty();
            }
        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error finding entity in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public boolean existsById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            return collection.getResource(id + ".xml") != null;
        } catch (XMLDBException e) {
            throw new RuntimeException("Error checking if entity exists in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public Iterable<Request> findAll() {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            List<Request> entities = new ArrayList<>();
            String[] resources = collection.listResources();
            List<Resource> resourceSet = new ArrayList<>();
            for (String res : resources) {
                resourceSet.add(collection.getResource(res));
            }
            for (Resource res : resourceSet) {
                XMLResource resource = (XMLResource) res;
                Request entity = Request.fromXml(resource.getContent().toString());
                RequestData temp = entity.getRequestData();
                temp.setRequestId(resource.getId().split("\\.")[0]);
                entity.setRequestData(temp);
                entities.add(entity);
            }
            return entities;
        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error finding all entities in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public Iterable<Request> findAllById(Iterable<String> ids) {
        List<Request> entities = new ArrayList<>();
        for (String id : ids) {
            Optional<Request> entity = findById(id);
            if (entity.isPresent()) {
                entities.add(entity.get());
            }
        }
        return entities;
    }

    @Override
    public long count() {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            return collection.getResourceCount();
        } catch (XMLDBException e) {
            throw new RuntimeException("Error counting entities in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            collection.removeResource(collection.getResource(id));
        } catch (XMLDBException e) {
            throw new RuntimeException("Error deleting entity from eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public void delete(Request entity) {
        deleteById(entity.getRequestData().getRequestId());
    }

    @Override
    public void deleteAllById(Iterable<? extends String> strings) {
        for (String id : strings) {
            deleteById(id);
        }
    }

    @Override
    public void deleteAll(Iterable<? extends Request> entities) {
        for (Request entity : entities) {
            delete(entity);
        }
    }

    @Override
    public void deleteAll() {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_COLLECTION_NAME, DB_USERNAME, DB_PASSWORD);
            String[] resources = collection.listResources();
            List<Resource> removing = new ArrayList<>();
            for (String res : resources) {
                removing.add(collection.getResource(res));
            }
            for (Resource res : removing) {
                collection.removeResource(res);
            }
        } catch (XMLDBException e) {
            throw new RuntimeException("Error deleting all entities from eXist database: " + e.getMessage(), e);
        }
    }

}