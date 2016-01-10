namespace Monadic {

export namespace Scalar {             // Number

    // TODO Extra scalar UNDO HACK. See Task List

    export var ceiling = (alpha) => { return Math.ceil(alpha) }

    export var exponential = (alpha) => { return Math.exp(alpha) }

    export var factorial = function (alpha:number,omega?:number):number {
        var result: number =1
        omega = (typeof omega === 'undefined') ? 1 : omega + 1
                for (var i = omega; i <= alpha; i++) {
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
            return Scalar.ceiling(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "exponential", {
        get: function () {
            return Scalar.exponential(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "factorial", {
        get: function () {
            return Scalar.factorial(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "floor", {
        get: function () {
            var myThis = this.valueOf()
            return Scalar.floor(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "identity", {
        get: function () {
            return Scalar.identity(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "ln", {
        get: function () {
            return Scalar.ln(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "magnitude", {
        get: function () {
            return Scalar.magnitude(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "negative", {
        get: function () {
            return Scalar.negative(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "not", {
        get: function () {
            return Scalar.not(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "pi", {
        get: function () {
            return Scalar.pi(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "reciprocal", {
        get: function () {
            return Scalar.reciprocal(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "roll", {
        get: function () {
            return Scalar.roll(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "round", {            //
        get: function () {
            return Scalar.round(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "same", {
        get: function () {
            return Scalar.identity(this)
        }
    })

    Object.defineProperty(Number.prototype, prefix + "signum", {
        get: function () {
            return Scalar.signum(this)
        }
    })
}

export namespace Vector {           // Array

    Object.defineProperty(Array.prototype, prefix + "ceiling", {
        get: function () {
            return this.primitive(Scalar.ceiling)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "exponential", {
        get: function () {
            return this.primitive(Scalar.exponential)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "factorial", {
        get: function () {
            return this.primitive(Scalar.factorial)   //(alpha) => { return factorial(alpha) }
        }
    })

    Object.defineProperty(Array.prototype, prefix + "floor", {
        get: function (): number[] {
            return this.primitive(Scalar.floor)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "identity", {
        get: function (): number[] {
            return Scalar.identity(this)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "same", {
        get: function (): number[] {
            return Scalar.identity(this)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "ln", {
        get: function (): number[] {
            return this.primitive(Scalar.ln)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "magnitude", {
        get: function (): number[] {
            return this.primitive(Scalar.magnitude)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "negative", {
        get: function (): number[] {
            return this.primitive(Scalar.negative)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "not", {
        get: function (): number[] {
            return this.primitive(Scalar.not)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "pi", {
        get: function (): number[] {
            return this.primitive(Scalar.pi)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "reciprocal", {
        get: function (): number[] {
            return this.primitive(Scalar.reciprocal)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "roll", {
        get: function (): number[] {
            return this.primitive(Scalar.roll)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "round", {
        get: function (): number[] {
            return this.primitive(Scalar.round)
        }
    })

    Object.defineProperty(Array.prototype, prefix + "signum", {
        // get: arraySign,   geen parameter, omdat het een property is
        get: function () {
            return this.primitive(Scalar.signum)
        }
        //set: function () {
        //}
    })

}

}