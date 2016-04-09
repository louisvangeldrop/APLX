var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.reverse = function (alpha) { return alpha.reverse(); };
        NonScalar.shape = function (alpha) { return alpha.length; };
        Object.defineProperty(Array.prototype, prefix + "transpose", {
            get: function () {
                return NonScalar.reverse(this);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "shape", {
            get: function () {
                return NonScalar.shape(this);
            }
        });
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
