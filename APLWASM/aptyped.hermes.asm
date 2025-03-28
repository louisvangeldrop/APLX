	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"apltyped.ts-7b2ff3.c"
	.def	sh_export_this_unit;
	.scl	2;
	.type	32;
	.endef
	.globl	sh_export_this_unit             # -- Begin function sh_export_this_unit
	.p2align	4, 0x90
sh_export_this_unit:                    # @sh_export_this_unit
.seh_proc sh_export_this_unit
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$1184, %ecx                     # imm = 0x4A0
	movl	$1, %edx
	callq	calloc
	leaq	184(%rax), %rcx
	leaq	256(%rax), %rdx
	leaq	464(%rax), %r8
	leaq	1184(%rax), %r9
	leaq	unit_index(%rip), %r10
	movq	%r10, (%rax)
	movabsq	$128849018897, %r10             # imm = 0x1E00000011
	movq	%r10, 12(%rax)
	movl	$13, 20(%rax)
	leaq	s_ascii_pool(%rip), %r10
	movq	%r10, 24(%rax)
	leaq	s_u16_pool(%rip), %r10
	movq	%r10, 32(%rax)
	leaq	s_strings(%rip), %r10
	movq	%r10, 40(%rax)
	movq	%rcx, 48(%rax)
	movq	%rdx, 56(%rax)
	movq	%r8, 64(%rax)
	leaq	s_obj_key_buffer(%rip), %rcx
	movq	%rcx, 72(%rax)
	leaq	s_literal_val_buffer(%rip), %rcx
	movq	%rcx, 88(%rax)
	leaq	s_obj_shape_table(%rip), %rcx
	movq	%rcx, 104(%rax)
	movq	%r9, 120(%rax)
	leaq	s_source_locations(%rip), %rcx
	movq	%rcx, 136(%rax)
	movl	$1, 144(%rax)
	leaq	_0_global(%rip), %rcx
	movq	%rcx, 152(%rax)
	leaq	s_function_info_table(%rip), %rcx
	movq	%rcx, 160(%rax)
	leaq	"??_C@_0M@FCMPBFFB@sh_compiled?$AA@"(%rip), %rcx
	movq	%rcx, 168(%rax)
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_0_global;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90                         # -- Begin function _0_global
_0_global:                              # @_0_global
.seh_proc _0_global
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_sh_model_s22_p8_dbg
	movq	%rsi, %rcx
	callq	_sh_check_native_stack_overflow
	leaq	56(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$12, %r8d
	callq	_sh_enter
	movq	%rax, %rbx
	movl	$3, 64(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rsi,%rax,8), %r14
	leaq	88(%rsp), %r15
	movabsq	$-1688849860263936, %r13        # imm = 0xFFFA000000000000
	movq	%r13, 88(%rsp)
	leaq	96(%rsp), %r12
	movq	%r13, 96(%rsp)
	movq	%r13, 104(%rsp)
	movl	188(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	192(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	196(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	200(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	204(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	208(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	212(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	216(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	220(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	224(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movl	228(%r14), %edx
	movq	%rsi, %rcx
	callq	_sh_ljs_declare_global_var
	movq	%rsi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 88(%rsp)
	movq	%r14, 32(%rsp)
	leaq	_1_indexGenerator(%rip), %r8
	leaq	s_function_info_table+12(%rip), %r9
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	_sh_ljs_create_closure
	movq	%rax, 96(%rsp)
	leaq	256(%r14), %rax
	movl	188(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movq	%r14, 32(%rsp)
	leaq	_2_gradeUp(%rip), %r8
	leaq	s_function_info_table+24(%rip), %r9
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	_sh_ljs_create_closure
	movq	%rax, 96(%rsp)
	leaq	272(%r14), %rax
	movl	192(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movq	%r14, 32(%rsp)
	leaq	_3_random(%rip), %r8
	leaq	s_function_info_table+36(%rip), %r9
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	_sh_ljs_create_closure
	movq	%rax, 96(%rsp)
	leaq	288(%r14), %rax
	movl	208(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movq	%r14, 32(%rsp)
	leaq	_4_deal(%rip), %r8
	leaq	s_function_info_table+48(%rip), %r9
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	_sh_ljs_create_closure
	movq	%rax, 96(%rsp)
	leaq	304(%r14), %rax
	movl	212(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movq	%r14, 32(%rsp)
	leaq	_5_from(%rip), %r8
	leaq	s_function_info_table+60(%rip), %r9
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	_sh_ljs_create_closure
	movq	%rax, 96(%rsp)
	leaq	320(%r14), %rax
	movl	216(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movq	%r14, 32(%rsp)
	leaq	_6_main(%rip), %r8
	leaq	s_function_info_table+72(%rip), %r9
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	_sh_ljs_create_closure
	movq	%rax, 96(%rsp)
	leaq	336(%r14), %rax
	movl	220(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movabsq	$4728057454347157504, %rax      # imm = 0x419D6F3454000000
	movq	%rax, 48(%rsp)
	leaq	352(%r14), %rax
	movl	196(%r14), %r8d
	movq	%rax, 32(%rsp)
	leaq	48(%rsp), %r12
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movabsq	$4741568253304766464, %rax      # imm = 0x41CD6F3458800000
	movq	%rax, 48(%rsp)
	leaq	368(%r14), %rax
	movl	200(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movabsq	$4751297606873776128, %rax      # imm = 0x41EFFFFFFFE00000
	movq	%rax, 48(%rsp)
	leaq	384(%r14), %rax
	movl	204(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movabsq	$4664727558862929920, %rax      # imm = 0x40BC710000000000
	movq	%rax, 48(%rsp)
	leaq	400(%r14), %rax
	movl	224(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	movabsq	$4652007308841189376, %rax      # imm = 0x408F400000000000
	movq	%rax, 48(%rsp)
	leaq	416(%r14), %rax
	movl	228(%r14), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	leaq	464(%r14), %r9
	movl	220(%r14), %r8d
	movq	%rsi, %rcx
	movq	%r15, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 40(%rbx)
	leaq	488(%r14), %r9
	movl	228(%r14), %r8d
	movq	%rsi, %rcx
	movq	%r15, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 24(%rbx)
	movl	224(%r14), %r8d
	addq	$512, %r14                      # imm = 0x200
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r14, %r9
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 16(%rbx)
	movq	%r13, 48(%rsp)
	movq	%r13, 48(%rbx)
	movq	%r13, 32(%rbx)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movl	$2, %r8d
	callq	_sh_ljs_call
	movq	%rax, 88(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_sh_leave
	movq	88(%rsp), %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	_sh_init
	movq	%rax, %rsi
	movq	%rax, %rcx
	callq	init_console_bindings
	leaq	sh_export_this_unit(%rip), %r8
	movq	%rsi, %rcx
	movl	$1, %edx
	callq	_sh_initialize_units
	movl	%eax, %ebx
	movq	%rsi, %rcx
	callq	_sh_done
	xorb	$1, %bl
	movzbl	%bl, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
	.def	_1_indexGenerator;
	.scl	3;
	.type	32;
	.endef
	.globl	__real@3ff0000000000000         # -- Begin function _1_indexGenerator
	.section	.rdata,"dr",discard,__real@3ff0000000000000
	.p2align	3, 0x0
__real@3ff0000000000000:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	4, 0x90
_1_indexGenerator:                      # @_1_indexGenerator
.seh_proc _1_indexGenerator
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$112, %rsp
	.seh_stackalloc 112
	movapd	%xmm6, 96(%rsp)                 # 16-byte Spill
	.seh_savexmm %xmm6, 96
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_sh_check_native_stack_overflow
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	movl	$11, %r8d
	callq	_sh_enter
	movq	%rax, %rdi
	movl	$3, 48(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rsi,%rax,8), %r15
	leaq	72(%rsp), %rbx
	movabsq	$-1688849860263936, %rax        # imm = 0xFFFA000000000000
	movq	%rax, 72(%rsp)
	leaq	80(%rsp), %r14
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	_sh_ljs_param
	movq	%rax, 80(%rsp)
	movq	%rsi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 72(%rsp)
	leaq	536(%r15), %r9
	movl	232(%r15), %r8d
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	_sh_ljs_try_get_by_id_rjs
	movq	%rax, 72(%rsp)
	addq	$560, %r15                      # imm = 0x230
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%rbx, %r8
	movq	%r15, %r9
	callq	_sh_ljs_create_this
	movq	%rax, 88(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rdi)
	movq	%rax, 32(%rdi)
	movq	88(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$1, %r8d
	callq	_sh_ljs_call
	movq	%rax, 72(%rsp)
	shrq	$48, %rax
	cmpl	$65534, %eax                    # imm = 0xFFFE
	ja	.LBB3_2
# %bb.1:
	movq	88(%rsp), %rax
	movq	%rax, 72(%rsp)
.LBB3_2:
	movq	$0, 32(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%r14, %r8
	callq	_sh_ljs_less_rjs
	movq	$0, 32(%rsp)
	testb	%al, %al
	je	.LBB3_5
# %bb.3:
	leaq	32(%rsp), %r15
	movsd	__real@3ff0000000000000(%rip), %xmm6 # xmm6 = [1.0E+0,0.0E+0]
	.p2align	4, 0x90
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	movq	%r15, %r9
	callq	_sh_ljs_put_by_val_loose_rjs
	movsd	32(%rsp), %xmm0                 # xmm0 = mem[0],zero
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	_sh_ljs_less_rjs
	testb	%al, %al
	jne	.LBB3_4
.LBB3_5:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%rdi, %r8
	callq	_sh_leave
	movq	72(%rsp), %rax
	movaps	96(%rsp), %xmm6                 # 16-byte Reload
	addq	$112, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.def	_2_gradeUp;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90                         # -- Begin function _2_gradeUp
_2_gradeUp:                             # @_2_gradeUp
.seh_proc _2_gradeUp
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$232, %rsp
	.seh_stackalloc 232
	.seh_endprologue
	movq	%rcx, %rsi
	movabsq	$-1688849860263936, %rbp        # imm = 0xFFFA000000000000
	callq	_sh_check_native_stack_overflow
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	movl	$14, %r8d
	callq	_sh_enter
	movq	%rax, %rdi
	movl	$16, 48(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rsi,%rax,8), %r13
	movq	%rbp, 72(%rsp)
	movq	%rbp, 80(%rsp)
	movq	%rbp, 88(%rsp)
	movq	%rbp, 96(%rsp)
	leaq	104(%rsp), %rbx
	movq	%rbp, 104(%rsp)
	movq	%rbp, 112(%rsp)
	movq	%rbp, 120(%rsp)
	leaq	128(%rsp), %r14
	movq	%rbp, 128(%rsp)
	movq	%rbp, 136(%rsp)
	movq	%rbp, 144(%rsp)
	movq	%rbp, 152(%rsp)
	movq	%rbp, 160(%rsp)
	movq	%rbp, 168(%rsp)
	movq	%rbp, 176(%rsp)
	movq	%rbp, 184(%rsp)
	movq	%rbp, 192(%rsp)
	movq	%rdi, %rcx
	movl	$2, %edx
	callq	_sh_ljs_param
	movq	%rax, 72(%rsp)
	movq	%rdi, %rcx
	movl	$3, %edx
	callq	_sh_ljs_param
	movq	%rax, 128(%rsp)
	movq	%rdi, %rcx
	movl	$4, %edx
	callq	_sh_ljs_param
	movq	%rax, 104(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	_sh_ljs_less_equal_rjs
	testb	%al, %al
	jne	.LBB4_11
# %bb.1:
	leaq	72(%rsp), %r15
	leaq	80(%rsp), %rbx
	leaq	96(%rsp), %r12
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	_sh_ljs_param
	movq	%rax, 96(%rsp)
	movq	%rsi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 80(%rsp)
	leaq	584(%r13), %r9
	movl	236(%r13), %r8d
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	_sh_ljs_try_get_by_id_rjs
	movq	%rax, 112(%rsp)
	leaq	608(%r13), %r9
	movq	%r13, 208(%rsp)                 # 8-byte Spill
	movl	240(%r13), %r8d
	movq	%rsi, %rcx
	leaq	112(%rsp), %r13
	movq	%r13, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 56(%rdi)
	movq	%rsi, %rcx
	movq	%r14, %rdx
	leaq	104(%rsp), %rbx
	movq	%rbx, %r8
	callq	_sh_ljs_add_rjs
	movq	%rax, 120(%rsp)
	movabsq	$4611686018427387904, %rax      # imm = 0x4000000000000000
	movq	%rax, 200(%rsp)
	leaq	200(%rsp), %r8
	movq	%rsi, %rcx
	leaq	120(%rsp), %rdx
	callq	_sh_ljs_div_rjs
	movq	%rax, 40(%rdi)
	movq	%rbp, 200(%rsp)
	movq	%rbp, 64(%rdi)
	movq	112(%rsp), %rax
	movq	%rax, 48(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, 216(%rsp)                 # 8-byte Spill
	movq	%rdi, %rdx
	movq	%r13, %rdi
	movl	$1, %r8d
	callq	_sh_ljs_call
	movq	%rax, 88(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	leaq	88(%rsp), %r13
	movq	%r13, %r8
	movq	%r15, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 88(%rsp)
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 144(%rsp)
	movq	%rsi, %rcx
	movq	%r14, %rdx
	movq	%rbx, %r8
	callq	_sh_ljs_less_equal_rjs
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movq	%rcx, 224(%rsp)
	movq	104(%rsp), %rcx
	movq	128(%rsp), %rdx
	movq	%rcx, 136(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%rdx, 88(%rsp)
	testb	%al, %al
	je	.LBB4_10
# %bb.2:
	leaq	136(%rsp), %r12
	leaq	152(%rsp), %rbx
	leaq	168(%rsp), %r14
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%r14, %r8
	leaq	176(%rsp), %r9
	callq	_sh_ljs_put_by_val_loose_rjs
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%r12, %r8
	leaq	168(%rsp), %r15
	movq	%r15, %r9
	callq	_sh_ljs_put_by_val_loose_rjs
	movq	%rsi, %rcx
	movq	%r14, %rdx
	leaq	224(%rsp), %rdi
	movq	%rdi, %r8
	callq	_sh_ljs_add_rjs
	movq	%rax, 152(%rsp)
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%rdi, %r8
	callq	_sh_ljs_sub_rjs
	movq	%rax, 160(%rsp)
	movq	%r14, %rdi
	movq	%r15, %r14
	movq	%rbp, %r15
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	leaq	160(%rsp), %r8
	callq	_sh_ljs_less_equal_rjs
	movq	152(%rsp), %rcx
	movq	160(%rsp), %rdx
	movq	%rdx, 136(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%rcx, 88(%rsp)
	testb	%al, %al
	je	.LBB4_10
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%rdi, %r8
	movq	%r15, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 168(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r12, %r8
	movq	%r15, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 176(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rbp
	movq	%rbx, %r15
	leaq	96(%rsp), %rbx
	movq	%rbx, %rdx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 152(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	leaq	144(%rsp), %r13
	movq	%r13, %r8
	callq	_sh_ljs_greater_equal_rjs
	movq	%rdi, %r14
	movl	%eax, %edi
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	leaq	176(%rsp), %r8
	movq	%rbx, %r9
	movq	%r15, %rbx
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 152(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r13, %r8
	callq	_sh_ljs_less_equal_rjs
	testb	%al, %dil
	jne	.LBB4_8
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	movl	%eax, %r13d
	movq	%rbp, %r15
	leaq	168(%rsp), %rbp
	movq	112(%rsp), %rax
	movq	%rax, 184(%rsp)
	testb	%dil, %dil
	movq	%r14, %rdi
	jne	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	_sh_ljs_inc_rjs
	movq	%rax, 184(%rsp)
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movq	136(%rsp), %rcx
	movq	%rcx, 160(%rsp)
	movq	%rax, 152(%rsp)
	testb	$1, %r13b
	movq	%rbp, %r14
	jne	.LBB4_9
# %bb.7:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rsi, %rcx
	movq	%r12, %rdx
	callq	_sh_ljs_dec_rjs
	movq	%rax, 160(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 152(%rsp)
	jmp	.LBB4_9
.LBB4_10:
	movq	208(%rsp), %r14                 # 8-byte Reload
	leaq	632(%r14), %r9
	movl	192(%r14), %r8d
	movq	%rsi, %rcx
	leaq	80(%rsp), %r15
	movq	%r15, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movabsq	$-1688849860263936, %rbx        # imm = 0xFFFA000000000000
	movq	%rbx, 64(%rdi)
	movq	%rbx, 48(%rdi)
	movq	96(%rsp), %rax
	movq	%rax, 40(%rdi)
	movq	72(%rsp), %rax
	movq	%rax, 32(%rdi)
	movq	128(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	120(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$4, %r8d
	callq	_sh_ljs_call
	movq	%rax, 112(%rsp)
	movl	192(%r14), %r8d
	addq	$656, %r14                      # imm = 0x290
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%r14, %r9
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%rbx, 48(%rdi)
	movq	96(%rsp), %rax
	movq	%rax, 40(%rdi)
	movq	72(%rsp), %rax
	movq	%rax, 32(%rdi)
	movq	88(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	104(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$4, %r8d
	callq	_sh_ljs_call
	movq	%rax, 80(%rsp)
.LBB4_11:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%rdi, %r8
	callq	_sh_leave
	movq	72(%rsp), %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.def	_3_random;
	.scl	3;
	.type	32;
	.endef
	.globl	__real@40e20d2000000000         # -- Begin function _3_random
	.section	.rdata,"dr",discard,__real@40e20d2000000000
	.p2align	3, 0x0
__real@40e20d2000000000:
	.quad	0x40e20d2000000000              # double 36969
	.globl	__real@40d1940000000000
	.section	.rdata,"dr",discard,__real@40d1940000000000
	.p2align	3, 0x0
__real@40d1940000000000:
	.quad	0x40d1940000000000              # double 18000
	.text
	.p2align	4, 0x90
_3_random:                              # @_3_random
.seh_proc _3_random
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_sh_check_native_stack_overflow
	leaq	64(%rsp), %rdx
	movq	%rsi, %rcx
	movl	$2, %r8d
	callq	_sh_enter
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	$2, 72(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rsi,%rax,8), %r15
	leaq	96(%rsp), %r14
	movabsq	$-1688849860263936, %rax        # imm = 0xFFFA000000000000
	movq	%rax, 96(%rsp)
	leaq	104(%rsp), %r13
	movq	%rax, 104(%rsp)
	movq	%rsi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 96(%rsp)
	leaq	680(%r15), %r9
	movl	200(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 104(%rsp)
	movabsq	$4679239875398991872, %rax      # imm = 0x40EFFFE000000000
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %r12
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%r12, %r8
	callq	_sh_ljs_bit_and_rjs
	movq	%rax, %rbp
	leaq	704(%r15), %r9
	movl	200(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 104(%rsp)
	movabsq	$4625196817309499392, %rax      # imm = 0x4030000000000000
	movq	%rax, 56(%rsp)
	leaq	56(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%rdi, %r8
	callq	_sh_ljs_right_shift_rjs
	movq	%rax, %rbx
	leaq	728(%r15), %r9
	movl	204(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rbp, %xmm0
	mulsd	__real@40e20d2000000000(%rip), %xmm0
	movq	%rax, 104(%rsp)
	movq	%rbx, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
	leaq	40(%rsp), %rbp
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%r13, %r8
	callq	_sh_ljs_bit_and_rjs
	movq	%rax, 40(%rsp)
	leaq	432(%r15), %rax
	movl	200(%r15), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r14, %rdx
	movq	%rbp, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	leaq	752(%r15), %r9
	movl	196(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 104(%rsp)
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%r12, %r8
	callq	_sh_ljs_bit_and_rjs
	movq	%rax, %rbx
	leaq	776(%r15), %r9
	movl	196(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 104(%rsp)
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%rdi, %r8
	callq	_sh_ljs_right_shift_rjs
	movq	%rax, %r12
	leaq	800(%r15), %r9
	movl	204(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rbx, %xmm0
	mulsd	__real@40d1940000000000(%rip), %xmm0
	movq	%rax, 104(%rsp)
	movq	%r12, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%r13, %r8
	callq	_sh_ljs_bit_and_rjs
	movq	%rax, 40(%rsp)
	leaq	448(%r15), %rax
	movl	196(%r15), %r8d
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r14, %rdx
	movq	%rbp, %r9
	callq	_sh_ljs_put_by_id_loose_rjs
	leaq	824(%r15), %r9
	movl	200(%r15), %r8d
	movq	%rsi, %rcx
	movq	%r14, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 104(%rsp)
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%rdi, %r8
	callq	_sh_ljs_left_shift_rjs
	movq	%rax, %rdi
	movl	196(%r15), %r8d
	addq	$848, %r15                      # imm = 0x350
	movq	%rsi, %rcx
	movq	%r14, %rdx
	movq	%r15, %r9
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 96(%rsp)
	movq	%rsi, %rcx
	movq	%r14, %rdx
	leaq	48(%rsp), %rbx
	movq	%rbx, %r8
	callq	_sh_ljs_bit_and_rjs
	movabsq	$4751297606875873280, %rcx      # imm = 0x41F0000000000000
	movq	%rcx, 56(%rsp)
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movq	%rcx, 40(%rsp)
	movq	%rdi, %xmm0
	movq	%rax, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%rbp, %r8
	callq	_sh_ljs_unsigned_right_shift_rjs
	movq	%rax, %xmm0
	divsd	56(%rsp), %xmm0
	movsd	%xmm0, 48(%rsp)
	movq	%rsi, %rcx
	leaq	64(%rsp), %rdx
	movq	112(%rsp), %r8                  # 8-byte Reload
	callq	_sh_leave
	movq	48(%rsp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.def	_4_deal;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90                         # -- Begin function _4_deal
_4_deal:                                # @_4_deal
.seh_proc _4_deal
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$216, %rsp
	.seh_stackalloc 216
	movapd	%xmm6, 192(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm6, 192
	.seh_endprologue
	movq	%rcx, %rsi
	movabsq	$-1688849860263936, %r15        # imm = 0xFFFA000000000000
	callq	_sh_check_native_stack_overflow
	leaq	56(%rsp), %rdx
	movq	%rsi, %rcx
	movl	$12, %r8d
	callq	_sh_enter
	movq	%rax, %rdi
	movl	$8, 64(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rsi,%rax,8), %rbx
	leaq	88(%rsp), %r13
	movq	%r15, 88(%rsp)
	movq	%r15, 96(%rsp)
	leaq	104(%rsp), %r12
	movq	%r15, 104(%rsp)
	movq	%r15, 112(%rsp)
	movq	%r15, 120(%rsp)
	movq	%r15, 128(%rsp)
	movq	%r15, 136(%rsp)
	movq	%r15, 144(%rsp)
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	_sh_ljs_param
	movq	%rax, 112(%rsp)
	movq	%rdi, %rcx
	movl	$2, %edx
	callq	_sh_ljs_param
	movq	%rax, 104(%rsp)
	movq	%rsi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 88(%rsp)
	leaq	872(%rbx), %r9
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movl	188(%rbx), %r8d
	movq	%rsi, %rcx
	movq	%r13, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 40(%rdi)
	movq	%r15, 48(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, %r15
	movq	112(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$1, %r8d
	callq	_sh_ljs_call
	movq	%rax, 96(%rsp)
	movq	$0, 184(%rsp)
	leaq	184(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%r12, %r8
	callq	_sh_ljs_less_rjs
	movzbl	%al, %eax
	orq	$-20, %rax
	shlq	$46, %rax
	movq	%rax, 48(%rsp)
	movq	$0, 40(%rsp)
	btq	$46, %rax
	jae	.LBB6_3
# %bb.1:
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	896(%rcx), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	leaq	920(%rcx), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	leaq	944(%rcx), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leaq	968(%rcx), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movsd	__real@3ff0000000000000(%rip), %xmm6 # xmm6 = [1.0E+0,0.0E+0]
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movl	236(%rbx), %r8d
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	176(%rsp), %r9                  # 8-byte Reload
	callq	_sh_ljs_try_get_by_id_rjs
	movq	%rax, 128(%rsp)
	movl	240(%rbx), %r8d
	movq	%rsi, %rcx
	leaq	128(%rsp), %rdx
	movq	168(%rsp), %r9                  # 8-byte Reload
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 120(%rsp)
	movl	236(%rbx), %r8d
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	160(%rsp), %r9                  # 8-byte Reload
	callq	_sh_ljs_try_get_by_id_rjs
	movq	%rax, 144(%rsp)
	movl	208(%rbx), %r8d
	movq	%rsi, %rcx
	leaq	144(%rsp), %rdx
	movq	152(%rsp), %r9                  # 8-byte Reload
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 40(%rdi)
	movabsq	$-1688849860263936, %r12        # imm = 0xFFFA000000000000
	movq	%r12, 48(%rdi)
	movq	144(%rsp), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	xorl	%r8d, %r8d
	callq	_sh_ljs_call
	movq	%rax, 136(%rsp)
	movq	%rsi, %rcx
	leaq	112(%rsp), %rdx
	leaq	40(%rsp), %rbx
	movq	%rbx, %r8
	callq	_sh_ljs_sub_rjs
	movq	%rax, 48(%rsp)
	movq	%rsi, %rcx
	leaq	136(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_sh_ljs_mul_rjs
	movq	%rax, 24(%rdi)
	movq	%r12, 48(%rdi)
	movq	120(%rsp), %rax
	movq	%rax, 40(%rdi)
	movq	128(%rsp), %rax
	movq	%rax, 32(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$1, %r8d
	callq	_sh_ljs_call
	movq	%rax, 120(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	leaq	120(%rsp), %r12
	movq	%r12, %r8
	callq	_sh_ljs_add_rjs
	movq	%rax, 128(%rsp)
	movq	%rsi, %rcx
	leaq	96(%rsp), %rbp
	movq	%rbp, %rdx
	movq	%rbx, %r8
	movq	%rbp, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 120(%rsp)
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	leaq	128(%rsp), %r14
	movq	%r14, %r8
	movq	%rbp, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 136(%rsp)
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %r8
	leaq	136(%rsp), %r9
	callq	_sh_ljs_put_by_val_loose_rjs
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%r14, %r8
	movq	%r12, %r9
	callq	_sh_ljs_put_by_val_loose_rjs
	movsd	40(%rsp), %xmm0                 # xmm0 = mem[0],zero
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 40(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r15, %r8
	callq	_sh_ljs_less_rjs
	testb	%al, %al
	movabsq	$-1407374883553280, %rax        # imm = 0xFFFB000000000000
	movabsq	$-1337006139375616, %rcx        # imm = 0xFFFB400000000000
	cmovneq	%rcx, %rax
	movq	%rax, 48(%rsp)
	movabsq	$70368744177664, %rcx           # imm = 0x400000000000
	testq	%rcx, %rax
	jne	.LBB6_2
.LBB6_3:
	movq	32(%rsp), %r9                   # 8-byte Reload
	movl	244(%r9), %r8d
	addq	$992, %r9                       # imm = 0x3E0
	movq	%rsi, %rcx
	leaq	96(%rsp), %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 40(%rdi)
	movabsq	$-1688849860263936, %rax        # imm = 0xFFFA000000000000
	movq	%rax, 48(%rdi)
	movq	96(%rsp), %rax
	movq	%rax, 32(%rdi)
	movq	$0, 24(%rdi)
	movq	104(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movl	$2, %r8d
	callq	_sh_ljs_call
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%rdi, %r8
	callq	_sh_leave
	movq	88(%rsp), %rax
	movaps	192(%rsp), %xmm6                # 16-byte Reload
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.def	_5_from;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90                         # -- Begin function _5_from
_5_from:                                # @_5_from
.seh_proc _5_from
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$168, %rsp
	.seh_stackalloc 168
	movapd	%xmm6, 144(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm6, 144
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_sh_check_native_stack_overflow
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	movl	$11, %r8d
	callq	_sh_enter
	movq	%rax, %r14
	movl	$7, 56(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rsi,%rax,8), %rdi
	leaq	80(%rsp), %rbx
	movabsq	$-1688849860263936, %rax        # imm = 0xFFFA000000000000
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rax, 96(%rsp)
	leaq	104(%rsp), %r15
	movq	%rax, 104(%rsp)
	leaq	112(%rsp), %r12
	movq	%rax, 112(%rsp)
	movq	%rax, 120(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r14, %rcx
	movl	$1, %edx
	callq	_sh_ljs_param
	movq	%rax, 112(%rsp)
	movq	%r14, %rcx
	movl	$2, %edx
	callq	_sh_ljs_param
	movq	%rax, 104(%rsp)
	leaq	1016(%rdi), %r9
	movl	224(%rdi), %r8d
	movq	%rsi, %rcx
	movq	%r12, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 96(%rsp)
	leaq	1040(%rdi), %r9
	movl	224(%rdi), %r8d
	movq	%rsi, %rcx
	movq	%r15, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 88(%rsp)
	movq	%rsi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 80(%rsp)
	leaq	1064(%rdi), %r9
	movl	232(%rdi), %r8d
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	_sh_ljs_try_get_by_id_rjs
	movq	%rax, 80(%rsp)
	addq	$1088, %rdi                     # imm = 0x440
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%rbx, %r8
	movq	%rdi, %r9
	callq	_sh_ljs_create_this
	movq	%rax, 120(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 40(%r14)
	movq	%rax, 32(%r14)
	movq	120(%rsp), %rax
	movq	%rax, 24(%r14)
	movq	96(%rsp), %rax
	movq	%rax, 16(%r14)
	movq	%rsi, %rcx
	movq	%r14, 136(%rsp)                 # 8-byte Spill
	movq	%r14, %rdx
	movl	$1, %r8d
	callq	_sh_ljs_call
	movq	%rax, 80(%rsp)
	shrq	$48, %rax
	cmpl	$65534, %eax                    # imm = 0xFFFE
	ja	.LBB7_2
# %bb.1:
	movq	120(%rsp), %rax
	movq	%rax, 80(%rsp)
.LBB7_2:
	movq	$0, 40(%rsp)
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	leaq	96(%rsp), %r8
	callq	_sh_ljs_less_rjs
	movq	$0, 32(%rsp)
	testb	%al, %al
	je	.LBB7_7
# %bb.3:
	leaq	120(%rsp), %rbp
	leaq	32(%rsp), %r13
	leaq	40(%rsp), %r14
	movsd	__real@3ff0000000000000(%rip), %xmm6 # xmm6 = [1.0E+0,0.0E+0]
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	movq	%rax, 120(%rsp)
	movq	%rsi, %rcx
	movq	%r15, %rdx
	movq	%rbp, %r8
	movq	%r15, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 120(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%r13, %r8
	movq	%rbp, %r9
	callq	_sh_ljs_put_by_val_loose_rjs
	movsd	32(%rsp), %xmm0                 # xmm0 = mem[0],zero
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rsi, %rcx
	movq	%r13, %rdx
	leaq	96(%rsp), %r8
	callq	_sh_ljs_less_rjs
	testb	%al, %al
	je	.LBB7_7
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 120(%rsp)
	movq	%rsi, %rcx
	movq	%rbp, %rdx
	movq	%r14, %r8
	callq	_sh_ljs_greater_equal_rjs
	movl	%eax, %edi
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	_sh_ljs_get_by_val_with_receiver_rjs
	movq	%rax, 128(%rsp)
	testb	%dil, %dil
	jne	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	movq	%rsi, %rcx
	leaq	88(%rsp), %rdx
	leaq	128(%rsp), %r8
	callq	_sh_ljs_add_rjs
	jmp	.LBB7_6
.LBB7_7:
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	movq	136(%rsp), %r8                  # 8-byte Reload
	callq	_sh_leave
	movq	80(%rsp), %rax
	movaps	144(%rsp), %xmm6                # 16-byte Reload
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.def	_6_main;
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90                         # -- Begin function _6_main
_6_main:                                # @_6_main
.seh_proc _6_main
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, %rdi
	movabsq	$-1688849860263936, %rsi        # imm = 0xFFFA000000000000
	callq	_sh_check_native_stack_overflow
	leaq	48(%rsp), %rdx
	movq	%rdi, %rcx
	movl	$14, %r8d
	callq	_sh_enter
	movq	%rax, %rbx
	movl	$6, 56(%rsp)
	movl	unit_index(%rip), %eax
	movq	8(%rdi,%rax,8), %r14
	movq	%rsi, 80(%rsp)
	movq	%rsi, 88(%rsp)
	leaq	96(%rsp), %r15
	movq	%rsi, 96(%rsp)
	movq	%rsi, 104(%rsp)
	leaq	112(%rsp), %r12
	movq	%rsi, 112(%rsp)
	movq	%rsi, 120(%rsp)
	movq	%rbx, %rcx
	movl	$1, %edx
	callq	_sh_ljs_param
	movq	%rax, 112(%rsp)
	movq	%rbx, %rcx
	movl	$2, %edx
	callq	_sh_ljs_param
	movq	%rax, 104(%rsp)
	movq	%rdi, %rcx
	callq	_sh_ljs_get_global_object
	movq	%rax, 96(%rsp)
	leaq	1112(%r14), %r9
	movl	212(%r14), %r8d
	movq	%rdi, %rcx
	movq	%r15, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 56(%rbx)
	movq	%rsi, 64(%rbx)
	movq	%rsi, 48(%rbx)
	movq	104(%rsp), %rax
	movq	%rax, 40(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	movl	$2, %r8d
	callq	_sh_ljs_call
	movq	%rax, 88(%rsp)
	leaq	1136(%r14), %r9
	movl	188(%r14), %r8d
	movq	%rdi, %rcx
	movq	%r15, %rdx
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 56(%rbx)
	movq	%rsi, 64(%rbx)
	movq	%rsi, 48(%rbx)
	movq	104(%rsp), %rax
	movq	%rax, 40(%rbx)
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	movl	$1, %r8d
	callq	_sh_ljs_call
	movq	%rax, 80(%rsp)
	movq	$0, 128(%rsp)
	leaq	128(%rsp), %rdx
	movq	%rdi, %rcx
	movq	%r12, %r8
	callq	_sh_ljs_less_rjs
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	movq	%rcx, 40(%rsp)
	movq	$0, 32(%rsp)
	testb	%al, %al
	je	.LBB8_3
# %bb.1:
	leaq	104(%rsp), %r12
	leaq	1160(%r14), %r13
	leaq	40(%rsp), %rbp
	leaq	32(%rsp), %r15
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movl	192(%r14), %r8d
	movq	%rdi, %rcx
	leaq	96(%rsp), %rdx
	movq	%r13, %r9
	callq	_sh_ljs_get_by_id_rjs
	movq	%rax, 56(%rbx)
	movq	%rdi, %rcx
	movq	%r12, %rdx
	movq	%rbp, %r8
	callq	_sh_ljs_sub_rjs
	movq	%rax, 16(%rbx)
	movq	%rsi, 64(%rbx)
	movq	%rsi, 48(%rbx)
	movq	88(%rsp), %rax
	movq	%rax, 40(%rbx)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rbx)
	movq	$0, 24(%rbx)
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	movl	$4, %r8d
	callq	_sh_ljs_call
	movq	%rax, 120(%rsp)
	movsd	32(%rsp), %xmm0                 # xmm0 = mem[0],zero
	addsd	40(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movq	%rdi, %rcx
	movq	%r15, %rdx
	leaq	112(%rsp), %r8
	callq	_sh_ljs_less_rjs
	testb	%al, %al
	jne	.LBB8_2
.LBB8_3:
	leaq	48(%rsp), %rdx
	movq	%rdi, %rcx
	movq	%rbx, %r8
	callq	_sh_leave
	movq	%rsi, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
	.seh_endproc
                                        # -- End function
	.lcomm	unit_index,4,4                  # @unit_index
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # @s_ascii_pool
s_ascii_pool:
	.asciz	"\000indexGenerator\000gradeUp\000m_w\000m_z\000mask\000random\000deal\000from\000main\000length\000n\000Array\000Math\000floor\000slice\000global"

	.p2align	1, 0x0                          # @s_u16_pool
s_u16_pool:

	.p2align	4, 0x0                          # @s_strings
s_strings:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	14                              # 0xe
	.long	3220080673                      # 0xbfee8821
	.long	16                              # 0x10
	.long	7                               # 0x7
	.long	3471231487                      # 0xcee6c9ff
	.long	24                              # 0x18
	.long	3                               # 0x3
	.long	1511607713                      # 0x5a194da1
	.long	28                              # 0x1c
	.long	3                               # 0x3
	.long	1511618894                      # 0x5a19794e
	.long	32                              # 0x20
	.long	4                               # 0x4
	.long	1076373220                      # 0x402826e4
	.long	37                              # 0x25
	.long	6                               # 0x6
	.long	1344420634                      # 0x50223b1a
	.long	44                              # 0x2c
	.long	4                               # 0x4
	.long	297012221                       # 0x11b40bfd
	.long	49                              # 0x31
	.long	4                               # 0x4
	.long	3941611110                      # 0xeaf03666
	.long	54                              # 0x36
	.long	4                               # 0x4
	.long	1099767270                      # 0x418d1de6
	.long	59                              # 0x3b
	.long	6                               # 0x6
	.long	363462486                       # 0x15a9ff56
	.long	66                              # 0x42
	.long	1                               # 0x1
	.long	114319                          # 0x1be8f
	.long	68                              # 0x44
	.long	5                               # 0x5
	.long	3111565995                      # 0xb976baab
	.long	74                              # 0x4a
	.long	4                               # 0x4
	.long	471344224                       # 0x1c182460
	.long	79                              # 0x4f
	.long	5                               # 0x5
	.long	1110891740                      # 0x4236dcdc
	.long	85                              # 0x55
	.long	5                               # 0x5
	.long	377550857                       # 0x1680f809
	.long	91                              # 0x5b
	.long	6                               # 0x6
	.long	615793799                       # 0x24b44487

	.lcomm	s_obj_key_buffer,1              # @s_obj_key_buffer
	.lcomm	s_literal_val_buffer,1          # @s_literal_val_buffer
	.p2align	2, 0x0                          # @s_obj_shape_table
s_obj_shape_table:

	.p2align	2, 0x0                          # @s_source_locations
s_source_locations:
	.zero	12

	.data
	.p2align	4, 0x0                          # @s_function_info_table
s_function_info_table:
	.long	16                              # 0x10
	.long	0                               # 0x0
	.byte	8                               # 0x8
	.zero	3
	.long	1                               # 0x1
	.long	1                               # 0x1
	.byte	8                               # 0x8
	.zero	3
	.long	2                               # 0x2
	.long	4                               # 0x4
	.byte	8                               # 0x8
	.zero	3
	.long	6                               # 0x6
	.long	0                               # 0x0
	.byte	8                               # 0x8
	.zero	3
	.long	7                               # 0x7
	.long	2                               # 0x2
	.byte	8                               # 0x8
	.zero	3
	.long	8                               # 0x8
	.long	2                               # 0x2
	.byte	8                               # 0x8
	.zero	3
	.long	9                               # 0x9
	.long	2                               # 0x2
	.byte	8                               # 0x8
	.zero	3

	.section	.rdata,"dr",discard,"??_C@_0M@FCMPBFFB@sh_compiled?$AA@"
	.globl	"??_C@_0M@FCMPBFFB@sh_compiled?$AA@" # @"??_C@_0M@FCMPBFFB@sh_compiled?$AA@"
"??_C@_0M@FCMPBFFB@sh_compiled?$AA@":
	.asciz	"sh_compiled"

	.addrsig
	.addrsig_sym sh_export_this_unit
	.addrsig_sym _0_global
	.addrsig_sym _1_indexGenerator
	.addrsig_sym _2_gradeUp
	.addrsig_sym _3_random
	.addrsig_sym _4_deal
	.addrsig_sym _5_from
	.addrsig_sym _6_main
	.addrsig_sym unit_index
	.addrsig_sym s_ascii_pool
	.addrsig_sym s_u16_pool
	.addrsig_sym s_strings
	.addrsig_sym s_obj_key_buffer
	.addrsig_sym s_literal_val_buffer
	.addrsig_sym s_obj_shape_table
	.addrsig_sym s_source_locations
	.addrsig_sym s_function_info_table
	.globl	_fltused
