var prefix: string = (typeof (APLPrefix) === 'undefined') ? '' : APLPrefix      // APLPrefix?APLPrefix:''

//#region "Interfaces"

interface NumberConstructor {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
    reshape<T>(array: T[])
    signum(): number
    identity(): number
    negative(): number
    reciprocal(): number
    exponential(): number
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

interface Array<T> {
    primitive(left?, right?): T[]
    deal(omega: number, alpha?: number): number[]
    iota(length?: number)
    plus(omega?): T[]
    minus(omega?): T[]
    times(omega?): T[]
    divide(omega?): T[]
    inverse(omega?):T[]
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
    decode(omega?): T[]
    encode(omega?): T[]

}

interface Array<T> {
    signum: T[]
    identity: T[]
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

interface Number {
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

interface Number {
    rotate<T>(array: T[])
    deal(omega: number): number[]
    reshape<T>(array: T[])
}

//#endregion

