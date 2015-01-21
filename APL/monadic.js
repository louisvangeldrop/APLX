//module Monadic {
Array.floor = function (omega) {
    try {
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
};
Array.iota = indexGenerator;
//function <T>(omega: number|number[]): number[]{
//    try {
//        var length
//        if (typeof omega === "number") { length = omega } else { length = omega[0] }
//        var counter,
//            results = new Array<number>(length)
//        for (counter = 0; counter < length; counter++) {
//            results[counter] = counter
//        }
//        return results
//    }
//    catch (error) { }
//    finally { }
//}
Array.prototype.iota = indexGenerator;
Number.prototype.rotate = function (omega) {
    try {
        var counter, max = omega.length, results = new Array(max);
        if (this > 0) {
            for (counter = 0; counter < max; counter++) {
                results[counter] = omega[counter + this >= max ? counter + this - max : counter + this];
            }
        }
        else {
            for (counter = 0; counter < max; counter++) {
                results[counter] = omega[counter + this < 0 ? counter + this - max : counter + this];
            }
        }
        return results;
    }
    catch (error) {
        throw new Error('foutje');
    }
    finally {
    }
};
Number.iota = indexGenerator;
//function (omega?: number): number[]{
//    //if (typeof this === "number") { let length = this } else { let length = this[0] }
//    try {
//        var length: number = omega  // this
//        var counter,
//            results = new Array<number>(length)
//        for (counter = 0; counter < length; counter++) {
//            results[counter] = counter
//        }
//        return results
//    }
//    catch (error) { }
//    finally { }
//}
//# sourceMappingURL=monadic.js.map