package Tim13.BackendZig.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrademarkDTO {
    @JsonProperty("isIndividual")
    private boolean isIndividual;
    @JsonProperty("isCollective")
    private boolean isCollective;
    @JsonProperty("isWarranty")
    private boolean isWarranty;
    @JsonProperty("isVerbal")
    private boolean isVerbal;
    @JsonProperty("isGraphic")
    private boolean isGraphic;
    @JsonProperty("isCombination")
    private boolean isCombination;
    @JsonProperty("isThreedimensional")
    private boolean isThreedimensional;
    @JsonProperty("isOther")
    private boolean isOther;
    private String otherType;
    private boolean hasRight;
    private String rightBasis;
    private String imageLink;
    private String color;
    private String transliteration;
    private String translation;
    private String description;
    private String classes;

}