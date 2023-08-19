package Tim13.BackendZig.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RequestNoticeDTO {
    private TrademarkRequestDTO request;
    private NoticeDTO notice;
    private String date;
}
