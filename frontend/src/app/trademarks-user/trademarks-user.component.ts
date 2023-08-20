import { Component } from '@angular/core';
import { TrademarkRequest } from "../model/trademark/trademark-request";
import { TrademarkRequestService } from "../servisi/trademark-request.service";
import { saveAs } from 'file-saver';

interface SearchQuery {
  key: keyof TrademarkRequest;
  value: string;
  logic?: 'AND' | 'OR' | 'NOT';
}
@Component({
  selector: 'app-trademarks-user',
  templateUrl: './trademarks-user.component.html',
  styleUrls: ['./trademarks-user.component.css']
})
export class TrademarksUserComponent {
  retrievedData: TrademarkRequest[] = [];
  filteredData: TrademarkRequest[] = [];
  searchString: string = '';
  advancedString: string = '';
  links: string[] = [];


  constructor(private trademarkService: TrademarkRequestService) {
    trademarkService.getAcceptedRequests().subscribe(
      data => {
        this.retrievedData = data;
        this.filteredData = data;
        for (let i = 0; i < data.length; i++) {
          this.links[i] = '/zig/' + data[i].requestData.requestID;
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

  reset() {
    if (this.searchString === '') {
      this.filteredData = this.retrievedData;
    } else {
      console.info(this.searchString);
    }
    if (this.advancedString === '') {
      this.filteredData = this.retrievedData;
    } else {
      console.info(this.advancedString);
    }
  }

  advancedSearch(): void {
    const queries = this.parseSearchString(this.advancedString);

    this.filteredData = this.retrievedData.filter((data: TrademarkRequest) => {
      return this.evaluateQueries(data, queries);
    });
  }

  parseSearchString(searchString: string): SearchQuery[] {
    const parts = searchString.split(/(AND|OR|NOT)/).map(s => s.trim());
    let queries = [];

    for (let i = 0; i < parts.length; i += 2) {
      queries.push({
        key: parts[i].split(":")[0].slice(1) as keyof TrademarkRequest,
        value: parts[i].split(":")[1].slice(0, -1) as string,
        logic: parts[i + 1] as SearchQuery['logic']
      });
    }

    return queries;
  }

  evaluateQueries(data: TrademarkRequest, queries: SearchQuery[]): boolean {
    let result = this.containsSearchString(data[queries[0].key], queries[0].value);

    for (let i = 1; i < queries.length; i++) {
      if (queries[i - 1].logic === 'AND') {
        result = result && this.containsSearchString(data[queries[i].key], queries[i].value);
      } else if (queries[i - 1].logic === 'OR') {
        result = result || this.containsSearchString(data[queries[i].key], queries[i].value);
      } else if (queries[i - 1].logic === 'NOT') {
        result = result && !this.containsSearchString(data[queries[i].key], queries[i].value);
      }
    }

    return result;
  }

  // ... rest of the code

}
