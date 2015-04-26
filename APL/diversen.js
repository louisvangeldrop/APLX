// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL
var APL;
(function (APL) {
    //type APLArray=Array<string|number|boolean|any>
    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}
    var APLArray = (function () {
        function APLArray(length) {
            this.length = length;
            this._array = new Array(length);
        }
        Object.defineProperty(APLArray.prototype, "shape", {
            // property "shape"
            get: function () {
                return this._array.length;
            },
            set: function (length) {
                //TODO:
            },
            enumerable: true,
            configurable: true
        });
        APLArray.prototype.plus = function (omega) {
            this.plus = function (omega) {
                var aa = this._array.length;
            };
        };
        return APLArray;
    })();
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
})();
//# sourceMappingURL=diversen.js.map