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
        }
        Object.defineProperty(APLArray.prototype, "shape", {
            get: function () {
                return [this.length];
            },
            enumerable: true,
            configurable: true
        });
        APLArray.prototype.plus = function (omega) {
            this.plus = function (omega) {
                var aa = this.length;
            };
        };
        return APLArray;
    })();
})(APL || (APL = {}));
//# sourceMappingURL=diversen.js.map