package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.request.Request;
import Tim13.BackendZig.model.request.RequestData;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.xml.sax.SAXException;
import org.xmldb.api.DatabaseManager;
import org.xmldb.api.base.*;
import org.xmldb.api.modules.CollectionManagementService;
import org.xmldb.api.modules.XMLResource;

import javax.annotation.PostConstruct;
import javax.xml.bind.JAXBException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class RequestRepositoryImpl implements RequestRepository {


    @Value("${exist.username}")
    private String DB_USERNAME;
    @Value("${exist.password}")
    private String DB_PASSWORD;
    @Value("${exist.collection.unviewed}")
    private String DB_UNVIEWED_COLLECTION;
    @Value("${exist.collection.accepted}")
    private String DB_ACCEPTED_COLLECTION;
    @Value("${exist.collection.rejected}")
    private String DB_REJECTED_COLLECTION;
    @Value("${exist.driver}")
    private String DB_DRIVER;
    @Value("${exist.uri}")
    private String DB_URI;

    @PostConstruct
    public void init() throws Exception {
        registerDatabase();
        createCollectionIfNotExists(DB_UNVIEWED_COLLECTION);
        createCollectionIfNotExists(DB_ACCEPTED_COLLECTION);
        createCollectionIfNotExists(DB_REJECTED_COLLECTION);
    }

    private void registerDatabase() throws XMLDBException {
        try {
            Class<?> cl = Class.forName(DB_DRIVER);
            Database database = (Database) cl.newInstance();
            database.setProperty("create-database", "true");
            DatabaseManager.registerDatabase(database);
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
            throw new XMLDBException(505, "Error initializing eXist database connection: " + e.getMessage(), e);
        }
    }

    private void createCollectionIfNotExists(String collectionName) throws Exception {
        String completePath = DB_URI + collectionName;
        Collection col = DatabaseManager.getCollection(completePath, DB_USERNAME, DB_PASSWORD);

        if (col == null) {
            String[] paths = collectionName.split("/");
            String currentPath = DB_URI;
            Collection parent = null;

            for (int i = 1; i < paths.length; i++) {
                currentPath += "/" + paths[i];
                parent = DatabaseManager.getCollection(currentPath, DB_USERNAME, DB_PASSWORD);

                if (parent == null) {
                    Collection tempParent = DatabaseManager.getCollection(currentPath.substring(0, currentPath.lastIndexOf("/")), DB_USERNAME, DB_PASSWORD);
                    if (tempParent == null) {
                        throw new XMLDBException(ErrorCodes.VENDOR_ERROR, "Unable to locate or create parent collection at: " + currentPath);
                    }
                    CollectionManagementService mgt = (CollectionManagementService) tempParent.getService("CollectionManagementService", "1.0");
                    parent = mgt.createCollection(paths[i]);
                }
            }
        }
    }


    @Override
    public <S extends Request> S save(S entity) {
        return saveInCollection(entity, DB_UNVIEWED_COLLECTION);
    }

    private <S extends Request> S saveInCollection(S entity, String collectionName) {
        try {
            String id = entity.getRequestData().getRequestId();
            Collection collection = DatabaseManager.getCollection(DB_URI + collectionName, DB_USERNAME, DB_PASSWORD);
            XMLResource resource;
            if (this.existsById(id)) {
                resource = (XMLResource) collection.getResource(id + ".xml");
            } else {
                resource = (XMLResource) collection.createResource(id + ".xml", "XMLResource");
            }
            resource.setContent(entity.toXml());
            collection.storeResource(resource);
            RequestData temp = entity.getRequestData();
            temp.setRequestId(resource.getId().split("\\.")[0]);
            entity.setRequestData(temp);
            return entity;
        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error saving entity to eXist database: " + e.getMessage(), e);
        } catch (SAXException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public <S extends Request> S acceptRequest(S entity) {
        this.delete(entity);
        return saveInCollection(entity, DB_ACCEPTED_COLLECTION);
    }

    @Override
    public <S extends Request> S rejectRequest(S entity) {
        this.delete(entity);
        return saveInCollection(entity, DB_REJECTED_COLLECTION);
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
        return this.findByIdInCollection(id, DB_UNVIEWED_COLLECTION);
    }

    @Override
    public boolean existsById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_UNVIEWED_COLLECTION, DB_USERNAME, DB_PASSWORD);
            return collection.getResource(id + ".xml") != null;
        } catch (XMLDBException e) {
            throw new RuntimeException("Error checking if entity exists in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public Iterable<Request> findAll() {
        return this.findAllInCollection(DB_UNVIEWED_COLLECTION);
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

            Collection collection = DatabaseManager.getCollection(DB_URI + DB_UNVIEWED_COLLECTION, DB_USERNAME, DB_PASSWORD);
            return collection.getResourceCount();
        } catch (XMLDBException e) {
            throw new RuntimeException("Error counting entities in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public long countAccepted() {
        try {

            Collection collection = DatabaseManager.getCollection(DB_URI + DB_ACCEPTED_COLLECTION, DB_USERNAME, DB_PASSWORD);
            return collection.getResourceCount();
        } catch (XMLDBException e) {
            throw new RuntimeException("Error counting entities in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public long countRejected() {
        try {

            Collection collection = DatabaseManager.getCollection(DB_URI + DB_REJECTED_COLLECTION, DB_USERNAME, DB_PASSWORD);
            return collection.getResourceCount();
        } catch (XMLDBException e) {
            throw new RuntimeException("Error counting entities in eXist database: " + e.getMessage(), e);
        }
    }


    @Override
    public void deleteById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_UNVIEWED_COLLECTION, DB_USERNAME, DB_PASSWORD);
            Resource resource = collection.getResource(id + ".xml");
            if (resource != null) {
                collection.removeResource(resource);
            } else {
                System.out.println("Resource with ID " + id + " does not exist and cannot be removed.");
            }
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

            Collection collection = DatabaseManager.getCollection(DB_URI + DB_UNVIEWED_COLLECTION, DB_USERNAME, DB_PASSWORD);
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

    @Override
    public Iterable<Request> findAllAccepted() {
        return findAllInCollection(DB_ACCEPTED_COLLECTION);
    }

    @Override
    public Iterable<Request> findAllRejected() {
        return findAllInCollection(DB_REJECTED_COLLECTION);
    }

    @Override
    public Optional<Request> findAcceptedById(String id) {
        return findByIdInCollection(id, DB_ACCEPTED_COLLECTION);
    }

    @Override
    public Optional<Request> findRejectedById(String id) {
        return findByIdInCollection(id, DB_REJECTED_COLLECTION);
    }


    @Override
    public Iterable<Request> findAllInCollection(String collectionName) {
        try {

            Collection collection = DatabaseManager.getCollection(DB_URI + collectionName, DB_USERNAME, DB_PASSWORD);
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
    public Optional<Request> findByIdInCollection(String id, String collectionName) {
        try {

            Collection collection = DatabaseManager.getCollection(DB_URI + collectionName, DB_USERNAME, DB_PASSWORD);
            XMLResource resource = (XMLResource) collection.getResource(id + ".xml");
            if (resource != null) {
                Request entity = Request.fromXml(resource.getContent().toString());
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


}