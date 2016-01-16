namespace Monadic {

    export namespace NonScalar {

        export var gradeUp = function (alpha, indices?: number[], low?: number, high?: number): number[] {
            //try {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices
            low = (typeof (low) === 'undefined') ? 0 : low
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high
            if (high <= low) return indices
            var midValue = alpha[indices[Math.floor((low + high) / 2)]]
            var t1, t2
            var t3: boolean, t4: boolean
            var i = low, j = high
            while (i <= j) {
                t1 = indices[i], t2 = indices[j]
                t3 = alpha[t1] >= midValue, t4 = alpha[t2] <= midValue
                if (t3 && t4) {         // swap elements
                    indices[i] = t2
                    indices[j] = t1
                    i = i + 1
                    j = j - 1
                }
                else {
                    if (t3 === false) { i++ }
                    if (t4 === false) { j-- }
                }
            }
            gradeUp(alpha, indices, low, j)
            gradeUp(alpha, indices, i, high)
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices
        }

        export var gradeDown = function (alpha, indices?: number[], low?: number, high?: number): number[] {
            //try {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices
            low = (typeof (low) === 'undefined') ? 0 : low
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high
            if (high <= low) return indices
            var midValue = alpha[indices[Math.floor((low + high) / 2)]]
            var t1, t2
            var t3: boolean, t4: boolean
            var i = low, j = high
            while (i <= j) {
                t1 = indices[i], t2 = indices[j]
                t3 = alpha[t1] <= midValue, t4 = alpha[t2] >= midValue
                if (t3 && t4) {         // swap elements
                    indices[i] = t2
                    indices[j] = t1
                    i = i + 1
                    j = j - 1
                }
                else {
                    if (t3 === false) { i++ }
                    if (t4 === false) { j-- }
                }
            }
            gradeUp(alpha, indices, low, j)
            gradeUp(alpha, indices, i, high)
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices
        }

        export var indexGenerator = (alpha: number): number[] => {
            var results = new Array<number>(alpha)    // sneller dan []
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter
            }
            return results
        }

        addProperty(Array, "gradeUp", gradeUp)
        addProperty(Array, "gradeDown", gradeDown)

        addProperty(Number, 'indexGenerator', indexGenerator)
        addProperty(Array, 'indexGenerator', indexGenerator)

        //Object.defineProperty(Array.prototype, prefix +'' , {
        //    get: function (): number[] {
        //        var compare = function (alpha, omega) {
        //            loop++
        //            if (alpha.value < omega.value) {
        //                return -1;
        //            } else if (alpha.value > omega.value) {
        //                return 1;
        //            } else {
        //                return 0;
        //            }
        //        }
        //        //               try {
        //        var length = this.length,
        //            loop = 0
        //        var thisIndex = new Array(length),
        //            results = new Array(length),
        //            indices = new Array(length)
        //        for (var counter = 0; counter < length; counter++) {
        //            thisIndex[counter] = { value: this[counter], index: counter }
        //        }
        //        results = thisIndex.sort(compare)
        //        for (var counter = 0; counter < length; counter++) {
        //            indices[counter] = results[counter].index
        //        }
        //        console.log('Loops :' + loop)
        //        return indices
        //        //}
        //        //catch (error) {
        //        //}
        //        //finally {
        //        //}
        //    }
        //})

        //    Object.defineProperty(Array.prototype, prefix + "gradeDownJS", {
        //    get: function (): number[] {
        //        var compare = function (alpha, omega) {
        //            loop++
        //            if (alpha.value < omega.value) {
        //                return 1;
        //            } else if (alpha.value > omega.value) {
        //                return -1;
        //            } else {
        //                return 0;
        //            }
        //        }
        //        //              try {
        //        var length = this.length,
        //            loop = 0
        //        var thisIndex = new Array(length),
        //            results = new Array(length),
        //            indices = new Array(length)
        //        for (var counter = 0; counter < length; counter++) {
        //            thisIndex[counter] = { value: this[counter], index: counter }
        //        }
        //        results = thisIndex.sort(compare)
        //        for (var counter = 0; counter < length; counter++) {
        //            indices[counter] = results[counter].index
        //        }
        //        console.log('Loops :' + loop)
        //        return indices
        //        //}
        //        //catch (error) {
        //        //}
        //        //finally {
        //        //}
        //    }
        //})

    }
}