import { Injectable } from '@angular/core';
import {Observable} from "rxjs";
import {HttpClient} from "@angular/common/http";

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

}
