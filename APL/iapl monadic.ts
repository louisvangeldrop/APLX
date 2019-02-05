//#region "Monadic Scalar Numeric Primitive"

interface Number {
  //rotate<T>(array: T[])
  //deal(omega: number, alpha?: number): number[]

  signum: number;
  identity: number;
  negate: number;
  reciprocal: number;
  exponential: number;
  ln: number;
  pi: number;
  factorial: number;
  roll: number;
  magnitude: number;
  ceiling: number;
  floor: number;
  same: number;
  enclose: any;
  indexGenerator: number[];
  ravel: number[];
  format: string;
}

interface NumberConstructor {
  iota<T>(length?: T): number[];
  rotate<T>(array: T[]);
  signum(): number;
  identity(): number;
  negate(): number;
  reciprocal(): number;
  exponential(): number;
  ln(): number;
  pi(): number;
  factorial(): number;
  roll(): number;
  magnitude(): number;
  ceiling(): number;
  floor(): number;
  same(): number;
}

//#endregion

//#region "Monadic Scalar Vector Primitive"

interface Array<T> {
  signum: T[];
  identity: T[];
  gradeUp: T[];
  gradeUpSort: T[];
  gradeUpQS: T[];
  gradeDown: T[];
  negate: T[];
  reciprocal: T[];
  exponential: T[];
  ln: T[];
  pi: T[];
  factorial: T[];
  roll: T[];
  magnitude: T[];
  ceiling: T[];
  floor: T[];
  same: T[];
  enclose: any;
  indexGenerator: T[];
  ravel: T[];
  transpose: T[];
  format: string;
}
//#endregion
