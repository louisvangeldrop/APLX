//#region "Number"
Number.prototype.rotate = function (omega) {
    var myThis = this.valueOf(); // XXX xsneller dan het gebruik van this
    try {
        var counter, max = omega.length, results = new Array(max);
        if (this > 0) {
            for (counter = 0; counter < max; counter++) {
                results[counter] = omega[counter + myThis >= max ? counter + myThis - max : counter + myThis];
            }
        }
        else {
            for (counter = 0; counter < max; counter++) {
                results[counter] = omega[counter + myThis < 0 ? counter + myThis - max : counter + myThis];
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
Number.prototype.deal = function (omega) {
    var deal = function (omega, alpha) {
        var results = omega.indexGenerator;
        var h, j, alpha;
        for (var i = 0; i < alpha; i++) {
            j = i + Math.floor(Math.random() * (omega - i));
            h = results[i];
            results[i] = results[j];
            results[j] = h;
        }
        results.slice(0, this);
        return results;
    };
    return deal(omega, this.valueOf()); // 6xsneller dan 
};
//#endregion
//#region "Vector"
// Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
//                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
Array.prototype.primitive = function (omega, primitive) {
    try {
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
// Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
////                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
Array.prototype.plus = function (omega) {
    return this.primitive(omega, function (thisItem, omegaItem) {
        return thisItem + omegaItem;
    });
};
Array.prototype.minus = function (omega) {
    return this.primitive(omega, function (thisItem, omegaItem) {
        return thisItem - omegaItem;
    });
};
Array.prototype.times = function times(omega) {
    return this.primitive(omega, function (thisItem, omegaItem) {
        return thisItem * omegaItem;
    });
};
Array.prototype.divide = function (omega) {
    return this.primitive(omega, function (thisItem, omegaItem) {
        return thisItem / omegaItem;
    });
};
Array.prototype.rotate = function (omega) {
    return this[0].rotate(omega);
};
Array.prototype.aplReduce = function (omega) {
    var aplReduce = function (omega, alpha) {
        return alpha.reduceRight(function (l, r) {
            return omega(r, l);
        });
    };
    return aplReduce(omega, this);
};
Array.prototype.deal = function (omega) {
    return this[0].deal(omega); //, this[0].valueOf())
};
//#endregion 
//# sourceMappingURL=dyadic.js.map