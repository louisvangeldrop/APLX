var Dyadic;
(function (Dyadic) {
    var Scalar;
    (function (Scalar) {
        Scalar.and = function (alpha, omega) { return (alpha && omega); };
        Scalar.nand = function (alpha, omega) { return !(alpha && omega); };
        Scalar.or = function (alpha, omega) { return (alpha || omega); };
        Scalar.nor = function (alpha, omega) { return !(alpha || omega); };
        Scalar.lt = function (alpha, omega) { return alpha < omega; };
        Scalar.le = function (alpha, omega) { return alpha <= omega; };
        Scalar.gt = function (alpha, omega) { return alpha > omega; };
        Scalar.ge = function (alpha, omega) { return alpha >= omega; };
        Scalar.eq = function (alpha, omega) { return alpha === omega; };
        Scalar.neq = function (alpha, omega) { return alpha !== omega; };
        Scalar.gcd = function (alpha, omega) { while (omega) {
            var t = omega;
            omega = alpha % omega;
            alpha = t;
        } ; return alpha; };
        Scalar.lcm = function (alpha, omega) { return (!alpha || !omega) ? 0 : Math.abs((alpha * omega) / Scalar.gcd(alpha, omega)); };
    })(Scalar = Dyadic.Scalar || (Dyadic.Scalar = {}));
    var Vector;
    (function (Vector) {
        Vector.and = function (omega) { return this.primitive(omega, Scalar.and); };
        Vector.nand = function (omega) { return this.primitive(omega, Scalar.nand); };
        Vector.or = function (omega) { return this.primitive(omega, Scalar.or); };
        Vector.nor = function (omega) { return this.primitive(omega, Scalar.nor); };
        Vector.lt = function (omega) { return this.primitive(omega, Scalar.lt); };
        Vector.le = function (omega) { return this.primitive(omega, Scalar.le); };
        Vector.gt = function (omega) { return this.primitive(omega, Scalar.gt); };
        Vector.ge = function (omega) { return this.primitive(omega, Scalar.ge); };
        Vector.eq = function (omega) { return this.primitive(omega, Scalar.eq); };
        Vector.neq = function (omega) { return this.primitive(omega, Scalar.neq); };
        Vector.gcd = function (omega) { return this.primitive(omega, Scalar.gcd); };
        Vector.lcm = function (omega) { return this.primitive(omega, Scalar.lcm); };
        addPrototype([Array, Boolean], 'and', Vector.and);
        addPrototype([Array, Boolean], 'nand', Vector.nand);
        addPrototype([Array, Boolean], 'or', Vector.or);
        addPrototype([Array, Boolean], 'nor', Vector.nor);
        addPrototype([Array, Number], 'lt', Vector.lt);
        addPrototype([Array, Number], 'le', Vector.le);
        addPrototype([Array, Number], 'gt', Vector.gt);
        addPrototype([Array, Number], 'ge', Vector.ge);
        addPrototype([Array, Number, String], 'eq', Vector.eq);
        addPrototype([Array, Number, String], 'neq', Vector.neq);
        addPrototype([Array, Number], 'gcd', Vector.gcd);
        addPrototype([Array, Number], 'lcm', Vector.lcm);
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
