namespace Dyadic {

    // ToDo Vooropig alleen commutatieve Scan
    export var scan = function (omega: Function) {
        const myThis: Array<number | boolean> = this[APLPrefix + 'ravel']
        const length = myThis.length
        let results = new Array(length)
        let fillElement = typeof myThis[0] === 'string' ? ' ' : 0
        //const reshape = APLPrefix + 'reshape'
        let ix = 0
        for (let i = 0; i < myThis.length; i++) {
            //const temp = myThis[i][reshape](omega[i])
            let size = 0
            if (typeof myThis[i] === 'boolean') {
                size = myThis[i] === true ? 1 : 0

            } else {
                size = Math.abs(<number>myThis[i])
            }

            //for (let j = 0; j < size; j++) {
            //    results[ix] = myThis[i] > 0 ? myOmega[i] : fillElement
            //    ix++
            //}

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