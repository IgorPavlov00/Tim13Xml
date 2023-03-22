import { Component } from '@angular/core';

@Component({
  selector: 'app-tabela-zahteva',
  templateUrl: './tabela-zahteva.component.html',
  styleUrls: ['./tabela-zahteva.component.css']
})
export class TabelaZahtevaComponent {
  data = [
    { sifra: 123, datum: '01/01/2023', ime: 'Igor', prezime: 'p', link: 'link'},
    { sifra: 123, datum: '02/01/2023', ime: 'Ana', prezime: 'p', link: 'link'},
    { sifra: 123, datum: '03/01/2023', ime: 'Nikola', prezime: 'p', link: 'link'},
    { sifra: 123, datum: '04/01/2023', ime: 'Marko', prezime: 'p', link: 'link'},
    { sifra: 123, datum: '05/01/2023', ime: 'Jovan', prezime: 'p', link: 'link'},
    { sifra: 123, datum: '06/01/2023', ime: 'Nenad', prezime: 'p', link: 'link'}
  ];
  mode() {
    const modeSwitch = document.querySelector('.mode-switch') as HTMLElement;

    modeSwitch.addEventListener('click', () => {
      document.documentElement.classList.toggle('light');
      modeSwitch.classList.toggle('active');
    });
}}
