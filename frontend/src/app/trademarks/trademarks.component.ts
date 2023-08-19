import {Component} from '@angular/core';
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {TrademarkRequestService} from "../servisi/trademark-request.service";

@Component({
  selector: 'app-trademarks',
  templateUrl: './trademarks.component.html',
  styleUrls: ['./trademarks.component.css']
})
export class TrademarksComponent {
  retrievedData: TrademarkRequest[] = [];
  filteredData: TrademarkRequest[] = [];
  searchString: string = '';
  links: string[] = [];


  constructor(private trademarkService: TrademarkRequestService) {
    trademarkService.getAcceptedRequests().subscribe(
      data => {
        console.log(data);
        this.retrievedData = data;
        this.filteredData = data;
        for (let i = 0; i < data.length; i++) {
          this.links[i] = '/zig/' + data[i].requestData.requestID;
        }
      }, error => {
        console.log(error);
      }
    )
  }

  containsSearchString(obj: any, searchString: string): boolean {
    if (!obj) {
      return false;
    }
    if (searchString === '') {
      return false;
    }
    if (typeof obj === 'string') {
      return obj.toLowerCase().includes(searchString.toLowerCase());
    }
    if (obj == '') {
      return false;
    }
    if (typeof obj !== 'object') {
      return false;
    }

    for (let key in obj) {
      if (obj.hasOwnProperty(key)) {
        if (this.containsSearchString(obj[key], searchString)) {
          return true;
        }
      }
    }
    return false;
  }

  search() {
    this.filteredData = this.retrievedData.filter((data: TrademarkRequest) => {
      return this.containsSearchString(data, this.searchString);
    });
  }


  reset() {
    if (this.searchString === '') {
      this.filteredData = this.retrievedData;
    } else {
      console.info(this.searchString);
    }
  }
}
