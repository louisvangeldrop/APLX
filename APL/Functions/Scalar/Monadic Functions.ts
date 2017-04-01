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

        export var ln = (alpha) => Math.log(alpha)

        export var magnitude = (alpha) => Math.abs(alpha)

        export var negative = (alpha) => - alpha

        export var not = (alpha) => !alpha

        export var pi = (alpha) => Math.PI * alpha

        export var reciprocal = (alpha) => 1 / alpha

        export var roll = (alpha) => Math.floor(Math.random() * alpha)

        export var round = (alpha) => Math.round(alpha)

        export var signum = (alpha) => alpha > 0 ? 1 : alpha < 0 ? -1 : 0


        addProperty([Array, Number], 'ceiling', Scalar.ceiling)

        addProperty([Array, Number], "exponential", Scalar.exponential)

        addProperty([Array, Number], "factorial", Scalar.factorial)

        addProperty([Array, Number], "floor", Scalar.floor)

        addProperty([Array, Number], "ln", Scalar.ln)

        addProperty([Array, Number], "magnitude", Scalar.magnitude)

        addProperty([Array, Number], "negative", Scalar.negative)

        addProperty([Array, Number, Boolean], "not", Scalar.not)

        addProperty([Array, Number], "pi", Scalar.pi)

        addProperty([Array, Number], "reciprocal", Scalar.reciprocal)

        addProperty([Array, Number], "roll", Scalar.roll)

        addProperty([Array, Number], "round", Scalar.round)

        addProperty([Array, Number], "signum", Scalar.signum)

    }

}   