
// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL

 module APL {               //export
    //   declare var Array, Number
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
       
        constructor(public APLArray?: Array<T>, private length?: number) {   // "super" kan helaas niet. Array is een interface. |number[]
            this.APLArray = typeof APLArray === 'undefined' ? new Array<T>() : APLArray

            if (typeof length !== 'undefined') {
                APLArray.length = length
            }
           
            //  this._array = new Array<T>(length)
        }

        // property "shape"
        /**
         * 
         * @param {number} 
         * @return {Array} Aantal element in de vector
         */
        get shape(): number|number[] {
            return this.APLArray.length
        }
        /**
       * Zet het aantal elementen in de vector
        * @param {number} Aantal element in de vector
        */
        set shape(length: number|number[]) {
            //TODO: Zet de shape van het Array. 

        }


        plus(omega) {
            this.plus = function (omega) { var aa = this.Array.length }
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