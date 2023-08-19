import {Component} from '@angular/core';
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {Notice} from "../model/notice";
import {FormBuilder} from "@angular/forms";
import {ActivatedRoute, Router} from "@angular/router";
import {TrademarkRequestService} from "../servisi/trademark-request.service";

@Component({
  selector: 'app-trademark',
  templateUrl: './trademark.component.html',
  styleUrls: ['./trademark.component.css']
})
export class TrademarkComponent {
  request: TrademarkRequest = new TrademarkRequest();
  notice: Notice = new Notice();
  date: string = "";

  constructor(private route: ActivatedRoute, private trademarkService: TrademarkRequestService, private _formBuilder: FormBuilder, private router: Router) {
    this.route.params.subscribe(params => {
      let requestID = params['sifra'];
      trademarkService.getAcceptedRequestAndNotice(requestID).subscribe(data => {
        this.request = data.request;
        this.notice = data.notice;
        this.date = data.date;
      });
    });

  }

  openPDF(type: string) {
    this.trademarkService.getRequestPDF(this.request?.requestData.requestID || '', type).subscribe(data => {
      const blob = new Blob([data], {type: 'application/pdf'});
      const url = window.URL.createObjectURL(blob);

      window.open(url);

    }, error => {
      console.log(error);
    });
  }
}
