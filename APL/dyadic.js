Array.prototype.primitive = function primitive(omega, primitive) {
    try {
        // xxx.times()
        var counter, max, results;
        if (typeof omega === 'undefined') {
            max = this.length;
            results = new Array(max);
            for (counter = 0; counter < max; counter++) {
                results[counter] = primitive(this[counter]);
            }
            return results;
        }
        else {
            max = Math.min(this.length, omega.length), results = new Array(max);
            for (counter = 0; counter < max; counter++) {
                results[counter] = primitive(this[counter], omega[counter]);
            }
            return results;
        }
    }
    catch (error) {
    }
    finally {
    }
};
Array.prototype.plus = function (omega) {
    try {
        var counter, max = Math.min(this.length, omega.length), results = new Array(max);
        for (counter = 0; counter < max; counter++) {
            results[counter] = this[counter] + omega[counter];
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
};
Array.prototype.minus = function (omega) {
    try {
        var counter, max = Math.min(this.length, omega.length), results = new Array(max);
        for (counter = 0; counter < max; counter++) {
            results[counter] = this[counter] - omega[counter];
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
};
Array.prototype.times = function (omega) {
    if (typeof omega === 'undefined') {
        return this.primitive(omega, function (alphaItem, omegaItem) {
            return alphaItem > 0 ? 1 : alphaItem < 0 ? -1 : 0;
        });
    }
    else {
        return this.primitive(omega, function (alphaItem, omegaItem) {
            return alphaItem * omegaItem;
        });
    }
    try {
        var counter, max = Math.min(this.length, omega.length), results = new Array(max);
        for (counter = 0; counter < max; counter++) {
            results[counter] = this[counter] * omega[counter];
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
};
Array.prototype.divide = function (omega) {
    try {
        var counter, max = Math.min(this.length, omega.length), results = new Array(max);
        for (counter = 0; counter < max; counter++) {
            results[counter] = this[counter] / omega[counter];
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
};
Array.prototype.rotate = function (omega) {
    try {
        var counter, max = omega.length, offSet = this[0], results = new Array(max);
        if (this > 0) {
            for (counter = 0; counter < max; counter++) {
                results[counter] = omega[counter + offSet >= max ? counter + offSet - max : counter + offSet];
            }
        }
        else {
            for (counter = 0; counter < max; counter++) {
                results[counter] = omega[counter + offSet < 0 ? counter + offSet + max : counter + offSet];
            }
        }
        return results;
    }
    catch (error) {
    }
    finally {
    }
};
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
//# sourceMappingURL=dyadic.js.map