import {AbstractControl, ValidationErrors, ValidatorFn, ɵElement, ɵValue} from "@angular/forms";

export class Notice {
  requestID: string;
  officialName: string;
  officialLastName: string;
  reason: string;
  status: boolean;

  constructor(
    requestID?: string | undefined,
    officialName?: ɵValue<ɵElement<(string | ((control: AbstractControl) => (ValidationErrors | null)))[], null>> | undefined,
    officialLastName?: ɵValue<ɵElement<(string | ((control: AbstractControl) => (ValidationErrors | null)))[], null>> | undefined,
    reason?: ɵValue<ɵElement<(string | ValidatorFn)[], null>> | undefined,
    status?: ɵValue<ɵElement<(boolean | (((control: AbstractControl) => (ValidationErrors | null)) | ValidatorFn)[])[], null>> | undefined
  ) {
    this.requestID = requestID || '';
    this.officialName = officialName || '';
    this.officialLastName = officialLastName || '';
    this.reason = reason || '';
    this.status = status || false;
  }
}
