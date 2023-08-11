package Tim13.BackendAP.controller;

import Tim13.BackendAP.model.FormDataDTO;
import Tim13.BackendAP.model.Resurs;
import Tim13.BackendAP.util.ExistConnProperties;
import Tim13.BackendAP.util.FusekiAuthProperties;
import Tim13.BackendAP.util.MetadataExtractor;
import Tim13.BackendAP.util.SparqlUtil;
import net.sf.saxon.TransformerFactoryImpl;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;
import org.apache.jena.query.*;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.RDFNode;
import org.apache.jena.update.UpdateExecutionFactory;
import org.apache.jena.update.UpdateFactory;
import org.apache.jena.update.UpdateProcessor;
import org.apache.jena.update.UpdateRequest;
import org.exist.xmldb.EXistResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xmldb.api.DatabaseManager;
import org.xmldb.api.base.Collection;
import org.xmldb.api.base.Database;
import org.xmldb.api.base.Resource;
import org.xmldb.api.base.XMLDBException;
import org.xmldb.api.modules.CollectionManagementService;
import org.xmldb.api.modules.XMLResource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class RequestController {

    private static final String A1_NAMED_GRAPH_URI = "/a1";
    private static ExistConnProperties conn;

    private static void writeXml(Document doc,
                                 OutputStream output)
            throws TransformerException {

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult(output);
        transformer.transform(source, result);

    }

    private static void getA1(Document doc) {

        NodeList prviglavnicvor = doc.getElementsByTagName("podaci_o_zavodu");
        for (int i = 0; i < prviglavnicvor.getLength(); i++) {
            Node studentNode = prviglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
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
        for (int i = 0; i < drugiglavnicvor.getLength(); i++) {
            Node studentNode = drugiglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
                System.out.println("################ PODACI O ZAHTEVU ###############");
                Element studentElement = (Element) studentNode;
                String studentId = studentElement.getElementsByTagName("datum_podnosenja").item(0).getTextContent();
                String studentName = studentElement.getElementsByTagName("obrazac").item(0).getTextContent();

                System.out.println("datum podnosenja = " + studentId);
                System.out.println("Obrazac = " + studentName);

            }
        }

        NodeList treciglavnicvor = doc.getElementsByTagName("podaci_o_podnosiocu");
        for (int i = 0; i < treciglavnicvor.getLength(); i++) {
            Node studentNode = treciglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
                System.out.println("################ PODACI O PODNOSIOCU ###############");
                Element studentElement = (Element) studentNode;
                String ime = studentElement.getElementsByTagName("ime").item(0).getTextContent();
                String prezime = studentElement.getElementsByTagName("prezime").item(0).getTextContent();
                String adresa = studentElement.getElementsByTagName("adresa").item(0).getTextContent();
                String drz = studentElement.getElementsByTagName("drzavljanstvo").item(0).getTextContent();
                String telefon = studentElement.getElementsByTagName("telefon").item(0).getTextContent();
                String email = studentElement.getElementsByTagName("email").item(0).getTextContent();
                String ip = studentElement.getElementsByTagName("pseudonim").item(0).getTextContent();
                System.out.println("ime = " + ime);
                System.out.println("prezime = " + prezime);
                System.out.println("adresa = " + adresa);
                System.out.println("drzavljanstvo = " + drz);
                System.out.println("telefon = " + telefon);
                System.out.println("email = " + email);
                System.out.println("pesudonim = " + ip);

            }
        }

        NodeList cetvrtiglavnicvor = doc.getElementsByTagName("podaci_punomocnika");
        for (int i = 0; i < cetvrtiglavnicvor.getLength(); i++) {
            Node studentNode = cetvrtiglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
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
        for (int i = 0; i < petiglavnicvor.getLength(); i++) {
            Node studentNode = petiglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
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
        for (int i = 0; i < sestiglavnicvor.getLength(); i++) {
            Node studentNode = sestiglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
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
        for (int i = 0; i < sedmiglavnicvor.getLength(); i++) {
            Node studentNode = sedmiglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
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
        for (int i = 0; i < osmiglavnicvor.getLength(); i++) {
            Node studentNode = osmiglavnicvor.item(i);
            if (studentNode.getNodeType() == Node.ELEMENT_NODE) {
                System.out.println("################ PODACI O PRILOZIMA ###############");
                Element studentElement = (Element) studentNode;

                String opis = studentElement.getElementsByTagName("opis_autorskog_dela").item(0).getTextContent();
                String primer = studentElement.getElementsByTagName("primer_autorskog_dela").item(0).getTextContent();


                System.out.println("opis = " + opis);
                System.out.println("primer = " + primer);

            }
        }

    }

    private static void createA1(Document doc, Element rootElement, FormDataDTO formData) {
        // Create "podaci_o_zavodu" element
        Element podaci_o_zavodu = doc.createElement("podaci_o_zavodu");
        rootElement.appendChild(podaci_o_zavodu);

        // Create and set values for "naziv" element
        Element naziv = doc.createElement("naziv");
        naziv.setTextContent("Zavod za intelektualnu svojinu");
        podaci_o_zavodu.appendChild(naziv);

        // Create "adresa" element
        Element adresa = doc.createElement("adresa");
        podaci_o_zavodu.appendChild(adresa);

        // Create and set values for "ulica" element within "adresa"
        Element ulica1 = doc.createElement("ulica");
        ulica1.setTextContent("Kneginja Ljubice 5");
        adresa.appendChild(ulica1);

        // Create and set values for "mesto" element within "adresa"
        Element mesto1 = doc.createElement("mesto");
        mesto1.setTextContent("Beograd");
        adresa.appendChild(mesto1);

        // Create "podaci_o_zahtevu" element
        Element podaci_o_zahtevu = doc.createElement("podaci_o_zahtevu");
        rootElement.appendChild(podaci_o_zahtevu);

        // Create and set values for "datum_podnosenja" element within "podaci_o_zahtevu"
        Element datum_podnosenja = doc.createElement("datum_podnosenja");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        String currentDate = LocalDate.now().format(formatter);
        System.out.println(currentDate);
        datum_podnosenja.setTextContent(currentDate);
        podaci_o_zahtevu.appendChild(datum_podnosenja);

        // Create and set values for "obrazac" element within "podaci_o_zahtevu"
        Element obrazac = doc.createElement("obrazac");
        obrazac.setTextContent("A-1");
        podaci_o_zahtevu.appendChild(obrazac);

        // Create "podaci_o_podnosiocu" element
        Element podaci_o_podnosiocu = doc.createElement("podaci_o_podnosiocu");
        rootElement.appendChild(podaci_o_podnosiocu);

        // Create "licni_podaci" element within "podaci_o_podnosiocu" and set its attribute
        Element licni_podaci = doc.createElement("licni_podaci");
        licni_podaci.setAttribute("tip_lica", formData.getTip_korisnika());
        podaci_o_podnosiocu.appendChild(licni_podaci);

        // Create and set values for "ime" element within "licni_podaci"
        Element ime1 = doc.createElement("ime");
        ime1.setTextContent(formData.getIme());
        licni_podaci.appendChild(ime1);

        // Create and set values for "prezime" element within "licni_podaci"
        Element prezime1 = doc.createElement("prezime");
        prezime1.setTextContent(formData.getPrezime());
        licni_podaci.appendChild(prezime1);

        // Create "adresa" element within "licni_podaci"
        Element adresa2 = doc.createElement("adresa");
        licni_podaci.appendChild(adresa2);

        // Create and set values for "ulica" element within "adresa"
        Element ulica2 = doc.createElement("ulica");
        ulica2.setTextContent(formData.getAdresa());
        adresa2.appendChild(ulica2);

        // Create and set values for "mesto" element within "adresa"
        Element mesto2 = doc.createElement("mesto");
        mesto2.setTextContent(formData.getMesto());
        adresa2.appendChild(mesto2);

        // Create and set values for "drzavljanstvo" element within "licni_podaci"
        Element drzavljanstvo = doc.createElement("drzavljanstvo");
        drzavljanstvo.setTextContent(formData.getDrzavljanstvo());
        licni_podaci.appendChild(drzavljanstvo);

        // Create and set values for "telefon" element within "podaci_o_podnosiocu"
        Element telefon = doc.createElement("telefon");
        telefon.setTextContent(formData.getTelefon1());
        podaci_o_podnosiocu.appendChild(telefon);

        // Create and set values for "email" element within "podaci_o_podnosiocu"
        Element email = doc.createElement("email");
        email.setTextContent(formData.getEmail1());
        podaci_o_podnosiocu.appendChild(email);

        // Create and set values for "pseudonim" element within "podaci_o_podnosiocu"
        Element pseudonim = doc.createElement("pseudonim");
        pseudonim.setTextContent(formData.getPseudonim());
        podaci_o_podnosiocu.appendChild(pseudonim);

        // Create "podaci_punomocnika" element
        Element podaci_punomocnika = doc.createElement("podaci_punomocnika");
        rootElement.appendChild(podaci_punomocnika);

        // Create and set values for "ime" element within "podaci_punomocnika"
        Element ime2 = doc.createElement("ime");
        ime2.setTextContent(formData.getPunomocnik_ime());
        podaci_punomocnika.appendChild(ime2);

        // Create and set values for "prezime" element within "podaci_punomocnika"
        Element prezime2 = doc.createElement("prezime");
        prezime2.setTextContent(formData.getPunomocnik_prezime());
        podaci_punomocnika.appendChild(prezime2);

        // Create "adresa" element within "podaci_punomocnika"
        Element adresa3 = doc.createElement("adresa");
        podaci_punomocnika.appendChild(adresa3);

        // Create and set values for "ulica" element within "adresa"
        Element ulica3 = doc.createElement("ulica");
        ulica3.setTextContent(formData.getPunomocnik_adresa());
        adresa3.appendChild(ulica3);

        // Create and set values for "mesto" element within "adresa"
        Element mesto3 = doc.createElement("mesto");
        mesto3.setTextContent(formData.getPunomocnik_mesto());
        adresa3.appendChild(mesto3);

        // Create "podaci_o_autorskom_delu" element
        Element podaci_o_autorskom_delu = doc.createElement("podaci_o_autorskom_delu");
        rootElement.appendChild(podaci_o_autorskom_delu);

        // Create and set values for "naslov" element within "podaci_o_autorskom_delu"
        Element naslov = doc.createElement("naslov");
        naslov.setTextContent(formData.getNaslov());
        podaci_o_autorskom_delu.appendChild(naslov);

        // Create and set values for "alternativni_naslov" element within "podaci_o_autorskom_delu"
        Element alternativni_naslov = doc.createElement("alternativni_naslov");
        alternativni_naslov.setTextContent(formData.getAlternativni_naslov());
        podaci_o_autorskom_delu.appendChild(alternativni_naslov);

        // Create "podaci_o_izvornom_delu" element within "podaci_o_autorskom_delu"
        Element podaci_o_izvornom_delu = doc.createElement("podaci_o_izvornom_delu");
        podaci_o_autorskom_delu.appendChild(podaci_o_izvornom_delu);

        // Create and set values for "naslov" element within "podaci_o_izvornom_delu"
        Element naslov2 = doc.createElement("naslov");
        naslov2.setTextContent(formData.getNaslov_izvornog_dela());
        podaci_o_izvornom_delu.appendChild(naslov2);

        // Create and set values for "autor" element within "podaci_o_izvornom_delu"
        Element autor = doc.createElement("autor");
        autor.setTextContent(formData.getAutor_izvornog_dela());
        podaci_o_izvornom_delu.appendChild(autor);

        // Create and set values for "vrsta_autorskog_dela" element within "podaci_o_autorskom_delu"
        Element vrsta_autorskog_dela = doc.createElement("vrsta_autorskog_dela");
        vrsta_autorskog_dela.setTextContent(formData.getVrsta_dela());
        podaci_o_autorskom_delu.appendChild(vrsta_autorskog_dela);

        // Create and set values for "forma_autorskog_dela" element within "podaci_o_autorskom_delu"
        Element forma_autorskog_dela = doc.createElement("forma_autorskog_dela");
        forma_autorskog_dela.setTextContent(formData.getForma_zapisa());
        podaci_o_autorskom_delu.appendChild(forma_autorskog_dela);

        // Create and set values for "stvoreno_u_radnom_odnosu" element within "podaci_o_autorskom_delu"
        Element stvoreno_u_radnom_odnosu = doc.createElement("stvoreno_u_radnom_odnosu");
        stvoreno_u_radnom_odnosu.setTextContent(formData.getAutorskoDeloStvorenoURadnomOdnosu());
        podaci_o_autorskom_delu.appendChild(stvoreno_u_radnom_odnosu);

        // Create and set values for "nacin_koriscenja" element within "podaci_o_autorskom_delu"
        Element nacin_koriscenja = doc.createElement("nacin_koriscenja");
        nacin_koriscenja.setTextContent(formData.getNacin_koriscenja());
        podaci_o_autorskom_delu.appendChild(nacin_koriscenja);

        // Create "podaci_o_autoru_ziv" element
        Element podaci_o_autoru_ziv = doc.createElement("podaci_o_autoru_ziv");
        rootElement.appendChild(podaci_o_autoru_ziv);

        // Create and set values for "ime" element within "podaci_o_autoru_ziv"
        Element ime3 = doc.createElement("ime");
        ime3.setTextContent("Igor");
        podaci_o_autoru_ziv.appendChild(ime3);

        // Create and set values for "prezime" element within "podaci_o_autoru_ziv"
        Element prezime3 = doc.createElement("prezime");
        prezime3.setTextContent("Pavlov");
        podaci_o_autoru_ziv.appendChild(prezime3);

        // Create "adresa" element within "podaci_o_autoru_ziv"
        Element adresa4 = doc.createElement("adresa");
        podaci_o_autoru_ziv.appendChild(adresa4);

        // Create and set values for "ulica" element within "adresa"
        Element ulica4 = doc.createElement("ulica");
        ulica4.setTextContent("Adi Endrea 33");
        adresa4.appendChild(ulica4);

        // Create and set values for "mesto" element within "adresa"
        Element mesto4 = doc.createElement("mesto");
        mesto4.setTextContent("Novi Sad");
        adresa4.appendChild(mesto4);

        // Create and set values for "drzavljanstvo" element within "podaci_o_autoru_ziv"
        Element drzavljanstvo2 = doc.createElement("drzavljanstvo");
        drzavljanstvo2.setTextContent("srpsko");
        podaci_o_autoru_ziv.appendChild(drzavljanstvo2);

        // Create and set values for "pseudonim" element within "podaci_o_autoru_ziv"
        Element pseudonim2 = doc.createElement("pseudonim");
        pseudonim2.setTextContent("ip");
        podaci_o_autoru_ziv.appendChild(pseudonim2);

        // Create "prilozi" element
        Element prilozi = doc.createElement("prilozi");
        rootElement.appendChild(prilozi);

        // Create and set values for "opis_autorskog_dela" element within "prilozi"
        Element opis_autorskog_dela2 = doc.createElement("opis_autorskog_dela");
        opis_autorskog_dela2.setTextContent("true");
        prilozi.appendChild(opis_autorskog_dela2);

        // Create and set values for "primer_autorskog_dela" element within "prilozi"
        Element primer_autorskog_dela2 = doc.createElement("primer_autorskog_dela");
        primer_autorskog_dela2.setTextContent("true");
        prilozi.appendChild(primer_autorskog_dela2);
    }

    public static List<Resurs> retrieve(ExistConnProperties conn, String[] args) throws Exception {
        try {
            // initialize collection and document identifiers
            String collectionId = null;
            String documentId = null;

            if (args.length == 2) {
                System.out.println("[INFO] Passing the arguments...");
                collectionId = args[0];
                documentId = args[1];
            } else {
                System.out.println("[INFO] Using defaults.");
                collectionId = "/db/sample/library";
                documentId = "1.xml";
            }

            System.out.println("\t- collection ID: " + collectionId);
            System.out.println("\t- document ID: " + documentId + "\n");

            // initialize database driver
            System.out.println("[INFO] Loading driver class: " + conn.driver);
            Class<?> cl = Class.forName(conn.driver);
            Database database = (Database) cl.newInstance();
            database.setProperty("create-database", "true");
            DatabaseManager.registerDatabase(database);

            Collection col = null;
            XMLResource res = null;
            List<Resurs> resultList = new ArrayList<>();

            try {
                // get the collection
                System.out.println("[INFO] Retrieving the collection: " + collectionId);
                col = DatabaseManager.getCollection(conn.uri + collectionId);
                if (col == null) {
                    throw new XMLDBException(0);
                }
                col.setProperty(OutputKeys.INDENT, "yes");

                for (String doc : col.listResources()) {
                    if (doc.startsWith("a") || doc.startsWith("form_data_")) {
                        System.out.println("[INFO] Retrieving the document: " + doc);
                        res = (XMLResource) col.getResource(doc);
                        System.out.println("Dokument:" + res.getContent());
                        resultList.add(new Resurs(res.getId(), res.getContent() + ""));


                    } else {
                        System.out.println("[WARNING] Document '" + doc + "' can not be found!");
                    }

                }
                return resultList;

            } finally {
                //don't forget to clean up!
                if (res != null) {
                    try {
                        ((EXistResource) res).freeResources();
                    } catch (XMLDBException xe) {
                        xe.printStackTrace();
                    }
                }

                if (col != null) {
                    try {
                        col.close();
                    } catch (XMLDBException xe) {
                        xe.printStackTrace();
                    }
                }
            }


        } catch (XMLDBException xe) {
            xe.printStackTrace();
            throw xe;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }


    public static void store(ExistConnProperties conn, String[] args, List<Resurs> resultList) throws Exception {


        // initialize collection and document identifiers
        String collectionId = null;
        String documentId = null;
        String filePath = null;

        if (args.length == 3) {

            System.out.println("[INFO] Passing the arguments... ");

            collectionId = args[0];
            System.out.println(collectionId);
            documentId = args[1];
            System.out.println(documentId);
            filePath = args[2];
            System.out.println(filePath);
        } else {

            System.out.println("[INFO] Using defaults.");

            collectionId = "/db/sample/library";
            documentId = "1.xml";

            filePath = "data/books.xml";

        }

        System.out.println("\t- collection ID: " + collectionId);
        System.out.println("\t- document ID: " + documentId);
        System.out.println("\t- file path: " + filePath + "\n");

        // initialize database driver
        System.out.println("[INFO] Loading driver class: " + conn.driver);
        Class<?> cl = Class.forName(conn.driver);


        // encapsulation of the database driver functionality
        Database database = (Database) cl.newInstance();
        database.setProperty("create-database", "true");

        // entry point for the API which enables you to get the Collection reference
        DatabaseManager.registerDatabase(database);

        // a collection of Resources stored within an XML database
        Collection col = null;


        try {

            System.out.println("[INFO] Retrieving the collection: " + collectionId);
            col = getOrCreateCollection(collectionId);


            /*
             *  create new XMLResource with a given id
             *  an id is assigned to the new resource if left empty (null)
             */
            System.out.println("[INFO] Inserting the resource in the resultlist: " + documentId);

            for (Resurs resource : resultList) {
                System.out.println(resource.getId());

                XMLResource r = (XMLResource) col.createResource(resource.getId(), XMLResource.RESOURCE_TYPE);
                r.setContent(resource.getContent());
                col.storeResource((Resource) r);
                System.out.println("[INFO] Storing the document: " + resource.getId());
            }


            System.out.println("[INFO] Done.");

        } finally {

            if (col != null) {
                try {
                    col.close();
                } catch (XMLDBException xe) {
                    xe.printStackTrace();
                }
            }
        }


    }


    private static Collection getOrCreateCollection(String collectionUri) throws XMLDBException {
        return getOrCreateCollection(collectionUri, 0);
    }

    private static Collection getOrCreateCollection(String collectionUri, int pathSegmentOffset) throws XMLDBException {
        System.out.println(conn.uri + collectionUri);
        System.out.println(conn.user);
        System.out.println(conn.password);
        Collection col = DatabaseManager.getCollection(conn.uri + collectionUri, conn.user, conn.password);

        // create the collection if it does not exist
        if (col == null) {

            if (collectionUri.startsWith("/")) {
                collectionUri = collectionUri.substring(1);
            }

            String pathSegments[] = collectionUri.split("/");

            if (pathSegments.length > 0) {
                StringBuilder path = new StringBuilder();

                for (int i = 0; i <= pathSegmentOffset; i++) {
                    path.append("/" + pathSegments[i]);
                }

                Collection startCol = DatabaseManager.getCollection(conn.uri + path, conn.user, conn.password);

                if (startCol == null) {

                    // child collection does not exist

                    String parentPath = path.substring(0, path.lastIndexOf("/"));
                    Collection parentCol = DatabaseManager.getCollection(conn.uri + parentPath, conn.user, conn.password);

                    CollectionManagementService mgt = (CollectionManagementService) parentCol.getService("CollectionManagementService", "1.0");

                    System.out.println("[INFO] Creating the collection: " + pathSegments[pathSegmentOffset]);
                    col = mgt.createCollection(pathSegments[pathSegmentOffset]);

                    col.close();
                    parentCol.close();

                } else {
                    startCol.close();
                }
            }
            return getOrCreateCollection(collectionUri, ++pathSegmentOffset);
        } else {
            return col;
        }
    }

    public static void writeRDF(FusekiAuthProperties.FusekiConnProperties conn, String rdfFilePath, String NAMED_GRAPH_URI) throws IOException {

        System.out.println("[INFO] Loading triples from an RDF/XML to a model...");


        // Creates a default model
        Model model = ModelFactory.createDefaultModel();
        model.read(rdfFilePath);

        ByteArrayOutputStream out = new ByteArrayOutputStream();

        model.write(out, SparqlUtil.NTRIPLES);

        System.out.println("[INFO] Rendering model as RDF/XML...");
        try {
            model.write(System.out, SparqlUtil.RDF_XML);
        } catch (Exception e) {

        }

        // Delete all of the triples in all of the named graphs
        UpdateRequest request = UpdateFactory.create();
        request.add(SparqlUtil.dropGraph(NAMED_GRAPH_URI));

        /*
         * Create UpdateProcessor, an instance of execution of an UpdateRequest.
         * UpdateProcessor sends update request to a remote SPARQL update service.
         */
        UpdateProcessor processor = UpdateExecutionFactory.createRemote(request, conn.updateEndpoint);
        processor.execute();

        // Creating the first named graph and updating it with RDF data
        System.out.println("[INFO] Writing the triples to a named graph \"" + NAMED_GRAPH_URI + "\".");
        String sparqlUpdate = SparqlUtil.insertData(conn.dataEndpoint + NAMED_GRAPH_URI, new String(out.toByteArray()));
        System.out.println(sparqlUpdate);

        // UpdateRequest represents a unit of execution
        UpdateRequest update = UpdateFactory.create(sparqlUpdate);

        processor = UpdateExecutionFactory.createRemote(update, conn.updateEndpoint);
        processor.execute();


        System.out.println("[INFO] End.");
    }

    public static void readRDF(FusekiAuthProperties.FusekiConnProperties conn) throws IOException {

        // Querying the first named graph with a simple SPARQL query
        System.out.println("[INFO] Selecting the triples from the named graph \"" + A1_NAMED_GRAPH_URI + "\".");
        String sparqlQuery = SparqlUtil.selectData(conn.dataEndpoint + A1_NAMED_GRAPH_URI, "?s ?p ?o");

        // Create a QueryExecution that will access a SPARQL service over HTTP
        QueryExecution query = QueryExecutionFactory.sparqlService(conn.queryEndpoint, sparqlQuery);

        // Query the SPARQL endpoint, iterate over the result set...
        ResultSet results = query.execSelect();
        ResultSetFormatter.outputAsJSON(results);
        String varName;
        RDFNode varValue;

        while (results.hasNext()) {

            // A single answer from a SELECT query
            QuerySolution querySolution = results.next();
            Iterator<String> variableBindings = querySolution.varNames();

            // Retrieve variable bindings
            while (variableBindings.hasNext()) {

                varName = variableBindings.next();
                varValue = querySolution.get(varName);

                System.out.println(varName + ": " + varValue);
            }
            System.out.println();
        }


        query.close();

        System.out.println("[INFO] End.");
    }

    private void generatePDF(String INPUT_FILE, String XSL_FILE, String OUTPUT_FILE) throws Exception {

        FopFactory fopFactory = FopFactory.newInstance(new File("../../fop.xconf"));

        TransformerFactory transformerFactory = new TransformerFactoryImpl();

        // Point to the XSL-FO file
        File xslFile = new File(XSL_FILE);

        // Create transformation source
        StreamSource transformSource = new StreamSource(xslFile);

        // Initialize the transformation subject
        StreamSource source = new StreamSource(new File(INPUT_FILE));

        // Initialize user agent needed for the transformation
        FOUserAgent userAgent = fopFactory.newFOUserAgent();

        // Create the output stream to store the results
        ByteArrayOutputStream outStream = new ByteArrayOutputStream();

        // Initialize the XSL-FO transformer object
        Transformer xslFoTransformer = transformerFactory.newTransformer(transformSource);

        // Construct FOP instance with desired output format
        Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, userAgent, outStream);

        // Resulting SAX events
        Result res = new SAXResult(fop.getDefaultHandler());

        // Start XSLT transformation and FOP processing
        xslFoTransformer.transform(source, res);

        // Generate PDF file
        File pdfFile = new File(OUTPUT_FILE);
        if (!pdfFile.getParentFile().exists()) {
            System.out.println("[INFO] A new directory is created: " + pdfFile.getParentFile().getAbsolutePath() + ".");
            pdfFile.getParentFile().mkdir();
        }

        OutputStream out = new BufferedOutputStream(new FileOutputStream(pdfFile));
        outStream.flush(); // Ensure that all data has been written to the output stream
        out.write(outStream.toByteArray());
        out.close();


        System.out.println("[INFO] End.");

    }

    private void generateXHTML(String INPUT_FILE, String XSL_FILE, String OUTPUT_FILE) throws Exception {
        try {
            TransformerFactory tFactory = TransformerFactory.newInstance();

            Source xslDoc = new StreamSource(XSL_FILE);

            Source xmlDoc = new StreamSource(INPUT_FILE);

            OutputStream xhtmlFile = new FileOutputStream(OUTPUT_FILE);

            Transformer transformer = tFactory.newTransformer(xslDoc);

            transformer.transform(xmlDoc, new StreamResult(xhtmlFile));
        } catch (Exception exception) {
            exception.printStackTrace();
        }

    }

    @GetMapping("/zahtevi")
    public ResponseEntity<List<Resurs>>  handleFormData() {

        try {
            ExistConnProperties conn = ExistConnProperties.loadProperties();
            String[] args = {"/db/sample/library"};

            List<Resurs> resultList = retrieve(conn, args);


            System.out.println(resultList.toString());
            return ResponseEntity.ok(resultList);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }


    @PostMapping("/podaciFormeA1")
    public ResponseEntity<String> handleFormData(@RequestBody FormDataDTO formData) {
        // Your logic to handle the form data using the formData object

        // Call the function to map the form data and handle the response
        System.out.println(formData);
        String timestamp = Long.toString(System.currentTimeMillis());
        String xmlFileName = "a_" + timestamp + ".xml";

        try {
            DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
            Document doc = docBuilder.newDocument();

            // Create the root element
            Element rootElement = doc.createElement("zahtev_za_autorska_prava");
            doc.appendChild(rootElement);

            // Create and append elements similar to the original method
            createA1(doc, rootElement, formData);
            String a1File = "../../xml/"+xmlFileName;
            try (FileOutputStream output = new FileOutputStream(a1File)) {
                writeXml(doc, output);

            } catch (IOException | TransformerException e) {
                e.printStackTrace();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
            String[] args2 = {"/db/sample/library", "a1.xml"};
            conn = ExistConnProperties.loadProperties();
            List<Resurs> resultList = retrieve(conn, args2);
            if (resultList != null) {
                for (Resurs x : resultList) {
                    System.out.println(x.getContent());
                    System.out.println(x.getId());
                }
            } else {
                System.out.println("prazna");
            }
            // xml baza - upis i ucitavanje obrasca A1

            String[] args = {"/db/sample/library", "test.xml", a1File};


            String content = "";
            try (BufferedReader bf = new BufferedReader(new FileReader(a1File))) {
                String line;
                while ((line = bf.readLine()) != null) {


                    content += line;
                    content += "\n";

                }
            }
            Resurs resurs = new Resurs();
            resurs.setId(xmlFileName);
            resurs.setContent(content);


            resultList.add(resurs);


            store(conn, args, resultList);
            return ResponseEntity.ok("Form data received successfully!");

        } catch (ParserConfigurationException e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error creating XML.");

        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @RequestMapping("/")
    public void index() throws Exception {

//        try {
//            DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
//            DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
//            Document doc = docBuilder.newDocument();
//
//            // Create the root element
//            Element rootElement = doc.createElement("zahtev_za_autorska_prava");
//            doc.appendChild(rootElement);
//
//            // Create and append elements similar to the original method
//
//            createA1(doc, rootElement, formData);
//            try (FileOutputStream output =
//                         new FileOutputStream("../../xml/test.xml")) {
//                writeXml(doc, output);
//            } catch (IOException | TransformerException e) {
//                e.printStackTrace();
//            }
//            // Write the document to a file or print it as required
//            // (e.g., using Transformer)
//
//        } catch (ParserConfigurationException e) {
//            e.printStackTrace();
//        }
        System.out.println("Pocetna strana!");
        String a1File = "../../xml/a1.xml";
        // xml ucitavanje

        File xmlFile = new File(a1File);
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(xmlFile);
        getA1(doc);

        String filepath = "..\\..\\xml\\a11.xml";
        try (FileOutputStream output =
                     new FileOutputStream(filepath)) {
            writeXml(doc, output);
        } catch (IOException | TransformerException e) {
            e.printStackTrace();
        }

        String[] args2 = {"/db/sample/library", "a1.xml"};
        conn = ExistConnProperties.loadProperties();
        List<Resurs> resultList = retrieve(conn, args2);
        if (resultList != null) {
            for (Resurs x : resultList) {
                System.out.println(x.getContent());
            }
        } else {
            System.out.println("prazna");
        }
        // xml baza - upis i ucitavanje obrasca A1

        String[] args = {"/db/sample/library", "a1.xml", a1File};
        store(conn, args, resultList);


        System.out.println("xml:" + resultList);


        // generisanje PDF i XHTML za A1
        generatePDF(a1File, "../../xsl/a1.xsl", "../../pdf/a1.pdf");
        generateXHTML(a1File, "../../xsl/a1html.xsl", "../../xhtml/a1.xhtml");


        // izvlacenje metapodataka
        MetadataExtractor extractorA1 = new MetadataExtractor(a1File, "../../rdf/a1_metadata.rdf");
        extractorA1.test();

        // upis i citanje RDF
        writeRDF(FusekiAuthProperties.loadProperties(), "../../rdf/a1_metadata.rdf", A1_NAMED_GRAPH_URI);
        readRDF(FusekiAuthProperties.loadProperties());

    }

}
