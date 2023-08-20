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


import {KlasifikacijaDialog, Z1FormComponent} from './z1-form/z1-form.component';
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
import {PopupComponent} from './popup/popup.component';
import {TrademarkTableComponent} from './trademark-table/trademark-table.component';
import {TrademarkRequestComponent} from './trademark-request/trademark-request.component';
import {TrademarkTypePipe} from './pipes/trademark-type.pipe';
import {GlyphTypePipe} from './pipes/glyph-type.pipe';
import {NgOptimizedImage} from "@angular/common";
import { ZavedenaautroskaComponent } from './zavedenaautroska/zavedenaautroska.component';
import {ReportsComponent} from './reports/reports.component';
import {TrademarksComponent} from './trademarks/trademarks.component';
import {TrademarkComponent} from './trademark/trademark.component';
import { EvidencijaAComponent } from './evidencija-a/evidencija-a.component';

@NgModule({
  declarations: [
    AppComponent,
    FormaA1Component,
    LoginComponent,
    UlogaComponent,
    Z1FormComponent,
    TabelaZahtevaComponent,

    KlasifikacijaDialog,
    PopupComponent,
    TrademarkTableComponent,
    TrademarkRequestComponent,
    TrademarkTypePipe,
    GlyphTypePipe,
    ZavedenaautroskaComponent,
    ReportsComponent,
    TrademarksComponent,
    TrademarkComponent,
    EvidencijaAComponent,
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
    NgOptimizedImage,
  ],
  providers: [],


    bootstrap: [AppComponent]
})
export class AppModule {
}
