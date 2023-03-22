import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {LoginComponent} from "./login/login.component";
import {FormaA1Component} from "./forma-a1/forma-a1.component";
import {UlogaComponent} from "./uloga/uloga.component";
import {TabelaZahtevaComponent} from "./tabela-zahteva/tabela-zahteva.component";
import {EvidencijaComponent} from "./evidencija/evidencija.component";

const routes: Routes = [
  {path: '', redirectTo: '/home', pathMatch: "full"},
  {path: 'home', component: UlogaComponent},
  {path: 'formaA1', component: FormaA1Component},
  {path: 'login', component: LoginComponent},
  {path: 'evid', component: EvidencijaComponent},
  {path:'zahtevi', component:TabelaZahtevaComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
