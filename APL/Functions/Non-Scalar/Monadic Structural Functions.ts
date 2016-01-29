namespace Monadic {

    export namespace NonScalar {

        export var reverse = (alpha) => { return alpha.reverse() }

        export var shape = (alpha): number[] => { return alpha.length }


        //TODO Transpose function is geen Reverse
        addProperty(Array, "transpose", reverse, false)

        addProperty(Array, "shape", shape, false)

    }
}