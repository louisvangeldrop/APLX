
#include "hermes/VM/static_h.h"

#include <stdlib.h>


static uint32_t unit_index;
static inline SHSymbolID* get_symbols(SHUnit *);
static inline SHWritePropertyCacheEntry* get_write_prop_cache(SHUnit *);
static inline SHReadPropertyCacheEntry* get_read_prop_cache(SHUnit *);
static const SHSrcLoc s_source_locations[];
static SHNativeFuncInfo s_function_info_table[];
static SHLegacyValue _0_global(SHRuntime *shr);
static SHLegacyValue _1_indexGenerator(SHRuntime *shr);
static SHLegacyValue _2_gradeUp(SHRuntime *shr);
static SHLegacyValue _3_random(SHRuntime *shr);
static SHLegacyValue _4_deal(SHRuntime *shr);
static SHLegacyValue _5_from(SHRuntime *shr);
static SHLegacyValue _6_main(SHRuntime *shr);
// ../../../apltyped.ts:12:1
static SHLegacyValue _0_global(SHRuntime *shr) {
  _SH_MODEL();
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
    SHLegacyValue t2;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 12);
  locals.head.count =3;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  locals.t2 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();

L0:
  ;
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[1] /*indexGenerator*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[2] /*gradeUp*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[3] /*m_w*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[4] /*m_z*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[5] /*mask*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[6] /*random*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[7] /*deal*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[8] /*from*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[9] /*main*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[10] /*length*/);
  _sh_ljs_declare_global_var(shr, get_symbols(shUnit)[11] /*n*/);
  locals.t0 = _sh_ljs_get_global_object(shr);
  locals.t1 = _sh_ljs_create_closure(shr, NULL, _1_indexGenerator, &s_function_info_table[1], shUnit);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[1] /*indexGenerator*/, &locals.t1, get_write_prop_cache(shUnit) + 0);
  locals.t1 = _sh_ljs_create_closure(shr, NULL, _2_gradeUp, &s_function_info_table[2], shUnit);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[2] /*gradeUp*/, &locals.t1, get_write_prop_cache(shUnit) + 1);
  locals.t1 = _sh_ljs_create_closure(shr, NULL, _3_random, &s_function_info_table[3], shUnit);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[6] /*random*/, &locals.t1, get_write_prop_cache(shUnit) + 2);
  locals.t1 = _sh_ljs_create_closure(shr, NULL, _4_deal, &s_function_info_table[4], shUnit);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[7] /*deal*/, &locals.t1, get_write_prop_cache(shUnit) + 3);
  locals.t1 = _sh_ljs_create_closure(shr, NULL, _5_from, &s_function_info_table[5], shUnit);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[8] /*from*/, &locals.t1, get_write_prop_cache(shUnit) + 4);
  locals.t1 = _sh_ljs_create_closure(shr, NULL, _6_main, &s_function_info_table[6], shUnit);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[9] /*main*/, &locals.t1, get_write_prop_cache(shUnit) + 5);
  np0 = _sh_ljs_double(123456789);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[3] /*m_w*/, &np0, get_write_prop_cache(shUnit) + 6);
  np0 = _sh_ljs_double(987654321);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[4] /*m_z*/, &np0, get_write_prop_cache(shUnit) + 7);
  np0 = _sh_ljs_double(((struct HermesValueBase){.raw = 4751297606873776128u}).f64);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[5] /*mask*/, &np0, get_write_prop_cache(shUnit) + 8);
  np0 = _sh_ljs_double(7281);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[10] /*length*/, &np0, get_write_prop_cache(shUnit) + 9);
  np0 = _sh_ljs_double(1000);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[11] /*n*/, &np0, get_write_prop_cache(shUnit) + 10);
  frame[5] = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[9] /*main*/, get_read_prop_cache(shUnit) + 0);
  frame[3] = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[11] /*n*/, get_read_prop_cache(shUnit) + 1);
  frame[2] = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[10] /*length*/, get_read_prop_cache(shUnit) + 2);
  np0 = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[4] = _sh_ljs_undefined();
  locals.t0 = _sh_ljs_call(shr, frame, 2);
  _sh_leave(shr, &locals.head, frame);
  return locals.t0;
}
// ../../../apltyped.ts:12:1
static SHLegacyValue _1_indexGenerator(SHRuntime *shr) {
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
    SHLegacyValue t2;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 11);
  locals.head.count =3;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  locals.t2 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();
  SHLegacyValue np1 = _sh_ljs_undefined();
  SHLegacyValue np2 = _sh_ljs_undefined();

L0:
  ;
  locals.t1 = _sh_ljs_param(frame, 1);
  locals.t0 = _sh_ljs_get_global_object(shr);
  locals.t0 = _sh_ljs_try_get_by_id_rjs(shr,&locals.t0, get_symbols(shUnit)[12] /*Array*/, get_read_prop_cache(shUnit) + 3);
  locals.t2 = _sh_ljs_create_this(shr, &locals.t0, &locals.t0, get_read_prop_cache(shUnit) + 4);
  frame[5] = locals.t0;
  frame[4] = locals.t0;
  frame[3] = locals.t2;
  frame[2] = locals.t1;
  locals.t0 = _sh_ljs_call(shr, frame, 1);
  locals.t0 = _sh_ljs_is_object(locals.t0) ? locals.t0 : locals.t2;
  np2 = _sh_ljs_double(0);
  np0 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np2, &locals.t1));
  np1 = _sh_ljs_double(1);
  np2 = _sh_ljs_double(0);
  if(_sh_ljs_get_bool(np0)) goto L1;
  goto L2;

L1:
  ;
  // PhiInst
  _sh_ljs_put_by_val_loose_rjs(shr,&locals.t0, &np2, &np2);
  np2 = _sh_ljs_double(_sh_ljs_get_double(np2) + _sh_ljs_get_double(np1));
  np0 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np2, &locals.t1));
  if(_sh_ljs_get_bool(np0)) goto L1;
  goto L2;

L2:
  ;
  _sh_leave(shr, &locals.head, frame);
  return locals.t0;
}
// ../../../apltyped.ts:23:1
static SHLegacyValue _2_gradeUp(SHRuntime *shr) {
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
    SHLegacyValue t2;
    SHLegacyValue t3;
    SHLegacyValue t4;
    SHLegacyValue t5;
    SHLegacyValue t6;
    SHLegacyValue t7;
    SHLegacyValue t8;
    SHLegacyValue t9;
    SHLegacyValue t10;
    SHLegacyValue t11;
    SHLegacyValue t12;
    SHLegacyValue t13;
    SHLegacyValue t14;
    SHLegacyValue t15;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 14);
  locals.head.count =16;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  locals.t2 = _sh_ljs_undefined();
  locals.t3 = _sh_ljs_undefined();
  locals.t4 = _sh_ljs_undefined();
  locals.t5 = _sh_ljs_undefined();
  locals.t6 = _sh_ljs_undefined();
  locals.t7 = _sh_ljs_undefined();
  locals.t8 = _sh_ljs_undefined();
  locals.t9 = _sh_ljs_undefined();
  locals.t10 = _sh_ljs_undefined();
  locals.t11 = _sh_ljs_undefined();
  locals.t12 = _sh_ljs_undefined();
  locals.t13 = _sh_ljs_undefined();
  locals.t14 = _sh_ljs_undefined();
  locals.t15 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();
  SHLegacyValue np1 = _sh_ljs_undefined();
  SHLegacyValue np2 = _sh_ljs_undefined();
  SHLegacyValue np3 = _sh_ljs_undefined();
  SHLegacyValue np4 = _sh_ljs_undefined();

L0:
  ;
  locals.t0 = _sh_ljs_param(frame, 2);
  locals.t7 = _sh_ljs_param(frame, 3);
  locals.t4 = _sh_ljs_param(frame, 4);
  np0 = _sh_ljs_bool(_sh_ljs_less_equal_rjs(shr, &locals.t4, &locals.t7));
  if(_sh_ljs_get_bool(np0)) goto L11;
  goto L1;

L1:
  ;
  locals.t3 = _sh_ljs_param(frame, 1);
  locals.t1 = _sh_ljs_get_global_object(shr);
  locals.t5 = _sh_ljs_try_get_by_id_rjs(shr,&locals.t1, get_symbols(shUnit)[13] /*Math*/, get_read_prop_cache(shUnit) + 5);
  frame[7] = _sh_ljs_get_by_id_rjs(shr,&locals.t5,get_symbols(shUnit)[14] /*floor*/, get_read_prop_cache(shUnit) + 6);
  locals.t6 = _sh_ljs_add_rjs(shr, &locals.t7, &locals.t4);
  np0 = _sh_ljs_double(2);
  frame[5] = _sh_ljs_div_rjs(shr, &locals.t6, &np0);
  np0 = _sh_ljs_undefined();
  frame[8] = _sh_ljs_undefined();
  frame[6] = locals.t5;
  locals.t2 = _sh_ljs_call(shr, frame, 1);
  locals.t2 = _sh_ljs_get_by_val_rjs(shr,&locals.t0, &locals.t2);
  locals.t9 = _sh_ljs_get_by_val_rjs(shr,&locals.t3, &locals.t2);
  np1 = _sh_ljs_bool(_sh_ljs_less_equal_rjs(shr, &locals.t7, &locals.t4));
  np3 = _sh_ljs_double(1);
  np2 = _sh_ljs_bool(false);
  locals.t8 = locals.t4;
  locals.t5 = locals.t7;
  locals.t6 = locals.t8;
  locals.t2 = locals.t5;
  if(_sh_ljs_get_bool(np1)) goto L2;
  goto L10;

L2:
  ;
  // PhiInst
  // PhiInst
  locals.t12 = _sh_ljs_get_by_val_rjs(shr,&locals.t0, &locals.t5);
  locals.t13 = _sh_ljs_get_by_val_rjs(shr,&locals.t0, &locals.t8);
  locals.t10 = _sh_ljs_get_by_val_rjs(shr,&locals.t3, &locals.t12);
  np4 = _sh_ljs_bool(_sh_ljs_greater_equal_rjs(shr, &locals.t10, &locals.t9));
  locals.t10 = _sh_ljs_get_by_val_rjs(shr,&locals.t3, &locals.t13);
  np1 = _sh_ljs_bool(_sh_ljs_less_equal_rjs(shr, &locals.t10, &locals.t9));
  if(_sh_ljs_get_bool(np4)) goto L3;
  goto L4;

L3:
  ;
  if(_sh_ljs_get_bool(np1)) goto L8;
  goto L4;

L4:
  ;
  np4 = _sh_ljs_bool(np4.raw == np2.raw);
  locals.t14 = locals.t5;
  if(_sh_ljs_get_bool(np4)) goto L5;
  goto L6;

L5:
  ;
  locals.t14 = _sh_ljs_inc_rjs(shr, &locals.t5);
  goto L6;
L6:
  ;
  // PhiInst
  np1 = _sh_ljs_bool(np1.raw == np2.raw);
  locals.t11 = locals.t8;
  locals.t10 = locals.t14;
  if(_sh_ljs_get_bool(np1)) goto L7;
  goto L9;

L7:
  ;
  locals.t11 = _sh_ljs_dec_rjs(shr, &locals.t8);
  locals.t10 = locals.t14;
  goto L9;
L8:
  ;
  _sh_ljs_put_by_val_loose_rjs(shr,&locals.t0, &locals.t5, &locals.t13);
  _sh_ljs_put_by_val_loose_rjs(shr,&locals.t0, &locals.t8, &locals.t12);
  locals.t10 = _sh_ljs_add_rjs(shr, &locals.t5, &np3);
  locals.t11 = _sh_ljs_sub_rjs(shr, &locals.t8, &np3);
  goto L9;
L9:
  ;
  // PhiInst
  // PhiInst
  np1 = _sh_ljs_bool(_sh_ljs_less_equal_rjs(shr, &locals.t10, &locals.t11));
  locals.t8 = locals.t11;
  locals.t5 = locals.t10;
  locals.t6 = locals.t8;
  locals.t2 = locals.t5;
  if(_sh_ljs_get_bool(np1)) goto L2;
  goto L10;

L10:
  ;
  // PhiInst
  // PhiInst
  frame[7] = _sh_ljs_get_by_id_rjs(shr,&locals.t1,get_symbols(shUnit)[2] /*gradeUp*/, get_read_prop_cache(shUnit) + 7);
  frame[8] = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[5] = locals.t3;
  frame[4] = locals.t0;
  frame[3] = locals.t7;
  frame[2] = locals.t6;
  locals.t5 = _sh_ljs_call(shr, frame, 4);
  frame[7] = _sh_ljs_get_by_id_rjs(shr,&locals.t1,get_symbols(shUnit)[2] /*gradeUp*/, get_read_prop_cache(shUnit) + 8);
  frame[8] = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[5] = locals.t3;
  frame[4] = locals.t0;
  frame[3] = locals.t2;
  frame[2] = locals.t4;
  locals.t1 = _sh_ljs_call(shr, frame, 4);
  _sh_leave(shr, &locals.head, frame);
  return locals.t0;

L11:
  ;
  _sh_leave(shr, &locals.head, frame);
  return locals.t0;
}
// ../../../apltyped.ts:60:1
static SHLegacyValue _3_random(SHRuntime *shr) {
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 2);
  locals.head.count =2;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();
  SHLegacyValue np1 = _sh_ljs_undefined();
  SHLegacyValue np2 = _sh_ljs_undefined();
  SHLegacyValue np3 = _sh_ljs_undefined();
  SHLegacyValue np4 = _sh_ljs_undefined();

L0:
  ;
  locals.t0 = _sh_ljs_get_global_object(shr);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[4] /*m_z*/, get_read_prop_cache(shUnit) + 9);
  np0 = _sh_ljs_double(65535);
  np4 = _sh_ljs_bit_and_rjs(shr, &locals.t1, &np0);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[4] /*m_z*/, get_read_prop_cache(shUnit) + 10);
  np1 = _sh_ljs_double(16);
  np3 = _sh_ljs_right_shift_rjs(shr, &locals.t1, &np1);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[5] /*mask*/, get_read_prop_cache(shUnit) + 11);
  np2 = _sh_ljs_double(36969);
  np2 = _sh_ljs_double(_sh_ljs_get_double(np2) * _sh_ljs_get_double(np4));
  np2 = _sh_ljs_double(_sh_ljs_get_double(np2) + _sh_ljs_get_double(np3));
  np2 = _sh_ljs_bit_and_rjs(shr, &np2, &locals.t1);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[4] /*m_z*/, &np2, get_write_prop_cache(shUnit) + 11);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[3] /*m_w*/, get_read_prop_cache(shUnit) + 12);
  np4 = _sh_ljs_bit_and_rjs(shr, &locals.t1, &np0);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[3] /*m_w*/, get_read_prop_cache(shUnit) + 13);
  np3 = _sh_ljs_right_shift_rjs(shr, &locals.t1, &np1);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[5] /*mask*/, get_read_prop_cache(shUnit) + 14);
  np2 = _sh_ljs_double(18000);
  np2 = _sh_ljs_double(_sh_ljs_get_double(np2) * _sh_ljs_get_double(np4));
  np2 = _sh_ljs_double(_sh_ljs_get_double(np2) + _sh_ljs_get_double(np3));
  np2 = _sh_ljs_bit_and_rjs(shr, &np2, &locals.t1);
  _sh_ljs_put_by_id_loose_rjs(shr,&locals.t0, get_symbols(shUnit)[3] /*m_w*/, &np2, get_write_prop_cache(shUnit) + 12);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[4] /*m_z*/, get_read_prop_cache(shUnit) + 15);
  np3 = _sh_ljs_left_shift_rjs(shr, &locals.t1, &np1);
  locals.t0 = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[3] /*m_w*/, get_read_prop_cache(shUnit) + 16);
  np0 = _sh_ljs_bit_and_rjs(shr, &locals.t0, &np0);
  np1 = _sh_ljs_double(((struct HermesValueBase){.raw = 4751297606875873280u}).f64);
  np2 = _sh_ljs_double(1);
  np0 = _sh_ljs_double(_sh_ljs_get_double(np3) + _sh_ljs_get_double(np0));
  np0 = _sh_ljs_unsigned_right_shift_rjs(shr, &np0, &np2);
  np0 = _sh_ljs_double(_sh_ljs_get_double(np0) / _sh_ljs_get_double(np1));
  _sh_leave(shr, &locals.head, frame);
  return np0;
}
// ../../../apltyped.ts:69:1
static SHLegacyValue _4_deal(SHRuntime *shr) {
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
    SHLegacyValue t2;
    SHLegacyValue t3;
    SHLegacyValue t4;
    SHLegacyValue t5;
    SHLegacyValue t6;
    SHLegacyValue t7;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 12);
  locals.head.count =8;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  locals.t2 = _sh_ljs_undefined();
  locals.t3 = _sh_ljs_undefined();
  locals.t4 = _sh_ljs_undefined();
  locals.t5 = _sh_ljs_undefined();
  locals.t6 = _sh_ljs_undefined();
  locals.t7 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();
  SHLegacyValue np1 = _sh_ljs_undefined();
  SHLegacyValue np2 = _sh_ljs_undefined();
  SHLegacyValue np3 = _sh_ljs_undefined();
  SHLegacyValue np4 = _sh_ljs_undefined();

L0:
  ;
  locals.t3 = _sh_ljs_param(frame, 1);
  locals.t2 = _sh_ljs_param(frame, 2);
  locals.t0 = _sh_ljs_get_global_object(shr);
  frame[5] = _sh_ljs_get_by_id_rjs(shr,&locals.t0,get_symbols(shUnit)[1] /*indexGenerator*/, get_read_prop_cache(shUnit) + 17);
  np1 = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[4] = _sh_ljs_undefined();
  frame[3] = locals.t3;
  locals.t1 = _sh_ljs_call(shr, frame, 1);
  np0 = _sh_ljs_double(0);
  np2 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np0, &locals.t2));
  np4 = _sh_ljs_double(1);
  np3 = _sh_ljs_double(0);
  if(_sh_ljs_get_bool(np2)) goto L1;
  goto L2;

L1:
  ;
  // PhiInst
  locals.t5 = _sh_ljs_try_get_by_id_rjs(shr,&locals.t0, get_symbols(shUnit)[13] /*Math*/, get_read_prop_cache(shUnit) + 18);
  locals.t4 = _sh_ljs_get_by_id_rjs(shr,&locals.t5,get_symbols(shUnit)[14] /*floor*/, get_read_prop_cache(shUnit) + 19);
  locals.t7 = _sh_ljs_try_get_by_id_rjs(shr,&locals.t0, get_symbols(shUnit)[13] /*Math*/, get_read_prop_cache(shUnit) + 20);
  frame[5] = _sh_ljs_get_by_id_rjs(shr,&locals.t7,get_symbols(shUnit)[6] /*random*/, get_read_prop_cache(shUnit) + 21);
  frame[6] = _sh_ljs_undefined();
  frame[4] = locals.t7;
  locals.t6 = _sh_ljs_call(shr, frame, 0);
  np2 = _sh_ljs_sub_rjs(shr, &locals.t3, &np3);
  frame[3] = _sh_ljs_mul_rjs(shr, &locals.t6, &np2);
  frame[6] = _sh_ljs_undefined();
  frame[5] = locals.t4;
  frame[4] = locals.t5;
  locals.t4 = _sh_ljs_call(shr, frame, 1);
  locals.t5 = _sh_ljs_add_rjs(shr, &np3, &locals.t4);
  locals.t4 = _sh_ljs_get_by_val_rjs(shr,&locals.t1, &np3);
  locals.t6 = _sh_ljs_get_by_val_rjs(shr,&locals.t1, &locals.t5);
  _sh_ljs_put_by_val_loose_rjs(shr,&locals.t1, &np3, &locals.t6);
  _sh_ljs_put_by_val_loose_rjs(shr,&locals.t1, &locals.t5, &locals.t4);
  np3 = _sh_ljs_double(_sh_ljs_get_double(np3) + _sh_ljs_get_double(np4));
  np2 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np3, &locals.t2));
  if(_sh_ljs_get_bool(np2)) goto L1;
  goto L2;

L2:
  ;
  frame[5] = _sh_ljs_get_by_id_rjs(shr,&locals.t1,get_symbols(shUnit)[15] /*slice*/, get_read_prop_cache(shUnit) + 22);
  frame[6] = _sh_ljs_undefined();
  frame[4] = locals.t1;
  frame[3] = _sh_ljs_double(0);
  frame[2] = locals.t2;
  locals.t0 = _sh_ljs_call(shr, frame, 2);
  _sh_leave(shr, &locals.head, frame);
  return locals.t0;
}
// ../../../apltyped.ts:82:1
static SHLegacyValue _5_from(SHRuntime *shr) {
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
    SHLegacyValue t2;
    SHLegacyValue t3;
    SHLegacyValue t4;
    SHLegacyValue t5;
    SHLegacyValue t6;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 11);
  locals.head.count =7;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  locals.t2 = _sh_ljs_undefined();
  locals.t3 = _sh_ljs_undefined();
  locals.t4 = _sh_ljs_undefined();
  locals.t5 = _sh_ljs_undefined();
  locals.t6 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();
  SHLegacyValue np1 = _sh_ljs_undefined();
  SHLegacyValue np2 = _sh_ljs_undefined();
  SHLegacyValue np3 = _sh_ljs_undefined();

L0:
  ;
  locals.t4 = _sh_ljs_param(frame, 1);
  locals.t3 = _sh_ljs_param(frame, 2);
  locals.t2 = _sh_ljs_get_by_id_rjs(shr,&locals.t4,get_symbols(shUnit)[10] /*length*/, get_read_prop_cache(shUnit) + 23);
  locals.t1 = _sh_ljs_get_by_id_rjs(shr,&locals.t3,get_symbols(shUnit)[10] /*length*/, get_read_prop_cache(shUnit) + 24);
  locals.t0 = _sh_ljs_get_global_object(shr);
  locals.t0 = _sh_ljs_try_get_by_id_rjs(shr,&locals.t0, get_symbols(shUnit)[12] /*Array*/, get_read_prop_cache(shUnit) + 25);
  locals.t5 = _sh_ljs_create_this(shr, &locals.t0, &locals.t0, get_read_prop_cache(shUnit) + 26);
  frame[5] = locals.t0;
  frame[4] = locals.t0;
  frame[3] = locals.t5;
  frame[2] = locals.t2;
  locals.t0 = _sh_ljs_call(shr, frame, 1);
  locals.t0 = _sh_ljs_is_object(locals.t0) ? locals.t0 : locals.t5;
  np3 = _sh_ljs_double(0);
  np0 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np3, &locals.t2));
  np2 = _sh_ljs_double(1);
  np1 = _sh_ljs_double(0);
  if(_sh_ljs_get_bool(np0)) goto L1;
  goto L5;

L1:
  ;
  // PhiInst
  locals.t5 = _sh_ljs_get_by_val_rjs(shr,&locals.t4, &np1);
  np0 = _sh_ljs_bool(_sh_ljs_greater_equal_rjs(shr, &locals.t5, &np3));
  locals.t6 = _sh_ljs_get_by_val_rjs(shr,&locals.t4, &np1);
  if(_sh_ljs_get_bool(np0)) goto L3;
  goto L2;

L2:
  ;
  locals.t5 = _sh_ljs_add_rjs(shr, &locals.t1, &locals.t6);
  goto L4;
L3:
  ;
  locals.t5 = locals.t6;
  goto L4;
L4:
  ;
  // PhiInst
  locals.t5 = _sh_ljs_get_by_val_rjs(shr,&locals.t3, &locals.t5);
  _sh_ljs_put_by_val_loose_rjs(shr,&locals.t0, &np1, &locals.t5);
  np1 = _sh_ljs_double(_sh_ljs_get_double(np1) + _sh_ljs_get_double(np2));
  np0 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np1, &locals.t2));
  if(_sh_ljs_get_bool(np0)) goto L1;
  goto L5;

L5:
  ;
  _sh_leave(shr, &locals.head, frame);
  return locals.t0;
}
// ../../../apltyped.ts:94:1
static SHLegacyValue _6_main(SHRuntime *shr) {
  struct {
    SHLocals head;
    SHLegacyValue t0;
    SHLegacyValue t1;
    SHLegacyValue t2;
    SHLegacyValue t3;
    SHLegacyValue t4;
    SHLegacyValue t5;
  } locals;
  _sh_check_native_stack_overflow(shr);
  SHLegacyValue *frame = _sh_enter(shr, &locals.head, 14);
  locals.head.count =6;
  SHUnit *shUnit = shr->units[unit_index];
  locals.t0 = _sh_ljs_undefined();
  locals.t1 = _sh_ljs_undefined();
  locals.t2 = _sh_ljs_undefined();
  locals.t3 = _sh_ljs_undefined();
  locals.t4 = _sh_ljs_undefined();
  locals.t5 = _sh_ljs_undefined();
  SHLegacyValue np0 = _sh_ljs_undefined();
  SHLegacyValue np1 = _sh_ljs_undefined();
  SHLegacyValue np2 = _sh_ljs_undefined();
  SHLegacyValue np3 = _sh_ljs_undefined();
  SHLegacyValue np4 = _sh_ljs_undefined();

L0:
  ;
  locals.t4 = _sh_ljs_param(frame, 1);
  locals.t3 = _sh_ljs_param(frame, 2);
  locals.t2 = _sh_ljs_get_global_object(shr);
  frame[7] = _sh_ljs_get_by_id_rjs(shr,&locals.t2,get_symbols(shUnit)[7] /*deal*/, get_read_prop_cache(shUnit) + 27);
  np0 = _sh_ljs_undefined();
  frame[8] = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[5] = locals.t3;
  frame[4] = locals.t3;
  locals.t1 = _sh_ljs_call(shr, frame, 2);
  frame[7] = _sh_ljs_get_by_id_rjs(shr,&locals.t2,get_symbols(shUnit)[1] /*indexGenerator*/, get_read_prop_cache(shUnit) + 28);
  frame[8] = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[5] = locals.t3;
  locals.t0 = _sh_ljs_call(shr, frame, 1);
  np4 = _sh_ljs_double(0);
  np1 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np4, &locals.t4));
  np3 = _sh_ljs_double(1);
  np2 = _sh_ljs_double(0);
  if(_sh_ljs_get_bool(np1)) goto L1;
  goto L2;

L1:
  ;
  // PhiInst
  frame[7] = _sh_ljs_get_by_id_rjs(shr,&locals.t2,get_symbols(shUnit)[2] /*gradeUp*/, get_read_prop_cache(shUnit) + 29);
  frame[2] = _sh_ljs_sub_rjs(shr, &locals.t3, &np3);
  frame[8] = _sh_ljs_undefined();
  frame[6] = _sh_ljs_undefined();
  frame[5] = locals.t1;
  frame[4] = locals.t0;
  frame[3] = _sh_ljs_double(0);
  locals.t5 = _sh_ljs_call(shr, frame, 4);
  np2 = _sh_ljs_double(_sh_ljs_get_double(np2) + _sh_ljs_get_double(np3));
  np1 = _sh_ljs_bool(_sh_ljs_less_rjs(shr, &np2, &locals.t4));
  if(_sh_ljs_get_bool(np1)) goto L1;
  goto L2;

L2:
  ;
  _sh_leave(shr, &locals.head, frame);
  return np0;
}
static unsigned char s_literal_val_buffer[0] = {};
static unsigned char s_obj_key_buffer[0] = {};
static const SHShapeTableEntry s_obj_shape_table[] = {
};

static const SHSrcLoc s_source_locations[] = {
  { .filename_idx = 0, .line = 0, .column = 0 },
};

static SHNativeFuncInfo s_function_info_table[] = {
  { .name_index = 16, .arg_count = 0, .prohibit_invoke = 2, .kind = 0 },
  { .name_index = 1, .arg_count = 1, .prohibit_invoke = 2, .kind = 0 },
  { .name_index = 2, .arg_count = 4, .prohibit_invoke = 2, .kind = 0 },
  { .name_index = 6, .arg_count = 0, .prohibit_invoke = 2, .kind = 0 },
  { .name_index = 7, .arg_count = 2, .prohibit_invoke = 2, .kind = 0 },
  { .name_index = 8, .arg_count = 2, .prohibit_invoke = 2, .kind = 0 },
  { .name_index = 9, .arg_count = 2, .prohibit_invoke = 2, .kind = 0 },
};
static const char s_ascii_pool[] = {
  '\0',
  'i', 'n', 'd', 'e', 'x', 'G', 'e', 'n', 'e', 'r', 'a', 't', 'o', 'r', '\0',
  'g', 'r', 'a', 'd', 'e', 'U', 'p', '\0',
  'm', '_', 'w', '\0',
  'm', '_', 'z', '\0',
  'm', 'a', 's', 'k', '\0',
  'r', 'a', 'n', 'd', 'o', 'm', '\0',
  'd', 'e', 'a', 'l', '\0',
  'f', 'r', 'o', 'm', '\0',
  'm', 'a', 'i', 'n', '\0',
  'l', 'e', 'n', 'g', 't', 'h', '\0',
  'n', '\0',
  'A', 'r', 'r', 'a', 'y', '\0',
  'M', 'a', 't', 'h', '\0',
  'f', 'l', 'o', 'o', 'r', '\0',
  's', 'l', 'i', 'c', 'e', '\0',
  'g', 'l', 'o', 'b', 'a', 'l', '\0',
};
static const char16_t s_u16_pool[] = {
};
static const uint32_t s_strings[] = {0,0,0,1,14,3220080673,16,7,3471231487,24,3,1511607713,28,3,1511618894,32,4,1076373220,37,6,1344420634,44,4,297012221,49,4,3941611110,54,4,1099767270,59,6,363462486,66,1,114319,68,5,3111565995,74,4,471344224,79,5,1110891740,85,5,377550857,91,6,615793799,};
#define CREATE_THIS_UNIT sh_export_this_unit
struct UnitData {
  SHUnit unit;
  SHSymbolID symbol_data[17];
  SHWritePropertyCacheEntry write_prop_cache_data[13];
;  SHReadPropertyCacheEntry read_prop_cache_data[30];
;  SHCompressedPointer object_literal_class_cache[0];
};
SHUnit *CREATE_THIS_UNIT(void) {
  struct UnitData *unit_data = calloc(sizeof(struct UnitData), 1);
  *unit_data = (struct UnitData){.unit = {.index = &unit_index,.num_symbols =17, .num_write_prop_cache_entries = 13, .num_read_prop_cache_entries = 30, .ascii_pool = s_ascii_pool, .u16_pool = s_u16_pool,.strings = s_strings, .symbols = unit_data->symbol_data,.write_prop_cache = unit_data->write_prop_cache_data,.read_prop_cache = unit_data->read_prop_cache_data,.obj_key_buffer = s_obj_key_buffer, .obj_key_buffer_size = 0, .literal_val_buffer = s_literal_val_buffer, .literal_val_buffer_size = 0, .obj_shape_table = s_obj_shape_table, .obj_shape_table_count = 0, .object_literal_class_cache = unit_data->object_literal_class_cache, .source_locations = s_source_locations, .source_locations_size = 1, .unit_main = _0_global, .unit_main_info = &s_function_info_table[0], .unit_name = "sh_compiled" }};
  return (SHUnit *)unit_data;
}

SHSymbolID *get_symbols(SHUnit *unit) {
  return ((struct UnitData *)unit)->symbol_data;
}

SHWritePropertyCacheEntry *get_write_prop_cache(SHUnit *unit) {
  return ((struct UnitData *)unit)->write_prop_cache_data;
}
SHReadPropertyCacheEntry *get_read_prop_cache(SHUnit *unit) {
  return ((struct UnitData *)unit)->read_prop_cache_data;
}

void init_console_bindings(SHRuntime *shr);

int main(int argc, char **argv) {
  SHRuntime *shr = _sh_init(argc, argv);
  init_console_bindings(shr);
  bool success = _sh_initialize_units(shr, 1, CREATE_THIS_UNIT);
  _sh_done(shr);
  return success ? 0 : 1;
}
