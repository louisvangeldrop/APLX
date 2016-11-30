var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.identity = function (alpha) { return alpha; };
        NonScalar.discose = function (alpha) {
            if (Array.isArray(alpha)) {
                return alpha[0];
            }
            else {
                return alpha;
            }
        };
        NonScalar.unique = function (alpha) {
            var index = Monadic.NonScalar.gradeUp(alpha);
            var results = [];
            var bitVector = new Array(alpha.length);
            bitVector[index[0]] = true;
            for (var i = 1; i < alpha.length; i++) {
                bitVector[index[i]] = alpha[index[i - 1]] !== alpha[index[i]];
            }
            for (var i = 0; i < alpha.length; i++) {
                if (bitVector[i] === true) {
                    results.push(alpha[i]);
                }
            }
            return results;
        };
        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false);
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false);
        addProperty([Array, Boolean, Date, Number, String], "disclose", NonScalar.discose, false);
        addProperty([Array, Boolean, Date, Number, String], "unique", NonScalar.unique, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.left = function (omega) {
            return this;
        };
        NonScalar.right = function (omega) {
            return omega;
        };
        NonScalar.pick = function (omega) {
            if (Array.isArray(omega)) {
                return omega[this];
            }
            else {
                return omega;
            }
        };
        NonScalar.take = function (omega) {
            omega = Array.isArray(omega) ? omega : [omega];
            var length = omega.length;
            var size = Math.abs(this.valueOf());
            var max = Math.min(length, size);
            var results = size[APLPrefix + 'reshape'](0);
            if (this.valueOf() > 0) {
                for (var i = 0; i < max; i++) {
                    results[i] = omega[i];
                }
            }
            if (this.valueOf() < 0) {
                var ix = size - max;
                for (var i = 0; i < max; i++) {
                    results[ix + i] = omega[length - max + i];
                }
            }
            return results;
        };
        NonScalar.drop = function (omega) {
            omega = Array.isArray(omega) ? omega : [omega];
            var length = omega.length;
            var resultLength = Math.max(0, length - Math.abs(this));
            var results = new Array(resultLength);
            if (this < 0) {
                for (var i = 0; i < resultLength; i++) {
                    results[i] = omega[i];
                }
            }
            else {
                for (var i = 0; i < resultLength; i++) {
                    results[i] = omega[this + i];
                }
            }
            return results;
        };
        NonScalar.replicate = function (omega) {
            var myThis = this[APLPrefix + 'ravel'];
            var length = myThis[APLPrefix + 'magnitude'][APLPrefix + 'aplReduce'](Dyadic.Scalar.plus);
            var results = new Array(length);
            var ix = 0;
            for (var i = 0; i < myThis.length; i++) {
                var size = 0;
                if (typeof myThis[i] === 'boolean') {
                    size = myThis[i] === true ? 1 : 0;
                }
                else {
                    size = Math.abs(myThis[i]);
                }
                for (var j = 0; j < size; j++) {
                    results[ix] = myThis[i] > 0 ? omega[i] : 0;
                    ix++;
                }
            }
            return results;
        };
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
    addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left);
    addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right);
    addPrototype([Array, Number], 'pick', NonScalar.pick);
    addPrototype([Number], 'take', NonScalar.take);
    addPrototype([Number], 'drop', NonScalar.drop);
    addPrototype([Array, Number], 'replicate', NonScalar.replicate);
})(Dyadic || (Dyadic = {}));
