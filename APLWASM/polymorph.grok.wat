(module
  ;; Importeer geheugen (voor strings en data)
  (memory (export "memory") 1) ;; 1 pagina geheugen (64KB)

  ;; Data sectie voor de lastnames (strings in geheugen)
  (data (i32.const 0) "Solo\00")      ;; Offset 0: "Solo"
  (data (i32.const 5) "Skywalker\00") ;; Offset 5: "Skywalker"
  (data (i32.const 14) "Organa\00")   ;; Offset 14: "Organa"
  (data (i32.const 21) "Wan\00")      ;; Offset 21: "Wan"
  (data (i32.const 25) "Yoda\00")     ;; Offset 25: "Yoda"
  (data (i32.const 30) "Jedi\00")     ;; Offset 30: "Jedi"

  ;; Array van pointers naar lastnames (8 personen, elk een i32 pointer)
  (data (i32.const 100) 
    "\00\00\00\00" ;; han: pointer naar "Solo" (offset 0)
    "\05\00\00\00" ;; luke: pointer naar "Skywalker" (offset 5)
    "\0e\00\00\00" ;; leia: pointer naar "Organa" (offset 14)
    "\15\00\00\00" ;; obi: pointer naar "Wan" (offset 21)
    "\19\00\00\00" ;; yoda: pointer naar "Yoda" (offset 25)
    "\1e\00\00\00" ;; jedi: pointer naar "Jedi" (offset 30)
    "\05\00\00\00" ;; luke (duplicaat): pointer naar "Skywalker" (offset 5)
    "\0e\00\00\00" ;; leia (duplicaat): pointer naar "Organa" (offset 14)
  )

  ;; getName functie: retourneert een pointer naar de lastname van een persoon
  (func $getName (param $personPtr i32) (result i32)
    ;; Laad de lastname pointer uit de persoon (personPtr wijst naar een i32)
    (i32.load (local.get $personPtr))
  )

  ;; Hoofdfunctie om de lus uit te voeren
  (func $main (export "main")
    (local $i i64) ;; 64-bit integer voor de lus
    (local $index i32) ;; Index voor array-toegang
    (local $personPtr i32) ;; Pointer naar persoon in de array
    (local $namePtr i32) ;; Pointer naar lastname string

    ;; Start de lus: i = 0 tot 1_000_000_000
    (local.set $i (i64.const 0))
    (block
      (loop
        ;; Controleer of i < 1_000_000_000
        (br_if 1 (i64.ge_u (local.get $i) (i64.const 1000000000)))

        ;; Bereken index: i & 7 (bitwise AND om index te beperken tot 0-7)
        (local.set $index 
          (i32.wrap_i64 
            (i64.and (local.get $i) (i64.const 7))
          )
        )

        ;; Bereken pointer naar persoon: 100 + (index * 4) (elke pointer is 4 bytes)
        (local.set $personPtr
          (i32.add
            (i32.const 100) ;; Basisadres van de array
            (i32.mul (local.get $index) (i32.const 4))
          )
        )

        ;; Roep getName aan om lastname pointer te krijgen
        (local.set $namePtr
          (call $getName (local.get $personPtr))
        )

        ;; Verhoog i
        (local.set $i (i64.add (local.get $i) (i64.const 1)))
        (br 0) ;; Ga terug naar begin van de lus
      )
    )
  )
)