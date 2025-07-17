(module
  (type (;0;) (func (result f64 i32)))
  (type (;1;) (func (param f64 i32 f64 i32) (result f64 i32)))
  (type (;2;) (func (param i32 i32 i32 i32 i32 i32) (result f64 i32)))
  (type (;3;) (func (param f64 i32) (result i32 i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param f64 i32) (result f64)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 f64 i32 i32 i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;10;) (func (param f64) (result f64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param f64 i32) (result f64 i32)))
  (type (;13;) (func (param f64 i32 f64 i32) (result f64)))
  (type (;14;) (func (param i32 i32) (result i32 i32)))
  (type (;15;) (func (param i32 i32) (result f64 i32)))
  (type (;16;) (func (param f64 i32 f64 i32 f64 i32) (result f64 i32)))
  (type (;17;) (func (param i32 i32 i32 i32) (result f64 i32)))
  (type (;18;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;19;) (func (param f64 i32 f64 i32 f64 i32) (result f64)))
  (type (;20;) (func (param i32 i32 i32 i32) (result i32 i32)))
  (type (;21;) (func (param i32 i32 i32 i32)))
  (type (;22;) (func (param i32 i32 i32 i32 f64 i32)))
  (type (;23;) (func (param i32 i32 i32 i32 f64 i32 i32 i32) (result f64 i32)))
  (type (;24;) (func (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)))
  (func (;0;) (type 0) (result f64 i32)
    (local i32)
    f64.const 0x0p+0 (;=0;)
    global.set 0
    i32.const 1
    global.set 1
    call 1
    local.tee 0)
  (func (;1;) (type 0) (result f64 i32)
    (local f64 f64 i32 f64 i32 f64 f64 f64 i32 f64 f64 i32 f64 i32 i32 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 f64 i32 f64 f64 i32 i32 i32)
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    call 5
    f64.convert_i32_u
    local.tee 5
    i32.trunc_sat_f64_u
    i32.const 7
    f64.const 0x1p+15 (;=32768;)
    local.set 7
    f64.const 0x1p+1 (;=2;)
    local.tee 6
    i32.trunc_sat_f64_s
    i32.const 6
    local.get 7
    i32.trunc_sat_f64_u
    i32.const 195
    i32.const -1194656941
    i32.const 1
    call 3
    local.set 2
    i32.trunc_sat_f64_u
    local.get 2
    call 64
    local.get 5
    i32.const 7
    call 2
    local.tee 2
    local.set 4
    local.tee 3
    local.set 9
    f64.const 0x1.0418p+15 (;=33292;)
    local.set 10
    local.get 4
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 9
      i32.trunc_sat_f64_s
      local.get 4
      local.get 10
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.04b4p+15 (;=33370;)
      i32.const 195
      i32.const -1929407544
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 9
    i32.trunc_sat_f64_s
    local.set 13
    local.get 4
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16247 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16255
    drop
    local.get 3
    local.set 15
    f64.const 0x1.0436p+15 (;=33307;)
    local.set 16
    local.get 4
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 15
      i32.trunc_sat_f64_s
      local.get 4
      local.get 16
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.04c6p+15 (;=33379;)
      i32.const 195
      i32.const 75084714
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 15
    i32.trunc_sat_f64_s
    local.set 13
    local.get 4
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16238 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16246
    drop
    local.get 3
    local.set 17
    f64.const 0x1.0452p+15 (;=33321;)
    local.set 18
    local.get 4
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 17
      i32.trunc_sat_f64_s
      local.get 4
      local.get 18
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.04dap+15 (;=33389;)
      i32.const 195
      i32.const 1655899669
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 17
    i32.trunc_sat_f64_s
    local.set 13
    local.get 4
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16229 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16237
    drop
    global.get 0
    f64.const 0x0p+0 (;=0;)
    f64.gt
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 3
      local.set 19
      f64.const 0x1.04f2p+15 (;=33401;)
      local.set 20
      local.get 4
      local.set 11
      block (result f64)  ;; label = @2
        local.get 11
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 19
        i32.trunc_sat_f64_s
        local.get 4
        local.get 20
        i32.trunc_sat_f64_u
        i32.const 195
        f64.const 0x1.0514p+15 (;=33418;)
        i32.const 195
        i32.const 130031746
        i32.const 1
        call 75
        drop
      end
      local.tee 12
      local.get 19
      i32.trunc_sat_f64_s
      local.set 13
      local.get 4
      local.tee 14
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 14
        call 4
        drop
        local.set 13
      end
      local.get 13
      local.get 12
      f64.store offset=16220 align=1
      local.get 13
      i32.const 195
      i32.store8 offset=16228
      drop
    end
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    call 5
    f64.convert_i32_u
    local.tee 5
    i32.trunc_sat_f64_u
    i32.const 7
    f64.const 0x1p+15 (;=32768;)
    local.set 24
    f64.const 0x1p+1 (;=2;)
    local.tee 23
    i32.trunc_sat_f64_s
    i32.const 6
    local.get 24
    i32.trunc_sat_f64_u
    i32.const 195
    i32.const -1194656941
    i32.const 1
    call 3
    local.set 2
    i32.trunc_sat_f64_u
    local.get 2
    call 64
    local.get 5
    i32.const 7
    call 2
    local.tee 2
    local.set 22
    local.tee 21
    local.set 25
    f64.const 0x1.052ap+15 (;=33429;)
    local.set 26
    local.get 22
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 25
      i32.trunc_sat_f64_s
      local.get 22
      local.get 26
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.0546p+15 (;=33443;)
      i32.const 195
      i32.const 190312678
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 25
    i32.trunc_sat_f64_s
    local.set 13
    local.get 22
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16211 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16219
    drop
    local.get 21
    local.set 27
    f64.const 0x1.0436p+15 (;=33307;)
    local.set 28
    local.get 22
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 27
      i32.trunc_sat_f64_s
      local.get 22
      local.get 28
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.055ap+15 (;=33453;)
      i32.const 195
      i32.const 75084714
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 27
    i32.trunc_sat_f64_s
    local.set 13
    local.get 22
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16238 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16246
    drop
    local.get 21
    local.set 29
    f64.const 0x1.0482p+15 (;=33345;)
    local.set 30
    local.get 22
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 29
      i32.trunc_sat_f64_s
      local.get 22
      local.get 30
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.0578p+15 (;=33468;)
      i32.const 195
      i32.const -347251745
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 29
    i32.trunc_sat_f64_s
    local.set 13
    local.get 22
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16202 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16210
    drop
    global.get 0
    f64.const 0x1p+0 (;=1;)
    f64.gt
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 21
      local.set 31
      f64.const 0x1.058cp+15 (;=33478;)
      local.set 32
      local.get 22
      local.set 11
      block (result f64)  ;; label = @2
        local.get 11
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 31
        i32.trunc_sat_f64_s
        local.get 22
        local.get 32
        i32.trunc_sat_f64_u
        i32.const 195
        f64.const 0x1.05aap+15 (;=33493;)
        i32.const 195
        i32.const 1799750019
        i32.const 1
        call 75
        drop
      end
      local.tee 12
      local.get 31
      i32.trunc_sat_f64_s
      local.set 13
      local.get 22
      local.tee 14
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 14
        call 4
        drop
        local.set 13
      end
      local.get 13
      local.get 12
      f64.store offset=16193 align=1
      local.get 13
      i32.const 195
      i32.store8 offset=16201
      drop
    end
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    call 5
    f64.convert_i32_u
    local.tee 5
    i32.trunc_sat_f64_u
    i32.const 7
    f64.const 0x1p+15 (;=32768;)
    local.set 36
    f64.const 0x1p+1 (;=2;)
    local.tee 35
    i32.trunc_sat_f64_s
    i32.const 6
    local.get 36
    i32.trunc_sat_f64_u
    i32.const 195
    i32.const -1194656941
    i32.const 1
    call 3
    local.set 2
    i32.trunc_sat_f64_u
    local.get 2
    call 64
    local.get 5
    i32.const 7
    call 2
    local.tee 2
    local.set 34
    local.tee 33
    local.set 37
    f64.const 0x1.0418p+15 (;=33292;)
    local.set 38
    local.get 34
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 37
      i32.trunc_sat_f64_s
      local.get 34
      local.get 38
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.05bep+15 (;=33503;)
      i32.const 195
      i32.const -1929407544
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 37
    i32.trunc_sat_f64_s
    local.set 13
    local.get 34
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16247 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16255
    drop
    local.get 33
    local.set 39
    f64.const 0x1.0436p+15 (;=33307;)
    local.set 40
    local.get 34
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 39
      i32.trunc_sat_f64_s
      local.get 34
      local.get 40
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.05d2p+15 (;=33513;)
      i32.const 195
      i32.const 75084714
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 39
    i32.trunc_sat_f64_s
    local.set 13
    local.get 34
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16238 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16246
    drop
    local.get 33
    local.set 41
    f64.const 0x1.047p+15 (;=33336;)
    local.set 42
    local.get 34
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 41
      i32.trunc_sat_f64_s
      local.get 34
      local.get 42
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.05eap+15 (;=33525;)
      i32.const 195
      i32.const 72413159
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 41
    i32.trunc_sat_f64_s
    local.set 13
    local.get 34
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16184 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16192
    drop
    global.get 0
    f64.const 0x1p+1 (;=2;)
    f64.gt
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 33
      local.set 43
      f64.const 0x1.06p+15 (;=33536;)
      local.set 44
      local.get 34
      local.set 11
      block (result f64)  ;; label = @2
        local.get 11
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 43
        i32.trunc_sat_f64_s
        local.get 34
        local.get 44
        i32.trunc_sat_f64_u
        i32.const 195
        f64.const 0x1.061cp+15 (;=33550;)
        i32.const 195
        i32.const -1379287367
        i32.const 1
        call 75
        drop
      end
      local.tee 12
      local.get 43
      i32.trunc_sat_f64_s
      local.set 13
      local.get 34
      local.tee 14
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 14
        call 4
        drop
        local.set 13
      end
      local.get 13
      local.get 12
      f64.store offset=16175 align=1
      local.get 13
      i32.const 195
      i32.store8 offset=16183
      drop
    end
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    call 5
    f64.convert_i32_u
    local.tee 5
    i32.trunc_sat_f64_u
    i32.const 7
    f64.const 0x1p+15 (;=32768;)
    local.set 48
    f64.const 0x1p+1 (;=2;)
    local.tee 47
    i32.trunc_sat_f64_s
    i32.const 6
    local.get 48
    i32.trunc_sat_f64_u
    i32.const 195
    i32.const -1194656941
    i32.const 1
    call 3
    local.set 2
    i32.trunc_sat_f64_u
    local.get 2
    call 64
    local.get 5
    i32.const 7
    call 2
    local.tee 2
    local.set 46
    local.tee 45
    local.set 49
    f64.const 0x1.0418p+15 (;=33292;)
    local.set 50
    local.get 46
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 49
      i32.trunc_sat_f64_s
      local.get 46
      local.get 50
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.062ep+15 (;=33559;)
      i32.const 195
      i32.const -1929407544
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 49
    i32.trunc_sat_f64_s
    local.set 13
    local.get 46
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16247 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16255
    drop
    local.get 45
    local.set 51
    f64.const 0x1.0436p+15 (;=33307;)
    local.set 52
    local.get 46
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 51
      i32.trunc_sat_f64_s
      local.get 46
      local.get 52
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.064p+15 (;=33568;)
      i32.const 195
      i32.const 75084714
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 51
    i32.trunc_sat_f64_s
    local.set 13
    local.get 46
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16238 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16246
    drop
    local.get 45
    local.set 53
    f64.const 0x1.049ap+15 (;=33357;)
    local.set 54
    local.get 46
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 53
      i32.trunc_sat_f64_s
      local.get 46
      local.get 54
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1p+0 (;=1;)
      i32.const 2
      i32.const 145883002
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 53
    i32.trunc_sat_f64_s
    local.set 13
    local.get 46
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16166 align=1
    local.get 13
    i32.const 2
    i32.store8 offset=16174
    drop
    global.get 0
    f64.const 0x1.8p+1 (;=3;)
    f64.gt
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 45
      local.set 55
      f64.const 0x1.0652p+15 (;=33577;)
      local.set 56
      local.get 46
      local.set 11
      block (result f64)  ;; label = @2
        local.get 11
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 55
        i32.trunc_sat_f64_s
        local.get 46
        local.get 56
        i32.trunc_sat_f64_u
        i32.const 195
        f64.const 0x1.066ep+15 (;=33591;)
        i32.const 195
        i32.const -1681734659
        i32.const 1
        call 75
        drop
      end
      local.tee 12
      local.get 55
      i32.trunc_sat_f64_s
      local.set 13
      local.get 46
      local.tee 14
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 14
        call 4
        drop
        local.set 13
      end
      local.get 13
      local.get 12
      f64.store offset=16157 align=1
      local.get 13
      i32.const 195
      i32.store8 offset=16165
      drop
    end
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    call 5
    f64.convert_i32_u
    local.tee 5
    i32.trunc_sat_f64_u
    i32.const 7
    f64.const 0x1p+15 (;=32768;)
    local.set 60
    f64.const 0x1p+1 (;=2;)
    local.tee 59
    i32.trunc_sat_f64_s
    i32.const 6
    local.get 60
    i32.trunc_sat_f64_u
    i32.const 195
    i32.const -1194656941
    i32.const 1
    call 3
    local.set 2
    i32.trunc_sat_f64_u
    local.get 2
    call 64
    local.get 5
    i32.const 7
    call 2
    local.tee 2
    local.set 58
    local.tee 57
    local.set 61
    f64.const 0x1.0436p+15 (;=33307;)
    local.set 62
    local.get 58
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 61
      i32.trunc_sat_f64_s
      local.get 58
      local.get 62
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.0684p+15 (;=33602;)
      i32.const 195
      i32.const 75084714
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 61
    i32.trunc_sat_f64_s
    local.set 13
    local.get 58
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16238 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16246
    drop
    local.get 57
    local.set 63
    f64.const 0x1.0452p+15 (;=33321;)
    local.set 64
    local.get 58
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 63
      i32.trunc_sat_f64_s
      local.get 58
      local.get 64
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.0698p+15 (;=33612;)
      i32.const 195
      i32.const 1655899669
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 63
    i32.trunc_sat_f64_s
    local.set 13
    local.get 58
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16229 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16237
    drop
    global.get 0
    f64.const 0x1p+2 (;=4;)
    f64.gt
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 45
      local.set 65
      f64.const 0x1.06b2p+15 (;=33625;)
      local.set 66
      local.get 46
      local.set 11
      block (result f64)  ;; label = @2
        local.get 11
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 65
        i32.trunc_sat_f64_s
        local.get 46
        local.get 66
        i32.trunc_sat_f64_u
        i32.const 195
        f64.const 0x1.06dp+15 (;=33640;)
        i32.const 195
        i32.const 863590108
        i32.const 1
        call 75
        drop
      end
      local.tee 12
      local.get 65
      i32.trunc_sat_f64_s
      local.set 13
      local.get 46
      local.tee 14
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 14
        call 4
        drop
        local.set 13
      end
      local.get 13
      local.get 12
      f64.store offset=16148 align=1
      local.get 13
      i32.const 195
      i32.store8 offset=16156
      drop
    end
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    call 5
    f64.convert_i32_u
    local.tee 5
    i32.trunc_sat_f64_u
    i32.const 7
    f64.const 0x1p+15 (;=32768;)
    local.set 70
    f64.const 0x1p+1 (;=2;)
    local.tee 69
    i32.trunc_sat_f64_s
    i32.const 6
    local.get 70
    i32.trunc_sat_f64_u
    i32.const 195
    i32.const -1194656941
    i32.const 1
    call 3
    local.set 2
    i32.trunc_sat_f64_u
    local.get 2
    call 64
    local.get 5
    i32.const 7
    call 2
    local.tee 2
    local.set 68
    local.set 67
    local.get 57
    local.set 71
    f64.const 0x1.0436p+15 (;=33307;)
    local.set 72
    local.get 58
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 71
      i32.trunc_sat_f64_s
      local.get 58
      local.get 72
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.06eep+15 (;=33655;)
      i32.const 195
      i32.const 75084714
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 71
    i32.trunc_sat_f64_s
    local.set 13
    local.get 58
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16238 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16246
    drop
    local.get 57
    local.set 73
    f64.const 0x1.0452p+15 (;=33321;)
    local.set 74
    local.get 58
    local.set 11
    block (result f64)  ;; label = @1
      local.get 11
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 73
      i32.trunc_sat_f64_s
      local.get 58
      local.get 74
      i32.trunc_sat_f64_u
      i32.const 195
      f64.const 0x1.0698p+15 (;=33612;)
      i32.const 195
      i32.const 1655899669
      i32.const 1
      call 75
      drop
    end
    local.tee 12
    local.get 73
    i32.trunc_sat_f64_s
    local.set 13
    local.get 58
    local.tee 14
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 13
      f64.convert_i32_u
      local.get 14
      call 4
      drop
      local.set 13
    end
    local.get 13
    local.get 12
    f64.store offset=16229 align=1
    local.get 13
    i32.const 195
    i32.store8 offset=16237
    drop
    global.get 0
    f64.const 0x1.4p+2 (;=5;)
    f64.gt
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 45
      local.set 75
      f64.const 0x1.0702p+15 (;=33665;)
      local.set 76
      local.get 46
      local.set 11
      block (result f64)  ;; label = @2
        local.get 11
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 75
        i32.trunc_sat_f64_s
        local.get 46
        local.get 76
        i32.trunc_sat_f64_u
        i32.const 195
        f64.const 0x1.06dp+15 (;=33640;)
        i32.const 195
        i32.const 2079372174
        i32.const 1
        call 75
        drop
      end
      local.tee 12
      local.get 75
      i32.trunc_sat_f64_s
      local.set 13
      local.get 46
      local.tee 14
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 13
        f64.convert_i32_u
        local.get 14
        call 4
        drop
        local.set 13
      end
      local.get 13
      local.get 12
      f64.store offset=16139 align=1
      local.get 13
      i32.const 195
      i32.store8 offset=16147
      drop
    end
    call 5
    local.tee 79
    local.get 3
    f64.store offset=4 align=1
    local.get 79
    local.get 4
    i32.store8 offset=12
    local.get 79
    local.get 21
    f64.store offset=13 align=1
    local.get 79
    local.get 22
    i32.store8 offset=21
    local.get 79
    local.get 33
    f64.store offset=22 align=1
    local.get 79
    local.get 34
    i32.store8 offset=30
    local.get 79
    local.get 45
    f64.store offset=31 align=1
    local.get 79
    local.get 46
    i32.store8 offset=39
    local.get 79
    local.get 57
    f64.store offset=40 align=1
    local.get 79
    local.get 58
    i32.store8 offset=48
    local.get 79
    local.get 67
    f64.store offset=49 align=1
    local.get 79
    local.get 68
    i32.store8 offset=57
    local.get 79
    local.get 21
    f64.store offset=58 align=1
    local.get 79
    local.get 22
    i32.store8 offset=66
    local.get 79
    local.get 33
    f64.store offset=67 align=1
    local.get 79
    local.get 34
    i32.store8 offset=75
    local.get 79
    i32.const 8
    i32.store align=2
    local.get 79
    f64.convert_i32_u
    local.set 77
    i32.const 72
    local.set 78
    f64.const 0x0p+0 (;=0;)
    local.set 80
    i32.const 1
    local.set 81
    loop  ;; label = @1
      local.get 80
      f64.const 0x1.f4p+9 (;=1000;)
      f64.const 0x1.f4p+9 (;=1000;)
      f64.mul
      f64.const 0x1.f4p+9 (;=1000;)
      f64.mul
      f64.lt
      if  ;; label = @2
        block  ;; label = @3
          local.get 80
          i32.trunc_sat_f64_s
          i32.const 7
          i32.and
          f64.convert_i32_s
          local.set 83
          local.get 77
          local.set 82
          local.get 78
          local.set 11
          block (result f64)  ;; label = @4
            local.get 11
            i32.const 0
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              return
              f64.const 0x0p+0 (;=0;)
              br 1 (;@4;)
            end
            local.get 11
            i32.const 67
            i32.eq
            if  ;; label = @5
              i32.const 8
              call 16
              local.tee 84
              i32.const 1
              i32.store align=1
              local.get 84
              local.get 83
              i32.trunc_sat_f64_u
              i32.const 2
              i32.mul
              local.get 82
              i32.trunc_sat_f64_u
              i32.add
              i32.load16_u offset=4 align=1
              i32.store16 offset=4 align=1
              local.get 84
              f64.convert_i32_u
              i32.const 67
              local.set 2
              br 1 (;@4;)
            end
            local.get 11
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 83
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              local.get 82
              i32.trunc_sat_f64_u
              i32.add
              local.tee 85
              f64.load offset=4 align=1
              local.get 85
              i32.load8_u offset=12
              local.set 2
              br 1 (;@4;)
            end
            local.get 11
            i32.const 195
            i32.eq
            if  ;; label = @5
              i32.const 8
              call 16
              local.tee 84
              i32.const 1
              i32.store align=1
              local.get 84
              local.get 83
              i32.trunc_sat_f64_u
              local.get 82
              i32.trunc_sat_f64_u
              i32.add
              i32.load8_u offset=4
              i32.store8 offset=4
              local.get 84
              f64.convert_i32_u
              i32.const 195
              local.set 2
              br 1 (;@4;)
            end
            local.get 82
            i32.trunc_sat_f64_s
            local.get 78
            local.get 83
            i32.const 1
            call 22
            local.set 86
            i32.trunc_sat_f64_s
            local.get 86
            call 40
            local.set 2
          end
          local.get 2
          call 77
          local.set 2
          drop
        end
        local.get 80
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 80
        br 1 (;@1;)
      end
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    return)
  (func (;2;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    i32.eqz
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 2
    i32.trunc_sat_f64_u
    local.get 3
    i32.const 33292
    i32.const 195
    f64.const 0x0p+0 (;=0;)
    i32.const 195
    call 73
    local.get 2
    i32.trunc_sat_f64_u
    local.get 3
    i32.const 33307
    i32.const 195
    f64.const 0x0p+0 (;=0;)
    i32.const 195
    call 73
    local.get 2
    i32.trunc_sat_f64_u
    local.get 3
    i32.const 33321
    i32.const 195
    f64.const 0x0p+0 (;=0;)
    i32.const 195
    call 73
    local.get 2
    i32.trunc_sat_f64_u
    local.get 3
    i32.const 33336
    i32.const 195
    f64.const 0x0p+0 (;=0;)
    i32.const 195
    call 73
    local.get 2
    i32.trunc_sat_f64_u
    local.get 3
    i32.const 33345
    i32.const 195
    f64.const 0x0p+0 (;=0;)
    i32.const 195
    call 73
    local.get 2
    i32.trunc_sat_f64_u
    local.get 3
    i32.const 33357
    i32.const 195
    f64.const 0x0p+0 (;=0;)
    i32.const 2
    call 73
    local.get 2
    local.get 3
    return)
  (func (;3;) (type 2) (param i32 i32 i32 i32 i32 i32) (result f64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.tee 6
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 7
      local.set 1
      local.set 0
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    i32.const 1
    call 19
    local.tee 8
    i32.const -1
    i32.eq
    if  ;; label = @1
      local.get 6
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=4 align=1
        local.set 0
        i32.load8_u offset=3
        local.tee 1
        i32.eqz
        if  ;; label = @3
          call 20
          local.set 0
          i32.const 7
          local.set 1
        end
      else
        local.get 6
        i32.const 1
        call 41
        local.tee 7
        local.set 1
        local.set 0
      end
      local.get 1
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 0
        f64.convert_i32_s
        local.get 1
        call 4
        local.tee 7
        local.set 1
        local.set 0
      end
      local.get 0
      local.set 9
      local.get 1
      local.set 10
      loop  ;; label = @2
        i32.const 1
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          local.get 4
          i32.const 1
          call 19
          local.tee 8
          i32.const -1
          i32.ne
          if  ;; label = @4
            br 1 (;@3;)
            drop
          end
          local.get 1
          i32.const 7
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=4 align=1
            local.set 0
            i32.load8_u offset=3
            local.set 1
          else
            local.get 0
            local.get 1
            call 43
            local.tee 7
            local.set 1
            local.set 0
          end
          local.get 1
          i32.const 7
          i32.ne
          if  ;; label = @4
            local.get 0
            f64.convert_i32_s
            local.get 1
            call 4
            local.tee 7
            local.set 1
            local.set 0
          end
          local.get 0
          local.set 11
          local.get 1
          local.set 12
          block (result i32)  ;; label = @4
            local.get 12
            i32.eqz
            if  ;; label = @5
              i32.const 1
              br 1 (;@4;)
            end
            local.get 12
            i32.const 7
            i32.eq
            if  ;; label = @5
              local.get 11
              i32.eqz
              br 1 (;@4;)
            end
            i32.const 0
          end
          local.get 0
          local.get 9
          i32.eq
          i32.or
          if  ;; label = @4
            br 1 (;@3;)
            drop
          end
          local.get 0
          local.set 9
          local.get 1
          local.set 10
          br 1 (;@2;)
        end
      end
      local.get 8
      i32.const -1
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        drop
      end
    end
    local.get 8
    i32.load16_u offset=16 align=1
    local.tee 13
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 8
      i32.const 1
      call 44
      local.set 7
      local.tee 14
      i32.eqz
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        drop
      end
      local.get 14
      local.set 17
      i32.const 0
      i32.const 0
      i32.const 0
      local.set 18
      f64.convert_i32_s
      local.get 18
      local.get 0
      local.tee 15
      local.get 1
      local.tee 16
      local.set 18
      f64.convert_i32_s
      local.get 18
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      local.get 17
      call_indirect (type 24)
      local.tee 7
      return
      drop
    end
    local.get 8
    f64.load offset=8 align=1
    local.get 13
    i32.const 8
    i32.shr_u
    return)
  (func (;4;) (type 3) (param f64 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 7
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.trunc_sat_f64_u
      i32.const 7
      return
      drop
    end
    local.get 1
    i32.const 5
    i32.gt_s
    if  ;; label = @1
      global.get 3
      i32.eqz
      if  ;; label = @2
        i32.const 0
        global.set 2
        i32.const 1
        global.set 3
      end
      global.get 2
      i32.eqz
      if  ;; label = @2
        call 5
        global.set 2
      end
      global.get 2
      i32.load align=1
      local.tee 2
      i32.const 12
      i32.mul
      local.set 3
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.lt_s
        if  ;; label = @3
          global.get 2
          local.get 4
          i32.add
          f64.load offset=4 align=1
          local.get 0
          f64.eq
          if  ;; label = @4
            global.get 2
            local.get 4
            i32.add
            i32.load offset=12 align=1
            i32.const 7
            return
            drop
          end
          local.get 4
          i32.const 12
          i32.add
          local.set 4
          br 1 (;@2;)
        end
      end
      local.get 0
      i32.trunc_sat_f64_u
      local.set 5
      call 5
      local.set 7
      local.get 1
      i32.const 6
      i32.eq
      if  ;; label = @2
        local.get 0
        local.get 1
        call 6
        i32.trunc_sat_f64_s
        if  ;; label = @3
          call 5
          local.set 8
          local.get 7
          i32.const 7
          i32.const 32768
          i32.const 195
          local.get 8
          f64.convert_i32_s
          i32.const 7
          i32.const 8
          i32.const 1
          call 8
          local.get 8
          i32.const 7
          i32.const 32783
          i32.const 195
          local.get 0
          local.get 1
          i32.const 10
          i32.const 1
          call 8
        end
        local.get 7
        i32.const 7
        i32.const 32800
        i32.const 195
        local.get 5
        call 11
        f64.convert_i32_s
        i32.const 195
        i32.const 2
        i32.const 1
        call 8
        local.get 7
        i32.const 7
        i32.const 32810
        i32.const 195
        local.get 5
        call 12
        f64.convert_i32_s
        i32.const 1
        i32.const 2
        i32.const 1
        call 8
      end
      local.get 1
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 5
        i32.load align=1
        local.set 9
        local.get 7
        i32.const 7
        i32.const 32810
        i32.const 195
        local.get 9
        f64.convert_i32_s
        i32.const 1
        i32.const 8
        i32.const 1
        call 8
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.get 9
          i32.lt_s
          if  ;; label = @4
            local.get 5
            local.get 4
            i32.const 9
            i32.mul
            i32.add
            local.tee 10
            f64.load offset=4 align=1
            local.set 11
            local.get 10
            i32.load8_u offset=12
            local.set 12
            local.get 7
            i32.const 7
            local.get 4
            f64.convert_i32_s
            i32.const 1
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            call 13
            local.set 13
            i32.trunc_sat_f64_s
            local.get 13
            local.get 11
            local.get 12
            i32.const 14
            i32.const 1
            call 8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
      end
      local.get 1
      i32.const 67
      i32.eq
      local.get 1
      i32.const 33
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 5
        i32.load align=2
        local.set 9
        local.get 7
        i32.const 7
        i32.const 32810
        i32.const 195
        local.get 9
        f64.convert_i32_s
        i32.const 1
        i32.const 0
        i32.const 1
        call 8
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.get 9
          i32.lt_s
          if  ;; label = @4
            local.get 7
            i32.const 7
            local.get 4
            f64.convert_i32_s
            i32.const 1
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            call 13
            local.set 13
            i32.trunc_sat_f64_s
            local.get 13
            local.get 4
            local.set 15
            local.get 5
            local.set 14
            i32.const 8
            call 16
            local.tee 16
            i32.const 1
            i32.store align=1
            local.get 16
            local.get 15
            i32.const 2
            i32.mul
            local.get 14
            i32.add
            i32.load16_u offset=4 align=1
            i32.store16 offset=4 align=1
            local.get 16
            i32.const 67
            local.set 13
            f64.convert_i32_s
            i32.const 67
            i32.const 4
            i32.const 1
            call 8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
        local.get 1
        i32.const 67
        i32.eq
        if  ;; label = @3
          local.get 5
          i32.const 1
          i32.store8 offset=2
        end
      end
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 5
        i32.load align=2
        local.set 9
        local.get 7
        i32.const 7
        i32.const 32810
        i32.const 195
        local.get 9
        f64.convert_i32_s
        i32.const 1
        i32.const 0
        i32.const 1
        call 8
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.get 9
          i32.lt_s
          if  ;; label = @4
            local.get 7
            i32.const 7
            local.get 4
            f64.convert_i32_s
            i32.const 1
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            call 13
            local.set 13
            i32.trunc_sat_f64_s
            local.get 13
            local.get 4
            local.set 18
            local.get 5
            local.set 17
            i32.const 8
            call 16
            local.tee 16
            i32.const 1
            i32.store align=1
            local.get 16
            local.get 18
            local.get 17
            i32.add
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 16
            i32.const 195
            local.set 13
            f64.convert_i32_s
            i32.const 195
            i32.const 4
            i32.const 1
            call 8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
        local.get 5
        i32.const 1
        i32.store8 offset=2
      end
      global.get 2
      local.get 2
      i32.const 1
      i32.add
      i32.store align=1
      global.get 2
      local.get 2
      i32.const 12
      i32.mul
      i32.add
      local.get 0
      f64.store offset=4 align=1
      global.get 2
      local.get 2
      i32.const 12
      i32.mul
      i32.add
      local.get 7
      i32.store offset=12 align=1
      local.get 7
      i32.const 7
      return
      drop
    end
    local.get 0
    i32.trunc_sat_f64_u
    local.get 1
    return)
  (func (;5;) (type 4) (result i32)
    global.get 4
    i32.const 1048576
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 16384
      global.set 4
      i32.const 16
      memory.grow
      i32.const 65536
      i32.mul
      global.set 6
      global.get 6
    else
      global.get 6
      global.get 4
      i32.add
      i32.const 16384
      global.get 4
      i32.add
      global.set 4
    end)
  (func (;6;) (type 5) (param f64 i32) (result f64)
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.8p+2 (;=6;)
    f64.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 0
    i32.trunc_sat_f64_s
    call 7
    i32.const 2
    i32.and
    f64.convert_i32_s
    f64.const 0x1p+1 (;=2;)
    f64.eq
    f64.convert_i32_u
    return)
  (func (;7;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const 57
    i32.mul
    i32.const 2
    i32.add
    i32.load8_u offset=16)
  (func (;8;) (type 7) (param i32 i32 i32 i32 f64 i32 i32 i32)
    (local i32 i32)
    local.get 0
    i32.load16_u align=1
    local.set 8
    local.get 0
    local.get 8
    i32.const 1
    i32.add
    i32.store16 align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 8
    i32.const 18
    i32.mul
    i32.add
    local.tee 9
    i32.const 1
    local.get 2
    local.get 3
    local.get 2
    local.get 3
    call 9
    i32.const 1
    call 10
    local.get 9
    local.get 4
    f64.store offset=8 align=1
    local.get 9
    local.get 6
    local.get 5
    i32.const 8
    i32.shl
    i32.add
    i32.store16 offset=16 align=1
    return)
  (func (;9;) (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.set 2
    local.get 0
    i32.load align=1
    local.set 3
    local.get 1
    i32.const 67
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.const 2
      i32.mul
      local.set 3
    end
    i32.const 374761393
    local.get 3
    i32.add
    local.set 4
    local.get 2
    local.get 3
    i32.add
    local.set 5
    loop  ;; label = @1
      local.get 2
      i32.const 4
      i32.add
      local.get 5
      i32.le_s
      if  ;; label = @2
        local.get 4
        local.get 2
        i32.load offset=4 align=1
        i32.const -1028477379
        i32.mul
        i32.add
        i32.const 17
        i32.rotl
        i32.const 668265263
        i32.mul
        local.set 4
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 2
    i32.load offset=4 align=1
    i32.const 1
    local.get 5
    local.get 2
    i32.sub
    i32.const 8
    i32.mul
    i32.shl
    i32.const 1
    i32.sub
    i32.and
    i32.const -1028477379
    i32.mul
    i32.add
    i32.const 17
    i32.rotl
    i32.const 668265263
    i32.mul
    local.tee 4
    local.get 4
    i32.const 15
    i32.shr_u
    i32.xor
    i32.const -2048144777
    i32.mul
    local.tee 4
    local.get 4
    i32.const 13
    i32.shr_u
    i32.xor
    i32.const -1028477379
    i32.mul
    local.tee 4
    local.get 4
    i32.const 16
    i32.shr_u
    i32.xor
    return)
  (func (;10;) (type 9) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    local.get 0
    local.get 4
    i32.store align=1
    local.get 2
    local.set 6
    local.get 3
    i32.const 67
    i32.eq
    if  ;; label = @1
      local.get 6
      i32.const -2147483648
      i32.or
      local.set 6
    end
    local.get 0
    local.get 6
    i32.store offset=4 align=1
    return)
  (func (;11;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const 57
    i32.mul
    i32.const 3
    i32.add
    i32.const 16
    i32.add)
  (func (;12;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const 57
    i32.mul
    i32.load16_u offset=16 align=1)
  (func (;13;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    (local i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    local.get 1
    i32.const 1
    i32.ne
    local.get 1
    i32.const 32
    i32.ne
    i32.and
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    f64.convert_i32_u
    f64.const 0x1p+0 (;=1;)
    f64.ne
    if  ;; label = @1
      f64.const 0x1.4p+3 (;=10;)
      local.set 2
      i32.const 1
      local.set 3
    end
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 0
    i32.or
    f64.convert_i32_s
    local.set 2
    i32.const 1
    local.set 3
    local.get 2
    f64.const 0x1p+1 (;=2;)
    f64.lt
    local.tee 4
    i32.eqz
    if (result i32)  ;; label = @1
      local.get 2
      f64.const 0x1.2p+5 (;=36;)
      f64.gt
      i32.const 2
      local.set 5
    else
      local.get 4
      i32.const 2
      local.set 5
    end
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 0
    call 14
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 0
      call 15
      i32.trunc_sat_f64_u
      if  ;; label = @2
        f64.const 0x1.006cp+15 (;=32822;)
        i32.const 195
        return
        drop
      end
      local.get 0
      f64.const inf (;=inf;)
      f64.eq
      if  ;; label = @2
        f64.const 0x1.007ep+15 (;=32831;)
        i32.const 195
        return
        drop
      end
      f64.const 0x1.009ap+15 (;=32845;)
      i32.const 195
      return
      drop
    end
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.00b8p+15 (;=32860;)
      i32.const 195
      return
      drop
    end
    i32.const 512
    call 16
    f64.convert_i32_s
    local.tee 6
    local.set 7
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.lt
    if  ;; label = @1
      local.get 0
      f64.neg
      local.set 0
      local.get 7
      local.get 7
      f64.const 0x1p+0 (;=1;)
      f64.add
      local.set 7
      i32.trunc_sat_f64_s
      i32.const 45
      i32.store8 offset=4
    end
    local.get 0
    call 17
    local.set 8
    f64.const 0x0p+0 (;=0;)
    local.set 9
    f64.const 0x0p+0 (;=0;)
    local.set 10
    local.get 2
    f64.const 0x1.4p+3 (;=10;)
    f64.eq
    if  ;; label = @1
      local.get 8
      f64.const 0x1.b1ae4d6e2ef5p+69 (;=1e+21;)
      f64.ge
      if  ;; label = @2
        f64.const 0x1p+0 (;=1;)
        local.set 11
        f64.const -0x1p+0 (;=-1;)
        local.set 12
        loop  ;; label = @3
          local.get 8
          f64.const 0x0p+0 (;=0;)
          f64.gt
          if  ;; label = @4
            local.get 8
            local.tee 14
            local.get 2
            local.tee 15
            local.get 14
            local.get 15
            f64.div
            f64.trunc
            f64.mul
            f64.sub
            local.set 13
            local.get 8
            local.get 2
            f64.div
            call 17
            local.set 8
            local.get 12
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 12
            local.get 11
            i32.trunc_sat_f64_u
            if  ;; label = @5
              local.get 13
              f64.const 0x0p+0 (;=0;)
              f64.eq
              if  ;; label = @6
                br 3 (;@3;)
                drop
              end
              f64.const 0x0p+0 (;=0;)
              local.set 11
            end
            local.get 9
            local.get 10
            f64.add
            i32.trunc_sat_f64_s
            local.get 13
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            local.get 10
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 10
            br 1 (;@3;)
          end
        end
        local.get 9
        local.get 10
        f64.add
        local.set 16
        local.get 7
        local.get 10
        f64.add
        local.set 17
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 18
        loop  ;; label = @3
          local.get 7
          local.get 17
          f64.lt
          if  ;; label = @4
            local.get 7
            local.get 18
            f64.eq
            if  ;; label = @5
              local.get 7
              local.get 7
              f64.const 0x1p+0 (;=1;)
              f64.add
              local.set 7
              i32.trunc_sat_f64_s
              i32.const 46
              i32.store8 offset=4
              local.get 17
              f64.const 0x1p+0 (;=1;)
              f64.add
              local.set 17
            end
            local.get 16
            f64.const 0x1p+0 (;=1;)
            f64.sub
            local.tee 16
            i32.trunc_sat_f64_s
            i32.load8_u offset=4
            f64.convert_i32_s
            local.tee 13
            f64.const 0x1.4p+3 (;=10;)
            f64.lt
            if  ;; label = @5
              local.get 13
              f64.const 0x1.8p+5 (;=48;)
              f64.add
              local.set 13
            else
              local.get 13
              f64.const 0x1.5cp+6 (;=87;)
              f64.add
              local.set 13
            end
            local.get 7
            local.get 7
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 7
            i32.trunc_sat_f64_s
            local.get 13
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            br 1 (;@3;)
          end
        end
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 7
        i32.trunc_sat_f64_s
        i32.const 101
        i32.store8 offset=4
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 7
        i32.trunc_sat_f64_s
        i32.const 43
        i32.store8 offset=4
        f64.const 0x0p+0 (;=0;)
        local.set 10
        loop  ;; label = @3
          local.get 12
          f64.const 0x0p+0 (;=0;)
          f64.gt
          if  ;; label = @4
            local.get 9
            local.get 10
            f64.add
            i32.trunc_sat_f64_s
            local.get 12
            local.tee 14
            local.get 2
            local.tee 15
            local.get 14
            local.get 15
            f64.div
            f64.trunc
            f64.mul
            f64.sub
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            local.get 12
            local.get 2
            f64.div
            call 17
            local.set 12
            local.get 10
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 10
            br 1 (;@3;)
          end
        end
        local.get 9
        local.get 10
        f64.add
        local.set 16
        local.get 7
        local.get 10
        f64.add
        local.set 17
        loop  ;; label = @3
          local.get 7
          local.get 17
          f64.lt
          if  ;; label = @4
            local.get 16
            f64.const 0x1p+0 (;=1;)
            f64.sub
            local.tee 16
            i32.trunc_sat_f64_s
            i32.load8_u offset=4
            f64.convert_i32_s
            local.tee 13
            f64.const 0x1.4p+3 (;=10;)
            f64.lt
            if  ;; label = @5
              local.get 13
              f64.const 0x1.8p+5 (;=48;)
              f64.add
              local.set 13
            else
              local.get 13
              f64.const 0x1.5cp+6 (;=87;)
              f64.add
              local.set 13
            end
            local.get 7
            local.get 7
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 7
            i32.trunc_sat_f64_s
            local.get 13
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            br 1 (;@3;)
          end
        end
        local.get 6
        i32.trunc_sat_f64_u
        local.get 7
        local.get 6
        f64.sub
        i32.trunc_sat_f64_u
        i32.store align=2
        local.get 6
        i32.const 195
        return
        drop
      end
      local.get 0
      f64.const 0x1.0c6f7a0b5ed8dp-20 (;=1e-06;)
      f64.lt
      if  ;; label = @2
        local.get 0
        local.set 19
        f64.const 0x1p+0 (;=1;)
        local.set 12
        loop  ;; label = @3
          i32.const 1
          if  ;; label = @4
            local.get 19
            local.get 2
            f64.mul
            local.tee 19
            call 17
            local.tee 20
            f64.const 0x0p+0 (;=0;)
            f64.gt
            if  ;; label = @5
              local.get 19
              local.get 20
              f64.sub
              f64.const 0x1.b7cdfd9d7bdbbp-34 (;=1e-10;)
              f64.lt
              if  ;; label = @6
                br 2 (;@4;)
                drop
              end
            else
              local.get 12
              f64.const 0x1p+0 (;=1;)
              f64.add
              local.set 12
            end
            br 1 (;@3;)
          end
        end
        loop  ;; label = @3
          local.get 19
          f64.const 0x0p+0 (;=0;)
          f64.gt
          if  ;; label = @4
            local.get 19
            local.tee 14
            local.get 2
            local.tee 15
            local.get 14
            local.get 15
            f64.div
            f64.trunc
            f64.mul
            f64.sub
            local.set 13
            local.get 19
            local.get 2
            f64.div
            call 17
            local.set 19
            local.get 9
            local.get 10
            f64.add
            i32.trunc_sat_f64_s
            local.get 13
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            local.get 10
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 10
            br 1 (;@3;)
          end
        end
        local.get 9
        local.get 10
        f64.add
        local.set 16
        local.get 7
        local.get 10
        f64.add
        local.set 17
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 18
        loop  ;; label = @3
          local.get 7
          local.get 17
          f64.lt
          if  ;; label = @4
            local.get 16
            f64.const 0x1p+0 (;=1;)
            f64.sub
            local.tee 16
            i32.trunc_sat_f64_s
            i32.load8_u offset=4
            f64.convert_i32_s
            local.set 13
            local.get 7
            local.get 18
            f64.eq
            if  ;; label = @5
              local.get 7
              local.get 7
              f64.const 0x1p+0 (;=1;)
              f64.add
              local.set 7
              i32.trunc_sat_f64_s
              i32.const 46
              i32.store8 offset=4
              local.get 17
              f64.const 0x1p+0 (;=1;)
              f64.add
              local.set 17
            end
            local.get 13
            f64.const 0x1.4p+3 (;=10;)
            f64.lt
            if  ;; label = @5
              local.get 13
              f64.const 0x1.8p+5 (;=48;)
              f64.add
              local.set 13
            else
              local.get 13
              f64.const 0x1.5cp+6 (;=87;)
              f64.add
              local.set 13
            end
            local.get 7
            local.get 7
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 7
            i32.trunc_sat_f64_s
            local.get 13
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            br 1 (;@3;)
          end
        end
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 7
        i32.trunc_sat_f64_s
        i32.const 101
        i32.store8 offset=4
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 7
        i32.trunc_sat_f64_s
        i32.const 45
        i32.store8 offset=4
        f64.const 0x0p+0 (;=0;)
        local.set 10
        loop  ;; label = @3
          local.get 12
          f64.const 0x0p+0 (;=0;)
          f64.gt
          if  ;; label = @4
            local.get 9
            local.get 10
            f64.add
            i32.trunc_sat_f64_s
            local.get 12
            local.tee 14
            local.get 2
            local.tee 15
            local.get 14
            local.get 15
            f64.div
            f64.trunc
            f64.mul
            f64.sub
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            local.get 12
            local.get 2
            f64.div
            call 17
            local.set 12
            local.get 10
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 10
            br 1 (;@3;)
          end
        end
        local.get 9
        local.get 10
        f64.add
        local.set 16
        local.get 7
        local.get 10
        f64.add
        local.set 17
        loop  ;; label = @3
          local.get 7
          local.get 17
          f64.lt
          if  ;; label = @4
            local.get 16
            f64.const 0x1p+0 (;=1;)
            f64.sub
            local.tee 16
            i32.trunc_sat_f64_s
            i32.load8_u offset=4
            f64.convert_i32_s
            local.tee 13
            f64.const 0x1.4p+3 (;=10;)
            f64.lt
            if  ;; label = @5
              local.get 13
              f64.const 0x1.8p+5 (;=48;)
              f64.add
              local.set 13
            else
              local.get 13
              f64.const 0x1.5cp+6 (;=87;)
              f64.add
              local.set 13
            end
            local.get 7
            local.get 7
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 7
            i32.trunc_sat_f64_s
            local.get 13
            i32.trunc_sat_f64_s
            i32.store8 offset=4
            br 1 (;@3;)
          end
        end
        local.get 6
        i32.trunc_sat_f64_u
        local.get 7
        local.get 6
        f64.sub
        i32.trunc_sat_f64_u
        i32.store align=2
        local.get 6
        i32.const 195
        return
        drop
      end
    end
    local.get 8
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 9
      i32.trunc_sat_f64_s
      i32.const 0
      i32.store8 offset=4
      f64.const 0x1p+0 (;=1;)
      local.set 10
    else
      loop  ;; label = @2
        local.get 8
        f64.const 0x0p+0 (;=0;)
        f64.gt
        if  ;; label = @3
          local.get 9
          local.get 10
          f64.add
          i32.trunc_sat_f64_s
          local.get 8
          local.tee 14
          local.get 2
          local.tee 15
          local.get 14
          local.get 15
          f64.div
          f64.trunc
          f64.mul
          f64.sub
          i32.trunc_sat_f64_s
          i32.store8 offset=4
          local.get 8
          local.get 2
          f64.div
          call 17
          local.set 8
          local.get 10
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 10
          br 1 (;@2;)
        end
      end
    end
    local.get 9
    local.get 10
    f64.add
    local.set 16
    local.get 7
    local.get 10
    f64.add
    local.set 17
    loop  ;; label = @1
      local.get 7
      local.get 17
      f64.lt
      if  ;; label = @2
        local.get 16
        f64.const 0x1p+0 (;=1;)
        f64.sub
        local.tee 16
        i32.trunc_sat_f64_s
        i32.load8_u offset=4
        f64.convert_i32_s
        local.tee 13
        f64.const 0x1.4p+3 (;=10;)
        f64.lt
        if  ;; label = @3
          local.get 13
          f64.const 0x1.8p+5 (;=48;)
          f64.add
          local.set 13
        else
          local.get 13
          f64.const 0x1.5cp+6 (;=87;)
          f64.add
          local.set 13
        end
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 7
        i32.trunc_sat_f64_s
        local.get 13
        i32.trunc_sat_f64_s
        i32.store8 offset=4
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 0
    call 17
    f64.sub
    local.tee 19
    f64.const 0x0p+0 (;=0;)
    f64.gt
    if  ;; label = @1
      local.get 7
      local.get 7
      f64.const 0x1p+0 (;=1;)
      f64.add
      local.set 7
      i32.trunc_sat_f64_s
      i32.const 46
      i32.store8 offset=4
      local.get 19
      f64.const 0x1p+0 (;=1;)
      f64.add
      local.set 19
      f64.const 0x1p+4 (;=16;)
      local.get 10
      f64.sub
      local.set 21
      f64.const 0x0p+0 (;=0;)
      local.set 22
      loop  ;; label = @2
        local.get 22
        local.get 21
        f64.lt
        if  ;; label = @3
          local.get 19
          local.get 2
          f64.mul
          local.set 19
          local.get 22
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 22
          br 1 (;@2;)
        end
      end
      local.get 19
      call 18
      local.set 19
      f64.const 0x0p+0 (;=0;)
      local.set 10
      f64.const 0x1p+0 (;=1;)
      local.set 11
      loop  ;; label = @2
        local.get 19
        f64.const 0x1p+0 (;=1;)
        f64.gt
        if  ;; label = @3
          local.get 19
          local.tee 14
          local.get 2
          local.tee 15
          local.get 14
          local.get 15
          f64.div
          f64.trunc
          f64.mul
          f64.sub
          local.set 13
          local.get 19
          local.get 2
          f64.div
          call 17
          local.set 19
          local.get 11
          i32.trunc_sat_f64_u
          if  ;; label = @4
            local.get 13
            f64.const 0x0p+0 (;=0;)
            f64.eq
            if  ;; label = @5
              br 3 (;@2;)
              drop
            end
            f64.const 0x0p+0 (;=0;)
            local.set 11
          end
          local.get 9
          local.get 10
          f64.add
          i32.trunc_sat_f64_s
          local.get 13
          i32.trunc_sat_f64_s
          i32.store8 offset=4
          local.get 10
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 10
          br 1 (;@2;)
        end
      end
      local.get 9
      local.get 10
      f64.add
      local.set 16
      local.get 7
      local.get 10
      f64.add
      local.set 17
      loop  ;; label = @2
        local.get 7
        local.get 17
        f64.lt
        if  ;; label = @3
          local.get 16
          f64.const 0x1p+0 (;=1;)
          f64.sub
          local.tee 16
          i32.trunc_sat_f64_s
          i32.load8_u offset=4
          f64.convert_i32_s
          local.tee 13
          f64.const 0x1.4p+3 (;=10;)
          f64.lt
          if  ;; label = @4
            local.get 13
            f64.const 0x1.8p+5 (;=48;)
            f64.add
            local.set 13
          else
            local.get 13
            f64.const 0x1.5cp+6 (;=87;)
            f64.add
            local.set 13
          end
          local.get 7
          local.get 7
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 7
          i32.trunc_sat_f64_s
          local.get 13
          i32.trunc_sat_f64_s
          i32.store8 offset=4
          br 1 (;@2;)
        end
      end
    end
    local.get 6
    i32.trunc_sat_f64_u
    local.get 7
    local.get 6
    f64.sub
    i32.trunc_sat_f64_u
    i32.store align=2
    local.get 6
    i32.const 195
    return)
  (func (;14;) (type 10) (param f64) (result f64)
    (local f64)
    local.get 0
    local.get 0
    f64.sub
    local.tee 1
    local.get 1
    f64.eq
    f64.convert_i32_s)
  (func (;15;) (type 10) (param f64) (result f64)
    local.get 0
    local.get 0
    f64.ne
    f64.convert_i32_s)
  (func (;16;) (type 6) (param i32) (result i32)
    global.get 8
    i32.const 16384
    i32.ge_s
    if (result i32)  ;; label = @1
      local.get 0
      global.set 8
      call 5
      global.set 10
      global.get 10
    else
      global.get 10
      global.get 8
      i32.add
      local.get 0
      global.get 8
      i32.add
      global.set 8
    end)
  (func (;17;) (type 10) (param f64) (result f64)
    local.get 0
    f64.trunc)
  (func (;18;) (type 10) (param f64) (result f64)
    local.get 0
    f64.nearest)
  (func (;19;) (type 11) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const -1
      return
      drop
    end
    local.get 0
    i32.const 8
    i32.add
    local.tee 6
    local.get 0
    i32.load16_u align=1
    i32.const 18
    i32.mul
    i32.add
    local.set 7
    loop  ;; label = @1
      local.get 6
      local.get 7
      i32.lt_s
      if  ;; label = @2
        local.get 6
        i32.load align=1
        local.get 4
        i32.eq
        if  ;; label = @3
          local.get 6
          return
          drop
        end
        local.get 6
        i32.const 18
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    i32.const -1
    return)
  (func (;20;) (type 4) (result i32)
    (local i32)
    global.get 12
    if  ;; label = @1
      global.get 12
      return
    end
    i32.const 49152
    local.tee 0
    global.set 12
    local.get 0
    f64.convert_i32_u
    i32.const 7
    call 4
    drop
    local.tee 0
    i32.const 7
    i32.const 32867
    i32.const 195
    f64.const 0x1.4p+2 (;=5;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    local.get 0
    i32.const 7
    i32.const 33227
    i32.const 195
    f64.const 0x1.8p+2 (;=6;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    local.get 0
    i32.const 7
    i32.const 33253
    i32.const 195
    f64.const 0x1.cp+2 (;=7;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    local.get 0
    i32.const 7
    i32.const 32949
    i32.const 195
    f64.const 0x1.8p+1 (;=3;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    local.get 0
    i32.const 7
    i32.const 33272
    i32.const 195
    f64.const 0x1p+3 (;=8;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    local.get 0
    i32.const 7
    i32.const 33174
    i32.const 195
    f64.const 0x1p+2 (;=4;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    local.get 0
    i32.const 7
    i32.const 0
    i32.const 7
    call 64
    local.get 0
    i32.const 7
    i32.const 32783
    i32.const 195
    f64.const 0x1.2p+3 (;=9;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 8
    global.get 12)
  (func (;21;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 f64 i32 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 5
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 2
    local.get 3
    call 22
    local.tee 8
    local.set 7
    local.set 6
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 0
      i32.trunc_sat_f64_s
      local.get 1
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      call 9
      i32.const 1
      call 19
      f64.convert_i32_s
      f64.const -0x1p+0 (;=-1;)
      f64.ne
      f64.convert_i32_u
      i32.const 2
      return
      drop
    end
    local.get 0
    local.get 1
    call 4
    local.set 8
    f64.convert_i32_s
    local.set 9
    local.get 8
    local.tee 10
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 9
      i32.trunc_sat_f64_s
      local.get 10
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      call 9
      i32.const 1
      call 19
      f64.convert_i32_s
      f64.const -0x1p+0 (;=-1;)
      f64.ne
      if  ;; label = @2
        f64.const 0x1p+0 (;=1;)
        i32.const 2
        return
        drop
      end
    end
    local.get 0
    local.get 1
    call 36
    local.tee 11
    i32.const 72
    local.get 6
    local.get 7
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    call 38
    local.tee 8
    return)
  (func (;22;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 i32 i32 i32)
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    local.tee 4
    if (result i32)  ;; label = @1
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.ne
      i32.const 2
      local.set 5
    else
      local.get 4
      i32.const 2
      local.set 5
    end
    if  ;; label = @1
      local.get 0
      local.get 1
      call 23
      local.tee 5
      local.set 3
      local.set 2
    end
    local.get 3
    f64.convert_i32_u
    f64.const 0x1.4p+2 (;=5;)
    f64.eq
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    local.get 2
    local.get 3
    call 35
    local.tee 5
    return)
  (func (;23;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 i32 f64 i32)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    local.get 1
    local.set 7
    block (result f64)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        call 13
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 24
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 6
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 25
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 28
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 24
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 32
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        call 13
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 78
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 78
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 56
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 27
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 28
      local.set 6
    end
    local.set 2
    local.get 6
    local.set 3
    local.get 2
    local.set 8
    local.get 3
    local.set 7
    block (result i32)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 8
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    i32.eqz
    local.tee 9
    if (result i32)  ;; label = @1
      local.get 2
      i32.trunc_sat_f64_s
      local.get 3
      call 30
      f64.convert_i32_s
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.const 2
      local.set 6
    else
      local.get 9
      i32.const 2
      local.set 6
    end
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    local.get 1
    local.set 7
    block (result f64)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 31
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 32
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 34
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 32
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 32
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 31
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 79
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 79
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 55
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 33
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 34
      local.set 6
    end
    local.set 2
    local.get 6
    local.set 3
    local.get 2
    local.set 8
    local.get 3
    local.set 7
    block (result i32)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 8
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    i32.eqz
    local.tee 9
    if (result i32)  ;; label = @1
      local.get 2
      i32.trunc_sat_f64_s
      local.get 3
      call 30
      f64.convert_i32_s
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.const 2
      local.set 6
    else
      local.get 9
      i32.const 2
      local.set 6
    end
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    return
    drop
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    return)
  (func (;24;) (type 12) (param f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x1.00eep+15 (;=32887;)
      i32.const 195
      return
      drop
    end
    f64.const 0x1.0102p+15 (;=32897;)
    i32.const 195
    return)
  (func (;25;) (type 12) (param f64 i32) (result f64 i32)
    (local f64)
    local.get 1
    i32.const 6
    i32.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    call 5
    f64.convert_i32_s
    local.tee 2
    i32.const 195
    f64.const 0x1.0118p+15 (;=32908;)
    i32.const 195
    call 26
    drop
    local.get 2
    i32.const 195
    local.get 0
    i32.trunc_sat_f64_s
    call 11
    f64.convert_i32_s
    i32.const 195
    call 26
    drop
    local.get 2
    i32.const 195
    f64.const 0x1.0136p+15 (;=32923;)
    i32.const 195
    call 26
    drop
    local.get 2
    i32.const 195
    return)
  (func (;26;) (type 13) (param f64 i32 f64 i32) (result f64)
    (local f64 f64 f64 f64 f64)
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 4
    local.get 2
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 5
    local.get 0
    local.get 4
    f64.add
    local.set 6
    local.get 2
    local.tee 7
    local.get 5
    f64.add
    local.set 8
    loop  ;; label = @1
      local.get 7
      local.get 8
      f64.lt
      if  ;; label = @2
        local.get 6
        local.get 6
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 6
        i32.trunc_sat_f64_s
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 7
        i32.trunc_sat_f64_s
        i32.load8_u offset=4
        i32.store8 offset=4
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.trunc_sat_f64_u
    local.get 4
    local.get 5
    f64.add
    i32.trunc_sat_f64_u
    i32.store align=2
    f64.const 0x1p+0 (;=1;)
    return)
  (func (;27;) (type 14) (param i32 i32) (result i32 i32)
    local.get 0
    i32.const 195
    return)
  (func (;28;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 f64 i32 f64 f64 i32 i32 f64 i32 f64 i32 f64 f64)
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 0
      local.tee 2
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.eqz
      if  ;; label = @2
        f64.const 0x1.016ap+15 (;=32949;)
        local.set 6
        local.get 2
        local.tee 5
        i32.trunc_sat_f64_s
        i32.const 7
        local.get 6
        i32.trunc_sat_f64_u
        i32.const 195
        i32.const -2133638001
        i32.const 1
        call 3
        local.tee 7
        local.set 4
        local.set 3
        local.get 4
        f64.convert_i32_u
        f64.const 0x1.8p+2 (;=6;)
        f64.eq
        local.tee 8
        if (result i32)  ;; label = @3
          local.get 3
          f64.const 0x1.8p+1 (;=3;)
          f64.ne
          i32.const 2
          local.set 7
        else
          local.get 8
          i32.const 2
          local.set 7
        end
        if  ;; label = @3
          local.get 3
          local.set 11
          local.get 4
          local.set 12
          block (result f64)  ;; label = @4
            local.get 12
            i32.const 6
            i32.eq
            if  ;; label = @5
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              local.get 0
              local.tee 9
              local.get 1
              local.tee 10
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              local.get 11
              i32.trunc_sat_f64_u
              call_indirect (type 24)
              local.set 7
              br 1 (;@4;)
            end
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            return
            f64.const 0x0p+0 (;=0;)
          end
          local.get 7
          return
          drop
        end
        local.get 2
        i32.trunc_sat_f64_s
        i32.const 7
        i32.const 32949
        i32.const 195
        i32.const 32949
        i32.const 195
        call 9
        i32.const 1
        call 19
        f64.convert_i32_s
        local.tee 13
        f64.const -0x1p+0 (;=-1;)
        f64.ne
        if  ;; label = @3
          local.get 13
          i32.trunc_sat_f64_s
          i32.const 1
          call 29
          local.tee 7
          local.set 4
          local.set 3
          local.get 4
          f64.convert_i32_u
          f64.const 0x1.8p+2 (;=6;)
          f64.eq
          if  ;; label = @4
            local.get 3
            local.set 14
            local.get 4
            local.set 12
            block (result f64)  ;; label = @5
              local.get 12
              i32.const 6
              i32.eq
              if  ;; label = @6
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                local.get 0
                local.tee 9
                local.get 1
                local.tee 10
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                local.get 14
                i32.trunc_sat_f64_u
                call_indirect (type 24)
                local.set 7
                br 1 (;@5;)
              end
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              return
              f64.const 0x0p+0 (;=0;)
            end
            local.get 7
            return
            drop
          else
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            return
            drop
          end
        end
      end
    end
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 1
    i32.const 128
    i32.or
    i32.const 0
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x1.0186p+15 (;=32963;)
      i32.const 195
      return
      drop
    end
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 1
    i32.const 128
    i32.or
    i32.const 7
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x1.01b6p+15 (;=32987;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.2p+6 (;=72;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.01dcp+15 (;=33006;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.8p+2 (;=6;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.0204p+15 (;=33026;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+1 (;=2;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.fp+4 (;=31;)
    f64.eq
    i32.or
    if  ;; label = @1
      f64.const 0x1.0232p+15 (;=33049;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+0 (;=1;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+5 (;=32;)
    f64.eq
    i32.or
    if  ;; label = @1
      f64.const 0x1.025ep+15 (;=33071;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.0cp+6 (;=67;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.86p+7 (;=195;)
    f64.eq
    i32.or
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.08p+5 (;=33;)
    f64.eq
    i32.or
    if  ;; label = @1
      f64.const 0x1.0288p+15 (;=33092;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.4p+3 (;=10;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.02b2p+15 (;=33113;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.2p+3 (;=9;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.02d8p+15 (;=33132;)
      i32.const 195
      return
      drop
    end
    f64.const 0x1.0302p+15 (;=33153;)
    i32.const 195
    return)
  (func (;29;) (type 15) (param i32 i32) (result f64 i32)
    local.get 0
    f64.load offset=8 align=1
    local.get 0
    i32.load8_u offset=17
    return)
  (func (;30;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    local.tee 2
    i32.const 5
    i32.gt_s
    local.get 2
    i32.const 67
    i32.ne
    i32.and
    local.get 2
    i32.const 195
    i32.ne
    i32.and
    return)
  (func (;31;) (type 12) (param f64 i32) (result f64 i32)
    local.get 1
    i32.const 1
    i32.ne
    local.get 1
    i32.const 32
    i32.ne
    i32.and
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 0
    i32.const 1
    return)
  (func (;32;) (type 12) (param f64 i32) (result f64 i32)
    local.get 0
    i32.const 2
    return)
  (func (;33;) (type 14) (param i32 i32) (result i32 i32)
    local.get 0
    i32.const 195
    return)
  (func (;34;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 f64 i32 f64 f64 i32 i32 f64 i32 f64 i32 f64 f64)
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 0
      local.tee 2
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.eqz
      if  ;; label = @2
        f64.const 0x1.032cp+15 (;=33174;)
        local.set 6
        local.get 2
        local.tee 5
        i32.trunc_sat_f64_s
        i32.const 7
        local.get 6
        i32.trunc_sat_f64_u
        i32.const 195
        i32.const -238740424
        i32.const 1
        call 3
        local.tee 7
        local.set 4
        local.set 3
        local.get 4
        f64.convert_i32_u
        f64.const 0x1.8p+2 (;=6;)
        f64.eq
        local.tee 8
        if (result i32)  ;; label = @3
          local.get 3
          f64.const 0x1p+2 (;=4;)
          f64.ne
          i32.const 2
          local.set 7
        else
          local.get 8
          i32.const 2
          local.set 7
        end
        if  ;; label = @3
          local.get 3
          local.set 11
          local.get 4
          local.set 12
          block (result f64)  ;; label = @4
            local.get 12
            i32.const 6
            i32.eq
            if  ;; label = @5
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              local.get 0
              local.tee 9
              local.get 1
              local.tee 10
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              local.get 11
              i32.trunc_sat_f64_u
              call_indirect (type 24)
              local.set 7
              br 1 (;@4;)
            end
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            return
            f64.const 0x0p+0 (;=0;)
          end
          local.get 7
          return
          drop
        end
        local.get 2
        i32.trunc_sat_f64_s
        i32.const 7
        i32.const 33174
        i32.const 195
        i32.const 33174
        i32.const 195
        call 9
        i32.const 1
        call 19
        f64.convert_i32_s
        local.tee 13
        f64.const -0x1p+0 (;=-1;)
        f64.ne
        if  ;; label = @3
          local.get 13
          i32.trunc_sat_f64_s
          i32.const 1
          call 29
          local.tee 7
          local.set 4
          local.set 3
          local.get 4
          f64.convert_i32_u
          f64.const 0x1.8p+2 (;=6;)
          f64.eq
          if  ;; label = @4
            local.get 3
            local.set 14
            local.get 4
            local.set 12
            block (result f64)  ;; label = @5
              local.get 12
              i32.const 6
              i32.eq
              if  ;; label = @6
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                local.get 0
                local.tee 9
                local.get 1
                local.tee 10
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                local.get 14
                i32.trunc_sat_f64_u
                call_indirect (type 24)
                local.set 7
                br 1 (;@5;)
              end
              f64.const 0x0p+0 (;=0;)
              i32.const 0
              return
              f64.const 0x0p+0 (;=0;)
            end
            local.get 7
            return
            drop
          else
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            return
            drop
          end
        end
      end
    end
    local.get 0
    local.get 1
    return)
  (func (;35;) (type 12) (param f64 i32) (result f64 i32)
    (local i32 f64 i32)
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.0cp+6 (;=67;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.86p+7 (;=195;)
    f64.eq
    i32.or
    if  ;; label = @1
      local.get 0
      local.get 1
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.4p+2 (;=5;)
    f64.eq
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.0346p+15 (;=33187;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    i32.and
    if  ;; label = @1
      f64.const 0x1.0364p+15 (;=33202;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+1 (;=2;)
    f64.eq
    if  ;; label = @1
      local.get 0
      f64.const 0x1p+0 (;=1;)
      f64.eq
      if  ;; label = @2
        f64.const 0x1.00eep+15 (;=32887;)
        i32.const 195
        return
        drop
      end
      f64.const 0x1.0102p+15 (;=32897;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+0 (;=1;)
    f64.eq
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x1.4p+3 (;=10;)
      i32.const 1
      call 13
      local.tee 2
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.08p+5 (;=33;)
    f64.eq
    if  ;; label = @1
      local.get 0
      i32.const 67
      return
      drop
    end
    local.get 0
    local.get 1
    call 23
    local.tee 2
    local.set 4
    local.tee 3
    local.get 4
    call 35
    local.tee 2
    return)
  (func (;36;) (type 5) (param f64 i32) (result f64)
    (local f64 i32 f64 i32 f64 f64 f64 f64 i32 i32 i32 i32 f64 f64)
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    block (result i32)  ;; label = @1
      local.get 3
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 2
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    call 5
    f64.convert_i32_s
    local.set 4
    local.get 0
    local.get 1
    call 4
    local.set 5
    f64.convert_i32_s
    local.set 0
    local.get 5
    local.tee 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 0
      f64.const 0x1p+3 (;=8;)
      f64.add
      local.tee 6
      local.get 0
      i32.trunc_sat_f64_s
      i32.load16_u align=1
      f64.convert_i32_s
      f64.const 0x1.2p+4 (;=18;)
      f64.mul
      f64.add
      local.set 7
      f64.const 0x0p+0 (;=0;)
      local.set 8
      loop  ;; label = @2
        local.get 6
        local.get 7
        f64.lt
        if  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.trunc_sat_f64_s
            i32.const 1
            call 37
            f64.convert_i32_s
            f64.const 0x0p+0 (;=0;)
            f64.eq
            if  ;; label = @5
              br 1 (;@4;)
              drop
            end
            local.get 6
            i32.trunc_sat_f64_u
            i32.load offset=4 align=1
            local.tee 11
            i32.const 30
            i32.shr_u
            local.tee 12
            if (result i32)  ;; label = @5
              i32.const 5
              i32.const 67
              local.get 12
              i32.const 3
              i32.eq
              select
              local.set 10
              local.get 11
              i32.const 1073741823
              i32.and
            else
              i32.const 195
              local.set 10
              local.get 11
            end
            f64.convert_i32_u
            local.set 9
            local.get 4
            local.set 14
            local.get 8
            local.get 8
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 8
            local.set 15
            local.get 14
            i32.trunc_sat_f64_u
            local.get 15
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            i32.add
            local.tee 13
            local.get 9
            f64.store offset=4 align=1
            local.get 13
            local.get 10
            i32.store8 offset=12
          end
          local.get 6
          f64.const 0x1.2p+4 (;=18;)
          f64.add
          local.set 6
          br 1 (;@2;)
        end
      end
      local.get 4
      i32.trunc_sat_f64_u
      local.get 8
      i32.trunc_sat_f64_u
      i32.store align=2
    end
    local.get 4
    return)
  (func (;37;) (type 8) (param i32 i32) (result i32)
    local.get 0
    i32.load8_u offset=16
    i32.const 4
    i32.and
    return)
  (func (;38;) (type 16) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 f64 f64 f64 i32 i32 f64 f64)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      call 39
      local.set 0
      i32.const 72
      local.set 1
    end
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 6
    local.get 4
    local.get 5
    call 45
    local.tee 7
    f64.const 0x0p+0 (;=0;)
    f64.ge
    if  ;; label = @1
      local.get 7
      local.get 6
      f64.gt
      if  ;; label = @2
        local.get 6
        local.set 7
      end
    else
      local.get 6
      local.get 7
      f64.add
      local.tee 7
      f64.const 0x0p+0 (;=0;)
      f64.lt
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        local.set 7
      end
    end
    local.get 7
    local.set 8
    loop  ;; label = @1
      local.get 8
      local.get 6
      f64.lt
      if  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 8
            local.set 10
            local.get 0
            local.set 9
            local.get 10
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 9
            i32.trunc_sat_f64_u
            i32.add
            local.tee 12
            f64.load offset=4 align=1
            local.get 12
            i32.load8_u offset=12
            local.set 11
            local.tee 13
            local.get 2
            local.tee 14
            local.get 11
            i32.const 128
            i32.or
            i32.const 195
            i32.eq
            local.get 3
            i32.const 128
            i32.or
            i32.const 195
            i32.eq
            i32.or
            if  ;; label = @5
              local.get 13
              local.get 11
              local.get 14
              local.get 3
              call 58
              i32.trunc_sat_f64_u
              br 1 (;@4;)
            end
            f64.eq
          end
          local.get 11
          i32.const 128
          i32.or
          local.get 3
          i32.const 128
          i32.or
          i32.eq
          i32.and
          if  ;; label = @4
            f64.const 0x1p+0 (;=1;)
            i32.const 2
            return
            drop
          end
        end
        local.get 8
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 8
        br 1 (;@1;)
      end
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 2
    return)
  (func (;39;) (type 13) (param f64 i32 f64 i32) (result f64)
    (local f64 i32 f64 f64 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 5
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    call 5
    f64.convert_i32_s
    local.set 6
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.2p+6 (;=72;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.0cp+6 (;=67;)
    f64.eq
    i32.or
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.86p+7 (;=195;)
    f64.eq
    i32.or
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.6p+3 (;=11;)
    f64.eq
    i32.or
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.4p+6 (;=80;)
    f64.ge
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.68p+6 (;=90;)
    f64.le
    i32.and
    i32.or
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      local.set 7
      local.get 3
      f64.convert_i32_u
      f64.const 0x0p+0 (;=0;)
      f64.ne
      if  ;; label = @2
        local.get 3
        f64.convert_i32_u
        f64.const 0x1.8p+2 (;=6;)
        f64.ne
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          return
          drop
        end
        local.get 0
        i32.trunc_sat_f64_u
        local.set 8
        local.get 1
        local.set 11
        i32.const 0
        local.set 10
        local.get 11
        i32.const 72
        i32.eq
        local.get 11
        i32.const 11
        i32.eq
        i32.or
        local.get 11
        i32.const 12
        i32.eq
        i32.or
        local.get 11
        i32.const 67
        i32.eq
        i32.or
        local.get 11
        i32.const 195
        i32.eq
        i32.or
        local.get 11
        i32.const 34
        i32.eq
        i32.or
        local.get 11
        i32.const 80
        i32.ge_s
        local.get 11
        i32.const 90
        i32.le_s
        i32.and
        i32.or
        i32.eqz
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          return
        end
        local.get 8
        i32.load align=2
        local.set 9
        loop  ;; label = @3
          block  ;; label = @4
            local.get 11
            local.set 5
            block (result f64)  ;; label = @5
              local.get 5
              i32.const 72
              i32.eq
              local.get 5
              i32.const 11
              i32.eq
              i32.or
              if  ;; label = @6
                local.get 9
                i32.eqz
                br_if 2 (;@4;)
                local.get 8
                f64.load offset=4 align=1
                local.get 8
                i32.load8_u offset=12
                local.get 8
                i32.const 9
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.sub
                local.set 9
                local.set 14
                br 1 (;@5;)
              end
              local.get 5
              i32.const 67
              i32.eq
              if  ;; label = @6
                local.get 9
                i32.eqz
                br_if 2 (;@4;)
                i32.const 8
                call 16
                local.tee 15
                i32.const 1
                i32.store align=1
                local.get 15
                local.get 8
                i32.load16_u offset=4
                i32.store16 offset=4
                local.get 8
                i32.const 2
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.sub
                local.set 9
                local.get 15
                f64.convert_i32_u
                i32.const 67
                local.set 14
                br 1 (;@5;)
              end
              local.get 5
              i32.const 195
              i32.eq
              if  ;; label = @6
                local.get 9
                i32.eqz
                br_if 2 (;@4;)
                i32.const 8
                call 16
                local.tee 15
                i32.const 1
                i32.store align=1
                local.get 15
                local.get 8
                i32.load8_u offset=4
                i32.store8 offset=4
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.sub
                local.set 9
                local.get 15
                f64.convert_i32_u
                i32.const 195
                local.set 14
                br 1 (;@5;)
              end
              unreachable
            end
            local.set 12
            local.get 14
            local.set 13
            local.get 6
            local.set 18
            local.get 7
            local.set 19
            local.get 18
            i32.trunc_sat_f64_u
            local.get 19
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            i32.add
            local.tee 17
            local.get 2
            local.set 20
            local.get 3
            local.set 5
            block (result f64)  ;; label = @5
              local.get 5
              i32.const 6
              i32.eq
              if  ;; label = @6
                i32.const 2
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                local.get 12
                local.get 13
                local.get 7
                i32.const 1
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                f64.const 0x0p+0 (;=0;)
                i32.const 0
                local.get 20
                i32.trunc_sat_f64_u
                call_indirect (type 24)
                local.set 14
                br 1 (;@5;)
              end
              f64.const 0x0p+0 (;=0;)
              return
              f64.const 0x0p+0 (;=0;)
            end
            f64.store offset=4 align=1
            local.get 17
            local.get 14
            i32.store8 offset=12
            local.get 7
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 7
            br 1 (;@3;)
          end
        end
      else
        local.get 0
        i32.trunc_sat_f64_u
        local.set 8
        local.get 1
        local.set 11
        i32.const 0
        local.set 10
        local.get 11
        i32.const 72
        i32.eq
        local.get 11
        i32.const 11
        i32.eq
        i32.or
        local.get 11
        i32.const 12
        i32.eq
        i32.or
        local.get 11
        i32.const 67
        i32.eq
        i32.or
        local.get 11
        i32.const 195
        i32.eq
        i32.or
        local.get 11
        i32.const 34
        i32.eq
        i32.or
        local.get 11
        i32.const 80
        i32.ge_s
        local.get 11
        i32.const 90
        i32.le_s
        i32.and
        i32.or
        i32.eqz
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          return
        end
        local.get 8
        i32.load align=2
        local.set 9
        loop  ;; label = @3
          block  ;; label = @4
            local.get 11
            local.set 5
            block (result f64)  ;; label = @5
              local.get 5
              i32.const 72
              i32.eq
              local.get 5
              i32.const 11
              i32.eq
              i32.or
              if  ;; label = @6
                local.get 9
                i32.eqz
                br_if 2 (;@4;)
                local.get 8
                f64.load offset=4 align=1
                local.get 8
                i32.load8_u offset=12
                local.get 8
                i32.const 9
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.sub
                local.set 9
                local.set 14
                br 1 (;@5;)
              end
              local.get 5
              i32.const 67
              i32.eq
              if  ;; label = @6
                local.get 9
                i32.eqz
                br_if 2 (;@4;)
                i32.const 8
                call 16
                local.tee 15
                i32.const 1
                i32.store align=1
                local.get 15
                local.get 8
                i32.load16_u offset=4
                i32.store16 offset=4
                local.get 8
                i32.const 2
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.sub
                local.set 9
                local.get 15
                f64.convert_i32_u
                i32.const 67
                local.set 14
                br 1 (;@5;)
              end
              local.get 5
              i32.const 195
              i32.eq
              if  ;; label = @6
                local.get 9
                i32.eqz
                br_if 2 (;@4;)
                i32.const 8
                call 16
                local.tee 15
                i32.const 1
                i32.store align=1
                local.get 15
                local.get 8
                i32.load8_u offset=4
                i32.store8 offset=4
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.sub
                local.set 9
                local.get 15
                f64.convert_i32_u
                i32.const 195
                local.set 14
                br 1 (;@5;)
              end
              unreachable
            end
            local.set 12
            local.get 14
            local.set 13
            local.get 6
            local.set 21
            local.get 7
            local.get 7
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 7
            local.set 22
            local.get 21
            i32.trunc_sat_f64_u
            local.get 22
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            i32.add
            local.tee 17
            local.get 12
            f64.store offset=4 align=1
            local.get 17
            local.get 13
            i32.store8 offset=12
            br 1 (;@3;)
          end
        end
      end
      local.get 6
      i32.trunc_sat_f64_u
      local.get 7
      i32.trunc_sat_f64_u
      i32.store align=2
      local.get 6
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.0054p+15 (;=32810;)
      local.set 25
      local.get 0
      local.tee 24
      i32.trunc_sat_f64_s
      i32.const 7
      local.get 25
      i32.const 195
      call 22
      local.set 26
      i32.trunc_sat_f64_s
      local.get 26
      call 40
      local.tee 14
      call 45
      local.tee 23
      f64.const 0x1.fffffffep+31 (;=4.29497e+09;)
      f64.gt
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        return
        drop
      end
      local.get 23
      f64.const 0x0p+0 (;=0;)
      f64.lt
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        local.set 23
      end
      f64.const 0x0p+0 (;=0;)
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.get 23
        f64.lt
        if  ;; label = @3
          local.get 6
          local.set 27
          local.get 7
          local.set 28
          local.get 27
          i32.trunc_sat_f64_u
          local.get 28
          i32.trunc_sat_f64_u
          i32.const 9
          i32.mul
          i32.add
          local.tee 17
          local.get 7
          local.set 30
          local.get 0
          local.tee 29
          i32.trunc_sat_f64_s
          i32.const 7
          local.get 30
          i32.const 1
          call 22
          local.set 26
          i32.trunc_sat_f64_s
          local.get 26
          call 40
          local.set 14
          f64.store offset=4 align=1
          local.get 17
          local.get 14
          i32.store8 offset=12
          local.get 7
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 7
          br 1 (;@2;)
        end
      end
      local.get 6
      i32.trunc_sat_f64_u
      local.get 23
      i32.trunc_sat_f64_u
      i32.store align=2
      local.get 6
      return
      drop
    end
    local.get 6
    return)
  (func (;40;) (type 17) (param i32 i32 i32 i32) (result f64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.tee 4
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 5
      local.set 1
      local.set 0
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 2
    local.get 3
    call 9
    local.set 6
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 6
    i32.const 1
    call 19
    local.tee 7
    i32.const -1
    i32.eq
    if  ;; label = @1
      local.get 4
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=4 align=1
        local.set 0
        i32.load8_u offset=3
        local.tee 1
        i32.eqz
        if  ;; label = @3
          call 20
          local.set 0
          i32.const 7
          local.set 1
        end
      else
        local.get 4
        i32.const 1
        call 41
        local.tee 5
        local.set 1
        local.set 0
      end
      local.get 6
      i32.const 593337848
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const 33212
        i32.const 195
        call 42
        if  ;; label = @3
          local.get 0
          f64.convert_i32_u
          local.get 1
          return
          drop
        end
      end
      local.get 1
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 0
        f64.convert_i32_s
        local.get 1
        call 4
        local.tee 5
        local.set 1
        local.set 0
      end
      local.get 0
      local.set 8
      local.get 1
      local.set 9
      loop  ;; label = @2
        i32.const 1
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          local.get 6
          i32.const 1
          call 19
          local.tee 7
          i32.const -1
          i32.ne
          if  ;; label = @4
            br 1 (;@3;)
            drop
          end
          local.get 1
          i32.const 7
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=4 align=1
            local.set 0
            i32.load8_u offset=3
            local.set 1
          else
            local.get 0
            local.get 1
            call 43
            local.tee 5
            local.set 1
            local.set 0
          end
          local.get 1
          i32.const 7
          i32.ne
          if  ;; label = @4
            local.get 0
            f64.convert_i32_s
            local.get 1
            call 4
            local.tee 5
            local.set 1
            local.set 0
          end
          local.get 0
          local.set 10
          local.get 1
          local.set 11
          block (result i32)  ;; label = @4
            local.get 11
            i32.eqz
            if  ;; label = @5
              i32.const 1
              br 1 (;@4;)
            end
            local.get 11
            i32.const 7
            i32.eq
            if  ;; label = @5
              local.get 10
              i32.eqz
              br 1 (;@4;)
            end
            i32.const 0
          end
          local.get 0
          local.get 8
          i32.eq
          i32.or
          if  ;; label = @4
            br 1 (;@3;)
            drop
          end
          local.get 0
          local.set 8
          local.get 1
          local.set 9
          br 1 (;@2;)
        end
      end
      local.get 7
      i32.const -1
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        drop
      end
    end
    local.get 7
    i32.load16_u offset=16 align=1
    local.tee 12
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 7
      i32.const 1
      call 44
      local.set 5
      local.tee 13
      i32.eqz
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
        drop
      end
      local.get 13
      local.set 16
      i32.const 0
      i32.const 0
      i32.const 0
      local.set 17
      f64.convert_i32_s
      local.get 17
      local.get 0
      local.tee 14
      local.get 1
      local.tee 15
      local.set 17
      f64.convert_i32_s
      local.get 17
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      local.get 16
      call_indirect (type 24)
      local.tee 5
      return
      drop
    end
    local.get 7
    f64.load offset=8 align=1
    local.get 12
    i32.const 8
    i32.shr_u
    return)
  (func (;41;) (type 14) (param i32 i32) (result i32 i32)
    local.get 0
    i32.const 7
    i32.eq
    if  ;; label = @1
      call 20
      i32.const 7
      return
      drop
    end
    call 20
    i32.const 7
    return)
  (func (;42;) (type 18) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 2
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
      drop
    end
    local.get 0
    i32.load align=1
    local.set 4
    local.get 2
    i32.load align=1
    local.set 5
    local.get 4
    local.get 5
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
      drop
    end
    local.get 1
    i32.const 195
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 28
        i32.sub
        local.set 6
        local.get 2
        i32.const 28
        i32.sub
        local.set 7
        local.get 0
        i32.const 4
        i32.sub
        local.set 8
        local.get 2
        i32.const 4
        i32.sub
        local.set 9
        local.get 4
        i32.const 32
        i32.ge_s
        if  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.get 4
            i32.add
            v128.load align=1
            local.get 7
            local.get 4
            i32.add
            v128.load align=1
            v128.xor
            local.get 6
            local.get 4
            i32.add
            v128.load offset=16 align=1
            local.get 7
            local.get 4
            i32.add
            v128.load offset=16 align=1
            v128.xor
            v128.or
            v128.any_true
            if  ;; label = @5
              i32.const 0
              return
            end
            local.get 4
            i32.const 32
            i32.sub
            local.tee 4
            i32.const 32
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 8
        i32.ge_s
        if  ;; label = @3
          loop  ;; label = @4
            local.get 8
            local.get 4
            i32.add
            i64.load align=1
            local.get 9
            local.get 4
            i32.add
            i64.load align=1
            i64.ne
            if  ;; label = @5
              i32.const 0
              return
            end
            local.get 4
            i32.const 8
            i32.sub
            local.tee 4
            i32.const 8
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 2
        i32.ge_s
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.load16_u offset=2 align=1
            local.get 2
            local.get 4
            i32.add
            i32.load16_u offset=2 align=1
            i32.ne
            if  ;; label = @5
              i32.const 0
              return
            end
            local.get 4
            i32.const 2
            i32.sub
            local.tee 4
            i32.const 2
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.load8_u offset=4
          local.get 2
          i32.load8_u offset=4
          i32.ne
          if  ;; label = @4
            i32.const 0
            return
            drop
          end
        end
        i32.const 1
        return
        drop
      else
        i32.const 0
        local.set 10
        loop  ;; label = @3
          local.get 10
          local.get 4
          i32.lt_s
          if  ;; label = @4
            local.get 0
            local.get 10
            i32.add
            i32.load8_u offset=4
            local.get 2
            local.get 10
            i32.const 2
            i32.mul
            i32.add
            i32.load16_u offset=4 align=1
            i32.ne
            if  ;; label = @5
              i32.const 0
              return
              drop
            end
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            br 1 (;@3;)
          end
        end
        i32.const 1
        return
        drop
      end
    else
      local.get 3
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 0
        local.set 10
        loop  ;; label = @3
          local.get 10
          local.get 4
          i32.lt_s
          if  ;; label = @4
            local.get 0
            local.get 10
            i32.const 2
            i32.mul
            i32.add
            i32.load16_u offset=4 align=1
            local.get 2
            local.get 10
            i32.add
            i32.load8_u offset=4
            i32.ne
            if  ;; label = @5
              i32.const 0
              return
              drop
            end
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            br 1 (;@3;)
          end
        end
        i32.const 1
        return
        drop
      else
        local.get 4
        i32.const 2
        i32.mul
        local.set 4
        local.get 5
        i32.const 2
        i32.mul
        local.set 5
        local.get 0
        i32.const 28
        i32.sub
        local.set 6
        local.get 2
        i32.const 28
        i32.sub
        local.set 7
        local.get 0
        i32.const 4
        i32.sub
        local.set 8
        local.get 2
        i32.const 4
        i32.sub
        local.set 9
        local.get 4
        i32.const 32
        i32.ge_s
        if  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.get 4
            i32.add
            v128.load align=1
            local.get 7
            local.get 4
            i32.add
            v128.load align=1
            v128.xor
            local.get 6
            local.get 4
            i32.add
            v128.load offset=16 align=1
            local.get 7
            local.get 4
            i32.add
            v128.load offset=16 align=1
            v128.xor
            v128.or
            v128.any_true
            if  ;; label = @5
              i32.const 0
              return
            end
            local.get 4
            i32.const 32
            i32.sub
            local.tee 4
            i32.const 32
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 8
        i32.ge_s
        if  ;; label = @3
          loop  ;; label = @4
            local.get 8
            local.get 4
            i32.add
            i64.load align=1
            local.get 9
            local.get 4
            i32.add
            i64.load align=1
            i64.ne
            if  ;; label = @5
              i32.const 0
              return
            end
            local.get 4
            i32.const 8
            i32.sub
            local.tee 4
            i32.const 8
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 2
        i32.ge_s
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.load16_u offset=2 align=1
            local.get 2
            local.get 4
            i32.add
            i32.load16_u offset=2 align=1
            i32.ne
            if  ;; label = @5
              i32.const 0
              return
            end
            local.get 4
            i32.const 2
            i32.sub
            local.tee 4
            i32.const 2
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        return
        drop
      end
    end
    i32.const 0
    return)
  (func (;43;) (type 14) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 2
      local.set 1
      local.set 0
      local.get 1
      i32.const 7
      i32.ne
      if  ;; label = @2
        i32.const 0
        i32.const 0
        return
        drop
      end
    end
    local.get 0
    i32.load offset=4 align=1
    local.get 0
    i32.load8_u offset=3
    return)
  (func (;44;) (type 14) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 0
    i32.load offset=8 align=1
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      i32.const 0
      return
      drop
    end
    local.get 2
    i32.const 6
    return)
  (func (;45;) (type 5) (param f64 i32) (result f64)
    (local f64)
    local.get 0
    local.get 1
    call 46
    local.tee 2
    call 15
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 2
    call 14
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 2
      return
      drop
    end
    local.get 2
    call 17
    local.tee 2
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 2
    return)
  (func (;46;) (type 5) (param f64 i32) (result f64)
    (local f64 i32 i32)
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+0 (;=1;)
    f64.eq
    if  ;; label = @1
      local.get 0
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.4p+2 (;=5;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+2 (;=4;)
    f64.eq
    i32.or
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const nan (;=nan;)
      return
      drop
    end
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 1
    i32.const 128
    i32.or
    i32.const 7
    i32.const 128
    i32.or
    i32.eq
    i32.and
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 1
    i32.const 128
    i32.or
    i32.const 2
    i32.const 128
    i32.or
    i32.eq
    i32.and
    i32.or
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 0
    f64.const 0x1p+0 (;=1;)
    f64.eq
    local.get 1
    i32.const 128
    i32.or
    i32.const 2
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x1p+0 (;=1;)
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.0cp+6 (;=67;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.86p+7 (;=195;)
    f64.eq
    i32.or
    if  ;; label = @1
      local.get 0
      local.get 1
      call 47
      return
      drop
    end
    local.get 0
    local.get 1
    call 54
    local.tee 4
    local.set 3
    local.tee 2
    local.get 3
    call 46
    return)
  (func (;47;) (type 5) (param f64 i32) (result f64)
    (local f64 i32 i32 i32 f64 f64 i32 f64 f64 i32 f64)
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 2
        i32.trunc_sat_f64_s
        local.get 3
        call 80
        local.set 5
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 2
        i32.trunc_sat_f64_s
        local.get 3
        call 80
        local.set 5
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 2
        i32.trunc_sat_f64_s
        local.get 3
        call 48
        local.set 5
        f64.convert_i32_s
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      return
      f64.const 0x0p+0 (;=0;)
    end
    local.set 0
    local.get 5
    local.set 1
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        f64.const 0x0p+0 (;=0;)
        i32.const 1
        call 83
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        f64.const 0x0p+0 (;=0;)
        i32.const 1
        call 83
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        f64.const 0x0p+0 (;=0;)
        i32.const 1
        call 51
        local.set 5
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      return
      f64.const 0x0p+0 (;=0;)
    end
    local.set 6
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        f64.const 0x1p+0 (;=1;)
        i32.const 1
        call 83
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        f64.const 0x1p+0 (;=1;)
        i32.const 1
        call 83
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        f64.const 0x1p+0 (;=1;)
        i32.const 1
        call 51
        local.set 5
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      return
      f64.const 0x0p+0 (;=0;)
    end
    local.set 7
    local.get 6
    f64.const 0x1.8p+5 (;=48;)
    f64.eq
    if  ;; label = @1
      local.get 7
      f64.const 0x1.ep+6 (;=120;)
      f64.eq
      local.tee 8
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 7
        f64.const 0x1.6p+6 (;=88;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        i32.const 2
        local.set 5
      end
      if  ;; label = @2
        local.get 0
        local.get 1
        f64.const 0x1p+4 (;=16;)
        i32.const 1
        f64.const 0x1p+1 (;=2;)
        i32.const 1
        call 52
        return
        drop
      end
      local.get 7
      f64.const 0x1.bcp+6 (;=111;)
      f64.eq
      local.tee 8
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 7
        f64.const 0x1.3cp+6 (;=79;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        i32.const 2
        local.set 5
      end
      if  ;; label = @2
        local.get 0
        local.get 1
        f64.const 0x1p+3 (;=8;)
        i32.const 1
        f64.const 0x1p+1 (;=2;)
        i32.const 1
        call 52
        return
        drop
      end
      local.get 7
      f64.const 0x1.88p+6 (;=98;)
      f64.eq
      local.tee 8
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 7
        f64.const 0x1.08p+6 (;=66;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        i32.const 2
        local.set 5
      end
      if  ;; label = @2
        local.get 0
        local.get 1
        f64.const 0x1p+1 (;=2;)
        i32.const 1
        f64.const 0x1p+1 (;=2;)
        i32.const 1
        call 52
        return
        drop
      end
    end
    f64.const 0x0p+0 (;=0;)
    local.set 9
    f64.const 0x0p+0 (;=0;)
    local.set 10
    local.get 6
    f64.const 0x1.58p+5 (;=43;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1p+0 (;=1;)
      local.set 9
    end
    local.get 6
    f64.const 0x1.68p+5 (;=45;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1p+0 (;=1;)
      local.set 10
      f64.const 0x1p+0 (;=1;)
      local.set 9
    end
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        local.get 9
        i32.const 1
        call 83
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        local.get 9
        i32.const 1
        call 83
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        local.get 9
        i32.const 1
        call 51
        local.set 5
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      return
      f64.const 0x0p+0 (;=0;)
    end
    f64.const 0x1.24p+6 (;=73;)
    f64.eq
    if  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 1
      local.set 4
      block (result f64)  ;; label = @2
        local.get 4
        i32.const 33
        i32.eq
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 9
          f64.const 0x1p+0 (;=1;)
          f64.add
          i32.const 1
          call 83
          local.set 5
          br 1 (;@2;)
        end
        local.get 4
        i32.const 67
        i32.eq
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 9
          f64.const 0x1p+0 (;=1;)
          f64.add
          i32.const 1
          call 83
          local.set 5
          br 1 (;@2;)
        end
        local.get 4
        i32.const 195
        i32.eq
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 9
          f64.const 0x1p+0 (;=1;)
          f64.add
          i32.const 1
          call 51
          local.set 5
          br 1 (;@2;)
        end
        f64.const 0x0p+0 (;=0;)
        return
        f64.const 0x0p+0 (;=0;)
      end
      f64.const 0x1.b8p+6 (;=110;)
      f64.eq
      local.tee 8
      if (result i32)  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 3
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1p+1 (;=2;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1p+1 (;=2;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1p+1 (;=2;)
            f64.add
            i32.const 1
            call 51
            local.set 5
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.98p+6 (;=102;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        i32.const 2
        local.set 5
      end
      local.tee 8
      local.set 11
      local.get 5
      local.set 4
      block (result i32)  ;; label = @2
        local.get 4
        i32.const 67
        i32.eq
        local.get 4
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 11
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 11
      end
      if (result i32)  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 3
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.8p+1 (;=3;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.8p+1 (;=3;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.8p+1 (;=3;)
            f64.add
            i32.const 1
            call 51
            local.set 5
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.a4p+6 (;=105;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        local.get 5
        local.set 5
      end
      local.tee 8
      local.set 11
      local.get 5
      local.set 4
      block (result i32)  ;; label = @2
        local.get 4
        i32.const 67
        i32.eq
        local.get 4
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 11
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 11
      end
      if (result i32)  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 3
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1p+2 (;=4;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1p+2 (;=4;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1p+2 (;=4;)
            f64.add
            i32.const 1
            call 51
            local.set 5
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.b8p+6 (;=110;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        local.get 5
        local.set 5
      end
      local.tee 8
      local.set 11
      local.get 5
      local.set 4
      block (result i32)  ;; label = @2
        local.get 4
        i32.const 67
        i32.eq
        local.get 4
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 11
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 11
      end
      if (result i32)  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 3
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.4p+2 (;=5;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.4p+2 (;=5;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.4p+2 (;=5;)
            f64.add
            i32.const 1
            call 51
            local.set 5
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.a4p+6 (;=105;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        local.get 5
        local.set 5
      end
      local.tee 8
      local.set 11
      local.get 5
      local.set 4
      block (result i32)  ;; label = @2
        local.get 4
        i32.const 67
        i32.eq
        local.get 4
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 11
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 11
      end
      if (result i32)  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 3
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.8p+2 (;=6;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.8p+2 (;=6;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.8p+2 (;=6;)
            f64.add
            i32.const 1
            call 51
            local.set 5
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.dp+6 (;=116;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        local.get 5
        local.set 5
      end
      local.tee 8
      local.set 11
      local.get 5
      local.set 4
      block (result i32)  ;; label = @2
        local.get 4
        i32.const 67
        i32.eq
        local.get 4
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 11
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 11
      end
      if (result i32)  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 3
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.cp+2 (;=7;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.cp+2 (;=7;)
            f64.add
            i32.const 1
            call 83
            local.set 5
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 2
            local.get 3
            local.get 9
            f64.const 0x1.cp+2 (;=7;)
            f64.add
            i32.const 1
            call 51
            local.set 5
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.e4p+6 (;=121;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 8
        local.get 5
        local.set 5
      end
      if  ;; label = @2
        f64.const inf (;=inf;)
        local.set 12
        local.get 10
        i32.trunc_sat_f64_u
        if (result f64)  ;; label = @3
          local.get 12
          f64.neg
          i32.const 1
          local.set 5
        else
          local.get 12
          i32.const 1
          local.set 5
        end
        return
        drop
      end
      f64.const nan (;=nan;)
      return
      drop
    end
    local.get 0
    local.get 1
    local.get 9
    i32.const 1
    call 53
    local.set 12
    local.get 10
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 12
      f64.neg
      return
      drop
    end
    local.get 12
    return)
  (func (;48;) (type 14) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 0
    i32.const 195
    call 49
    local.tee 2
    call 50
    local.tee 2
    return)
  (func (;49;) (type 14) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call 5
    local.tee 2
    local.set 3
    local.get 0
    local.set 4
    local.get 0
    i32.load align=2
    local.set 5
    local.get 4
    local.set 6
    local.get 4
    local.get 5
    i32.add
    local.set 4
    local.get 3
    local.get 5
    i32.add
    local.set 3
    i32.const 0
    local.set 7
    i32.const 1
    local.set 8
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.gt_s
      if  ;; label = @2
        local.get 4
        i32.const 1
        i32.sub
        local.tee 4
        i32.load8_u offset=4
        local.set 9
        local.get 3
        i32.const 1
        i32.sub
        local.set 3
        local.get 8
        if  ;; label = @3
          local.get 9
          i32.const 9
          i32.eq
          local.get 9
          i32.const 11
          i32.eq
          i32.or
          local.get 9
          i32.const 12
          i32.eq
          i32.or
          local.get 9
          i32.const 65279
          i32.eq
          i32.or
          local.get 9
          i32.const 32
          i32.eq
          i32.or
          local.get 9
          i32.const 160
          i32.eq
          i32.or
          local.get 9
          i32.const 5760
          i32.eq
          i32.or
          local.get 9
          i32.const 8192
          i32.eq
          i32.or
          local.get 9
          i32.const 8193
          i32.eq
          i32.or
          local.get 9
          i32.const 8194
          i32.eq
          i32.or
          local.get 9
          i32.const 8195
          i32.eq
          i32.or
          local.get 9
          i32.const 8196
          i32.eq
          i32.or
          local.get 9
          i32.const 8197
          i32.eq
          i32.or
          local.get 9
          i32.const 8198
          i32.eq
          i32.or
          local.get 9
          i32.const 8199
          i32.eq
          i32.or
          local.get 9
          i32.const 8200
          i32.eq
          i32.or
          local.get 9
          i32.const 8201
          i32.eq
          i32.or
          local.get 9
          i32.const 8202
          i32.eq
          i32.or
          local.get 9
          i32.const 8239
          i32.eq
          i32.or
          local.get 9
          i32.const 8287
          i32.eq
          i32.or
          local.get 9
          i32.const 12288
          i32.eq
          i32.or
          local.get 9
          i32.const 10
          i32.eq
          i32.or
          local.get 9
          i32.const 13
          i32.eq
          i32.or
          local.get 9
          i32.const 8232
          i32.eq
          i32.or
          local.get 9
          i32.const 8233
          i32.eq
          i32.or
          if  ;; label = @4
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 3 (;@1;)
            drop
          end
          i32.const 0
          local.set 8
        end
        local.get 3
        local.get 9
        i32.store8 offset=4
        br 1 (;@1;)
      end
    end
    local.get 2
    local.get 5
    local.get 7
    i32.sub
    i32.store align=2
    local.get 2
    i32.const 195
    return)
  (func (;50;) (type 14) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call 5
    local.tee 2
    local.set 3
    local.get 0
    local.set 4
    local.get 0
    i32.load align=2
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    i32.const 0
    local.set 7
    i32.const 1
    local.set 8
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.lt_s
      if  ;; label = @2
        local.get 4
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        i32.load8_u offset=4
        local.set 9
        local.get 8
        if  ;; label = @3
          local.get 9
          i32.const 9
          i32.eq
          local.get 9
          i32.const 11
          i32.eq
          i32.or
          local.get 9
          i32.const 12
          i32.eq
          i32.or
          local.get 9
          i32.const 65279
          i32.eq
          i32.or
          local.get 9
          i32.const 32
          i32.eq
          i32.or
          local.get 9
          i32.const 160
          i32.eq
          i32.or
          local.get 9
          i32.const 5760
          i32.eq
          i32.or
          local.get 9
          i32.const 8192
          i32.eq
          i32.or
          local.get 9
          i32.const 8193
          i32.eq
          i32.or
          local.get 9
          i32.const 8194
          i32.eq
          i32.or
          local.get 9
          i32.const 8195
          i32.eq
          i32.or
          local.get 9
          i32.const 8196
          i32.eq
          i32.or
          local.get 9
          i32.const 8197
          i32.eq
          i32.or
          local.get 9
          i32.const 8198
          i32.eq
          i32.or
          local.get 9
          i32.const 8199
          i32.eq
          i32.or
          local.get 9
          i32.const 8200
          i32.eq
          i32.or
          local.get 9
          i32.const 8201
          i32.eq
          i32.or
          local.get 9
          i32.const 8202
          i32.eq
          i32.or
          local.get 9
          i32.const 8239
          i32.eq
          i32.or
          local.get 9
          i32.const 8287
          i32.eq
          i32.or
          local.get 9
          i32.const 12288
          i32.eq
          i32.or
          local.get 9
          i32.const 10
          i32.eq
          i32.or
          local.get 9
          i32.const 13
          i32.eq
          i32.or
          local.get 9
          i32.const 8232
          i32.eq
          i32.or
          local.get 9
          i32.const 8233
          i32.eq
          i32.or
          if  ;; label = @4
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 3 (;@1;)
            drop
          end
          i32.const 0
          local.set 8
        end
        local.get 3
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 9
        i32.store8 offset=4
        br 1 (;@1;)
      end
    end
    local.get 2
    local.get 5
    local.get 7
    i32.sub
    i32.store align=2
    local.get 2
    i32.const 195
    return)
  (func (;51;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    (local f64)
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 4
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 0
    i32.or
    f64.convert_i32_s
    local.tee 2
    f64.const 0x0p+0 (;=0;)
    f64.lt
    local.get 2
    local.get 4
    f64.ge
    i32.or
    if  ;; label = @1
      f64.const nan (;=nan;)
      i32.const 1
      return
      drop
    end
    local.get 0
    local.get 2
    f64.add
    i32.trunc_sat_f64_s
    i32.load8_u offset=4
    f64.convert_i32_s
    i32.const 1
    return)
  (func (;52;) (type 19) (param f64 i32 f64 i32 f64 i32) (result f64)
    (local f64 f64 f64 f64 f64 i32 i32 i32 i32)
    f64.const 0x1.dp+5 (;=58;)
    local.set 6
    local.get 2
    f64.const 0x1.4p+3 (;=10;)
    f64.lt
    if  ;; label = @1
      f64.const 0x1.8p+5 (;=48;)
      local.get 2
      f64.add
      local.set 6
    end
    f64.const 0x0p+0 (;=0;)
    local.set 7
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.tee 8
    local.get 4
    f64.sub
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const nan (;=nan;)
      return
      drop
    end
    loop  ;; label = @1
      local.get 4
      local.get 8
      f64.lt
      if  ;; label = @2
        local.get 0
        local.set 10
        local.get 1
        local.set 11
        local.get 1
        local.set 12
        block (result f64)  ;; label = @3
          local.get 12
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 10
            local.get 11
            local.get 4
            local.get 4
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 4
            i32.const 1
            call 83
            local.set 13
            br 1 (;@3;)
          end
          local.get 12
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 10
            local.get 11
            local.get 4
            local.get 4
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 4
            i32.const 1
            call 83
            local.set 13
            br 1 (;@3;)
          end
          local.get 12
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 10
            local.get 11
            local.get 4
            local.get 4
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 4
            i32.const 1
            call 51
            local.set 13
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        local.tee 9
        f64.const 0x1.8p+5 (;=48;)
        f64.ge
        local.tee 14
        if (result i32)  ;; label = @3
          local.get 9
          local.get 6
          f64.lt
          i32.const 2
          local.set 13
        else
          local.get 14
          i32.const 2
          local.set 13
        end
        if  ;; label = @3
          local.get 7
          local.get 2
          f64.mul
          local.get 9
          f64.add
          f64.const 0x1.8p+5 (;=48;)
          f64.sub
          local.set 7
        else
          local.get 2
          f64.const 0x1.4p+3 (;=10;)
          f64.gt
          if  ;; label = @4
            local.get 9
            f64.const 0x1.84p+6 (;=97;)
            f64.ge
            local.tee 14
            if (result i32)  ;; label = @5
              local.get 9
              f64.const 0x1.5cp+6 (;=87;)
              local.get 2
              f64.add
              f64.lt
              i32.const 2
              local.set 13
            else
              local.get 14
              i32.const 2
              local.set 13
            end
            if  ;; label = @5
              local.get 7
              local.get 2
              f64.mul
              local.get 9
              f64.add
              f64.const 0x1.5cp+6 (;=87;)
              f64.sub
              local.set 7
            else
              local.get 9
              f64.const 0x1.04p+6 (;=65;)
              f64.ge
              local.tee 14
              if (result i32)  ;; label = @6
                local.get 9
                f64.const 0x1.b8p+5 (;=55;)
                local.get 2
                f64.add
                f64.lt
                i32.const 2
                local.set 13
              else
                local.get 14
                i32.const 2
                local.set 13
              end
              if  ;; label = @6
                local.get 7
                local.get 2
                f64.mul
                local.get 9
                f64.add
                f64.const 0x1.b8p+5 (;=55;)
                f64.sub
                local.set 7
              else
                f64.const nan (;=nan;)
                return
                drop
              end
            end
          else
            f64.const nan (;=nan;)
            return
            drop
          end
        end
        br 1 (;@1;)
      end
    end
    local.get 7
    return)
  (func (;53;) (type 13) (param f64 i32 f64 i32) (result f64)
    (local f64 f64 f64 f64 f64 i32 i32 i32 i32)
    f64.const 0x0p+0 (;=0;)
    local.set 4
    f64.const 0x0p+0 (;=0;)
    local.set 5
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.tee 6
    local.get 2
    f64.sub
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const nan (;=nan;)
      return
      drop
    end
    loop  ;; label = @1
      local.get 2
      local.get 6
      f64.lt
      if  ;; label = @2
        local.get 0
        local.set 8
        local.get 1
        local.set 9
        local.get 1
        local.set 10
        block (result f64)  ;; label = @3
          local.get 10
          i32.const 33
          i32.eq
          if  ;; label = @4
            local.get 8
            local.get 9
            local.get 2
            local.get 2
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 2
            i32.const 1
            call 83
            local.set 11
            br 1 (;@3;)
          end
          local.get 10
          i32.const 67
          i32.eq
          if  ;; label = @4
            local.get 8
            local.get 9
            local.get 2
            local.get 2
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 2
            i32.const 1
            call 83
            local.set 11
            br 1 (;@3;)
          end
          local.get 10
          i32.const 195
          i32.eq
          if  ;; label = @4
            local.get 8
            local.get 9
            local.get 2
            local.get 2
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 2
            i32.const 1
            call 51
            local.set 11
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          return
          f64.const 0x0p+0 (;=0;)
        end
        local.tee 7
        f64.const 0x1.8p+5 (;=48;)
        f64.ge
        local.tee 12
        if (result i32)  ;; label = @3
          local.get 7
          f64.const 0x1.c8p+5 (;=57;)
          f64.le
          i32.const 2
          local.set 11
        else
          local.get 12
          i32.const 2
          local.set 11
        end
        if  ;; label = @3
          local.get 5
          i32.trunc_sat_f64_u
          if  ;; label = @4
            local.get 5
            f64.const 0x1.4p+3 (;=10;)
            f64.mul
            local.set 5
            local.get 4
            local.get 7
            f64.const 0x1.8p+5 (;=48;)
            f64.sub
            local.get 5
            f64.div
            f64.add
            local.set 4
          else
            local.get 4
            f64.const 0x1.4p+3 (;=10;)
            f64.mul
            local.get 7
            f64.add
            f64.const 0x1.8p+5 (;=48;)
            f64.sub
            local.set 4
          end
        else
          local.get 7
          f64.const 0x1.7p+5 (;=46;)
          f64.eq
          if  ;; label = @4
            local.get 5
            i32.trunc_sat_f64_u
            if  ;; label = @5
              f64.const nan (;=nan;)
              return
              drop
            end
            f64.const 0x1p+0 (;=1;)
            local.set 5
          else
            f64.const nan (;=nan;)
            return
            drop
          end
        end
        br 1 (;@1;)
      end
    end
    local.get 4
    return)
  (func (;54;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 i32 f64 i32)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    local.get 1
    local.set 7
    block (result f64)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 31
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 32
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 34
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 32
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 32
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 31
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 79
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 79
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 55
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 33
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 34
      local.set 6
    end
    local.set 2
    local.get 6
    local.set 3
    local.get 2
    local.set 8
    local.get 3
    local.set 7
    block (result i32)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 8
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    i32.eqz
    local.tee 9
    if (result i32)  ;; label = @1
      local.get 2
      i32.trunc_sat_f64_s
      local.get 3
      call 30
      f64.convert_i32_s
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.const 2
      local.set 6
    else
      local.get 9
      i32.const 2
      local.set 6
    end
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    local.get 1
    local.set 7
    block (result f64)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        call 13
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 24
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 6
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 25
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 28
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 24
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 32
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        call 13
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 78
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 78
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 56
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 27
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 28
      local.set 6
    end
    local.set 2
    local.get 6
    local.set 3
    local.get 2
    local.set 8
    local.get 3
    local.set 7
    block (result i32)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 8
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    i32.eqz
    local.tee 9
    if (result i32)  ;; label = @1
      local.get 2
      i32.trunc_sat_f64_s
      local.get 3
      call 30
      f64.convert_i32_s
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.const 2
      local.set 6
    else
      local.get 9
      i32.const 2
      local.set 6
    end
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    return
    drop
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    return)
  (func (;55;) (type 12) (param f64 i32) (result f64 i32)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      call 39
      local.set 0
      i32.const 72
      local.set 1
    end
    local.get 0
    i32.const 72
    return)
  (func (;56;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 f64 f64 f64 i32 f64 f64 i32 i32 i32)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      call 39
      local.set 0
      i32.const 72
      local.set 1
    end
    call 5
    f64.convert_i32_s
    local.set 2
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 3
    f64.const 0x0p+0 (;=0;)
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 3
      f64.lt
      if  ;; label = @2
        local.get 4
        f64.const 0x0p+0 (;=0;)
        f64.gt
        if  ;; label = @3
          local.get 2
          i32.const 195
          f64.const 0x1.6p+5 (;=44;)
          i32.const 1
          call 57
          drop
        end
        local.get 4
        local.get 4
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 4
        local.set 8
        local.get 0
        local.set 7
        local.get 8
        i32.trunc_sat_f64_u
        i32.const 9
        i32.mul
        local.get 7
        i32.trunc_sat_f64_u
        i32.add
        local.tee 10
        f64.load offset=4 align=1
        local.get 10
        i32.load8_u offset=12
        local.tee 9
        local.set 6
        local.tee 5
        f64.const 0x0p+0 (;=0;)
        f64.ne
        local.tee 11
        i32.eqz
        if (result i32)  ;; label = @3
          local.get 6
          f64.convert_i32_u
          f64.const 0x0p+0 (;=0;)
          f64.ne
          local.get 6
          f64.convert_i32_u
          f64.const 0x1.cp+2 (;=7;)
          f64.ne
          i32.and
          i32.const 2
          local.set 9
        else
          local.get 11
          i32.const 2
          local.set 9
        end
        if  ;; label = @3
          local.get 2
          i32.const 195
          local.get 5
          local.get 6
          call 35
          local.tee 9
          call 26
          drop
        end
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 195
    return)
  (func (;57;) (type 13) (param f64 i32 f64 i32) (result f64)
    (local f64)
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 4
    local.get 0
    local.get 4
    f64.add
    i32.trunc_sat_f64_s
    local.get 2
    i32.trunc_sat_f64_s
    i32.store8 offset=4
    local.get 0
    i32.trunc_sat_f64_u
    local.get 4
    f64.const 0x1p+0 (;=1;)
    f64.add
    i32.trunc_sat_f64_u
    i32.store align=2
    f64.const 0x1p+0 (;=1;)
    return)
  (func (;58;) (type 13) (param f64 i32 f64 i32) (result f64)
    (local f64 i32 i32)
    local.get 1
    i32.const 128
    i32.or
    f64.convert_i32_s
    f64.const 0x1.86p+7 (;=195;)
    f64.ne
    if  ;; label = @1
      local.get 0
      local.set 4
      local.get 1
      local.set 5
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 0
        i32.eq
        if  ;; label = @3
          i32.const 1
          br 1 (;@2;)
        end
        local.get 5
        i32.const 7
        i32.eq
        if  ;; label = @3
          local.get 4
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br 1 (;@2;)
        end
        i32.const 0
      end
      local.get 1
      f64.convert_i32_u
      f64.const 0x1.4p+2 (;=5;)
      f64.eq
      i32.or
      local.get 1
      f64.convert_i32_u
      f64.const 0x1p+1 (;=2;)
      f64.eq
      i32.or
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        return
        drop
      end
      local.get 0
      local.get 1
      call 35
      local.tee 6
      local.set 1
      local.set 0
    end
    local.get 3
    i32.const 128
    i32.or
    f64.convert_i32_s
    f64.const 0x1.86p+7 (;=195;)
    f64.ne
    if  ;; label = @1
      local.get 2
      local.set 4
      local.get 3
      local.set 5
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 0
        i32.eq
        if  ;; label = @3
          i32.const 1
          br 1 (;@2;)
        end
        local.get 5
        i32.const 7
        i32.eq
        if  ;; label = @3
          local.get 4
          f64.const 0x0p+0 (;=0;)
          f64.eq
          br 1 (;@2;)
        end
        i32.const 0
      end
      local.get 3
      f64.convert_i32_u
      f64.const 0x1.4p+2 (;=5;)
      f64.eq
      i32.or
      local.get 3
      f64.convert_i32_u
      f64.const 0x1p+1 (;=2;)
      f64.eq
      i32.or
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        return
        drop
      end
      local.get 2
      local.get 3
      call 35
      local.tee 6
      local.set 3
      local.set 2
    end
    local.get 0
    i32.trunc_sat_f64_s
    local.get 1
    local.get 2
    i32.trunc_sat_f64_s
    local.get 3
    call 42
    f64.convert_i32_s
    return)
  (func (;59;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 f64 f64 i32 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 5
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 2
    local.get 3
    call 22
    local.tee 8
    local.set 7
    local.set 6
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 0
      i32.trunc_sat_f64_s
      local.get 1
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      call 9
      i32.const 1
      call 19
      f64.convert_i32_s
      local.tee 9
      f64.const -0x1p+0 (;=-1;)
      f64.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 2
        return
        drop
      end
      local.get 9
      i32.trunc_sat_f64_s
      i32.const 1
      call 37
      f64.convert_i32_s
      i32.const 2
      return
      drop
    end
    local.get 0
    local.get 1
    call 4
    local.set 8
    f64.convert_i32_s
    local.set 10
    local.get 8
    local.tee 11
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    if  ;; label = @1
      local.get 10
      i32.trunc_sat_f64_s
      local.get 11
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      local.get 6
      i32.trunc_sat_f64_s
      local.get 7
      call 9
      i32.const 1
      call 19
      f64.convert_i32_s
      local.tee 9
      f64.const -0x1p+0 (;=-1;)
      f64.ne
      if  ;; label = @2
        local.get 9
        i32.trunc_sat_f64_s
        i32.const 1
        call 37
        f64.convert_i32_s
        i32.const 2
        return
        drop
      end
    end
    local.get 0
    local.get 1
    call 36
    local.tee 12
    i32.const 72
    local.get 6
    local.get 7
    f64.const 0x0p+0 (;=0;)
    i32.const 0
    call 38
    local.tee 8
    return)
  (func (;60;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 i32 f64 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 5
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 2
    i32.trunc_sat_f64_s
    local.get 3
    call 61
    f64.convert_i32_s
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 2
      return
      drop
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.tee 7
      local.get 2
      i32.trunc_sat_f64_s
      local.get 3
      local.get 3
      i32.const 1
      call 62
      local.set 6
      f64.convert_i32_s
      local.tee 8
      local.get 1
      i32.const 128
      i32.or
      i32.const 195
      i32.eq
      local.get 6
      i32.const 128
      i32.or
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 7
        local.get 1
        local.get 8
        local.get 6
        call 58
        i32.trunc_sat_f64_u
        br 1 (;@1;)
      end
      f64.eq
    end
    f64.convert_i32_u
    i32.const 2
    return)
  (func (;61;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    local.set 2
    local.get 0
    i32.const 0
    i32.ne
    local.get 2
    i32.const 5
    i32.gt_s
    i32.and
    local.get 2
    i32.const 67
    i32.ne
    i32.and
    local.get 2
    i32.const 195
    i32.ne
    i32.and
    return)
  (func (;62;) (type 20) (param i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    call 43
    local.tee 6
    local.set 5
    local.set 4
    local.get 5
    i32.const 0
    i32.ne
    if  ;; label = @1
      local.get 4
      local.get 5
      return
      drop
    end
    local.get 2
    i32.const 1
    call 41
    local.tee 6
    return)
  (func (;63;) (type 12) (param f64 i32) (result f64 i32)
    (local i32)
    local.get 0
    local.get 1
    call 28
    local.tee 2
    return)
  (func (;64;) (type 21) (param i32 i32 i32 i32)
    (local i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 4
      local.set 1
      local.set 0
      local.get 1
      i32.const 7
      i32.ne
      if  ;; label = @2
        return
        drop
      end
    end
    local.get 2
    local.get 3
    call 30
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.store offset=4 align=1
      local.get 0
      local.get 3
      i32.store8 offset=3
    end
    return)
  (func (;65;) (type 16) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 i32)
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    block (result i32)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 6
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br 1 (;@1;)
      end
      i32.const 0
    end
    if  ;; label = @1
      call 5
      f64.convert_i32_s
      i32.const 7
      return
      drop
    end
    local.get 5
    i32.const 128
    i32.or
    f64.convert_i32_s
    f64.const 0x1.86p+7 (;=195;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.8p+1 (;=3;)
      i32.const 6
      f64.const 0x0p+0 (;=0;)
      i32.const 7
      i32.const 16
      local.get 4
      f64.store offset=4 align=1
      i32.const 16
      local.get 5
      i32.store8 offset=12
      i32.const 16
      i32.const 1
      i32.store align=2
      f64.const 0x1p+4 (;=16;)
      i32.const 72
      call 66
      drop
      i32.const 33
      return
      drop
    end
    local.get 5
    f64.convert_i32_u
    f64.const 0x1p+0 (;=1;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1p+2 (;=4;)
      i32.const 6
      f64.const 0x0p+0 (;=0;)
      i32.const 7
      local.get 4
      local.get 5
      call 70
      drop
      i32.const 32
      return
      drop
    end
    local.get 5
    f64.convert_i32_u
    f64.const 0x1p+1 (;=2;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.4p+2 (;=5;)
      i32.const 6
      f64.const 0x0p+0 (;=0;)
      i32.const 7
      local.get 4
      local.get 5
      call 72
      drop
      i32.const 31
      return
      drop
    end
    local.get 4
    local.get 5
    return)
  (func (;66;) (type 16) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 f64 f64 i32 i32 f64 i32 f64)
    f64.const 0x0p+0 (;=0;)
    local.set 6
    i32.const 195
    local.set 7
    local.get 4
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.gt
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      local.set 11
      local.get 4
      local.set 10
      local.get 11
      i32.trunc_sat_f64_u
      i32.const 9
      i32.mul
      local.get 10
      i32.trunc_sat_f64_u
      i32.add
      local.tee 13
      f64.load offset=4 align=1
      local.get 13
      i32.load8_u offset=12
      local.tee 12
      local.set 9
      local.set 8
      local.get 0
      local.set 14
      local.get 1
      local.set 15
      block (result f64)  ;; label = @2
        local.get 15
        i32.const 67
        i32.eq
        local.get 15
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 14
          i32.trunc_sat_f64_u
          i32.load align=2
          i32.eqz
          f64.convert_i32_u
          br 1 (;@2;)
        end
        local.get 14
        f64.const 0x0p+0 (;=0;)
        f64.eq
        f64.convert_i32_u
      end
      local.tee 16
      i32.trunc_sat_f64_u
      if (result f64)  ;; label = @2
        local.get 9
        f64.convert_i32_u
        f64.const 0x1.4p+2 (;=5;)
        f64.eq
        f64.convert_i32_u
        i32.const 2
        local.set 12
      else
        local.get 16
        i32.const 2
        local.set 12
      end
      local.set 14
      local.get 12
      local.set 15
      block (result i32)  ;; label = @2
        local.get 15
        i32.const 67
        i32.eq
        local.get 15
        i32.const 195
        i32.eq
        i32.or
        if  ;; label = @3
          local.get 14
          i32.trunc_sat_f64_u
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 14
        i32.trunc_sat_f64_u
      end
      if  ;; label = @2
        local.get 8
        local.get 9
        call 67
        local.tee 12
        return
        drop
      end
      local.get 8
      local.get 9
      call 35
      local.tee 12
      local.set 7
      local.set 6
    end
    local.get 0
    local.set 14
    local.get 1
    local.set 15
    block (result f64)  ;; label = @1
      local.get 15
      i32.const 67
      i32.eq
      local.get 15
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 14
        i32.trunc_sat_f64_u
        i32.load align=2
        i32.eqz
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 14
      f64.const 0x0p+0 (;=0;)
      f64.eq
      f64.convert_i32_u
    end
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 6
      local.get 7
      return
      drop
    end
    local.get 7
    f64.convert_i32_u
    f64.const 0x1.86p+7 (;=195;)
    f64.eq
    if  ;; label = @1
      local.get 6
      i32.trunc_sat_f64_s
      call 69
      f64.convert_i32_s
      local.set 6
      i32.const 67
      local.set 7
    end
    local.get 6
    i32.const 33
    return)
  (func (;67;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 f64 i32 f64 f64 i32 f64 f64 f64 f64)
    local.get 1
    i32.const 5
    i32.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    call 5
    f64.convert_i32_s
    local.tee 2
    i32.trunc_sat_f64_s
    i32.const 83
    i32.store8 offset=4
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 121
    i32.store8 offset=5
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 109
    i32.store8 offset=6
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 98
    i32.store8 offset=7
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 111
    i32.store8 offset=8
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 108
    i32.store8 offset=9
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 40
    i32.store8 offset=10
    local.get 0
    i32.const 5
    call 68
    local.tee 7
    local.set 4
    local.set 3
    f64.const 0x0p+0 (;=0;)
    local.set 8
    local.get 3
    f64.const 0x0p+0 (;=0;)
    f64.ne
    local.get 4
    i32.const 128
    i32.or
    i32.const 0
    i32.const 128
    i32.or
    i32.ne
    i32.or
    if  ;; label = @1
      local.get 3
      i32.trunc_sat_f64_u
      i32.load align=2
      f64.convert_i32_u
      local.set 8
      local.get 2
      f64.const 0x1.cp+2 (;=7;)
      f64.add
      local.set 9
      local.get 3
      local.tee 10
      local.get 8
      f64.add
      local.set 11
      loop  ;; label = @2
        local.get 10
        local.get 11
        f64.lt
        if  ;; label = @3
          local.get 9
          local.get 9
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 9
          i32.trunc_sat_f64_s
          local.get 10
          local.get 10
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 10
          i32.trunc_sat_f64_s
          i32.load8_u offset=4
          i32.store8 offset=4
          br 1 (;@2;)
        end
      end
    end
    local.get 2
    local.get 8
    f64.add
    i32.trunc_sat_f64_s
    i32.const 41
    i32.store8 offset=11
    local.get 2
    i32.trunc_sat_f64_u
    f64.const 0x1p+3 (;=8;)
    local.get 8
    f64.add
    i32.trunc_sat_f64_u
    i32.store align=2
    local.get 2
    i32.const 195
    return)
  (func (;68;) (type 12) (param f64 i32) (result f64 i32)
    local.get 1
    i32.const 5
    i32.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 0
    i32.trunc_sat_f64_u
    f64.load align=1
    local.get 0
    i32.trunc_sat_f64_u
    i32.load8_u offset=8
    return)
  (func (;69;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    call 5
    local.tee 3
    local.get 0
    i32.load align=1
    local.tee 1
    i32.store align=1
    loop  ;; label = @1
      local.get 2
      i32.const 2
      i32.mul
      local.get 3
      i32.add
      local.get 0
      local.get 2
      i32.add
      i32.load8_u offset=4
      i32.store16 offset=4 align=1
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      local.get 1
      i32.lt_s
      br_if 0 (;@1;)
    end
    local.get 3)
  (func (;70;) (type 16) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 i32)
    f64.const 0x0p+0 (;=0;)
    local.set 6
    local.get 5
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 4
      local.get 5
      call 71
      local.set 6
    end
    local.get 0
    local.set 7
    local.get 1
    local.set 8
    block (result f64)  ;; label = @1
      local.get 8
      i32.const 67
      i32.eq
      local.get 8
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 7
        i32.trunc_sat_f64_u
        i32.load align=2
        i32.eqz
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 7
      f64.const 0x0p+0 (;=0;)
      f64.eq
      f64.convert_i32_u
    end
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 6
      i32.const 1
      return
      drop
    end
    local.get 6
    i32.const 32
    return)
  (func (;71;) (type 5) (param f64 i32) (result f64)
    (local f64 i32 i32 i32)
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.cp+2 (;=7;)
    f64.eq
    local.tee 4
    if (result i32)  ;; label = @1
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.ne
      i32.const 2
      local.set 5
    else
      local.get 4
      i32.const 2
      local.set 5
    end
    if  ;; label = @1
      local.get 0
      local.get 1
      call 54
      local.tee 5
      local.set 3
      local.set 2
    end
    local.get 2
    local.get 3
    call 46
    return)
  (func (;72;) (type 16) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 i32)
    local.get 4
    local.set 7
    local.get 5
    local.set 8
    block (result f64)  ;; label = @1
      local.get 8
      i32.const 67
      i32.eq
      local.get 8
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 7
        i32.trunc_sat_f64_u
        i32.load align=2
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 8
      i32.const 31
      i32.eq
      local.get 8
      i32.const 32
      i32.eq
      i32.or
      if  ;; label = @2
        f64.const 0x1p+0 (;=1;)
        br 1 (;@1;)
      end
      local.get 7
      f64.abs
      f64.const 0x0p+0 (;=0;)
      f64.gt
      f64.convert_i32_s
    end
    local.set 6
    local.get 0
    local.set 7
    local.get 1
    local.set 8
    block (result f64)  ;; label = @1
      local.get 8
      i32.const 67
      i32.eq
      local.get 8
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 7
        i32.trunc_sat_f64_u
        i32.load align=2
        i32.eqz
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 7
      f64.const 0x0p+0 (;=0;)
      f64.eq
      f64.convert_i32_u
    end
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 6
      i32.const 2
      return
      drop
    end
    local.get 6
    i32.const 31
    return)
  (func (;73;) (type 22) (param i32 i32 i32 i32 f64 i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 6
      local.set 1
      local.set 0
    end
    local.get 2
    local.get 3
    call 9
    local.set 7
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 7
    i32.const 1
    call 19
    local.tee 8
    i32.const -1
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 1
      call 74
      if  ;; label = @2
        return
        drop
      end
      local.get 0
      i32.load16_u align=1
      local.set 9
      local.get 0
      local.get 9
      i32.const 1
      i32.add
      i32.store16 align=1
      local.get 0
      i32.const 8
      i32.add
      local.get 9
      i32.const 18
      i32.mul
      i32.add
      local.tee 8
      i32.const 1
      local.get 2
      local.get 3
      local.get 7
      i32.const 1
      call 10
    end
    local.get 8
    local.get 4
    f64.store offset=8 align=1
    local.get 8
    i32.const 14
    local.get 5
    i32.const 8
    i32.shl
    i32.add
    i32.store16 offset=16 align=1
    return)
  (func (;74;) (type 8) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 2
      local.set 1
      local.set 0
      local.get 1
      i32.const 7
      i32.ne
      if  ;; label = @2
        i32.const 0
        return
        drop
      end
    end
    local.get 0
    i32.load8_u offset=2
    i32.const 1
    i32.and
    return)
  (func (;75;) (type 23) (param i32 i32 i32 i32 f64 i32 i32 i32) (result f64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 4
      local.tee 8
      local.set 1
      local.set 0
      local.get 1
      i32.const 7
      i32.ne
      if  ;; label = @2
        local.get 4
        local.get 5
        return
        drop
      end
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
      drop
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 6
    i32.const 1
    call 19
    local.tee 9
    i32.const -1
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 1
      call 43
      local.tee 8
      local.set 12
      local.tee 11
      local.set 13
      local.get 12
      local.set 14
      block (result i32)  ;; label = @2
        local.get 14
        i32.eqz
        if  ;; label = @3
          i32.const 1
          br 1 (;@2;)
        end
        local.get 14
        i32.const 7
        i32.eq
        if  ;; label = @3
          local.get 13
          i32.eqz
          br 1 (;@2;)
        end
        i32.const 0
      end
      i32.eqz
      if  ;; label = @2
        local.get 12
        i32.const 7
        i32.ne
        if  ;; label = @3
          local.get 11
          f64.convert_i32_s
          local.get 12
          call 4
          local.tee 8
          local.set 12
          local.set 11
        end
        local.get 11
        local.set 15
        local.get 12
        local.set 16
        loop  ;; label = @3
          i32.const 1
          if  ;; label = @4
            local.get 11
            local.get 12
            local.get 2
            local.get 3
            local.get 6
            i32.const 1
            call 19
            local.tee 9
            i32.const -1
            i32.ne
            if  ;; label = @5
              br 1 (;@4;)
              drop
            end
            local.get 11
            local.get 12
            call 43
            local.tee 8
            local.set 12
            local.set 11
            local.get 12
            i32.const 7
            i32.ne
            if  ;; label = @5
              local.get 11
              f64.convert_i32_s
              local.get 12
              call 4
              local.tee 8
              local.set 12
              local.set 11
            end
            local.get 11
            local.set 13
            local.get 12
            local.set 14
            block (result i32)  ;; label = @5
              local.get 14
              i32.eqz
              if  ;; label = @6
                i32.const 1
                br 1 (;@5;)
              end
              local.get 14
              i32.const 7
              i32.eq
              if  ;; label = @6
                local.get 13
                i32.eqz
                br 1 (;@5;)
              end
              i32.const 0
            end
            local.get 11
            local.get 15
            i32.eq
            i32.or
            if  ;; label = @5
              br 1 (;@4;)
              drop
            end
            local.get 11
            local.set 15
            local.get 12
            local.set 16
            br 1 (;@3;)
          end
        end
        local.get 9
        i32.const -1
        i32.ne
        if  ;; label = @3
          local.get 9
          i32.load16_u offset=16 align=1
          local.tee 17
          i32.const 1
          i32.and
          if  ;; label = @4
            local.get 9
            i32.const 1
            call 76
            local.set 8
            local.tee 18
            i32.eqz
            if  ;; label = @5
              local.get 4
              local.get 5
              return
              drop
            end
            local.get 18
            local.set 21
            i32.const 1
            i32.const 0
            i32.const 0
            local.set 22
            f64.convert_i32_s
            local.get 22
            local.get 0
            local.tee 19
            local.get 1
            local.tee 20
            local.set 22
            f64.convert_i32_s
            local.get 22
            local.get 4
            local.get 5
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            f64.const 0x0p+0 (;=0;)
            i32.const 0
            local.get 21
            call_indirect (type 24)
            local.set 8
            i32.trunc_sat_f64_s
            drop
            local.get 4
            local.get 5
            return
            drop
          end
        end
      end
      local.get 0
      local.get 1
      call 74
      if  ;; label = @2
        local.get 4
        local.get 5
        return
        drop
      end
      local.get 0
      i32.load16_u align=1
      local.set 23
      local.get 0
      local.get 23
      i32.const 1
      i32.add
      i32.store16 align=1
      local.get 0
      i32.const 8
      i32.add
      local.get 23
      i32.const 18
      i32.mul
      i32.add
      local.tee 9
      i32.const 1
      local.get 2
      local.get 3
      local.get 6
      i32.const 1
      call 10
      i32.const 14
      local.set 10
    else
      local.get 9
      i32.load16_u offset=16 align=1
      local.tee 17
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 9
        i32.const 1
        call 76
        local.set 8
        local.tee 18
        i32.eqz
        if  ;; label = @3
          local.get 4
          local.get 5
          return
          drop
        end
        local.get 18
        local.set 24
        i32.const 1
        i32.const 0
        i32.const 0
        local.set 22
        f64.convert_i32_s
        local.get 22
        local.get 0
        local.tee 19
        local.get 1
        local.tee 20
        local.set 22
        f64.convert_i32_s
        local.get 22
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        local.get 24
        call_indirect (type 24)
        local.set 8
        i32.trunc_sat_f64_s
        drop
        local.get 4
        local.get 5
        return
        drop
      end
      local.get 17
      i32.const 8
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 4
        local.get 5
        return
        drop
      end
      local.get 17
      i32.const 255
      i32.and
      local.set 10
    end
    local.get 9
    local.get 4
    f64.store offset=8 align=1
    local.get 9
    local.get 10
    local.get 5
    i32.const 8
    i32.shl
    i32.add
    i32.store16 offset=16 align=1
    local.get 4
    local.get 5
    return)
  (func (;76;) (type 14) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 0
    i32.load offset=12 align=1
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      i32.const 0
      return
      drop
    end
    local.get 2
    i32.const 6
    return)
  (func (;77;) (type 12) (param f64 i32) (result f64 i32)
    (local f64 f64 i32 i32 i32 i32 i32)
    local.get 0
    local.tee 2
    i32.trunc_sat_f64_s
    local.set 4
    local.get 1
    local.tee 7
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 4
      f64.convert_i32_u
      local.get 7
      call 4
      drop
      local.set 4
    end
    local.get 4
    i32.eqz
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 4
    i32.load8_u offset=16246
    local.tee 8
    if (result f64)  ;; label = @1
      local.get 4
      f64.load offset=16238 align=1
      local.get 8
      local.set 6
    else
      f64.const 0x1.0436p+15 (;=33307;)
      local.set 3
      local.get 1
      local.set 5
      block (result f64)  ;; label = @2
        local.get 5
        i32.const 0
        i32.eq
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 0
          return
          f64.const 0x0p+0 (;=0;)
          br 1 (;@2;)
        end
        local.get 2
        i32.trunc_sat_f64_s
        local.get 1
        local.get 3
        i32.trunc_sat_f64_u
        i32.const 195
        i32.const 75084714
        i32.const 1
        call 3
        local.set 6
      end
    end
    local.get 6
    return)
  (func (;78;) (type 14) (param i32 i32) (result i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.eqz
      local.get 1
      i32.const 7
      i32.eq
      local.get 0
      i32.eqz
      i32.and
      i32.or
      if  ;; label = @2
        i32.const 0
        i32.const 0
        return
      end
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 35
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 69
        local.set 0
      end
    end
    local.get 0
    i32.const 67
    return)
  (func (;79;) (type 14) (param i32 i32) (result i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.eqz
      local.get 1
      i32.const 7
      i32.eq
      local.get 0
      i32.eqz
      i32.and
      i32.or
      if  ;; label = @2
        i32.const 0
        i32.const 0
        return
      end
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 35
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 69
        local.set 0
      end
    end
    local.get 0
    i32.const 67
    return)
  (func (;80;) (type 14) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.eqz
      local.get 1
      i32.const 7
      i32.eq
      local.get 0
      i32.eqz
      i32.and
      i32.or
      if  ;; label = @2
        i32.const 0
        i32.const 0
        return
      end
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 35
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 69
        local.set 0
      end
    end
    local.get 0
    i32.const 67
    call 81
    local.tee 2
    call 82
    local.tee 2
    return)
  (func (;81;) (type 14) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.eqz
      local.get 1
      i32.const 7
      i32.eq
      local.get 0
      i32.eqz
      i32.and
      i32.or
      if  ;; label = @2
        i32.const 0
        i32.const 0
        return
      end
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 35
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 69
        local.set 0
      end
    end
    call 5
    local.tee 2
    local.set 3
    local.get 0
    local.set 4
    local.get 0
    i32.load align=2
    local.set 5
    local.get 4
    local.set 6
    local.get 4
    local.get 5
    i32.const 2
    i32.mul
    i32.add
    local.set 4
    local.get 3
    local.get 5
    i32.const 2
    i32.mul
    i32.add
    local.set 3
    i32.const 0
    local.set 7
    i32.const 1
    local.set 8
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.gt_s
      if  ;; label = @2
        local.get 4
        i32.const 2
        i32.sub
        local.tee 4
        i32.load16_u offset=4 align=1
        local.set 9
        local.get 3
        i32.const 2
        i32.sub
        local.set 3
        local.get 8
        if  ;; label = @3
          local.get 9
          i32.const 9
          i32.eq
          local.get 9
          i32.const 11
          i32.eq
          i32.or
          local.get 9
          i32.const 12
          i32.eq
          i32.or
          local.get 9
          i32.const 65279
          i32.eq
          i32.or
          local.get 9
          i32.const 32
          i32.eq
          i32.or
          local.get 9
          i32.const 160
          i32.eq
          i32.or
          local.get 9
          i32.const 5760
          i32.eq
          i32.or
          local.get 9
          i32.const 8192
          i32.eq
          i32.or
          local.get 9
          i32.const 8193
          i32.eq
          i32.or
          local.get 9
          i32.const 8194
          i32.eq
          i32.or
          local.get 9
          i32.const 8195
          i32.eq
          i32.or
          local.get 9
          i32.const 8196
          i32.eq
          i32.or
          local.get 9
          i32.const 8197
          i32.eq
          i32.or
          local.get 9
          i32.const 8198
          i32.eq
          i32.or
          local.get 9
          i32.const 8199
          i32.eq
          i32.or
          local.get 9
          i32.const 8200
          i32.eq
          i32.or
          local.get 9
          i32.const 8201
          i32.eq
          i32.or
          local.get 9
          i32.const 8202
          i32.eq
          i32.or
          local.get 9
          i32.const 8239
          i32.eq
          i32.or
          local.get 9
          i32.const 8287
          i32.eq
          i32.or
          local.get 9
          i32.const 12288
          i32.eq
          i32.or
          local.get 9
          i32.const 10
          i32.eq
          i32.or
          local.get 9
          i32.const 13
          i32.eq
          i32.or
          local.get 9
          i32.const 8232
          i32.eq
          i32.or
          local.get 9
          i32.const 8233
          i32.eq
          i32.or
          if  ;; label = @4
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 3 (;@1;)
            drop
          end
          i32.const 0
          local.set 8
        end
        local.get 3
        local.get 9
        i32.store16 offset=4 align=1
        br 1 (;@1;)
      end
    end
    local.get 2
    local.get 5
    local.get 7
    i32.sub
    i32.store align=2
    local.get 2
    i32.const 67
    return)
  (func (;82;) (type 14) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.eqz
      local.get 1
      i32.const 7
      i32.eq
      local.get 0
      i32.eqz
      i32.and
      i32.or
      if  ;; label = @2
        i32.const 0
        i32.const 0
        return
      end
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 35
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 69
        local.set 0
      end
    end
    call 5
    local.tee 2
    local.set 3
    local.get 0
    local.set 4
    local.get 0
    i32.load align=2
    local.set 5
    local.get 4
    local.get 5
    i32.const 2
    i32.mul
    i32.add
    local.set 6
    i32.const 0
    local.set 7
    i32.const 1
    local.set 8
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.lt_s
      if  ;; label = @2
        local.get 4
        i32.load16_u offset=4 align=1
        local.set 9
        local.get 4
        i32.const 2
        i32.add
        local.set 4
        local.get 8
        if  ;; label = @3
          local.get 9
          i32.const 9
          i32.eq
          local.get 9
          i32.const 11
          i32.eq
          i32.or
          local.get 9
          i32.const 12
          i32.eq
          i32.or
          local.get 9
          i32.const 65279
          i32.eq
          i32.or
          local.get 9
          i32.const 32
          i32.eq
          i32.or
          local.get 9
          i32.const 160
          i32.eq
          i32.or
          local.get 9
          i32.const 5760
          i32.eq
          i32.or
          local.get 9
          i32.const 8192
          i32.eq
          i32.or
          local.get 9
          i32.const 8193
          i32.eq
          i32.or
          local.get 9
          i32.const 8194
          i32.eq
          i32.or
          local.get 9
          i32.const 8195
          i32.eq
          i32.or
          local.get 9
          i32.const 8196
          i32.eq
          i32.or
          local.get 9
          i32.const 8197
          i32.eq
          i32.or
          local.get 9
          i32.const 8198
          i32.eq
          i32.or
          local.get 9
          i32.const 8199
          i32.eq
          i32.or
          local.get 9
          i32.const 8200
          i32.eq
          i32.or
          local.get 9
          i32.const 8201
          i32.eq
          i32.or
          local.get 9
          i32.const 8202
          i32.eq
          i32.or
          local.get 9
          i32.const 8239
          i32.eq
          i32.or
          local.get 9
          i32.const 8287
          i32.eq
          i32.or
          local.get 9
          i32.const 12288
          i32.eq
          i32.or
          local.get 9
          i32.const 10
          i32.eq
          i32.or
          local.get 9
          i32.const 13
          i32.eq
          i32.or
          local.get 9
          i32.const 8232
          i32.eq
          i32.or
          local.get 9
          i32.const 8233
          i32.eq
          i32.or
          if  ;; label = @4
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 3 (;@1;)
            drop
          end
          i32.const 0
          local.set 8
        end
        local.get 3
        local.get 9
        i32.store16 offset=4 align=1
        local.get 3
        i32.const 2
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 2
    local.get 5
    local.get 7
    i32.sub
    i32.store align=2
    local.get 2
    i32.const 67
    return)
  (func (;83;) (type 1) (param f64 i32 f64 i32) (result f64 i32)
    (local f64)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.eq
      local.get 1
      i32.const 7
      i32.eq
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.eq
      i32.and
      i32.or
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 0
        return
      end
      local.get 0
      local.get 1
      call 35
      local.set 1
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        call 69
        f64.convert_i32_u
        local.set 0
      end
    end
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 4
    local.get 2
    i32.trunc_sat_f64_s
    i32.const 0
    i32.or
    f64.convert_i32_s
    local.tee 2
    f64.const 0x0p+0 (;=0;)
    f64.lt
    local.get 2
    local.get 4
    f64.ge
    i32.or
    if  ;; label = @1
      f64.const nan (;=nan;)
      i32.const 1
      return
      drop
    end
    local.get 0
    local.get 2
    f64.const 0x1p+1 (;=2;)
    f64.mul
    f64.add
    i32.trunc_sat_f64_s
    i32.load16_u offset=4 align=1
    f64.convert_i32_s
    i32.const 1
    return)
  (func (;84;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0)
  (func (;85;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0)
  (func (;86;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call 2)
  (func (;87;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    call 28)
  (func (;88;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    call 34)
  (func (;89;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call 21)
  (func (;90;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call 59)
  (func (;91;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call 60)
  (func (;92;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 0
      return
    end
    local.get 3
    local.get 4
    call 63)
  (func (;93;) (type 24) (param i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call 65)
  (table (;0;) 10 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (global (;4;) (mut i32) (i32.const 6553600))
  (global (;5;) (mut i32) (i32.const 0))
  (global (;6;) (mut i32) (i32.const 0))
  (global (;7;) (mut i32) (i32.const 0))
  (global (;8;) (mut i32) (i32.const 16384))
  (global (;9;) (mut i32) (i32.const 0))
  (global (;10;) (mut i32) (i32.const 0))
  (global (;11;) (mut i32) (i32.const 0))
  (global (;12;) (mut i32) (i32.const 0))
  (global (;13;) (mut i32) (i32.const 0))
  (export "$" (memory 0))
  (export "m" (func 0))
  (elem (;0;) (i32.const 0) func 85 85 86 87 88 89 90 91 92 93)
  (data (;0;) (i32.const 32768) "\09\00\00\00prototype")
  (data (;1;) (i32.const 32783) "\0b\00\00\00constructor")
  (data (;2;) (i32.const 32800) "\04\00\00\00name")
  (data (;3;) (i32.const 32810) "\06\00\00\00length")
  (data (;4;) (i32.const 32822) "\03\00\00\00NaN")
  (data (;5;) (i32.const 32831) "\08\00\00\00Infinity")
  (data (;6;) (i32.const 32845) "\09\00\00\00-Infinity")
  (data (;7;) (i32.const 32860) "\01\00\00\000")
  (data (;8;) (i32.const 32867) "\0e\00\00\00hasOwnProperty")
  (data (;9;) (i32.const 32887) "\04\00\00\00true")
  (data (;10;) (i32.const 32897) "\05\00\00\00false")
  (data (;11;) (i32.const 32908) "\09\00\00\00function ")
  (data (;12;) (i32.const 32923) "\14\00\00\00() { [native code] }")
  (data (;13;) (i32.const 32949) "\08\00\00\00toString")
  (data (;14;) (i32.const 32963) "\12\00\00\00[object Undefined]")
  (data (;15;) (i32.const 32987) "\0d\00\00\00[object Null]")
  (data (;16;) (i32.const 33006) "\0e\00\00\00[object Array]")
  (data (;17;) (i32.const 33026) "\11\00\00\00[object Function]")
  (data (;18;) (i32.const 33049) "\10\00\00\00[object Boolean]")
  (data (;19;) (i32.const 33071) "\0f\00\00\00[object Number]")
  (data (;20;) (i32.const 33092) "\0f\00\00\00[object String]")
  (data (;21;) (i32.const 33113) "\0d\00\00\00[object Date]")
  (data (;22;) (i32.const 33132) "\0f\00\00\00[object RegExp]")
  (data (;23;) (i32.const 33153) "\0f\00\00\00[object Object]")
  (data (;24;) (i32.const 33174) "\07\00\00\00valueOf")
  (data (;25;) (i32.const 33187) "\09\00\00\00undefined")
  (data (;26;) (i32.const 33202) "\04\00\00\00null")
  (data (;27;) (i32.const 33212) "\09\00\00\00__proto__")
  (data (;28;) (i32.const 33227) "\14\00\00\00propertyIsEnumerable")
  (data (;29;) (i32.const 33253) "\0d\00\00\00isPrototypeOf")
  (data (;30;) (i32.const 33272) "\0e\00\00\00toLocaleString")
  (data (;31;) (i32.const 33292) "\09\00\00\00firstname")
  (data (;32;) (i32.const 33307) "\08\00\00\00lastname")
  (data (;33;) (i32.const 33321) "\09\00\00\00spaceship")
  (data (;34;) (i32.const 33336) "\03\00\00\00job")
  (data (;35;) (i32.const 33345) "\06\00\00\00gender")
  (data (;36;) (i32.const 33357) "\07\00\00\00retired")
  (data (;37;) (i32.const 33370) "\03\00\00\00Han")
  (data (;38;) (i32.const 33379) "\04\00\00\00Solo")
  (data (;39;) (i32.const 33389) "\06\00\00\00Falcon")
  (data (;40;) (i32.const 33401) "\0b\00\00\00designation")
  (data (;41;) (i32.const 33418) "\05\00\00\00loser")
  (data (;42;) (i32.const 33429) "\08\00\00\00firsname")
  (data (;43;) (i32.const 33443) "\04\00\00\00Luke")
  (data (;44;) (i32.const 33453) "\09\00\00\00Skywalker")
  (data (;45;) (i32.const 33468) "\04\00\00\00male")
  (data (;46;) (i32.const 33478) "\09\00\00\00qualities")
  (data (;47;) (i32.const 33493) "\04\00\00\00none")
  (data (;48;) (i32.const 33503) "\04\00\00\00Leia")
  (data (;49;) (i32.const 33513) "\06\00\00\00Organa")
  (data (;50;) (i32.const 33525) "\05\00\00\00queen")
  (data (;51;) (i32.const 33536) "\08\00\00\00nickname")
  (data (;52;) (i32.const 33550) "\03\00\00\00you")
  (data (;53;) (i32.const 33559) "\03\00\00\00Obi")
  (data (;54;) (i32.const 33568) "\03\00\00\00Wan")
  (data (;55;) (i32.const 33577) "\08\00\00\00location")
  (data (;56;) (i32.const 33591) "\05\00\00\00stars")
  (data (;57;) (i32.const 33602) "\04\00\00\00Yoda")
  (data (;58;) (i32.const 33612) "\07\00\00\00unknown")
  (data (;59;) (i32.const 33625) "\09\00\00\00something")
  (data (;60;) (i32.const 33640) "\09\00\00\00dunnoknow")
  (data (;61;) (i32.const 33655) "\04\00\00\00Jedi")
  (data (;62;) (i32.const 33665) "\0a\00\00\00something2")
  (data (;63;) (i32.const 16) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\06\00\00\00Person\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00toString\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00valueOf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\0e\00\00\00hasOwnProperty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\14\00\00\00propertyIsEnumerable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\0d\00\00\00isPrototypeOf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00toLocaleString\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\02\06\00\00\00Object\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
