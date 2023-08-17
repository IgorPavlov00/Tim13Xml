import {Injectable, NgZone} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Router} from "@angular/router";
import {TrademarkRequest} from "../model/trademark/trademark-request";

@Injectable({
  providedIn: 'root'
})
export class TrademarkRequestService {

  constructor(private http: HttpClient, private router: Router, private ngZone: NgZone) {
  }

  add(formData: FormData) {
    this.ngZone.run(() => {
      this.http.post<any>('http://localhost:8082/requests/add', formData).subscribe(
        (response) => {
          this.router.navigate(['/home']);
        },
        (error) => {
          console.log(error);
        }
      );
    });
  }

  getRequests() {
    return this.http.get<TrademarkRequest[]>('http://localhost:8082/requests');
  }

  getRequest(id: string) {
    return this.http.get<TrademarkRequest>(`http://localhost:8082/requests/${id}`);
  }

  getRequestPDF(id: string, type: string) {
    return this.http.get(`http://localhost:8082/requests/${id}/pdf/${type}`, {responseType: 'blob'});
  }

  getRequestImage(id: string) {
    return this.http.get(`http://localhost:8082/requests/${id}/img`, {responseType: 'blob'});
  }

  getRequestXHTML(id: string) {
    return this.http.get(`http://localhost:8082/requests/${id}/xhtml`, {responseType: 'blob'});
  }

  getMetadataRDF(id: string) {
    return this.http.get(`http://localhost:8082/requests/${id}/rdf`, {responseType: 'text'});
  }

  getMetadataJSON(id: string) {
    return this.http.get(`http://localhost:8082/requests/${id}/json`, {responseType: 'text'});
  }

}
