namespace Monadic {

    export namespace NonScalar {

        export var reverse = function (alpha) {
            try {
                // Array.isArray(this) 
                return alpha.reverse()
            }
            catch (error) {
            }
            finally {
            }

        }

        export function shape(alpha): number[] {
            try {
                // Array.isArray(this) 
                return alpha.length
            }
            catch (error) {
            }
            finally {
            }
        }

        Object.defineProperty(Array.prototype, prefix + "shape", {
            get: function () {
                return shape(this)
            }
        })

        Object.defineProperty(Array.prototype, prefix + "transpose", {
            get: function () {
                return reverse(this)
            }
        })
    }
}