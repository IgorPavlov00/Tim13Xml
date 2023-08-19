package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.request.Request;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RequestRepository extends CrudRepository<Request, String> {
    <S extends Request> S save(S entity);

    <S extends Request> S acceptRequest(S entity);

    <S extends Request> S rejectRequest(S entity);

    long countAccepted();

    long countRejected();

    Iterable<Request> findAllAccepted();

    Iterable<Request> findAllRejected();

    Optional<Request> findAcceptedById(String id);

    Optional<Request> findRejectedById(String id);

    Iterable<Request> findAllInCollection(String collectionName);

    Optional<Request> findByIdInCollection(String id, String collectionName);

    // your custom methods here
}
