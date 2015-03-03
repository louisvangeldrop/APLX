// Monadic Functions

function floor(omega) {
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length
        var counter,
            results = new Array(length)
     //  results= Math.floor.call(null,omega)
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
var iota = indexGenerator

function gradeUp(omega): number[] {
    function compare(l, r) {
        loop++
        if (l.value < r.value) {
            return -1;
        } else if (l.value > r.value) {
            return 1;
        } else {
            return 0;
        }
    }
    try {
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length,
            loop = 0
        var omegaIndex = [],
            results = [],
            indices = []
        for (var counter = 0; counter < length; counter++) {
            omegaIndex[counter] = { value: omega[counter], index: counter }
        }
        results = omegaIndex.sort(compare)
        for (var counter = 0; counter < length; counter++) {
            indices.push(results[counter].index)
        }
        console.log('Loops :' + loop)
        return indices
    }
    catch (error) {
    }
    finally {
    }
}

function gradeDown(omega): number[] {
    function compare(l, r) {
        if (l < r) {
            return -1;
        } else if (l > r) {
            return 1;
        } else {
            return 0;
        }
    }

    try {
        omega = (typeof omega === 'number') ? [omega] : omega
        var length = omega.length
        results = omega.sort(compare)
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

function shape(omega): number[] {
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega
        return omega.length
    }
    catch (error) {
    }
    finally {
    }
}

function rotate(omega){
    try {
        // Array.isArray(omega) 
        omega = (typeof omega === 'number') ? [omega] : omega
        return omega.reverse()
    }
    catch (error) {
    }
    finally {
    }
   
}
