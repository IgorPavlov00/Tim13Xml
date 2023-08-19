package Tim13.BackendZig.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDTO {
    private String requestID;
    private String officialName;
    private String officialLastName;
    private String reason;
    private boolean status;
}
