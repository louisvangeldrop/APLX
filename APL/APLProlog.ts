var APLPrefix: string = ""

var addPrototype = function (object, name: string, func) {
    object.prototype[prefix + name] = object.prototype[prefix + name] || func
}

var addProperty = function (object, name: string, func: Function) {
    if (object.name === 'Array') {
        Object.defineProperty(object.prototype, prefix + name, {
            get: function () {
                return this.primitive(func)
            }
        })
    } else {
        Object.defineProperty(object.prototype, prefix + name, {
            get: function () {
                return func(this.valueOf())
            }
        })
    }
}

