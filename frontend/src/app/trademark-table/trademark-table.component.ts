import {Component} from '@angular/core';
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {TrademarkRequestService} from "../servisi/trademark-request.service";
import {saveAs} from 'file-saver';


@Component({
  selector: 'app-trademark-table',
  templateUrl: './trademark-table.component.html',
  styleUrls: ['./trademark-table.component.css']
})
export class TrademarkTableComponent {
  retrievedData: TrademarkRequest[] = [];
  filteredData: TrademarkRequest[] = [];
  searchString: string = '';
  links: string[] = [];


  constructor(private trademarkService: TrademarkRequestService) {
    trademarkService.getRequests().subscribe(
      data => {
        this.retrievedData = data;
        this.filteredData = data;
        for (let i = 0; i < data.length; i++) {
          this.links[i] = '/zahtev/' + data[i].requestData.requestID;
        }
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


  downloadMetadataRDF() {
    this.trademarkService.getAllMetadataRDF().subscribe(data => {
      const blob = new Blob([data], {type: 'application/rdf+xml'});
      saveAs(blob, "metadata.rdf");
    });
  }

  downloadMetadataJSON() {
    this.trademarkService.getAllMetadataJSON().subscribe(data => {
      const blob = new Blob([data], {type: 'application/json'});
      saveAs(blob, "metadata.json");
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
