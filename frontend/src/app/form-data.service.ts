import { Injectable } from '@angular/core';
import {Observable} from "rxjs";
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {FormData} from "./form-data";
import {Zahtev} from "./zahtev";

@Injectable({
  providedIn: 'root'
})
export class FormDataService {
  private url:string="http://localhost:8083/";

  constructor(private http: HttpClient) { }

  // Function to send the form data to the backend
  submitFormData(formData: any): Observable<any> {
    return this.http.post<any>(this.url+'podaciFormeA1', formData);
  }
  getFormData(): Observable<any> {
    return this.http.get<any>(this.url + 'zahtevi');
  }
  getPrihvaceniZahtevi(): Observable<any> {
    return this.http.get<any>(this.url + 'prihvacenizahtevi');
  }
  rejectData(id: Zahtev): Observable<any> {

     return this.http.post<any>(this.url+'odbijenizahtev', id);
  }
  acceptData(id: Zahtev): Observable<any> {

    return this.http.post<any>(this.url+'prihvatizahtev', id);
  }
  getRequestPDF(id: string) {
    return this.http.get(this.url+'pdf/'+id, {responseType: 'blob'});
  }

  getRequestXHTML(id: string) {
    return this.http.get(this.url+'xhtml/'+id, {responseType: 'blob'});
  }

  getMetadataRDF() {
    return this.http.get(this.url+'rdf', {responseType: 'text'});
  }

  getMetadataJSON() {
    return this.http.get(this.url+'json', {responseType: 'text'});
  }

  getReports(start:string,end:string){
    return this.http.get<number[]>(this.url+'izvestaji/'+start+"_"+end);
  }
}
