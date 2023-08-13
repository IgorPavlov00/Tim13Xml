package Tim13.BackendZig.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrademarkRequestDTO {
    private PersonDTO requester;
    private PersonDTO attorney;
    private PersonDTO representative;
    private TrademarkDTO trademark;
    private TaxDTO tax;
    private AttachmentsDTO attachments;
}