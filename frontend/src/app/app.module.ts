import {NgModule} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';

import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {FormaA1Component} from './forma-a1/forma-a1.component';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {LoginComponent} from './login/login.component';
import {UlogaComponent} from './uloga/uloga.component';
import {HttpClientModule} from "@angular/common/http";
import {TabelaZahtevaComponent} from './tabela-zahteva/tabela-zahteva.component';


import {Z1FormComponent} from './z1-form/z1-form.component';
import {KlasifikacijaDialog} from "./z1-form/z1-form.component";
import {EvidencijaComponent} from './evidencija/evidencija.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {MatStepperModule} from "@angular/material/stepper";
import {MatFormFieldModule} from "@angular/material/form-field";
import {MatInputModule} from "@angular/material/input";
import {MatButtonModule} from "@angular/material/button";
import {MatCheckboxModule} from "@angular/material/checkbox";
import {MatRadioModule} from "@angular/material/radio";
import {MatButtonToggleModule} from "@angular/material/button-toggle";
import {MatTooltipModule} from "@angular/material/tooltip";
import {MatIconModule} from "@angular/material/icon";
import {MatDialogModule} from "@angular/material/dialog";
import { PopupComponent } from './popup/popup.component';

@NgModule({
  declarations: [
    AppComponent,
    FormaA1Component,
    LoginComponent,
    UlogaComponent,
    Z1FormComponent,
    TabelaZahtevaComponent,
    EvidencijaComponent,
    KlasifikacijaDialog,
    PopupComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatStepperModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    MatCheckboxModule,
    MatRadioModule,
    MatButtonToggleModule,
    MatTooltipModule,
    MatIconModule,
    MatDialogModule,
  ],
  providers: [],

  bootstrap: [AppComponent]
})
export class AppModule {
}
