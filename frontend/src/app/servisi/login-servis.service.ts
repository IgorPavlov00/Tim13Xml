import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {Router} from "@angular/router";
import {Observable} from "rxjs";
import {User} from "../model/user";
import * as Console from "console";

@Injectable({
  providedIn: 'root'
})
export class LoginServisService {
url:string="http://localhost:8081/";
  constructor(private http:HttpClient,router:Router) {


  }
  login(user:User):Observable<object>{
    console.log(user);
    return  this.http.post(this.url+"login",user);
  }
}
