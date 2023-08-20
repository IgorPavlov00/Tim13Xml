import { Component } from '@angular/core';
import {FormData} from "../form-data";
import {Zahtev} from "../zahtev";
import {HttpClient} from "@angular/common/http";
import {FormDataService} from "../form-data.service";
import {MatDialog} from "@angular/material/dialog";
import {Router} from "@angular/router";
import {PopupComponent} from "../popup/popup.component";

@Component({
  selector: 'app-evidencija-a',
  templateUrl: './evidencija-a.component.html',
  styleUrls: ['./evidencija-a.component.css']
})
export class EvidencijaAComponent {
  retrievedData: any = []; // Define the type based on your Resurs interface/model
  filteredData: any[] = [];
  public searchInput = '';
  selectedXmlObjects: any[] = [];
  rejectedXmlObjects: any[] = [];
  deletedData: any[] = [];
  formData: FormData = new FormData();
  zahtevData: Zahtev = new Zahtev();
  constructor(private http: HttpClient, private formDataService: FormDataService,private dialog: MatDialog,private router:Router) {
    this.fetchFormData();
    this.filteredData;
  }




  openPopup(rowData: any): void {
    const dialogRef = this.dialog.open(PopupComponent, {
      width: '1200px', // Set the desired width
      data: rowData, // Pass the data of the selected row
      height:'800px'


    });
    console.log(rowData);
    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed', result);
    });
  }

  mode() {
    const modeSwitch = document.querySelector('.mode-switch') as HTMLElement;

    modeSwitch.addEventListener('click', () => {
      document.documentElement.classList.toggle('light');
      modeSwitch.classList.toggle('active');
    });


  }

  fetchFormData(): void {
    this.formDataService.getPrihvaceniZahtevi().subscribe(
      data => {
        console.log('Retrieved Data:', data);

        const parser = new DOMParser();
        const extractedDataArray = [];

        // Loop through each object in the array
        for (const item of data) {
          const xmlContent = item?.content || '';
          const xmlData = parser.parseFromString(xmlContent, 'application/xml');

          // Extract data
          const sifra = item?.id ? item.id.replace(/\D+/g, '') : '';
          const datumPodnosenja = xmlData.querySelector('datum_podnosenja')?.textContent || '';
          const ime = xmlData.querySelector('ime')?.textContent || '';
          const prezime = xmlData.querySelector('prezime')?.textContent || '';
          const ulicaPodnosioca = xmlData.querySelector('podaci_o_podnosiocu licni_podaci adresa ulica')?.textContent || '';
          const mestoPodnosioca = xmlData.querySelector('podaci_o_podnosiocu licni_podaci adresa mesto')?.textContent || '';
          const drzavljanstvoPodnosioca = xmlData.querySelector('podaci_o_podnosiocu licni_podaci drzavljanstvo')?.textContent || '';
          const pseudonimPodnosioca = xmlData.querySelector('podaci_o_podnosiocu pseudonim')?.textContent || '';
          const telefonPodnosioca = xmlData.querySelector('podaci_o_podnosiocu telefon')?.textContent || '';
          const emailPodnosioca = xmlData.querySelector('podaci_o_podnosiocu email')?.textContent || '';
          const obrazac = xmlData.querySelector('obrazac')?.textContent || '';

          const vrstaAutorskogDela = xmlData.querySelector('vrsta_autorskog_dela')?.textContent || '';
          const formaAutorskogDela = xmlData.querySelector('forma_autorskog_dela')?.textContent || '';
          const stvorenoURadnomOdnosu = xmlData.querySelector('stvoreno_u_radnom_odnosu')?.textContent || '';

          const imeAutoraZiv = xmlData.querySelector('podaci_o_autoru_ziv ime')?.textContent || '';
          const prezimeAutoraZiv = xmlData.querySelector('podaci_o_autoru_ziv prezime')?.textContent || '';
          const ulicaAutoraZiv = xmlData.querySelector('podaci_o_autoru_ziv ulica')?.textContent || '';
          const mestoAutoraZiv = xmlData.querySelector('podaci_o_autoru_ziv mesto')?.textContent || '';
          const drzavljanstvoAutoraZiv = xmlData.querySelector('podaci_o_autoru_ziv drzavljanstvo')?.textContent || '';
          const pseudonimAutoraZiv = xmlData.querySelector('podaci_o_autoru_ziv pseudonim')?.textContent || '';
          const opisAutorskogDela = xmlData.querySelector('prilozi opis_autorskog_dela')?.textContent || '';
          const primerAutorskogDela = xmlData.querySelector('prilozi primer_autorskog_dela')?.textContent || '';
          const imePunomocnika = xmlData.querySelector('podaci_punomocnika ime')?.textContent || '';
          const prezimePunomocnika = xmlData.querySelector('podaci_punomocnika prezime')?.textContent || '';
          const ulicaPunomocnika = xmlData.querySelector('podaci_punomocnika ulica')?.textContent || '';
          const mestoPunomocnika = xmlData.querySelector('podaci_punomocnika mesto')?.textContent || '';

          const tipkorisnika = xmlData.querySelector('licni_podaci')?.getAttribute('tip_lica') || 'NIJE UNETO';
          const naslov = xmlData.querySelector('podaci_o_autorskom_delu naslov')?.textContent || '';
          const alternativniNaslov = xmlData.querySelector('alternativni_naslov')?.textContent || '';
          const naslovIzvornogDela = xmlData.querySelector('podaci_o_izvornom_delu naslov')?.textContent || '';
          const nacinKoriscenja = xmlData.querySelector('nacin_koriscenja')?.textContent || '';

          const autorIzvornogDela = xmlData.querySelector('podaci_o_izvornom_delu autor')?.textContent || '';

          const poslovno_ime = xmlData.querySelector('ime')?.textContent || '';
          // Create an object with extracted data

          const extractedData = {
            sifra,
            datumPodnosenja,
            ime,
            prezime,
            ulicaPodnosioca,
            mestoPodnosioca,
            drzavljanstvoPodnosioca,
            pseudonimPodnosioca,
            telefonPodnosioca,
            emailPodnosioca,
            obrazac,
            naslov,
            alternativniNaslov,
            vrstaAutorskogDela,
            formaAutorskogDela,
            stvorenoURadnomOdnosu,
            nacinKoriscenja,
            imeAutoraZiv,
            prezimeAutoraZiv,
            ulicaAutoraZiv,
            mestoAutoraZiv,
            drzavljanstvoAutoraZiv,
            pseudonimAutoraZiv,
            opisAutorskogDela,
            primerAutorskogDela,
            imePunomocnika,
            prezimePunomocnika,
            ulicaPunomocnika,
            mestoPunomocnika,
            naslovIzvornogDela,
            autorIzvornogDela,
            tipkorisnika,
            poslovno_ime
            // Add more variables here as needed
          };

          // Add extracted data to the array
          extractedDataArray.push(extractedData);
        }
        extractedDataArray.sort((a, b) => parseInt(a.sifra) - parseInt(b.sifra));
        console.log('Extracted Data Array:', extractedDataArray);

        // Assign the extracted data array to retrievedData
        this.retrievedData = extractedDataArray;
        this.filteredData=extractedDataArray;

      },
      error => {
        console.error('Error fetching data:', error);
      }
    );
  }

}
