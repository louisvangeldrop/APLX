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

        Object.defineProperty(Number.prototype, "ceiling", {            //
            get: function () {
                return Atom.ceiling(this)
            }
        })

        Object.defineProperty(Number.prototype, "exponential", {
            get: function () {
                return Atom.exponential(this)
            }
        })

        Object.defineProperty(Number.prototype, "factorial", {
            get: function () {
                return Atom.factorial(this)
            }
        })

        Object.defineProperty(Number.prototype, "floor", {
            get: function () {
                var myThis = this.valueOf()
                return Atom.floor(this)
            }
        })

        Object.defineProperty(Number.prototype, "identity", {
            get: function () {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Number.prototype, "ln", {
            get: function () {
                return Atom.ln(this)
            }
        })

        Object.defineProperty(Number.prototype, "magnitude", {
            get: function () {
                return Atom.magnitude(this)
            }
        })

        Object.defineProperty(Number.prototype, "negative", {
            get: function () {
                return Atom.negative(this)
            }
        })

        Object.defineProperty(Number.prototype, "not", {
            get: function () {
                return Atom.not(this)
            }
        })

        Object.defineProperty(Number.prototype, "pi", {
            get: function () {
                return Atom.pi(this)
            }
        })

        Object.defineProperty(Number.prototype, "reciprocal", {
            get: function () {
                return Atom.reciprocal(this)
            }
        })

        Object.defineProperty(Number.prototype, "roll", {
            get: function () {
                return Atom.roll(this)
            }
        })

        //Object.defineProperty(Number.prototype, "deal", {         // mag niet omdat deal ook een functie is
        //    get: function () {
        //        return roll(this)
        //    }
        //})

        Object.defineProperty(Number.prototype, "round", {            //
            get: function () {
                return Atom.round(this)
            }
        })

        Object.defineProperty(Number.prototype, "same", {
            get: function () {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Number.prototype, "signum", {
            get: function () {
                return Atom.signum(this)
            }
        })

        Object.defineProperty(Number.prototype, "indexGenerator", {
            get: function () {
                return NonScalar.indexGenerator(this.valueOf()) // In Chrome 10xsneller dan het gebruik van "this"
              
                //var max = this.valueOf()
                //var results = new Array<number>(max)    // sneller dan []
                //for (var counter = 0; counter < max; counter++) {
                //    results[counter] = counter
                //}
                //return results
            }
        })
    }

    export namespace Vector {

        Object.defineProperty(Array.prototype, "ceiling", {
            get: function () {
                return this.primitive(Atom.ceiling)
            }
        })

        Object.defineProperty(Array.prototype, "exponential", {
            get: function () {
                return this.primitive(Atom.exponential)
            }
        })

        Object.defineProperty(Array.prototype, "factorial", {
            get: function () {
                return this.primitive(Atom.factorial)   //(alpha) => { return factorial(alpha) }
            }
        })

        Object.defineProperty(Array.prototype, "floor", {
            get: function (): number[] {
                return this.primitive(Atom.floor)
            }
        })

        Object.defineProperty(Array.prototype, "identity", {
            get: function (): number[] {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Array.prototype, "same", {
            get: function (): number[] {
                return Atom.identity(this)
            }
        })

        Object.defineProperty(Array.prototype, "ln", {
            get: function (): number[] {
                return this.primitive(Atom.ln)
            }
        })

        Object.defineProperty(Array.prototype, "magnitude", {
            get: function (): number[] {
                return this.primitive(Atom.magnitude)
            }
        })

        Object.defineProperty(Array.prototype, "negative", {
            get: function (): number[] {
                return this.primitive(Atom.negative)
            }
        })

        Object.defineProperty(Array.prototype, "not", {
            get: function (): number[] {
                return this.primitive(Atom.not)
            }
        })

        Object.defineProperty(Array.prototype, "pi", {
            get: function (): number[] {
                return this.primitive(Atom.pi)
            }
        })

        Object.defineProperty(Array.prototype, "reciprocal", {
            get: function (): number[] {
                return this.primitive(Atom.reciprocal)
            }
        })

        Object.defineProperty(Array.prototype, "roll", {
            get: function (): number[] {
                return this.primitive(Atom.roll)
            }
        })

        Object.defineProperty(Array.prototype, "round", {
            get: function (): number[] {
                return this.primitive(Atom.round)
            }
        })

        Object.defineProperty(Array.prototype, "signum", {
            // get: arraySign,   geen parameter, omdat het een property is
            get: function () {
                return this.primitive(Atom.signum)
            }
            //set: function () {
            //}
        })      
        
        // Non-Scalar Selector Functions

      

    }

///#endregion

    ///#region "Scalar Monadic"

    namespace NonScalar {

        export var indexGenerator = (alpha) => {
            // In Chrome 10xsneller dan het gebruik van "this"
            var results = new Array<number>(alpha)    // sneller dan []
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter
            }
            return results
        }

        Object.defineProperty(Array.prototype, "indexGenerator", {
            get: function (): number[] {
                //
                return this.primitive(NonScalar.indexGenerator)
                try {
                    var length = this[0].valueOf()
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
        })

        Object.defineProperty(Array.prototype, "gradeUp", {
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
                try {
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
                }
                catch (error) {
                }
                finally {
                }
            }
        })

        Object.defineProperty(Array.prototype, "gradeUpQS", {             // quickSort
            get: function () {
                var gradeUp = function (omega, indices?: number[], low?: number, high?: number): number[] {
                    try {
                        omega = (typeof omega === 'number') ? [omega] : omega
                        indices = (typeof (indices) === 'undefined') ? omega.length.indexGenerator : indices
                        low = (typeof (low) === 'undefined') ? 0 : low
                        high = (typeof (high) === 'undefined') ? omega.length - 1 : high
                        if (high <= low) return indices
                        var midValue = omega[indices[Math.floor((low + high) / 2)]]
                        var t1, t2
                        var t3: boolean, t4: boolean
                        var i = low, j = high
                        while (i <= j) {
                            t1 = indices[i], t2 = indices[j]
                            t3 = omega[t1] >= midValue, t4 = omega[t2] <= midValue
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
                        gradeUp(omega, indices, low, j)
                        gradeUp(omega, indices, i, high)
                    }
                    catch (error) {
                    }
                    finally {
                    }
                    return indices
                }
                return gradeUp(this)
            }

        })

        Object.defineProperty(Array.prototype, "gradeDown", {
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
                try {
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
                }
                catch (error) {
                }
                finally {
                }
            }
        })

        Object.defineProperty(Array.prototype, "shape", {
            get: function shape(): number[] {
                try {
                    // Array.isArray(this) 
                    return this.length
                }
                catch (error) {
                }
                finally {
                }
            }
        })

        Object.defineProperty(Array.prototype, "transpose", {
            get: function reverse() {
                try {
                    // Array.isArray(this) 
                    return this.reverse()
                }
                catch (error) {
                }
                finally {
                }

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

        export var power = (alpha, omega) => Math.pow(alpha, omega)

        export var logarithm = (alpha, omega) => Math.log(omega) / Math.log(alpha)

        export var binomial = (alpha: number, omega: number) => omega.factorial / (alpha.factorial * (omega - alpha).factorial)   // zie !.coffee voor meer details

        Number.prototype.rotate = function (omega) {
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

        Number.prototype.deal = function (omega: number): number[] {
            var deal = function (omega: number, alpha?: number) {
                let results = omega.indexGenerator
                let h: number, j: number
                for (var i = 0; i < alpha; i++) {
                    j = i + Math.floor(Math.random() * (omega - i))
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

        Array.prototype.primitive = function (omega, primitive?) {  // Toekennen aan var is Xx sneller dan pure declaratie "function primitive(...) {}" .Uitkijken met lambda. "this." klopt niet meer 
            // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
            
            //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
            let counter: number, // let counter,
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

        
        Array.prototype.plus = function (omega) {
            return this.primitive(omega, scalar.plus)
        }

        Array.prototype.minus = function (omega) {
            return this.primitive(omega, scalar.minus)
        }

        Array.prototype.times = function (omega) {
            return this.primitive(omega, scalar.times)
        }

        Array.prototype.divide = function (omega) {
            return this.primitive(omega, scalar.divide)
        }

        Array.prototype.residue = function (omega) {
            return this.primitive(omega, scalar.residue)
        }

        Array.prototype.minimum = function (omega) {
            return this.primitive(omega, scalar.minimum)
        }

        Array.prototype.maximum = function (omega) {
            return this.primitive(omega, scalar.maximum)
        }

        Array.prototype.power = function (omega) {
            return this.primitive(omega, scalar.power)
        }


        Array.prototype.logarithm = function (omega) {
            return this.primitive(omega, scalar.logarithm)
        }

        Array.prototype.binomial = function (omega) {
            return this.primitive(omega, scalar.binomial)
        }

        Array.prototype.rotate = function (omega) {
            return this[0].rotate(omega)
        }

        Array.prototype.aplReduce = function (omega) {
            var aplReduce = function (omega, alpha) {
                return alpha.reduceRight((l, r) => { return omega(r, l) })
            }
            return aplReduce(omega, this)
        }

        Array.prototype.deal = function (omega): number[] {
            return this[0].deal(omega)    //, this[0].valueOf())

        }
    }

}