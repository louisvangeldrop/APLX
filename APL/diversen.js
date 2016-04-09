var __extends = (this && this.__extends) || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
};
var APL;
(function (APL) {
    var Vector = (function (_super) {
        __extends(Vector, _super);
        function Vector(Vector, length) {
            _super.call(this, typeof Vector !== 'null' ? Vector : length);
            this.Vector = Vector;
            var aa = [10].indexGenerator;
            for (var _i = 0; _i < aa.length; _i++) {
                var i = aa[_i];
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
            get: function () {
                return this.Vector.length;
            },
            set: function (length) {
            },
            enumerable: true,
            configurable: true
        });
        return Vector;
    })(Array);
    APL.Vector = Vector;
    var APLArray = (function () {
        function APLArray(APLArray, length) {
            this.APLArray = APLArray;
            this.length = length;
            this.APLArray = typeof APLArray === 'undefined' ? new Array() : APLArray;
            if (typeof length !== 'undefined') {
                APLArray.length = length;
            }
        }
        Object.defineProperty(APLArray.prototype, "shape", {
            get: function () {
                return this.APLArray.length;
            },
            set: function (length) {
            },
            enumerable: true,
            configurable: true
        });
        APLArray.prototype.plus = function (omega) {
            this.plus = function (omega) { var aa = this.Array.length; };
        };
        return APLArray;
    })();
    APL.APLArray = APLArray;
})(APL || (APL = {}));
var HTMLPerformance = (function () {
    function HTMLPerformance(element, performanceNow, text, expression) {
        this.element = element;
        var t0 = performance.now() - performanceNow;
        element.innerHTML += "\n " + text + " CPU-tijd: " + t0.toString() + " <br />";
    }
    return HTMLPerformance;
})();
