// type number = number;
// type i32 = i32;
// type i64 = i64;
// type f32 = f32;
// type f64 = f64;
// type anyref = any;

// var print = print ? print : console.log
// var performance = performance ? performance : Date


function indexGenerator(alpha: number): number[] {
    let results: number[] = new Array(alpha); // sneller dan []
    for (let counter: number = 0; counter < alpha; counter++) {
        results[counter] = counter;
    }
    return results;
};

let seed = 0 //uint32


function gradeUp(alpha: number[], indices: number[], low: number, high: number): number[] {
    if (high <= low) return indices;
    let midValue: number = alpha[indices[Math.floor((low + high) / 2)]];
    let t1: number, t2: number;
    let t3: boolean, t4: boolean;
    let i = low, j = high;
    while (i <= j) {
        t1 = indices[i]
        t2 = indices[j]
        t3 = alpha[t1] >= midValue
        t4 = alpha[t2] <= midValue
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
};

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

function deal(l: number, r: number): number[] {
    let results: number[] = indexGenerator(l)
    let h: number, j: number;
    let i = 0
    for (i = 0; i < r; i++) {
        j = i + Math.floor(Math.random() * (l - i)); // Math.floor|number j = i + (omega-i).roll
        h = results[i];
        results[i] = results[j];
        results[j] = h;
    }
    return results.slice(0, r);
};

function from(alpha: number[], omega: number[]) {
    const rho = alpha.length;
    const ol = omega.length;
    let z: number[] = new Array(rho);
    for (let i = 0; i < rho; i++) {
        z[i] = omega[alpha[i] >= 0 ? alpha[i] : (ol + alpha[i])];
    }
    return z;
}

// { indexGenerator, deal, from, gradeUp, ravel }

function main(n: number, length: number) {
    const dd: number[] = deal(length, length)
    const indexes: number[] = indexGenerator(length) //deal(length, length)
    // const ai = performance.now()
    for (var i = 0; i < n; i++) {
        var index: number[] = gradeUp(dd, indexes, 0, length - 1); //, indexes) //, nul, length - 1)
    }
    // const index: number[] = gradeUp(dd, indexes, nul, l1)//, indexes) //, nul, length - 1)
    // print(performance.now() - ai)
    // let test = true;
    // let gg = index.map((a, x, arr) => test = test && dd[a] === x);
    // print(test)
    // print(dd[index[length - 1]]);
    // const sorted: number[] = from(index, dd)
    // print(sorted[length - 1]);
    return [index, dd]
}

var length = 7281
var n = 1000
main(n, length)
