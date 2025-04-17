(module
  (type (;0;) (func (result f64 i32)))
  (type (;1;) (func (param f64 i32 f64 i32 f64 i32) (result f64 i32)))
  (type (;2;) (func (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)))
  (type (;3;) (func (param f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)))
  (type (;4;) (func (param f64 i32 f64 i32) (result f64)))
  (type (;5;) (func (param f64 i32 f64 i32 f64 i32) (result f64)))
  (type (;6;) (func (param f64 i32) (result f64 i32)))
  (type (;7;) (func (param f64 i32 f64 i32) (result f64 i32)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param f64) (result f64)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32 i32)))
  (type (;12;) (func (param i32 i32) (result i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32) (result f64 i32)))
  (type (;14;) (func (param f64 i32) (result i32 i32)))
  (type (;15;) (func (param f64 i32) (result f64)))
  (type (;16;) (func (param i32 i32 i32 i32 f64 i32 i32 i32)))
  (type (;17;) (func (param i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;21;) (func (param i32 i32) (result f64 i32)))
  (type (;22;) (func (param i32 i32 i32 i32)))
  (type (;23;) (func (param i32 i32 i32 i32 f64 i32)))
  (type (;24;) (func (param i32 i32 i32 i32 f64 i32) (result f64 i32)))
  (type (;25;) (func (result f64)))
  (type (;26;) (func (param i32 i32 i32 i32 i32 i32) (result i32 i32)))
  (type (;27;) (func (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)))
  (type (;28;) (func (param f64 i32)))
  (func (;0;) (type 0) (result f64 i32)
    (local i32)
    f64.const 0x0p+0 (;=0;)
    global.set 0
    i32.const 1
    global.set 1
    f64.const 0x1.c71p+12 (;=7281;)
    global.set 2
    i32.const 1
    global.set 3
    f64.const 0x1.f4p+9 (;=1000;)
    global.set 4
    i32.const 1
    global.set 5
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    global.get 4
    i32.const 1
    global.get 2
    i32.const 1
    call 5
    local.tee 0)
  (func (;1;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local i32 f64 i32 f64 i32 i32 f64 i32 i32 f64 f64 i32 i32)
    call 12
    local.tee 6
    local.get 6
    i32.const 7
    i32.const 472
    i32.const 195
    local.get 4
    local.get 5
    call 85
    f64.convert_i32_u
    i32.const 7
    f64.const 0x1.2p+3 (;=9;)
    i32.const 6
    call 6
    local.set 7
    i32.const 72
    local.set 8
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 7
      i32.trunc_sat_f64_s
      local.get 8
      call 69
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 3
        return
      end
    end
    local.get 7
    local.get 8
    return
    drop
    f64.const 0x1.5cp+6 (;=87;)
    i32.const 6
    f64.const 0x0p+0 (;=0;)
    i32.const 7
    call 12
    local.tee 11
    local.get 4
    f64.store offset=4 align=1
    local.get 11
    local.get 5
    i32.store8 offset=12
    local.get 11
    i32.const 1
    i32.store align=2
    local.get 11
    f64.convert_i32_u
    i32.const 72
    call 87
    local.set 9
    i32.const 72
    local.set 10
    f64.const 0x0p+0 (;=0;)
    local.set 12
    i32.const 1
    local.set 13
    loop  ;; label = @1
      local.get 12
      local.get 4
      f64.lt
      if  ;; label = @2
        block  ;; label = @3
          local.get 9
          local.set 15
          local.get 12
          local.set 16
          local.get 10
          local.set 17
          block  ;; label = @4
            local.get 17
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 15
              i32.trunc_sat_f64_u
              local.get 16
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              i32.add
              local.tee 14
              local.get 12
              f64.store offset=4 align=1
              local.get 14
              local.get 13
              i32.store8 offset=12
              br 1 (;@4;)
            end
            local.get 17
            i32.const 128
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.8b8p+10 (;=1582;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              br 1 (;@4;)
            end
            local.get 15
            i32.trunc_sat_f64_s
            local.get 10
            local.get 16
            local.get 13
            call 44
            local.set 18
            i32.trunc_sat_f64_s
            local.get 18
            local.get 12
            local.get 13
            call 89
            drop
            drop
          end
        end
        local.get 12
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 12
        br 1 (;@1;)
      end
    end
    local.get 9
    local.set 7
    i32.const 72
    local.set 8
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 7
      i32.trunc_sat_f64_s
      local.get 8
      call 69
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 3
        return
      end
    end
    local.get 7
    local.get 8
    return)
  (func (;2;) (type 2) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 f64 f64 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64)
    local.get 10
    local.get 8
    f64.le
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.ne
    if  ;; label = @1
      local.get 0
      i32.trunc_sat_f64_u
      if  ;; label = @2
        local.get 2
        local.get 3
        return
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      return
      drop
    end
    block (result f64)  ;; label = @1
      local.get 8
      local.tee 23
      local.get 10
      local.tee 24
      local.get 9
      i32.const 128
      i32.or
      i32.const 195
      i32.eq
      local.get 11
      i32.const 128
      i32.or
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 23
        local.get 9
        local.get 24
        local.get 11
        call 25
        local.set 16
        br 1 (;@1;)
      end
      i32.const 1
      local.set 16
      f64.add
    end
    f64.const 0x1p+1 (;=2;)
    f64.div
    call 92
    local.set 22
    local.get 6
    local.set 21
    local.get 7
    local.set 17
    block (result f64)  ;; label = @1
      local.get 17
      i32.const 67
      i32.eq
      if  ;; label = @2
        i32.const 8
        call 11
        local.tee 18
        i32.const 1
        i32.store align=1
        local.get 18
        local.get 22
        i32.trunc_sat_f64_u
        i32.const 2
        i32.mul
        local.get 21
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        i32.store16 offset=4 align=1
        local.get 18
        f64.convert_i32_u
        i32.const 67
        local.set 16
        br 1 (;@1;)
      end
      local.get 17
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 22
        i32.trunc_sat_f64_u
        i32.const 9
        i32.mul
        local.get 21
        i32.trunc_sat_f64_u
        i32.add
        local.tee 19
        f64.load offset=4 align=1
        local.get 19
        i32.load8_u offset=12
        local.set 16
        br 1 (;@1;)
      end
      local.get 17
      i32.const 128
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x1.9d4p+10 (;=1653;)
        i32.const 195
        call 7
        i32.const 38
        throw 0
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 17
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 8
        call 11
        local.tee 18
        i32.const 1
        i32.store align=1
        local.get 18
        local.get 22
        i32.trunc_sat_f64_u
        local.get 21
        i32.trunc_sat_f64_u
        i32.add
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 18
        f64.convert_i32_u
        i32.const 195
        local.set 16
        br 1 (;@1;)
      end
      local.get 21
      i32.trunc_sat_f64_s
      local.get 7
      local.get 22
      i32.const 1
      call 44
      local.set 20
      i32.trunc_sat_f64_s
      local.get 20
      call 32
      local.set 16
    end
    local.set 15
    local.get 4
    local.set 14
    local.get 5
    local.set 17
    block (result f64)  ;; label = @1
      local.get 17
      i32.const 67
      i32.eq
      if  ;; label = @2
        i32.const 8
        call 11
        local.tee 18
        i32.const 1
        i32.store align=1
        local.get 18
        local.get 15
        i32.trunc_sat_f64_u
        i32.const 2
        i32.mul
        local.get 14
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        i32.store16 offset=4 align=1
        local.get 18
        f64.convert_i32_u
        i32.const 67
        local.set 16
        br 1 (;@1;)
      end
      local.get 17
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 15
        i32.trunc_sat_f64_u
        i32.const 9
        i32.mul
        local.get 14
        i32.trunc_sat_f64_u
        i32.add
        local.tee 19
        f64.load offset=4 align=1
        local.get 19
        i32.load8_u offset=12
        local.set 16
        br 1 (;@1;)
      end
      local.get 17
      i32.const 128
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x1.9d4p+10 (;=1653;)
        i32.const 195
        call 7
        i32.const 38
        throw 0
        f64.const 0x0p+0 (;=0;)
        br 1 (;@1;)
      end
      local.get 17
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 8
        call 11
        local.tee 18
        i32.const 1
        i32.store align=1
        local.get 18
        local.get 15
        i32.trunc_sat_f64_u
        local.get 14
        i32.trunc_sat_f64_u
        i32.add
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 18
        f64.convert_i32_u
        i32.const 195
        local.set 16
        br 1 (;@1;)
      end
      local.get 14
      i32.trunc_sat_f64_s
      local.get 5
      local.get 15
      local.get 16
      call 44
      local.set 20
      i32.trunc_sat_f64_s
      local.get 20
      call 32
      local.set 16
    end
    local.set 12
    local.get 16
    local.set 13
    local.get 8
    local.set 33
    local.get 9
    local.set 34
    local.get 10
    local.set 35
    local.get 11
    local.set 36
    loop  ;; label = @1
      local.get 33
      local.get 35
      f64.le
      if  ;; label = @2
        local.get 33
        local.set 38
        local.get 6
        local.set 37
        local.get 7
        local.set 17
        block (result f64)  ;; label = @3
          local.get 17
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 38
            i32.trunc_sat_f64_u
            i32.const 2
            i32.mul
            local.get 37
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            i32.store16 offset=4 align=1
            local.get 18
            f64.convert_i32_u
            i32.const 67
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 72
          i32.eq
          if  ;; label = @4
            local.get 38
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 37
            i32.trunc_sat_f64_u
            i32.add
            local.tee 19
            f64.load offset=4 align=1
            local.get 19
            i32.load8_u offset=12
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 128
          i32.eq
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.9d4p+10 (;=1653;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
            br 1 (;@3;)
          end
          local.get 17
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 38
            i32.trunc_sat_f64_u
            local.get 37
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 18
            f64.convert_i32_u
            i32.const 195
            local.set 16
            br 1 (;@3;)
          end
          local.get 37
          i32.trunc_sat_f64_s
          local.get 7
          local.get 38
          local.get 34
          call 44
          local.set 20
          i32.trunc_sat_f64_s
          local.get 20
          call 32
          local.set 16
        end
        local.set 25
        local.get 16
        local.set 26
        local.get 35
        local.set 40
        local.get 6
        local.set 39
        local.get 7
        local.set 17
        block (result f64)  ;; label = @3
          local.get 17
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 40
            i32.trunc_sat_f64_u
            i32.const 2
            i32.mul
            local.get 39
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            i32.store16 offset=4 align=1
            local.get 18
            f64.convert_i32_u
            i32.const 67
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 72
          i32.eq
          if  ;; label = @4
            local.get 40
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 39
            i32.trunc_sat_f64_u
            i32.add
            local.tee 19
            f64.load offset=4 align=1
            local.get 19
            i32.load8_u offset=12
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 128
          i32.eq
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.9d4p+10 (;=1653;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
            br 1 (;@3;)
          end
          local.get 17
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 40
            i32.trunc_sat_f64_u
            local.get 39
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 18
            f64.convert_i32_u
            i32.const 195
            local.set 16
            br 1 (;@3;)
          end
          local.get 39
          i32.trunc_sat_f64_s
          local.get 7
          local.get 40
          local.get 36
          call 44
          local.set 20
          i32.trunc_sat_f64_s
          local.get 20
          call 32
          local.set 16
        end
        local.set 27
        local.get 16
        local.set 28
        local.get 25
        local.set 42
        local.get 4
        local.set 41
        local.get 5
        local.set 17
        block (result f64)  ;; label = @3
          local.get 17
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 42
            i32.trunc_sat_f64_u
            i32.const 2
            i32.mul
            local.get 41
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            i32.store16 offset=4 align=1
            local.get 18
            f64.convert_i32_u
            i32.const 67
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 72
          i32.eq
          if  ;; label = @4
            local.get 42
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 41
            i32.trunc_sat_f64_u
            i32.add
            local.tee 19
            f64.load offset=4 align=1
            local.get 19
            i32.load8_u offset=12
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 128
          i32.eq
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.9d4p+10 (;=1653;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
            br 1 (;@3;)
          end
          local.get 17
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 42
            i32.trunc_sat_f64_u
            local.get 41
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 18
            f64.convert_i32_u
            i32.const 195
            local.set 16
            br 1 (;@3;)
          end
          local.get 41
          i32.trunc_sat_f64_s
          local.get 5
          local.get 42
          local.get 26
          call 44
          local.set 20
          i32.trunc_sat_f64_s
          local.get 20
          call 32
          local.set 16
        end
        local.get 12
        f64.ge
        f64.convert_i32_u
        local.set 29
        i32.const 2
        local.set 30
        local.get 27
        local.set 44
        local.get 4
        local.set 43
        local.get 5
        local.set 17
        block (result f64)  ;; label = @3
          local.get 17
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 44
            i32.trunc_sat_f64_u
            i32.const 2
            i32.mul
            local.get 43
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            i32.store16 offset=4 align=1
            local.get 18
            f64.convert_i32_u
            i32.const 67
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 72
          i32.eq
          if  ;; label = @4
            local.get 44
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 43
            i32.trunc_sat_f64_u
            i32.add
            local.tee 19
            f64.load offset=4 align=1
            local.get 19
            i32.load8_u offset=12
            local.set 16
            br 1 (;@3;)
          end
          local.get 17
          i32.const 128
          i32.eq
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.9d4p+10 (;=1653;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
            br 1 (;@3;)
          end
          local.get 17
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 18
            i32.const 1
            i32.store align=1
            local.get 18
            local.get 44
            i32.trunc_sat_f64_u
            local.get 43
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 18
            f64.convert_i32_u
            i32.const 195
            local.set 16
            br 1 (;@3;)
          end
          local.get 43
          i32.trunc_sat_f64_s
          local.get 5
          local.get 44
          local.get 28
          call 44
          local.set 20
          i32.trunc_sat_f64_s
          local.get 20
          call 32
          local.set 16
        end
        local.get 12
        f64.le
        f64.convert_i32_u
        local.set 31
        i32.const 2
        local.set 32
        local.get 29
        local.tee 45
        f64.abs
        f64.const 0x0p+0 (;=0;)
        f64.gt
        if (result f64)  ;; label = @3
          local.get 31
          i32.const 2
          local.set 16
        else
          local.get 45
          i32.const 2
          local.set 16
        end
        local.set 46
        local.get 16
        local.set 17
        block (result i32)  ;; label = @3
          local.get 17
          i32.const 67
          i32.eq
          local.get 17
          i32.const 195
          i32.eq
          i32.or
          if  ;; label = @4
            local.get 46
            i32.trunc_sat_f64_u
            i32.load align=2
            br 1 (;@3;)
          end
          local.get 17
          i32.const 31
          i32.eq
          local.get 17
          i32.const 32
          i32.eq
          i32.or
          if  ;; label = @4
            i32.const 1
            br 1 (;@3;)
          end
          local.get 46
          f64.abs
          f64.const 0x0p+0 (;=0;)
          f64.gt
        end
        if  ;; label = @3
          local.get 6
          local.set 48
          local.get 33
          local.set 49
          local.get 7
          local.set 17
          block  ;; label = @4
            local.get 17
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 48
              i32.trunc_sat_f64_u
              local.get 49
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              i32.add
              local.tee 47
              local.get 27
              f64.store offset=4 align=1
              local.get 47
              local.get 28
              i32.store8 offset=12
              br 1 (;@4;)
            end
            local.get 17
            i32.const 128
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.8b8p+10 (;=1582;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              br 1 (;@4;)
            end
            local.get 48
            i32.trunc_sat_f64_s
            local.get 7
            local.get 49
            local.get 34
            call 44
            local.set 20
            i32.trunc_sat_f64_s
            local.get 20
            local.get 27
            local.get 28
            call 89
            drop
            drop
          end
          local.get 6
          local.set 50
          local.get 35
          local.set 51
          local.get 7
          local.set 17
          block  ;; label = @4
            local.get 17
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 50
              i32.trunc_sat_f64_u
              local.get 51
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              i32.add
              local.tee 47
              local.get 25
              f64.store offset=4 align=1
              local.get 47
              local.get 26
              i32.store8 offset=12
              br 1 (;@4;)
            end
            local.get 17
            i32.const 128
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.8b8p+10 (;=1582;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              br 1 (;@4;)
            end
            local.get 50
            i32.trunc_sat_f64_s
            local.get 7
            local.get 51
            local.get 36
            call 44
            local.set 20
            i32.trunc_sat_f64_s
            local.get 20
            local.get 25
            local.get 26
            call 89
            drop
            drop
          end
          local.get 33
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.set 33
          i32.const 1
          local.set 34
          local.get 35
          f64.const 0x1p+0 (;=1;)
          f64.sub
          local.set 35
          i32.const 1
          local.set 36
        else
          local.get 29
          f64.const 0x0p+0 (;=0;)
          f64.eq
          f64.convert_i32_u
          f64.const 0x0p+0 (;=0;)
          f64.ne
          if  ;; label = @4
            local.get 33
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 33
          end
          local.get 31
          f64.const 0x0p+0 (;=0;)
          f64.eq
          f64.convert_i32_u
          f64.const 0x0p+0 (;=0;)
          f64.ne
          if  ;; label = @4
            local.get 35
            f64.const 0x1p+0 (;=1;)
            f64.sub
            local.set 35
          end
        end
        br 1 (;@1;)
      end
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    local.get 35
    local.get 36
    call 2
    local.set 16
    drop
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 33
    local.get 34
    local.get 10
    local.get 11
    call 2
    local.set 16
    drop
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 2
      local.get 3
      return
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    return)
  (func (;3;) (type 3) (param f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 i32 f64 i32 f64 i32 f64 i32 f64 f64 i32 i32 i32 i32 i32 f64 f64 f64 f64 i32 f64 f64 f64 i32 f64 i32)
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    local.get 4
    local.get 5
    call 1
    local.tee 10
    local.set 9
    local.set 8
    f64.const 0x0p+0 (;=0;)
    local.set 15
    i32.const 1
    local.set 16
    f64.const 0x0p+0 (;=0;)
    local.set 15
    i32.const 1
    local.set 16
    loop  ;; label = @1
      local.get 15
      local.get 6
      f64.lt
      if  ;; label = @2
        block  ;; label = @3
          local.get 15
          call 93
          local.get 4
          local.get 15
          f64.sub
          f64.mul
          call 92
          f64.add
          local.set 13
          i32.const 1
          local.set 14
          local.get 15
          local.set 18
          local.get 8
          local.set 17
          local.get 9
          local.set 19
          block (result f64)  ;; label = @4
            local.get 19
            i32.const 67
            i32.eq
            if  ;; label = @5
              i32.const 8
              call 11
              local.tee 20
              i32.const 1
              i32.store align=1
              local.get 20
              local.get 18
              i32.trunc_sat_f64_u
              i32.const 2
              i32.mul
              local.get 17
              i32.trunc_sat_f64_u
              i32.add
              i32.load16_u offset=4 align=1
              i32.store16 offset=4 align=1
              local.get 20
              f64.convert_i32_u
              i32.const 67
              local.set 10
              br 1 (;@4;)
            end
            local.get 19
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 18
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              local.get 17
              i32.trunc_sat_f64_u
              i32.add
              local.tee 21
              f64.load offset=4 align=1
              local.get 21
              i32.load8_u offset=12
              local.set 10
              br 1 (;@4;)
            end
            local.get 19
            i32.const 128
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.9d4p+10 (;=1653;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              f64.const 0x0p+0 (;=0;)
              br 1 (;@4;)
            end
            local.get 19
            i32.const 195
            i32.eq
            if  ;; label = @5
              i32.const 8
              call 11
              local.tee 20
              i32.const 1
              i32.store align=1
              local.get 20
              local.get 18
              i32.trunc_sat_f64_u
              local.get 17
              i32.trunc_sat_f64_u
              i32.add
              i32.load8_u offset=4
              i32.store8 offset=4
              local.get 20
              f64.convert_i32_u
              i32.const 195
              local.set 10
              br 1 (;@4;)
            end
            local.get 17
            i32.trunc_sat_f64_s
            local.get 9
            local.get 18
            local.get 16
            call 44
            local.set 22
            i32.trunc_sat_f64_s
            local.get 22
            call 32
            local.set 10
          end
          local.set 11
          local.get 10
          local.set 12
          local.get 8
          local.set 24
          local.get 15
          local.set 25
          local.get 9
          local.set 19
          block  ;; label = @4
            local.get 19
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 24
              i32.trunc_sat_f64_u
              local.get 25
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              i32.add
              local.tee 23
              local.get 13
              local.set 27
              local.get 8
              local.set 26
              local.get 9
              local.set 28
              block (result f64)  ;; label = @6
                local.get 28
                i32.const 67
                i32.eq
                if  ;; label = @7
                  i32.const 8
                  call 11
                  local.tee 20
                  i32.const 1
                  i32.store align=1
                  local.get 20
                  local.get 27
                  i32.trunc_sat_f64_u
                  i32.const 2
                  i32.mul
                  local.get 26
                  i32.trunc_sat_f64_u
                  i32.add
                  i32.load16_u offset=4 align=1
                  i32.store16 offset=4 align=1
                  local.get 20
                  f64.convert_i32_u
                  i32.const 67
                  local.set 10
                  br 1 (;@6;)
                end
                local.get 28
                i32.const 72
                i32.eq
                if  ;; label = @7
                  local.get 27
                  i32.trunc_sat_f64_u
                  i32.const 9
                  i32.mul
                  local.get 26
                  i32.trunc_sat_f64_u
                  i32.add
                  local.tee 21
                  f64.load offset=4 align=1
                  local.get 21
                  i32.load8_u offset=12
                  local.set 10
                  br 1 (;@6;)
                end
                local.get 28
                i32.const 128
                i32.eq
                if  ;; label = @7
                  f64.const 0x0p+0 (;=0;)
                  i32.const 128
                  f64.const 0x0p+0 (;=0;)
                  i32.const 128
                  f64.const 0x1.9d4p+10 (;=1653;)
                  i32.const 195
                  call 7
                  i32.const 38
                  throw 0
                  f64.const 0x0p+0 (;=0;)
                  br 1 (;@6;)
                end
                local.get 28
                i32.const 195
                i32.eq
                if  ;; label = @7
                  i32.const 8
                  call 11
                  local.tee 20
                  i32.const 1
                  i32.store align=1
                  local.get 20
                  local.get 27
                  i32.trunc_sat_f64_u
                  local.get 26
                  i32.trunc_sat_f64_u
                  i32.add
                  i32.load8_u offset=4
                  i32.store8 offset=4
                  local.get 20
                  f64.convert_i32_u
                  i32.const 195
                  local.set 10
                  br 1 (;@6;)
                end
                local.get 26
                i32.trunc_sat_f64_s
                local.get 9
                local.get 27
                i32.const 1
                call 44
                local.set 22
                i32.trunc_sat_f64_s
                local.get 22
                call 32
                local.set 10
              end
              f64.store offset=4 align=1
              local.get 23
              local.get 10
              i32.store8 offset=12
              br 1 (;@4;)
            end
            local.get 19
            i32.const 128
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.8b8p+10 (;=1582;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              br 1 (;@4;)
            end
            local.get 24
            i32.trunc_sat_f64_s
            local.get 9
            local.get 25
            local.get 16
            call 44
            local.set 22
            i32.trunc_sat_f64_s
            local.get 22
            local.get 13
            local.set 27
            local.get 8
            local.set 26
            local.get 9
            local.set 28
            block (result f64)  ;; label = @5
              local.get 28
              i32.const 67
              i32.eq
              if  ;; label = @6
                i32.const 8
                call 11
                local.tee 20
                i32.const 1
                i32.store align=1
                local.get 20
                local.get 27
                i32.trunc_sat_f64_u
                i32.const 2
                i32.mul
                local.get 26
                i32.trunc_sat_f64_u
                i32.add
                i32.load16_u offset=4 align=1
                i32.store16 offset=4 align=1
                local.get 20
                f64.convert_i32_u
                i32.const 67
                local.set 10
                br 1 (;@5;)
              end
              local.get 28
              i32.const 72
              i32.eq
              if  ;; label = @6
                local.get 27
                i32.trunc_sat_f64_u
                i32.const 9
                i32.mul
                local.get 26
                i32.trunc_sat_f64_u
                i32.add
                local.tee 21
                f64.load offset=4 align=1
                local.get 21
                i32.load8_u offset=12
                local.set 10
                br 1 (;@5;)
              end
              local.get 28
              i32.const 128
              i32.eq
              if  ;; label = @6
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x1.9d4p+10 (;=1653;)
                i32.const 195
                call 7
                i32.const 38
                throw 0
                f64.const 0x0p+0 (;=0;)
                br 1 (;@5;)
              end
              local.get 28
              i32.const 195
              i32.eq
              if  ;; label = @6
                i32.const 8
                call 11
                local.tee 20
                i32.const 1
                i32.store align=1
                local.get 20
                local.get 27
                i32.trunc_sat_f64_u
                local.get 26
                i32.trunc_sat_f64_u
                i32.add
                i32.load8_u offset=4
                i32.store8 offset=4
                local.get 20
                f64.convert_i32_u
                i32.const 195
                local.set 10
                br 1 (;@5;)
              end
              local.get 26
              i32.trunc_sat_f64_s
              local.get 9
              local.get 27
              i32.const 1
              call 44
              local.set 22
              i32.trunc_sat_f64_s
              local.get 22
              call 32
              local.set 10
            end
            local.get 10
            call 89
            drop
            drop
          end
          local.get 8
          local.set 29
          local.get 13
          local.set 30
          local.get 9
          local.set 19
          block  ;; label = @4
            local.get 19
            i32.const 72
            i32.eq
            if  ;; label = @5
              local.get 29
              i32.trunc_sat_f64_u
              local.get 30
              i32.trunc_sat_f64_u
              i32.const 9
              i32.mul
              i32.add
              local.tee 23
              local.get 11
              f64.store offset=4 align=1
              local.get 23
              local.get 12
              i32.store8 offset=12
              br 1 (;@4;)
            end
            local.get 19
            i32.const 128
            i32.eq
            if  ;; label = @5
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.8b8p+10 (;=1582;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              br 1 (;@4;)
            end
            local.get 29
            i32.trunc_sat_f64_s
            local.get 9
            local.get 30
            i32.const 1
            call 44
            local.set 22
            i32.trunc_sat_f64_s
            local.get 22
            local.get 11
            local.get 12
            call 89
            drop
            drop
          end
        end
        local.get 15
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 15
        br 1 (;@1;)
      end
    end
    local.get 8
    local.set 31
    local.get 9
    local.set 32
    local.get 9
    local.set 19
    block (result f64)  ;; label = @1
      local.get 19
      i32.const 33
      i32.eq
      if  ;; label = @2
        local.get 31
        i32.trunc_sat_f64_s
        local.get 32
        i32.const 0
        i32.const 1
        local.get 6
        i32.trunc_sat_f64_s
        local.get 7
        call 94
        local.set 10
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 19
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 31
        i32.trunc_sat_f64_s
        local.get 32
        i32.const 0
        i32.const 1
        local.get 6
        i32.trunc_sat_f64_s
        local.get 7
        call 94
        local.set 10
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 19
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 31
        local.get 32
        f64.const 0x0p+0 (;=0;)
        i32.const 1
        local.get 6
        local.get 7
        call 95
        local.set 10
        br 1 (;@1;)
      end
      local.get 19
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 31
        i32.trunc_sat_f64_s
        local.get 32
        i32.const 0
        i32.const 1
        local.get 6
        i32.trunc_sat_f64_s
        local.get 7
        call 96
        local.set 10
        f64.convert_i32_s
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a7p+10 (;=1692;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      f64.const 0x0p+0 (;=0;)
    end
    local.set 33
    local.get 10
    local.set 34
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 33
      i32.trunc_sat_f64_s
      local.get 34
      call 69
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 3
        return
      end
    end
    local.get 33
    local.get 34
    return)
  (func (;4;) (type 3) (param f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    f64.const 0x0p+0 (;=0;)
    i32.const 0)
  (func (;5;) (type 3) (param f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 i32 i32 f64 i32)
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    local.get 6
    local.get 7
    local.get 6
    local.get 7
    call 3
    local.tee 10
    local.set 9
    local.set 8
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    local.get 6
    local.get 7
    call 1
    local.tee 10
    local.set 12
    local.set 11
    f64.const 0x0p+0 (;=0;)
    local.set 13
    i32.const 1
    local.set 14
    loop  ;; label = @1
      local.get 13
      local.get 4
      f64.lt
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        local.get 8
        local.get 9
        local.get 11
        local.get 12
        f64.const 0x0p+0 (;=0;)
        i32.const 1
        local.get 6
        f64.const 0x1p+0 (;=1;)
        f64.sub
        i32.const 1
        call 2
        local.set 10
        drop
        local.get 13
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 13
        br 1 (;@1;)
      end
    end
    f64.const 0x1p+0 (;=1;)
    local.set 15
    i32.const 2
    local.set 16
    local.get 11
    local.set 19
    local.get 12
    local.set 20
    local.get 12
    local.set 21
    block (result f64)  ;; label = @1
      local.get 21
      i32.const 72
      i32.eq
      if  ;; label = @2
        local.get 19
        local.get 20
        f64.const 0x1.4p+3 (;=10;)
        i32.const 6
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        call 97
        local.set 10
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.b84p+10 (;=1761;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      f64.const 0x0p+0 (;=0;)
    end
    local.set 17
    local.get 10
    local.set 18
    call 12
    local.tee 22
    local.get 11
    f64.store offset=4 align=1
    local.get 22
    local.get 12
    i32.store8 offset=12
    local.get 22
    local.get 8
    f64.store offset=13 align=1
    local.get 22
    local.get 9
    i32.store8 offset=21
    local.get 22
    i32.const 2
    i32.store align=2
    local.get 22
    f64.convert_i32_u
    local.set 23
    i32.const 72
    local.set 24
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 23
      i32.trunc_sat_f64_s
      local.get 24
      call 69
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 3
        return
      end
    end
    local.get 23
    local.get 24
    return)
  (func (;6;) (type 4) (param f64 i32 f64 i32) (result f64)
    (local f64 i32 f64 f64 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 i32 f64 f64 f64 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      local.get 5
      i32.const 128
      i32.eq
      i32.or
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.5f8p+10 (;=1406;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    call 12
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
      f64.const 0x1p+7 (;=128;)
      f64.ne
      if  ;; label = @2
        local.get 3
        f64.convert_i32_u
        f64.const 0x1.8p+2 (;=6;)
        f64.ne
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.678p+10 (;=1438;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
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
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.73cp+10 (;=1487;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
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
                call 11
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
                call 11
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
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                local.get 12
                local.get 13
                local.get 7
                i32.const 1
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                local.get 20
                i32.trunc_sat_f64_u
                call_indirect (type 27)
                local.set 14
                br 1 (;@5;)
              end
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.7dcp+10 (;=1527;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
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
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.73cp+10 (;=1487;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
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
                call 11
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
                call 11
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
      f64.const 0x1.d8p+8 (;=472;)
      local.set 25
      local.get 0
      local.tee 24
      i32.trunc_sat_f64_s
      i32.const 7
      local.get 25
      i32.const 195
      call 44
      local.set 26
      i32.trunc_sat_f64_s
      local.get 26
      call 32
      local.tee 14
      call 48
      local.tee 23
      f64.const 0x1.fffffffep+31 (;=4.29497e+09;)
      f64.gt
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x1.85p+10 (;=1556;)
        i32.const 195
        call 10
        i32.const 41
        throw 0
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
          call 44
          local.set 26
          i32.trunc_sat_f64_s
          local.get 26
          call 32
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
  (func (;7;) (type 5) (param f64 i32 f64 i32 f64 i32) (result f64)
    (local i32 f64)
    local.get 4
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 5
    i32.const 128
    i32.or
    i32.const 128
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      local.set 4
      i32.const 195
      local.set 5
    else
      local.get 4
      local.get 5
      call 8
      local.tee 6
      local.set 5
      local.set 4
    end
    i32.const 8
    call 11
    f64.convert_i32_s
    local.tee 7
    i32.trunc_sat_f64_s
    local.get 4
    i32.trunc_sat_f64_s
    i32.store align=1
    local.get 7
    i32.trunc_sat_f64_s
    local.get 5
    i32.store8 offset=4
    local.get 7
    return)
  (func (;8;) (type 6) (param f64 i32) (result f64 i32)
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1p+4 (;=16;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+7 (;=128;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    i32.or
    if  ;; label = @1
      f64.const 0x1.f8p+5 (;=63;)
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
      f64.const 0x1.38p+6 (;=78;)
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
        f64.const 0x1.6p+6 (;=88;)
        i32.const 195
        return
        drop
      end
      f64.const 0x1.88p+6 (;=98;)
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
      call 9
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
    call 17
    local.tee 2
    local.set 4
    local.tee 3
    local.get 4
    call 8
    local.tee 2
    return)
  (func (;9;) (type 7) (param f64 i32 f64 i32) (result f64 i32)
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.b4p+6 (;=109;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.54p+7 (;=170;)
      i32.const 195
      call 10
      i32.const 41
      throw 0
      drop
    end
    local.get 0
    call 13
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 0
      call 14
      i32.trunc_sat_f64_u
      if  ;; label = @2
        f64.const 0x1.c4p+7 (;=226;)
        i32.const 195
        return
        drop
      end
      local.get 0
      f64.const inf (;=inf;)
      f64.eq
      if  ;; label = @2
        f64.const 0x1.d6p+7 (;=235;)
        i32.const 195
        return
        drop
      end
      f64.const 0x1.f2p+7 (;=249;)
      i32.const 195
      return
      drop
    end
    local.get 0
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.08p+8 (;=264;)
      i32.const 195
      return
      drop
    end
    i32.const 512
    call 11
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
    call 15
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
            call 15
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
            call 15
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
            call 15
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
            call 15
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
            call 15
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
          call 15
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
    call 15
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
      call 16
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
          call 15
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
  (func (;10;) (type 5) (param f64 i32 f64 i32 f64 i32) (result f64)
    (local i32 f64)
    local.get 4
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 5
    i32.const 128
    i32.or
    i32.const 128
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      local.set 4
      i32.const 195
      local.set 5
    else
      local.get 4
      local.get 5
      call 8
      local.tee 6
      local.set 5
      local.set 4
    end
    i32.const 8
    call 11
    f64.convert_i32_s
    local.tee 7
    i32.trunc_sat_f64_s
    local.get 4
    i32.trunc_sat_f64_s
    i32.store align=1
    local.get 7
    i32.trunc_sat_f64_s
    local.get 5
    i32.store8 offset=4
    local.get 7
    return)
  (func (;11;) (type 8) (param i32) (result i32)
    global.get 9
    i32.const 16384
    i32.ge_s
    if (result i32)  ;; label = @1
      local.get 0
      global.set 9
      call 12
      global.set 8
      global.get 8
    else
      global.get 8
      global.get 9
      i32.add
      local.get 0
      global.get 9
      i32.add
      global.set 9
    end)
  (func (;12;) (type 9) (result i32)
    global.get 7
    i32.const 1048576
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 16384
      global.set 7
      i32.const 16
      memory.grow
      i32.const 65536
      i32.mul
      global.set 6
      global.get 6
    else
      global.get 6
      global.get 7
      i32.add
      i32.const 16384
      global.get 7
      i32.add
      global.set 7
    end)
  (func (;13;) (type 10) (param f64) (result f64)
    (local f64)
    local.get 0
    local.get 0
    f64.sub
    local.tee 1
    local.get 1
    f64.eq
    f64.convert_i32_s)
  (func (;14;) (type 10) (param f64) (result f64)
    local.get 0
    local.get 0
    f64.ne
    f64.convert_i32_s)
  (func (;15;) (type 10) (param f64) (result f64)
    local.get 0
    f64.trunc)
  (func (;16;) (type 10) (param f64) (result f64)
    local.get 0
    f64.nearest)
  (func (;17;) (type 6) (param f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 i32 f64 i32)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    local.get 1
    local.set 7
    block (result f64)  ;; label = @1
      local.get 7
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        call 9
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 18
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 6
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 19
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 31
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 18
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
        i32.const 128
        call 9
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
        call 99
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 38
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 22
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 41
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 27
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 99
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
        call 64
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 128
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
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
        call 30
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 31
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
      local.get 7
      i32.const 128
      i32.eq
      i32.or
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
      call 63
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
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 57
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 58
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 61
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 58
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 32
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 57
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
        call 84
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
        call 84
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
        call 59
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 128
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
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
        call 60
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 61
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
      local.get 7
      i32.const 128
      i32.eq
      i32.or
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
      call 63
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
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x1.c48p+9 (;=905;)
    i32.const 195
    call 7
    i32.const 38
    throw 0
    drop
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    return)
  (func (;18;) (type 6) (param f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x1.6p+6 (;=88;)
      i32.const 195
      return
      drop
    end
    f64.const 0x1.88p+6 (;=98;)
    i32.const 195
    return)
  (func (;19;) (type 6) (param f64 i32) (result f64 i32)
    (local f64)
    local.get 1
    i32.const 6
    i32.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.0fp+8 (;=271;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    call 12
    f64.convert_i32_s
    local.tee 2
    i32.const 195
    f64.const 0x1.5p+8 (;=336;)
    i32.const 195
    call 20
    drop
    local.get 2
    i32.const 195
    local.get 0
    i32.trunc_sat_f64_s
    call 21
    f64.convert_i32_s
    i32.const 195
    call 20
    drop
    local.get 2
    i32.const 195
    f64.const 0x1.5fp+8 (;=351;)
    i32.const 195
    call 20
    drop
    local.get 2
    i32.const 195
    return)
  (func (;20;) (type 4) (param f64 i32 f64 i32) (result f64)
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
  (func (;21;) (type 8) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.mul
    i32.const 3
    i32.add
    i32.const 16384
    i32.add)
  (func (;22;) (type 6) (param f64 i32) (result f64 i32)
    (local f64 i32 f64 f64 i32 f64 i32 f64 f64)
    local.get 0
    i32.const 38
    call 23
    local.tee 6
    local.set 3
    local.set 2
    local.get 0
    i32.const 38
    call 24
    local.tee 6
    local.set 8
    local.tee 7
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    local.get 2
    local.get 3
    f64.const 0x1.88p+8 (;=392;)
    i32.const 195
    call 25
    local.tee 6
    local.get 7
    local.get 8
    call 25
    local.tee 6
    return)
  (func (;23;) (type 6) (param f64 i32) (result f64 i32)
    f64.const 0x1.79p+8 (;=377;)
    i32.const 195
    return)
  (func (;24;) (type 6) (param f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=1
    f64.convert_i32_u
    local.get 0
    i32.trunc_sat_f64_u
    i32.load8_u offset=4
    return)
  (func (;25;) (type 7) (param f64 i32 f64 i32) (result f64 i32)
    (local i32)
    local.get 1
    i32.const 128
    i32.or
    f64.convert_i32_s
    f64.const 0x1.86p+7 (;=195;)
    f64.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      call 8
      local.tee 4
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
      local.get 3
      call 8
      local.tee 4
      local.set 3
      local.set 2
    end
    local.get 0
    i32.trunc_sat_f64_s
    local.get 1
    local.get 2
    i32.trunc_sat_f64_s
    local.get 3
    call 26
    local.set 4
    f64.convert_i32_s
    local.get 4
    return)
  (func (;26;) (type 11) (param i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load align=1
    local.set 4
    local.get 2
    i32.load align=1
    local.set 5
    local.get 1
    i32.const 195
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 4
        local.get 4
        i32.add
        local.get 5
        i32.add
        call 11
        local.tee 6
        local.get 4
        local.get 5
        i32.add
        i32.store align=1
        local.get 6
        i32.const 4
        i32.add
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        memory.copy
        local.get 6
        i32.const 4
        i32.add
        local.get 4
        i32.add
        local.get 2
        i32.const 4
        i32.add
        local.get 5
        memory.copy
        local.get 6
        i32.const 195
        return
        drop
      else
        i32.const 4
        local.get 4
        local.get 5
        i32.add
        i32.const 2
        i32.mul
        i32.add
        call 11
        local.tee 6
        local.get 4
        local.get 5
        i32.add
        i32.store align=1
        i32.const 0
        local.set 7
        loop  ;; label = @3
          local.get 7
          local.get 4
          i32.lt_s
          if  ;; label = @4
            local.get 6
            local.get 7
            i32.const 2
            i32.mul
            i32.add
            local.get 0
            local.get 7
            i32.add
            i32.load8_u offset=4
            i32.store16 offset=4 align=1
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 1 (;@3;)
          end
        end
        local.get 6
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.mul
        i32.add
        local.get 2
        i32.const 4
        i32.add
        local.get 5
        i32.const 2
        i32.mul
        memory.copy
        local.get 6
        i32.const 67
        return
        drop
      end
    else
      local.get 3
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 4
        local.get 4
        local.get 5
        i32.add
        i32.const 2
        i32.mul
        i32.add
        call 11
        local.tee 6
        local.get 4
        local.get 5
        i32.add
        i32.store align=1
        local.get 6
        i32.const 4
        i32.add
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.mul
        memory.copy
        local.get 6
        local.get 4
        i32.const 2
        i32.mul
        i32.add
        local.set 8
        i32.const 0
        local.set 7
        loop  ;; label = @3
          local.get 7
          local.get 5
          i32.lt_s
          if  ;; label = @4
            local.get 8
            local.get 7
            i32.const 2
            i32.mul
            i32.add
            local.get 2
            local.get 7
            i32.add
            i32.load8_u offset=4
            i32.store16 offset=4 align=1
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            br 1 (;@3;)
          end
        end
        local.get 6
        i32.const 67
        return
        drop
      else
        i32.const 4
        local.get 4
        local.get 5
        i32.add
        i32.const 2
        i32.mul
        i32.add
        call 11
        local.tee 6
        local.get 4
        local.get 5
        i32.add
        i32.store align=1
        local.get 6
        i32.const 4
        i32.add
        local.get 0
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.mul
        memory.copy
        local.get 6
        i32.const 4
        i32.add
        local.get 4
        i32.const 2
        i32.mul
        i32.add
        local.get 2
        i32.const 4
        i32.add
        local.get 5
        i32.const 2
        i32.mul
        memory.copy
        local.get 6
        i32.const 67
        return
        drop
      end
    end
    i32.const 0
    i32.const 128
    return)
  (func (;27;) (type 6) (param f64 i32) (result f64 i32)
    (local f64 i32 f64 f64 i32 f64 i32 f64 f64)
    local.get 0
    i32.const 41
    call 28
    local.tee 6
    local.set 3
    local.set 2
    local.get 0
    i32.const 41
    call 29
    local.tee 6
    local.set 8
    local.tee 7
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 2
      local.get 3
      return
      drop
    end
    local.get 2
    local.get 3
    f64.const 0x1.88p+8 (;=392;)
    i32.const 195
    call 25
    local.tee 6
    local.get 7
    local.get 8
    call 25
    local.tee 6
    return)
  (func (;28;) (type 6) (param f64 i32) (result f64 i32)
    f64.const 0x1.9p+8 (;=400;)
    i32.const 195
    return)
  (func (;29;) (type 6) (param f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=1
    f64.convert_i32_u
    local.get 0
    i32.trunc_sat_f64_u
    i32.load8_u offset=4
    return)
  (func (;30;) (type 12) (param i32 i32) (result i32 i32)
    local.get 0
    i32.const 195
    return)
  (func (;31;) (type 6) (param f64 i32) (result f64 i32)
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
        f64.const 0x1.ap+8 (;=416;)
        local.set 6
        local.get 2
        local.tee 5
        i32.trunc_sat_f64_s
        i32.const 7
        local.get 6
        i32.trunc_sat_f64_u
        i32.const 195
        call 32
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
          f64.const 0x1.8p+2 (;=6;)
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
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              local.get 0
              local.tee 9
              local.get 1
              local.tee 10
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              local.get 11
              i32.trunc_sat_f64_u
              call_indirect (type 27)
              local.set 7
              br 1 (;@4;)
            end
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.b7p+9 (;=878;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
          end
          local.get 7
          return
          drop
        end
        local.get 2
        i32.trunc_sat_f64_s
        i32.const 7
        i32.const 416
        i32.const 195
        i32.const 416
        i32.const 195
        call 37
        i32.const 1
        call 40
        f64.convert_i32_s
        local.tee 13
        f64.const -0x1p+0 (;=-1;)
        f64.ne
        if  ;; label = @3
          local.get 13
          i32.trunc_sat_f64_s
          i32.const 1
          call 62
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
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                local.get 0
                local.tee 9
                local.get 1
                local.tee 10
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                local.get 14
                i32.trunc_sat_f64_u
                call_indirect (type 27)
                local.set 7
                br 1 (;@5;)
              end
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.b7p+9 (;=878;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              f64.const 0x0p+0 (;=0;)
            end
            local.get 7
            return
            drop
          else
            f64.const 0x0p+0 (;=0;)
            i32.const 128
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
    i32.const 128
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x1.2acp+10 (;=1195;)
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
      f64.const 0x1.30cp+10 (;=1219;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.2p+6 (;=72;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.358p+10 (;=1238;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.8p+2 (;=6;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.3a8p+10 (;=1258;)
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
      f64.const 0x1.404p+10 (;=1281;)
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
      f64.const 0x1.45cp+10 (;=1303;)
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
      f64.const 0x1.4bp+10 (;=1324;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.4p+3 (;=10;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.504p+10 (;=1345;)
      i32.const 195
      return
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1.2p+3 (;=9;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1.55p+10 (;=1364;)
      i32.const 195
      return
      drop
    end
    f64.const 0x1.5a4p+10 (;=1385;)
    i32.const 195
    return)
  (func (;32;) (type 13) (param i32 i32 i32 i32) (result f64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.tee 4
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 33
      local.tee 5
      local.set 1
      local.set 0
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.e4p+8 (;=484;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 2
    local.get 3
    call 37
    local.set 6
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 6
    i32.const 1
    call 40
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
          call 42
          local.set 0
          i32.const 7
          local.set 1
        end
      else
        local.get 4
        i32.const 1
        call 72
        local.tee 5
        local.set 1
        local.set 0
      end
      local.get 6
      i32.const -406948493
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const 1180
        i32.const 195
        call 41
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
        call 33
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
          call 40
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
            call 71
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
            call 33
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
            local.get 11
            i32.const 128
            i32.eq
            i32.or
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
        i32.const 128
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
      call 83
      local.set 5
      local.tee 13
      i32.eqz
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        return
        drop
      end
      local.get 13
      local.set 16
      i32.const 0
      i32.const 128
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      local.get 16
      call_indirect (type 27)
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
  (func (;33;) (type 14) (param f64 i32) (result i32 i32)
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
    local.get 1
    i32.const 128
    i32.ne
    i32.and
    if  ;; label = @1
      global.get 11
      i32.eqz
      if  ;; label = @2
        i32.const 0
        global.set 10
        i32.const 1
        global.set 11
      end
      global.get 10
      i32.eqz
      if  ;; label = @2
        call 12
        global.set 10
      end
      global.get 10
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
          global.get 10
          local.get 4
          i32.add
          f64.load offset=4 align=1
          local.get 0
          f64.eq
          if  ;; label = @4
            global.get 10
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
      call 12
      local.set 7
      local.get 1
      i32.const 6
      i32.eq
      if  ;; label = @2
        local.get 0
        local.get 1
        call 34
        i32.trunc_sat_f64_s
        if  ;; label = @3
          call 12
          local.set 8
          local.get 7
          i32.const 7
          i32.const 430
          i32.const 195
          local.get 8
          f64.convert_i32_s
          i32.const 7
          i32.const 8
          i32.const 1
          call 36
          local.get 8
          i32.const 7
          i32.const 445
          i32.const 195
          local.get 0
          local.get 1
          i32.const 10
          i32.const 1
          call 36
        end
        local.get 7
        i32.const 7
        i32.const 462
        i32.const 195
        local.get 5
        call 21
        f64.convert_i32_s
        i32.const 195
        i32.const 2
        i32.const 1
        call 36
        local.get 7
        i32.const 7
        i32.const 472
        i32.const 195
        local.get 5
        call 39
        f64.convert_i32_s
        i32.const 1
        i32.const 2
        i32.const 1
        call 36
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
        i32.const 472
        i32.const 195
        local.get 9
        f64.convert_i32_s
        i32.const 1
        i32.const 8
        i32.const 1
        call 36
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
            i32.const 128
            call 9
            local.set 13
            i32.trunc_sat_f64_s
            local.get 13
            local.get 11
            local.get 12
            i32.const 14
            i32.const 1
            call 36
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
        i32.const 472
        i32.const 195
        local.get 9
        f64.convert_i32_s
        i32.const 1
        i32.const 0
        i32.const 1
        call 36
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
            i32.const 128
            call 9
            local.set 13
            i32.trunc_sat_f64_s
            local.get 13
            local.get 4
            local.set 15
            local.get 5
            local.set 14
            i32.const 8
            call 11
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
            call 36
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
        i32.const 472
        i32.const 195
        local.get 9
        f64.convert_i32_s
        i32.const 1
        i32.const 0
        i32.const 1
        call 36
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
            i32.const 128
            call 9
            local.set 13
            i32.trunc_sat_f64_s
            local.get 13
            local.get 4
            local.set 18
            local.get 5
            local.set 17
            i32.const 8
            call 11
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
            call 36
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
      global.get 10
      local.get 2
      i32.const 1
      i32.add
      i32.store align=1
      global.get 10
      local.get 2
      i32.const 12
      i32.mul
      i32.add
      local.get 0
      f64.store offset=4 align=1
      global.get 10
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
  (func (;34;) (type 15) (param f64 i32) (result f64)
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
    call 35
    i32.const 2
    i32.and
    f64.convert_i32_s
    f64.const 0x1p+1 (;=2;)
    f64.eq
    f64.convert_i32_u
    return)
  (func (;35;) (type 8) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.mul
    i32.const 2
    i32.add
    i32.load8_u offset=16384)
  (func (;36;) (type 16) (param i32 i32 i32 i32 f64 i32 i32 i32)
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
    call 37
    i32.const 1
    call 38
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
  (func (;37;) (type 17) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i64)
    local.get 1
    i32.const 5
    i32.eq
    if  ;; label = @1
      i32.const 0
      return
      drop
    end
    local.get 0
    local.set 2
    local.get 0
    i32.load align=1
    local.set 3
    i32.const -2128831035
    local.get 3
    i32.xor
    i32.const 16777619
    i32.mul
    local.set 4
    local.get 1
    i32.const 195
    i32.eq
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 8
      i32.sub
      local.set 5
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.le_s
        if  ;; label = @3
          local.get 2
          i64.load offset=4 align=1
          local.set 6
          local.get 4
          local.get 6
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          i32.xor
          i32.const 16777619
          i32.mul
          local.get 6
          i32.wrap_i64
          i32.xor
          i32.const 16777619
          i32.mul
          local.set 4
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i64.load offset=4 align=1
      local.get 2
      local.get 5
      i32.sub
      i32.const 8
      i32.mul
      i64.extend_i32_u
      local.tee 7
      i64.shl
      local.get 7
      i64.shr_u
      local.set 6
      local.get 4
      local.get 6
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.xor
      i32.const 16777619
      i32.mul
      local.get 6
      i32.wrap_i64
      i32.xor
      i32.const 16777619
      i32.mul
      local.set 4
    else
      local.get 2
      local.get 3
      i32.const 2
      i32.mul
      i32.add
      i32.const 8
      i32.sub
      local.set 5
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.le_s
        if  ;; label = @3
          local.get 2
          i64.load offset=4 align=1
          local.set 6
          local.get 4
          local.get 6
          i64.const 48
          i64.shr_u
          i64.const 255
          i64.and
          i64.const 24
          i64.shl
          local.get 6
          i64.const 32
          i64.shr_u
          i64.const 255
          i64.and
          i64.const 16
          i64.shl
          i64.or
          local.get 6
          i64.const 16
          i64.shr_u
          i64.const 255
          i64.and
          i64.const 8
          i64.shl
          i64.or
          local.get 6
          i64.const 255
          i64.and
          i64.or
          i32.wrap_i64
          i32.xor
          i32.const 16777619
          i32.mul
          local.set 4
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i64.load offset=4 align=1
      local.get 2
      local.get 5
      i32.sub
      i32.const 8
      i32.mul
      i64.extend_i32_u
      local.tee 7
      i64.shl
      local.get 7
      i64.shr_u
      local.set 6
      local.get 4
      local.get 6
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i64.const 24
      i64.shl
      local.get 6
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i64.const 16
      i64.shl
      i64.or
      local.get 6
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i64.const 8
      i64.shl
      i64.or
      local.get 6
      i64.const 255
      i64.and
      i64.or
      i32.wrap_i64
      i32.xor
      i32.const 16777619
      i32.mul
      local.set 4
    end
    local.get 4
    return)
  (func (;38;) (type 18) (param i32 i32 i32 i32 i32 i32)
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
    else
      local.get 3
      i32.const 5
      i32.eq
      if  ;; label = @2
        local.get 6
        i32.const -1073741824
        i32.or
        local.set 6
      end
    end
    local.get 0
    local.get 6
    i32.store offset=4 align=1
    return)
  (func (;39;) (type 8) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.mul
    i32.load16_u offset=16384 align=1)
  (func (;40;) (type 19) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
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
    local.get 3
    i32.const 5
    i32.eq
    if  ;; label = @1
      loop  ;; label = @2
        local.get 6
        local.get 7
        i32.lt_s
        if  ;; label = @3
          local.get 6
          i32.load offset=4 align=1
          local.tee 8
          i32.const 30
          i32.shr_u
          i32.const 3
          i32.eq
          if  ;; label = @4
            local.get 8
            i32.const 1073741823
            i32.and
            local.get 2
            i32.eq
            if  ;; label = @5
              local.get 6
              return
              drop
            end
          end
          local.get 6
          i32.const 18
          i32.add
          local.set 6
          br 1 (;@2;)
        end
      end
    else
      loop  ;; label = @2
        local.get 6
        local.get 7
        i32.lt_s
        if  ;; label = @3
          local.get 6
          i32.load align=1
          local.get 4
          i32.eq
          if  ;; label = @4
            local.get 6
            i32.load offset=4 align=1
            local.tee 8
            local.get 2
            i32.eq
            if  ;; label = @5
              local.get 6
              return
              drop
            end
            local.get 8
            i32.const 2147483647
            i32.and
            i32.const 67
            i32.const 195
            local.get 8
            i32.const 30
            i32.shr_u
            select
            local.get 2
            local.get 3
            call 41
            if  ;; label = @5
              local.get 6
              return
            end
          end
          local.get 6
          i32.const 18
          i32.add
          local.set 6
          br 1 (;@2;)
        end
      end
    end
    i32.const -1
    return)
  (func (;41;) (type 20) (param i32 i32 i32 i32) (result i32)
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
  (func (;42;) (type 9) (result i32)
    (local i32)
    global.get 12
    if  ;; label = @1
      global.get 12
      return
    end
    i32.const 32768
    local.tee 0
    global.set 12
    local.get 0
    f64.convert_i32_u
    i32.const 7
    call 33
    drop
    local.tee 0
    i32.const 7
    i32.const 517
    i32.const 195
    f64.const 0x1.8p+1 (;=3;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    local.get 0
    i32.const 7
    i32.const 948
    i32.const 195
    f64.const 0x1p+2 (;=4;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    local.get 0
    i32.const 7
    i32.const 974
    i32.const 195
    f64.const 0x1.4p+2 (;=5;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    local.get 0
    i32.const 7
    i32.const 416
    i32.const 195
    f64.const 0x1.8p+2 (;=6;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    local.get 0
    i32.const 7
    i32.const 1031
    i32.const 195
    f64.const 0x1.cp+2 (;=7;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    local.get 0
    i32.const 7
    i32.const 830
    i32.const 195
    f64.const 0x1p+1 (;=2;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    local.get 0
    i32.const 7
    i32.const 0
    i32.const 7
    call 74
    local.get 0
    i32.const 7
    i32.const 445
    i32.const 195
    f64.const 0x1p+3 (;=8;)
    i32.const 6
    i32.const 10
    i32.const 1
    call 36
    global.get 12)
  (func (;43;) (type 7) (param f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 f64 i32 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      local.get 5
      i32.const 128
      i32.eq
      i32.or
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.0c8p+9 (;=537;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 2
    local.get 3
    call 44
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
      call 37
      i32.const 1
      call 40
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
    call 33
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
      call 37
      i32.const 1
      call 40
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
    call 45
    local.tee 11
    i32.const 72
    local.get 6
    local.get 7
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    call 47
    local.tee 8
    return)
  (func (;44;) (type 6) (param f64 i32) (result f64 i32)
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
      call 17
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
    call 8
    local.tee 5
    return)
  (func (;45;) (type 15) (param f64 i32) (result f64)
    (local f64 i32 f64 i32 f64 f64 f64 f64 i32 i32 i32 i32 f64 f64)
    local.get 0
    local.set 2
    local.get 1
    local.set 3
    block (result i32)  ;; label = @1
      local.get 3
      i32.const 0
      i32.eq
      local.get 3
      i32.const 128
      i32.eq
      i32.or
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.0c8p+9 (;=537;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    call 12
    f64.convert_i32_s
    local.set 4
    local.get 0
    local.get 1
    call 33
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
            call 46
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
  (func (;46;) (type 17) (param i32 i32) (result i32)
    local.get 0
    i32.load8_u offset=16
    i32.const 4
    i32.and
    return)
  (func (;47;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 f64 f64 f64 i32 i32 f64 f64)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      call 6
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
    call 48
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
              call 66
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
  (func (;48;) (type 15) (param f64 i32) (result f64)
    (local f64)
    local.get 0
    local.get 1
    call 49
    local.tee 2
    call 14
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      return
      drop
    end
    local.get 2
    call 13
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      local.get 2
      return
      drop
    end
    local.get 2
    call 15
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
  (func (;49;) (type 15) (param f64 i32) (result f64)
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.218p+9 (;=579;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 1
    f64.convert_i32_u
    f64.const 0x1p+7 (;=128;)
    f64.eq
    local.get 1
    f64.convert_i32_u
    f64.const 0x0p+0 (;=0;)
    f64.eq
    i32.or
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
      call 50
      return
      drop
    end
    local.get 0
    local.get 1
    call 56
    local.tee 4
    local.set 3
    local.tee 2
    local.get 3
    call 49
    return)
  (func (;50;) (type 15) (param f64 i32) (result f64)
    (local f64 i32 i32 i32 f64 i32 i32 i32 f64 i32 f64 f64 i32 f64)
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
        call 100
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
        call 100
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
        call 51
        local.set 5
        f64.convert_i32_s
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.3ap+9 (;=628;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
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
    i32.trunc_sat_f64_u
    i32.load align=2
    local.set 7
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        i32.const 0
        i32.const 2
        i32.mul
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        i32.const 0
        i32.const 2
        i32.mul
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        i32.const 0
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load8_u offset=4
        f64.convert_i32_u
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.5cp+9 (;=696;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      f64.const 0x0p+0 (;=0;)
    end
    local.set 6
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    local.set 7
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        i32.const 1
        i32.const 2
        i32.mul
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        i32.const 1
        i32.const 2
        i32.mul
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        i32.const 1
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load8_u offset=4
        f64.convert_i32_u
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.5cp+9 (;=696;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      f64.const 0x0p+0 (;=0;)
    end
    local.set 10
    local.get 6
    f64.const 0x1.8p+5 (;=48;)
    f64.eq
    if  ;; label = @1
      local.get 10
      f64.const 0x1.ep+6 (;=120;)
      f64.eq
      local.tee 11
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 10
        f64.const 0x1.6p+6 (;=88;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
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
        call 54
        return
        drop
      end
      local.get 10
      f64.const 0x1.bcp+6 (;=111;)
      f64.eq
      local.tee 11
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 10
        f64.const 0x1.3cp+6 (;=79;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
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
        call 54
        return
        drop
      end
      local.get 10
      f64.const 0x1.88p+6 (;=98;)
      f64.eq
      local.tee 11
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 10
        f64.const 0x1.08p+6 (;=66;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
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
        call 54
        return
        drop
      end
    end
    f64.const 0x0p+0 (;=0;)
    local.set 12
    f64.const 0x0p+0 (;=0;)
    local.set 13
    local.get 6
    f64.const 0x1.58p+5 (;=43;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1p+0 (;=1;)
      local.set 12
    end
    local.get 6
    f64.const 0x1.68p+5 (;=45;)
    f64.eq
    if  ;; label = @1
      f64.const 0x1p+0 (;=1;)
      local.set 13
      f64.const 0x1p+0 (;=1;)
      local.set 12
    end
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    local.set 7
    local.get 1
    local.set 4
    block (result f64)  ;; label = @1
      local.get 4
      i32.const 33
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        local.get 12
        i32.trunc_sat_f64_s
        i32.const 2
        i32.mul
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 4
      i32.const 67
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        local.get 12
        i32.trunc_sat_f64_s
        i32.const 2
        i32.mul
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load16_u offset=4 align=1
        f64.convert_i32_u
        br 1 (;@1;)
      end
      local.get 4
      i32.const 195
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 5
        local.get 12
        i32.trunc_sat_f64_s
        local.get 0
        i32.trunc_sat_f64_u
        i32.add
        i32.load8_u offset=4
        f64.convert_i32_u
        br 1 (;@1;)
      end
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.5cp+9 (;=696;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      f64.const 0x0p+0 (;=0;)
    end
    f64.const 0x1.24p+6 (;=73;)
    f64.eq
    if  ;; label = @1
      local.get 0
      i32.trunc_sat_f64_u
      i32.load align=2
      local.set 7
      local.get 1
      local.set 4
      block (result f64)  ;; label = @2
        local.get 4
        i32.const 33
        i32.eq
        if  ;; label = @3
          i32.const 1
          local.set 5
          local.get 12
          f64.const 0x1p+0 (;=1;)
          f64.add
          i32.trunc_sat_f64_s
          i32.const 2
          i32.mul
          local.get 0
          i32.trunc_sat_f64_u
          i32.add
          i32.load16_u offset=4 align=1
          f64.convert_i32_u
          br 1 (;@2;)
        end
        local.get 4
        i32.const 67
        i32.eq
        if  ;; label = @3
          i32.const 1
          local.set 5
          local.get 12
          f64.const 0x1p+0 (;=1;)
          f64.add
          i32.trunc_sat_f64_s
          i32.const 2
          i32.mul
          local.get 0
          i32.trunc_sat_f64_u
          i32.add
          i32.load16_u offset=4 align=1
          f64.convert_i32_u
          br 1 (;@2;)
        end
        local.get 4
        i32.const 195
        i32.eq
        if  ;; label = @3
          i32.const 1
          local.set 5
          local.get 12
          f64.const 0x1p+0 (;=1;)
          f64.add
          i32.trunc_sat_f64_s
          local.get 0
          i32.trunc_sat_f64_u
          i32.add
          i32.load8_u offset=4
          f64.convert_i32_u
          br 1 (;@2;)
        end
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x1.5cp+9 (;=696;)
        i32.const 195
        call 7
        i32.const 38
        throw 0
        f64.const 0x0p+0 (;=0;)
      end
      f64.const 0x1.b8p+6 (;=110;)
      f64.eq
      local.tee 11
      if (result i32)  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 7
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1p+1 (;=2;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1p+1 (;=2;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1p+1 (;=2;)
            f64.add
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.98p+6 (;=102;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
        i32.const 2
        local.set 5
      end
      local.tee 11
      local.set 14
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
          local.get 14
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 14
      end
      if (result i32)  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 7
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.8p+1 (;=3;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.8p+1 (;=3;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.8p+1 (;=3;)
            f64.add
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.a4p+6 (;=105;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
        local.get 5
        local.set 5
      end
      local.tee 11
      local.set 14
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
          local.get 14
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 14
      end
      if (result i32)  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 7
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1p+2 (;=4;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1p+2 (;=4;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1p+2 (;=4;)
            f64.add
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.b8p+6 (;=110;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
        local.get 5
        local.set 5
      end
      local.tee 11
      local.set 14
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
          local.get 14
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 14
      end
      if (result i32)  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 7
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.4p+2 (;=5;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.4p+2 (;=5;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.4p+2 (;=5;)
            f64.add
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.a4p+6 (;=105;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
        local.get 5
        local.set 5
      end
      local.tee 11
      local.set 14
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
          local.get 14
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 14
      end
      if (result i32)  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 7
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.8p+2 (;=6;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.8p+2 (;=6;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.8p+2 (;=6;)
            f64.add
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.dp+6 (;=116;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
        local.get 5
        local.set 5
      end
      local.tee 11
      local.set 14
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
          local.get 14
          i32.load align=2
          br 1 (;@2;)
        end
        local.get 14
      end
      if (result i32)  ;; label = @2
        local.get 0
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 7
        local.get 1
        local.set 4
        block (result f64)  ;; label = @3
          local.get 4
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.cp+2 (;=7;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.cp+2 (;=7;)
            f64.add
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 4
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 5
            local.get 12
            f64.const 0x1.cp+2 (;=7;)
            f64.add
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.const 0x1.e4p+6 (;=121;)
        f64.eq
        i32.const 2
        local.set 5
      else
        local.get 11
        local.get 5
        local.set 5
      end
      if  ;; label = @2
        f64.const inf (;=inf;)
        local.set 15
        local.get 13
        i32.trunc_sat_f64_u
        if (result f64)  ;; label = @3
          local.get 15
          f64.neg
          i32.const 1
          local.set 5
        else
          local.get 15
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
    local.get 12
    i32.const 1
    call 55
    local.set 15
    local.get 13
    i32.trunc_sat_f64_u
    if  ;; label = @1
      local.get 15
      f64.neg
      return
      drop
    end
    local.get 15
    return)
  (func (;51;) (type 12) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 0
    i32.const 195
    call 52
    local.tee 2
    call 53
    local.tee 2
    return)
  (func (;52;) (type 12) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call 12
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
  (func (;53;) (type 12) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    call 12
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
  (func (;54;) (type 5) (param f64 i32 f64 i32 f64 i32) (result f64)
    (local f64 f64 f64 f64 i32 i32 i32 i32 i32 i32)
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
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 10
        local.get 1
        local.set 12
        block (result f64)  ;; label = @3
          local.get 12
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 14
            local.get 4
            local.get 4
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 4
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 12
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 14
            local.get 4
            local.get 4
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 4
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 12
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 14
            local.get 4
            local.get 4
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 4
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        local.tee 9
        f64.const 0x1.8p+5 (;=48;)
        f64.ge
        local.tee 15
        if (result i32)  ;; label = @3
          local.get 9
          local.get 6
          f64.lt
          i32.const 2
          local.set 14
        else
          local.get 15
          i32.const 2
          local.set 14
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
            local.tee 15
            if (result i32)  ;; label = @5
              local.get 9
              f64.const 0x1.5cp+6 (;=87;)
              local.get 2
              f64.add
              f64.lt
              i32.const 2
              local.set 14
            else
              local.get 15
              i32.const 2
              local.set 14
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
              local.tee 15
              if (result i32)  ;; label = @6
                local.get 9
                f64.const 0x1.b8p+5 (;=55;)
                local.get 2
                f64.add
                f64.lt
                i32.const 2
                local.set 14
              else
                local.get 15
                i32.const 2
                local.set 14
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
  (func (;55;) (type 4) (param f64 i32 f64 i32) (result f64)
    (local f64 f64 f64 f64 i32 i32 i32 i32 i32 i32)
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
        i32.trunc_sat_f64_u
        i32.load align=2
        local.set 8
        local.get 1
        local.set 10
        block (result f64)  ;; label = @3
          local.get 10
          i32.const 33
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 12
            local.get 2
            local.get 2
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 2
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 10
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 12
            local.get 2
            local.get 2
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 2
            i32.trunc_sat_f64_s
            i32.const 2
            i32.mul
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            f64.convert_i32_u
            br 1 (;@3;)
          end
          local.get 10
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 12
            local.get 2
            local.get 2
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 2
            i32.trunc_sat_f64_s
            local.get 0
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            f64.convert_i32_u
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.5cp+9 (;=696;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        local.tee 7
        f64.const 0x1.8p+5 (;=48;)
        f64.ge
        local.tee 13
        if (result i32)  ;; label = @3
          local.get 7
          f64.const 0x1.c8p+5 (;=57;)
          f64.le
          i32.const 2
          local.set 12
        else
          local.get 13
          i32.const 2
          local.set 12
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
  (func (;56;) (type 6) (param f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 i32 f64 i32)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    local.get 1
    local.set 7
    block (result f64)  ;; label = @1
      local.get 7
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 57
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 58
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 61
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 58
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 32
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 57
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
        call 84
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
        call 84
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
        call 59
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 128
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
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
        call 60
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 61
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
      local.get 7
      i32.const 128
      i32.eq
      i32.or
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
      call 63
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
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        call 9
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 2
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 18
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 6
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 19
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 7
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 31
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 31
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 18
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
        i32.const 128
        call 9
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
        call 99
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 7
      i32.const 38
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 22
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 41
      i32.eq
      if  ;; label = @2
        local.get 4
        local.get 5
        call 27
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 67
      i32.eq
      if  ;; label = @2
        local.get 4
        i32.trunc_sat_f64_s
        local.get 5
        call 99
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
        call 64
        local.set 6
        br 1 (;@1;)
      end
      local.get 7
      i32.const 128
      i32.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        i32.const 128
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
        call 30
        local.set 6
        f64.convert_i32_s
        br 1 (;@1;)
      end
      local.get 4
      local.get 5
      call 31
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
      local.get 7
      i32.const 128
      i32.eq
      i32.or
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
      call 63
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
    i32.const 128
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    f64.const 0x1.c48p+9 (;=905;)
    i32.const 195
    call 7
    i32.const 38
    throw 0
    drop
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    return)
  (func (;57;) (type 6) (param f64 i32) (result f64 i32)
    local.get 1
    i32.const 1
    i32.ne
    local.get 1
    i32.const 32
    i32.ne
    i32.and
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.81p+9 (;=770;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 0
    i32.const 1
    return)
  (func (;58;) (type 6) (param f64 i32) (result f64 i32)
    local.get 0
    i32.const 2
    return)
  (func (;59;) (type 6) (param f64 i32) (result f64 i32)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      call 6
      local.set 0
      i32.const 72
      local.set 1
    end
    local.get 0
    i32.const 72
    return)
  (func (;60;) (type 12) (param i32 i32) (result i32 i32)
    local.get 0
    i32.const 195
    return)
  (func (;61;) (type 6) (param f64 i32) (result f64 i32)
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
        f64.const 0x1.9fp+9 (;=830;)
        local.set 6
        local.get 2
        local.tee 5
        i32.trunc_sat_f64_s
        i32.const 7
        local.get 6
        i32.trunc_sat_f64_u
        i32.const 195
        call 32
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
          f64.const 0x1p+1 (;=2;)
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
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              local.get 0
              local.tee 9
              local.get 1
              local.tee 10
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              local.get 11
              i32.trunc_sat_f64_u
              call_indirect (type 27)
              local.set 7
              br 1 (;@4;)
            end
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.b7p+9 (;=878;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
          end
          local.get 7
          return
          drop
        end
        local.get 2
        i32.trunc_sat_f64_s
        i32.const 7
        i32.const 830
        i32.const 195
        i32.const 830
        i32.const 195
        call 37
        i32.const 1
        call 40
        f64.convert_i32_s
        local.tee 13
        f64.const -0x1p+0 (;=-1;)
        f64.ne
        if  ;; label = @3
          local.get 13
          i32.trunc_sat_f64_s
          i32.const 1
          call 62
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
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                local.get 0
                local.tee 9
                local.get 1
                local.tee 10
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                f64.const 0x0p+0 (;=0;)
                i32.const 128
                local.get 14
                i32.trunc_sat_f64_u
                call_indirect (type 27)
                local.set 7
                br 1 (;@5;)
              end
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x0p+0 (;=0;)
              i32.const 128
              f64.const 0x1.b7p+9 (;=878;)
              i32.const 195
              call 7
              i32.const 38
              throw 0
              f64.const 0x0p+0 (;=0;)
            end
            local.get 7
            return
            drop
          else
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            return
            drop
          end
        end
      end
    end
    local.get 0
    local.get 1
    return)
  (func (;62;) (type 21) (param i32 i32) (result f64 i32)
    local.get 0
    f64.load offset=8 align=1
    local.get 0
    i32.load8_u offset=17
    return)
  (func (;63;) (type 17) (param i32 i32) (result i32)
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
  (func (;64;) (type 6) (param f64 i32) (result f64 i32)
    (local f64 f64 f64 f64 i32 f64 f64 i32 i32 i32)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      call 6
      local.set 0
      i32.const 72
      local.set 1
    end
    call 12
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
          call 65
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
          f64.const 0x1p+7 (;=128;)
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
          call 8
          local.tee 9
          call 20
          drop
        end
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 195
    return)
  (func (;65;) (type 4) (param f64 i32 f64 i32) (result f64)
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
  (func (;66;) (type 4) (param f64 i32 f64 i32) (result f64)
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
        local.get 5
        i32.const 128
        i32.eq
        i32.or
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
      call 8
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
        local.get 5
        i32.const 128
        i32.eq
        i32.or
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
      call 8
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
    call 41
    f64.convert_i32_s
    return)
  (func (;67;) (type 7) (param f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 f64 i32 i32 f64 f64 i32 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      local.get 5
      i32.const 128
      i32.eq
      i32.or
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.0c8p+9 (;=537;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 2
    local.get 3
    call 44
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
      call 37
      i32.const 1
      call 40
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
      call 46
      f64.convert_i32_s
      i32.const 2
      return
      drop
    end
    local.get 0
    local.get 1
    call 33
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
      call 37
      i32.const 1
      call 40
      f64.convert_i32_s
      local.tee 9
      f64.const -0x1p+0 (;=-1;)
      f64.ne
      if  ;; label = @2
        local.get 9
        i32.trunc_sat_f64_s
        i32.const 1
        call 46
        f64.convert_i32_s
        i32.const 2
        return
        drop
      end
    end
    local.get 0
    local.get 1
    call 45
    local.tee 12
    i32.const 72
    local.get 6
    local.get 7
    f64.const 0x0p+0 (;=0;)
    i32.const 128
    call 47
    local.tee 8
    return)
  (func (;68;) (type 7) (param f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 i32 f64 f64)
    local.get 0
    local.set 4
    local.get 1
    local.set 5
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 0
      i32.eq
      local.get 5
      i32.const 128
      i32.eq
      i32.or
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.f08p+9 (;=993;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 2
    i32.trunc_sat_f64_s
    local.get 3
    call 69
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
      call 70
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
        call 66
        i32.trunc_sat_f64_u
        br 1 (;@1;)
      end
      f64.eq
    end
    f64.convert_i32_u
    i32.const 2
    return)
  (func (;69;) (type 17) (param i32 i32) (result i32)
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
  (func (;70;) (type 11) (param i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    call 71
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
    call 72
    local.tee 6
    return)
  (func (;71;) (type 12) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 33
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
  (func (;72;) (type 12) (param i32 i32) (result i32 i32)
    local.get 0
    i32.const 7
    i32.eq
    if  ;; label = @1
      call 42
      i32.const 7
      return
      drop
    end
    call 42
    i32.const 7
    return)
  (func (;73;) (type 6) (param f64 i32) (result f64 i32)
    (local i32)
    local.get 0
    local.get 1
    call 31
    local.tee 2
    return)
  (func (;74;) (type 22) (param i32 i32 i32 i32)
    (local i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 33
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
    call 63
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.store offset=4 align=1
      local.get 0
      local.get 3
      i32.store8 offset=3
    end
    return)
  (func (;75;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 i32 i32)
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    block (result i32)  ;; label = @1
      local.get 7
      i32.const 0
      i32.eq
      local.get 7
      i32.const 128
      i32.eq
      i32.or
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
      call 12
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
      call 76
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
      call 80
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
      call 82
      drop
      i32.const 31
      return
      drop
    end
    local.get 4
    local.get 5
    return)
  (func (;76;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
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
        call 77
        local.tee 12
        return
        drop
      end
      local.get 8
      local.get 9
      call 8
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
      call 79
      f64.convert_i32_s
      local.set 6
      i32.const 67
      local.set 7
    end
    local.get 6
    i32.const 33
    return)
  (func (;77;) (type 6) (param f64 i32) (result f64 i32)
    (local f64 f64 i32 f64 f64 i32 f64 f64 f64 f64)
    local.get 1
    i32.const 5
    i32.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.06cp+10 (;=1051;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    call 12
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
    call 78
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
    i32.const 128
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
  (func (;78;) (type 6) (param f64 i32) (result f64 i32)
    local.get 1
    i32.const 5
    i32.ne
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.16p+10 (;=1112;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 0
    i32.trunc_sat_f64_u
    f64.load align=1
    local.get 0
    i32.trunc_sat_f64_u
    i32.load8_u offset=8
    return)
  (func (;79;) (type 8) (param i32) (result i32)
    (local i32 i32 i32)
    call 12
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
  (func (;80;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 i32)
    f64.const 0x0p+0 (;=0;)
    local.set 6
    local.get 5
    f64.convert_i32_u
    f64.const 0x1p+7 (;=128;)
    f64.ne
    if  ;; label = @1
      local.get 4
      local.get 5
      call 81
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
  (func (;81;) (type 15) (param f64 i32) (result f64)
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
      call 56
      local.tee 5
      local.set 3
      local.set 2
    end
    local.get 2
    local.get 3
    call 49
    return)
  (func (;82;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
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
  (func (;83;) (type 12) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 0
    i32.load offset=8 align=1
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      i32.const 128
      return
      drop
    end
    local.get 2
    i32.const 6
    return)
  (func (;84;) (type 12) (param i32 i32) (result i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 8
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 79
        local.set 0
      end
    end
    local.get 0
    i32.const 67
    return)
  (func (;85;) (type 23) (param i32 i32 i32 i32 f64 i32)
    (local i32 i32 i32 i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 33
      local.tee 6
      local.set 1
      local.set 0
    end
    local.get 2
    local.get 3
    call 37
    local.set 7
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 7
    i32.const 1
    call 40
    local.tee 8
    i32.const -1
    i32.eq
    if  ;; label = @1
      local.get 7
      i32.const -406948493
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const 1180
        i32.const 195
        call 41
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 4
          i32.trunc_sat_f64_s
          local.get 5
          call 74
          return
          drop
        end
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
      call 38
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
  (func (;86;) (type 7) (param f64 i32 f64 i32) (result f64 i32)
    local.get 2
    local.get 3
    return)
  (func (;87;) (type 5) (param f64 i32 f64 i32 f64 i32) (result f64)
    (local f64 f64 f64 i32 f64 f64 i32 i32 f64 f64 f64)
    local.get 4
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.tee 6
    f64.const 0x0p+0 (;=0;)
    f64.eq
    if  ;; label = @1
      call 12
      f64.convert_i32_s
      local.tee 7
      return
      drop
    end
    local.get 6
    f64.const 0x1p+0 (;=1;)
    f64.eq
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
      local.get 9
      f64.convert_i32_u
      f64.const 0x1p+0 (;=1;)
      f64.eq
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        local.set 16
        local.get 4
        local.set 15
        local.get 16
        i32.trunc_sat_f64_u
        i32.const 9
        i32.mul
        local.get 15
        i32.trunc_sat_f64_u
        i32.add
        local.tee 13
        f64.load offset=4 align=1
        local.get 13
        i32.load8_u offset=12
        local.set 12
        local.tee 14
        f64.const 0x0p+0 (;=0;)
        f64.lt
        local.get 14
        f64.const 0x1.fffffffep+31 (;=4.29497e+09;)
        f64.gt
        i32.or
        local.get 14
        call 88
        f64.const 0x0p+0 (;=0;)
        f64.eq
        i32.or
        if  ;; label = @3
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.85p+10 (;=1556;)
          i32.const 195
          call 10
          i32.const 41
          throw 0
          drop
        end
        call 12
        f64.convert_i32_s
        local.tee 7
        i32.trunc_sat_f64_u
        local.get 8
        i32.trunc_sat_f64_u
        i32.store align=2
        local.get 7
        return
        drop
      end
    end
    local.get 4
    return)
  (func (;88;) (type 10) (param f64) (result f64)
    local.get 0
    local.get 0
    f64.trunc
    f64.eq
    f64.convert_i32_s)
  (func (;89;) (type 24) (param i32 i32 i32 i32 f64 i32) (result f64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 33
      local.tee 6
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
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.95p+10 (;=1620;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
      drop
    end
    local.get 2
    local.get 3
    call 37
    local.set 7
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 7
    i32.const 1
    call 40
    local.tee 8
    i32.const -1
    i32.eq
    if  ;; label = @1
      local.get 7
      i32.const -406948493
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const 1180
        i32.const 195
        call 41
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 4
          i32.trunc_sat_f64_s
          local.get 5
          call 74
          local.get 4
          local.get 5
          return
          drop
        end
      end
      local.get 0
      local.get 1
      call 71
      local.tee 6
      local.set 11
      local.tee 10
      local.set 12
      local.get 11
      local.set 13
      block (result i32)  ;; label = @2
        local.get 13
        i32.eqz
        local.get 13
        i32.const 128
        i32.eq
        i32.or
        if  ;; label = @3
          i32.const 1
          br 1 (;@2;)
        end
        local.get 13
        i32.const 7
        i32.eq
        if  ;; label = @3
          local.get 12
          i32.eqz
          br 1 (;@2;)
        end
        i32.const 0
      end
      i32.eqz
      if  ;; label = @2
        local.get 11
        i32.const 7
        i32.ne
        if  ;; label = @3
          local.get 10
          f64.convert_i32_s
          local.get 11
          call 33
          local.tee 6
          local.set 11
          local.set 10
        end
        local.get 10
        local.set 14
        local.get 11
        local.set 15
        loop  ;; label = @3
          i32.const 1
          if  ;; label = @4
            local.get 10
            local.get 11
            local.get 2
            local.get 3
            local.get 7
            i32.const 1
            call 40
            local.tee 8
            i32.const -1
            i32.ne
            if  ;; label = @5
              br 1 (;@4;)
              drop
            end
            local.get 10
            local.get 11
            call 71
            local.tee 6
            local.set 11
            local.set 10
            local.get 11
            i32.const 7
            i32.ne
            if  ;; label = @5
              local.get 10
              f64.convert_i32_s
              local.get 11
              call 33
              local.tee 6
              local.set 11
              local.set 10
            end
            local.get 10
            local.set 12
            local.get 11
            local.set 13
            block (result i32)  ;; label = @5
              local.get 13
              i32.eqz
              local.get 13
              i32.const 128
              i32.eq
              i32.or
              if  ;; label = @6
                i32.const 1
                br 1 (;@5;)
              end
              local.get 13
              i32.const 7
              i32.eq
              if  ;; label = @6
                local.get 12
                i32.eqz
                br 1 (;@5;)
              end
              i32.const 0
            end
            local.get 10
            local.get 14
            i32.eq
            i32.or
            if  ;; label = @5
              br 1 (;@4;)
              drop
            end
            local.get 10
            local.set 14
            local.get 11
            local.set 15
            br 1 (;@3;)
          end
        end
        local.get 8
        i32.const -1
        i32.ne
        if  ;; label = @3
          local.get 8
          i32.load16_u offset=16 align=1
          local.tee 16
          i32.const 1
          i32.and
          if  ;; label = @4
            local.get 8
            i32.const 1
            call 90
            local.set 6
            local.tee 17
            i32.eqz
            if  ;; label = @5
              local.get 4
              local.get 5
              return
              drop
            end
            local.get 17
            local.set 20
            i32.const 0
            i32.const 128
            local.set 21
            f64.convert_i32_s
            local.get 21
            local.get 0
            local.tee 18
            local.get 1
            local.tee 19
            local.set 21
            f64.convert_i32_s
            local.get 21
            local.get 4
            local.get 5
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            local.get 20
            call_indirect (type 27)
            local.set 6
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
      call 91
      if  ;; label = @2
        local.get 4
        local.get 5
        return
        drop
      end
      local.get 0
      i32.load16_u align=1
      local.set 22
      local.get 0
      local.get 22
      i32.const 1
      i32.add
      i32.store16 align=1
      local.get 0
      i32.const 8
      i32.add
      local.get 22
      i32.const 18
      i32.mul
      i32.add
      local.tee 8
      i32.const 1
      local.get 2
      local.get 3
      local.get 7
      i32.const 1
      call 38
      i32.const 14
      local.set 9
    else
      local.get 8
      i32.load16_u offset=16 align=1
      local.tee 16
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 8
        i32.const 1
        call 90
        local.set 6
        local.tee 17
        i32.eqz
        if  ;; label = @3
          local.get 4
          local.get 5
          return
          drop
        end
        local.get 17
        local.set 23
        i32.const 0
        i32.const 128
        local.set 21
        f64.convert_i32_s
        local.get 21
        local.get 0
        local.tee 18
        local.get 1
        local.tee 19
        local.set 21
        f64.convert_i32_s
        local.get 21
        local.get 4
        local.get 5
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        local.get 23
        call_indirect (type 27)
        local.set 6
        drop
        local.get 4
        local.get 5
        return
        drop
      end
      local.get 16
      i32.const 8
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 4
        local.get 5
        return
        drop
      end
      local.get 16
      i32.const 255
      i32.and
      local.set 9
    end
    local.get 8
    local.get 4
    f64.store offset=8 align=1
    local.get 8
    local.get 9
    local.get 5
    i32.const 8
    i32.shl
    i32.add
    i32.store16 offset=16 align=1
    local.get 4
    local.get 5
    return)
  (func (;90;) (type 12) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 0
    i32.load offset=12 align=1
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      i32.const 128
      return
      drop
    end
    local.get 2
    i32.const 6
    return)
  (func (;91;) (type 17) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 7
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 33
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
  (func (;92;) (type 10) (param f64) (result f64)
    local.get 0
    f64.floor)
  (func (;93;) (type 25) (result f64)
    (local i64 i64)
    global.get 14
    local.tee 0
    global.get 15
    local.tee 1
    global.set 14
    local.get 0
    i64.const 23
    i64.shl
    i64.xor
    local.tee 0
    local.get 1
    i64.xor
    local.get 0
    i64.const 17
    i64.shr_u
    i64.xor
    local.get 1
    i64.const 26
    i64.shr_u
    i64.xor
    global.set 15
    global.get 15
    local.get 1
    i64.add
    i64.const 2097151
    i64.and
    f64.convert_i64_u
    f64.const 0x1p+21 (;=2.09715e+06;)
    f64.div)
  (func (;94;) (type 26) (param i32 i32 i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 8
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 79
        local.set 0
      end
    end
    local.get 0
    i32.load align=2
    local.set 6
    local.get 5
    i32.const 128
    i32.eq
    if  ;; label = @1
      local.get 6
      local.set 4
    end
    local.get 2
    i32.const 0
    i32.or
    local.set 2
    local.get 4
    i32.const 0
    i32.or
    local.set 4
    local.get 2
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 6
      local.get 2
      i32.add
      local.tee 2
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 0
        local.set 2
      end
    end
    local.get 2
    local.get 6
    i32.gt_s
    if  ;; label = @1
      local.get 6
      local.set 2
    end
    local.get 4
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 6
      local.get 4
      i32.add
      local.tee 4
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 0
        local.set 4
      end
    end
    local.get 4
    local.get 6
    i32.gt_s
    if  ;; label = @1
      local.get 6
      local.set 4
    end
    call 12
    local.set 7
    local.get 2
    local.get 4
    i32.gt_s
    if  ;; label = @1
      local.get 7
      i32.const 67
      return
      drop
    end
    local.get 7
    local.set 8
    local.get 0
    local.tee 9
    local.get 4
    i32.const 2
    i32.mul
    i32.add
    local.set 10
    local.get 9
    local.get 2
    i32.const 2
    i32.mul
    i32.add
    local.set 9
    loop  ;; label = @1
      local.get 9
      local.get 10
      i32.lt_s
      if  ;; label = @2
        local.get 8
        local.get 9
        i32.load16_u offset=4 align=1
        i32.store16 offset=4 align=1
        local.get 9
        i32.const 2
        i32.add
        local.set 9
        local.get 8
        i32.const 2
        i32.add
        local.set 8
        br 1 (;@1;)
      end
    end
    local.get 7
    local.get 4
    local.get 2
    i32.sub
    i32.store align=2
    local.get 7
    i32.const 67
    return)
  (func (;95;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 f64 f64 f64 f64 f64)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      call 6
      local.set 0
      i32.const 72
      local.set 1
    end
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 6
    local.get 5
    f64.convert_i32_u
    f64.const 0x1p+7 (;=128;)
    f64.eq
    if  ;; label = @1
      local.get 6
      local.set 4
      i32.const 1
      local.set 5
    end
    local.get 2
    local.get 3
    call 48
    local.set 7
    local.get 4
    local.get 5
    call 48
    local.set 8
    local.get 7
    f64.const 0x0p+0 (;=0;)
    f64.lt
    if  ;; label = @1
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
    local.get 6
    f64.gt
    if  ;; label = @1
      local.get 6
      local.set 7
    end
    local.get 8
    f64.const 0x0p+0 (;=0;)
    f64.lt
    if  ;; label = @1
      local.get 6
      local.get 8
      f64.add
      local.tee 8
      f64.const 0x0p+0 (;=0;)
      f64.lt
      if  ;; label = @2
        f64.const 0x0p+0 (;=0;)
        local.set 8
      end
    end
    local.get 8
    local.get 6
    f64.gt
    if  ;; label = @1
      local.get 6
      local.set 8
    end
    call 12
    f64.convert_i32_s
    local.set 9
    local.get 7
    local.get 8
    f64.gt
    if  ;; label = @1
      local.get 9
      i32.const 72
      return
      drop
    end
    local.get 9
    local.set 10
    local.get 0
    local.tee 11
    local.get 8
    f64.const 0x1.2p+3 (;=9;)
    f64.mul
    f64.add
    local.set 12
    local.get 11
    local.get 7
    f64.const 0x1.2p+3 (;=9;)
    f64.mul
    f64.add
    local.set 11
    loop  ;; label = @1
      local.get 11
      local.get 12
      f64.lt
      if  ;; label = @2
        local.get 10
        i32.trunc_sat_f64_s
        local.get 11
        i32.trunc_sat_f64_s
        f64.load offset=4 align=1
        f64.store offset=4 align=1
        local.get 10
        i32.trunc_sat_f64_s
        local.get 11
        i32.trunc_sat_f64_s
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 11
        f64.const 0x1.2p+3 (;=9;)
        f64.add
        local.set 11
        local.get 10
        f64.const 0x1.2p+3 (;=9;)
        f64.add
        local.set 10
        br 1 (;@1;)
      end
    end
    local.get 9
    i32.trunc_sat_f64_u
    local.get 8
    local.get 7
    f64.sub
    i32.trunc_sat_f64_u
    i32.store align=2
    local.get 9
    i32.const 72
    return)
  (func (;96;) (type 26) (param i32 i32 i32 i32 i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load align=2
    local.set 6
    local.get 5
    i32.const 128
    i32.eq
    if  ;; label = @1
      local.get 6
      local.set 4
    end
    local.get 2
    i32.const 0
    i32.or
    local.set 2
    local.get 4
    i32.const 0
    i32.or
    local.set 4
    local.get 2
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 6
      local.get 2
      i32.add
      local.tee 2
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 0
        local.set 2
      end
    end
    local.get 2
    local.get 6
    i32.gt_s
    if  ;; label = @1
      local.get 6
      local.set 2
    end
    local.get 4
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 6
      local.get 4
      i32.add
      local.tee 4
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 0
        local.set 4
      end
    end
    local.get 4
    local.get 6
    i32.gt_s
    if  ;; label = @1
      local.get 6
      local.set 4
    end
    call 12
    local.set 7
    local.get 2
    local.get 4
    i32.gt_s
    if  ;; label = @1
      local.get 7
      i32.const 195
      return
      drop
    end
    local.get 7
    local.set 8
    local.get 0
    local.tee 9
    local.get 4
    i32.add
    local.set 10
    local.get 9
    local.get 2
    i32.add
    local.set 9
    loop  ;; label = @1
      local.get 9
      local.get 10
      i32.lt_s
      if  ;; label = @2
        local.get 8
        local.get 8
        i32.const 1
        i32.add
        local.set 8
        local.get 9
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        i32.load8_u offset=4
        i32.store8 offset=4
        br 1 (;@1;)
      end
    end
    local.get 7
    local.get 4
    local.get 2
    i32.sub
    i32.store align=2
    local.get 7
    i32.const 195
    return)
  (func (;97;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 f64 i32 f64 f64 f64 i32 f64 f64 i32 i32 f64 i32)
    local.get 1
    i32.const 72
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      call 6
      local.set 0
      i32.const 72
      local.set 1
    end
    local.get 0
    i32.trunc_sat_f64_u
    i32.load align=2
    f64.convert_i32_u
    local.set 6
    call 12
    f64.convert_i32_s
    local.tee 7
    i32.trunc_sat_f64_u
    local.get 6
    i32.trunc_sat_f64_u
    i32.store align=2
    f64.const 0x0p+0 (;=0;)
    local.set 8
    loop  ;; label = @1
      local.get 8
      local.get 6
      f64.lt
      if  ;; label = @2
        local.get 7
        local.set 10
        local.get 8
        local.set 11
        local.get 10
        i32.trunc_sat_f64_u
        local.get 11
        i32.trunc_sat_f64_u
        i32.const 9
        i32.mul
        i32.add
        local.tee 9
        local.get 2
        local.set 18
        local.get 3
        local.set 19
        block (result f64)  ;; label = @3
          local.get 19
          i32.const 6
          i32.eq
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            local.get 4
            local.tee 12
            local.get 5
            local.tee 13
            local.get 8
            local.set 15
            local.get 0
            local.set 14
            local.get 15
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 14
            i32.trunc_sat_f64_u
            i32.add
            local.tee 17
            f64.load offset=4 align=1
            local.get 17
            i32.load8_u offset=12
            local.tee 16
            local.get 8
            local.get 8
            f64.const 0x1p+0 (;=1;)
            f64.add
            local.set 8
            i32.const 1
            local.get 0
            i32.const 72
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            local.get 18
            i32.trunc_sat_f64_u
            call_indirect (type 27)
            local.set 16
            br 1 (;@3;)
          end
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x0p+0 (;=0;)
          i32.const 128
          f64.const 0x1.c9p+10 (;=1828;)
          i32.const 195
          call 7
          i32.const 38
          throw 0
          f64.const 0x0p+0 (;=0;)
        end
        f64.store offset=4 align=1
        local.get 9
        local.get 16
        i32.store8 offset=12
        br 1 (;@1;)
      end
    end
    local.get 7
    i32.const 72
    return)
  (func (;98;) (type 1) (param f64 i32 f64 i32 f64 i32) (result f64 i32)
    (local f64 f64 i32 i32 i32 i32 i32 f64 f64 f64 f64)
    global.get 16
    local.tee 15
    local.set 16
    global.get 17
    local.set 9
    block (result i32)  ;; label = @1
      local.get 9
      i32.const 67
      i32.eq
      local.get 9
      i32.const 195
      i32.eq
      i32.or
      if  ;; label = @2
        local.get 16
        i32.trunc_sat_f64_u
        i32.load align=2
        br 1 (;@1;)
      end
      local.get 9
      i32.const 31
      i32.eq
      local.get 9
      i32.const 32
      i32.eq
      i32.or
      if  ;; label = @2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 16
      f64.abs
      f64.const 0x0p+0 (;=0;)
      f64.gt
    end
    if (result f64)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        local.set 7
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x0p+0 (;=0;)
        i32.const 128
        f64.const 0x1.d18p+10 (;=1862;)
        i32.const 195
        call 103
        i32.const 39
        throw 0
        f64.const 0x0p+0 (;=0;)
        local.set 6
        i32.const 128
        local.set 9
        block (result f64)  ;; label = @3
          local.get 9
          i32.const 67
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 10
            i32.const 1
            i32.store align=1
            local.get 10
            local.get 7
            i32.trunc_sat_f64_u
            i32.const 2
            i32.mul
            local.get 6
            i32.trunc_sat_f64_u
            i32.add
            i32.load16_u offset=4 align=1
            i32.store16 offset=4 align=1
            local.get 10
            f64.convert_i32_u
            i32.const 67
            local.set 8
            br 1 (;@3;)
          end
          local.get 9
          i32.const 72
          i32.eq
          if  ;; label = @4
            local.get 7
            i32.trunc_sat_f64_u
            i32.const 9
            i32.mul
            local.get 6
            i32.trunc_sat_f64_u
            i32.add
            local.tee 11
            f64.load offset=4 align=1
            local.get 11
            i32.load8_u offset=12
            local.set 8
            br 1 (;@3;)
          end
          local.get 9
          i32.const 128
          i32.eq
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x0p+0 (;=0;)
            i32.const 128
            f64.const 0x1.9d4p+10 (;=1653;)
            i32.const 195
            call 7
            i32.const 38
            throw 0
            f64.const 0x0p+0 (;=0;)
            br 1 (;@3;)
          end
          local.get 9
          i32.const 195
          i32.eq
          if  ;; label = @4
            i32.const 8
            call 11
            local.tee 10
            i32.const 1
            i32.store align=1
            local.get 10
            local.get 7
            i32.trunc_sat_f64_u
            local.get 6
            i32.trunc_sat_f64_u
            i32.add
            i32.load8_u offset=4
            i32.store8 offset=4
            local.get 10
            f64.convert_i32_u
            i32.const 195
            local.set 8
            br 1 (;@3;)
          end
          local.get 6
          i32.trunc_sat_f64_s
          i32.const 128
          local.get 7
          local.get 1
          call 44
          local.set 12
          i32.trunc_sat_f64_s
          local.get 12
          call 32
          local.set 8
        end
        local.tee 13
        local.get 2
        local.tee 14
        local.get 8
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
        if  ;; label = @3
          local.get 13
          local.get 8
          local.get 14
          local.get 3
          call 66
          i32.trunc_sat_f64_u
          br 1 (;@2;)
        end
        f64.eq
      end
      local.get 8
      i32.const 128
      i32.or
      local.get 3
      i32.const 128
      i32.or
      i32.eq
      i32.and
      f64.convert_i32_u
      i32.const 2
      local.set 8
    else
      local.get 15
      global.get 17
      local.set 8
    end
    global.set 16
    local.get 8
    global.set 17
    global.get 16
    local.get 8
    return)
  (func (;99;) (type 12) (param i32 i32) (result i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 8
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 79
        local.set 0
      end
    end
    local.get 0
    i32.const 67
    return)
  (func (;100;) (type 12) (param i32 i32) (result i32 i32)
    (local i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 8
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 79
        local.set 0
      end
    end
    local.get 0
    i32.const 67
    call 101
    local.tee 2
    call 102
    local.tee 2
    return)
  (func (;101;) (type 12) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 8
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 79
        local.set 0
      end
    end
    call 12
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
  (func (;102;) (type 12) (param i32 i32) (result i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 67
    i32.ne
    if  ;; label = @1
      local.get 0
      f64.convert_i32_s
      local.get 1
      call 8
      local.set 1
      i32.trunc_sat_f64_s
      local.set 0
      local.get 1
      i32.const 195
      i32.eq
      if  ;; label = @2
        local.get 0
        call 79
        local.set 0
      end
    end
    call 12
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
  (func (;103;) (type 5) (param f64 i32 f64 i32 f64 i32) (result f64)
    (local i32 f64)
    local.get 4
    f64.const 0x0p+0 (;=0;)
    f64.eq
    local.get 5
    i32.const 128
    i32.or
    i32.const 128
    i32.const 128
    i32.or
    i32.eq
    i32.and
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      local.set 4
      i32.const 195
      local.set 5
    else
      local.get 4
      local.get 5
      call 8
      local.tee 6
      local.set 5
      local.set 4
    end
    i32.const 8
    call 11
    f64.convert_i32_s
    local.tee 7
    i32.trunc_sat_f64_s
    local.get 4
    i32.trunc_sat_f64_s
    i32.store align=1
    local.get 7
    i32.trunc_sat_f64_s
    local.get 5
    i32.store8 offset=4
    local.get 7
    return)
  (func (;104;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0)
  (func (;105;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    f64.const 0x0p+0 (;=0;)
    i32.const 0)
  (func (;106;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 2
    local.get 3
    call 61)
  (func (;107;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 2
    local.get 3
    local.get 6
    local.get 7
    call 43)
  (func (;108;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 2
    local.get 3
    local.get 6
    local.get 7
    call 67)
  (func (;109;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 2
    local.get 3
    local.get 6
    local.get 7
    call 68)
  (func (;110;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 2
    local.get 3
    call 31)
  (func (;111;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 2
    local.get 3
    call 73)
  (func (;112;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call 75)
  (func (;113;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    call 86)
  (func (;114;) (type 27) (param f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32 f64 i32) (result f64 i32)
    local.get 0
    i32.trunc_sat_f64_u
    if  ;; label = @1
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x0p+0 (;=0;)
      i32.const 128
      f64.const 0x1.a58p+9 (;=843;)
      i32.const 195
      call 7
      i32.const 38
      throw 0
    end
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    local.get 8
    local.get 9
    call 98)
  (table (;0;) 11 funcref)
  (memory (;0;) 1)
  (tag (;0;) (type 28) (param f64 i32))
  (global (;0;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;3;) (mut i32) (i32.const 0))
  (global (;4;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;5;) (mut i32) (i32.const 0))
  (global (;6;) (mut i32) (i32.const 0))
  (global (;7;) (mut i32) (i32.const 6553600))
  (global (;8;) (mut i32) (i32.const 0))
  (global (;9;) (mut i32) (i32.const 16384))
  (global (;10;) (mut i32) (i32.const 0))
  (global (;11;) (mut i32) (i32.const 0))
  (global (;12;) (mut i32) (i32.const 0))
  (global (;13;) (mut i32) (i32.const 0))
  (global (;14;) (mut i64) (i64.const 575144891))
  (global (;15;) (mut i64) (i64.const 984029233))
  (global (;16;) (mut f64) (f64.const 0x0p+0 (;=0;)))
  (global (;17;) (mut i32) (i32.const 0))
  (export "0" (tag 0))
  (export "$" (memory 0))
  (export "m" (func 0))
  (elem (;0;) (i32.const 0) func 105 105 106 107 108 109 110 111 112 113 114)
  (data (;0;) (i32.const 16) ")\00\00\00Cannot convert a Symbol value to a string")
  (data (;1;) (i32.const 63) "\09\00\00\00undefined")
  (data (;2;) (i32.const 78) "\04\00\00\00null")
  (data (;3;) (i32.const 88) "\04\00\00\00true")
  (data (;4;) (i32.const 98) "\05\00\00\00false")
  (data (;5;) (i32.const 109) "7\00\00\00Number.prototype.toString expects 'this' to be a Number")
  (data (;6;) (i32.const 170) "2\00\00\00toString() radix argument must be between 2 and 36")
  (data (;7;) (i32.const 226) "\03\00\00\00NaN")
  (data (;8;) (i32.const 235) "\08\00\00\00Infinity")
  (data (;9;) (i32.const 249) "\09\00\00\00-Infinity")
  (data (;10;) (i32.const 264) "\01\00\00\000")
  (data (;11;) (i32.const 271) ";\00\00\00Function.prototype.toString expects 'this' to be a Function")
  (data (;12;) (i32.const 336) "\09\00\00\00function ")
  (data (;13;) (i32.const 351) "\14\00\00\00() { [native code] }")
  (data (;14;) (i32.const 377) "\09\00\00\00TypeError")
  (data (;15;) (i32.const 392) "\02\00\00\00: ")
  (data (;16;) (i32.const 400) "\0a\00\00\00RangeError")
  (data (;17;) (i32.const 416) "\08\00\00\00toString")
  (data (;18;) (i32.const 430) "\09\00\00\00prototype")
  (data (;19;) (i32.const 445) "\0b\00\00\00constructor")
  (data (;20;) (i32.const 462) "\04\00\00\00name")
  (data (;21;) (i32.const 472) "\06\00\00\00length")
  (data (;22;) (i32.const 484) "\1b\00\00\00Cannot get property of null")
  (data (;23;) (i32.const 517) "\0e\00\00\00hasOwnProperty")
  (data (;24;) (i32.const 537) "$\00\00\00Argument is nullish, expected object")
  (data (;25;) (i32.const 579) "+\00\00\00Cannot convert Symbol or BigInt to a number")
  (data (;26;) (i32.const 628) ">\00\00\00'trim' proto func tried to be called on a type without an impl")
  (data (;27;) (i32.const 696) "D\00\00\00'charCodeAt' proto func tried to be called on a type without an impl")
  (data (;28;) (i32.const 770) "6\00\00\00Number.prototype.valueOf expects 'this' to be a Number")
  (data (;29;) (i32.const 830) "\07\00\00\00valueOf")
  (data (;30;) (i32.const 843) "\1d\00\00\00Function is not a constructor")
  (data (;31;) (i32.const 878) "\15\00\00\00ovr is not a function")
  (data (;32;) (i32.const 905) "%\00\00\00Cannot convert an object to primitive")
  (data (;33;) (i32.const 948) "\14\00\00\00propertyIsEnumerable")
  (data (;34;) (i32.const 974) "\0d\00\00\00isPrototypeOf")
  (data (;35;) (i32.const 993) " \00\00\00This is nullish, expected object")
  (data (;36;) (i32.const 1031) "\0e\00\00\00toLocaleString")
  (data (;37;) (i32.const 1051) "7\00\00\00Symbol.prototype.toString expects 'this' to be a Symbol")
  (data (;38;) (i32.const 1112) ">\00\00\00Symbol.prototype.description$get expects 'this' to be a Symbol")
  (data (;39;) (i32.const 1180) "\09\00\00\00__proto__")
  (data (;40;) (i32.const 1195) "\12\00\00\00[object Undefined]")
  (data (;41;) (i32.const 1219) "\0d\00\00\00[object Null]")
  (data (;42;) (i32.const 1238) "\0e\00\00\00[object Array]")
  (data (;43;) (i32.const 1258) "\11\00\00\00[object Function]")
  (data (;44;) (i32.const 1281) "\10\00\00\00[object Boolean]")
  (data (;45;) (i32.const 1303) "\0f\00\00\00[object Number]")
  (data (;46;) (i32.const 1324) "\0f\00\00\00[object String]")
  (data (;47;) (i32.const 1345) "\0d\00\00\00[object Date]")
  (data (;48;) (i32.const 1364) "\0f\00\00\00[object RegExp]")
  (data (;49;) (i32.const 1385) "\0f\00\00\00[object Object]")
  (data (;50;) (i32.const 1406) "\1a\00\00\00Argument cannot be nullish")
  (data (;51;) (i32.const 1438) "+\00\00\00Called Array.from with a non-function mapFn")
  (data (;52;) (i32.const 1487) "\22\00\00\00Tried for..of on non-iterable type")
  (data (;53;) (i32.const 1527) "\17\00\00\00mapFn is not a function")
  (data (;54;) (i32.const 1556) "\14\00\00\00Invalid array length")
  (data (;55;) (i32.const 1582) " \00\00\00Cannot set property of undefined")
  (data (;56;) (i32.const 1620) "\1b\00\00\00Cannot set property of null")
  (data (;57;) (i32.const 1653) "!\00\00\00Cannot read property of undefined")
  (data (;58;) (i32.const 1692) "?\00\00\00'slice' proto func tried to be called on a type without an impl")
  (data (;59;) (i32.const 1761) "=\00\00\00'map' proto func tried to be called on a type without an impl")
  (data (;60;) (i32.const 1828) "\1c\00\00\00callbackFn is not a function")
  (data (;61;) (i32.const 1862) "\11\00\00\00dd is not defined")
  (data (;62;) (i32.const 16384) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00valueOf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\0e\00\00\00hasOwnProperty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\14\00\00\00propertyIsEnumerable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\0d\00\00\00isPrototypeOf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00toString\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00toLocaleString\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\02\06\00\00\00Object\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
