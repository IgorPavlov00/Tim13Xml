package Tim13.BackendZig.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "pravo_prvenstva")
@XmlAccessorType(XmlAccessType.FIELD)
public class RightPair {
    @XmlElement(name = "zatrazeno")
    private boolean hasRight;

    @XmlElement(name = "osnov")
    private String rightBasis;

    public RightPair() {
    }

    public RightPair(boolean hasRight, String rightBasis) {
        this.hasRight = hasRight;
        this.rightBasis = rightBasis;
    }

    public boolean isHasRight() {
        return hasRight;
    }

    public void setHasRight(boolean hasRight) {
        this.hasRight = hasRight;
    }

    public String getRightBasis() {
        return rightBasis;
    }

    public void setRightBasis(String rightBasis) {
        this.rightBasis = rightBasis;
    }

    @Override
    public String toString() {
        return "RightPair{" +
                "hasRight=" + hasRight +
                ", rightBasis='" + rightBasis + '\'' +
                '}';
    }
}
