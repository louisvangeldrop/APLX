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

        //var inverse = (omega) => {return         }

    }

}

namespace Dyadic {

    namespace NonScalar {

        //var divide = (omega) => {return         }

    }
}