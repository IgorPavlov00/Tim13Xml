package Tim13.BackendZig.service;

import Tim13.BackendZig.controllers.RequestController;
import Tim13.BackendZig.model.Request;
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
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.update.UpdateExecutionFactory;
import org.apache.jena.update.UpdateFactory;
import org.apache.jena.update.UpdateProcessor;
import org.apache.jena.update.UpdateRequest;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.nio.charset.StandardCharsets;

@Service
public class CPService {

    private static final String Z1_NAMED_GRAPH_URI = "/z1";
    private static final Logger logger = LoggerFactory.getLogger(RequestController.class);

    public void writeRDF(FusekiAuthProperties.FusekiConnProperties conn, String rdfFilePath, String NAMED_GRAPH_URI) throws IOException {

        logger.info("[INFO] Loading triples from an RDF/XML to a model...");


        // Creates a default model
        Model model = ModelFactory.createDefaultModel();
        model.read(rdfFilePath);

        ByteArrayOutputStream out = new ByteArrayOutputStream();

        model.write(out, SparqlUtil.NTRIPLES);

        logger.info("[INFO] Rendering model as RDF/XML...");
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
        logger.info("[INFO] Writing the triples to a named graph \"" + NAMED_GRAPH_URI + "\".");
        String sparqlUpdate = SparqlUtil.insertData(conn.dataEndpoint + NAMED_GRAPH_URI, out.toString());
        logger.info(sparqlUpdate);

        // UpdateRequest represents a unit of execution
        UpdateRequest update = UpdateFactory.create(sparqlUpdate);

        processor = UpdateExecutionFactory.createRemote(update, conn.updateEndpoint);
        processor.execute();


        logger.info("[INFO] End.");
    }

    public String readRDF(FusekiAuthProperties.FusekiConnProperties conn, String outputType, String requestID) throws IOException {

        // Querying the other named graph
        logger.info("[INFO] Selecting Request triples from the named graph \"" + Z1_NAMED_GRAPH_URI + "\".");
        String subjectUri = "http://localhost:8082/" + requestID;
        String sparqlString = "SELECT ?s ?p ?o WHERE { ?s ?p ?o. FILTER(?s = <" + subjectUri + ">)}";
        String sparqlQuery = SparqlUtil.selectData(conn.dataEndpoint + Z1_NAMED_GRAPH_URI, sparqlString);


        // Create a QueryExecution that will access a SPARQL service over HTTP
        QueryExecution query = QueryExecutionFactory.sparqlService(conn.queryEndpoint, sparqlQuery);


        ResultSet results = query.execSelect();
        ByteArrayOutputStream baos = new ByteArrayOutputStream();

        if (outputType.equals("rdf")) {
            // Convert the ResultSet to JSON
            ByteArrayOutputStream jsonStream = new ByteArrayOutputStream();
            ResultSetFormatter.outputAsJSON(jsonStream, results);
            String jsonString = new String(jsonStream.toByteArray(), StandardCharsets.UTF_8);

            // Parse the JSON
            JSONObject jsonObject = new JSONObject(jsonString);
            JSONArray bindings = jsonObject.getJSONObject("results").getJSONArray("bindings");

            // Create an RDF model
            Model model = ModelFactory.createDefaultModel();
            model.setNsPrefix("zz", "http://localhost:8082/vocabulary/zig/");

            // Iterate over the JSON results and add to the RDF model
            for (int i = 0; i < bindings.length(); i++) {
                JSONObject binding = bindings.getJSONObject(i);

                // Extract predicate and object from the JSON
                String subject = binding.getJSONObject("s").getString("value");
                String predicate = binding.getJSONObject("p").getString("value");
                String objectValue = binding.getJSONObject("o").getString("value");

                // Create RDF triples and add them to the model
                Resource subjectResource = model.createResource(subject);
                Property predicateProperty = model.createProperty(predicate);
                subjectResource.addProperty(predicateProperty, objectValue);
            }

            // Serialize the model to RDF/XML
            model.write(baos, "RDF/XML");
        } else if (outputType.equals("json")) {
            PrintStream ps = new PrintStream(baos);
            ResultSetFormatter.outputAsJSON(ps, results);
            ps.close();
        } else {
            logger.error("Output format not supported.");
        }

        String output = baos.toString();
        logger.info(output);

        query.close();

        logger.info("[INFO] End.");
        return output;

    }

    public void generatePDF(Request request, String XSL_FILE, String OUTPUT_FILE) throws Exception {

        FopFactory fopFactory = FopFactory.newInstance(new File("../../fop.xconf"));

        TransformerFactory transformerFactory = new TransformerFactoryImpl();

        // Point to the XSL-FO file
        File xslFile = new File(XSL_FILE);

        // Create transformation source
        StreamSource transformSource = new StreamSource(xslFile);

        // Initialize the transformation subject
        Source source = new StreamSource(new ByteArrayInputStream(request.toXml().getBytes()));

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
            logger.info("[INFO] A new directory is created: " + pdfFile.getParentFile().getAbsolutePath() + ".");
            pdfFile.getParentFile().mkdir();
        }

        OutputStream out = new BufferedOutputStream(new FileOutputStream(pdfFile));
        outStream.flush(); // Ensure that all data has been written to the output stream
        out.write(outStream.toByteArray());
        out.close();


        logger.info("[INFO] End.");

    }

    public void generateXHTML(Request request, String XSL_FILE, String OUTPUT_FILE) {
        try {
            TransformerFactory tFactory = TransformerFactory.newInstance();

            Source xslDoc = new StreamSource(XSL_FILE);
            Source xmlDoc = new StreamSource(new ByteArrayInputStream(request.toXml().getBytes()));

            OutputStream xhtmlFile = new FileOutputStream(OUTPUT_FILE);

            Transformer transformer = tFactory.newTransformer(xslDoc);

            transformer.transform(xmlDoc, new StreamResult(xhtmlFile));
        } catch (Exception exception) {
            exception.printStackTrace();
        }

    }
}
