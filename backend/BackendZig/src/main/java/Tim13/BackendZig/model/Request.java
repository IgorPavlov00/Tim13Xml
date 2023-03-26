package Tim13.BackendZig.model;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.StringReader;
import java.io.StringWriter;

@XmlRootElement(name = "zahtev_za_priznanje_ziga")
@XmlAccessorType(XmlAccessType.FIELD)
public class Request {
    @XmlElement(name = "podaci_o_zahtevu")
    private RequestData requestData;

    @XmlElement(name = "podaci_o_podnosiocu")
    private Requester requester;

    @XmlElement(name = "podaci_o_punomocniku")
    private Attorney attorney;

    @XmlElement(name = "podaci_o_predstavniku")
    private Representative representative;

    @XmlElement(name = "podaci_o_zigu")
    private Trademark trademark;

    @XmlElement(name = "podaci_o_placenoj_taksi")
    private TaxData taxData;

    @XmlElement(name = "prilozi")
    private Attachments attachments;

    public Request() {
    }

    public Request(RequestData requestData, Requester requester, Attorney attorney, Representative representative, Trademark trademark, TaxData taxData, Attachments attachments) {
        this.requestData = requestData;
        this.requester = requester;
        this.attorney = attorney;
        this.representative = representative;
        this.trademark = trademark;
        this.taxData = taxData;
        this.attachments = attachments;
    }

    public Request(Request other) {
        this.requestData = other.getRequestData();
        this.requester = other.getRequester();
        this.attorney = other.getAttorney();
        this.representative = other.getRepresentative();
        this.trademark = other.getTrademark();
        this.taxData = other.getTaxData();
        this.attachments = other.getAttachments();
    }

    public static Request fromXml(String xml) throws JAXBException {
        JAXBContext jaxbContext = JAXBContext.newInstance("Tim13.BackendZig.model");
        Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
        StringReader reader = new StringReader(xml);
        return (Request) unmarshaller.unmarshal(reader);
    }

    public RequestData getRequestData() {
        return requestData;
    }

    public void setRequestData(RequestData requestData) {
        this.requestData = requestData;
    }

    public Requester getRequester() {
        return requester;
    }

    public void setRequester(Requester requester) {
        this.requester = requester;
    }

    public Attorney getAttorney() {
        return attorney;
    }

    public void setAttorney(Attorney attorney) {
        this.attorney = attorney;
    }

    public Representative getRepresentative() {
        return representative;
    }

    public void setRepresentative(Representative representative) {
        this.representative = representative;
    }

    public Trademark getTrademark() {
        return trademark;
    }

    public void setTrademark(Trademark trademark) {
        this.trademark = trademark;
    }

    public TaxData getTaxData() {
        return taxData;
    }

    public void setTaxData(TaxData taxData) {
        this.taxData = taxData;
    }

    public Attachments getAttachments() {
        return attachments;
    }

    public void setAttachments(Attachments attachments) {
        this.attachments = attachments;
    }

    @Override
    public String toString() {
        return "Request{" +
                "requestData=" + requestData +
                ",\n requester=" + requester +
                ",\n attorney=" + attorney +
                ",\n representative=" + representative +
                ",\n trademark=" + trademark +
                ",\n taxData=" + taxData +
                ",\n attachments=" + attachments +
                '}';
    }

    public String toXml() throws JAXBException {
        JAXBContext jaxbContext = JAXBContext.newInstance("Tim13.BackendZig.model");
        Marshaller marshaller = jaxbContext.createMarshaller();
        marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
        StringWriter sw = new StringWriter();
        marshaller.marshal(this, sw);
        return sw.toString();
    }

}