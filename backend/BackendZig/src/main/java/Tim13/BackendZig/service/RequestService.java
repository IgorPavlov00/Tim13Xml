package Tim13.BackendZig.service;

import Tim13.BackendZig.dto.*;
import Tim13.BackendZig.model.enums.PersonType;
import Tim13.BackendZig.model.request.*;
import Tim13.BackendZig.repos.RequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;
import java.util.stream.StreamSupport;

@Service
public class RequestService {

    @Autowired
    RequestRepository requestRepository;

    public Attachments mapToAttachments(AttachmentsDTO dto) {
        return new Attachments(
                dto.isHasCopy(),
                dto.isHasList(),
                dto.isHasPowerOfAttorney(),
                dto.isHasEarlierAttorney(),
                dto.isHasLaterAttorney(),
                dto.isHasTrademarkAct(),
                dto.isHasProofOfRight(),
                dto.isHasProofOfPayment()
        );
    }

    public Address mapToAddress(PersonDTO dto) {
        return new Address(
                dto.getStreet(),
                dto.getPostCode(),
                dto.getCity(),
                dto.getCountry()
        );
    }

    public PersonType mapToPersonType(String type) {
        return PersonType.valueOf(type.toLowerCase());
    }

    public PersonInfo mapToPersonInfo(PersonDTO dto) {
        return new PersonInfo(
                dto.getName(),
                dto.getLastName(),
                mapToAddress(dto),
                mapToPersonType(dto.getPersonType())
        );
    }

    public Attorney mapToAttorney(PersonDTO dto) {
        return new Attorney(
                mapToPersonInfo(dto),
                dto.getPhone(),
                dto.getEmail(),
                dto.getFax()
        );
    }

    public Representative mapToRepresentative(PersonDTO dto) {
        return new Representative(
                mapToPersonInfo(dto),
                dto.getPhone(),
                dto.getEmail(),
                dto.getFax()
        );
    }

    public Requester mapToRequester(PersonDTO dto) {
        return new Requester(
                mapToPersonInfo(dto),
                dto.getPhone(),
                dto.getEmail(),
                dto.getFax()
        );
    }

    public TaxData mapToTaxData(TaxDTO dto) {
        return new TaxData(
                dto.getBasic(),
                dto.getClassTax(),
                dto.getGraphic(),
                dto.getTotal()
        );
    }

    public GlyphType mapToGlyphType(TrademarkDTO dto) {
        return new GlyphType(
                dto.isVerbal(),
                dto.isGraphic(),
                dto.isCombination(),
                dto.isThreedimensional(),
                dto.isOther(),
                dto.getOtherType()
        );
    }

    public TrademarkType mapToTrademarkType(TrademarkDTO dto) {
        return new TrademarkType(
                dto.isIndividual(),
                dto.isCollective(),
                dto.isWarranty()
        );
    }

    public RightPair mapToRightPair(TrademarkDTO dto) {
        return new RightPair(
                dto.isHasRight(),
                dto.getRightBasis()
        );
    }

    public Trademark mapToTrademark(TrademarkDTO dto) {
        return new Trademark(
                mapToTrademarkType(dto),
                mapToGlyphType(dto),
                dto.getImageLink(),
                dto.getColor(),
                dto.getTransliteration(),
                dto.getTranslation(),
                dto.getDescription(),
                dto.getClasses().replace('_', ','),
                mapToRightPair(dto)
        );
    }

    public Request mapToRequest(TrademarkRequestDTO dto) {
        return new Request(
                generateRequestData(),
                mapToRequester(dto.getRequester()),
                mapToAttorney(dto.getAttorney()),
                mapToRepresentative(dto.getRepresentative()),
                mapToTrademark(dto.getTrademark()),
                mapToTaxData(dto.getTax()),
                mapToAttachments(dto.getAttachments())
        );
    }

    public RequestData generateRequestData() {
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter idFormat = DateTimeFormatter.ofPattern("ddMM-yy-HHmm");
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        String id = "Z-" + currentDateTime.format(idFormat);
        String date = currentDateTime.format(dateFormat);
        return new RequestData(id, date);
    }

    public AttachmentsDTO mapToAttachmentsDTO(Attachments attachments) {
        return new AttachmentsDTO(
                attachments.isHasCopy(),
                attachments.isHasList(),
                attachments.isHasPowerOfAttorney(),
                attachments.isHasEarlierAttorney(),
                attachments.isHasLaterAttorney(),
                attachments.isHasTrademarkAct(),
                attachments.isHasProofOfRight(),
                attachments.isHasProofOfPayment()
        );
    }

    public PersonDTO mapRequesterToPersonDTO(Requester person) {
        PersonInfo personInfo = person.getPersonInfo();
        Address address = personInfo.getAddress();
        return new PersonDTO(
                personInfo.getName(),
                personInfo.getLastName(),
                address.getStreet(),
                address.getPostCode(),
                address.getCity(),
                address.getCountry(),
                person.getPhone(),
                person.getEmail(),
                person.getFax(),
                personInfo.getPersonType().name()
        );
    }

    public PersonDTO mapAttorneyToPersonDTO(Attorney person) {
        PersonInfo personInfo = person.getPersonInfo();
        Address address = personInfo.getAddress();
        return new PersonDTO(
                personInfo.getName(),
                personInfo.getLastName(),
                address.getStreet(),
                address.getPostCode(),
                address.getCity(),
                address.getCountry(),
                person.getPhone(),
                person.getEmail(),
                person.getFax(),
                personInfo.getPersonType().name()
        );
    }

    public PersonDTO mapRepresentativeToPersonDTO(Representative person) {
        PersonInfo personInfo = person.getPersonInfo();
        Address address = personInfo.getAddress();
        return new PersonDTO(
                personInfo.getName(),
                personInfo.getLastName(),
                address.getStreet(),
                address.getPostCode(),
                address.getCity(),
                address.getCountry(),
                person.getPhone(),
                person.getEmail(),
                person.getFax(),
                personInfo.getPersonType().name()
        );
    }


    public TaxDTO mapToTaxDTO(TaxData taxData) {
        return new TaxDTO(
                taxData.getBasicTax(),
                taxData.getClassTax(),
                taxData.getGraphicTax(),
                taxData.getTotalTax()
        );
    }

    public TrademarkDTO mapToTrademarkDTO(Trademark trademark) {
        TrademarkType trademarkType = trademark.getTrademarkType();
        GlyphType glyphType = trademark.getGlyphType();
        RightPair rightPair = trademark.getRightBasis();
        return new TrademarkDTO(
                trademarkType.isIndividual(),
                trademarkType.isCollective(),
                trademarkType.isWarranty(),
                glyphType.isVerbal(),
                glyphType.isGraphic(),
                glyphType.isCombination(),
                glyphType.isThreedimensional(),
                glyphType.isOther(),
                glyphType.getOtherType(),
                rightPair.isHasRight(),
                rightPair.getRightBasis(),
                trademark.getImageLink(),
                trademark.getColor(),
                trademark.getTransliteration(),
                trademark.getTranslation(),
                trademark.getDescription(),
                trademark.getClasses()
        );
    }

    public TrademarkRequestDTO mapToTrademarkRequestDTO(Request request) {
        return new TrademarkRequestDTO(
                new DataDTO(request.getRequestData().getRequestId(), request.getRequestData().getDate()),
                mapRequesterToPersonDTO(request.getRequester()),
                request.getAttorney() == null ? new PersonDTO("", "", "", "", "", "", "", "", "", "") : mapAttorneyToPersonDTO(request.getAttorney()),
                request.getRepresentative() == null ? new PersonDTO("", "", "", "", "", "", "", "", "", "") : mapRepresentativeToPersonDTO(request.getRepresentative()),
                mapToTrademarkDTO(request.getTrademark()),
                mapToTaxDTO(request.getTaxData()),
                mapToAttachmentsDTO(request.getAttachments())
        );
    }

    public Request getRequestById(String id) {
        Optional<Request> opt = this.requestRepository.findById(id);
        return opt.orElse(null);
    }

    public long countRequestsInDateRange(LocalDate start, LocalDate end) {
        Iterable<Request> allRequests = requestRepository.findAll();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        return StreamSupport.stream(allRequests.spliterator(), false)
                .filter(request -> {
                    LocalDate requestDate = LocalDate.parse(request.getRequestData().getDate(), formatter);
                    return !requestDate.isBefore(start) && !requestDate.isAfter(end);
                })
                .count();
    }

    public Request getAcceptedRequestById(String id) {
        Optional<Request> opt = this.requestRepository.findAcceptedById(id);
        return opt.orElse(null);
    }
}
