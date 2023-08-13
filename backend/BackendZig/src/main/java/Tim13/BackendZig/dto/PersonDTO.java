package Tim13.BackendZig.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PersonDTO {
    private String name;
    private String lastName;
    private String street;
    private String postCode;
    private String city;
    private String country;
    private String phone;
    private String email;
    private String fax;
    private String personType;

}

