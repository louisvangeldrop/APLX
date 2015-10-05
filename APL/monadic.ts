namespace Monadic {

    export namespace Scalar {
        // TODO Extra scalar UNDO HACK

        export var ceiling = (alpha) => { return Math.ceil(alpha) }

        export var exponential = (alpha) => { return Math.exp(alpha) }

        export var factorial = function (alpha) {
            var result = 1
            for (var i = 1; i <= alpha; i++) {
                result = result * i
            }
            return result
        }

        export var floor = (alpha) =>  Math.floor(alpha) 

        export var identity = (alpha) => alpha 

        export var indexGenerator = (alpha) => {
            // In Chrome 10xsneller dan het gebruik van "this"
            var results = new Array<number>(alpha)    // sneller dan []
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter
            }
            return results
        }

        export var ln = (alpha) =>  Math.log(alpha) 

        export var magnitude = (alpha) =>  Math.abs(alpha) 

        export var negate = (alpha) =>   -alpha 

        export var pi = (alpha) =>  Math.PI * alpha 

        export var reciprocal = (alpha) =>  1 / alpha 

        export var roll = (alpha) =>  Math.floor(Math.random() * alpha) 

        export var round = (alpha) =>  Math.round(alpha) 

        export var sign = (alpha) =>  alpha > 0 ? 1 : alpha < 0 ? -1 : 0 

        Object.defineProperty(Number.prototype, "ceiling", {            //
            get: function () {
                return Scalar.ceiling(this)
            }
        })

        Object.defineProperty(Number.prototype, "exponential", {
            get: function () {
                return Scalar.exponential(this)
            }
        })

        Object.defineProperty(Number.prototype, "factorial", {
            get: function () {
                return Scalar.factorial(this)
            }
        })

        Object.defineProperty(Number.prototype, "floor", {
            get: function () {
                var myThis = this.valueOf()
                return Scalar.floor(this)
            }
        })

        Object.defineProperty(Number.prototype, "identity", {
            get: function () {
                return Scalar.identity(this)
            }
        })

        Object.defineProperty(Number.prototype, "ln", {
            get: function () {
                return Scalar.ln(this)
            }
        })

        Object.defineProperty(Number.prototype, "magnitude", {
            get: function () {
                return Scalar.magnitude(this)
            }
        })

        Object.defineProperty(Number.prototype, "negate", {
            get: function () {
                return Scalar.negate(this)
            }
        })

        Object.defineProperty(Number.prototype, "pi", {
            get: function () {
                return Scalar.pi(this)
            }
        })

        Object.defineProperty(Number.prototype, "reciprocal", {
            get: function () {
                return Scalar.reciprocal(this)
            }
        })

        Object.defineProperty(Number.prototype, "roll", {
            get: function () {
                return roll(this)
            }
        })

        Object.defineProperty(Number.prototype, "round", {            //
            get: function () {
                return Scalar.round(this)
            }
        })

        Object.defineProperty(Number.prototype, "same", {
            get: function () {
                return Scalar.identity(this)
            }
        })

        Object.defineProperty(Number.prototype, "sign", {
            get: function () {
                return Scalar.sign(this)
            }
        })

        Object.defineProperty(Number.prototype, "indexGenerator", {
            get: function () {
                return Scalar.indexGenerator(this.valueOf()) // In Chrome 10xsneller dan het gebruik van "this"
              
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
                return this.primitive(Scalar.ceiling)
            }
        })

        Object.defineProperty(Array.prototype, "exponential", {
            get: function () {
                return this.primitive(Scalar.exponential)
            }
        })

        Object.defineProperty(Array.prototype, "factorial", {
            get: function () {
                return this.primitive(Scalar.factorial)   //(alpha) => { return factorial(alpha) }
            }
        })

        Object.defineProperty(Array.prototype, "floor", {
            get: function (): number[] {
                return this.primitive(Scalar.floor)
            }
        })

        Object.defineProperty(Array.prototype, "identity", {
            get: function (): number[] {
                return Scalar.identity(this)
            }
        })

        Object.defineProperty(Array.prototype, "same", {
            get: function (): number[] {
                return Scalar.identity(this)
            }
        })

        Object.defineProperty(Array.prototype, "ln", {
            get: function (): number[] {
                return this.primitive(Scalar.ln)
            }
        })

        Object.defineProperty(Array.prototype, "magnitude", {
            get: function (): number[] {
                return this.primitive(Scalar.magnitude)
            }
        })

        Object.defineProperty(Array.prototype, "negate", {
            get: function (): number[] {
                return this.primitive(Scalar.negate)
            }
        })

        Object.defineProperty(Array.prototype, "pi", {
            get: function (): number[] {
                return this.primitive(Scalar.pi)
            }
        })

        Object.defineProperty(Array.prototype, "reciprocal", {
            get: function (): number[] {
                return this.primitive(Scalar.reciprocal)
            }
        })

        Object.defineProperty(Array.prototype, "roll", {
            get: function (): number[] {
                return this.primitive(Scalar.roll)
            }
        })

        Object.defineProperty(Array.prototype, "round", {
            get: function (): number[] {
                return this.primitive(Scalar.round)
            }
        })

        Object.defineProperty(Array.prototype, "sign", {
            // get: arraySign,   geen parameter, omdat het een property is
            get: function () {
                return this.primitive(Scalar.sign)
            }
            //set: function () {
            //}
        })      
        
        // Non-Scalar Selector Functions

        Object.defineProperty(Array.prototype, "indexGenerator", {
            get: function (): number[] {
                //
                return this.primitive(Scalar.indexGenerator)
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

}