namespace Dyadic {

    export var primitive = function (omega, primitive?) {  // Toekennen aan var is Xx sneller dan pure declaratie "function primitive(...) {}" .Uitkijken met lambda. "this." klopt niet meer 
        // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
            
        //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
        let counter: number,
            max: number,
            results
        if (typeof primitive === 'undefined') {  // omega is nu de primitive functie
            primitive = omega
            //if (!Array.isArray(this)) {
            //    return primitive(this)
            //}
            max = this.length
            results = new Array(max)
            //for (var cnt = 0, max = this.length, results = <any>new Array(max); cnt++;){ }
            for (counter = 0; counter < max; counter++) {
                results[counter] = primitive(this[counter])
            }
            return results
        }
        else {
            if (Array.isArray(this)) {
                if (Array.isArray(omega)) {
                    //TODO max en isArray(this)
                    max = Math.min(this.length, omega.length),
                        results = new Array(max);
                    for (counter = 0; counter < max; counter++) {
                        results[counter] = primitive(this[counter], omega[counter])
                    }
                    return results
                } else {
                    max = this.length
                    results = new Array(max);
                    for (counter = 0; counter < max; counter++) {
                        results[counter] = primitive(this[counter], omega.valueOf())
                    }
                    return results
                }
            } else {
                if (Array.isArray(omega)) {
                    //TODO max en isArray(this)
                    max = omega.length,
                        results = new Array(max);
                    for (counter = 0; counter < max; counter++) {
                        results[counter] = primitive(this.valueOf(), omega[counter])
                    }
                    return results
                } else {
                    return primitive(this, omega)
                }
            }
        }
    
            
        //}
        //catch (error) {
        //   // throw error
        //}
        //finally {
        //}

    }

    Array.prototype[prefix + 'primitive'] = primitive
    Number.prototype[prefix + 'primitive'] = primitive
    String.prototype[prefix + 'primitive'] = primitive
    Boolean.prototype[prefix + 'primitive'] = primitive

    export namespace Scalar {

        export var plus = (alpha: number, omega: number) => alpha + omega
        export var minus = (alpha: number, omega: number) => alpha - omega
        export var times = (alpha: number, omega: number) => alpha * omega
        export var divide = (alpha: number, omega: number) => alpha / omega
        export var residue = (alpha: number, omega: number) => omega % alpha
        export var minimum = (alpha: number, omega: number) => Math.min(alpha, omega)
        export var maximum = (alpha: number, omega: number) => Math.max(alpha, omega)
        export var power = (alpha: number, omega: number) => alpha ** omega
        export var logarithm = (alpha: number, omega: number) => Math.log(omega) / Math.log(alpha)
        export var binomial = (alpha: number, omega: number) => { (alpha < omega || omega < 0) ? 0 : alpha.factorial / (omega.factorial * (alpha - omega).factorial) }

        //TODO binomial factorial(alpha,omega)
        //TODO rotate en deal horen niet hier

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

        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        ////                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        
        export var plus = function (omega) {
            return this.primitive(omega, Scalar.plus)
        }
        export var minus = function (omega) {
            return this.primitive(omega, Scalar.minus)
        }
        export var times = function (omega) {
            return this.primitive(omega, Scalar.times)
        }
        export var divide = function (omega) {
            return this.primitive(omega, Scalar.divide)
        }
        export var residue = function (omega) {
            return this.primitive(omega, Scalar.residue)
        }
        export var minimum = function (omega) {
            return this.primitive(omega, Scalar.minimum)
        }
        export var maximum = function (omega) {
            return this.primitive(omega, Scalar.maximum)
        }
        export var power = function (omega) {
            return this.primitive(omega, Scalar.power)
        }
        export var logarithm = function (omega) {
            return this.primitive(omega, Scalar.logarithm)
        }
        export var binomial = function (omega) {
            return this.primitive(omega, Scalar.binomial)
        }
        export var rotate = function (omega) {
            return this[0].rotate(omega)
        }
        export var aplReduce = function (omega) {
            let aplReduce = function (omega, alpha) {
                // TODO eigen reduceRight maken en verplaatsen naar Operators
                return alpha.reduceRight((l, r) => { return omega(r, l) })
            }
            return aplReduce(omega, this)
        }
        export var deal = function (omega): number[] {
            return this[0].deal(omega)    //, this[0].valueOf())
        }

        //    Number.prototype[prefix + 'plus'] = Number.prototype[prefix + 'plus'] || plus
        addPrototype(Number, 'plus', plus)
        addPrototype(Number, 'minus', minus)
        addPrototype(Number, 'times', times)
        addPrototype(Number, 'divide', divide)
        addPrototype(Number, 'residue', residue)
        addPrototype(Number, 'minimum', minimum)
        addPrototype(Number, 'maximun', maximum)
        addPrototype(Number, 'power', power)
        addPrototype(Number, 'logarithm', logarithm)
        addPrototype(Number, 'binomial', binomial)

        addPrototype(Array, 'plus', plus)
        addPrototype(Array, 'minus', minus)
        addPrototype(Array, 'times', times)
        addPrototype(Array, 'divide', divide)
        addPrototype(Array, 'residue', residue)
        addPrototype(Array, 'minimum', minimum)
        addPrototype(Array, 'maximum', maximum)
        addPrototype(Array, 'power', power)
        addPrototype(Array, 'logarithm', logarithm)
        addPrototype(Array, 'binomial', binomial)

        addPrototype(Array, 'rotate', rotate)
        addPrototype(Array, 'aplReduce', aplReduce)
        addPrototype(Array, 'deal', deal)
    }
}