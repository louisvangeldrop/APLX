// "use strict";
// type i32_ = number //i32; mag niet bij Hermes
function indexGenerator(alpha) {
    let results = new Array(alpha); // sneller dan []
    for (let counter = 0; counter < alpha; counter++) {
        results[counter] = counter;
    }
    return results;
}
;
let seed = 0; //uint32
function gradeUp(alpha, indices, low, high) {
    if (high <= low)
        return indices;
    let midValue = alpha[indices[Math.floor((low + high) / 2)]];
    let t1;
    let t2;
    let t3;
    let t4;
    let i = low, j = high;
    while (i <= j) {
        (t1 = indices[i]), (t2 = indices[j]);
        (t3 = alpha[t1] >= midValue), (t4 = alpha[t2] <= midValue);
        if (t3 && t4) {
            // [indices[i], indices[j]] = [indices[j], indices[i]]  // swap not supported
            indices[i] = t2;
            indices[j] = t1;
            i = i + 1;
            j = j - 1;
        }
        else {
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
    return indices;
}
;

function deal(l, r) {
    // let _deal = (l: i32, r: i32) => {
    let results = indexGenerator(l);
    let h;
    let j;
    // r = r ?? l
    for (let i = 0; i < r; i++) {
        j = i + Math.floor(Math.random() * (l - i)); // Math.floor|number j = i + (omega-i).roll
        //   [results[j], results[i]]=[results[i], results[j]]   //destructuring werkt nog niet
        h = results[i];
        results[i] = results[j];
        results[j] = h;
    }
    return results.slice(0, r);
}
;

function from(alpha, omega) {
    const rho = alpha.length;
    const ol = omega.length;
    let z = new Array(rho);
    for (let i = 0; i < rho; i++) {
        z[i] = omega[alpha[i] >= 0 ? alpha[i] : (ol + alpha[i])];
    }
    return z;
}
;

// var performance = Date// var print = console.log
var print = print ?? console.log
var performance = performance ?? Date

function main(n, length) {
    const ai = performance.now();
    const indexes = indexGenerator(length); //deal(length, length)
    const dd = deal(length, length);
    for (var i = 0; i < n; i++) {
        const nul = 0;
        var index = gradeUp(dd, indexes, 0, length - 1); //, indexes) //, nul, length - 1)
    }
    let test = true;
    let gg = index.map((a, x, arr) => test = test && dd[a] === x);
    // return index[length - 1];
    const sorted = from(index, dd)
    // print(sorted[length - 1])
    print(performance.now() - ai);
    // print(test);

}
var length = 7281
var n = 1000
main(n, length);
