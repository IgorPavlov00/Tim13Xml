package Tim13.BackendZig.controllers;

import Tim13.BackendZig.model.Request;
import Tim13.BackendZig.repos.ExistRepositoryImpl;
import Tim13.BackendZig.util.FusekiAuthProperties;
import Tim13.BackendZig.util.MetadataExtractor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static Tim13.BackendZig.service.AllCPMethods.*;

@RestController
public class RequestController {
    private static final String Z1_NAMED_GRAPH_URI = "/z1";

    @Autowired
    ExistRepositoryImpl existRepository;

    @RequestMapping("/")
    public void main() throws Exception {
        System.out.println("Pokrenut server!");
//        Address addressR = new Address("Bulevar Oslobodjenja 32", 21000, "Novi Sad", "Srbija");
//        Address addressA = new Address("Bulevar Oslobodjenja 52", 21000, "Novi Sad", "Srbija");
//        PersonInfo personInfoR = new PersonInfo("Mika", "Mikic", addressR, PersonType.fizicko);
//        PersonInfo personInfoA = new PersonInfo("Test D.O.O.", null, addressA, PersonType.pravno);
//        Requester requester = new Requester(personInfoR, "0621234567", "mikamikic@gmail.com", null);
//        Attorney attorney = new Attorney(personInfoA, "021987654", "info@test.co.rs", null);
//        RequestData requestData = new RequestData("z-2903-23", "29-03-2023");
//        TrademarkType trademarkType = new TrademarkType(false, true, false);
//        GlyphType glyphType = new GlyphType(true, false, false, false, false, null);
//        RightPair rightPair = new RightPair(true, "Hitno");
//        Trademark trademark = new Trademark(trademarkType, glyphType, null, null, null, null, "moto", "2,3,23", rightPair);
//        TaxData taxData = new TaxData(2000.0, 2500.0, 0, 4500.0);
//        Attachments attachments = new Attachments(true, true, true, false, true, true, true, true);
//        Request request = new Request(requestData, requester, attorney, null, trademark, taxData, attachments);
//        existRepository.save(request);


        for (Request req : existRepository.findAll()) {
            System.out.println(req);

            // generisanje PDF i XHTML za Z1
            String pdfPath = "../../pdf/" + req.getRequestData().getRequestId() + ".pdf";
            String xhtmlPath = "../../xhtml/" + req.getRequestData().getRequestId() + ".xhtml";
            generatePDF(req, "../../xsl/z1.xsl", pdfPath);
            generateXHTML(req, "../../xsl/z1html.xsl", xhtmlPath);
            String rdfPath = "../../rdf/" + req.getRequestData().getRequestId() + ".rdf";
            // izvlacenje metapodataka
            MetadataExtractor extractorZ1 = new MetadataExtractor(req, rdfPath);
            extractorZ1.test();

            // upis i citanje RDF
            writeRDF(FusekiAuthProperties.loadProperties(), rdfPath, Z1_NAMED_GRAPH_URI);
            readRDF(FusekiAuthProperties.loadProperties());
        }
        System.out.println(existRepository.count());

    }
}
