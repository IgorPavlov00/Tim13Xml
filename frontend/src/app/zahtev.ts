export class Zahtev {
  sifra: string = '';
  datumPodnosenja: string = '';
  ime: string = '';
  prezime: string = '';
  ulicaPodnosioca: string = '';
  mestoPodnosioca: string = '';
  drzavljanstvoPodnosioca: string = '';
  pseudonimPodnosioca: string = '';
  telefonPodnosioca: string = '';
  emailPodnosioca: string = '';
  obrazac: string = '';
  vrstaAutorskogDela: string = '';
  formaAutorskogDela: string = '';
  stvorenoURadnomOdnosu: string = '';
  imeAutoraZiv: string = '';
  prezimeAutoraZiv: string = '';
  ulicaAutoraZiv: string = '';
  mestoAutoraZiv: string = '';
  drzavljanstvoAutoraZiv: string = '';
  pseudonimAutoraZiv: string = '';
  opisAutorskogDela: string = '';
  primerAutorskogDela: string = '';
  imePunomocnika: string = '';
  prezimePunomocnika: string = '';
  ulicaPunomocnika: string = '';
  mestoPunomocnika: string = '';
  tipkorisnika: string = '';
  naslov: string = '';
  alternativniNaslov: string = '';
  naslovIzvornogDela: string = '';
  nacinKoriscenja: string = '';
  autorIzvornogDela: string = '';
  poslovno_ime: string = '';
  ime_sluzbenika:string='';
  prezime_sluzbenika:string='';
  razlog:string='';

  constructor(data?: Partial<Zahtev>) {
    if (data) {
      Object.assign(this, data);
    }
  }
}
