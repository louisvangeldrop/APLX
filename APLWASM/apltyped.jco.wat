(module
  (import "env" "newArray" (func $newArray (param i32) (result externref)))
  (import "env" "getArrayElement" (func $getArrayElement (param externref) (param i32) (result i32)))
  (import "env" "setArrayElement" (func $setArrayElement (param externref) (param i32) (param i32)))

  (global $seed (mut i32) (i32.const 123456789))

  (func $rand (result f64)
    (local $temp i32)
    (local.set $temp 
      (i32.add 
        (i32.mul 
          (global.get $seed) 
          (i32.const 69069)
        ) 
        (i32.const 1)
      )
    )
    (global.set $seed (local.get $temp))
    (f64.div
      (f64.convert_i32_u (local.get $temp))
      (f64.const 4294967296)
    )
  )

  (func $floorToInt (param $value f64) (result i32)
    (i32.trunc_f64_s (f64.floor (local.get $value)))
  )

  (func $indexGenerator (param $alpha i32) (result externref)
    (local $i i32)
    (local $array externref)
    (local.set $array (call $newArray (local.get $alpha)))
    (loop $loop
      (i32.lt_s (local.get $i) (local.get $alpha))
      (if
        (then
          (call $setArrayElement 
            (local.get $array) 
            (local.get $i) 
            (local.get $i)
          )
          (local.set $i (i32.add (local.get $i) (i32.const 1)))
          (br $loop)
        )
      )
    )
    (local.get $array)
  )

  (func $gradeUp (param $alpha externref) (param $indices externref) (param $low i32) (param $high i32)
    (local $mid i32)
    (local $i i32)
    (local $j i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $midValue i32)
    
    (if (i32.le_s (local.get $high) (local.get $low))
      (then (return))
    )
    
    (local.set $mid (i32.div_s (i32.add (local.get $low) (local.get $high)) (i32.const 2)))
    (local.set $midValue 
      (call $getArrayElement 
        (local.get $alpha) 
        (call $getArrayElement (local.get $indices) (local.get $mid))
      )
    )
    
    (local.set $i (local.get $low))
    (local.set $j (local.get $high))
    
    (block $outer
      (loop $inner
        (br_if $outer (i32.gt_s (local.get $i) (local.get $j)))
        
        (local.set $t1 (call $getArrayElement (local.get $indices) (local.get $i)))
        (local.set $t2 (call $getArrayElement (local.get $indices) (local.get $j)))
        
        (if (i32.and 
              (i32.ge_s 
                (call $getArrayElement (local.get $alpha) (local.get $t1)) 
                (local.get $midValue)
              )
              (i32.le_s 
                (call $getArrayElement (local.get $alpha) (local.get $t2)) 
                (local.get $midValue)
              )
            )
          (then
            (call $setArrayElement (local.get $indices) (local.get $i) (local.get $t2))
            (call $setArrayElement (local.get $indices) (local.get $j) (local.get $t1))
            (local.set $i (i32.add (local.get $i) (i32.const 1)))
            (local.set $j (i32.sub (local.get $j) (i32.const 1)))
          )
          (else
            (if (i32.lt_s 
                  (call $getArrayElement (local.get $alpha) (local.get $t1)) 
                  (local.get $midValue)
                )
              (then (local.set $i (i32.add (local.get $i) (i32.const 1))))
            )
            (if (i32.gt_s 
                  (call $getArrayElement (local.get $alpha) (local.get $t2)) 
                  (local.get $midValue)
                )
              (then (local.set $j (i32.sub (local.get $j) (i32.const 1))))
            )
          )
        )
        (br $inner)
      )
    )
    
    (call $gradeUp 
      (local.get $alpha) 
      (local.get $indices) 
      (local.get $low) 
      (local.get $j)
    )
    (call $gradeUp 
      (local.get $alpha) 
      (local.get $indices) 
      (local.get $i) 
      (local.get $high)
    )
  )

  (func $deal (param $l i32) (param $r i32) (result externref)
    (local $i i32)
    (local $j i32)
    (local $h i32)
    (local $results externref)
    (local $rand f64)
    (local $range i32)
    
    (local.set $results (call $indexGenerator (local.get $l)))
    
    (block $exit
      (loop $loop
        (br_if $exit (i32.ge_s (local.get $i) (local.get $r)))
        
        (local.set $range (i32.sub (local.get $l) (local.get $i)))
        (local.set $rand (call $rand))
        (local.set $j 
          (i32.add 
            (local.get $i)
            (call $floorToInt 
              (f64.mul 
                (local.get $rand) 
                (f64.convert_i32_s (local.get $range))
              )
            )
          )
        )
        
        (local.set $h (call $getArrayElement (local.get $results) (local.get $i)))
        (call $setArrayElement 
          (local.get $results) 
          (local.get $i) 
          (call $getArrayElement (local.get $results) (local.get $j))
        )
        (call $setArrayElement 
          (local.get $results) 
          (local.get $j) 
          (local.get $h)
        )
        
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $loop)
      )
    )
    (local.get $results)
  )

  (func $from (param $alpha externref) (param $omega externref) (result externref)
    (local $i i32)
    (local $rho i32)
    (local $ol i32)
    (local $z externref)
    (local $idx i32)
    
    (local.set $rho (call $getArrayElement (local.get $alpha) (i32.const -1)))
    (local.set $ol (call $getArrayElement (local.get $omega) (i32.const -1)))
    (local.set $z (call $newArray (local.get $rho)))
    
    (loop $loop
      (i32.lt_s (local.get $i) (local.get $rho))
      (if
        (then
          (local.set $idx (call $getArrayElement (local.get $alpha) (local.get $i)))
          (if (i32.ge_s (local.get $idx) (i32.const 0))
            (then)
            (else
              (local.set $idx (i32.add (local.get $ol) (local.get $idx)))
            )
          )
          (call $setArrayElement 
            (local.get $z) 
            (local.get $i) 
            (call $getArrayElement (local.get $omega) (local.get $idx))
          )
          (local.set $i (i32.add (local.get $i) (i32.const 1)))
          (br $loop)
        )
      )
    )
    (local.get $z)
  )

  (func $main (param $n i32) (param $length i32) (result externref)
    (local $dd externref)
    (local $indexes externref)
    (local $i i32)
    
    (local.set $dd (call $deal (local.get $length) (local.get $length)))
    (local.set $indexes (call $indexGenerator (local.get $length)))
    
    (loop $loop
      (i32.lt_s (local.get $i) (local.get $n))
      (if
        (then
          (call $gradeUp 
            (local.get $dd) 
            (local.get $indexes) 
            (i32.const 0) 
            (i32.sub (local.get $length) (i32.const 1))
          )
          (local.set $i (i32.add (local.get $i) (i32.const 1)))
          (br $loop)
        )
      )
    )
    (local.get $indexes)
  )

  (export "indexGenerator" (func $indexGenerator))
  (export "gradeUp" (func $gradeUp))
  (export "deal" (func $deal))
  (export "from" (func $from))
  (export "main" (func $main))
)