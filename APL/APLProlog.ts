var APLPrefix: string = ""              //"APLX"

var primitive = function (omega, primitive?) {  // Toekennen aan var is Xx sneller dan pure declaratie "function primitive(...) {}" .Uitkijken met lambda. "this." klopt niet meer 
    // tenzij je het volgende  doet: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Functions.md
            
    //try {                                 // Try..catch maakt primitive ongeveer 4x langzamer
    let counter: number,
        max: number,
        results
    if (typeof primitive === 'undefined') {  // omega is nu de primitive functie
        primitive = omega
        max = this.length
        results = new Array(max)
        for (counter = 0; counter < max; counter++) {
            results[counter] = primitive(this[counter])
        }
        return results
    }
    else {
        if (Array.isArray(this)) {
            if (Array.isArray(omega)) {
                //TODO max en isArray(this)
                max = Math.min(this.length, omega.length),
                    results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter], omega[counter])
                }
                return results
            } else {
                max = this.length
                results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this[counter], omega.valueOf())
                }
                return results
            }
        } else {
            if (Array.isArray(omega)) {
                //TODO max en isArray(this)
                max = omega.length,
                    results = new Array(max);
                for (counter = 0; counter < max; counter++) {
                    results[counter] = primitive(this.valueOf(), omega[counter])
                }
                return results
            } else {
                return primitive(this.valueOf(), omega.valueOf())
            }
        }
    }
    
            
    //}
    //catch (error) {
    //   // throw error
    //}
    //finally {
    //}

}

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
                        return this.primitive(func) // return this[APLPrefix + "primitive"](func)         
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
