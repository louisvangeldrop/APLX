namespace Monadic {

    export namespace NonScalar {

        export var depth = (alpha): number => {
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
            let _enlist = (alpha) => { Array.isArray(alpha) ? alpha.map((y) => { _enlist(y) }) : result.push(alpha) }
            _enlist(alpha)
            return result
        }; addProperty([Array, Number, String], "enlist", enlist, false)

        export var ravel = (alpha): Array<any> => { return (Array.isArray(alpha) ? alpha : [alpha]) }; addProperty([Array, Boolean, Date, Number, String], "ravel", ravel, false)

        export var reversed = (alpha) => { return [].concat(alpha).reverse() }; addProperty([Array, Number, String], "reversed", reversed, false)

        export var shape = (alpha): number[] => { return alpha.length }; addProperty([Array, Number, String], "shape", shape, false)

    }

}

namespace Dyadic {

    namespace NonScalar {

        export var catenate = function (omega) { return this[APLPrefix + "ravel"].concat(omega.ravel) }
        addPrototype([Array, Boolean, Date, Number, String], 'catenate', catenate)

        export var reshape = function (omega) {
            omega = omega[APLPrefix + "ravel"]
            let ol: number = omega.length
            let myThis: number = this.valueOf()
            let results = new Array(Math.abs(myThis))
            if (ol === 1) {
                const fillValue = myThis < 0 ? 0 : omega[0]
                for (let counter = 0; counter < myThis; counter++) {
                    results[counter] = fillValue
                }
            }
            else {
                for (let counter = 0; counter < myThis; counter++) {
                    results[counter] = omega[counter % ol]
                }
            }
            return results
        }; addPrototype(Number, 'reshape', reshape)


        export var rotate = function (omega) {

            let myThis: number = Array.isArray(this) ? this[0] : this          // XXX xsneller dan het gebruik van this
            let counter: number,
                max: number = omega.length,
                results = new Array(max);
            if (myThis > 0) {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis >= max ? counter + myThis - max : counter + myThis]
                }
            } else {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis < 0 ? max + myThis + counter : counter + myThis]
                }
            }
            return results
        }; addPrototype([Array, Number], 'rotate', rotate)


        export var partition = function (omega) {
            omega = omega[APLPrefix + "ravel"]
            let ol: number = omega.length
            let myThis: Array<Boolean | Number> = this[APLPrefix + "ravel"]
            let results = []                 // new Array(myThis.aplReduce(Dyadic.Scalar.plus))
            let interim = []
            let sw = false

            for (let counter = 0; counter < ol; counter++) {
                if (myThis[counter] === true || myThis[counter] === 1) {
                    if (sw === false) {
                        sw = true
                        interim = []
                        interim.push(omega[counter])
                    }
                    else {
                        interim.push(omega[counter])
                    }
                }
                else {
                    if (sw === true) {
                        results.push([interim])
                    }
                    sw = false
                }

            }

            if (sw === true) {
                results.push([interim])
            }
            return results

        }
        addPrototype([Array, Number], 'partition', partition)
    }

}