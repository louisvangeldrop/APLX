namespace Monadic {

    export namespace NonScalar {

        export var identity = (alpha) => alpha

        export var discose = (alpha) => {
            if (Array.isArray(alpha)) { return alpha[0] } else { return alpha }
        }

        export var unique = (alpha) => {
            let index = Monadic.NonScalar.gradeUp(alpha)
            let results = []
            let bitVector = new Array<boolean>(alpha.length)
            bitVector[index[0]] = true
            for (let i = 1; i < alpha.length; i++) {
                bitVector[index[i]] = alpha[index[i - 1]] !== alpha[index[i]]

            }
            for (let i = 0; i < alpha.length; i++) {
                if (bitVector[i] === true) { results.push(alpha[i]) }
            }
            return results

            // return Array.from(new Set(alpha))
        }

        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false)
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false)
        addProperty([Array, Boolean, Date, Number, String], "disclose", NonScalar.discose, false)
        addProperty([Array, Boolean, Date, Number, String], "unique", NonScalar.unique, false)
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

        export var pick = function (omega: any) {
            if (Array.isArray(omega)) {
                return omega[this]
            } else {
                return omega
            }
        }

        export var take = function (omega: any) {
            omega = Array.isArray(omega) ? omega : [omega]
            let length: number = omega.length
            let size = Math.abs(this.valueOf())
            let max = Math.min(length, size)
            let results = size[APLPrefix + 'reshape'](0) // (new Array(size)).fill(0)
            if (this.valueOf() > 0) {
                for (let i = 0; i < max; i++) {
                    results[i] = omega[i]
                }
            }
            if (this.valueOf() < 0) {
                let ix = size - max
                for (let i = 0; i < max; i++) {
                    results[ix + i] = omega[length - max + i]
                }
            }
            return results
        }

        export var drop = function (omega: any): any {
            omega = Array.isArray(omega) ? omega : [omega]
            const length: number = omega.length
            const resultLength: number = Math.max(0, length - Math.abs(this))

            let results = new Array(resultLength)

            if (this < 0) {
                for (let i = 0; i < resultLength; i++) {
                    results[i] = omega[i]
                }
            }
            else {
                for (let i = 0; i < resultLength; i++) {
                    results[i] = omega[this + i]
                }
            }
            return results
        }

        export var replicate = function (omega: any) {
            const myThis: Array<number | boolean> = this[APLPrefix + 'ravel']
            const myOmega = omega[APLPrefix + 'ravel']
            const length = myThis[APLPrefix + 'magnitude'][APLPrefix + 'aplReduce'](Scalar.plus)
            let results = new Array(length)
            let fillElement = typeof myOmega[0] === 'string' ? ' ' : 0
            //const reshape = APLPrefix + 'reshape'
            let ix = 0
            for (let i = 0; i < myThis.length; i++) {
                //const temp = myThis[i][reshape](omega[i])
                let size = 0
                if (typeof myThis[i] === 'boolean') {
                    size = myThis[i] === true ? 1 : 0

                } else {
                    size = Math.abs(<number>myThis[i])
                }

                for (let j = 0; j < size; j++) {
                    results[ix] = myThis[i] > 0 ? myOmega[i] : fillElement
                    ix++
                }
                //for (let j = 0; j < temp.length; j++) {
                //    results[i + j] = temp[j]
                //}
            }
            return results
        }

        export var expand = function (omega: any) {
            const myThis: Array<number | boolean> = this[APLPrefix + 'ravel']
            const myOmega = omega[APLPrefix + 'ravel']
            // const length = myThis[APLPrefix + 'magnitude'][APLPrefix + 'maximum'](1)[APLPrefix + 'aplReduce'](Scalar.plus) // +/1⌈|⍵
            let fillElement = typeof myOmega[0] === 'string' ? ' ' : 0

            let results = new Array()
            //const expand = APLPrefix + 'expand'
            let ix = 0
            for (let i = 0; i < myThis.length; i++) {
                //const temp = myThis[i][reshape](omega[i])

                let size = 0
                if (typeof myThis[i] === 'boolean') {
                    myThis[i] = myThis[i] === true ? 1 : 0
                }
                size = Math.abs(<number>myThis[i])
                size = size === 0 ? 1 : size
                for (let j = 0; j < size; j++) {
                    results.push(myThis[i] > 0 ? myOmega[ix] : fillElement)
                }
                ix = myThis[i] > 0 ? ix + 1 : ix
                //for (let j = 0; j < temp.length; j++) {
                //    results[i + j] = temp[j]
                //}
            }
            return results
        }

        addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left)
        addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right)
        addPrototype([Array, Number], 'pick', NonScalar.pick)
        addPrototype([Number], 'take', NonScalar.take)
        addPrototype([Number], 'drop', NonScalar.drop)
        addPrototype([Array, Number], 'replicate', NonScalar.replicate)
        addPrototype([Array, Number], 'expand', NonScalar.expand)
    }
}