package Tim13.BackendZig.model;

import javax.xml.bind.annotation.*;

@XmlRootElement(name = "licni_podaci")
@XmlAccessorType(XmlAccessType.FIELD)
public class PersonInfo {

    @XmlElement(name = "ime")
    private String firstName;

    @XmlElement(name = "prezime")
    private String lastName;

    @XmlElement(name = "adresa")
    private Address address;

    @XmlAttribute(name = "tip_lica")
    private String personType;

    public PersonInfo() {
    }

    public PersonInfo(String firstName, String lastName, Address address, String personType) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.personType = personType;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getPersonType() {
        return personType;
    }

    public void setPersonType(String personType) {
        this.personType = personType;
    }

    @Override
    public String toString() {
        return "PersonInfo{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", address=" + address +
                ", personType='" + personType + '\'' +
                '}';
    }
}
