package Tim13.BackendZig.service;

import Tim13.BackendZig.dto.*;
import Tim13.BackendZig.model.*;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
public class RequestService {

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
}
