// Monadic Functions


function primitiveDyadic(omega, primitive) {
    try {
        var counter, // let counter,
            max = Math.min(this.length, omega.length),
            results = new Array(max);
        for (counter = 0; counter < max; counter++) {
            results[counter] = primitive(this[counter], omega[counter])
        }
        return results
    }
    catch (error) {
    }
    finally {
    }
}

function floor(omega) {
    try {
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length
        var counter,
            results = new Array(length)
        for (counter = 0; counter < length; counter++) {
            results[counter] = Math.floor(omega[counter])
        }
        return results
    }
    catch (error) {
    }
    finally {
    }
}

// Non-Scalar Selector Functions

function indexGenerator(omega?: number): number[] {
    //
    try {
        var length: number = (typeof omega === 'number') ? omega : omega[0]
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

function gradeUp(omega): number[] {
    try {
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length
        var counter,
            results = new Array(length)
        for (counter = 0; counter < length; counter++) {

            results[counter] = Math.floor(omega[counter])
        }
        return results
    }
    catch (error) {
    }
    finally {
    }
}

function gradeDown(omega): number[] {
    try {
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length
        var counter,
            results = new Array(length)
        for (counter = 0; counter < length; counter++) {

            results[counter] = Math.floor(omega[counter])
        }
        return results
    }
    catch (error) {
    }
    finally {
    }
}

function index(omega): number[] {
    try {
        var alpha = (typeof this === 'number') ? [this] : this
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length
        var counter,
            results = new Array(length)
        for (counter = 0; counter < length; counter++) {

            results[counter] = Math.floor(omega[counter])
        }
        return results
    }
    catch (error) {
    }
    finally {
    }
}
