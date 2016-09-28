namespace Monadic {

    export namespace NonScalar {

        // domino←{(⍴⍵)⍴÷+/⍵}

        //   det←{
        //   ⎕IO ⎕ML←0 1            ⍝ Determinant of square matrix.
        //       ⍺←1                     ⍝ product of co- factor coefficients so far
        //       0 = n←⊃⍴⍵:⍺               ⍝ result for 0- by - 0
        //       i j←(⍴⍵)⊤{
        //       ⍵⍳⌈/⍵}|,⍵     ⍝ row and column index of maximal element
        //       k←⍳n
        //       (⍺×⍵[i;j]×¯1 * i + j)∇ ⍵[k~i;k~j] -⍵[k~i;j]∘.×⍵[i;k~j]÷⍵[i;j]
        //       }

        export var inverse = (omega: Array<number>) => { return omega[APLPrefix + 'reciprocal'][APLPrefix + 'divide'](omega.length) }
        addProperty([Array], 'inverse', inverse, false)


    }

}

namespace Dyadic {

    export namespace NonScalar {

        export var domino = function (omega: Array<number>) {
            return this[APLPrefix + 'times'](omega[APLPrefix + 'inverse'])[APLPrefix + 'aplReduce'](Scalar.plus)
        }
        addPrototype([Array], 'domino', domino)

        export var decode = function (omega: Array<number> | Number): number {
            let max: number = this[APLPrefix + 'ravel'].length[APLPrefix + 'maximum'](omega[APLPrefix + 'ravel'].length)
            let alpha = max[APLPrefix + 'reshape'](this)
            omega = max[APLPrefix + 'reshape'](omega)
            let result = omega[max - 1]
            let temp = alpha[max - 1]
            if (max === 1) { return result }
            for (let i = max - 2; i > -1; i--) {
                result += omega[i] * temp
                temp *= alpha[i]
            }
            return result

            //   return omega.times(this.power(omega.length.indexGenerator.reverse())).aplReduce(Scalar.plus)
        } // decode←{+/⍵×⍺*(⌽⍳⍴⍺)}   24 60 60⊥2 30 5 => (2×60×60)+(30×60)+5

        addPrototype([Array, Number], 'decode', decode)

        export var encode = function (omega: number | number[]): number | number[] {   // ...omega:number[]
            if (typeof omega === 'number') { return omega === 0 ? this : this % omega }
            let max = omega.length
            let result = max[APLPrefix + 'reshape'](0)
            let divider = this
            for (let i = max - 1; i > -1; i--) {
                if (omega[i] === 0) {
                    result[i] = divider
                    return result
                }
                result[i] = divider % omega[i]
                divider = Math.floor(divider / omega[i])
            }
            return result
            // (1000).encode( [24, 60, 60])
        }

        addPrototype(Number, 'encode', encode)

    }
}