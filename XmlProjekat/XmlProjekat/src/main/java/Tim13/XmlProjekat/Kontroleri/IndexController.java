package Tim13.XmlProjekat.Kontroleri;

import Tim13.XmlProjekat.util.ExistConnProperties;
import Tim13.XmlProjekat.util.FusekiAuthProperties;
import Tim13.XmlProjekat.util.FusekiAuthProperties.FusekiConnProperties;
import Tim13.XmlProjekat.util.MetadataExtractor;
import Tim13.XmlProjekat.util.SparqlUtil;
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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.*;
import org.xmldb.api.DatabaseManager;
import org.xmldb.api.base.Collection;
import org.xmldb.api.base.Database;
import org.xmldb.api.base.XMLDBException;
import org.xmldb.api.modules.CollectionManagementService;
import org.xmldb.api.modules.XMLResource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.util.Iterator;

@Controller
@RequestMapping("")
public class IndexController {
    private static final String A1_NAMED_GRAPH_URI = "/a1";
    private static final String Z1_NAMED_GRAPH_URI = "/z1";
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

    private static void getZ1(Document doc) {
        System.out.println("Podaci o dokumentu Z1");
        //printNode(doc);
    }

    private static void printNode(Node node) {

        if (node == null)
            return;

        if (node instanceof Document) {

            System.out.println("START_DOCUMENT\n");

            Document doc = (Document) node;
            printNode(doc.getDocumentElement());
        } else if (node instanceof Element) {

            Element element = (Element) node;

            System.out.print("\nSTART_ELEMENT: " + element.getTagName());

            NamedNodeMap attributes = element.getAttributes();

            if (attributes.getLength() > 0) {

                System.out.print(", ATTRIBUTES: ");

                for (int i = 0; i < attributes.getLength(); i++) {
                    Node attribute = attributes.item(i);
                    printNode(attribute);
                    if (i < attributes.getLength() - 1)
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
        } else if (node instanceof Attr) {

            Attr attr = (Attr) node;
            System.out.print(attr.getName() + "=" + attr.getValue());

        } else if (node instanceof Text) {
            Text text = (Text) node;

            if (text.getTextContent().trim().length() > 0)
                System.out.println("\nCHARACTERS: " + text.getTextContent().trim());
        } else if (node instanceof Entity) {
            Entity entity = (Entity) node;
            System.out.println("\nENTITY: " + entity.getNotationName());
        }
    }

    public static void retrive(ExistConnProperties conn, String args[]) throws Exception {


        // initialize collection and document identifiers
        String collectionId = null;
        String documentId = null;

        if (args.length == 2) {

            System.out.println("[INFO] Passing the arguments... ");

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

        try {
            // get the collection
            System.out.println("[INFO] Retrieving the collection: " + collectionId);
            col = DatabaseManager.getCollection(conn.uri + collectionId);
            col.setProperty(OutputKeys.INDENT, "yes");

            System.out.println("[INFO] Retrieving the document: " + documentId);
            res = (XMLResource) col.getResource(documentId);

            if (res == null) {
                System.out.println("[WARNING] Document '" + documentId + "' can not be found!");
            } else {

                System.out.println("[INFO] Showing the document as XML resource: ");
                System.out.println(res.getContent());

            }
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
    }

    public static void store(ExistConnProperties conn, String args[]) throws Exception {


        // initialize collection and document identifiers
        String collectionId = null;
        String documentId = null;
        String filePath = null;

        if (args.length == 3) {

            System.out.println("[INFO] Passing the arguments... ");

            collectionId = args[0];
            documentId = args[1];

            filePath = args[2];
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
        XMLResource res = null;

        try {

            System.out.println("[INFO] Retrieving the collection: " + collectionId);
            col = getOrCreateCollection(collectionId);

            /*
             *  create new XMLResource with a given id
             *  an id is assigned to the new resource if left empty (null)
             */
            System.out.println("[INFO] Inserting the document: " + documentId);
            res = (XMLResource) col.createResource(documentId, XMLResource.RESOURCE_TYPE);

            File f = new File(filePath);

            if (!f.canRead()) {
                System.out.println("[ERROR] Cannot read the file: " + filePath);
                return;
            }

            res.setContent(f);
            System.out.println("[INFO] Storing the document: " + res.getId());

            col.storeResource(res);
            System.out.println("[INFO] Done.");

        } finally {

            //don't forget to cleanup
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

    public static void writeRDF(FusekiConnProperties conn, String rdfFilePath, String NAMED_GRAPH_URI) throws IOException {

        System.out.println("[INFO] Loading triples from an RDF/XML to a model...");


        // Creates a default model
        Model model = ModelFactory.createDefaultModel();
        model.read(rdfFilePath);

        ByteArrayOutputStream out = new ByteArrayOutputStream();

        model.write(out, SparqlUtil.NTRIPLES);

        System.out.println("[INFO] Rendering model as RDF/XML...");
        try{
        model.write(System.out, SparqlUtil.RDF_XML);}catch(Exception e){

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

    public static void readRDF(FusekiConnProperties conn) throws IOException {

        // Querying the first named graph with a simple SPARQL query
        System.out.println("[INFO] Selecting the triples from the named graph \"" + A1_NAMED_GRAPH_URI + "\".");
        String sparqlQuery = SparqlUtil.selectData(conn.dataEndpoint + A1_NAMED_GRAPH_URI, "?s ?p ?o");

        // Create a QueryExecution that will access a SPARQL service over HTTP
        QueryExecution query = QueryExecutionFactory.sparqlService(conn.queryEndpoint, sparqlQuery);

        // Query the SPARQL endpoint, iterate over the result set...
        ResultSet results = query.execSelect();

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

        // Querying the other named graph
        System.out.println("[INFO] Selecting the triples from the named graph \"" + Z1_NAMED_GRAPH_URI + "\".");
        sparqlQuery = SparqlUtil.selectData(conn.dataEndpoint + Z1_NAMED_GRAPH_URI, "?s ?p ?o");

        // Create a QueryExecution that will access a SPARQL service over HTTP
        query = QueryExecutionFactory.sparqlService(conn.queryEndpoint, sparqlQuery);


        // Query the collection, dump output response as XML
        results = query.execSelect();

        ResultSetFormatter.outputAsXML(System.out, results);

        query.close();

        System.out.println("[INFO] End.");
    }

    @RequestMapping("/")
    public String index() throws Exception {
        System.out.println("Pocetna strana!");
        String a1File = "../xml/a1.xml";
        String z1File = "../xml/z1.xml";
        // xml ucitavanje
        // samo zameni komentare kodom iz main f-je
        File xmlFile = new File(a1File);
        File xmlZ1 = new File(z1File);
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document doc = builder.parse(xmlFile);
        Document z1 = builder.parse(xmlZ1);
        getA1(doc);
        getZ1(z1);

        String filepath = "..\\xml\\a11.xml";
        try (FileOutputStream output =
                     new FileOutputStream(filepath)) {
            writeXml(doc, output);
        } catch (IOException | TransformerException e) {
            e.printStackTrace();
        }

        String filepathZ = "..\\xml\\Z1_1.xml";
        try (FileOutputStream output =
                     new FileOutputStream(filepathZ)) {
            writeXml(z1, output);
        } catch (IOException | TransformerException e) {
            e.printStackTrace();
        }

        // xml baza - upis i ucitavanje obrasca A1
        String[] args = {"/db/sample/library", "a1.xml", a1File};
        store(conn = ExistConnProperties.loadProperties(), args);
        String[] args2 = {"/db/sample/library", "a1.xml"};
        retrive(ExistConnProperties.loadProperties(), args2);

        // xml baza - upis i ucitavanje obrasca Z1
        String[] argsZs = {"/db/sample/library", "z1.xml", z1File};
        store(conn = ExistConnProperties.loadProperties(), argsZs);
        String[] argsZr = {"/db/sample/library", "z1.xml"};
        retrive(ExistConnProperties.loadProperties(), argsZr);

        // generisanje PDF i XHTML za A1
        generatePDF(a1File, "../xsl/a1.xsl", "../pdf/a1.pdf");
        generateXHTML(a1File, "../xsl/a1html.xsl", "../xhtml/a1.xhtml");

        // generisanje PDF i XHTML za Z1
//        generatePDF(z1File, "../xsl/z1.xsl", "../pdf/z1.pdf");
        generateXHTML(z1File, "../xsl/z1html.xsl", "../xhtml/z1.xhtml");

        // izvlacenje metapodataka
        MetadataExtractor extractorA1 = new MetadataExtractor(a1File, "../rdf/a1_metadata.rdf");
        MetadataExtractor extractorZ1 = new MetadataExtractor(z1File, "../rdf/z1_metadata.rdf");
        extractorA1.test();
        extractorZ1.test();

        // upis i citanje RDF
        writeRDF(FusekiAuthProperties.loadProperties(), "../rdf/a1_metadata.rdf", A1_NAMED_GRAPH_URI);
        writeRDF(FusekiAuthProperties.loadProperties(), "../rdf/z1_metadata.rdf", Z1_NAMED_GRAPH_URI);
        readRDF(FusekiAuthProperties.loadProperties());

        return "index.html";
    }

    private void generatePDF(String INPUT_FILE, String XSL_FILE, String OUTPUT_FILE) throws Exception {

        FopFactory fopFactory = FopFactory.newInstance(new File("../fop.xconf"));

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
        out.write(outStream.toByteArray());


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

}
