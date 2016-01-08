//#region "Scalar"

export namespace Atom {

    export var plus = (alpha, omega) => alpha + omega

    export var minus = (alpha, omega) => alpha - omega

    export var times = (alpha, omega) => alpha * omega

    export var divide = (alpha, omega) => alpha / omega

    export var residue = (alpha, omega) => omega % alpha

    export var minimum = (alpha, omega) => Math.min(alpha, omega)

    export var maximum = (alpha, omega) => Math.max(alpha, omega)

    export var power = (alpha, omega) => alpha ** omega

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

    //#endregion