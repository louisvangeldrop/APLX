//#region "Monadic"
Number.ceiling = function () {
    return Math.ceil(this);
};
Number.exponential = function () {
    return Math.exp(this);
};
Number.factorial = function () {
    var result = 1;
    for (var i = 1; i <= this; i++) {
        result = result * i;
    }
    return result;
};
Number.floor = function () {
    return Math.floor(this);
};
Number.identity = function () {
    return this;
};
Object.defineProperty(Number.prototype, "sign", {
    get: function () {
        return this > 0 ? 1 : this < 0 ? -1 : 0;
    }
});
//#endregion
//#region "Dyadic"
function floor(omega) {
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega;
        var length = omega.length;
        var counter, results = new Array(length);
        for (counter = 0; counter < length; counter++) {
            results[counter] = Math.floor(omega[counter]);
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
function ceiling(omega) {
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega;
        var length = omega.length;
        var counter, results = new Array(length);
        for (counter = 0; counter < length; counter++) {
            results[counter] = Math.ceil(omega[counter]);
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
// Non-Scalar Selector Functions
function indexGenerator(omega) {
    try {
        var length = (typeof omega === 'number') ? omega : omega[0];
        var counter, results = new Array(length);
        for (counter = 0; counter < length; counter++) {
            results[counter] = counter;
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
var iota = indexGenerator;
function gradeUpSort(omega) {
    function compare(l, r) {
        loop++;
        if (l.value < r.value) {
            return -1;
        }
        else if (l.value > r.value) {
            return 1;
        }
        else {
            return 0;
        }
    }
    try {
        omega = (typeof omega === 'number') ? [omega] : omega;
        var length = omega.length, loop = 0;
        var omegaIndex = [], results = [], indices = [];
        for (var counter = 0; counter < length; counter++) {
            omegaIndex[counter] = { value: omega[counter], index: counter };
        }
        results = omegaIndex.sort(compare);
        for (var counter = 0; counter < length; counter++) {
            indices.push(results[counter].index);
        }
        console.log('Loops :' + loop);
        return indices;
    }
    catch (error) {
    }
    finally {
    }
}
function gradeUp(omega, indices, low, high) {
    try {
        omega = (typeof omega === 'number') ? [omega] : omega;
        indices = (typeof (indices) === 'undefined') ? iota(omega.length) : indices;
        low = (typeof (low) === 'undefined') ? 0 : low;
        high = (typeof (high) === 'undefined') ? omega.length - 1 : high;
        if (high <= low)
            return indices;
        var midValue = omega[indices[Math.floor((low + high) / 2)]];
        var t1, t2;
        var t3, t4;
        var i = low, j = high;
        while (i <= j) {
            t1 = indices[i], t2 = indices[j];
            t3 = omega[t1] >= midValue, t4 = omega[t2] <= midValue;
            if (t3 && t4) {
                indices[i] = t2;
                indices[j] = t1;
                i = i + 1;
                j = j - 1;
            }
            else {
                if (t3 === false) {
                    i++;
                }
                if (t4 === false) {
                    j--;
                }
            }
        }
        gradeUp(omega, indices, low, j);
        gradeUp(omega, indices, i, high);
    }
    catch (error) {
    }
    finally {
    }
    return indices;
}
function gradeDown(omega) {
    function compare(l, r) {
        if (l < r) {
            return -1;
        }
        else if (l > r) {
            return 1;
        }
        else {
            return 0;
        }
    }
    try {
        omega = (typeof omega === 'number') ? [omega] : omega;
        var length = omega.length;
        results = omega.sort(compare);
        var counter, results = new Array(length);
        for (counter = 0; counter < length; counter++) {
            results[counter] = Math.floor(omega[counter]);
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
function index(omega) {
    try {
        var alpha = (typeof this === 'number') ? [this] : this;
        omega = (typeof omega === 'number') ? [omega] : omega;
        var length = omega.length;
        var counter, results = new Array(length);
        for (counter = 0; counter < length; counter++) {
            results[counter] = Math.floor(omega[counter]);
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
function shape(omega) {
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega;
        return omega.length;
    }
    catch (error) {
    }
    finally {
    }
}
function reverse(omega) {
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega;
        return omega.reverse();
    }
    catch (error) {
    }
    finally {
    }
}
Object.defineProperty(Array.prototype, "sign", {
    get: function () {
        var max = this.length;
        var results = new Array(max);
        for (var counter = 0; counter < max; counter++) {
            results[counter] = this[counter] > 0 ? 1 : this[counter] < 0 ? -1 : 0;
        }
        return results;
    },
    set: function () {
    }
});
//#endregion
//# sourceMappingURL=monadic number.js.map