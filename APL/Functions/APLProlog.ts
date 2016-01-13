var APLPrefix: string = ""

var addPrototype = function (object, name: string, func) {
    object.prototype[prefix + name] = object.prototype[prefix + name] || func
}

var addNumberProperty = function (name: string, func: Function) {
    Object.defineProperty(Number.prototype, prefix + name, {            //
        get: function () {
            return func(this.valueOf())
        }
    })
}

var addArrayProperty = function (name: string, func: Function) {
    Object.defineProperty(Array.prototype, prefix + name, {
        get: function () {
            return this.primitive(func)
        }
    })
}