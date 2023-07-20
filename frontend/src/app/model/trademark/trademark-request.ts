import {Person} from "./person";
import {Trademark} from "./trademark";
import {Attachments} from "./attachments";
import {Tax} from "./tax";

export class TrademarkRequest {
  requester!:Person;
  attorney!:Person;
  representative!:Person;
  trademark!:Trademark;
  tax!:Tax;
  attachments!:Attachments;
}
