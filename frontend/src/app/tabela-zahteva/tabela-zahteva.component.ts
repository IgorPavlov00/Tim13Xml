import {Component} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {FormDataService} from "../form-data.service";

@Component({
  selector: 'app-tabela-zahteva',
  templateUrl: './tabela-zahteva.component.html',
  styleUrls: ['./tabela-zahteva.component.css']
})
export class TabelaZahtevaComponent {

  retrievedData: any=[] ; // Define the type based on your Resurs interface/model

  constructor(private http: HttpClient,private formDataService: FormDataService) {
    this.fetchFormData();
  }



  mode() {
    const modeSwitch = document.querySelector('.mode-switch') as HTMLElement;

    modeSwitch.addEventListener('click', () => {
      document.documentElement.classList.toggle('light');
      modeSwitch.classList.toggle('active');
    });


  }
  fetchFormData(): void {
    this.formDataService.getFormData().subscribe(
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
          const ime = xmlData.querySelector('ime')?.textContent || '';
          const prezime = xmlData.querySelector('prezime')?.textContent || '';
          const datumPodnosenja = xmlData.querySelector('datum_podnosenja')?.textContent || '';

          // Create an object with extracted data
          const extractedData = {
            sifra,
            ime,
            prezime,
            datumPodnosenja
          };

          // Add extracted data to the array
          extractedDataArray.push(extractedData);
        }

        console.log('Extracted Data Array:', extractedDataArray);

        // Assign the extracted data array to retrievedData
        this.retrievedData = extractedDataArray;
      },
      error => {
        console.error('Error fetching data:', error);
      }
    );
  }


}
