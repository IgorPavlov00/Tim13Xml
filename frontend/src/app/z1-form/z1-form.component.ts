import {Component, NgZone, OnInit} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {TrademarkRequest} from "../model/trademark/trademark-request";
import {Router} from "@angular/router";
import {FormBuilder, FormControl, Validators} from '@angular/forms';
import {MatStepperIntl} from "@angular/material/stepper";
import {MatDialog} from "@angular/material/dialog";
import {Person} from "../model/trademark/person";
import {Trademark} from "../model/trademark/trademark";
import {Tax} from "../model/trademark/tax";
import {Attachments} from "../model/trademark/attachments";
import {TrademarkRequestService} from "../servisi/trademark-request.service";

@Component({
  selector: 'app-z1-form',
  templateUrl: './z1-form.component.html',
  styleUrls: ['./z1-form.component.css'],
})
export class Z1FormComponent implements OnInit {
  request: TrademarkRequest = new TrademarkRequest();
  pdfNames = [
    {"index": 0, "name": "primerak.pdf"},
    {"index": 1, "name": "lista_robe_i_usluga.pdf"},
    {"index": 2, "name": "punomocje.pdf"},
    {"index": 3, "name": "ranije_prilozeno_punomocje.pdf"},
    {"index": 4, "name": "naknadno_prilozeno_punomocje.pdf"},
    {"index": 5, "name": "opsti_akt_o_zigu.pdf"},
    {"index": 6, "name": "dokaz_o_pravu_prvenstva.pdf"},
    {"index": 7, "name": "dokaz_o_uplati_takse.pdf"}
  ];

  classNumbers = Array.from({length: 45}, (_, i) => i + 1);
  total: number = 0;
  requesterType: boolean = true;
  attorneyType: boolean = true;
  representativeType: boolean = true;
  hasMoreThanOneRequester: boolean = false;
  hasAttorney: boolean = false;
  isOther: boolean = false;
  isImgRequired: boolean = false;

  pdfFiles: File[] = [];
  imageFile: File | null = null;

  hasRight: boolean = false;
  requesterFormGroup = this._formBuilder.group({
    personType: ['', Validators.required],
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
    personType: ['', Validators.required],
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
    personType: ['', Validators.required],
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
    other: ['', this.isOther ? Validators.required : null],
    image: [null],
    color: [''],
    transliteration: [''],
    translation: [''],
    description: [''],
    classes: this.classesToggle,
    right: [false],
    basis: [''],
  });
  taxFormGroup = this._formBuilder.group({
    basic: [0, Validators.required],
    class: [0, Validators.required],
    graphic: [0, Validators.min(0)],
  });
  attachmentsFormGroup = this._formBuilder.group({
    example: ['', Validators.required],
    list: ['', Validators.required],
    attorney: ['', this.hasAttorney ? Validators.required : null],
    earlyGiven: [''],
    laterGiven: [''],
    act: ['', Validators.required],
    rightProof: [''],
    taxProof: ['', Validators.required],
  })
  trademarkTypeOptions = [
    {label: "Individualni žig", value: "individualni"},
    {label: "Kolektivni žig", value: "kolektivni"},
    {label: "Žig garancije", value: "garancija"},
  ];
  glyphTypeOptions = [
    {label: "Verbalni znak", value: "verbalni"},
    {label: "Grafički znak; boja, kombinacija boja", value: "graficki"},
    {label: "Kombinovani znak", value: "kombinovani"},
    {label: "Trodimenzionalni znak", value: "trodimenzionalni"},
    {label: "Druga vrsta znaka", value: "drugo"},
  ];

  constructor(private http: HttpClient, private router: Router, private _formBuilder: FormBuilder, private _matStepperIntl: MatStepperIntl, public dialog: MatDialog, private ngZone: NgZone, private requestService: TrademarkRequestService) {
    this._matStepperIntl.optionalLabel = "Ne postoji";
    this._matStepperIntl.changes.next();
  }

  ngOnInit() {
    this.subscribeToFormChanges();
  }

  onPdfFileChange(event: any, index: number) {
    this.pdfFiles[index] = event.target.files[0];
  }

  onImageFileChange(event: any) {
    this.imageFile = event.target.files[0];
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

  setTrademark(form: any, dto: Trademark) {
    if (form.trademarkType === "individualni") {
      dto.isIndividual = true;
      dto.isCollective = false;
      dto.isWarranty = false;
    } else if (form.trademarkType === "kolektivni") {
      dto.isIndividual = false;
      dto.isCollective = true;
      dto.isWarranty = false;
    } else if (form.trademarkType === "garancija") {
      dto.isIndividual = false;
      dto.isCollective = false;
      dto.isWarranty = true;
    }

    if (form.glyphType === "verbalni") {
      dto.isVerbal = true;
      dto.isGraphic = false;
      dto.isCombination = false;
      dto.isThreedimensional = false;
      dto.isOther = false;
      dto.otherType = "";
    } else if (form.glyphType === "graficki") {
      dto.isVerbal = false;
      dto.isGraphic = true;
      dto.isCombination = false;
      dto.isThreedimensional = false;
      dto.isOther = false;
      dto.otherType = "";
    } else if (form.glyphType === "kombinovani") {
      dto.isVerbal = false;
      dto.isGraphic = false;
      dto.isCombination = true;
      dto.isThreedimensional = false;
      dto.isOther = false;
      dto.otherType = "";
    } else if (form.glyphType === "trodimenzionalni") {
      dto.isVerbal = false;
      dto.isGraphic = false;
      dto.isCombination = false;
      dto.isThreedimensional = true;
      dto.isOther = false;
      dto.otherType = "";
    } else if (form.glyphType === "drugo") {
      dto.isVerbal = false;
      dto.isGraphic = false;
      dto.isCombination = false;
      dto.isThreedimensional = false;
      dto.isOther = true;
      dto.otherType = form.other;
    }

    dto.color = !dto.isVerbal ? form.color : "";
    dto.transliteration = form.transliteration ? form.transliteration : "";
    dto.translation = form.translation ? form.translation : "";
    dto.description = form.description ? form.description : "";
    dto.classes = ""
    form.classes.forEach((x: number) => {
      dto.classes += x.toString() + "_";
    })
    dto.classes = dto.classes?.substring(0, dto.classes?.length - 1);
    dto.hasRight = form.right;
    dto.rightBasis = form.basis;
    dto.imageLink = this.imageFile?.name;
  }

  setAttachments(form: any, dto: Attachments) {
    dto.hasCopy = !!this.pdfFiles[0];
    dto.hasList = !!this.pdfFiles[1];
    dto.hasPowerOfAttorney = !!this.pdfFiles[2];
    dto.hasEarlierAttorney = !!this.pdfFiles[3];
    dto.hasLaterAttorney = !!this.pdfFiles[4];
    dto.hasTrademarkAct = !!this.pdfFiles[5];
    dto.hasProofOfRight = !!this.pdfFiles[6];
    dto.hasProofOfPayment = !!this.pdfFiles[7];
  }

  setTax(form: any, dto: Tax) {
    dto.basic = parseFloat(form.basic);
    dto.classTax = parseFloat(form.class);
    dto.graphic = parseFloat(form.graphic);
    dto.total = dto.basic + dto.classTax + dto.graphic;
  }

  setPerson(form: any, dto: Person) {
    dto.name = form.name;
    dto.lastName = form.lastName;
    dto.street = form.street;
    dto.postCode = form.postCode;
    dto.city = form.city;
    dto.country = form.country;
    dto.phone = form.phone;
    dto.email = form.email;
    dto.fax = form.fax;
    dto.personType = form.personType ? "fizicko" : "pravno";
  }

  submitAll() {
    let requester = this.requesterFormGroup.value;
    let requesterDTO = new Person();
    this.setPerson(requester, requesterDTO);

    let attorney = this.attorneyFormGroup.value;
    let attorneyDTO = new Person();
    this.setPerson(attorney, attorneyDTO);

    let representative = this.representativeFormGroup.value;
    let representativeDTO = new Person();
    this.setPerson(representative, representativeDTO);

    let trademark = this.trademarkFormGroup.value;
    let trademarkDTO = new Trademark();
    this.setTrademark(trademark, trademarkDTO);

    let tax = this.taxFormGroup.value;
    let taxDTO = new Tax();
    this.setTax(tax, taxDTO);

    let attachments = this.attachmentsFormGroup.value;
    let attachmentsDTO = new Attachments();
    this.setAttachments(attachments, attachmentsDTO);

    this.request.requester = requesterDTO;
    this.request.attorney = attorneyDTO;
    this.request.representative = representativeDTO;
    this.request.trademark = trademarkDTO;
    this.request.tax = taxDTO;
    this.request.attachments = attachmentsDTO;

    const formData = new FormData();
    const emptyFile = new Blob([], {type: 'application/pdf'});

    formData.append('request', JSON.stringify(this.request));
    const pdfKeys = ["example", "list", "attorney", "earlyGiven", "laterGiven", "act", "rightProof", "taxProof"];
    for (let i = 0; i < this.pdfFiles.length; i++) {
      if (this.pdfFiles[i]) {
        formData.append('pdfs', this.pdfFiles[i]);
      } else {
        formData.append('pdfs', emptyFile);
      }
    }
    formData.append('img', this.imageFile || '');
    formData.forEach((x, i) => {
      console.log(`${i}: ${x}`);
    })
    this.requestService.add(formData);
  }

  checkIfOther() {
    this.isOther = this.trademarkFormGroup.get('glyphType')?.value === 'drugo';
  }

  private subscribeToFormChanges() {
    this.ngZone.run(() => {
      this.trademarkFormGroup.get('glyphType')?.valueChanges.subscribe(() => {
        this.updateFormValidators();
      })

      this.attachmentsFormGroup.get('attorney')?.valueChanges.subscribe(() => {
        this.updateFormValidators();
      });

      // this.trademarkFormGroup.get('right')?.valueChanges.subscribe(() => {
      //   this.updateFormValidators();
      // });
    });
  }

  private updateFormValidators() {
    const glyphType = this.trademarkFormGroup.get('glyphType')?.value;
    const right = this.trademarkFormGroup.get('right')?.value;
    const basisControl = this.trademarkFormGroup.get('basis');
    const attorneyControl = this.attachmentsFormGroup.get('attorney');
    const rightProofControl = this.attachmentsFormGroup.get('rightProof');

    this.trademarkFormGroup.get('image')?.clearValidators();
    this.trademarkFormGroup.get('color')?.clearValidators();
    basisControl?.clearValidators();
    this.isImgRequired = false;

    if (glyphType === 'graficki') {
      this.trademarkFormGroup.get('image')?.setValidators([Validators.required]);
      this.isImgRequired = true;
      this.trademarkFormGroup.get('color')?.setValidators([Validators.required]);
    }

    if (right === true) {
      basisControl?.setValidators([Validators.required]);
    }

    if (right) {
      rightProofControl?.setValidators([Validators.required]);
    } else {
      rightProofControl?.clearValidators();
    }

    if (this.hasAttorney) {
      attorneyControl?.setValidators([Validators.required]);
      this.attachmentsFormGroup.get('earlyGiven')?.setValidators([Validators.required]);
      this.attachmentsFormGroup.get('laterGiven')?.setValidators([Validators.required]);
    } else {
      attorneyControl?.clearValidators();
      this.attachmentsFormGroup.get('earlyGiven')?.clearValidators();
      this.attachmentsFormGroup.get('laterGiven')?.clearValidators();
    }

    this.trademarkFormGroup.get('image')?.updateValueAndValidity();
    this.trademarkFormGroup.get('color')?.updateValueAndValidity();
    basisControl?.updateValueAndValidity();
    attorneyControl?.updateValueAndValidity();
    this.attachmentsFormGroup.get('earlyGiven')?.updateValueAndValidity();
    this.attachmentsFormGroup.get('laterGiven')?.updateValueAndValidity();
    rightProofControl?.updateValueAndValidity();
  }
}


@Component({
  selector: 'klasifikacija-dialog',
  templateUrl: './klasifikacija-dialog.html',
})
export class KlasifikacijaDialog {
}
