package Tim13.BackendZig.controllers;

import Tim13.BackendZig.dto.TrademarkRequestDTO;
import Tim13.BackendZig.model.Request;
import Tim13.BackendZig.repos.ExistRepositoryImpl;
import Tim13.BackendZig.service.CPService;
import Tim13.BackendZig.service.FileService;
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
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.IntStream;

@RestController
@CrossOrigin("http://localhost:4200")
public class RequestController {
    private static final String Z1_NAMED_GRAPH_URI = "/z1";
    private static final String BASE_FOLDER = "../../zahteviLocal/";
    private static final String ATTACHMENTS_FOLDER = "/prilozi/";
    private static final String PDF_FORMAT = BASE_FOLDER + "%s/%s.pdf";
    private static final String XHTML_FORMAT = BASE_FOLDER + "%s/%s.xhtml";
    private static final String RDF_FORMAT = BASE_FOLDER + "%s/%s.rdf";
    private static final String XSL_2_PDF_PATH = "../../xsl/z1.xsl";
    private static final String XSL_2_XHTML_PATH = "../../xsl/z1html.xsl";
    private static final Logger logger = LoggerFactory.getLogger(RequestController.class);
    private static final String LOG_FORMAT = "Request ID: {}.";
    private static final String RESPONSE_FORMAT = "inline";
    private static final Map<String, String> FILENAME_MAPPING = new HashMap<>();

    @Autowired
    ExistRepositoryImpl existRepository;
    @Autowired
    RequestService requestService;
    @Autowired
    FileService fileService;
    @Autowired
    CPService cpService;


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
        FILENAME_MAPPING.put("download", "preuzimanje.pdf");
    }

    private void generateRDF(Request req) {
        try {
            MetadataExtractor extractorZ1 = new MetadataExtractor(req, String.format(RDF_FORMAT, req.getRequestData().getRequestId(), req.getRequestData().getRequestId()));
            extractorZ1.test();

            cpService.writeRDF(FusekiAuthProperties.loadProperties(), String.format(RDF_FORMAT, req.getRequestData().getRequestId(), req.getRequestData().getRequestId()), Z1_NAMED_GRAPH_URI);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @GetMapping("/")
    public void start() throws Exception {
        for (Request req : existRepository.findAll()) {
            // generisanje PDF i XHTML za Z1
            cpService.generatePDF(req, XSL_2_PDF_PATH, String.format(PDF_FORMAT, req.getRequestData().getRequestId(), req.getRequestData().getRequestId()));
            cpService.generateXHTML(req, XSL_2_XHTML_PATH, String.format(XHTML_FORMAT, req.getRequestData().getRequestId(), req.getRequestData().getRequestId()));
            generateRDF(req);
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

            String requestFolder = BASE_FOLDER + req.getRequestData().getRequestId() + ATTACHMENTS_FOLDER;
            File directory = new File(requestFolder);
            if (!directory.exists()) {
                directory.mkdir();
            }

            if (img != null) {
                String filename = img.getOriginalFilename();
                if (filename != null) {
                    String imgExtension = filename.substring(filename.lastIndexOf(".") + 1).toLowerCase();
                    fileService.saveFileWithCustomName(img, requestFolder, "prikaz_znaka." + imgExtension);
                }
            }

            for (MultipartFile pdf : pdfs) {
                if (pdf.getSize() > 0) {
                    String filename = fileService.getValueFromMapForFile(fileService.getIndex(pdfs, pdf), FILENAME_MAPPING);
                    fileService.saveFileWithCustomName(pdf, requestFolder, filename);
                } else {
                    logger.info("No PDF uploaded!");
                }
            }

            this.existRepository.save(req);
            generateRDF(req);
            cpService.generatePDF(req, XSL_2_PDF_PATH, String.format(PDF_FORMAT, req.getRequestData().getRequestId(), req.getRequestData().getRequestId()));
            cpService.generateXHTML(req, XSL_2_XHTML_PATH, String.format(XHTML_FORMAT, req.getRequestData().getRequestId(), req.getRequestData().getRequestId()));
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/requests/{id}")
    public ResponseEntity<TrademarkRequestDTO> getRequest(@PathVariable("id") String requestID) {
        try {
            logger.info(LOG_FORMAT, requestID);
            Request req;
            new Request();
            Optional<Request> opt = this.existRepository.findById(requestID);
            if (opt.isPresent()) {
                req = opt.get();
            } else {
                return ResponseEntity.notFound().build();
            }
            return ResponseEntity.ok(requestService.mapToTrademarkRequestDTO(req));
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/requests")
    public ResponseEntity<List<TrademarkRequestDTO>> getAllRequests() {
        try {
            List<Request> requests = (List<Request>) this.existRepository.findAll();
            IntStream.range(0, requests.size())
                    .forEach(i -> logger.info("Request {}: {}.", i, requests.get(i)));
            List<TrademarkRequestDTO> requestDTOList = new ArrayList<>();
            for (Request req : requests) {
                requestDTOList.add(requestService.mapToTrademarkRequestDTO(req));
            }
            return ResponseEntity.ok(requestDTOList);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping(value = "/requests/{id}/img", produces = {"image/png", "image/jpeg"})
    public ResponseEntity<byte[]> getImage(@PathVariable("id") String requestID) {
        try {
            logger.info(LOG_FORMAT, requestID);
            String requestFolder = BASE_FOLDER + requestID + ATTACHMENTS_FOLDER;

            Path imagePath = fileService.findImageInFolder(requestID, requestFolder);

            if (imagePath == null) {
                return ResponseEntity.notFound().build();
            }
            logger.info("Image Path: {}.", imagePath.toAbsolutePath());

            byte[] imageBytes = Files.readAllBytes(imagePath);

            HttpHeaders headers = new HttpHeaders();
            String contentType = fileService.determineContentTypeFromExtension(imagePath.getFileName().toString());
            headers.setContentType(MediaType.parseMediaType(contentType));
            headers.setContentLength(imageBytes.length);
            return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping(value = "/requests/{id}/pdf/{pdfName}", produces = "application/pdf")
    public ResponseEntity<byte[]> getPDF(@PathVariable("id") String requestID, @PathVariable("pdfName") String pdfUrlName) {
        try {
            logger.info(LOG_FORMAT, requestID);
            logger.info("PDF URL: {}.", pdfUrlName);
            String requestFolder = BASE_FOLDER + requestID + "/";

            String pdfName = FILENAME_MAPPING.get(pdfUrlName);
            if (pdfName == null) {
                return ResponseEntity.badRequest().build();
            } else if (pdfName.equals("preuzimanje.pdf")) {
                pdfName = requestID + ".pdf";
            }
            logger.info("PDF NAME: {}.", pdfName);

            Path pdfPath;
            if (pdfName.equals(requestID + ".pdf")) {
                pdfPath = Paths.get(requestFolder + pdfName);
            } else {
                File directory = new File(requestFolder + ATTACHMENTS_FOLDER);
                if (!directory.exists()) {
                    directory.mkdir();
                }
                pdfPath = Paths.get(requestFolder + ATTACHMENTS_FOLDER + pdfName);
            }

            if (!Files.exists(pdfPath)) {
                return ResponseEntity.notFound().build();
            }

            byte[] pdfBytes = Files.readAllBytes(pdfPath);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentLength(pdfBytes.length);
            headers.setContentDisposition(ContentDisposition.builder(RESPONSE_FORMAT).filename(pdfName).build());
            return new ResponseEntity<>(pdfBytes, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping(value = "/requests/{id}/xhtml", produces = "application/xhtml+xml")
    public ResponseEntity<byte[]> getXHTML(@PathVariable("id") String requestID) {
        try {
            logger.info(LOG_FORMAT, requestID);
            String requestFolder = BASE_FOLDER + requestID + "/";

            Path xhtmlPath = Paths.get(requestFolder + requestID + ".xhtml");

            if (!Files.exists(xhtmlPath)) {
                return ResponseEntity.notFound().build();
            }

            byte[] xhtmlBytes = Files.readAllBytes(xhtmlPath);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_XHTML_XML);
            headers.setContentLength(xhtmlBytes.length);
            headers.setContentDisposition(ContentDisposition.builder(RESPONSE_FORMAT).filename(requestID + ".xhtml").build());
            return new ResponseEntity<>(xhtmlBytes, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping(value = "/requests/{id}/rdf", produces = "application/rdf+xml")
    public ResponseEntity<String> getRDF(@PathVariable("id") String requestID) {
        try {
            logger.info(LOG_FORMAT, requestID);

            String rdfString = cpService.readRDF(FusekiAuthProperties.loadProperties(), "rdf", requestID);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.valueOf("application/rdf+xml"));
            headers.setContentLength(rdfString.length());
            headers.setContentDisposition(ContentDisposition.builder(RESPONSE_FORMAT).filename(requestID + ".rdf").build());
            return new ResponseEntity<>(rdfString, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping(value = "/requests/{id}/json", produces = "application/json")
    public ResponseEntity<String> getJSON(@PathVariable("id") String requestID) {
        try {
            logger.info(LOG_FORMAT, requestID);

            String jsonString = cpService.readRDF(FusekiAuthProperties.loadProperties(), "json", requestID);

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.setContentLength(jsonString.length());
            headers.setContentDisposition(ContentDisposition.builder(RESPONSE_FORMAT).filename(requestID + ".json").build());
            return new ResponseEntity<>(jsonString, headers, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.internalServerError().build();
        }
    }


}
