namespace Dyadic {

    addPrototype([Array, Number, String, Boolean, Date], 'primitive', primitive)

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
            return this.primitive(omega, Scalar.times) // return this.primitive(omega, Scalar.times)
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

        //    Number.prototype[prefix + 'plus'] = Number.prototype[prefix + 'plus'] || plus
        addPrototype([Array, Number], 'plus', plus)
        addPrototype([Array, Number], 'minus', minus)
        addPrototype([Array, Number], 'times', times)
        addPrototype([Array, Number], 'divide', divide)
        addPrototype([Array, Number], 'residue', residue)
        addPrototype([Array, Number], 'minimum', minimum)
        addPrototype([Array, Number], 'maximum', maximum)
        addPrototype([Array, Number], 'power', power)
        addPrototype([Array, Number], 'logarithm', logarithm)
        addPrototype([Array, Number], 'binomial', binomial)


        export var deal = function (omega): number[] {
            return this[0].deal(omega)    //, this[0].valueOf())
        }
    }
}