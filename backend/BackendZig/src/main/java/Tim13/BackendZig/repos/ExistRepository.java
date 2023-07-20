package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.Request;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.xmldb.api.base.XMLDBException;

import java.io.IOException;

@Repository
public interface ExistRepository extends CrudRepository<Request, String> {
    <S extends Request> S save(S entity);

    // your custom methods here

    void savePDF(String filePath, String documentName, String requestId) throws IOException, XMLDBException;

    String retrievePDF(String documentName, String requestId) throws XMLDBException;
}
