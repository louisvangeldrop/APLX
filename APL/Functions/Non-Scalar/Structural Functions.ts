namespace Monadic {

    export namespace NonScalar {

        export var depth = (alpha): any=> {
            let _depth = {}
            if (!Array.isArray(alpha)) { return 0 }
            else {
                return 1 + alpha.depth.aplReduce(Dyadic.Scalar.maximum)
            }

        }

        addProperty([Array, Boolean, Date, Number, String], 'depth', depth, false)

        export var ravel = (alpha) => { return (Array.isArray(alpha) ? alpha : [alpha]) }; addProperty([Array, Boolean, Date, Number, String], "ravel", ravel)

        export var reverse = (alpha) => { return alpha.reverse() }; addProperty([Array, Number, String], "reversed", reverse, false)

        export var shape = (alpha): number[] => { return alpha.length }; addProperty([Array, Number, String], "shape", shape, false)

        export var enlist = (alpha) => { }

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