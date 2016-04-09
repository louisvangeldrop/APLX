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
        Scalar.identity = function (alpha) { return alpha; };
        Scalar.ln = function (alpha) { return Math.log(alpha); };
        Scalar.magnitude = function (alpha) { return Math.abs(alpha); };
        Scalar.negative = function (alpha) { return !alpha; };
        Scalar.not = function (alpha) { return ~alpha; };
        Scalar.pi = function (alpha) { return Math.PI * alpha; };
        Scalar.reciprocal = function (alpha) { return 1 / alpha; };
        Scalar.roll = function (alpha) { return Math.floor(Math.random() * alpha); };
        Scalar.round = function (alpha) { return Math.round(alpha); };
        Scalar.signum = function (alpha) { return alpha > 0 ? 1 : alpha < 0 ? -1 : 0; };
        Object.defineProperty(Number.prototype, prefix + "ceiling", {
            get: function () {
                return Scalar.ceiling(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "exponential", {
            get: function () {
                return Scalar.exponential(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "factorial", {
            get: function () {
                return Scalar.factorial(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "floor", {
            get: function () {
                var myThis = this.valueOf();
                return Scalar.floor(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "identity", {
            get: function () {
                return Scalar.identity(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "ln", {
            get: function () {
                return Scalar.ln(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "magnitude", {
            get: function () {
                return Scalar.magnitude(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "negative", {
            get: function () {
                return Scalar.negative(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "not", {
            get: function () {
                return Scalar.not(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "pi", {
            get: function () {
                return Scalar.pi(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "reciprocal", {
            get: function () {
                return Scalar.reciprocal(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "roll", {
            get: function () {
                return Scalar.roll(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "round", {
            get: function () {
                return Scalar.round(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "same", {
            get: function () {
                return Scalar.identity(this);
            }
        });
        Object.defineProperty(Number.prototype, prefix + "signum", {
            get: function () {
                return Scalar.signum(this);
            }
        });
    })(Scalar = Monadic.Scalar || (Monadic.Scalar = {}));
    var Vector;
    (function (Vector) {
        Object.defineProperty(Array.prototype, prefix + "ceiling", {
            get: function () {
                return this.primitive(Scalar.ceiling);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "exponential", {
            get: function () {
                return this.primitive(Scalar.exponential);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "factorial", {
            get: function () {
                return this.primitive(Scalar.factorial);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "floor", {
            get: function () {
                return this.primitive(Scalar.floor);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "identity", {
            get: function () {
                return Scalar.identity(this);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "same", {
            get: function () {
                return Scalar.identity(this);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "ln", {
            get: function () {
                return this.primitive(Scalar.ln);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "magnitude", {
            get: function () {
                return this.primitive(Scalar.magnitude);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "negative", {
            get: function () {
                return this.primitive(Scalar.negative);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "not", {
            get: function () {
                return this.primitive(Scalar.not);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "pi", {
            get: function () {
                return this.primitive(Scalar.pi);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "reciprocal", {
            get: function () {
                return this.primitive(Scalar.reciprocal);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "roll", {
            get: function () {
                return this.primitive(Scalar.roll);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "round", {
            get: function () {
                return this.primitive(Scalar.round);
            }
        });
        Object.defineProperty(Array.prototype, prefix + "signum", {
            get: function () {
                return this.primitive(Scalar.signum);
            }
        });
    })(Vector = Monadic.Vector || (Monadic.Vector = {}));
})(Monadic || (Monadic = {}));
