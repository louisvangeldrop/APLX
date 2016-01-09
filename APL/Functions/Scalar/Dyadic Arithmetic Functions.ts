namespace Dyadic {

    export namespace Scalar {

        export var plus = (alpha, omega) => alpha + omega; Number.prototype[prefix + 'plus'] = function (omega) { return this.valueOf() + omega }

        export var minus = (alpha, omega) => alpha - omega; Number.prototype[prefix + 'minus'] = function (omega) { return this.valueOf() - omega }

        export var times = (alpha, omega) => alpha * omega; Number.prototype[prefix + 'times'] = function (omega) { return this.valueOf() * omega }

        export var divide = (alpha, omega) => alpha / omega; Number.prototype[prefix + 'divide'] = function (omega) { return this.valueOf() / omega }

        export var residue = (alpha, omega) => omega % alpha; Number.prototype[prefix + 'residue'] = function (omega) { return this.valueOf() % omega }

        export var minimum = (alpha, omega) => Math.min(alpha, omega); Number.prototype[prefix + 'minimum'] = function (omega) { return Math.min(this.valueOf(), omega) }

        export var maximum = (alpha, omega) => Math.max(alpha, omega); Number.prototype[prefix + 'maximun'] = function (omega) { return Math.max(this.valueOf(), + omega) }

        export var power = (alpha, omega) => alpha ** omega; Number.prototype[prefix + 'power'] = function (omega) { return this.valueOf() ** omega }

        export var logarithm = (alpha, omega) => Math.log(omega) / Math.log(alpha); Number.prototype[prefix + 'logarithm'] = function (omega) { return Math.log(omega) / Math.log(this.valueOf()) }

        export var binomial = (alpha: number, omega: number) => alpha.factorial / (omega.factorial * (alpha - omega).factorial);
        Number.prototype[prefix + 'binomial'] = function (omega) { return this.valueOf().factorial / (omega.factorial * (this.valueOf() - omega).factorial) } // zie !.coffee voor meer details

        export var rotate = function (omega) {
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

        Number.prototype[prefix + 'rotate'] = rotate

        export var deal = function (omega: number): number[] {
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

        Number.prototype[prefix + 'deal'] = deal

    }

    export namespace Vector {

        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        //                                 https://github.com/Microsoft/TypeScript/wiki/Functions 

        export var primitive = function (omega, primitive?) {  // Toekennen aan var is Xx sneller dan pure declaratie "function primitive(...) {}" .Uitkijken met lambda. "this." klopt niet meer 
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

        Array.prototype[prefix + 'primitive'] = primitive

        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        ////                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        
        export var plus = function (omega) {
            return this.primitive(omega, Scalar.plus)
        }

        Array.prototype[prefix + 'plus'] = plus

        export var minus = function (omega) {
            return this.primitive(omega, Scalar.minus)
        }

        Array.prototype[prefix + 'minus'] = minus

        export var times = function (omega) {
            return this.primitive(omega, Scalar.times)
        }

        Array.prototype[prefix + 'times'] = times

        export var divide = function (omega) {
            return this.primitive(omega, Scalar.divide)
        }

        Array.prototype[prefix + 'divide'] = divide

        export var residue = function (omega) {
            return this.primitive(omega, Scalar.residue)
        }

        Array.prototype[prefix + 'residue'] = residue

        export var minimum = function (omega) {
            return this.primitive(omega, Scalar.minimum)
        }

        Array.prototype[prefix + 'minimum'] = minimum

        export var maximum = function (omega) {
            return this.primitive(omega, Scalar.maximum)
        }

        Array.prototype[prefix + 'maximum'] = maximum

        export var power = function (omega) {
            return this.primitive(omega, Scalar.power)
        }

        Array.prototype[prefix + 'power'] = power

        export var logarithm = function (omega) {
            return this.primitive(omega, Scalar.logarithm)
        }

        Array.prototype[prefix + 'logarithm'] = logarithm

        export var binomial = function (omega) {
            return this.primitive(omega, Scalar.binomial)
        }

        Array.prototype[prefix + 'binomial'] = binomial

        export var rotate = function (omega) {
            return this[0].rotate(omega)
        }

        Array.prototype[prefix + 'rotate'] = rotate

        export var aplReduce = function (omega) {
            let aplReduce = function (omega, alpha) {
                // TODO eigen reduceRight maken en verplaatsen naar Operators
                return alpha.reduceRight((l, r) => { return omega(r, l) })
            }
            return aplReduce(omega, this)
        }

        Array.prototype[prefix + 'aplReduce'] = aplReduce

        export var deal = function (omega): number[] {
            return this[0].deal(omega)    //, this[0].valueOf())
        }

        Array.prototype[prefix + 'deal'] = deal
    }
}