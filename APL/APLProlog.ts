var APLPrefix: string = ""

var addPrototype = function (object, name: string, func: Function) {
    object.prototype[prefix + name] = object.prototype[prefix + name] || func
}

var addProperty = function (object, name: string, func: Function) {
    if (Array.isArray(object) === true) {
        for (let i of object) {
            //addProperty(i, name, func)
            Object.defineProperty(i.prototype, prefix + name, {
                get: function () {
                    return func(this.valueOf())
                }
            })
        }

    } else {
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
}
