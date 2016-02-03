namespace Monadic {

    namespace NonScalar {

        // domino←{(⍴⍵)⍴÷+/⍵}

        var domino = function (alpha: Array<Number>) {
            var abs = Math.abs, m = alpha.length, n = 1;
            var A = <any>alpha.same, Ai, Aj;
            var I = new Array(m), Ii, Ij;
            I.forEach((value, index, I) => I[index] = 0)
            I[0] = 1
            var i, j, k, x;
            for (j = 0; j < n; ++j) {
                var i0 = -1;
                var v0 = -1;
                for (i = j; i !== m; ++i) { k = abs(A[i]); if (k > v0) { i0 = i; v0 = k; } }
                Aj = A[i0]; A[i0] = A[j]; A[j] = Aj;
                Ij = I[i0]; I[i0] = I[j]; I[j] = Ij;
                x = Aj[j];
                for (k = j; k !== n; ++k)    Aj[k] /= x;
                for (k = n - 1; k !== -1; --k) Ij[k] /= x;
                for (i = m - 1; i !== -1; --i) {
                    if (i !== j) {
                        Ai = A[i];
                        Ii = I[i];
                        x = Ai[j];
                        for (k = j + 1; k !== n; ++k)  Ai[k] -= Aj[k] * x;
                        for (k = n - 1; k > 0; --k) { Ii[k] -= Ij[k] * x; --k; Ii[k] -= Ij[k] * x; }
                        if (k === 0) Ii[0] -= Ij[0] * x;
                    }
                }
            }
            return I;
        }

        var inv = function (alpha: Array<any>) {
            var s = dim(alpha), abs = Math.abs, m = s[0], n = s[1];
            var A = alpha.same, Ai, Aj;
            var I = m.indexGenerator.minus(m.indexGenerator), Ii, Ij;
            I[0] = [1]
            var i, j, k, x;
            for (j = 0; j < n; ++j) {
                var i0 = -1;
                var v0 = -1;
                for (i = j; i !== m; ++i) { k = abs(A[i][j]); if (k > v0) { i0 = i; v0 = k; } }
                Aj = A[i0]; A[i0] = A[j]; A[j] = Aj;
                Ij = I[i0]; I[i0] = I[j]; I[j] = Ij;
                x = Aj[j];
                for (k = j; k !== n; ++k)    Aj[k] /= x;
                for (k = n - 1; k !== -1; --k) Ij[k] /= x;
                for (i = m - 1; i !== -1; --i) {
                    if (i !== j) {
                        Ai = A[i];
                        Ii = I[i];
                        x = Ai[j];
                        for (k = j + 1; k !== n; ++k)  Ai[k] -= Aj[k] * x;
                        for (k = n - 1; k > 0; --k) { Ii[k] -= Ij[k] * x; --k; Ii[k] -= Ij[k] * x; }
                        if (k === 0) Ii[0] -= Ij[0] * x;
                    }
                }
            }
            return I;
        }

        var dim = function (x) {
            var y, z;
            if (typeof x === "object") {
                y = x[0];
                if (typeof y === "object") {
                    z = y[0];
                    if (typeof z === "object") {
                        return _dim(x);
                    }
                    return [x.length, y.length];
                }
                return [x.length];
            }
            return [];
        }

        var _dim = function (x) {
            var ret = [];
            while (typeof x === "object") { ret.push(x.length); x = x[0]; }
            return ret;
        }

    }

}