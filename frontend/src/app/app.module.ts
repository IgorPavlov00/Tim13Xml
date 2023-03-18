import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FormaA1Component } from './forma-a1/forma-a1.component';
import {FormsModule} from "@angular/forms";
import { LoginComponent } from './login/login.component';
import { UlogaComponent } from './uloga/uloga.component';
import {HttpClientModule} from "@angular/common/http";


import { Z1FormComponent } from './z1-form/z1-form.component';

@NgModule({
  declarations: [
    AppComponent,
    FormaA1Component,
    LoginComponent,
    UlogaComponent,
    Z1FormComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
