package Tim13.BackendZig.service;

import Tim13.BackendZig.dto.NoticeDTO;
import Tim13.BackendZig.model.enums.NoticeType;
import Tim13.BackendZig.model.notice.DecisionNotice;
import Tim13.BackendZig.model.notice.Official;
import Tim13.BackendZig.repos.NoticeRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DecisionNoticeService {

    @Autowired
    private NoticeRepositoryImpl noticeRepository;

    public List<DecisionNotice> filterNoticesByDate(NoticeType noticeType, LocalDate start, LocalDate end) {
        List<DecisionNotice> allByType = (List<DecisionNotice>) noticeRepository.findAllNoticesByType(noticeType);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        return allByType.stream()
                .filter(notice -> {
                    LocalDate noticeDate = LocalDate.parse(notice.getDate(), formatter);
                    return !noticeDate.isBefore(start) && !noticeDate.isAfter(end);
                })
                .collect(Collectors.toList());
    }


    public long countNoticesByTypeAndDate(NoticeType noticeType, LocalDate start, LocalDate end) {
        return filterNoticesByDate(noticeType, start, end).size();
    }

    public DecisionNotice mapToNotice(NoticeDTO dto) {
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        String date = currentDateTime.format(dateFormat);
        String link = "http://localhost:8082/requests/accepted/" + dto.getRequestID();
        if (dto.isStatus()) {
            DateTimeFormatter idFormat = DateTimeFormatter.ofPattern("ddMM-yy-HHmm");
            String id = currentDateTime.format(idFormat);
            return new DecisionNotice(date, new Official(dto.getOfficialName(), dto.getOfficialLastName()), null, id, link, NoticeType.odobreno);
        }
        return new DecisionNotice(date, new Official(dto.getOfficialName(), dto.getOfficialLastName()), dto.getReason(), null, link, NoticeType.odbijeno);
    }

    public NoticeDTO mapToDTO(DecisionNotice notice) {
        boolean status = (notice.getNoticeType() == NoticeType.odobreno);
        return new NoticeDTO(notice.getTrademarkID(), notice.getOfficial().getName(), notice.getOfficial().getLastName(), notice.getRejectionReason(), status);
    }


    public void saveNotice(NoticeDTO dto) {
        DecisionNotice notice = this.mapToNotice(dto);
        this.noticeRepository.save(notice);
    }

    public DecisionNotice getNoticeByRequestReference(String requestReference) {
        Optional<DecisionNotice> opt = noticeRepository.findByRequestReference(requestReference);
        return opt.orElse(null);
    }

}

