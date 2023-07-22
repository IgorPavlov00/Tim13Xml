import {User} from "../model/user";

declare var $: any;
import {Component, OnInit} from '@angular/core';
import {FormData} from "../form-data";
import {FormDataService} from "../form-data.service";

@Component({
  selector: 'app-forma-a1',
  templateUrl: './forma-a1.component.html',
  styleUrls: ['./forma-a1.component.css']
})


export class FormaA1Component implements OnInit {
  progressNumber: number|any;
  slidePage: any;
  submitBtn: any;
  progressText: any;
  progressCheck: any;
  bullet: any;
  pages: any;
  nextButtons: any;
  prevButtons: any;
  stepsNumber: number|any;
  current: number|any;
  selectedOption: string='da';
  value: string|any;
  private inputFields: any;
  formData: FormData = new FormData();
  radio:string='';



  constructor(private servis: FormDataService) { }
  ngOnInit() {
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

    document.documentElement.style.setProperty("--stepNumber", this.stepsNumber);

    this.current = 1;

    for (let i = 0; i < this.nextButtons.length; i++) {
      this.nextButtons[i].addEventListener("click", (event: any) => {
        event.preventDefault();

        const inputsValid = this.validateInputs(this.nextButtons[i]);
        // const inputsValid = true;

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
      this.prevButtons[i].addEventListener("click", (event: any) => {
        event.preventDefault();
        this.slidePage.style.marginLeft = `-${
          (100 / this.stepsNumber) * (this.current - 2)
        }%`;
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

  validateInputs(btn: any): boolean {
    let inputsValid = true;

    const inputs = btn.parentElement.parentElement.querySelectorAll("input");
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

  showForm() {

    // @ts-ignore
    document.getElementById("forma").style.display = "block";
    // @ts-ignore
    document.getElementById("forma2").style.display = "none";
  }


  showForm2() {

    // @ts-ignore
    document.getElementById("forma2").style.display = "block";
    // @ts-ignore
    document.getElementById("forma").style.display = "none";
  }

  showForm3() {

    const forma3 = document.getElementById("forma3");
     // @ts-ignore


    // @ts-ignore
    if (forma3.style.display === "none") {
      // show the form if it is currently hidden
      // @ts-ignore
      forma3.style.display = "block";
    } else {
      // hide the form if it is currently visible
      // @ts-ignore
      forma3.style.display = "none";
    }
  }

  showForm4() {
    // @ts-ignore
    document.getElementById("forma4").style.display = "none";
    // @ts-ignore
    document.getElementById("forma5").style.display = "none";

    const inputs = document.querySelectorAll('.a');
    // @ts-ignore
    for (const input of inputs) {
      input.removeAttribute('required');
    }

  }

  showForm5() {
// @ts-ignore
    document.getElementById("forma4").style.display = "block";
    const inputs = document.querySelectorAll('.a');
    // @ts-ignore
    for (const input of inputs) {
      input.removeAttribute('required');
    }

  }

  fun() {
    // @ts-ignore
    document.getElementById("forma5").style.display = "none";
    const inputs = document.querySelectorAll('.a');
    // @ts-ignore
    for (const input of inputs) {
      input.removeAttribute('required');
    }


  }

  fun2() {
    // @ts-ignore
    document.getElementById("forma5").style.display = "block";
    const inputs = document.querySelectorAll('.a');
    // @ts-ignore
    for (const input of inputs) {
      input.setAttribute('required', '');
    }
  }

  onSubmit() {
    // Call the service function to send the form data
    console.log(this.formData);
    this.servis.submitFormData(this.formData).subscribe(
      (response) => {
        console.log('Form data sent successfully:', response);
        // Handle the response from the backend if needed
      },
      (error) => {
        console.error('Error sending form data:', error);
        // Handle errors if any
      }
    );
  }
}




