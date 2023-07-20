import {TrademarkRequest} from "./trademark-request";

export class RequestDTO {
  request!:TrademarkRequest;
  pdfs!:FormData;
  img?: FormData;
}
