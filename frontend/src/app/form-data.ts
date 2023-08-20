export class FormData {
  // Personal Info - Fizicko lice
  tip_korisnika: string;
  ime: string;
  prezime: string;
  adresa: string;
  mesto:string;
  drzavljanstvo: string;
  telefon1: string;
  email1: string;
  poslovno_ime: string;
  adresa_sedista:string;
  mesto_sedista:string;
  telefon: string;
  email: string;
  pseudonim: string;
  punomocnik: boolean;
  punomocnik_ime: string;
  punomocnik_prezime: string;
  punomocnik_adresa: string;
  punomocnik_mesto: string;
  naslov: string;
  alternativni_naslov: string;
  naslov_izvornog_dela: string;
  autor_izvornog_dela: string;
  vrsta_dela: string;
  forma_zapisa: string;
  autorskoDeloStvorenoURadnomOdnosu: string;
  nacin_koriscenja: string;
  autori_zivi: string;
  imena_preminulih_autora: string;
  godina_smrti: string;
  autorPodnosioc:string;
  imeAutora:string;
  prezimeAutora:string;
  drzavljanstvoAutora:string;
  ulicaAutora:string;
  mestoAutora:string;
  pseudonimAutora:string;

  constructor() {
    // You can set default values for the properties if needed
    this.tip_korisnika = '';
    this.ime = '';
    this.prezime = '';
    this.adresa = '';
    this.drzavljanstvo = '';
    this.telefon1 = '';
    this.email1 = '';
    this.poslovno_ime = '';
    this.ulicaAutora='';
    this.mestoAutora='';
    this.pseudonimAutora='';
    this.telefon = '';
    this.email = '';
    this.pseudonim = '';
    this.punomocnik = false;
    this.punomocnik_ime = '';
    this.punomocnik_prezime = '';
    this.punomocnik_adresa = '';
    this.naslov = '';
    this.alternativni_naslov = '';
    this.naslov_izvornog_dela = '';
    this.autor_izvornog_dela = '';
    this.vrsta_dela = '';
    this.forma_zapisa = '';
    this.autorskoDeloStvorenoURadnomOdnosu = '';
    this.nacin_koriscenja = '';
    this.autori_zivi = '';
    this.imena_preminulih_autora = '';
    this.godina_smrti = '';
    this.autorPodnosioc='';
    this.mesto='';
    this.punomocnik_mesto='';
    this.adresa_sedista='';
    this.mesto_sedista='';
    this.imeAutora='';
    this.prezimeAutora='';
    this.drzavljanstvoAutora='';
  }

}
