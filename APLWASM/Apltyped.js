// type number = number;
// type i32 = i32;
// type i64 = i64;
// type f32 = f32;
// type f64 = f64;
// type anyref = any;
// var print = console.log ?? print
// var performance = performance ? performance : Date
function indexGenerator(alpha) {
    return Array.from({ length: alpha }, (_, i) => i);
    let results = new Array(alpha); // sneller dan []
    for (let counter = 0; counter < alpha; counter++) {
        results[counter] = counter;
    }
    return results;
}
;
let seed = 0; //uint32
function gradeUp(alpha, indices, low, high) {
    // indices.sort((a, b) => alpha[a] - alpha[b]);
    if (high <= low)
        return;
    let midValue = alpha[indices[Math.floor((low + high) / 2)]];
    let t1, t2;
    let t3, t4;
    let i = low, j = high;
    while (i <= j) {
        t1 = indices[i];
        t2 = indices[j];
        t3 = alpha[t1] >= midValue;
        t4 = alpha[t2] <= midValue;
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
    // return indices;
}
;
// var m_w = 123456789;
// var m_z = 987654321;
// var mask = 0xffffffff;
// function random() {
//     m_z = (36969 * (m_z & 65535) + (m_z >> 16)) & mask;
//     m_w = (18000 * (m_w & 65535) + (m_w >> 16)) & mask;
//     var xx = 4294967296 // 2**32
//     var result
//     result = (((m_z << 16) + (m_w & 65535)) >>> 1) / xx // should  be >>> 0
//     return result
// }
function deal(l, r) {
    let results = indexGenerator(l);
    let h, j;
    let i = 0;
    for (i = 0; i < r; i++) {
        j = i + Math.floor(Math.random() * (l - i)); // Math.floor|number j = i + (omega-i).roll
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
// { indexGenerator, deal, from, gradeUp, ravel }
export function main(n, length) {
    const dd = deal(length, length);
    const indexes = indexGenerator(length); //Array.from(dd.keys());
    // const ai = performance.now()
    for (var i = 0; i < n; i++) {
        gradeUp(dd, indexes, 0, length - 1); //, indexes) //, nul, length - 1)
    }
    // const index = gradeUp(dd, indexes, nul, l1)//, indexes) //, nul, length - 1)
    // console.log(performance.now() - ai)
    let test = true;
    let gg = indexes.map((a, x, arr) => test = test && dd[a] === x);
    // console.log(test)
    // print(dd[index[length - 1]]);
    // const sorted: number[] = from(index, dd)
    // print(sorted[length - 1]);
    return 100;//[indexes, dd] //index;
}
var length = 7281;
var n = 1000;
main(n, length)
// console.log()
