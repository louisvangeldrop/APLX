var Dyadic;
(function (Dyadic) {
    var Scalar;
    (function (Scalar) {
        Scalar.plus = function (alpha, omega) { return alpha + omega; };
        Number.prototype[prefix + 'plus'] = function (omega) { return this.valueOf() + omega; };
        Scalar.minus = function (alpha, omega) { return alpha - omega; };
        Number.prototype[prefix + 'minus'] = function (omega) { return this.valueOf() - omega; };
        Scalar.times = function (alpha, omega) { return alpha * omega; };
        Number.prototype[prefix + 'times'] = function (omega) { return this.valueOf() * omega; };
        Scalar.divide = function (alpha, omega) { return alpha / omega; };
        Number.prototype[prefix + 'divide'] = function (omega) { return this.valueOf() / omega; };
        Scalar.residue = function (alpha, omega) { return omega % alpha; };
        Number.prototype[prefix + 'residue'] = function (omega) { return this.valueOf() % omega; };
        Scalar.minimum = function (alpha, omega) { return Math.min(alpha, omega); };
        Number.prototype[prefix + 'minimum'] = function (omega) { return Math.min(this.valueOf(), omega); };
        Scalar.maximum = function (alpha, omega) { return Math.max(alpha, omega); };
        Number.prototype[prefix + 'maximun'] = function (omega) { return Math.max(this.valueOf(), +omega); };
        Scalar.power = function (alpha, omega) { return Math.pow(alpha, omega); };
        Number.prototype[prefix + 'power'] = function (omega) { return Math.pow(this.valueOf(), omega); };
        Scalar.logarithm = function (alpha, omega) { return Math.log(omega) / Math.log(alpha); };
        Number.prototype[prefix + 'logarithm'] = function (omega) { return Math.log(omega) / Math.log(this.valueOf()); };
        Scalar.binomial = function (alpha, omega) { (alpha < omega || omega < 0) ? 0 : alpha.factorial / (omega.factorial * (alpha - omega).factorial); };
        Number.prototype[prefix + 'binomial'] = function (omega) { return this.valueOf().factorial / (omega.factorial * (this.valueOf() - omega).factorial); };
        Scalar.rotate = function (omega) {
            var myThis = this.valueOf();
            var counter, max = omega.length, results = new Array(max);
            if (myThis > 0) {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis >= max ? counter + myThis - max : counter + myThis];
                }
            }
            else {
                for (counter = 0; counter < max; counter++) {
                    results[counter] = omega[counter + myThis < 0 ? counter + myThis - max : counter + myThis];
                }
            }
            return results;
        };
        Number.prototype[prefix + 'rotate'] = Scalar.rotate;
        Scalar.deal = function (omega) {
            var deal = function (omega, alpha) {
                var results = omega.indexGenerator;
                var h, j;
                for (var i = 0; i < alpha; i++) {
                    j = i + Math.floor(Math.random() * (omega - i));
                    h = results[i];
                    results[i] = results[j];
                    results[j] = h;
                }
                return results.slice(0, alpha);
            };
            return deal(omega, this.valueOf());
        };
        Number.prototype[prefix + 'deal'] = Scalar.deal;
    })(Scalar = Dyadic.Scalar || (Dyadic.Scalar = {}));
    var Vector;
    (function (Vector) {
        Vector.primitive = function (omega, primitive) {
            var counter, max, results;
            if (typeof primitive === 'undefined') {
                primitive = omega;
                max = this.length;
                results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter]);
                }
                return results;
            }
            else {
                if (Array.isArray(omega)) {
                    max = Math.min(this.length, omega.length),
                        results = new Array(max);
                    for (counter = 0; counter < max; counter++) {
                        results[counter] = primitive(this[counter], omega[counter]);
                    }
                    return results;
                }
                else {
                    max = this.length;
                    results = new Array(max);
                    for (counter = 0; counter < max; counter++) {
                        results[counter] = primitive(this[counter], omega);
                    }
                    return results;
                }
            }
        };
        Array.prototype[prefix + 'primitive'] = Vector.primitive;
        Vector.plus = function (omega) {
            return this.primitive(omega, Scalar.plus);
        };
        Array.prototype[prefix + 'plus'] = Vector.plus;
        Vector.minus = function (omega) {
            return this.primitive(omega, Scalar.minus);
        };
        Array.prototype[prefix + 'minus'] = Vector.minus;
        Vector.times = function (omega) {
            return this.primitive(omega, Scalar.times);
        };
        Array.prototype[prefix + 'times'] = Vector.times;
        Vector.divide = function (omega) {
            return this.primitive(omega, Scalar.divide);
        };
        Array.prototype[prefix + 'divide'] = Vector.divide;
        Vector.residue = function (omega) {
            return this.primitive(omega, Scalar.residue);
        };
        Array.prototype[prefix + 'residue'] = Vector.residue;
        Vector.minimum = function (omega) {
            return this.primitive(omega, Scalar.minimum);
        };
        Array.prototype[prefix + 'minimum'] = Vector.minimum;
        Vector.maximum = function (omega) {
            return this.primitive(omega, Scalar.maximum);
        };
        Array.prototype[prefix + 'maximum'] = Vector.maximum;
        Vector.power = function (omega) {
            return this.primitive(omega, Scalar.power);
        };
        Array.prototype[prefix + 'power'] = Vector.power;
        Vector.logarithm = function (omega) {
            return this.primitive(omega, Scalar.logarithm);
        };
        Array.prototype[prefix + 'logarithm'] = Vector.logarithm;
        Vector.binomial = function (omega) {
            return this.primitive(omega, Scalar.binomial);
        };
        Array.prototype[prefix + 'binomial'] = Vector.binomial;
        Vector.rotate = function (omega) {
            return this[0].rotate(omega);
        };
        Array.prototype[prefix + 'rotate'] = Vector.rotate;
        Vector.aplReduce = function (omega) {
            var aplReduce = function (omega, alpha) {
                return alpha.reduceRight(function (l, r) { return omega(r, l); });
            };
            return aplReduce(omega, this);
        };
        Array.prototype[prefix + 'aplReduce'] = Vector.aplReduce;
        Vector.deal = function (omega) {
            return this[0].deal(omega);
        };
        Array.prototype[prefix + 'deal'] = Vector.deal;
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
