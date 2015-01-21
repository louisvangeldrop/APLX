// Monadic Functions

interface Number {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
}

interface NumberConstructor {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
}

interface Array<T> {
    //ceiling(array: [number])
    //floor(array: [number])
    iota(length: number)
}

interface ArrayConstructor {
    ceiling(array: number[]): number[]
    floor(array: number[]): number[]
    iota<T>(length: T): number[]

}




function indexGenerator(omega?: number): number[] {
    //
    try {
        
        // if (typeof omega === "number") {  length = omega } else { length = omega[0] }
        var length: number = typeof omega === 'number' ? omega : omega[0]
        var counter,
            results = new Array<number>(length)
        for (counter = 0; counter < length; counter++) {
            results[counter] = counter
        }
        return results
    }
    catch (error) { }
    finally { }
}