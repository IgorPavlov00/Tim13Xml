import { Component } from '@angular/core';
import { LoginServisService } from "../servisi/login-servis.service";
import { User } from "../model/user";
import { Router } from "@angular/router";

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  constructor(private loginservice: LoginServisService, private router: Router) {
  }
  user: User = new User();
  login() {
    this.loginservice.login(this.user).subscribe((response) => {
      this.router.navigate(['/zahtevi']);
    }, err => {
      console.log(err);
    }
    )
  }
}
