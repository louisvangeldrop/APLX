var Monadic;
(function (Monadic) {
    var NonScalar;
    (function (NonScalar) {
        NonScalar.depth = function (alpha) {
            var _depth = function (alpha, omega) { return Math.max(alpha, omega.depth); };
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
        NonScalar.reversed = function (alpha) { return [].concat(alpha).reverse(); };
        addProperty([Array, Number, String], "reversed", NonScalar.reversed, false);
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
            if (ol === 1) {
                for (var counter = 0; counter < myThis; counter++) {
                    results[counter] = omega[0];
                }
            }
            else {
                for (var counter = 0; counter < myThis; counter++) {
                    results[counter] = omega[counter % ol];
                }
            }
            return results;
        };
        addPrototype(Number, 'reshape', NonScalar.reshape);
        NonScalar.rotate = function (omega) {
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
        addPrototype(Number, 'rotate', NonScalar.rotate);
        NonScalar.partition = function (omega) {
            omega = omega[APLPrefix + "ravel"];
            var ol = omega.length;
            var myThis = this[APLPrefix + "ravel"];
            var results = [];
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
