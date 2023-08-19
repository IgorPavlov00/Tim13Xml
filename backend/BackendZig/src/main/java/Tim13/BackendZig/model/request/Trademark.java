package Tim13.BackendZig.model.request;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "podaci_o_zigu")
@XmlAccessorType(XmlAccessType.FIELD)
public class Trademark {


    @XmlElement(name = "vrsta_ziga")
    private TrademarkType trademarkType;

    @XmlElement(name = "vrsta_znaka")
    private GlyphType glyphType;

    @XmlElement(name = "izgled_znaka")
    private String imageLink;

    @XmlElement(name = "naznacenje_boje")
    private String color;

    @XmlElement(name = "transliteracija")
    private String transliteration;

    @XmlElement(name = "prevod")
    private String translation;

    @XmlElement(name = "opis")
    private String description;

    @XmlElement(name = "brojevi_klasa_robe_i_usluga")
    private String classes;

    @XmlElement(name = "pravo_prvenstva")
    private RightPair rightBasis;

    public Trademark() {
        // Empty constructor
    }

    public Trademark(TrademarkType trademarkType, GlyphType glyphType, String imageLink, String color, String transliteration, String translation, String description, String classes, RightPair rightBasis) {
        this.trademarkType = trademarkType;
        this.glyphType = glyphType;
        this.imageLink = imageLink;
        this.color = color;
        this.transliteration = transliteration;
        this.translation = translation;
        this.description = description;
        this.classes = classes;
        this.rightBasis = rightBasis;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTransliteration() {
        return transliteration;
    }

    public void setTransliteration(String transliteration) {
        this.transliteration = transliteration;
    }

    public String getTranslation() {
        return translation;
    }

    public void setTranslation(String translation) {
        this.translation = translation;
    }

    public RightPair getRightBasis() {
        return rightBasis;
    }

    public void setRightBasis(RightPair rightBasis) {
        this.rightBasis = rightBasis;
    }

    public TrademarkType getTrademarkType() {
        return trademarkType;
    }

    public void setTrademarkType(TrademarkType trademarkType) {
        this.trademarkType = trademarkType;
    }

    public GlyphType getGlyphType() {
        return glyphType;
    }

    public void setGlyphType(GlyphType glyphType) {
        this.glyphType = glyphType;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    @Override
    public String toString() {
        return "Trademark{" +
                "imageLink='" + imageLink + '\'' +
                ", color='" + color + '\'' +
                ", description='" + description + '\'' +
                ", transliteration='" + transliteration + '\'' +
                ", translation='" + translation + '\'' +
                ", classes=" + classes +
                ", rightBasis=" + rightBasis +
                ", trademarkType=" + trademarkType +
                ", glyphType=" + glyphType +
                '}';
    }
}