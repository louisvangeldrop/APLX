var Dyadic;
(function (Dyadic) {
    var Scalar;
    (function (Scalar) {
        Number.prototype.rotate = function (omega) {
            var myThis = this.valueOf(); // XXX xsneller dan het gebruik van this
            try {
                var counter, max = omega.length, results = new Array(max);
                if (this > 0) {
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
            }
            catch (error) {
                throw new Error('foutje');
            }
            finally {
            }
        };
        Number.prototype.deal = function (omega) {
            var deal = function (omega, alpha) {
                var results = omega.indexGenerator;
                var h, j, alpha;
                for (var i = 0; i < alpha; i++) {
                    j = i + Math.floor(Math.random() * (omega - i));
                    h = results[i];
                    results[i] = results[j];
                    results[j] = h;
                }
                return results.slice(0, alpha);
            };
            return deal(omega, this.valueOf()); // 6xsneller dan function deal (...){}
        };
    })(Scalar = Dyadic.Scalar || (Dyadic.Scalar = {}));
    var Vector;
    (function (Vector) {
        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        //                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        Array.prototype.primitive = function (omega, primitive) {
            //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
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
                max = Math.min(this.length, omega.length), results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter], omega[counter]);
                }
                return results;
            }
            //}
            //catch (error) {
            //   // throw error
            //}
            //finally {
            //}
        };
        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        ////                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        Vector.plus = function (alpha, omega) {
            return alpha + omega;
        };
        Array.prototype.plus = function (omega) {
            return this.primitive(omega, Vector.plus);
        };
        Vector.minus = function (alpha, omega) {
            return alpha - omega;
        };
        Array.prototype.minus = function (omega) {
            return this.primitive(omega, Vector.minus);
        };
        Vector.times = function (alpha, omega) {
            return alpha * omega;
        };
        Array.prototype.times = function (omega) {
            return this.primitive(omega, Vector.times);
        };
        Vector.divide = function (alpha, omega) {
            return alpha / omega;
        };
        Array.prototype.divide = function (omega) {
            return this.primitive(omega, Vector.divide);
        };
        Vector.residue = function (alpha, omega) {
            return omega % alpha;
        };
        Array.prototype.residue = function (omega) {
            return this.primitive(omega, Vector.residue);
        };
        Vector.minimum = function (alpha, omega) {
            return Math.min(alpha, omega);
        };
        Array.prototype.minimum = function (omega) {
            return this.primitive(omega, Vector.minimum);
        };
        Vector.maximum = function (alpha, omega) {
            return Math.max(alpha, omega);
        };
        Array.prototype.maximum = function (omega) {
            return this.primitive(omega, Vector.maximum);
        };
        Vector.power = function (alpha, omega) {
            return Math.pow(alpha, omega);
        };
        Array.prototype.power = function (omega) {
            return this.primitive(omega, Vector.power);
        };
        Vector.logarithm = function (alpha, omega) {
            return Math.log(omega) / Math.log(alpha);
        };
        Array.prototype.logarithm = function (omega) {
            return this.primitive(omega, Vector.logarithm);
        };
        Vector.binomial = function (alpha, omega) {
            return omega.factorial / (alpha.factorial * (omega - alpha).factorial);
        };
        Array.prototype.binomial = function (omega) {
            return this.primitive(omega, Vector.binomial);
        };
        Array.prototype.rotate = function (omega) {
            return this[0].rotate(omega);
        };
        Array.prototype.aplReduce = function (omega) {
            var aplReduce = function (omega, alpha) {
                return alpha.reduceRight(function (l, r) {
                    return omega(r, l);
                });
            };
            return aplReduce(omega, this);
        };
        Array.prototype.deal = function (omega) {
            return this[0].deal(omega); //, this[0].valueOf())
        };
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
//# sourceMappingURL=dyadic.js.map