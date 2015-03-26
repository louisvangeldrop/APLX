//#region "Monadic Scalar Primitive"

interface Number {
    ravel<T>(T):T[]
    rotate<T>(array: T[])
    deal(omega: number,alpha?:number): number[]
    indexGenerator: number[]
    sign: number
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


}

//#endregion

interface NumberConstructor {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
    sign(): number
    identity(): number
    negate(): number
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
    sign(): T[]
    signProp: T[]
    primitive(left?, right?): T[]
    deal(omega: number, alpha?: number): number[]
    iota(length?: number)
    plus(omega?): T[]
    minus(omega?): T[]
    times(omega?): T[]
    divide(omega?): T[]
    rotate(omega?): T[]
    slash(omega?): T[]
    aplReduce(alpha?,omega?):T[]

} 

