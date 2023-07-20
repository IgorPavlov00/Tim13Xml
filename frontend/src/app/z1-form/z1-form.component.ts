import {Component, OnInit} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {Router} from "@angular/router";
import {FormBuilder, FormControl, Validators} from '@angular/forms';
import {MatStepperIntl} from "@angular/material/stepper";
import {MatDialog} from "@angular/material/dialog";

@Component({
  selector: 'app-z1-form',
  templateUrl: './z1-form.component.html',
  styleUrls: ['./z1-form.component.css'],
})
export class Z1FormComponent implements OnInit {

  request: TrademarkRequest = new TrademarkRequest();

  classNumbers = Array.from({length: 45}, (_, i) => i + 1);
  total: number = 0;
  requesterType: boolean = true;
  attorneyType: boolean = true;
  representativeType: boolean = true;
  hasMoreThanOneRequester: boolean = false;
  hasAttorney: boolean = false;

  hasRight: boolean = false;
  requesterFormGroup = this._formBuilder.group({
    name: ['', Validators.required],
    lastName: ['', this.requesterType ? Validators.required : null],
    street: ['', Validators.required],
    postCode: ['', [Validators.required, Validators.pattern(/^[1-9]\d{4}$/)]],
    city: ['', Validators.required],
    country: ['', Validators.required],
    phone: ['', [Validators.required, Validators.minLength(9), Validators.maxLength(10)]],
    email: ['', [Validators.required, Validators.email]],
    fax: ['', Validators.minLength(0)],
  });
  attorneyFormGroup = this._formBuilder.group({
    name: ['', Validators.required],
    lastName: ['', this.attorneyType ? Validators.required : null],
    street: ['', Validators.required],
    postCode: ['', [Validators.required, Validators.pattern(/^[1-9]\d{4}$/)]],
    city: ['', Validators.required],
    country: ['', Validators.required],
    phone: ['', [Validators.required, Validators.minLength(9), Validators.maxLength(10)]],
    email: ['', [Validators.required, Validators.email]],
    fax: ['', Validators.minLength(0)],
  });
  representativeFormGroup = this._formBuilder.group({
    name: ['', Validators.required],
    lastName: ['', this.representativeType ? Validators.required : null],
    street: ['', Validators.required],
    postCode: ['', [Validators.required, Validators.pattern(/^[1-9]\d{4}$/)]],
    city: ['', Validators.required],
    country: ['', Validators.required],
    phone: ['', [Validators.required, Validators.minLength(9), Validators.maxLength(10)]],
    email: ['', [Validators.required, Validators.email]],
    fax: ['', Validators.minLength(0)],
  });
  classesToggle = new FormControl([], Validators.required);
  trademarkFormGroup = this._formBuilder.group({
    trademarkType: ['', Validators.required],
    glyphType: ['', Validators.required],
    image: [null],
    color: ['', Validators.pattern(/^[a-zA-Z]+$/)],
    transliteration: [''],
    translation: [''],
    description: [''],
    classes: this.classesToggle,
    right: [false],
    basis: [''],
  });
  taxFormGroup = this._formBuilder.group({
    basic: ['', [Validators.required, Validators.min(500)]],
    class: ['', [Validators.required, Validators.min(500)]],
    graphic: ['', Validators.min(0)],
  });

  filenames = [
    {name: "primerak-znaka.pdf", uploaded: false},
    {name: "spisak-robe-i-usluga.pdf", uploaded: false},
    {name: "punomocje.pdf", uploaded: false},
    {name: "ranije-prilozeno-punomocje.pdf", uploaded: false},
    {name: "naknadno-dostavljeno-punomocje.pdf", uploaded: false},
    {name: "opsti-akt-o-zigu.pdf", uploaded: false},
    {name: "dokaz-o-pravu-prvenstva.pdf", uploaded: false},
    {name: "dokaz-o-uplati-takse.pdf", uploaded: false},
  ]
  trademarkTypeOptions = [
    {label: "Individualni zig", value: "individualni"},
    {label: "Kolektivni zig", value: "kolektivni"},
    {label: "Zig garancije", value: "garancija"},
  ];
  glyphTypeOptions = [
    {label: "Verbalni znak", value: "verbalni"},
    {label: "Graficki znak; boja, kombinacija boja", value: "graficki"},
    {label: "Kombinovani znak", value: "kombinovani"},
    {label: "Trodimenzionalni znak", value: "trodimenzionalni"},
    {label: "Druga vrsta znaka", value: "drugo"},
  ];

  constructor(private http: HttpClient, private router: Router, private _formBuilder: FormBuilder, private _matStepperIntl: MatStepperIntl, public dialog: MatDialog) {
    this._matStepperIntl.optionalLabel = "Ne postoji";
    this._matStepperIntl.changes.next();
  }

  ngOnInit(): void {
  }

  addClass(index: number) {
    if (this.request.trademark.classes)
      this.request.trademark.classes = this.request.trademark.classes?.concat(",", index.toString());
    else
      this.request.trademark.classes = this.request.trademark.classes?.concat(index.toString());
  }

  calculateSum(): void {
    // @ts-ignore
    const basicValue = parseFloat(this.taxFormGroup.value.basic || 0);
    // @ts-ignore
    const classValue = parseFloat(this.taxFormGroup.value.class || 0);
    // @ts-ignore
    const graphicValue = parseFloat(this.taxFormGroup.value.graphic || 0);

    // @ts-ignore
    this.total = basicValue + classValue + graphicValue;
  }


  changeAttorney(checked: boolean) {
    this.hasAttorney = checked;
  }

  changeRequester(checked: boolean) {
    this.hasMoreThanOneRequester = checked;
  }

  openDialog() {
    this.dialog.open(KlasifikacijaDialog);
  }

  changeRight(checked: boolean) {
    this.hasRight = checked;
  }

  submitAll() {
    console.log(this.request);
    console.log(this.requesterFormGroup.value);
    console.log(this.attorneyFormGroup.value);
    console.log(this.representativeFormGroup.value);
    console.log(this.trademarkFormGroup.value);
    console.log(this.taxFormGroup.value);
  }
}


@Component({
  selector: 'klasifikacija-dialog',
  templateUrl: './klasifikacija-dialog.html',
})
export class KlasifikacijaDialog {
}
