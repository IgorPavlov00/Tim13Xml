import {Person} from "./person";
import {Trademark} from "./trademark";
import {Attachments} from "./attachments";
import {Tax} from "./tax";
import {RequestData} from "./request-data";

export class TrademarkRequest {
  requestData!: RequestData;
  requester!: Person;
  attorney!: Person;
  representative!: Person;
  trademark!: Trademark;
  tax!: Tax;
  attachments!: Attachments;
}
