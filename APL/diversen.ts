// https://github.com/ngn/apl
// http://ngn.github.io/apl/web/index.html
// http://repl.it/languages/APL
// http://help.dyalog.com/15.0/

namespace APL {
  //export
  //   declare var Array, Number
  type APLNumber = Number;
  type APLVector = number[] | string[];
  type myType = { prop1: 10; prop2: "Hallo" };
  type Fruit = "apple" | "orange";
  type Color = "red" | "orange";

  type FruitEater = (fruit: Fruit) => number; // eats and ranks the fruit
  type ColorConsumer = (color: Color) => string; // consumes and describes the colors

  declare let f: FruitEater | ColorConsumer;
  // f("orange")

  let propName = "take";

  declare function compose<T, U, V>(f: (arg: T) => U, g: (arg: U) => V): (arg: T) => V;
  const equal = (x: any) => (y: any) => x === y;
  const on = (f: Function, g: Function) => (x: any) => f(g(x));
  on(r => 1 + r, r => 2 * r)(5)
  equal(4)(4);
  on(equal(true), equal(4))(4); // true===(4===4) */


  //type APLArray=Array<string|number|boolean|any>

  //export interface IAPLArray extends Array<string|number|boolean|any> {
  //    slash()
  //}

  /**
   * Extends the Array object with APL array functions.
   */

  export class Array<T> extends globalThis.Array<T> {

    louis(): number {
      let bb = this.length;
      return bb;
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
      return this.length;
    }
    /**
     * Zet het aantal elementen in de vector
     * @param {number} Aantal element in de vector
     */
    set shape(length: number) {
      //TODO: Zet de shape van het Array.
      this.length = <number>length;
    }
    set [propName](length: number | number[]) { }

    get length(): number {
      return this.length;
    }
    set length(length: number) {
      //TODO: Zet de shape van het Array.
      this.length = <number>length;
    }
  }


  export class Number extends globalThis.Number {
    private louis = 1
    public aap = this.louis + 1

    /**
     * function ipv lambda voor this support
     */
    public with = function (f) { return a => f(this, a) } //(10).with((a,b)=>a+b)(4)
  }


  export class APLArray<T extends Array<string | number | boolean | any>> {
    //IAPLArray

    constructor(public APLArray?: Array<T>, private length?: number) {
      // "super" kan helaas niet. Array is een interface. |number[]
      this.APLArray =
        typeof APLArray === "undefined" ? new Array<T>() : APLArray;

      if (typeof length !== "undefined") {
        APLArray.length = length;
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
      return this.APLArray.length;
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
        var aa = this.Array.length;
        for (let item of omega) {
        }
      };
    }
  }

  // Array.prototype.push.apply(ar1,ar2) //concatenate
}

class HTMLPerformance {
  constructor(
    public element: HTMLElement,
    performanceNow,
    text: string,
    expression
  ) {
    //   var result = expression
    var t0 = performance.now() - performanceNow;
    element.innerHTML += `\n ${text} CPU-tijd: ${t0.toString()} <br />`;

    //      return `\n ${text} CPU-tijd: ${t0.toString() } <br />`
  }
}
