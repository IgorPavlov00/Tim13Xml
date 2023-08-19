package Tim13.BackendZig.model.notice;

import Tim13.BackendZig.model.enums.NoticeType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.xml.sax.SAXException;

import javax.xml.XMLConstants;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.*;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import java.io.File;
import java.io.StringReader;
import java.io.StringWriter;

@Data
@AllArgsConstructor
@NoArgsConstructor
@XmlRootElement(name = "resenje_zahteva_ziga")
@XmlAccessorType(XmlAccessType.FIELD)
public class DecisionNotice {
    @XmlElement(name = "datum")
    private String date;

    @XmlElement(name = "sluzbenik")
    private Official official;

    @XmlElement(name = "obrazlozenje")
    private String rejectionReason;

    @XmlElement(name = "sifra_ziga")
    private String trademarkID;

    @XmlElement(name = "zahtev")
    private String requestReference;

    @XmlAttribute(name = "tip_resenja")
    private NoticeType noticeType;

    public static DecisionNotice fromXml(String xml) throws JAXBException {
        JAXBContext jaxbContext = JAXBContext.newInstance("Tim13.BackendZig.model.notice");
        Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
        StringReader reader = new StringReader(xml);
        return (DecisionNotice) unmarshaller.unmarshal(reader);
    }

    public String toXml() throws JAXBException, SAXException {
        JAXBContext jaxbContext = JAXBContext.newInstance("Tim13.BackendZig.model.notice");
        Marshaller marshaller = jaxbContext.createMarshaller();

        SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
        Schema schema = sf.newSchema(new File("../../xsd/Z1resenje.xsd"));

        marshaller.setSchema(schema);
        marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);

        StringWriter sw = new StringWriter();
        marshaller.marshal(this, sw);
        return sw.toString();
    }

}
