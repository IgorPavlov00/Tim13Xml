import {Component} from '@angular/core';
import {TrademarkRequestService} from "../servisi/trademark-request.service";

@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.css']
})
export class ReportsComponent {
  startDate: string = "";
  endDate: string = "";
  trademarkCounts: number[] = [];

  constructor(private trademarkService: TrademarkRequestService) {

  }

  getReports() {
    console.log(this.startDate, this.endDate);
    let startParts = this.startDate.split("-");
    let endParts = this.endDate.split("-");
    let start = startParts[2] + "-" + startParts[1] + "-" + startParts[0];
    let end = endParts[2] + "-" + endParts[1] + "-" + endParts[0];
    console.log(start, end);
    this.trademarkService.getReports(start, end).subscribe(
      data => {
        console.log(data);
        this.setTrademarkCounts(data);
      }, error => {
        console.log(error);
      }
    );
  }

  setTrademarkCounts(data: number[]) {
    this.trademarkCounts = data;
  }
}
