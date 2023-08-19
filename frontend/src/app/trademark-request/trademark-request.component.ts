import {Component} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {TrademarkRequestService} from "../servisi/trademark-request.service";
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {saveAs} from "file-saver";
import {FormBuilder, Validators} from "@angular/forms";
import {Notice} from "../model/notice";

@Component({
  selector: 'app-trademark-request',
  templateUrl: './trademark-request.component.html',
  styleUrls: ['./trademark-request.component.css']
})
export class TrademarkRequestComponent {
  request: TrademarkRequest = new TrademarkRequest();
  notice: Notice = new Notice();
  buttonClicked: string = "";
  noticeFormGroup = this._formBuilder.group({
    officialName: ["", Validators.required],
    officialLastName: ["", Validators.required],
    reason: ["", Validators.maxLength(50)],
  });

  constructor(private route: ActivatedRoute, private trademarkService: TrademarkRequestService, private _formBuilder: FormBuilder, private router: Router) {
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

  downloadRequestPDF() {
    let requestID = this.request?.requestData.requestID || '';
    this.trademarkService.getRequestPDF(requestID, "download").subscribe(data => {
      const blob = new Blob([data], {type: 'application/pdf'});
      saveAs(blob, `${requestID}.pdf`);
    });
  }

  downloadRequestXHTML() {
    let requestID = this.request?.requestData.requestID || '';
    this.trademarkService.getRequestXHTML(requestID).subscribe(data => {
      const blob = new Blob([data], {type: 'application/xhtml+xml'});
      saveAs(blob, `${requestID}.xhtml`);
    });
  }


  downloadMetadataRDF() {
    let requestID = this.request?.requestData.requestID || '';
    this.trademarkService.getMetadataRDF(requestID).subscribe(data => {
      const blob = new Blob([data], {type: 'application/rdf+xml'});
      saveAs(blob, `${requestID}.rdf`);
    });
  }

  downloadMetadataJSON() {
    let requestID = this.request?.requestData.requestID || '';
    this.trademarkService.getMetadataJSON(requestID).subscribe(data => {
      const blob = new Blob([data], {type: 'application/json'});
      saveAs(blob, `${requestID}.json`);
    });
  }

  submitNotice() {
    if (this.buttonClicked === 'approve') {
      this.notice = new Notice(
        this.request?.requestData.requestID,
        this.noticeFormGroup.value.officialName,
        this.noticeFormGroup.value.officialLastName,
        this.noticeFormGroup.value.reason,
        true
      );
    } else if (this.buttonClicked === 'reject') {
      this.notice = new Notice(
        this.request?.requestData.requestID,
        this.noticeFormGroup.value.officialName,
        this.noticeFormGroup.value.officialLastName,
        this.noticeFormGroup.value.reason,
        false
      );
    }
    this.trademarkService.submitNotice(this.notice).subscribe(data => {
      this.router.navigate(['/zahtevi-zig']);
    }, error => {
      console.log(error);
    })
  }

  onApprove() {
    this.buttonClicked = 'approve';
    this.submitNotice();
  }

  onReject() {
    this.buttonClicked = 'reject';
    this.submitNotice();
  }
}
