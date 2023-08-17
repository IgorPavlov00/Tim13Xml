import {Pipe, PipeTransform} from '@angular/core';

@Pipe({
  name: 'glyphType'
})
export class GlyphTypePipe implements PipeTransform {
  transform(isVerbal: boolean, isGraphic: boolean, isCombination: boolean, isThreedimensional: boolean, isOther: boolean, otherType: string | undefined): string {
    if (isVerbal) {
      return "Verbalni znak";
    } else if (isGraphic) {
      return "Grafički znak";
    } else if (isCombination) {
      return "Kombinovani znak";
    } else if (isThreedimensional) {
      return "Trodimenzionalni znak";
    } else if (isOther || otherType != undefined) {
      return "Druga vrsta znaka, odnosno: " + otherType;
    } else {
      return "Nevalidan unos";
    }
  }

}
