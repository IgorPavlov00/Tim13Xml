package Tim13.BackendZig.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TaxDTO {
    private double basic;
    private double classTax;
    private Double graphic;
    private double total;

}