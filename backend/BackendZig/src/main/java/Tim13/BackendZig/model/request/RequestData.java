package Tim13.BackendZig.model.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "podaci_o_zahtevu")
@XmlAccessorType(XmlAccessType.FIELD)
public class RequestData {

    @XmlElement(name = "broj_prijave")
    private String requestId;

    @XmlElement(name = "datum_podnosenja")
    private String date;

    public RequestData() {
    }

    public RequestData(String requestId, String date) {
        this.requestId = requestId;
        this.date = date;
    }

    public String getRequestId() {
        return requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "RequestData{" +
                "requestId='" + requestId + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}