package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.enums.NoticeType;
import Tim13.BackendZig.model.notice.DecisionNotice;
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
public class NoticeRepositoryImpl implements NoticeRepository {


    @Value("${exist.username}")
    private String DB_USERNAME;
    @Value("${exist.password}")
    private String DB_PASSWORD;
    @Value("${exist.collection.notice}")
    private String DB_NOTICE_COLLECTION;
    @Value("${exist.driver}")
    private String DB_DRIVER;
    @Value("${exist.uri}")
    private String DB_URI;

    @PostConstruct
    public void init() throws Exception {
        registerDatabase();
        createCollectionIfNotExists(DB_NOTICE_COLLECTION);
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
    public Iterable<DecisionNotice> findAllNoticesByType(NoticeType noticeType) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            List<DecisionNotice> entities = new ArrayList<>();
            String[] resources = collection.listResources();

            for (String res : resources) {
                XMLResource resource = (XMLResource) collection.getResource(res);
                DecisionNotice entity = DecisionNotice.fromXml(resource.getContent().toString());
                if (entity.getNoticeType() == noticeType) {
                    entities.add(entity);
                }
            }
            return entities;
        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error finding all notices by type in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public <S extends DecisionNotice> S save(S entity) {
        return saveInCollection(entity, DB_NOTICE_COLLECTION);
    }

    private <S extends DecisionNotice> S saveInCollection(S entity, String collectionName) {
        try {
            String id = entity.getDate();
            Collection collection = DatabaseManager.getCollection(DB_URI + collectionName, DB_USERNAME, DB_PASSWORD);
            XMLResource resource;

            if (this.existsById(id)) {
                resource = (XMLResource) collection.getResource(id + ".xml");
            } else {
                resource = (XMLResource) collection.createResource(id + ".xml", "XMLResource");
            }

            resource.setContent(entity.toXml());
            collection.storeResource(resource);
            return entity;

        } catch (XMLDBException | JAXBException | SAXException e) {
            throw new RuntimeException("Error saving entity to eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public <S extends DecisionNotice> Iterable<S> saveAll(Iterable<S> entities) {
        List<S> savedEntities = new ArrayList<>();
        for (S entity : entities) {
            savedEntities.add(save(entity));
        }
        return savedEntities;
    }

    @Override
    public Optional<DecisionNotice> findById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            XMLResource resource = (XMLResource) collection.getResource(id + ".xml");

            if (resource != null) {
                DecisionNotice entity = DecisionNotice.fromXml(resource.getContent().toString());
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
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            return collection.getResource(id + ".xml") != null;
        } catch (XMLDBException e) {
            throw new RuntimeException("Error checking if entity exists in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public Iterable<DecisionNotice> findAll() {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            List<DecisionNotice> entities = new ArrayList<>();
            String[] resources = collection.listResources();

            for (String res : resources) {
                XMLResource resource = (XMLResource) collection.getResource(res);
                DecisionNotice entity = DecisionNotice.fromXml(resource.getContent().toString());
                entities.add(entity);
            }
            return entities;

        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error finding all entities in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public Iterable<DecisionNotice> findAllById(Iterable<String> ids) {
        List<DecisionNotice> entities = new ArrayList<>();
        for (String id : ids) {
            Optional<DecisionNotice> entity = findById(id);
            entity.ifPresent(entities::add);
        }
        return entities;
    }

    @Override
    public long count() {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            return collection.getResourceCount();
        } catch (XMLDBException e) {
            throw new RuntimeException("Error counting entities in eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteById(String id) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            Resource resource = collection.getResource(id + ".xml");

            if (resource != null) {
                collection.removeResource(resource);
            }

        } catch (XMLDBException e) {
            throw new RuntimeException("Error deleting entity from eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public void delete(DecisionNotice entity) {
        deleteById(entity.getRequestReference());  // Assuming `getRequestReference` is the ID
    }

    @Override
    public void deleteAllById(Iterable<? extends String> ids) {
        for (String id : ids) {
            deleteById(id);
        }
    }

    @Override
    public void deleteAll(Iterable<? extends DecisionNotice> entities) {
        for (DecisionNotice entity : entities) {
            delete(entity);
        }
    }

    @Override
    public void deleteAll() {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            String[] resources = collection.listResources();

            for (String res : resources) {
                Resource resource = collection.getResource(res);
                collection.removeResource(resource);
            }

        } catch (XMLDBException e) {
            throw new RuntimeException("Error deleting all entities from eXist database: " + e.getMessage(), e);
        }
    }

    @Override
    public Optional<DecisionNotice> findByRequestReference(String requestReference) {
        try {
            Collection collection = DatabaseManager.getCollection(DB_URI + DB_NOTICE_COLLECTION, DB_USERNAME, DB_PASSWORD);
            String[] resources = collection.listResources();

            for (String res : resources) {
                XMLResource resource = (XMLResource) collection.getResource(res);
                DecisionNotice entity = DecisionNotice.fromXml(resource.getContent().toString());
                if (entity.getRequestReference().equals(requestReference)) {
                    return Optional.of(entity);
                }
            }
            return Optional.empty();
        } catch (XMLDBException | JAXBException e) {
            throw new RuntimeException("Error finding notice by requestReference in eXist database: " + e.getMessage(), e);
        }
    }


}
