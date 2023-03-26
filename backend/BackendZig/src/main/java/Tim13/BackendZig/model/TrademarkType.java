package Tim13.BackendZig.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "vrsta_ziga")
@XmlAccessorType(XmlAccessType.FIELD)
public class TrademarkType {

    @XmlElement(name = "individualni_zig")
    private boolean isIndividual;

    @XmlElement(name = "kolektivni_zig")
    private boolean isCollective;

    @XmlElement(name = "zig_garancije")
    private boolean isWarranty;

    public TrademarkType() {
    }

    public TrademarkType(boolean isIndividual, boolean isCollective, boolean isWarranty) {
        this.isIndividual = isIndividual;
        this.isCollective = isCollective;
        this.isWarranty = isWarranty;
    }

    public boolean isIndividual() {
        return isIndividual;
    }

    public void setIndividual(boolean individual) {
        isIndividual = individual;
    }

    public boolean isCollective() {
        return isCollective;
    }

    public void setCollective(boolean collective) {
        isCollective = collective;
    }

    public boolean isWarranty() {
        return isWarranty;
    }

    public void setWarranty(boolean warranty) {
        isWarranty = warranty;
    }

    @Override
    public String toString() {
        return "TrademarkType{" +
                "isIndividual=" + isIndividual +
                ", isCollective=" + isCollective +
                ", isWarranty=" + isWarranty +
                '}';
    }
}
