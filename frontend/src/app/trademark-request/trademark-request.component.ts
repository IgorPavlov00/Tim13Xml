import {Component} from '@angular/core';
import {ActivatedRoute} from '@angular/router';
import {TrademarkRequestService} from "../servisi/trademark-request.service";
import {TrademarkRequest} from "../model/trademark/trademark-request";

@Component({
  selector: 'app-trademark-request',
  templateUrl: './trademark-request.component.html',
  styleUrls: ['./trademark-request.component.css']
})
export class TrademarkRequestComponent {
  request: TrademarkRequest | undefined;

  constructor(private route: ActivatedRoute, private trademarkService: TrademarkRequestService) {
    this.route.params.subscribe(params => {
      let requestID = params['sifra'];
      trademarkService.getRequest(requestID).subscribe(data => {
        this.request = data;
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
