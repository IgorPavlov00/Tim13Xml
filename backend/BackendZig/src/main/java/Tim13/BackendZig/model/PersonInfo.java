package Tim13.BackendZig.model;

import javax.xml.bind.annotation.*;

@XmlRootElement(name = "licni_podaci")
@XmlAccessorType(XmlAccessType.FIELD)
public class PersonInfo {

    @XmlElement(name = "ime")
    private String name;

    @XmlElement(name = "prezime")
    private String lastName;

    @XmlElement(name = "adresa")
    private Address address;

    @XmlAttribute(name = "tip_lica")
    private PersonType personType;

    public PersonInfo() {
    }

    public PersonInfo(String name, String lastName, Address address, PersonType personType) {
        this.name = name;
        this.lastName = lastName;
        this.address = address;
        this.personType = personType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public PersonType getPersonType() {
        return personType;
    }

    public void setPersonType(String personType) {
        this.personType = PersonType.valueOf(personType);
    }

    @Override
    public String toString() {
        return "PersonInfo{" +
                "firstName='" + name + '\'' +
                ", lastName='" + lastName + '\'' +
                ", address=" + address +
                ", personType='" + personType.toString() + '\'' +
                '}';
    }
}
