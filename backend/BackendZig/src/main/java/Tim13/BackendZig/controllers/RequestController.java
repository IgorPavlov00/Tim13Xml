package Tim13.BackendZig.controllers;

import Tim13.BackendZig.model.Request;
import Tim13.BackendZig.repos.ExistRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RequestController {
    private static final String Z1_NAMED_GRAPH_URI = "/z1";

    @Autowired
    ExistRepositoryImpl existRepository;

    @RequestMapping("/")
    public void main() throws Exception {
        System.out.println("Pokrenut server!");

        for (Request req : existRepository.findAll()) {
            System.out.println(req);
        }
        System.out.println(existRepository.findById("z1.xml"));
        System.out.println(existRepository.count());
//        String z1File = "../../xml/z1.xml";
//        File xmlZ1 = new File(z1File);
//        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
//        DocumentBuilder builder = factory.newDocumentBuilder();
//        Document z1 = builder.parse(xmlZ1);
//        getZ1(z1);
//
//
//        String filepathZ = "..\\..\\xml\\Z1_1.xml";
//        try (FileOutputStream output =
//                     new FileOutputStream(filepathZ)) {
//            writeXml(z1, output);
//        } catch (IOException | TransformerException e) {
//            e.printStackTrace();
//        }
//
//
//        // xml baza - upis i ucitavanje obrasca Z1
//        String[] argsZs = {"/db/requests/z", "z1.xml", z1File};
//        store(ExistConnProperties.loadProperties(), argsZs);
//        String[] argsZr = {"/db/requests/z", "z1.xml"};
//        retrive(ExistConnProperties.loadProperties(), argsZr);
//
//        // generisanje PDF i XHTML za Z1
//        generatePDF(z1File, "../../xsl/z1.xsl", "../../pdf/z1.pdf");
//        generateXHTML(z1File, "../../xsl/z1html.xsl", "../../xhtml/z1.xhtml");
//
//        // izvlacenje metapodataka
//        MetadataExtractor extractorZ1 = new MetadataExtractor(z1File, "../../rdf/z1_metadata.rdf");
//        extractorZ1.test();
//
//        // upis i citanje RDF
//        writeRDF(FusekiAuthProperties.loadProperties(), "../../rdf/z1_metadata.rdf", Z1_NAMED_GRAPH_URI);
//        readRDF(FusekiAuthProperties.loadProperties());
    }
}
