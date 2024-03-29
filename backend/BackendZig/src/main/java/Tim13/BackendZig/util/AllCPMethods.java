package Tim13.BackendZig.service;

import Tim13.BackendZig.util.ExistConnProperties;
import Tim13.BackendZig.util.FusekiAuthProperties;
import Tim13.BackendZig.util.SparqlUtil;
import net.sf.saxon.TransformerFactoryImpl;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;
import org.apache.jena.query.QueryExecution;
import org.apache.jena.query.QueryExecutionFactory;
import org.apache.jena.query.ResultSet;
import org.apache.jena.query.ResultSetFormatter;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.update.UpdateExecutionFactory;
import org.apache.jena.update.UpdateFactory;
import org.apache.jena.update.UpdateProcessor;
import org.apache.jena.update.UpdateRequest;
import org.exist.xmldb.EXistResource;
import org.w3c.dom.*;
import org.xmldb.api.DatabaseManager;
import org.xmldb.api.base.Collection;
import org.xmldb.api.base.Database;
import org.xmldb.api.base.XMLDBException;
import org.xmldb.api.modules.CollectionManagementService;
import org.xmldb.api.modules.XMLResource;

import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;


public class AllCPMethods {
    private static final String Z1_NAMED_GRAPH_URI = "/z1";
    private static ExistConnProperties conn;

    public static void writeXml(Document doc,
                                OutputStream output)
            throws TransformerException {

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult(output);

        transformer.transform(source, result);

    }

    public static void getZ1(Document doc) {
        System.out.println("Podaci o dokumentu Z1");
        //printNode(doc);
    }

    public static void printNode(Node node) {

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

    public static void retrive(ExistConnProperties conn, String[] args) throws Exception {


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

    public static void store(ExistConnProperties conn, String[] args) throws Exception {


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

    public static Collection getOrCreateCollection(String collectionUri) throws XMLDBException, IOException {
        return getOrCreateCollection(collectionUri, 0);
    }

    public static Collection getOrCreateCollection(String collectionUri, int pathSegmentOffset) throws XMLDBException, IOException {
        conn = ExistConnProperties.loadProperties();
        System.out.println(conn.uri + collectionUri);
        System.out.println(conn.user);
        System.out.println(conn.password);
        Collection col = DatabaseManager.getCollection(conn.uri + collectionUri, conn.user, conn.password);

        // create the collection if it does not exist
        if (col == null) {

            if (collectionUri.startsWith("/")) {
                collectionUri = collectionUri.substring(1);
            }

            String[] pathSegments = collectionUri.split("/");

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
        String sparqlUpdate = SparqlUtil.insertData(conn.dataEndpoint + NAMED_GRAPH_URI, out.toString());
        System.out.println(sparqlUpdate);

        // UpdateRequest represents a unit of execution
        UpdateRequest update = UpdateFactory.create(sparqlUpdate);

        processor = UpdateExecutionFactory.createRemote(update, conn.updateEndpoint);
        processor.execute();


        System.out.println("[INFO] End.");
    }

    public static void readRDF(FusekiAuthProperties.FusekiConnProperties conn) throws IOException {

        // Querying the other named graph
        System.out.println("[INFO] Selecting the triples from the named graph \"" + Z1_NAMED_GRAPH_URI + "\".");
        String sparqlQuery = SparqlUtil.selectData(conn.dataEndpoint + Z1_NAMED_GRAPH_URI, "?s ?p ?o");

        // Create a QueryExecution that will access a SPARQL service over HTTP
        QueryExecution query = QueryExecutionFactory.sparqlService(conn.queryEndpoint, sparqlQuery);


        // Query the collection, dump output response as XML
        ResultSet results = query.execSelect();

        ResultSetFormatter.outputAsXML(System.out, results);

        query.close();

        System.out.println("[INFO] End.");
    }

    public static void generatePDF(String INPUT_FILE, String XSL_FILE, String OUTPUT_FILE) throws Exception {

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

    public static void generateXHTML(String INPUT_FILE, String XSL_FILE, String OUTPUT_FILE) throws Exception {
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
