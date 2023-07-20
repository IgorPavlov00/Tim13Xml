export class Trademark {
  isIndividual!: boolean;
  isCollective!: boolean;
  isWarranty!: boolean;
  isVerbal!: boolean;
  isGraphic!: boolean;
  isCombination!: boolean;
  isThreedimensional!: boolean;
  isOther!: boolean;
  otherType?: string;
  hasRight!: boolean;
  rightBasis?: string;
  imageLink?: string;
  color?: string;
  transliteration?: string;
  translation?: string;
  description?: string;
  classes?: string;
}
