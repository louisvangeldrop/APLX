var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.gradeUp = function (alpha, indices, low, high) {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha;
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices;
            low = (typeof (low) === 'undefined') ? 0 : low;
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high;
            if (high <= low)
                return indices;
            var midValue = alpha[indices[Math.floor((low + high) / 2)]];
            var t1, t2;
            var t3, t4;
            var i = low, j = high;
            while (i <= j) {
                t1 = indices[i], t2 = indices[j];
                t3 = alpha[t1] >= midValue, t4 = alpha[t2] <= midValue;
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
            NonScalar.gradeUp(alpha, indices, low, j);
            NonScalar.gradeUp(alpha, indices, i, high);
            return indices;
        };
        NonScalar.gradeDown = function (alpha, indices, low, high) {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha;
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices;
            low = (typeof (low) === 'undefined') ? 0 : low;
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high;
            if (high <= low)
                return indices;
            var midValue = alpha[indices[Math.floor((low + high) / 2)]];
            var t1, t2;
            var t3, t4;
            var i = low, j = high;
            while (i <= j) {
                t1 = indices[i], t2 = indices[j];
                t3 = alpha[t1] <= midValue, t4 = alpha[t2] >= midValue;
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
            NonScalar.gradeUp(alpha, indices, low, j);
            NonScalar.gradeUp(alpha, indices, i, high);
            return indices;
        };
        NonScalar.indexGenerator = function (alpha) {
            var results = new Array(alpha);
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter;
            }
            return results;
        };
        Object.defineProperty(Array.prototype, prefix + "gradeUpJS", {
            get: function () {
                var compare = function (alpha, omega) {
                    loop++;
                    if (alpha.value < omega.value) {
                        return -1;
                    }
                    else if (alpha.value > omega.value) {
                        return 1;
                    }
                    else {
                        return 0;
                    }
                };
                var length = this.length, loop = 0;
                var thisIndex = new Array(length), results = new Array(length), indices = new Array(length);
                for (var counter = 0; counter < length; counter++) {
                    thisIndex[counter] = { value: this[counter], index: counter };
                }
                results = thisIndex.sort(compare);
                for (var counter = 0; counter < length; counter++) {
                    indices[counter] = results[counter].index;
                }
                console.log('Loops :' + loop);
                return indices;
            }
        });
        Object.defineProperty(Array.prototype, prefix + "gradeUp", {
            get: function () {
                return NonScalar.gradeUp(this);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "gradeDown", {
            get: function () {
                return NonScalar.gradeDown(this, this.length.indexGenerator, 0, this.length - 1);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "gradeDownJS", {
            get: function () {
                var compare = function (alpha, omega) {
                    loop++;
                    if (alpha.value < omega.value) {
                        return 1;
                    }
                    else if (alpha.value > omega.value) {
                        return -1;
                    }
                    else {
                        return 0;
                    }
                };
                var length = this.length, loop = 0;
                var thisIndex = new Array(length), results = new Array(length), indices = new Array(length);
                for (var counter = 0; counter < length; counter++) {
                    thisIndex[counter] = { value: this[counter], index: counter };
                }
                results = thisIndex.sort(compare);
                for (var counter = 0; counter < length; counter++) {
                    indices[counter] = results[counter].index;
                }
                console.log('Loops :' + loop);
                return indices;
            }
        });
        Object.defineProperty(Number.prototype, prefix + "indexGenerator", {
            get: function () {
                return NonScalar.indexGenerator(this.valueOf());
            }
        });
        Object.defineProperty(Array.prototype, prefix + "indexGenerator", {
            get: function () {
                return this.primitive(NonScalar.indexGenerator);
            }
        });
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
