addVocabulary({
  '⌊':withIdentity(Infinity,pervasive({
    // ⌊123   ←→ 123
    // ⌊12.3  ←→ 12
    // ⌊¯12.3 ←→ ¯13
    // ⌊¯123  ←→ ¯123
    // ⌊'a'   !!! DOMAIN ERROR
    // ⌊12j3      ←→ 12j3
    // ⌊1.2j2.3   ←→ 1j2
    // ⌊1.2j¯2.3  ←→ 1j¯3
    // ⌊¯1.2j2.3  ←→ ¯1j2
    // ⌊¯1.2j¯2.3 ←→ ¯1j¯3
    // ⌊0 5 ¯5 (○1) ¯1.5 ←→ 0 5 ¯5 3 ¯2
    monad:Z.floor,
    // 3⌊5 ←→ 3
    // ⌊/⍬ ←→ ¯
    dyad:real(function(y,x){return Math.min(y,x)})
  })),
  '⌈':withIdentity(-Infinity,pervasive({
    // ⌈123   ←→ 123
    // ⌈12.3  ←→ 13
    // ⌈¯12.3 ←→ ¯12
    // ⌈¯123  ←→ ¯123
    // ⌈'a'   !!! DOMAIN ERROR
    // ⌈12j3      ←→ 12j3
    // ⌈1.2j2.3   ←→ 1j3
    // ⌈1.2j¯2.3  ←→ 1j¯2
    // ⌈¯1.2j2.3  ←→ ¯1j3
    // ⌈¯1.2j¯2.3 ←→ ¯1j¯2
    // ⌈0 5 ¯5(○1)¯1.5 ←→ 0 5 ¯5 4 ¯1
    monad:Z.ceil,
    // 3⌈5 ←→ 5
    // ⌈/⍬ ←→ ¯¯
    dyad:real(function(y,x){return Math.max(y,x)})
  }))
})
