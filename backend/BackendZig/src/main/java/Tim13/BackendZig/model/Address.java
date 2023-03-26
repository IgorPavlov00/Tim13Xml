package Tim13.BackendZig.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "adresa")
@XmlAccessorType(XmlAccessType.FIELD)
public class Address {
    @XmlElement(name = "ulica")
    private String street;

    @XmlElement(name = "postanski_broj")
    private int postCode;

    @XmlElement(name = "mesto")
    private String city;

    @XmlElement(name = "drzava")
    private String country;

    public Address() {
    }

    public Address(String street, int postCode, String city, String country) {
        this.street = street;
        this.postCode = postCode;
        this.city = city;
        this.country = country;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getPostCode() {
        return postCode;
    }

    public void setPostCode(int postCode) {
        this.postCode = postCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "Address{" +
                "street='" + street + '\'' +
                ", postCode=" + postCode +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
