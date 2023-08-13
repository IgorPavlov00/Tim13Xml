package Tim13.BackendZig.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AttachmentsDTO {
    private boolean hasCopy;
    private boolean hasList;
    private boolean hasPowerOfAttorney;
    private boolean hasEarlierAttorney;
    private boolean hasLaterAttorney;
    private boolean hasTrademarkAct;
    private boolean hasProofOfRight;
    private boolean hasProofOfPayment;

}