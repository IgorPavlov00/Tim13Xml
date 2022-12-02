package Tim13.XmlProjekat.Kontroleri;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.*;
import org.xml.sax.SAXException;


@Controller
@RequestMapping("")
public class IndexController {

    @RequestMapping("/")
    public String index() throws ParserConfigurationException, IOException, SAXException {
        System.out.println("Pocetna strana!");
        // xml ucitavanje
        // samo zameni komentare kodom iz main f-je
        File xmlFile = new File("..\\a1.xml");
        File xmlZ1 = new File("..\\z1.xml");
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(xmlFile);
        Document z1 = builder.parse(xmlZ1);
        getA1(doc);
        getZ1(z1);

        String filepath="..\\a11.xml";
        try (FileOutputStream output =
                     new FileOutputStream(filepath)) {
            writeXml(doc, output);
        } catch (IOException | TransformerException e) {
            e.printStackTrace();
        }

        String filepathZ="..\\Z1_1.xml";
        try (FileOutputStream output =
                     new FileOutputStream(filepathZ)) {
            writeXml(z1, output);
        } catch (IOException | TransformerException e) {
            e.printStackTrace();
        }
        return "index.html";
    }

    private static void writeXml(Document doc,
                                 OutputStream output)
            throws TransformerException {

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult(output);

        transformer.transform(source, result);

    }

    private static void getA1(Document doc)
    {

        NodeList prviglavnicvor = doc.getElementsByTagName("podaci_o_zavodu");
        for(int i=0; i<prviglavnicvor.getLength(); i++)
        {
            Node studentNode = prviglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O ZAVODU ###############");
                Element studentElement = (Element) studentNode;
                String studentId = studentElement.getElementsByTagName("naziv").item(0).getTextContent();
                String studentName = studentElement.getElementsByTagName("ulica").item(0).getTextContent();
                String studentNe = studentElement.getElementsByTagName("mesto").item(0).getTextContent();
                System.out.println("Naziv = " + studentId);
                System.out.println("Ulica = " + studentName);
                System.out.println("Mesto = " + studentNe);
            }
        }


        NodeList drugiglavnicvor = doc.getElementsByTagName("podaci_o_zahtevu");
        for(int i=0; i<drugiglavnicvor.getLength(); i++)
        {
            Node studentNode = drugiglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O ZAHTEVU ###############");
                Element studentElement = (Element) studentNode;
                String studentId = studentElement.getElementsByTagName("datum_podnosenja").item(0).getTextContent();
                String studentName = studentElement.getElementsByTagName("obrazac").item(0).getTextContent();

                System.out.println("datum podnosenja = " + studentId);
                System.out.println("Obrazac = " + studentName);

            }
        }

        NodeList treciglavnicvor = doc.getElementsByTagName("podaci_o_podnosiocu");
        for(int i=0; i<treciglavnicvor.getLength(); i++)
        {
            Node studentNode = treciglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O PODNOSIOCU ###############");
                Element studentElement = (Element) studentNode;
                String ime = studentElement.getElementsByTagName("ime").item(0).getTextContent();
                String prezime = studentElement.getElementsByTagName("prezime").item(0).getTextContent();
                String adresa = studentElement.getElementsByTagName("adresa").item(0).getTextContent();
                String drz = studentElement.getElementsByTagName("drzavljanstvo").item(0).getTextContent();
                String posime = studentElement.getElementsByTagName("poslovno_ime").item(0).getTextContent();
                String sediste = studentElement.getElementsByTagName("sediste").item(0).getTextContent();
                String telefon = studentElement.getElementsByTagName("telefon").item(0).getTextContent();
                String email = studentElement.getElementsByTagName("email").item(0).getTextContent();
                String ip = studentElement.getElementsByTagName("pseudonim").item(0).getTextContent();
                System.out.println("ime = " + ime);
                System.out.println("prezime = " + prezime);
                System.out.println("adresa = " + adresa);
                System.out.println("drzavljanstvo = " + drz);
                System.out.println("poslovno ime = " + posime);
                System.out.println("sediste = " + sediste);
                System.out.println("telefon = " + telefon);
                System.out.println("email = " + email);
                System.out.println("pesudonim = " + ip);

            }
        }

        NodeList cetvrtiglavnicvor = doc.getElementsByTagName("podaci_punomocnika");
        for(int i=0; i<cetvrtiglavnicvor.getLength(); i++)
        {
            Node studentNode = cetvrtiglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI PUNOMOCNIKA ###############");
                Element studentElement = (Element) studentNode;
                String ime = studentElement.getElementsByTagName("ime").item(0).getTextContent();
                String prezime = studentElement.getElementsByTagName("prezime").item(0).getTextContent();
                String adresa = studentElement.getElementsByTagName("adresa").item(0).getTextContent();

                System.out.println("ime = " + ime);
                System.out.println("prezime = " + prezime);
                System.out.println("adresa = " + adresa);



            }
        }

        NodeList petiglavnicvor = doc.getElementsByTagName("podaci_o_autorskom_delu");
        for(int i=0; i<petiglavnicvor.getLength(); i++)
        {
            Node studentNode = petiglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O AUTORSKOM DELU ###############");
                Element studentElement = (Element) studentNode;
                String naslov = studentElement.getElementsByTagName("naslov").item(0).getTextContent();
                String anaslov = studentElement.getElementsByTagName("alternativni_naslov").item(0).getTextContent();
                String naslov2 = studentElement.getElementsByTagName("podaci_o_izvornom_delu").item(0).getTextContent();
                String vrsta_autorskog_dela = studentElement.getElementsByTagName("vrsta_autorskog_dela").item(0).getTextContent();
                String forma_autorskog_dela = studentElement.getElementsByTagName("forma_autorskog_dela").item(0).getTextContent();
                String stvoreno_u_radnom_odnosu = studentElement.getElementsByTagName("stvoreno_u_radnom_odnosu").item(0).getTextContent();
                String nacin_koriscenja = studentElement.getElementsByTagName("nacin_koriscenja").item(0).getTextContent();

                System.out.println("naslov = " + naslov);
                System.out.println("anaslov = " + anaslov);
                System.out.println("podaci_o_izvornom delu = " + naslov2);
                System.out.println("vrsta_autorskog_dela = " + vrsta_autorskog_dela);
                System.out.println("forma_autorskog_dela = " + forma_autorskog_dela);
                System.out.println("stvoreno_u_radnom_odnosu = " + stvoreno_u_radnom_odnosu);
                System.out.println("nacin_koriscenja = " + nacin_koriscenja);


            }
        }
        NodeList sestiglavnicvor = doc.getElementsByTagName("podaci_o_autoru_ziv");
        for(int i=0; i<sestiglavnicvor.getLength(); i++)
        {
            Node studentNode = sestiglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O ZIVOM AUTORU ###############");
                Element studentElement = (Element) studentNode;
                String ime = studentElement.getElementsByTagName("ime").item(0).getTextContent();
                String prezime = studentElement.getElementsByTagName("prezime").item(0).getTextContent();
                String adresa = studentElement.getElementsByTagName("adresa").item(0).getTextContent();
                String drzavljanstvo = studentElement.getElementsByTagName("drzavljanstvo").item(0).getTextContent();
                String pseudonim = studentElement.getElementsByTagName("pseudonim").item(0).getTextContent();


                System.out.println("ime = " + ime);
                System.out.println("prezime = " + prezime);
                System.out.println("drzavljanstvo  = " + drzavljanstvo);
                System.out.println("pseudonim = " + pseudonim);

            }
        }

        NodeList sedmiglavnicvor = doc.getElementsByTagName("podaci_o_autoru_mrtav");
        for(int i=0; i<sedmiglavnicvor.getLength(); i++)
        {
            Node studentNode = sedmiglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O MRTVOM AUTORU ###############");
                Element studentElement = (Element) studentNode;
                String ime = studentElement.getElementsByTagName("ime").item(0).getTextContent();
                String prezime = studentElement.getElementsByTagName("prezime").item(0).getTextContent();
                String adresa = studentElement.getElementsByTagName("adresa").item(0).getTextContent();
                String drzavljanstvo = studentElement.getElementsByTagName("drzavljanstvo").item(0).getTextContent();
                String pseudonim = studentElement.getElementsByTagName("pseudonim").item(0).getTextContent();
                String godina = studentElement.getElementsByTagName("godina_smrti").item(0).getTextContent();


                System.out.println("ime = " + ime);
                System.out.println("prezime = " + prezime);
                System.out.println("drzavljanstvo  = " + drzavljanstvo);
                System.out.println("pseudonim = " + pseudonim);
                System.out.println("godina smrti = " + godina);
            }
        }
        NodeList osmiglavnicvor = doc.getElementsByTagName("prilozi");
        for(int i=0; i<osmiglavnicvor.getLength(); i++)
        {
            Node studentNode = osmiglavnicvor.item(i);
            if(studentNode.getNodeType() == Node.ELEMENT_NODE)
            {
                System.out.println("################ PODACI O PRILOZIMA ###############");
                Element studentElement = (Element) studentNode;

                String opis = studentElement.getElementsByTagName("opis_autorskog_dela").item(0).getTextContent();
                String primer = studentElement.getElementsByTagName("primer_autorskog_dela").item(0).getTextContent();


                System.out.println("opis = " + opis);
                System.out.println("primer = " + primer);

            }
        }

    }
    // ovde ubaci funkciju za ucitavanje xml-a

    private static void getZ1(Document doc)
    {
        System.out.println("Podaci o dokumentu Z1");
        printNode(doc);
    }

    private static void printNode(Node node) {

        if (node == null)
            return;

        if (node instanceof Document) {

            System.out.println("START_DOCUMENT");

            Document doc = (Document) node;
            printNode(doc.getDocumentElement());
        } else if (node instanceof Element) {

            Element element = (Element) node;

            System.out.print("START_ELEMENT: " + element.getTagName());

            NamedNodeMap attributes = element.getAttributes();

            if (attributes.getLength() > 0) {

                System.out.print(", ATTRIBUTES: ");

                for (int i = 0; i < attributes.getLength(); i++) {
                    Node attribute = attributes.item(i);
                    printNode(attribute);
                    if (i < attributes.getLength()-1)
                        System.out.print(", ");
                }
            }

            System.out.println();

            NodeList children = element.getChildNodes();

            if (children != null) {
                for (int i = 0; i < children.getLength(); i++) {
                    Node aChild = children.item(i);
                    printNode(aChild);
                }
            }
        }
        else if (node instanceof Attr) {

            Attr attr = (Attr) node;
            System.out.print(attr.getName() + "=" + attr.getValue());

        }
        else if (node instanceof Text) {
            Text text = (Text) node;

            if (text.getTextContent().trim().length() > 0)
                System.out.println("CHARACTERS: " + text.getTextContent().trim());
        }
        else if (node instanceof CDATASection) {
            System.out.println("CDATA: " + node.getNodeValue());
        }
        else if (node instanceof Comment) {
            System.out.println("COMMENT: " + node.getNodeValue());
        }
        else if (node instanceof ProcessingInstruction) {
            System.out.print("PROCESSING INSTRUCTION: ");

            ProcessingInstruction instruction = (ProcessingInstruction) node;
            System.out.print("data: " + instruction.getData());
            System.out.println(", target: " + instruction.getTarget());
        }
        else if (node instanceof Entity) {
            Entity entity = (Entity) node;
            System.out.println("ENTITY: " + entity.getNotationName());
        }
    }
}
