package Tim13.BackendZig.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "podaci_o_predstavniku")
@XmlAccessorType(XmlAccessType.FIELD)
public class Representative{
    @XmlElement(name = "licni_podaci")
    private PersonInfo personInfo;
    @XmlElement(name = "telefon")
    private String phone;

    @XmlElement(name = "email")
    private String email;

    @XmlElement(name = "faks")
    private String fax;

    public Representative() {
    }

    public Representative(PersonInfo personInfo, String phone, String email, String fax) {
        this.personInfo = personInfo;
        this.phone = phone;
        this.email = email;
        this.fax = fax;
    }

    public PersonInfo getPersonInfo() {
        return personInfo;
    }

    public void setPersonInfo(PersonInfo personInfo) {
        this.personInfo = personInfo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    @Override
    public String toString() {
        return "Representative{" +
                "personInfo=" + personInfo +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", fax='" + fax + '\'' +
                '}';
    }
}
