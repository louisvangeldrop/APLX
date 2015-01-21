
//module APL {
    // declare var Array, Number

    //type APLArray=Array<string|number|boolean|any>

    //export interface IAPLArray extends Array<string|number|boolean|any> {
    //    slash()
    //}
   
     class APLArray<T extends Array<string|number|boolean|any>>{  //IAPLArray
        constructor(private length?: number) {   // super kan niet. Array is een interface
        }

        plus(omega) {
            this.plus = function (omega) { var aa = this.length }
        }
    }

   
    
// }
