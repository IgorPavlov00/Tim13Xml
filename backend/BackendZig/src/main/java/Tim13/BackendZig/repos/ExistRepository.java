package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.Request;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExistRepository extends CrudRepository<Request, String> {
    <S extends Request> S save(S entity);
    // your custom methods here
}
