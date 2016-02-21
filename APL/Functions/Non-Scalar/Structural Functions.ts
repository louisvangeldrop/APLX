namespace Monadic {

    export namespace NonScalar {

        export var depth = (alpha): number=> {
            let _depth = (alpha: number, omega) => Math.max(alpha, omega.depth)      //.maximum(omega.depth) 
            return Array.isArray(alpha) ? 1 + alpha.reduce(_depth, 0) : 0
        }; addProperty([Array, Boolean, Date, Number, String], 'depth', depth, false)

        export var depthLength = (alpha): number => {
            let count = 0
            let _length = alpha => { Array.isArray(alpha) ? alpha.map(alpha => { _length(alpha) }) : count += 1 }
            _length(alpha)
            return count
        }; addProperty([Array, Boolean, Date, Number, String], 'depthLength', depthLength, false)

        export var enlist = (alpha) => {
            let result = []
            let _enlist = (alpha, omega) => { Array.isArray(alpha) ? alpha.map((y) => { _enlist(y, omega) }) : omega.push(alpha) }
            _enlist(alpha, result)
            return result
        }; addProperty([Array, Number, String], "enlist", enlist, false)

        export var ravel = (alpha): Array<any> => { return (Array.isArray(alpha) ? alpha : [alpha]) }; addProperty([Array, Boolean, Date, Number, String], "ravel", ravel, false)

        export var reverse = (alpha) => { return alpha.reverse() }; addProperty([Array, Number, String], "reversed", reverse, false)

        export var shape = (alpha): number[] => { return alpha.length }; addProperty([Array, Number, String], "shape", shape, false)

    }

}

namespace Dyadic {

    namespace NonScalar {

        export var concatenate = function (omega) { return this.ravel.concat(omega.ravel) }; addPrototype([Array, Boolean, Date, Number, String], 'concatenate', concatenate)

        export var reshape = function (omega) {
            omega = omega.ravel
            let ol: number = omega.length
            let myThis: number = this.valueOf()
            let results = new Array(myThis)

            for (let counter = 0; counter < myThis; counter++) {
                results[counter] = omega[counter % ol]
            }
            return results
        }; addPrototype(Number, 'reshape', reshape)


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
        }; addPrototype(Number, 'rotate', rotate)

    }

}