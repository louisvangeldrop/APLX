namespace Monadic {
  //const on = (f, g) => omega => f(g(omega))   // on(Math.floor,Math.max)(argument)    =>  f(g(omega))

  export namespace NonScalar {
    export var gradeUp = function(
      alpha,
      indices?: number[],
      low?: number,
      high?: number
    ): number[] {
      //try {
      alpha = Array.isArray(alpha) ? alpha : [alpha]; //(typeof alpha === 'number') ? [alpha] : alpha
      indices =
        typeof indices === "undefined" ? alpha.length.indexGenerator : indices;
      low = typeof low === "undefined" ? 0 : low;
      high = typeof high === "undefined" ? alpha.length - 1 : high;
      if (high <= low) return indices;
      var midValue = alpha[indices[Math.floor((low + high) / 2)]];
      var t1, t2;
      var t3: boolean, t4: boolean;
      var i = low,
        j = high;
      while (i <= j) {
        (t1 = indices[i]), (t2 = indices[j]);
        (t3 = alpha[t1] >= midValue), (t4 = alpha[t2] <= midValue);
        if (t3 && t4) {
          // swap elements
          indices[i] = t2;
          indices[j] = t1;
          i = i + 1;
          j = j - 1;
        } else {
          if (t3 === false) {
            i++;
          }
          if (t4 === false) {
            j--;
          }
        }
      }
      gradeUp(alpha, indices, low, j);
      gradeUp(alpha, indices, i, high);
      //}
      //catch (error) {
      //}
      //finally {
      //}
      return indices;
    };

    export var gradeDown = function(
      alpha,
      indices?: number[],
      low?: number,
      high?: number
    ): number[] {
      //try {
      alpha = Array.isArray(alpha) ? alpha : [alpha]; //(typeof alpha === 'number') ? [alpha] : alpha
      indices =
        typeof indices === "undefined" ? alpha.length.indexGenerator : indices;
      low = typeof low === "undefined" ? 0 : low;
      high = typeof high === "undefined" ? alpha.length - 1 : high;
      if (high <= low) return indices;
      var midValue = alpha[indices[Math.floor((low + high) / 2)]];
      var t1, t2;
      var t3: boolean, t4: boolean;
      var i = low,
        j = high;
      while (i <= j) {
        (t1 = indices[i]), (t2 = indices[j]);
        (t3 = alpha[t1] <= midValue), (t4 = alpha[t2] >= midValue);
        if (t3 && t4) {
          // swap elements
          indices[i] = t2;
          indices[j] = t1;
          i = i + 1;
          j = j - 1;
        } else {
          if (t3 === false) {
            i++;
          }
          if (t4 === false) {
            j--;
          }
        }
      }
      gradeDown(alpha, indices, low, j);
      gradeDown(alpha, indices, i, high);
      //}
      //catch (error) {
      //}
      //finally {
      //}
      return indices;
    };

    export var gradeUpSort = function(alpha) {
      // temporary array holds objects with position and sort-value
      var mapped = alpha.map(function(el, i) {
        return { index: i, value: el }; // .toLowerCase()
      });

      // sorting the mapped array containing the reduced values
      mapped.sort(function(a, b) {
        if (a.value > b.value) {
          return 1;
        }
        if (a.value < b.value) {
          return -1;
        }
        return 0;
      });
      return mapped.map(a => a.index);
    };

    export var indexGenerator = (alpha: number): number[] => {
      var results = new Array<number>(alpha); // sneller dan []
      for (var counter = 0; counter < alpha; counter++) {
        results[counter] = counter;
      }
      return results;
    };

    //TODO IndexGenerator vervangen door Range?

    addProperty([Number, Array], "indexGenerator", indexGenerator);
    addProperty(Array, "gradeUp", gradeUp, false);
    addProperty(Array, "gradeUpSort", gradeUpSort, false);
    addProperty(Array, "gradeDown", gradeDown, false);

    //Object.defineProperty(Array.prototype, prefix +'' , {
    //    get: function (): number[] {
    //        var compare = function (alpha, omega) {
    //            loop++
    //            if (alpha.value < omega.value) {
    //                return -1;
    //            } else if (alpha.value > omega.value) {
    //                return 1;
    //            } else {
    //                return 0;
    //            }
    //        }
    //        //               try {
    //        var length = this.length,
    //            loop = 0
    //        var thisIndex = new Array(length),
    //            results = new Array(length),
    //            indices = new Array(length)
    //        for (var counter = 0; counter < length; counter++) {
    //            thisIndex[counter] = { value: this[counter], index: counter }
    //        }
    //        results = thisIndex.sort(compare)
    //        for (var counter = 0; counter < length; counter++) {
    //            indices[counter] = results[counter].index
    //        }
    //        console.log('Loops :' + loop)
    //        return indices
    //        //}
    //        //catch (error) {
    //        //}
    //        //finally {
    //        //}
    //    }
    //})
    //    Object.defineProperty(Array.prototype, prefix + "gradeDownJS", {
    //    get: function (): number[] {
    //        var compare = function (alpha, omega) {
    //            loop++
    //            if (alpha.value < omega.value) {
    //                return 1;
    //            } else if (alpha.value > omega.value) {
    //                return -1;
    //            } else {
    //                return 0;
    //            }
    //        }
    //        //              try {
    //        var length = this.length,
    //            loop = 0
    //        var thisIndex = new Array(length),
    //            results = new Array(length),
    //            indices = new Array(length)
    //        for (var counter = 0; counter < length; counter++) {
    //            thisIndex[counter] = { value: this[counter], index: counter }
    //        }
    //        results = thisIndex.sort(compare)
    //        for (var counter = 0; counter < length; counter++) {
    //            indices[counter] = results[counter].index
    //        }
    //        console.log('Loops :' + loop)
    //        return indices
    //        //}
    //        //catch (error) {
    //        //}
    //        //finally {
    //        //}
    //    }
    //})
  }
}

namespace Dyadic {
  export namespace NonScalar {
    export var deal = function(omega: number | Array<number>): number[] {
      let l: number = Array.isArray(omega) ? omega[0] : omega;
      let r: number = Array.isArray(this) ? this[0] : this;

      let deal = (l: number, r: number) => {
        let results = l[APLPrefix + "indexGenerator"];
        let h: number, j: number;
        for (var i = 0; i < r; i++) {
          j = i + Math.floor(Math.random() * (l - i)); // j = i + (omega-i).roll

          //   [results[j], results[i]]=[results[i], results[j]]   //destructuring werkt nog niet
          h = results[i];
          results[i] = results[j];
          results[j] = h;
        }
        return results.slice(0, r);
      };
      return deal(l.valueOf(), r.valueOf()); // 6xsneller dan function deal (...){}
    };

    addPrototype([Array, Number], "deal", deal);

    export var from = function(omega: any | Array<any>): Array<any> {
      let l: Array<number> = Array.isArray(this)
        ? this
        : this[APLPrefix + "ravel"];
      let r = Array.isArray(omega) ? omega : omega[APLPrefix + "ravel"];
      const rho = l.length;
      let z = new Array(rho);
      for (let i = 0; i < rho; i++) {
        z[i] = r[l[i]];
      }
      return z;
    };

    addPrototype([Array, Number], "from", from);

    export var indicesOf = function(omega: any): Number | Array<Number> {
      let l: Array<number> = Array.isArray(this)
        ? this
        : this[APLPrefix + "ravel"];
      let r = Array.isArray(omega) ? omega : omega[APLPrefix + "ravel"];
      const rrho = r.length;
      const lrho = l.length;
      let z: Number | Array<Number> = new Array(rrho);
      for (let i = 0; i < rrho; i++) {
        z[i] = l.indexOf(r[i]);
        z[i] = z[i] === -1 ? lrho : z[i];
      }
      return z;
    };
    addPrototype(Array, "indicesOf", indicesOf);

    export var memberShip = function(omega: any): Boolean | Array<Boolean> {
      let l: Array<number> = Array.isArray(this)
        ? this
        : this[APLPrefix + "ravel"];
      let r: Array<any> = Array.isArray(omega)
        ? omega
        : omega[APLPrefix + "ravel"];
      const lrho = l.length;
      let z: Boolean | Array<Boolean> = new Array(lrho);
      for (let i = 0; i < lrho; i++) {
        z[i] = r.indexOf(l[i]) === -1 ? false : true;
      }
      return z;
    };
    addPrototype(Array, "memberShip", memberShip);

    export var match = function(omega): boolean {
      // http://stackoverflow.com/questions/7837456/how-to-compare-arrays-in-javascript
      //// arrayCompare :: (a -> b -> Bool) -> [a] -> [b] -> Bool
      //const arrayCompare = f => ([x, ...xs]) => ([y, ...ys]) => {
      //    if (x === undefined && y === undefined)
      //        return true
      //    else if (!f(x)(y))
      //        return false
      //    else
      //        return arrayCompare(f)(xs)(ys)
      //}
      //const equal = x => y => x === y
      //const arrayEqual = arrayCompare(equal)

      //let xs = [1, 2, 3]
      //let ys = [1, 2, 3]
      //console.log(arrayEqual(xs)(ys))

      // if the other array is a falsy value, return
      if (!omega) return false;

      // compare lengths - can save a lot of time
      if (this.length != omega.length) return false;

      for (var i = 0, l = this.length; i < l; i++) {
        // Check if we have nested arrays
        if (this[i] instanceof Array && omega[i] instanceof Array) {
          // recurse into the nested arrays
          if (!this[i].match(omega[i])) return false;
        } else if (this[i] != omega[i]) {
          // Warning - two different object instances will never be equal: {x:20} != {x:20}
          return false;
        }
      }
      return true;
    };

    addPrototype([Array, Number], "match", match);

    export var notMatch = function(omega): boolean {
      // if the other array is a falsy value, return
      if (!omega) return false;

      // compare lengths - can save a lot of time
      if (this.length != omega.length) return false;

      for (var i = 0, l = this.length; i < l; i++) {
        // Check if we have nested arrays
        if (this[i] instanceof Array && omega[i] instanceof Array) {
          // recurse into the nested arrays
          if (!this[i].notMatch(omega[i])) return false;
        } else if (this[i] != omega[i]) {
          // Warning - two different object instances will never be equal: {x:20} != {x:20}
          return false;
        }
      }
      return true;
    };

    addPrototype([Array, Number], "notMatch", notMatch);
  }
}
