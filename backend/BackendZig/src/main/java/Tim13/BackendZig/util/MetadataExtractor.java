package Tim13.BackendZig.util;

import Tim13.BackendZig.model.request.Request;
import org.apache.xalan.xsltc.trax.TransformerFactoryImpl;
import org.xml.sax.SAXException;

import javax.xml.bind.JAXBException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;

/**
 * Primer demonstrira ekstrakciju RDFa metapodataka iz
 * XML dokumenta primenom GRDDL (Gleaning Resource Descriptions
 * from Dialects of Languages) transformacije.
 */
public class MetadataExtractor {

    private static final String XSLT_FILE = "../../xsl/metadata.xsl";
    private final TransformerFactory transformerFactory;
    private final String XML_CONTENT;
    private final String OUTPUT_METADATA;

    public MetadataExtractor(Request request, String OUTPUT_METADATA) throws SAXException, IOException, JAXBException {

        this.XML_CONTENT = request.toXml();
        this.OUTPUT_METADATA = OUTPUT_METADATA;
        // Setup the XSLT transformer factory
        this.transformerFactory = new TransformerFactoryImpl();
    }

    /**
     * Generates RDF/XML based on RDFa metadata from an XML containing
     * input stream by applying GRDDL XSL transformation.
     *
     * @param in  XML containing input stream
     * @param out RDF/XML output stream
     */
    public void extractMetadata(InputStream in, OutputStream out) throws FileNotFoundException, TransformerException {

        // Create transformation source
        StreamSource transformSource = new StreamSource(new File(XSLT_FILE));

        // Initialize GRDDL transformer object
        Transformer grddlTransformer = this.transformerFactory.newTransformer(transformSource);

        // Set the indentation properties
        grddlTransformer.setOutputProperty("{http://xml.apache.org/xalan}indent-amount", "2");
        grddlTransformer.setOutputProperty(OutputKeys.INDENT, "yes");

        // Initialize transformation subject
        StreamSource source = new StreamSource(in);

        // Initialize result stream
        StreamResult result = new StreamResult(out);

        // Trigger the transformation
        grddlTransformer.transform(source, result);

    }


    public void test() throws Exception {

        System.out.println("[INFO] " + MetadataExtractor.class.getSimpleName());

        InputStream in = new ByteArrayInputStream(XML_CONTENT.getBytes());

        OutputStream out = new FileOutputStream(this.OUTPUT_METADATA);

        extractMetadata(in, out);

        System.out.println("[INFO] File \"" + OUTPUT_METADATA + "\" generated successfully.");

        System.out.println("[INFO] End.");

    }


}

