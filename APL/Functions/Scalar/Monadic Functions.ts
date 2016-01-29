namespace Monadic {

    export namespace Scalar {             // Number

        // TODO Boolean not

        export var ceiling = (alpha) => { return Math.ceil(alpha) }

        export var exponential = (alpha) => { return Math.exp(alpha) }

        export var factorial = function (alpha: number, omega?: number): number {
            var result: number = 1
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

        export var negative = (alpha) => -alpha

        export var not = (alpha) => !alpha

        export var pi = (alpha) => Math.PI * alpha

        export var reciprocal = (alpha) => 1 / alpha

        export var roll = (alpha) => Math.floor(Math.random() * alpha)

        export var round = (alpha) => Math.round(alpha)

        export var signum = (alpha) => alpha > 0 ? 1 : alpha < 0 ? -1 : 0


        addProperty(Number, 'ceiling', Scalar.ceiling)

        //Object.defineProperty(Number.prototype, prefix + name, {
        //    get: function () {
        //        return Scalar.ceiling(this.valueOf())
        //    }
        //})

        addProperty(Number, "exponential", Scalar.exponential)

        addProperty(Number, "factorial", Scalar.factorial)

        addProperty(Number, "floor", Scalar.floor)

        addProperty(Number, "identity", Scalar.identity)

        addProperty(Number, "ln", Scalar.ln)

        addProperty(Number, "magnitude", Scalar.magnitude)

        addProperty(Number, "negative", Scalar.negative)

        addProperty(Number, "not", Scalar.not)

        addProperty(Boolean, "not", Scalar.not)

        addProperty(Number, "pi", Scalar.pi)

        addProperty(Number, "reciprocal", Scalar.reciprocal)

        addProperty(Number, "roll", Scalar.roll)

        addProperty(Number, "round", Scalar.round)

        addProperty(Number, "same", Scalar.identity)

        addProperty(Number, "signum", Scalar.signum)

    }

    export namespace Vector {           // Array

        addProperty(Array, 'ceiling', Scalar.ceiling)

        addProperty(Array, "exponential", Scalar.exponential)

        addProperty(Array, "factorial", Scalar.factorial)

        addProperty(Array, "floor", Scalar.floor)

        addProperty(Array, "identity", Scalar.identity)

        addProperty(Array, "same", Scalar.identity)

        addProperty(Array, "ln", Scalar.ln)

        addProperty(Array, "magnitude", Scalar.magnitude)

        addProperty(Array, "negative", Scalar.negative)

        addProperty(Array, "not", Scalar.not)

        addProperty(Array, "pi", Scalar.pi)

        addProperty(Array, "reciprocal", Scalar.reciprocal)

        addProperty(Array, "roll", Scalar.roll)

        addProperty(Array, "round", Scalar.round)

        addProperty(Array, "signum", Scalar.signum)

    }

}   