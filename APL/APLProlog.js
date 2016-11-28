var APLPrefix = "";
var primitive = function (omega, primitive) {
    try {
        var counter = void 0, max = void 0, results = void 0;
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
    }
    catch (error) {
    }
    finally {
    }
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
                        return this.primitive(func);
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
