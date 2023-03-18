import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'app-z1-form',
  templateUrl: './z1-form.component.html',
  styleUrls: ['./z1-form.component.css']
})
export class Z1FormComponent implements OnInit {
  tipLica: boolean = true;

  progressNumber: number = 1;
  slidePage: any;
  submitBtn: any;
  progressText: any;
  progressCheck: any;
  bullet: any;
  pages: any;
  nextButtons: any;
  prevButtons: any;
  stepsNumber: number = 6;
  current: number = 1;

  constructor() {
  }

  ngOnInit(): void {
    this.initMultiStepForm();
  }

  initMultiStepForm() {
    this.progressNumber = document.querySelectorAll(".step").length;
    this.slidePage = document.querySelector(".slide-page");
    this.submitBtn = document.querySelector(".submit");
    this.progressText = document.querySelectorAll(".step p");
    this.progressCheck = document.querySelectorAll(".step .check");
    this.bullet = document.querySelectorAll(".step .bullet");
    this.pages = document.querySelectorAll(".page");
    this.nextButtons = document.querySelectorAll(".next");
    this.prevButtons = document.querySelectorAll(".prev");
    this.stepsNumber = this.pages.length;

    if (this.progressNumber !== this.stepsNumber) {
      console.warn(
        "Error, number of steps in progress bar do not match number of pages"
      );
    }

    document.documentElement.style.setProperty("--stepNumber", this.stepsNumber.toString());

    for (let i = 0; i < this.nextButtons.length; i++) {
      this.nextButtons[i].addEventListener("click", (event: MouseEvent) => {
        event.preventDefault();

        let inputsValid = this.validateInputs(this.nextButtons[i]);

        if (inputsValid) {
          this.slidePage.style.marginLeft = `-${
            (100 / this.stepsNumber) * this.current
          }%`;
          this.bullet[this.current - 1].classList.add("active");
          this.progressCheck[this.current - 1].classList.add("active");
          this.progressText[this.current - 1].classList.add("active");
          this.current += 1;
        }
      });
    }
    for (let i = 0; i < this.prevButtons.length; i++) {
      this.prevButtons[i].addEventListener("click", (event: Event) => {
        event.preventDefault();
        this.slidePage.style.marginLeft = `-${(100 / this.stepsNumber) * (this.current - 2)}%`;
        this.bullet[this.current - 2].classList.remove("active");
        this.progressCheck[this.current - 2].classList.remove("active");
        this.progressText[this.current - 2].classList.remove("active");
        this.current -= 1;
      });
    }
    this.submitBtn.addEventListener("click", () => {
      this.bullet[this.current - 1].classList.add("active");
      this.progressCheck[this.current - 1].classList.add("active");
      this.progressText[this.current - 1].classList.add("active");
      this.current += 1;
      setTimeout(() => {
        alert("Your Form Successfully Signed up");
        location.reload();
      }, 800);
    });
  }

  validateInputs(ths: any) {
    let inputsValid = true;

    const inputs = ths.parentElement.parentElement.querySelectorAll("input");
    for (let i = 0; i < inputs.length; i++) {
      const valid = inputs[i].checkValidity();
      if (!valid) {
        inputsValid = false;
        inputs[i].classList.add("invalid-input");
      } else {
        inputs[i].classList.remove("invalid-input");
      }
    }
    return inputsValid;
  }

}
