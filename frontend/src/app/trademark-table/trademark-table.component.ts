import { Component } from '@angular/core';
import { TrademarkRequest } from "../model/trademark/trademark-request";
import { TrademarkRequestService } from "../servisi/trademark-request.service";
import { saveAs } from 'file-saver';
type KeyMappingType = {
  [key: string]: string;
};
interface SearchCriteria {
  field: keyof TrademarkRequest;
  operator: string;
  value: any;
}



@Component({
  selector: 'app-trademark-table',
  templateUrl: './trademark-table.component.html',
  styleUrls: ['./trademark-table.component.css']
})
export class TrademarkTableComponent {
  retrievedData: TrademarkRequest[] = [];
  filteredData: TrademarkRequest[] = [];
  searchString: string = '';
  advancedString: string = '';
  links: string[] = [];

  keyMapping: KeyMappingType = {
    'datum_podnosenja': 'requestDate',
    'ime_podnosioca': 'requester.name',
    'prezime_podnosioca': 'requester.lastName',
    'ime_punomocnika': 'attorney.name',
    'prezime_punomocnika': 'attorney.lastName',
    'ukupno': 'total'
  };


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
      const blob = new Blob([data], { type: 'application/rdf+xml' });
      saveAs(blob, "metadata.rdf");
    });
  }

  downloadMetadataJSON() {
    this.trademarkService.getAllMetadataJSON().subscribe(data => {
      const blob = new Blob([data], { type: 'application/json' });
      saveAs(blob, "metadata.json");
    });
  }

  reset() {
    this.searchString = '';
    this.advancedString = '';
  }

  advancedSearch() {
    console.log("advancedSearch called");
    const { criteria, logicalOperators } = this.parseQueryString(this.advancedString);
    console.log("Criteria:", criteria);
    console.log("Logical Operators:", logicalOperators);
    this.filteredData = this.retrievedData.filter(data => this.evaluateQueries(data, criteria, logicalOperators));
  }

  parseQueryString(query: string = ''): { criteria: SearchCriteria[], logicalOperators: string[] } {
    // Ensure the input string is defined and not empty
    if (!query) return { criteria: [], logicalOperators: [] };

    const parts = query.split(/\s+/).filter(part => part && part.trim() !== '');

    let criteria: SearchCriteria[] = [];
    let logicalOperators: string[] = [];

    for (let i = 0; i < parts.length; i++) {
      const part = parts[i];
      if (['AND', 'OR'].includes(part)) {
        logicalOperators.push(part);
      } else if (part === 'NOT') {
        // Ensure there's a next part to process
        if (i + 1 >= parts.length) continue;
        const [queryField, extractedValue] = parts[++i].split(':');
        if (!queryField || !extractedValue) continue; // Skip if either part is missing
        const value = extractedValue.trim();
        const field = this.mapQueryToField(queryField.trim());

        // Ensure field is not undefined
        if (!field) continue;

        criteria.push({
          field: field as keyof TrademarkRequest,
          operator: 'NOT',
          value: value
        });
      } else {
        const [queryField, extractedValue] = part.split(':');
        if (!queryField || !extractedValue) continue; // Skip if either part is missing
        const value = extractedValue.trim();
        const field = this.mapQueryToField(queryField.trim());

        // Ensure field is not undefined
        if (!field) continue;

        criteria.push({
          field: field as keyof TrademarkRequest,
          operator: '',
          value: value
        });
      }
    }
    // ... rest of your parseQueryString

    criteria = criteria.filter(criterion => {
      if (!criterion.field) {
        console.warn("Filtered out criterion with undefined field:", criterion);
        return false;
      }
      return true;
    });

    return { criteria, logicalOperators };
  }


  evaluateQueries(data: TrademarkRequest, criteria: SearchCriteria[], logicalOperators: string[]): boolean {
    console.log("evaluateQueries called");
    let result = criteria[0]?.field ? this.evaluateCriterion(data, criteria[0]) : false;

    for (let i = 1; i < criteria.length; i++) {
      if (!criteria[i]?.field) continue;
      const currentResult = this.evaluateCriterion(data, criteria[i]);

      if (criteria[i].operator === 'NOT') {
        if (logicalOperators[i - 1] === 'AND') {
          result = result && !currentResult;
        } else if (logicalOperators[i - 1] === 'OR') {
          result = result || !currentResult;
        }
      } else {
        if (logicalOperators[i - 1] === 'AND') {
          result = result && currentResult;
        } else if (logicalOperators[i - 1] === 'OR') {
          result = result || currentResult;
        }
      }
    }

    return result;
  }


  mapQueryToField(queryField: string): string {
    return this.keyMapping[queryField] || '';
  }


  evaluateCriterion(data: TrademarkRequest, criterion: SearchCriteria): boolean {
    const actualValue = this.getValueFromPath(data, criterion.field);
    console.log(actualValue);
    // Handling for NOT operator is done in evaluateQueries
    return actualValue === criterion.value;
  }




  getValueFromPath(obj: any, path: string): any {
    return path.split('.').reduce((prev, curr) => {
      return prev ? prev[curr] : null;
    }, obj);
  }

}
