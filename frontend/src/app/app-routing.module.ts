import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {LoginComponent} from "./login/login.component";
import {FormaA1Component} from "./forma-a1/forma-a1.component";
import {UlogaComponent} from "./uloga/uloga.component";

const routes: Routes = [
  {path:'home' ,component :LoginComponent},
  {path:'formaA1' ,component :FormaA1Component},
  {path:'uloga' ,component :UlogaComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
