package Tim13.BackendZig.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "prilozi")
@XmlAccessorType(XmlAccessType.FIELD)
public class Attachments {

    @XmlElement(name = "primerak_znaka")
    private boolean hasCopy;

    @XmlElement(name = "spisak_robe_i_usluga")
    private boolean hasList;

    @XmlElement(name = "punomocje")
    private boolean hasPowerOfAttorney;

    @XmlElement(name = "ranije_prilozeno_punomocje")
    private boolean hasEarlierAttorney;

    @XmlElement(name = "naknadno_dostavljeno_punomocje")
    private boolean hasLaterAttorney;

    @XmlElement(name = "opsti_akt_o_zigu")
    private boolean hasTrademarkAct;

    @XmlElement(name = "dokaz_o_pravu_prvenstva")
    private boolean hasProofOfRight;

    @XmlElement(name = "dokaz_o_uplati_takse")
    private boolean hasProofOfPayment;

    public Attachments() {
    }

    public Attachments(boolean hasCopy, boolean hasList, boolean hasPowerOfAttorney, boolean hasEarlierAttorney, boolean hasLaterAttorney, boolean hasTrademarkAct, boolean hasProofOfRight, boolean hasProofOfPayment) {
        this.hasCopy = hasCopy;
        this.hasList = hasList;
        this.hasPowerOfAttorney = hasPowerOfAttorney;
        this.hasEarlierAttorney = hasEarlierAttorney;
        this.hasLaterAttorney = hasLaterAttorney;
        this.hasTrademarkAct = hasTrademarkAct;
        this.hasProofOfRight = hasProofOfRight;
        this.hasProofOfPayment = hasProofOfPayment;
    }

    public boolean isHasCopy() {
        return hasCopy;
    }

    public void setHasCopy(boolean hasCopy) {
        this.hasCopy = hasCopy;
    }

    public boolean isHasList() {
        return hasList;
    }

    public void setHasList(boolean hasList) {
        this.hasList = hasList;
    }

    public boolean isHasPowerOfAttorney() {
        return hasPowerOfAttorney;
    }

    public void setHasPowerOfAttorney(boolean hasPowerOfAttorney) {
        this.hasPowerOfAttorney = hasPowerOfAttorney;
    }

    public boolean isHasEarlierAttorney() {
        return hasEarlierAttorney;
    }

    public void setHasEarlierAttorney(boolean hasEarlierAttorney) {
        this.hasEarlierAttorney = hasEarlierAttorney;
    }

    public boolean isHasLaterAttorney() {
        return hasLaterAttorney;
    }

    public void setHasLaterAttorney(boolean hasLaterAttorney) {
        this.hasLaterAttorney = hasLaterAttorney;
    }

    public boolean isHasTrademarkAct() {
        return hasTrademarkAct;
    }

    public void setHasTrademarkAct(boolean hasTrademarkAct) {
        this.hasTrademarkAct = hasTrademarkAct;
    }

    public boolean isHasProofOfRight() {
        return hasProofOfRight;
    }

    public void setHasProofOfRight(boolean hasProofOfRight) {
        this.hasProofOfRight = hasProofOfRight;
    }

    public boolean isHasProofOfPayment() {
        return hasProofOfPayment;
    }

    public void setHasProofOfPayment(boolean hasProofOfPayment) {
        this.hasProofOfPayment = hasProofOfPayment;
    }

    @Override
    public String toString() {
        return "Attachments{" +
                "hasCopy=" + hasCopy +
                ", hasList=" + hasList +
                ", hasPowerOfAttorney=" + hasPowerOfAttorney +
                ", hasEarlierAttorney=" + hasEarlierAttorney +
                ", hasLaterAttorney=" + hasLaterAttorney +
                ", hasTrademarkAct=" + hasTrademarkAct +
                ", hasProofOfRight=" + hasProofOfRight +
                ", hasProofOfPayment=" + hasProofOfPayment +
                '}';
    }
}