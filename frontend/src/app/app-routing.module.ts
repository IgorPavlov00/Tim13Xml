import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {LoginComponent} from "./login/login.component";
import {FormaA1Component} from "./forma-a1/forma-a1.component";
import {UlogaComponent} from "./uloga/uloga.component";
import {TabelaZahtevaComponent} from "./tabela-zahteva/tabela-zahteva.component";
import {Z1FormComponent} from "./z1-form/z1-form.component";
import {TrademarkTableComponent} from "./trademark-table/trademark-table.component";
import {TrademarkRequestComponent} from "./trademark-request/trademark-request.component";
import {TrademarksComponent} from "./trademarks/trademarks.component";
import {ReportsComponent} from "./reports/reports.component";
import {TrademarkComponent} from "./trademark/trademark.component";

const routes: Routes = [
    {path: '', redirectTo: '/home', pathMatch: "full"},
    {path: 'home', component: UlogaComponent},
    {path: 'formaA1', component: FormaA1Component},
    {path: 'z1', component: Z1FormComponent},
    {path: 'login', component: LoginComponent},
    {path: 'zahtevi', component: TabelaZahtevaComponent},
    {path: 'zahtevi-zig', component: TrademarkTableComponent},
    {path: 'zahtev/:sifra', component: TrademarkRequestComponent},
    {path: 'zig/:sifra', component: TrademarkComponent},
    {path: 'zigovi', component: TrademarksComponent},
    {path: 'izvestaji', component: ReportsComponent},
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule]
})
export class AppRoutingModule {
}
