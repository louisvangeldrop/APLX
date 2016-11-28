namespace Monadic {

    export namespace NonScalar {

        export var identity = (alpha) => alpha

        export var discose = (alpha) => {
            if (Array.isArray(alpha)) { return alpha[0] } else { return alpha }
        }

        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false)
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false)
        addProperty([Array, Boolean, Date, Number, String], "disclose", NonScalar.discose, false)
    }

}

namespace Dyadic {

    export namespace NonScalar {

        export var left = function (omega) {
            return this
        }

        export var right = function (omega: any) {
            return omega
        }

        export var pick = function (omega: any) {
            if (Array.isArray(omega)) {
                return omega[this]
            } else {
                return omega
            }
        }

        export var take = function (omega: any) {
            omega = Array.isArray(omega) ? omega : [omega]
            let length: number = omega.length
            let size = Math.abs(this.valueOf())
            let max = Math.min(length, size)
            let results = size[APLPrefix + 'reshape'](0) // (new Array(size)).fill(0)
            if (this.valueOf() > 0) {
                for (let i = 0; i < max; i++) {
                    results[i] = omega[i]
                }
            }
            if (this.valueOf() < 0) {
                let ix = size - max
                for (let i = 0; i < max; i++) {
                    results[ix + i] = omega[length - max + i]
                }
            }
            return results
        }
    }

    addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left)
    addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right)
    addPrototype([Array, Number], 'pick', NonScalar.pick)
    addPrototype([Array, Boolean, Date, Number, String], 'take', NonScalar.take)
}