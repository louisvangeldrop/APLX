(module
  ;; Geheugen declareren (1 pagina = 64KB)
  (memory 1500)
  
  ;; Functie om twee waarden in de index-array te verwisselen
  (func $swap (param $indices i32) (param $i i32) (param $j i32)
    (local $temp i32)
    ;; Laad waarde op indices[i] in temp
    (local.set $temp
      (i32.load (i32.add (local.get $indices) (i32.shl (local.get $i) (i32.const 2))))
    )
    ;; indices[i] = indices[j]
    (i32.store
      (i32.add (local.get $indices) (i32.shl (local.get $i) (i32.const 2)))
      (i32.load (i32.add (local.get $indices) (i32.shl (local.get $j) (i32.const 2))))
    )
    ;; indices[j] = temp
    (i32.store
      (i32.add (local.get $indices) (i32.shl (local.get $j) (i32.const 2)))
      (local.get $temp)
    )
  )

  ;; Hoofdfunctie gradeUp
  (func $gradeUp (param $arr i32) (param $len i32) (param $indices i32) (result i32)
    (local $i i32)
    (local $j i32)
    (local $swapped i32)

    ;; Vul de indices array met [0, 1, 2, ...]
    (local.set $i (i32.const 0))
    (block
      (loop
        (i32.ge_s (local.get $i) (local.get $len))
        br_if 1
        (i32.store
          (i32.add (local.get $indices) (i32.shl (local.get $i) (i32.const 2)))
          (local.get $i)
        )
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        br 0
      )
    )

    ;; Bubble sort op basis van arr-waarden
    (local.set $i (i32.const 0))
    (block
      (loop
        (i32.ge_s (local.get $i) (i32.sub (local.get $len) (i32.const 1)))
        br_if 1
        
        (local.set $swapped (i32.const 0))
        (local.set $j (i32.const 0))
        
        (block
          (loop
            (i32.ge_s (local.get $j) (i32.sub (i32.sub (local.get $len) (local.get $i)) (i32.const 1)))
            br_if 1
            
            ;; Vergelijk arr[indices[j]] met arr[indices[j+1]]
            (if
              (i32.gt_s
                (i32.load
                  (i32.add (local.get $arr)
                    (i32.shl
                      (i32.load (i32.add (local.get $indices) (i32.shl (local.get $j) (i32.const 2))))
                      (i32.const 2)
                    )
                  )
                )
                (i32.load
                  (i32.add (local.get $arr)
                    (i32.shl
                      (i32.load
                        (i32.add (local.get $indices)
                          (i32.shl (i32.add (local.get $j) (i32.const 1)) (i32.const 2))
                        )
                      )
                      (i32.const 2)
                    )
                  )
                )
              )
              (then
                ;; Swap indices[j] en indices[j+1]
                (call $swap (local.get $indices) (local.get $j) (i32.add (local.get $j) (i32.const 1)))
                (local.set $swapped (i32.const 1))
              )
            )
            
            (local.set $j (i32.add (local.get $j) (i32.const 1)))
            br 0
          )
        )
        
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        br 0
      )
    )
    
    ;; Return pointer naar indices array
    (local.get $indices)
  )

  ;; Exporteer de functie en geheugen
  (export "gradeUp" (func $gradeUp))
  (export "memory" (memory 0))
)