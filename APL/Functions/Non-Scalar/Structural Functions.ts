namespace Monadic {

    export namespace NonScalar {

        export var reverse = (alpha) => { return alpha.reverse() }

        export var shape = (alpha): number[] => { return alpha.length }

        addProperty([Array, Number, String], "reversed", reverse, false)

        addProperty([Array, Number, String], "shape", shape, false)

    }
}

namespace Dyadic {

    namespace NonScalar {

        export var rotate = function (omega) {
            let myThis = this.valueOf()           // XXX xsneller dan het gebruik van this
            let counter: number,
                max: number = omega.length,
                results = new Array(max);
            if (myThis > 0) {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis >= max ? counter + myThis - max : counter + myThis]
                }
            } else {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis < 0 ? counter + myThis - max : counter + myThis]
                }
            }
            return results
        }

        addPrototype(Number, 'rotate', rotate)


    }



}