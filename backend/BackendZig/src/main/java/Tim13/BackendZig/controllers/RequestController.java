package Tim13.BackendZig.controllers;

import Tim13.BackendZig.dto.TrademarkRequestDTO;
import Tim13.BackendZig.model.Request;
import Tim13.BackendZig.repos.ExistRepositoryImpl;
import Tim13.BackendZig.service.RequestService;
import Tim13.BackendZig.util.FusekiAuthProperties;
import Tim13.BackendZig.util.MetadataExtractor;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static Tim13.BackendZig.service.AllCPMethods.*;

@RestController
@CrossOrigin("http://localhost:4200")
public class RequestController {
    private static final String Z1_NAMED_GRAPH_URI = "/z1";
    private static final String BASE_FOLDER = "../../priloziZig/";

    private static final Logger logger = LoggerFactory.getLogger(RequestController.class);

    private static final Map<String, String> FILENAME_MAPPING = new HashMap<>();
    @Autowired
    ExistRepositoryImpl existRepository;
    @Autowired
    RequestService requestService;

    public static int getIndex(MultipartFile[] array, MultipartFile value) {
        for (int i = 0; i < array.length; i++) {
            if (array[i] == value) {
                return i;
            }
        }
        return -1;  // if the value is not found in the array
    }

    @PostConstruct
    public void init() {
        FILENAME_MAPPING.put("example", "primerak.pdf");
        FILENAME_MAPPING.put("list", "lista_robe_i_usluga.pdf");
        FILENAME_MAPPING.put("attorney", "punomocje.pdf");
        FILENAME_MAPPING.put("earlyGiven", "ranije_prilozeno_punomocje.pdf");
        FILENAME_MAPPING.put("laterGiven", "naknadno_prilozeno_punomocje.pdf");
        FILENAME_MAPPING.put("act", "opsti_akt_o_zigu.pdf");
        FILENAME_MAPPING.put("rightProof", "dokaz_o_pravu_prvenstva.pdf");
        FILENAME_MAPPING.put("taxProof", "dokaz_o_uplati_takse.pdf");
    }

    private void generateRDF(Request req) {
        try {

            String rdfPath = "../../rdf/" + req.getRequestData().getRequestId() + ".rdf";

            MetadataExtractor extractorZ1 = new MetadataExtractor(req, rdfPath);
            extractorZ1.test();

            writeRDF(FusekiAuthProperties.loadProperties(), rdfPath, Z1_NAMED_GRAPH_URI);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getValueFromMapForFile(int index) {
        if (index == -1) {
            return null;
        }

        List<String> keysList = new ArrayList<>(FILENAME_MAPPING.keySet());

        if (index >= keysList.size()) {
            return null;
        }

        String key = keysList.get(index);

        return FILENAME_MAPPING.get(key);
    }

    @RequestMapping("/")
    public void start() throws Exception {
        for (Request req : existRepository.findAll()) {
            // generisanje PDF i XHTML za Z1
            String pdfPath = "../../pdf/" + req.getRequestData().getRequestId() + ".pdf";
            String xhtmlPath = "../../xhtml/" + req.getRequestData().getRequestId() + ".xhtml";
            generatePDF(req, "../../xsl/z1.xsl", pdfPath);
            generateXHTML(req, "../../xsl/z1html.xsl", xhtmlPath);
            this.generateRDF(req);
            readRDF(FusekiAuthProperties.loadProperties());
        }
        logger.info("Requests Count: {}.", existRepository.count());
    }

    @PostMapping(value = "/requests/add", consumes = "multipart/form-data")
    public ResponseEntity<Void> newRequest(@RequestParam("request") String request, @RequestParam(name = "img", required = false) MultipartFile img, @RequestParam("pdfs") MultipartFile[] pdfs) {
        try {
            logger.info("Request: {}.", request);
            ObjectMapper objectMapper = new ObjectMapper();
            TrademarkRequestDTO dto = objectMapper.readValue(request, TrademarkRequestDTO.class);
            Request req = this.requestService.mapToRequest(dto);
            req.getTrademark().setImageLink("http://localhost:8082/requests/" + req.getRequestData().getRequestId() + "/img");

            String requestFolder = BASE_FOLDER + req.getRequestData().getRequestId() + "/";
            File directory = new File(requestFolder);
            if (!directory.exists()) {
                directory.mkdir();
            }

            if (img != null) {
                String filename = img.getOriginalFilename();
                String imgExtension = filename.substring(filename.lastIndexOf(".") + 1).toLowerCase();
                saveFileWithCustomName(img, requestFolder, "prikaz_znaka." + imgExtension);
            }

            for (MultipartFile pdf : pdfs) {
                if (pdf.getSize() > 0) {
                    String filename = getValueFromMapForFile(getIndex(pdfs, pdf));
                    saveFileWithCustomName(pdf, requestFolder, filename);
                } else {
                    logger.info("No PDF uploaded!");
                }
            }

            this.existRepository.save(req);
            this.generateRDF(req);
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/requests/{id}")
    public ResponseEntity<Request> getRequest(@PathVariable("id") String requestID) {
        try {
            logger.info("Request ID: {}.", requestID);
            Request req;
            new Request();
            Optional<Request> opt = this.existRepository.findById(requestID);
            if (opt.isPresent()) {
                req = opt.get();
            } else {
                throw new Exception("Request not found!");
            }
            return ResponseEntity.ok(req);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/requests")
    public ResponseEntity<List<Request>> getAllRequests() {
        try {
            List<Request> requests = (List<Request>) this.existRepository.findAll();
            IntStream.range(0, requests.size())
                    .forEach(i -> logger.info("Request {}: {}.", i, requests.get(i)));
            return ResponseEntity.ok(requests);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/requests/{id}/img")
    public ResponseEntity<?> getImage(@PathVariable("id") String requestID) {
        try {
            logger.info("Request ID: {}.", requestID);
            String requestFolder = BASE_FOLDER + requestID + "/";

            Path imagePath = findImageInFolder(requestID, requestFolder);

            if (imagePath == null) {
                return ResponseEntity.notFound().build();
            }
            logger.info("Image Path: {}.", imagePath.toAbsolutePath());

            byte[] imageBytes = Files.readAllBytes(imagePath);

            HttpHeaders headers = new HttpHeaders();
            String contentType = determineContentTypeFromExtension(imagePath.getFileName().toString());
            headers.setContentType(MediaType.parseMediaType(contentType));
            headers.setContentLength(imageBytes.length);
            return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/requests/{id}/pdf/{pdfName}")
    public ResponseEntity<?> getPDF(@PathVariable("id") String requestID, @PathVariable("pdfName") String pdfUrlName) {
        try {
            logger.info("Request ID: {}.", requestID);
            logger.info("PDF URL: {}.", pdfUrlName);
            String requestFolder = BASE_FOLDER + requestID + "/";

            String pdfName = FILENAME_MAPPING.get(pdfUrlName);
            if (pdfName == null) {
                return ResponseEntity.badRequest().body("Invalid file name provided");
            }
            logger.info("PDF NAME: {}.", pdfName);

            Path pdfPath = Paths.get(requestFolder + pdfName);

            if (!Files.exists(pdfPath)) {
                return ResponseEntity.notFound().build();
            }

            byte[] pdfBytes = Files.readAllBytes(pdfPath);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentLength(pdfBytes.length);
            headers.setContentDisposition(ContentDisposition.builder("inline").filename(pdfName + ".pdf").build());
            return new ResponseEntity<>(pdfBytes, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }


    private Path findImageInFolder(String id, String folder) throws IOException {
        try (Stream<Path> paths = Files.find(Paths.get(folder), 1,
                (path, attrs) -> path.getFileName().toString().startsWith("prikaz_znaka."))) {
            return paths.findFirst().orElse(null);
        }
    }


    private String determineContentTypeFromExtension(String filename) {
        String extension = filename.substring(filename.lastIndexOf(".") + 1).toLowerCase();
        switch (extension) {
            case "png":
                return "image/png";
            case "jpg":
            case "jpeg":
            default:
                return "image/jpeg";
        }
    }


    private void saveFileWithCustomName(MultipartFile file, String directoryPath, String desiredName) throws IOException {
        Path path = Paths.get(directoryPath + desiredName);
        byte[] bytes = file.getBytes();
        Files.write(path, bytes);
    }
}
