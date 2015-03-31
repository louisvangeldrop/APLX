//#region "Scalar"

Object.defineProperty(Number.prototype, "ceiling", {            //
    get: function () {
        return Math.ceil(this)
    }
})

Object.defineProperty(Number.prototype, "exponential", {
    get: function () {
        return Math.exp(this)
    }
})

Object.defineProperty(Number.prototype, "factorial", {
    get: function () {
        var result = 1
        var myThis = this.valueOf()
        for (var i = 1; i <= myThis; i++) {
            result = result * i
        }
        return result
    }
})

Object.defineProperty(Number.prototype, "floor", {
    get: function () {
        var myThis = this.valueOf()
        return Math.floor(myThis)
    }
})

Object.defineProperty(Number.prototype, "identity", {
    get: function () {
        return this
    }
})

Object.defineProperty(Number.prototype, "ln", {
    get: function () {
        return Math.log(this)
    }
})

Object.defineProperty(Number.prototype, "magnitude", {
    get: function () {
        return Math.abs(this)
    }
})

Object.defineProperty(Number.prototype, "negate", {
    get: function () {
        return -this
    }
})

Object.defineProperty(Number.prototype, "pi", {
    get: function () {
        return Math.PI * this
    }
})

Object.defineProperty(Number.prototype, "reciprocal", {
    get: function () {
        return 1 / this
    }
})

Object.defineProperty(Number.prototype, "roll", {
    get: function () {
        return Math.floor(Math.random() * this)
    }
})

Object.defineProperty(Number.prototype, "same", {
    get: function () {
        return this
    }
})

//Number.prototype.sign = function () {
//    return this > 0 ? 1 : this < 0 ? -1 : 0
//}

Object.defineProperty(Number.prototype, "indexGenerator", {
    get: function () {
        var max = this.valueOf()                // In Chrome 10xsneller dan het gebruik van "this"
        var results = new Array<number>(max)    // sneller dan []
        for (var counter = 0; counter < max; counter++) {
            results[counter] = counter
        }
        return results
    }
})


Object.defineProperty(Number.prototype, "sign", {
    get: function () {
        return this > 0 ? 1 : this < 0 ? -1 : 0
    }
})


//#endregion

//#region "Vector"

Object.defineProperty(Array.prototype, "floor", {
    get: function (): number[] {
        return this.primitive((alpha) => { return Math.floor(alpha) })
    }
})



Object.defineProperty(Array.prototype, "ceiling", {
    get: function () {
        return this.primitive((alpha) => { return Math.ceil(alpha) })
    }
})

// Non-Scalar Selector Functions

Object.defineProperty(Array.prototype, "indexGenerator", {
    get: function (): number[] {
        //
        try {
            var length = this[0].valueOf()
            var counter,
                results = new Array<number>(length)
            for (counter = 0; counter < length; counter++) {
                results[counter] = counter
            }
            return results
        }
        catch (error) { }
        finally { }
    }
})

Object.defineProperty(Array.prototype, "gradeUp", {
    get: function (): number[] {
        var compare = function (alpha, omega) {
            loop++
            if (alpha.value < omega.value) {
                return -1;
            } else if (alpha.value > omega.value) {
                return 1;
            } else {
                return 0;
            }
        }
        try {
            var length = this.length,
                loop = 0
            var thisIndex = new Array(length),
                results = new Array(length),
                indices = new Array(length)
            for (var counter = 0; counter < length; counter++) {
                thisIndex[counter] = { value: this[counter], index: counter }
            }
            results = thisIndex.sort(compare)
            for (var counter = 0; counter < length; counter++) {
                indices[counter] = results[counter].index
            }
            console.log('Loops :' + loop)
            return indices
        }
        catch (error) {
        }
        finally {
        }
    }
})


Object.defineProperty(Array.prototype, "gradeUpQS", {             // quickSort
    get: function () {
        var gradeUp = function (omega, indices?: number[], low?: number, high?: number): number[] {
            try {
                omega = (typeof omega === 'number') ? [omega] : omega
                indices = (typeof (indices) === 'undefined') ? omega.length.indexGenerator : indices
                low = (typeof (low) === 'undefined') ? 0 : low
                high = (typeof (high) === 'undefined') ? omega.length - 1 : high
                if (high <= low) return indices
                var midValue = omega[indices[Math.floor((low + high) / 2)]]
                var t1, t2
                var t3: boolean, t4: boolean
                var i = low, j = high
                while (i <= j) {
                    t1 = indices[i], t2 = indices[j]
                    t3 = omega[t1] >= midValue, t4 = omega[t2] <= midValue
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
                gradeUp(omega, indices, low, j)
                gradeUp(omega, indices, i, high)
            }
            catch (error) {
            }
            finally {
            }
            return indices
        }
        return gradeUp(this)
    }

})

Object.defineProperty(Array.prototype, "gradeDown", {
    get: function (): number[] {
        var compare = function (alpha, omega) {
            loop++
            if (alpha.value < omega.value) {
                return 1;
            } else if (alpha.value > omega.value) {
                return -1;
            } else {
                return 0;
            }
        }
        try {
            var length = this.length,
                loop = 0
            var thisIndex = new Array(length),
                results = new Array(length),
                indices = new Array(length)
            for (var counter = 0; counter < length; counter++) {
                thisIndex[counter] = { value: this[counter], index: counter }
            }
            results = thisIndex.sort(compare)
            for (var counter = 0; counter < length; counter++) {
                indices[counter] = results[counter].index
            }
            console.log('Loops :' + loop)
            return indices
        }
        catch (error) {
        }
        finally {
        }
    }
})



Object.defineProperty(Array.prototype, "shape", {
    get: function shape(): number[] {
        try {
            // Array.isArray(this) 
            return this.length
        }
        catch (error) {
        }
        finally {
        }
    }
})

Object.defineProperty(Array.prototype, "transpose", {
    get: function reverse() {
        try {
            // Array.isArray(this) 
            return this.reverse()
        }
        catch (error) {
        }
        finally {
        }

    }
}
    )


var arraySign = function () {
    var max = this.length
        , results = new Array(max)
    for (var counter = 0; counter < max; counter++) {
        results[counter] = this[counter] > 0 ? 1 : this[counter] < 0 ? -1 : 0
    }
    return results
}

Object.defineProperty(Array.prototype, "sign", {
    get: arraySign,
    //set: function () {
    //}
})

//#endregion


 