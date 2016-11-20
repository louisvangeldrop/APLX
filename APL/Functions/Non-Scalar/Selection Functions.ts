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

        export var pick = function (omega: number) {
            if (~Array.isArray(this)) {
                return this
            } else {
                return this[omega]
            }
        }
    }

    addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left)
    addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right)
    addPrototype([Array, Number], 'pick', NonScalar.pick)
}