namespace Monadic {

    export namespace NonScalar {

        export var reverse = (alpha) => { return alpha.reverse() }

        export var shape = (alpha): number[] => { return alpha.length }

        Object.defineProperty(Array.prototype, prefix + "transpose", {
            get: function () {
                return reverse(this)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "shape", {
            get: function () {
                return shape(this)
            }
        })

    }
}