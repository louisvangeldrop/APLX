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
        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false);
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false);
        addProperty([Array, Boolean, Date, Number, String], "disclose", NonScalar.discose, false);
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
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
    addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left);
    addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right);
    addPrototype([Array, Number], 'pick', NonScalar.pick);
    addPrototype([Array, Boolean, Date, Number, String], 'take', NonScalar.take);
})(Dyadic || (Dyadic = {}));
