 namespace Dyadic {            // export namespace voor ES6

    export namespace Scalar {

        export var plus = (alpha, omega) => { return alpha + omega }

        export var minus = (alpha, omega) => { return alpha - omega }

        export var times = (alpha, omega) => { return alpha * omega }

        export var divide = (alpha, omega) => { return alpha / omega }

        export var residue = (alpha, omega) => { return omega % alpha }

        export var minimum = (alpha, omega) => { return Math.min(alpha, omega) }

        export var maximum = (alpha, omega) => { return Math.max(alpha, omega) }

        export var power = (alpha, omega) => { return Math.pow(alpha, omega) }

        export var logarithm = (alpha, omega) => { return Math.log(omega) / Math.log(alpha) }

        export var binomial = (alpha: number, omega: number) => { return omega.factorial / (alpha.factorial * (omega - alpha).factorial) }   // zie !.coffee voor meer details

        Number.prototype.rotate = function (omega) {
            var myThis = this.valueOf()           // XXX xsneller dan het gebruik van this
       //     try {
                var counter,
                    max = omega.length,
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
                var results = omega.indexGenerator
                var h: number, j: number, alpha: number
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
            //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
            var counter, // let counter,
                max,
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