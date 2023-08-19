package Tim13.BackendZig.repos;

import Tim13.BackendZig.model.enums.NoticeType;
import Tim13.BackendZig.model.notice.DecisionNotice;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface NoticeRepository extends CrudRepository<DecisionNotice, String> {


    Iterable<DecisionNotice> findAllNoticesByType(NoticeType noticeType);

    Optional<DecisionNotice> findByRequestReference(String requestReference);

}
