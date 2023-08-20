import {Component} from '@angular/core';
import {TrademarkRequestService} from "../servisi/trademark-request.service";
import {FormDataService} from "../form-data.service";

@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.css']
})
export class ReportsComponent {
  startDate: string = "";
  endDate: string = "";
  trademarkCounts: number[] = [];
  lista: number[] = [];
  constructor(private trademarkService: TrademarkRequestService,private formdata:FormDataService) {

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
    this.formdata.getReports(start,end).subscribe(data=>{
      console.log(data);
      this.setList(data);
    })
  }

  setTrademarkCounts(data: number[]) {
    this.trademarkCounts = data;
  }
  setList(data: number[]) {
    this.lista = data;
  }



}
