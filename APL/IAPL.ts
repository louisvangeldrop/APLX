
interface Number {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
}

interface NumberConstructor {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
}

interface ArrayConstructor {
    ceiling(array: number[]): number[]
    floor(array: number[]): number[]
    iota<T>(length: T): number[]

}

interface Array<T> {
    primitive(left, right): T[]
    iota(length: number)
    plus(omega): T[]
    minus(omega): T[]
    times(omega): T[]
    divide(omega): T[]
    rotate(omega): T[]
    slash(omega): T[]

} 