namespace Monadic {

    export namespace NonScalar {
        export var depth = (alpha): any=> {
            let _depth = (alpha, omega) => { return alpha.maximum(omega.depth) }
            return Array.isArray(alpha) ? 1 + alpha.reduce(_depth, 0) : 0
        }

        addProperty([Array, Boolean, Date, Number, String], 'depth', depth, false)

        export var ravel = (alpha) => { return (Array.isArray(alpha) ? alpha : [alpha]) }; addProperty([Array, Boolean, Date, Number, String], "ravel", ravel)

        export var reverse = (alpha) => { return alpha.reverse() }; addProperty([Array, Number, String], "reversed", reverse, false)

        export var shape = (alpha): number[] => { return alpha.length }; addProperty([Array, Number, String], "shape", shape, false)

        export var enlist = (alpha) => {
            let result = []
            function enlist(x, r) { Array.isArray(x) ? x.map(function (y) { enlist(y, r) }) : r.push(x) }
            enlist(alpha, result)
            return result
            let depthLength = (alpha) => {
                let _length = (alpha, omega) => { return alpha + depthLength(omega) }
                if (!Array.isArray(alpha)) { return 1 }
                else {
                    return alpha.reduce(_length, 0)
                }
            }
            let _enlist = (alpha, omega) => { return alpha.concat(omega) }
            if (!Array.isArray(alpha)) { return 0 }
            else { return alpha.reduce(_enlist, 0) }
        }

        addProperty([Array, Number, String], "enlist", enlist, false)

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