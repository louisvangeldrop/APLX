var Monadic;
(function (Monadic) {
    ///#region "Scalar Monadic"
    var Atom;
    (function (Atom) {
        // TODO Extra scalar UNDO HACK. See Task List
        Atom.ceiling = function (alpha) { return Math.ceil(alpha); };
        Atom.exponential = function (alpha) { return Math.exp(alpha); };
        Atom.factorial = function (alpha) {
            var result = 1;
            for (var i = 1; i <= alpha; i++) {
                result = result * i;
            }
            return result;
        };
        Atom.floor = function (alpha) { return Math.floor(alpha); };
        Atom.identity = function (alpha) { return alpha; };
        Atom.ln = function (alpha) { return Math.log(alpha); };
        Atom.magnitude = function (alpha) { return Math.abs(alpha); };
        Atom.negative = function (alpha) { return !alpha; };
        Atom.not = function (alpha) { return ~alpha; };
        Atom.pi = function (alpha) { return Math.PI * alpha; };
        Atom.reciprocal = function (alpha) { return 1 / alpha; };
        Atom.roll = function (alpha) { return Math.floor(Math.random() * alpha); };
        Atom.round = function (alpha) { return Math.round(alpha); };
        Atom.signum = function (alpha) { return alpha > 0 ? 1 : alpha < 0 ? -1 : 0; };
        Object.defineProperty(Number.prototype, "ceiling", {
            get: function () {
                return Atom.ceiling(this);
            }
        });
        Object.defineProperty(Number.prototype, "exponential", {
            get: function () {
                return Atom.exponential(this);
            }
        });
        Object.defineProperty(Number.prototype, "factorial", {
            get: function () {
                return Atom.factorial(this);
            }
        });
        Object.defineProperty(Number.prototype, "floor", {
            get: function () {
                var myThis = this.valueOf();
                return Atom.floor(this);
            }
        });
        Object.defineProperty(Number.prototype, "identity", {
            get: function () {
                return Atom.identity(this);
            }
        });
        Object.defineProperty(Number.prototype, "ln", {
            get: function () {
                return Atom.ln(this);
            }
        });
        Object.defineProperty(Number.prototype, "magnitude", {
            get: function () {
                return Atom.magnitude(this);
            }
        });
        Object.defineProperty(Number.prototype, "negative", {
            get: function () {
                return Atom.negative(this);
            }
        });
        Object.defineProperty(Number.prototype, "not", {
            get: function () {
                return Atom.not(this);
            }
        });
        Object.defineProperty(Number.prototype, "pi", {
            get: function () {
                return Atom.pi(this);
            }
        });
        Object.defineProperty(Number.prototype, "reciprocal", {
            get: function () {
                return Atom.reciprocal(this);
            }
        });
        Object.defineProperty(Number.prototype, "roll", {
            get: function () {
                return Atom.roll(this);
            }
        });
        //Object.defineProperty(Number.prototype, "deal", {         // mag niet omdat deal ook een functie is
        //    get: function () {
        //        return roll(this)
        //    }
        //})
        Object.defineProperty(Number.prototype, "round", {
            get: function () {
                return Atom.round(this);
            }
        });
        Object.defineProperty(Number.prototype, "same", {
            get: function () {
                return Atom.identity(this);
            }
        });
        Object.defineProperty(Number.prototype, "signum", {
            get: function () {
                return Atom.signum(this);
            }
        });
        Object.defineProperty(Number.prototype, "indexGenerator", {
            get: function () {
                return NonScalar.indexGenerator(this.valueOf()); // In Chrome 10xsneller dan het gebruik van "this"
                //var max = this.valueOf()
                //var results = new Array<number>(max)    // sneller dan []
                //for (var counter = 0; counter < max; counter++) {
                //    results[counter] = counter
                //}
                //return results
            }
        });
    })(Atom = Monadic.Atom || (Monadic.Atom = {}));
    var Vector;
    (function (Vector) {
        Object.defineProperty(Array.prototype, "ceiling", {
            get: function () {
                return this.primitive(Atom.ceiling);
            }
        });
        Object.defineProperty(Array.prototype, "exponential", {
            get: function () {
                return this.primitive(Atom.exponential);
            }
        });
        Object.defineProperty(Array.prototype, "factorial", {
            get: function () {
                return this.primitive(Atom.factorial); //(alpha) => { return factorial(alpha) }
            }
        });
        Object.defineProperty(Array.prototype, "floor", {
            get: function () {
                return this.primitive(Atom.floor);
            }
        });
        Object.defineProperty(Array.prototype, "identity", {
            get: function () {
                return Atom.identity(this);
            }
        });
        Object.defineProperty(Array.prototype, "same", {
            get: function () {
                return Atom.identity(this);
            }
        });
        Object.defineProperty(Array.prototype, "ln", {
            get: function () {
                return this.primitive(Atom.ln);
            }
        });
        Object.defineProperty(Array.prototype, "magnitude", {
            get: function () {
                return this.primitive(Atom.magnitude);
            }
        });
        Object.defineProperty(Array.prototype, "negative", {
            get: function () {
                return this.primitive(Atom.negative);
            }
        });
        Object.defineProperty(Array.prototype, "not", {
            get: function () {
                return this.primitive(Atom.not);
            }
        });
        Object.defineProperty(Array.prototype, "pi", {
            get: function () {
                return this.primitive(Atom.pi);
            }
        });
        Object.defineProperty(Array.prototype, "reciprocal", {
            get: function () {
                return this.primitive(Atom.reciprocal);
            }
        });
        Object.defineProperty(Array.prototype, "roll", {
            get: function () {
                return this.primitive(Atom.roll);
            }
        });
        Object.defineProperty(Array.prototype, "round", {
            get: function () {
                return this.primitive(Atom.round);
            }
        });
        Object.defineProperty(Array.prototype, "signum", {
            // get: arraySign,   geen parameter, omdat het een property is
            get: function () {
                return this.primitive(Atom.signum);
            }
        });
    })(Vector = Monadic.Vector || (Monadic.Vector = {}));
    ///#endregion
    ///#region "Scalar Monadic"
    var NonScalar;
    (function (NonScalar) {
        NonScalar.indexGenerator = function (alpha) {
            // In Chrome 10xsneller dan het gebruik van "this"
            var results = new Array(alpha); // sneller dan []
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter;
            }
            return results;
        };
        Object.defineProperty(Array.prototype, "indexGenerator", {
            get: function () {
                //
                return this.primitive(NonScalar.indexGenerator);
                try {
                    var length = this[0].valueOf();
                    var counter, results = new Array(length);
                    for (counter = 0; counter < length; counter++) {
                        results[counter] = counter;
                    }
                    return results;
                }
                catch (error) { }
                finally { }
            }
        });
        Object.defineProperty(Array.prototype, "gradeUp", {
            get: function () {
                var compare = function (alpha, omega) {
                    loop++;
                    if (alpha.value < omega.value) {
                        return -1;
                    }
                    else if (alpha.value > omega.value) {
                        return 1;
                    }
                    else {
                        return 0;
                    }
                };
                try {
                    var length = this.length, loop = 0;
                    var thisIndex = new Array(length), results = new Array(length), indices = new Array(length);
                    for (var counter = 0; counter < length; counter++) {
                        thisIndex[counter] = { value: this[counter], index: counter };
                    }
                    results = thisIndex.sort(compare);
                    for (var counter = 0; counter < length; counter++) {
                        indices[counter] = results[counter].index;
                    }
                    console.log('Loops :' + loop);
                    return indices;
                }
                catch (error) {
                }
                finally {
                }
            }
        });
        Object.defineProperty(Array.prototype, "gradeUpQS", {
            get: function () {
                var gradeUp = function (omega, indices, low, high) {
                    try {
                        omega = (typeof omega === 'number') ? [omega] : omega;
                        indices = (typeof (indices) === 'undefined') ? omega.length.indexGenerator : indices;
                        low = (typeof (low) === 'undefined') ? 0 : low;
                        high = (typeof (high) === 'undefined') ? omega.length - 1 : high;
                        if (high <= low)
                            return indices;
                        var midValue = omega[indices[Math.floor((low + high) / 2)]];
                        var t1, t2;
                        var t3, t4;
                        var i = low, j = high;
                        while (i <= j) {
                            t1 = indices[i], t2 = indices[j];
                            t3 = omega[t1] >= midValue, t4 = omega[t2] <= midValue;
                            if (t3 && t4) {
                                indices[i] = t2;
                                indices[j] = t1;
                                i = i + 1;
                                j = j - 1;
                            }
                            else {
                                if (t3 === false) {
                                    i++;
                                }
                                if (t4 === false) {
                                    j--;
                                }
                            }
                        }
                        gradeUp(omega, indices, low, j);
                        gradeUp(omega, indices, i, high);
                    }
                    catch (error) {
                    }
                    finally {
                    }
                    return indices;
                };
                return gradeUp(this);
            }
        });
        Object.defineProperty(Array.prototype, "gradeDown", {
            get: function () {
                var compare = function (alpha, omega) {
                    loop++;
                    if (alpha.value < omega.value) {
                        return 1;
                    }
                    else if (alpha.value > omega.value) {
                        return -1;
                    }
                    else {
                        return 0;
                    }
                };
                try {
                    var length = this.length, loop = 0;
                    var thisIndex = new Array(length), results = new Array(length), indices = new Array(length);
                    for (var counter = 0; counter < length; counter++) {
                        thisIndex[counter] = { value: this[counter], index: counter };
                    }
                    results = thisIndex.sort(compare);
                    for (var counter = 0; counter < length; counter++) {
                        indices[counter] = results[counter].index;
                    }
                    console.log('Loops :' + loop);
                    return indices;
                }
                catch (error) {
                }
                finally {
                }
            }
        });
        Object.defineProperty(Array.prototype, "shape", {
            get: function shape() {
                try {
                    // Array.isArray(this) 
                    return this.length;
                }
                catch (error) {
                }
                finally {
                }
            }
        });
        Object.defineProperty(Array.prototype, "transpose", {
            get: function reverse() {
                try {
                    // Array.isArray(this) 
                    return this.reverse();
                }
                catch (error) {
                }
                finally {
                }
            }
        });
    })(NonScalar || (NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
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
        Scalar.binomial = function (alpha, omega) { return omega.factorial / (alpha.factorial * (omega - alpha).factorial); }; // zie !.coffee voor meer details
        Number.prototype.rotate = function (omega) {
            var myThis = this.valueOf(); // XXX xsneller dan het gebruik van this
            //     try {
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
        //catch (error) {
        //    throw new Error('foutje')
        //}
        //finally {
        //}
        // }
        Number.prototype.deal = function (omega) {
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
            return deal(omega, this.valueOf()); // 6xsneller dan function deal (...){}
        };
    })(Scalar = Dyadic.Scalar || (Dyadic.Scalar = {}));
    var Vector;
    (function (Vector) {
        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        //                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        Array.prototype.primitive = function (omega, primitive) {
            // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
            //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
            var counter, max, results;
            if (typeof primitive === 'undefined') {
                primitive = omega;
                max = this.length;
                results = new Array(max);
                //for (var cnt = 0, max = this.length, results = <any>new Array(max); cnt++;){ }
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter]);
                }
                return results;
            }
            else {
                max = Math.min(this.length, omega.length),
                    results = new Array(max);
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
        Array.prototype.plus = function (omega) {
            return this.primitive(omega, scalar.plus);
        };
        Array.prototype.minus = function (omega) {
            return this.primitive(omega, scalar.minus);
        };
        //Array.prototype.times = function (omega) {
        //    return this.primitive(omega, scalar.times)
        //}
        Array.prototype['times'] = function (omega) {
            return this.primitive(omega, scalar.times);
        };
        Array.prototype.divide = function (omega) {
            return this.primitive(omega, scalar.divide);
        };
        Array.prototype.residue = function (omega) {
            return this.primitive(omega, scalar.residue);
        };
        Array.prototype.minimum = function (omega) {
            return this.primitive(omega, scalar.minimum);
        };
        Array.prototype.maximum = function (omega) {
            return this.primitive(omega, scalar.maximum);
        };
        Array.prototype.power = function (omega) {
            return this.primitive(omega, scalar.power);
        };
        Array.prototype.logarithm = function (omega) {
            return this.primitive(omega, scalar.logarithm);
        };
        Array.prototype.binomial = function (omega) {
            return this.primitive(omega, scalar.binomial);
        };
        Array.prototype.rotate = function (omega) {
            return this[0].rotate(omega);
        };
        Array.prototype.aplReduce = function (omega) {
            var aplReduce = function (omega, alpha) {
                return alpha.reduceRight(function (l, r) { return omega(r, l); });
            };
            return aplReduce(omega, this);
        };
        Array.prototype.deal = function (omega) {
            return this[0].deal(omega); //, this[0].valueOf())
        };
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
//# sourceMappingURL=APL.js.map