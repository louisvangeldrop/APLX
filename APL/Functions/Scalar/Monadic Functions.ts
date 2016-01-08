//#region "Scalar"

export namespace Atom {             // Number

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

export namespace Vector {           // Array

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

    //#endregion