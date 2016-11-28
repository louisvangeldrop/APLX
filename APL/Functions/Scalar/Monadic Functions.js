var Monadic;
(function (Monadic) {
    var Scalar;
    (function (Scalar) {
        Scalar.ceiling = function (alpha) { return Math.ceil(alpha); };
        Scalar.exponential = function (alpha) { return Math.exp(alpha); };
        Scalar.factorial = function (alpha, omega) {
            var result = 1;
            omega = (typeof omega === 'undefined') ? 1 : omega + 1;
            for (var i = omega; i <= alpha; i++) {
                result = result * i;
            }
            return result;
        };
        Scalar.floor = function (alpha) { return Math.floor(alpha); };
        Scalar.ln = function (alpha) { return Math.log(alpha); };
        Scalar.magnitude = function (alpha) { return Math.abs(alpha); };
        Scalar.negative = function (alpha) { return -alpha; };
        Scalar.not = function (alpha) { return !alpha; };
        Scalar.pi = function (alpha) { return Math.PI * alpha; };
        Scalar.reciprocal = function (alpha) { return 1 / alpha; };
        Scalar.roll = function (alpha) { return Math.floor(Math.random() * alpha); };
        Scalar.round = function (alpha) { return Math.round(alpha); };
        Scalar.signum = function (alpha) { return alpha > 0 ? 1 : alpha < 0 ? -1 : 0; };
        addProperty([Array, Number], 'ceiling', Scalar.ceiling);
        addProperty([Array, Number], "exponential", Scalar.exponential);
        addProperty([Array, Number], "factorial", Scalar.factorial);
        addProperty([Array, Number], "floor", Scalar.floor);
        addProperty([Array, Number], "ln", Scalar.ln);
        addProperty([Array, Number], "magnitude", Scalar.magnitude);
        addProperty([Array, Number], "negative", Scalar.negative);
        addProperty([Array, Number, Boolean], "not", Scalar.not);
        addProperty([Array, Number], "pi", Scalar.pi);
        addProperty([Array, Number], "reciprocal", Scalar.reciprocal);
        addProperty([Array, Number], "roll", Scalar.roll);
        addProperty([Array, Number], "round", Scalar.round);
        addProperty([Array, Number], "signum", Scalar.signum);
    })(Scalar = Monadic.Scalar || (Monadic.Scalar = {}));
})(Monadic || (Monadic = {}));
