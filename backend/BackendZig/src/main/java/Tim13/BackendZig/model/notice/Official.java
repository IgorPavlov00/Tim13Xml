package Tim13.BackendZig.model.notice;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@Data
@AllArgsConstructor
@NoArgsConstructor
@XmlRootElement(name = "sluzbenik")
@XmlAccessorType(XmlAccessType.FIELD)
public class Official {
    @XmlElement(name = "ime")
    private String name;

    @XmlElement(name = "prezime")
    private String lastName;
}
