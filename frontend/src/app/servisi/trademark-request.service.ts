import {Injectable, NgZone} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Router} from "@angular/router";

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
          this.router.navigate(['/']);
        },
        (error) => {
          console.log(error);
        }
      );
    });
  }
}
