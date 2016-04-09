var __extends = (this && this.__extends) || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
};
var APLPrefix = ""; //"APLX"
var primitive = function (omega, primitive) {
    // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
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
        if (Array.isArray(this)) {
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
                    results[counter] = primitive(this[counter], omega.valueOf());
                }
                return results;
            }
        }
        else {
            if (Array.isArray(omega)) {
                max = omega.length,
                    results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this.valueOf(), omega[counter]);
                }
                return results;
            }
            else {
                return primitive(this.valueOf(), omega.valueOf());
            }
        }
    }
    //}
    //catch (error) {
    //   // throw error
    //}
    //finally {
    //}
};
var addPrototype = function (object, name, func) {
    if (Array.isArray(object) === true) {
        for (var _i = 0, object_1 = object; _i < object_1.length; _i++) {
            var i = object_1[_i];
            addPrototype(i, name, func);
        }
    }
    else {
        object.prototype[prefix + name] = object.prototype[prefix + name] || func;
    }
};
var addProperty = function (object, name, func, primitive) {
    if (primitive === void 0) { primitive = true; }
    if (Array.isArray(object) === true) {
        for (var _i = 0, object_2 = object; _i < object_2.length; _i++) {
            var i = object_2[_i];
            addProperty(i, name, func, primitive);
        }
    }
    else {
        if (object.name === 'Array') {
            if (primitive === true) {
                Object.defineProperty(object.prototype, prefix + name, {
                    get: function () {
                        return this.primitive(func); // return this[APLPrefix + "primitive"](func)         
                    }
                });
            }
            else {
                Object.defineProperty(object.prototype, prefix + name, {
                    get: function () {
                        return func(this);
                    }
                });
            }
        }
        else {
            Object.defineProperty(object.prototype, prefix + name, {
                get: function () {
                    return func(this.valueOf());
                }
            });
        }
    }
};
// https://github.com/Microsoft/TypeScript/wiki
//import {Dyadic} from "Dyadic"     // In dyadic.ts export toeveoegen aan namespace Dyadic
//import {APL} from "diversen";
//import vector = Dyadic.Vector
//import scalar = Dyadic.Scalar
var APLXTest = (function () {
    /**
    * Creates a new HTMLElement
    */
    function APLXTest(element) {
        this.element = element;
        this.element.innerHTML += "De tijd is: ";
        this.span = document.createElement('span');
        this.element.appendChild(this.span);
        this.span.innerText = new Date().toUTCString();
        //      this.element.innerHTML += "CPU time is: ";
        this.spanCPU = document.createElement('span');
        this.element.appendChild(this.spanCPU);
        this.spanCPU.innerHTML = "<br/>";
    }
    APLXTest.prototype.start = function () {
        var _this = this;
        // console.profile('Number.iota')
        //  var aplg= apl.gradeDown
        var vector = Dyadic.Vector;
        var scalar = Dyadic.Scalar;
        var parms = location.search.split('?');
        var aantal = parms.length > 1 ? parseFloat(parms[1].replace('/', ' ')) : 5e6;
        var spanCPU = this.spanCPU;
        var nestedArray = [4, 5][APLPrefix + "indexGenerator"];
        var range0tot9 = (10)[APLPrefix + "indexGenerator"];
        var testje = [3, 4, 5][APLPrefix + "aplReduce"](scalar.minus);
        this.spanCPU.innerHTML += "\n Aantal elementen = " + aantal + " <br />";
        //[ll,aantal]=[aantal,ll]
        var t0;
        var startPerformance = performance.now();
        var dd; //= aantal.deal(aantal)
        var cc;
        var rr;
        showPerformance(spanCPU, performance.now(), 'deal', dd = aantal[APLPrefix + "deal"](aantal));
        showPerformance(spanCPU, performance.now(), 'depth', cc = dd[APLPrefix + "depth"]);
        showPerformance(spanCPU, performance.now(), 'depthLength', cc = dd[APLPrefix + "depthLength"]);
        showPerformance(spanCPU, performance.now(), 'enlist', dd = dd[APLPrefix + "enlist"]);
        showPerformance(spanCPU, performance.now(), 'reshape', rr = (aantal[APLPrefix + "reshape"](dd)));
        //var maxValue = dd.aplReduce((l, r) => { return Math.max(l, r) })
        var apldd; //:number[]
        var aplcc = new APL.Vector(null, 10);
        showPerformance(spanCPU, performance.now(), 'APLVector', apldd = new APL.Vector(dd));
        showPerformance(spanCPU, performance.now(), "signum", dd.signum);
        showPerformance(spanCPU, performance.now(), "identity", dd.same);
        //var ss = dd.slice()
        //ss[0] = 0
        t0 = performance.now();
        //  var qq = dd.gradeDown  //   QS Chrome is even snel als Array.sort met index. Bij IE Array.sort veel sneller
        try {
            showPerformance(spanCPU, performance.now(), 'gradeup/down', dd.gradeUp);
        }
        catch (err) { }
        finally { }
        var cpuGradeUp = performance.now() - t0;
        //this.spanCPU.innerHTML += "\n gradeUp/Down CPU-tijd: " + t0.toString() + "<br />"
        //t0 = performance.now()
        //qq = dd.sort()
        //t0 = performance.now() - t0
        // this.spanCPU.innerHTML += "\n Array.sort CPU-tijd: " + t0.toString() + "<br />"
        //     var zz = gradeUpSort(dd)       // [2,3,4,5,4,3,2])
        //var sign = dd.sign
        //   sign=dd.sign()
        //var bb=dd+dd not supported
        var tn = (10).plus(9);
        showPerformance(spanCPU, performance.now(), "negate", dd.negative);
        showPerformance(spanCPU, performance.now(), "times", dd.times(dd));
        showPerformance(spanCPU, performance.now(), "divide", dd.divide(dd));
        showPerformance(spanCPU, performance.now(), "map -alpha", dd.map(function (alpha) { return -alpha; }));
        showPerformance(spanCPU, performance.now(), 'ceiling', dd.ceiling);
        showPerformance(spanCPU, performance.now(), 'rotate', [-10].rotate(dd));
        performance.mark("Array.APLreduce start");
        var min = dd.aplReduce(scalar.minus);
        performance.mark("Array.APLreduce stop");
        showPerformance(spanCPU, performance.now(), "Array.reduceRight", dd.reduceRight(scalar.plus));
        //       console.log(`min: ${min} som: ${som}`)
        performance.measure("Array.APLreduce", "Array.APLreduce start", "Array.APLreduce stop");
        // Print marks
        var perfMarks = performance.getEntriesByType("measure"); // "mark"
        var perfEntries = performance.getEntries();
        for (var i = 0; i < perfMarks.length; i++) {
            this.spanCPU.innerHTML +=
                "Name: " + perfMarks[i].name + " - " +
                    "CPU Time: " + perfMarks[i].duration + "<br />"; //  perfMarks[i].startTime
        }
        var totalCpu = performance.now() - startPerformance;
        this.spanCPU.innerHTML += "\n totale CPU-tijd: " + totalCpu + "<br />";
        this.spanCPU.innerHTML += "\n totale CPU-tijd-gradeUp: " + (totalCpu - cpuGradeUp) + "<br />";
        this.timerToken = setInterval(function () { return _this.span.innerHTML = new Date().toUTCString(); }, 500);
    };
    APLXTest.prototype.stop = function () {
        clearTimeout(this.timerToken);
    };
    return APLXTest;
}());
var showPerformance = function (spanCPU, performanceNow, text, expression) {
    //   var result = expression
    console.time("");
    var t0 = performance.now() - performanceNow;
    spanCPU.innerHTML += "\n " + text + " CPU-tijd: " + t0.toString() + " <br />";
    // return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
};
window.onload = function () {
    var el = document.getElementById('content');
    var greeter = new APLXTest(el);
    greeter.start();
};
// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL
var APL;
(function (APL) {
    //type APLArray=Array<string|number|boolean|any>
    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}
    /**
    * Extends the Array object wityh APL array functions. Subclassing of Array not yet supported
    */
    var Vector = (function (_super) {
        __extends(Vector, _super);
        function Vector(Vector, length) {
            _super.call(this, Vector ? Vector : length);
            this.Vector = Vector;
            _super.call(this, typeof Vector !== 'null' ? Vector : length);
            var aa = [10].indexGenerator;
            for (var _i = 0, aa_1 = aa; _i < aa_1.length; _i++) {
                var i = aa_1[_i];
                i;
            }
        }
        Object.defineProperty(Vector.prototype, "louis", {
            get: function () {
                var bb = this.Vector.length;
                return bb;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(Vector.prototype, "rho", {
            // property "shape"
            /**
             *
             * @param {number}
             * @return {Array} Aantal element in de vector
             */
            get: function () {
                return this.Vector.length;
            },
            /**
           * Zet het aantal elementen in de vector
            * @param {number} Aantal element in de vector
            */
            set: function (length) {
                //TODO: Zet de shape van het Array. 
            },
            enumerable: true,
            configurable: true
        });
        return Vector;
    }(Array));
    APL.Vector = Vector;
    var APLArray = (function () {
        function APLArray(APLArray, length) {
            this.APLArray = APLArray;
            this.length = length;
            this.APLArray = typeof APLArray === 'undefined' ? new Array() : APLArray;
            if (typeof length !== 'undefined') {
                APLArray.length = length;
            }
            //  this._array = new Array<T>(length)
        }
        Object.defineProperty(APLArray.prototype, "shape", {
            // property "shape"
            /**
             *
             * @param {number}
             * @return {Array} Aantal element in de vector
             */
            get: function () {
                return this.APLArray.length;
            },
            /**
           * Zet het aantal elementen in de vector
            * @param {number} Aantal element in de vector
            */
            set: function (length) {
                //TODO: Zet de shape van het Array. 
            },
            enumerable: true,
            configurable: true
        });
        APLArray.prototype.plus = function (omega) {
            this.plus = function (omega) { var aa = this.Array.length; };
        };
        return APLArray;
    }());
    APL.APLArray = APLArray;
})(APL || (APL = {}));
var HTMLPerformance = (function () {
    function HTMLPerformance(element, performanceNow, text, expression) {
        this.element = element;
        //   var result = expression
        var t0 = performance.now() - performanceNow;
        element.innerHTML += "\n " + text + " CPU-tijd: " + t0.toString() + " <br />";
        //      return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
    }
    return HTMLPerformance;
}());
var prefix = (typeof (APLPrefix) === 'undefined') ? '' : APLPrefix; // APLPrefix?APLPrefix:''
//#endregion
var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.gradeUp = function (alpha, indices, low, high) {
            //try {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha;
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices;
            low = (typeof (low) === 'undefined') ? 0 : low;
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high;
            if (high <= low)
                return indices;
            var midValue = alpha[indices[Math.floor((low + high) / 2)]];
            var t1, t2;
            var t3, t4;
            var i = low, j = high;
            while (i <= j) {
                t1 = indices[i], t2 = indices[j];
                t3 = alpha[t1] >= midValue, t4 = alpha[t2] <= midValue;
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
            NonScalar.gradeUp(alpha, indices, low, j);
            NonScalar.gradeUp(alpha, indices, i, high);
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices;
        };
        NonScalar.gradeDown = function (alpha, indices, low, high) {
            //try {
            alpha = (typeof alpha === 'number') ? [alpha] : alpha;
            indices = (typeof (indices) === 'undefined') ? alpha.length.indexGenerator : indices;
            low = (typeof (low) === 'undefined') ? 0 : low;
            high = (typeof (high) === 'undefined') ? alpha.length - 1 : high;
            if (high <= low)
                return indices;
            var midValue = alpha[indices[Math.floor((low + high) / 2)]];
            var t1, t2;
            var t3, t4;
            var i = low, j = high;
            while (i <= j) {
                t1 = indices[i], t2 = indices[j];
                t3 = alpha[t1] <= midValue, t4 = alpha[t2] >= midValue;
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
            NonScalar.gradeUp(alpha, indices, low, j);
            NonScalar.gradeUp(alpha, indices, i, high);
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices;
        };
        NonScalar.indexGenerator = function (alpha) {
            var results = new Array(alpha); // sneller dan []
            for (var counter = 0; counter < alpha; counter++) {
                results[counter] = counter;
            }
            return results;
        };
        //TODO IndexGenerator vervangen door Range?
        addProperty([Number, Array], 'indexGenerator', NonScalar.indexGenerator);
        addProperty(Array, "gradeUp", NonScalar.gradeUp, false);
        addProperty(Array, "gradeDown", NonScalar.gradeDown, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.deal = function (omega) {
            var l = (Array.isArray(omega)) ? omega[0] : omega;
            var r = (Array.isArray(this)) ? this[0] : this;
            var deal = function (omega, alpha) {
                var results = omega.indexGenerator;
                var h, j;
                for (var i = 0; i < alpha; i++) {
                    j = i + Math.floor(Math.random() * (omega - i)); // j = i + (omega-i).roll
                    //   [results[j], results[i]]=[results[i], results[j]]   destructuring werkt nog niet
                    h = results[i];
                    results[i] = results[j];
                    results[j] = h;
                }
                return results.slice(0, alpha);
            };
            return deal(l.valueOf(), r.valueOf()); // 6xsneller dan function deal (...){}
        };
        addPrototype([Array, Number], 'deal', NonScalar.deal);
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
})(Dyadic || (Dyadic = {}));
var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.depth = function (alpha) {
            var _depth = function (alpha, omega) { return Math.max(alpha, omega.depth); }; //.maximum(omega.depth) 
            return Array.isArray(alpha) ? 1 + alpha.reduce(_depth, 0) : 0;
        };
        addProperty([Array, Boolean, Date, Number, String], 'depth', NonScalar.depth, false);
        NonScalar.depthLength = function (alpha) {
            var count = 0;
            var _length = function (alpha) { Array.isArray(alpha) ? alpha.map(function (alpha) { _length(alpha); }) : count += 1; };
            _length(alpha);
            return count;
        };
        addProperty([Array, Boolean, Date, Number, String], 'depthLength', NonScalar.depthLength, false);
        NonScalar.enlist = function (alpha) {
            var result = [];
            var _enlist = function (alpha) { Array.isArray(alpha) ? alpha.map(function (y) { _enlist(y); }) : result.push(alpha); };
            _enlist(alpha);
            return result;
        };
        addProperty([Array, Number, String], "enlist", NonScalar.enlist, false);
        NonScalar.ravel = function (alpha) { return (Array.isArray(alpha) ? alpha : [alpha]); };
        addProperty([Array, Boolean, Date, Number, String], "ravel", NonScalar.ravel, false);
        NonScalar.reverse = function (alpha) { return alpha.reverse(); };
        addProperty([Array, Number, String], "reversed", NonScalar.reverse, false);
        NonScalar.shape = function (alpha) { return alpha.length; };
        addProperty([Array, Number, String], "shape", NonScalar.shape, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.concatenate = function (omega) { return this[APLPrefix + "ravel"].concat(omega.ravel); };
        addPrototype([Array, Boolean, Date, Number, String], 'concatenate', NonScalar.concatenate);
        NonScalar.reshape = function (omega) {
            omega = omega[APLPrefix + "ravel"];
            var ol = omega.length;
            var myThis = this.valueOf();
            var results = new Array(myThis);
            for (var counter = 0; counter < myThis; counter++) {
                results[counter] = omega[counter % ol];
            }
            return results;
        };
        addPrototype(Number, 'reshape', NonScalar.reshape);
        NonScalar.rotate = function (omega) {
            var myThis = this.valueOf(); // XXX xsneller dan het gebruik van this
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
        addPrototype(Number, 'rotate', NonScalar.rotate);
        NonScalar.partition = function (omega) {
            omega = omega[APLPrefix + "ravel"];
            var ol = omega.length;
            var myThis = this[APLPrefix + "ravel"];
            var results = []; // new Array(myThis.aplReduce(Dyadic.Scalar.plus))
            var interim = [];
            var sw = false;
            for (var counter = 0; counter < ol; counter++) {
                if (myThis[counter] === true || myThis[counter] === 1) {
                    if (sw === false) {
                        sw = true;
                        interim = [];
                        interim.push(omega[counter]);
                    }
                    else {
                        interim.push(omega[counter]);
                    }
                }
                else {
                    if (sw === true) {
                        results.push([interim]);
                    }
                    sw = false;
                }
            }
            if (sw === true) {
                results.push([interim]);
            }
            return results;
        };
        addPrototype([Array, Number], 'partition', NonScalar.partition);
    })(NonScalar || (NonScalar = {}));
})(Dyadic || (Dyadic = {}));
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
        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        //                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        // Voor meer info over "this" zie: http://yehudakatz.com/2011/08/11/understanding-javascript-function-invocation-and-this/
        ////                                 https://github.com/Microsoft/TypeScript/wiki/Functions 
        Vector.plus = function (omega) {
            return this.primitive(omega, Scalar.plus);
        };
        Vector.minus = function (omega) {
            return this.primitive(omega, Scalar.minus);
        };
        Vector.times = function (omega) {
            return this.primitive(omega, Scalar.times); // return this.primitive(omega, Scalar.times)
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
        //    Number.prototype[prefix + 'plus'] = Number.prototype[prefix + 'plus'] || plus
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
        //TODO verplaatsen naar ????
        Vector.rotate = function (omega) {
            return this[0].rotate(omega);
        };
        Vector.aplReduce = function (omega) {
            var aplReduce = function (omega, alpha) {
                // TODO eigen reduceRight maken en verplaatsen naar Operators
                return alpha.reduceRight(function (l, r) { return omega(r, l); });
            };
            return aplReduce(omega, this);
        };
        Vector.deal = function (omega) {
            return this[0].deal(omega); //, this[0].valueOf())
        };
        addPrototype(Array, 'rotate', Vector.rotate);
        addPrototype(Array, 'aplReduce', Vector.aplReduce);
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
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
var Monadic;
(function (Monadic) {
    var Scalar;
    (function (Scalar) {
        // TODO Boolean not
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
        addProperty([Array, Boolean, Date, Number, String], "identity", Scalar.identity);
        addProperty([Array, Number], "ln", Scalar.ln);
        addProperty([Array, Number], "magnitude", Scalar.magnitude);
        addProperty([Array, Number], "negative", Scalar.negative);
        addProperty([Array, Number, Boolean], "not", Scalar.not);
        addProperty([Array, Number], "pi", Scalar.pi);
        addProperty([Array, Number], "reciprocal", Scalar.reciprocal);
        addProperty([Array, Number], "roll", Scalar.roll);
        addProperty([Array, Number], "round", Scalar.round);
        addProperty([Array, Boolean, Date, Number, String], "same", Scalar.identity);
        addProperty([Array, Number], "signum", Scalar.signum);
    })(Scalar = Monadic.Scalar || (Monadic.Scalar = {}));
})(Monadic || (Monadic = {}));
//# sourceMappingURL=APLX.js.map