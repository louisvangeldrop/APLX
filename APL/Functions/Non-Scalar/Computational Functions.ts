namespace Monadic {

    namespace NonScalar {

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

        export var inverse = (omega: Array<number>) => { return omega.reciprocal.divide(omega.length) }
        addProperty([Array], 'inverse', inverse, false)
    }

}

namespace Dyadic {

    namespace NonScalar {

        export var domino = function (omega: Array<number>) { return this.times(omega.inverse).aplReduce(Scalar.plus) }
        addPrototype([Array], 'domino', domino)
    }
}