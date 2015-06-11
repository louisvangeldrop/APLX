
// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL



module APL {
    declare var Array, Number
    type APLNumber=Number
    type APLVector=number[]|string[]

    //type APLArray=Array<string|number|boolean|any>

    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}
   
    /**
    * Extends the Array object wityh APL array functions
    */
    export class APLArray<T extends Array<string|number|boolean|any>>{  //IAPLArray
        private _array: T
        constructor(private length?: number|number[]) {   // "super" kan helaas niet. Array is een interface
            this._array = new Array(length)
        }

        // property "shape"
        /**
         * 
         * @param {number} 
         * @return {Array} Aantal element in de vector
         */
        get shape(): number|number[] {
            return this._array.length
        }
        /**
       * Zet het aantal elementen in de vector
        * @param {number} Aantal element in de vector
        */
        set shape(length: number|number[]) {
            //TODO: Zet de shape van het Array. 

        }


        plus(omega) {
            this.plus = function (omega) { var aa = this._array.length }
        }
    }

    // Array.prototype.push.apply(ar1,ar2) //concatenate
    
}

module Dyadic {

}

class HTMLPerformance {
    constructor(public element: HTMLElement, performanceNow, text: string, expression) {
        //   var result = expression
        var t0 = performance.now() - performanceNow
        element.innerHTML += `\n ${text} CPU-tijd: ${t0.toString() } <br />`

        //      return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
    }
}