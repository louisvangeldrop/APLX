namespace Monadic {

    export namespace NonScalar {

        export var identity = (alpha) => alpha

        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false)
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false)
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

    }

    addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left)
    addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right)
}