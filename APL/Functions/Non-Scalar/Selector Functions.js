var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.gradeUp = function (alpha, indices, low, high) {
            alpha = Array.isArray(alpha) ? alpha : [alpha];
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
            alpha = Array.isArray(alpha) ? alpha : [alpha];
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
            NonScalar.gradeDown(alpha, indices, low, j);
            NonScalar.gradeDown(alpha, indices, i, high);
            return indices;
        };
        NonScalar.indexGenerator = function (alpha) {
            var results = new Array(alpha);
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter;
            }
            return results;
        };
        addProperty([Number, Array], 'indexGenerator', NonScalar.indexGenerator);
        addProperty(Array, "gradeUp", NonScalar.gradeUp, false);
        addProperty(Array, "gradeDown", NonScalar.gradeDown, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.deal = function (omega) {
            var l = (Array.isArray(omega)) ? omega[0] : omega;
            var r = (Array.isArray(this)) ? this[0] : this;
            var deal = function (omega, alpha) {
                var results = omega[APLPrefix + 'indexGenerator'];
                var h, j;
                for (var i = 0; i < alpha; i++) {
                    j = i + Math.floor(Math.random() * (omega - i));
                    h = results[i];
                    results[i] = results[j];
                    results[j] = h;
                }
                return results.slice(0, alpha);
            };
            return deal(l.valueOf(), r.valueOf());
        };
        addPrototype([Array, Number], 'deal', NonScalar.deal);
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
})(Dyadic || (Dyadic = {}));
