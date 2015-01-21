// Monadic Functions
function primitiveDyadic(omega, primitive) {
    try {
        var counter, max = Math.min(this.length, omega.length), results = new Array(max);
        for (counter = 0; counter < max; counter++) {
            results[counter] = primitive(this[counter], omega[counter]);
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
}
function floor(omega) {
    try {
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
function gradeUp(omega) {
    try {
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
function gradeDown(omega) {
    try {
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
//# sourceMappingURL=apl.js.map