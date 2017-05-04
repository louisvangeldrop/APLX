
// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL
// http://help.dyalog.com/15.0/

namespace APL {               //export
    //   declare var Array, Number
    type APLNumber = Number
    type APLVector = number[] | string[]
    let propName = 'take'
    //type APLArray=Array<string|number|boolean|any>

    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}

    /**
    * Extends the Array object wityh APL array functions. Subclassing of Array not yet supported
    */

    export class Vector<T> extends Array<string | number | boolean | any> {  //T>

        constructor(public vector?: Array<T>, length?: number) {
            super(vector ? vector : length)
            //   super(typeof Vector !== 'null' ? Vector : length)
        }

        louis(): number {
            let bb = this.length
            return bb
        }

        // property "shape"
        // @ts-check
        //
        /**
         * 
         * @param {number} shape
         * @return {Array} Aantal element in de vector
         */
        get shape(): number {
            return this.length
        }
        /**
       * Zet het aantal elementen in de vector
        * @param {number} Aantal element in de vector
        */
        set shape(length: number) {
            //TODO: Zet de shape van het Array. 
            this.length = <number>length
        }
        set [propName](length: number | number[]) {
        }

        get length(): number {
            return this.length
        }
        set length(length: number) {
            //TODO: Zet de shape van het Array. 
            this.length = <number>length
        }
    }

    export class APLArray<T extends Array<string | number | boolean | any>>{  //IAPLArray

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
        get shape(): number | number[] {
            return this.APLArray.length
        }
        /**
       * Zet het aantal elementen in de vector
        * @param {number} Aantal element in de vector
        */
        set shape(length: number | number[]) {
            //TODO: Zet de shape van het Array. 

        }

        plus(omega: Array<number>) {
            this.plus = function (omega) {
                var aa = this.Array.length
                for (let item of omega) {

                }
            }
        }

    }

    // Array.prototype.push.apply(ar1,ar2) //concatenate

}

class HTMLPerformance {
    constructor(public element: HTMLElement, performanceNow, text: string, expression) {
        //   var result = expression
        var t0 = performance.now() - performanceNow
        element.innerHTML += `\n ${text} CPU-tijd: ${t0.toString()} <br />`

        //      return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
    }
}