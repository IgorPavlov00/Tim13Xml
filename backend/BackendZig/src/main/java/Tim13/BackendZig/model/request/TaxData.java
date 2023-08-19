package Tim13.BackendZig.model.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "podaci_o_placenoj_taksi")
@XmlAccessorType(XmlAccessType.FIELD)
public class TaxData {

    @XmlElement(name = "osnovna_taksa")
    private double basicTax;

    @XmlElement(name = "za_klase")
    private double classTax;

    @XmlElement(name = "za_graficko_resenje")
    private double graphicTax;

    @XmlElement(name = "ukupno")
    private double totalTax;

    public TaxData(double basicTax, double classTax, double graphicTax, double totalTax) {
        this.basicTax = basicTax;
        this.classTax = classTax;
        this.graphicTax = graphicTax;
        this.totalTax = totalTax;
    }

    public TaxData() {
    }

    public double getBasicTax() {
        return basicTax;
    }

    public void setBasicTax(double basicTax) {
        this.basicTax = basicTax;
    }

    public double getClassTax() {
        return classTax;
    }

    public void setClassTax(double classTax) {
        this.classTax = classTax;
    }

    public double getGraphicTax() {
        return graphicTax;
    }

    public void setGraphicTax(double graphicTax) {
        this.graphicTax = graphicTax;
    }

    public double getTotalTax() {
        return totalTax;
    }

    public void setTotalTax(double totalTax) {
        this.totalTax = totalTax;
    }

    @Override
    public String toString() {
        return "TaxData{" +
                "basicTax=" + basicTax +
                ", classTax=" + classTax +
                ", graphicTax=" + graphicTax +
                ", totalTax=" + totalTax +
                '}';
    }
}