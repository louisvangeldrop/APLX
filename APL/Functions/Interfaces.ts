var prefix: string = (typeof (APLPrefix) === 'undefined') ? '' : APLPrefix      // APLPrefix?APLPrefix:''

/*
    Conventie: Monadic => property
               Dyadic  => prototype

    Bijv. var aa = 10
              aa.negate => ¯10
          var bb = [10,20]
              (1).rotate(bb)        alpha ⌽ bb
              [1,2,3].minus([3,2,1]) => ¯2 0 2
*/


//#region "Interfaces"

interface NumberConstructor {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
    reshape<T>(array: T[])
    signum(): number
    identity(): number
    disclose(): number
    negative(): number
    reciprocal(): number
    exponential(): number
    //maximum(): number
    //minimum(): number
    ln(): number
    pi(): number
    factorial(): number
    roll(): number
    magnitude(): number
    ceiling(): number
    floor(): number
    same(): number
}

interface ArrayConstructor {
    ceiling(array: number[]): number[]
    floor(array: number[]): number[]
    iota<T>(length: T): number[]

}

interface Array<T> {        //  prototype
    primitive(left?, right?): T[]
    deal(omega: number, alpha?: number): number[]
    iota(length?: number)
    plus(omega?): T[]
    minus(omega?): T[]
    times(omega?): T[]
    divide(omega?): T[]
    inverse(omega?): T[]
    minimum(omega?): T[]
    maximum(omega?): T[]
    residue(omega?): T[]
    power(omega?): T[]
    logarithm(omega?): T[]
    binomial(omega?): T[]
    rotate(omega?): T[]
    slash(omega?): T[]
    aplReduce(alpha?, omega?): T[]
    domino(omega?): T[]
    decode(omega?): number
    left(omega?): T[]
    right(omega?): T[]
    pick(omega?): T[]
}

interface Array<T> {        // property
    signum: T[]
    identity: T[]
    disclose: T[]
    gradeUp: T[]
    gradeUpQS: T[]
    gradeDown: T[]
    negative: T[]
    reciprocal: T[]
    exponential: T[]
    ln: T[]
    pi: T[]
    factorial: T[]
    roll: T[]
    magnitude: T[]
    ceiling: T[]
    floor: T[]
    same: T[]
    enclose: any
    indexGenerator: T[]
    range: T[]
    ravel: T[]
    transpose: T[]
}

interface Number {          // property
    signum: number
    identity: number
    negate: number
    reciprocal: number
    exponential: number
    ln: number
    pi: number
    factorial: number
    roll: number
    magnitude: number
    ceiling: number
    floor: number
    same: number
    enclose: any
    indexGenerator: number[]
    range: Number[]
    ravel: number[]
    format: string
}

interface Number {      // prototype
    rotate<T>(array: T[])
    deal(omega: number): number[]
    reshape(omega: any)
    maximum(omega: number): number
    minimum(omega: number): number
    decode(omega: number | number[])
    encode(omega: number | number[])
    left(omega?): number
    pick<T>(array: T[]): any
    take<T>(array: T[]): any
    drop<T>(array: T[]): any
}

interface String {
    left(omega): string
}
//#endregion

