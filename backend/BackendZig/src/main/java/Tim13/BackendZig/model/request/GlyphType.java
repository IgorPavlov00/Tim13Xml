package Tim13.BackendZig.model.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "vrsta_znaka")
@XmlAccessorType(XmlAccessType.FIELD)
public class GlyphType {
    @XmlElement(name = "verbalni_znak")
    private boolean isVerbal;

    @XmlElement(name = "graficki_znak")
    private boolean isGraphic;

    @XmlElement(name = "kombinovani_znak")
    private boolean isCombination;

    @XmlElement(name = "trodimenzionalni_znak")
    private boolean isThreedimensional;

    @XmlElement(name = "drugo")
    private boolean isOther;

    @XmlElement(name = "druga_vrsta")
    private String otherType;

    public GlyphType() {
    }

    public GlyphType(boolean isVerbal, boolean isGraphic, boolean isCombination, boolean isThreedimensional, boolean isOther, String otherType) {
        this.isVerbal = isVerbal;
        this.isGraphic = isGraphic;
        this.isCombination = isCombination;
        this.isThreedimensional = isThreedimensional;
        this.isOther = isOther;
        this.otherType = otherType;
    }

    public boolean isVerbal() {
        return isVerbal;
    }

    public void setVerbal(boolean verbal) {
        isVerbal = verbal;
    }

    public boolean isGraphic() {
        return isGraphic;
    }

    public void setGraphic(boolean graphic) {
        isGraphic = graphic;
    }

    public boolean isCombination() {
        return isCombination;
    }

    public void setCombination(boolean combination) {
        isCombination = combination;
    }

    public boolean isThreedimensional() {
        return isThreedimensional;
    }

    public void setThreedimensional(boolean threedimensional) {
        isThreedimensional = threedimensional;
    }

    public boolean isOther() {
        return isOther;
    }

    public void setOther(boolean other) {
        isOther = other;
    }

    public String getOtherType() {
        return otherType;
    }

    public void setOtherType(String otherType) {
        this.otherType = otherType;
    }

    @Override
    public String toString() {
        return "GlyphType{" +
                "isVerbal=" + isVerbal +
                ", isGraphic=" + isGraphic +
                ", isCombination=" + isCombination +
                ", isThreedimensional=" + isThreedimensional +
                ", isOther=" + isOther +
                ", otherType='" + otherType + '\'' +
                '}';
    }
}