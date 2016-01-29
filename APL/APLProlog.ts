var APLPrefix: string = ""

var addPrototype = function (object, name: string, func: Function) {
    if (Array.isArray(object) === true) {
        for (let i of object) {
            addPrototype(i, name, func)
        }
    } else {
        object.prototype[prefix + name] = object.prototype[prefix + name] || func
    }

}

var addProperty = function (object, name: string, func: Function, primitive: boolean = true) {
    if (Array.isArray(object) === true) {
        for (let i of object) {
            addProperty(i, name, func)
        }
    } else {
        if (object.name === 'Array') {
            if (primitive === true) {
                Object.defineProperty(object.prototype, prefix + name, {
                    get: function () {
                        return this.primitive(func)
                    }
                })
            } else {
                Object.defineProperty(object.prototype, prefix + name, {
                    get: function () {
                        return func(this)
                    }
                })
            }
        } else {
            Object.defineProperty(object.prototype, prefix + name, {
                get: function () {
                    return func(this.valueOf())
                }
            })
        }
    }
}
