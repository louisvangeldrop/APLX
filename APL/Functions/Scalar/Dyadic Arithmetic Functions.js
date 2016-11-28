var Dyadic;
(function (Dyadic) {
    addPrototype([Array, Number, String, Boolean, Date], 'primitive', primitive);
    var Scalar;
    (function (Scalar) {
        Scalar.plus = function (alpha, omega) { return alpha + omega; };
        Scalar.minus = function (alpha, omega) { return alpha - omega; };
        Scalar.times = function (alpha, omega) { return alpha * omega; };
        Scalar.divide = function (alpha, omega) { return alpha / omega; };
        Scalar.residue = function (alpha, omega) { return omega % alpha; };
        Scalar.minimum = function (alpha, omega) { return Math.min(alpha, omega); };
        Scalar.maximum = function (alpha, omega) { return Math.max(alpha, omega); };
        Scalar.power = function (alpha, omega) { return Math.pow(alpha, omega); };
        Scalar.logarithm = function (alpha, omega) { return Math.log(omega) / Math.log(alpha); };
        Scalar.binomial = function (alpha, omega) { (alpha < omega || omega < 0) ? 0 : alpha.factorial / (omega.factorial * (alpha - omega).factorial); };
    })(Scalar = Dyadic.Scalar || (Dyadic.Scalar = {}));
    var Vector;
    (function (Vector) {
        Vector.plus = function (omega) {
            return this.primitive(omega, Scalar.plus);
        };
        Vector.minus = function (omega) {
            return this.primitive(omega, Scalar.minus);
        };
        Vector.times = function (omega) {
            return this.primitive(omega, Scalar.times);
        };
        Vector.divide = function (omega) {
            return this.primitive(omega, Scalar.divide);
        };
        Vector.residue = function (omega) {
            return this.primitive(omega, Scalar.residue);
        };
        Vector.minimum = function (omega) {
            return this.primitive(omega, Scalar.minimum);
        };
        Vector.maximum = function (omega) {
            return this.primitive(omega, Scalar.maximum);
        };
        Vector.power = function (omega) {
            return this.primitive(omega, Scalar.power);
        };
        Vector.logarithm = function (omega) {
            return this.primitive(omega, Scalar.logarithm);
        };
        Vector.binomial = function (omega) {
            return this.primitive(omega, Scalar.binomial);
        };
        addPrototype([Array, Number], 'plus', Vector.plus);
        addPrototype([Array, Number], 'minus', Vector.minus);
        addPrototype([Array, Number], 'times', Vector.times);
        addPrototype([Array, Number], 'divide', Vector.divide);
        addPrototype([Array, Number], 'residue', Vector.residue);
        addPrototype([Array, Number], 'minimum', Vector.minimum);
        addPrototype([Array, Number], 'maximum', Vector.maximum);
        addPrototype([Array, Number], 'power', Vector.power);
        addPrototype([Array, Number], 'logarithm', Vector.logarithm);
        addPrototype([Array, Number], 'binomial', Vector.binomial);
        Vector.rotate = function (omega) {
            return this[0].rotate(omega);
        };
        Vector.aplReduce = function (omega) {
            var aplReduce = function (omega, alpha) {
                return alpha.reduceRight(function (l, r) { return omega(r, l); });
            };
            return aplReduce(omega, this);
        };
        Vector.deal = function (omega) {
            return this[0].deal(omega);
        };
        addPrototype(Array, 'rotate', Vector.rotate);
        addPrototype(Array, 'aplReduce', Vector.aplReduce);
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
