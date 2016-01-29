namespace Monadic {

    export namespace NonScalar {

        export var reverse = (alpha) => { return alpha.reverse() }

        export var shape = (alpha): number[] => { return alpha.length }

        addProperty(Array, "transpose", reverse, false)

        addProperty(Array, "shape", shape, false)

    }
}