var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.inverse = function (omega) { return omega[APLPrefix + 'reciprocal'][APLPrefix + 'divide'](omega.length); };
        addProperty([Array], 'inverse', NonScalar.inverse, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.domino = function (omega) {
            return this[APLPrefix + 'times'](omega[APLPrefix + 'inverse'])[APLPrefix + 'aplReduce'](Dyadic.Scalar.plus);
        };
        addPrototype([Array], 'domino', NonScalar.domino);
        NonScalar.decode = function (omega) {
            var max = this[APLPrefix + 'ravel'].length[APLPrefix + 'maximum'](omega[APLPrefix + 'ravel'].length);
            var alpha = max[APLPrefix + 'reshape'](this);
            omega = max[APLPrefix + 'reshape'](omega);
            var result = omega[max - 1];
            var temp = alpha[max - 1];
            if (max === 1) {
                return result;
            }
            for (var i = max - 2; i > -1; i--) {
                result += omega[i] * temp;
                temp *= alpha[i];
            }
            return result;
        };
        addPrototype([Array, Number], 'decode', NonScalar.decode);
        NonScalar.encode = function (omega) {
            if (typeof omega === 'number') {
                return omega === 0 ? this : this % omega;
            }
            var max = omega.length;
            var result = max[APLPrefix + 'reshape'](0);
            var divider = this;
            for (var i = max - 1; i > -1; i--) {
                if (omega[i] === 0) {
                    result[i] = divider;
                    return result;
                }
                result[i] = divider % omega[i];
                divider = Math.floor(divider / omega[i]);
            }
            return result;
        };
        addPrototype(Number, 'encode', NonScalar.encode);
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
})(Dyadic || (Dyadic = {}));
