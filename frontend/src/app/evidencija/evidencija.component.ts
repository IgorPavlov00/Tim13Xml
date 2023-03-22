import {Component} from '@angular/core';

@Component({
  selector: 'app-evidencija',
  templateUrl: './evidencija.component.html',
  styleUrls: ['./evidencija.component.css']
})
export class EvidencijaComponent {
  docType: string;
  apData = [
    {"delo": "The Great Gatsby", "aut": "F. Scott Fitzgerald", "dat": "1925"},
    {"delo": "Starry Night", "aut": "Vincent van Gogh", "dat": "1889"},
    {"delo": "Symphony No. 5", "aut": "Ludwig van Beethoven", "dat": "1808"},
    {"delo": "To Kill a Mockingbird", "aut": "Harper Lee", "dat": "1960"}];
  zData = [
    {"zig": "Nike", "riu": "Athletic footwear, apparel, and accessories", "dat": "1978"},
    {"zig": "Apple", "riu": "Computers, smartphones, and consumer electronics", "dat": "1977"},
    {"zig": "Coca-Cola", "riu": "Soft drinks and related beverages", "dat": "1893"},
    {"zig": "McDonald's", "riu": "Fast food restaurant services and related products", "dat": "1961"}];

  constructor() {
    this.docType = "ap";
  }
}
