
// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL

module APL {
     declare var Array, Number

    //type APLArray=Array<string|number|boolean|any>

    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}
   
     class APLArray<T extends Array<string|number|boolean|any>>{  //IAPLArray
        constructor(private length?: number) {   // super kan niet. Array is een interface
        }
        get shape(): number[]{
            return [this.length]
        }
        plus(omega) {
            this.plus = function (omega) { var aa = this.length }
        }
    }

// Array.prototype.push.apply(ar1,ar2) //concatenate
    
 }


module Dyadic {

}