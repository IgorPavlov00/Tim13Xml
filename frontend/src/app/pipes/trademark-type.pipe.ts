import {Pipe, PipeTransform} from '@angular/core';

@Pipe({
  name: 'trademarkType'
})
export class TrademarkTypePipe implements PipeTransform {

  transform(isIndividual: boolean, isCollective: boolean, isWarranty: boolean): string {
    if (isIndividual) {
      return "Individualni žig";
    } else if (isCollective) {
      return "Kolektivni žig";
    } else if (isWarranty) {
      return "Žig garancije";
    } else {
      return "Nevalidan unos";
    }
  }

}
