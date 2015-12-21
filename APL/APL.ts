var prefix: string = (typeof (APLPrefix) === 'undefined') ? '' : APLPrefix

//#region "Interfaces"

interface NumberConstructor {
    iota<T>(length?: T): number[]
    rotate<T>(array: T[])
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
    minimum(omega?): T[]
    maximum(omega?): T[]
    residue(omega?): T[]
    power(omega?): T[]
    logarithm(omega?): T[]
    binomial(omega?): T[]
    rotate(omega?): T[]
    slash(omega?): T[]
    aplReduce(alpha?, omega?): T[]

}

interface Array<T> {
    signum: T[]
    identity: T[]
    gradeUp: T[]
    gradeUpQS: T[]
    gradeDown: T[]
    negate: T[]
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
    ravel: number[]
    format: string
}

interface Number {
    rotate<T>(array: T[])
    deal(omega: number): number[]

}

//#endregion

namespace Monadic {

    ///#region "Scalar Monadic"

    export namespace Atom {
        // TODO Extra scalar UNDO HACK. See Task List

        export var ceiling = (alpha) => { return Math.ceil(alpha) }

        export var exponential = (alpha) => { return Math.exp(alpha) }

        export var factorial = function (alpha) {
            var result = 1
            for (var i = 1; i <= alpha; i++) {
                result = result * i
            }
            return result
        }

        export var floor = (alpha) => Math.floor(alpha)

        export var identity = (alpha) => alpha

        export var ln = (alpha) => Math.log(alpha)

        export var magnitude = (alpha) => Math.abs(alpha)

        export var negative = (alpha) => !alpha

        export var not = (alpha) => ~alpha

        export var pi = (alpha) => Math.PI * alpha

        export var reciprocal = (alpha) => 1 / alpha

        export var roll = (alpha) => Math.floor(Math.random() * alpha)

        export var round = (alpha) => Math.round(alpha)

        export var signum = (alpha) => alpha > 0 ? 1 : alpha < 0 ? -1 : 0

        Object.defineProperty(Number.prototype, prefix + "ceiling", {            //
            get: function () {
                return Atom.ceiling(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "exponential", {
            get: function () {
                return Atom.exponential(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "factorial", {
            get: function () {
                return Atom.factorial(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "floor", {
            get: function () {
                var myThis = this.valueOf()
                return Atom.floor(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "identity", {
            get: function () {
                return Atom.identity(this)
            }
        })

               Object.defineProperty(Number.prototype, prefix + "ln", {
            get: function () {
                return Atom.ln(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "magnitude", {
            get: function () {
                return Atom.magnitude(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "negative", {
            get: function () {
                return Atom.negative(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "not", {
            get: function () {
                return Atom.not(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "pi", {
            get: function () {
                return Atom.pi(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "reciprocal", {
            get: function () {
                return Atom.reciprocal(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "roll", {
            get: function () {
                return Atom.roll(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "round", {            //
            get: function () {
                return Atom.round(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "same", {
            get: function () {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Number.prototype, prefix + "signum", {
            get: function () {
                return Atom.signum(this)
            }
        })


    }

    export namespace Vector {

        Object.defineProperty(Array.prototype, prefix + "ceiling", {
            get: function () {
                return this.primitive(Atom.ceiling)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "exponential", {
            get: function () {
                return this.primitive(Atom.exponential)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "factorial", {
            get: function () {
                return this.primitive(Atom.factorial)   //(alpha) => { return factorial(alpha) }
            }
        })

        Object.defineProperty(Array.prototype, prefix + "floor", {
            get: function (): number[] {
                return this.primitive(Atom.floor)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "identity", {
            get: function (): number[] {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "same", {
            get: function (): number[] {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "ln", {
            get: function (): number[] {
                return this.primitive(Atom.ln)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "magnitude", {
            get: function (): number[] {
                return this.primitive(Atom.magnitude)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "negative", {
            get: function (): number[] {
                return this.primitive(Atom.negative)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "not", {
            get: function (): number[] {
                return this.primitive(Atom.not)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "pi", {
            get: function (): number[] {
                return this.primitive(Atom.pi)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "reciprocal", {
            get: function (): number[] {
                return this.primitive(Atom.reciprocal)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "roll", {
            get: function (): number[] {
                return this.primitive(Atom.roll)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "round", {
            get: function (): number[] {
                return this.primitive(Atom.round)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "signum", {
            // get: arraySign,   geen parameter, omdat het een property is
            get: function () {
                return this.primitive(Atom.signum)
            }
            //set: function () {
            //}
        })

    }

    ///#endregion

    ///#region "Scalar Monadic"

    namespace NonScalar {

        export var gradeUp = function (alpha, indices?: number[], low?: number, high?: number): number[] {
            //try {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices
            low = (typeof (low) === 'undefined') ? 0 : low
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high
            if (high <= low) return indices
            var midValue = alpha[indices[Math.floor((low + high) / 2)]]
            var t1, t2
            var t3: boolean, t4: boolean
            var i = low, j = high
            while (i <= j) {
                t1 = indices[i], t2 = indices[j]
                t3 = alpha[t1] >= midValue, t4 = alpha[t2] <= midValue
                if (t3 && t4) {         // swap elements
                    indices[i] = t2
                    indices[j] = t1
                    i = i + 1
                    j = j - 1
                }
                else {
                    if (t3 === false) { i++ }
                    if (t4 === false) { j-- }
                }
            }
            gradeUp(alpha, indices, low, j)
            gradeUp(alpha, indices, i, high)
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices
        }

        export var gradeDown = function (alpha, indices?: number[], low?: number, high?: number): number[] {
            //try {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices
            low = (typeof (low) === 'undefined') ? 0 : low
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high
            if (high <= low) return indices
            var midValue = alpha[indices[Math.floor((low + high) / 2)]]
            var t1, t2
            var t3: boolean, t4: boolean
            var i = low, j = high
            while (i <= j) {
                t1 = indices[i], t2 = indices[j]
                t3 = alpha[t1] <= midValue, t4 = alpha[t2] >= midValue
                if (t3 && t4) {         // swap elements
                    indices[i] = t2
                    indices[j] = t1
                    i = i + 1
                    j = j - 1
                }
                else {
                    if (t3 === false) { i++ }
                    if (t4 === false) { j-- }
                }
            }
            gradeUp(alpha, indices, low, j)
            gradeUp(alpha, indices, i, high)
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices
        }

        export var indexGenerator = (alpha) => {
            // In Chrome 10xsneller dan het gebruik van "this"
            var results = new Array<number>(alpha)    // sneller dan []
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter
            }
            return results
        }

        export var reverse = function (alpha) {
            try {
                // Array.isArray(this) 
                return alpha.reverse()
            }
            catch (error) {
            }
            finally {
            }

        }

        export function shape(alpha): number[] {
            try {
                // Array.isArray(this) 
                return alpha.length
            }
            catch (error) {
            }
            finally {
            }
        }

        Object.defineProperty(Number.prototype, prefix + "indexGenerator", {
            get: function () {
                return NonScalar.indexGenerator(this.valueOf()) // In Chrome 10xsneller dan het gebruik van "this"
            }
        })

        Object.defineProperty(Array.prototype, prefix + "indexGenerator", {
            get: function (): number[] {
                //
                return this.primitive(NonScalar.indexGenerator)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "gradeUpJS", {
            get: function (): number[] {
                var compare = function (alpha, omega) {
                    loop++
                    if (alpha.value < omega.value) {
                        return -1;
                    } else if (alpha.value > omega.value) {
                        return 1;
                    } else {
                        return 0;
                    }
                }
                //               try {
                var length = this.length,
                    loop = 0
                var thisIndex = new Array(length),
                    results = new Array(length),
                    indices = new Array(length)
                for (var counter = 0; counter < length; counter++) {
                    thisIndex[counter] = { value: this[counter], index: counter }
                }
                results = thisIndex.sort(compare)
                for (var counter = 0; counter < length; counter++) {
                    indices[counter] = results[counter].index
                }
                console.log('Loops :' + loop)
                return indices
                //}
                //catch (error) {
                //}
                //finally {
                //}
            }
        })

        Object.defineProperty(Array.prototype, prefix + "gradeUp", {             // quickSort
            get: function () {
                return gradeUp(this)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "gradeDown", {             // quickSort
            get: function () {
                return gradeDown(this, this.length.indexGenerator, 0, this.length - 1)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "gradeDownJS", {
            get: function (): number[] {
                var compare = function (alpha, omega) {
                    loop++
                    if (alpha.value < omega.value) {
                        return 1;
                    } else if (alpha.value > omega.value) {
                        return -1;
                    } else {
                        return 0;
                    }
                }
                //              try {
                var length = this.length,
                    loop = 0
                var thisIndex = new Array(length),
                    results = new Array(length),
                    indices = new Array(length)
                for (var counter = 0; counter < length; counter++) {
                    thisIndex[counter] = { value: this[counter], index: counter }
                }
                results = thisIndex.sort(compare)
                for (var counter = 0; counter < length; counter++) {
                    indices[counter] = results[counter].index
                }
                console.log('Loops :' + loop)
                return indices
                //}
                //catch (error) {
                //}
                //finally {
                //}
            }
        })

        Object.defineProperty(Array.prototype, prefix + "shape", {
            get: function () {
                return shape(this)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "transpose", {
            get: function () {
                return reverse(this)
            }
        })
    }

    ///#endregion

}

namespace Dyadic {            // export namespace voor ES6

    export namespace Scalar {

        export var plus = (alpha, omega) => alpha + omega

        export var minus = (alpha, omega) => alpha - omega

        export var times = (alpha, omega) => alpha * omega

        export var divide = (alpha, omega) => alpha / omega

        export var residue = (alpha, omega) => omega % alpha

        export var minimum = (alpha, omega) => Math.min(alpha, omega)

        export var maximum = (alpha, omega) => Math.max(alpha, omega)

        export var power = (alpha, omega) => alpha ** omega//Math.pow(alpha, omega)

        export var logarithm = (alpha, omega) => Math.log(omega) / Math.log(alpha)

        export var binomial = (alpha: number, omega: number) => omega.factorial / (alpha.factorial * (omega - alpha).factorial)   // zie !.coffee voor meer details

        Number.prototype[prefix + 'rotate'] = function (omega) {
            let myThis = this.valueOf()           // XXX xsneller dan het gebruik van this
            //     try {
            let counter: number,
                max: number = omega.length,
                results = new Array(max);
            if (myThis > 0) {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis >= max ? counter + myThis - max : counter + myThis]
                }
            } else {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis < 0 ? counter + myThis - max : counter + myThis]
                }
            }
            return results
        }
        //catch (error) {
        //    throw new Error('foutje')
        //}
        //finally {
        //}
        // }

        Number.prototype[prefix + 'deal'] = function (omega: number): number[] {
            var deal = function (omega: number, alpha?: number) {
                let results = omega.indexGenerator
                let h: number, j: number
                for (var i = 0; i < alpha; i++) {
                    j = i + Math.floor(Math.random() * (omega - i))   // j = i + (omega-i).roll
                                      
                 //   [results[j], results[i]]=[results[i], results[j]]   destructuring werkt nog niet
                    h = results[i]; results[i] = results[j]; results[j] = h
                }
                return results.slice(0, alpha)
            }
            return deal(omega, this.valueOf())              // 6xsneller dan function deal (...){}
        }
    }

    export namespace Vector {

        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        //                                 https://github.com/Microsoft/TypeScript/wiki/Functions 

        Array.prototype[prefix + 'primitive'] = function (omega, primitive?) {  // Toekennen aan var is Xx sneller dan pure declaratie "function primitive(...) {}" .Uitkijken met lambda. "this." klopt niet meer 
            // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
            
            //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
            let counter: number,
                max: number,
                results
            if (typeof primitive === 'undefined') {  // omega is nu de primitive
                primitive = omega
                max = this.length
                results = new Array(max)
                //for (var cnt = 0, max = this.length, results = <any>new Array(max); cnt++;){ }
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter])
                }
                return results
            }
            else {
                max = Math.min(this.length, omega.length),
                results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter], omega[counter])
                }
                return results
            }
            
            //}
            //catch (error) {
            //   // throw error
            //}
            //finally {
            //}

        }

        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        ////                                 https://github.com/Microsoft/TypeScript/wiki/Functions 

        
        Array.prototype[prefix + 'plus'] = function (omega) {
            return this.primitive(omega, scalar.plus)
        }

        Array.prototype[prefix + 'minus'] = function (omega) {
            return this.primitive(omega, scalar.minus)
        }

        Array.prototype[prefix + 'times'] = function (omega) {
            return this.primitive(omega, scalar.times)
        }

        Array.prototype[prefix + 'divide'] = function (omega) {
            return this.primitive(omega, scalar.divide)
        }

        Array.prototype[prefix + 'residue'] = function (omega) {
            return this.primitive(omega, scalar.residue)
        }

        Array.prototype[prefix + 'minimum'] = function (omega) {
            return this.primitive(omega, scalar.minimum)
        }

        Array.prototype[prefix + 'maximum'] = function (omega) {
            return this.primitive(omega, scalar.maximum)
        }

        Array.prototype[prefix + 'power'] = function (omega) {
            return this.primitive(omega, scalar.power)
        }


        Array.prototype[prefix + 'logarithm'] = function (omega) {
            return this.primitive(omega, scalar.logarithm)
        }

        Array.prototype[prefix + 'binomial'] = function (omega) {
            return this.primitive(omega, scalar.binomial)
        }

        Array.prototype[prefix + 'rotate'] = function (omega) {
            return this[0].rotate(omega)
        }

        Array.prototype[prefix + 'aplReduce'] = function (omega) {
            let aplReduce = function (omega, alpha) {
                return alpha.reduceRight((l, r) => { return omega(r, l) })
            }
            return aplReduce(omega, this)
        }

        Array.prototype[prefix + 'deal'] = function (omega): number[] {
            return this[0].deal(omega)    //, this[0].valueOf())

        }
    }

}