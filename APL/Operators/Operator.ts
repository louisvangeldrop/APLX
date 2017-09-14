namespace Dyadic {

    /*
    https://medium.com/javascript-scene
    https://medium.com/javascript-scene/composing-software-an-introduction-27b72500d6ea
    https://medium.com/javascript-scene/elements-of-javascript-style-caa8821cb99f
    */

    // ToDo Vooropig alleen commutatieve Scan
    export var scan = function (omega: Function) {
        const myThis: Array<number | boolean> = this[APLPrefix + 'ravel']
        const length = myThis.length
        let results = new Array(length)
        let fillElement = typeof myThis[0] === 'string' ? ' ' : 0
        //const reshape = APLPrefix + 'reshape'
        let ix = 0
        results[0] = myThis[0]
        for (let i = 1; i < length; i++) {
            //const temp = myThis[i][reshape](omega[i])
            results[i] = omega(results[i - 1], myThis[i])
        }
        return results
    }

    addPrototype([Array, Number, String, Boolean, Date], 'scan', scan)

    //TODO aplReduce hoort hier niet thuis. Misschien een Operator.ts maken
    export var aplReduce = function (omega) {
        let aplReduce = (omega: Function, alpha) => {
            return alpha.reduceRight((l, r) => { return omega(r, l) })
        }
        return aplReduce(omega, this)
    }

    addPrototype([Array, Number, String, Boolean, Date], 'aplReduce', aplReduce)

}