var APLPrefix = ""; //"APLX"
var primitive = function (omega, primitive) {
    // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
    //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
    let counter, max, results;
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
                max = Math.max(this.length, omega.length),
                    results = new Array(max);
                var alpha = (this.length !== 1) ? this : max.reshape(this);
                omega = (omega.length !== 1) ? omega : max.reshape(omega);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(alpha[counter], omega[counter]);
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
    //    throw error
    //}
    //finally {
    //}
};
var addPrototype = function (object, name, func) {
    if (Array.isArray(object) === true) {
        for (let i of object) {
            addPrototype(i, name, func);
        }
    }
    else {
        object.prototype[prefix + name] = object.prototype[prefix + name] || func;
    }
};
var addProperty = function (object, name, func, primitive = true) {
    if (Array.isArray(object) === true) {
        for (let i of object) {
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
class APLXTest {
    /**
    * Creates a new HTMLElement
    */
    constructor(element) {
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
    start() {
        // console.profile('Number.iota')
        //  var aplg= apl.gradeDown
        const vector = Dyadic.Vector;
        let scalar = Dyadic.Scalar;
        var parms = location.search.split('?');
        var aantal = parms.length > 1 ? parseFloat(parms[1].replace('/', ' ')) : 5e6;
        var spanCPU = this.spanCPU;
        var nestedArray = [4, 5][APLPrefix + "indexGenerator"];
        var range1tot10 = ((10)[APLPrefix + "indexGenerator"]).plus(1);
        var testje = [3, 4, 5][APLPrefix + "aplReduce"](scalar.minus);
        this.spanCPU.innerHTML += `\n Aantal elementen = ${aantal} <br />`;
        //[ll,aantal]=[aantal,ll]
        var t0;
        var startPerformance = performance.now();
        var dd; //= aantal.deal(aantal)
        var cc;
        var rr;
        var ev = eval('(10).indexGenerator');
        rr = range1tot10.domino(range1tot10);
        cc = [2, 2, 2, 2].decode([1, 2, 3, 4]);
        dd = cc.encode([2, 2, 2, 2]);
        rr = (2).pick([1, 2, 3]);
        rr = (-3).take(dd);
        rr = ([1, 0, 2, 1]).replicate([3, 4, 5, 6]);
        rr = [true, false, false, true].replicate([3, 4, 5, 6]);
        rr = [1, 2, 3, 4, 1].unique;
        rr = [1, 0, 1, 1].expand([1, 2, 3]);
        showPerformance(spanCPU, performance.now(), 'deal', dd = aantal[APLPrefix + "deal"](aantal));
        showPerformance(spanCPU, performance.now(), 'reshape', rr = (aantal[APLPrefix + "reshape"](dd)));
        showPerformance(spanCPU, performance.now(), 'depth', cc = dd[APLPrefix + "depth"]);
        showPerformance(spanCPU, performance.now(), 'depthLength', cc = dd[APLPrefix + "depthLength"]);
        showPerformance(spanCPU, performance.now(), 'enlist', dd = dd[APLPrefix + "enlist"]);
        showPerformance(spanCPU, performance.now(), 'unique', dd = dd[APLPrefix + "unique"]);
        //showPerformance(spanCPU, performance.now(), 'union', rr = dd[APLPrefix + "union"](dd))
        //var maxValue = dd.aplReduce((l, r) => { return Math.max(l, r) })
        var apldd; //:number[]
        var aplVector = new APL.Vector(null, 10);
        aplVector.shape = 100;
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
        showPerformance(spanCPU, performance.now(), "map -alpha", dd.map((alpha) => { return -alpha; }));
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
        this.spanCPU.innerHTML += `\n totale CPU-tijd: ${totalCpu}<br />`;
        this.spanCPU.innerHTML += `\n totale CPU-tijd-gradeUp: ${totalCpu - cpuGradeUp}<br />`;
        this.timerToken = setInterval(() => this.span.innerHTML = new Date().toUTCString(), 500);
    }
    stop() {
        clearTimeout(this.timerToken);
    }
}
var showPerformance = function (spanCPU, performanceNow, text, expression) {
    //   var result = expression
    console.time("");
    var t0 = performance.now() - performanceNow;
    spanCPU.innerHTML += `\n ${text} CPU-tijd: ${t0.toString()} <br />`;
    // return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
};
window.onload = () => {
    var el = document.getElementById('content');
    var greeter = new APLXTest(el);
    greeter.start();
};
// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL
// http://help.dyalog.com/15.0/
var APL;
(function (APL) {
    let propName = 'take';
    //type APLArray=Array<string|number|boolean|any>
    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}
    /**
    * Extends the Array object wityh APL array functions. Subclassing of Array not yet supported
    */
    class Vector extends Array {
        constructor(vector, length) {
            super(vector ? vector : length);
            this.vector = vector;
            //   super(typeof Vector !== 'null' ? Vector : length)
        }
        louis() {
            let bb = this.length;
            return bb;
        }
        // property "shape"
        /**
         *
         * @param {number}
         * @return {Array} Aantal element in de vector
         */
        get shape() {
            return this.length;
        }
        /**
       * Zet het aantal elementen in de vector
        * @param {number} Aantal element in de vector
        */
        set shape(length) {
            //TODO: Zet de shape van het Array. 
            this.length = length;
        }
        set [propName](length) {
        }
        get length() {
            return this.length;
        }
        set length(length) {
            //TODO: Zet de shape van het Array. 
            this.length = length;
        }
    }
    APL.Vector = Vector;
    class APLArray {
        constructor(APLArray, length) {
            this.APLArray = APLArray;
            this.length = length;
            this.APLArray = typeof APLArray === 'undefined' ? new Array() : APLArray;
            if (typeof length !== 'undefined') {
                APLArray.length = length;
            }
            //  this._array = new Array<T>(length)
        }
        // property "shape"
        /**
         *
         * @param {number}
         * @return {Array} Aantal element in de vector
         */
        get shape() {
            return this.APLArray.length;
        }
        /**
       * Zet het aantal elementen in de vector
        * @param {number} Aantal element in de vector
        */
        set shape(length) {
            //TODO: Zet de shape van het Array. 
        }
        plus(omega) {
            this.plus = function (omega) {
                var aa = this.Array.length;
                for (let item of omega) {
                }
            };
        }
    }
    APL.APLArray = APLArray;
    // Array.prototype.push.apply(ar1,ar2) //concatenate
})(APL || (APL = {}));
class HTMLPerformance {
    constructor(element, performanceNow, text, expression) {
        this.element = element;
        //   var result = expression
        var t0 = performance.now() - performanceNow;
        element.innerHTML += `\n ${text} CPU-tijd: ${t0.toString()} <br />`;
        //      return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
    }
}
var prefix = (typeof (APLPrefix) === 'undefined') ? '' : APLPrefix; // APLPrefix?APLPrefix:''
//#endregion
var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        // domino←{(⍴⍵)⍴÷+/⍵}
        //   det←{
        //   ⎕IO ⎕ML←0 1            ⍝ Determinant of square matrix.
        //       ⍺←1                     ⍝ product of co- factor coefficients so far
        //       0 = n←⊃⍴⍵:⍺               ⍝ result for 0- by - 0
        //       i j←(⍴⍵)⊤{
        //       ⍵⍳⌈/⍵}|,⍵     ⍝ row and column index of maximal element
        //       k←⍳n
        //       (⍺×⍵[i;j]×¯1 * i + j)∇ ⍵[k~i;k~j] -⍵[k~i;j]∘.×⍵[i;k~j]÷⍵[i;j]
        //       }
        NonScalar.inverse = (omega) => { return omega[APLPrefix + 'reciprocal'][APLPrefix + 'divide'](omega.length); };
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
            let max = this[APLPrefix + 'ravel'].length[APLPrefix + 'maximum'](omega[APLPrefix + 'ravel'].length);
            let alpha = max[APLPrefix + 'reshape'](this);
            omega = max[APLPrefix + 'reshape'](omega);
            let result = omega[max - 1];
            let temp = alpha[max - 1];
            if (max === 1) {
                return result;
            }
            for (let i = max - 2; i > -1; i--) {
                result += omega[i] * temp;
                temp *= alpha[i];
            }
            return result;
            //   return omega.times(this.power(omega.length.indexGenerator.reverse())).aplReduce(Scalar.plus)
        }; // decode←{+/⍵×⍺*(⌽⍳⍴⍺)}   24 60 60⊥2 30 5 => (2×60×60)+(30×60)+5
        addPrototype([Array, Number], 'decode', NonScalar.decode);
        NonScalar.encode = function (omega) {
            if (typeof omega === 'number') {
                return omega === 0 ? this : this % omega;
            }
            let max = omega.length;
            let result = max[APLPrefix + 'reshape'](0);
            let divider = this;
            for (let i = max - 1; i > -1; i--) {
                if (omega[i] === 0) {
                    result[i] = divider;
                    return result;
                }
                result[i] = divider % omega[i];
                divider = Math.floor(divider / omega[i]);
            }
            return result;
            // (1000).encode( [24, 60, 60])
        };
        addPrototype(Number, 'encode', NonScalar.encode);
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
})(Dyadic || (Dyadic = {}));
var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.identity = (alpha) => alpha;
        NonScalar.discose = (alpha) => {
            if (Array.isArray(alpha)) {
                return alpha[0];
            }
            else {
                return alpha;
            }
        };
        NonScalar.unique = (alpha) => {
            let index = Monadic.NonScalar.gradeUp(alpha);
            let results = [];
            let bitVector = new Array(alpha.length);
            bitVector[index[0]] = true;
            for (let i = 1; i < alpha.length; i++) {
                bitVector[index[i]] = alpha[index[i - 1]] !== alpha[index[i]];
            }
            for (let i = 0; i < alpha.length; i++) {
                if (bitVector[i] === true) {
                    results.push(alpha[i]);
                }
            }
            return results;
            // return Array.from(new Set(alpha))
        };
        addProperty([Array, Boolean, Date, Number, String], "identity", NonScalar.identity, false);
        addProperty([Array, Boolean, Date, Number, String], "same", NonScalar.identity, false);
        addProperty([Array, Boolean, Date, Number, String], "disclose", NonScalar.discose, false);
        addProperty([Array, Boolean, Date, Number, String], "unique", NonScalar.unique, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.left = function (omega) {
            return this;
        };
        NonScalar.right = function (omega) {
            return omega;
        };
        NonScalar.pick = function (omega) {
            if (Array.isArray(omega)) {
                return omega[this];
            }
            else {
                return omega;
            }
        };
        NonScalar.take = function (omega) {
            omega = Array.isArray(omega) ? omega : [omega];
            let length = omega.length;
            let size = Math.abs(this.valueOf());
            let max = Math.min(length, size);
            let results = size[APLPrefix + 'reshape'](0); // (new Array(size)).fill(0)
            if (this.valueOf() > 0) {
                for (let i = 0; i < max; i++) {
                    results[i] = omega[i];
                }
            }
            if (this.valueOf() < 0) {
                let ix = size - max;
                for (let i = 0; i < max; i++) {
                    results[ix + i] = omega[length - max + i];
                }
            }
            return results;
        };
        NonScalar.drop = function (omega) {
            omega = Array.isArray(omega) ? omega : [omega];
            const length = omega.length;
            const resultLength = Math.max(0, length - Math.abs(this));
            let results = new Array(resultLength);
            if (this < 0) {
                for (let i = 0; i < resultLength; i++) {
                    results[i] = omega[i];
                }
            }
            else {
                for (let i = 0; i < resultLength; i++) {
                    results[i] = omega[this + i];
                }
            }
            return results;
        };
        //TODO 'replicate' hoort hier niet thuis
        NonScalar.replicate = function (omega) {
            const myThis = this[APLPrefix + 'ravel'];
            const myOmega = omega[APLPrefix + 'ravel'];
            const length = myThis[APLPrefix + 'magnitude'][APLPrefix + 'aplReduce'](Dyadic.Scalar.plus);
            let results = new Array(length);
            let fillElement = typeof myOmega[0] === 'string' ? ' ' : 0;
            //const reshape = APLPrefix + 'reshape'
            let ix = 0;
            for (let i = 0; i < myThis.length; i++) {
                //const temp = myThis[i][reshape](omega[i])
                let size = 0;
                if (typeof myThis[i] === 'boolean') {
                    size = myThis[i] === true ? 1 : 0;
                }
                else {
                    size = Math.abs(myThis[i]);
                }
                for (let j = 0; j < size; j++) {
                    results[ix] = myThis[i] > 0 ? myOmega[i] : fillElement;
                    ix++;
                }
                //for (let j = 0; j < temp.length; j++) {
                //    results[i + j] = temp[j]
                //}
            }
            return results;
        };
        //TODO 'scan' hoort hier niet thuis
        NonScalar.scan = function (omega) {
            const myThis = this[APLPrefix + 'ravel'];
            const myOmega = omega[APLPrefix + 'ravel'];
            const length = myThis[APLPrefix + 'magnitude'][APLPrefix + 'aplReduce'](Dyadic.Scalar.plus);
            let results = new Array(length);
            let fillElement = typeof myOmega[0] === 'string' ? ' ' : 0;
            //const reshape = APLPrefix + 'reshape'
            let ix = 0;
            for (let i = 0; i < myThis.length; i++) {
                //const temp = myThis[i][reshape](omega[i])
                let size = 0;
                if (typeof myThis[i] === 'boolean') {
                    size = myThis[i] === true ? 1 : 0;
                }
                else {
                    size = Math.abs(myThis[i]);
                }
                for (let j = 0; j < size; j++) {
                    results[ix] = myThis[i] > 0 ? myOmega[i] : fillElement;
                    ix++;
                }
                //for (let j = 0; j < temp.length; j++) {
                //    results[i + j] = temp[j]
                //}
            }
            return results;
        };
        NonScalar.expand = function (omega) {
            const myThis = this[APLPrefix + 'ravel'];
            const myOmega = omega[APLPrefix + 'ravel'];
            // const length = myThis[APLPrefix + 'magnitude'][APLPrefix + 'maximum'](1)[APLPrefix + 'aplReduce'](Scalar.plus) // +/1⌈|⍵
            let fillElement = typeof myOmega[0] === 'string' ? ' ' : 0;
            let results = new Array();
            //const expand = APLPrefix + 'expand'
            let ix = 0;
            for (let i = 0; i < myThis.length; i++) {
                //const temp = myThis[i][reshape](omega[i])
                let size = 0;
                if (typeof myThis[i] === 'boolean') {
                    myThis[i] = myThis[i] === true ? 1 : 0;
                }
                size = Math.abs(myThis[i]);
                size = size === 0 ? 1 : size;
                for (let j = 0; j < size; j++) {
                    results.push(myThis[i] > 0 ? myOmega[ix] : fillElement);
                }
                ix = myThis[i] > 0 ? ix + 1 : ix;
                //for (let j = 0; j < temp.length; j++) {
                //    results[i + j] = temp[j]
                //}
            }
            return results;
        };
        NonScalar.excluding = function (omega) {
            const myThis = this[APLPrefix + 'ravel'];
            const myOmega = new Set(omega[APLPrefix + 'ravel']);
            let results = new Set(myThis);
            for (let elem of myOmega) {
                results.delete(elem);
            }
            return Array.from(results);
        };
        NonScalar.intersection = function (omega) {
            const myThis = new Set(this[APLPrefix + 'ravel']);
            const myOmega = new Set(omega[APLPrefix + 'ravel']);
            let results = new Set();
            for (let elem of myOmega) {
                if (myThis.has(elem)) {
                    results.add(elem);
                }
            }
            return Array.from(results);
        };
        NonScalar.union = function (omega) {
            let results = this[APLPrefix + 'ravel'][APLPrefix + 'catenate'](omega[APLPrefix + 'ravel']);
            return results[APLPrefix + 'unique'];
            //results = new Set(this[APLPrefix + 'ravel'])
            //const myOmega = new Set(omega[APLPrefix + 'ravel'])
            //for (let elem of myOmega) {
            //    results.add(elem)
            //}
            //return Array.from(results)
        };
        addPrototype([Array, Boolean, Date, Number, String], 'left', NonScalar.left);
        addPrototype([Array, Boolean, Date, Number, String], 'right', NonScalar.right);
        addPrototype([Array, Number], 'pick', NonScalar.pick);
        addPrototype([Number], 'take', NonScalar.take);
        addPrototype([Number], 'drop', NonScalar.drop);
        addPrototype([Array, Number], 'replicate', NonScalar.replicate);
        addPrototype([Array, Number], 'scan', NonScalar.scan);
        addPrototype([Array, Number], 'expand', NonScalar.expand);
        addPrototype([Array, Boolean, Date, Number, String], 'excluding', NonScalar.excluding);
        addPrototype([Array, Boolean, Date, Number, String], 'intersection', NonScalar.intersection);
        addPrototype([Array, Boolean, Date, Number, String], 'union', NonScalar.union);
    })(NonScalar = Dyadic.NonScalar || (Dyadic.NonScalar = {}));
})(Dyadic || (Dyadic = {}));
var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.gradeUp = function (alpha, indices, low, high) {
            //try {
            alpha = Array.isArray(alpha) ? alpha : [alpha]; //(typeof alpha === 'number') ? [alpha] : alpha
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
            alpha = Array.isArray(alpha) ? alpha : [alpha]; //(typeof alpha === 'number') ? [alpha] : alpha
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
            NonScalar.gradeDown(alpha, indices, low, j);
            NonScalar.gradeDown(alpha, indices, i, high);
            //}
            //catch (error) {
            //}
            //finally {
            //}
            return indices;
        };
        NonScalar.indexGenerator = (alpha) => {
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
        //Object.defineProperty(Array.prototype, prefix +'' , {
        //    get: function (): number[] {
        //        var compare = function (alpha, omega) {
        //            loop++
        //            if (alpha.value < omega.value) {
        //                return -1;
        //            } else if (alpha.value > omega.value) {
        //                return 1;
        //            } else {
        //                return 0;
        //            }
        //        }
        //        //               try {
        //        var length = this.length,
        //            loop = 0
        //        var thisIndex = new Array(length),
        //            results = new Array(length),
        //            indices = new Array(length)
        //        for (var counter = 0; counter < length; counter++) {
        //            thisIndex[counter] = { value: this[counter], index: counter }
        //        }
        //        results = thisIndex.sort(compare)
        //        for (var counter = 0; counter < length; counter++) {
        //            indices[counter] = results[counter].index
        //        }
        //        console.log('Loops :' + loop)
        //        return indices
        //        //}
        //        //catch (error) {
        //        //}
        //        //finally {
        //        //}
        //    }
        //})
        //    Object.defineProperty(Array.prototype, prefix + "gradeDownJS", {
        //    get: function (): number[] {
        //        var compare = function (alpha, omega) {
        //            loop++
        //            if (alpha.value < omega.value) {
        //                return 1;
        //            } else if (alpha.value > omega.value) {
        //                return -1;
        //            } else {
        //                return 0;
        //            }
        //        }
        //        //              try {
        //        var length = this.length,
        //            loop = 0
        //        var thisIndex = new Array(length),
        //            results = new Array(length),
        //            indices = new Array(length)
        //        for (var counter = 0; counter < length; counter++) {
        //            thisIndex[counter] = { value: this[counter], index: counter }
        //        }
        //        results = thisIndex.sort(compare)
        //        for (var counter = 0; counter < length; counter++) {
        //            indices[counter] = results[counter].index
        //        }
        //        console.log('Loops :' + loop)
        //        return indices
        //        //}
        //        //catch (error) {
        //        //}
        //        //finally {
        //        //}
        //    }
        //})
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.deal = function (omega) {
            let l = (Array.isArray(omega)) ? omega[0] : omega;
            let r = (Array.isArray(this)) ? this[0] : this;
            let deal = (l, r) => {
                let results = l[APLPrefix + 'indexGenerator'];
                let h, j;
                for (var i = 0; i < r; i++) {
                    j = i + Math.floor(Math.random() * (l - i)); // j = i + (omega-i).roll
                    //   [results[j], results[i]]=[results[i], results[j]]   //destructuring werkt nog niet
                    h = results[i];
                    results[i] = results[j];
                    results[j] = h;
                }
                return results.slice(0, r);
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
        NonScalar.depth = (alpha) => {
            let _depth = (alpha, omega) => Math.max(alpha, omega.depth); //.maximum(omega.depth) 
            return Array.isArray(alpha) ? 1 + alpha.reduce(_depth, 0) : 0;
        };
        addProperty([Array, Boolean, Date, Number, String], 'depth', NonScalar.depth, false);
        NonScalar.depthLength = (alpha) => {
            let count = 0;
            let _length = alpha => { Array.isArray(alpha) ? alpha.map(alpha => { _length(alpha); }) : count += 1; };
            _length(alpha);
            return count;
        };
        addProperty([Array, Boolean, Date, Number, String], 'depthLength', NonScalar.depthLength, false);
        NonScalar.enlist = (alpha) => {
            let result = [];
            let _enlist = (alpha) => { Array.isArray(alpha) ? alpha.map((y) => { _enlist(y); }) : result.push(alpha); };
            _enlist(alpha);
            return result;
        };
        addProperty([Array, Number, String], "enlist", NonScalar.enlist, false);
        NonScalar.ravel = (alpha) => { return (Array.isArray(alpha) ? alpha : [alpha]); };
        addProperty([Array, Boolean, Date, Number, String], "ravel", NonScalar.ravel, false);
        NonScalar.reversed = (alpha) => { return [].concat(alpha).reverse(); };
        addProperty([Array, Number, String], "reversed", NonScalar.reversed, false);
        NonScalar.shape = (alpha) => { return alpha.length; };
        addProperty([Array, Number, String], "shape", NonScalar.shape, false);
    })(NonScalar = Monadic.NonScalar || (Monadic.NonScalar = {}));
})(Monadic || (Monadic = {}));
var Dyadic;
(function (Dyadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.catenate = function (omega) { return this[APLPrefix + "ravel"].concat(omega.ravel); };
        addPrototype([Array, Boolean, Date, Number, String], 'catenate', NonScalar.catenate);
        NonScalar.reshape = function (omega) {
            omega = omega[APLPrefix + "ravel"];
            let ol = omega.length;
            let myThis = this.valueOf();
            let results = new Array(Math.abs(myThis));
            if (ol === 1) {
                const fillValue = myThis < 0 ? 0 : omega[0];
                for (let counter = 0; counter < myThis; counter++) {
                    results[counter] = fillValue;
                }
            }
            else {
                for (let counter = 0; counter < myThis; counter++) {
                    results[counter] = omega[counter % ol];
                }
            }
            return results;
        };
        addPrototype(Number, 'reshape', NonScalar.reshape);
        NonScalar.rotate = function (omega) {
            let myThis = Array.isArray(this) ? this[0] : this; // XXX xsneller dan het gebruik van this
            let counter, max = omega.length, results = new Array(max);
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
        addPrototype([Array, Number], 'rotate', NonScalar.rotate);
        //TODO aplReduce hoort hier niet thuis. Misschien een Operator.ts maken
        NonScalar.aplReduce = function (omega) {
            let aplReduce = (omega, alpha) => {
                // TODO eigen reduceRight maken en verplaatsen naar Operators
                return alpha.reduceRight((l, r) => { return omega(r, l); });
            };
            return aplReduce(omega, this);
        };
        addPrototype([Array, Number, String, Boolean, Date], 'aplReduce', NonScalar.aplReduce);
        NonScalar.partition = function (omega) {
            omega = omega[APLPrefix + "ravel"];
            let ol = omega.length;
            let myThis = this[APLPrefix + "ravel"];
            let results = []; // new Array(myThis.aplReduce(Dyadic.Scalar.plus))
            let interim = [];
            let sw = false;
            for (let counter = 0; counter < ol; counter++) {
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
        Scalar.plus = (alpha, omega) => alpha + omega;
        Scalar.minus = (alpha, omega) => alpha - omega;
        Scalar.times = (alpha, omega) => alpha * omega;
        Scalar.divide = (alpha, omega) => alpha / omega;
        Scalar.residue = (alpha, omega) => omega % alpha;
        Scalar.minimum = (alpha, omega) => Math.min(alpha, omega);
        Scalar.maximum = (alpha, omega) => Math.max(alpha, omega);
        Scalar.power = (alpha, omega) => Math.pow(alpha, omega);
        Scalar.logarithm = (alpha, omega) => Math.log(omega) / Math.log(alpha);
        Scalar.binomial = (alpha, omega) => { (alpha < omega || omega < 0) ? 0 : alpha.factorial / (omega.factorial * (alpha - omega).factorial); };
        //TODO binomial factorial(alpha,omega)
        //TODO rotate en deal horen niet hier
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
        Vector.deal = function (omega) {
            return this[0].deal(omega); //, this[0].valueOf())
        };
    })(Vector = Dyadic.Vector || (Dyadic.Vector = {}));
})(Dyadic || (Dyadic = {}));
var Dyadic;
(function (Dyadic) {
    var Scalar;
    (function (Scalar) {
        Scalar.and = (alpha, omega) => { return (alpha && omega); };
        Scalar.nand = (alpha, omega) => { return !(alpha && omega); };
        Scalar.or = (alpha, omega) => { return (alpha || omega); };
        Scalar.nor = (alpha, omega) => { return !(alpha || omega); };
        Scalar.lt = (alpha, omega) => { return alpha < omega; };
        Scalar.le = (alpha, omega) => { return alpha <= omega; };
        Scalar.gt = (alpha, omega) => { return alpha > omega; };
        Scalar.ge = (alpha, omega) => { return alpha >= omega; };
        Scalar.eq = (alpha, omega) => { return alpha === omega; };
        Scalar.neq = (alpha, omega) => { return alpha !== omega; };
        Scalar.gcd = (alpha, omega) => { while (omega) {
            var t = omega;
            omega = alpha % omega;
            alpha = t;
        } ; return alpha; };
        Scalar.lcm = (alpha, omega) => { return (!alpha || !omega) ? 0 : Math.abs((alpha * omega) / Scalar.gcd(alpha, omega)); };
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
        Scalar.ceiling = (alpha) => { return Math.ceil(alpha); };
        Scalar.exponential = (alpha) => { return Math.exp(alpha); };
        Scalar.factorial = function (alpha, omega) {
            var result = 1;
            omega = (typeof omega === 'undefined') ? 1 : omega + 1;
            for (var i = omega; i <= alpha; i++) {
                result = result * i;
            }
            return result;
        };
        Scalar.floor = (alpha) => Math.floor(alpha);
        Scalar.ln = (alpha) => Math.log(alpha);
        Scalar.magnitude = (alpha) => Math.abs(alpha);
        Scalar.negative = (alpha) => -alpha;
        Scalar.not = (alpha) => !alpha;
        Scalar.pi = (alpha) => Math.PI * alpha;
        Scalar.reciprocal = (alpha) => 1 / alpha;
        Scalar.roll = (alpha) => Math.floor(Math.random() * alpha);
        Scalar.round = (alpha) => Math.round(alpha);
        Scalar.signum = (alpha) => alpha > 0 ? 1 : alpha < 0 ? -1 : 0;
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
//# sourceMappingURL=APLX.js.map