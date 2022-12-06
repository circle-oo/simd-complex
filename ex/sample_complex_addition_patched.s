	.file	"sample_complex_addition.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"(%d+%di)+(%d+%di) = (%d+%di)\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	li	a5,1
	sw	a5,-24(s0)
	li	a5,2
	sw	a5,-20(s0)
	li	a5,3
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	.word 0xf7078b
	/* addc a5, a5, a4 */
	sd	a5,-40(s0)
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	lw	a3,-32(s0)
	lw	a4,-28(s0)
	lw	a5,-40(s0)
	lw	a0,-36(s0)
	mv	a6,a0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (SiFive GCC 10.1.0-2020.08.2) 10.1.0"
