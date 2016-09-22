namespace Monadic {

    export namespace NonScalar {

        export var identity = (alpha) => alpha




        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false)
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false)
    }

}

namespace Dyadic {

    export namespace NonScalar {

        export var right = function (omega: any) {
            return omega
        }

    }

}