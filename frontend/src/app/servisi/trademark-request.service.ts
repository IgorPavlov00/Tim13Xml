import {Injectable, NgZone} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Router} from "@angular/router";
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {Notice} from "../model/notice";

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
                    this.router.navigate(['/evidencija-zigova']);
                },
                (error) => {
                    console.log(error);
                }
            );
        });
    }

    getRequests() {
        return this.http.get<TrademarkRequest[]>('http://localhost:8082/requests/unviewed');
    }

    getAcceptedRequests() {
        return this.http.get<TrademarkRequest[]>('http://localhost:8082/requests/accepted/all');
    }


    getRequest(id: string) {
        return this.http.get<TrademarkRequest>(`http://localhost:8082/requests/${id}`);
    }


    getAcceptedRequestAndNotice(id: string) {
        return this.http.get<{
            request: TrademarkRequest,
            notice: Notice,
            date: string
        }>(`http://localhost:8082/requests/accepted/${id}`);
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

    submitNotice(notice: Notice) {
        if (notice.status)
            return this.http.post("http://localhost:8082/requests/accept", notice, {headers: {'Content-Type': 'application/json'}});
        else
            return this.http.post("http://localhost:8082/requests/reject", notice, {headers: {'Content-Type': 'application/json'}});
    }

    getAllMetadataRDF() {
        return this.http.get(`http://localhost:8082/requests/all/rdf`, {responseType: 'text'});
    }

    getAllMetadataJSON() {
        return this.http.get(`http://localhost:8082/requests/all/json`, {responseType: 'text'});
    }

    getReports(startDate: string, endDate: string) {
        return this.http.get<number[]>(`http://localhost:8082/requests/reports/${startDate}_${endDate}`);
    }
}
