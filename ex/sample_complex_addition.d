
sample_complex_addition:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00003517          	auipc	a0,0x3
   100bc:	4c850513          	addi	a0,a0,1224 # 13580 <__libc_fini_array>
   100c0:	2550c06f          	j	1cb14 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00014197          	auipc	gp,0x14
   100cc:	31818193          	addi	gp,gp,792 # 243e0 <__global_pointer$>
   100d0:	77018513          	addi	a0,gp,1904 # 24b50 <_PathLocale>
   100d4:	00015617          	auipc	a2,0x15
   100d8:	b0c60613          	addi	a2,a2,-1268 # 24be0 <__BSS_END__>
   100dc:	40a60633          	sub	a2,a2,a0
   100e0:	00000593          	li	a1,0
   100e4:	1e0000ef          	jal	ra,102c4 <memset>
   100e8:	0000d517          	auipc	a0,0xd
   100ec:	a2c50513          	addi	a0,a0,-1492 # 1cb14 <atexit>
   100f0:	00050863          	beqz	a0,10100 <_start+0x38>
   100f4:	00003517          	auipc	a0,0x3
   100f8:	48c50513          	addi	a0,a0,1164 # 13580 <__libc_fini_array>
   100fc:	2190c0ef          	jal	ra,1cb14 <atexit>
   10100:	130000ef          	jal	ra,10230 <__libc_init_array>
   10104:	00012503          	lw	a0,0(sp)
   10108:	00810593          	addi	a1,sp,8
   1010c:	00000613          	li	a2,0
   10110:	070000ef          	jal	ra,10180 <main>
   10114:	0ec0006f          	j	10200 <exit>

0000000000010118 <__do_global_dtors_aux>:
   10118:	ff010113          	addi	sp,sp,-16
   1011c:	00813023          	sd	s0,0(sp)
   10120:	7a018413          	addi	s0,gp,1952 # 24b80 <completed.1>
   10124:	00044783          	lbu	a5,0(s0)
   10128:	00113423          	sd	ra,8(sp)
   1012c:	02079263          	bnez	a5,10150 <__do_global_dtors_aux+0x38>
   10130:	00000793          	li	a5,0
   10134:	00078a63          	beqz	a5,10148 <__do_global_dtors_aux+0x30>
   10138:	00014517          	auipc	a0,0x14
   1013c:	8a050513          	addi	a0,a0,-1888 # 239d8 <__FRAME_END__>
   10140:	00000097          	auipc	ra,0x0
   10144:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10148:	00100793          	li	a5,1
   1014c:	00f40023          	sb	a5,0(s0)
   10150:	00813083          	ld	ra,8(sp)
   10154:	00013403          	ld	s0,0(sp)
   10158:	01010113          	addi	sp,sp,16
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	7a818593          	addi	a1,gp,1960 # 24b88 <object.0>
   1016c:	00014517          	auipc	a0,0x14
   10170:	86c50513          	addi	a0,a0,-1940 # 239d8 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	03010413          	addi	s0,sp,48
   10190:	00100793          	li	a5,1
   10194:	fef42423          	sw	a5,-24(s0)
   10198:	00200793          	li	a5,2
   1019c:	fef42623          	sw	a5,-20(s0)
   101a0:	00300793          	li	a5,3
   101a4:	fef42023          	sw	a5,-32(s0)
   101a8:	00100793          	li	a5,1
   101ac:	fef42223          	sw	a5,-28(s0)
   101b0:	fe843703          	ld	a4,-24(s0)
   101b4:	fe043783          	ld	a5,-32(s0)
   101b8:	00f707b3          	add	a5,a4,a5
   101bc:	fcf43c23          	sd	a5,-40(s0)
   101c0:	fe842583          	lw	a1,-24(s0)
   101c4:	fec42603          	lw	a2,-20(s0)
   101c8:	fe042683          	lw	a3,-32(s0)
   101cc:	fe442703          	lw	a4,-28(s0)
   101d0:	fd842783          	lw	a5,-40(s0)
   101d4:	fdc42503          	lw	a0,-36(s0)
   101d8:	00050813          	mv	a6,a0
   101dc:	00022537          	lui	a0,0x22
   101e0:	bb050513          	addi	a0,a0,-1104 # 21bb0 <__clzdi2+0x40>
   101e4:	1fc000ef          	jal	ra,103e0 <printf>
   101e8:	00000793          	li	a5,0
   101ec:	00078513          	mv	a0,a5
   101f0:	02813083          	ld	ra,40(sp)
   101f4:	02013403          	ld	s0,32(sp)
   101f8:	03010113          	addi	sp,sp,48
   101fc:	00008067          	ret

0000000000010200 <exit>:
   10200:	ff010113          	addi	sp,sp,-16
   10204:	00000593          	li	a1,0
   10208:	00813023          	sd	s0,0(sp)
   1020c:	00113423          	sd	ra,8(sp)
   10210:	00050413          	mv	s0,a0
   10214:	365020ef          	jal	ra,12d78 <__call_exitprocs>
   10218:	7481b503          	ld	a0,1864(gp) # 24b28 <_global_impure_ptr>
   1021c:	05853783          	ld	a5,88(a0)
   10220:	00078463          	beqz	a5,10228 <exit+0x28>
   10224:	000780e7          	jalr	a5
   10228:	00040513          	mv	a0,s0
   1022c:	0d50f0ef          	jal	ra,1fb00 <_exit>

0000000000010230 <__libc_init_array>:
   10230:	fe010113          	addi	sp,sp,-32
   10234:	00813823          	sd	s0,16(sp)
   10238:	01213023          	sd	s2,0(sp)
   1023c:	00013417          	auipc	s0,0x13
   10240:	7a040413          	addi	s0,s0,1952 # 239dc <__preinit_array_end>
   10244:	00013917          	auipc	s2,0x13
   10248:	79890913          	addi	s2,s2,1944 # 239dc <__preinit_array_end>
   1024c:	40890933          	sub	s2,s2,s0
   10250:	00113c23          	sd	ra,24(sp)
   10254:	00913423          	sd	s1,8(sp)
   10258:	40395913          	srai	s2,s2,0x3
   1025c:	00090e63          	beqz	s2,10278 <__libc_init_array+0x48>
   10260:	00000493          	li	s1,0
   10264:	00043783          	ld	a5,0(s0)
   10268:	00148493          	addi	s1,s1,1
   1026c:	00840413          	addi	s0,s0,8
   10270:	000780e7          	jalr	a5
   10274:	fe9918e3          	bne	s2,s1,10264 <__libc_init_array+0x34>
   10278:	00013417          	auipc	s0,0x13
   1027c:	76840413          	addi	s0,s0,1896 # 239e0 <__init_array_start>
   10280:	00013917          	auipc	s2,0x13
   10284:	77090913          	addi	s2,s2,1904 # 239f0 <__do_global_dtors_aux_fini_array_entry>
   10288:	40890933          	sub	s2,s2,s0
   1028c:	40395913          	srai	s2,s2,0x3
   10290:	00090e63          	beqz	s2,102ac <__libc_init_array+0x7c>
   10294:	00000493          	li	s1,0
   10298:	00043783          	ld	a5,0(s0)
   1029c:	00148493          	addi	s1,s1,1
   102a0:	00840413          	addi	s0,s0,8
   102a4:	000780e7          	jalr	a5
   102a8:	fe9918e3          	bne	s2,s1,10298 <__libc_init_array+0x68>
   102ac:	01813083          	ld	ra,24(sp)
   102b0:	01013403          	ld	s0,16(sp)
   102b4:	00813483          	ld	s1,8(sp)
   102b8:	00013903          	ld	s2,0(sp)
   102bc:	02010113          	addi	sp,sp,32
   102c0:	00008067          	ret

00000000000102c4 <memset>:
   102c4:	00f00313          	li	t1,15
   102c8:	00050713          	mv	a4,a0
   102cc:	02c37a63          	bgeu	t1,a2,10300 <memset+0x3c>
   102d0:	00f77793          	andi	a5,a4,15
   102d4:	0a079063          	bnez	a5,10374 <memset+0xb0>
   102d8:	06059e63          	bnez	a1,10354 <memset+0x90>
   102dc:	ff067693          	andi	a3,a2,-16
   102e0:	00f67613          	andi	a2,a2,15
   102e4:	00e686b3          	add	a3,a3,a4
   102e8:	00b73023          	sd	a1,0(a4)
   102ec:	00b73423          	sd	a1,8(a4)
   102f0:	01070713          	addi	a4,a4,16
   102f4:	fed76ae3          	bltu	a4,a3,102e8 <memset+0x24>
   102f8:	00061463          	bnez	a2,10300 <memset+0x3c>
   102fc:	00008067          	ret
   10300:	40c306b3          	sub	a3,t1,a2
   10304:	00269693          	slli	a3,a3,0x2
   10308:	00000297          	auipc	t0,0x0
   1030c:	005686b3          	add	a3,a3,t0
   10310:	00c68067          	jr	12(a3)
   10314:	00b70723          	sb	a1,14(a4)
   10318:	00b706a3          	sb	a1,13(a4)
   1031c:	00b70623          	sb	a1,12(a4)
   10320:	00b705a3          	sb	a1,11(a4)
   10324:	00b70523          	sb	a1,10(a4)
   10328:	00b704a3          	sb	a1,9(a4)
   1032c:	00b70423          	sb	a1,8(a4)
   10330:	00b703a3          	sb	a1,7(a4)
   10334:	00b70323          	sb	a1,6(a4)
   10338:	00b702a3          	sb	a1,5(a4)
   1033c:	00b70223          	sb	a1,4(a4)
   10340:	00b701a3          	sb	a1,3(a4)
   10344:	00b70123          	sb	a1,2(a4)
   10348:	00b700a3          	sb	a1,1(a4)
   1034c:	00b70023          	sb	a1,0(a4)
   10350:	00008067          	ret
   10354:	0ff5f593          	andi	a1,a1,255
   10358:	00859693          	slli	a3,a1,0x8
   1035c:	00d5e5b3          	or	a1,a1,a3
   10360:	01059693          	slli	a3,a1,0x10
   10364:	00d5e5b3          	or	a1,a1,a3
   10368:	02059693          	slli	a3,a1,0x20
   1036c:	00d5e5b3          	or	a1,a1,a3
   10370:	f6dff06f          	j	102dc <memset+0x18>
   10374:	00279693          	slli	a3,a5,0x2
   10378:	00000297          	auipc	t0,0x0
   1037c:	005686b3          	add	a3,a3,t0
   10380:	00008293          	mv	t0,ra
   10384:	f98680e7          	jalr	-104(a3)
   10388:	00028093          	mv	ra,t0
   1038c:	ff078793          	addi	a5,a5,-16
   10390:	40f70733          	sub	a4,a4,a5
   10394:	00f60633          	add	a2,a2,a5
   10398:	f6c374e3          	bgeu	t1,a2,10300 <memset+0x3c>
   1039c:	f3dff06f          	j	102d8 <memset+0x14>

00000000000103a0 <_printf_r>:
   103a0:	fb010113          	addi	sp,sp,-80
   103a4:	02c13023          	sd	a2,32(sp)
   103a8:	02d13423          	sd	a3,40(sp)
   103ac:	02e13823          	sd	a4,48(sp)
   103b0:	02f13c23          	sd	a5,56(sp)
   103b4:	05013023          	sd	a6,64(sp)
   103b8:	05113423          	sd	a7,72(sp)
   103bc:	00058613          	mv	a2,a1
   103c0:	01053583          	ld	a1,16(a0)
   103c4:	02010693          	addi	a3,sp,32
   103c8:	00113c23          	sd	ra,24(sp)
   103cc:	00d13423          	sd	a3,8(sp)
   103d0:	05c000ef          	jal	ra,1042c <_vfprintf_r>
   103d4:	01813083          	ld	ra,24(sp)
   103d8:	05010113          	addi	sp,sp,80
   103dc:	00008067          	ret

00000000000103e0 <printf>:
   103e0:	fa010113          	addi	sp,sp,-96
   103e4:	02c13823          	sd	a2,48(sp)
   103e8:	02d13c23          	sd	a3,56(sp)
   103ec:	7581b303          	ld	t1,1880(gp) # 24b38 <_impure_ptr>
   103f0:	02b13423          	sd	a1,40(sp)
   103f4:	04e13023          	sd	a4,64(sp)
   103f8:	04f13423          	sd	a5,72(sp)
   103fc:	05013823          	sd	a6,80(sp)
   10400:	05113c23          	sd	a7,88(sp)
   10404:	01033583          	ld	a1,16(t1) # 10184 <main+0x4>
   10408:	02810693          	addi	a3,sp,40
   1040c:	00050613          	mv	a2,a0
   10410:	00030513          	mv	a0,t1
   10414:	00113c23          	sd	ra,24(sp)
   10418:	00d13423          	sd	a3,8(sp)
   1041c:	010000ef          	jal	ra,1042c <_vfprintf_r>
   10420:	01813083          	ld	ra,24(sp)
   10424:	06010113          	addi	sp,sp,96
   10428:	00008067          	ret

000000000001042c <_vfprintf_r>:
   1042c:	d9010113          	addi	sp,sp,-624
   10430:	26113423          	sd	ra,616(sp)
   10434:	25313423          	sd	s3,584(sp)
   10438:	23813023          	sd	s8,544(sp)
   1043c:	21913c23          	sd	s9,536(sp)
   10440:	00058c13          	mv	s8,a1
   10444:	00060993          	mv	s3,a2
   10448:	00d13423          	sd	a3,8(sp)
   1044c:	26813023          	sd	s0,608(sp)
   10450:	24913c23          	sd	s1,600(sp)
   10454:	25213823          	sd	s2,592(sp)
   10458:	25413023          	sd	s4,576(sp)
   1045c:	23513c23          	sd	s5,568(sp)
   10460:	23613823          	sd	s6,560(sp)
   10464:	23713423          	sd	s7,552(sp)
   10468:	21a13823          	sd	s10,528(sp)
   1046c:	21b13423          	sd	s11,520(sp)
   10470:	00050c93          	mv	s9,a0
   10474:	438060ef          	jal	ra,168ac <_localeconv_r>
   10478:	00053783          	ld	a5,0(a0)
   1047c:	00078513          	mv	a0,a5
   10480:	04f13023          	sd	a5,64(sp)
   10484:	165080ef          	jal	ra,18de8 <strlen>
   10488:	02a13c23          	sd	a0,56(sp)
   1048c:	0e013823          	sd	zero,240(sp)
   10490:	0e013c23          	sd	zero,248(sp)
   10494:	000c8663          	beqz	s9,104a0 <_vfprintf_r+0x74>
   10498:	050ca783          	lw	a5,80(s9)
   1049c:	7c078c63          	beqz	a5,10c74 <_vfprintf_r+0x848>
   104a0:	010c1703          	lh	a4,16(s8)
   104a4:	000026b7          	lui	a3,0x2
   104a8:	03071793          	slli	a5,a4,0x30
   104ac:	0307d793          	srli	a5,a5,0x30
   104b0:	00d7f633          	and	a2,a5,a3
   104b4:	02061863          	bnez	a2,104e4 <_vfprintf_r+0xb8>
   104b8:	0acc2603          	lw	a2,172(s8)
   104bc:	00d767b3          	or	a5,a4,a3
   104c0:	0107979b          	slliw	a5,a5,0x10
   104c4:	ffffe737          	lui	a4,0xffffe
   104c8:	4107d79b          	sraiw	a5,a5,0x10
   104cc:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd941f>
   104d0:	00e67733          	and	a4,a2,a4
   104d4:	00fc1823          	sh	a5,16(s8)
   104d8:	03079793          	slli	a5,a5,0x30
   104dc:	0aec2623          	sw	a4,172(s8)
   104e0:	0307d793          	srli	a5,a5,0x30
   104e4:	0087f713          	andi	a4,a5,8
   104e8:	30070863          	beqz	a4,107f8 <_vfprintf_r+0x3cc>
   104ec:	018c3703          	ld	a4,24(s8)
   104f0:	30070463          	beqz	a4,107f8 <_vfprintf_r+0x3cc>
   104f4:	01a7f793          	andi	a5,a5,26
   104f8:	00a00713          	li	a4,10
   104fc:	32e78063          	beq	a5,a4,1081c <_vfprintf_r+0x3f0>
   10500:	18010793          	addi	a5,sp,384
   10504:	00098d13          	mv	s10,s3
   10508:	10f13023          	sd	a5,256(sp)
   1050c:	00078d93          	mv	s11,a5
   10510:	000d4783          	lbu	a5,0(s10)
   10514:	10013823          	sd	zero,272(sp)
   10518:	10012423          	sw	zero,264(sp)
   1051c:	02013023          	sd	zero,32(sp)
   10520:	04013423          	sd	zero,72(sp)
   10524:	04013823          	sd	zero,80(sp)
   10528:	04013c23          	sd	zero,88(sp)
   1052c:	06013423          	sd	zero,104(sp)
   10530:	06013823          	sd	zero,112(sp)
   10534:	00013023          	sd	zero,0(sp)
   10538:	01000b13          	li	s6,16
   1053c:	24078863          	beqz	a5,1078c <_vfprintf_r+0x360>
   10540:	000d0413          	mv	s0,s10
   10544:	02500713          	li	a4,37
   10548:	2ee78c63          	beq	a5,a4,10840 <_vfprintf_r+0x414>
   1054c:	00144783          	lbu	a5,1(s0)
   10550:	00140413          	addi	s0,s0,1
   10554:	fe079ae3          	bnez	a5,10548 <_vfprintf_r+0x11c>
   10558:	41a404bb          	subw	s1,s0,s10
   1055c:	22048863          	beqz	s1,1078c <_vfprintf_r+0x360>
   10560:	11013703          	ld	a4,272(sp)
   10564:	10812783          	lw	a5,264(sp)
   10568:	01adb023          	sd	s10,0(s11)
   1056c:	00970733          	add	a4,a4,s1
   10570:	0017879b          	addiw	a5,a5,1
   10574:	009db423          	sd	s1,8(s11)
   10578:	10e13823          	sd	a4,272(sp)
   1057c:	10f12423          	sw	a5,264(sp)
   10580:	0007871b          	sext.w	a4,a5
   10584:	00700793          	li	a5,7
   10588:	010d8d93          	addi	s11,s11,16
   1058c:	2ce7c263          	blt	a5,a4,10850 <_vfprintf_r+0x424>
   10590:	00013703          	ld	a4,0(sp)
   10594:	00044783          	lbu	a5,0(s0)
   10598:	0097073b          	addw	a4,a4,s1
   1059c:	00e13023          	sd	a4,0(sp)
   105a0:	1e078663          	beqz	a5,1078c <_vfprintf_r+0x360>
   105a4:	fff00e13          	li	t3,-1
   105a8:	00144483          	lbu	s1,1(s0)
   105ac:	0c0107a3          	sb	zero,207(sp)
   105b0:	00140413          	addi	s0,s0,1
   105b4:	00000a13          	li	s4,0
   105b8:	00000913          	li	s2,0
   105bc:	00900993          	li	s3,9
   105c0:	02a00a93          	li	s5,42
   105c4:	000e0b93          	mv	s7,t3
   105c8:	00140413          	addi	s0,s0,1
   105cc:	0004849b          	sext.w	s1,s1
   105d0:	05a00693          	li	a3,90
   105d4:	fe04879b          	addiw	a5,s1,-32
   105d8:	0007871b          	sext.w	a4,a5
   105dc:	04e6ee63          	bltu	a3,a4,10638 <_vfprintf_r+0x20c>
   105e0:	02079713          	slli	a4,a5,0x20
   105e4:	01e75793          	srli	a5,a4,0x1e
   105e8:	00011717          	auipc	a4,0x11
   105ec:	64870713          	addi	a4,a4,1608 # 21c30 <__clzdi2+0xc0>
   105f0:	00e787b3          	add	a5,a5,a4
   105f4:	0007a783          	lw	a5,0(a5)
   105f8:	00e787b3          	add	a5,a5,a4
   105fc:	00078067          	jr	a5
   10600:	00000a13          	li	s4,0
   10604:	00044703          	lbu	a4,0(s0)
   10608:	002a179b          	slliw	a5,s4,0x2
   1060c:	014787bb          	addw	a5,a5,s4
   10610:	fd04849b          	addiw	s1,s1,-48
   10614:	0017979b          	slliw	a5,a5,0x1
   10618:	fd07061b          	addiw	a2,a4,-48
   1061c:	00f48a3b          	addw	s4,s1,a5
   10620:	00140413          	addi	s0,s0,1
   10624:	0007049b          	sext.w	s1,a4
   10628:	fcc9fee3          	bgeu	s3,a2,10604 <_vfprintf_r+0x1d8>
   1062c:	fe04879b          	addiw	a5,s1,-32
   10630:	0007871b          	sext.w	a4,a5
   10634:	fae6f6e3          	bgeu	a3,a4,105e0 <_vfprintf_r+0x1b4>
   10638:	14048a63          	beqz	s1,1078c <_vfprintf_r+0x360>
   1063c:	10910c23          	sb	s1,280(sp)
   10640:	0c0107a3          	sb	zero,207(sp)
   10644:	00100a93          	li	s5,1
   10648:	00100b93          	li	s7,1
   1064c:	11810d13          	addi	s10,sp,280
   10650:	00013823          	sd	zero,16(sp)
   10654:	00000e13          	li	t3,0
   10658:	02013823          	sd	zero,48(sp)
   1065c:	02013423          	sd	zero,40(sp)
   10660:	00013c23          	sd	zero,24(sp)
   10664:	00297f13          	andi	t5,s2,2
   10668:	000f0463          	beqz	t5,10670 <_vfprintf_r+0x244>
   1066c:	002a8a9b          	addiw	s5,s5,2
   10670:	08497e93          	andi	t4,s2,132
   10674:	11013783          	ld	a5,272(sp)
   10678:	000e9663          	bnez	t4,10684 <_vfprintf_r+0x258>
   1067c:	415a06bb          	subw	a3,s4,s5
   10680:	52d04ce3          	bgtz	a3,113b8 <_vfprintf_r+0xf8c>
   10684:	0cf14703          	lbu	a4,207(sp)
   10688:	02070c63          	beqz	a4,106c0 <_vfprintf_r+0x294>
   1068c:	10812703          	lw	a4,264(sp)
   10690:	0cf10693          	addi	a3,sp,207
   10694:	00ddb023          	sd	a3,0(s11)
   10698:	0017071b          	addiw	a4,a4,1
   1069c:	00100693          	li	a3,1
   106a0:	00178793          	addi	a5,a5,1
   106a4:	00ddb423          	sd	a3,8(s11)
   106a8:	10e12423          	sw	a4,264(sp)
   106ac:	0007069b          	sext.w	a3,a4
   106b0:	10f13823          	sd	a5,272(sp)
   106b4:	00700713          	li	a4,7
   106b8:	010d8d93          	addi	s11,s11,16
   106bc:	46d74863          	blt	a4,a3,10b2c <_vfprintf_r+0x700>
   106c0:	020f0c63          	beqz	t5,106f8 <_vfprintf_r+0x2cc>
   106c4:	10812703          	lw	a4,264(sp)
   106c8:	0d010693          	addi	a3,sp,208
   106cc:	00ddb023          	sd	a3,0(s11)
   106d0:	0017071b          	addiw	a4,a4,1
   106d4:	00200693          	li	a3,2
   106d8:	00278793          	addi	a5,a5,2
   106dc:	00ddb423          	sd	a3,8(s11)
   106e0:	10e12423          	sw	a4,264(sp)
   106e4:	0007069b          	sext.w	a3,a4
   106e8:	10f13823          	sd	a5,272(sp)
   106ec:	00700713          	li	a4,7
   106f0:	010d8d93          	addi	s11,s11,16
   106f4:	62d744e3          	blt	a4,a3,1151c <_vfprintf_r+0x10f0>
   106f8:	08000713          	li	a4,128
   106fc:	2eee82e3          	beq	t4,a4,111e0 <_vfprintf_r+0xdb4>
   10700:	417e09bb          	subw	s3,t3,s7
   10704:	3d3046e3          	bgtz	s3,112d0 <_vfprintf_r+0xea4>
   10708:	10097713          	andi	a4,s2,256
   1070c:	1c0710e3          	bnez	a4,110cc <_vfprintf_r+0xca0>
   10710:	10812703          	lw	a4,264(sp)
   10714:	017787b3          	add	a5,a5,s7
   10718:	01adb023          	sd	s10,0(s11)
   1071c:	0017069b          	addiw	a3,a4,1
   10720:	017db423          	sd	s7,8(s11)
   10724:	10f13823          	sd	a5,272(sp)
   10728:	10d12423          	sw	a3,264(sp)
   1072c:	00700713          	li	a4,7
   10730:	52d74263          	blt	a4,a3,10c54 <_vfprintf_r+0x828>
   10734:	010d8d93          	addi	s11,s11,16
   10738:	00497913          	andi	s2,s2,4
   1073c:	00090663          	beqz	s2,10748 <_vfprintf_r+0x31c>
   10740:	415a04bb          	subw	s1,s4,s5
   10744:	609044e3          	bgtz	s1,1154c <_vfprintf_r+0x1120>
   10748:	000a0713          	mv	a4,s4
   1074c:	015a5463          	bge	s4,s5,10754 <_vfprintf_r+0x328>
   10750:	000a8713          	mv	a4,s5
   10754:	00013683          	ld	a3,0(sp)
   10758:	00d7073b          	addw	a4,a4,a3
   1075c:	00e13023          	sd	a4,0(sp)
   10760:	420798e3          	bnez	a5,11390 <_vfprintf_r+0xf64>
   10764:	01013783          	ld	a5,16(sp)
   10768:	10012423          	sw	zero,264(sp)
   1076c:	00078863          	beqz	a5,1077c <_vfprintf_r+0x350>
   10770:	01013583          	ld	a1,16(sp)
   10774:	000c8513          	mv	a0,s9
   10778:	7a1020ef          	jal	ra,13718 <_free_r>
   1077c:	18010d93          	addi	s11,sp,384
   10780:	00040d13          	mv	s10,s0
   10784:	000d4783          	lbu	a5,0(s10)
   10788:	da079ce3          	bnez	a5,10540 <_vfprintf_r+0x114>
   1078c:	11013783          	ld	a5,272(sp)
   10790:	00078463          	beqz	a5,10798 <_vfprintf_r+0x36c>
   10794:	2690106f          	j	121fc <_vfprintf_r+0x1dd0>
   10798:	010c5783          	lhu	a5,16(s8)
   1079c:	0407f793          	andi	a5,a5,64
   107a0:	00078463          	beqz	a5,107a8 <_vfprintf_r+0x37c>
   107a4:	7e10106f          	j	12784 <_vfprintf_r+0x2358>
   107a8:	26813083          	ld	ra,616(sp)
   107ac:	26013403          	ld	s0,608(sp)
   107b0:	00013503          	ld	a0,0(sp)
   107b4:	25813483          	ld	s1,600(sp)
   107b8:	25013903          	ld	s2,592(sp)
   107bc:	24813983          	ld	s3,584(sp)
   107c0:	24013a03          	ld	s4,576(sp)
   107c4:	23813a83          	ld	s5,568(sp)
   107c8:	23013b03          	ld	s6,560(sp)
   107cc:	22813b83          	ld	s7,552(sp)
   107d0:	22013c03          	ld	s8,544(sp)
   107d4:	21813c83          	ld	s9,536(sp)
   107d8:	21013d03          	ld	s10,528(sp)
   107dc:	20813d83          	ld	s11,520(sp)
   107e0:	27010113          	addi	sp,sp,624
   107e4:	00008067          	ret
   107e8:	01096913          	ori	s2,s2,16
   107ec:	00044483          	lbu	s1,0(s0)
   107f0:	0009091b          	sext.w	s2,s2
   107f4:	dd5ff06f          	j	105c8 <_vfprintf_r+0x19c>
   107f8:	000c0593          	mv	a1,s8
   107fc:	000c8513          	mv	a0,s9
   10800:	410020ef          	jal	ra,12c10 <__swsetup_r>
   10804:	00050463          	beqz	a0,1080c <_vfprintf_r+0x3e0>
   10808:	77d0106f          	j	12784 <_vfprintf_r+0x2358>
   1080c:	010c5783          	lhu	a5,16(s8)
   10810:	00a00713          	li	a4,10
   10814:	01a7f793          	andi	a5,a5,26
   10818:	cee794e3          	bne	a5,a4,10500 <_vfprintf_r+0xd4>
   1081c:	012c1783          	lh	a5,18(s8)
   10820:	ce07c0e3          	bltz	a5,10500 <_vfprintf_r+0xd4>
   10824:	00813683          	ld	a3,8(sp)
   10828:	00098613          	mv	a2,s3
   1082c:	000c0593          	mv	a1,s8
   10830:	000c8513          	mv	a0,s9
   10834:	31c020ef          	jal	ra,12b50 <__sbprintf>
   10838:	00a13023          	sd	a0,0(sp)
   1083c:	f6dff06f          	j	107a8 <_vfprintf_r+0x37c>
   10840:	41a404bb          	subw	s1,s0,s10
   10844:	d0049ee3          	bnez	s1,10560 <_vfprintf_r+0x134>
   10848:	00044783          	lbu	a5,0(s0)
   1084c:	d55ff06f          	j	105a0 <_vfprintf_r+0x174>
   10850:	10010613          	addi	a2,sp,256
   10854:	000c0593          	mv	a1,s8
   10858:	000c8513          	mv	a0,s9
   1085c:	6b10a0ef          	jal	ra,1b70c <__sprint_r>
   10860:	f2051ce3          	bnez	a0,10798 <_vfprintf_r+0x36c>
   10864:	18010d93          	addi	s11,sp,384
   10868:	d29ff06f          	j	10590 <_vfprintf_r+0x164>
   1086c:	00897793          	andi	a5,s2,8
   10870:	000b8e13          	mv	t3,s7
   10874:	00078463          	beqz	a5,1087c <_vfprintf_r+0x450>
   10878:	0780106f          	j	118f0 <_vfprintf_r+0x14c4>
   1087c:	00813783          	ld	a5,8(sp)
   10880:	01713823          	sd	s7,16(sp)
   10884:	0007b507          	fld	fa0,0(a5)
   10888:	00878793          	addi	a5,a5,8
   1088c:	00f13423          	sd	a5,8(sp)
   10890:	5a1100ef          	jal	ra,21630 <__extenddftf2>
   10894:	01013e03          	ld	t3,16(sp)
   10898:	0ea13823          	sd	a0,240(sp)
   1089c:	0eb13c23          	sd	a1,248(sp)
   108a0:	0f010513          	addi	a0,sp,240
   108a4:	01c13823          	sd	t3,16(sp)
   108a8:	795050ef          	jal	ra,1683c <_ldcheck>
   108ac:	0ca12c23          	sw	a0,216(sp)
   108b0:	00200793          	li	a5,2
   108b4:	01013e03          	ld	t3,16(sp)
   108b8:	00f51463          	bne	a0,a5,108c0 <_vfprintf_r+0x494>
   108bc:	4b80106f          	j	11d74 <_vfprintf_r+0x1948>
   108c0:	00100793          	li	a5,1
   108c4:	00f51463          	bne	a0,a5,108cc <_vfprintf_r+0x4a0>
   108c8:	60c0106f          	j	11ed4 <_vfprintf_r+0x1aa8>
   108cc:	06100793          	li	a5,97
   108d0:	00f49463          	bne	s1,a5,108d8 <_vfprintf_r+0x4ac>
   108d4:	6f10106f          	j	127c4 <_vfprintf_r+0x2398>
   108d8:	04100793          	li	a5,65
   108dc:	00f49463          	bne	s1,a5,108e4 <_vfprintf_r+0x4b8>
   108e0:	1690106f          	j	12248 <_vfprintf_r+0x1e1c>
   108e4:	fdf4f713          	andi	a4,s1,-33
   108e8:	fff00793          	li	a5,-1
   108ec:	02e13423          	sd	a4,40(sp)
   108f0:	00fe1463          	bne	t3,a5,108f8 <_vfprintf_r+0x4cc>
   108f4:	7e10106f          	j	128d4 <_vfprintf_r+0x24a8>
   108f8:	04700793          	li	a5,71
   108fc:	00f71463          	bne	a4,a5,10904 <_vfprintf_r+0x4d8>
   10900:	7dd0106f          	j	128dc <_vfprintf_r+0x24b0>
   10904:	0f813a83          	ld	s5,248(sp)
   10908:	10096793          	ori	a5,s2,256
   1090c:	03213823          	sd	s2,48(sp)
   10910:	0f013b83          	ld	s7,240(sp)
   10914:	0007879b          	sext.w	a5,a5
   10918:	000ad463          	bgez	s5,10920 <_vfprintf_r+0x4f4>
   1091c:	4650106f          	j	12580 <_vfprintf_r+0x2154>
   10920:	06013023          	sd	zero,96(sp)
   10924:	00078913          	mv	s2,a5
   10928:	00013823          	sd	zero,16(sp)
   1092c:	02813703          	ld	a4,40(sp)
   10930:	04600793          	li	a5,70
   10934:	00f71463          	bne	a4,a5,1093c <_vfprintf_r+0x510>
   10938:	4990106f          	j	125d0 <_vfprintf_r+0x21a4>
   1093c:	04500793          	li	a5,69
   10940:	00f71463          	bne	a4,a5,10948 <_vfprintf_r+0x51c>
   10944:	6910106f          	j	127d4 <_vfprintf_r+0x23a8>
   10948:	000e0713          	mv	a4,t3
   1094c:	0d810793          	addi	a5,sp,216
   10950:	0e810893          	addi	a7,sp,232
   10954:	0dc10813          	addi	a6,sp,220
   10958:	00200693          	li	a3,2
   1095c:	000b8593          	mv	a1,s7
   10960:	000a8613          	mv	a2,s5
   10964:	000c8513          	mv	a0,s9
   10968:	01c13c23          	sd	t3,24(sp)
   1096c:	3d1040ef          	jal	ra,1553c <_ldtoa_r>
   10970:	02813703          	ld	a4,40(sp)
   10974:	04700793          	li	a5,71
   10978:	01813e03          	ld	t3,24(sp)
   1097c:	00050d13          	mv	s10,a0
   10980:	00f70463          	beq	a4,a5,10988 <_vfprintf_r+0x55c>
   10984:	19c0206f          	j	12b20 <_vfprintf_r+0x26f4>
   10988:	03013783          	ld	a5,48(sp)
   1098c:	0017f793          	andi	a5,a5,1
   10990:	00078463          	beqz	a5,10998 <_vfprintf_r+0x56c>
   10994:	6210106f          	j	127b4 <_vfprintf_r+0x2388>
   10998:	0e813783          	ld	a5,232(sp)
   1099c:	41a787bb          	subw	a5,a5,s10
   109a0:	02f13023          	sd	a5,32(sp)
   109a4:	0d812703          	lw	a4,216(sp)
   109a8:	04700793          	li	a5,71
   109ac:	00e13c23          	sd	a4,24(sp)
   109b0:	02813703          	ld	a4,40(sp)
   109b4:	00f71463          	bne	a4,a5,109bc <_vfprintf_r+0x590>
   109b8:	33d0106f          	j	124f4 <_vfprintf_r+0x20c8>
   109bc:	02813703          	ld	a4,40(sp)
   109c0:	04600793          	li	a5,70
   109c4:	00f71463          	bne	a4,a5,109cc <_vfprintf_r+0x5a0>
   109c8:	5990106f          	j	12760 <_vfprintf_r+0x2334>
   109cc:	01813783          	ld	a5,24(sp)
   109d0:	02813603          	ld	a2,40(sp)
   109d4:	04100713          	li	a4,65
   109d8:	fff78a9b          	addiw	s5,a5,-1
   109dc:	0d512c23          	sw	s5,216(sp)
   109e0:	0ff4f793          	andi	a5,s1,255
   109e4:	00000693          	li	a3,0
   109e8:	00e61863          	bne	a2,a4,109f8 <_vfprintf_r+0x5cc>
   109ec:	00f7879b          	addiw	a5,a5,15
   109f0:	0ff7f793          	andi	a5,a5,255
   109f4:	00100693          	li	a3,1
   109f8:	0ef10023          	sb	a5,224(sp)
   109fc:	02b00793          	li	a5,43
   10a00:	000ada63          	bgez	s5,10a14 <_vfprintf_r+0x5e8>
   10a04:	01813703          	ld	a4,24(sp)
   10a08:	00100793          	li	a5,1
   10a0c:	40e78abb          	subw	s5,a5,a4
   10a10:	02d00793          	li	a5,45
   10a14:	0ef100a3          	sb	a5,225(sp)
   10a18:	00900793          	li	a5,9
   10a1c:	0157c463          	blt	a5,s5,10a24 <_vfprintf_r+0x5f8>
   10a20:	70d0106f          	j	1292c <_vfprintf_r+0x2500>
   10a24:	0ef10913          	addi	s2,sp,239
   10a28:	00090b93          	mv	s7,s2
   10a2c:	00813c23          	sd	s0,24(sp)
   10a30:	00a00593          	li	a1,10
   10a34:	000a8513          	mv	a0,s5
   10a38:	0fc110ef          	jal	ra,21b34 <__moddi3>
   10a3c:	0305079b          	addiw	a5,a0,48
   10a40:	fefb8fa3          	sb	a5,-1(s7)
   10a44:	000a8513          	mv	a0,s5
   10a48:	00a00593          	li	a1,10
   10a4c:	064110ef          	jal	ra,21ab0 <__divdi3>
   10a50:	000a8413          	mv	s0,s5
   10a54:	06300793          	li	a5,99
   10a58:	000b8993          	mv	s3,s7
   10a5c:	00050a9b          	sext.w	s5,a0
   10a60:	fffb8b93          	addi	s7,s7,-1
   10a64:	fc87c6e3          	blt	a5,s0,10a30 <_vfprintf_r+0x604>
   10a68:	030a879b          	addiw	a5,s5,48
   10a6c:	0ff7f693          	andi	a3,a5,255
   10a70:	fedb8fa3          	sb	a3,-1(s7)
   10a74:	ffe98793          	addi	a5,s3,-2
   10a78:	01813403          	ld	s0,24(sp)
   10a7c:	0127e463          	bltu	a5,s2,10a84 <_vfprintf_r+0x658>
   10a80:	0880206f          	j	12b08 <_vfprintf_r+0x26dc>
   10a84:	0e210713          	addi	a4,sp,226
   10a88:	0080006f          	j	10a90 <_vfprintf_r+0x664>
   10a8c:	0007c683          	lbu	a3,0(a5)
   10a90:	00d70023          	sb	a3,0(a4)
   10a94:	00178793          	addi	a5,a5,1
   10a98:	00170713          	addi	a4,a4,1
   10a9c:	ff2798e3          	bne	a5,s2,10a8c <_vfprintf_r+0x660>
   10aa0:	0f110793          	addi	a5,sp,241
   10aa4:	0e210713          	addi	a4,sp,226
   10aa8:	413787b3          	sub	a5,a5,s3
   10aac:	00f707b3          	add	a5,a4,a5
   10ab0:	0e010713          	addi	a4,sp,224
   10ab4:	40e787bb          	subw	a5,a5,a4
   10ab8:	04f13823          	sd	a5,80(sp)
   10abc:	05013783          	ld	a5,80(sp)
   10ac0:	02013683          	ld	a3,32(sp)
   10ac4:	00100713          	li	a4,1
   10ac8:	00f68bbb          	addw	s7,a3,a5
   10acc:	000b8793          	mv	a5,s7
   10ad0:	00d74463          	blt	a4,a3,10ad8 <_vfprintf_r+0x6ac>
   10ad4:	7b10106f          	j	12a84 <_vfprintf_r+0x2658>
   10ad8:	03813703          	ld	a4,56(sp)
   10adc:	00e78bbb          	addw	s7,a5,a4
   10ae0:	03013783          	ld	a5,48(sp)
   10ae4:	fffbca93          	not	s5,s7
   10ae8:	43fada93          	srai	s5,s5,0x3f
   10aec:	bff7f913          	andi	s2,a5,-1025
   10af0:	0009091b          	sext.w	s2,s2
   10af4:	015bfab3          	and	s5,s7,s5
   10af8:	10096913          	ori	s2,s2,256
   10afc:	000a8a9b          	sext.w	s5,s5
   10b00:	02013823          	sd	zero,48(sp)
   10b04:	02013423          	sd	zero,40(sp)
   10b08:	00013c23          	sd	zero,24(sp)
   10b0c:	06013783          	ld	a5,96(sp)
   10b10:	00079463          	bnez	a5,10b18 <_vfprintf_r+0x6ec>
   10b14:	2590106f          	j	1256c <_vfprintf_r+0x2140>
   10b18:	02d00793          	li	a5,45
   10b1c:	0cf107a3          	sb	a5,207(sp)
   10b20:	00000e13          	li	t3,0
   10b24:	001a8a9b          	addiw	s5,s5,1
   10b28:	b3dff06f          	j	10664 <_vfprintf_r+0x238>
   10b2c:	10010613          	addi	a2,sp,256
   10b30:	000c0593          	mv	a1,s8
   10b34:	000c8513          	mv	a0,s9
   10b38:	09c13023          	sd	t3,128(sp)
   10b3c:	07d13c23          	sd	t4,120(sp)
   10b40:	07e13023          	sd	t5,96(sp)
   10b44:	3c90a0ef          	jal	ra,1b70c <__sprint_r>
   10b48:	04051ee3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   10b4c:	11013783          	ld	a5,272(sp)
   10b50:	08013e03          	ld	t3,128(sp)
   10b54:	07813e83          	ld	t4,120(sp)
   10b58:	06013f03          	ld	t5,96(sp)
   10b5c:	18010d93          	addi	s11,sp,384
   10b60:	b61ff06f          	j	106c0 <_vfprintf_r+0x294>
   10b64:	10812683          	lw	a3,264(sp)
   10b68:	02013583          	ld	a1,32(sp)
   10b6c:	00178993          	addi	s3,a5,1
   10b70:	00100613          	li	a2,1
   10b74:	0016879b          	addiw	a5,a3,1
   10b78:	01adb023          	sd	s10,0(s11)
   10b7c:	00078713          	mv	a4,a5
   10b80:	010d8493          	addi	s1,s11,16
   10b84:	3eb65ae3          	bge	a2,a1,11778 <_vfprintf_r+0x134c>
   10b88:	00100693          	li	a3,1
   10b8c:	10e12423          	sw	a4,264(sp)
   10b90:	00ddb423          	sd	a3,8(s11)
   10b94:	11313823          	sd	s3,272(sp)
   10b98:	00700713          	li	a4,7
   10b9c:	76f742e3          	blt	a4,a5,11b00 <_vfprintf_r+0x16d4>
   10ba0:	03813703          	ld	a4,56(sp)
   10ba4:	04013683          	ld	a3,64(sp)
   10ba8:	00178b9b          	addiw	s7,a5,1
   10bac:	00e989b3          	add	s3,s3,a4
   10bb0:	00d4b023          	sd	a3,0(s1)
   10bb4:	00e4b423          	sd	a4,8(s1)
   10bb8:	11313823          	sd	s3,272(sp)
   10bbc:	11712423          	sw	s7,264(sp)
   10bc0:	00700793          	li	a5,7
   10bc4:	01048493          	addi	s1,s1,16
   10bc8:	7577cee3          	blt	a5,s7,11b24 <_vfprintf_r+0x16f8>
   10bcc:	0f013503          	ld	a0,240(sp)
   10bd0:	0f813583          	ld	a1,248(sp)
   10bd4:	001b871b          	addiw	a4,s7,1
   10bd8:	00000693          	li	a3,0
   10bdc:	00000613          	li	a2,0
   10be0:	00e12c23          	sw	a4,24(sp)
   10be4:	2440f0ef          	jal	ra,1fe28 <__eqtf2>
   10be8:	01812703          	lw	a4,24(sp)
   10bec:	02013783          	ld	a5,32(sp)
   10bf0:	01048d93          	addi	s11,s1,16
   10bf4:	0007069b          	sext.w	a3,a4
   10bf8:	fff7879b          	addiw	a5,a5,-1
   10bfc:	3a0502e3          	beqz	a0,117a0 <_vfprintf_r+0x1374>
   10c00:	00f989b3          	add	s3,s3,a5
   10c04:	001d0813          	addi	a6,s10,1
   10c08:	00f4b423          	sd	a5,8(s1)
   10c0c:	0104b023          	sd	a6,0(s1)
   10c10:	11313823          	sd	s3,272(sp)
   10c14:	10e12423          	sw	a4,264(sp)
   10c18:	00700793          	li	a5,7
   10c1c:	54d7cae3          	blt	a5,a3,11970 <_vfprintf_r+0x1544>
   10c20:	02048793          	addi	a5,s1,32
   10c24:	002b869b          	addiw	a3,s7,2
   10c28:	000d8493          	mv	s1,s11
   10c2c:	00078d93          	mv	s11,a5
   10c30:	05013603          	ld	a2,80(sp)
   10c34:	0e010713          	addi	a4,sp,224
   10c38:	00e4b023          	sd	a4,0(s1)
   10c3c:	013607b3          	add	a5,a2,s3
   10c40:	00c4b423          	sd	a2,8(s1)
   10c44:	10f13823          	sd	a5,272(sp)
   10c48:	10d12423          	sw	a3,264(sp)
   10c4c:	00700713          	li	a4,7
   10c50:	aed754e3          	bge	a4,a3,10738 <_vfprintf_r+0x30c>
   10c54:	10010613          	addi	a2,sp,256
   10c58:	000c0593          	mv	a1,s8
   10c5c:	000c8513          	mv	a0,s9
   10c60:	2ad0a0ef          	jal	ra,1b70c <__sprint_r>
   10c64:	74051063          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   10c68:	11013783          	ld	a5,272(sp)
   10c6c:	18010d93          	addi	s11,sp,384
   10c70:	ac9ff06f          	j	10738 <_vfprintf_r+0x30c>
   10c74:	000c8513          	mv	a0,s9
   10c78:	0c9020ef          	jal	ra,13540 <__sinit>
   10c7c:	825ff06f          	j	104a0 <_vfprintf_r+0x74>
   10c80:	00813703          	ld	a4,8(sp)
   10c84:	0c0107a3          	sb	zero,207(sp)
   10c88:	00100a93          	li	s5,1
   10c8c:	00072783          	lw	a5,0(a4)
   10c90:	00870713          	addi	a4,a4,8
   10c94:	00e13423          	sd	a4,8(sp)
   10c98:	10f10c23          	sb	a5,280(sp)
   10c9c:	00100b93          	li	s7,1
   10ca0:	11810d13          	addi	s10,sp,280
   10ca4:	9adff06f          	j	10650 <_vfprintf_r+0x224>
   10ca8:	00813783          	ld	a5,8(sp)
   10cac:	0c0107a3          	sb	zero,207(sp)
   10cb0:	000b8e13          	mv	t3,s7
   10cb4:	0007bd03          	ld	s10,0(a5)
   10cb8:	00878993          	addi	s3,a5,8
   10cbc:	5a0d04e3          	beqz	s10,11a64 <_vfprintf_r+0x1638>
   10cc0:	fff00793          	li	a5,-1
   10cc4:	00fb9463          	bne	s7,a5,10ccc <_vfprintf_r+0x8a0>
   10cc8:	1ac0106f          	j	11e74 <_vfprintf_r+0x1a48>
   10ccc:	000b8613          	mv	a2,s7
   10cd0:	00000593          	li	a1,0
   10cd4:	000d0513          	mv	a0,s10
   10cd8:	01713423          	sd	s7,8(sp)
   10cdc:	7c4060ef          	jal	ra,174a0 <memchr>
   10ce0:	00a13823          	sd	a0,16(sp)
   10ce4:	00813e03          	ld	t3,8(sp)
   10ce8:	00051463          	bnez	a0,10cf0 <_vfprintf_r+0x8c4>
   10cec:	1e10106f          	j	126cc <_vfprintf_r+0x22a0>
   10cf0:	01013783          	ld	a5,16(sp)
   10cf4:	41a78bbb          	subw	s7,a5,s10
   10cf8:	0cf14783          	lbu	a5,207(sp)
   10cfc:	fffbca93          	not	s5,s7
   10d00:	43fada93          	srai	s5,s5,0x3f
   10d04:	01313423          	sd	s3,8(sp)
   10d08:	00013823          	sd	zero,16(sp)
   10d0c:	02013823          	sd	zero,48(sp)
   10d10:	02013423          	sd	zero,40(sp)
   10d14:	00013c23          	sd	zero,24(sp)
   10d18:	017afab3          	and	s5,s5,s7
   10d1c:	00000e13          	li	t3,0
   10d20:	940782e3          	beqz	a5,10664 <_vfprintf_r+0x238>
   10d24:	001a8a9b          	addiw	s5,s5,1
   10d28:	93dff06f          	j	10664 <_vfprintf_r+0x238>
   10d2c:	01096913          	ori	s2,s2,16
   10d30:	000b8e13          	mv	t3,s7
   10d34:	0009091b          	sext.w	s2,s2
   10d38:	00813703          	ld	a4,8(sp)
   10d3c:	02097793          	andi	a5,s2,32
   10d40:	00870693          	addi	a3,a4,8
   10d44:	2e078ce3          	beqz	a5,1183c <_vfprintf_r+0x1410>
   10d48:	00073983          	ld	s3,0(a4)
   10d4c:	bff97713          	andi	a4,s2,-1025
   10d50:	00070a9b          	sext.w	s5,a4
   10d54:	00d13423          	sd	a3,8(sp)
   10d58:	00000793          	li	a5,0
   10d5c:	0c0107a3          	sb	zero,207(sp)
   10d60:	fff00693          	li	a3,-1
   10d64:	2cde0063          	beq	t3,a3,11024 <_vfprintf_r+0xbf8>
   10d68:	f7faf913          	andi	s2,s5,-129
   10d6c:	0009091b          	sext.w	s2,s2
   10d70:	2a099863          	bnez	s3,11020 <_vfprintf_r+0xbf4>
   10d74:	300e1663          	bnez	t3,11080 <_vfprintf_r+0xc54>
   10d78:	28079c63          	bnez	a5,11010 <_vfprintf_r+0xbe4>
   10d7c:	001afb93          	andi	s7,s5,1
   10d80:	17c10d13          	addi	s10,sp,380
   10d84:	320b98e3          	bnez	s7,118b4 <_vfprintf_r+0x1488>
   10d88:	0cf14783          	lbu	a5,207(sp)
   10d8c:	000b8a9b          	sext.w	s5,s7
   10d90:	01cbd463          	bge	s7,t3,10d98 <_vfprintf_r+0x96c>
   10d94:	000e0a9b          	sext.w	s5,t3
   10d98:	00013823          	sd	zero,16(sp)
   10d9c:	02013823          	sd	zero,48(sp)
   10da0:	02013423          	sd	zero,40(sp)
   10da4:	00013c23          	sd	zero,24(sp)
   10da8:	f6079ee3          	bnez	a5,10d24 <_vfprintf_r+0x8f8>
   10dac:	8b9ff06f          	j	10664 <_vfprintf_r+0x238>
   10db0:	00044483          	lbu	s1,0(s0)
   10db4:	06800793          	li	a5,104
   10db8:	44f484e3          	beq	s1,a5,11a00 <_vfprintf_r+0x15d4>
   10dbc:	04096913          	ori	s2,s2,64
   10dc0:	0009091b          	sext.w	s2,s2
   10dc4:	805ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10dc8:	00813683          	ld	a3,8(sp)
   10dcc:	02097793          	andi	a5,s2,32
   10dd0:	0006b703          	ld	a4,0(a3) # 2000 <register_fini-0xe0b0>
   10dd4:	00868693          	addi	a3,a3,8
   10dd8:	00d13423          	sd	a3,8(sp)
   10ddc:	2e0794e3          	bnez	a5,118c4 <_vfprintf_r+0x1498>
   10de0:	01097793          	andi	a5,s2,16
   10de4:	2e0790e3          	bnez	a5,118c4 <_vfprintf_r+0x1498>
   10de8:	04097793          	andi	a5,s2,64
   10dec:	00078463          	beqz	a5,10df4 <_vfprintf_r+0x9c8>
   10df0:	3cc0106f          	j	121bc <_vfprintf_r+0x1d90>
   10df4:	20097913          	andi	s2,s2,512
   10df8:	00013783          	ld	a5,0(sp)
   10dfc:	00091463          	bnez	s2,10e04 <_vfprintf_r+0x9d8>
   10e00:	2c90106f          	j	128c8 <_vfprintf_r+0x249c>
   10e04:	00f70023          	sb	a5,0(a4)
   10e08:	00040d13          	mv	s10,s0
   10e0c:	979ff06f          	j	10784 <_vfprintf_r+0x358>
   10e10:	00044483          	lbu	s1,0(s0)
   10e14:	06c00793          	li	a5,108
   10e18:	40f48ee3          	beq	s1,a5,11a34 <_vfprintf_r+0x1608>
   10e1c:	01096913          	ori	s2,s2,16
   10e20:	0009091b          	sext.w	s2,s2
   10e24:	fa4ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10e28:	02096913          	ori	s2,s2,32
   10e2c:	00044483          	lbu	s1,0(s0)
   10e30:	0009091b          	sext.w	s2,s2
   10e34:	f94ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10e38:	00813683          	ld	a3,8(sp)
   10e3c:	ffff87b7          	lui	a5,0xffff8
   10e40:	8307c793          	xori	a5,a5,-2000
   10e44:	0cf11823          	sh	a5,208(sp)
   10e48:	00868793          	addi	a5,a3,8
   10e4c:	00296713          	ori	a4,s2,2
   10e50:	00f13423          	sd	a5,8(sp)
   10e54:	00011797          	auipc	a5,0x11
   10e58:	db478793          	addi	a5,a5,-588 # 21c08 <__clzdi2+0x98>
   10e5c:	04f13423          	sd	a5,72(sp)
   10e60:	0006b983          	ld	s3,0(a3)
   10e64:	000b8e13          	mv	t3,s7
   10e68:	00070a9b          	sext.w	s5,a4
   10e6c:	00200793          	li	a5,2
   10e70:	07800493          	li	s1,120
   10e74:	ee9ff06f          	j	10d5c <_vfprintf_r+0x930>
   10e78:	01096713          	ori	a4,s2,16
   10e7c:	000b8e13          	mv	t3,s7
   10e80:	00070a9b          	sext.w	s5,a4
   10e84:	00813703          	ld	a4,8(sp)
   10e88:	020af793          	andi	a5,s5,32
   10e8c:	00870693          	addi	a3,a4,8
   10e90:	180780e3          	beqz	a5,11810 <_vfprintf_r+0x13e4>
   10e94:	00073983          	ld	s3,0(a4)
   10e98:	00100793          	li	a5,1
   10e9c:	00d13423          	sd	a3,8(sp)
   10ea0:	ebdff06f          	j	10d5c <_vfprintf_r+0x930>
   10ea4:	00896913          	ori	s2,s2,8
   10ea8:	00044483          	lbu	s1,0(s0)
   10eac:	0009091b          	sext.w	s2,s2
   10eb0:	f18ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10eb4:	08096913          	ori	s2,s2,128
   10eb8:	00044483          	lbu	s1,0(s0)
   10ebc:	0009091b          	sext.w	s2,s2
   10ec0:	f08ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10ec4:	00044483          	lbu	s1,0(s0)
   10ec8:	00140793          	addi	a5,s0,1
   10ecc:	01549463          	bne	s1,s5,10ed4 <_vfprintf_r+0xaa8>
   10ed0:	40d0106f          	j	12adc <_vfprintf_r+0x26b0>
   10ed4:	fd04871b          	addiw	a4,s1,-48
   10ed8:	00078413          	mv	s0,a5
   10edc:	00000b93          	li	s7,0
   10ee0:	eee9ea63          	bltu	s3,a4,105d4 <_vfprintf_r+0x1a8>
   10ee4:	00044603          	lbu	a2,0(s0)
   10ee8:	002b979b          	slliw	a5,s7,0x2
   10eec:	017787bb          	addw	a5,a5,s7
   10ef0:	0017979b          	slliw	a5,a5,0x1
   10ef4:	00e78bbb          	addw	s7,a5,a4
   10ef8:	fd06071b          	addiw	a4,a2,-48
   10efc:	00140413          	addi	s0,s0,1
   10f00:	fee9f2e3          	bgeu	s3,a4,10ee4 <_vfprintf_r+0xab8>
   10f04:	00060493          	mv	s1,a2
   10f08:	eccff06f          	j	105d4 <_vfprintf_r+0x1a8>
   10f0c:	00044483          	lbu	s1,0(s0)
   10f10:	00496913          	ori	s2,s2,4
   10f14:	0009091b          	sext.w	s2,s2
   10f18:	eb0ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10f1c:	02b00793          	li	a5,43
   10f20:	00044483          	lbu	s1,0(s0)
   10f24:	0cf107a3          	sb	a5,207(sp)
   10f28:	ea0ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10f2c:	00813783          	ld	a5,8(sp)
   10f30:	00044483          	lbu	s1,0(s0)
   10f34:	0007aa03          	lw	s4,0(a5)
   10f38:	00878793          	addi	a5,a5,8
   10f3c:	00f13423          	sd	a5,8(sp)
   10f40:	e80a5463          	bgez	s4,105c8 <_vfprintf_r+0x19c>
   10f44:	41400a3b          	negw	s4,s4
   10f48:	fc9ff06f          	j	10f10 <_vfprintf_r+0xae4>
   10f4c:	000c8513          	mv	a0,s9
   10f50:	15d050ef          	jal	ra,168ac <_localeconv_r>
   10f54:	00853783          	ld	a5,8(a0)
   10f58:	00078513          	mv	a0,a5
   10f5c:	06f13823          	sd	a5,112(sp)
   10f60:	689070ef          	jal	ra,18de8 <strlen>
   10f64:	00050793          	mv	a5,a0
   10f68:	000c8513          	mv	a0,s9
   10f6c:	00078493          	mv	s1,a5
   10f70:	06f13423          	sd	a5,104(sp)
   10f74:	139050ef          	jal	ra,168ac <_localeconv_r>
   10f78:	01053783          	ld	a5,16(a0)
   10f7c:	04f13c23          	sd	a5,88(sp)
   10f80:	14048ae3          	beqz	s1,118d4 <_vfprintf_r+0x14a8>
   10f84:	00044483          	lbu	s1,0(s0)
   10f88:	e4078063          	beqz	a5,105c8 <_vfprintf_r+0x19c>
   10f8c:	0007c783          	lbu	a5,0(a5)
   10f90:	e2078c63          	beqz	a5,105c8 <_vfprintf_r+0x19c>
   10f94:	40096913          	ori	s2,s2,1024
   10f98:	0009091b          	sext.w	s2,s2
   10f9c:	e2cff06f          	j	105c8 <_vfprintf_r+0x19c>
   10fa0:	00196913          	ori	s2,s2,1
   10fa4:	00044483          	lbu	s1,0(s0)
   10fa8:	0009091b          	sext.w	s2,s2
   10fac:	e1cff06f          	j	105c8 <_vfprintf_r+0x19c>
   10fb0:	0cf14783          	lbu	a5,207(sp)
   10fb4:	00044483          	lbu	s1,0(s0)
   10fb8:	e0079863          	bnez	a5,105c8 <_vfprintf_r+0x19c>
   10fbc:	02000793          	li	a5,32
   10fc0:	0cf107a3          	sb	a5,207(sp)
   10fc4:	e04ff06f          	j	105c8 <_vfprintf_r+0x19c>
   10fc8:	01096913          	ori	s2,s2,16
   10fcc:	000b8e13          	mv	t3,s7
   10fd0:	0009091b          	sext.w	s2,s2
   10fd4:	00813703          	ld	a4,8(sp)
   10fd8:	02097793          	andi	a5,s2,32
   10fdc:	00870693          	addi	a3,a4,8
   10fe0:	080780e3          	beqz	a5,11860 <_vfprintf_r+0x1434>
   10fe4:	00073783          	ld	a5,0(a4)
   10fe8:	00078993          	mv	s3,a5
   10fec:	0807cae3          	bltz	a5,11880 <_vfprintf_r+0x1454>
   10ff0:	fff00793          	li	a5,-1
   10ff4:	50fe0063          	beq	t3,a5,114f4 <_vfprintf_r+0x10c8>
   10ff8:	f7f97713          	andi	a4,s2,-129
   10ffc:	00d13423          	sd	a3,8(sp)
   11000:	00070a9b          	sext.w	s5,a4
   11004:	4e099c63          	bnez	s3,114fc <_vfprintf_r+0x10d0>
   11008:	4e0e1e63          	bnez	t3,11504 <_vfprintf_r+0x10d8>
   1100c:	000a8913          	mv	s2,s5
   11010:	00000e13          	li	t3,0
   11014:	00000b93          	li	s7,0
   11018:	17c10d13          	addi	s10,sp,380
   1101c:	d6dff06f          	j	10d88 <_vfprintf_r+0x95c>
   11020:	00090a93          	mv	s5,s2
   11024:	00100693          	li	a3,1
   11028:	4cd78a63          	beq	a5,a3,114fc <_vfprintf_r+0x10d0>
   1102c:	00200693          	li	a3,2
   11030:	06d78463          	beq	a5,a3,11098 <_vfprintf_r+0xc6c>
   11034:	17c10b93          	addi	s7,sp,380
   11038:	000b8d13          	mv	s10,s7
   1103c:	0079f793          	andi	a5,s3,7
   11040:	03078793          	addi	a5,a5,48
   11044:	fefd0fa3          	sb	a5,-1(s10)
   11048:	0039d993          	srli	s3,s3,0x3
   1104c:	000d0693          	mv	a3,s10
   11050:	fffd0d13          	addi	s10,s10,-1
   11054:	fe0994e3          	bnez	s3,1103c <_vfprintf_r+0xc10>
   11058:	001af613          	andi	a2,s5,1
   1105c:	06060263          	beqz	a2,110c0 <_vfprintf_r+0xc94>
   11060:	03000613          	li	a2,48
   11064:	04c78e63          	beq	a5,a2,110c0 <_vfprintf_r+0xc94>
   11068:	ffe68693          	addi	a3,a3,-2
   1106c:	fecd0fa3          	sb	a2,-1(s10)
   11070:	40db8bbb          	subw	s7,s7,a3
   11074:	000a8913          	mv	s2,s5
   11078:	00068d13          	mv	s10,a3
   1107c:	d0dff06f          	j	10d88 <_vfprintf_r+0x95c>
   11080:	00100713          	li	a4,1
   11084:	00e79463          	bne	a5,a4,1108c <_vfprintf_r+0xc60>
   11088:	7340106f          	j	127bc <_vfprintf_r+0x2390>
   1108c:	00200713          	li	a4,2
   11090:	00090a93          	mv	s5,s2
   11094:	fae790e3          	bne	a5,a4,11034 <_vfprintf_r+0xc08>
   11098:	04813703          	ld	a4,72(sp)
   1109c:	17c10b93          	addi	s7,sp,380
   110a0:	000b8d13          	mv	s10,s7
   110a4:	00f9f793          	andi	a5,s3,15
   110a8:	00f707b3          	add	a5,a4,a5
   110ac:	0007c783          	lbu	a5,0(a5)
   110b0:	0049d993          	srli	s3,s3,0x4
   110b4:	fffd0d13          	addi	s10,s10,-1
   110b8:	00fd0023          	sb	a5,0(s10)
   110bc:	fe0994e3          	bnez	s3,110a4 <_vfprintf_r+0xc78>
   110c0:	41ab8bbb          	subw	s7,s7,s10
   110c4:	000a8913          	mv	s2,s5
   110c8:	cc1ff06f          	j	10d88 <_vfprintf_r+0x95c>
   110cc:	06500713          	li	a4,101
   110d0:	a8975ae3          	bge	a4,s1,10b64 <_vfprintf_r+0x738>
   110d4:	0f013503          	ld	a0,240(sp)
   110d8:	0f813583          	ld	a1,248(sp)
   110dc:	00000613          	li	a2,0
   110e0:	00000693          	li	a3,0
   110e4:	06f13023          	sd	a5,96(sp)
   110e8:	5410e0ef          	jal	ra,1fe28 <__eqtf2>
   110ec:	06013783          	ld	a5,96(sp)
   110f0:	50051063          	bnez	a0,115f0 <_vfprintf_r+0x11c4>
   110f4:	10812703          	lw	a4,264(sp)
   110f8:	00011697          	auipc	a3,0x11
   110fc:	b3068693          	addi	a3,a3,-1232 # 21c28 <__clzdi2+0xb8>
   11100:	00ddb023          	sd	a3,0(s11)
   11104:	0017071b          	addiw	a4,a4,1
   11108:	00100693          	li	a3,1
   1110c:	00178793          	addi	a5,a5,1
   11110:	00ddb423          	sd	a3,8(s11)
   11114:	10e12423          	sw	a4,264(sp)
   11118:	0007069b          	sext.w	a3,a4
   1111c:	10f13823          	sd	a5,272(sp)
   11120:	00700713          	li	a4,7
   11124:	010d8d93          	addi	s11,s11,16
   11128:	3ed748e3          	blt	a4,a3,11d18 <_vfprintf_r+0x18ec>
   1112c:	0d812703          	lw	a4,216(sp)
   11130:	02013683          	ld	a3,32(sp)
   11134:	76d75463          	bge	a4,a3,1189c <_vfprintf_r+0x1470>
   11138:	04013703          	ld	a4,64(sp)
   1113c:	03813683          	ld	a3,56(sp)
   11140:	010d8d93          	addi	s11,s11,16
   11144:	feedb823          	sd	a4,-16(s11)
   11148:	10812703          	lw	a4,264(sp)
   1114c:	00d787b3          	add	a5,a5,a3
   11150:	feddbc23          	sd	a3,-8(s11)
   11154:	0017071b          	addiw	a4,a4,1
   11158:	0007069b          	sext.w	a3,a4
   1115c:	10e12423          	sw	a4,264(sp)
   11160:	10f13823          	sd	a5,272(sp)
   11164:	00700713          	li	a4,7
   11168:	0ad746e3          	blt	a4,a3,11a14 <_vfprintf_r+0x15e8>
   1116c:	02013703          	ld	a4,32(sp)
   11170:	fff7049b          	addiw	s1,a4,-1
   11174:	dc905263          	blez	s1,10738 <_vfprintf_r+0x30c>
   11178:	10812703          	lw	a4,264(sp)
   1117c:	3a9b5ee3          	bge	s6,s1,11d38 <_vfprintf_r+0x190c>
   11180:	00700993          	li	s3,7
   11184:	00c0006f          	j	11190 <_vfprintf_r+0xd64>
   11188:	ff04849b          	addiw	s1,s1,-16
   1118c:	3a9b56e3          	bge	s6,s1,11d38 <_vfprintf_r+0x190c>
   11190:	0017069b          	addiw	a3,a4,1
   11194:	01078793          	addi	a5,a5,16
   11198:	00011717          	auipc	a4,0x11
   1119c:	c1870713          	addi	a4,a4,-1000 # 21db0 <zeroes.0>
   111a0:	00edb023          	sd	a4,0(s11)
   111a4:	016db423          	sd	s6,8(s11)
   111a8:	10f13823          	sd	a5,272(sp)
   111ac:	0006871b          	sext.w	a4,a3
   111b0:	10d12423          	sw	a3,264(sp)
   111b4:	010d8d93          	addi	s11,s11,16
   111b8:	fce9d8e3          	bge	s3,a4,11188 <_vfprintf_r+0xd5c>
   111bc:	10010613          	addi	a2,sp,256
   111c0:	000c0593          	mv	a1,s8
   111c4:	000c8513          	mv	a0,s9
   111c8:	5440a0ef          	jal	ra,1b70c <__sprint_r>
   111cc:	1c051c63          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   111d0:	11013783          	ld	a5,272(sp)
   111d4:	10812703          	lw	a4,264(sp)
   111d8:	18010d93          	addi	s11,sp,384
   111dc:	fadff06f          	j	11188 <_vfprintf_r+0xd5c>
   111e0:	415a09bb          	subw	s3,s4,s5
   111e4:	d1305e63          	blez	s3,10700 <_vfprintf_r+0x2d4>
   111e8:	10812703          	lw	a4,264(sp)
   111ec:	093b5663          	bge	s6,s3,11278 <_vfprintf_r+0xe4c>
   111f0:	06813023          	sd	s0,96(sp)
   111f4:	00700893          	li	a7,7
   111f8:	000c0413          	mv	s0,s8
   111fc:	00098c13          	mv	s8,s3
   11200:	000e0993          	mv	s3,t3
   11204:	00c0006f          	j	11210 <_vfprintf_r+0xde4>
   11208:	ff0c0c1b          	addiw	s8,s8,-16
   1120c:	058b5e63          	bge	s6,s8,11268 <_vfprintf_r+0xe3c>
   11210:	0017069b          	addiw	a3,a4,1
   11214:	01078793          	addi	a5,a5,16
   11218:	00011717          	auipc	a4,0x11
   1121c:	b9870713          	addi	a4,a4,-1128 # 21db0 <zeroes.0>
   11220:	00edb023          	sd	a4,0(s11)
   11224:	016db423          	sd	s6,8(s11)
   11228:	10f13823          	sd	a5,272(sp)
   1122c:	0006871b          	sext.w	a4,a3
   11230:	10d12423          	sw	a3,264(sp)
   11234:	010d8d93          	addi	s11,s11,16
   11238:	fce8d8e3          	bge	a7,a4,11208 <_vfprintf_r+0xddc>
   1123c:	10010613          	addi	a2,sp,256
   11240:	00040593          	mv	a1,s0
   11244:	000c8513          	mv	a0,s9
   11248:	4c40a0ef          	jal	ra,1b70c <__sprint_r>
   1124c:	320510e3          	bnez	a0,11d6c <_vfprintf_r+0x1940>
   11250:	ff0c0c1b          	addiw	s8,s8,-16
   11254:	11013783          	ld	a5,272(sp)
   11258:	10812703          	lw	a4,264(sp)
   1125c:	18010d93          	addi	s11,sp,384
   11260:	00700893          	li	a7,7
   11264:	fb8b46e3          	blt	s6,s8,11210 <_vfprintf_r+0xde4>
   11268:	00098e13          	mv	t3,s3
   1126c:	000c0993          	mv	s3,s8
   11270:	00040c13          	mv	s8,s0
   11274:	06013403          	ld	s0,96(sp)
   11278:	0017071b          	addiw	a4,a4,1
   1127c:	00011697          	auipc	a3,0x11
   11280:	b3468693          	addi	a3,a3,-1228 # 21db0 <zeroes.0>
   11284:	013787b3          	add	a5,a5,s3
   11288:	00ddb023          	sd	a3,0(s11)
   1128c:	013db423          	sd	s3,8(s11)
   11290:	0007069b          	sext.w	a3,a4
   11294:	10e12423          	sw	a4,264(sp)
   11298:	10f13823          	sd	a5,272(sp)
   1129c:	00700713          	li	a4,7
   112a0:	010d8d93          	addi	s11,s11,16
   112a4:	c4d75e63          	bge	a4,a3,10700 <_vfprintf_r+0x2d4>
   112a8:	10010613          	addi	a2,sp,256
   112ac:	000c0593          	mv	a1,s8
   112b0:	000c8513          	mv	a0,s9
   112b4:	07c13023          	sd	t3,96(sp)
   112b8:	4540a0ef          	jal	ra,1b70c <__sprint_r>
   112bc:	0e051463          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   112c0:	11013783          	ld	a5,272(sp)
   112c4:	06013e03          	ld	t3,96(sp)
   112c8:	18010d93          	addi	s11,sp,384
   112cc:	c34ff06f          	j	10700 <_vfprintf_r+0x2d4>
   112d0:	10812703          	lw	a4,264(sp)
   112d4:	073b5663          	bge	s6,s3,11340 <_vfprintf_r+0xf14>
   112d8:	00700893          	li	a7,7
   112dc:	00c0006f          	j	112e8 <_vfprintf_r+0xebc>
   112e0:	ff09899b          	addiw	s3,s3,-16
   112e4:	053b5e63          	bge	s6,s3,11340 <_vfprintf_r+0xf14>
   112e8:	0017069b          	addiw	a3,a4,1
   112ec:	01078793          	addi	a5,a5,16
   112f0:	00011717          	auipc	a4,0x11
   112f4:	ac070713          	addi	a4,a4,-1344 # 21db0 <zeroes.0>
   112f8:	00edb023          	sd	a4,0(s11)
   112fc:	016db423          	sd	s6,8(s11)
   11300:	10f13823          	sd	a5,272(sp)
   11304:	0006871b          	sext.w	a4,a3
   11308:	10d12423          	sw	a3,264(sp)
   1130c:	010d8d93          	addi	s11,s11,16
   11310:	fce8d8e3          	bge	a7,a4,112e0 <_vfprintf_r+0xeb4>
   11314:	10010613          	addi	a2,sp,256
   11318:	000c0593          	mv	a1,s8
   1131c:	000c8513          	mv	a0,s9
   11320:	3ec0a0ef          	jal	ra,1b70c <__sprint_r>
   11324:	08051063          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11328:	ff09899b          	addiw	s3,s3,-16
   1132c:	11013783          	ld	a5,272(sp)
   11330:	10812703          	lw	a4,264(sp)
   11334:	18010d93          	addi	s11,sp,384
   11338:	00700893          	li	a7,7
   1133c:	fb3b46e3          	blt	s6,s3,112e8 <_vfprintf_r+0xebc>
   11340:	0017071b          	addiw	a4,a4,1
   11344:	00011697          	auipc	a3,0x11
   11348:	a6c68693          	addi	a3,a3,-1428 # 21db0 <zeroes.0>
   1134c:	013787b3          	add	a5,a5,s3
   11350:	00ddb023          	sd	a3,0(s11)
   11354:	013db423          	sd	s3,8(s11)
   11358:	0007069b          	sext.w	a3,a4
   1135c:	10e12423          	sw	a4,264(sp)
   11360:	10f13823          	sd	a5,272(sp)
   11364:	00700713          	li	a4,7
   11368:	010d8d93          	addi	s11,s11,16
   1136c:	b8d75e63          	bge	a4,a3,10708 <_vfprintf_r+0x2dc>
   11370:	10010613          	addi	a2,sp,256
   11374:	000c0593          	mv	a1,s8
   11378:	000c8513          	mv	a0,s9
   1137c:	3900a0ef          	jal	ra,1b70c <__sprint_r>
   11380:	02051263          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11384:	11013783          	ld	a5,272(sp)
   11388:	18010d93          	addi	s11,sp,384
   1138c:	b7cff06f          	j	10708 <_vfprintf_r+0x2dc>
   11390:	10010613          	addi	a2,sp,256
   11394:	000c0593          	mv	a1,s8
   11398:	000c8513          	mv	a0,s9
   1139c:	3700a0ef          	jal	ra,1b70c <__sprint_r>
   113a0:	bc050263          	beqz	a0,10764 <_vfprintf_r+0x338>
   113a4:	01013583          	ld	a1,16(sp)
   113a8:	be058863          	beqz	a1,10798 <_vfprintf_r+0x36c>
   113ac:	000c8513          	mv	a0,s9
   113b0:	368020ef          	jal	ra,13718 <_free_r>
   113b4:	be4ff06f          	j	10798 <_vfprintf_r+0x36c>
   113b8:	10812703          	lw	a4,264(sp)
   113bc:	00011997          	auipc	s3,0x11
   113c0:	9e498993          	addi	s3,s3,-1564 # 21da0 <blanks.1>
   113c4:	0cdb5863          	bge	s6,a3,11494 <_vfprintf_r+0x1068>
   113c8:	08813423          	sd	s0,136(sp)
   113cc:	00068413          	mv	s0,a3
   113d0:	000c0693          	mv	a3,s8
   113d4:	08913023          	sd	s1,128(sp)
   113d8:	000a8c13          	mv	s8,s5
   113dc:	000c8493          	mv	s1,s9
   113e0:	000a0a93          	mv	s5,s4
   113e4:	000d0c93          	mv	s9,s10
   113e8:	00090a13          	mv	s4,s2
   113ec:	000b8d13          	mv	s10,s7
   113f0:	00700f93          	li	t6,7
   113f4:	07e13023          	sd	t5,96(sp)
   113f8:	07d13c23          	sd	t4,120(sp)
   113fc:	000e0b93          	mv	s7,t3
   11400:	00068913          	mv	s2,a3
   11404:	00c0006f          	j	11410 <_vfprintf_r+0xfe4>
   11408:	ff04041b          	addiw	s0,s0,-16
   1140c:	048b5863          	bge	s6,s0,1145c <_vfprintf_r+0x1030>
   11410:	0017071b          	addiw	a4,a4,1
   11414:	01078793          	addi	a5,a5,16
   11418:	013db023          	sd	s3,0(s11)
   1141c:	016db423          	sd	s6,8(s11)
   11420:	10f13823          	sd	a5,272(sp)
   11424:	10e12423          	sw	a4,264(sp)
   11428:	010d8d93          	addi	s11,s11,16
   1142c:	fcefdee3          	bge	t6,a4,11408 <_vfprintf_r+0xfdc>
   11430:	10010613          	addi	a2,sp,256
   11434:	00090593          	mv	a1,s2
   11438:	00048513          	mv	a0,s1
   1143c:	2d00a0ef          	jal	ra,1b70c <__sprint_r>
   11440:	0a0518e3          	bnez	a0,11cf0 <_vfprintf_r+0x18c4>
   11444:	ff04041b          	addiw	s0,s0,-16
   11448:	11013783          	ld	a5,272(sp)
   1144c:	10812703          	lw	a4,264(sp)
   11450:	18010d93          	addi	s11,sp,384
   11454:	00700f93          	li	t6,7
   11458:	fa8b4ce3          	blt	s6,s0,11410 <_vfprintf_r+0xfe4>
   1145c:	000b8e13          	mv	t3,s7
   11460:	00040693          	mv	a3,s0
   11464:	000d0b93          	mv	s7,s10
   11468:	06013f03          	ld	t5,96(sp)
   1146c:	000c8d13          	mv	s10,s9
   11470:	07813e83          	ld	t4,120(sp)
   11474:	00048c93          	mv	s9,s1
   11478:	08813403          	ld	s0,136(sp)
   1147c:	08013483          	ld	s1,128(sp)
   11480:	00090613          	mv	a2,s2
   11484:	000a0913          	mv	s2,s4
   11488:	000a8a13          	mv	s4,s5
   1148c:	000c0a93          	mv	s5,s8
   11490:	00060c13          	mv	s8,a2
   11494:	0017071b          	addiw	a4,a4,1
   11498:	00d787b3          	add	a5,a5,a3
   1149c:	00ddb423          	sd	a3,8(s11)
   114a0:	013db023          	sd	s3,0(s11)
   114a4:	0007069b          	sext.w	a3,a4
   114a8:	10e12423          	sw	a4,264(sp)
   114ac:	10f13823          	sd	a5,272(sp)
   114b0:	00700713          	li	a4,7
   114b4:	010d8d93          	addi	s11,s11,16
   114b8:	9cd75663          	bge	a4,a3,10684 <_vfprintf_r+0x258>
   114bc:	10010613          	addi	a2,sp,256
   114c0:	000c0593          	mv	a1,s8
   114c4:	000c8513          	mv	a0,s9
   114c8:	09c13023          	sd	t3,128(sp)
   114cc:	07d13c23          	sd	t4,120(sp)
   114d0:	07e13023          	sd	t5,96(sp)
   114d4:	2380a0ef          	jal	ra,1b70c <__sprint_r>
   114d8:	ec0516e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   114dc:	11013783          	ld	a5,272(sp)
   114e0:	08013e03          	ld	t3,128(sp)
   114e4:	07813e83          	ld	t4,120(sp)
   114e8:	06013f03          	ld	t5,96(sp)
   114ec:	18010d93          	addi	s11,sp,384
   114f0:	994ff06f          	j	10684 <_vfprintf_r+0x258>
   114f4:	00090a93          	mv	s5,s2
   114f8:	00d13423          	sd	a3,8(sp)
   114fc:	00900793          	li	a5,9
   11500:	6537e463          	bltu	a5,s3,11b48 <_vfprintf_r+0x171c>
   11504:	0309899b          	addiw	s3,s3,48
   11508:	17310da3          	sb	s3,379(sp)
   1150c:	000a8913          	mv	s2,s5
   11510:	00100b93          	li	s7,1
   11514:	17b10d13          	addi	s10,sp,379
   11518:	871ff06f          	j	10d88 <_vfprintf_r+0x95c>
   1151c:	10010613          	addi	a2,sp,256
   11520:	000c0593          	mv	a1,s8
   11524:	000c8513          	mv	a0,s9
   11528:	07c13c23          	sd	t3,120(sp)
   1152c:	07d13023          	sd	t4,96(sp)
   11530:	1dc0a0ef          	jal	ra,1b70c <__sprint_r>
   11534:	e60518e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11538:	11013783          	ld	a5,272(sp)
   1153c:	07813e03          	ld	t3,120(sp)
   11540:	06013e83          	ld	t4,96(sp)
   11544:	18010d93          	addi	s11,sp,384
   11548:	9b0ff06f          	j	106f8 <_vfprintf_r+0x2cc>
   1154c:	10812703          	lw	a4,264(sp)
   11550:	00011997          	auipc	s3,0x11
   11554:	85098993          	addi	s3,s3,-1968 # 21da0 <blanks.1>
   11558:	00700913          	li	s2,7
   1155c:	009b4863          	blt	s6,s1,1156c <_vfprintf_r+0x1140>
   11560:	0540006f          	j	115b4 <_vfprintf_r+0x1188>
   11564:	ff04849b          	addiw	s1,s1,-16
   11568:	049b5663          	bge	s6,s1,115b4 <_vfprintf_r+0x1188>
   1156c:	0017071b          	addiw	a4,a4,1
   11570:	01078793          	addi	a5,a5,16
   11574:	013db023          	sd	s3,0(s11)
   11578:	016db423          	sd	s6,8(s11)
   1157c:	10f13823          	sd	a5,272(sp)
   11580:	10e12423          	sw	a4,264(sp)
   11584:	010d8d93          	addi	s11,s11,16
   11588:	fce95ee3          	bge	s2,a4,11564 <_vfprintf_r+0x1138>
   1158c:	10010613          	addi	a2,sp,256
   11590:	000c0593          	mv	a1,s8
   11594:	000c8513          	mv	a0,s9
   11598:	1740a0ef          	jal	ra,1b70c <__sprint_r>
   1159c:	e00514e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   115a0:	ff04849b          	addiw	s1,s1,-16
   115a4:	11013783          	ld	a5,272(sp)
   115a8:	10812703          	lw	a4,264(sp)
   115ac:	18010d93          	addi	s11,sp,384
   115b0:	fa9b4ee3          	blt	s6,s1,1156c <_vfprintf_r+0x1140>
   115b4:	0017069b          	addiw	a3,a4,1
   115b8:	009787b3          	add	a5,a5,s1
   115bc:	013db023          	sd	s3,0(s11)
   115c0:	009db423          	sd	s1,8(s11)
   115c4:	10f13823          	sd	a5,272(sp)
   115c8:	10d12423          	sw	a3,264(sp)
   115cc:	00700713          	li	a4,7
   115d0:	96d75c63          	bge	a4,a3,10748 <_vfprintf_r+0x31c>
   115d4:	10010613          	addi	a2,sp,256
   115d8:	000c0593          	mv	a1,s8
   115dc:	000c8513          	mv	a0,s9
   115e0:	12c0a0ef          	jal	ra,1b70c <__sprint_r>
   115e4:	dc0510e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   115e8:	11013783          	ld	a5,272(sp)
   115ec:	95cff06f          	j	10748 <_vfprintf_r+0x31c>
   115f0:	0d812603          	lw	a2,216(sp)
   115f4:	64c05263          	blez	a2,11c38 <_vfprintf_r+0x180c>
   115f8:	01813703          	ld	a4,24(sp)
   115fc:	02013683          	ld	a3,32(sp)
   11600:	0007049b          	sext.w	s1,a4
   11604:	32e6c863          	blt	a3,a4,11934 <_vfprintf_r+0x1508>
   11608:	02905663          	blez	s1,11634 <_vfprintf_r+0x1208>
   1160c:	10812703          	lw	a4,264(sp)
   11610:	009787b3          	add	a5,a5,s1
   11614:	01adb023          	sd	s10,0(s11)
   11618:	0017069b          	addiw	a3,a4,1
   1161c:	009db423          	sd	s1,8(s11)
   11620:	10f13823          	sd	a5,272(sp)
   11624:	10d12423          	sw	a3,264(sp)
   11628:	00700713          	li	a4,7
   1162c:	010d8d93          	addi	s11,s11,16
   11630:	32d74ae3          	blt	a4,a3,12164 <_vfprintf_r+0x1d38>
   11634:	fff4c713          	not	a4,s1
   11638:	43f75713          	srai	a4,a4,0x3f
   1163c:	00e4f4b3          	and	s1,s1,a4
   11640:	01813703          	ld	a4,24(sp)
   11644:	409704bb          	subw	s1,a4,s1
   11648:	42904e63          	bgtz	s1,11a84 <_vfprintf_r+0x1658>
   1164c:	01813683          	ld	a3,24(sp)
   11650:	40097713          	andi	a4,s2,1024
   11654:	00dd04b3          	add	s1,s10,a3
   11658:	0e071ae3          	bnez	a4,11f4c <_vfprintf_r+0x1b20>
   1165c:	0d812703          	lw	a4,216(sp)
   11660:	02013683          	ld	a3,32(sp)
   11664:	00d74663          	blt	a4,a3,11670 <_vfprintf_r+0x1244>
   11668:	00197693          	andi	a3,s2,1
   1166c:	320680e3          	beqz	a3,1218c <_vfprintf_r+0x1d60>
   11670:	04013683          	ld	a3,64(sp)
   11674:	03813603          	ld	a2,56(sp)
   11678:	010d8d93          	addi	s11,s11,16
   1167c:	feddb823          	sd	a3,-16(s11)
   11680:	10812683          	lw	a3,264(sp)
   11684:	00c787b3          	add	a5,a5,a2
   11688:	fecdbc23          	sd	a2,-8(s11)
   1168c:	0016869b          	addiw	a3,a3,1
   11690:	0006861b          	sext.w	a2,a3
   11694:	10d12423          	sw	a3,264(sp)
   11698:	10f13823          	sd	a5,272(sp)
   1169c:	00700693          	li	a3,7
   116a0:	00c6d463          	bge	a3,a2,116a8 <_vfprintf_r+0x127c>
   116a4:	0000106f          	j	126a4 <_vfprintf_r+0x2278>
   116a8:	02013683          	ld	a3,32(sp)
   116ac:	40e6863b          	subw	a2,a3,a4
   116b0:	00dd06b3          	add	a3,s10,a3
   116b4:	409686bb          	subw	a3,a3,s1
   116b8:	00060713          	mv	a4,a2
   116bc:	00c6d463          	bge	a3,a2,116c4 <_vfprintf_r+0x1298>
   116c0:	00068713          	mv	a4,a3
   116c4:	0007099b          	sext.w	s3,a4
   116c8:	03305863          	blez	s3,116f8 <_vfprintf_r+0x12cc>
   116cc:	10812703          	lw	a4,264(sp)
   116d0:	013787b3          	add	a5,a5,s3
   116d4:	009db023          	sd	s1,0(s11)
   116d8:	0017069b          	addiw	a3,a4,1
   116dc:	013db423          	sd	s3,8(s11)
   116e0:	10f13823          	sd	a5,272(sp)
   116e4:	10d12423          	sw	a3,264(sp)
   116e8:	00700713          	li	a4,7
   116ec:	010d8d93          	addi	s11,s11,16
   116f0:	00d75463          	bge	a4,a3,116f8 <_vfprintf_r+0x12cc>
   116f4:	0040106f          	j	126f8 <_vfprintf_r+0x22cc>
   116f8:	fff9c493          	not	s1,s3
   116fc:	43f4d493          	srai	s1,s1,0x3f
   11700:	0099f4b3          	and	s1,s3,s1
   11704:	409604bb          	subw	s1,a2,s1
   11708:	00904463          	bgtz	s1,11710 <_vfprintf_r+0x12e4>
   1170c:	82cff06f          	j	10738 <_vfprintf_r+0x30c>
   11710:	10812703          	lw	a4,264(sp)
   11714:	629b5263          	bge	s6,s1,11d38 <_vfprintf_r+0x190c>
   11718:	00700993          	li	s3,7
   1171c:	00c0006f          	j	11728 <_vfprintf_r+0x12fc>
   11720:	ff04849b          	addiw	s1,s1,-16
   11724:	609b5a63          	bge	s6,s1,11d38 <_vfprintf_r+0x190c>
   11728:	0017069b          	addiw	a3,a4,1
   1172c:	01078793          	addi	a5,a5,16
   11730:	00010717          	auipc	a4,0x10
   11734:	68070713          	addi	a4,a4,1664 # 21db0 <zeroes.0>
   11738:	00edb023          	sd	a4,0(s11)
   1173c:	016db423          	sd	s6,8(s11)
   11740:	10f13823          	sd	a5,272(sp)
   11744:	0006871b          	sext.w	a4,a3
   11748:	10d12423          	sw	a3,264(sp)
   1174c:	010d8d93          	addi	s11,s11,16
   11750:	fce9d8e3          	bge	s3,a4,11720 <_vfprintf_r+0x12f4>
   11754:	10010613          	addi	a2,sp,256
   11758:	000c0593          	mv	a1,s8
   1175c:	000c8513          	mv	a0,s9
   11760:	7ad090ef          	jal	ra,1b70c <__sprint_r>
   11764:	c40510e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11768:	11013783          	ld	a5,272(sp)
   1176c:	10812703          	lw	a4,264(sp)
   11770:	18010d93          	addi	s11,sp,384
   11774:	fadff06f          	j	11720 <_vfprintf_r+0x12f4>
   11778:	00197593          	andi	a1,s2,1
   1177c:	c0059663          	bnez	a1,10b88 <_vfprintf_r+0x75c>
   11780:	00cdb423          	sd	a2,8(s11)
   11784:	11313823          	sd	s3,272(sp)
   11788:	10f12423          	sw	a5,264(sp)
   1178c:	00700713          	li	a4,7
   11790:	1ef74063          	blt	a4,a5,11970 <_vfprintf_r+0x1544>
   11794:	0026869b          	addiw	a3,a3,2
   11798:	020d8d93          	addi	s11,s11,32
   1179c:	c94ff06f          	j	10c30 <_vfprintf_r+0x804>
   117a0:	c8f05863          	blez	a5,10c30 <_vfprintf_r+0x804>
   117a4:	00fb4463          	blt	s6,a5,117ac <_vfprintf_r+0x1380>
   117a8:	32c0106f          	j	12ad4 <_vfprintf_r+0x26a8>
   117ac:	00700d13          	li	s10,7
   117b0:	00078d93          	mv	s11,a5
   117b4:	0100006f          	j	117c4 <_vfprintf_r+0x1398>
   117b8:	ff0d8d9b          	addiw	s11,s11,-16
   117bc:	19bb5263          	bge	s6,s11,11940 <_vfprintf_r+0x1514>
   117c0:	001b871b          	addiw	a4,s7,1
   117c4:	01098993          	addi	s3,s3,16
   117c8:	00010797          	auipc	a5,0x10
   117cc:	5e878793          	addi	a5,a5,1512 # 21db0 <zeroes.0>
   117d0:	00f4b023          	sd	a5,0(s1)
   117d4:	0164b423          	sd	s6,8(s1)
   117d8:	11313823          	sd	s3,272(sp)
   117dc:	00070b9b          	sext.w	s7,a4
   117e0:	10e12423          	sw	a4,264(sp)
   117e4:	01048493          	addi	s1,s1,16
   117e8:	fd7d58e3          	bge	s10,s7,117b8 <_vfprintf_r+0x138c>
   117ec:	10010613          	addi	a2,sp,256
   117f0:	000c0593          	mv	a1,s8
   117f4:	000c8513          	mv	a0,s9
   117f8:	715090ef          	jal	ra,1b70c <__sprint_r>
   117fc:	ba0514e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11800:	11013983          	ld	s3,272(sp)
   11804:	10812b83          	lw	s7,264(sp)
   11808:	18010493          	addi	s1,sp,384
   1180c:	fadff06f          	j	117b8 <_vfprintf_r+0x138c>
   11810:	010af793          	andi	a5,s5,16
   11814:	0c079463          	bnez	a5,118dc <_vfprintf_r+0x14b0>
   11818:	00813703          	ld	a4,8(sp)
   1181c:	040af793          	andi	a5,s5,64
   11820:	00072983          	lw	s3,0(a4)
   11824:	66078863          	beqz	a5,11e94 <_vfprintf_r+0x1a68>
   11828:	03099993          	slli	s3,s3,0x30
   1182c:	0309d993          	srli	s3,s3,0x30
   11830:	00d13423          	sd	a3,8(sp)
   11834:	00100793          	li	a5,1
   11838:	d24ff06f          	j	10d5c <_vfprintf_r+0x930>
   1183c:	01097793          	andi	a5,s2,16
   11840:	0e079463          	bnez	a5,11928 <_vfprintf_r+0x14fc>
   11844:	00813703          	ld	a4,8(sp)
   11848:	04097793          	andi	a5,s2,64
   1184c:	00072983          	lw	s3,0(a4)
   11850:	66078a63          	beqz	a5,11ec4 <_vfprintf_r+0x1a98>
   11854:	03099993          	slli	s3,s3,0x30
   11858:	0309d993          	srli	s3,s3,0x30
   1185c:	cf0ff06f          	j	10d4c <_vfprintf_r+0x920>
   11860:	01097793          	andi	a5,s2,16
   11864:	0a079a63          	bnez	a5,11918 <_vfprintf_r+0x14ec>
   11868:	04097793          	andi	a5,s2,64
   1186c:	64078063          	beqz	a5,11eac <_vfprintf_r+0x1a80>
   11870:	00813783          	ld	a5,8(sp)
   11874:	00079983          	lh	s3,0(a5)
   11878:	00098793          	mv	a5,s3
   1187c:	f607da63          	bgez	a5,10ff0 <_vfprintf_r+0xbc4>
   11880:	02d00793          	li	a5,45
   11884:	0cf107a3          	sb	a5,207(sp)
   11888:	413009b3          	neg	s3,s3
   1188c:	00d13423          	sd	a3,8(sp)
   11890:	00090a93          	mv	s5,s2
   11894:	00100793          	li	a5,1
   11898:	cc8ff06f          	j	10d60 <_vfprintf_r+0x934>
   1189c:	00197713          	andi	a4,s2,1
   118a0:	00071463          	bnez	a4,118a8 <_vfprintf_r+0x147c>
   118a4:	e95fe06f          	j	10738 <_vfprintf_r+0x30c>
   118a8:	891ff06f          	j	11138 <_vfprintf_r+0xd0c>
   118ac:	000b8e13          	mv	t3,s7
   118b0:	f24ff06f          	j	10fd4 <_vfprintf_r+0xba8>
   118b4:	03000793          	li	a5,48
   118b8:	16f10da3          	sb	a5,379(sp)
   118bc:	17b10d13          	addi	s10,sp,379
   118c0:	cc8ff06f          	j	10d88 <_vfprintf_r+0x95c>
   118c4:	00013783          	ld	a5,0(sp)
   118c8:	00040d13          	mv	s10,s0
   118cc:	00f73023          	sd	a5,0(a4)
   118d0:	eb5fe06f          	j	10784 <_vfprintf_r+0x358>
   118d4:	00044483          	lbu	s1,0(s0)
   118d8:	cf1fe06f          	j	105c8 <_vfprintf_r+0x19c>
   118dc:	00813783          	ld	a5,8(sp)
   118e0:	00d13423          	sd	a3,8(sp)
   118e4:	0007b983          	ld	s3,0(a5)
   118e8:	00100793          	li	a5,1
   118ec:	c70ff06f          	j	10d5c <_vfprintf_r+0x930>
   118f0:	00813783          	ld	a5,8(sp)
   118f4:	00f78793          	addi	a5,a5,15
   118f8:	ff07f793          	andi	a5,a5,-16
   118fc:	0007b703          	ld	a4,0(a5)
   11900:	0087b683          	ld	a3,8(a5)
   11904:	01078793          	addi	a5,a5,16
   11908:	00f13423          	sd	a5,8(sp)
   1190c:	0ee13823          	sd	a4,240(sp)
   11910:	0ed13c23          	sd	a3,248(sp)
   11914:	f8dfe06f          	j	108a0 <_vfprintf_r+0x474>
   11918:	00813783          	ld	a5,8(sp)
   1191c:	0007b783          	ld	a5,0(a5)
   11920:	00078993          	mv	s3,a5
   11924:	ec8ff06f          	j	10fec <_vfprintf_r+0xbc0>
   11928:	00813783          	ld	a5,8(sp)
   1192c:	0007b983          	ld	s3,0(a5)
   11930:	c1cff06f          	j	10d4c <_vfprintf_r+0x920>
   11934:	0006849b          	sext.w	s1,a3
   11938:	cc904ae3          	bgtz	s1,1160c <_vfprintf_r+0x11e0>
   1193c:	cf9ff06f          	j	11634 <_vfprintf_r+0x1208>
   11940:	000d8793          	mv	a5,s11
   11944:	001b869b          	addiw	a3,s7,1
   11948:	01048713          	addi	a4,s1,16
   1194c:	00f989b3          	add	s3,s3,a5
   11950:	00010617          	auipc	a2,0x10
   11954:	46060613          	addi	a2,a2,1120 # 21db0 <zeroes.0>
   11958:	00f4b423          	sd	a5,8(s1)
   1195c:	00c4b023          	sd	a2,0(s1)
   11960:	11313823          	sd	s3,272(sp)
   11964:	10d12423          	sw	a3,264(sp)
   11968:	00700793          	li	a5,7
   1196c:	7ad7dc63          	bge	a5,a3,12124 <_vfprintf_r+0x1cf8>
   11970:	10010613          	addi	a2,sp,256
   11974:	000c0593          	mv	a1,s8
   11978:	000c8513          	mv	a0,s9
   1197c:	591090ef          	jal	ra,1b70c <__sprint_r>
   11980:	a20512e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11984:	10812683          	lw	a3,264(sp)
   11988:	11013983          	ld	s3,272(sp)
   1198c:	19010d93          	addi	s11,sp,400
   11990:	0016869b          	addiw	a3,a3,1
   11994:	18010493          	addi	s1,sp,384
   11998:	a98ff06f          	j	10c30 <_vfprintf_r+0x804>
   1199c:	00010797          	auipc	a5,0x10
   119a0:	26c78793          	addi	a5,a5,620 # 21c08 <__clzdi2+0x98>
   119a4:	000b8e13          	mv	t3,s7
   119a8:	04f13423          	sd	a5,72(sp)
   119ac:	00813703          	ld	a4,8(sp)
   119b0:	02097793          	andi	a5,s2,32
   119b4:	00870693          	addi	a3,a4,8
   119b8:	12078a63          	beqz	a5,11aec <_vfprintf_r+0x16c0>
   119bc:	00073983          	ld	s3,0(a4)
   119c0:	00197793          	andi	a5,s2,1
   119c4:	00078e63          	beqz	a5,119e0 <_vfprintf_r+0x15b4>
   119c8:	00098c63          	beqz	s3,119e0 <_vfprintf_r+0x15b4>
   119cc:	00296913          	ori	s2,s2,2
   119d0:	03000793          	li	a5,48
   119d4:	0cf10823          	sb	a5,208(sp)
   119d8:	0c9108a3          	sb	s1,209(sp)
   119dc:	0009091b          	sext.w	s2,s2
   119e0:	bff97713          	andi	a4,s2,-1025
   119e4:	00070a9b          	sext.w	s5,a4
   119e8:	00d13423          	sd	a3,8(sp)
   119ec:	00200793          	li	a5,2
   119f0:	b6cff06f          	j	10d5c <_vfprintf_r+0x930>
   119f4:	000b8e13          	mv	t3,s7
   119f8:	00090a93          	mv	s5,s2
   119fc:	c88ff06f          	j	10e84 <_vfprintf_r+0xa58>
   11a00:	20096913          	ori	s2,s2,512
   11a04:	00144483          	lbu	s1,1(s0)
   11a08:	0009091b          	sext.w	s2,s2
   11a0c:	00140413          	addi	s0,s0,1
   11a10:	bb9fe06f          	j	105c8 <_vfprintf_r+0x19c>
   11a14:	10010613          	addi	a2,sp,256
   11a18:	000c0593          	mv	a1,s8
   11a1c:	000c8513          	mv	a0,s9
   11a20:	4ed090ef          	jal	ra,1b70c <__sprint_r>
   11a24:	980510e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11a28:	11013783          	ld	a5,272(sp)
   11a2c:	18010d93          	addi	s11,sp,384
   11a30:	f3cff06f          	j	1116c <_vfprintf_r+0xd40>
   11a34:	02096913          	ori	s2,s2,32
   11a38:	00144483          	lbu	s1,1(s0)
   11a3c:	0009091b          	sext.w	s2,s2
   11a40:	00140413          	addi	s0,s0,1
   11a44:	b85fe06f          	j	105c8 <_vfprintf_r+0x19c>
   11a48:	00010797          	auipc	a5,0x10
   11a4c:	1a878793          	addi	a5,a5,424 # 21bf0 <__clzdi2+0x80>
   11a50:	000b8e13          	mv	t3,s7
   11a54:	04f13423          	sd	a5,72(sp)
   11a58:	f55ff06f          	j	119ac <_vfprintf_r+0x1580>
   11a5c:	000b8e13          	mv	t3,s7
   11a60:	ad8ff06f          	j	10d38 <_vfprintf_r+0x90c>
   11a64:	00600793          	li	a5,6
   11a68:	000b8b9b          	sext.w	s7,s7
   11a6c:	71c7ec63          	bltu	a5,t3,12184 <_vfprintf_r+0x1d58>
   11a70:	000b8a93          	mv	s5,s7
   11a74:	01313423          	sd	s3,8(sp)
   11a78:	00010d17          	auipc	s10,0x10
   11a7c:	1a8d0d13          	addi	s10,s10,424 # 21c20 <__clzdi2+0xb0>
   11a80:	bd1fe06f          	j	10650 <_vfprintf_r+0x224>
   11a84:	10812703          	lw	a4,264(sp)
   11a88:	469b5a63          	bge	s6,s1,11efc <_vfprintf_r+0x1ad0>
   11a8c:	00700b93          	li	s7,7
   11a90:	00c0006f          	j	11a9c <_vfprintf_r+0x1670>
   11a94:	ff04849b          	addiw	s1,s1,-16
   11a98:	469b5263          	bge	s6,s1,11efc <_vfprintf_r+0x1ad0>
   11a9c:	0017069b          	addiw	a3,a4,1
   11aa0:	01078793          	addi	a5,a5,16
   11aa4:	00010717          	auipc	a4,0x10
   11aa8:	30c70713          	addi	a4,a4,780 # 21db0 <zeroes.0>
   11aac:	00edb023          	sd	a4,0(s11)
   11ab0:	016db423          	sd	s6,8(s11)
   11ab4:	10f13823          	sd	a5,272(sp)
   11ab8:	0006871b          	sext.w	a4,a3
   11abc:	10d12423          	sw	a3,264(sp)
   11ac0:	010d8d93          	addi	s11,s11,16
   11ac4:	fcebd8e3          	bge	s7,a4,11a94 <_vfprintf_r+0x1668>
   11ac8:	10010613          	addi	a2,sp,256
   11acc:	000c0593          	mv	a1,s8
   11ad0:	000c8513          	mv	a0,s9
   11ad4:	439090ef          	jal	ra,1b70c <__sprint_r>
   11ad8:	8c0516e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11adc:	11013783          	ld	a5,272(sp)
   11ae0:	10812703          	lw	a4,264(sp)
   11ae4:	18010d93          	addi	s11,sp,384
   11ae8:	fadff06f          	j	11a94 <_vfprintf_r+0x1668>
   11aec:	01097793          	andi	a5,s2,16
   11af0:	20078663          	beqz	a5,11cfc <_vfprintf_r+0x18d0>
   11af4:	00813783          	ld	a5,8(sp)
   11af8:	0007b983          	ld	s3,0(a5)
   11afc:	ec5ff06f          	j	119c0 <_vfprintf_r+0x1594>
   11b00:	10010613          	addi	a2,sp,256
   11b04:	000c0593          	mv	a1,s8
   11b08:	000c8513          	mv	a0,s9
   11b0c:	401090ef          	jal	ra,1b70c <__sprint_r>
   11b10:	88051ae3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11b14:	11013983          	ld	s3,272(sp)
   11b18:	10812783          	lw	a5,264(sp)
   11b1c:	18010493          	addi	s1,sp,384
   11b20:	880ff06f          	j	10ba0 <_vfprintf_r+0x774>
   11b24:	10010613          	addi	a2,sp,256
   11b28:	000c0593          	mv	a1,s8
   11b2c:	000c8513          	mv	a0,s9
   11b30:	3dd090ef          	jal	ra,1b70c <__sprint_r>
   11b34:	860518e3          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11b38:	11013983          	ld	s3,272(sp)
   11b3c:	10812b83          	lw	s7,264(sp)
   11b40:	18010493          	addi	s1,sp,384
   11b44:	888ff06f          	j	10bcc <_vfprintf_r+0x7a0>
   11b48:	00813c23          	sd	s0,24(sp)
   11b4c:	05813403          	ld	s0,88(sp)
   11b50:	17c10b93          	addi	s7,sp,380
   11b54:	400af913          	andi	s2,s5,1024
   11b58:	00000793          	li	a5,0
   11b5c:	000b8d13          	mv	s10,s7
   11b60:	00913823          	sd	s1,16(sp)
   11b64:	03413423          	sd	s4,40(sp)
   11b68:	000b8493          	mv	s1,s7
   11b6c:	00098a13          	mv	s4,s3
   11b70:	000e0b93          	mv	s7,t3
   11b74:	00090993          	mv	s3,s2
   11b78:	00078913          	mv	s2,a5
   11b7c:	00a00593          	li	a1,10
   11b80:	000a0513          	mv	a0,s4
   11b84:	77d0f0ef          	jal	ra,21b00 <__umoddi3>
   11b88:	0305051b          	addiw	a0,a0,48
   11b8c:	fea48fa3          	sb	a0,-1(s1)
   11b90:	0019091b          	addiw	s2,s2,1
   11b94:	fff48493          	addi	s1,s1,-1
   11b98:	00098663          	beqz	s3,11ba4 <_vfprintf_r+0x1778>
   11b9c:	00044683          	lbu	a3,0(s0)
   11ba0:	04d90663          	beq	s2,a3,11bec <_vfprintf_r+0x17c0>
   11ba4:	00a00593          	li	a1,10
   11ba8:	000a0513          	mv	a0,s4
   11bac:	70d0f0ef          	jal	ra,21ab8 <__udivdi3>
   11bb0:	00900793          	li	a5,9
   11bb4:	0147f663          	bgeu	a5,s4,11bc0 <_vfprintf_r+0x1794>
   11bb8:	00050a13          	mv	s4,a0
   11bbc:	fc1ff06f          	j	11b7c <_vfprintf_r+0x1750>
   11bc0:	000b8e13          	mv	t3,s7
   11bc4:	000d0b93          	mv	s7,s10
   11bc8:	00048d13          	mv	s10,s1
   11bcc:	04813c23          	sd	s0,88(sp)
   11bd0:	03213023          	sd	s2,32(sp)
   11bd4:	01813403          	ld	s0,24(sp)
   11bd8:	02813a03          	ld	s4,40(sp)
   11bdc:	01013483          	ld	s1,16(sp)
   11be0:	41ab8bbb          	subw	s7,s7,s10
   11be4:	000a8913          	mv	s2,s5
   11be8:	9a0ff06f          	j	10d88 <_vfprintf_r+0x95c>
   11bec:	0ff00793          	li	a5,255
   11bf0:	faf68ae3          	beq	a3,a5,11ba4 <_vfprintf_r+0x1778>
   11bf4:	00900793          	li	a5,9
   11bf8:	fd47f4e3          	bgeu	a5,s4,11bc0 <_vfprintf_r+0x1794>
   11bfc:	06813783          	ld	a5,104(sp)
   11c00:	07013583          	ld	a1,112(sp)
   11c04:	00000913          	li	s2,0
   11c08:	40f484b3          	sub	s1,s1,a5
   11c0c:	00078613          	mv	a2,a5
   11c10:	00048513          	mv	a0,s1
   11c14:	2a0070ef          	jal	ra,18eb4 <strncpy>
   11c18:	00144683          	lbu	a3,1(s0)
   11c1c:	000a0513          	mv	a0,s4
   11c20:	00a00593          	li	a1,10
   11c24:	00d03733          	snez	a4,a3
   11c28:	00e40433          	add	s0,s0,a4
   11c2c:	68d0f0ef          	jal	ra,21ab8 <__udivdi3>
   11c30:	00050a13          	mv	s4,a0
   11c34:	f49ff06f          	j	11b7c <_vfprintf_r+0x1750>
   11c38:	10812703          	lw	a4,264(sp)
   11c3c:	00010697          	auipc	a3,0x10
   11c40:	fec68693          	addi	a3,a3,-20 # 21c28 <__clzdi2+0xb8>
   11c44:	00ddb023          	sd	a3,0(s11)
   11c48:	0017071b          	addiw	a4,a4,1
   11c4c:	00100693          	li	a3,1
   11c50:	00178793          	addi	a5,a5,1
   11c54:	00ddb423          	sd	a3,8(s11)
   11c58:	10e12423          	sw	a4,264(sp)
   11c5c:	0007069b          	sext.w	a3,a4
   11c60:	10f13823          	sd	a5,272(sp)
   11c64:	00700713          	li	a4,7
   11c68:	010d8d93          	addi	s11,s11,16
   11c6c:	4cd74463          	blt	a4,a3,12134 <_vfprintf_r+0x1d08>
   11c70:	16061063          	bnez	a2,11dd0 <_vfprintf_r+0x19a4>
   11c74:	02013683          	ld	a3,32(sp)
   11c78:	00197713          	andi	a4,s2,1
   11c7c:	00e6e733          	or	a4,a3,a4
   11c80:	00071463          	bnez	a4,11c88 <_vfprintf_r+0x185c>
   11c84:	ab5fe06f          	j	10738 <_vfprintf_r+0x30c>
   11c88:	04013683          	ld	a3,64(sp)
   11c8c:	03813703          	ld	a4,56(sp)
   11c90:	010d8313          	addi	t1,s11,16
   11c94:	00ddb023          	sd	a3,0(s11)
   11c98:	10812683          	lw	a3,264(sp)
   11c9c:	00f707b3          	add	a5,a4,a5
   11ca0:	00edb423          	sd	a4,8(s11)
   11ca4:	0016869b          	addiw	a3,a3,1
   11ca8:	0006871b          	sext.w	a4,a3
   11cac:	10d12423          	sw	a3,264(sp)
   11cb0:	10f13823          	sd	a5,272(sp)
   11cb4:	00700693          	li	a3,7
   11cb8:	56e6c263          	blt	a3,a4,1221c <_vfprintf_r+0x1df0>
   11cbc:	02013683          	ld	a3,32(sp)
   11cc0:	0017071b          	addiw	a4,a4,1
   11cc4:	10e12423          	sw	a4,264(sp)
   11cc8:	00f687b3          	add	a5,a3,a5
   11ccc:	00d33423          	sd	a3,8(t1)
   11cd0:	01a33023          	sd	s10,0(t1)
   11cd4:	0007069b          	sext.w	a3,a4
   11cd8:	10f13823          	sd	a5,272(sp)
   11cdc:	00700713          	li	a4,7
   11ce0:	01030d93          	addi	s11,t1,16
   11ce4:	00d74463          	blt	a4,a3,11cec <_vfprintf_r+0x18c0>
   11ce8:	a51fe06f          	j	10738 <_vfprintf_r+0x30c>
   11cec:	f69fe06f          	j	10c54 <_vfprintf_r+0x828>
   11cf0:	00048c93          	mv	s9,s1
   11cf4:	00090c13          	mv	s8,s2
   11cf8:	eacff06f          	j	113a4 <_vfprintf_r+0xf78>
   11cfc:	00813703          	ld	a4,8(sp)
   11d00:	04097793          	andi	a5,s2,64
   11d04:	00072983          	lw	s3,0(a4)
   11d08:	16078e63          	beqz	a5,11e84 <_vfprintf_r+0x1a58>
   11d0c:	03099993          	slli	s3,s3,0x30
   11d10:	0309d993          	srli	s3,s3,0x30
   11d14:	cadff06f          	j	119c0 <_vfprintf_r+0x1594>
   11d18:	10010613          	addi	a2,sp,256
   11d1c:	000c0593          	mv	a1,s8
   11d20:	000c8513          	mv	a0,s9
   11d24:	1e9090ef          	jal	ra,1b70c <__sprint_r>
   11d28:	e6051e63          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11d2c:	11013783          	ld	a5,272(sp)
   11d30:	18010d93          	addi	s11,sp,384
   11d34:	bf8ff06f          	j	1112c <_vfprintf_r+0xd00>
   11d38:	00010697          	auipc	a3,0x10
   11d3c:	07868693          	addi	a3,a3,120 # 21db0 <zeroes.0>
   11d40:	0017071b          	addiw	a4,a4,1
   11d44:	00ddb023          	sd	a3,0(s11)
   11d48:	009db423          	sd	s1,8(s11)
   11d4c:	009787b3          	add	a5,a5,s1
   11d50:	0007069b          	sext.w	a3,a4
   11d54:	10e12423          	sw	a4,264(sp)
   11d58:	10f13823          	sd	a5,272(sp)
   11d5c:	00700713          	li	a4,7
   11d60:	00d74463          	blt	a4,a3,11d68 <_vfprintf_r+0x193c>
   11d64:	9d1fe06f          	j	10734 <_vfprintf_r+0x308>
   11d68:	eedfe06f          	j	10c54 <_vfprintf_r+0x828>
   11d6c:	00040c13          	mv	s8,s0
   11d70:	e34ff06f          	j	113a4 <_vfprintf_r+0xf78>
   11d74:	0f013503          	ld	a0,240(sp)
   11d78:	0f813583          	ld	a1,248(sp)
   11d7c:	00000613          	li	a2,0
   11d80:	00000693          	li	a3,0
   11d84:	2580e0ef          	jal	ra,1ffdc <__letf2>
   11d88:	100548e3          	bltz	a0,12698 <_vfprintf_r+0x226c>
   11d8c:	0cf14783          	lbu	a5,207(sp)
   11d90:	04700713          	li	a4,71
   11d94:	00010d17          	auipc	s10,0x10
   11d98:	e3cd0d13          	addi	s10,s10,-452 # 21bd0 <__clzdi2+0x60>
   11d9c:	3a974e63          	blt	a4,s1,12158 <_vfprintf_r+0x1d2c>
   11da0:	f7f97913          	andi	s2,s2,-129
   11da4:	00013823          	sd	zero,16(sp)
   11da8:	02013823          	sd	zero,48(sp)
   11dac:	02013423          	sd	zero,40(sp)
   11db0:	00013c23          	sd	zero,24(sp)
   11db4:	0009091b          	sext.w	s2,s2
   11db8:	00300a93          	li	s5,3
   11dbc:	00300b93          	li	s7,3
   11dc0:	00000e13          	li	t3,0
   11dc4:	00078463          	beqz	a5,11dcc <_vfprintf_r+0x19a0>
   11dc8:	f5dfe06f          	j	10d24 <_vfprintf_r+0x8f8>
   11dcc:	899fe06f          	j	10664 <_vfprintf_r+0x238>
   11dd0:	04013683          	ld	a3,64(sp)
   11dd4:	03813703          	ld	a4,56(sp)
   11dd8:	010d8313          	addi	t1,s11,16
   11ddc:	00ddb023          	sd	a3,0(s11)
   11de0:	10812683          	lw	a3,264(sp)
   11de4:	00f707b3          	add	a5,a4,a5
   11de8:	00edb423          	sd	a4,8(s11)
   11dec:	0016869b          	addiw	a3,a3,1
   11df0:	0006871b          	sext.w	a4,a3
   11df4:	10d12423          	sw	a3,264(sp)
   11df8:	10f13823          	sd	a5,272(sp)
   11dfc:	00700693          	li	a3,7
   11e00:	40e6ce63          	blt	a3,a4,1221c <_vfprintf_r+0x1df0>
   11e04:	ea065ce3          	bgez	a2,11cbc <_vfprintf_r+0x1890>
   11e08:	ff000693          	li	a3,-16
   11e0c:	40c004bb          	negw	s1,a2
   11e10:	20d650e3          	bge	a2,a3,12810 <_vfprintf_r+0x23e4>
   11e14:	00700993          	li	s3,7
   11e18:	00c0006f          	j	11e24 <_vfprintf_r+0x19f8>
   11e1c:	ff04849b          	addiw	s1,s1,-16
   11e20:	1e9b58e3          	bge	s6,s1,12810 <_vfprintf_r+0x23e4>
   11e24:	0017069b          	addiw	a3,a4,1
   11e28:	01078793          	addi	a5,a5,16
   11e2c:	00010717          	auipc	a4,0x10
   11e30:	f8470713          	addi	a4,a4,-124 # 21db0 <zeroes.0>
   11e34:	00e33023          	sd	a4,0(t1)
   11e38:	01633423          	sd	s6,8(t1)
   11e3c:	10f13823          	sd	a5,272(sp)
   11e40:	0006871b          	sext.w	a4,a3
   11e44:	10d12423          	sw	a3,264(sp)
   11e48:	01030313          	addi	t1,t1,16
   11e4c:	fce9d8e3          	bge	s3,a4,11e1c <_vfprintf_r+0x19f0>
   11e50:	10010613          	addi	a2,sp,256
   11e54:	000c0593          	mv	a1,s8
   11e58:	000c8513          	mv	a0,s9
   11e5c:	0b1090ef          	jal	ra,1b70c <__sprint_r>
   11e60:	d4051263          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11e64:	11013783          	ld	a5,272(sp)
   11e68:	10812703          	lw	a4,264(sp)
   11e6c:	18010313          	addi	t1,sp,384
   11e70:	fadff06f          	j	11e1c <_vfprintf_r+0x19f0>
   11e74:	000d0513          	mv	a0,s10
   11e78:	771060ef          	jal	ra,18de8 <strlen>
   11e7c:	00050b9b          	sext.w	s7,a0
   11e80:	e79fe06f          	j	10cf8 <_vfprintf_r+0x8cc>
   11e84:	20097793          	andi	a5,s2,512
   11e88:	34078c63          	beqz	a5,121e0 <_vfprintf_r+0x1db4>
   11e8c:	0ff9f993          	andi	s3,s3,255
   11e90:	b31ff06f          	j	119c0 <_vfprintf_r+0x1594>
   11e94:	200af793          	andi	a5,s5,512
   11e98:	32078a63          	beqz	a5,121cc <_vfprintf_r+0x1da0>
   11e9c:	0ff9f993          	andi	s3,s3,255
   11ea0:	00d13423          	sd	a3,8(sp)
   11ea4:	00100793          	li	a5,1
   11ea8:	eb5fe06f          	j	10d5c <_vfprintf_r+0x930>
   11eac:	20097793          	andi	a5,s2,512
   11eb0:	32078e63          	beqz	a5,121ec <_vfprintf_r+0x1dc0>
   11eb4:	00813783          	ld	a5,8(sp)
   11eb8:	00078983          	lb	s3,0(a5)
   11ebc:	00098793          	mv	a5,s3
   11ec0:	92cff06f          	j	10fec <_vfprintf_r+0xbc0>
   11ec4:	20097793          	andi	a5,s2,512
   11ec8:	2e078463          	beqz	a5,121b0 <_vfprintf_r+0x1d84>
   11ecc:	0ff9f993          	andi	s3,s3,255
   11ed0:	e7dfe06f          	j	10d4c <_vfprintf_r+0x920>
   11ed4:	0f813783          	ld	a5,248(sp)
   11ed8:	3207cc63          	bltz	a5,12210 <_vfprintf_r+0x1de4>
   11edc:	0cf14783          	lbu	a5,207(sp)
   11ee0:	04700713          	li	a4,71
   11ee4:	00010d17          	auipc	s10,0x10
   11ee8:	cfcd0d13          	addi	s10,s10,-772 # 21be0 <__clzdi2+0x70>
   11eec:	ea975ae3          	bge	a4,s1,11da0 <_vfprintf_r+0x1974>
   11ef0:	00010d17          	auipc	s10,0x10
   11ef4:	cf8d0d13          	addi	s10,s10,-776 # 21be8 <__clzdi2+0x78>
   11ef8:	ea9ff06f          	j	11da0 <_vfprintf_r+0x1974>
   11efc:	0017071b          	addiw	a4,a4,1
   11f00:	00010697          	auipc	a3,0x10
   11f04:	eb068693          	addi	a3,a3,-336 # 21db0 <zeroes.0>
   11f08:	009787b3          	add	a5,a5,s1
   11f0c:	00ddb023          	sd	a3,0(s11)
   11f10:	009db423          	sd	s1,8(s11)
   11f14:	0007069b          	sext.w	a3,a4
   11f18:	10e12423          	sw	a4,264(sp)
   11f1c:	10f13823          	sd	a5,272(sp)
   11f20:	00700713          	li	a4,7
   11f24:	010d8d93          	addi	s11,s11,16
   11f28:	f2d75263          	bge	a4,a3,1164c <_vfprintf_r+0x1220>
   11f2c:	10010613          	addi	a2,sp,256
   11f30:	000c0593          	mv	a1,s8
   11f34:	000c8513          	mv	a0,s9
   11f38:	7d4090ef          	jal	ra,1b70c <__sprint_r>
   11f3c:	c6051463          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   11f40:	11013783          	ld	a5,272(sp)
   11f44:	18010d93          	addi	s11,sp,384
   11f48:	f04ff06f          	j	1164c <_vfprintf_r+0x1220>
   11f4c:	02013703          	ld	a4,32(sp)
   11f50:	02813b83          	ld	s7,40(sp)
   11f54:	00813c23          	sd	s0,24(sp)
   11f58:	00ed06b3          	add	a3,s10,a4
   11f5c:	07213023          	sd	s2,96(sp)
   11f60:	07413c23          	sd	s4,120(sp)
   11f64:	03513423          	sd	s5,40(sp)
   11f68:	000d8713          	mv	a4,s11
   11f6c:	05813403          	ld	s0,88(sp)
   11f70:	07013a03          	ld	s4,112(sp)
   11f74:	06813983          	ld	s3,104(sp)
   11f78:	03013903          	ld	s2,48(sp)
   11f7c:	00700893          	li	a7,7
   11f80:	000d0d93          	mv	s11,s10
   11f84:	00068a93          	mv	s5,a3
   11f88:	080b8e63          	beqz	s7,12024 <_vfprintf_r+0x1bf8>
   11f8c:	08091e63          	bnez	s2,12028 <_vfprintf_r+0x1bfc>
   11f90:	fff40413          	addi	s0,s0,-1
   11f94:	fffb8b9b          	addiw	s7,s7,-1
   11f98:	10812683          	lw	a3,264(sp)
   11f9c:	013787b3          	add	a5,a5,s3
   11fa0:	01473023          	sd	s4,0(a4)
   11fa4:	0016861b          	addiw	a2,a3,1
   11fa8:	01373423          	sd	s3,8(a4)
   11fac:	10f13823          	sd	a5,272(sp)
   11fb0:	10c12423          	sw	a2,264(sp)
   11fb4:	01070713          	addi	a4,a4,16
   11fb8:	10c8ce63          	blt	a7,a2,120d4 <_vfprintf_r+0x1ca8>
   11fbc:	00044603          	lbu	a2,0(s0)
   11fc0:	409a853b          	subw	a0,s5,s1
   11fc4:	0006069b          	sext.w	a3,a2
   11fc8:	00068813          	mv	a6,a3
   11fcc:	00d55463          	bge	a0,a3,11fd4 <_vfprintf_r+0x1ba8>
   11fd0:	00050813          	mv	a6,a0
   11fd4:	00080d1b          	sext.w	s10,a6
   11fd8:	03a05863          	blez	s10,12008 <_vfprintf_r+0x1bdc>
   11fdc:	10812683          	lw	a3,264(sp)
   11fe0:	01a787b3          	add	a5,a5,s10
   11fe4:	00973023          	sd	s1,0(a4)
   11fe8:	0016861b          	addiw	a2,a3,1
   11fec:	01a73423          	sd	s10,8(a4)
   11ff0:	10f13823          	sd	a5,272(sp)
   11ff4:	10c12423          	sw	a2,264(sp)
   11ff8:	10c8c063          	blt	a7,a2,120f8 <_vfprintf_r+0x1ccc>
   11ffc:	00044603          	lbu	a2,0(s0)
   12000:	01070713          	addi	a4,a4,16
   12004:	0006069b          	sext.w	a3,a2
   12008:	fffd4513          	not	a0,s10
   1200c:	43f55513          	srai	a0,a0,0x3f
   12010:	00ad7833          	and	a6,s10,a0
   12014:	41068d3b          	subw	s10,a3,a6
   12018:	01a04c63          	bgtz	s10,12030 <_vfprintf_r+0x1c04>
   1201c:	00c484b3          	add	s1,s1,a2
   12020:	f60b96e3          	bnez	s7,11f8c <_vfprintf_r+0x1b60>
   12024:	4a090063          	beqz	s2,124c4 <_vfprintf_r+0x2098>
   12028:	fff9091b          	addiw	s2,s2,-1
   1202c:	f6dff06f          	j	11f98 <_vfprintf_r+0x1b6c>
   12030:	10812603          	lw	a2,264(sp)
   12034:	01ab4863          	blt	s6,s10,12044 <_vfprintf_r+0x1c18>
   12038:	0640006f          	j	1209c <_vfprintf_r+0x1c70>
   1203c:	ff0d0d1b          	addiw	s10,s10,-16
   12040:	05ab5e63          	bge	s6,s10,1209c <_vfprintf_r+0x1c70>
   12044:	0016069b          	addiw	a3,a2,1
   12048:	01078793          	addi	a5,a5,16
   1204c:	00010617          	auipc	a2,0x10
   12050:	d6460613          	addi	a2,a2,-668 # 21db0 <zeroes.0>
   12054:	00c73023          	sd	a2,0(a4)
   12058:	01673423          	sd	s6,8(a4)
   1205c:	10f13823          	sd	a5,272(sp)
   12060:	0006861b          	sext.w	a2,a3
   12064:	10d12423          	sw	a3,264(sp)
   12068:	01070713          	addi	a4,a4,16
   1206c:	fcc8d8e3          	bge	a7,a2,1203c <_vfprintf_r+0x1c10>
   12070:	10010613          	addi	a2,sp,256
   12074:	000c0593          	mv	a1,s8
   12078:	000c8513          	mv	a0,s9
   1207c:	690090ef          	jal	ra,1b70c <__sprint_r>
   12080:	b2051263          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   12084:	ff0d0d1b          	addiw	s10,s10,-16
   12088:	11013783          	ld	a5,272(sp)
   1208c:	10812603          	lw	a2,264(sp)
   12090:	18010713          	addi	a4,sp,384
   12094:	00700893          	li	a7,7
   12098:	fbab46e3          	blt	s6,s10,12044 <_vfprintf_r+0x1c18>
   1209c:	0016061b          	addiw	a2,a2,1
   120a0:	00010697          	auipc	a3,0x10
   120a4:	d1068693          	addi	a3,a3,-752 # 21db0 <zeroes.0>
   120a8:	01a787b3          	add	a5,a5,s10
   120ac:	00d73023          	sd	a3,0(a4)
   120b0:	01a73423          	sd	s10,8(a4)
   120b4:	10f13823          	sd	a5,272(sp)
   120b8:	0006069b          	sext.w	a3,a2
   120bc:	10c12423          	sw	a2,264(sp)
   120c0:	4ed8c063          	blt	a7,a3,125a0 <_vfprintf_r+0x2174>
   120c4:	00044603          	lbu	a2,0(s0)
   120c8:	01070713          	addi	a4,a4,16
   120cc:	00c484b3          	add	s1,s1,a2
   120d0:	f51ff06f          	j	12020 <_vfprintf_r+0x1bf4>
   120d4:	10010613          	addi	a2,sp,256
   120d8:	000c0593          	mv	a1,s8
   120dc:	000c8513          	mv	a0,s9
   120e0:	62c090ef          	jal	ra,1b70c <__sprint_r>
   120e4:	ac051063          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   120e8:	11013783          	ld	a5,272(sp)
   120ec:	18010713          	addi	a4,sp,384
   120f0:	00700893          	li	a7,7
   120f4:	ec9ff06f          	j	11fbc <_vfprintf_r+0x1b90>
   120f8:	10010613          	addi	a2,sp,256
   120fc:	000c0593          	mv	a1,s8
   12100:	000c8513          	mv	a0,s9
   12104:	608090ef          	jal	ra,1b70c <__sprint_r>
   12108:	a8051e63          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   1210c:	00044603          	lbu	a2,0(s0)
   12110:	11013783          	ld	a5,272(sp)
   12114:	18010713          	addi	a4,sp,384
   12118:	0006069b          	sext.w	a3,a2
   1211c:	00700893          	li	a7,7
   12120:	ee9ff06f          	j	12008 <_vfprintf_r+0x1bdc>
   12124:	0016869b          	addiw	a3,a3,1
   12128:	01070d93          	addi	s11,a4,16
   1212c:	00070493          	mv	s1,a4
   12130:	b01fe06f          	j	10c30 <_vfprintf_r+0x804>
   12134:	10010613          	addi	a2,sp,256
   12138:	000c0593          	mv	a1,s8
   1213c:	000c8513          	mv	a0,s9
   12140:	5cc090ef          	jal	ra,1b70c <__sprint_r>
   12144:	a6051063          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   12148:	0d812603          	lw	a2,216(sp)
   1214c:	11013783          	ld	a5,272(sp)
   12150:	18010d93          	addi	s11,sp,384
   12154:	b1dff06f          	j	11c70 <_vfprintf_r+0x1844>
   12158:	00010d17          	auipc	s10,0x10
   1215c:	a80d0d13          	addi	s10,s10,-1408 # 21bd8 <__clzdi2+0x68>
   12160:	c41ff06f          	j	11da0 <_vfprintf_r+0x1974>
   12164:	10010613          	addi	a2,sp,256
   12168:	000c0593          	mv	a1,s8
   1216c:	000c8513          	mv	a0,s9
   12170:	59c090ef          	jal	ra,1b70c <__sprint_r>
   12174:	a2051863          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   12178:	11013783          	ld	a5,272(sp)
   1217c:	18010d93          	addi	s11,sp,384
   12180:	cb4ff06f          	j	11634 <_vfprintf_r+0x1208>
   12184:	00600b93          	li	s7,6
   12188:	8e9ff06f          	j	11a70 <_vfprintf_r+0x1644>
   1218c:	02013683          	ld	a3,32(sp)
   12190:	00dd0833          	add	a6,s10,a3
   12194:	40e6863b          	subw	a2,a3,a4
   12198:	40980e3b          	subw	t3,a6,s1
   1219c:	00060493          	mv	s1,a2
   121a0:	00ce5463          	bge	t3,a2,121a8 <_vfprintf_r+0x1d7c>
   121a4:	000e0493          	mv	s1,t3
   121a8:	0004899b          	sext.w	s3,s1
   121ac:	d4cff06f          	j	116f8 <_vfprintf_r+0x12cc>
   121b0:	02099993          	slli	s3,s3,0x20
   121b4:	0209d993          	srli	s3,s3,0x20
   121b8:	b95fe06f          	j	10d4c <_vfprintf_r+0x920>
   121bc:	00013783          	ld	a5,0(sp)
   121c0:	00040d13          	mv	s10,s0
   121c4:	00f71023          	sh	a5,0(a4)
   121c8:	dbcfe06f          	j	10784 <_vfprintf_r+0x358>
   121cc:	02099993          	slli	s3,s3,0x20
   121d0:	0209d993          	srli	s3,s3,0x20
   121d4:	00d13423          	sd	a3,8(sp)
   121d8:	00100793          	li	a5,1
   121dc:	b81fe06f          	j	10d5c <_vfprintf_r+0x930>
   121e0:	02099993          	slli	s3,s3,0x20
   121e4:	0209d993          	srli	s3,s3,0x20
   121e8:	fd8ff06f          	j	119c0 <_vfprintf_r+0x1594>
   121ec:	00813783          	ld	a5,8(sp)
   121f0:	0007a983          	lw	s3,0(a5)
   121f4:	00098793          	mv	a5,s3
   121f8:	df5fe06f          	j	10fec <_vfprintf_r+0xbc0>
   121fc:	10010613          	addi	a2,sp,256
   12200:	000c0593          	mv	a1,s8
   12204:	000c8513          	mv	a0,s9
   12208:	504090ef          	jal	ra,1b70c <__sprint_r>
   1220c:	d8cfe06f          	j	10798 <_vfprintf_r+0x36c>
   12210:	02d00793          	li	a5,45
   12214:	0cf107a3          	sb	a5,207(sp)
   12218:	cc9ff06f          	j	11ee0 <_vfprintf_r+0x1ab4>
   1221c:	10010613          	addi	a2,sp,256
   12220:	000c0593          	mv	a1,s8
   12224:	000c8513          	mv	a0,s9
   12228:	4e4090ef          	jal	ra,1b70c <__sprint_r>
   1222c:	96051c63          	bnez	a0,113a4 <_vfprintf_r+0xf78>
   12230:	0d812603          	lw	a2,216(sp)
   12234:	11013783          	ld	a5,272(sp)
   12238:	10812703          	lw	a4,264(sp)
   1223c:	18010313          	addi	t1,sp,384
   12240:	a6065ee3          	bgez	a2,11cbc <_vfprintf_r+0x1890>
   12244:	bc5ff06f          	j	11e08 <_vfprintf_r+0x19dc>
   12248:	03000793          	li	a5,48
   1224c:	0cf10823          	sb	a5,208(sp)
   12250:	05800713          	li	a4,88
   12254:	00296793          	ori	a5,s2,2
   12258:	0007879b          	sext.w	a5,a5
   1225c:	0ce108a3          	sb	a4,209(sp)
   12260:	02f13823          	sd	a5,48(sp)
   12264:	06300713          	li	a4,99
   12268:	00013823          	sd	zero,16(sp)
   1226c:	11810d13          	addi	s10,sp,280
   12270:	53c74063          	blt	a4,t3,12790 <_vfprintf_r+0x2364>
   12274:	0f813a83          	ld	s5,248(sp)
   12278:	fdf4f793          	andi	a5,s1,-33
   1227c:	10296913          	ori	s2,s2,258
   12280:	02f13423          	sd	a5,40(sp)
   12284:	06013023          	sd	zero,96(sp)
   12288:	0f013b83          	ld	s7,240(sp)
   1228c:	0009091b          	sext.w	s2,s2
   12290:	2e0acc63          	bltz	s5,12588 <_vfprintf_r+0x215c>
   12294:	06100793          	li	a5,97
   12298:	6cf48263          	beq	s1,a5,1295c <_vfprintf_r+0x2530>
   1229c:	04100793          	li	a5,65
   122a0:	00f48463          	beq	s1,a5,122a8 <_vfprintf_r+0x1e7c>
   122a4:	e88fe06f          	j	1092c <_vfprintf_r+0x500>
   122a8:	000a8593          	mv	a1,s5
   122ac:	000b8513          	mv	a0,s7
   122b0:	01c13c23          	sd	t3,24(sp)
   122b4:	49c0f0ef          	jal	ra,21750 <__trunctfdf2>
   122b8:	0d810513          	addi	a0,sp,216
   122bc:	644060ef          	jal	ra,18900 <frexp>
   122c0:	3700f0ef          	jal	ra,21630 <__extenddftf2>
   122c4:	00010797          	auipc	a5,0x10
   122c8:	b1c78793          	addi	a5,a5,-1252 # 21de0 <zeroes.0+0x30>
   122cc:	0007b603          	ld	a2,0(a5)
   122d0:	0087b683          	ld	a3,8(a5)
   122d4:	5ed0d0ef          	jal	ra,200c0 <__multf3>
   122d8:	00000613          	li	a2,0
   122dc:	00000693          	li	a3,0
   122e0:	00050993          	mv	s3,a0
   122e4:	00058b93          	mv	s7,a1
   122e8:	3410d0ef          	jal	ra,1fe28 <__eqtf2>
   122ec:	01813e03          	ld	t3,24(sp)
   122f0:	00051663          	bnez	a0,122fc <_vfprintf_r+0x1ed0>
   122f4:	00100713          	li	a4,1
   122f8:	0ce12c23          	sw	a4,216(sp)
   122fc:	00010797          	auipc	a5,0x10
   12300:	8f478793          	addi	a5,a5,-1804 # 21bf0 <__clzdi2+0x80>
   12304:	00f13c23          	sd	a5,24(sp)
   12308:	020e1713          	slli	a4,t3,0x20
   1230c:	00010697          	auipc	a3,0x10
   12310:	ab468693          	addi	a3,a3,-1356 # 21dc0 <zeroes.0+0x10>
   12314:	02075713          	srli	a4,a4,0x20
   12318:	0006b783          	ld	a5,0(a3)
   1231c:	00170713          	addi	a4,a4,1
   12320:	0086b683          	ld	a3,8(a3)
   12324:	00ed0733          	add	a4,s10,a4
   12328:	02e13023          	sd	a4,32(sp)
   1232c:	01cd073b          	addw	a4,s10,t3
   12330:	07413c23          	sd	s4,120(sp)
   12334:	0bb13023          	sd	s11,160(sp)
   12338:	0b913423          	sd	s9,168(sp)
   1233c:	0b813823          	sd	s8,176(sp)
   12340:	0ba13c23          	sd	s10,184(sp)
   12344:	000d0c13          	mv	s8,s10
   12348:	00098c93          	mv	s9,s3
   1234c:	08913423          	sd	s1,136(sp)
   12350:	08813823          	sd	s0,144(sp)
   12354:	09213c23          	sd	s2,152(sp)
   12358:	09c13023          	sd	t3,128(sp)
   1235c:	000b8d13          	mv	s10,s7
   12360:	00070a13          	mv	s4,a4
   12364:	00078d93          	mv	s11,a5
   12368:	00068993          	mv	s3,a3
   1236c:	0140006f          	j	12380 <_vfprintf_r+0x1f54>
   12370:	00000613          	li	a2,0
   12374:	00000693          	li	a3,0
   12378:	2b10d0ef          	jal	ra,1fe28 <__eqtf2>
   1237c:	56050863          	beqz	a0,128ec <_vfprintf_r+0x24c0>
   12380:	000d8613          	mv	a2,s11
   12384:	00098693          	mv	a3,s3
   12388:	000c8513          	mv	a0,s9
   1238c:	000d0593          	mv	a1,s10
   12390:	5310d0ef          	jal	ra,200c0 <__multf3>
   12394:	00058a93          	mv	s5,a1
   12398:	00050b93          	mv	s7,a0
   1239c:	1380f0ef          	jal	ra,214d4 <__fixtfsi>
   123a0:	0005041b          	sext.w	s0,a0
   123a4:	2040f0ef          	jal	ra,215a8 <__floatsitf>
   123a8:	00058693          	mv	a3,a1
   123ac:	00050613          	mv	a2,a0
   123b0:	000a8593          	mv	a1,s5
   123b4:	000b8513          	mv	a0,s7
   123b8:	61c0e0ef          	jal	ra,209d4 <__subtf3>
   123bc:	01813783          	ld	a5,24(sp)
   123c0:	000c0b93          	mv	s7,s8
   123c4:	001c0c13          	addi	s8,s8,1
   123c8:	00878733          	add	a4,a5,s0
   123cc:	00074683          	lbu	a3,0(a4)
   123d0:	02013783          	ld	a5,32(sp)
   123d4:	00050493          	mv	s1,a0
   123d8:	fedc0fa3          	sb	a3,-1(s8)
   123dc:	00058913          	mv	s2,a1
   123e0:	00050c93          	mv	s9,a0
   123e4:	00058d13          	mv	s10,a1
   123e8:	418a0abb          	subw	s5,s4,s8
   123ec:	f98792e3          	bne	a5,s8,12370 <_vfprintf_r+0x1f44>
   123f0:	08013e03          	ld	t3,128(sp)
   123f4:	000c0a93          	mv	s5,s8
   123f8:	08813023          	sd	s0,128(sp)
   123fc:	0a013d83          	ld	s11,160(sp)
   12400:	09013403          	ld	s0,144(sp)
   12404:	0a813c83          	ld	s9,168(sp)
   12408:	0b013c03          	ld	s8,176(sp)
   1240c:	0b813d03          	ld	s10,184(sp)
   12410:	08813483          	ld	s1,136(sp)
   12414:	09813903          	ld	s2,152(sp)
   12418:	fff00793          	li	a5,-1
   1241c:	07813a03          	ld	s4,120(sp)
   12420:	00050e93          	mv	t4,a0
   12424:	07713c23          	sd	s7,120(sp)
   12428:	00058713          	mv	a4,a1
   1242c:	02f13023          	sd	a5,32(sp)
   12430:	00010797          	auipc	a5,0x10
   12434:	9a078793          	addi	a5,a5,-1632 # 21dd0 <zeroes.0+0x20>
   12438:	0007bb83          	ld	s7,0(a5)
   1243c:	0087b983          	ld	s3,8(a5)
   12440:	000e8513          	mv	a0,t4
   12444:	000b8613          	mv	a2,s7
   12448:	00098693          	mv	a3,s3
   1244c:	00070593          	mv	a1,a4
   12450:	09c13423          	sd	t3,136(sp)
   12454:	09d13c23          	sd	t4,152(sp)
   12458:	08e13823          	sd	a4,144(sp)
   1245c:	29d0d0ef          	jal	ra,1fef8 <__getf2>
   12460:	08813e03          	ld	t3,136(sp)
   12464:	40a04263          	bgtz	a0,12868 <_vfprintf_r+0x243c>
   12468:	09813e83          	ld	t4,152(sp)
   1246c:	09013703          	ld	a4,144(sp)
   12470:	000b8613          	mv	a2,s7
   12474:	00098693          	mv	a3,s3
   12478:	000e8513          	mv	a0,t4
   1247c:	00070593          	mv	a1,a4
   12480:	1a90d0ef          	jal	ra,1fe28 <__eqtf2>
   12484:	08813e03          	ld	t3,136(sp)
   12488:	00051863          	bnez	a0,12498 <_vfprintf_r+0x206c>
   1248c:	08013783          	ld	a5,128(sp)
   12490:	0017f793          	andi	a5,a5,1
   12494:	3c079a63          	bnez	a5,12868 <_vfprintf_r+0x243c>
   12498:	02013683          	ld	a3,32(sp)
   1249c:	03000713          	li	a4,48
   124a0:	0016879b          	addiw	a5,a3,1
   124a4:	00fa87b3          	add	a5,s5,a5
   124a8:	0006c863          	bltz	a3,124b8 <_vfprintf_r+0x208c>
   124ac:	001a8a93          	addi	s5,s5,1
   124b0:	feea8fa3          	sb	a4,-1(s5)
   124b4:	ff579ce3          	bne	a5,s5,124ac <_vfprintf_r+0x2080>
   124b8:	41aa87bb          	subw	a5,s5,s10
   124bc:	02f13023          	sd	a5,32(sp)
   124c0:	ce4fe06f          	j	109a4 <_vfprintf_r+0x578>
   124c4:	000d8d13          	mv	s10,s11
   124c8:	00070d93          	mv	s11,a4
   124cc:	02013703          	ld	a4,32(sp)
   124d0:	04813c23          	sd	s0,88(sp)
   124d4:	06013903          	ld	s2,96(sp)
   124d8:	00ed0733          	add	a4,s10,a4
   124dc:	01813403          	ld	s0,24(sp)
   124e0:	07813a03          	ld	s4,120(sp)
   124e4:	02813a83          	ld	s5,40(sp)
   124e8:	96977a63          	bgeu	a4,s1,1165c <_vfprintf_r+0x1230>
   124ec:	00070493          	mv	s1,a4
   124f0:	96cff06f          	j	1165c <_vfprintf_r+0x1230>
   124f4:	01813703          	ld	a4,24(sp)
   124f8:	ffd00793          	li	a5,-3
   124fc:	00f74463          	blt	a4,a5,12504 <_vfprintf_r+0x20d8>
   12500:	00ee5a63          	bge	t3,a4,12514 <_vfprintf_r+0x20e8>
   12504:	ffe4849b          	addiw	s1,s1,-2
   12508:	fdf4f793          	andi	a5,s1,-33
   1250c:	02f13423          	sd	a5,40(sp)
   12510:	cbcfe06f          	j	109cc <_vfprintf_r+0x5a0>
   12514:	01813703          	ld	a4,24(sp)
   12518:	02013783          	ld	a5,32(sp)
   1251c:	20f74663          	blt	a4,a5,12728 <_vfprintf_r+0x22fc>
   12520:	03013783          	ld	a5,48(sp)
   12524:	00070b93          	mv	s7,a4
   12528:	0017f793          	andi	a5,a5,1
   1252c:	00078663          	beqz	a5,12538 <_vfprintf_r+0x210c>
   12530:	03813783          	ld	a5,56(sp)
   12534:	00e78bbb          	addw	s7,a5,a4
   12538:	03013783          	ld	a5,48(sp)
   1253c:	4007f793          	andi	a5,a5,1024
   12540:	00078663          	beqz	a5,1254c <_vfprintf_r+0x2120>
   12544:	01813783          	ld	a5,24(sp)
   12548:	48f04663          	bgtz	a5,129d4 <_vfprintf_r+0x25a8>
   1254c:	fffbca93          	not	s5,s7
   12550:	43fada93          	srai	s5,s5,0x3f
   12554:	015bfab3          	and	s5,s7,s5
   12558:	000a8a9b          	sext.w	s5,s5
   1255c:	06700493          	li	s1,103
   12560:	02013823          	sd	zero,48(sp)
   12564:	02013423          	sd	zero,40(sp)
   12568:	da4fe06f          	j	10b0c <_vfprintf_r+0x6e0>
   1256c:	0cf14783          	lbu	a5,207(sp)
   12570:	00000e13          	li	t3,0
   12574:	00078463          	beqz	a5,1257c <_vfprintf_r+0x2150>
   12578:	facfe06f          	j	10d24 <_vfprintf_r+0x8f8>
   1257c:	8e8fe06f          	j	10664 <_vfprintf_r+0x238>
   12580:	00013823          	sd	zero,16(sp)
   12584:	00078913          	mv	s2,a5
   12588:	fff00793          	li	a5,-1
   1258c:	03f79793          	slli	a5,a5,0x3f
   12590:	00facab3          	xor	s5,s5,a5
   12594:	02d00793          	li	a5,45
   12598:	06f13023          	sd	a5,96(sp)
   1259c:	cf9ff06f          	j	12294 <_vfprintf_r+0x1e68>
   125a0:	10010613          	addi	a2,sp,256
   125a4:	000c0593          	mv	a1,s8
   125a8:	000c8513          	mv	a0,s9
   125ac:	160090ef          	jal	ra,1b70c <__sprint_r>
   125b0:	00050463          	beqz	a0,125b8 <_vfprintf_r+0x218c>
   125b4:	df1fe06f          	j	113a4 <_vfprintf_r+0xf78>
   125b8:	00044603          	lbu	a2,0(s0)
   125bc:	11013783          	ld	a5,272(sp)
   125c0:	18010713          	addi	a4,sp,384
   125c4:	00700893          	li	a7,7
   125c8:	00c484b3          	add	s1,s1,a2
   125cc:	a55ff06f          	j	12020 <_vfprintf_r+0x1bf4>
   125d0:	000e0713          	mv	a4,t3
   125d4:	0d810793          	addi	a5,sp,216
   125d8:	0e810893          	addi	a7,sp,232
   125dc:	0dc10813          	addi	a6,sp,220
   125e0:	00300693          	li	a3,3
   125e4:	000b8593          	mv	a1,s7
   125e8:	000a8613          	mv	a2,s5
   125ec:	000c8513          	mv	a0,s9
   125f0:	01c13c23          	sd	t3,24(sp)
   125f4:	749020ef          	jal	ra,1553c <_ldtoa_r>
   125f8:	00054703          	lbu	a4,0(a0)
   125fc:	03000793          	li	a5,48
   12600:	01813e03          	ld	t3,24(sp)
   12604:	00050d13          	mv	s10,a0
   12608:	06f70063          	beq	a4,a5,12668 <_vfprintf_r+0x223c>
   1260c:	0d812783          	lw	a5,216(sp)
   12610:	01c787b3          	add	a5,a5,t3
   12614:	00fd09b3          	add	s3,s10,a5
   12618:	00000613          	li	a2,0
   1261c:	00000693          	li	a3,0
   12620:	000b8513          	mv	a0,s7
   12624:	000a8593          	mv	a1,s5
   12628:	01c13c23          	sd	t3,24(sp)
   1262c:	7fc0d0ef          	jal	ra,1fe28 <__eqtf2>
   12630:	01813e03          	ld	t3,24(sp)
   12634:	00098793          	mv	a5,s3
   12638:	00051463          	bnez	a0,12640 <_vfprintf_r+0x2214>
   1263c:	b60fe06f          	j	1099c <_vfprintf_r+0x570>
   12640:	0e813783          	ld	a5,232(sp)
   12644:	0137e463          	bltu	a5,s3,1264c <_vfprintf_r+0x2220>
   12648:	b54fe06f          	j	1099c <_vfprintf_r+0x570>
   1264c:	03000693          	li	a3,48
   12650:	00178713          	addi	a4,a5,1
   12654:	0ee13423          	sd	a4,232(sp)
   12658:	00d78023          	sb	a3,0(a5)
   1265c:	0e813783          	ld	a5,232(sp)
   12660:	ff37e8e3          	bltu	a5,s3,12650 <_vfprintf_r+0x2224>
   12664:	b38fe06f          	j	1099c <_vfprintf_r+0x570>
   12668:	00000613          	li	a2,0
   1266c:	00000693          	li	a3,0
   12670:	000b8513          	mv	a0,s7
   12674:	000a8593          	mv	a1,s5
   12678:	01c13c23          	sd	t3,24(sp)
   1267c:	7ac0d0ef          	jal	ra,1fe28 <__eqtf2>
   12680:	01813e03          	ld	t3,24(sp)
   12684:	f80504e3          	beqz	a0,1260c <_vfprintf_r+0x21e0>
   12688:	00100713          	li	a4,1
   1268c:	41c707bb          	subw	a5,a4,t3
   12690:	0cf12c23          	sw	a5,216(sp)
   12694:	f7dff06f          	j	12610 <_vfprintf_r+0x21e4>
   12698:	02d00793          	li	a5,45
   1269c:	0cf107a3          	sb	a5,207(sp)
   126a0:	ef0ff06f          	j	11d90 <_vfprintf_r+0x1964>
   126a4:	10010613          	addi	a2,sp,256
   126a8:	000c0593          	mv	a1,s8
   126ac:	000c8513          	mv	a0,s9
   126b0:	05c090ef          	jal	ra,1b70c <__sprint_r>
   126b4:	00050463          	beqz	a0,126bc <_vfprintf_r+0x2290>
   126b8:	cedfe06f          	j	113a4 <_vfprintf_r+0xf78>
   126bc:	0d812703          	lw	a4,216(sp)
   126c0:	11013783          	ld	a5,272(sp)
   126c4:	18010d93          	addi	s11,sp,384
   126c8:	fe1fe06f          	j	116a8 <_vfprintf_r+0x127c>
   126cc:	0cf14783          	lbu	a5,207(sp)
   126d0:	01313423          	sd	s3,8(sp)
   126d4:	02013823          	sd	zero,48(sp)
   126d8:	02013423          	sd	zero,40(sp)
   126dc:	00013c23          	sd	zero,24(sp)
   126e0:	000e0a93          	mv	s5,t3
   126e4:	000e0b93          	mv	s7,t3
   126e8:	00000e13          	li	t3,0
   126ec:	00078463          	beqz	a5,126f4 <_vfprintf_r+0x22c8>
   126f0:	e34fe06f          	j	10d24 <_vfprintf_r+0x8f8>
   126f4:	f71fd06f          	j	10664 <_vfprintf_r+0x238>
   126f8:	10010613          	addi	a2,sp,256
   126fc:	000c0593          	mv	a1,s8
   12700:	000c8513          	mv	a0,s9
   12704:	008090ef          	jal	ra,1b70c <__sprint_r>
   12708:	00050463          	beqz	a0,12710 <_vfprintf_r+0x22e4>
   1270c:	c99fe06f          	j	113a4 <_vfprintf_r+0xf78>
   12710:	0d812603          	lw	a2,216(sp)
   12714:	02013703          	ld	a4,32(sp)
   12718:	11013783          	ld	a5,272(sp)
   1271c:	18010d93          	addi	s11,sp,384
   12720:	40c7063b          	subw	a2,a4,a2
   12724:	fd5fe06f          	j	116f8 <_vfprintf_r+0x12cc>
   12728:	02013703          	ld	a4,32(sp)
   1272c:	03813783          	ld	a5,56(sp)
   12730:	06700493          	li	s1,103
   12734:	00e78bbb          	addw	s7,a5,a4
   12738:	01813703          	ld	a4,24(sp)
   1273c:	32e05463          	blez	a4,12a64 <_vfprintf_r+0x2638>
   12740:	03013783          	ld	a5,48(sp)
   12744:	4007f793          	andi	a5,a5,1024
   12748:	28079863          	bnez	a5,129d8 <_vfprintf_r+0x25ac>
   1274c:	fffbca93          	not	s5,s7
   12750:	43fada93          	srai	s5,s5,0x3f
   12754:	015bfab3          	and	s5,s7,s5
   12758:	000a8a9b          	sext.w	s5,s5
   1275c:	e05ff06f          	j	12560 <_vfprintf_r+0x2134>
   12760:	03013783          	ld	a5,48(sp)
   12764:	01813703          	ld	a4,24(sp)
   12768:	0017f793          	andi	a5,a5,1
   1276c:	00fe67b3          	or	a5,t3,a5
   12770:	32e05463          	blez	a4,12a98 <_vfprintf_r+0x266c>
   12774:	24079663          	bnez	a5,129c0 <_vfprintf_r+0x2594>
   12778:	01813b83          	ld	s7,24(sp)
   1277c:	06600493          	li	s1,102
   12780:	fc1ff06f          	j	12740 <_vfprintf_r+0x2314>
   12784:	fff00793          	li	a5,-1
   12788:	00f13023          	sd	a5,0(sp)
   1278c:	81cfe06f          	j	107a8 <_vfprintf_r+0x37c>
   12790:	001e059b          	addiw	a1,t3,1
   12794:	000c8513          	mv	a0,s9
   12798:	01c13823          	sd	t3,16(sp)
   1279c:	480040ef          	jal	ra,16c1c <_malloc_r>
   127a0:	01013e03          	ld	t3,16(sp)
   127a4:	00050d13          	mv	s10,a0
   127a8:	38050263          	beqz	a0,12b2c <_vfprintf_r+0x2700>
   127ac:	00a13823          	sd	a0,16(sp)
   127b0:	ac5ff06f          	j	12274 <_vfprintf_r+0x1e48>
   127b4:	01cd09b3          	add	s3,s10,t3
   127b8:	e61ff06f          	j	12618 <_vfprintf_r+0x21ec>
   127bc:	00090a93          	mv	s5,s2
   127c0:	d45fe06f          	j	11504 <_vfprintf_r+0x10d8>
   127c4:	03000793          	li	a5,48
   127c8:	0cf10823          	sb	a5,208(sp)
   127cc:	07800713          	li	a4,120
   127d0:	a85ff06f          	j	12254 <_vfprintf_r+0x1e28>
   127d4:	001e099b          	addiw	s3,t3,1
   127d8:	00098713          	mv	a4,s3
   127dc:	0e810893          	addi	a7,sp,232
   127e0:	0dc10813          	addi	a6,sp,220
   127e4:	0d810793          	addi	a5,sp,216
   127e8:	00200693          	li	a3,2
   127ec:	000b8593          	mv	a1,s7
   127f0:	000a8613          	mv	a2,s5
   127f4:	000c8513          	mv	a0,s9
   127f8:	01c13c23          	sd	t3,24(sp)
   127fc:	541020ef          	jal	ra,1553c <_ldtoa_r>
   12800:	00050d13          	mv	s10,a0
   12804:	01813e03          	ld	t3,24(sp)
   12808:	013d09b3          	add	s3,s10,s3
   1280c:	e0dff06f          	j	12618 <_vfprintf_r+0x21ec>
   12810:	0017069b          	addiw	a3,a4,1
   12814:	009787b3          	add	a5,a5,s1
   12818:	0000f717          	auipc	a4,0xf
   1281c:	59870713          	addi	a4,a4,1432 # 21db0 <zeroes.0>
   12820:	00e33023          	sd	a4,0(t1)
   12824:	00933423          	sd	s1,8(t1)
   12828:	0006871b          	sext.w	a4,a3
   1282c:	10d12423          	sw	a3,264(sp)
   12830:	10f13823          	sd	a5,272(sp)
   12834:	00700693          	li	a3,7
   12838:	01030313          	addi	t1,t1,16
   1283c:	c8e6d063          	bge	a3,a4,11cbc <_vfprintf_r+0x1890>
   12840:	10010613          	addi	a2,sp,256
   12844:	000c0593          	mv	a1,s8
   12848:	000c8513          	mv	a0,s9
   1284c:	6c1080ef          	jal	ra,1b70c <__sprint_r>
   12850:	00050463          	beqz	a0,12858 <_vfprintf_r+0x242c>
   12854:	b51fe06f          	j	113a4 <_vfprintf_r+0xf78>
   12858:	11013783          	ld	a5,272(sp)
   1285c:	10812703          	lw	a4,264(sp)
   12860:	18010313          	addi	t1,sp,384
   12864:	c58ff06f          	j	11cbc <_vfprintf_r+0x1890>
   12868:	07813783          	ld	a5,120(sp)
   1286c:	0ef13423          	sd	a5,232(sp)
   12870:	01813783          	ld	a5,24(sp)
   12874:	fffac703          	lbu	a4,-1(s5)
   12878:	00f7c683          	lbu	a3,15(a5)
   1287c:	000a8793          	mv	a5,s5
   12880:	02e69063          	bne	a3,a4,128a0 <_vfprintf_r+0x2474>
   12884:	03000613          	li	a2,48
   12888:	fec78fa3          	sb	a2,-1(a5)
   1288c:	0e813783          	ld	a5,232(sp)
   12890:	fff78713          	addi	a4,a5,-1
   12894:	0ee13423          	sd	a4,232(sp)
   12898:	fff7c703          	lbu	a4,-1(a5)
   1289c:	fee686e3          	beq	a3,a4,12888 <_vfprintf_r+0x245c>
   128a0:	0017069b          	addiw	a3,a4,1
   128a4:	03900613          	li	a2,57
   128a8:	0ff6f693          	andi	a3,a3,255
   128ac:	00c70663          	beq	a4,a2,128b8 <_vfprintf_r+0x248c>
   128b0:	fed78fa3          	sb	a3,-1(a5)
   128b4:	c05ff06f          	j	124b8 <_vfprintf_r+0x208c>
   128b8:	01813703          	ld	a4,24(sp)
   128bc:	00a74683          	lbu	a3,10(a4)
   128c0:	fed78fa3          	sb	a3,-1(a5)
   128c4:	bf5ff06f          	j	124b8 <_vfprintf_r+0x208c>
   128c8:	00f72023          	sw	a5,0(a4)
   128cc:	00040d13          	mv	s10,s0
   128d0:	eb5fd06f          	j	10784 <_vfprintf_r+0x358>
   128d4:	00600e13          	li	t3,6
   128d8:	82cfe06f          	j	10904 <_vfprintf_r+0x4d8>
   128dc:	000e0463          	beqz	t3,128e4 <_vfprintf_r+0x24b8>
   128e0:	824fe06f          	j	10904 <_vfprintf_r+0x4d8>
   128e4:	00100e13          	li	t3,1
   128e8:	81cfe06f          	j	10904 <_vfprintf_r+0x4d8>
   128ec:	07813a03          	ld	s4,120(sp)
   128f0:	08013e03          	ld	t3,128(sp)
   128f4:	03513023          	sd	s5,32(sp)
   128f8:	08813023          	sd	s0,128(sp)
   128fc:	000c0a93          	mv	s5,s8
   12900:	00048e93          	mv	t4,s1
   12904:	00090713          	mv	a4,s2
   12908:	0a013d83          	ld	s11,160(sp)
   1290c:	09013403          	ld	s0,144(sp)
   12910:	0a813c83          	ld	s9,168(sp)
   12914:	0b013c03          	ld	s8,176(sp)
   12918:	0b813d03          	ld	s10,184(sp)
   1291c:	08813483          	ld	s1,136(sp)
   12920:	09813903          	ld	s2,152(sp)
   12924:	07713c23          	sd	s7,120(sp)
   12928:	b09ff06f          	j	12430 <_vfprintf_r+0x2004>
   1292c:	0e210713          	addi	a4,sp,226
   12930:	00069863          	bnez	a3,12940 <_vfprintf_r+0x2514>
   12934:	03000793          	li	a5,48
   12938:	0ef10123          	sb	a5,226(sp)
   1293c:	0e310713          	addi	a4,sp,227
   12940:	20010693          	addi	a3,sp,512
   12944:	030a879b          	addiw	a5,s5,48
   12948:	40d706b3          	sub	a3,a4,a3
   1294c:	00f70023          	sb	a5,0(a4)
   12950:	1216879b          	addiw	a5,a3,289
   12954:	04f13823          	sd	a5,80(sp)
   12958:	964fe06f          	j	10abc <_vfprintf_r+0x690>
   1295c:	000a8593          	mv	a1,s5
   12960:	000b8513          	mv	a0,s7
   12964:	01c13c23          	sd	t3,24(sp)
   12968:	5e90e0ef          	jal	ra,21750 <__trunctfdf2>
   1296c:	0d810513          	addi	a0,sp,216
   12970:	791050ef          	jal	ra,18900 <frexp>
   12974:	4bd0e0ef          	jal	ra,21630 <__extenddftf2>
   12978:	0000f797          	auipc	a5,0xf
   1297c:	46878793          	addi	a5,a5,1128 # 21de0 <zeroes.0+0x30>
   12980:	0007b603          	ld	a2,0(a5)
   12984:	0087b683          	ld	a3,8(a5)
   12988:	7380d0ef          	jal	ra,200c0 <__multf3>
   1298c:	00000613          	li	a2,0
   12990:	00000693          	li	a3,0
   12994:	00050993          	mv	s3,a0
   12998:	00058b93          	mv	s7,a1
   1299c:	48c0d0ef          	jal	ra,1fe28 <__eqtf2>
   129a0:	01813e03          	ld	t3,24(sp)
   129a4:	00051663          	bnez	a0,129b0 <_vfprintf_r+0x2584>
   129a8:	00100713          	li	a4,1
   129ac:	0ce12c23          	sw	a4,216(sp)
   129b0:	0000f797          	auipc	a5,0xf
   129b4:	25878793          	addi	a5,a5,600 # 21c08 <__clzdi2+0x98>
   129b8:	00f13c23          	sd	a5,24(sp)
   129bc:	94dff06f          	j	12308 <_vfprintf_r+0x1edc>
   129c0:	03813783          	ld	a5,56(sp)
   129c4:	06600493          	li	s1,102
   129c8:	00e78bbb          	addw	s7,a5,a4
   129cc:	01cb8bbb          	addw	s7,s7,t3
   129d0:	d71ff06f          	j	12740 <_vfprintf_r+0x2314>
   129d4:	06700493          	li	s1,103
   129d8:	05813603          	ld	a2,88(sp)
   129dc:	0ff00713          	li	a4,255
   129e0:	00064783          	lbu	a5,0(a2)
   129e4:	12e78863          	beq	a5,a4,12b14 <_vfprintf_r+0x26e8>
   129e8:	01813703          	ld	a4,24(sp)
   129ec:	00000813          	li	a6,0
   129f0:	00000513          	li	a0,0
   129f4:	0ff00693          	li	a3,255
   129f8:	0007859b          	sext.w	a1,a5
   129fc:	00e7de63          	bge	a5,a4,12a18 <_vfprintf_r+0x25ec>
   12a00:	00164783          	lbu	a5,1(a2)
   12a04:	40b7073b          	subw	a4,a4,a1
   12a08:	04078863          	beqz	a5,12a58 <_vfprintf_r+0x262c>
   12a0c:	0015051b          	addiw	a0,a0,1
   12a10:	00160613          	addi	a2,a2,1
   12a14:	fed792e3          	bne	a5,a3,129f8 <_vfprintf_r+0x25cc>
   12a18:	04c13c23          	sd	a2,88(sp)
   12a1c:	00e13c23          	sd	a4,24(sp)
   12a20:	02a13423          	sd	a0,40(sp)
   12a24:	03013823          	sd	a6,48(sp)
   12a28:	02813783          	ld	a5,40(sp)
   12a2c:	03013703          	ld	a4,48(sp)
   12a30:	06813583          	ld	a1,104(sp)
   12a34:	00e7853b          	addw	a0,a5,a4
   12a38:	0140f0ef          	jal	ra,21a4c <__muldi3>
   12a3c:	017507bb          	addw	a5,a0,s7
   12a40:	00078b9b          	sext.w	s7,a5
   12a44:	fffbca93          	not	s5,s7
   12a48:	43fada93          	srai	s5,s5,0x3f
   12a4c:	0157f7b3          	and	a5,a5,s5
   12a50:	00078a9b          	sext.w	s5,a5
   12a54:	8b8fe06f          	j	10b0c <_vfprintf_r+0x6e0>
   12a58:	00064783          	lbu	a5,0(a2)
   12a5c:	0018081b          	addiw	a6,a6,1
   12a60:	fb5ff06f          	j	12a14 <_vfprintf_r+0x25e8>
   12a64:	40eb87bb          	subw	a5,s7,a4
   12a68:	0017879b          	addiw	a5,a5,1
   12a6c:	00078b9b          	sext.w	s7,a5
   12a70:	fffbca93          	not	s5,s7
   12a74:	43fada93          	srai	s5,s5,0x3f
   12a78:	0157f7b3          	and	a5,a5,s5
   12a7c:	00078a9b          	sext.w	s5,a5
   12a80:	ae1ff06f          	j	12560 <_vfprintf_r+0x2134>
   12a84:	03013703          	ld	a4,48(sp)
   12a88:	00177713          	andi	a4,a4,1
   12a8c:	00071463          	bnez	a4,12a94 <_vfprintf_r+0x2668>
   12a90:	850fe06f          	j	10ae0 <_vfprintf_r+0x6b4>
   12a94:	844fe06f          	j	10ad8 <_vfprintf_r+0x6ac>
   12a98:	00079a63          	bnez	a5,12aac <_vfprintf_r+0x2680>
   12a9c:	00100a93          	li	s5,1
   12aa0:	06600493          	li	s1,102
   12aa4:	00100b93          	li	s7,1
   12aa8:	ab9ff06f          	j	12560 <_vfprintf_r+0x2134>
   12aac:	03813783          	ld	a5,56(sp)
   12ab0:	06600493          	li	s1,102
   12ab4:	0017869b          	addiw	a3,a5,1
   12ab8:	01c686bb          	addw	a3,a3,t3
   12abc:	00068b9b          	sext.w	s7,a3
   12ac0:	fffbca93          	not	s5,s7
   12ac4:	43fada93          	srai	s5,s5,0x3f
   12ac8:	0156f6b3          	and	a3,a3,s5
   12acc:	00068a9b          	sext.w	s5,a3
   12ad0:	a91ff06f          	j	12560 <_vfprintf_r+0x2134>
   12ad4:	000d8713          	mv	a4,s11
   12ad8:	e75fe06f          	j	1194c <_vfprintf_r+0x1520>
   12adc:	00813683          	ld	a3,8(sp)
   12ae0:	0006a703          	lw	a4,0(a3)
   12ae4:	00868693          	addi	a3,a3,8
   12ae8:	00070e13          	mv	t3,a4
   12aec:	00075463          	bgez	a4,12af4 <_vfprintf_r+0x26c8>
   12af0:	fff00e13          	li	t3,-1
   12af4:	00144483          	lbu	s1,1(s0)
   12af8:	000e0b9b          	sext.w	s7,t3
   12afc:	00d13423          	sd	a3,8(sp)
   12b00:	00078413          	mv	s0,a5
   12b04:	ac5fd06f          	j	105c8 <_vfprintf_r+0x19c>
   12b08:	00200793          	li	a5,2
   12b0c:	04f13823          	sd	a5,80(sp)
   12b10:	fadfd06f          	j	10abc <_vfprintf_r+0x690>
   12b14:	02013823          	sd	zero,48(sp)
   12b18:	02013423          	sd	zero,40(sp)
   12b1c:	f0dff06f          	j	12a28 <_vfprintf_r+0x25fc>
   12b20:	000e0993          	mv	s3,t3
   12b24:	013d09b3          	add	s3,s10,s3
   12b28:	af1ff06f          	j	12618 <_vfprintf_r+0x21ec>
   12b2c:	010c5783          	lhu	a5,16(s8)
   12b30:	0407e793          	ori	a5,a5,64
   12b34:	00fc1823          	sh	a5,16(s8)
   12b38:	c61fd06f          	j	10798 <_vfprintf_r+0x36c>

0000000000012b3c <vfprintf>:
   12b3c:	00060693          	mv	a3,a2
   12b40:	00058613          	mv	a2,a1
   12b44:	00050593          	mv	a1,a0
   12b48:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   12b4c:	8e1fd06f          	j	1042c <_vfprintf_r>

0000000000012b50 <__sbprintf>:
   12b50:	0105d783          	lhu	a5,16(a1)
   12b54:	0ac5ae03          	lw	t3,172(a1)
   12b58:	0125d303          	lhu	t1,18(a1)
   12b5c:	0305b883          	ld	a7,48(a1)
   12b60:	0405b803          	ld	a6,64(a1)
   12b64:	b3010113          	addi	sp,sp,-1232
   12b68:	ffd7f793          	andi	a5,a5,-3
   12b6c:	40000713          	li	a4,1024
   12b70:	4c813023          	sd	s0,1216(sp)
   12b74:	00f11823          	sh	a5,16(sp)
   12b78:	00058413          	mv	s0,a1
   12b7c:	0b010793          	addi	a5,sp,176
   12b80:	00010593          	mv	a1,sp
   12b84:	4a913c23          	sd	s1,1208(sp)
   12b88:	4b213823          	sd	s2,1200(sp)
   12b8c:	4c113423          	sd	ra,1224(sp)
   12b90:	00050913          	mv	s2,a0
   12b94:	0bc12623          	sw	t3,172(sp)
   12b98:	00611923          	sh	t1,18(sp)
   12b9c:	03113823          	sd	a7,48(sp)
   12ba0:	05013023          	sd	a6,64(sp)
   12ba4:	00f13023          	sd	a5,0(sp)
   12ba8:	00f13c23          	sd	a5,24(sp)
   12bac:	00e12623          	sw	a4,12(sp)
   12bb0:	02e12023          	sw	a4,32(sp)
   12bb4:	02012423          	sw	zero,40(sp)
   12bb8:	875fd0ef          	jal	ra,1042c <_vfprintf_r>
   12bbc:	00050493          	mv	s1,a0
   12bc0:	02055c63          	bgez	a0,12bf8 <__sbprintf+0xa8>
   12bc4:	01015783          	lhu	a5,16(sp)
   12bc8:	0407f793          	andi	a5,a5,64
   12bcc:	00078863          	beqz	a5,12bdc <__sbprintf+0x8c>
   12bd0:	01045783          	lhu	a5,16(s0)
   12bd4:	0407e793          	ori	a5,a5,64
   12bd8:	00f41823          	sh	a5,16(s0)
   12bdc:	4c813083          	ld	ra,1224(sp)
   12be0:	4c013403          	ld	s0,1216(sp)
   12be4:	4b013903          	ld	s2,1200(sp)
   12be8:	00048513          	mv	a0,s1
   12bec:	4b813483          	ld	s1,1208(sp)
   12bf0:	4d010113          	addi	sp,sp,1232
   12bf4:	00008067          	ret
   12bf8:	00010593          	mv	a1,sp
   12bfc:	00090513          	mv	a0,s2
   12c00:	504000ef          	jal	ra,13104 <_fflush_r>
   12c04:	fc0500e3          	beqz	a0,12bc4 <__sbprintf+0x74>
   12c08:	fff00493          	li	s1,-1
   12c0c:	fb9ff06f          	j	12bc4 <__sbprintf+0x74>

0000000000012c10 <__swsetup_r>:
   12c10:	fe010113          	addi	sp,sp,-32
   12c14:	00813823          	sd	s0,16(sp)
   12c18:	00913423          	sd	s1,8(sp)
   12c1c:	00113c23          	sd	ra,24(sp)
   12c20:	7581b783          	ld	a5,1880(gp) # 24b38 <_impure_ptr>
   12c24:	00050493          	mv	s1,a0
   12c28:	00058413          	mv	s0,a1
   12c2c:	00078663          	beqz	a5,12c38 <__swsetup_r+0x28>
   12c30:	0507a703          	lw	a4,80(a5)
   12c34:	08070463          	beqz	a4,12cbc <__swsetup_r+0xac>
   12c38:	01041703          	lh	a4,16(s0)
   12c3c:	03071793          	slli	a5,a4,0x30
   12c40:	00877693          	andi	a3,a4,8
   12c44:	0307d793          	srli	a5,a5,0x30
   12c48:	08068863          	beqz	a3,12cd8 <__swsetup_r+0xc8>
   12c4c:	01843683          	ld	a3,24(s0)
   12c50:	0a068863          	beqz	a3,12d00 <__swsetup_r+0xf0>
   12c54:	0017f613          	andi	a2,a5,1
   12c58:	02060863          	beqz	a2,12c88 <__swsetup_r+0x78>
   12c5c:	02042603          	lw	a2,32(s0)
   12c60:	00042623          	sw	zero,12(s0)
   12c64:	00000513          	li	a0,0
   12c68:	40c0063b          	negw	a2,a2
   12c6c:	02c42423          	sw	a2,40(s0)
   12c70:	02068a63          	beqz	a3,12ca4 <__swsetup_r+0x94>
   12c74:	01813083          	ld	ra,24(sp)
   12c78:	01013403          	ld	s0,16(sp)
   12c7c:	00813483          	ld	s1,8(sp)
   12c80:	02010113          	addi	sp,sp,32
   12c84:	00008067          	ret
   12c88:	0027f613          	andi	a2,a5,2
   12c8c:	00000593          	li	a1,0
   12c90:	00061463          	bnez	a2,12c98 <__swsetup_r+0x88>
   12c94:	02042583          	lw	a1,32(s0)
   12c98:	00b42623          	sw	a1,12(s0)
   12c9c:	00000513          	li	a0,0
   12ca0:	fc069ae3          	bnez	a3,12c74 <__swsetup_r+0x64>
   12ca4:	0807f793          	andi	a5,a5,128
   12ca8:	fc0786e3          	beqz	a5,12c74 <__swsetup_r+0x64>
   12cac:	04076713          	ori	a4,a4,64
   12cb0:	00e41823          	sh	a4,16(s0)
   12cb4:	fff00513          	li	a0,-1
   12cb8:	fbdff06f          	j	12c74 <__swsetup_r+0x64>
   12cbc:	00078513          	mv	a0,a5
   12cc0:	081000ef          	jal	ra,13540 <__sinit>
   12cc4:	01041703          	lh	a4,16(s0)
   12cc8:	03071793          	slli	a5,a4,0x30
   12ccc:	00877693          	andi	a3,a4,8
   12cd0:	0307d793          	srli	a5,a5,0x30
   12cd4:	f6069ce3          	bnez	a3,12c4c <__swsetup_r+0x3c>
   12cd8:	0107f693          	andi	a3,a5,16
   12cdc:	08068263          	beqz	a3,12d60 <__swsetup_r+0x150>
   12ce0:	0047f793          	andi	a5,a5,4
   12ce4:	04079463          	bnez	a5,12d2c <__swsetup_r+0x11c>
   12ce8:	01843683          	ld	a3,24(s0)
   12cec:	00876713          	ori	a4,a4,8
   12cf0:	03071793          	slli	a5,a4,0x30
   12cf4:	00e41823          	sh	a4,16(s0)
   12cf8:	0307d793          	srli	a5,a5,0x30
   12cfc:	f4069ce3          	bnez	a3,12c54 <__swsetup_r+0x44>
   12d00:	2807f613          	andi	a2,a5,640
   12d04:	20000593          	li	a1,512
   12d08:	f4b606e3          	beq	a2,a1,12c54 <__swsetup_r+0x44>
   12d0c:	00040593          	mv	a1,s0
   12d10:	00048513          	mv	a0,s1
   12d14:	4a9030ef          	jal	ra,169bc <__smakebuf_r>
   12d18:	01041703          	lh	a4,16(s0)
   12d1c:	01843683          	ld	a3,24(s0)
   12d20:	03071793          	slli	a5,a4,0x30
   12d24:	0307d793          	srli	a5,a5,0x30
   12d28:	f2dff06f          	j	12c54 <__swsetup_r+0x44>
   12d2c:	05843583          	ld	a1,88(s0)
   12d30:	00058e63          	beqz	a1,12d4c <__swsetup_r+0x13c>
   12d34:	07440793          	addi	a5,s0,116
   12d38:	00f58863          	beq	a1,a5,12d48 <__swsetup_r+0x138>
   12d3c:	00048513          	mv	a0,s1
   12d40:	1d9000ef          	jal	ra,13718 <_free_r>
   12d44:	01041703          	lh	a4,16(s0)
   12d48:	04043c23          	sd	zero,88(s0)
   12d4c:	01843683          	ld	a3,24(s0)
   12d50:	fdb77713          	andi	a4,a4,-37
   12d54:	00042423          	sw	zero,8(s0)
   12d58:	00d43023          	sd	a3,0(s0)
   12d5c:	f91ff06f          	j	12cec <__swsetup_r+0xdc>
   12d60:	00900793          	li	a5,9
   12d64:	00f4a023          	sw	a5,0(s1)
   12d68:	04076713          	ori	a4,a4,64
   12d6c:	00e41823          	sh	a4,16(s0)
   12d70:	fff00513          	li	a0,-1
   12d74:	f01ff06f          	j	12c74 <__swsetup_r+0x64>

0000000000012d78 <__call_exitprocs>:
   12d78:	fb010113          	addi	sp,sp,-80
   12d7c:	03413023          	sd	s4,32(sp)
   12d80:	7481ba03          	ld	s4,1864(gp) # 24b28 <_global_impure_ptr>
   12d84:	03213823          	sd	s2,48(sp)
   12d88:	1f8a3903          	ld	s2,504(s4)
   12d8c:	04113423          	sd	ra,72(sp)
   12d90:	04813023          	sd	s0,64(sp)
   12d94:	02913c23          	sd	s1,56(sp)
   12d98:	03313423          	sd	s3,40(sp)
   12d9c:	01513c23          	sd	s5,24(sp)
   12da0:	01613823          	sd	s6,16(sp)
   12da4:	01713423          	sd	s7,8(sp)
   12da8:	01813023          	sd	s8,0(sp)
   12dac:	04090063          	beqz	s2,12dec <__call_exitprocs+0x74>
   12db0:	00050b13          	mv	s6,a0
   12db4:	00058b93          	mv	s7,a1
   12db8:	00100a93          	li	s5,1
   12dbc:	fff00993          	li	s3,-1
   12dc0:	00892483          	lw	s1,8(s2)
   12dc4:	fff4841b          	addiw	s0,s1,-1
   12dc8:	02044263          	bltz	s0,12dec <__call_exitprocs+0x74>
   12dcc:	00349493          	slli	s1,s1,0x3
   12dd0:	009904b3          	add	s1,s2,s1
   12dd4:	040b8463          	beqz	s7,12e1c <__call_exitprocs+0xa4>
   12dd8:	2084b783          	ld	a5,520(s1)
   12ddc:	05778063          	beq	a5,s7,12e1c <__call_exitprocs+0xa4>
   12de0:	fff4041b          	addiw	s0,s0,-1
   12de4:	ff848493          	addi	s1,s1,-8
   12de8:	ff3416e3          	bne	s0,s3,12dd4 <__call_exitprocs+0x5c>
   12dec:	04813083          	ld	ra,72(sp)
   12df0:	04013403          	ld	s0,64(sp)
   12df4:	03813483          	ld	s1,56(sp)
   12df8:	03013903          	ld	s2,48(sp)
   12dfc:	02813983          	ld	s3,40(sp)
   12e00:	02013a03          	ld	s4,32(sp)
   12e04:	01813a83          	ld	s5,24(sp)
   12e08:	01013b03          	ld	s6,16(sp)
   12e0c:	00813b83          	ld	s7,8(sp)
   12e10:	00013c03          	ld	s8,0(sp)
   12e14:	05010113          	addi	sp,sp,80
   12e18:	00008067          	ret
   12e1c:	00892783          	lw	a5,8(s2)
   12e20:	0084b703          	ld	a4,8(s1)
   12e24:	fff7879b          	addiw	a5,a5,-1
   12e28:	06878263          	beq	a5,s0,12e8c <__call_exitprocs+0x114>
   12e2c:	0004b423          	sd	zero,8(s1)
   12e30:	fa0708e3          	beqz	a4,12de0 <__call_exitprocs+0x68>
   12e34:	31092783          	lw	a5,784(s2)
   12e38:	008a96bb          	sllw	a3,s5,s0
   12e3c:	00892c03          	lw	s8,8(s2)
   12e40:	00d7f7b3          	and	a5,a5,a3
   12e44:	0007879b          	sext.w	a5,a5
   12e48:	02079263          	bnez	a5,12e6c <__call_exitprocs+0xf4>
   12e4c:	000700e7          	jalr	a4
   12e50:	00892703          	lw	a4,8(s2)
   12e54:	1f8a3783          	ld	a5,504(s4)
   12e58:	01871463          	bne	a4,s8,12e60 <__call_exitprocs+0xe8>
   12e5c:	f92782e3          	beq	a5,s2,12de0 <__call_exitprocs+0x68>
   12e60:	f80786e3          	beqz	a5,12dec <__call_exitprocs+0x74>
   12e64:	00078913          	mv	s2,a5
   12e68:	f59ff06f          	j	12dc0 <__call_exitprocs+0x48>
   12e6c:	31492783          	lw	a5,788(s2)
   12e70:	1084b583          	ld	a1,264(s1)
   12e74:	00d7f7b3          	and	a5,a5,a3
   12e78:	0007879b          	sext.w	a5,a5
   12e7c:	00079c63          	bnez	a5,12e94 <__call_exitprocs+0x11c>
   12e80:	000b0513          	mv	a0,s6
   12e84:	000700e7          	jalr	a4
   12e88:	fc9ff06f          	j	12e50 <__call_exitprocs+0xd8>
   12e8c:	00892423          	sw	s0,8(s2)
   12e90:	fa1ff06f          	j	12e30 <__call_exitprocs+0xb8>
   12e94:	00058513          	mv	a0,a1
   12e98:	000700e7          	jalr	a4
   12e9c:	fb5ff06f          	j	12e50 <__call_exitprocs+0xd8>

0000000000012ea0 <__sflush_r>:
   12ea0:	01059783          	lh	a5,16(a1)
   12ea4:	fd010113          	addi	sp,sp,-48
   12ea8:	02813023          	sd	s0,32(sp)
   12eac:	01313423          	sd	s3,8(sp)
   12eb0:	02113423          	sd	ra,40(sp)
   12eb4:	00913c23          	sd	s1,24(sp)
   12eb8:	01213823          	sd	s2,16(sp)
   12ebc:	0087f693          	andi	a3,a5,8
   12ec0:	00058413          	mv	s0,a1
   12ec4:	00050993          	mv	s3,a0
   12ec8:	10069c63          	bnez	a3,12fe0 <__sflush_r+0x140>
   12ecc:	00001737          	lui	a4,0x1
   12ed0:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   12ed4:	0085a683          	lw	a3,8(a1)
   12ed8:	00e7e7b3          	or	a5,a5,a4
   12edc:	00f59823          	sh	a5,16(a1)
   12ee0:	18d05663          	blez	a3,1306c <__sflush_r+0x1cc>
   12ee4:	04843703          	ld	a4,72(s0)
   12ee8:	0c070c63          	beqz	a4,12fc0 <__sflush_r+0x120>
   12eec:	03079793          	slli	a5,a5,0x30
   12ef0:	0307d793          	srli	a5,a5,0x30
   12ef4:	000016b7          	lui	a3,0x1
   12ef8:	0009a483          	lw	s1,0(s3)
   12efc:	00d7f6b3          	and	a3,a5,a3
   12f00:	0009a023          	sw	zero,0(s3)
   12f04:	03043583          	ld	a1,48(s0)
   12f08:	16069863          	bnez	a3,13078 <__sflush_r+0x1d8>
   12f0c:	00000613          	li	a2,0
   12f10:	00100693          	li	a3,1
   12f14:	00098513          	mv	a0,s3
   12f18:	000700e7          	jalr	a4
   12f1c:	fff00793          	li	a5,-1
   12f20:	00050613          	mv	a2,a0
   12f24:	18f50c63          	beq	a0,a5,130bc <__sflush_r+0x21c>
   12f28:	01045783          	lhu	a5,16(s0)
   12f2c:	04843703          	ld	a4,72(s0)
   12f30:	03043583          	ld	a1,48(s0)
   12f34:	0047f793          	andi	a5,a5,4
   12f38:	00078e63          	beqz	a5,12f54 <__sflush_r+0xb4>
   12f3c:	00842683          	lw	a3,8(s0)
   12f40:	05843783          	ld	a5,88(s0)
   12f44:	40d60633          	sub	a2,a2,a3
   12f48:	00078663          	beqz	a5,12f54 <__sflush_r+0xb4>
   12f4c:	07042783          	lw	a5,112(s0)
   12f50:	40f60633          	sub	a2,a2,a5
   12f54:	00000693          	li	a3,0
   12f58:	00098513          	mv	a0,s3
   12f5c:	000700e7          	jalr	a4
   12f60:	fff00793          	li	a5,-1
   12f64:	10f51e63          	bne	a0,a5,13080 <__sflush_r+0x1e0>
   12f68:	0009a703          	lw	a4,0(s3)
   12f6c:	01041783          	lh	a5,16(s0)
   12f70:	16070863          	beqz	a4,130e0 <__sflush_r+0x240>
   12f74:	01d00693          	li	a3,29
   12f78:	00d70663          	beq	a4,a3,12f84 <__sflush_r+0xe4>
   12f7c:	01600693          	li	a3,22
   12f80:	16d71a63          	bne	a4,a3,130f4 <__sflush_r+0x254>
   12f84:	01843683          	ld	a3,24(s0)
   12f88:	fffff737          	lui	a4,0xfffff
   12f8c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdac1f>
   12f90:	00e7f7b3          	and	a5,a5,a4
   12f94:	00f41823          	sh	a5,16(s0)
   12f98:	00042423          	sw	zero,8(s0)
   12f9c:	00d43023          	sd	a3,0(s0)
   12fa0:	05843583          	ld	a1,88(s0)
   12fa4:	0099a023          	sw	s1,0(s3)
   12fa8:	00058c63          	beqz	a1,12fc0 <__sflush_r+0x120>
   12fac:	07440793          	addi	a5,s0,116
   12fb0:	00f58663          	beq	a1,a5,12fbc <__sflush_r+0x11c>
   12fb4:	00098513          	mv	a0,s3
   12fb8:	760000ef          	jal	ra,13718 <_free_r>
   12fbc:	04043c23          	sd	zero,88(s0)
   12fc0:	00000513          	li	a0,0
   12fc4:	02813083          	ld	ra,40(sp)
   12fc8:	02013403          	ld	s0,32(sp)
   12fcc:	01813483          	ld	s1,24(sp)
   12fd0:	01013903          	ld	s2,16(sp)
   12fd4:	00813983          	ld	s3,8(sp)
   12fd8:	03010113          	addi	sp,sp,48
   12fdc:	00008067          	ret
   12fe0:	0185b903          	ld	s2,24(a1)
   12fe4:	fc090ee3          	beqz	s2,12fc0 <__sflush_r+0x120>
   12fe8:	0005b483          	ld	s1,0(a1)
   12fec:	03079713          	slli	a4,a5,0x30
   12ff0:	03075713          	srli	a4,a4,0x30
   12ff4:	00377713          	andi	a4,a4,3
   12ff8:	0125b023          	sd	s2,0(a1)
   12ffc:	412484bb          	subw	s1,s1,s2
   13000:	00000793          	li	a5,0
   13004:	00071463          	bnez	a4,1300c <__sflush_r+0x16c>
   13008:	0205a783          	lw	a5,32(a1)
   1300c:	00f42623          	sw	a5,12(s0)
   13010:	00904863          	bgtz	s1,13020 <__sflush_r+0x180>
   13014:	fadff06f          	j	12fc0 <__sflush_r+0x120>
   13018:	00a90933          	add	s2,s2,a0
   1301c:	fa9052e3          	blez	s1,12fc0 <__sflush_r+0x120>
   13020:	04043783          	ld	a5,64(s0)
   13024:	03043583          	ld	a1,48(s0)
   13028:	00048693          	mv	a3,s1
   1302c:	00090613          	mv	a2,s2
   13030:	00098513          	mv	a0,s3
   13034:	000780e7          	jalr	a5
   13038:	40a484bb          	subw	s1,s1,a0
   1303c:	fca04ee3          	bgtz	a0,13018 <__sflush_r+0x178>
   13040:	01045783          	lhu	a5,16(s0)
   13044:	02813083          	ld	ra,40(sp)
   13048:	01813483          	ld	s1,24(sp)
   1304c:	0407e793          	ori	a5,a5,64
   13050:	00f41823          	sh	a5,16(s0)
   13054:	02013403          	ld	s0,32(sp)
   13058:	01013903          	ld	s2,16(sp)
   1305c:	00813983          	ld	s3,8(sp)
   13060:	fff00513          	li	a0,-1
   13064:	03010113          	addi	sp,sp,48
   13068:	00008067          	ret
   1306c:	0705a703          	lw	a4,112(a1)
   13070:	e6e04ae3          	bgtz	a4,12ee4 <__sflush_r+0x44>
   13074:	f4dff06f          	j	12fc0 <__sflush_r+0x120>
   13078:	09043603          	ld	a2,144(s0)
   1307c:	eb9ff06f          	j	12f34 <__sflush_r+0x94>
   13080:	01045783          	lhu	a5,16(s0)
   13084:	fffff737          	lui	a4,0xfffff
   13088:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdac1f>
   1308c:	00e7f7b3          	and	a5,a5,a4
   13090:	01843683          	ld	a3,24(s0)
   13094:	0107979b          	slliw	a5,a5,0x10
   13098:	4107d79b          	sraiw	a5,a5,0x10
   1309c:	00001737          	lui	a4,0x1
   130a0:	00f41823          	sh	a5,16(s0)
   130a4:	00042423          	sw	zero,8(s0)
   130a8:	00d43023          	sd	a3,0(s0)
   130ac:	00e7f7b3          	and	a5,a5,a4
   130b0:	ee0788e3          	beqz	a5,12fa0 <__sflush_r+0x100>
   130b4:	08a43823          	sd	a0,144(s0)
   130b8:	ee9ff06f          	j	12fa0 <__sflush_r+0x100>
   130bc:	0009a783          	lw	a5,0(s3)
   130c0:	e60784e3          	beqz	a5,12f28 <__sflush_r+0x88>
   130c4:	01d00713          	li	a4,29
   130c8:	00e78663          	beq	a5,a4,130d4 <__sflush_r+0x234>
   130cc:	01600713          	li	a4,22
   130d0:	f6e798e3          	bne	a5,a4,13040 <__sflush_r+0x1a0>
   130d4:	0099a023          	sw	s1,0(s3)
   130d8:	00000513          	li	a0,0
   130dc:	ee9ff06f          	j	12fc4 <__sflush_r+0x124>
   130e0:	fffff737          	lui	a4,0xfffff
   130e4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdac1f>
   130e8:	01843683          	ld	a3,24(s0)
   130ec:	00e7f7b3          	and	a5,a5,a4
   130f0:	fadff06f          	j	1309c <__sflush_r+0x1fc>
   130f4:	0407e793          	ori	a5,a5,64
   130f8:	00f41823          	sh	a5,16(s0)
   130fc:	fff00513          	li	a0,-1
   13100:	ec5ff06f          	j	12fc4 <__sflush_r+0x124>

0000000000013104 <_fflush_r>:
   13104:	fe010113          	addi	sp,sp,-32
   13108:	00813823          	sd	s0,16(sp)
   1310c:	00113c23          	sd	ra,24(sp)
   13110:	00050413          	mv	s0,a0
   13114:	00050663          	beqz	a0,13120 <_fflush_r+0x1c>
   13118:	05052783          	lw	a5,80(a0)
   1311c:	02078063          	beqz	a5,1313c <_fflush_r+0x38>
   13120:	01059783          	lh	a5,16(a1)
   13124:	02079663          	bnez	a5,13150 <_fflush_r+0x4c>
   13128:	01813083          	ld	ra,24(sp)
   1312c:	01013403          	ld	s0,16(sp)
   13130:	00000513          	li	a0,0
   13134:	02010113          	addi	sp,sp,32
   13138:	00008067          	ret
   1313c:	00b13423          	sd	a1,8(sp)
   13140:	400000ef          	jal	ra,13540 <__sinit>
   13144:	00813583          	ld	a1,8(sp)
   13148:	01059783          	lh	a5,16(a1)
   1314c:	fc078ee3          	beqz	a5,13128 <_fflush_r+0x24>
   13150:	00040513          	mv	a0,s0
   13154:	01013403          	ld	s0,16(sp)
   13158:	01813083          	ld	ra,24(sp)
   1315c:	02010113          	addi	sp,sp,32
   13160:	d41ff06f          	j	12ea0 <__sflush_r>

0000000000013164 <fflush>:
   13164:	06050663          	beqz	a0,131d0 <fflush+0x6c>
   13168:	fe010113          	addi	sp,sp,-32
   1316c:	00813823          	sd	s0,16(sp)
   13170:	00113c23          	sd	ra,24(sp)
   13174:	00050413          	mv	s0,a0
   13178:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1317c:	00050663          	beqz	a0,13188 <fflush+0x24>
   13180:	05052783          	lw	a5,80(a0)
   13184:	02078a63          	beqz	a5,131b8 <fflush+0x54>
   13188:	01041783          	lh	a5,16(s0)
   1318c:	00079c63          	bnez	a5,131a4 <fflush+0x40>
   13190:	01813083          	ld	ra,24(sp)
   13194:	01013403          	ld	s0,16(sp)
   13198:	00000513          	li	a0,0
   1319c:	02010113          	addi	sp,sp,32
   131a0:	00008067          	ret
   131a4:	00040593          	mv	a1,s0
   131a8:	01013403          	ld	s0,16(sp)
   131ac:	01813083          	ld	ra,24(sp)
   131b0:	02010113          	addi	sp,sp,32
   131b4:	cedff06f          	j	12ea0 <__sflush_r>
   131b8:	00a13423          	sd	a0,8(sp)
   131bc:	384000ef          	jal	ra,13540 <__sinit>
   131c0:	01041783          	lh	a5,16(s0)
   131c4:	00813503          	ld	a0,8(sp)
   131c8:	fc0784e3          	beqz	a5,13190 <fflush+0x2c>
   131cc:	fd9ff06f          	j	131a4 <fflush+0x40>
   131d0:	00000597          	auipc	a1,0x0
   131d4:	f3458593          	addi	a1,a1,-204 # 13104 <_fflush_r>
   131d8:	7481b503          	ld	a0,1864(gp) # 24b28 <_global_impure_ptr>
   131dc:	12d0006f          	j	13b08 <_fwalk_reent>

00000000000131e0 <__fp_lock>:
   131e0:	00000513          	li	a0,0
   131e4:	00008067          	ret

00000000000131e8 <_cleanup_r>:
   131e8:	0000a597          	auipc	a1,0xa
   131ec:	b1458593          	addi	a1,a1,-1260 # 1ccfc <_fclose_r>
   131f0:	1190006f          	j	13b08 <_fwalk_reent>

00000000000131f4 <__fp_unlock>:
   131f4:	00000513          	li	a0,0
   131f8:	00008067          	ret

00000000000131fc <__sinit.part.0>:
   131fc:	fc010113          	addi	sp,sp,-64
   13200:	02113c23          	sd	ra,56(sp)
   13204:	02813823          	sd	s0,48(sp)
   13208:	02913423          	sd	s1,40(sp)
   1320c:	03213023          	sd	s2,32(sp)
   13210:	01313c23          	sd	s3,24(sp)
   13214:	01413823          	sd	s4,16(sp)
   13218:	01513423          	sd	s5,8(sp)
   1321c:	01613023          	sd	s6,0(sp)
   13220:	00853403          	ld	s0,8(a0)
   13224:	00000717          	auipc	a4,0x0
   13228:	fc470713          	addi	a4,a4,-60 # 131e8 <_cleanup_r>
   1322c:	04e53c23          	sd	a4,88(a0)
   13230:	53850793          	addi	a5,a0,1336
   13234:	00300713          	li	a4,3
   13238:	52e52423          	sw	a4,1320(a0)
   1323c:	52f53823          	sd	a5,1328(a0)
   13240:	52053023          	sd	zero,1312(a0)
   13244:	00400793          	li	a5,4
   13248:	00050913          	mv	s2,a0
   1324c:	00f42823          	sw	a5,16(s0)
   13250:	00800613          	li	a2,8
   13254:	00000593          	li	a1,0
   13258:	0a042623          	sw	zero,172(s0)
   1325c:	00043023          	sd	zero,0(s0)
   13260:	00043423          	sd	zero,8(s0)
   13264:	00043c23          	sd	zero,24(s0)
   13268:	02042023          	sw	zero,32(s0)
   1326c:	02042423          	sw	zero,40(s0)
   13270:	0a440513          	addi	a0,s0,164
   13274:	850fd0ef          	jal	ra,102c4 <memset>
   13278:	01093483          	ld	s1,16(s2)
   1327c:	00006b17          	auipc	s6,0x6
   13280:	804b0b13          	addi	s6,s6,-2044 # 18a80 <__sread>
   13284:	00006a97          	auipc	s5,0x6
   13288:	860a8a93          	addi	s5,s5,-1952 # 18ae4 <__swrite>
   1328c:	00006a17          	auipc	s4,0x6
   13290:	8e0a0a13          	addi	s4,s4,-1824 # 18b6c <__sseek>
   13294:	00006997          	auipc	s3,0x6
   13298:	94098993          	addi	s3,s3,-1728 # 18bd4 <__sclose>
   1329c:	000107b7          	lui	a5,0x10
   132a0:	03643c23          	sd	s6,56(s0)
   132a4:	05543023          	sd	s5,64(s0)
   132a8:	05443423          	sd	s4,72(s0)
   132ac:	05343823          	sd	s3,80(s0)
   132b0:	02843823          	sd	s0,48(s0)
   132b4:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0xa7>
   132b8:	00f4a823          	sw	a5,16(s1)
   132bc:	00800613          	li	a2,8
   132c0:	00000593          	li	a1,0
   132c4:	0a04a623          	sw	zero,172(s1)
   132c8:	0004b023          	sd	zero,0(s1)
   132cc:	0004b423          	sd	zero,8(s1)
   132d0:	0004bc23          	sd	zero,24(s1)
   132d4:	0204a023          	sw	zero,32(s1)
   132d8:	0204a423          	sw	zero,40(s1)
   132dc:	0a448513          	addi	a0,s1,164
   132e0:	fe5fc0ef          	jal	ra,102c4 <memset>
   132e4:	01893403          	ld	s0,24(s2)
   132e8:	000207b7          	lui	a5,0x20
   132ec:	0364bc23          	sd	s6,56(s1)
   132f0:	0554b023          	sd	s5,64(s1)
   132f4:	0544b423          	sd	s4,72(s1)
   132f8:	0534b823          	sd	s3,80(s1)
   132fc:	0294b823          	sd	s1,48(s1)
   13300:	01278793          	addi	a5,a5,18 # 20012 <__letf2+0x36>
   13304:	00f42823          	sw	a5,16(s0)
   13308:	0a042623          	sw	zero,172(s0)
   1330c:	00043023          	sd	zero,0(s0)
   13310:	00043423          	sd	zero,8(s0)
   13314:	00043c23          	sd	zero,24(s0)
   13318:	02042023          	sw	zero,32(s0)
   1331c:	02042423          	sw	zero,40(s0)
   13320:	0a440513          	addi	a0,s0,164
   13324:	00800613          	li	a2,8
   13328:	00000593          	li	a1,0
   1332c:	f99fc0ef          	jal	ra,102c4 <memset>
   13330:	03813083          	ld	ra,56(sp)
   13334:	03643c23          	sd	s6,56(s0)
   13338:	05543023          	sd	s5,64(s0)
   1333c:	05443423          	sd	s4,72(s0)
   13340:	05343823          	sd	s3,80(s0)
   13344:	02843823          	sd	s0,48(s0)
   13348:	03013403          	ld	s0,48(sp)
   1334c:	00100793          	li	a5,1
   13350:	04f92823          	sw	a5,80(s2)
   13354:	02813483          	ld	s1,40(sp)
   13358:	02013903          	ld	s2,32(sp)
   1335c:	01813983          	ld	s3,24(sp)
   13360:	01013a03          	ld	s4,16(sp)
   13364:	00813a83          	ld	s5,8(sp)
   13368:	00013b03          	ld	s6,0(sp)
   1336c:	04010113          	addi	sp,sp,64
   13370:	00008067          	ret

0000000000013374 <__sfmoreglue>:
   13374:	fe010113          	addi	sp,sp,-32
   13378:	fff5861b          	addiw	a2,a1,-1
   1337c:	00813823          	sd	s0,16(sp)
   13380:	00161413          	slli	s0,a2,0x1
   13384:	00c40433          	add	s0,s0,a2
   13388:	00241413          	slli	s0,s0,0x2
   1338c:	40c40433          	sub	s0,s0,a2
   13390:	00441413          	slli	s0,s0,0x4
   13394:	01213023          	sd	s2,0(sp)
   13398:	00058913          	mv	s2,a1
   1339c:	0c840593          	addi	a1,s0,200
   133a0:	00913423          	sd	s1,8(sp)
   133a4:	00113c23          	sd	ra,24(sp)
   133a8:	075030ef          	jal	ra,16c1c <_malloc_r>
   133ac:	00050493          	mv	s1,a0
   133b0:	02050063          	beqz	a0,133d0 <__sfmoreglue+0x5c>
   133b4:	01850513          	addi	a0,a0,24
   133b8:	0004b023          	sd	zero,0(s1)
   133bc:	0124a423          	sw	s2,8(s1)
   133c0:	00a4b823          	sd	a0,16(s1)
   133c4:	0b040613          	addi	a2,s0,176
   133c8:	00000593          	li	a1,0
   133cc:	ef9fc0ef          	jal	ra,102c4 <memset>
   133d0:	01813083          	ld	ra,24(sp)
   133d4:	01013403          	ld	s0,16(sp)
   133d8:	00013903          	ld	s2,0(sp)
   133dc:	00048513          	mv	a0,s1
   133e0:	00813483          	ld	s1,8(sp)
   133e4:	02010113          	addi	sp,sp,32
   133e8:	00008067          	ret

00000000000133ec <__sfp>:
   133ec:	fd010113          	addi	sp,sp,-48
   133f0:	01213823          	sd	s2,16(sp)
   133f4:	7481b903          	ld	s2,1864(gp) # 24b28 <_global_impure_ptr>
   133f8:	05092783          	lw	a5,80(s2)
   133fc:	00913c23          	sd	s1,24(sp)
   13400:	02113423          	sd	ra,40(sp)
   13404:	02813023          	sd	s0,32(sp)
   13408:	01313423          	sd	s3,8(sp)
   1340c:	00050493          	mv	s1,a0
   13410:	0c078463          	beqz	a5,134d8 <__sfp+0xec>
   13414:	52090913          	addi	s2,s2,1312
   13418:	00400993          	li	s3,4
   1341c:	00892783          	lw	a5,8(s2)
   13420:	01093403          	ld	s0,16(s2)
   13424:	0af05263          	blez	a5,134c8 <__sfp+0xdc>
   13428:	fff7879b          	addiw	a5,a5,-1
   1342c:	02079793          	slli	a5,a5,0x20
   13430:	0207d793          	srli	a5,a5,0x20
   13434:	00178713          	addi	a4,a5,1
   13438:	00171793          	slli	a5,a4,0x1
   1343c:	00e787b3          	add	a5,a5,a4
   13440:	00279793          	slli	a5,a5,0x2
   13444:	40e787b3          	sub	a5,a5,a4
   13448:	00479793          	slli	a5,a5,0x4
   1344c:	00f407b3          	add	a5,s0,a5
   13450:	00c0006f          	j	1345c <__sfp+0x70>
   13454:	0b040413          	addi	s0,s0,176
   13458:	06f40863          	beq	s0,a5,134c8 <__sfp+0xdc>
   1345c:	01041703          	lh	a4,16(s0)
   13460:	fe071ae3          	bnez	a4,13454 <__sfp+0x68>
   13464:	ffff07b7          	lui	a5,0xffff0
   13468:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb421>
   1346c:	0a042623          	sw	zero,172(s0)
   13470:	00043023          	sd	zero,0(s0)
   13474:	00043423          	sd	zero,8(s0)
   13478:	00f42823          	sw	a5,16(s0)
   1347c:	00043c23          	sd	zero,24(s0)
   13480:	02042023          	sw	zero,32(s0)
   13484:	02042423          	sw	zero,40(s0)
   13488:	00800613          	li	a2,8
   1348c:	00000593          	li	a1,0
   13490:	0a440513          	addi	a0,s0,164
   13494:	e31fc0ef          	jal	ra,102c4 <memset>
   13498:	04043c23          	sd	zero,88(s0)
   1349c:	06042023          	sw	zero,96(s0)
   134a0:	06043c23          	sd	zero,120(s0)
   134a4:	08042023          	sw	zero,128(s0)
   134a8:	02813083          	ld	ra,40(sp)
   134ac:	00040513          	mv	a0,s0
   134b0:	02013403          	ld	s0,32(sp)
   134b4:	01813483          	ld	s1,24(sp)
   134b8:	01013903          	ld	s2,16(sp)
   134bc:	00813983          	ld	s3,8(sp)
   134c0:	03010113          	addi	sp,sp,48
   134c4:	00008067          	ret
   134c8:	00093403          	ld	s0,0(s2)
   134cc:	00040c63          	beqz	s0,134e4 <__sfp+0xf8>
   134d0:	00040913          	mv	s2,s0
   134d4:	f49ff06f          	j	1341c <__sfp+0x30>
   134d8:	00090513          	mv	a0,s2
   134dc:	d21ff0ef          	jal	ra,131fc <__sinit.part.0>
   134e0:	f35ff06f          	j	13414 <__sfp+0x28>
   134e4:	2d800593          	li	a1,728
   134e8:	00048513          	mv	a0,s1
   134ec:	730030ef          	jal	ra,16c1c <_malloc_r>
   134f0:	00050413          	mv	s0,a0
   134f4:	02050663          	beqz	a0,13520 <__sfp+0x134>
   134f8:	01850513          	addi	a0,a0,24
   134fc:	00043023          	sd	zero,0(s0)
   13500:	01342423          	sw	s3,8(s0)
   13504:	00a43823          	sd	a0,16(s0)
   13508:	2c000613          	li	a2,704
   1350c:	00000593          	li	a1,0
   13510:	db5fc0ef          	jal	ra,102c4 <memset>
   13514:	00893023          	sd	s0,0(s2)
   13518:	00040913          	mv	s2,s0
   1351c:	f01ff06f          	j	1341c <__sfp+0x30>
   13520:	00093023          	sd	zero,0(s2)
   13524:	00c00793          	li	a5,12
   13528:	00f4a023          	sw	a5,0(s1)
   1352c:	f7dff06f          	j	134a8 <__sfp+0xbc>

0000000000013530 <_cleanup>:
   13530:	00009597          	auipc	a1,0x9
   13534:	7cc58593          	addi	a1,a1,1996 # 1ccfc <_fclose_r>
   13538:	7481b503          	ld	a0,1864(gp) # 24b28 <_global_impure_ptr>
   1353c:	5cc0006f          	j	13b08 <_fwalk_reent>

0000000000013540 <__sinit>:
   13540:	05052783          	lw	a5,80(a0)
   13544:	00078463          	beqz	a5,1354c <__sinit+0xc>
   13548:	00008067          	ret
   1354c:	cb1ff06f          	j	131fc <__sinit.part.0>

0000000000013550 <__sfp_lock_acquire>:
   13550:	00008067          	ret

0000000000013554 <__sfp_lock_release>:
   13554:	00008067          	ret

0000000000013558 <__sinit_lock_acquire>:
   13558:	00008067          	ret

000000000001355c <__sinit_lock_release>:
   1355c:	00008067          	ret

0000000000013560 <__fp_lock_all>:
   13560:	00000597          	auipc	a1,0x0
   13564:	c8058593          	addi	a1,a1,-896 # 131e0 <__fp_lock>
   13568:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1356c:	4d40006f          	j	13a40 <_fwalk>

0000000000013570 <__fp_unlock_all>:
   13570:	00000597          	auipc	a1,0x0
   13574:	c8458593          	addi	a1,a1,-892 # 131f4 <__fp_unlock>
   13578:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1357c:	4c40006f          	j	13a40 <_fwalk>

0000000000013580 <__libc_fini_array>:
   13580:	fe010113          	addi	sp,sp,-32
   13584:	00813823          	sd	s0,16(sp)
   13588:	00010797          	auipc	a5,0x10
   1358c:	47078793          	addi	a5,a5,1136 # 239f8 <impure_data>
   13590:	00010417          	auipc	s0,0x10
   13594:	46040413          	addi	s0,s0,1120 # 239f0 <__do_global_dtors_aux_fini_array_entry>
   13598:	408787b3          	sub	a5,a5,s0
   1359c:	00913423          	sd	s1,8(sp)
   135a0:	00113c23          	sd	ra,24(sp)
   135a4:	4037d493          	srai	s1,a5,0x3
   135a8:	02048063          	beqz	s1,135c8 <__libc_fini_array+0x48>
   135ac:	ff878793          	addi	a5,a5,-8
   135b0:	00878433          	add	s0,a5,s0
   135b4:	00043783          	ld	a5,0(s0)
   135b8:	fff48493          	addi	s1,s1,-1
   135bc:	ff840413          	addi	s0,s0,-8
   135c0:	000780e7          	jalr	a5
   135c4:	fe0498e3          	bnez	s1,135b4 <__libc_fini_array+0x34>
   135c8:	01813083          	ld	ra,24(sp)
   135cc:	01013403          	ld	s0,16(sp)
   135d0:	00813483          	ld	s1,8(sp)
   135d4:	02010113          	addi	sp,sp,32
   135d8:	00008067          	ret

00000000000135dc <_malloc_trim_r>:
   135dc:	fd010113          	addi	sp,sp,-48
   135e0:	02813023          	sd	s0,32(sp)
   135e4:	00913c23          	sd	s1,24(sp)
   135e8:	01213823          	sd	s2,16(sp)
   135ec:	01313423          	sd	s3,8(sp)
   135f0:	01413023          	sd	s4,0(sp)
   135f4:	00058993          	mv	s3,a1
   135f8:	02113423          	sd	ra,40(sp)
   135fc:	00011a17          	auipc	s4,0x11
   13600:	ceca0a13          	addi	s4,s4,-788 # 242e8 <__malloc_av_>
   13604:	00050913          	mv	s2,a0
   13608:	769030ef          	jal	ra,17570 <__malloc_lock>
   1360c:	010a3703          	ld	a4,16(s4)
   13610:	000017b7          	lui	a5,0x1
   13614:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   13618:	00873483          	ld	s1,8(a4)
   1361c:	41340433          	sub	s0,s0,s3
   13620:	ffc4f493          	andi	s1,s1,-4
   13624:	00940433          	add	s0,s0,s1
   13628:	00c45413          	srli	s0,s0,0xc
   1362c:	fff40413          	addi	s0,s0,-1
   13630:	00c41413          	slli	s0,s0,0xc
   13634:	00f44e63          	blt	s0,a5,13650 <_malloc_trim_r+0x74>
   13638:	00000593          	li	a1,0
   1363c:	00090513          	mv	a0,s2
   13640:	270050ef          	jal	ra,188b0 <_sbrk_r>
   13644:	010a3783          	ld	a5,16(s4)
   13648:	009787b3          	add	a5,a5,s1
   1364c:	02f50863          	beq	a0,a5,1367c <_malloc_trim_r+0xa0>
   13650:	00090513          	mv	a0,s2
   13654:	721030ef          	jal	ra,17574 <__malloc_unlock>
   13658:	02813083          	ld	ra,40(sp)
   1365c:	02013403          	ld	s0,32(sp)
   13660:	01813483          	ld	s1,24(sp)
   13664:	01013903          	ld	s2,16(sp)
   13668:	00813983          	ld	s3,8(sp)
   1366c:	00013a03          	ld	s4,0(sp)
   13670:	00000513          	li	a0,0
   13674:	03010113          	addi	sp,sp,48
   13678:	00008067          	ret
   1367c:	408005b3          	neg	a1,s0
   13680:	00090513          	mv	a0,s2
   13684:	22c050ef          	jal	ra,188b0 <_sbrk_r>
   13688:	fff00793          	li	a5,-1
   1368c:	04f50a63          	beq	a0,a5,136e0 <_malloc_trim_r+0x104>
   13690:	00011717          	auipc	a4,0x11
   13694:	52870713          	addi	a4,a4,1320 # 24bb8 <__malloc_current_mallinfo>
   13698:	00072783          	lw	a5,0(a4)
   1369c:	010a3683          	ld	a3,16(s4)
   136a0:	408484b3          	sub	s1,s1,s0
   136a4:	0014e493          	ori	s1,s1,1
   136a8:	4087843b          	subw	s0,a5,s0
   136ac:	00090513          	mv	a0,s2
   136b0:	0096b423          	sd	s1,8(a3) # 1008 <register_fini-0xf0a8>
   136b4:	00872023          	sw	s0,0(a4)
   136b8:	6bd030ef          	jal	ra,17574 <__malloc_unlock>
   136bc:	02813083          	ld	ra,40(sp)
   136c0:	02013403          	ld	s0,32(sp)
   136c4:	01813483          	ld	s1,24(sp)
   136c8:	01013903          	ld	s2,16(sp)
   136cc:	00813983          	ld	s3,8(sp)
   136d0:	00013a03          	ld	s4,0(sp)
   136d4:	00100513          	li	a0,1
   136d8:	03010113          	addi	sp,sp,48
   136dc:	00008067          	ret
   136e0:	00000593          	li	a1,0
   136e4:	00090513          	mv	a0,s2
   136e8:	1c8050ef          	jal	ra,188b0 <_sbrk_r>
   136ec:	010a3703          	ld	a4,16(s4)
   136f0:	01f00693          	li	a3,31
   136f4:	40e507b3          	sub	a5,a0,a4
   136f8:	f4f6dce3          	bge	a3,a5,13650 <_malloc_trim_r+0x74>
   136fc:	7601b683          	ld	a3,1888(gp) # 24b40 <__malloc_sbrk_base>
   13700:	40d50533          	sub	a0,a0,a3
   13704:	0017e793          	ori	a5,a5,1
   13708:	00011697          	auipc	a3,0x11
   1370c:	4aa6a823          	sw	a0,1200(a3) # 24bb8 <__malloc_current_mallinfo>
   13710:	00f73423          	sd	a5,8(a4)
   13714:	f3dff06f          	j	13650 <_malloc_trim_r+0x74>

0000000000013718 <_free_r>:
   13718:	12058e63          	beqz	a1,13854 <_free_r+0x13c>
   1371c:	fe010113          	addi	sp,sp,-32
   13720:	00813823          	sd	s0,16(sp)
   13724:	00913423          	sd	s1,8(sp)
   13728:	00058413          	mv	s0,a1
   1372c:	00050493          	mv	s1,a0
   13730:	00113c23          	sd	ra,24(sp)
   13734:	63d030ef          	jal	ra,17570 <__malloc_lock>
   13738:	ff843583          	ld	a1,-8(s0)
   1373c:	ff040713          	addi	a4,s0,-16
   13740:	00011517          	auipc	a0,0x11
   13744:	ba850513          	addi	a0,a0,-1112 # 242e8 <__malloc_av_>
   13748:	ffe5f793          	andi	a5,a1,-2
   1374c:	00f70633          	add	a2,a4,a5
   13750:	00863683          	ld	a3,8(a2)
   13754:	01053803          	ld	a6,16(a0)
   13758:	ffc6f693          	andi	a3,a3,-4
   1375c:	1cc80063          	beq	a6,a2,1391c <_free_r+0x204>
   13760:	00d63423          	sd	a3,8(a2)
   13764:	0015f593          	andi	a1,a1,1
   13768:	00d60833          	add	a6,a2,a3
   1376c:	0a059463          	bnez	a1,13814 <_free_r+0xfc>
   13770:	ff043303          	ld	t1,-16(s0)
   13774:	00883583          	ld	a1,8(a6)
   13778:	00011897          	auipc	a7,0x11
   1377c:	b8088893          	addi	a7,a7,-1152 # 242f8 <__malloc_av_+0x10>
   13780:	40670733          	sub	a4,a4,t1
   13784:	01073803          	ld	a6,16(a4)
   13788:	006787b3          	add	a5,a5,t1
   1378c:	0015f593          	andi	a1,a1,1
   13790:	15180663          	beq	a6,a7,138dc <_free_r+0x1c4>
   13794:	01873303          	ld	t1,24(a4)
   13798:	00683c23          	sd	t1,24(a6)
   1379c:	01033823          	sd	a6,16(t1)
   137a0:	1e058863          	beqz	a1,13990 <_free_r+0x278>
   137a4:	0017e693          	ori	a3,a5,1
   137a8:	00d73423          	sd	a3,8(a4)
   137ac:	00f63023          	sd	a5,0(a2)
   137b0:	1ff00693          	li	a3,511
   137b4:	0af6ec63          	bltu	a3,a5,1386c <_free_r+0x154>
   137b8:	0037d793          	srli	a5,a5,0x3
   137bc:	0017869b          	addiw	a3,a5,1
   137c0:	0016969b          	slliw	a3,a3,0x1
   137c4:	00369693          	slli	a3,a3,0x3
   137c8:	00853803          	ld	a6,8(a0)
   137cc:	00d506b3          	add	a3,a0,a3
   137d0:	0006b583          	ld	a1,0(a3)
   137d4:	4027d61b          	sraiw	a2,a5,0x2
   137d8:	00100793          	li	a5,1
   137dc:	00c797b3          	sll	a5,a5,a2
   137e0:	0107e7b3          	or	a5,a5,a6
   137e4:	ff068613          	addi	a2,a3,-16
   137e8:	00c73c23          	sd	a2,24(a4)
   137ec:	00b73823          	sd	a1,16(a4)
   137f0:	00f53423          	sd	a5,8(a0)
   137f4:	00e6b023          	sd	a4,0(a3)
   137f8:	00e5bc23          	sd	a4,24(a1)
   137fc:	01013403          	ld	s0,16(sp)
   13800:	01813083          	ld	ra,24(sp)
   13804:	00048513          	mv	a0,s1
   13808:	00813483          	ld	s1,8(sp)
   1380c:	02010113          	addi	sp,sp,32
   13810:	5650306f          	j	17574 <__malloc_unlock>
   13814:	00883583          	ld	a1,8(a6)
   13818:	0015f593          	andi	a1,a1,1
   1381c:	02059e63          	bnez	a1,13858 <_free_r+0x140>
   13820:	00d787b3          	add	a5,a5,a3
   13824:	00011897          	auipc	a7,0x11
   13828:	ad488893          	addi	a7,a7,-1324 # 242f8 <__malloc_av_+0x10>
   1382c:	01063683          	ld	a3,16(a2)
   13830:	0017e813          	ori	a6,a5,1
   13834:	00f705b3          	add	a1,a4,a5
   13838:	17168a63          	beq	a3,a7,139ac <_free_r+0x294>
   1383c:	01863603          	ld	a2,24(a2)
   13840:	00c6bc23          	sd	a2,24(a3)
   13844:	00d63823          	sd	a3,16(a2)
   13848:	01073423          	sd	a6,8(a4)
   1384c:	00f5b023          	sd	a5,0(a1)
   13850:	f61ff06f          	j	137b0 <_free_r+0x98>
   13854:	00008067          	ret
   13858:	0017e693          	ori	a3,a5,1
   1385c:	fed43c23          	sd	a3,-8(s0)
   13860:	00f63023          	sd	a5,0(a2)
   13864:	1ff00693          	li	a3,511
   13868:	f4f6f8e3          	bgeu	a3,a5,137b8 <_free_r+0xa0>
   1386c:	0097d693          	srli	a3,a5,0x9
   13870:	00400613          	li	a2,4
   13874:	0ed66a63          	bltu	a2,a3,13968 <_free_r+0x250>
   13878:	0067d693          	srli	a3,a5,0x6
   1387c:	0396859b          	addiw	a1,a3,57
   13880:	0015959b          	slliw	a1,a1,0x1
   13884:	0386861b          	addiw	a2,a3,56
   13888:	00359593          	slli	a1,a1,0x3
   1388c:	00b505b3          	add	a1,a0,a1
   13890:	0005b683          	ld	a3,0(a1)
   13894:	ff058593          	addi	a1,a1,-16
   13898:	12d58863          	beq	a1,a3,139c8 <_free_r+0x2b0>
   1389c:	0086b603          	ld	a2,8(a3)
   138a0:	ffc67613          	andi	a2,a2,-4
   138a4:	00c7f663          	bgeu	a5,a2,138b0 <_free_r+0x198>
   138a8:	0106b683          	ld	a3,16(a3)
   138ac:	fed598e3          	bne	a1,a3,1389c <_free_r+0x184>
   138b0:	0186b583          	ld	a1,24(a3)
   138b4:	00b73c23          	sd	a1,24(a4)
   138b8:	00d73823          	sd	a3,16(a4)
   138bc:	01013403          	ld	s0,16(sp)
   138c0:	01813083          	ld	ra,24(sp)
   138c4:	00e5b823          	sd	a4,16(a1)
   138c8:	00048513          	mv	a0,s1
   138cc:	00813483          	ld	s1,8(sp)
   138d0:	00e6bc23          	sd	a4,24(a3)
   138d4:	02010113          	addi	sp,sp,32
   138d8:	49d0306f          	j	17574 <__malloc_unlock>
   138dc:	14059a63          	bnez	a1,13a30 <_free_r+0x318>
   138e0:	01863583          	ld	a1,24(a2)
   138e4:	01063603          	ld	a2,16(a2)
   138e8:	00f687b3          	add	a5,a3,a5
   138ec:	01013403          	ld	s0,16(sp)
   138f0:	00b63c23          	sd	a1,24(a2)
   138f4:	00c5b823          	sd	a2,16(a1)
   138f8:	0017e693          	ori	a3,a5,1
   138fc:	01813083          	ld	ra,24(sp)
   13900:	00d73423          	sd	a3,8(a4)
   13904:	00048513          	mv	a0,s1
   13908:	00f70733          	add	a4,a4,a5
   1390c:	00813483          	ld	s1,8(sp)
   13910:	00f73023          	sd	a5,0(a4)
   13914:	02010113          	addi	sp,sp,32
   13918:	45d0306f          	j	17574 <__malloc_unlock>
   1391c:	0015f593          	andi	a1,a1,1
   13920:	00d787b3          	add	a5,a5,a3
   13924:	02059063          	bnez	a1,13944 <_free_r+0x22c>
   13928:	ff043583          	ld	a1,-16(s0)
   1392c:	40b70733          	sub	a4,a4,a1
   13930:	01873683          	ld	a3,24(a4)
   13934:	01073603          	ld	a2,16(a4)
   13938:	00b787b3          	add	a5,a5,a1
   1393c:	00d63c23          	sd	a3,24(a2)
   13940:	00c6b823          	sd	a2,16(a3)
   13944:	0017e693          	ori	a3,a5,1
   13948:	00d73423          	sd	a3,8(a4)
   1394c:	00e53823          	sd	a4,16(a0)
   13950:	7681b703          	ld	a4,1896(gp) # 24b48 <__malloc_trim_threshold>
   13954:	eae7e4e3          	bltu	a5,a4,137fc <_free_r+0xe4>
   13958:	7881b583          	ld	a1,1928(gp) # 24b68 <__malloc_top_pad>
   1395c:	00048513          	mv	a0,s1
   13960:	c7dff0ef          	jal	ra,135dc <_malloc_trim_r>
   13964:	e99ff06f          	j	137fc <_free_r+0xe4>
   13968:	01400613          	li	a2,20
   1396c:	02d67663          	bgeu	a2,a3,13998 <_free_r+0x280>
   13970:	05400613          	li	a2,84
   13974:	06d66863          	bltu	a2,a3,139e4 <_free_r+0x2cc>
   13978:	00c7d693          	srli	a3,a5,0xc
   1397c:	06f6859b          	addiw	a1,a3,111
   13980:	0015959b          	slliw	a1,a1,0x1
   13984:	06e6861b          	addiw	a2,a3,110
   13988:	00359593          	slli	a1,a1,0x3
   1398c:	f01ff06f          	j	1388c <_free_r+0x174>
   13990:	00d787b3          	add	a5,a5,a3
   13994:	e99ff06f          	j	1382c <_free_r+0x114>
   13998:	05c6859b          	addiw	a1,a3,92
   1399c:	0015959b          	slliw	a1,a1,0x1
   139a0:	05b6861b          	addiw	a2,a3,91
   139a4:	00359593          	slli	a1,a1,0x3
   139a8:	ee5ff06f          	j	1388c <_free_r+0x174>
   139ac:	02e53423          	sd	a4,40(a0)
   139b0:	02e53023          	sd	a4,32(a0)
   139b4:	01173c23          	sd	a7,24(a4)
   139b8:	01173823          	sd	a7,16(a4)
   139bc:	01073423          	sd	a6,8(a4)
   139c0:	00f5b023          	sd	a5,0(a1)
   139c4:	e39ff06f          	j	137fc <_free_r+0xe4>
   139c8:	00853803          	ld	a6,8(a0)
   139cc:	4026561b          	sraiw	a2,a2,0x2
   139d0:	00100793          	li	a5,1
   139d4:	00c79633          	sll	a2,a5,a2
   139d8:	01066633          	or	a2,a2,a6
   139dc:	00c53423          	sd	a2,8(a0)
   139e0:	ed5ff06f          	j	138b4 <_free_r+0x19c>
   139e4:	15400613          	li	a2,340
   139e8:	00d66e63          	bltu	a2,a3,13a04 <_free_r+0x2ec>
   139ec:	00f7d693          	srli	a3,a5,0xf
   139f0:	0786859b          	addiw	a1,a3,120
   139f4:	0015959b          	slliw	a1,a1,0x1
   139f8:	0776861b          	addiw	a2,a3,119
   139fc:	00359593          	slli	a1,a1,0x3
   13a00:	e8dff06f          	j	1388c <_free_r+0x174>
   13a04:	55400613          	li	a2,1364
   13a08:	00d66e63          	bltu	a2,a3,13a24 <_free_r+0x30c>
   13a0c:	0127d693          	srli	a3,a5,0x12
   13a10:	07d6859b          	addiw	a1,a3,125
   13a14:	0015959b          	slliw	a1,a1,0x1
   13a18:	07c6861b          	addiw	a2,a3,124
   13a1c:	00359593          	slli	a1,a1,0x3
   13a20:	e6dff06f          	j	1388c <_free_r+0x174>
   13a24:	7f000593          	li	a1,2032
   13a28:	07e00613          	li	a2,126
   13a2c:	e61ff06f          	j	1388c <_free_r+0x174>
   13a30:	0017e693          	ori	a3,a5,1
   13a34:	00d73423          	sd	a3,8(a4)
   13a38:	00f63023          	sd	a5,0(a2)
   13a3c:	dc1ff06f          	j	137fc <_free_r+0xe4>

0000000000013a40 <_fwalk>:
   13a40:	fc010113          	addi	sp,sp,-64
   13a44:	03213023          	sd	s2,32(sp)
   13a48:	01313c23          	sd	s3,24(sp)
   13a4c:	01413823          	sd	s4,16(sp)
   13a50:	01513423          	sd	s5,8(sp)
   13a54:	01613023          	sd	s6,0(sp)
   13a58:	02113c23          	sd	ra,56(sp)
   13a5c:	02813823          	sd	s0,48(sp)
   13a60:	02913423          	sd	s1,40(sp)
   13a64:	00058a93          	mv	s5,a1
   13a68:	52050993          	addi	s3,a0,1312
   13a6c:	00000913          	li	s2,0
   13a70:	00100b13          	li	s6,1
   13a74:	fff00a13          	li	s4,-1
   13a78:	0089a783          	lw	a5,8(s3)
   13a7c:	0109b403          	ld	s0,16(s3)
   13a80:	04f05a63          	blez	a5,13ad4 <_fwalk+0x94>
   13a84:	fff7879b          	addiw	a5,a5,-1
   13a88:	02079493          	slli	s1,a5,0x20
   13a8c:	0204d493          	srli	s1,s1,0x20
   13a90:	00148793          	addi	a5,s1,1
   13a94:	00179493          	slli	s1,a5,0x1
   13a98:	00f484b3          	add	s1,s1,a5
   13a9c:	00249493          	slli	s1,s1,0x2
   13aa0:	40f484b3          	sub	s1,s1,a5
   13aa4:	00449493          	slli	s1,s1,0x4
   13aa8:	009404b3          	add	s1,s0,s1
   13aac:	01045783          	lhu	a5,16(s0)
   13ab0:	00fb7e63          	bgeu	s6,a5,13acc <_fwalk+0x8c>
   13ab4:	01241783          	lh	a5,18(s0)
   13ab8:	00040513          	mv	a0,s0
   13abc:	01478863          	beq	a5,s4,13acc <_fwalk+0x8c>
   13ac0:	000a80e7          	jalr	s5
   13ac4:	01256933          	or	s2,a0,s2
   13ac8:	0009091b          	sext.w	s2,s2
   13acc:	0b040413          	addi	s0,s0,176
   13ad0:	fc849ee3          	bne	s1,s0,13aac <_fwalk+0x6c>
   13ad4:	0009b983          	ld	s3,0(s3)
   13ad8:	fa0990e3          	bnez	s3,13a78 <_fwalk+0x38>
   13adc:	03813083          	ld	ra,56(sp)
   13ae0:	03013403          	ld	s0,48(sp)
   13ae4:	02813483          	ld	s1,40(sp)
   13ae8:	01813983          	ld	s3,24(sp)
   13aec:	01013a03          	ld	s4,16(sp)
   13af0:	00813a83          	ld	s5,8(sp)
   13af4:	00013b03          	ld	s6,0(sp)
   13af8:	00090513          	mv	a0,s2
   13afc:	02013903          	ld	s2,32(sp)
   13b00:	04010113          	addi	sp,sp,64
   13b04:	00008067          	ret

0000000000013b08 <_fwalk_reent>:
   13b08:	fb010113          	addi	sp,sp,-80
   13b0c:	03213823          	sd	s2,48(sp)
   13b10:	03313423          	sd	s3,40(sp)
   13b14:	03413023          	sd	s4,32(sp)
   13b18:	01513c23          	sd	s5,24(sp)
   13b1c:	01613823          	sd	s6,16(sp)
   13b20:	01713423          	sd	s7,8(sp)
   13b24:	04113423          	sd	ra,72(sp)
   13b28:	04813023          	sd	s0,64(sp)
   13b2c:	02913c23          	sd	s1,56(sp)
   13b30:	00050b93          	mv	s7,a0
   13b34:	00058a93          	mv	s5,a1
   13b38:	52050993          	addi	s3,a0,1312
   13b3c:	00000913          	li	s2,0
   13b40:	00100b13          	li	s6,1
   13b44:	fff00a13          	li	s4,-1
   13b48:	0089a783          	lw	a5,8(s3)
   13b4c:	0109b403          	ld	s0,16(s3)
   13b50:	04f05c63          	blez	a5,13ba8 <_fwalk_reent+0xa0>
   13b54:	fff7879b          	addiw	a5,a5,-1
   13b58:	02079493          	slli	s1,a5,0x20
   13b5c:	0204d493          	srli	s1,s1,0x20
   13b60:	00148793          	addi	a5,s1,1
   13b64:	00179493          	slli	s1,a5,0x1
   13b68:	00f484b3          	add	s1,s1,a5
   13b6c:	00249493          	slli	s1,s1,0x2
   13b70:	40f484b3          	sub	s1,s1,a5
   13b74:	00449493          	slli	s1,s1,0x4
   13b78:	009404b3          	add	s1,s0,s1
   13b7c:	01045783          	lhu	a5,16(s0)
   13b80:	02fb7063          	bgeu	s6,a5,13ba0 <_fwalk_reent+0x98>
   13b84:	01241783          	lh	a5,18(s0)
   13b88:	00040593          	mv	a1,s0
   13b8c:	000b8513          	mv	a0,s7
   13b90:	01478863          	beq	a5,s4,13ba0 <_fwalk_reent+0x98>
   13b94:	000a80e7          	jalr	s5
   13b98:	01256933          	or	s2,a0,s2
   13b9c:	0009091b          	sext.w	s2,s2
   13ba0:	0b040413          	addi	s0,s0,176
   13ba4:	fc849ce3          	bne	s1,s0,13b7c <_fwalk_reent+0x74>
   13ba8:	0009b983          	ld	s3,0(s3)
   13bac:	f8099ee3          	bnez	s3,13b48 <_fwalk_reent+0x40>
   13bb0:	04813083          	ld	ra,72(sp)
   13bb4:	04013403          	ld	s0,64(sp)
   13bb8:	03813483          	ld	s1,56(sp)
   13bbc:	02813983          	ld	s3,40(sp)
   13bc0:	02013a03          	ld	s4,32(sp)
   13bc4:	01813a83          	ld	s5,24(sp)
   13bc8:	01013b03          	ld	s6,16(sp)
   13bcc:	00813b83          	ld	s7,8(sp)
   13bd0:	00090513          	mv	a0,s2
   13bd4:	03013903          	ld	s2,48(sp)
   13bd8:	05010113          	addi	sp,sp,80
   13bdc:	00008067          	ret

0000000000013be0 <eshdn1>:
   13be0:	00450693          	addi	a3,a0,4
   13be4:	00000793          	li	a5,0
   13be8:	01a50513          	addi	a0,a0,26
   13bec:	ffff8837          	lui	a6,0xffff8
   13bf0:	01c0006f          	j	13c0c <eshdn1+0x2c>
   13bf4:	0017979b          	slliw	a5,a5,0x1
   13bf8:	00e69023          	sh	a4,0(a3)
   13bfc:	03079793          	slli	a5,a5,0x30
   13c00:	00268693          	addi	a3,a3,2
   13c04:	0307d793          	srli	a5,a5,0x30
   13c08:	02d50e63          	beq	a0,a3,13c44 <eshdn1+0x64>
   13c0c:	0006d703          	lhu	a4,0(a3)
   13c10:	00177613          	andi	a2,a4,1
   13c14:	00060463          	beqz	a2,13c1c <eshdn1+0x3c>
   13c18:	0017e793          	ori	a5,a5,1
   13c1c:	00175713          	srli	a4,a4,0x1
   13c20:	0027f613          	andi	a2,a5,2
   13c24:	010765b3          	or	a1,a4,a6
   13c28:	fc0606e3          	beqz	a2,13bf4 <eshdn1+0x14>
   13c2c:	0017979b          	slliw	a5,a5,0x1
   13c30:	00b69023          	sh	a1,0(a3)
   13c34:	03079793          	slli	a5,a5,0x30
   13c38:	00268693          	addi	a3,a3,2
   13c3c:	0307d793          	srli	a5,a5,0x30
   13c40:	fcd516e3          	bne	a0,a3,13c0c <eshdn1+0x2c>
   13c44:	00008067          	ret

0000000000013c48 <eshup1>:
   13c48:	01850693          	addi	a3,a0,24
   13c4c:	00000713          	li	a4,0
   13c50:	00250513          	addi	a0,a0,2
   13c54:	01c0006f          	j	13c70 <eshup1+0x28>
   13c58:	0017171b          	slliw	a4,a4,0x1
   13c5c:	00f69023          	sh	a5,0(a3)
   13c60:	03071713          	slli	a4,a4,0x30
   13c64:	ffe68693          	addi	a3,a3,-2
   13c68:	03075713          	srli	a4,a4,0x30
   13c6c:	04d50263          	beq	a0,a3,13cb0 <eshup1+0x68>
   13c70:	0006d783          	lhu	a5,0(a3)
   13c74:	00f7d613          	srli	a2,a5,0xf
   13c78:	0017979b          	slliw	a5,a5,0x1
   13c7c:	00060463          	beqz	a2,13c84 <eshup1+0x3c>
   13c80:	00176713          	ori	a4,a4,1
   13c84:	03079793          	slli	a5,a5,0x30
   13c88:	0307d793          	srli	a5,a5,0x30
   13c8c:	00277613          	andi	a2,a4,2
   13c90:	0017e593          	ori	a1,a5,1
   13c94:	fc0602e3          	beqz	a2,13c58 <eshup1+0x10>
   13c98:	0017171b          	slliw	a4,a4,0x1
   13c9c:	00b69023          	sh	a1,0(a3)
   13ca0:	03071713          	slli	a4,a4,0x30
   13ca4:	ffe68693          	addi	a3,a3,-2
   13ca8:	03075713          	srli	a4,a4,0x30
   13cac:	fcd512e3          	bne	a0,a3,13c70 <eshup1+0x28>
   13cb0:	00008067          	ret

0000000000013cb4 <m16m>:
   13cb4:	fa010113          	addi	sp,sp,-96
   13cb8:	03313c23          	sd	s3,56(sp)
   13cbc:	000109b7          	lui	s3,0x10
   13cc0:	04813823          	sd	s0,80(sp)
   13cc4:	04913423          	sd	s1,72(sp)
   13cc8:	05213023          	sd	s2,64(sp)
   13ccc:	03413823          	sd	s4,48(sp)
   13cd0:	03513423          	sd	s5,40(sp)
   13cd4:	04113c23          	sd	ra,88(sp)
   13cd8:	00050a13          	mv	s4,a0
   13cdc:	00060493          	mv	s1,a2
   13ce0:	00011b23          	sh	zero,22(sp)
   13ce4:	00011c23          	sh	zero,24(sp)
   13ce8:	01858913          	addi	s2,a1,24
   13cec:	01810413          	addi	s0,sp,24
   13cf0:	00410a93          	addi	s5,sp,4
   13cf4:	fff98993          	addi	s3,s3,-1 # ffff <register_fini-0xb1>
   13cf8:	00095503          	lhu	a0,0(s2)
   13cfc:	000a0593          	mv	a1,s4
   13d00:	ffe40413          	addi	s0,s0,-2
   13d04:	ffe90913          	addi	s2,s2,-2
   13d08:	04051663          	bnez	a0,13d54 <m16m+0xa0>
   13d0c:	fe041f23          	sh	zero,-2(s0)
   13d10:	ff5414e3          	bne	s0,s5,13cf8 <m16m+0x44>
   13d14:	00448613          	addi	a2,s1,4
   13d18:	01a10713          	addi	a4,sp,26
   13d1c:	00045783          	lhu	a5,0(s0)
   13d20:	00240413          	addi	s0,s0,2
   13d24:	00260613          	addi	a2,a2,2
   13d28:	fef61f23          	sh	a5,-2(a2)
   13d2c:	fee418e3          	bne	s0,a4,13d1c <m16m+0x68>
   13d30:	05813083          	ld	ra,88(sp)
   13d34:	05013403          	ld	s0,80(sp)
   13d38:	04813483          	ld	s1,72(sp)
   13d3c:	04013903          	ld	s2,64(sp)
   13d40:	03813983          	ld	s3,56(sp)
   13d44:	03013a03          	ld	s4,48(sp)
   13d48:	02813a83          	ld	s5,40(sp)
   13d4c:	06010113          	addi	sp,sp,96
   13d50:	00008067          	ret
   13d54:	4f90d0ef          	jal	ra,21a4c <__muldi3>
   13d58:	00245783          	lhu	a5,2(s0)
   13d5c:	00045603          	lhu	a2,0(s0)
   13d60:	01357733          	and	a4,a0,s3
   13d64:	00f70733          	add	a4,a4,a5
   13d68:	01055793          	srli	a5,a0,0x10
   13d6c:	01075693          	srli	a3,a4,0x10
   13d70:	00c787b3          	add	a5,a5,a2
   13d74:	00d787b3          	add	a5,a5,a3
   13d78:	0107d693          	srli	a3,a5,0x10
   13d7c:	00e41123          	sh	a4,2(s0)
   13d80:	00f41023          	sh	a5,0(s0)
   13d84:	fed41f23          	sh	a3,-2(s0)
   13d88:	f75418e3          	bne	s0,s5,13cf8 <m16m+0x44>
   13d8c:	f89ff06f          	j	13d14 <m16m+0x60>

0000000000013d90 <emovo.constprop.0>:
   13d90:	00055703          	lhu	a4,0(a0)
   13d94:	00255783          	lhu	a5,2(a0)
   13d98:	00070663          	beqz	a4,13da4 <emovo.constprop.0+0x14>
   13d9c:	00008737          	lui	a4,0x8
   13da0:	00e7e7b3          	or	a5,a5,a4
   13da4:	00f59923          	sh	a5,18(a1)
   13da8:	00255703          	lhu	a4,2(a0)
   13dac:	000087b7          	lui	a5,0x8
   13db0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   13db4:	02f70463          	beq	a4,a5,13ddc <emovo.constprop.0+0x4c>
   13db8:	00650793          	addi	a5,a0,6
   13dbc:	01058593          	addi	a1,a1,16
   13dc0:	01850513          	addi	a0,a0,24
   13dc4:	0007d703          	lhu	a4,0(a5)
   13dc8:	00278793          	addi	a5,a5,2
   13dcc:	ffe58593          	addi	a1,a1,-2
   13dd0:	00e59123          	sh	a4,2(a1)
   13dd4:	fea798e3          	bne	a5,a0,13dc4 <emovo.constprop.0+0x34>
   13dd8:	00008067          	ret
   13ddc:	00650793          	addi	a5,a0,6
   13de0:	01a50513          	addi	a0,a0,26
   13de4:	0007d703          	lhu	a4,0(a5)
   13de8:	00278793          	addi	a5,a5,2
   13dec:	02071a63          	bnez	a4,13e20 <emovo.constprop.0+0x90>
   13df0:	fea79ae3          	bne	a5,a0,13de4 <emovo.constprop.0+0x54>
   13df4:	01258713          	addi	a4,a1,18
   13df8:	00058793          	mv	a5,a1
   13dfc:	00278793          	addi	a5,a5,2
   13e00:	fe079f23          	sh	zero,-2(a5)
   13e04:	fef71ce3          	bne	a4,a5,13dfc <emovo.constprop.0+0x6c>
   13e08:	0125d783          	lhu	a5,18(a1)
   13e0c:	00008737          	lui	a4,0x8
   13e10:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   13e14:	00e7e7b3          	or	a5,a5,a4
   13e18:	00f59923          	sh	a5,18(a1)
   13e1c:	00008067          	ret
   13e20:	01058713          	addi	a4,a1,16
   13e24:	00058793          	mv	a5,a1
   13e28:	00278793          	addi	a5,a5,2
   13e2c:	fe079f23          	sh	zero,-2(a5)
   13e30:	fef71ce3          	bne	a4,a5,13e28 <emovo.constprop.0+0x98>
   13e34:	ffffc7b7          	lui	a5,0xffffc
   13e38:	00f59823          	sh	a5,16(a1)
   13e3c:	ffff87b7          	lui	a5,0xffff8
   13e40:	fff7c793          	not	a5,a5
   13e44:	00f59923          	sh	a5,18(a1)
   13e48:	00008067          	ret

0000000000013e4c <enormlz>:
   13e4c:	00455783          	lhu	a5,4(a0)
   13e50:	fe010113          	addi	sp,sp,-32
   13e54:	00913423          	sd	s1,8(sp)
   13e58:	00113c23          	sd	ra,24(sp)
   13e5c:	00813823          	sd	s0,16(sp)
   13e60:	01213023          	sd	s2,0(sp)
   13e64:	00050493          	mv	s1,a0
   13e68:	0c079863          	bnez	a5,13f38 <enormlz+0xec>
   13e6c:	00655703          	lhu	a4,6(a0)
   13e70:	00000413          	li	s0,0
   13e74:	00f75793          	srli	a5,a4,0xf
   13e78:	0a079263          	bnez	a5,13f1c <enormlz+0xd0>
   13e7c:	01a50693          	addi	a3,a0,26
   13e80:	0a000613          	li	a2,160
   13e84:	02071863          	bnez	a4,13eb4 <enormlz+0x68>
   13e88:	00648793          	addi	a5,s1,6
   13e8c:	0080006f          	j	13e94 <enormlz+0x48>
   13e90:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3420>
   13e94:	00278793          	addi	a5,a5,2
   13e98:	fee79e23          	sh	a4,-4(a5)
   13e9c:	fed79ae3          	bne	a5,a3,13e90 <enormlz+0x44>
   13ea0:	00049c23          	sh	zero,24(s1)
   13ea4:	0104041b          	addiw	s0,s0,16
   13ea8:	06c40a63          	beq	s0,a2,13f1c <enormlz+0xd0>
   13eac:	0064d703          	lhu	a4,6(s1)
   13eb0:	fc070ce3          	beqz	a4,13e88 <enormlz+0x3c>
   13eb4:	f0077793          	andi	a5,a4,-256
   13eb8:	04079063          	bnez	a5,13ef8 <enormlz+0xac>
   13ebc:	01848513          	addi	a0,s1,24
   13ec0:	00248593          	addi	a1,s1,2
   13ec4:	00000793          	li	a5,0
   13ec8:	00050713          	mv	a4,a0
   13ecc:	00075683          	lhu	a3,0(a4)
   13ed0:	ffe70713          	addi	a4,a4,-2
   13ed4:	0086961b          	slliw	a2,a3,0x8
   13ed8:	00c7e7b3          	or	a5,a5,a2
   13edc:	00f71123          	sh	a5,2(a4)
   13ee0:	0086d793          	srli	a5,a3,0x8
   13ee4:	fee594e3          	bne	a1,a4,13ecc <enormlz+0x80>
   13ee8:	0064d703          	lhu	a4,6(s1)
   13eec:	0084041b          	addiw	s0,s0,8
   13ef0:	f0077793          	andi	a5,a4,-256
   13ef4:	fc0788e3          	beqz	a5,13ec4 <enormlz+0x78>
   13ef8:	0a000913          	li	s2,160
   13efc:	0140006f          	j	13f10 <enormlz+0xc4>
   13f00:	0014041b          	addiw	s0,s0,1
   13f04:	d45ff0ef          	jal	ra,13c48 <eshup1>
   13f08:	00894a63          	blt	s2,s0,13f1c <enormlz+0xd0>
   13f0c:	0064d703          	lhu	a4,6(s1)
   13f10:	00f75713          	srli	a4,a4,0xf
   13f14:	00048513          	mv	a0,s1
   13f18:	fe0704e3          	beqz	a4,13f00 <enormlz+0xb4>
   13f1c:	01813083          	ld	ra,24(sp)
   13f20:	00040513          	mv	a0,s0
   13f24:	01013403          	ld	s0,16(sp)
   13f28:	00813483          	ld	s1,8(sp)
   13f2c:	00013903          	ld	s2,0(sp)
   13f30:	02010113          	addi	sp,sp,32
   13f34:	00008067          	ret
   13f38:	f007f713          	andi	a4,a5,-256
   13f3c:	00000413          	li	s0,0
   13f40:	04071063          	bnez	a4,13f80 <enormlz+0x134>
   13f44:	f6f00913          	li	s2,-145
   13f48:	0140006f          	j	13f5c <enormlz+0x110>
   13f4c:	fff4041b          	addiw	s0,s0,-1
   13f50:	c91ff0ef          	jal	ra,13be0 <eshdn1>
   13f54:	fd2404e3          	beq	s0,s2,13f1c <enormlz+0xd0>
   13f58:	0044d783          	lhu	a5,4(s1)
   13f5c:	00048513          	mv	a0,s1
   13f60:	fe0796e3          	bnez	a5,13f4c <enormlz+0x100>
   13f64:	01813083          	ld	ra,24(sp)
   13f68:	00040513          	mv	a0,s0
   13f6c:	01013403          	ld	s0,16(sp)
   13f70:	00813483          	ld	s1,8(sp)
   13f74:	00013903          	ld	s2,0(sp)
   13f78:	02010113          	addi	sp,sp,32
   13f7c:	00008067          	ret
   13f80:	00450693          	addi	a3,a0,4
   13f84:	01a50593          	addi	a1,a0,26
   13f88:	00000713          	li	a4,0
   13f8c:	0080006f          	j	13f94 <enormlz+0x148>
   13f90:	0006d783          	lhu	a5,0(a3)
   13f94:	0087d61b          	srliw	a2,a5,0x8
   13f98:	00c76733          	or	a4,a4,a2
   13f9c:	0087979b          	slliw	a5,a5,0x8
   13fa0:	00e69023          	sh	a4,0(a3)
   13fa4:	03079713          	slli	a4,a5,0x30
   13fa8:	00268693          	addi	a3,a3,2
   13fac:	03075713          	srli	a4,a4,0x30
   13fb0:	fed590e3          	bne	a1,a3,13f90 <enormlz+0x144>
   13fb4:	0044d783          	lhu	a5,4(s1)
   13fb8:	ff800413          	li	s0,-8
   13fbc:	f89ff06f          	j	13f44 <enormlz+0xf8>

0000000000013fc0 <eshift.part.0>:
   13fc0:	fd010113          	addi	sp,sp,-48
   13fc4:	02813023          	sd	s0,32(sp)
   13fc8:	00913c23          	sd	s1,24(sp)
   13fcc:	02113423          	sd	ra,40(sp)
   13fd0:	01213823          	sd	s2,16(sp)
   13fd4:	01313423          	sd	s3,8(sp)
   13fd8:	00058493          	mv	s1,a1
   13fdc:	00050413          	mv	s0,a0
   13fe0:	0a05c463          	bltz	a1,14088 <eshift.part.0+0xc8>
   13fe4:	00f00793          	li	a5,15
   13fe8:	00058613          	mv	a2,a1
   13fec:	00450513          	addi	a0,a0,4
   13ff0:	01840693          	addi	a3,s0,24
   13ff4:	00f00593          	li	a1,15
   13ff8:	0297d463          	bge	a5,s1,14020 <eshift.part.0+0x60>
   13ffc:	00050793          	mv	a5,a0
   14000:	0027d703          	lhu	a4,2(a5)
   14004:	00278793          	addi	a5,a5,2
   14008:	fee79f23          	sh	a4,-2(a5)
   1400c:	fef69ae3          	bne	a3,a5,14000 <eshift.part.0+0x40>
   14010:	00041c23          	sh	zero,24(s0)
   14014:	ff06061b          	addiw	a2,a2,-16
   14018:	fec5c2e3          	blt	a1,a2,13ffc <eshift.part.0+0x3c>
   1401c:	00f4f493          	andi	s1,s1,15
   14020:	00700793          	li	a5,7
   14024:	0297d863          	bge	a5,s1,14054 <eshift.part.0+0x94>
   14028:	01840713          	addi	a4,s0,24
   1402c:	00240593          	addi	a1,s0,2
   14030:	00000793          	li	a5,0
   14034:	00075683          	lhu	a3,0(a4)
   14038:	ffe70713          	addi	a4,a4,-2
   1403c:	0086961b          	slliw	a2,a3,0x8
   14040:	00c7e7b3          	or	a5,a5,a2
   14044:	00f71123          	sh	a5,2(a4)
   14048:	0086d793          	srli	a5,a3,0x8
   1404c:	fee594e3          	bne	a1,a4,14034 <eshift.part.0+0x74>
   14050:	ff84849b          	addiw	s1,s1,-8
   14054:	00048a63          	beqz	s1,14068 <eshift.part.0+0xa8>
   14058:	fff4849b          	addiw	s1,s1,-1
   1405c:	00040513          	mv	a0,s0
   14060:	be9ff0ef          	jal	ra,13c48 <eshup1>
   14064:	fe049ae3          	bnez	s1,14058 <eshift.part.0+0x98>
   14068:	00000513          	li	a0,0
   1406c:	02813083          	ld	ra,40(sp)
   14070:	02013403          	ld	s0,32(sp)
   14074:	01813483          	ld	s1,24(sp)
   14078:	01013903          	ld	s2,16(sp)
   1407c:	00813983          	ld	s3,8(sp)
   14080:	03010113          	addi	sp,sp,48
   14084:	00008067          	ret
   14088:	ff100793          	li	a5,-15
   1408c:	40b0093b          	negw	s2,a1
   14090:	12f5de63          	bge	a1,a5,141cc <eshift.part.0+0x20c>
   14094:	01850593          	addi	a1,a0,24
   14098:	00000993          	li	s3,0
   1409c:	00450693          	addi	a3,a0,4
   140a0:	00f00613          	li	a2,15
   140a4:	01845703          	lhu	a4,24(s0)
   140a8:	00058793          	mv	a5,a1
   140ac:	00e9e9b3          	or	s3,s3,a4
   140b0:	ffe7d703          	lhu	a4,-2(a5)
   140b4:	ffe78793          	addi	a5,a5,-2
   140b8:	00e79123          	sh	a4,2(a5)
   140bc:	fed79ae3          	bne	a5,a3,140b0 <eshift.part.0+0xf0>
   140c0:	00041223          	sh	zero,4(s0)
   140c4:	ff09091b          	addiw	s2,s2,-16
   140c8:	fd264ee3          	blt	a2,s2,140a4 <eshift.part.0+0xe4>
   140cc:	ff000913          	li	s2,-16
   140d0:	ff100713          	li	a4,-15
   140d4:	4099093b          	subw	s2,s2,s1
   140d8:	00000793          	li	a5,0
   140dc:	0ae4c663          	blt	s1,a4,14188 <eshift.part.0+0x1c8>
   140e0:	00f9093b          	addw	s2,s2,a5
   140e4:	00700793          	li	a5,7
   140e8:	0527ca63          	blt	a5,s2,1413c <eshift.part.0+0x17c>
   140ec:	0c090263          	beqz	s2,141b0 <eshift.part.0+0x1f0>
   140f0:	01845783          	lhu	a5,24(s0)
   140f4:	fff9091b          	addiw	s2,s2,-1
   140f8:	00040513          	mv	a0,s0
   140fc:	0017f793          	andi	a5,a5,1
   14100:	0137e9b3          	or	s3,a5,s3
   14104:	addff0ef          	jal	ra,13be0 <eshdn1>
   14108:	fe0914e3          	bnez	s2,140f0 <eshift.part.0+0x130>
   1410c:	0109979b          	slliw	a5,s3,0x10
   14110:	4107d79b          	sraiw	a5,a5,0x10
   14114:	08079663          	bnez	a5,141a0 <eshift.part.0+0x1e0>
   14118:	03099513          	slli	a0,s3,0x30
   1411c:	03055513          	srli	a0,a0,0x30
   14120:	02813083          	ld	ra,40(sp)
   14124:	02013403          	ld	s0,32(sp)
   14128:	01813483          	ld	s1,24(sp)
   1412c:	01013903          	ld	s2,16(sp)
   14130:	00813983          	ld	s3,8(sp)
   14134:	03010113          	addi	sp,sp,48
   14138:	00008067          	ret
   1413c:	0109999b          	slliw	s3,s3,0x10
   14140:	4109d99b          	sraiw	s3,s3,0x10
   14144:	01844783          	lbu	a5,24(s0)
   14148:	01a40593          	addi	a1,s0,26
   1414c:	00f9e9b3          	or	s3,s3,a5
   14150:	03099993          	slli	s3,s3,0x30
   14154:	0309d993          	srli	s3,s3,0x30
   14158:	00000793          	li	a5,0
   1415c:	0006d703          	lhu	a4,0(a3)
   14160:	00268693          	addi	a3,a3,2
   14164:	0087561b          	srliw	a2,a4,0x8
   14168:	00c7e7b3          	or	a5,a5,a2
   1416c:	0087171b          	slliw	a4,a4,0x8
   14170:	fef69f23          	sh	a5,-2(a3)
   14174:	03071793          	slli	a5,a4,0x30
   14178:	0307d793          	srli	a5,a5,0x30
   1417c:	fed590e3          	bne	a1,a3,1415c <eshift.part.0+0x19c>
   14180:	ff89091b          	addiw	s2,s2,-8
   14184:	f69ff06f          	j	140ec <eshift.part.0+0x12c>
   14188:	ff097793          	andi	a5,s2,-16
   1418c:	40f007bb          	negw	a5,a5
   14190:	00f9093b          	addw	s2,s2,a5
   14194:	00700793          	li	a5,7
   14198:	f527dae3          	bge	a5,s2,140ec <eshift.part.0+0x12c>
   1419c:	fa1ff06f          	j	1413c <eshift.part.0+0x17c>
   141a0:	00100993          	li	s3,1
   141a4:	03099513          	slli	a0,s3,0x30
   141a8:	03055513          	srli	a0,a0,0x30
   141ac:	f75ff06f          	j	14120 <eshift.part.0+0x160>
   141b0:	00098513          	mv	a0,s3
   141b4:	00099863          	bnez	s3,141c4 <eshift.part.0+0x204>
   141b8:	03051513          	slli	a0,a0,0x30
   141bc:	03055513          	srli	a0,a0,0x30
   141c0:	eadff06f          	j	1406c <eshift.part.0+0xac>
   141c4:	00100513          	li	a0,1
   141c8:	ff1ff06f          	j	141b8 <eshift.part.0+0x1f8>
   141cc:	ff900793          	li	a5,-7
   141d0:	00000993          	li	s3,0
   141d4:	00450693          	addi	a3,a0,4
   141d8:	f6f5c6e3          	blt	a1,a5,14144 <eshift.part.0+0x184>
   141dc:	f15ff06f          	j	140f0 <eshift.part.0+0x130>

00000000000141e0 <emovi>:
   141e0:	01255783          	lhu	a5,18(a0)
   141e4:	00008637          	lui	a2,0x8
   141e8:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   141ec:	00f7d79b          	srliw	a5,a5,0xf
   141f0:	40f007bb          	negw	a5,a5
   141f4:	00f59023          	sh	a5,0(a1)
   141f8:	01255683          	lhu	a3,18(a0)
   141fc:	01050793          	addi	a5,a0,16
   14200:	00458713          	addi	a4,a1,4
   14204:	00d676b3          	and	a3,a2,a3
   14208:	00d59123          	sh	a3,2(a1)
   1420c:	0006881b          	sext.w	a6,a3
   14210:	02c68663          	beq	a3,a2,1423c <emovi+0x5c>
   14214:	00658713          	addi	a4,a1,6
   14218:	00059223          	sh	zero,4(a1)
   1421c:	ffe50513          	addi	a0,a0,-2
   14220:	0007d683          	lhu	a3,0(a5)
   14224:	ffe78793          	addi	a5,a5,-2
   14228:	00270713          	addi	a4,a4,2
   1422c:	fed71f23          	sh	a3,-2(a4)
   14230:	fef518e3          	bne	a0,a5,14220 <emovi+0x40>
   14234:	00059c23          	sh	zero,24(a1)
   14238:	00008067          	ret
   1423c:	01255683          	lhu	a3,18(a0)
   14240:	00d876b3          	and	a3,a6,a3
   14244:	01069e63          	bne	a3,a6,14260 <emovi+0x80>
   14248:	01250813          	addi	a6,a0,18
   1424c:	00050693          	mv	a3,a0
   14250:	0006d603          	lhu	a2,0(a3)
   14254:	00268693          	addi	a3,a3,2
   14258:	00061e63          	bnez	a2,14274 <emovi+0x94>
   1425c:	ff069ae3          	bne	a3,a6,14250 <emovi+0x70>
   14260:	01a58593          	addi	a1,a1,26
   14264:	00270713          	addi	a4,a4,2
   14268:	fe071f23          	sh	zero,-2(a4)
   1426c:	fee59ce3          	bne	a1,a4,14264 <emovi+0x84>
   14270:	00008067          	ret
   14274:	00658713          	addi	a4,a1,6
   14278:	00059223          	sh	zero,4(a1)
   1427c:	ffc50513          	addi	a0,a0,-4
   14280:	0007d683          	lhu	a3,0(a5)
   14284:	ffe78793          	addi	a5,a5,-2
   14288:	00270713          	addi	a4,a4,2
   1428c:	fed71f23          	sh	a3,-2(a4)
   14290:	fea798e3          	bne	a5,a0,14280 <emovi+0xa0>
   14294:	00008067          	ret

0000000000014298 <ecmp>:
   14298:	01255783          	lhu	a5,18(a0)
   1429c:	fb010113          	addi	sp,sp,-80
   142a0:	04813023          	sd	s0,64(sp)
   142a4:	fff7c793          	not	a5,a5
   142a8:	04113423          	sd	ra,72(sp)
   142ac:	03179713          	slli	a4,a5,0x31
   142b0:	00058413          	mv	s0,a1
   142b4:	00071e63          	bnez	a4,142d0 <ecmp+0x38>
   142b8:	01250693          	addi	a3,a0,18
   142bc:	00050793          	mv	a5,a0
   142c0:	0007d703          	lhu	a4,0(a5)
   142c4:	00278793          	addi	a5,a5,2
   142c8:	08071c63          	bnez	a4,14360 <ecmp+0xc8>
   142cc:	fed79ae3          	bne	a5,a3,142c0 <ecmp+0x28>
   142d0:	01245783          	lhu	a5,18(s0)
   142d4:	fff7c793          	not	a5,a5
   142d8:	03179713          	slli	a4,a5,0x31
   142dc:	06070063          	beqz	a4,1433c <ecmp+0xa4>
   142e0:	00010593          	mv	a1,sp
   142e4:	efdff0ef          	jal	ra,141e0 <emovi>
   142e8:	02010593          	addi	a1,sp,32
   142ec:	00040513          	mv	a0,s0
   142f0:	ef1ff0ef          	jal	ra,141e0 <emovi>
   142f4:	00015583          	lhu	a1,0(sp)
   142f8:	02015783          	lhu	a5,32(sp)
   142fc:	06b78c63          	beq	a5,a1,14374 <ecmp+0xdc>
   14300:	00210793          	addi	a5,sp,2
   14304:	02210713          	addi	a4,sp,34
   14308:	01810613          	addi	a2,sp,24
   1430c:	0007d683          	lhu	a3,0(a5)
   14310:	00278793          	addi	a5,a5,2
   14314:	0a069663          	bnez	a3,143c0 <ecmp+0x128>
   14318:	00075683          	lhu	a3,0(a4)
   1431c:	00270713          	addi	a4,a4,2
   14320:	0a069063          	bnez	a3,143c0 <ecmp+0x128>
   14324:	fef614e3          	bne	a2,a5,1430c <ecmp+0x74>
   14328:	00000513          	li	a0,0
   1432c:	04813083          	ld	ra,72(sp)
   14330:	04013403          	ld	s0,64(sp)
   14334:	05010113          	addi	sp,sp,80
   14338:	00008067          	ret
   1433c:	00040793          	mv	a5,s0
   14340:	0007d703          	lhu	a4,0(a5)
   14344:	01240693          	addi	a3,s0,18
   14348:	00278793          	addi	a5,a5,2
   1434c:	00071a63          	bnez	a4,14360 <ecmp+0xc8>
   14350:	f8d788e3          	beq	a5,a3,142e0 <ecmp+0x48>
   14354:	0007d703          	lhu	a4,0(a5)
   14358:	00278793          	addi	a5,a5,2
   1435c:	fe070ae3          	beqz	a4,14350 <ecmp+0xb8>
   14360:	04813083          	ld	ra,72(sp)
   14364:	04013403          	ld	s0,64(sp)
   14368:	ffe00513          	li	a0,-2
   1436c:	05010113          	addi	sp,sp,80
   14370:	00008067          	ret
   14374:	00100513          	li	a0,1
   14378:	04059c63          	bnez	a1,143d0 <ecmp+0x138>
   1437c:	00215603          	lhu	a2,2(sp)
   14380:	02215683          	lhu	a3,34(sp)
   14384:	00210713          	addi	a4,sp,2
   14388:	02210793          	addi	a5,sp,34
   1438c:	03810593          	addi	a1,sp,56
   14390:	00278793          	addi	a5,a5,2
   14394:	00270713          	addi	a4,a4,2
   14398:	00d61e63          	bne	a2,a3,143b4 <ecmp+0x11c>
   1439c:	f8b786e3          	beq	a5,a1,14328 <ecmp+0x90>
   143a0:	00075603          	lhu	a2,0(a4)
   143a4:	0007d683          	lhu	a3,0(a5)
   143a8:	00270713          	addi	a4,a4,2
   143ac:	00278793          	addi	a5,a5,2
   143b0:	fed606e3          	beq	a2,a3,1439c <ecmp+0x104>
   143b4:	f6c6ece3          	bltu	a3,a2,1432c <ecmp+0x94>
   143b8:	40a0053b          	negw	a0,a0
   143bc:	f71ff06f          	j	1432c <ecmp+0x94>
   143c0:	00100513          	li	a0,1
   143c4:	f60584e3          	beqz	a1,1432c <ecmp+0x94>
   143c8:	fff00513          	li	a0,-1
   143cc:	f61ff06f          	j	1432c <ecmp+0x94>
   143d0:	fff00513          	li	a0,-1
   143d4:	fa9ff06f          	j	1437c <ecmp+0xe4>

00000000000143d8 <emdnorm>:
   143d8:	fc010113          	addi	sp,sp,-64
   143dc:	02813823          	sd	s0,48(sp)
   143e0:	02913423          	sd	s1,40(sp)
   143e4:	03213023          	sd	s2,32(sp)
   143e8:	01313c23          	sd	s3,24(sp)
   143ec:	01413823          	sd	s4,16(sp)
   143f0:	01513423          	sd	s5,8(sp)
   143f4:	00068913          	mv	s2,a3
   143f8:	00078493          	mv	s1,a5
   143fc:	02113c23          	sd	ra,56(sp)
   14400:	00050413          	mv	s0,a0
   14404:	00058993          	mv	s3,a1
   14408:	00060a13          	mv	s4,a2
   1440c:	00070a93          	mv	s5,a4
   14410:	a3dff0ef          	jal	ra,13e4c <enormlz>
   14414:	09000793          	li	a5,144
   14418:	40a90933          	sub	s2,s2,a0
   1441c:	1aa7da63          	bge	a5,a0,145d0 <emdnorm+0x1f8>
   14420:	000087b7          	lui	a5,0x8
   14424:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14428:	2327d863          	bge	a5,s2,14658 <emdnorm+0x280>
   1442c:	200a8263          	beqz	s5,14630 <emdnorm+0x258>
   14430:	0044a503          	lw	a0,4(s1)
   14434:	0004a783          	lw	a5,0(s1)
   14438:	06a78a63          	beq	a5,a0,144ac <emdnorm+0xd4>
   1443c:	01a48713          	addi	a4,s1,26
   14440:	03448793          	addi	a5,s1,52
   14444:	00270713          	addi	a4,a4,2
   14448:	fe071f23          	sh	zero,-2(a4)
   1444c:	fef71ce3          	bne	a4,a5,14444 <emdnorm+0x6c>
   14450:	03800793          	li	a5,56
   14454:	36f50e63          	beq	a0,a5,147d0 <emdnorm+0x3f8>
   14458:	18a7de63          	bge	a5,a0,145f4 <emdnorm+0x21c>
   1445c:	04000793          	li	a5,64
   14460:	30f50c63          	beq	a0,a5,14778 <emdnorm+0x3a0>
   14464:	07100793          	li	a5,113
   14468:	32f51e63          	bne	a0,a5,147a4 <emdnorm+0x3cc>
   1446c:	400087b7          	lui	a5,0x40008
   14470:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe341f>
   14474:	00a00713          	li	a4,10
   14478:	00f4aa23          	sw	a5,20(s1)
   1447c:	ffff87b7          	lui	a5,0xffff8
   14480:	00e4a423          	sw	a4,8(s1)
   14484:	00f49c23          	sh	a5,24(s1)
   14488:	00e4a623          	sw	a4,12(s1)
   1448c:	00a00793          	li	a5,10
   14490:	00008737          	lui	a4,0x8
   14494:	00878793          	addi	a5,a5,8 # ffffffffffff8008 <__BSS_END__+0xfffffffffffd3428>
   14498:	00179793          	slli	a5,a5,0x1
   1449c:	00f487b3          	add	a5,s1,a5
   144a0:	00e79523          	sh	a4,10(a5)
   144a4:	00a4a023          	sw	a0,0(s1)
   144a8:	1f205663          	blez	s2,14694 <emdnorm+0x2bc>
   144ac:	0084a683          	lw	a3,8(s1)
   144b0:	0144d603          	lhu	a2,20(s1)
   144b4:	08f00713          	li	a4,143
   144b8:	00169793          	slli	a5,a3,0x1
   144bc:	00f40833          	add	a6,s0,a5
   144c0:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3420>
   144c4:	00c8f5b3          	and	a1,a7,a2
   144c8:	04a74863          	blt	a4,a0,14518 <emdnorm+0x140>
   144cc:	00b00713          	li	a4,11
   144d0:	04d74463          	blt	a4,a3,14518 <emdnorm+0x140>
   144d4:	40d7073b          	subw	a4,a4,a3
   144d8:	02071713          	slli	a4,a4,0x20
   144dc:	02075713          	srli	a4,a4,0x20
   144e0:	00d70733          	add	a4,a4,a3
   144e4:	00171693          	slli	a3,a4,0x1
   144e8:	00278793          	addi	a5,a5,2
   144ec:	00440713          	addi	a4,s0,4
   144f0:	00f407b3          	add	a5,s0,a5
   144f4:	00e68733          	add	a4,a3,a4
   144f8:	0007d683          	lhu	a3,0(a5)
   144fc:	00068463          	beqz	a3,14504 <emdnorm+0x12c>
   14500:	0015e593          	ori	a1,a1,1
   14504:	00079023          	sh	zero,0(a5)
   14508:	00278793          	addi	a5,a5,2
   1450c:	fef716e3          	bne	a4,a5,144f8 <emdnorm+0x120>
   14510:	00085883          	lhu	a7,0(a6)
   14514:	0144d603          	lhu	a2,20(s1)
   14518:	fff64613          	not	a2,a2
   1451c:	01167633          	and	a2,a2,a7
   14520:	00c81023          	sh	a2,0(a6)
   14524:	0164d783          	lhu	a5,22(s1)
   14528:	00b7f733          	and	a4,a5,a1
   1452c:	06070063          	beqz	a4,1458c <emdnorm+0x1b4>
   14530:	02b79263          	bne	a5,a1,14554 <emdnorm+0x17c>
   14534:	20099863          	bnez	s3,14744 <emdnorm+0x36c>
   14538:	00c4a783          	lw	a5,12(s1)
   1453c:	0184d703          	lhu	a4,24(s1)
   14540:	00179793          	slli	a5,a5,0x1
   14544:	00f407b3          	add	a5,s0,a5
   14548:	0007d783          	lhu	a5,0(a5)
   1454c:	00e7f7b3          	and	a5,a5,a4
   14550:	02078e63          	beqz	a5,1458c <emdnorm+0x1b4>
   14554:	03248613          	addi	a2,s1,50
   14558:	01840693          	addi	a3,s0,24
   1455c:	01c48493          	addi	s1,s1,28
   14560:	00000713          	li	a4,0
   14564:	00065783          	lhu	a5,0(a2)
   14568:	0006d583          	lhu	a1,0(a3)
   1456c:	ffe68693          	addi	a3,a3,-2
   14570:	ffe60613          	addi	a2,a2,-2
   14574:	00b787b3          	add	a5,a5,a1
   14578:	00e787b3          	add	a5,a5,a4
   1457c:	0107d713          	srli	a4,a5,0x10
   14580:	00f69123          	sh	a5,2(a3)
   14584:	00177713          	andi	a4,a4,1
   14588:	fc961ee3          	bne	a2,s1,14564 <emdnorm+0x18c>
   1458c:	17205663          	blez	s2,146f8 <emdnorm+0x320>
   14590:	00445783          	lhu	a5,4(s0)
   14594:	12079e63          	bnez	a5,146d0 <emdnorm+0x2f8>
   14598:	000087b7          	lui	a5,0x8
   1459c:	00041c23          	sh	zero,24(s0)
   145a0:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   145a4:	0927c863          	blt	a5,s2,14634 <emdnorm+0x25c>
   145a8:	01241123          	sh	s2,2(s0)
   145ac:	03813083          	ld	ra,56(sp)
   145b0:	03013403          	ld	s0,48(sp)
   145b4:	02813483          	ld	s1,40(sp)
   145b8:	02013903          	ld	s2,32(sp)
   145bc:	01813983          	ld	s3,24(sp)
   145c0:	01013a03          	ld	s4,16(sp)
   145c4:	00813a83          	ld	s5,8(sp)
   145c8:	04010113          	addi	sp,sp,64
   145cc:	00008067          	ret
   145d0:	0e095463          	bgez	s2,146b8 <emdnorm+0x2e0>
   145d4:	f7000793          	li	a5,-144
   145d8:	08f95c63          	bge	s2,a5,14670 <emdnorm+0x298>
   145dc:	00240793          	addi	a5,s0,2
   145e0:	01a40413          	addi	s0,s0,26
   145e4:	00278793          	addi	a5,a5,2
   145e8:	fe079f23          	sh	zero,-2(a5)
   145ec:	fe879ce3          	bne	a5,s0,145e4 <emdnorm+0x20c>
   145f0:	fbdff06f          	j	145ac <emdnorm+0x1d4>
   145f4:	01800793          	li	a5,24
   145f8:	14f50a63          	beq	a0,a5,1474c <emdnorm+0x374>
   145fc:	03500793          	li	a5,53
   14600:	1af51263          	bne	a0,a5,147a4 <emdnorm+0x3cc>
   14604:	00001737          	lui	a4,0x1
   14608:	040007b7          	lui	a5,0x4000
   1460c:	00600693          	li	a3,6
   14610:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fdbc1f>
   14614:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14618:	00f4aa23          	sw	a5,20(s1)
   1461c:	00d4a423          	sw	a3,8(s1)
   14620:	00e49c23          	sh	a4,24(s1)
   14624:	00d4a623          	sw	a3,12(s1)
   14628:	00600793          	li	a5,6
   1462c:	e69ff06f          	j	14494 <emdnorm+0xbc>
   14630:	00041c23          	sh	zero,24(s0)
   14634:	ffff87b7          	lui	a5,0xffff8
   14638:	fff7c793          	not	a5,a5
   1463c:	00f41123          	sh	a5,2(s0)
   14640:	00440793          	addi	a5,s0,4
   14644:	01840413          	addi	s0,s0,24
   14648:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3420>
   1464c:	00278793          	addi	a5,a5,2
   14650:	fef41ce3          	bne	s0,a5,14648 <emdnorm+0x270>
   14654:	f59ff06f          	j	145ac <emdnorm+0x1d4>
   14658:	00240793          	addi	a5,s0,2
   1465c:	01a40413          	addi	s0,s0,26
   14660:	00278793          	addi	a5,a5,2
   14664:	fe079f23          	sh	zero,-2(a5)
   14668:	fe879ce3          	bne	a5,s0,14660 <emdnorm+0x288>
   1466c:	f41ff06f          	j	145ac <emdnorm+0x1d4>
   14670:	0009059b          	sext.w	a1,s2
   14674:	00040513          	mv	a0,s0
   14678:	949ff0ef          	jal	ra,13fc0 <eshift.part.0>
   1467c:	00050463          	beqz	a0,14684 <emdnorm+0x2ac>
   14680:	00100993          	li	s3,1
   14684:	0a0a8a63          	beqz	s5,14738 <emdnorm+0x360>
   14688:	0044a503          	lw	a0,4(s1)
   1468c:	0004a783          	lw	a5,0(s1)
   14690:	daa796e3          	bne	a5,a0,1443c <emdnorm+0x64>
   14694:	09000793          	li	a5,144
   14698:	08f50263          	beq	a0,a5,1471c <emdnorm+0x344>
   1469c:	01845783          	lhu	a5,24(s0)
   146a0:	00040513          	mv	a0,s0
   146a4:	0017f793          	andi	a5,a5,1
   146a8:	0137e9b3          	or	s3,a5,s3
   146ac:	d34ff0ef          	jal	ra,13be0 <eshdn1>
   146b0:	0044a503          	lw	a0,4(s1)
   146b4:	df9ff06f          	j	144ac <emdnorm+0xd4>
   146b8:	ee0a80e3          	beqz	s5,14598 <emdnorm+0x1c0>
   146bc:	0044a503          	lw	a0,4(s1)
   146c0:	0004a783          	lw	a5,0(s1)
   146c4:	d6a79ce3          	bne	a5,a0,1443c <emdnorm+0x64>
   146c8:	df2042e3          	bgtz	s2,144ac <emdnorm+0xd4>
   146cc:	fc9ff06f          	j	14694 <emdnorm+0x2bc>
   146d0:	00040513          	mv	a0,s0
   146d4:	d0cff0ef          	jal	ra,13be0 <eshdn1>
   146d8:	000087b7          	lui	a5,0x8
   146dc:	00190913          	addi	s2,s2,1
   146e0:	00041c23          	sh	zero,24(s0)
   146e4:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   146e8:	f527c6e3          	blt	a5,s2,14634 <emdnorm+0x25c>
   146ec:	ea095ee3          	bgez	s2,145a8 <emdnorm+0x1d0>
   146f0:	00041123          	sh	zero,2(s0)
   146f4:	eb9ff06f          	j	145ac <emdnorm+0x1d4>
   146f8:	09000793          	li	a5,144
   146fc:	00f50663          	beq	a0,a5,14708 <emdnorm+0x330>
   14700:	00040513          	mv	a0,s0
   14704:	d44ff0ef          	jal	ra,13c48 <eshup1>
   14708:	00445783          	lhu	a5,4(s0)
   1470c:	fc0792e3          	bnez	a5,146d0 <emdnorm+0x2f8>
   14710:	00041c23          	sh	zero,24(s0)
   14714:	fc094ee3          	bltz	s2,146f0 <emdnorm+0x318>
   14718:	e91ff06f          	j	145a8 <emdnorm+0x1d0>
   1471c:	0084a803          	lw	a6,8(s1)
   14720:	0144d603          	lhu	a2,20(s1)
   14724:	00181813          	slli	a6,a6,0x1
   14728:	01040833          	add	a6,s0,a6
   1472c:	00085883          	lhu	a7,0(a6)
   14730:	011675b3          	and	a1,a2,a7
   14734:	de5ff06f          	j	14518 <emdnorm+0x140>
   14738:	00041c23          	sh	zero,24(s0)
   1473c:	00041123          	sh	zero,2(s0)
   14740:	e6dff06f          	j	145ac <emdnorm+0x1d4>
   14744:	e00a08e3          	beqz	s4,14554 <emdnorm+0x17c>
   14748:	e45ff06f          	j	1458c <emdnorm+0x1b4>
   1474c:	008007b7          	lui	a5,0x800
   14750:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db51f>
   14754:	00400713          	li	a4,4
   14758:	00f4aa23          	sw	a5,20(s1)
   1475c:	10000793          	li	a5,256
   14760:	00e4a423          	sw	a4,8(s1)
   14764:	00f49c23          	sh	a5,24(s1)
   14768:	00e4a623          	sw	a4,12(s1)
   1476c:	00400793          	li	a5,4
   14770:	10000713          	li	a4,256
   14774:	d21ff06f          	j	14494 <emdnorm+0xbc>
   14778:	00700793          	li	a5,7
   1477c:	00f4a423          	sw	a5,8(s1)
   14780:	800107b7          	lui	a5,0x80010
   14784:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb41f>
   14788:	00f4aa23          	sw	a5,20(s1)
   1478c:	00100793          	li	a5,1
   14790:	00f49c23          	sh	a5,24(s1)
   14794:	00600793          	li	a5,6
   14798:	00f4a623          	sw	a5,12(s1)
   1479c:	00100713          	li	a4,1
   147a0:	cf5ff06f          	j	14494 <emdnorm+0xbc>
   147a4:	00c00793          	li	a5,12
   147a8:	00f4a423          	sw	a5,8(s1)
   147ac:	800107b7          	lui	a5,0x80010
   147b0:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb41f>
   147b4:	00f4aa23          	sw	a5,20(s1)
   147b8:	00100793          	li	a5,1
   147bc:	00f49c23          	sh	a5,24(s1)
   147c0:	00b00793          	li	a5,11
   147c4:	00f4a623          	sw	a5,12(s1)
   147c8:	00100713          	li	a4,1
   147cc:	cc9ff06f          	j	14494 <emdnorm+0xbc>
   147d0:	008007b7          	lui	a5,0x800
   147d4:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db51f>
   147d8:	00600713          	li	a4,6
   147dc:	00f4aa23          	sw	a5,20(s1)
   147e0:	10000793          	li	a5,256
   147e4:	00e4a423          	sw	a4,8(s1)
   147e8:	00f49c23          	sh	a5,24(s1)
   147ec:	00e4a623          	sw	a4,12(s1)
   147f0:	00600793          	li	a5,6
   147f4:	10000713          	li	a4,256
   147f8:	c9dff06f          	j	14494 <emdnorm+0xbc>

00000000000147fc <eiremain>:
   147fc:	fa010113          	addi	sp,sp,-96
   14800:	05213023          	sd	s2,64(sp)
   14804:	03313c23          	sd	s3,56(sp)
   14808:	00058913          	mv	s2,a1
   1480c:	00255983          	lhu	s3,2(a0)
   14810:	04113c23          	sd	ra,88(sp)
   14814:	04813823          	sd	s0,80(sp)
   14818:	04913423          	sd	s1,72(sp)
   1481c:	03413823          	sd	s4,48(sp)
   14820:	00060493          	mv	s1,a2
   14824:	01713c23          	sd	s7,24(sp)
   14828:	03513423          	sd	s5,40(sp)
   1482c:	03613023          	sd	s6,32(sp)
   14830:	01813823          	sd	s8,16(sp)
   14834:	01913423          	sd	s9,8(sp)
   14838:	01a13023          	sd	s10,0(sp)
   1483c:	00050b93          	mv	s7,a0
   14840:	e0cff0ef          	jal	ra,13e4c <enormlz>
   14844:	00295403          	lhu	s0,2(s2)
   14848:	00050793          	mv	a5,a0
   1484c:	00090513          	mv	a0,s2
   14850:	40f989b3          	sub	s3,s3,a5
   14854:	03448a13          	addi	s4,s1,52
   14858:	df4ff0ef          	jal	ra,13e4c <enormlz>
   1485c:	40a40433          	sub	s0,s0,a0
   14860:	04e48713          	addi	a4,s1,78
   14864:	000a0793          	mv	a5,s4
   14868:	00278793          	addi	a5,a5,2
   1486c:	fe079f23          	sh	zero,-2(a5)
   14870:	fee79ce3          	bne	a5,a4,14868 <eiremain+0x6c>
   14874:	09344863          	blt	s0,s3,14904 <eiremain+0x108>
   14878:	004b8b13          	addi	s6,s7,4
   1487c:	00490a93          	addi	s5,s2,4
   14880:	01ab8c13          	addi	s8,s7,26
   14884:	00290d13          	addi	s10,s2,2
   14888:	000a8713          	mv	a4,s5
   1488c:	000b0793          	mv	a5,s6
   14890:	0007d603          	lhu	a2,0(a5)
   14894:	00075683          	lhu	a3,0(a4)
   14898:	00278793          	addi	a5,a5,2
   1489c:	00270713          	addi	a4,a4,2
   148a0:	0ad61a63          	bne	a2,a3,14954 <eiremain+0x158>
   148a4:	ff8796e3          	bne	a5,s8,14890 <eiremain+0x94>
   148a8:	018b8613          	addi	a2,s7,24
   148ac:	01890713          	addi	a4,s2,24
   148b0:	00000693          	li	a3,0
   148b4:	00075783          	lhu	a5,0(a4)
   148b8:	00065583          	lhu	a1,0(a2)
   148bc:	ffe70713          	addi	a4,a4,-2
   148c0:	40d787b3          	sub	a5,a5,a3
   148c4:	40b787b3          	sub	a5,a5,a1
   148c8:	0107d693          	srli	a3,a5,0x10
   148cc:	00f71123          	sh	a5,2(a4)
   148d0:	0016f693          	andi	a3,a3,1
   148d4:	ffe60613          	addi	a2,a2,-2
   148d8:	fced1ee3          	bne	s10,a4,148b4 <eiremain+0xb8>
   148dc:	00100c93          	li	s9,1
   148e0:	000a0513          	mv	a0,s4
   148e4:	b64ff0ef          	jal	ra,13c48 <eshup1>
   148e8:	04c4d783          	lhu	a5,76(s1)
   148ec:	fff40413          	addi	s0,s0,-1
   148f0:	00090513          	mv	a0,s2
   148f4:	00fce7b3          	or	a5,s9,a5
   148f8:	04f49623          	sh	a5,76(s1)
   148fc:	b4cff0ef          	jal	ra,13c48 <eshup1>
   14900:	f93454e3          	bge	s0,s3,14888 <eiremain+0x8c>
   14904:	00040693          	mv	a3,s0
   14908:	05013403          	ld	s0,80(sp)
   1490c:	05813083          	ld	ra,88(sp)
   14910:	03813983          	ld	s3,56(sp)
   14914:	03013a03          	ld	s4,48(sp)
   14918:	02813a83          	ld	s5,40(sp)
   1491c:	02013b03          	ld	s6,32(sp)
   14920:	01813b83          	ld	s7,24(sp)
   14924:	01013c03          	ld	s8,16(sp)
   14928:	00813c83          	ld	s9,8(sp)
   1492c:	00013d03          	ld	s10,0(sp)
   14930:	00048793          	mv	a5,s1
   14934:	00090513          	mv	a0,s2
   14938:	04813483          	ld	s1,72(sp)
   1493c:	04013903          	ld	s2,64(sp)
   14940:	00000713          	li	a4,0
   14944:	00000613          	li	a2,0
   14948:	00000593          	li	a1,0
   1494c:	06010113          	addi	sp,sp,96
   14950:	a89ff06f          	j	143d8 <emdnorm>
   14954:	00000c93          	li	s9,0
   14958:	f8c6e4e3          	bltu	a3,a2,148e0 <eiremain+0xe4>
   1495c:	f4dff06f          	j	148a8 <eiremain+0xac>

0000000000014960 <emul>:
   14960:	f4010113          	addi	sp,sp,-192
   14964:	0a913423          	sd	s1,168(sp)
   14968:	00050493          	mv	s1,a0
   1496c:	01255503          	lhu	a0,18(a0)
   14970:	00008737          	lui	a4,0x8
   14974:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14978:	0a813823          	sd	s0,176(sp)
   1497c:	0b213023          	sd	s2,160(sp)
   14980:	09413823          	sd	s4,144(sp)
   14984:	0a113c23          	sd	ra,184(sp)
   14988:	09313c23          	sd	s3,152(sp)
   1498c:	09513423          	sd	s5,136(sp)
   14990:	09613023          	sd	s6,128(sp)
   14994:	07713c23          	sd	s7,120(sp)
   14998:	07813823          	sd	s8,112(sp)
   1499c:	07913423          	sd	s9,104(sp)
   149a0:	00a77533          	and	a0,a4,a0
   149a4:	00058913          	mv	s2,a1
   149a8:	00060413          	mv	s0,a2
   149ac:	00068a13          	mv	s4,a3
   149b0:	00e51e63          	bne	a0,a4,149cc <emul+0x6c>
   149b4:	01248993          	addi	s3,s1,18
   149b8:	00048713          	mv	a4,s1
   149bc:	00075603          	lhu	a2,0(a4)
   149c0:	00270713          	addi	a4,a4,2
   149c4:	16061863          	bnez	a2,14b34 <emul+0x1d4>
   149c8:	ff371ae3          	bne	a4,s3,149bc <emul+0x5c>
   149cc:	01295603          	lhu	a2,18(s2)
   149d0:	000087b7          	lui	a5,0x8
   149d4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   149d8:	00f675b3          	and	a1,a2,a5
   149dc:	0af59c63          	bne	a1,a5,14a94 <emul+0x134>
   149e0:	01290693          	addi	a3,s2,18
   149e4:	00090713          	mv	a4,s2
   149e8:	00075783          	lhu	a5,0(a4)
   149ec:	00270713          	addi	a4,a4,2
   149f0:	22079463          	bnez	a5,14c18 <emul+0x2b8>
   149f4:	fee69ae3          	bne	a3,a4,149e8 <emul+0x88>
   149f8:	000087b7          	lui	a5,0x8
   149fc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14a00:	08f50c63          	beq	a0,a5,14a98 <emul+0x138>
   14a04:	00090793          	mv	a5,s2
   14a08:	0007d703          	lhu	a4,0(a5)
   14a0c:	00278793          	addi	a5,a5,2
   14a10:	3e071a63          	bnez	a4,14e04 <emul+0x4a4>
   14a14:	fef69ae3          	bne	a3,a5,14a08 <emul+0xa8>
   14a18:	0000d597          	auipc	a1,0xd
   14a1c:	41058593          	addi	a1,a1,1040 # 21e28 <ezero>
   14a20:	00048513          	mv	a0,s1
   14a24:	875ff0ef          	jal	ra,14298 <ecmp>
   14a28:	20050663          	beqz	a0,14c34 <emul+0x2d4>
   14a2c:	0124d503          	lhu	a0,18(s1)
   14a30:	01295603          	lhu	a2,18(s2)
   14a34:	000087b7          	lui	a5,0x8
   14a38:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14a3c:	00f576b3          	and	a3,a0,a5
   14a40:	00f67733          	and	a4,a2,a5
   14a44:	00068813          	mv	a6,a3
   14a48:	0007059b          	sext.w	a1,a4
   14a4c:	12f69e63          	bne	a3,a5,14b88 <emul+0x228>
   14a50:	01248993          	addi	s3,s1,18
   14a54:	0007059b          	sext.w	a1,a4
   14a58:	00048793          	mv	a5,s1
   14a5c:	0007d703          	lhu	a4,0(a5)
   14a60:	00278793          	addi	a5,a5,2
   14a64:	10071e63          	bnez	a4,14b80 <emul+0x220>
   14a68:	fef99ae3          	bne	s3,a5,14a5c <emul+0xfc>
   14a6c:	0004d783          	lhu	a5,0(s1)
   14a70:	00248493          	addi	s1,s1,2
   14a74:	34079663          	bnez	a5,14dc0 <emul+0x460>
   14a78:	ff349ae3          	bne	s1,s3,14a6c <emul+0x10c>
   14a7c:	00f55893          	srli	a7,a0,0xf
   14a80:	00008737          	lui	a4,0x8
   14a84:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14a88:	14e59863          	bne	a1,a4,14bd8 <emul+0x278>
   14a8c:	01290693          	addi	a3,s2,18
   14a90:	1380006f          	j	14bc8 <emul+0x268>
   14a94:	04f51863          	bne	a0,a5,14ae4 <emul+0x184>
   14a98:	01248993          	addi	s3,s1,18
   14a9c:	00048793          	mv	a5,s1
   14aa0:	0007d703          	lhu	a4,0(a5)
   14aa4:	00278793          	addi	a5,a5,2
   14aa8:	32071063          	bnez	a4,14dc8 <emul+0x468>
   14aac:	fef99ae3          	bne	s3,a5,14aa0 <emul+0x140>
   14ab0:	0000d597          	auipc	a1,0xd
   14ab4:	37858593          	addi	a1,a1,888 # 21e28 <ezero>
   14ab8:	00090513          	mv	a0,s2
   14abc:	fdcff0ef          	jal	ra,14298 <ecmp>
   14ac0:	16050a63          	beqz	a0,14c34 <emul+0x2d4>
   14ac4:	01295603          	lhu	a2,18(s2)
   14ac8:	000087b7          	lui	a5,0x8
   14acc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14ad0:	00f675b3          	and	a1,a2,a5
   14ad4:	18f58663          	beq	a1,a5,14c60 <emul+0x300>
   14ad8:	0124d503          	lhu	a0,18(s1)
   14adc:	00f57733          	and	a4,a0,a5
   14ae0:	f6f70ce3          	beq	a4,a5,14a58 <emul+0xf8>
   14ae4:	00048513          	mv	a0,s1
   14ae8:	00010593          	mv	a1,sp
   14aec:	ef4ff0ef          	jal	ra,141e0 <emovi>
   14af0:	02010593          	addi	a1,sp,32
   14af4:	00090513          	mv	a0,s2
   14af8:	ee8ff0ef          	jal	ra,141e0 <emovi>
   14afc:	00215483          	lhu	s1,2(sp)
   14b00:	02215983          	lhu	s3,34(sp)
   14b04:	16049263          	bnez	s1,14c68 <emul+0x308>
   14b08:	00410793          	addi	a5,sp,4
   14b0c:	01810693          	addi	a3,sp,24
   14b10:	2cd78663          	beq	a5,a3,14ddc <emul+0x47c>
   14b14:	0007d703          	lhu	a4,0(a5)
   14b18:	00278793          	addi	a5,a5,2
   14b1c:	fe070ae3          	beqz	a4,14b10 <emul+0x1b0>
   14b20:	00010513          	mv	a0,sp
   14b24:	b28ff0ef          	jal	ra,13e4c <enormlz>
   14b28:	02215703          	lhu	a4,34(sp)
   14b2c:	40a004b3          	neg	s1,a0
   14b30:	13c0006f          	j	14c6c <emul+0x30c>
   14b34:	01448713          	addi	a4,s1,20
   14b38:	0004d783          	lhu	a5,0(s1)
   14b3c:	00248493          	addi	s1,s1,2
   14b40:	00240413          	addi	s0,s0,2
   14b44:	fef41f23          	sh	a5,-2(s0)
   14b48:	fee498e3          	bne	s1,a4,14b38 <emul+0x1d8>
   14b4c:	0b813083          	ld	ra,184(sp)
   14b50:	0b013403          	ld	s0,176(sp)
   14b54:	0a813483          	ld	s1,168(sp)
   14b58:	0a013903          	ld	s2,160(sp)
   14b5c:	09813983          	ld	s3,152(sp)
   14b60:	09013a03          	ld	s4,144(sp)
   14b64:	08813a83          	ld	s5,136(sp)
   14b68:	08013b03          	ld	s6,128(sp)
   14b6c:	07813b83          	ld	s7,120(sp)
   14b70:	07013c03          	ld	s8,112(sp)
   14b74:	06813c83          	ld	s9,104(sp)
   14b78:	0c010113          	addi	sp,sp,192
   14b7c:	00008067          	ret
   14b80:	00008837          	lui	a6,0x8
   14b84:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   14b88:	000087b7          	lui	a5,0x8
   14b8c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14b90:	f4f59ae3          	bne	a1,a5,14ae4 <emul+0x184>
   14b94:	01290693          	addi	a3,s2,18
   14b98:	00090793          	mv	a5,s2
   14b9c:	0007d703          	lhu	a4,0(a5)
   14ba0:	00278793          	addi	a5,a5,2
   14ba4:	f40710e3          	bnez	a4,14ae4 <emul+0x184>
   14ba8:	fed79ae3          	bne	a5,a3,14b9c <emul+0x23c>
   14bac:	00008737          	lui	a4,0x8
   14bb0:	0008081b          	sext.w	a6,a6
   14bb4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14bb8:	00f55893          	srli	a7,a0,0xf
   14bbc:	01248993          	addi	s3,s1,18
   14bc0:	00080593          	mv	a1,a6
   14bc4:	eae804e3          	beq	a6,a4,14a6c <emul+0x10c>
   14bc8:	00095703          	lhu	a4,0(s2)
   14bcc:	00290913          	addi	s2,s2,2
   14bd0:	1e071463          	bnez	a4,14db8 <emul+0x458>
   14bd4:	fed91ae3          	bne	s2,a3,14bc8 <emul+0x268>
   14bd8:	00f65793          	srli	a5,a2,0xf
   14bdc:	411787b3          	sub	a5,a5,a7
   14be0:	00f037b3          	snez	a5,a5
   14be4:	00f79793          	slli	a5,a5,0xf
   14be8:	00f41923          	sh	a5,18(s0)
   14bec:	01240713          	addi	a4,s0,18
   14bf0:	00040793          	mv	a5,s0
   14bf4:	00278793          	addi	a5,a5,2
   14bf8:	fe079f23          	sh	zero,-2(a5)
   14bfc:	fee79ce3          	bne	a5,a4,14bf4 <emul+0x294>
   14c00:	01245783          	lhu	a5,18(s0)
   14c04:	00008737          	lui	a4,0x8
   14c08:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14c0c:	00e7e7b3          	or	a5,a5,a4
   14c10:	00f41923          	sh	a5,18(s0)
   14c14:	f39ff06f          	j	14b4c <emul+0x1ec>
   14c18:	01440713          	addi	a4,s0,20
   14c1c:	00095783          	lhu	a5,0(s2)
   14c20:	00240413          	addi	s0,s0,2
   14c24:	00290913          	addi	s2,s2,2
   14c28:	fef41f23          	sh	a5,-2(s0)
   14c2c:	fee418e3          	bne	s0,a4,14c1c <emul+0x2bc>
   14c30:	f1dff06f          	j	14b4c <emul+0x1ec>
   14c34:	01040713          	addi	a4,s0,16
   14c38:	00040793          	mv	a5,s0
   14c3c:	00278793          	addi	a5,a5,2
   14c40:	fe079f23          	sh	zero,-2(a5)
   14c44:	fee79ce3          	bne	a5,a4,14c3c <emul+0x2dc>
   14c48:	ffffc7b7          	lui	a5,0xffffc
   14c4c:	00f41823          	sh	a5,16(s0)
   14c50:	ffff87b7          	lui	a5,0xffff8
   14c54:	fff7c793          	not	a5,a5
   14c58:	00f41923          	sh	a5,18(s0)
   14c5c:	ef1ff06f          	j	14b4c <emul+0x1ec>
   14c60:	01290693          	addi	a3,s2,18
   14c64:	da1ff06f          	j	14a04 <emul+0xa4>
   14c68:	00098713          	mv	a4,s3
   14c6c:	00098913          	mv	s2,s3
   14c70:	02410793          	addi	a5,sp,36
   14c74:	03810693          	addi	a3,sp,56
   14c78:	02071263          	bnez	a4,14c9c <emul+0x33c>
   14c7c:	16d78a63          	beq	a5,a3,14df0 <emul+0x490>
   14c80:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3420>
   14c84:	00278793          	addi	a5,a5,2
   14c88:	fe070ae3          	beqz	a4,14c7c <emul+0x31c>
   14c8c:	02010513          	addi	a0,sp,32
   14c90:	9bcff0ef          	jal	ra,13e4c <enormlz>
   14c94:	02215703          	lhu	a4,34(sp)
   14c98:	40a98933          	sub	s2,s3,a0
   14c9c:	02015783          	lhu	a5,32(sp)
   14ca0:	038a0993          	addi	s3,s4,56
   14ca4:	02ea1b23          	sh	a4,54(s4)
   14ca8:	02fa1a23          	sh	a5,52(s4)
   14cac:	04ea0713          	addi	a4,s4,78
   14cb0:	00098793          	mv	a5,s3
   14cb4:	00079023          	sh	zero,0(a5)
   14cb8:	00278793          	addi	a5,a5,2
   14cbc:	fef71ce3          	bne	a4,a5,14cb4 <emul+0x354>
   14cc0:	04ca0c13          	addi	s8,s4,76
   14cc4:	00000b93          	li	s7,0
   14cc8:	01810a93          	addi	s5,sp,24
   14ccc:	00410c93          	addi	s9,sp,4
   14cd0:	04210b13          	addi	s6,sp,66
   14cd4:	000ad503          	lhu	a0,0(s5)
   14cd8:	ffea8a93          	addi	s5,s5,-2
   14cdc:	08051c63          	bnez	a0,14d74 <emul+0x414>
   14ce0:	04ca5783          	lhu	a5,76(s4)
   14ce4:	000c0713          	mv	a4,s8
   14ce8:	00fbebb3          	or	s7,s7,a5
   14cec:	ffe75603          	lhu	a2,-2(a4)
   14cf0:	ffe70713          	addi	a4,a4,-2
   14cf4:	00c71123          	sh	a2,2(a4)
   14cf8:	fee99ae3          	bne	s3,a4,14cec <emul+0x38c>
   14cfc:	020a1c23          	sh	zero,56(s4)
   14d00:	fd9a9ae3          	bne	s5,s9,14cd4 <emul+0x374>
   14d04:	034a0713          	addi	a4,s4,52
   14d08:	02010793          	addi	a5,sp,32
   14d0c:	03a10613          	addi	a2,sp,58
   14d10:	00075683          	lhu	a3,0(a4)
   14d14:	00278793          	addi	a5,a5,2
   14d18:	00270713          	addi	a4,a4,2
   14d1c:	fed79f23          	sh	a3,-2(a5)
   14d20:	fef618e3          	bne	a2,a5,14d10 <emul+0x3b0>
   14d24:	ffffc6b7          	lui	a3,0xffffc
   14d28:	012484b3          	add	s1,s1,s2
   14d2c:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7422>
   14d30:	000b8593          	mv	a1,s7
   14d34:	02010513          	addi	a0,sp,32
   14d38:	000a0793          	mv	a5,s4
   14d3c:	04000713          	li	a4,64
   14d40:	00d486b3          	add	a3,s1,a3
   14d44:	00000613          	li	a2,0
   14d48:	e90ff0ef          	jal	ra,143d8 <emdnorm>
   14d4c:	02015703          	lhu	a4,32(sp)
   14d50:	00015783          	lhu	a5,0(sp)
   14d54:	00040593          	mv	a1,s0
   14d58:	02010513          	addi	a0,sp,32
   14d5c:	40e787b3          	sub	a5,a5,a4
   14d60:	00f037b3          	snez	a5,a5
   14d64:	40f007bb          	negw	a5,a5
   14d68:	02f11023          	sh	a5,32(sp)
   14d6c:	824ff0ef          	jal	ra,13d90 <emovo.constprop.0>
   14d70:	dddff06f          	j	14b4c <emul+0x1ec>
   14d74:	04010613          	addi	a2,sp,64
   14d78:	02010593          	addi	a1,sp,32
   14d7c:	f39fe0ef          	jal	ra,13cb4 <m16m>
   14d80:	000c0513          	mv	a0,s8
   14d84:	00000593          	li	a1,0
   14d88:	05810613          	addi	a2,sp,88
   14d8c:	00055783          	lhu	a5,0(a0)
   14d90:	00065703          	lhu	a4,0(a2)
   14d94:	ffe50513          	addi	a0,a0,-2
   14d98:	ffe60613          	addi	a2,a2,-2
   14d9c:	00f70733          	add	a4,a4,a5
   14da0:	00b70733          	add	a4,a4,a1
   14da4:	01075593          	srli	a1,a4,0x10
   14da8:	00e51123          	sh	a4,2(a0)
   14dac:	0015f593          	andi	a1,a1,1
   14db0:	fd661ee3          	bne	a2,s6,14d8c <emul+0x42c>
   14db4:	f2dff06f          	j	14ce0 <emul+0x380>
   14db8:	00000793          	li	a5,0
   14dbc:	e21ff06f          	j	14bdc <emul+0x27c>
   14dc0:	00000893          	li	a7,0
   14dc4:	cbdff06f          	j	14a80 <emul+0x120>
   14dc8:	000087b7          	lui	a5,0x8
   14dcc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14dd0:	e8f588e3          	beq	a1,a5,14c60 <emul+0x300>
   14dd4:	0124d503          	lhu	a0,18(s1)
   14dd8:	c81ff06f          	j	14a58 <emul+0xf8>
   14ddc:	01440793          	addi	a5,s0,20
   14de0:	00240413          	addi	s0,s0,2
   14de4:	fe041f23          	sh	zero,-2(s0)
   14de8:	fe879ce3          	bne	a5,s0,14de0 <emul+0x480>
   14dec:	d61ff06f          	j	14b4c <emul+0x1ec>
   14df0:	01440793          	addi	a5,s0,20
   14df4:	00240413          	addi	s0,s0,2
   14df8:	fe041f23          	sh	zero,-2(s0)
   14dfc:	fe879ce3          	bne	a5,s0,14df4 <emul+0x494>
   14e00:	d4dff06f          	j	14b4c <emul+0x1ec>
   14e04:	0124d503          	lhu	a0,18(s1)
   14e08:	000087b7          	lui	a5,0x8
   14e0c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14e10:	00f575b3          	and	a1,a0,a5
   14e14:	01248993          	addi	s3,s1,18
   14e18:	00058813          	mv	a6,a1
   14e1c:	d6f59ee3          	bne	a1,a5,14b98 <emul+0x238>
   14e20:	c39ff06f          	j	14a58 <emul+0xf8>

0000000000014e24 <ediv>:
   14e24:	01255783          	lhu	a5,18(a0)
   14e28:	f2010113          	addi	sp,sp,-224
   14e2c:	0c813823          	sd	s0,208(sp)
   14e30:	fff7c793          	not	a5,a5
   14e34:	0c913423          	sd	s1,200(sp)
   14e38:	0d213023          	sd	s2,192(sp)
   14e3c:	0b313c23          	sd	s3,184(sp)
   14e40:	0c113c23          	sd	ra,216(sp)
   14e44:	0b413823          	sd	s4,176(sp)
   14e48:	0b513423          	sd	s5,168(sp)
   14e4c:	0b613023          	sd	s6,160(sp)
   14e50:	09713c23          	sd	s7,152(sp)
   14e54:	09813823          	sd	s8,144(sp)
   14e58:	09913423          	sd	s9,136(sp)
   14e5c:	09a13023          	sd	s10,128(sp)
   14e60:	07b13c23          	sd	s11,120(sp)
   14e64:	03179713          	slli	a4,a5,0x31
   14e68:	00050493          	mv	s1,a0
   14e6c:	00058913          	mv	s2,a1
   14e70:	00060413          	mv	s0,a2
   14e74:	00068993          	mv	s3,a3
   14e78:	00071e63          	bnez	a4,14e94 <ediv+0x70>
   14e7c:	01250693          	addi	a3,a0,18
   14e80:	00050793          	mv	a5,a0
   14e84:	0007d703          	lhu	a4,0(a5)
   14e88:	00278793          	addi	a5,a5,2
   14e8c:	30071463          	bnez	a4,15194 <ediv+0x370>
   14e90:	fed79ae3          	bne	a5,a3,14e84 <ediv+0x60>
   14e94:	01295783          	lhu	a5,18(s2)
   14e98:	fff7c793          	not	a5,a5
   14e9c:	03179713          	slli	a4,a5,0x31
   14ea0:	00071e63          	bnez	a4,14ebc <ediv+0x98>
   14ea4:	01290693          	addi	a3,s2,18
   14ea8:	00090793          	mv	a5,s2
   14eac:	0007d703          	lhu	a4,0(a5)
   14eb0:	00278793          	addi	a5,a5,2
   14eb4:	2e071e63          	bnez	a4,151b0 <ediv+0x38c>
   14eb8:	fed79ae3          	bne	a5,a3,14eac <ediv+0x88>
   14ebc:	0000d597          	auipc	a1,0xd
   14ec0:	f6c58593          	addi	a1,a1,-148 # 21e28 <ezero>
   14ec4:	00048513          	mv	a0,s1
   14ec8:	bd0ff0ef          	jal	ra,14298 <ecmp>
   14ecc:	30050063          	beqz	a0,151cc <ediv+0x3a8>
   14ed0:	0124d603          	lhu	a2,18(s1)
   14ed4:	01295583          	lhu	a1,18(s2)
   14ed8:	000087b7          	lui	a5,0x8
   14edc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14ee0:	00f67533          	and	a0,a2,a5
   14ee4:	00f5f6b3          	and	a3,a1,a5
   14ee8:	0af51663          	bne	a0,a5,14f94 <ediv+0x170>
   14eec:	01248813          	addi	a6,s1,18
   14ef0:	00048793          	mv	a5,s1
   14ef4:	0007d703          	lhu	a4,0(a5)
   14ef8:	00278793          	addi	a5,a5,2
   14efc:	08071863          	bnez	a4,14f8c <ediv+0x168>
   14f00:	ff079ae3          	bne	a5,a6,14ef4 <ediv+0xd0>
   14f04:	000087b7          	lui	a5,0x8
   14f08:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14f0c:	2cf69e63          	bne	a3,a5,151e8 <ediv+0x3c4>
   14f10:	01290693          	addi	a3,s2,18
   14f14:	00090793          	mv	a5,s2
   14f18:	0007d703          	lhu	a4,0(a5)
   14f1c:	00278793          	addi	a5,a5,2
   14f20:	4a071063          	bnez	a4,153c0 <ediv+0x59c>
   14f24:	fed79ae3          	bne	a5,a3,14f18 <ediv+0xf4>
   14f28:	01040713          	addi	a4,s0,16
   14f2c:	00040793          	mv	a5,s0
   14f30:	00278793          	addi	a5,a5,2
   14f34:	fe079f23          	sh	zero,-2(a5)
   14f38:	fee79ce3          	bne	a5,a4,14f30 <ediv+0x10c>
   14f3c:	ffffc7b7          	lui	a5,0xffffc
   14f40:	00f41823          	sh	a5,16(s0)
   14f44:	ffff87b7          	lui	a5,0xffff8
   14f48:	fff7c793          	not	a5,a5
   14f4c:	00f41923          	sh	a5,18(s0)
   14f50:	0d813083          	ld	ra,216(sp)
   14f54:	0d013403          	ld	s0,208(sp)
   14f58:	0c813483          	ld	s1,200(sp)
   14f5c:	0c013903          	ld	s2,192(sp)
   14f60:	0b813983          	ld	s3,184(sp)
   14f64:	0b013a03          	ld	s4,176(sp)
   14f68:	0a813a83          	ld	s5,168(sp)
   14f6c:	0a013b03          	ld	s6,160(sp)
   14f70:	09813b83          	ld	s7,152(sp)
   14f74:	09013c03          	ld	s8,144(sp)
   14f78:	08813c83          	ld	s9,136(sp)
   14f7c:	08013d03          	ld	s10,128(sp)
   14f80:	07813d83          	ld	s11,120(sp)
   14f84:	0e010113          	addi	sp,sp,224
   14f88:	00008067          	ret
   14f8c:	000087b7          	lui	a5,0x8
   14f90:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14f94:	26f68463          	beq	a3,a5,151fc <ediv+0x3d8>
   14f98:	00048513          	mv	a0,s1
   14f9c:	01010593          	addi	a1,sp,16
   14fa0:	a40ff0ef          	jal	ra,141e0 <emovi>
   14fa4:	03010593          	addi	a1,sp,48
   14fa8:	00090513          	mv	a0,s2
   14fac:	a34ff0ef          	jal	ra,141e0 <emovi>
   14fb0:	03215a83          	lhu	s5,50(sp)
   14fb4:	01215483          	lhu	s1,18(sp)
   14fb8:	2c0a8a63          	beqz	s5,1528c <ediv+0x468>
   14fbc:	01513423          	sd	s5,8(sp)
   14fc0:	00048613          	mv	a2,s1
   14fc4:	00913023          	sd	s1,0(sp)
   14fc8:	01410793          	addi	a5,sp,20
   14fcc:	02810693          	addi	a3,sp,40
   14fd0:	02061263          	bnez	a2,14ff4 <ediv+0x1d0>
   14fd4:	3ad78863          	beq	a5,a3,15384 <ediv+0x560>
   14fd8:	0007d703          	lhu	a4,0(a5)
   14fdc:	00278793          	addi	a5,a5,2
   14fe0:	fe070ae3          	beqz	a4,14fd4 <ediv+0x1b0>
   14fe4:	01010513          	addi	a0,sp,16
   14fe8:	e65fe0ef          	jal	ra,13e4c <enormlz>
   14fec:	40a487b3          	sub	a5,s1,a0
   14ff0:	00f13023          	sd	a5,0(sp)
   14ff4:	03012703          	lw	a4,48(sp)
   14ff8:	03898a93          	addi	s5,s3,56
   14ffc:	000a8793          	mv	a5,s5
   15000:	02e9aa23          	sw	a4,52(s3)
   15004:	04e98493          	addi	s1,s3,78
   15008:	00278793          	addi	a5,a5,2
   1500c:	fe079f23          	sh	zero,-2(a5)
   15010:	fef49ce3          	bne	s1,a5,15008 <ediv+0x1e4>
   15014:	03010513          	addi	a0,sp,48
   15018:	bc9fe0ef          	jal	ra,13be0 <eshdn1>
   1501c:	01615b03          	lhu	s6,22(sp)
   15020:	00010937          	lui	s2,0x10
   15024:	04810c13          	addi	s8,sp,72
   15028:	010b1a13          	slli	s4,s6,0x10
   1502c:	416a0a33          	sub	s4,s4,s6
   15030:	03210c93          	addi	s9,sp,50
   15034:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   15038:	06a10d13          	addi	s10,sp,106
   1503c:	05210d93          	addi	s11,sp,82
   15040:	03415783          	lhu	a5,52(sp)
   15044:	03615703          	lhu	a4,54(sp)
   15048:	00090b93          	mv	s7,s2
   1504c:	01079793          	slli	a5,a5,0x10
   15050:	00e78533          	add	a0,a5,a4
   15054:	00aa6a63          	bltu	s4,a0,15068 <ediv+0x244>
   15058:	000b0593          	mv	a1,s6
   1505c:	25d0c0ef          	jal	ra,21ab8 <__udivdi3>
   15060:	03051b93          	slli	s7,a0,0x30
   15064:	030bdb93          	srli	s7,s7,0x30
   15068:	05010613          	addi	a2,sp,80
   1506c:	01010593          	addi	a1,sp,16
   15070:	000b8513          	mv	a0,s7
   15074:	c41fe0ef          	jal	ra,13cb4 <m16m>
   15078:	03410713          	addi	a4,sp,52
   1507c:	05410793          	addi	a5,sp,84
   15080:	0007d603          	lhu	a2,0(a5)
   15084:	00075683          	lhu	a3,0(a4)
   15088:	00278793          	addi	a5,a5,2
   1508c:	00270713          	addi	a4,a4,2
   15090:	22d61663          	bne	a2,a3,152bc <ediv+0x498>
   15094:	ffa796e3          	bne	a5,s10,15080 <ediv+0x25c>
   15098:	00000793          	li	a5,0
   1509c:	06810693          	addi	a3,sp,104
   150a0:	000c0613          	mv	a2,s8
   150a4:	00065703          	lhu	a4,0(a2)
   150a8:	0006d583          	lhu	a1,0(a3)
   150ac:	ffe60613          	addi	a2,a2,-2
   150b0:	40f70733          	sub	a4,a4,a5
   150b4:	40b70733          	sub	a4,a4,a1
   150b8:	01075793          	srli	a5,a4,0x10
   150bc:	00e61123          	sh	a4,2(a2)
   150c0:	0017f793          	andi	a5,a5,1
   150c4:	ffe68693          	addi	a3,a3,-2
   150c8:	fd961ee3          	bne	a2,s9,150a4 <ediv+0x280>
   150cc:	017a9023          	sh	s7,0(s5)
   150d0:	03410793          	addi	a5,sp,52
   150d4:	0027d703          	lhu	a4,2(a5)
   150d8:	00278793          	addi	a5,a5,2
   150dc:	fee79f23          	sh	a4,-2(a5)
   150e0:	ff879ae3          	bne	a5,s8,150d4 <ediv+0x2b0>
   150e4:	04011423          	sh	zero,72(sp)
   150e8:	002a8a93          	addi	s5,s5,2
   150ec:	f5549ae3          	bne	s1,s5,15040 <ediv+0x21c>
   150f0:	00000713          	li	a4,0
   150f4:	03410793          	addi	a5,sp,52
   150f8:	04a10613          	addi	a2,sp,74
   150fc:	0007d683          	lhu	a3,0(a5)
   15100:	00278793          	addi	a5,a5,2
   15104:	00d76733          	or	a4,a4,a3
   15108:	fec79ae3          	bne	a5,a2,150fc <ediv+0x2d8>
   1510c:	0107179b          	slliw	a5,a4,0x10
   15110:	4107d79b          	sraiw	a5,a5,0x10
   15114:	00078463          	beqz	a5,1511c <ediv+0x2f8>
   15118:	00100713          	li	a4,1
   1511c:	03071593          	slli	a1,a4,0x30
   15120:	0305d593          	srli	a1,a1,0x30
   15124:	03498713          	addi	a4,s3,52
   15128:	03010793          	addi	a5,sp,48
   1512c:	00075683          	lhu	a3,0(a4)
   15130:	00278793          	addi	a5,a5,2
   15134:	00270713          	addi	a4,a4,2
   15138:	fed79f23          	sh	a3,-2(a5)
   1513c:	fef618e3          	bne	a2,a5,1512c <ediv+0x308>
   15140:	00813783          	ld	a5,8(sp)
   15144:	00013703          	ld	a4,0(sp)
   15148:	000046b7          	lui	a3,0x4
   1514c:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc0b1>
   15150:	40e78ab3          	sub	s5,a5,a4
   15154:	03010513          	addi	a0,sp,48
   15158:	00098793          	mv	a5,s3
   1515c:	04000713          	li	a4,64
   15160:	00da86b3          	add	a3,s5,a3
   15164:	00000613          	li	a2,0
   15168:	a70ff0ef          	jal	ra,143d8 <emdnorm>
   1516c:	03015703          	lhu	a4,48(sp)
   15170:	01015783          	lhu	a5,16(sp)
   15174:	00040593          	mv	a1,s0
   15178:	03010513          	addi	a0,sp,48
   1517c:	40e787b3          	sub	a5,a5,a4
   15180:	00f037b3          	snez	a5,a5
   15184:	40f007bb          	negw	a5,a5
   15188:	02f11823          	sh	a5,48(sp)
   1518c:	c05fe0ef          	jal	ra,13d90 <emovo.constprop.0>
   15190:	dc1ff06f          	j	14f50 <ediv+0x12c>
   15194:	01448713          	addi	a4,s1,20
   15198:	0004d783          	lhu	a5,0(s1)
   1519c:	00248493          	addi	s1,s1,2
   151a0:	00240413          	addi	s0,s0,2
   151a4:	fef41f23          	sh	a5,-2(s0)
   151a8:	fee498e3          	bne	s1,a4,15198 <ediv+0x374>
   151ac:	da5ff06f          	j	14f50 <ediv+0x12c>
   151b0:	01490713          	addi	a4,s2,20
   151b4:	00095783          	lhu	a5,0(s2)
   151b8:	00290913          	addi	s2,s2,2
   151bc:	00240413          	addi	s0,s0,2
   151c0:	fef41f23          	sh	a5,-2(s0)
   151c4:	fee918e3          	bne	s2,a4,151b4 <ediv+0x390>
   151c8:	d89ff06f          	j	14f50 <ediv+0x12c>
   151cc:	0000d597          	auipc	a1,0xd
   151d0:	c5c58593          	addi	a1,a1,-932 # 21e28 <ezero>
   151d4:	00090513          	mv	a0,s2
   151d8:	8c0ff0ef          	jal	ra,14298 <ecmp>
   151dc:	ce051ae3          	bnez	a0,14ed0 <ediv+0xac>
   151e0:	d49ff06f          	j	14f28 <ediv+0x104>
   151e4:	da080ae3          	beqz	a6,14f98 <ediv+0x174>
   151e8:	01440793          	addi	a5,s0,20
   151ec:	00240413          	addi	s0,s0,2
   151f0:	fe041f23          	sh	zero,-2(s0)
   151f4:	fef41ce3          	bne	s0,a5,151ec <ediv+0x3c8>
   151f8:	d59ff06f          	j	14f50 <ediv+0x12c>
   151fc:	00000813          	li	a6,0
   15200:	01290693          	addi	a3,s2,18
   15204:	00090793          	mv	a5,s2
   15208:	0007d703          	lhu	a4,0(a5)
   1520c:	00278793          	addi	a5,a5,2
   15210:	fc071ae3          	bnez	a4,151e4 <ediv+0x3c0>
   15214:	fed79ae3          	bne	a5,a3,15208 <ediv+0x3e4>
   15218:	000087b7          	lui	a5,0x8
   1521c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15220:	04f50a63          	beq	a0,a5,15274 <ediv+0x450>
   15224:	00f65613          	srli	a2,a2,0xf
   15228:	00095783          	lhu	a5,0(s2)
   1522c:	00290913          	addi	s2,s2,2
   15230:	18079063          	bnez	a5,153b0 <ediv+0x58c>
   15234:	fed91ae3          	bne	s2,a3,15228 <ediv+0x404>
   15238:	00f5d593          	srli	a1,a1,0xf
   1523c:	00c58463          	beq	a1,a2,15244 <ediv+0x420>
   15240:	00008737          	lui	a4,0x8
   15244:	00e41923          	sh	a4,18(s0)
   15248:	00040793          	mv	a5,s0
   1524c:	01240713          	addi	a4,s0,18
   15250:	00278793          	addi	a5,a5,2
   15254:	fe079f23          	sh	zero,-2(a5)
   15258:	fee79ce3          	bne	a5,a4,15250 <ediv+0x42c>
   1525c:	01245783          	lhu	a5,18(s0)
   15260:	00008737          	lui	a4,0x8
   15264:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15268:	00e7e7b3          	or	a5,a5,a4
   1526c:	00f41923          	sh	a5,18(s0)
   15270:	ce1ff06f          	j	14f50 <ediv+0x12c>
   15274:	01248513          	addi	a0,s1,18
   15278:	0004d783          	lhu	a5,0(s1)
   1527c:	00248493          	addi	s1,s1,2
   15280:	12079c63          	bnez	a5,153b8 <ediv+0x594>
   15284:	fea49ae3          	bne	s1,a0,15278 <ediv+0x454>
   15288:	f9dff06f          	j	15224 <ediv+0x400>
   1528c:	03410793          	addi	a5,sp,52
   15290:	04810c13          	addi	s8,sp,72
   15294:	0cfc0e63          	beq	s8,a5,15370 <ediv+0x54c>
   15298:	0007d703          	lhu	a4,0(a5)
   1529c:	00278793          	addi	a5,a5,2
   152a0:	fe070ae3          	beqz	a4,15294 <ediv+0x470>
   152a4:	03010513          	addi	a0,sp,48
   152a8:	ba5fe0ef          	jal	ra,13e4c <enormlz>
   152ac:	40a007b3          	neg	a5,a0
   152b0:	01215603          	lhu	a2,18(sp)
   152b4:	00f13423          	sd	a5,8(sp)
   152b8:	d0dff06f          	j	14fc4 <ediv+0x1a0>
   152bc:	dcc6fee3          	bgeu	a3,a2,15098 <ediv+0x274>
   152c0:	fffb879b          	addiw	a5,s7,-1
   152c4:	03079893          	slli	a7,a5,0x30
   152c8:	0308d893          	srli	a7,a7,0x30
   152cc:	00000693          	li	a3,0
   152d0:	02810613          	addi	a2,sp,40
   152d4:	06810713          	addi	a4,sp,104
   152d8:	00075783          	lhu	a5,0(a4)
   152dc:	00065583          	lhu	a1,0(a2)
   152e0:	ffe70713          	addi	a4,a4,-2
   152e4:	40d787b3          	sub	a5,a5,a3
   152e8:	40b787b3          	sub	a5,a5,a1
   152ec:	0107d693          	srli	a3,a5,0x10
   152f0:	00f71123          	sh	a5,2(a4)
   152f4:	0016f693          	andi	a3,a3,1
   152f8:	ffe60613          	addi	a2,a2,-2
   152fc:	fdb71ee3          	bne	a4,s11,152d8 <ediv+0x4b4>
   15300:	03410713          	addi	a4,sp,52
   15304:	05410793          	addi	a5,sp,84
   15308:	0007d603          	lhu	a2,0(a5)
   1530c:	00075683          	lhu	a3,0(a4)
   15310:	00278793          	addi	a5,a5,2
   15314:	00270713          	addi	a4,a4,2
   15318:	00d61863          	bne	a2,a3,15328 <ediv+0x504>
   1531c:	ffa796e3          	bne	a5,s10,15308 <ediv+0x4e4>
   15320:	00088b93          	mv	s7,a7
   15324:	d75ff06f          	j	15098 <ediv+0x274>
   15328:	fec6fce3          	bgeu	a3,a2,15320 <ediv+0x4fc>
   1532c:	ffeb851b          	addiw	a0,s7,-2
   15330:	03051b93          	slli	s7,a0,0x30
   15334:	030bdb93          	srli	s7,s7,0x30
   15338:	00000693          	li	a3,0
   1533c:	02810613          	addi	a2,sp,40
   15340:	06810713          	addi	a4,sp,104
   15344:	00075783          	lhu	a5,0(a4)
   15348:	00065583          	lhu	a1,0(a2)
   1534c:	ffe70713          	addi	a4,a4,-2
   15350:	40d787b3          	sub	a5,a5,a3
   15354:	40b787b3          	sub	a5,a5,a1
   15358:	0107d693          	srli	a3,a5,0x10
   1535c:	00f71123          	sh	a5,2(a4)
   15360:	0016f693          	andi	a3,a3,1
   15364:	ffe60613          	addi	a2,a2,-2
   15368:	fdb71ee3          	bne	a4,s11,15344 <ediv+0x520>
   1536c:	d2dff06f          	j	15098 <ediv+0x274>
   15370:	01440793          	addi	a5,s0,20
   15374:	00240413          	addi	s0,s0,2
   15378:	fe041f23          	sh	zero,-2(s0)
   1537c:	fef41ce3          	bne	s0,a5,15374 <ediv+0x550>
   15380:	bd1ff06f          	j	14f50 <ediv+0x12c>
   15384:	01015703          	lhu	a4,16(sp)
   15388:	03015783          	lhu	a5,48(sp)
   1538c:	00f70463          	beq	a4,a5,15394 <ediv+0x570>
   15390:	00008637          	lui	a2,0x8
   15394:	00c41923          	sh	a2,18(s0)
   15398:	01240713          	addi	a4,s0,18
   1539c:	00040793          	mv	a5,s0
   153a0:	00278793          	addi	a5,a5,2
   153a4:	fe079f23          	sh	zero,-2(a5)
   153a8:	fef71ce3          	bne	a4,a5,153a0 <ediv+0x57c>
   153ac:	eb1ff06f          	j	1525c <ediv+0x438>
   153b0:	00000593          	li	a1,0
   153b4:	e89ff06f          	j	1523c <ediv+0x418>
   153b8:	00000613          	li	a2,0
   153bc:	e6dff06f          	j	15228 <ediv+0x404>
   153c0:	00100813          	li	a6,1
   153c4:	e41ff06f          	j	15204 <ediv+0x3e0>

00000000000153c8 <e113toe.isra.0>:
   153c8:	fd010113          	addi	sp,sp,-48
   153cc:	02813023          	sd	s0,32(sp)
   153d0:	02113423          	sd	ra,40(sp)
   153d4:	00058413          	mv	s0,a1
   153d8:	00010793          	mv	a5,sp
   153dc:	01a10713          	addi	a4,sp,26
   153e0:	00278793          	addi	a5,a5,2
   153e4:	fe079f23          	sh	zero,-2(a5)
   153e8:	fee79ce3          	bne	a5,a4,153e0 <e113toe.isra.0+0x18>
   153ec:	00e55783          	lhu	a5,14(a0)
   153f0:	00f7d713          	srli	a4,a5,0xf
   153f4:	06071c63          	bnez	a4,1546c <e113toe.isra.0+0xa4>
   153f8:	00008737          	lui	a4,0x8
   153fc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15400:	00e7f6b3          	and	a3,a5,a4
   15404:	00011023          	sh	zero,0(sp)
   15408:	00068613          	mv	a2,a3
   1540c:	06e68e63          	beq	a3,a4,15488 <e113toe.isra.0+0xc0>
   15410:	00e50793          	addi	a5,a0,14
   15414:	00d11123          	sh	a3,2(sp)
   15418:	00610713          	addi	a4,sp,6
   1541c:	ffe7d683          	lhu	a3,-2(a5)
   15420:	ffe78793          	addi	a5,a5,-2
   15424:	00270713          	addi	a4,a4,2
   15428:	fed71f23          	sh	a3,-2(a4)
   1542c:	fef518e3          	bne	a0,a5,1541c <e113toe.isra.0+0x54>
   15430:	02061263          	bnez	a2,15454 <e113toe.isra.0+0x8c>
   15434:	00011223          	sh	zero,4(sp)
   15438:	00040593          	mv	a1,s0
   1543c:	00010513          	mv	a0,sp
   15440:	951fe0ef          	jal	ra,13d90 <emovo.constprop.0>
   15444:	02813083          	ld	ra,40(sp)
   15448:	02013403          	ld	s0,32(sp)
   1544c:	03010113          	addi	sp,sp,48
   15450:	00008067          	ret
   15454:	00100793          	li	a5,1
   15458:	fff00593          	li	a1,-1
   1545c:	00010513          	mv	a0,sp
   15460:	00f11223          	sh	a5,4(sp)
   15464:	b5dfe0ef          	jal	ra,13fc0 <eshift.part.0>
   15468:	fd1ff06f          	j	15438 <e113toe.isra.0+0x70>
   1546c:	fff00713          	li	a4,-1
   15470:	00e11023          	sh	a4,0(sp)
   15474:	00008737          	lui	a4,0x8
   15478:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1547c:	00e7f6b3          	and	a3,a5,a4
   15480:	00068613          	mv	a2,a3
   15484:	f8e696e3          	bne	a3,a4,15410 <e113toe.isra.0+0x48>
   15488:	00050793          	mv	a5,a0
   1548c:	00e50693          	addi	a3,a0,14
   15490:	0007d703          	lhu	a4,0(a5)
   15494:	00278793          	addi	a5,a5,2
   15498:	06071c63          	bnez	a4,15510 <e113toe.isra.0+0x148>
   1549c:	fef69ae3          	bne	a3,a5,15490 <e113toe.isra.0+0xc8>
   154a0:	01440713          	addi	a4,s0,20
   154a4:	00040793          	mv	a5,s0
   154a8:	00278793          	addi	a5,a5,2
   154ac:	fe079f23          	sh	zero,-2(a5)
   154b0:	fee79ce3          	bne	a5,a4,154a8 <e113toe.isra.0+0xe0>
   154b4:	01240713          	addi	a4,s0,18
   154b8:	00040793          	mv	a5,s0
   154bc:	00278793          	addi	a5,a5,2
   154c0:	fe079f23          	sh	zero,-2(a5)
   154c4:	fef71ce3          	bne	a4,a5,154bc <e113toe.isra.0+0xf4>
   154c8:	01245783          	lhu	a5,18(s0)
   154cc:	000086b7          	lui	a3,0x8
   154d0:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   154d4:	00d7e7b3          	or	a5,a5,a3
   154d8:	03079793          	slli	a5,a5,0x30
   154dc:	0307d793          	srli	a5,a5,0x30
   154e0:	00f41923          	sh	a5,18(s0)
   154e4:	00e51683          	lh	a3,14(a0)
   154e8:	f406dee3          	bgez	a3,15444 <e113toe.isra.0+0x7c>
   154ec:	00040693          	mv	a3,s0
   154f0:	0006d603          	lhu	a2,0(a3)
   154f4:	00268693          	addi	a3,a3,2
   154f8:	f40616e3          	bnez	a2,15444 <e113toe.isra.0+0x7c>
   154fc:	fed71ae3          	bne	a4,a3,154f0 <e113toe.isra.0+0x128>
   15500:	ffff8737          	lui	a4,0xffff8
   15504:	00e7c7b3          	xor	a5,a5,a4
   15508:	00f41923          	sh	a5,18(s0)
   1550c:	f39ff06f          	j	15444 <e113toe.isra.0+0x7c>
   15510:	01040713          	addi	a4,s0,16
   15514:	00040793          	mv	a5,s0
   15518:	00278793          	addi	a5,a5,2
   1551c:	fe079f23          	sh	zero,-2(a5)
   15520:	fee79ce3          	bne	a5,a4,15518 <e113toe.isra.0+0x150>
   15524:	ffffc7b7          	lui	a5,0xffffc
   15528:	00f41823          	sh	a5,16(s0)
   1552c:	ffff87b7          	lui	a5,0xffff8
   15530:	fff7c793          	not	a5,a5
   15534:	00f41923          	sh	a5,18(s0)
   15538:	f0dff06f          	j	15444 <e113toe.isra.0+0x7c>

000000000001553c <_ldtoa_r>:
   1553c:	db010113          	addi	sp,sp,-592
   15540:	09100313          	li	t1,145
   15544:	04c13423          	sd	a2,72(sp)
   15548:	06053e03          	ld	t3,96(a0)
   1554c:	02031613          	slli	a2,t1,0x20
   15550:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   15554:	24813023          	sd	s0,576(sp)
   15558:	23413023          	sd	s4,544(sp)
   1555c:	21613823          	sd	s6,528(sp)
   15560:	24113423          	sd	ra,584(sp)
   15564:	22913c23          	sd	s1,568(sp)
   15568:	23213823          	sd	s2,560(sp)
   1556c:	23313423          	sd	s3,552(sp)
   15570:	21513c23          	sd	s5,536(sp)
   15574:	21713423          	sd	s7,520(sp)
   15578:	21813023          	sd	s8,512(sp)
   1557c:	1f913c23          	sd	s9,504(sp)
   15580:	1fa13823          	sd	s10,496(sp)
   15584:	1fb13423          	sd	s11,488(sp)
   15588:	04b13023          	sd	a1,64(sp)
   1558c:	18c13823          	sd	a2,400(sp)
   15590:	00e13423          	sd	a4,8(sp)
   15594:	00f13823          	sd	a5,16(sp)
   15598:	03113023          	sd	a7,32(sp)
   1559c:	00050a13          	mv	s4,a0
   155a0:	00068b13          	mv	s6,a3
   155a4:	00080413          	mv	s0,a6
   155a8:	020e0263          	beqz	t3,155cc <_ldtoa_r+0x90>
   155ac:	06852703          	lw	a4,104(a0)
   155b0:	00100793          	li	a5,1
   155b4:	000e0593          	mv	a1,t3
   155b8:	00e797bb          	sllw	a5,a5,a4
   155bc:	00ee2423          	sw	a4,8(t3)
   155c0:	00fe2623          	sw	a5,12(t3)
   155c4:	05c020ef          	jal	ra,17620 <_Bfree>
   155c8:	060a3023          	sd	zero,96(s4)
   155cc:	07010593          	addi	a1,sp,112
   155d0:	04010513          	addi	a0,sp,64
   155d4:	df5ff0ef          	jal	ra,153c8 <e113toe.isra.0>
   155d8:	08215683          	lhu	a3,130(sp)
   155dc:	000087b7          	lui	a5,0x8
   155e0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   155e4:	00f6f5b3          	and	a1,a3,a5
   155e8:	00f59e63          	bne	a1,a5,15604 <_ldtoa_r+0xc8>
   155ec:	07010793          	addi	a5,sp,112
   155f0:	08210613          	addi	a2,sp,130
   155f4:	0007d703          	lhu	a4,0(a5)
   155f8:	00278793          	addi	a5,a5,2
   155fc:	460718e3          	bnez	a4,1626c <_ldtoa_r+0xd30>
   15600:	fec79ae3          	bne	a5,a2,155f4 <_ldtoa_r+0xb8>
   15604:	00f6d693          	srli	a3,a3,0xf
   15608:	00d42023          	sw	a3,0(s0)
   1560c:	00300793          	li	a5,3
   15610:	12fb0ee3          	beq	s6,a5,15f4c <_ldtoa_r+0xa10>
   15614:	01400793          	li	a5,20
   15618:	00f13023          	sd	a5,0(sp)
   1561c:	440b1ce3          	bnez	s6,16274 <_ldtoa_r+0xd38>
   15620:	19412703          	lw	a4,404(sp)
   15624:	000087b7          	lui	a5,0x8
   15628:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1562c:	00e13c23          	sd	a4,24(sp)
   15630:	00f59e63          	bne	a1,a5,1564c <_ldtoa_r+0x110>
   15634:	07010793          	addi	a5,sp,112
   15638:	08210693          	addi	a3,sp,130
   1563c:	0007d703          	lhu	a4,0(a5)
   15640:	00278793          	addi	a5,a5,2
   15644:	180710e3          	bnez	a4,15fc4 <_ldtoa_r+0xa88>
   15648:	fed79ae3          	bne	a5,a3,1563c <_ldtoa_r+0x100>
   1564c:	09000793          	li	a5,144
   15650:	18f12a23          	sw	a5,404(sp)
   15654:	09010713          	addi	a4,sp,144
   15658:	07010793          	addi	a5,sp,112
   1565c:	08410613          	addi	a2,sp,132
   15660:	0007d683          	lhu	a3,0(a5)
   15664:	00278793          	addi	a5,a5,2
   15668:	00270713          	addi	a4,a4,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd3422>
   1566c:	fed71f23          	sh	a3,-2(a4)
   15670:	fec798e3          	bne	a5,a2,15660 <_ldtoa_r+0x124>
   15674:	0a215603          	lhu	a2,162(sp)
   15678:	00000913          	li	s2,0
   1567c:	00f65793          	srli	a5,a2,0xf
   15680:	60079a63          	bnez	a5,15c94 <_ldtoa_r+0x758>
   15684:	00000693          	li	a3,0
   15688:	0b010793          	addi	a5,sp,176
   1568c:	0000c717          	auipc	a4,0xc
   15690:	7b470713          	addi	a4,a4,1972 # 21e40 <eone>
   15694:	0c410d93          	addi	s11,sp,196
   15698:	0080006f          	j	156a0 <_ldtoa_r+0x164>
   1569c:	00075683          	lhu	a3,0(a4)
   156a0:	00278793          	addi	a5,a5,2
   156a4:	fed79f23          	sh	a3,-2(a5)
   156a8:	00270713          	addi	a4,a4,2
   156ac:	ffb798e3          	bne	a5,s11,1569c <_ldtoa_r+0x160>
   156b0:	16060a63          	beqz	a2,15824 <_ldtoa_r+0x2e8>
   156b4:	000087b7          	lui	a5,0x8
   156b8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   156bc:	56f60ae3          	beq	a2,a5,16430 <_ldtoa_r+0xef4>
   156c0:	0a011783          	lh	a5,160(sp)
   156c4:	5e07d8e3          	bgez	a5,164b4 <_ldtoa_r+0xf78>
   156c8:	09010593          	addi	a1,sp,144
   156cc:	0000c517          	auipc	a0,0xc
   156d0:	77450513          	addi	a0,a0,1908 # 21e40 <eone>
   156d4:	bc5fe0ef          	jal	ra,14298 <ecmp>
   156d8:	16050263          	beqz	a0,1583c <_ldtoa_r+0x300>
   156dc:	100544e3          	bltz	a0,15fe4 <_ldtoa_r+0xaa8>
   156e0:	0a215783          	lhu	a5,162(sp)
   156e4:	66079ae3          	bnez	a5,16558 <_ldtoa_r+0x101c>
   156e8:	0a011783          	lh	a5,160(sp)
   156ec:	00000493          	li	s1,0
   156f0:	19010993          	addi	s3,sp,400
   156f4:	0207c663          	bltz	a5,15720 <_ldtoa_r+0x1e4>
   156f8:	0000d417          	auipc	s0,0xd
   156fc:	85040413          	addi	s0,s0,-1968 # 21f48 <etens+0xf0>
   15700:	09010613          	addi	a2,sp,144
   15704:	00098693          	mv	a3,s3
   15708:	00060593          	mv	a1,a2
   1570c:	00040513          	mv	a0,s0
   15710:	a50ff0ef          	jal	ra,14960 <emul>
   15714:	0a011783          	lh	a5,160(sp)
   15718:	fff4849b          	addiw	s1,s1,-1
   1571c:	fe07d2e3          	bgez	a5,15700 <_ldtoa_r+0x1c4>
   15720:	0f010413          	addi	s0,sp,240
   15724:	10810b93          	addi	s7,sp,264
   15728:	00040713          	mv	a4,s0
   1572c:	09010793          	addi	a5,sp,144
   15730:	0a410613          	addi	a2,sp,164
   15734:	0007d683          	lhu	a3,0(a5)
   15738:	00278793          	addi	a5,a5,2
   1573c:	00270713          	addi	a4,a4,2
   15740:	fed71f23          	sh	a3,-2(a4)
   15744:	fec798e3          	bne	a5,a2,15734 <_ldtoa_r+0x1f8>
   15748:	00000693          	li	a3,0
   1574c:	0b010793          	addi	a5,sp,176
   15750:	0000c717          	auipc	a4,0xc
   15754:	6f070713          	addi	a4,a4,1776 # 21e40 <eone>
   15758:	0080006f          	j	15760 <_ldtoa_r+0x224>
   1575c:	00075683          	lhu	a3,0(a4)
   15760:	00278793          	addi	a5,a5,2
   15764:	fed79f23          	sh	a3,-2(a5)
   15768:	00270713          	addi	a4,a4,2
   1576c:	ffb798e3          	bne	a5,s11,1575c <_ldtoa_r+0x220>
   15770:	fffffab7          	lui	s5,0xfffff
   15774:	0000cc17          	auipc	s8,0xc
   15778:	6e4c0c13          	addi	s8,s8,1764 # 21e58 <etens>
   1577c:	0000cc97          	auipc	s9,0xc
   15780:	7e4c8c93          	addi	s9,s9,2020 # 21f60 <emtens>
   15784:	0000cd97          	auipc	s11,0xc
   15788:	6bcd8d93          	addi	s11,s11,1724 # 21e40 <eone>
   1578c:	0000cd17          	auipc	s10,0xc
   15790:	7bcd0d13          	addi	s10,s10,1980 # 21f48 <etens+0xf0>
   15794:	00c0006f          	j	157a0 <_ldtoa_r+0x264>
   15798:	014c8c93          	addi	s9,s9,20
   1579c:	014c0c13          	addi	s8,s8,20
   157a0:	00040593          	mv	a1,s0
   157a4:	000d8513          	mv	a0,s11
   157a8:	af1fe0ef          	jal	ra,14298 <ecmp>
   157ac:	00050793          	mv	a5,a0
   157b0:	00040593          	mv	a1,s0
   157b4:	000c8513          	mv	a0,s9
   157b8:	04f05663          	blez	a5,15804 <_ldtoa_r+0x2c8>
   157bc:	addfe0ef          	jal	ra,14298 <ecmp>
   157c0:	00050793          	mv	a5,a0
   157c4:	00098693          	mv	a3,s3
   157c8:	00040613          	mv	a2,s0
   157cc:	00040593          	mv	a1,s0
   157d0:	000c0513          	mv	a0,s8
   157d4:	0207c063          	bltz	a5,157f4 <_ldtoa_r+0x2b8>
   157d8:	988ff0ef          	jal	ra,14960 <emul>
   157dc:	0b010613          	addi	a2,sp,176
   157e0:	00098693          	mv	a3,s3
   157e4:	00060593          	mv	a1,a2
   157e8:	000c0513          	mv	a0,s8
   157ec:	974ff0ef          	jal	ra,14960 <emul>
   157f0:	009a84bb          	addw	s1,s5,s1
   157f4:	01fad79b          	srliw	a5,s5,0x1f
   157f8:	015787bb          	addw	a5,a5,s5
   157fc:	4017da9b          	sraiw	s5,a5,0x1
   15800:	f9ac1ce3          	bne	s8,s10,15798 <_ldtoa_r+0x25c>
   15804:	0b010613          	addi	a2,sp,176
   15808:	00098693          	mv	a3,s3
   1580c:	0000c597          	auipc	a1,0xc
   15810:	63458593          	addi	a1,a1,1588 # 21e40 <eone>
   15814:	00060513          	mv	a0,a2
   15818:	e0cff0ef          	jal	ra,14e24 <ediv>
   1581c:	15010a93          	addi	s5,sp,336
   15820:	0300006f          	j	15850 <_ldtoa_r+0x314>
   15824:	09010793          	addi	a5,sp,144
   15828:	0a210693          	addi	a3,sp,162
   1582c:	0007d703          	lhu	a4,0(a5)
   15830:	00278793          	addi	a5,a5,2
   15834:	e8071ae3          	bnez	a4,156c8 <_ldtoa_r+0x18c>
   15838:	fef69ae3          	bne	a3,a5,1582c <_ldtoa_r+0x2f0>
   1583c:	00000493          	li	s1,0
   15840:	15010a93          	addi	s5,sp,336
   15844:	19010993          	addi	s3,sp,400
   15848:	0f010413          	addi	s0,sp,240
   1584c:	10810b93          	addi	s7,sp,264
   15850:	00040593          	mv	a1,s0
   15854:	0b010513          	addi	a0,sp,176
   15858:	989fe0ef          	jal	ra,141e0 <emovi>
   1585c:	0b010713          	addi	a4,sp,176
   15860:	00040793          	mv	a5,s0
   15864:	0007d683          	lhu	a3,0(a5)
   15868:	00278793          	addi	a5,a5,2
   1586c:	00270713          	addi	a4,a4,2
   15870:	fed71f23          	sh	a3,-2(a4)
   15874:	ff7798e3          	bne	a5,s7,15864 <_ldtoa_r+0x328>
   15878:	00040593          	mv	a1,s0
   1587c:	09010513          	addi	a0,sp,144
   15880:	0c011423          	sh	zero,200(sp)
   15884:	95dfe0ef          	jal	ra,141e0 <emovi>
   15888:	09010793          	addi	a5,sp,144
   1588c:	00045703          	lhu	a4,0(s0)
   15890:	00240413          	addi	s0,s0,2
   15894:	00278793          	addi	a5,a5,2
   15898:	fee79f23          	sh	a4,-2(a5)
   1589c:	ff7418e3          	bne	s0,s7,1588c <_ldtoa_r+0x350>
   158a0:	00098613          	mv	a2,s3
   158a4:	09010593          	addi	a1,sp,144
   158a8:	0b010513          	addi	a0,sp,176
   158ac:	0a011423          	sh	zero,168(sp)
   158b0:	f4dfe0ef          	jal	ra,147fc <eiremain>
   158b4:	1dc15c03          	lhu	s8,476(sp)
   158b8:	1c0c1463          	bnez	s8,15a80 <_ldtoa_r+0x544>
   158bc:	0000c417          	auipc	s0,0xc
   158c0:	56c40413          	addi	s0,s0,1388 # 21e28 <ezero>
   158c4:	0a810d13          	addi	s10,sp,168
   158c8:	09210d93          	addi	s11,sp,146
   158cc:	0d210c93          	addi	s9,sp,210
   158d0:	00040593          	mv	a1,s0
   158d4:	09010513          	addi	a0,sp,144
   158d8:	9c1fe0ef          	jal	ra,14298 <ecmp>
   158dc:	1a050263          	beqz	a0,15a80 <_ldtoa_r+0x544>
   158e0:	00000713          	li	a4,0
   158e4:	000d0693          	mv	a3,s10
   158e8:	01c0006f          	j	15904 <_ldtoa_r+0x3c8>
   158ec:	0017171b          	slliw	a4,a4,0x1
   158f0:	00f69023          	sh	a5,0(a3)
   158f4:	03071713          	slli	a4,a4,0x30
   158f8:	ffe68693          	addi	a3,a3,-2
   158fc:	03075713          	srli	a4,a4,0x30
   15900:	05b68263          	beq	a3,s11,15944 <_ldtoa_r+0x408>
   15904:	0006d783          	lhu	a5,0(a3)
   15908:	00f7d613          	srli	a2,a5,0xf
   1590c:	0017979b          	slliw	a5,a5,0x1
   15910:	00060463          	beqz	a2,15918 <_ldtoa_r+0x3dc>
   15914:	00176713          	ori	a4,a4,1
   15918:	03079793          	slli	a5,a5,0x30
   1591c:	0307d793          	srli	a5,a5,0x30
   15920:	00277613          	andi	a2,a4,2
   15924:	0017e593          	ori	a1,a5,1
   15928:	fc0602e3          	beqz	a2,158ec <_ldtoa_r+0x3b0>
   1592c:	0017171b          	slliw	a4,a4,0x1
   15930:	00b69023          	sh	a1,0(a3)
   15934:	03071713          	slli	a4,a4,0x30
   15938:	ffe68693          	addi	a3,a3,-2
   1593c:	03075713          	srli	a4,a4,0x30
   15940:	fdb692e3          	bne	a3,s11,15904 <_ldtoa_r+0x3c8>
   15944:	0d010713          	addi	a4,sp,208
   15948:	09010793          	addi	a5,sp,144
   1594c:	0007d683          	lhu	a3,0(a5)
   15950:	00278793          	addi	a5,a5,2
   15954:	00270713          	addi	a4,a4,2
   15958:	fed71f23          	sh	a3,-2(a4)
   1595c:	ffa798e3          	bne	a5,s10,1594c <_ldtoa_r+0x410>
   15960:	0e011423          	sh	zero,232(sp)
   15964:	00000713          	li	a4,0
   15968:	0e810693          	addi	a3,sp,232
   1596c:	01c0006f          	j	15988 <_ldtoa_r+0x44c>
   15970:	0017171b          	slliw	a4,a4,0x1
   15974:	00f69023          	sh	a5,0(a3)
   15978:	03071713          	slli	a4,a4,0x30
   1597c:	ffe68693          	addi	a3,a3,-2
   15980:	03075713          	srli	a4,a4,0x30
   15984:	05968263          	beq	a3,s9,159c8 <_ldtoa_r+0x48c>
   15988:	0006d783          	lhu	a5,0(a3)
   1598c:	00f7d613          	srli	a2,a5,0xf
   15990:	0017979b          	slliw	a5,a5,0x1
   15994:	00060463          	beqz	a2,1599c <_ldtoa_r+0x460>
   15998:	00176713          	ori	a4,a4,1
   1599c:	03079793          	slli	a5,a5,0x30
   159a0:	0307d793          	srli	a5,a5,0x30
   159a4:	00277613          	andi	a2,a4,2
   159a8:	0017e593          	ori	a1,a5,1
   159ac:	fc0602e3          	beqz	a2,15970 <_ldtoa_r+0x434>
   159b0:	0017171b          	slliw	a4,a4,0x1
   159b4:	00b69023          	sh	a1,0(a3)
   159b8:	03071713          	slli	a4,a4,0x30
   159bc:	ffe68693          	addi	a3,a3,-2
   159c0:	03075713          	srli	a4,a4,0x30
   159c4:	fd9692e3          	bne	a3,s9,15988 <_ldtoa_r+0x44c>
   159c8:	00000713          	li	a4,0
   159cc:	0e810693          	addi	a3,sp,232
   159d0:	01c0006f          	j	159ec <_ldtoa_r+0x4b0>
   159d4:	0017171b          	slliw	a4,a4,0x1
   159d8:	00f69023          	sh	a5,0(a3)
   159dc:	03071713          	slli	a4,a4,0x30
   159e0:	ffe68693          	addi	a3,a3,-2
   159e4:	03075713          	srli	a4,a4,0x30
   159e8:	05968263          	beq	a3,s9,15a2c <_ldtoa_r+0x4f0>
   159ec:	0006d783          	lhu	a5,0(a3)
   159f0:	00f7d613          	srli	a2,a5,0xf
   159f4:	0017979b          	slliw	a5,a5,0x1
   159f8:	00060463          	beqz	a2,15a00 <_ldtoa_r+0x4c4>
   159fc:	00176713          	ori	a4,a4,1
   15a00:	03079793          	slli	a5,a5,0x30
   15a04:	0307d793          	srli	a5,a5,0x30
   15a08:	00277613          	andi	a2,a4,2
   15a0c:	0017e593          	ori	a1,a5,1
   15a10:	fc0602e3          	beqz	a2,159d4 <_ldtoa_r+0x498>
   15a14:	0017171b          	slliw	a4,a4,0x1
   15a18:	00b69023          	sh	a1,0(a3)
   15a1c:	03071713          	slli	a4,a4,0x30
   15a20:	ffe68693          	addi	a3,a3,-2
   15a24:	03075713          	srli	a4,a4,0x30
   15a28:	fd9692e3          	bne	a3,s9,159ec <_ldtoa_r+0x4b0>
   15a2c:	00000613          	li	a2,0
   15a30:	000d0693          	mv	a3,s10
   15a34:	0e810713          	addi	a4,sp,232
   15a38:	0006d583          	lhu	a1,0(a3)
   15a3c:	00075783          	lhu	a5,0(a4)
   15a40:	ffe68693          	addi	a3,a3,-2
   15a44:	ffe70713          	addi	a4,a4,-2
   15a48:	00b787b3          	add	a5,a5,a1
   15a4c:	00c787b3          	add	a5,a5,a2
   15a50:	0107d613          	srli	a2,a5,0x10
   15a54:	00f69123          	sh	a5,2(a3)
   15a58:	00167613          	andi	a2,a2,1
   15a5c:	fd971ee3          	bne	a4,s9,15a38 <_ldtoa_r+0x4fc>
   15a60:	00098613          	mv	a2,s3
   15a64:	09010593          	addi	a1,sp,144
   15a68:	0b010513          	addi	a0,sp,176
   15a6c:	d91fe0ef          	jal	ra,147fc <eiremain>
   15a70:	1dc15783          	lhu	a5,476(sp)
   15a74:	fff4849b          	addiw	s1,s1,-1
   15a78:	e4078ce3          	beqz	a5,158d0 <_ldtoa_r+0x394>
   15a7c:	00078c13          	mv	s8,a5
   15a80:	02d00793          	li	a5,45
   15a84:	00091463          	bnez	s2,15a8c <_ldtoa_r+0x550>
   15a88:	02000793          	li	a5,32
   15a8c:	14f10823          	sb	a5,336(sp)
   15a90:	00300713          	li	a4,3
   15a94:	00013783          	ld	a5,0(sp)
   15a98:	00eb1463          	bne	s6,a4,15aa0 <_ldtoa_r+0x564>
   15a9c:	009787bb          	addw	a5,a5,s1
   15aa0:	02a00713          	li	a4,42
   15aa4:	0007841b          	sext.w	s0,a5
   15aa8:	00f75463          	bge	a4,a5,15ab0 <_ldtoa_r+0x574>
   15aac:	02a00413          	li	s0,42
   15ab0:	00a00713          	li	a4,10
   15ab4:	4eec0263          	beq	s8,a4,15f98 <_ldtoa_r+0xa5c>
   15ab8:	030c0c1b          	addiw	s8,s8,48
   15abc:	02e00713          	li	a4,46
   15ac0:	158108a3          	sb	s8,337(sp)
   15ac4:	14e10923          	sb	a4,338(sp)
   15ac8:	1e07c263          	bltz	a5,15cac <_ldtoa_r+0x770>
   15acc:	15310913          	addi	s2,sp,339
   15ad0:	00000b93          	li	s7,0
   15ad4:	0d010c13          	addi	s8,sp,208
   15ad8:	0a810d13          	addi	s10,sp,168
   15adc:	09210d93          	addi	s11,sp,146
   15ae0:	0d210c93          	addi	s9,sp,210
   15ae4:	00000713          	li	a4,0
   15ae8:	000d0693          	mv	a3,s10
   15aec:	01c0006f          	j	15b08 <_ldtoa_r+0x5cc>
   15af0:	0017171b          	slliw	a4,a4,0x1
   15af4:	00f69023          	sh	a5,0(a3)
   15af8:	03071713          	slli	a4,a4,0x30
   15afc:	ffe68693          	addi	a3,a3,-2
   15b00:	03075713          	srli	a4,a4,0x30
   15b04:	05b68263          	beq	a3,s11,15b48 <_ldtoa_r+0x60c>
   15b08:	0006d783          	lhu	a5,0(a3)
   15b0c:	00f7d613          	srli	a2,a5,0xf
   15b10:	0017979b          	slliw	a5,a5,0x1
   15b14:	00060463          	beqz	a2,15b1c <_ldtoa_r+0x5e0>
   15b18:	00176713          	ori	a4,a4,1
   15b1c:	03079793          	slli	a5,a5,0x30
   15b20:	0307d793          	srli	a5,a5,0x30
   15b24:	00277613          	andi	a2,a4,2
   15b28:	0017e593          	ori	a1,a5,1
   15b2c:	fc0602e3          	beqz	a2,15af0 <_ldtoa_r+0x5b4>
   15b30:	0017171b          	slliw	a4,a4,0x1
   15b34:	00b69023          	sh	a1,0(a3)
   15b38:	03071713          	slli	a4,a4,0x30
   15b3c:	ffe68693          	addi	a3,a3,-2
   15b40:	03075713          	srli	a4,a4,0x30
   15b44:	fdb692e3          	bne	a3,s11,15b08 <_ldtoa_r+0x5cc>
   15b48:	000c0713          	mv	a4,s8
   15b4c:	09010793          	addi	a5,sp,144
   15b50:	0007d683          	lhu	a3,0(a5)
   15b54:	00278793          	addi	a5,a5,2
   15b58:	00270713          	addi	a4,a4,2
   15b5c:	fed71f23          	sh	a3,-2(a4)
   15b60:	ffa798e3          	bne	a5,s10,15b50 <_ldtoa_r+0x614>
   15b64:	0e011423          	sh	zero,232(sp)
   15b68:	00000713          	li	a4,0
   15b6c:	0e810693          	addi	a3,sp,232
   15b70:	01c0006f          	j	15b8c <_ldtoa_r+0x650>
   15b74:	0017171b          	slliw	a4,a4,0x1
   15b78:	00f69023          	sh	a5,0(a3)
   15b7c:	03071713          	slli	a4,a4,0x30
   15b80:	ffe68693          	addi	a3,a3,-2
   15b84:	03075713          	srli	a4,a4,0x30
   15b88:	05968263          	beq	a3,s9,15bcc <_ldtoa_r+0x690>
   15b8c:	0006d783          	lhu	a5,0(a3)
   15b90:	00f7d613          	srli	a2,a5,0xf
   15b94:	0017979b          	slliw	a5,a5,0x1
   15b98:	00060463          	beqz	a2,15ba0 <_ldtoa_r+0x664>
   15b9c:	00176713          	ori	a4,a4,1
   15ba0:	03079793          	slli	a5,a5,0x30
   15ba4:	0307d793          	srli	a5,a5,0x30
   15ba8:	00277613          	andi	a2,a4,2
   15bac:	0017e593          	ori	a1,a5,1
   15bb0:	fc0602e3          	beqz	a2,15b74 <_ldtoa_r+0x638>
   15bb4:	0017171b          	slliw	a4,a4,0x1
   15bb8:	00b69023          	sh	a1,0(a3)
   15bbc:	03071713          	slli	a4,a4,0x30
   15bc0:	ffe68693          	addi	a3,a3,-2
   15bc4:	03075713          	srli	a4,a4,0x30
   15bc8:	fd9692e3          	bne	a3,s9,15b8c <_ldtoa_r+0x650>
   15bcc:	00000713          	li	a4,0
   15bd0:	0e810693          	addi	a3,sp,232
   15bd4:	01c0006f          	j	15bf0 <_ldtoa_r+0x6b4>
   15bd8:	0017171b          	slliw	a4,a4,0x1
   15bdc:	00f69023          	sh	a5,0(a3)
   15be0:	03071713          	slli	a4,a4,0x30
   15be4:	ffe68693          	addi	a3,a3,-2
   15be8:	03075713          	srli	a4,a4,0x30
   15bec:	05968263          	beq	a3,s9,15c30 <_ldtoa_r+0x6f4>
   15bf0:	0006d783          	lhu	a5,0(a3)
   15bf4:	00f7d613          	srli	a2,a5,0xf
   15bf8:	0017979b          	slliw	a5,a5,0x1
   15bfc:	00060463          	beqz	a2,15c04 <_ldtoa_r+0x6c8>
   15c00:	00176713          	ori	a4,a4,1
   15c04:	03079793          	slli	a5,a5,0x30
   15c08:	0307d793          	srli	a5,a5,0x30
   15c0c:	00277613          	andi	a2,a4,2
   15c10:	0017e593          	ori	a1,a5,1
   15c14:	fc0602e3          	beqz	a2,15bd8 <_ldtoa_r+0x69c>
   15c18:	0017171b          	slliw	a4,a4,0x1
   15c1c:	00b69023          	sh	a1,0(a3)
   15c20:	03071713          	slli	a4,a4,0x30
   15c24:	ffe68693          	addi	a3,a3,-2
   15c28:	03075713          	srli	a4,a4,0x30
   15c2c:	fd9692e3          	bne	a3,s9,15bf0 <_ldtoa_r+0x6b4>
   15c30:	00000613          	li	a2,0
   15c34:	000d0693          	mv	a3,s10
   15c38:	0e810713          	addi	a4,sp,232
   15c3c:	0006d583          	lhu	a1,0(a3)
   15c40:	00075783          	lhu	a5,0(a4)
   15c44:	ffe68693          	addi	a3,a3,-2
   15c48:	ffe70713          	addi	a4,a4,-2
   15c4c:	00b787b3          	add	a5,a5,a1
   15c50:	00c787b3          	add	a5,a5,a2
   15c54:	0107d613          	srli	a2,a5,0x10
   15c58:	00f69123          	sh	a5,2(a3)
   15c5c:	00167613          	andi	a2,a2,1
   15c60:	fd971ee3          	bne	a4,s9,15c3c <_ldtoa_r+0x700>
   15c64:	00098613          	mv	a2,s3
   15c68:	09010593          	addi	a1,sp,144
   15c6c:	0b010513          	addi	a0,sp,176
   15c70:	b8dfe0ef          	jal	ra,147fc <eiremain>
   15c74:	1dc15603          	lhu	a2,476(sp)
   15c78:	00190793          	addi	a5,s2,1
   15c7c:	001b8b9b          	addiw	s7,s7,1
   15c80:	0306071b          	addiw	a4,a2,48
   15c84:	fee78fa3          	sb	a4,-1(a5)
   15c88:	03744863          	blt	s0,s7,15cb8 <_ldtoa_r+0x77c>
   15c8c:	00078913          	mv	s2,a5
   15c90:	e55ff06f          	j	15ae4 <_ldtoa_r+0x5a8>
   15c94:	03161613          	slli	a2,a2,0x31
   15c98:	03165613          	srli	a2,a2,0x31
   15c9c:	000107b7          	lui	a5,0x10
   15ca0:	0ac11123          	sh	a2,162(sp)
   15ca4:	fff78913          	addi	s2,a5,-1 # ffff <register_fini-0xb1>
   15ca8:	9ddff06f          	j	15684 <_ldtoa_r+0x148>
   15cac:	1dc15603          	lhu	a2,476(sp)
   15cb0:	15210913          	addi	s2,sp,338
   15cb4:	15310793          	addi	a5,sp,339
   15cb8:	00400713          	li	a4,4
   15cbc:	04c75e63          	bge	a4,a2,15d18 <_ldtoa_r+0x7dc>
   15cc0:	00500713          	li	a4,5
   15cc4:	02e606e3          	beq	a2,a4,164f0 <_ldtoa_r+0xfb4>
   15cc8:	ffe7c703          	lbu	a4,-2(a5)
   15ccc:	ffe78613          	addi	a2,a5,-2
   15cd0:	07f77593          	andi	a1,a4,127
   15cd4:	00058713          	mv	a4,a1
   15cd8:	02044a63          	bltz	s0,15d0c <_ldtoa_r+0x7d0>
   15cdc:	02e00513          	li	a0,46
   15ce0:	03800813          	li	a6,56
   15ce4:	03000893          	li	a7,48
   15ce8:	00070793          	mv	a5,a4
   15cec:	76a58863          	beq	a1,a0,1645c <_ldtoa_r+0xf20>
   15cf0:	78f85463          	bge	a6,a5,16478 <_ldtoa_r+0xf3c>
   15cf4:	fff64783          	lbu	a5,-1(a2)
   15cf8:	01160023          	sb	a7,0(a2)
   15cfc:	fff60613          	addi	a2,a2,-1
   15d00:	07f7f593          	andi	a1,a5,127
   15d04:	00058793          	mv	a5,a1
   15d08:	fe5ff06f          	j	15cec <_ldtoa_r+0x7b0>
   15d0c:	03100713          	li	a4,49
   15d10:	fee78f23          	sb	a4,-2(a5)
   15d14:	0014849b          	addiw	s1,s1,1
   15d18:	00048613          	mv	a2,s1
   15d1c:	0000c597          	auipc	a1,0xc
   15d20:	0fc58593          	addi	a1,a1,252 # 21e18 <zeroes.0+0x68>
   15d24:	00090513          	mv	a0,s2
   15d28:	4e1020ef          	jal	ra,18a08 <sprintf>
   15d2c:	08215783          	lhu	a5,130(sp)
   15d30:	01813703          	ld	a4,24(sp)
   15d34:	1a912023          	sw	s1,416(sp)
   15d38:	fff7c793          	not	a5,a5
   15d3c:	18e12a23          	sw	a4,404(sp)
   15d40:	03179713          	slli	a4,a5,0x31
   15d44:	18070463          	beqz	a4,15ecc <_ldtoa_r+0x990>
   15d48:	01013683          	ld	a3,16(sp)
   15d4c:	15014703          	lbu	a4,336(sp)
   15d50:	0014879b          	addiw	a5,s1,1
   15d54:	00f6a023          	sw	a5,0(a3)
   15d58:	000a8793          	mv	a5,s5
   15d5c:	02070a63          	beqz	a4,15d90 <_ldtoa_r+0x854>
   15d60:	02e00693          	li	a3,46
   15d64:	20d70463          	beq	a4,a3,15f6c <_ldtoa_r+0xa30>
   15d68:	0017c703          	lbu	a4,1(a5)
   15d6c:	00178793          	addi	a5,a5,1
   15d70:	fe071ae3          	bnez	a4,15d64 <_ldtoa_r+0x828>
   15d74:	04500693          	li	a3,69
   15d78:	00fae663          	bltu	s5,a5,15d84 <_ldtoa_r+0x848>
   15d7c:	0140006f          	j	15d90 <_ldtoa_r+0x854>
   15d80:	01578863          	beq	a5,s5,15d90 <_ldtoa_r+0x854>
   15d84:	fff7c703          	lbu	a4,-1(a5)
   15d88:	fff78793          	addi	a5,a5,-1
   15d8c:	fed71ae3          	bne	a4,a3,15d80 <_ldtoa_r+0x844>
   15d90:	00078023          	sb	zero,0(a5)
   15d94:	000a8793          	mv	a5,s5
   15d98:	02000693          	li	a3,32
   15d9c:	02d00613          	li	a2,45
   15da0:	0007c703          	lbu	a4,0(a5)
   15da4:	00d70463          	beq	a4,a3,15dac <_ldtoa_r+0x870>
   15da8:	00c71663          	bne	a4,a2,15db4 <_ldtoa_r+0x878>
   15dac:	00178793          	addi	a5,a5,1
   15db0:	ff1ff06f          	j	15da0 <_ldtoa_r+0x864>
   15db4:	000a8413          	mv	s0,s5
   15db8:	00c0006f          	j	15dc4 <_ldtoa_r+0x888>
   15dbc:	0007c703          	lbu	a4,0(a5)
   15dc0:	00068413          	mv	s0,a3
   15dc4:	00e40023          	sb	a4,0(s0)
   15dc8:	00140693          	addi	a3,s0,1
   15dcc:	00178793          	addi	a5,a5,1
   15dd0:	fe0716e3          	bnez	a4,15dbc <_ldtoa_r+0x880>
   15dd4:	00200793          	li	a5,2
   15dd8:	fff44703          	lbu	a4,-1(s0)
   15ddc:	10fb0e63          	beq	s6,a5,15ef8 <_ldtoa_r+0x9bc>
   15de0:	00013683          	ld	a3,0(sp)
   15de4:	00068793          	mv	a5,a3
   15de8:	0096d463          	bge	a3,s1,15df0 <_ldtoa_r+0x8b4>
   15dec:	00048793          	mv	a5,s1
   15df0:	03000613          	li	a2,48
   15df4:	0007869b          	sext.w	a3,a5
   15df8:	02c71663          	bne	a4,a2,15e24 <_ldtoa_r+0x8e8>
   15dfc:	415407b3          	sub	a5,s0,s5
   15e00:	02f6d263          	bge	a3,a5,15e24 <_ldtoa_r+0x8e8>
   15e04:	03000613          	li	a2,48
   15e08:	0080006f          	j	15e10 <_ldtoa_r+0x8d4>
   15e0c:	00e6dc63          	bge	a3,a4,15e24 <_ldtoa_r+0x8e8>
   15e10:	ffe44783          	lbu	a5,-2(s0)
   15e14:	fe040fa3          	sb	zero,-1(s0)
   15e18:	fff40413          	addi	s0,s0,-1
   15e1c:	41540733          	sub	a4,s0,s5
   15e20:	fec786e3          	beq	a5,a2,15e0c <_ldtoa_r+0x8d0>
   15e24:	00300793          	li	a5,3
   15e28:	0efb0463          	beq	s6,a5,15f10 <_ldtoa_r+0x9d4>
   15e2c:	00813783          	ld	a5,8(sp)
   15e30:	060a2423          	sw	zero,104(s4)
   15e34:	0097891b          	addiw	s2,a5,9
   15e38:	01f00793          	li	a5,31
   15e3c:	1127f463          	bgeu	a5,s2,15f44 <_ldtoa_r+0xa08>
   15e40:	00100693          	li	a3,1
   15e44:	00400793          	li	a5,4
   15e48:	0017979b          	slliw	a5,a5,0x1
   15e4c:	01c78713          	addi	a4,a5,28
   15e50:	0006859b          	sext.w	a1,a3
   15e54:	0016869b          	addiw	a3,a3,1
   15e58:	fee978e3          	bgeu	s2,a4,15e48 <_ldtoa_r+0x90c>
   15e5c:	06ba2423          	sw	a1,104(s4)
   15e60:	000a0513          	mv	a0,s4
   15e64:	714010ef          	jal	ra,17578 <_Balloc>
   15e68:	06aa3023          	sd	a0,96(s4)
   15e6c:	000a8593          	mv	a1,s5
   15e70:	00050493          	mv	s1,a0
   15e74:	695020ef          	jal	ra,18d08 <strcpy>
   15e78:	02013703          	ld	a4,32(sp)
   15e7c:	00070863          	beqz	a4,15e8c <_ldtoa_r+0x950>
   15e80:	415407b3          	sub	a5,s0,s5
   15e84:	00f487b3          	add	a5,s1,a5
   15e88:	00f73023          	sd	a5,0(a4)
   15e8c:	24813083          	ld	ra,584(sp)
   15e90:	24013403          	ld	s0,576(sp)
   15e94:	23013903          	ld	s2,560(sp)
   15e98:	22813983          	ld	s3,552(sp)
   15e9c:	22013a03          	ld	s4,544(sp)
   15ea0:	21813a83          	ld	s5,536(sp)
   15ea4:	21013b03          	ld	s6,528(sp)
   15ea8:	20813b83          	ld	s7,520(sp)
   15eac:	20013c03          	ld	s8,512(sp)
   15eb0:	1f813c83          	ld	s9,504(sp)
   15eb4:	1f013d03          	ld	s10,496(sp)
   15eb8:	1e813d83          	ld	s11,488(sp)
   15ebc:	00048513          	mv	a0,s1
   15ec0:	23813483          	ld	s1,568(sp)
   15ec4:	25010113          	addi	sp,sp,592
   15ec8:	00008067          	ret
   15ecc:	07010793          	addi	a5,sp,112
   15ed0:	08210693          	addi	a3,sp,130
   15ed4:	0007d703          	lhu	a4,0(a5)
   15ed8:	00278793          	addi	a5,a5,2
   15edc:	5a071463          	bnez	a4,16484 <_ldtoa_r+0xf48>
   15ee0:	fed79ae3          	bne	a5,a3,15ed4 <_ldtoa_r+0x998>
   15ee4:	01013703          	ld	a4,16(sp)
   15ee8:	000027b7          	lui	a5,0x2
   15eec:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   15ef0:	00f72023          	sw	a5,0(a4)
   15ef4:	ea1ff06f          	j	15d94 <_ldtoa_r+0x858>
   15ef8:	03000793          	li	a5,48
   15efc:	f2f718e3          	bne	a4,a5,15e2c <_ldtoa_r+0x8f0>
   15f00:	415407b3          	sub	a5,s0,s5
   15f04:	00100693          	li	a3,1
   15f08:	eef6cee3          	blt	a3,a5,15e04 <_ldtoa_r+0x8c8>
   15f0c:	f21ff06f          	j	15e2c <_ldtoa_r+0x8f0>
   15f10:	00013783          	ld	a5,0(sp)
   15f14:	009784bb          	addw	s1,a5,s1
   15f18:	4e04c663          	bltz	s1,16404 <_ldtoa_r+0xec8>
   15f1c:	01013783          	ld	a5,16(sp)
   15f20:	00813703          	ld	a4,8(sp)
   15f24:	0007a783          	lw	a5,0(a5)
   15f28:	00e787bb          	addw	a5,a5,a4
   15f2c:	00f13423          	sd	a5,8(sp)
   15f30:	00813783          	ld	a5,8(sp)
   15f34:	060a2423          	sw	zero,104(s4)
   15f38:	0037891b          	addiw	s2,a5,3
   15f3c:	01f00793          	li	a5,31
   15f40:	f127e0e3          	bltu	a5,s2,15e40 <_ldtoa_r+0x904>
   15f44:	00000593          	li	a1,0
   15f48:	f19ff06f          	j	15e60 <_ldtoa_r+0x924>
   15f4c:	00813783          	ld	a5,8(sp)
   15f50:	02a00713          	li	a4,42
   15f54:	00078b93          	mv	s7,a5
   15f58:	00f75463          	bge	a4,a5,15f60 <_ldtoa_r+0xa24>
   15f5c:	02a00b93          	li	s7,42
   15f60:	000b879b          	sext.w	a5,s7
   15f64:	00f13023          	sd	a5,0(sp)
   15f68:	eb8ff06f          	j	15620 <_ldtoa_r+0xe4>
   15f6c:	0007c703          	lbu	a4,0(a5)
   15f70:	e00702e3          	beqz	a4,15d74 <_ldtoa_r+0x838>
   15f74:	0017c703          	lbu	a4,1(a5)
   15f78:	00178793          	addi	a5,a5,1
   15f7c:	fee78fa3          	sb	a4,-1(a5)
   15f80:	de070ae3          	beqz	a4,15d74 <_ldtoa_r+0x838>
   15f84:	0017c703          	lbu	a4,1(a5)
   15f88:	00178793          	addi	a5,a5,1
   15f8c:	fee78fa3          	sb	a4,-1(a5)
   15f90:	fe0712e3          	bnez	a4,15f74 <_ldtoa_r+0xa38>
   15f94:	de1ff06f          	j	15d74 <_ldtoa_r+0x838>
   15f98:	03100713          	li	a4,49
   15f9c:	14e108a3          	sb	a4,337(sp)
   15fa0:	02e00713          	li	a4,46
   15fa4:	14e10923          	sb	a4,338(sp)
   15fa8:	0014849b          	addiw	s1,s1,1
   15fac:	2af05a63          	blez	a5,16260 <_ldtoa_r+0xd24>
   15fb0:	03000793          	li	a5,48
   15fb4:	14f109a3          	sb	a5,339(sp)
   15fb8:	fff4041b          	addiw	s0,s0,-1
   15fbc:	15410913          	addi	s2,sp,340
   15fc0:	b11ff06f          	j	15ad0 <_ldtoa_r+0x594>
   15fc4:	15010a93          	addi	s5,sp,336
   15fc8:	0000c597          	auipc	a1,0xc
   15fcc:	e5858593          	addi	a1,a1,-424 # 21e20 <zeroes.0+0x70>
   15fd0:	000a8513          	mv	a0,s5
   15fd4:	000024b7          	lui	s1,0x2
   15fd8:	231020ef          	jal	ra,18a08 <sprintf>
   15fdc:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   15fe0:	d4dff06f          	j	15d2c <_ldtoa_r+0x7f0>
   15fe4:	0d010c13          	addi	s8,sp,208
   15fe8:	000c0713          	mv	a4,s8
   15fec:	09010793          	addi	a5,sp,144
   15ff0:	0a410613          	addi	a2,sp,164
   15ff4:	0007d683          	lhu	a3,0(a5)
   15ff8:	00278793          	addi	a5,a5,2
   15ffc:	00270713          	addi	a4,a4,2
   16000:	fed71f23          	sh	a3,-2(a4)
   16004:	fec798e3          	bne	a5,a2,15ff4 <_ldtoa_r+0xab8>
   16008:	000047b7          	lui	a5,0x4
   1600c:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   16010:	0ef11123          	sh	a5,226(sp)
   16014:	000087b7          	lui	a5,0x8
   16018:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1601c:	02f13423          	sd	a5,40(sp)
   16020:	ffffc7b7          	lui	a5,0xffffc
   16024:	0027879b          	addiw	a5,a5,2
   16028:	01000c93          	li	s9,16
   1602c:	00000493          	li	s1,0
   16030:	0000cd17          	auipc	s10,0xc
   16034:	ec8d0d13          	addi	s10,s10,-312 # 21ef8 <etens+0xa0>
   16038:	15010a93          	addi	s5,sp,336
   1603c:	19010993          	addi	s3,sp,400
   16040:	0f010413          	addi	s0,sp,240
   16044:	0c210b93          	addi	s7,sp,194
   16048:	02f12a23          	sw	a5,52(sp)
   1604c:	00098693          	mv	a3,s3
   16050:	0b010613          	addi	a2,sp,176
   16054:	000c0593          	mv	a1,s8
   16058:	000d0513          	mv	a0,s10
   1605c:	dc9fe0ef          	jal	ra,14e24 <ediv>
   16060:	05810713          	addi	a4,sp,88
   16064:	0b010793          	addi	a5,sp,176
   16068:	0007d683          	lhu	a3,0(a5) # ffffffffffffc000 <__BSS_END__+0xfffffffffffd7420>
   1606c:	00278793          	addi	a5,a5,2
   16070:	00270713          	addi	a4,a4,2
   16074:	fed71f23          	sh	a3,-2(a4)
   16078:	ffb798e3          	bne	a5,s11,16068 <_ldtoa_r+0xb2c>
   1607c:	02813783          	ld	a5,40(sp)
   16080:	06a15803          	lhu	a6,106(sp)
   16084:	00f875b3          	and	a1,a6,a5
   16088:	03412783          	lw	a5,52(sp)
   1608c:	00f587bb          	addw	a5,a1,a5
   16090:	00078513          	mv	a0,a5
   16094:	38f05263          	blez	a5,16418 <_ldtoa_r+0xedc>
   16098:	09000593          	li	a1,144
   1609c:	40f585bb          	subw	a1,a1,a5
   160a0:	00040713          	mv	a4,s0
   160a4:	05810793          	addi	a5,sp,88
   160a8:	06c10613          	addi	a2,sp,108
   160ac:	0007d683          	lhu	a3,0(a5)
   160b0:	00278793          	addi	a5,a5,2
   160b4:	00270713          	addi	a4,a4,2
   160b8:	fed71f23          	sh	a3,-2(a4)
   160bc:	fec798e3          	bne	a5,a2,160ac <_ldtoa_r+0xb70>
   160c0:	06b05863          	blez	a1,16130 <_ldtoa_r+0xbf4>
   160c4:	00f00793          	li	a5,15
   160c8:	00040713          	mv	a4,s0
   160cc:	02b7de63          	bge	a5,a1,16108 <_ldtoa_r+0xbcc>
   160d0:	08000693          	li	a3,128
   160d4:	40a686bb          	subw	a3,a3,a0
   160d8:	0046d69b          	srliw	a3,a3,0x4
   160dc:	0016871b          	addiw	a4,a3,1
   160e0:	00171713          	slli	a4,a4,0x1
   160e4:	00e40733          	add	a4,s0,a4
   160e8:	00040793          	mv	a5,s0
   160ec:	00278793          	addi	a5,a5,2
   160f0:	fe079f23          	sh	zero,-2(a5)
   160f4:	fee79ce3          	bne	a5,a4,160ec <_ldtoa_r+0xbb0>
   160f8:	08000593          	li	a1,128
   160fc:	40a585bb          	subw	a1,a1,a0
   16100:	0046969b          	slliw	a3,a3,0x4
   16104:	40d585bb          	subw	a1,a1,a3
   16108:	0000c797          	auipc	a5,0xc
   1610c:	d2078793          	addi	a5,a5,-736 # 21e28 <ezero>
   16110:	00159593          	slli	a1,a1,0x1
   16114:	00b785b3          	add	a1,a5,a1
   16118:	2405d683          	lhu	a3,576(a1)
   1611c:	00075783          	lhu	a5,0(a4)
   16120:	00d7f7b3          	and	a5,a5,a3
   16124:	00f71023          	sh	a5,0(a4)
   16128:	00f85813          	srli	a6,a6,0xf
   1612c:	14081a63          	bnez	a6,16280 <_ldtoa_r+0xd44>
   16130:	0b010793          	addi	a5,sp,176
   16134:	00040713          	mv	a4,s0
   16138:	0007d603          	lhu	a2,0(a5)
   1613c:	00075683          	lhu	a3,0(a4)
   16140:	00278793          	addi	a5,a5,2
   16144:	00270713          	addi	a4,a4,2
   16148:	02d61463          	bne	a2,a3,16170 <_ldtoa_r+0xc34>
   1614c:	fefb96e3          	bne	s7,a5,16138 <_ldtoa_r+0xbfc>
   16150:	000c0713          	mv	a4,s8
   16154:	0b010793          	addi	a5,sp,176
   16158:	0007d683          	lhu	a3,0(a5)
   1615c:	00278793          	addi	a5,a5,2
   16160:	00270713          	addi	a4,a4,2
   16164:	fed71f23          	sh	a3,-2(a4)
   16168:	ffb798e3          	bne	a5,s11,16158 <_ldtoa_r+0xc1c>
   1616c:	009c84bb          	addw	s1,s9,s1
   16170:	014d0d13          	addi	s10,s10,20
   16174:	0000c797          	auipc	a5,0xc
   16178:	de878793          	addi	a5,a5,-536 # 21f5c <etens+0x104>
   1617c:	001cdc93          	srli	s9,s9,0x1
   16180:	ecfd16e3          	bne	s10,a5,1604c <_ldtoa_r+0xb10>
   16184:	0e215783          	lhu	a5,226(sp)
   16188:	0a215703          	lhu	a4,162(sp)
   1618c:	0e410613          	addi	a2,sp,228
   16190:	00e787bb          	addw	a5,a5,a4
   16194:	ffffc737          	lui	a4,0xffffc
   16198:	f727071b          	addiw	a4,a4,-142
   1619c:	00e787bb          	addw	a5,a5,a4
   161a0:	0ef11123          	sh	a5,226(sp)
   161a4:	09010713          	addi	a4,sp,144
   161a8:	000c0793          	mv	a5,s8
   161ac:	0007d683          	lhu	a3,0(a5)
   161b0:	00278793          	addi	a5,a5,2
   161b4:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7422>
   161b8:	fed71f23          	sh	a3,-2(a4)
   161bc:	fec798e3          	bne	a5,a2,161ac <_ldtoa_r+0xc70>
   161c0:	00000693          	li	a3,0
   161c4:	0b010793          	addi	a5,sp,176
   161c8:	0000c717          	auipc	a4,0xc
   161cc:	c7870713          	addi	a4,a4,-904 # 21e40 <eone>
   161d0:	0080006f          	j	161d8 <_ldtoa_r+0xc9c>
   161d4:	00075683          	lhu	a3,0(a4)
   161d8:	00278793          	addi	a5,a5,2
   161dc:	fed79f23          	sh	a3,-2(a5)
   161e0:	00270713          	addi	a4,a4,2
   161e4:	ffb798e3          	bne	a5,s11,161d4 <_ldtoa_r+0xc98>
   161e8:	00001cb7          	lui	s9,0x1
   161ec:	0000cd97          	auipc	s11,0xc
   161f0:	c6cd8d93          	addi	s11,s11,-916 # 21e58 <etens>
   161f4:	0000cd17          	auipc	s10,0xc
   161f8:	d54d0d13          	addi	s10,s10,-684 # 21f48 <etens+0xf0>
   161fc:	0100006f          	j	1620c <_ldtoa_r+0xcd0>
   16200:	001cdc93          	srli	s9,s9,0x1
   16204:	25ad8863          	beq	s11,s10,16454 <_ldtoa_r+0xf18>
   16208:	014d8d93          	addi	s11,s11,20
   1620c:	000c0593          	mv	a1,s8
   16210:	000d0513          	mv	a0,s10
   16214:	884fe0ef          	jal	ra,14298 <ecmp>
   16218:	00050793          	mv	a5,a0
   1621c:	000c0593          	mv	a1,s8
   16220:	000d8513          	mv	a0,s11
   16224:	22f04863          	bgtz	a5,16454 <_ldtoa_r+0xf18>
   16228:	870fe0ef          	jal	ra,14298 <ecmp>
   1622c:	fca04ae3          	bgtz	a0,16200 <_ldtoa_r+0xcc4>
   16230:	00098693          	mv	a3,s3
   16234:	000c0613          	mv	a2,s8
   16238:	000c0593          	mv	a1,s8
   1623c:	000d8513          	mv	a0,s11
   16240:	be5fe0ef          	jal	ra,14e24 <ediv>
   16244:	0b010613          	addi	a2,sp,176
   16248:	00098693          	mv	a3,s3
   1624c:	00060593          	mv	a1,a2
   16250:	000d8513          	mv	a0,s11
   16254:	f0cfe0ef          	jal	ra,14960 <emul>
   16258:	009c84bb          	addw	s1,s9,s1
   1625c:	fa5ff06f          	j	16200 <_ldtoa_r+0xcc4>
   16260:	15310913          	addi	s2,sp,339
   16264:	aa079ae3          	bnez	a5,15d18 <_ldtoa_r+0x7dc>
   16268:	869ff06f          	j	15ad0 <_ldtoa_r+0x594>
   1626c:	00000693          	li	a3,0
   16270:	b98ff06f          	j	15608 <_ldtoa_r+0xcc>
   16274:	00813783          	ld	a5,8(sp)
   16278:	fff7879b          	addiw	a5,a5,-1
   1627c:	cd5ff06f          	j	15f50 <_ldtoa_r+0xa14>
   16280:	05810793          	addi	a5,sp,88
   16284:	00040713          	mv	a4,s0
   16288:	00c0006f          	j	16294 <_ldtoa_r+0xd58>
   1628c:	06a10693          	addi	a3,sp,106
   16290:	eaf680e3          	beq	a3,a5,16130 <_ldtoa_r+0xbf4>
   16294:	0007d603          	lhu	a2,0(a5)
   16298:	00075683          	lhu	a3,0(a4)
   1629c:	00278793          	addi	a5,a5,2
   162a0:	00270713          	addi	a4,a4,2
   162a4:	fed604e3          	beq	a2,a3,1628c <_ldtoa_r+0xd50>
   162a8:	10215783          	lhu	a5,258(sp)
   162ac:	02813703          	ld	a4,40(sp)
   162b0:	00f777b3          	and	a5,a4,a5
   162b4:	3ae78e63          	beq	a5,a4,16670 <_ldtoa_r+0x1134>
   162b8:	11010593          	addi	a1,sp,272
   162bc:	0000c517          	auipc	a0,0xc
   162c0:	b8450513          	addi	a0,a0,-1148 # 21e40 <eone>
   162c4:	f1dfd0ef          	jal	ra,141e0 <emovi>
   162c8:	13010593          	addi	a1,sp,304
   162cc:	00040513          	mv	a0,s0
   162d0:	f11fd0ef          	jal	ra,141e0 <emovi>
   162d4:	11015703          	lhu	a4,272(sp)
   162d8:	13215603          	lhu	a2,306(sp)
   162dc:	11215503          	lhu	a0,274(sp)
   162e0:	fff74713          	not	a4,a4
   162e4:	03071713          	slli	a4,a4,0x30
   162e8:	03075713          	srli	a4,a4,0x30
   162ec:	10e11823          	sh	a4,272(sp)
   162f0:	40c505b3          	sub	a1,a0,a2
   162f4:	00060693          	mv	a3,a2
   162f8:	06b05e63          	blez	a1,16374 <_ldtoa_r+0xe38>
   162fc:	000a8593          	mv	a1,s5
   16300:	13010693          	addi	a3,sp,304
   16304:	14810793          	addi	a5,sp,328
   16308:	0006d803          	lhu	a6,0(a3)
   1630c:	00268693          	addi	a3,a3,2
   16310:	00258593          	addi	a1,a1,2
   16314:	ff059f23          	sh	a6,-2(a1)
   16318:	fef698e3          	bne	a3,a5,16308 <_ldtoa_r+0xdcc>
   1631c:	16011423          	sh	zero,360(sp)
   16320:	13010693          	addi	a3,sp,304
   16324:	11010593          	addi	a1,sp,272
   16328:	0080006f          	j	16330 <_ldtoa_r+0xdf4>
   1632c:	0005d703          	lhu	a4,0(a1)
   16330:	00268693          	addi	a3,a3,2
   16334:	fee69f23          	sh	a4,-2(a3)
   16338:	00258593          	addi	a1,a1,2
   1633c:	fef698e3          	bne	a3,a5,1632c <_ldtoa_r+0xdf0>
   16340:	14011423          	sh	zero,328(sp)
   16344:	11010713          	addi	a4,sp,272
   16348:	000a8793          	mv	a5,s5
   1634c:	16810593          	addi	a1,sp,360
   16350:	0007d683          	lhu	a3,0(a5)
   16354:	00278793          	addi	a5,a5,2
   16358:	00270713          	addi	a4,a4,2
   1635c:	fed71f23          	sh	a3,-2(a4)
   16360:	feb798e3          	bne	a5,a1,16350 <_ldtoa_r+0xe14>
   16364:	13215683          	lhu	a3,306(sp)
   16368:	40a605b3          	sub	a1,a2,a0
   1636c:	12011423          	sh	zero,296(sp)
   16370:	00068613          	mv	a2,a3
   16374:	32058863          	beqz	a1,166a4 <_ldtoa_r+0x1168>
   16378:	02d13c23          	sd	a3,56(sp)
   1637c:	f6f00793          	li	a5,-145
   16380:	06f5ca63          	blt	a1,a5,163f4 <_ldtoa_r+0xeb8>
   16384:	0005859b          	sext.w	a1,a1
   16388:	11010513          	addi	a0,sp,272
   1638c:	c35fd0ef          	jal	ra,13fc0 <eshift.part.0>
   16390:	03813683          	ld	a3,56(sp)
   16394:	00050593          	mv	a1,a0
   16398:	14810793          	addi	a5,sp,328
   1639c:	12810713          	addi	a4,sp,296
   163a0:	11015503          	lhu	a0,272(sp)
   163a4:	13015603          	lhu	a2,304(sp)
   163a8:	34c50263          	beq	a0,a2,166ec <_ldtoa_r+0x11b0>
   163ac:	00000613          	li	a2,0
   163b0:	13210813          	addi	a6,sp,306
   163b4:	00060513          	mv	a0,a2
   163b8:	0007d603          	lhu	a2,0(a5)
   163bc:	00075883          	lhu	a7,0(a4)
   163c0:	ffe78793          	addi	a5,a5,-2
   163c4:	40a60633          	sub	a2,a2,a0
   163c8:	41160633          	sub	a2,a2,a7
   163cc:	01065513          	srli	a0,a2,0x10
   163d0:	00c79123          	sh	a2,2(a5)
   163d4:	00157513          	andi	a0,a0,1
   163d8:	ffe70713          	addi	a4,a4,-2
   163dc:	fd079ee3          	bne	a5,a6,163b8 <_ldtoa_r+0xe7c>
   163e0:	00100613          	li	a2,1
   163e4:	00098793          	mv	a5,s3
   163e8:	04000713          	li	a4,64
   163ec:	13010513          	addi	a0,sp,304
   163f0:	fe9fd0ef          	jal	ra,143d8 <emdnorm>
   163f4:	00040593          	mv	a1,s0
   163f8:	13010513          	addi	a0,sp,304
   163fc:	995fd0ef          	jal	ra,13d90 <emovo.constprop.0>
   16400:	d31ff06f          	j	16130 <_ldtoa_r+0xbf4>
   16404:	01013783          	ld	a5,16(sp)
   16408:	14010823          	sb	zero,336(sp)
   1640c:	000a8413          	mv	s0,s5
   16410:	0007a023          	sw	zero,0(a5)
   16414:	b1dff06f          	j	15f30 <_ldtoa_r+0x9f4>
   16418:	00040793          	mv	a5,s0
   1641c:	10410713          	addi	a4,sp,260
   16420:	00278793          	addi	a5,a5,2
   16424:	fe079f23          	sh	zero,-2(a5)
   16428:	fee79ce3          	bne	a5,a4,16420 <_ldtoa_r+0xee4>
   1642c:	cfdff06f          	j	16128 <_ldtoa_r+0xbec>
   16430:	15010a93          	addi	s5,sp,336
   16434:	0a090063          	beqz	s2,164d4 <_ldtoa_r+0xf98>
   16438:	0000c597          	auipc	a1,0xc
   1643c:	9b858593          	addi	a1,a1,-1608 # 21df0 <zeroes.0+0x40>
   16440:	000a8513          	mv	a0,s5
   16444:	000024b7          	lui	s1,0x2
   16448:	5c0020ef          	jal	ra,18a08 <sprintf>
   1644c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16450:	8ddff06f          	j	15d2c <_ldtoa_r+0x7f0>
   16454:	10810b93          	addi	s7,sp,264
   16458:	bf8ff06f          	j	15850 <_ldtoa_r+0x314>
   1645c:	fff64783          	lbu	a5,-1(a2)
   16460:	03800713          	li	a4,56
   16464:	0ef77463          	bgeu	a4,a5,1654c <_ldtoa_r+0x1010>
   16468:	03100793          	li	a5,49
   1646c:	0014849b          	addiw	s1,s1,1
   16470:	fef60fa3          	sb	a5,-1(a2)
   16474:	8a5ff06f          	j	15d18 <_ldtoa_r+0x7dc>
   16478:	0015859b          	addiw	a1,a1,1
   1647c:	00b60023          	sb	a1,0(a2)
   16480:	899ff06f          	j	15d18 <_ldtoa_r+0x7dc>
   16484:	07010793          	addi	a5,sp,112
   16488:	08210693          	addi	a3,sp,130
   1648c:	0080006f          	j	16494 <_ldtoa_r+0xf58>
   16490:	8ad78ce3          	beq	a5,a3,15d48 <_ldtoa_r+0x80c>
   16494:	0007d703          	lhu	a4,0(a5)
   16498:	00278793          	addi	a5,a5,2
   1649c:	fe070ae3          	beqz	a4,16490 <_ldtoa_r+0xf54>
   164a0:	01013703          	ld	a4,16(sp)
   164a4:	000027b7          	lui	a5,0x2
   164a8:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   164ac:	00f72023          	sw	a5,0(a4)
   164b0:	8e5ff06f          	j	15d94 <_ldtoa_r+0x858>
   164b4:	15010a93          	addi	s5,sp,336
   164b8:	0000c597          	auipc	a1,0xc
   164bc:	95858593          	addi	a1,a1,-1704 # 21e10 <zeroes.0+0x60>
   164c0:	000a8513          	mv	a0,s5
   164c4:	000024b7          	lui	s1,0x2
   164c8:	540020ef          	jal	ra,18a08 <sprintf>
   164cc:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   164d0:	85dff06f          	j	15d2c <_ldtoa_r+0x7f0>
   164d4:	0000c597          	auipc	a1,0xc
   164d8:	92c58593          	addi	a1,a1,-1748 # 21e00 <zeroes.0+0x50>
   164dc:	000a8513          	mv	a0,s5
   164e0:	000024b7          	lui	s1,0x2
   164e4:	524020ef          	jal	ra,18a08 <sprintf>
   164e8:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   164ec:	841ff06f          	j	15d2c <_ldtoa_r+0x7f0>
   164f0:	0b010593          	addi	a1,sp,176
   164f4:	09010513          	addi	a0,sp,144
   164f8:	02f13423          	sd	a5,40(sp)
   164fc:	895fd0ef          	jal	ra,13d90 <emovo.constprop.0>
   16500:	0000c597          	auipc	a1,0xc
   16504:	92858593          	addi	a1,a1,-1752 # 21e28 <ezero>
   16508:	0b010513          	addi	a0,sp,176
   1650c:	d8dfd0ef          	jal	ra,14298 <ecmp>
   16510:	02813783          	ld	a5,40(sp)
   16514:	fa051a63          	bnez	a0,15cc8 <_ldtoa_r+0x78c>
   16518:	800440e3          	bltz	s0,15d18 <_ldtoa_r+0x7dc>
   1651c:	ffe7c703          	lbu	a4,-2(a5)
   16520:	fd270613          	addi	a2,a4,-46
   16524:	00163613          	seqz	a2,a2
   16528:	fff64613          	not	a2,a2
   1652c:	00c90633          	add	a2,s2,a2
   16530:	00064603          	lbu	a2,0(a2)
   16534:	00167613          	andi	a2,a2,1
   16538:	fe060063          	beqz	a2,15d18 <_ldtoa_r+0x7dc>
   1653c:	07f77593          	andi	a1,a4,127
   16540:	ffe78613          	addi	a2,a5,-2
   16544:	00058713          	mv	a4,a1
   16548:	f94ff06f          	j	15cdc <_ldtoa_r+0x7a0>
   1654c:	0017879b          	addiw	a5,a5,1
   16550:	fef60fa3          	sb	a5,-1(a2)
   16554:	fc4ff06f          	j	15d18 <_ldtoa_r+0x7dc>
   16558:	0f010413          	addi	s0,sp,240
   1655c:	00040593          	mv	a1,s0
   16560:	09010513          	addi	a0,sp,144
   16564:	00004c37          	lui	s8,0x4
   16568:	c79fd0ef          	jal	ra,141e0 <emovi>
   1656c:	00000493          	li	s1,0
   16570:	10810b93          	addi	s7,sp,264
   16574:	0e810993          	addi	s3,sp,232
   16578:	0f210a93          	addi	s5,sp,242
   1657c:	ffec0c13          	addi	s8,s8,-2 # 3ffe <register_fini-0xc0b2>
   16580:	fd500c93          	li	s9,-43
   16584:	10815783          	lhu	a5,264(sp)
   16588:	0077f793          	andi	a5,a5,7
   1658c:	0c079863          	bnez	a5,1665c <_ldtoa_r+0x1120>
   16590:	0d010713          	addi	a4,sp,208
   16594:	00040793          	mv	a5,s0
   16598:	0007d683          	lhu	a3,0(a5)
   1659c:	00278793          	addi	a5,a5,2
   165a0:	00270713          	addi	a4,a4,2
   165a4:	fed71f23          	sh	a3,-2(a4)
   165a8:	ff7798e3          	bne	a5,s7,16598 <_ldtoa_r+0x105c>
   165ac:	0d010513          	addi	a0,sp,208
   165b0:	0e011423          	sh	zero,232(sp)
   165b4:	e2cfd0ef          	jal	ra,13be0 <eshdn1>
   165b8:	0d010513          	addi	a0,sp,208
   165bc:	e24fd0ef          	jal	ra,13be0 <eshdn1>
   165c0:	00000613          	li	a2,0
   165c4:	00098693          	mv	a3,s3
   165c8:	000b8713          	mv	a4,s7
   165cc:	0006d583          	lhu	a1,0(a3)
   165d0:	00075783          	lhu	a5,0(a4)
   165d4:	ffe68693          	addi	a3,a3,-2
   165d8:	ffe70713          	addi	a4,a4,-2
   165dc:	00b787b3          	add	a5,a5,a1
   165e0:	00c787b3          	add	a5,a5,a2
   165e4:	0107d613          	srli	a2,a5,0x10
   165e8:	00f69123          	sh	a5,2(a3)
   165ec:	00167613          	andi	a2,a2,1
   165f0:	fd571ee3          	bne	a4,s5,165cc <_ldtoa_r+0x1090>
   165f4:	0d215783          	lhu	a5,210(sp)
   165f8:	0d415703          	lhu	a4,212(sp)
   165fc:	0037879b          	addiw	a5,a5,3
   16600:	0cf11923          	sh	a5,210(sp)
   16604:	02070063          	beqz	a4,16624 <_ldtoa_r+0x10e8>
   16608:	0d010513          	addi	a0,sp,208
   1660c:	dd4fd0ef          	jal	ra,13be0 <eshdn1>
   16610:	0d215783          	lhu	a5,210(sp)
   16614:	0d415703          	lhu	a4,212(sp)
   16618:	0017879b          	addiw	a5,a5,1
   1661c:	0cf11923          	sh	a5,210(sp)
   16620:	fe0714e3          	bnez	a4,16608 <_ldtoa_r+0x10cc>
   16624:	0e815783          	lhu	a5,232(sp)
   16628:	02079a63          	bnez	a5,1665c <_ldtoa_r+0x1120>
   1662c:	0d215783          	lhu	a5,210(sp)
   16630:	02fc6663          	bltu	s8,a5,1665c <_ldtoa_r+0x1120>
   16634:	00040713          	mv	a4,s0
   16638:	0d010793          	addi	a5,sp,208
   1663c:	0007d683          	lhu	a3,0(a5)
   16640:	00278793          	addi	a5,a5,2
   16644:	00270713          	addi	a4,a4,2
   16648:	fed71f23          	sh	a3,-2(a4)
   1664c:	ff3798e3          	bne	a5,s3,1663c <_ldtoa_r+0x1100>
   16650:	10011423          	sh	zero,264(sp)
   16654:	fff4849b          	addiw	s1,s1,-1
   16658:	f39496e3          	bne	s1,s9,16584 <_ldtoa_r+0x1048>
   1665c:	09010593          	addi	a1,sp,144
   16660:	00040513          	mv	a0,s0
   16664:	f2cfd0ef          	jal	ra,13d90 <emovo.constprop.0>
   16668:	19010993          	addi	s3,sp,400
   1666c:	8bcff06f          	j	15728 <_ldtoa_r+0x1ec>
   16670:	00040793          	mv	a5,s0
   16674:	0007d703          	lhu	a4,0(a5)
   16678:	00278793          	addi	a5,a5,2
   1667c:	aa071ae3          	bnez	a4,16130 <_ldtoa_r+0xbf4>
   16680:	10210713          	addi	a4,sp,258
   16684:	fee798e3          	bne	a5,a4,16674 <_ldtoa_r+0x1138>
   16688:	00040793          	mv	a5,s0
   1668c:	0007d703          	lhu	a4,0(a5)
   16690:	00278793          	addi	a5,a5,2
   16694:	c20712e3          	bnez	a4,162b8 <_ldtoa_r+0xd7c>
   16698:	10210713          	addi	a4,sp,258
   1669c:	fee798e3          	bne	a5,a4,1668c <_ldtoa_r+0x1150>
   166a0:	a91ff06f          	j	16130 <_ldtoa_r+0xbf4>
   166a4:	13410713          	addi	a4,sp,308
   166a8:	11410793          	addi	a5,sp,276
   166ac:	0007d503          	lhu	a0,0(a5)
   166b0:	00075583          	lhu	a1,0(a4)
   166b4:	00278793          	addi	a5,a5,2
   166b8:	00270713          	addi	a4,a4,2
   166bc:	06b51463          	bne	a0,a1,16724 <_ldtoa_r+0x11e8>
   166c0:	12a10593          	addi	a1,sp,298
   166c4:	feb794e3          	bne	a5,a1,166ac <_ldtoa_r+0x1170>
   166c8:	11015703          	lhu	a4,272(sp)
   166cc:	13015783          	lhu	a5,304(sp)
   166d0:	06f70463          	beq	a4,a5,16738 <_ldtoa_r+0x11fc>
   166d4:	00040793          	mv	a5,s0
   166d8:	10410713          	addi	a4,sp,260
   166dc:	00278793          	addi	a5,a5,2
   166e0:	fe079f23          	sh	zero,-2(a5)
   166e4:	fee79ce3          	bne	a5,a4,166dc <_ldtoa_r+0x11a0>
   166e8:	a49ff06f          	j	16130 <_ldtoa_r+0xbf4>
   166ec:	00000613          	li	a2,0
   166f0:	11210813          	addi	a6,sp,274
   166f4:	0007d883          	lhu	a7,0(a5)
   166f8:	00075503          	lhu	a0,0(a4)
   166fc:	ffe78793          	addi	a5,a5,-2
   16700:	ffe70713          	addi	a4,a4,-2
   16704:	01150533          	add	a0,a0,a7
   16708:	00c50633          	add	a2,a0,a2
   1670c:	01065513          	srli	a0,a2,0x10
   16710:	00c79123          	sh	a2,2(a5)
   16714:	00157613          	andi	a2,a0,1
   16718:	fd071ee3          	bne	a4,a6,166f4 <_ldtoa_r+0x11b8>
   1671c:	00000613          	li	a2,0
   16720:	cc5ff06f          	j	163e4 <_ldtoa_r+0xea8>
   16724:	04a5e263          	bltu	a1,a0,16768 <_ldtoa_r+0x122c>
   16728:	00000593          	li	a1,0
   1672c:	14810793          	addi	a5,sp,328
   16730:	12810713          	addi	a4,sp,296
   16734:	c6dff06f          	j	163a0 <_ldtoa_r+0xe64>
   16738:	00068793          	mv	a5,a3
   1673c:	00069663          	bnez	a3,16748 <_ldtoa_r+0x120c>
   16740:	13611703          	lh	a4,310(sp)
   16744:	08075c63          	bgez	a4,167dc <_ldtoa_r+0x12a0>
   16748:	13210713          	addi	a4,sp,306
   1674c:	14810793          	addi	a5,sp,328
   16750:	00075583          	lhu	a1,0(a4)
   16754:	00270713          	addi	a4,a4,2
   16758:	0c059c63          	bnez	a1,16830 <_ldtoa_r+0x12f4>
   1675c:	fee79ae3          	bne	a5,a4,16750 <_ldtoa_r+0x1214>
   16760:	12c11923          	sh	a2,306(sp)
   16764:	c91ff06f          	j	163f4 <_ldtoa_r+0xeb8>
   16768:	000a8613          	mv	a2,s5
   1676c:	13010713          	addi	a4,sp,304
   16770:	14810793          	addi	a5,sp,328
   16774:	00075583          	lhu	a1,0(a4)
   16778:	00270713          	addi	a4,a4,2
   1677c:	00260613          	addi	a2,a2,2
   16780:	feb61f23          	sh	a1,-2(a2)
   16784:	fef718e3          	bne	a4,a5,16774 <_ldtoa_r+0x1238>
   16788:	16011423          	sh	zero,360(sp)
   1678c:	13010593          	addi	a1,sp,304
   16790:	11010613          	addi	a2,sp,272
   16794:	12810713          	addi	a4,sp,296
   16798:	00065503          	lhu	a0,0(a2)
   1679c:	00260613          	addi	a2,a2,2
   167a0:	00258593          	addi	a1,a1,2
   167a4:	fea59f23          	sh	a0,-2(a1)
   167a8:	fee618e3          	bne	a2,a4,16798 <_ldtoa_r+0x125c>
   167ac:	14011423          	sh	zero,328(sp)
   167b0:	11010513          	addi	a0,sp,272
   167b4:	000a8613          	mv	a2,s5
   167b8:	16810593          	addi	a1,sp,360
   167bc:	00065803          	lhu	a6,0(a2)
   167c0:	00260613          	addi	a2,a2,2
   167c4:	00250513          	addi	a0,a0,2
   167c8:	ff051f23          	sh	a6,-2(a0)
   167cc:	feb618e3          	bne	a2,a1,167bc <_ldtoa_r+0x1280>
   167d0:	12011423          	sh	zero,296(sp)
   167d4:	00000593          	li	a1,0
   167d8:	bc9ff06f          	j	163a0 <_ldtoa_r+0xe64>
   167dc:	14810693          	addi	a3,sp,328
   167e0:	13210813          	addi	a6,sp,306
   167e4:	01c0006f          	j	16800 <_ldtoa_r+0x12c4>
   167e8:	00e69023          	sh	a4,0(a3)
   167ec:	0017979b          	slliw	a5,a5,0x1
   167f0:	03079793          	slli	a5,a5,0x30
   167f4:	ffe68693          	addi	a3,a3,-2
   167f8:	0307d793          	srli	a5,a5,0x30
   167fc:	bf068ce3          	beq	a3,a6,163f4 <_ldtoa_r+0xeb8>
   16800:	0006d703          	lhu	a4,0(a3)
   16804:	00f75613          	srli	a2,a4,0xf
   16808:	0017171b          	slliw	a4,a4,0x1
   1680c:	00060463          	beqz	a2,16814 <_ldtoa_r+0x12d8>
   16810:	0017e793          	ori	a5,a5,1
   16814:	03071713          	slli	a4,a4,0x30
   16818:	03075713          	srli	a4,a4,0x30
   1681c:	0027f613          	andi	a2,a5,2
   16820:	00176593          	ori	a1,a4,1
   16824:	fc0602e3          	beqz	a2,167e8 <_ldtoa_r+0x12ac>
   16828:	00b69023          	sh	a1,0(a3)
   1682c:	fc1ff06f          	j	167ec <_ldtoa_r+0x12b0>
   16830:	00168613          	addi	a2,a3,1
   16834:	12c11923          	sh	a2,306(sp)
   16838:	bbdff06f          	j	163f4 <_ldtoa_r+0xeb8>

000000000001683c <_ldcheck>:
   1683c:	00053703          	ld	a4,0(a0)
   16840:	00853783          	ld	a5,8(a0)
   16844:	fc010113          	addi	sp,sp,-64
   16848:	00010513          	mv	a0,sp
   1684c:	01010593          	addi	a1,sp,16
   16850:	00e13023          	sd	a4,0(sp)
   16854:	00f13423          	sd	a5,8(sp)
   16858:	02113c23          	sd	ra,56(sp)
   1685c:	b6dfe0ef          	jal	ra,153c8 <e113toe.isra.0>
   16860:	02215783          	lhu	a5,34(sp)
   16864:	00000513          	li	a0,0
   16868:	fff7c793          	not	a5,a5
   1686c:	03179713          	slli	a4,a5,0x31
   16870:	02071063          	bnez	a4,16890 <_ldcheck+0x54>
   16874:	01010793          	addi	a5,sp,16
   16878:	02210693          	addi	a3,sp,34
   1687c:	0007d703          	lhu	a4,0(a5)
   16880:	00278793          	addi	a5,a5,2
   16884:	00071c63          	bnez	a4,1689c <_ldcheck+0x60>
   16888:	fed79ae3          	bne	a5,a3,1687c <_ldcheck+0x40>
   1688c:	00200513          	li	a0,2
   16890:	03813083          	ld	ra,56(sp)
   16894:	04010113          	addi	sp,sp,64
   16898:	00008067          	ret
   1689c:	00100513          	li	a0,1
   168a0:	ff1ff06f          	j	16890 <_ldcheck+0x54>

00000000000168a4 <__localeconv_l>:
   168a4:	10050513          	addi	a0,a0,256
   168a8:	00008067          	ret

00000000000168ac <_localeconv_r>:
   168ac:	e6018513          	addi	a0,gp,-416 # 24240 <__global_locale+0x100>
   168b0:	00008067          	ret

00000000000168b4 <localeconv>:
   168b4:	e6018513          	addi	a0,gp,-416 # 24240 <__global_locale+0x100>
   168b8:	00008067          	ret

00000000000168bc <_setlocale_r>:
   168bc:	04060063          	beqz	a2,168fc <_setlocale_r+0x40>
   168c0:	ff010113          	addi	sp,sp,-16
   168c4:	0000b597          	auipc	a1,0xb
   168c8:	7d458593          	addi	a1,a1,2004 # 22098 <bmask+0x30>
   168cc:	00060513          	mv	a0,a2
   168d0:	00813023          	sd	s0,0(sp)
   168d4:	00113423          	sd	ra,8(sp)
   168d8:	00060413          	mv	s0,a2
   168dc:	300020ef          	jal	ra,18bdc <strcmp>
   168e0:	02051463          	bnez	a0,16908 <_setlocale_r+0x4c>
   168e4:	0000b517          	auipc	a0,0xb
   168e8:	7ac50513          	addi	a0,a0,1964 # 22090 <bmask+0x28>
   168ec:	00813083          	ld	ra,8(sp)
   168f0:	00013403          	ld	s0,0(sp)
   168f4:	01010113          	addi	sp,sp,16
   168f8:	00008067          	ret
   168fc:	0000b517          	auipc	a0,0xb
   16900:	79450513          	addi	a0,a0,1940 # 22090 <bmask+0x28>
   16904:	00008067          	ret
   16908:	0000b597          	auipc	a1,0xb
   1690c:	78858593          	addi	a1,a1,1928 # 22090 <bmask+0x28>
   16910:	00040513          	mv	a0,s0
   16914:	2c8020ef          	jal	ra,18bdc <strcmp>
   16918:	fc0506e3          	beqz	a0,168e4 <_setlocale_r+0x28>
   1691c:	0000b597          	auipc	a1,0xb
   16920:	2e458593          	addi	a1,a1,740 # 21c00 <__clzdi2+0x90>
   16924:	00040513          	mv	a0,s0
   16928:	2b4020ef          	jal	ra,18bdc <strcmp>
   1692c:	fa050ce3          	beqz	a0,168e4 <_setlocale_r+0x28>
   16930:	00000513          	li	a0,0
   16934:	fb9ff06f          	j	168ec <_setlocale_r+0x30>

0000000000016938 <__locale_mb_cur_max>:
   16938:	ec01c503          	lbu	a0,-320(gp) # 242a0 <__global_locale+0x160>
   1693c:	00008067          	ret

0000000000016940 <setlocale>:
   16940:	04058063          	beqz	a1,16980 <setlocale+0x40>
   16944:	ff010113          	addi	sp,sp,-16
   16948:	00813023          	sd	s0,0(sp)
   1694c:	00058413          	mv	s0,a1
   16950:	00040513          	mv	a0,s0
   16954:	0000b597          	auipc	a1,0xb
   16958:	74458593          	addi	a1,a1,1860 # 22098 <bmask+0x30>
   1695c:	00113423          	sd	ra,8(sp)
   16960:	27c020ef          	jal	ra,18bdc <strcmp>
   16964:	02051463          	bnez	a0,1698c <setlocale+0x4c>
   16968:	0000b517          	auipc	a0,0xb
   1696c:	72850513          	addi	a0,a0,1832 # 22090 <bmask+0x28>
   16970:	00813083          	ld	ra,8(sp)
   16974:	00013403          	ld	s0,0(sp)
   16978:	01010113          	addi	sp,sp,16
   1697c:	00008067          	ret
   16980:	0000b517          	auipc	a0,0xb
   16984:	71050513          	addi	a0,a0,1808 # 22090 <bmask+0x28>
   16988:	00008067          	ret
   1698c:	0000b597          	auipc	a1,0xb
   16990:	70458593          	addi	a1,a1,1796 # 22090 <bmask+0x28>
   16994:	00040513          	mv	a0,s0
   16998:	244020ef          	jal	ra,18bdc <strcmp>
   1699c:	fc0506e3          	beqz	a0,16968 <setlocale+0x28>
   169a0:	0000b597          	auipc	a1,0xb
   169a4:	26058593          	addi	a1,a1,608 # 21c00 <__clzdi2+0x90>
   169a8:	00040513          	mv	a0,s0
   169ac:	230020ef          	jal	ra,18bdc <strcmp>
   169b0:	fa050ce3          	beqz	a0,16968 <setlocale+0x28>
   169b4:	00000513          	li	a0,0
   169b8:	fb9ff06f          	j	16970 <setlocale+0x30>

00000000000169bc <__smakebuf_r>:
   169bc:	0105d783          	lhu	a5,16(a1)
   169c0:	f6010113          	addi	sp,sp,-160
   169c4:	08813823          	sd	s0,144(sp)
   169c8:	08113c23          	sd	ra,152(sp)
   169cc:	08913423          	sd	s1,136(sp)
   169d0:	09213023          	sd	s2,128(sp)
   169d4:	07313c23          	sd	s3,120(sp)
   169d8:	07413823          	sd	s4,112(sp)
   169dc:	0027f713          	andi	a4,a5,2
   169e0:	00058413          	mv	s0,a1
   169e4:	02070c63          	beqz	a4,16a1c <__smakebuf_r+0x60>
   169e8:	07758793          	addi	a5,a1,119
   169ec:	00f5b023          	sd	a5,0(a1)
   169f0:	00f5bc23          	sd	a5,24(a1)
   169f4:	00100793          	li	a5,1
   169f8:	02f5a023          	sw	a5,32(a1)
   169fc:	09813083          	ld	ra,152(sp)
   16a00:	09013403          	ld	s0,144(sp)
   16a04:	08813483          	ld	s1,136(sp)
   16a08:	08013903          	ld	s2,128(sp)
   16a0c:	07813983          	ld	s3,120(sp)
   16a10:	07013a03          	ld	s4,112(sp)
   16a14:	0a010113          	addi	sp,sp,160
   16a18:	00008067          	ret
   16a1c:	01259583          	lh	a1,18(a1)
   16a20:	00050493          	mv	s1,a0
   16a24:	0805cc63          	bltz	a1,16abc <__smakebuf_r+0x100>
   16a28:	00810613          	addi	a2,sp,8
   16a2c:	608060ef          	jal	ra,1d034 <_fstat_r>
   16a30:	08054463          	bltz	a0,16ab8 <__smakebuf_r+0xfc>
   16a34:	00c12903          	lw	s2,12(sp)
   16a38:	0000f7b7          	lui	a5,0xf
   16a3c:	40000993          	li	s3,1024
   16a40:	00f97933          	and	s2,s2,a5
   16a44:	000027b7          	lui	a5,0x2
   16a48:	40f90933          	sub	s2,s2,a5
   16a4c:	000017b7          	lui	a5,0x1
   16a50:	00193913          	seqz	s2,s2
   16a54:	80078a13          	addi	s4,a5,-2048 # 800 <register_fini-0xf8b0>
   16a58:	00098593          	mv	a1,s3
   16a5c:	00048513          	mv	a0,s1
   16a60:	1bc000ef          	jal	ra,16c1c <_malloc_r>
   16a64:	01041783          	lh	a5,16(s0)
   16a68:	06050e63          	beqz	a0,16ae4 <__smakebuf_r+0x128>
   16a6c:	ffffc717          	auipc	a4,0xffffc
   16a70:	77c70713          	addi	a4,a4,1916 # 131e8 <_cleanup_r>
   16a74:	04e4bc23          	sd	a4,88(s1)
   16a78:	0807e793          	ori	a5,a5,128
   16a7c:	00f41823          	sh	a5,16(s0)
   16a80:	00a43023          	sd	a0,0(s0)
   16a84:	00a43c23          	sd	a0,24(s0)
   16a88:	03342023          	sw	s3,32(s0)
   16a8c:	08091863          	bnez	s2,16b1c <__smakebuf_r+0x160>
   16a90:	0147e7b3          	or	a5,a5,s4
   16a94:	09813083          	ld	ra,152(sp)
   16a98:	00f41823          	sh	a5,16(s0)
   16a9c:	09013403          	ld	s0,144(sp)
   16aa0:	08813483          	ld	s1,136(sp)
   16aa4:	08013903          	ld	s2,128(sp)
   16aa8:	07813983          	ld	s3,120(sp)
   16aac:	07013a03          	ld	s4,112(sp)
   16ab0:	0a010113          	addi	sp,sp,160
   16ab4:	00008067          	ret
   16ab8:	01045783          	lhu	a5,16(s0)
   16abc:	0807f793          	andi	a5,a5,128
   16ac0:	00000913          	li	s2,0
   16ac4:	04078663          	beqz	a5,16b10 <__smakebuf_r+0x154>
   16ac8:	04000993          	li	s3,64
   16acc:	00098593          	mv	a1,s3
   16ad0:	00048513          	mv	a0,s1
   16ad4:	148000ef          	jal	ra,16c1c <_malloc_r>
   16ad8:	01041783          	lh	a5,16(s0)
   16adc:	00000a13          	li	s4,0
   16ae0:	f80516e3          	bnez	a0,16a6c <__smakebuf_r+0xb0>
   16ae4:	2007f713          	andi	a4,a5,512
   16ae8:	f0071ae3          	bnez	a4,169fc <__smakebuf_r+0x40>
   16aec:	ffc7f793          	andi	a5,a5,-4
   16af0:	0027e793          	ori	a5,a5,2
   16af4:	07740713          	addi	a4,s0,119
   16af8:	00f41823          	sh	a5,16(s0)
   16afc:	00100793          	li	a5,1
   16b00:	00e43023          	sd	a4,0(s0)
   16b04:	00e43c23          	sd	a4,24(s0)
   16b08:	02f42023          	sw	a5,32(s0)
   16b0c:	ef1ff06f          	j	169fc <__smakebuf_r+0x40>
   16b10:	40000993          	li	s3,1024
   16b14:	00000a13          	li	s4,0
   16b18:	f41ff06f          	j	16a58 <__smakebuf_r+0x9c>
   16b1c:	01241583          	lh	a1,18(s0)
   16b20:	00048513          	mv	a0,s1
   16b24:	229060ef          	jal	ra,1d54c <_isatty_r>
   16b28:	00051663          	bnez	a0,16b34 <__smakebuf_r+0x178>
   16b2c:	01041783          	lh	a5,16(s0)
   16b30:	f61ff06f          	j	16a90 <__smakebuf_r+0xd4>
   16b34:	01045783          	lhu	a5,16(s0)
   16b38:	ffc7f793          	andi	a5,a5,-4
   16b3c:	0017e793          	ori	a5,a5,1
   16b40:	0107979b          	slliw	a5,a5,0x10
   16b44:	4107d79b          	sraiw	a5,a5,0x10
   16b48:	f49ff06f          	j	16a90 <__smakebuf_r+0xd4>

0000000000016b4c <__swhatbuf_r>:
   16b4c:	f7010113          	addi	sp,sp,-144
   16b50:	08813023          	sd	s0,128(sp)
   16b54:	00058413          	mv	s0,a1
   16b58:	01259583          	lh	a1,18(a1)
   16b5c:	06913c23          	sd	s1,120(sp)
   16b60:	07213823          	sd	s2,112(sp)
   16b64:	08113423          	sd	ra,136(sp)
   16b68:	00060493          	mv	s1,a2
   16b6c:	00068913          	mv	s2,a3
   16b70:	0405ca63          	bltz	a1,16bc4 <__swhatbuf_r+0x78>
   16b74:	00810613          	addi	a2,sp,8
   16b78:	4bc060ef          	jal	ra,1d034 <_fstat_r>
   16b7c:	04054463          	bltz	a0,16bc4 <__swhatbuf_r+0x78>
   16b80:	00c12783          	lw	a5,12(sp)
   16b84:	0000f737          	lui	a4,0xf
   16b88:	08813083          	ld	ra,136(sp)
   16b8c:	00e7f7b3          	and	a5,a5,a4
   16b90:	00002737          	lui	a4,0x2
   16b94:	40e787b3          	sub	a5,a5,a4
   16b98:	08013403          	ld	s0,128(sp)
   16b9c:	0017b793          	seqz	a5,a5
   16ba0:	00f92023          	sw	a5,0(s2)
   16ba4:	40000793          	li	a5,1024
   16ba8:	00f4b023          	sd	a5,0(s1)
   16bac:	00001537          	lui	a0,0x1
   16bb0:	07813483          	ld	s1,120(sp)
   16bb4:	07013903          	ld	s2,112(sp)
   16bb8:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   16bbc:	09010113          	addi	sp,sp,144
   16bc0:	00008067          	ret
   16bc4:	01041783          	lh	a5,16(s0)
   16bc8:	00092023          	sw	zero,0(s2)
   16bcc:	0807f793          	andi	a5,a5,128
   16bd0:	02078463          	beqz	a5,16bf8 <__swhatbuf_r+0xac>
   16bd4:	08813083          	ld	ra,136(sp)
   16bd8:	08013403          	ld	s0,128(sp)
   16bdc:	04000793          	li	a5,64
   16be0:	00f4b023          	sd	a5,0(s1)
   16be4:	07013903          	ld	s2,112(sp)
   16be8:	07813483          	ld	s1,120(sp)
   16bec:	00000513          	li	a0,0
   16bf0:	09010113          	addi	sp,sp,144
   16bf4:	00008067          	ret
   16bf8:	08813083          	ld	ra,136(sp)
   16bfc:	08013403          	ld	s0,128(sp)
   16c00:	40000793          	li	a5,1024
   16c04:	00f4b023          	sd	a5,0(s1)
   16c08:	07013903          	ld	s2,112(sp)
   16c0c:	07813483          	ld	s1,120(sp)
   16c10:	00000513          	li	a0,0
   16c14:	09010113          	addi	sp,sp,144
   16c18:	00008067          	ret

0000000000016c1c <_malloc_r>:
   16c1c:	fa010113          	addi	sp,sp,-96
   16c20:	04913423          	sd	s1,72(sp)
   16c24:	05213023          	sd	s2,64(sp)
   16c28:	04113c23          	sd	ra,88(sp)
   16c2c:	04813823          	sd	s0,80(sp)
   16c30:	03313c23          	sd	s3,56(sp)
   16c34:	03413823          	sd	s4,48(sp)
   16c38:	03513423          	sd	s5,40(sp)
   16c3c:	03613023          	sd	s6,32(sp)
   16c40:	01713c23          	sd	s7,24(sp)
   16c44:	01813823          	sd	s8,16(sp)
   16c48:	01913423          	sd	s9,8(sp)
   16c4c:	01758493          	addi	s1,a1,23
   16c50:	02e00793          	li	a5,46
   16c54:	00050913          	mv	s2,a0
   16c58:	0697e663          	bltu	a5,s1,16cc4 <_malloc_r+0xa8>
   16c5c:	02000793          	li	a5,32
   16c60:	26b7e663          	bltu	a5,a1,16ecc <_malloc_r+0x2b0>
   16c64:	10d000ef          	jal	ra,17570 <__malloc_lock>
   16c68:	02000493          	li	s1,32
   16c6c:	05000793          	li	a5,80
   16c70:	00400613          	li	a2,4
   16c74:	0000d997          	auipc	s3,0xd
   16c78:	67498993          	addi	s3,s3,1652 # 242e8 <__malloc_av_>
   16c7c:	00f987b3          	add	a5,s3,a5
   16c80:	0087b403          	ld	s0,8(a5)
   16c84:	ff078713          	addi	a4,a5,-16
   16c88:	28e40263          	beq	s0,a4,16f0c <_malloc_r+0x2f0>
   16c8c:	00843783          	ld	a5,8(s0)
   16c90:	01843683          	ld	a3,24(s0)
   16c94:	01043603          	ld	a2,16(s0)
   16c98:	ffc7f793          	andi	a5,a5,-4
   16c9c:	00f407b3          	add	a5,s0,a5
   16ca0:	0087b703          	ld	a4,8(a5)
   16ca4:	00d63c23          	sd	a3,24(a2)
   16ca8:	00c6b823          	sd	a2,16(a3)
   16cac:	00176713          	ori	a4,a4,1
   16cb0:	00090513          	mv	a0,s2
   16cb4:	00e7b423          	sd	a4,8(a5)
   16cb8:	0bd000ef          	jal	ra,17574 <__malloc_unlock>
   16cbc:	01040513          	addi	a0,s0,16
   16cc0:	2180006f          	j	16ed8 <_malloc_r+0x2bc>
   16cc4:	800007b7          	lui	a5,0x80000
   16cc8:	ff04f493          	andi	s1,s1,-16
   16ccc:	fff7c793          	not	a5,a5
   16cd0:	1e97ee63          	bltu	a5,s1,16ecc <_malloc_r+0x2b0>
   16cd4:	1eb4ec63          	bltu	s1,a1,16ecc <_malloc_r+0x2b0>
   16cd8:	099000ef          	jal	ra,17570 <__malloc_lock>
   16cdc:	1f700793          	li	a5,503
   16ce0:	4e97f663          	bgeu	a5,s1,171cc <_malloc_r+0x5b0>
   16ce4:	0094d793          	srli	a5,s1,0x9
   16ce8:	34078c63          	beqz	a5,17040 <_malloc_r+0x424>
   16cec:	00400713          	li	a4,4
   16cf0:	40f76c63          	bltu	a4,a5,17108 <_malloc_r+0x4ec>
   16cf4:	0064d793          	srli	a5,s1,0x6
   16cf8:	0397861b          	addiw	a2,a5,57
   16cfc:	0016169b          	slliw	a3,a2,0x1
   16d00:	0387851b          	addiw	a0,a5,56
   16d04:	00369693          	slli	a3,a3,0x3
   16d08:	0000d997          	auipc	s3,0xd
   16d0c:	5e098993          	addi	s3,s3,1504 # 242e8 <__malloc_av_>
   16d10:	00d986b3          	add	a3,s3,a3
   16d14:	0086b403          	ld	s0,8(a3)
   16d18:	ff068693          	addi	a3,a3,-16
   16d1c:	1e868e63          	beq	a3,s0,16f18 <_malloc_r+0x2fc>
   16d20:	01f00593          	li	a1,31
   16d24:	0100006f          	j	16d34 <_malloc_r+0x118>
   16d28:	36075863          	bgez	a4,17098 <_malloc_r+0x47c>
   16d2c:	01843403          	ld	s0,24(s0)
   16d30:	1e868463          	beq	a3,s0,16f18 <_malloc_r+0x2fc>
   16d34:	00843783          	ld	a5,8(s0)
   16d38:	ffc7f793          	andi	a5,a5,-4
   16d3c:	40978733          	sub	a4,a5,s1
   16d40:	fee5d4e3          	bge	a1,a4,16d28 <_malloc_r+0x10c>
   16d44:	0209b403          	ld	s0,32(s3)
   16d48:	0000d897          	auipc	a7,0xd
   16d4c:	5b088893          	addi	a7,a7,1456 # 242f8 <__malloc_av_+0x10>
   16d50:	00050613          	mv	a2,a0
   16d54:	1d141a63          	bne	s0,a7,16f28 <_malloc_r+0x30c>
   16d58:	0089b783          	ld	a5,8(s3)
   16d5c:	4026571b          	sraiw	a4,a2,0x2
   16d60:	00100593          	li	a1,1
   16d64:	00e595b3          	sll	a1,a1,a4
   16d68:	22b7fe63          	bgeu	a5,a1,16fa4 <_malloc_r+0x388>
   16d6c:	0109b403          	ld	s0,16(s3)
   16d70:	00843a03          	ld	s4,8(s0)
   16d74:	ffca7a93          	andi	s5,s4,-4
   16d78:	009ae863          	bltu	s5,s1,16d88 <_malloc_r+0x16c>
   16d7c:	409a87b3          	sub	a5,s5,s1
   16d80:	01f00713          	li	a4,31
   16d84:	2ef74663          	blt	a4,a5,17070 <_malloc_r+0x454>
   16d88:	76018c93          	addi	s9,gp,1888 # 24b40 <__malloc_sbrk_base>
   16d8c:	000cb703          	ld	a4,0(s9) # 1000 <register_fini-0xf0b0>
   16d90:	7881ba03          	ld	s4,1928(gp) # 24b68 <__malloc_top_pad>
   16d94:	fff00793          	li	a5,-1
   16d98:	01540bb3          	add	s7,s0,s5
   16d9c:	01448a33          	add	s4,s1,s4
   16da0:	4ef70a63          	beq	a4,a5,17294 <_malloc_r+0x678>
   16da4:	000017b7          	lui	a5,0x1
   16da8:	01f78793          	addi	a5,a5,31 # 101f <register_fini-0xf091>
   16dac:	00fa0a33          	add	s4,s4,a5
   16db0:	fffff7b7          	lui	a5,0xfffff
   16db4:	00fa7a33          	and	s4,s4,a5
   16db8:	000a0593          	mv	a1,s4
   16dbc:	00090513          	mv	a0,s2
   16dc0:	2f1010ef          	jal	ra,188b0 <_sbrk_r>
   16dc4:	fff00793          	li	a5,-1
   16dc8:	00050b13          	mv	s6,a0
   16dcc:	42f50a63          	beq	a0,a5,17200 <_malloc_r+0x5e4>
   16dd0:	43756663          	bltu	a0,s7,171fc <_malloc_r+0x5e0>
   16dd4:	7d818c13          	addi	s8,gp,2008 # 24bb8 <__malloc_current_mallinfo>
   16dd8:	000c2703          	lw	a4,0(s8)
   16ddc:	014707bb          	addw	a5,a4,s4
   16de0:	00fc2023          	sw	a5,0(s8)
   16de4:	00078693          	mv	a3,a5
   16de8:	54ab8e63          	beq	s7,a0,17344 <_malloc_r+0x728>
   16dec:	000cb703          	ld	a4,0(s9)
   16df0:	fff00793          	li	a5,-1
   16df4:	56f70663          	beq	a4,a5,17360 <_malloc_r+0x744>
   16df8:	417b07b3          	sub	a5,s6,s7
   16dfc:	00d787bb          	addw	a5,a5,a3
   16e00:	00fc2023          	sw	a5,0(s8)
   16e04:	00fb7b93          	andi	s7,s6,15
   16e08:	4a0b8863          	beqz	s7,172b8 <_malloc_r+0x69c>
   16e0c:	00001737          	lui	a4,0x1
   16e10:	417b0b33          	sub	s6,s6,s7
   16e14:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   16e18:	010b0b13          	addi	s6,s6,16
   16e1c:	417787b3          	sub	a5,a5,s7
   16e20:	014b0cb3          	add	s9,s6,s4
   16e24:	41978a33          	sub	s4,a5,s9
   16e28:	fff70713          	addi	a4,a4,-1
   16e2c:	00ea7a33          	and	s4,s4,a4
   16e30:	000a0593          	mv	a1,s4
   16e34:	00090513          	mv	a0,s2
   16e38:	279010ef          	jal	ra,188b0 <_sbrk_r>
   16e3c:	fff00793          	li	a5,-1
   16e40:	56f50e63          	beq	a0,a5,173bc <_malloc_r+0x7a0>
   16e44:	41650533          	sub	a0,a0,s6
   16e48:	000a071b          	sext.w	a4,s4
   16e4c:	01450a33          	add	s4,a0,s4
   16e50:	000c2783          	lw	a5,0(s8)
   16e54:	0169b823          	sd	s6,16(s3)
   16e58:	001a6a13          	ori	s4,s4,1
   16e5c:	00e787bb          	addw	a5,a5,a4
   16e60:	00fc2023          	sw	a5,0(s8)
   16e64:	014b3423          	sd	s4,8(s6)
   16e68:	51340063          	beq	s0,s3,17368 <_malloc_r+0x74c>
   16e6c:	01f00613          	li	a2,31
   16e70:	51567063          	bgeu	a2,s5,17370 <_malloc_r+0x754>
   16e74:	00843683          	ld	a3,8(s0)
   16e78:	fe8a8713          	addi	a4,s5,-24 # ffffffffffffefe8 <__BSS_END__+0xfffffffffffda408>
   16e7c:	ff077713          	andi	a4,a4,-16
   16e80:	0016f693          	andi	a3,a3,1
   16e84:	00e6e6b3          	or	a3,a3,a4
   16e88:	00d43423          	sd	a3,8(s0)
   16e8c:	00900593          	li	a1,9
   16e90:	00e406b3          	add	a3,s0,a4
   16e94:	00b6b423          	sd	a1,8(a3)
   16e98:	00b6b823          	sd	a1,16(a3)
   16e9c:	52e66a63          	bltu	a2,a4,173d0 <_malloc_r+0x7b4>
   16ea0:	008b3a03          	ld	s4,8(s6)
   16ea4:	000b0413          	mv	s0,s6
   16ea8:	78018713          	addi	a4,gp,1920 # 24b60 <__malloc_max_sbrked_mem>
   16eac:	00073683          	ld	a3,0(a4)
   16eb0:	00f6f463          	bgeu	a3,a5,16eb8 <_malloc_r+0x29c>
   16eb4:	00f73023          	sd	a5,0(a4)
   16eb8:	77818713          	addi	a4,gp,1912 # 24b58 <__malloc_max_total_mem>
   16ebc:	00073683          	ld	a3,0(a4)
   16ec0:	34f6f463          	bgeu	a3,a5,17208 <_malloc_r+0x5ec>
   16ec4:	00f73023          	sd	a5,0(a4)
   16ec8:	3400006f          	j	17208 <_malloc_r+0x5ec>
   16ecc:	00c00793          	li	a5,12
   16ed0:	00f92023          	sw	a5,0(s2)
   16ed4:	00000513          	li	a0,0
   16ed8:	05813083          	ld	ra,88(sp)
   16edc:	05013403          	ld	s0,80(sp)
   16ee0:	04813483          	ld	s1,72(sp)
   16ee4:	04013903          	ld	s2,64(sp)
   16ee8:	03813983          	ld	s3,56(sp)
   16eec:	03013a03          	ld	s4,48(sp)
   16ef0:	02813a83          	ld	s5,40(sp)
   16ef4:	02013b03          	ld	s6,32(sp)
   16ef8:	01813b83          	ld	s7,24(sp)
   16efc:	01013c03          	ld	s8,16(sp)
   16f00:	00813c83          	ld	s9,8(sp)
   16f04:	06010113          	addi	sp,sp,96
   16f08:	00008067          	ret
   16f0c:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda438>
   16f10:	0026061b          	addiw	a2,a2,2
   16f14:	d6879ce3          	bne	a5,s0,16c8c <_malloc_r+0x70>
   16f18:	0209b403          	ld	s0,32(s3)
   16f1c:	0000d897          	auipc	a7,0xd
   16f20:	3dc88893          	addi	a7,a7,988 # 242f8 <__malloc_av_+0x10>
   16f24:	e3140ae3          	beq	s0,a7,16d58 <_malloc_r+0x13c>
   16f28:	00843783          	ld	a5,8(s0)
   16f2c:	01f00693          	li	a3,31
   16f30:	ffc7f793          	andi	a5,a5,-4
   16f34:	40978733          	sub	a4,a5,s1
   16f38:	24e6cc63          	blt	a3,a4,17190 <_malloc_r+0x574>
   16f3c:	0319b423          	sd	a7,40(s3)
   16f40:	0319b023          	sd	a7,32(s3)
   16f44:	10075663          	bgez	a4,17050 <_malloc_r+0x434>
   16f48:	1ff00713          	li	a4,511
   16f4c:	14f76c63          	bltu	a4,a5,170a4 <_malloc_r+0x488>
   16f50:	0037d793          	srli	a5,a5,0x3
   16f54:	0017871b          	addiw	a4,a5,1
   16f58:	0017171b          	slliw	a4,a4,0x1
   16f5c:	00371713          	slli	a4,a4,0x3
   16f60:	0089b503          	ld	a0,8(s3)
   16f64:	00e98733          	add	a4,s3,a4
   16f68:	00073583          	ld	a1,0(a4)
   16f6c:	4027d69b          	sraiw	a3,a5,0x2
   16f70:	00100793          	li	a5,1
   16f74:	00d797b3          	sll	a5,a5,a3
   16f78:	00a7e7b3          	or	a5,a5,a0
   16f7c:	ff070693          	addi	a3,a4,-16
   16f80:	00d43c23          	sd	a3,24(s0)
   16f84:	00b43823          	sd	a1,16(s0)
   16f88:	00f9b423          	sd	a5,8(s3)
   16f8c:	00873023          	sd	s0,0(a4)
   16f90:	0085bc23          	sd	s0,24(a1)
   16f94:	4026571b          	sraiw	a4,a2,0x2
   16f98:	00100593          	li	a1,1
   16f9c:	00e595b3          	sll	a1,a1,a4
   16fa0:	dcb7e6e3          	bltu	a5,a1,16d6c <_malloc_r+0x150>
   16fa4:	00f5f733          	and	a4,a1,a5
   16fa8:	02071463          	bnez	a4,16fd0 <_malloc_r+0x3b4>
   16fac:	00159593          	slli	a1,a1,0x1
   16fb0:	ffc67613          	andi	a2,a2,-4
   16fb4:	00f5f733          	and	a4,a1,a5
   16fb8:	0046061b          	addiw	a2,a2,4
   16fbc:	00071a63          	bnez	a4,16fd0 <_malloc_r+0x3b4>
   16fc0:	00159593          	slli	a1,a1,0x1
   16fc4:	00f5f733          	and	a4,a1,a5
   16fc8:	0046061b          	addiw	a2,a2,4
   16fcc:	fe070ae3          	beqz	a4,16fc0 <_malloc_r+0x3a4>
   16fd0:	01f00813          	li	a6,31
   16fd4:	0016031b          	addiw	t1,a2,1
   16fd8:	0013131b          	slliw	t1,t1,0x1
   16fdc:	00331313          	slli	t1,t1,0x3
   16fe0:	ff030313          	addi	t1,t1,-16
   16fe4:	00698333          	add	t1,s3,t1
   16fe8:	00030513          	mv	a0,t1
   16fec:	01853783          	ld	a5,24(a0)
   16ff0:	00060e13          	mv	t3,a2
   16ff4:	12f50e63          	beq	a0,a5,17130 <_malloc_r+0x514>
   16ff8:	0087b703          	ld	a4,8(a5)
   16ffc:	00078413          	mv	s0,a5
   17000:	0187b783          	ld	a5,24(a5)
   17004:	ffc77713          	andi	a4,a4,-4
   17008:	409706b3          	sub	a3,a4,s1
   1700c:	12d84e63          	blt	a6,a3,17148 <_malloc_r+0x52c>
   17010:	fe06c2e3          	bltz	a3,16ff4 <_malloc_r+0x3d8>
   17014:	00e40733          	add	a4,s0,a4
   17018:	00873683          	ld	a3,8(a4)
   1701c:	01043603          	ld	a2,16(s0)
   17020:	00090513          	mv	a0,s2
   17024:	0016e693          	ori	a3,a3,1
   17028:	00d73423          	sd	a3,8(a4)
   1702c:	00f63c23          	sd	a5,24(a2)
   17030:	00c7b823          	sd	a2,16(a5)
   17034:	540000ef          	jal	ra,17574 <__malloc_unlock>
   17038:	01040513          	addi	a0,s0,16
   1703c:	e9dff06f          	j	16ed8 <_malloc_r+0x2bc>
   17040:	40000693          	li	a3,1024
   17044:	04000613          	li	a2,64
   17048:	03f00513          	li	a0,63
   1704c:	cbdff06f          	j	16d08 <_malloc_r+0xec>
   17050:	00f407b3          	add	a5,s0,a5
   17054:	0087b703          	ld	a4,8(a5)
   17058:	00090513          	mv	a0,s2
   1705c:	00176713          	ori	a4,a4,1
   17060:	00e7b423          	sd	a4,8(a5)
   17064:	510000ef          	jal	ra,17574 <__malloc_unlock>
   17068:	01040513          	addi	a0,s0,16
   1706c:	e6dff06f          	j	16ed8 <_malloc_r+0x2bc>
   17070:	0014e713          	ori	a4,s1,1
   17074:	00e43423          	sd	a4,8(s0)
   17078:	009404b3          	add	s1,s0,s1
   1707c:	0099b823          	sd	s1,16(s3)
   17080:	0017e793          	ori	a5,a5,1
   17084:	00090513          	mv	a0,s2
   17088:	00f4b423          	sd	a5,8(s1)
   1708c:	4e8000ef          	jal	ra,17574 <__malloc_unlock>
   17090:	01040513          	addi	a0,s0,16
   17094:	e45ff06f          	j	16ed8 <_malloc_r+0x2bc>
   17098:	01843683          	ld	a3,24(s0)
   1709c:	01043603          	ld	a2,16(s0)
   170a0:	bfdff06f          	j	16c9c <_malloc_r+0x80>
   170a4:	0097d713          	srli	a4,a5,0x9
   170a8:	00400693          	li	a3,4
   170ac:	12e6fc63          	bgeu	a3,a4,171e4 <_malloc_r+0x5c8>
   170b0:	01400693          	li	a3,20
   170b4:	22e6ee63          	bltu	a3,a4,172f0 <_malloc_r+0x6d4>
   170b8:	05c7059b          	addiw	a1,a4,92
   170bc:	0015959b          	slliw	a1,a1,0x1
   170c0:	05b7069b          	addiw	a3,a4,91
   170c4:	00359593          	slli	a1,a1,0x3
   170c8:	00b985b3          	add	a1,s3,a1
   170cc:	0005b703          	ld	a4,0(a1)
   170d0:	ff058593          	addi	a1,a1,-16
   170d4:	1ce58463          	beq	a1,a4,1729c <_malloc_r+0x680>
   170d8:	00873683          	ld	a3,8(a4)
   170dc:	ffc6f693          	andi	a3,a3,-4
   170e0:	00d7f663          	bgeu	a5,a3,170ec <_malloc_r+0x4d0>
   170e4:	01073703          	ld	a4,16(a4)
   170e8:	fee598e3          	bne	a1,a4,170d8 <_malloc_r+0x4bc>
   170ec:	01873583          	ld	a1,24(a4)
   170f0:	0089b783          	ld	a5,8(s3)
   170f4:	00b43c23          	sd	a1,24(s0)
   170f8:	00e43823          	sd	a4,16(s0)
   170fc:	0085b823          	sd	s0,16(a1)
   17100:	00873c23          	sd	s0,24(a4)
   17104:	e91ff06f          	j	16f94 <_malloc_r+0x378>
   17108:	01400713          	li	a4,20
   1710c:	12f77063          	bgeu	a4,a5,1722c <_malloc_r+0x610>
   17110:	05400713          	li	a4,84
   17114:	1ef76e63          	bltu	a4,a5,17310 <_malloc_r+0x6f4>
   17118:	00c4d793          	srli	a5,s1,0xc
   1711c:	06f7861b          	addiw	a2,a5,111
   17120:	0016169b          	slliw	a3,a2,0x1
   17124:	06e7851b          	addiw	a0,a5,110
   17128:	00369693          	slli	a3,a3,0x3
   1712c:	bddff06f          	j	16d08 <_malloc_r+0xec>
   17130:	001e0e1b          	addiw	t3,t3,1
   17134:	003e7793          	andi	a5,t3,3
   17138:	01050513          	addi	a0,a0,16
   1713c:	10078863          	beqz	a5,1724c <_malloc_r+0x630>
   17140:	01853783          	ld	a5,24(a0)
   17144:	eb1ff06f          	j	16ff4 <_malloc_r+0x3d8>
   17148:	01043603          	ld	a2,16(s0)
   1714c:	0014e593          	ori	a1,s1,1
   17150:	00b43423          	sd	a1,8(s0)
   17154:	00f63c23          	sd	a5,24(a2)
   17158:	00c7b823          	sd	a2,16(a5)
   1715c:	009404b3          	add	s1,s0,s1
   17160:	0299b423          	sd	s1,40(s3)
   17164:	0299b023          	sd	s1,32(s3)
   17168:	0016e793          	ori	a5,a3,1
   1716c:	0114bc23          	sd	a7,24(s1)
   17170:	0114b823          	sd	a7,16(s1)
   17174:	00f4b423          	sd	a5,8(s1)
   17178:	00e40733          	add	a4,s0,a4
   1717c:	00090513          	mv	a0,s2
   17180:	00d73023          	sd	a3,0(a4)
   17184:	3f0000ef          	jal	ra,17574 <__malloc_unlock>
   17188:	01040513          	addi	a0,s0,16
   1718c:	d4dff06f          	j	16ed8 <_malloc_r+0x2bc>
   17190:	0014e693          	ori	a3,s1,1
   17194:	00d43423          	sd	a3,8(s0)
   17198:	009404b3          	add	s1,s0,s1
   1719c:	0299b423          	sd	s1,40(s3)
   171a0:	0299b023          	sd	s1,32(s3)
   171a4:	00176693          	ori	a3,a4,1
   171a8:	0114bc23          	sd	a7,24(s1)
   171ac:	0114b823          	sd	a7,16(s1)
   171b0:	00d4b423          	sd	a3,8(s1)
   171b4:	00f407b3          	add	a5,s0,a5
   171b8:	00090513          	mv	a0,s2
   171bc:	00e7b023          	sd	a4,0(a5)
   171c0:	3b4000ef          	jal	ra,17574 <__malloc_unlock>
   171c4:	01040513          	addi	a0,s0,16
   171c8:	d11ff06f          	j	16ed8 <_malloc_r+0x2bc>
   171cc:	0034d613          	srli	a2,s1,0x3
   171d0:	0016079b          	addiw	a5,a2,1
   171d4:	0017979b          	slliw	a5,a5,0x1
   171d8:	0006061b          	sext.w	a2,a2
   171dc:	00379793          	slli	a5,a5,0x3
   171e0:	a95ff06f          	j	16c74 <_malloc_r+0x58>
   171e4:	0067d713          	srli	a4,a5,0x6
   171e8:	0397059b          	addiw	a1,a4,57
   171ec:	0015959b          	slliw	a1,a1,0x1
   171f0:	0387069b          	addiw	a3,a4,56
   171f4:	00359593          	slli	a1,a1,0x3
   171f8:	ed1ff06f          	j	170c8 <_malloc_r+0x4ac>
   171fc:	13340a63          	beq	s0,s3,17330 <_malloc_r+0x714>
   17200:	0109b403          	ld	s0,16(s3)
   17204:	00843a03          	ld	s4,8(s0)
   17208:	ffca7a13          	andi	s4,s4,-4
   1720c:	409a07b3          	sub	a5,s4,s1
   17210:	009a6663          	bltu	s4,s1,1721c <_malloc_r+0x600>
   17214:	01f00713          	li	a4,31
   17218:	e4f74ce3          	blt	a4,a5,17070 <_malloc_r+0x454>
   1721c:	00090513          	mv	a0,s2
   17220:	354000ef          	jal	ra,17574 <__malloc_unlock>
   17224:	00000513          	li	a0,0
   17228:	cb1ff06f          	j	16ed8 <_malloc_r+0x2bc>
   1722c:	05c7861b          	addiw	a2,a5,92
   17230:	0016169b          	slliw	a3,a2,0x1
   17234:	05b7851b          	addiw	a0,a5,91
   17238:	00369693          	slli	a3,a3,0x3
   1723c:	acdff06f          	j	16d08 <_malloc_r+0xec>
   17240:	01033783          	ld	a5,16(t1)
   17244:	fff6061b          	addiw	a2,a2,-1
   17248:	1e679063          	bne	a5,t1,17428 <_malloc_r+0x80c>
   1724c:	00367793          	andi	a5,a2,3
   17250:	ff030313          	addi	t1,t1,-16
   17254:	fe0796e3          	bnez	a5,17240 <_malloc_r+0x624>
   17258:	0089b703          	ld	a4,8(s3)
   1725c:	fff5c793          	not	a5,a1
   17260:	00e7f7b3          	and	a5,a5,a4
   17264:	00f9b423          	sd	a5,8(s3)
   17268:	00159593          	slli	a1,a1,0x1
   1726c:	b0b7e0e3          	bltu	a5,a1,16d6c <_malloc_r+0x150>
   17270:	ae058ee3          	beqz	a1,16d6c <_malloc_r+0x150>
   17274:	00f5f733          	and	a4,a1,a5
   17278:	00071a63          	bnez	a4,1728c <_malloc_r+0x670>
   1727c:	00159593          	slli	a1,a1,0x1
   17280:	00f5f733          	and	a4,a1,a5
   17284:	004e0e1b          	addiw	t3,t3,4
   17288:	fe070ae3          	beqz	a4,1727c <_malloc_r+0x660>
   1728c:	000e0613          	mv	a2,t3
   17290:	d45ff06f          	j	16fd4 <_malloc_r+0x3b8>
   17294:	020a0a13          	addi	s4,s4,32
   17298:	b21ff06f          	j	16db8 <_malloc_r+0x19c>
   1729c:	0089b503          	ld	a0,8(s3)
   172a0:	4026d69b          	sraiw	a3,a3,0x2
   172a4:	00100793          	li	a5,1
   172a8:	00d797b3          	sll	a5,a5,a3
   172ac:	00a7e7b3          	or	a5,a5,a0
   172b0:	00f9b423          	sd	a5,8(s3)
   172b4:	e41ff06f          	j	170f4 <_malloc_r+0x4d8>
   172b8:	014b0bb3          	add	s7,s6,s4
   172bc:	41700bb3          	neg	s7,s7
   172c0:	034b9b93          	slli	s7,s7,0x34
   172c4:	034bdb93          	srli	s7,s7,0x34
   172c8:	000b8593          	mv	a1,s7
   172cc:	00090513          	mv	a0,s2
   172d0:	5e0010ef          	jal	ra,188b0 <_sbrk_r>
   172d4:	fff00793          	li	a5,-1
   172d8:	00000713          	li	a4,0
   172dc:	b6f50ae3          	beq	a0,a5,16e50 <_malloc_r+0x234>
   172e0:	41650533          	sub	a0,a0,s6
   172e4:	000b871b          	sext.w	a4,s7
   172e8:	01750a33          	add	s4,a0,s7
   172ec:	b65ff06f          	j	16e50 <_malloc_r+0x234>
   172f0:	05400693          	li	a3,84
   172f4:	08e6e463          	bltu	a3,a4,1737c <_malloc_r+0x760>
   172f8:	00c7d713          	srli	a4,a5,0xc
   172fc:	06f7059b          	addiw	a1,a4,111
   17300:	0015959b          	slliw	a1,a1,0x1
   17304:	06e7069b          	addiw	a3,a4,110
   17308:	00359593          	slli	a1,a1,0x3
   1730c:	dbdff06f          	j	170c8 <_malloc_r+0x4ac>
   17310:	15400713          	li	a4,340
   17314:	08f76463          	bltu	a4,a5,1739c <_malloc_r+0x780>
   17318:	00f4d793          	srli	a5,s1,0xf
   1731c:	0787861b          	addiw	a2,a5,120
   17320:	0016169b          	slliw	a3,a2,0x1
   17324:	0777851b          	addiw	a0,a5,119
   17328:	00369693          	slli	a3,a3,0x3
   1732c:	9ddff06f          	j	16d08 <_malloc_r+0xec>
   17330:	7d818c13          	addi	s8,gp,2008 # 24bb8 <__malloc_current_mallinfo>
   17334:	000c2783          	lw	a5,0(s8)
   17338:	014786bb          	addw	a3,a5,s4
   1733c:	00dc2023          	sw	a3,0(s8)
   17340:	aadff06f          	j	16dec <_malloc_r+0x1d0>
   17344:	034b9713          	slli	a4,s7,0x34
   17348:	aa0712e3          	bnez	a4,16dec <_malloc_r+0x1d0>
   1734c:	0109b403          	ld	s0,16(s3)
   17350:	014a8a33          	add	s4,s5,s4
   17354:	001a6a13          	ori	s4,s4,1
   17358:	01443423          	sd	s4,8(s0)
   1735c:	b4dff06f          	j	16ea8 <_malloc_r+0x28c>
   17360:	016cb023          	sd	s6,0(s9)
   17364:	aa1ff06f          	j	16e04 <_malloc_r+0x1e8>
   17368:	000b0413          	mv	s0,s6
   1736c:	b3dff06f          	j	16ea8 <_malloc_r+0x28c>
   17370:	00100793          	li	a5,1
   17374:	00fb3423          	sd	a5,8(s6)
   17378:	ea5ff06f          	j	1721c <_malloc_r+0x600>
   1737c:	15400693          	li	a3,340
   17380:	06e6e663          	bltu	a3,a4,173ec <_malloc_r+0x7d0>
   17384:	00f7d713          	srli	a4,a5,0xf
   17388:	0787059b          	addiw	a1,a4,120
   1738c:	0015959b          	slliw	a1,a1,0x1
   17390:	0777069b          	addiw	a3,a4,119
   17394:	00359593          	slli	a1,a1,0x3
   17398:	d31ff06f          	j	170c8 <_malloc_r+0x4ac>
   1739c:	55400713          	li	a4,1364
   173a0:	06f76663          	bltu	a4,a5,1740c <_malloc_r+0x7f0>
   173a4:	0124d793          	srli	a5,s1,0x12
   173a8:	07d7861b          	addiw	a2,a5,125
   173ac:	0016169b          	slliw	a3,a2,0x1
   173b0:	07c7851b          	addiw	a0,a5,124
   173b4:	00369693          	slli	a3,a3,0x3
   173b8:	951ff06f          	j	16d08 <_malloc_r+0xec>
   173bc:	ff0b8b93          	addi	s7,s7,-16
   173c0:	017c8a33          	add	s4,s9,s7
   173c4:	416a0a33          	sub	s4,s4,s6
   173c8:	00000713          	li	a4,0
   173cc:	a85ff06f          	j	16e50 <_malloc_r+0x234>
   173d0:	01040593          	addi	a1,s0,16
   173d4:	00090513          	mv	a0,s2
   173d8:	b40fc0ef          	jal	ra,13718 <_free_r>
   173dc:	0109b403          	ld	s0,16(s3)
   173e0:	000c2783          	lw	a5,0(s8)
   173e4:	00843a03          	ld	s4,8(s0)
   173e8:	ac1ff06f          	j	16ea8 <_malloc_r+0x28c>
   173ec:	55400693          	li	a3,1364
   173f0:	02e6e663          	bltu	a3,a4,1741c <_malloc_r+0x800>
   173f4:	0127d713          	srli	a4,a5,0x12
   173f8:	07d7059b          	addiw	a1,a4,125
   173fc:	0015959b          	slliw	a1,a1,0x1
   17400:	07c7069b          	addiw	a3,a4,124
   17404:	00359593          	slli	a1,a1,0x3
   17408:	cc1ff06f          	j	170c8 <_malloc_r+0x4ac>
   1740c:	7f000693          	li	a3,2032
   17410:	07f00613          	li	a2,127
   17414:	07e00513          	li	a0,126
   17418:	8f1ff06f          	j	16d08 <_malloc_r+0xec>
   1741c:	7f000593          	li	a1,2032
   17420:	07e00693          	li	a3,126
   17424:	ca5ff06f          	j	170c8 <_malloc_r+0x4ac>
   17428:	0089b783          	ld	a5,8(s3)
   1742c:	e3dff06f          	j	17268 <_malloc_r+0x64c>

0000000000017430 <_mbtowc_r>:
   17430:	e481b783          	ld	a5,-440(gp) # 24228 <__global_locale+0xe8>
   17434:	00078067          	jr	a5

0000000000017438 <__ascii_mbtowc>:
   17438:	02058063          	beqz	a1,17458 <__ascii_mbtowc+0x20>
   1743c:	04060263          	beqz	a2,17480 <__ascii_mbtowc+0x48>
   17440:	04068863          	beqz	a3,17490 <__ascii_mbtowc+0x58>
   17444:	00064783          	lbu	a5,0(a2)
   17448:	00f5a023          	sw	a5,0(a1)
   1744c:	00064503          	lbu	a0,0(a2)
   17450:	00a03533          	snez	a0,a0
   17454:	00008067          	ret
   17458:	ff010113          	addi	sp,sp,-16
   1745c:	00c10593          	addi	a1,sp,12
   17460:	02060463          	beqz	a2,17488 <__ascii_mbtowc+0x50>
   17464:	02068a63          	beqz	a3,17498 <__ascii_mbtowc+0x60>
   17468:	00064783          	lbu	a5,0(a2)
   1746c:	00f5a023          	sw	a5,0(a1)
   17470:	00064503          	lbu	a0,0(a2)
   17474:	00a03533          	snez	a0,a0
   17478:	01010113          	addi	sp,sp,16
   1747c:	00008067          	ret
   17480:	00000513          	li	a0,0
   17484:	00008067          	ret
   17488:	00000513          	li	a0,0
   1748c:	fedff06f          	j	17478 <__ascii_mbtowc+0x40>
   17490:	ffe00513          	li	a0,-2
   17494:	00008067          	ret
   17498:	ffe00513          	li	a0,-2
   1749c:	fddff06f          	j	17478 <__ascii_mbtowc+0x40>

00000000000174a0 <memchr>:
   174a0:	00757793          	andi	a5,a0,7
   174a4:	0ff5f693          	andi	a3,a1,255
   174a8:	02078a63          	beqz	a5,174dc <memchr+0x3c>
   174ac:	fff60793          	addi	a5,a2,-1
   174b0:	02060e63          	beqz	a2,174ec <memchr+0x4c>
   174b4:	fff00613          	li	a2,-1
   174b8:	0180006f          	j	174d0 <memchr+0x30>
   174bc:	00150513          	addi	a0,a0,1
   174c0:	00757713          	andi	a4,a0,7
   174c4:	00070e63          	beqz	a4,174e0 <memchr+0x40>
   174c8:	fff78793          	addi	a5,a5,-1
   174cc:	02c78063          	beq	a5,a2,174ec <memchr+0x4c>
   174d0:	00054703          	lbu	a4,0(a0)
   174d4:	fed714e3          	bne	a4,a3,174bc <memchr+0x1c>
   174d8:	00008067          	ret
   174dc:	00060793          	mv	a5,a2
   174e0:	00700713          	li	a4,7
   174e4:	02f76663          	bltu	a4,a5,17510 <memchr+0x70>
   174e8:	00079663          	bnez	a5,174f4 <memchr+0x54>
   174ec:	00000513          	li	a0,0
   174f0:	00008067          	ret
   174f4:	00f507b3          	add	a5,a0,a5
   174f8:	00c0006f          	j	17504 <memchr+0x64>
   174fc:	00150513          	addi	a0,a0,1
   17500:	fea786e3          	beq	a5,a0,174ec <memchr+0x4c>
   17504:	00054703          	lbu	a4,0(a0)
   17508:	fed71ae3          	bne	a4,a3,174fc <memchr+0x5c>
   1750c:	00008067          	ret
   17510:	0ff5f593          	andi	a1,a1,255
   17514:	00859713          	slli	a4,a1,0x8
   17518:	00b765b3          	or	a1,a4,a1
   1751c:	01059713          	slli	a4,a1,0x10
   17520:	00b76733          	or	a4,a4,a1
   17524:	02071593          	slli	a1,a4,0x20
   17528:	00e5e5b3          	or	a1,a1,a4
   1752c:	0000d897          	auipc	a7,0xd
   17530:	5cc8b883          	ld	a7,1484(a7) # 24af8 <__SDATA_BEGIN__>
   17534:	0000d817          	auipc	a6,0xd
   17538:	5cc83803          	ld	a6,1484(a6) # 24b00 <__SDATA_BEGIN__+0x8>
   1753c:	00700313          	li	t1,7
   17540:	00053703          	ld	a4,0(a0)
   17544:	00e5c733          	xor	a4,a1,a4
   17548:	01170633          	add	a2,a4,a7
   1754c:	fff74713          	not	a4,a4
   17550:	00e67733          	and	a4,a2,a4
   17554:	01077733          	and	a4,a4,a6
   17558:	f8071ee3          	bnez	a4,174f4 <memchr+0x54>
   1755c:	ff878793          	addi	a5,a5,-8
   17560:	00850513          	addi	a0,a0,8
   17564:	fcf36ee3          	bltu	t1,a5,17540 <memchr+0xa0>
   17568:	f80796e3          	bnez	a5,174f4 <memchr+0x54>
   1756c:	f81ff06f          	j	174ec <memchr+0x4c>

0000000000017570 <__malloc_lock>:
   17570:	00008067          	ret

0000000000017574 <__malloc_unlock>:
   17574:	00008067          	ret

0000000000017578 <_Balloc>:
   17578:	07853783          	ld	a5,120(a0)
   1757c:	fe010113          	addi	sp,sp,-32
   17580:	00813823          	sd	s0,16(sp)
   17584:	00913423          	sd	s1,8(sp)
   17588:	00113c23          	sd	ra,24(sp)
   1758c:	01213023          	sd	s2,0(sp)
   17590:	00050413          	mv	s0,a0
   17594:	00058493          	mv	s1,a1
   17598:	02078c63          	beqz	a5,175d0 <_Balloc+0x58>
   1759c:	00349513          	slli	a0,s1,0x3
   175a0:	00a787b3          	add	a5,a5,a0
   175a4:	0007b503          	ld	a0,0(a5)
   175a8:	04050463          	beqz	a0,175f0 <_Balloc+0x78>
   175ac:	00053703          	ld	a4,0(a0)
   175b0:	00e7b023          	sd	a4,0(a5)
   175b4:	00053823          	sd	zero,16(a0)
   175b8:	01813083          	ld	ra,24(sp)
   175bc:	01013403          	ld	s0,16(sp)
   175c0:	00813483          	ld	s1,8(sp)
   175c4:	00013903          	ld	s2,0(sp)
   175c8:	02010113          	addi	sp,sp,32
   175cc:	00008067          	ret
   175d0:	04100613          	li	a2,65
   175d4:	00800593          	li	a1,8
   175d8:	550050ef          	jal	ra,1cb28 <_calloc_r>
   175dc:	06a43c23          	sd	a0,120(s0)
   175e0:	00050793          	mv	a5,a0
   175e4:	fa051ce3          	bnez	a0,1759c <_Balloc+0x24>
   175e8:	00000513          	li	a0,0
   175ec:	fcdff06f          	j	175b8 <_Balloc+0x40>
   175f0:	00100913          	li	s2,1
   175f4:	0099163b          	sllw	a2,s2,s1
   175f8:	00060913          	mv	s2,a2
   175fc:	00760613          	addi	a2,a2,7
   17600:	00261613          	slli	a2,a2,0x2
   17604:	00100593          	li	a1,1
   17608:	00040513          	mv	a0,s0
   1760c:	51c050ef          	jal	ra,1cb28 <_calloc_r>
   17610:	fc050ce3          	beqz	a0,175e8 <_Balloc+0x70>
   17614:	00952423          	sw	s1,8(a0)
   17618:	01252623          	sw	s2,12(a0)
   1761c:	f99ff06f          	j	175b4 <_Balloc+0x3c>

0000000000017620 <_Bfree>:
   17620:	02058063          	beqz	a1,17640 <_Bfree+0x20>
   17624:	0085a703          	lw	a4,8(a1)
   17628:	07853783          	ld	a5,120(a0)
   1762c:	00371713          	slli	a4,a4,0x3
   17630:	00e787b3          	add	a5,a5,a4
   17634:	0007b703          	ld	a4,0(a5)
   17638:	00e5b023          	sd	a4,0(a1)
   1763c:	00b7b023          	sd	a1,0(a5)
   17640:	00008067          	ret

0000000000017644 <__multadd>:
   17644:	fb010113          	addi	sp,sp,-80
   17648:	03213823          	sd	s2,48(sp)
   1764c:	0145a903          	lw	s2,20(a1)
   17650:	01813023          	sd	s8,0(sp)
   17654:	00010c37          	lui	s8,0x10
   17658:	04813023          	sd	s0,64(sp)
   1765c:	02913c23          	sd	s1,56(sp)
   17660:	03313423          	sd	s3,40(sp)
   17664:	03413023          	sd	s4,32(sp)
   17668:	01513c23          	sd	s5,24(sp)
   1766c:	01613823          	sd	s6,16(sp)
   17670:	04113423          	sd	ra,72(sp)
   17674:	01713423          	sd	s7,8(sp)
   17678:	00058993          	mv	s3,a1
   1767c:	00050a13          	mv	s4,a0
   17680:	00068413          	mv	s0,a3
   17684:	01858493          	addi	s1,a1,24
   17688:	00060a93          	mv	s5,a2
   1768c:	00000b13          	li	s6,0
   17690:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0xb1>
   17694:	0004ab83          	lw	s7,0(s1)
   17698:	000a8593          	mv	a1,s5
   1769c:	00448493          	addi	s1,s1,4
   176a0:	018bf533          	and	a0,s7,s8
   176a4:	3a80a0ef          	jal	ra,21a4c <__muldi3>
   176a8:	0085043b          	addw	s0,a0,s0
   176ac:	000a8593          	mv	a1,s5
   176b0:	010bd51b          	srliw	a0,s7,0x10
   176b4:	3980a0ef          	jal	ra,21a4c <__muldi3>
   176b8:	0104569b          	srliw	a3,s0,0x10
   176bc:	00a6853b          	addw	a0,a3,a0
   176c0:	0105179b          	slliw	a5,a0,0x10
   176c4:	008c7433          	and	s0,s8,s0
   176c8:	0087843b          	addw	s0,a5,s0
   176cc:	fe84ae23          	sw	s0,-4(s1)
   176d0:	001b0b1b          	addiw	s6,s6,1
   176d4:	0105541b          	srliw	s0,a0,0x10
   176d8:	fb2b4ee3          	blt	s6,s2,17694 <__multadd+0x50>
   176dc:	02040263          	beqz	s0,17700 <__multadd+0xbc>
   176e0:	00c9a783          	lw	a5,12(s3)
   176e4:	04f95863          	bge	s2,a5,17734 <__multadd+0xf0>
   176e8:	00490793          	addi	a5,s2,4
   176ec:	00279793          	slli	a5,a5,0x2
   176f0:	00f987b3          	add	a5,s3,a5
   176f4:	0087a423          	sw	s0,8(a5)
   176f8:	0019091b          	addiw	s2,s2,1
   176fc:	0129aa23          	sw	s2,20(s3)
   17700:	04813083          	ld	ra,72(sp)
   17704:	04013403          	ld	s0,64(sp)
   17708:	03813483          	ld	s1,56(sp)
   1770c:	03013903          	ld	s2,48(sp)
   17710:	02013a03          	ld	s4,32(sp)
   17714:	01813a83          	ld	s5,24(sp)
   17718:	01013b03          	ld	s6,16(sp)
   1771c:	00813b83          	ld	s7,8(sp)
   17720:	00013c03          	ld	s8,0(sp)
   17724:	00098513          	mv	a0,s3
   17728:	02813983          	ld	s3,40(sp)
   1772c:	05010113          	addi	sp,sp,80
   17730:	00008067          	ret
   17734:	0089a583          	lw	a1,8(s3)
   17738:	000a0513          	mv	a0,s4
   1773c:	0015859b          	addiw	a1,a1,1
   17740:	e39ff0ef          	jal	ra,17578 <_Balloc>
   17744:	00050493          	mv	s1,a0
   17748:	04050c63          	beqz	a0,177a0 <__multadd+0x15c>
   1774c:	0149a603          	lw	a2,20(s3)
   17750:	01098593          	addi	a1,s3,16
   17754:	01050513          	addi	a0,a0,16
   17758:	00260613          	addi	a2,a2,2
   1775c:	00261613          	slli	a2,a2,0x2
   17760:	699050ef          	jal	ra,1d5f8 <memcpy>
   17764:	0089a703          	lw	a4,8(s3)
   17768:	078a3783          	ld	a5,120(s4)
   1776c:	00371713          	slli	a4,a4,0x3
   17770:	00e787b3          	add	a5,a5,a4
   17774:	0007b703          	ld	a4,0(a5)
   17778:	00e9b023          	sd	a4,0(s3)
   1777c:	0137b023          	sd	s3,0(a5)
   17780:	00490793          	addi	a5,s2,4
   17784:	00048993          	mv	s3,s1
   17788:	00279793          	slli	a5,a5,0x2
   1778c:	00f987b3          	add	a5,s3,a5
   17790:	0087a423          	sw	s0,8(a5)
   17794:	0019091b          	addiw	s2,s2,1
   17798:	0129aa23          	sw	s2,20(s3)
   1779c:	f65ff06f          	j	17700 <__multadd+0xbc>
   177a0:	0000b697          	auipc	a3,0xb
   177a4:	90868693          	addi	a3,a3,-1784 # 220a8 <bmask+0x40>
   177a8:	00000613          	li	a2,0
   177ac:	0b500593          	li	a1,181
   177b0:	0000b517          	auipc	a0,0xb
   177b4:	91050513          	addi	a0,a0,-1776 # 220c0 <bmask+0x58>
   177b8:	2f4050ef          	jal	ra,1caac <__assert_func>

00000000000177bc <__s2b>:
   177bc:	fc010113          	addi	sp,sp,-64
   177c0:	02813823          	sd	s0,48(sp)
   177c4:	03213023          	sd	s2,32(sp)
   177c8:	00058413          	mv	s0,a1
   177cc:	00050913          	mv	s2,a0
   177d0:	00900593          	li	a1,9
   177d4:	0086851b          	addiw	a0,a3,8
   177d8:	02913423          	sd	s1,40(sp)
   177dc:	01313c23          	sd	s3,24(sp)
   177e0:	01413823          	sd	s4,16(sp)
   177e4:	02113c23          	sd	ra,56(sp)
   177e8:	01513423          	sd	s5,8(sp)
   177ec:	01613023          	sd	s6,0(sp)
   177f0:	00068493          	mv	s1,a3
   177f4:	00060993          	mv	s3,a2
   177f8:	00070a13          	mv	s4,a4
   177fc:	2b40a0ef          	jal	ra,21ab0 <__divdi3>
   17800:	00900793          	li	a5,9
   17804:	0e97de63          	bge	a5,s1,17900 <__s2b+0x144>
   17808:	0005051b          	sext.w	a0,a0
   1780c:	00100793          	li	a5,1
   17810:	00000593          	li	a1,0
   17814:	0017979b          	slliw	a5,a5,0x1
   17818:	0015859b          	addiw	a1,a1,1
   1781c:	fea7cce3          	blt	a5,a0,17814 <__s2b+0x58>
   17820:	00090513          	mv	a0,s2
   17824:	d55ff0ef          	jal	ra,17578 <_Balloc>
   17828:	00050593          	mv	a1,a0
   1782c:	0c050e63          	beqz	a0,17908 <__s2b+0x14c>
   17830:	00100793          	li	a5,1
   17834:	00f52a23          	sw	a5,20(a0)
   17838:	01452c23          	sw	s4,24(a0)
   1783c:	00900793          	li	a5,9
   17840:	0b37da63          	bge	a5,s3,178f4 <__s2b+0x138>
   17844:	02099a13          	slli	s4,s3,0x20
   17848:	00940b13          	addi	s6,s0,9
   1784c:	020a5a13          	srli	s4,s4,0x20
   17850:	01440a33          	add	s4,s0,s4
   17854:	00098a9b          	sext.w	s5,s3
   17858:	000b0413          	mv	s0,s6
   1785c:	00044683          	lbu	a3,0(s0)
   17860:	00a00613          	li	a2,10
   17864:	00090513          	mv	a0,s2
   17868:	fd06869b          	addiw	a3,a3,-48
   1786c:	dd9ff0ef          	jal	ra,17644 <__multadd>
   17870:	00140413          	addi	s0,s0,1
   17874:	00050593          	mv	a1,a0
   17878:	ff4412e3          	bne	s0,s4,1785c <__s2b+0xa0>
   1787c:	ff8a841b          	addiw	s0,s5,-8
   17880:	02041413          	slli	s0,s0,0x20
   17884:	02045413          	srli	s0,s0,0x20
   17888:	008b0433          	add	s0,s6,s0
   1788c:	0299de63          	bge	s3,s1,178c8 <__s2b+0x10c>
   17890:	fff4849b          	addiw	s1,s1,-1
   17894:	413484bb          	subw	s1,s1,s3
   17898:	02049493          	slli	s1,s1,0x20
   1789c:	0204d493          	srli	s1,s1,0x20
   178a0:	00148493          	addi	s1,s1,1
   178a4:	009404b3          	add	s1,s0,s1
   178a8:	00044683          	lbu	a3,0(s0)
   178ac:	00a00613          	li	a2,10
   178b0:	00090513          	mv	a0,s2
   178b4:	fd06869b          	addiw	a3,a3,-48
   178b8:	d8dff0ef          	jal	ra,17644 <__multadd>
   178bc:	00140413          	addi	s0,s0,1
   178c0:	00050593          	mv	a1,a0
   178c4:	fe9412e3          	bne	s0,s1,178a8 <__s2b+0xec>
   178c8:	03813083          	ld	ra,56(sp)
   178cc:	03013403          	ld	s0,48(sp)
   178d0:	02813483          	ld	s1,40(sp)
   178d4:	02013903          	ld	s2,32(sp)
   178d8:	01813983          	ld	s3,24(sp)
   178dc:	01013a03          	ld	s4,16(sp)
   178e0:	00813a83          	ld	s5,8(sp)
   178e4:	00013b03          	ld	s6,0(sp)
   178e8:	00058513          	mv	a0,a1
   178ec:	04010113          	addi	sp,sp,64
   178f0:	00008067          	ret
   178f4:	00a40413          	addi	s0,s0,10
   178f8:	00900993          	li	s3,9
   178fc:	f91ff06f          	j	1788c <__s2b+0xd0>
   17900:	00000593          	li	a1,0
   17904:	f1dff06f          	j	17820 <__s2b+0x64>
   17908:	0000a697          	auipc	a3,0xa
   1790c:	7a068693          	addi	a3,a3,1952 # 220a8 <bmask+0x40>
   17910:	00000613          	li	a2,0
   17914:	0ce00593          	li	a1,206
   17918:	0000a517          	auipc	a0,0xa
   1791c:	7a850513          	addi	a0,a0,1960 # 220c0 <bmask+0x58>
   17920:	18c050ef          	jal	ra,1caac <__assert_func>

0000000000017924 <__hi0bits>:
   17924:	ffff0737          	lui	a4,0xffff0
   17928:	00e57733          	and	a4,a0,a4
   1792c:	00050793          	mv	a5,a0
   17930:	00000513          	li	a0,0
   17934:	00071663          	bnez	a4,17940 <__hi0bits+0x1c>
   17938:	0107979b          	slliw	a5,a5,0x10
   1793c:	01000513          	li	a0,16
   17940:	ff000737          	lui	a4,0xff000
   17944:	00e7f733          	and	a4,a5,a4
   17948:	00071663          	bnez	a4,17954 <__hi0bits+0x30>
   1794c:	0087979b          	slliw	a5,a5,0x8
   17950:	0085051b          	addiw	a0,a0,8
   17954:	f0000737          	lui	a4,0xf0000
   17958:	00e7f733          	and	a4,a5,a4
   1795c:	00071663          	bnez	a4,17968 <__hi0bits+0x44>
   17960:	0047979b          	slliw	a5,a5,0x4
   17964:	0045051b          	addiw	a0,a0,4
   17968:	c0000737          	lui	a4,0xc0000
   1796c:	00e7f733          	and	a4,a5,a4
   17970:	00071663          	bnez	a4,1797c <__hi0bits+0x58>
   17974:	0027979b          	slliw	a5,a5,0x2
   17978:	0025051b          	addiw	a0,a0,2
   1797c:	0007ca63          	bltz	a5,17990 <__hi0bits+0x6c>
   17980:	01e7d793          	srli	a5,a5,0x1e
   17984:	0017f793          	andi	a5,a5,1
   17988:	0015051b          	addiw	a0,a0,1
   1798c:	00078463          	beqz	a5,17994 <__hi0bits+0x70>
   17990:	00008067          	ret
   17994:	02000513          	li	a0,32
   17998:	00008067          	ret

000000000001799c <__lo0bits>:
   1799c:	00052783          	lw	a5,0(a0)
   179a0:	00050713          	mv	a4,a0
   179a4:	0077f693          	andi	a3,a5,7
   179a8:	00078613          	mv	a2,a5
   179ac:	02068463          	beqz	a3,179d4 <__lo0bits+0x38>
   179b0:	0017f693          	andi	a3,a5,1
   179b4:	00000513          	li	a0,0
   179b8:	04069e63          	bnez	a3,17a14 <__lo0bits+0x78>
   179bc:	00267613          	andi	a2,a2,2
   179c0:	0a060863          	beqz	a2,17a70 <__lo0bits+0xd4>
   179c4:	0017d79b          	srliw	a5,a5,0x1
   179c8:	00f72023          	sw	a5,0(a4) # ffffffffc0000000 <__BSS_END__+0xffffffffbffdb420>
   179cc:	00100513          	li	a0,1
   179d0:	00008067          	ret
   179d4:	03079693          	slli	a3,a5,0x30
   179d8:	0306d693          	srli	a3,a3,0x30
   179dc:	00000513          	li	a0,0
   179e0:	06068e63          	beqz	a3,17a5c <__lo0bits+0xc0>
   179e4:	0ff7f693          	andi	a3,a5,255
   179e8:	06068063          	beqz	a3,17a48 <__lo0bits+0xac>
   179ec:	00f7f693          	andi	a3,a5,15
   179f0:	04068263          	beqz	a3,17a34 <__lo0bits+0x98>
   179f4:	0037f693          	andi	a3,a5,3
   179f8:	02068463          	beqz	a3,17a20 <__lo0bits+0x84>
   179fc:	0017f693          	andi	a3,a5,1
   17a00:	00069c63          	bnez	a3,17a18 <__lo0bits+0x7c>
   17a04:	0017d79b          	srliw	a5,a5,0x1
   17a08:	0015051b          	addiw	a0,a0,1
   17a0c:	00079663          	bnez	a5,17a18 <__lo0bits+0x7c>
   17a10:	02000513          	li	a0,32
   17a14:	00008067          	ret
   17a18:	00f72023          	sw	a5,0(a4)
   17a1c:	00008067          	ret
   17a20:	0027d79b          	srliw	a5,a5,0x2
   17a24:	0017f693          	andi	a3,a5,1
   17a28:	0025051b          	addiw	a0,a0,2
   17a2c:	fe0696e3          	bnez	a3,17a18 <__lo0bits+0x7c>
   17a30:	fd5ff06f          	j	17a04 <__lo0bits+0x68>
   17a34:	0047d79b          	srliw	a5,a5,0x4
   17a38:	0037f693          	andi	a3,a5,3
   17a3c:	0045051b          	addiw	a0,a0,4
   17a40:	fa069ee3          	bnez	a3,179fc <__lo0bits+0x60>
   17a44:	fddff06f          	j	17a20 <__lo0bits+0x84>
   17a48:	0087d79b          	srliw	a5,a5,0x8
   17a4c:	00f7f693          	andi	a3,a5,15
   17a50:	0085051b          	addiw	a0,a0,8
   17a54:	fa0690e3          	bnez	a3,179f4 <__lo0bits+0x58>
   17a58:	fddff06f          	j	17a34 <__lo0bits+0x98>
   17a5c:	0107d79b          	srliw	a5,a5,0x10
   17a60:	0ff7f693          	andi	a3,a5,255
   17a64:	01000513          	li	a0,16
   17a68:	f80692e3          	bnez	a3,179ec <__lo0bits+0x50>
   17a6c:	fddff06f          	j	17a48 <__lo0bits+0xac>
   17a70:	0027d79b          	srliw	a5,a5,0x2
   17a74:	00f72023          	sw	a5,0(a4)
   17a78:	00200513          	li	a0,2
   17a7c:	00008067          	ret

0000000000017a80 <__i2b>:
   17a80:	07853783          	ld	a5,120(a0)
   17a84:	fe010113          	addi	sp,sp,-32
   17a88:	00813823          	sd	s0,16(sp)
   17a8c:	00913423          	sd	s1,8(sp)
   17a90:	00113c23          	sd	ra,24(sp)
   17a94:	00050413          	mv	s0,a0
   17a98:	00058493          	mv	s1,a1
   17a9c:	02078c63          	beqz	a5,17ad4 <__i2b+0x54>
   17aa0:	0087b503          	ld	a0,8(a5)
   17aa4:	06050263          	beqz	a0,17b08 <__i2b+0x88>
   17aa8:	00053703          	ld	a4,0(a0)
   17aac:	00e7b423          	sd	a4,8(a5)
   17ab0:	01813083          	ld	ra,24(sp)
   17ab4:	01013403          	ld	s0,16(sp)
   17ab8:	00100793          	li	a5,1
   17abc:	02079793          	slli	a5,a5,0x20
   17ac0:	00952c23          	sw	s1,24(a0)
   17ac4:	00f53823          	sd	a5,16(a0)
   17ac8:	00813483          	ld	s1,8(sp)
   17acc:	02010113          	addi	sp,sp,32
   17ad0:	00008067          	ret
   17ad4:	04100613          	li	a2,65
   17ad8:	00800593          	li	a1,8
   17adc:	04c050ef          	jal	ra,1cb28 <_calloc_r>
   17ae0:	06a43c23          	sd	a0,120(s0)
   17ae4:	00050793          	mv	a5,a0
   17ae8:	fa051ce3          	bnez	a0,17aa0 <__i2b+0x20>
   17aec:	0000a697          	auipc	a3,0xa
   17af0:	5bc68693          	addi	a3,a3,1468 # 220a8 <bmask+0x40>
   17af4:	00000613          	li	a2,0
   17af8:	14000593          	li	a1,320
   17afc:	0000a517          	auipc	a0,0xa
   17b00:	5c450513          	addi	a0,a0,1476 # 220c0 <bmask+0x58>
   17b04:	7a9040ef          	jal	ra,1caac <__assert_func>
   17b08:	02400613          	li	a2,36
   17b0c:	00100593          	li	a1,1
   17b10:	00040513          	mv	a0,s0
   17b14:	014050ef          	jal	ra,1cb28 <_calloc_r>
   17b18:	fc050ae3          	beqz	a0,17aec <__i2b+0x6c>
   17b1c:	00100793          	li	a5,1
   17b20:	02179793          	slli	a5,a5,0x21
   17b24:	00178793          	addi	a5,a5,1
   17b28:	00f53423          	sd	a5,8(a0)
   17b2c:	f85ff06f          	j	17ab0 <__i2b+0x30>

0000000000017b30 <__multiply>:
   17b30:	f6010113          	addi	sp,sp,-160
   17b34:	07313c23          	sd	s3,120(sp)
   17b38:	05813823          	sd	s8,80(sp)
   17b3c:	01462983          	lw	s3,20(a2)
   17b40:	0145ac03          	lw	s8,20(a1)
   17b44:	08813823          	sd	s0,144(sp)
   17b48:	07413823          	sd	s4,112(sp)
   17b4c:	08113c23          	sd	ra,152(sp)
   17b50:	08913423          	sd	s1,136(sp)
   17b54:	09213023          	sd	s2,128(sp)
   17b58:	07513423          	sd	s5,104(sp)
   17b5c:	07613023          	sd	s6,96(sp)
   17b60:	05713c23          	sd	s7,88(sp)
   17b64:	05913423          	sd	s9,72(sp)
   17b68:	05a13023          	sd	s10,64(sp)
   17b6c:	03b13c23          	sd	s11,56(sp)
   17b70:	00058a13          	mv	s4,a1
   17b74:	00060413          	mv	s0,a2
   17b78:	013c4c63          	blt	s8,s3,17b90 <__multiply+0x60>
   17b7c:	00098793          	mv	a5,s3
   17b80:	00058413          	mv	s0,a1
   17b84:	000c0993          	mv	s3,s8
   17b88:	00060a13          	mv	s4,a2
   17b8c:	00078c13          	mv	s8,a5
   17b90:	00c42783          	lw	a5,12(s0)
   17b94:	0189873b          	addw	a4,s3,s8
   17b98:	00e13423          	sd	a4,8(sp)
   17b9c:	00842583          	lw	a1,8(s0)
   17ba0:	00e7d463          	bge	a5,a4,17ba8 <__multiply+0x78>
   17ba4:	0015859b          	addiw	a1,a1,1
   17ba8:	9d1ff0ef          	jal	ra,17578 <_Balloc>
   17bac:	02a13423          	sd	a0,40(sp)
   17bb0:	22050663          	beqz	a0,17ddc <__multiply+0x2ac>
   17bb4:	02813783          	ld	a5,40(sp)
   17bb8:	01878b13          	addi	s6,a5,24
   17bbc:	00813783          	ld	a5,8(sp)
   17bc0:	00279a93          	slli	s5,a5,0x2
   17bc4:	015b0ab3          	add	s5,s6,s5
   17bc8:	000b0793          	mv	a5,s6
   17bcc:	015b7863          	bgeu	s6,s5,17bdc <__multiply+0xac>
   17bd0:	0007a023          	sw	zero,0(a5)
   17bd4:	00478793          	addi	a5,a5,4
   17bd8:	ff57ece3          	bltu	a5,s5,17bd0 <__multiply+0xa0>
   17bdc:	018a0a13          	addi	s4,s4,24
   17be0:	002c1c13          	slli	s8,s8,0x2
   17be4:	01840793          	addi	a5,s0,24
   17be8:	018a0733          	add	a4,s4,s8
   17bec:	00299993          	slli	s3,s3,0x2
   17bf0:	02f13023          	sd	a5,32(sp)
   17bf4:	00e13823          	sd	a4,16(sp)
   17bf8:	013789b3          	add	s3,a5,s3
   17bfc:	14ea7a63          	bgeu	s4,a4,17d50 <__multiply+0x220>
   17c00:	00400713          	li	a4,4
   17c04:	01940793          	addi	a5,s0,25
   17c08:	00e13c23          	sd	a4,24(sp)
   17c0c:	1af9fc63          	bgeu	s3,a5,17dc4 <__multiply+0x294>
   17c10:	00010937          	lui	s2,0x10
   17c14:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   17c18:	01c0006f          	j	17c34 <__multiply+0x104>
   17c1c:	0107dc1b          	srliw	s8,a5,0x10
   17c20:	0a0c1063          	bnez	s8,17cc0 <__multiply+0x190>
   17c24:	01013783          	ld	a5,16(sp)
   17c28:	004a0a13          	addi	s4,s4,4
   17c2c:	004b0b13          	addi	s6,s6,4
   17c30:	12fa7063          	bgeu	s4,a5,17d50 <__multiply+0x220>
   17c34:	000a2783          	lw	a5,0(s4)
   17c38:	0127fdb3          	and	s11,a5,s2
   17c3c:	fe0d80e3          	beqz	s11,17c1c <__multiply+0xec>
   17c40:	02013c83          	ld	s9,32(sp)
   17c44:	000b0d13          	mv	s10,s6
   17c48:	00000c13          	li	s8,0
   17c4c:	000cab83          	lw	s7,0(s9)
   17c50:	000d2483          	lw	s1,0(s10)
   17c54:	000d8593          	mv	a1,s11
   17c58:	012bf533          	and	a0,s7,s2
   17c5c:	5f1090ef          	jal	ra,21a4c <__muldi3>
   17c60:	0124f433          	and	s0,s1,s2
   17c64:	0085043b          	addw	s0,a0,s0
   17c68:	000d8593          	mv	a1,s11
   17c6c:	010bd51b          	srliw	a0,s7,0x10
   17c70:	5dd090ef          	jal	ra,21a4c <__muldi3>
   17c74:	0184043b          	addw	s0,s0,s8
   17c78:	0104d49b          	srliw	s1,s1,0x10
   17c7c:	00a484bb          	addw	s1,s1,a0
   17c80:	0104551b          	srliw	a0,s0,0x10
   17c84:	00a4853b          	addw	a0,s1,a0
   17c88:	0105169b          	slliw	a3,a0,0x10
   17c8c:	00897433          	and	s0,s2,s0
   17c90:	004d0d13          	addi	s10,s10,4
   17c94:	00d46433          	or	s0,s0,a3
   17c98:	004c8c93          	addi	s9,s9,4
   17c9c:	fe8d2e23          	sw	s0,-4(s10)
   17ca0:	01055c1b          	srliw	s8,a0,0x10
   17ca4:	fb3ce4e3          	bltu	s9,s3,17c4c <__multiply+0x11c>
   17ca8:	01813783          	ld	a5,24(sp)
   17cac:	00fb07b3          	add	a5,s6,a5
   17cb0:	0187a023          	sw	s8,0(a5)
   17cb4:	000a2783          	lw	a5,0(s4)
   17cb8:	0107dc1b          	srliw	s8,a5,0x10
   17cbc:	f60c04e3          	beqz	s8,17c24 <__multiply+0xf4>
   17cc0:	000b2c83          	lw	s9,0(s6)
   17cc4:	02013d83          	ld	s11,32(sp)
   17cc8:	000b0d13          	mv	s10,s6
   17ccc:	000c8413          	mv	s0,s9
   17cd0:	00000493          	li	s1,0
   17cd4:	000da503          	lw	a0,0(s11)
   17cd8:	000c0593          	mv	a1,s8
   17cdc:	0104541b          	srliw	s0,s0,0x10
   17ce0:	00a97533          	and	a0,s2,a0
   17ce4:	569090ef          	jal	ra,21a4c <__muldi3>
   17ce8:	00a4043b          	addw	s0,s0,a0
   17cec:	009404bb          	addw	s1,s0,s1
   17cf0:	0104961b          	slliw	a2,s1,0x10
   17cf4:	012cf7b3          	and	a5,s9,s2
   17cf8:	00c7e7b3          	or	a5,a5,a2
   17cfc:	00fd2023          	sw	a5,0(s10)
   17d00:	002dd503          	lhu	a0,2(s11)
   17d04:	004d2403          	lw	s0,4(s10)
   17d08:	000c0593          	mv	a1,s8
   17d0c:	541090ef          	jal	ra,21a4c <__muldi3>
   17d10:	012477b3          	and	a5,s0,s2
   17d14:	0104d49b          	srliw	s1,s1,0x10
   17d18:	00f5053b          	addw	a0,a0,a5
   17d1c:	0095053b          	addw	a0,a0,s1
   17d20:	004d8d93          	addi	s11,s11,4
   17d24:	004d0d13          	addi	s10,s10,4
   17d28:	00050c9b          	sext.w	s9,a0
   17d2c:	0105549b          	srliw	s1,a0,0x10
   17d30:	fb3de2e3          	bltu	s11,s3,17cd4 <__multiply+0x1a4>
   17d34:	01813783          	ld	a5,24(sp)
   17d38:	004a0a13          	addi	s4,s4,4
   17d3c:	00fb0733          	add	a4,s6,a5
   17d40:	01013783          	ld	a5,16(sp)
   17d44:	01972023          	sw	s9,0(a4)
   17d48:	004b0b13          	addi	s6,s6,4
   17d4c:	eefa64e3          	bltu	s4,a5,17c34 <__multiply+0x104>
   17d50:	00813783          	ld	a5,8(sp)
   17d54:	00f04c63          	bgtz	a5,17d6c <__multiply+0x23c>
   17d58:	0200006f          	j	17d78 <__multiply+0x248>
   17d5c:	00813783          	ld	a5,8(sp)
   17d60:	fff7879b          	addiw	a5,a5,-1
   17d64:	00f13423          	sd	a5,8(sp)
   17d68:	00078863          	beqz	a5,17d78 <__multiply+0x248>
   17d6c:	ffcaa783          	lw	a5,-4(s5)
   17d70:	ffca8a93          	addi	s5,s5,-4
   17d74:	fe0784e3          	beqz	a5,17d5c <__multiply+0x22c>
   17d78:	02813783          	ld	a5,40(sp)
   17d7c:	00813703          	ld	a4,8(sp)
   17d80:	09813083          	ld	ra,152(sp)
   17d84:	09013403          	ld	s0,144(sp)
   17d88:	00e7aa23          	sw	a4,20(a5)
   17d8c:	08813483          	ld	s1,136(sp)
   17d90:	08013903          	ld	s2,128(sp)
   17d94:	07813983          	ld	s3,120(sp)
   17d98:	07013a03          	ld	s4,112(sp)
   17d9c:	06813a83          	ld	s5,104(sp)
   17da0:	06013b03          	ld	s6,96(sp)
   17da4:	05813b83          	ld	s7,88(sp)
   17da8:	05013c03          	ld	s8,80(sp)
   17dac:	04813c83          	ld	s9,72(sp)
   17db0:	04013d03          	ld	s10,64(sp)
   17db4:	03813d83          	ld	s11,56(sp)
   17db8:	00078513          	mv	a0,a5
   17dbc:	0a010113          	addi	sp,sp,160
   17dc0:	00008067          	ret
   17dc4:	40898db3          	sub	s11,s3,s0
   17dc8:	fe7d8d93          	addi	s11,s11,-25
   17dcc:	ffcdfd93          	andi	s11,s11,-4
   17dd0:	004d8793          	addi	a5,s11,4
   17dd4:	00f13c23          	sd	a5,24(sp)
   17dd8:	e39ff06f          	j	17c10 <__multiply+0xe0>
   17ddc:	0000a697          	auipc	a3,0xa
   17de0:	2cc68693          	addi	a3,a3,716 # 220a8 <bmask+0x40>
   17de4:	00000613          	li	a2,0
   17de8:	15d00593          	li	a1,349
   17dec:	0000a517          	auipc	a0,0xa
   17df0:	2d450513          	addi	a0,a0,724 # 220c0 <bmask+0x58>
   17df4:	4b9040ef          	jal	ra,1caac <__assert_func>

0000000000017df8 <__pow5mult>:
   17df8:	fd010113          	addi	sp,sp,-48
   17dfc:	02813023          	sd	s0,32(sp)
   17e00:	01213823          	sd	s2,16(sp)
   17e04:	01313423          	sd	s3,8(sp)
   17e08:	02113423          	sd	ra,40(sp)
   17e0c:	00913c23          	sd	s1,24(sp)
   17e10:	00367793          	andi	a5,a2,3
   17e14:	00060413          	mv	s0,a2
   17e18:	00050993          	mv	s3,a0
   17e1c:	00058913          	mv	s2,a1
   17e20:	0a079e63          	bnez	a5,17edc <__pow5mult+0xe4>
   17e24:	40245413          	srai	s0,s0,0x2
   17e28:	06040663          	beqz	s0,17e94 <__pow5mult+0x9c>
   17e2c:	0709b483          	ld	s1,112(s3)
   17e30:	0c048a63          	beqz	s1,17f04 <__pow5mult+0x10c>
   17e34:	00147793          	andi	a5,s0,1
   17e38:	02079063          	bnez	a5,17e58 <__pow5mult+0x60>
   17e3c:	40145413          	srai	s0,s0,0x1
   17e40:	04040a63          	beqz	s0,17e94 <__pow5mult+0x9c>
   17e44:	0004b503          	ld	a0,0(s1)
   17e48:	06050663          	beqz	a0,17eb4 <__pow5mult+0xbc>
   17e4c:	00050493          	mv	s1,a0
   17e50:	00147793          	andi	a5,s0,1
   17e54:	fe0784e3          	beqz	a5,17e3c <__pow5mult+0x44>
   17e58:	00048613          	mv	a2,s1
   17e5c:	00090593          	mv	a1,s2
   17e60:	00098513          	mv	a0,s3
   17e64:	ccdff0ef          	jal	ra,17b30 <__multiply>
   17e68:	06090663          	beqz	s2,17ed4 <__pow5mult+0xdc>
   17e6c:	00892703          	lw	a4,8(s2)
   17e70:	0789b783          	ld	a5,120(s3)
   17e74:	40145413          	srai	s0,s0,0x1
   17e78:	00371713          	slli	a4,a4,0x3
   17e7c:	00e787b3          	add	a5,a5,a4
   17e80:	0007b703          	ld	a4,0(a5)
   17e84:	00e93023          	sd	a4,0(s2)
   17e88:	0127b023          	sd	s2,0(a5)
   17e8c:	00050913          	mv	s2,a0
   17e90:	fa041ae3          	bnez	s0,17e44 <__pow5mult+0x4c>
   17e94:	02813083          	ld	ra,40(sp)
   17e98:	02013403          	ld	s0,32(sp)
   17e9c:	01813483          	ld	s1,24(sp)
   17ea0:	00813983          	ld	s3,8(sp)
   17ea4:	00090513          	mv	a0,s2
   17ea8:	01013903          	ld	s2,16(sp)
   17eac:	03010113          	addi	sp,sp,48
   17eb0:	00008067          	ret
   17eb4:	00048613          	mv	a2,s1
   17eb8:	00048593          	mv	a1,s1
   17ebc:	00098513          	mv	a0,s3
   17ec0:	c71ff0ef          	jal	ra,17b30 <__multiply>
   17ec4:	00a4b023          	sd	a0,0(s1)
   17ec8:	00053023          	sd	zero,0(a0)
   17ecc:	00050493          	mv	s1,a0
   17ed0:	f81ff06f          	j	17e50 <__pow5mult+0x58>
   17ed4:	00050913          	mv	s2,a0
   17ed8:	f65ff06f          	j	17e3c <__pow5mult+0x44>
   17edc:	fff7879b          	addiw	a5,a5,-1
   17ee0:	0000a717          	auipc	a4,0xa
   17ee4:	29870713          	addi	a4,a4,664 # 22178 <p05.0>
   17ee8:	00279793          	slli	a5,a5,0x2
   17eec:	00f707b3          	add	a5,a4,a5
   17ef0:	0007a603          	lw	a2,0(a5)
   17ef4:	00000693          	li	a3,0
   17ef8:	f4cff0ef          	jal	ra,17644 <__multadd>
   17efc:	00050913          	mv	s2,a0
   17f00:	f25ff06f          	j	17e24 <__pow5mult+0x2c>
   17f04:	00100593          	li	a1,1
   17f08:	00098513          	mv	a0,s3
   17f0c:	e6cff0ef          	jal	ra,17578 <_Balloc>
   17f10:	00050493          	mv	s1,a0
   17f14:	02050063          	beqz	a0,17f34 <__pow5mult+0x13c>
   17f18:	27100793          	li	a5,625
   17f1c:	00f52c23          	sw	a5,24(a0)
   17f20:	00100793          	li	a5,1
   17f24:	00f52a23          	sw	a5,20(a0)
   17f28:	06a9b823          	sd	a0,112(s3)
   17f2c:	00053023          	sd	zero,0(a0)
   17f30:	f05ff06f          	j	17e34 <__pow5mult+0x3c>
   17f34:	0000a697          	auipc	a3,0xa
   17f38:	17468693          	addi	a3,a3,372 # 220a8 <bmask+0x40>
   17f3c:	00000613          	li	a2,0
   17f40:	14000593          	li	a1,320
   17f44:	0000a517          	auipc	a0,0xa
   17f48:	17c50513          	addi	a0,a0,380 # 220c0 <bmask+0x58>
   17f4c:	361040ef          	jal	ra,1caac <__assert_func>

0000000000017f50 <__lshift>:
   17f50:	fc010113          	addi	sp,sp,-64
   17f54:	01313c23          	sd	s3,24(sp)
   17f58:	0145a983          	lw	s3,20(a1)
   17f5c:	00c5a783          	lw	a5,12(a1)
   17f60:	01513423          	sd	s5,8(sp)
   17f64:	40565a9b          	sraiw	s5,a2,0x5
   17f68:	015989bb          	addw	s3,s3,s5
   17f6c:	02813823          	sd	s0,48(sp)
   17f70:	02913423          	sd	s1,40(sp)
   17f74:	03213023          	sd	s2,32(sp)
   17f78:	01413823          	sd	s4,16(sp)
   17f7c:	01613023          	sd	s6,0(sp)
   17f80:	02113c23          	sd	ra,56(sp)
   17f84:	0019891b          	addiw	s2,s3,1
   17f88:	00058493          	mv	s1,a1
   17f8c:	00060413          	mv	s0,a2
   17f90:	0085a583          	lw	a1,8(a1)
   17f94:	00050a13          	mv	s4,a0
   17f98:	40565b13          	srai	s6,a2,0x5
   17f9c:	0127d863          	bge	a5,s2,17fac <__lshift+0x5c>
   17fa0:	0017979b          	slliw	a5,a5,0x1
   17fa4:	0015859b          	addiw	a1,a1,1
   17fa8:	ff27cce3          	blt	a5,s2,17fa0 <__lshift+0x50>
   17fac:	000a0513          	mv	a0,s4
   17fb0:	dc8ff0ef          	jal	ra,17578 <_Balloc>
   17fb4:	12050263          	beqz	a0,180d8 <__lshift+0x188>
   17fb8:	01850693          	addi	a3,a0,24
   17fbc:	03605863          	blez	s6,17fec <__lshift+0x9c>
   17fc0:	006a871b          	addiw	a4,s5,6
   17fc4:	02071793          	slli	a5,a4,0x20
   17fc8:	01e7d713          	srli	a4,a5,0x1e
   17fcc:	00e50733          	add	a4,a0,a4
   17fd0:	00068793          	mv	a5,a3
   17fd4:	00478793          	addi	a5,a5,4
   17fd8:	fe07ae23          	sw	zero,-4(a5)
   17fdc:	fee79ce3          	bne	a5,a4,17fd4 <__lshift+0x84>
   17fe0:	020a9793          	slli	a5,s5,0x20
   17fe4:	01e7da93          	srli	s5,a5,0x1e
   17fe8:	015686b3          	add	a3,a3,s5
   17fec:	0144a803          	lw	a6,20(s1)
   17ff0:	01848793          	addi	a5,s1,24
   17ff4:	01f47313          	andi	t1,s0,31
   17ff8:	00281813          	slli	a6,a6,0x2
   17ffc:	01078833          	add	a6,a5,a6
   18000:	0a030663          	beqz	t1,180ac <__lshift+0x15c>
   18004:	02000593          	li	a1,32
   18008:	406585bb          	subw	a1,a1,t1
   1800c:	00068893          	mv	a7,a3
   18010:	00000713          	li	a4,0
   18014:	0007a603          	lw	a2,0(a5)
   18018:	00488893          	addi	a7,a7,4
   1801c:	00478793          	addi	a5,a5,4
   18020:	0066163b          	sllw	a2,a2,t1
   18024:	00c76733          	or	a4,a4,a2
   18028:	fee8ae23          	sw	a4,-4(a7)
   1802c:	ffc7a703          	lw	a4,-4(a5)
   18030:	00b7573b          	srlw	a4,a4,a1
   18034:	ff07e0e3          	bltu	a5,a6,18014 <__lshift+0xc4>
   18038:	01948613          	addi	a2,s1,25
   1803c:	00400793          	li	a5,4
   18040:	00c86a63          	bltu	a6,a2,18054 <__lshift+0x104>
   18044:	409807b3          	sub	a5,a6,s1
   18048:	fe778793          	addi	a5,a5,-25
   1804c:	ffc7f793          	andi	a5,a5,-4
   18050:	00478793          	addi	a5,a5,4
   18054:	00f686b3          	add	a3,a3,a5
   18058:	00e6a023          	sw	a4,0(a3)
   1805c:	00070463          	beqz	a4,18064 <__lshift+0x114>
   18060:	00090993          	mv	s3,s2
   18064:	0084a703          	lw	a4,8(s1)
   18068:	078a3783          	ld	a5,120(s4)
   1806c:	03813083          	ld	ra,56(sp)
   18070:	00371713          	slli	a4,a4,0x3
   18074:	00e787b3          	add	a5,a5,a4
   18078:	0007b703          	ld	a4,0(a5)
   1807c:	01352a23          	sw	s3,20(a0)
   18080:	03013403          	ld	s0,48(sp)
   18084:	00e4b023          	sd	a4,0(s1)
   18088:	0097b023          	sd	s1,0(a5)
   1808c:	02013903          	ld	s2,32(sp)
   18090:	02813483          	ld	s1,40(sp)
   18094:	01813983          	ld	s3,24(sp)
   18098:	01013a03          	ld	s4,16(sp)
   1809c:	00813a83          	ld	s5,8(sp)
   180a0:	00013b03          	ld	s6,0(sp)
   180a4:	04010113          	addi	sp,sp,64
   180a8:	00008067          	ret
   180ac:	0007a703          	lw	a4,0(a5)
   180b0:	00478793          	addi	a5,a5,4
   180b4:	00468693          	addi	a3,a3,4
   180b8:	fee6ae23          	sw	a4,-4(a3)
   180bc:	fb07f4e3          	bgeu	a5,a6,18064 <__lshift+0x114>
   180c0:	0007a703          	lw	a4,0(a5)
   180c4:	00478793          	addi	a5,a5,4
   180c8:	00468693          	addi	a3,a3,4
   180cc:	fee6ae23          	sw	a4,-4(a3)
   180d0:	fd07eee3          	bltu	a5,a6,180ac <__lshift+0x15c>
   180d4:	f91ff06f          	j	18064 <__lshift+0x114>
   180d8:	0000a697          	auipc	a3,0xa
   180dc:	fd068693          	addi	a3,a3,-48 # 220a8 <bmask+0x40>
   180e0:	00000613          	li	a2,0
   180e4:	1d900593          	li	a1,473
   180e8:	0000a517          	auipc	a0,0xa
   180ec:	fd850513          	addi	a0,a0,-40 # 220c0 <bmask+0x58>
   180f0:	1bd040ef          	jal	ra,1caac <__assert_func>

00000000000180f4 <__mcmp>:
   180f4:	0145a783          	lw	a5,20(a1)
   180f8:	00050813          	mv	a6,a0
   180fc:	01452503          	lw	a0,20(a0)
   18100:	40f5053b          	subw	a0,a0,a5
   18104:	02051e63          	bnez	a0,18140 <__mcmp+0x4c>
   18108:	00279793          	slli	a5,a5,0x2
   1810c:	01880813          	addi	a6,a6,24
   18110:	01858593          	addi	a1,a1,24
   18114:	00f80733          	add	a4,a6,a5
   18118:	00f587b3          	add	a5,a1,a5
   1811c:	0080006f          	j	18124 <__mcmp+0x30>
   18120:	02e87063          	bgeu	a6,a4,18140 <__mcmp+0x4c>
   18124:	ffc72603          	lw	a2,-4(a4)
   18128:	ffc7a683          	lw	a3,-4(a5)
   1812c:	ffc70713          	addi	a4,a4,-4
   18130:	ffc78793          	addi	a5,a5,-4
   18134:	fed606e3          	beq	a2,a3,18120 <__mcmp+0x2c>
   18138:	fff00513          	li	a0,-1
   1813c:	00d67463          	bgeu	a2,a3,18144 <__mcmp+0x50>
   18140:	00008067          	ret
   18144:	00100513          	li	a0,1
   18148:	00008067          	ret

000000000001814c <__mdiff>:
   1814c:	fe010113          	addi	sp,sp,-32
   18150:	01462703          	lw	a4,20(a2)
   18154:	01213023          	sd	s2,0(sp)
   18158:	0145a903          	lw	s2,20(a1)
   1815c:	00813823          	sd	s0,16(sp)
   18160:	00913423          	sd	s1,8(sp)
   18164:	00113c23          	sd	ra,24(sp)
   18168:	40e9093b          	subw	s2,s2,a4
   1816c:	00058493          	mv	s1,a1
   18170:	00060413          	mv	s0,a2
   18174:	1a091863          	bnez	s2,18324 <__mdiff+0x1d8>
   18178:	00271693          	slli	a3,a4,0x2
   1817c:	01858593          	addi	a1,a1,24
   18180:	01860713          	addi	a4,a2,24
   18184:	00d587b3          	add	a5,a1,a3
   18188:	00d70733          	add	a4,a4,a3
   1818c:	0080006f          	j	18194 <__mdiff+0x48>
   18190:	1af5f063          	bgeu	a1,a5,18330 <__mdiff+0x1e4>
   18194:	ffc7a603          	lw	a2,-4(a5)
   18198:	ffc72683          	lw	a3,-4(a4)
   1819c:	ffc78793          	addi	a5,a5,-4
   181a0:	ffc70713          	addi	a4,a4,-4
   181a4:	fed606e3          	beq	a2,a3,18190 <__mdiff+0x44>
   181a8:	16d66463          	bltu	a2,a3,18310 <__mdiff+0x1c4>
   181ac:	0084a583          	lw	a1,8(s1)
   181b0:	bc8ff0ef          	jal	ra,17578 <_Balloc>
   181b4:	1a050663          	beqz	a0,18360 <__mdiff+0x214>
   181b8:	0144a883          	lw	a7,20(s1)
   181bc:	01442f83          	lw	t6,20(s0)
   181c0:	01848493          	addi	s1,s1,24
   181c4:	00289313          	slli	t1,a7,0x2
   181c8:	01840813          	addi	a6,s0,24
   181cc:	002f9f93          	slli	t6,t6,0x2
   181d0:	01850f13          	addi	t5,a0,24
   181d4:	00010e37          	lui	t3,0x10
   181d8:	01252823          	sw	s2,16(a0)
   181dc:	00648333          	add	t1,s1,t1
   181e0:	01f80fb3          	add	t6,a6,t6
   181e4:	000f0613          	mv	a2,t5
   181e8:	00048e93          	mv	t4,s1
   181ec:	00000713          	li	a4,0
   181f0:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   181f4:	000ea683          	lw	a3,0(t4)
   181f8:	00082583          	lw	a1,0(a6)
   181fc:	00460613          	addi	a2,a2,4
   18200:	01c6f7b3          	and	a5,a3,t3
   18204:	00e787bb          	addw	a5,a5,a4
   18208:	01c5f733          	and	a4,a1,t3
   1820c:	40e787bb          	subw	a5,a5,a4
   18210:	0105d59b          	srliw	a1,a1,0x10
   18214:	0106d71b          	srliw	a4,a3,0x10
   18218:	40b7073b          	subw	a4,a4,a1
   1821c:	4107d69b          	sraiw	a3,a5,0x10
   18220:	00d7073b          	addw	a4,a4,a3
   18224:	0107169b          	slliw	a3,a4,0x10
   18228:	01c7f7b3          	and	a5,a5,t3
   1822c:	00d7e7b3          	or	a5,a5,a3
   18230:	0007879b          	sext.w	a5,a5
   18234:	00480813          	addi	a6,a6,4
   18238:	fef62e23          	sw	a5,-4(a2)
   1823c:	004e8e93          	addi	t4,t4,4
   18240:	4107571b          	sraiw	a4,a4,0x10
   18244:	fbf868e3          	bltu	a6,t6,181f4 <__mdiff+0xa8>
   18248:	408f85b3          	sub	a1,t6,s0
   1824c:	fe758593          	addi	a1,a1,-25
   18250:	01940413          	addi	s0,s0,25
   18254:	0025d593          	srli	a1,a1,0x2
   18258:	00000693          	li	a3,0
   1825c:	008fe463          	bltu	t6,s0,18264 <__mdiff+0x118>
   18260:	00259693          	slli	a3,a1,0x2
   18264:	00df06b3          	add	a3,t5,a3
   18268:	00400813          	li	a6,4
   1826c:	008fe663          	bltu	t6,s0,18278 <__mdiff+0x12c>
   18270:	00158593          	addi	a1,a1,1
   18274:	00259813          	slli	a6,a1,0x2
   18278:	010484b3          	add	s1,s1,a6
   1827c:	010f0f33          	add	t5,t5,a6
   18280:	0664f063          	bgeu	s1,t1,182e0 <__mdiff+0x194>
   18284:	00010837          	lui	a6,0x10
   18288:	000f0593          	mv	a1,t5
   1828c:	00048613          	mv	a2,s1
   18290:	fff80813          	addi	a6,a6,-1 # ffff <register_fini-0xb1>
   18294:	00062683          	lw	a3,0(a2)
   18298:	00458593          	addi	a1,a1,4
   1829c:	00460613          	addi	a2,a2,4
   182a0:	0106f7b3          	and	a5,a3,a6
   182a4:	00e787bb          	addw	a5,a5,a4
   182a8:	0106d71b          	srliw	a4,a3,0x10
   182ac:	4107d69b          	sraiw	a3,a5,0x10
   182b0:	00d7073b          	addw	a4,a4,a3
   182b4:	0107169b          	slliw	a3,a4,0x10
   182b8:	0107f7b3          	and	a5,a5,a6
   182bc:	00d7e7b3          	or	a5,a5,a3
   182c0:	0007879b          	sext.w	a5,a5
   182c4:	fef5ae23          	sw	a5,-4(a1)
   182c8:	4107571b          	sraiw	a4,a4,0x10
   182cc:	fc6664e3          	bltu	a2,t1,18294 <__mdiff+0x148>
   182d0:	fff30693          	addi	a3,t1,-1
   182d4:	409684b3          	sub	s1,a3,s1
   182d8:	ffc4f693          	andi	a3,s1,-4
   182dc:	00df06b3          	add	a3,t5,a3
   182e0:	00079a63          	bnez	a5,182f4 <__mdiff+0x1a8>
   182e4:	ffc6a783          	lw	a5,-4(a3)
   182e8:	fff8889b          	addiw	a7,a7,-1
   182ec:	ffc68693          	addi	a3,a3,-4
   182f0:	fe078ae3          	beqz	a5,182e4 <__mdiff+0x198>
   182f4:	01813083          	ld	ra,24(sp)
   182f8:	01013403          	ld	s0,16(sp)
   182fc:	01152a23          	sw	a7,20(a0)
   18300:	00813483          	ld	s1,8(sp)
   18304:	00013903          	ld	s2,0(sp)
   18308:	02010113          	addi	sp,sp,32
   1830c:	00008067          	ret
   18310:	00048793          	mv	a5,s1
   18314:	00100913          	li	s2,1
   18318:	00040493          	mv	s1,s0
   1831c:	00078413          	mv	s0,a5
   18320:	e8dff06f          	j	181ac <__mdiff+0x60>
   18324:	fe0946e3          	bltz	s2,18310 <__mdiff+0x1c4>
   18328:	00000913          	li	s2,0
   1832c:	e81ff06f          	j	181ac <__mdiff+0x60>
   18330:	00000593          	li	a1,0
   18334:	a44ff0ef          	jal	ra,17578 <_Balloc>
   18338:	04050263          	beqz	a0,1837c <__mdiff+0x230>
   1833c:	01813083          	ld	ra,24(sp)
   18340:	01013403          	ld	s0,16(sp)
   18344:	00100793          	li	a5,1
   18348:	00f52a23          	sw	a5,20(a0)
   1834c:	00052c23          	sw	zero,24(a0)
   18350:	00813483          	ld	s1,8(sp)
   18354:	00013903          	ld	s2,0(sp)
   18358:	02010113          	addi	sp,sp,32
   1835c:	00008067          	ret
   18360:	0000a697          	auipc	a3,0xa
   18364:	d4868693          	addi	a3,a3,-696 # 220a8 <bmask+0x40>
   18368:	00000613          	li	a2,0
   1836c:	24000593          	li	a1,576
   18370:	0000a517          	auipc	a0,0xa
   18374:	d5050513          	addi	a0,a0,-688 # 220c0 <bmask+0x58>
   18378:	734040ef          	jal	ra,1caac <__assert_func>
   1837c:	0000a697          	auipc	a3,0xa
   18380:	d2c68693          	addi	a3,a3,-724 # 220a8 <bmask+0x40>
   18384:	00000613          	li	a2,0
   18388:	23200593          	li	a1,562
   1838c:	0000a517          	auipc	a0,0xa
   18390:	d3450513          	addi	a0,a0,-716 # 220c0 <bmask+0x58>
   18394:	718040ef          	jal	ra,1caac <__assert_func>

0000000000018398 <__ulp>:
   18398:	e20507d3          	fmv.x.d	a5,fa0
   1839c:	7ff00737          	lui	a4,0x7ff00
   183a0:	0207d793          	srli	a5,a5,0x20
   183a4:	00e7f733          	and	a4,a5,a4
   183a8:	fcc007b7          	lui	a5,0xfcc00
   183ac:	00e787bb          	addw	a5,a5,a4
   183b0:	0007871b          	sext.w	a4,a5
   183b4:	00e05863          	blez	a4,183c4 <__ulp+0x2c>
   183b8:	02079793          	slli	a5,a5,0x20
   183bc:	f2078553          	fmv.d.x	fa0,a5
   183c0:	00008067          	ret
   183c4:	40f007bb          	negw	a5,a5
   183c8:	4147d71b          	sraiw	a4,a5,0x14
   183cc:	01300693          	li	a3,19
   183d0:	00e6c863          	blt	a3,a4,183e0 <__ulp+0x48>
   183d4:	000807b7          	lui	a5,0x80
   183d8:	40e7d7bb          	sraw	a5,a5,a4
   183dc:	fddff06f          	j	183b8 <__ulp+0x20>
   183e0:	fec7069b          	addiw	a3,a4,-20
   183e4:	01e00613          	li	a2,30
   183e8:	00000793          	li	a5,0
   183ec:	00100713          	li	a4,1
   183f0:	00d64663          	blt	a2,a3,183fc <__ulp+0x64>
   183f4:	80000737          	lui	a4,0x80000
   183f8:	00d7573b          	srlw	a4,a4,a3
   183fc:	0207d793          	srli	a5,a5,0x20
   18400:	02071713          	slli	a4,a4,0x20
   18404:	02075713          	srli	a4,a4,0x20
   18408:	02079793          	slli	a5,a5,0x20
   1840c:	00e7e7b3          	or	a5,a5,a4
   18410:	f2078553          	fmv.d.x	fa0,a5
   18414:	00008067          	ret

0000000000018418 <__b2d>:
   18418:	fd010113          	addi	sp,sp,-48
   1841c:	00913c23          	sd	s1,24(sp)
   18420:	01452483          	lw	s1,20(a0)
   18424:	02813023          	sd	s0,32(sp)
   18428:	01850413          	addi	s0,a0,24
   1842c:	00249493          	slli	s1,s1,0x2
   18430:	009404b3          	add	s1,s0,s1
   18434:	01213823          	sd	s2,16(sp)
   18438:	ffc4a903          	lw	s2,-4(s1)
   1843c:	01313423          	sd	s3,8(sp)
   18440:	01413023          	sd	s4,0(sp)
   18444:	00090513          	mv	a0,s2
   18448:	00058993          	mv	s3,a1
   1844c:	02113423          	sd	ra,40(sp)
   18450:	cd4ff0ef          	jal	ra,17924 <__hi0bits>
   18454:	02000693          	li	a3,32
   18458:	40a687bb          	subw	a5,a3,a0
   1845c:	00f9a023          	sw	a5,0(s3)
   18460:	00a00793          	li	a5,10
   18464:	ffc48a13          	addi	s4,s1,-4
   18468:	0aa7d663          	bge	a5,a0,18514 <__b2d+0xfc>
   1846c:	ff55079b          	addiw	a5,a0,-11
   18470:	07447063          	bgeu	s0,s4,184d0 <__b2d+0xb8>
   18474:	ff84a703          	lw	a4,-8(s1)
   18478:	06078063          	beqz	a5,184d8 <__b2d+0xc0>
   1847c:	40f6853b          	subw	a0,a3,a5
   18480:	00f916bb          	sllw	a3,s2,a5
   18484:	00a7593b          	srlw	s2,a4,a0
   18488:	0126e6b3          	or	a3,a3,s2
   1848c:	3ff00937          	lui	s2,0x3ff00
   18490:	0126e6b3          	or	a3,a3,s2
   18494:	00f7173b          	sllw	a4,a4,a5
   18498:	ff848613          	addi	a2,s1,-8
   1849c:	02069793          	slli	a5,a3,0x20
   184a0:	0007069b          	sext.w	a3,a4
   184a4:	00c47a63          	bgeu	s0,a2,184b8 <__b2d+0xa0>
   184a8:	ff44a683          	lw	a3,-12(s1)
   184ac:	00a6d6bb          	srlw	a3,a3,a0
   184b0:	00e6e6b3          	or	a3,a3,a4
   184b4:	0006869b          	sext.w	a3,a3
   184b8:	0207d793          	srli	a5,a5,0x20
   184bc:	02069693          	slli	a3,a3,0x20
   184c0:	0206d693          	srli	a3,a3,0x20
   184c4:	02079793          	slli	a5,a5,0x20
   184c8:	00d7e7b3          	or	a5,a5,a3
   184cc:	0240006f          	j	184f0 <__b2d+0xd8>
   184d0:	00000713          	li	a4,0
   184d4:	08079663          	bnez	a5,18560 <__b2d+0x148>
   184d8:	3ff007b7          	lui	a5,0x3ff00
   184dc:	00f967b3          	or	a5,s2,a5
   184e0:	02071713          	slli	a4,a4,0x20
   184e4:	02075713          	srli	a4,a4,0x20
   184e8:	02079793          	slli	a5,a5,0x20
   184ec:	00e7e7b3          	or	a5,a5,a4
   184f0:	02813083          	ld	ra,40(sp)
   184f4:	02013403          	ld	s0,32(sp)
   184f8:	01813483          	ld	s1,24(sp)
   184fc:	01013903          	ld	s2,16(sp)
   18500:	00813983          	ld	s3,8(sp)
   18504:	00013a03          	ld	s4,0(sp)
   18508:	f2078553          	fmv.d.x	fa0,a5
   1850c:	03010113          	addi	sp,sp,48
   18510:	00008067          	ret
   18514:	00b00693          	li	a3,11
   18518:	40a686bb          	subw	a3,a3,a0
   1851c:	3ff00737          	lui	a4,0x3ff00
   18520:	00d957bb          	srlw	a5,s2,a3
   18524:	00e7e7b3          	or	a5,a5,a4
   18528:	02079793          	slli	a5,a5,0x20
   1852c:	00000713          	li	a4,0
   18530:	01447663          	bgeu	s0,s4,1853c <__b2d+0x124>
   18534:	ff84a703          	lw	a4,-8(s1)
   18538:	00d7573b          	srlw	a4,a4,a3
   1853c:	0155051b          	addiw	a0,a0,21
   18540:	00a9153b          	sllw	a0,s2,a0
   18544:	00a76533          	or	a0,a4,a0
   18548:	0207d793          	srli	a5,a5,0x20
   1854c:	02051513          	slli	a0,a0,0x20
   18550:	02055513          	srli	a0,a0,0x20
   18554:	02079793          	slli	a5,a5,0x20
   18558:	00a7e7b3          	or	a5,a5,a0
   1855c:	f95ff06f          	j	184f0 <__b2d+0xd8>
   18560:	00f917bb          	sllw	a5,s2,a5
   18564:	3ff00937          	lui	s2,0x3ff00
   18568:	0127e7b3          	or	a5,a5,s2
   1856c:	02079793          	slli	a5,a5,0x20
   18570:	00000693          	li	a3,0
   18574:	f45ff06f          	j	184b8 <__b2d+0xa0>

0000000000018578 <__d2b>:
   18578:	fc010113          	addi	sp,sp,-64
   1857c:	01413823          	sd	s4,16(sp)
   18580:	00058a13          	mv	s4,a1
   18584:	00100593          	li	a1,1
   18588:	02813823          	sd	s0,48(sp)
   1858c:	01313c23          	sd	s3,24(sp)
   18590:	02113c23          	sd	ra,56(sp)
   18594:	02913423          	sd	s1,40(sp)
   18598:	03213023          	sd	s2,32(sp)
   1859c:	e2050453          	fmv.x.d	s0,fa0
   185a0:	00060993          	mv	s3,a2
   185a4:	fd5fe0ef          	jal	ra,17578 <_Balloc>
   185a8:	10050c63          	beqz	a0,186c0 <__d2b+0x148>
   185ac:	42045793          	srai	a5,s0,0x20
   185b0:	0147d91b          	srliw	s2,a5,0x14
   185b4:	7ff97913          	andi	s2,s2,2047
   185b8:	02c79793          	slli	a5,a5,0x2c
   185bc:	00050493          	mv	s1,a0
   185c0:	02c7d793          	srli	a5,a5,0x2c
   185c4:	00090663          	beqz	s2,185d0 <__d2b+0x58>
   185c8:	00100737          	lui	a4,0x100
   185cc:	00e7e7b3          	or	a5,a5,a4
   185d0:	00f12623          	sw	a5,12(sp)
   185d4:	0004041b          	sext.w	s0,s0
   185d8:	08040663          	beqz	s0,18664 <__d2b+0xec>
   185dc:	00810513          	addi	a0,sp,8
   185e0:	00812423          	sw	s0,8(sp)
   185e4:	bb8ff0ef          	jal	ra,1799c <__lo0bits>
   185e8:	0c050463          	beqz	a0,186b0 <__d2b+0x138>
   185ec:	00c12703          	lw	a4,12(sp)
   185f0:	00812683          	lw	a3,8(sp)
   185f4:	02000793          	li	a5,32
   185f8:	40a787bb          	subw	a5,a5,a0
   185fc:	00f717bb          	sllw	a5,a4,a5
   18600:	00d7e7b3          	or	a5,a5,a3
   18604:	00a7573b          	srlw	a4,a4,a0
   18608:	00f4ac23          	sw	a5,24(s1)
   1860c:	00e12623          	sw	a4,12(sp)
   18610:	0007079b          	sext.w	a5,a4
   18614:	00f03433          	snez	s0,a5
   18618:	00140413          	addi	s0,s0,1
   1861c:	00f4ae23          	sw	a5,28(s1)
   18620:	0084aa23          	sw	s0,20(s1)
   18624:	06090263          	beqz	s2,18688 <__d2b+0x110>
   18628:	bcd9091b          	addiw	s2,s2,-1075
   1862c:	00a9093b          	addw	s2,s2,a0
   18630:	03500793          	li	a5,53
   18634:	012a2023          	sw	s2,0(s4)
   18638:	40a7853b          	subw	a0,a5,a0
   1863c:	00a9a023          	sw	a0,0(s3)
   18640:	03813083          	ld	ra,56(sp)
   18644:	03013403          	ld	s0,48(sp)
   18648:	02013903          	ld	s2,32(sp)
   1864c:	01813983          	ld	s3,24(sp)
   18650:	01013a03          	ld	s4,16(sp)
   18654:	00048513          	mv	a0,s1
   18658:	02813483          	ld	s1,40(sp)
   1865c:	04010113          	addi	sp,sp,64
   18660:	00008067          	ret
   18664:	00c10513          	addi	a0,sp,12
   18668:	b34ff0ef          	jal	ra,1799c <__lo0bits>
   1866c:	00100793          	li	a5,1
   18670:	00f4aa23          	sw	a5,20(s1)
   18674:	00c12783          	lw	a5,12(sp)
   18678:	0205051b          	addiw	a0,a0,32
   1867c:	00100413          	li	s0,1
   18680:	00f4ac23          	sw	a5,24(s1)
   18684:	fa0912e3          	bnez	s2,18628 <__d2b+0xb0>
   18688:	bce5051b          	addiw	a0,a0,-1074
   1868c:	00241793          	slli	a5,s0,0x2
   18690:	00aa2023          	sw	a0,0(s4)
   18694:	00f487b3          	add	a5,s1,a5
   18698:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb434>
   1869c:	0054141b          	slliw	s0,s0,0x5
   186a0:	a84ff0ef          	jal	ra,17924 <__hi0bits>
   186a4:	40a4043b          	subw	s0,s0,a0
   186a8:	0089a023          	sw	s0,0(s3)
   186ac:	f95ff06f          	j	18640 <__d2b+0xc8>
   186b0:	00812703          	lw	a4,8(sp)
   186b4:	00c12783          	lw	a5,12(sp)
   186b8:	00e4ac23          	sw	a4,24(s1)
   186bc:	f59ff06f          	j	18614 <__d2b+0x9c>
   186c0:	0000a697          	auipc	a3,0xa
   186c4:	9e868693          	addi	a3,a3,-1560 # 220a8 <bmask+0x40>
   186c8:	00000613          	li	a2,0
   186cc:	30a00593          	li	a1,778
   186d0:	0000a517          	auipc	a0,0xa
   186d4:	9f050513          	addi	a0,a0,-1552 # 220c0 <bmask+0x58>
   186d8:	3d4040ef          	jal	ra,1caac <__assert_func>

00000000000186dc <__ratio>:
   186dc:	fd010113          	addi	sp,sp,-48
   186e0:	00913c23          	sd	s1,24(sp)
   186e4:	00058493          	mv	s1,a1
   186e8:	00810593          	addi	a1,sp,8
   186ec:	02113423          	sd	ra,40(sp)
   186f0:	02813023          	sd	s0,32(sp)
   186f4:	01213823          	sd	s2,16(sp)
   186f8:	00050913          	mv	s2,a0
   186fc:	d1dff0ef          	jal	ra,18418 <__b2d>
   18700:	00c10593          	addi	a1,sp,12
   18704:	00048513          	mv	a0,s1
   18708:	e2050453          	fmv.x.d	s0,fa0
   1870c:	d0dff0ef          	jal	ra,18418 <__b2d>
   18710:	0144a703          	lw	a4,20(s1)
   18714:	01492783          	lw	a5,20(s2) # 3ff00014 <__BSS_END__+0x3fedb434>
   18718:	00c12683          	lw	a3,12(sp)
   1871c:	40e787bb          	subw	a5,a5,a4
   18720:	00812703          	lw	a4,8(sp)
   18724:	0057979b          	slliw	a5,a5,0x5
   18728:	40d7073b          	subw	a4,a4,a3
   1872c:	00e786bb          	addw	a3,a5,a4
   18730:	00068793          	mv	a5,a3
   18734:	e2050753          	fmv.x.d	a4,fa0
   18738:	04d05463          	blez	a3,18780 <__ratio+0xa4>
   1873c:	02045693          	srli	a3,s0,0x20
   18740:	0147979b          	slliw	a5,a5,0x14
   18744:	00d787bb          	addw	a5,a5,a3
   18748:	fff00693          	li	a3,-1
   1874c:	0206d693          	srli	a3,a3,0x20
   18750:	02079793          	slli	a5,a5,0x20
   18754:	0086f433          	and	s0,a3,s0
   18758:	00f46433          	or	s0,s0,a5
   1875c:	f20407d3          	fmv.d.x	fa5,s0
   18760:	02813083          	ld	ra,40(sp)
   18764:	02013403          	ld	s0,32(sp)
   18768:	f2070753          	fmv.d.x	fa4,a4
   1876c:	01813483          	ld	s1,24(sp)
   18770:	01013903          	ld	s2,16(sp)
   18774:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   18778:	03010113          	addi	sp,sp,48
   1877c:	00008067          	ret
   18780:	02075693          	srli	a3,a4,0x20
   18784:	0147979b          	slliw	a5,a5,0x14
   18788:	40f687bb          	subw	a5,a3,a5
   1878c:	fff00693          	li	a3,-1
   18790:	0206d693          	srli	a3,a3,0x20
   18794:	02079793          	slli	a5,a5,0x20
   18798:	00e6f733          	and	a4,a3,a4
   1879c:	00f76733          	or	a4,a4,a5
   187a0:	fbdff06f          	j	1875c <__ratio+0x80>

00000000000187a4 <_mprec_log10>:
   187a4:	01700793          	li	a5,23
   187a8:	02a7d263          	bge	a5,a0,187cc <_mprec_log10+0x28>
   187ac:	0000c797          	auipc	a5,0xc
   187b0:	35c7b507          	fld	fa0,860(a5) # 24b08 <__SDATA_BEGIN__+0x10>
   187b4:	0000c797          	auipc	a5,0xc
   187b8:	35c7b787          	fld	fa5,860(a5) # 24b10 <__SDATA_BEGIN__+0x18>
   187bc:	fff5051b          	addiw	a0,a0,-1
   187c0:	12f57553          	fmul.d	fa0,fa0,fa5
   187c4:	fe051ce3          	bnez	a0,187bc <_mprec_log10+0x18>
   187c8:	00008067          	ret
   187cc:	0000a797          	auipc	a5,0xa
   187d0:	9ac78793          	addi	a5,a5,-1620 # 22178 <p05.0>
   187d4:	00351513          	slli	a0,a0,0x3
   187d8:	00a78533          	add	a0,a5,a0
   187dc:	01053507          	fld	fa0,16(a0)
   187e0:	00008067          	ret

00000000000187e4 <__copybits>:
   187e4:	01462683          	lw	a3,20(a2)
   187e8:	fff5859b          	addiw	a1,a1,-1
   187ec:	4055d59b          	sraiw	a1,a1,0x5
   187f0:	0015859b          	addiw	a1,a1,1
   187f4:	01860793          	addi	a5,a2,24
   187f8:	00269693          	slli	a3,a3,0x2
   187fc:	00259593          	slli	a1,a1,0x2
   18800:	00d786b3          	add	a3,a5,a3
   18804:	00b505b3          	add	a1,a0,a1
   18808:	02d7f863          	bgeu	a5,a3,18838 <__copybits+0x54>
   1880c:	00050713          	mv	a4,a0
   18810:	0007a803          	lw	a6,0(a5)
   18814:	00478793          	addi	a5,a5,4
   18818:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdb424>
   1881c:	ff072e23          	sw	a6,-4(a4)
   18820:	fed7e8e3          	bltu	a5,a3,18810 <__copybits+0x2c>
   18824:	40c687b3          	sub	a5,a3,a2
   18828:	fe778793          	addi	a5,a5,-25
   1882c:	ffc7f793          	andi	a5,a5,-4
   18830:	00478793          	addi	a5,a5,4
   18834:	00f50533          	add	a0,a0,a5
   18838:	00b57863          	bgeu	a0,a1,18848 <__copybits+0x64>
   1883c:	00450513          	addi	a0,a0,4
   18840:	fe052e23          	sw	zero,-4(a0)
   18844:	feb56ce3          	bltu	a0,a1,1883c <__copybits+0x58>
   18848:	00008067          	ret

000000000001884c <__any_on>:
   1884c:	01452703          	lw	a4,20(a0)
   18850:	4055d613          	srai	a2,a1,0x5
   18854:	01850693          	addi	a3,a0,24
   18858:	02c75263          	bge	a4,a2,1887c <__any_on+0x30>
   1885c:	00271793          	slli	a5,a4,0x2
   18860:	00f687b3          	add	a5,a3,a5
   18864:	04f6f263          	bgeu	a3,a5,188a8 <__any_on+0x5c>
   18868:	ffc7a703          	lw	a4,-4(a5)
   1886c:	ffc78793          	addi	a5,a5,-4
   18870:	fe070ae3          	beqz	a4,18864 <__any_on+0x18>
   18874:	00100513          	li	a0,1
   18878:	00008067          	ret
   1887c:	00261793          	slli	a5,a2,0x2
   18880:	00f687b3          	add	a5,a3,a5
   18884:	fee650e3          	bge	a2,a4,18864 <__any_on+0x18>
   18888:	01f5f593          	andi	a1,a1,31
   1888c:	fc058ce3          	beqz	a1,18864 <__any_on+0x18>
   18890:	0007a603          	lw	a2,0(a5)
   18894:	00100513          	li	a0,1
   18898:	00b6573b          	srlw	a4,a2,a1
   1889c:	00b715bb          	sllw	a1,a4,a1
   188a0:	fcc582e3          	beq	a1,a2,18864 <__any_on+0x18>
   188a4:	00008067          	ret
   188a8:	00000513          	li	a0,0
   188ac:	00008067          	ret

00000000000188b0 <_sbrk_r>:
   188b0:	ff010113          	addi	sp,sp,-16
   188b4:	00813023          	sd	s0,0(sp)
   188b8:	00050413          	mv	s0,a0
   188bc:	00058513          	mv	a0,a1
   188c0:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   188c4:	00113423          	sd	ra,8(sp)
   188c8:	3fc070ef          	jal	ra,1fcc4 <_sbrk>
   188cc:	fff00793          	li	a5,-1
   188d0:	00f50a63          	beq	a0,a5,188e4 <_sbrk_r+0x34>
   188d4:	00813083          	ld	ra,8(sp)
   188d8:	00013403          	ld	s0,0(sp)
   188dc:	01010113          	addi	sp,sp,16
   188e0:	00008067          	ret
   188e4:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   188e8:	fe0786e3          	beqz	a5,188d4 <_sbrk_r+0x24>
   188ec:	00813083          	ld	ra,8(sp)
   188f0:	00f42023          	sw	a5,0(s0)
   188f4:	00013403          	ld	s0,0(sp)
   188f8:	01010113          	addi	sp,sp,16
   188fc:	00008067          	ret

0000000000018900 <frexp>:
   18900:	e20507d3          	fmv.x.d	a5,fa0
   18904:	80000637          	lui	a2,0x80000
   18908:	fff64613          	not	a2,a2
   1890c:	4207d593          	srai	a1,a5,0x20
   18910:	00c5f733          	and	a4,a1,a2
   18914:	00052023          	sw	zero,0(a0)
   18918:	7ff00837          	lui	a6,0x7ff00
   1891c:	00058693          	mv	a3,a1
   18920:	07075a63          	bge	a4,a6,18994 <frexp+0x94>
   18924:	00f76833          	or	a6,a4,a5
   18928:	0008081b          	sext.w	a6,a6
   1892c:	06080463          	beqz	a6,18994 <frexp+0x94>
   18930:	7ff00837          	lui	a6,0x7ff00
   18934:	0105f5b3          	and	a1,a1,a6
   18938:	00000813          	li	a6,0
   1893c:	02059063          	bnez	a1,1895c <frexp+0x5c>
   18940:	0000c717          	auipc	a4,0xc
   18944:	1d873787          	fld	fa5,472(a4) # 24b18 <__SDATA_BEGIN__+0x20>
   18948:	12f577d3          	fmul.d	fa5,fa0,fa5
   1894c:	fca00813          	li	a6,-54
   18950:	e20787d3          	fmv.x.d	a5,fa5
   18954:	4207d693          	srai	a3,a5,0x20
   18958:	00c6f733          	and	a4,a3,a2
   1895c:	80100637          	lui	a2,0x80100
   18960:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db41f>
   18964:	00c6f6b3          	and	a3,a3,a2
   18968:	3fe00637          	lui	a2,0x3fe00
   1896c:	00c6e6b3          	or	a3,a3,a2
   18970:	4147571b          	sraiw	a4,a4,0x14
   18974:	fff00613          	li	a2,-1
   18978:	c027071b          	addiw	a4,a4,-1022
   1897c:	02065613          	srli	a2,a2,0x20
   18980:	0107073b          	addw	a4,a4,a6
   18984:	02069693          	slli	a3,a3,0x20
   18988:	00f677b3          	and	a5,a2,a5
   1898c:	00e52023          	sw	a4,0(a0)
   18990:	00d7e7b3          	or	a5,a5,a3
   18994:	f2078553          	fmv.d.x	fa0,a5
   18998:	00008067          	ret

000000000001899c <_sprintf_r>:
   1899c:	f0010113          	addi	sp,sp,-256
   189a0:	0d810e93          	addi	t4,sp,216
   189a4:	0ef13423          	sd	a5,232(sp)
   189a8:	80000337          	lui	t1,0x80000
   189ac:	ffff07b7          	lui	a5,0xffff0
   189b0:	00058e13          	mv	t3,a1
   189b4:	fff34313          	not	t1,t1
   189b8:	0cd13c23          	sd	a3,216(sp)
   189bc:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb628>
   189c0:	01010593          	addi	a1,sp,16
   189c4:	000e8693          	mv	a3,t4
   189c8:	0c113423          	sd	ra,200(sp)
   189cc:	02f12023          	sw	a5,32(sp)
   189d0:	0ee13023          	sd	a4,224(sp)
   189d4:	0f013823          	sd	a6,240(sp)
   189d8:	0f113c23          	sd	a7,248(sp)
   189dc:	01c13823          	sd	t3,16(sp)
   189e0:	03c13423          	sd	t3,40(sp)
   189e4:	02612823          	sw	t1,48(sp)
   189e8:	00612e23          	sw	t1,28(sp)
   189ec:	01d13423          	sd	t4,8(sp)
   189f0:	56c000ef          	jal	ra,18f5c <_svfprintf_r>
   189f4:	01013783          	ld	a5,16(sp)
   189f8:	00078023          	sb	zero,0(a5)
   189fc:	0c813083          	ld	ra,200(sp)
   18a00:	10010113          	addi	sp,sp,256
   18a04:	00008067          	ret

0000000000018a08 <sprintf>:
   18a08:	f0010113          	addi	sp,sp,-256
   18a0c:	0d010e93          	addi	t4,sp,208
   18a10:	0ef13423          	sd	a5,232(sp)
   18a14:	80000337          	lui	t1,0x80000
   18a18:	ffff07b7          	lui	a5,0xffff0
   18a1c:	00050e13          	mv	t3,a0
   18a20:	fff34313          	not	t1,t1
   18a24:	0cc13823          	sd	a2,208(sp)
   18a28:	0cd13c23          	sd	a3,216(sp)
   18a2c:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb628>
   18a30:	00058613          	mv	a2,a1
   18a34:	000e8693          	mv	a3,t4
   18a38:	01010593          	addi	a1,sp,16
   18a3c:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   18a40:	0c113423          	sd	ra,200(sp)
   18a44:	02f12023          	sw	a5,32(sp)
   18a48:	0ee13023          	sd	a4,224(sp)
   18a4c:	0f013823          	sd	a6,240(sp)
   18a50:	0f113c23          	sd	a7,248(sp)
   18a54:	01c13823          	sd	t3,16(sp)
   18a58:	03c13423          	sd	t3,40(sp)
   18a5c:	02612823          	sw	t1,48(sp)
   18a60:	00612e23          	sw	t1,28(sp)
   18a64:	01d13423          	sd	t4,8(sp)
   18a68:	4f4000ef          	jal	ra,18f5c <_svfprintf_r>
   18a6c:	01013783          	ld	a5,16(sp)
   18a70:	00078023          	sb	zero,0(a5)
   18a74:	0c813083          	ld	ra,200(sp)
   18a78:	10010113          	addi	sp,sp,256
   18a7c:	00008067          	ret

0000000000018a80 <__sread>:
   18a80:	ff010113          	addi	sp,sp,-16
   18a84:	00813023          	sd	s0,0(sp)
   18a88:	00058413          	mv	s0,a1
   18a8c:	01259583          	lh	a1,18(a1)
   18a90:	00113423          	sd	ra,8(sp)
   18a94:	5a1040ef          	jal	ra,1d834 <_read_r>
   18a98:	02054063          	bltz	a0,18ab8 <__sread+0x38>
   18a9c:	09043783          	ld	a5,144(s0)
   18aa0:	00813083          	ld	ra,8(sp)
   18aa4:	00a787b3          	add	a5,a5,a0
   18aa8:	08f43823          	sd	a5,144(s0)
   18aac:	00013403          	ld	s0,0(sp)
   18ab0:	01010113          	addi	sp,sp,16
   18ab4:	00008067          	ret
   18ab8:	01045783          	lhu	a5,16(s0)
   18abc:	fffff737          	lui	a4,0xfffff
   18ac0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda41f>
   18ac4:	00e7f7b3          	and	a5,a5,a4
   18ac8:	00813083          	ld	ra,8(sp)
   18acc:	00f41823          	sh	a5,16(s0)
   18ad0:	00013403          	ld	s0,0(sp)
   18ad4:	01010113          	addi	sp,sp,16
   18ad8:	00008067          	ret

0000000000018adc <__seofread>:
   18adc:	00000513          	li	a0,0
   18ae0:	00008067          	ret

0000000000018ae4 <__swrite>:
   18ae4:	01059783          	lh	a5,16(a1)
   18ae8:	fd010113          	addi	sp,sp,-48
   18aec:	02813023          	sd	s0,32(sp)
   18af0:	00913c23          	sd	s1,24(sp)
   18af4:	01213823          	sd	s2,16(sp)
   18af8:	01313423          	sd	s3,8(sp)
   18afc:	02113423          	sd	ra,40(sp)
   18b00:	1007f713          	andi	a4,a5,256
   18b04:	00058413          	mv	s0,a1
   18b08:	00050493          	mv	s1,a0
   18b0c:	01259583          	lh	a1,18(a1)
   18b10:	00060913          	mv	s2,a2
   18b14:	00068993          	mv	s3,a3
   18b18:	02071e63          	bnez	a4,18b54 <__swrite+0x70>
   18b1c:	fffff737          	lui	a4,0xfffff
   18b20:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda41f>
   18b24:	00e7f7b3          	and	a5,a5,a4
   18b28:	00f41823          	sh	a5,16(s0)
   18b2c:	02013403          	ld	s0,32(sp)
   18b30:	02813083          	ld	ra,40(sp)
   18b34:	00098693          	mv	a3,s3
   18b38:	00090613          	mv	a2,s2
   18b3c:	00813983          	ld	s3,8(sp)
   18b40:	01013903          	ld	s2,16(sp)
   18b44:	00048513          	mv	a0,s1
   18b48:	01813483          	ld	s1,24(sp)
   18b4c:	03010113          	addi	sp,sp,48
   18b50:	7010306f          	j	1ca50 <_write_r>
   18b54:	00200693          	li	a3,2
   18b58:	00000613          	li	a2,0
   18b5c:	241040ef          	jal	ra,1d59c <_lseek_r>
   18b60:	01041783          	lh	a5,16(s0)
   18b64:	01241583          	lh	a1,18(s0)
   18b68:	fb5ff06f          	j	18b1c <__swrite+0x38>

0000000000018b6c <__sseek>:
   18b6c:	ff010113          	addi	sp,sp,-16
   18b70:	00813023          	sd	s0,0(sp)
   18b74:	00058413          	mv	s0,a1
   18b78:	01259583          	lh	a1,18(a1)
   18b7c:	00113423          	sd	ra,8(sp)
   18b80:	21d040ef          	jal	ra,1d59c <_lseek_r>
   18b84:	fff00793          	li	a5,-1
   18b88:	02f50463          	beq	a0,a5,18bb0 <__sseek+0x44>
   18b8c:	01045783          	lhu	a5,16(s0)
   18b90:	00001737          	lui	a4,0x1
   18b94:	00813083          	ld	ra,8(sp)
   18b98:	00e7e7b3          	or	a5,a5,a4
   18b9c:	08a43823          	sd	a0,144(s0)
   18ba0:	00f41823          	sh	a5,16(s0)
   18ba4:	00013403          	ld	s0,0(sp)
   18ba8:	01010113          	addi	sp,sp,16
   18bac:	00008067          	ret
   18bb0:	01045783          	lhu	a5,16(s0)
   18bb4:	fffff737          	lui	a4,0xfffff
   18bb8:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda41f>
   18bbc:	00e7f7b3          	and	a5,a5,a4
   18bc0:	00813083          	ld	ra,8(sp)
   18bc4:	00f41823          	sh	a5,16(s0)
   18bc8:	00013403          	ld	s0,0(sp)
   18bcc:	01010113          	addi	sp,sp,16
   18bd0:	00008067          	ret

0000000000018bd4 <__sclose>:
   18bd4:	01259583          	lh	a1,18(a1)
   18bd8:	0140406f          	j	1cbec <_close_r>

0000000000018bdc <strcmp>:
   18bdc:	00b56733          	or	a4,a0,a1
   18be0:	fff00393          	li	t2,-1
   18be4:	00777713          	andi	a4,a4,7
   18be8:	0c071c63          	bnez	a4,18cc0 <strcmp+0xe4>
   18bec:	0000c797          	auipc	a5,0xc
   18bf0:	f347b783          	ld	a5,-204(a5) # 24b20 <mask>
   18bf4:	00053603          	ld	a2,0(a0)
   18bf8:	0005b683          	ld	a3,0(a1)
   18bfc:	00f672b3          	and	t0,a2,a5
   18c00:	00f66333          	or	t1,a2,a5
   18c04:	00f282b3          	add	t0,t0,a5
   18c08:	0062e2b3          	or	t0,t0,t1
   18c0c:	0c729e63          	bne	t0,t2,18ce8 <strcmp+0x10c>
   18c10:	04d61663          	bne	a2,a3,18c5c <strcmp+0x80>
   18c14:	00853603          	ld	a2,8(a0)
   18c18:	0085b683          	ld	a3,8(a1)
   18c1c:	00f672b3          	and	t0,a2,a5
   18c20:	00f66333          	or	t1,a2,a5
   18c24:	00f282b3          	add	t0,t0,a5
   18c28:	0062e2b3          	or	t0,t0,t1
   18c2c:	0a729a63          	bne	t0,t2,18ce0 <strcmp+0x104>
   18c30:	02d61663          	bne	a2,a3,18c5c <strcmp+0x80>
   18c34:	01053603          	ld	a2,16(a0)
   18c38:	0105b683          	ld	a3,16(a1)
   18c3c:	00f672b3          	and	t0,a2,a5
   18c40:	00f66333          	or	t1,a2,a5
   18c44:	00f282b3          	add	t0,t0,a5
   18c48:	0062e2b3          	or	t0,t0,t1
   18c4c:	0a729463          	bne	t0,t2,18cf4 <strcmp+0x118>
   18c50:	01850513          	addi	a0,a0,24
   18c54:	01858593          	addi	a1,a1,24
   18c58:	f8d60ee3          	beq	a2,a3,18bf4 <strcmp+0x18>
   18c5c:	03061713          	slli	a4,a2,0x30
   18c60:	03069793          	slli	a5,a3,0x30
   18c64:	02f71a63          	bne	a4,a5,18c98 <strcmp+0xbc>
   18c68:	02061713          	slli	a4,a2,0x20
   18c6c:	02069793          	slli	a5,a3,0x20
   18c70:	02f71463          	bne	a4,a5,18c98 <strcmp+0xbc>
   18c74:	01061713          	slli	a4,a2,0x10
   18c78:	01069793          	slli	a5,a3,0x10
   18c7c:	00f71e63          	bne	a4,a5,18c98 <strcmp+0xbc>
   18c80:	03065713          	srli	a4,a2,0x30
   18c84:	0306d793          	srli	a5,a3,0x30
   18c88:	40f70533          	sub	a0,a4,a5
   18c8c:	0ff57593          	andi	a1,a0,255
   18c90:	02059063          	bnez	a1,18cb0 <strcmp+0xd4>
   18c94:	00008067          	ret
   18c98:	03075713          	srli	a4,a4,0x30
   18c9c:	0307d793          	srli	a5,a5,0x30
   18ca0:	40f70533          	sub	a0,a4,a5
   18ca4:	0ff57593          	andi	a1,a0,255
   18ca8:	00059463          	bnez	a1,18cb0 <strcmp+0xd4>
   18cac:	00008067          	ret
   18cb0:	0ff77713          	andi	a4,a4,255
   18cb4:	0ff7f793          	andi	a5,a5,255
   18cb8:	40f70533          	sub	a0,a4,a5
   18cbc:	00008067          	ret
   18cc0:	00054603          	lbu	a2,0(a0)
   18cc4:	0005c683          	lbu	a3,0(a1)
   18cc8:	00150513          	addi	a0,a0,1
   18ccc:	00158593          	addi	a1,a1,1
   18cd0:	00d61463          	bne	a2,a3,18cd8 <strcmp+0xfc>
   18cd4:	fe0616e3          	bnez	a2,18cc0 <strcmp+0xe4>
   18cd8:	40d60533          	sub	a0,a2,a3
   18cdc:	00008067          	ret
   18ce0:	00850513          	addi	a0,a0,8
   18ce4:	00858593          	addi	a1,a1,8
   18ce8:	fcd61ce3          	bne	a2,a3,18cc0 <strcmp+0xe4>
   18cec:	00000513          	li	a0,0
   18cf0:	00008067          	ret
   18cf4:	01050513          	addi	a0,a0,16
   18cf8:	01058593          	addi	a1,a1,16
   18cfc:	fcd612e3          	bne	a2,a3,18cc0 <strcmp+0xe4>
   18d00:	00000513          	li	a0,0
   18d04:	00008067          	ret

0000000000018d08 <strcpy>:
   18d08:	00b567b3          	or	a5,a0,a1
   18d0c:	0077f793          	andi	a5,a5,7
   18d10:	0a079663          	bnez	a5,18dbc <strcpy+0xb4>
   18d14:	0005b703          	ld	a4,0(a1)
   18d18:	0000c697          	auipc	a3,0xc
   18d1c:	e086b683          	ld	a3,-504(a3) # 24b20 <mask>
   18d20:	fff00613          	li	a2,-1
   18d24:	00d777b3          	and	a5,a4,a3
   18d28:	00d787b3          	add	a5,a5,a3
   18d2c:	00e7e7b3          	or	a5,a5,a4
   18d30:	00d7e7b3          	or	a5,a5,a3
   18d34:	0ac79263          	bne	a5,a2,18dd8 <strcpy+0xd0>
   18d38:	00050613          	mv	a2,a0
   18d3c:	fff00813          	li	a6,-1
   18d40:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb420>
   18d44:	0085b703          	ld	a4,8(a1)
   18d48:	00858593          	addi	a1,a1,8
   18d4c:	00860613          	addi	a2,a2,8
   18d50:	00d777b3          	and	a5,a4,a3
   18d54:	00d787b3          	add	a5,a5,a3
   18d58:	00e7e7b3          	or	a5,a5,a4
   18d5c:	00d7e7b3          	or	a5,a5,a3
   18d60:	ff0780e3          	beq	a5,a6,18d40 <strcpy+0x38>
   18d64:	0005c783          	lbu	a5,0(a1)
   18d68:	0015c703          	lbu	a4,1(a1)
   18d6c:	0025c683          	lbu	a3,2(a1)
   18d70:	00f60023          	sb	a5,0(a2)
   18d74:	04078263          	beqz	a5,18db8 <strcpy+0xb0>
   18d78:	00e600a3          	sb	a4,1(a2)
   18d7c:	02070e63          	beqz	a4,18db8 <strcpy+0xb0>
   18d80:	0035c783          	lbu	a5,3(a1)
   18d84:	00d60123          	sb	a3,2(a2)
   18d88:	02068863          	beqz	a3,18db8 <strcpy+0xb0>
   18d8c:	0045c703          	lbu	a4,4(a1)
   18d90:	00f601a3          	sb	a5,3(a2)
   18d94:	02078263          	beqz	a5,18db8 <strcpy+0xb0>
   18d98:	0055c783          	lbu	a5,5(a1)
   18d9c:	00e60223          	sb	a4,4(a2)
   18da0:	00070c63          	beqz	a4,18db8 <strcpy+0xb0>
   18da4:	0065c703          	lbu	a4,6(a1)
   18da8:	00f602a3          	sb	a5,5(a2)
   18dac:	00078663          	beqz	a5,18db8 <strcpy+0xb0>
   18db0:	00e60323          	sb	a4,6(a2)
   18db4:	02071663          	bnez	a4,18de0 <strcpy+0xd8>
   18db8:	00008067          	ret
   18dbc:	00050793          	mv	a5,a0
   18dc0:	0005c703          	lbu	a4,0(a1)
   18dc4:	00178793          	addi	a5,a5,1
   18dc8:	00158593          	addi	a1,a1,1
   18dcc:	fee78fa3          	sb	a4,-1(a5)
   18dd0:	fe0718e3          	bnez	a4,18dc0 <strcpy+0xb8>
   18dd4:	00008067          	ret
   18dd8:	00050613          	mv	a2,a0
   18ddc:	f89ff06f          	j	18d64 <strcpy+0x5c>
   18de0:	000603a3          	sb	zero,7(a2)
   18de4:	00008067          	ret

0000000000018de8 <strlen>:
   18de8:	00757793          	andi	a5,a0,7
   18dec:	00050713          	mv	a4,a0
   18df0:	06079c63          	bnez	a5,18e68 <strlen+0x80>
   18df4:	0000c697          	auipc	a3,0xc
   18df8:	d2c6b683          	ld	a3,-724(a3) # 24b20 <mask>
   18dfc:	fff00593          	li	a1,-1
   18e00:	00073603          	ld	a2,0(a4)
   18e04:	00870713          	addi	a4,a4,8
   18e08:	00d677b3          	and	a5,a2,a3
   18e0c:	00d787b3          	add	a5,a5,a3
   18e10:	00c7e7b3          	or	a5,a5,a2
   18e14:	00d7e7b3          	or	a5,a5,a3
   18e18:	feb784e3          	beq	a5,a1,18e00 <strlen+0x18>
   18e1c:	ff874683          	lbu	a3,-8(a4)
   18e20:	40a707b3          	sub	a5,a4,a0
   18e24:	06068463          	beqz	a3,18e8c <strlen+0xa4>
   18e28:	ff974683          	lbu	a3,-7(a4)
   18e2c:	04068c63          	beqz	a3,18e84 <strlen+0x9c>
   18e30:	ffa74683          	lbu	a3,-6(a4)
   18e34:	06068463          	beqz	a3,18e9c <strlen+0xb4>
   18e38:	ffb74683          	lbu	a3,-5(a4)
   18e3c:	04068c63          	beqz	a3,18e94 <strlen+0xac>
   18e40:	ffc74683          	lbu	a3,-4(a4)
   18e44:	ffd74603          	lbu	a2,-3(a4)
   18e48:	ffe74503          	lbu	a0,-2(a4)
   18e4c:	04068c63          	beqz	a3,18ea4 <strlen+0xbc>
   18e50:	04060e63          	beqz	a2,18eac <strlen+0xc4>
   18e54:	00a03533          	snez	a0,a0
   18e58:	00f50533          	add	a0,a0,a5
   18e5c:	ffe50513          	addi	a0,a0,-2
   18e60:	00008067          	ret
   18e64:	f80688e3          	beqz	a3,18df4 <strlen+0xc>
   18e68:	00074783          	lbu	a5,0(a4)
   18e6c:	00170713          	addi	a4,a4,1
   18e70:	00777693          	andi	a3,a4,7
   18e74:	fe0798e3          	bnez	a5,18e64 <strlen+0x7c>
   18e78:	40a70733          	sub	a4,a4,a0
   18e7c:	fff70513          	addi	a0,a4,-1
   18e80:	00008067          	ret
   18e84:	ff978513          	addi	a0,a5,-7
   18e88:	00008067          	ret
   18e8c:	ff878513          	addi	a0,a5,-8
   18e90:	00008067          	ret
   18e94:	ffb78513          	addi	a0,a5,-5
   18e98:	00008067          	ret
   18e9c:	ffa78513          	addi	a0,a5,-6
   18ea0:	00008067          	ret
   18ea4:	ffc78513          	addi	a0,a5,-4
   18ea8:	00008067          	ret
   18eac:	ffd78513          	addi	a0,a5,-3
   18eb0:	00008067          	ret

0000000000018eb4 <strncpy>:
   18eb4:	00a5e7b3          	or	a5,a1,a0
   18eb8:	0077f793          	andi	a5,a5,7
   18ebc:	00050713          	mv	a4,a0
   18ec0:	06079863          	bnez	a5,18f30 <strncpy+0x7c>
   18ec4:	00700793          	li	a5,7
   18ec8:	06c7f463          	bgeu	a5,a2,18f30 <strncpy+0x7c>
   18ecc:	0000c317          	auipc	t1,0xc
   18ed0:	c2c33303          	ld	t1,-980(t1) # 24af8 <__SDATA_BEGIN__>
   18ed4:	0000c897          	auipc	a7,0xc
   18ed8:	c2c8b883          	ld	a7,-980(a7) # 24b00 <__SDATA_BEGIN__+0x8>
   18edc:	00700e13          	li	t3,7
   18ee0:	0005b683          	ld	a3,0(a1)
   18ee4:	006687b3          	add	a5,a3,t1
   18ee8:	fff6c813          	not	a6,a3
   18eec:	0107f7b3          	and	a5,a5,a6
   18ef0:	0117f7b3          	and	a5,a5,a7
   18ef4:	02079e63          	bnez	a5,18f30 <strncpy+0x7c>
   18ef8:	00d73023          	sd	a3,0(a4)
   18efc:	ff860613          	addi	a2,a2,-8
   18f00:	00870713          	addi	a4,a4,8
   18f04:	00858593          	addi	a1,a1,8
   18f08:	fcce6ce3          	bltu	t3,a2,18ee0 <strncpy+0x2c>
   18f0c:	00158593          	addi	a1,a1,1
   18f10:	00170793          	addi	a5,a4,1
   18f14:	02060463          	beqz	a2,18f3c <strncpy+0x88>
   18f18:	fff5c683          	lbu	a3,-1(a1)
   18f1c:	fff60813          	addi	a6,a2,-1
   18f20:	fed78fa3          	sb	a3,-1(a5)
   18f24:	00068e63          	beqz	a3,18f40 <strncpy+0x8c>
   18f28:	00078713          	mv	a4,a5
   18f2c:	00080613          	mv	a2,a6
   18f30:	00158593          	addi	a1,a1,1
   18f34:	00170793          	addi	a5,a4,1
   18f38:	fe0610e3          	bnez	a2,18f18 <strncpy+0x64>
   18f3c:	00008067          	ret
   18f40:	00c70633          	add	a2,a4,a2
   18f44:	00080a63          	beqz	a6,18f58 <strncpy+0xa4>
   18f48:	00178793          	addi	a5,a5,1
   18f4c:	fe078fa3          	sb	zero,-1(a5)
   18f50:	fec79ce3          	bne	a5,a2,18f48 <strncpy+0x94>
   18f54:	00008067          	ret
   18f58:	00008067          	ret

0000000000018f5c <_svfprintf_r>:
   18f5c:	d9010113          	addi	sp,sp,-624
   18f60:	26113423          	sd	ra,616(sp)
   18f64:	25313423          	sd	s3,584(sp)
   18f68:	23813023          	sd	s8,544(sp)
   18f6c:	21913c23          	sd	s9,536(sp)
   18f70:	00058c13          	mv	s8,a1
   18f74:	00060993          	mv	s3,a2
   18f78:	00d13823          	sd	a3,16(sp)
   18f7c:	26813023          	sd	s0,608(sp)
   18f80:	24913c23          	sd	s1,600(sp)
   18f84:	25213823          	sd	s2,592(sp)
   18f88:	25413023          	sd	s4,576(sp)
   18f8c:	23513c23          	sd	s5,568(sp)
   18f90:	23613823          	sd	s6,560(sp)
   18f94:	23713423          	sd	s7,552(sp)
   18f98:	21a13823          	sd	s10,528(sp)
   18f9c:	21b13423          	sd	s11,520(sp)
   18fa0:	00050c93          	mv	s9,a0
   18fa4:	909fd0ef          	jal	ra,168ac <_localeconv_r>
   18fa8:	00053783          	ld	a5,0(a0)
   18fac:	00078513          	mv	a0,a5
   18fb0:	04f13023          	sd	a5,64(sp)
   18fb4:	e35ff0ef          	jal	ra,18de8 <strlen>
   18fb8:	010c5783          	lhu	a5,16(s8)
   18fbc:	0e013823          	sd	zero,240(sp)
   18fc0:	0e013c23          	sd	zero,248(sp)
   18fc4:	0807f793          	andi	a5,a5,128
   18fc8:	02a13c23          	sd	a0,56(sp)
   18fcc:	00078863          	beqz	a5,18fdc <_svfprintf_r+0x80>
   18fd0:	018c3783          	ld	a5,24(s8)
   18fd4:	00079463          	bnez	a5,18fdc <_svfprintf_r+0x80>
   18fd8:	4f80106f          	j	1a4d0 <_svfprintf_r+0x1574>
   18fdc:	18010793          	addi	a5,sp,384
   18fe0:	00098d13          	mv	s10,s3
   18fe4:	10f13023          	sd	a5,256(sp)
   18fe8:	00078d93          	mv	s11,a5
   18fec:	000d4783          	lbu	a5,0(s10)
   18ff0:	10013823          	sd	zero,272(sp)
   18ff4:	10012423          	sw	zero,264(sp)
   18ff8:	02013023          	sd	zero,32(sp)
   18ffc:	04013423          	sd	zero,72(sp)
   19000:	04013823          	sd	zero,80(sp)
   19004:	04013c23          	sd	zero,88(sp)
   19008:	06013423          	sd	zero,104(sp)
   1900c:	06013823          	sd	zero,112(sp)
   19010:	00013023          	sd	zero,0(sp)
   19014:	01000b13          	li	s6,16
   19018:	24078863          	beqz	a5,19268 <_svfprintf_r+0x30c>
   1901c:	000d0413          	mv	s0,s10
   19020:	02500713          	li	a4,37
   19024:	2ae78863          	beq	a5,a4,192d4 <_svfprintf_r+0x378>
   19028:	00144783          	lbu	a5,1(s0)
   1902c:	00140413          	addi	s0,s0,1
   19030:	fe079ae3          	bnez	a5,19024 <_svfprintf_r+0xc8>
   19034:	41a404bb          	subw	s1,s0,s10
   19038:	22048863          	beqz	s1,19268 <_svfprintf_r+0x30c>
   1903c:	11013703          	ld	a4,272(sp)
   19040:	10812783          	lw	a5,264(sp)
   19044:	01adb023          	sd	s10,0(s11)
   19048:	00970733          	add	a4,a4,s1
   1904c:	0017879b          	addiw	a5,a5,1
   19050:	009db423          	sd	s1,8(s11)
   19054:	10e13823          	sd	a4,272(sp)
   19058:	10f12423          	sw	a5,264(sp)
   1905c:	0007871b          	sext.w	a4,a5
   19060:	00700793          	li	a5,7
   19064:	010d8d93          	addi	s11,s11,16
   19068:	26e7ce63          	blt	a5,a4,192e4 <_svfprintf_r+0x388>
   1906c:	00013703          	ld	a4,0(sp)
   19070:	00044783          	lbu	a5,0(s0)
   19074:	0097073b          	addw	a4,a4,s1
   19078:	00e13023          	sd	a4,0(sp)
   1907c:	1e078663          	beqz	a5,19268 <_svfprintf_r+0x30c>
   19080:	fff00e13          	li	t3,-1
   19084:	00144483          	lbu	s1,1(s0)
   19088:	0c0107a3          	sb	zero,207(sp)
   1908c:	00140413          	addi	s0,s0,1
   19090:	00000a13          	li	s4,0
   19094:	00000913          	li	s2,0
   19098:	00900993          	li	s3,9
   1909c:	02a00a93          	li	s5,42
   190a0:	000e0b93          	mv	s7,t3
   190a4:	00140413          	addi	s0,s0,1
   190a8:	0004849b          	sext.w	s1,s1
   190ac:	05a00693          	li	a3,90
   190b0:	fe04879b          	addiw	a5,s1,-32
   190b4:	0007871b          	sext.w	a4,a5
   190b8:	04e6ee63          	bltu	a3,a4,19114 <_svfprintf_r+0x1b8>
   190bc:	02079713          	slli	a4,a5,0x20
   190c0:	01e75793          	srli	a5,a4,0x1e
   190c4:	00009717          	auipc	a4,0x9
   190c8:	1dc70713          	addi	a4,a4,476 # 222a0 <__mprec_bigtens+0x28>
   190cc:	00e787b3          	add	a5,a5,a4
   190d0:	0007a783          	lw	a5,0(a5)
   190d4:	00e787b3          	add	a5,a5,a4
   190d8:	00078067          	jr	a5
   190dc:	00000a13          	li	s4,0
   190e0:	00044703          	lbu	a4,0(s0)
   190e4:	002a179b          	slliw	a5,s4,0x2
   190e8:	014787bb          	addw	a5,a5,s4
   190ec:	fd04849b          	addiw	s1,s1,-48
   190f0:	0017979b          	slliw	a5,a5,0x1
   190f4:	fd07061b          	addiw	a2,a4,-48
   190f8:	00f48a3b          	addw	s4,s1,a5
   190fc:	00140413          	addi	s0,s0,1
   19100:	0007049b          	sext.w	s1,a4
   19104:	fcc9fee3          	bgeu	s3,a2,190e0 <_svfprintf_r+0x184>
   19108:	fe04879b          	addiw	a5,s1,-32
   1910c:	0007871b          	sext.w	a4,a5
   19110:	fae6f6e3          	bgeu	a3,a4,190bc <_svfprintf_r+0x160>
   19114:	14048a63          	beqz	s1,19268 <_svfprintf_r+0x30c>
   19118:	10910c23          	sb	s1,280(sp)
   1911c:	0c0107a3          	sb	zero,207(sp)
   19120:	00100a93          	li	s5,1
   19124:	00100b93          	li	s7,1
   19128:	11810d13          	addi	s10,sp,280
   1912c:	00013423          	sd	zero,8(sp)
   19130:	00000e13          	li	t3,0
   19134:	02013823          	sd	zero,48(sp)
   19138:	02013423          	sd	zero,40(sp)
   1913c:	00013c23          	sd	zero,24(sp)
   19140:	00297f13          	andi	t5,s2,2
   19144:	000f0463          	beqz	t5,1914c <_svfprintf_r+0x1f0>
   19148:	002a8a9b          	addiw	s5,s5,2
   1914c:	08497e93          	andi	t4,s2,132
   19150:	11013783          	ld	a5,272(sp)
   19154:	000e9663          	bnez	t4,19160 <_svfprintf_r+0x204>
   19158:	415a06bb          	subw	a3,s4,s5
   1915c:	50d044e3          	bgtz	a3,19e64 <_svfprintf_r+0xf08>
   19160:	0cf14703          	lbu	a4,207(sp)
   19164:	02070c63          	beqz	a4,1919c <_svfprintf_r+0x240>
   19168:	10812703          	lw	a4,264(sp)
   1916c:	0cf10693          	addi	a3,sp,207
   19170:	00ddb023          	sd	a3,0(s11)
   19174:	0017071b          	addiw	a4,a4,1
   19178:	00100693          	li	a3,1
   1917c:	00178793          	addi	a5,a5,1
   19180:	00ddb423          	sd	a3,8(s11)
   19184:	10e12423          	sw	a4,264(sp)
   19188:	0007069b          	sext.w	a3,a4
   1918c:	10f13823          	sd	a5,272(sp)
   19190:	00700713          	li	a4,7
   19194:	010d8d93          	addi	s11,s11,16
   19198:	42d74463          	blt	a4,a3,195c0 <_svfprintf_r+0x664>
   1919c:	020f0c63          	beqz	t5,191d4 <_svfprintf_r+0x278>
   191a0:	10812703          	lw	a4,264(sp)
   191a4:	0d010693          	addi	a3,sp,208
   191a8:	00ddb023          	sd	a3,0(s11)
   191ac:	0017071b          	addiw	a4,a4,1
   191b0:	00200693          	li	a3,2
   191b4:	00278793          	addi	a5,a5,2
   191b8:	00ddb423          	sd	a3,8(s11)
   191bc:	10e12423          	sw	a4,264(sp)
   191c0:	0007069b          	sext.w	a3,a4
   191c4:	10f13823          	sd	a5,272(sp)
   191c8:	00700713          	li	a4,7
   191cc:	010d8d93          	addi	s11,s11,16
   191d0:	5cd748e3          	blt	a4,a3,19fa0 <_svfprintf_r+0x1044>
   191d4:	08000713          	li	a4,128
   191d8:	2aee86e3          	beq	t4,a4,19c84 <_svfprintf_r+0xd28>
   191dc:	417e09bb          	subw	s3,t3,s7
   191e0:	39304ce3          	bgtz	s3,19d78 <_svfprintf_r+0xe1c>
   191e4:	10097713          	andi	a4,s2,256
   191e8:	12071ee3          	bnez	a4,19b24 <_svfprintf_r+0xbc8>
   191ec:	10812703          	lw	a4,264(sp)
   191f0:	017787b3          	add	a5,a5,s7
   191f4:	01adb023          	sd	s10,0(s11)
   191f8:	0017069b          	addiw	a3,a4,1
   191fc:	017db423          	sd	s7,8(s11)
   19200:	10f13823          	sd	a5,272(sp)
   19204:	10d12423          	sw	a3,264(sp)
   19208:	00700713          	li	a4,7
   1920c:	4ed74063          	blt	a4,a3,196ec <_svfprintf_r+0x790>
   19210:	010d8d93          	addi	s11,s11,16
   19214:	00497913          	andi	s2,s2,4
   19218:	00090663          	beqz	s2,19224 <_svfprintf_r+0x2c8>
   1921c:	415a04bb          	subw	s1,s4,s5
   19220:	5a9048e3          	bgtz	s1,19fd0 <_svfprintf_r+0x1074>
   19224:	000a0713          	mv	a4,s4
   19228:	015a5463          	bge	s4,s5,19230 <_svfprintf_r+0x2d4>
   1922c:	000a8713          	mv	a4,s5
   19230:	00013683          	ld	a3,0(sp)
   19234:	00d7073b          	addw	a4,a4,a3
   19238:	00e13023          	sd	a4,0(sp)
   1923c:	3e079ee3          	bnez	a5,19e38 <_svfprintf_r+0xedc>
   19240:	00813783          	ld	a5,8(sp)
   19244:	10012423          	sw	zero,264(sp)
   19248:	00078863          	beqz	a5,19258 <_svfprintf_r+0x2fc>
   1924c:	00813583          	ld	a1,8(sp)
   19250:	000c8513          	mv	a0,s9
   19254:	cc4fa0ef          	jal	ra,13718 <_free_r>
   19258:	18010d93          	addi	s11,sp,384
   1925c:	00040d13          	mv	s10,s0
   19260:	000d4783          	lbu	a5,0(s10)
   19264:	da079ce3          	bnez	a5,1901c <_svfprintf_r+0xc0>
   19268:	11013783          	ld	a5,272(sp)
   1926c:	00078463          	beqz	a5,19274 <_svfprintf_r+0x318>
   19270:	2450106f          	j	1acb4 <_svfprintf_r+0x1d58>
   19274:	010c5783          	lhu	a5,16(s8)
   19278:	0407f793          	andi	a5,a5,64
   1927c:	00078463          	beqz	a5,19284 <_svfprintf_r+0x328>
   19280:	1180206f          	j	1b398 <_svfprintf_r+0x243c>
   19284:	26813083          	ld	ra,616(sp)
   19288:	26013403          	ld	s0,608(sp)
   1928c:	00013503          	ld	a0,0(sp)
   19290:	25813483          	ld	s1,600(sp)
   19294:	25013903          	ld	s2,592(sp)
   19298:	24813983          	ld	s3,584(sp)
   1929c:	24013a03          	ld	s4,576(sp)
   192a0:	23813a83          	ld	s5,568(sp)
   192a4:	23013b03          	ld	s6,560(sp)
   192a8:	22813b83          	ld	s7,552(sp)
   192ac:	22013c03          	ld	s8,544(sp)
   192b0:	21813c83          	ld	s9,536(sp)
   192b4:	21013d03          	ld	s10,528(sp)
   192b8:	20813d83          	ld	s11,520(sp)
   192bc:	27010113          	addi	sp,sp,624
   192c0:	00008067          	ret
   192c4:	01096913          	ori	s2,s2,16
   192c8:	00044483          	lbu	s1,0(s0)
   192cc:	0009091b          	sext.w	s2,s2
   192d0:	dd5ff06f          	j	190a4 <_svfprintf_r+0x148>
   192d4:	41a404bb          	subw	s1,s0,s10
   192d8:	d60492e3          	bnez	s1,1903c <_svfprintf_r+0xe0>
   192dc:	00044783          	lbu	a5,0(s0)
   192e0:	d9dff06f          	j	1907c <_svfprintf_r+0x120>
   192e4:	10010613          	addi	a2,sp,256
   192e8:	000c0593          	mv	a1,s8
   192ec:	000c8513          	mv	a0,s9
   192f0:	4c9040ef          	jal	ra,1dfb8 <__ssprint_r>
   192f4:	f80510e3          	bnez	a0,19274 <_svfprintf_r+0x318>
   192f8:	18010d93          	addi	s11,sp,384
   192fc:	d71ff06f          	j	1906c <_svfprintf_r+0x110>
   19300:	00897793          	andi	a5,s2,8
   19304:	000b8e13          	mv	t3,s7
   19308:	00078463          	beqz	a5,19310 <_svfprintf_r+0x3b4>
   1930c:	0900106f          	j	1a39c <_svfprintf_r+0x1440>
   19310:	01013783          	ld	a5,16(sp)
   19314:	01713423          	sd	s7,8(sp)
   19318:	0007b507          	fld	fa0,0(a5)
   1931c:	00878793          	addi	a5,a5,8
   19320:	00f13823          	sd	a5,16(sp)
   19324:	30c080ef          	jal	ra,21630 <__extenddftf2>
   19328:	00813e03          	ld	t3,8(sp)
   1932c:	0ea13823          	sd	a0,240(sp)
   19330:	0eb13c23          	sd	a1,248(sp)
   19334:	0f010513          	addi	a0,sp,240
   19338:	01c13423          	sd	t3,8(sp)
   1933c:	d00fd0ef          	jal	ra,1683c <_ldcheck>
   19340:	0ca12c23          	sw	a0,216(sp)
   19344:	00200793          	li	a5,2
   19348:	00813e03          	ld	t3,8(sp)
   1934c:	00f51463          	bne	a0,a5,19354 <_svfprintf_r+0x3f8>
   19350:	6940106f          	j	1a9e4 <_svfprintf_r+0x1a88>
   19354:	00100793          	li	a5,1
   19358:	00f51463          	bne	a0,a5,19360 <_svfprintf_r+0x404>
   1935c:	0390106f          	j	1ab94 <_svfprintf_r+0x1c38>
   19360:	06100793          	li	a5,97
   19364:	00f49463          	bne	s1,a5,1936c <_svfprintf_r+0x410>
   19368:	7610106f          	j	1b2c8 <_svfprintf_r+0x236c>
   1936c:	04100793          	li	a5,65
   19370:	00f49463          	bne	s1,a5,19378 <_svfprintf_r+0x41c>
   19374:	4350106f          	j	1afa8 <_svfprintf_r+0x204c>
   19378:	fdf4f713          	andi	a4,s1,-33
   1937c:	fff00793          	li	a5,-1
   19380:	02e13423          	sd	a4,40(sp)
   19384:	00fe1463          	bne	t3,a5,1938c <_svfprintf_r+0x430>
   19388:	1790106f          	j	1ad00 <_svfprintf_r+0x1da4>
   1938c:	04700793          	li	a5,71
   19390:	00f71463          	bne	a4,a5,19398 <_svfprintf_r+0x43c>
   19394:	7e90106f          	j	1b37c <_svfprintf_r+0x2420>
   19398:	0f813a83          	ld	s5,248(sp)
   1939c:	10096793          	ori	a5,s2,256
   193a0:	03213823          	sd	s2,48(sp)
   193a4:	0f013b83          	ld	s7,240(sp)
   193a8:	0007879b          	sext.w	a5,a5
   193ac:	000ad463          	bgez	s5,193b4 <_svfprintf_r+0x458>
   193b0:	6750106f          	j	1b224 <_svfprintf_r+0x22c8>
   193b4:	06013023          	sd	zero,96(sp)
   193b8:	00078913          	mv	s2,a5
   193bc:	00013423          	sd	zero,8(sp)
   193c0:	02813703          	ld	a4,40(sp)
   193c4:	04600793          	li	a5,70
   193c8:	00f71463          	bne	a4,a5,193d0 <_svfprintf_r+0x474>
   193cc:	2290106f          	j	1adf4 <_svfprintf_r+0x1e98>
   193d0:	04500793          	li	a5,69
   193d4:	00f71463          	bne	a4,a5,193dc <_svfprintf_r+0x480>
   193d8:	7090106f          	j	1b2e0 <_svfprintf_r+0x2384>
   193dc:	000e0713          	mv	a4,t3
   193e0:	0d810793          	addi	a5,sp,216
   193e4:	0e810893          	addi	a7,sp,232
   193e8:	0dc10813          	addi	a6,sp,220
   193ec:	00200693          	li	a3,2
   193f0:	000b8593          	mv	a1,s7
   193f4:	000a8613          	mv	a2,s5
   193f8:	000c8513          	mv	a0,s9
   193fc:	01c13c23          	sd	t3,24(sp)
   19400:	93cfc0ef          	jal	ra,1553c <_ldtoa_r>
   19404:	02813703          	ld	a4,40(sp)
   19408:	04700793          	li	a5,71
   1940c:	01813e03          	ld	t3,24(sp)
   19410:	00050d13          	mv	s10,a0
   19414:	00f70463          	beq	a4,a5,1941c <_svfprintf_r+0x4c0>
   19418:	1a80206f          	j	1b5c0 <_svfprintf_r+0x2664>
   1941c:	03013783          	ld	a5,48(sp)
   19420:	0017f793          	andi	a5,a5,1
   19424:	00078463          	beqz	a5,1942c <_svfprintf_r+0x4d0>
   19428:	6f50106f          	j	1b31c <_svfprintf_r+0x23c0>
   1942c:	0e813783          	ld	a5,232(sp)
   19430:	41a787bb          	subw	a5,a5,s10
   19434:	02f13023          	sd	a5,32(sp)
   19438:	0d812703          	lw	a4,216(sp)
   1943c:	04700793          	li	a5,71
   19440:	00e13c23          	sd	a4,24(sp)
   19444:	02813703          	ld	a4,40(sp)
   19448:	00f71463          	bne	a4,a5,19450 <_svfprintf_r+0x4f4>
   1944c:	0ed0106f          	j	1ad38 <_svfprintf_r+0x1ddc>
   19450:	02813703          	ld	a4,40(sp)
   19454:	04600793          	li	a5,70
   19458:	00f71463          	bne	a4,a5,19460 <_svfprintf_r+0x504>
   1945c:	2f90106f          	j	1af54 <_svfprintf_r+0x1ff8>
   19460:	01813783          	ld	a5,24(sp)
   19464:	02813603          	ld	a2,40(sp)
   19468:	04100713          	li	a4,65
   1946c:	fff78a9b          	addiw	s5,a5,-1
   19470:	0d512c23          	sw	s5,216(sp)
   19474:	0ff4f793          	andi	a5,s1,255
   19478:	00000693          	li	a3,0
   1947c:	00e61863          	bne	a2,a4,1948c <_svfprintf_r+0x530>
   19480:	00f7879b          	addiw	a5,a5,15
   19484:	0ff7f793          	andi	a5,a5,255
   19488:	00100693          	li	a3,1
   1948c:	0ef10023          	sb	a5,224(sp)
   19490:	02b00793          	li	a5,43
   19494:	000ada63          	bgez	s5,194a8 <_svfprintf_r+0x54c>
   19498:	01813703          	ld	a4,24(sp)
   1949c:	00100793          	li	a5,1
   194a0:	40e78abb          	subw	s5,a5,a4
   194a4:	02d00793          	li	a5,45
   194a8:	0ef100a3          	sb	a5,225(sp)
   194ac:	00900793          	li	a5,9
   194b0:	0157c463          	blt	a5,s5,194b8 <_svfprintf_r+0x55c>
   194b4:	7450106f          	j	1b3f8 <_svfprintf_r+0x249c>
   194b8:	0ef10913          	addi	s2,sp,239
   194bc:	00090b93          	mv	s7,s2
   194c0:	00813c23          	sd	s0,24(sp)
   194c4:	00a00593          	li	a1,10
   194c8:	000a8513          	mv	a0,s5
   194cc:	668080ef          	jal	ra,21b34 <__moddi3>
   194d0:	0305079b          	addiw	a5,a0,48
   194d4:	fefb8fa3          	sb	a5,-1(s7)
   194d8:	000a8513          	mv	a0,s5
   194dc:	00a00593          	li	a1,10
   194e0:	5d0080ef          	jal	ra,21ab0 <__divdi3>
   194e4:	000a8413          	mv	s0,s5
   194e8:	06300793          	li	a5,99
   194ec:	000b8993          	mv	s3,s7
   194f0:	00050a9b          	sext.w	s5,a0
   194f4:	fffb8b93          	addi	s7,s7,-1
   194f8:	fc87c6e3          	blt	a5,s0,194c4 <_svfprintf_r+0x568>
   194fc:	030a879b          	addiw	a5,s5,48
   19500:	0ff7f693          	andi	a3,a5,255
   19504:	fedb8fa3          	sb	a3,-1(s7)
   19508:	ffe98793          	addi	a5,s3,-2
   1950c:	01813403          	ld	s0,24(sp)
   19510:	0127e463          	bltu	a5,s2,19518 <_svfprintf_r+0x5bc>
   19514:	0c40206f          	j	1b5d8 <_svfprintf_r+0x267c>
   19518:	0e210713          	addi	a4,sp,226
   1951c:	0080006f          	j	19524 <_svfprintf_r+0x5c8>
   19520:	0007c683          	lbu	a3,0(a5)
   19524:	00d70023          	sb	a3,0(a4)
   19528:	00178793          	addi	a5,a5,1
   1952c:	00170713          	addi	a4,a4,1
   19530:	ff2798e3          	bne	a5,s2,19520 <_svfprintf_r+0x5c4>
   19534:	0f110793          	addi	a5,sp,241
   19538:	0e210713          	addi	a4,sp,226
   1953c:	413787b3          	sub	a5,a5,s3
   19540:	00f707b3          	add	a5,a4,a5
   19544:	0e010713          	addi	a4,sp,224
   19548:	40e787bb          	subw	a5,a5,a4
   1954c:	04f13823          	sd	a5,80(sp)
   19550:	05013783          	ld	a5,80(sp)
   19554:	02013683          	ld	a3,32(sp)
   19558:	00100713          	li	a4,1
   1955c:	00d78bbb          	addw	s7,a5,a3
   19560:	000b8793          	mv	a5,s7
   19564:	00d74463          	blt	a4,a3,1956c <_svfprintf_r+0x610>
   19568:	7d50106f          	j	1b53c <_svfprintf_r+0x25e0>
   1956c:	03813703          	ld	a4,56(sp)
   19570:	00e78bbb          	addw	s7,a5,a4
   19574:	03013783          	ld	a5,48(sp)
   19578:	fffbca93          	not	s5,s7
   1957c:	43fada93          	srai	s5,s5,0x3f
   19580:	bff7f913          	andi	s2,a5,-1025
   19584:	0009091b          	sext.w	s2,s2
   19588:	015bfab3          	and	s5,s7,s5
   1958c:	10096913          	ori	s2,s2,256
   19590:	000a8a9b          	sext.w	s5,s5
   19594:	02013823          	sd	zero,48(sp)
   19598:	02013423          	sd	zero,40(sp)
   1959c:	00013c23          	sd	zero,24(sp)
   195a0:	06013783          	ld	a5,96(sp)
   195a4:	00079463          	bnez	a5,195ac <_svfprintf_r+0x650>
   195a8:	0090106f          	j	1adb0 <_svfprintf_r+0x1e54>
   195ac:	02d00793          	li	a5,45
   195b0:	0cf107a3          	sb	a5,207(sp)
   195b4:	00000e13          	li	t3,0
   195b8:	001a8a9b          	addiw	s5,s5,1
   195bc:	b85ff06f          	j	19140 <_svfprintf_r+0x1e4>
   195c0:	10010613          	addi	a2,sp,256
   195c4:	000c0593          	mv	a1,s8
   195c8:	000c8513          	mv	a0,s9
   195cc:	09c13023          	sd	t3,128(sp)
   195d0:	07d13c23          	sd	t4,120(sp)
   195d4:	07e13023          	sd	t5,96(sp)
   195d8:	1e1040ef          	jal	ra,1dfb8 <__ssprint_r>
   195dc:	060518e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   195e0:	11013783          	ld	a5,272(sp)
   195e4:	08013e03          	ld	t3,128(sp)
   195e8:	07813e83          	ld	t4,120(sp)
   195ec:	06013f03          	ld	t5,96(sp)
   195f0:	18010d93          	addi	s11,sp,384
   195f4:	ba9ff06f          	j	1919c <_svfprintf_r+0x240>
   195f8:	10812683          	lw	a3,264(sp)
   195fc:	02013583          	ld	a1,32(sp)
   19600:	00178993          	addi	s3,a5,1
   19604:	00100613          	li	a2,1
   19608:	0016879b          	addiw	a5,a3,1
   1960c:	01adb023          	sd	s10,0(s11)
   19610:	00078713          	mv	a4,a5
   19614:	010d8493          	addi	s1,s11,16
   19618:	3cb65ce3          	bge	a2,a1,1a1f0 <_svfprintf_r+0x1294>
   1961c:	00100693          	li	a3,1
   19620:	10e12423          	sw	a4,264(sp)
   19624:	00ddb423          	sd	a3,8(s11)
   19628:	11313823          	sd	s3,272(sp)
   1962c:	00700713          	li	a4,7
   19630:	4ef74ee3          	blt	a4,a5,1a32c <_svfprintf_r+0x13d0>
   19634:	03813703          	ld	a4,56(sp)
   19638:	04013683          	ld	a3,64(sp)
   1963c:	00178b9b          	addiw	s7,a5,1
   19640:	00e989b3          	add	s3,s3,a4
   19644:	00d4b023          	sd	a3,0(s1)
   19648:	00e4b423          	sd	a4,8(s1)
   1964c:	11313823          	sd	s3,272(sp)
   19650:	11712423          	sw	s7,264(sp)
   19654:	00700793          	li	a5,7
   19658:	01048493          	addi	s1,s1,16
   1965c:	4f77cae3          	blt	a5,s7,1a350 <_svfprintf_r+0x13f4>
   19660:	0f013503          	ld	a0,240(sp)
   19664:	0f813583          	ld	a1,248(sp)
   19668:	001b871b          	addiw	a4,s7,1
   1966c:	00000693          	li	a3,0
   19670:	00000613          	li	a2,0
   19674:	00e12c23          	sw	a4,24(sp)
   19678:	7b0060ef          	jal	ra,1fe28 <__eqtf2>
   1967c:	01812703          	lw	a4,24(sp)
   19680:	02013783          	ld	a5,32(sp)
   19684:	01048d93          	addi	s11,s1,16
   19688:	0007069b          	sext.w	a3,a4
   1968c:	fff7879b          	addiw	a5,a5,-1
   19690:	3a0500e3          	beqz	a0,1a230 <_svfprintf_r+0x12d4>
   19694:	00f989b3          	add	s3,s3,a5
   19698:	001d0813          	addi	a6,s10,1
   1969c:	00f4b423          	sd	a5,8(s1)
   196a0:	0104b023          	sd	a6,0(s1)
   196a4:	11313823          	sd	s3,272(sp)
   196a8:	10e12423          	sw	a4,264(sp)
   196ac:	00700793          	li	a5,7
   196b0:	00d7d463          	bge	a5,a3,196b8 <_svfprintf_r+0x75c>
   196b4:	07c0106f          	j	1a730 <_svfprintf_r+0x17d4>
   196b8:	02048793          	addi	a5,s1,32
   196bc:	002b869b          	addiw	a3,s7,2
   196c0:	000d8493          	mv	s1,s11
   196c4:	00078d93          	mv	s11,a5
   196c8:	05013603          	ld	a2,80(sp)
   196cc:	0e010713          	addi	a4,sp,224
   196d0:	00e4b023          	sd	a4,0(s1)
   196d4:	013607b3          	add	a5,a2,s3
   196d8:	00c4b423          	sd	a2,8(s1)
   196dc:	10f13823          	sd	a5,272(sp)
   196e0:	10d12423          	sw	a3,264(sp)
   196e4:	00700713          	li	a4,7
   196e8:	b2d756e3          	bge	a4,a3,19214 <_svfprintf_r+0x2b8>
   196ec:	10010613          	addi	a2,sp,256
   196f0:	000c0593          	mv	a1,s8
   196f4:	000c8513          	mv	a0,s9
   196f8:	0c1040ef          	jal	ra,1dfb8 <__ssprint_r>
   196fc:	74051863          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19700:	11013783          	ld	a5,272(sp)
   19704:	18010d93          	addi	s11,sp,384
   19708:	b0dff06f          	j	19214 <_svfprintf_r+0x2b8>
   1970c:	01013703          	ld	a4,16(sp)
   19710:	0c0107a3          	sb	zero,207(sp)
   19714:	00100a93          	li	s5,1
   19718:	00072783          	lw	a5,0(a4)
   1971c:	00870713          	addi	a4,a4,8
   19720:	00e13823          	sd	a4,16(sp)
   19724:	10f10c23          	sb	a5,280(sp)
   19728:	00100b93          	li	s7,1
   1972c:	11810d13          	addi	s10,sp,280
   19730:	9fdff06f          	j	1912c <_svfprintf_r+0x1d0>
   19734:	01013783          	ld	a5,16(sp)
   19738:	0c0107a3          	sb	zero,207(sp)
   1973c:	000b8e13          	mv	t3,s7
   19740:	0007bd03          	ld	s10,0(a5)
   19744:	00878993          	addi	s3,a5,8
   19748:	000d1463          	bnez	s10,19750 <_svfprintf_r+0x7f4>
   1974c:	2f40106f          	j	1aa40 <_svfprintf_r+0x1ae4>
   19750:	fff00793          	li	a5,-1
   19754:	5afb82e3          	beq	s7,a5,1a4f8 <_svfprintf_r+0x159c>
   19758:	000b8613          	mv	a2,s7
   1975c:	00000593          	li	a1,0
   19760:	000d0513          	mv	a0,s10
   19764:	01713823          	sd	s7,16(sp)
   19768:	d39fd0ef          	jal	ra,174a0 <memchr>
   1976c:	00a13423          	sd	a0,8(sp)
   19770:	01013e03          	ld	t3,16(sp)
   19774:	00051463          	bnez	a0,1977c <_svfprintf_r+0x820>
   19778:	7780106f          	j	1aef0 <_svfprintf_r+0x1f94>
   1977c:	00813783          	ld	a5,8(sp)
   19780:	41a78bbb          	subw	s7,a5,s10
   19784:	0cf14783          	lbu	a5,207(sp)
   19788:	fffbca93          	not	s5,s7
   1978c:	43fada93          	srai	s5,s5,0x3f
   19790:	01313823          	sd	s3,16(sp)
   19794:	00013423          	sd	zero,8(sp)
   19798:	02013823          	sd	zero,48(sp)
   1979c:	02013423          	sd	zero,40(sp)
   197a0:	00013c23          	sd	zero,24(sp)
   197a4:	017afab3          	and	s5,s5,s7
   197a8:	00000e13          	li	t3,0
   197ac:	98078ae3          	beqz	a5,19140 <_svfprintf_r+0x1e4>
   197b0:	001a8a9b          	addiw	s5,s5,1
   197b4:	98dff06f          	j	19140 <_svfprintf_r+0x1e4>
   197b8:	01096913          	ori	s2,s2,16
   197bc:	000b8e13          	mv	t3,s7
   197c0:	0009091b          	sext.w	s2,s2
   197c4:	01013703          	ld	a4,16(sp)
   197c8:	02097793          	andi	a5,s2,32
   197cc:	00870693          	addi	a3,a4,8
   197d0:	2c0788e3          	beqz	a5,1a2a0 <_svfprintf_r+0x1344>
   197d4:	00073983          	ld	s3,0(a4)
   197d8:	bff97713          	andi	a4,s2,-1025
   197dc:	00070a9b          	sext.w	s5,a4
   197e0:	00d13823          	sd	a3,16(sp)
   197e4:	00000793          	li	a5,0
   197e8:	0c0107a3          	sb	zero,207(sp)
   197ec:	fff00693          	li	a3,-1
   197f0:	2cde0c63          	beq	t3,a3,19ac8 <_svfprintf_r+0xb6c>
   197f4:	f7faf913          	andi	s2,s5,-129
   197f8:	0009091b          	sext.w	s2,s2
   197fc:	2c099463          	bnez	s3,19ac4 <_svfprintf_r+0xb68>
   19800:	420e1c63          	bnez	t3,19c38 <_svfprintf_r+0xcdc>
   19804:	20079ee3          	bnez	a5,1a220 <_svfprintf_r+0x12c4>
   19808:	001afb93          	andi	s7,s5,1
   1980c:	17c10d13          	addi	s10,sp,380
   19810:	360b9ee3          	bnez	s7,1a38c <_svfprintf_r+0x1430>
   19814:	0cf14783          	lbu	a5,207(sp)
   19818:	000b8a9b          	sext.w	s5,s7
   1981c:	01cbd463          	bge	s7,t3,19824 <_svfprintf_r+0x8c8>
   19820:	000e0a9b          	sext.w	s5,t3
   19824:	00013423          	sd	zero,8(sp)
   19828:	02013823          	sd	zero,48(sp)
   1982c:	02013423          	sd	zero,40(sp)
   19830:	00013c23          	sd	zero,24(sp)
   19834:	f6079ee3          	bnez	a5,197b0 <_svfprintf_r+0x854>
   19838:	909ff06f          	j	19140 <_svfprintf_r+0x1e4>
   1983c:	00044483          	lbu	s1,0(s0)
   19840:	06800793          	li	a5,104
   19844:	44f484e3          	beq	s1,a5,1a48c <_svfprintf_r+0x1530>
   19848:	04096913          	ori	s2,s2,64
   1984c:	0009091b          	sext.w	s2,s2
   19850:	855ff06f          	j	190a4 <_svfprintf_r+0x148>
   19854:	01013683          	ld	a3,16(sp)
   19858:	02097793          	andi	a5,s2,32
   1985c:	0006b703          	ld	a4,0(a3)
   19860:	00868693          	addi	a3,a3,8
   19864:	00d13823          	sd	a3,16(sp)
   19868:	02079a63          	bnez	a5,1989c <_svfprintf_r+0x940>
   1986c:	01097793          	andi	a5,s2,16
   19870:	02079663          	bnez	a5,1989c <_svfprintf_r+0x940>
   19874:	04097793          	andi	a5,s2,64
   19878:	00078463          	beqz	a5,19880 <_svfprintf_r+0x924>
   1987c:	3ec0106f          	j	1ac68 <_svfprintf_r+0x1d0c>
   19880:	20097913          	andi	s2,s2,512
   19884:	00013783          	ld	a5,0(sp)
   19888:	00091463          	bnez	s2,19890 <_svfprintf_r+0x934>
   1988c:	3010106f          	j	1b38c <_svfprintf_r+0x2430>
   19890:	00f70023          	sb	a5,0(a4)
   19894:	00040d13          	mv	s10,s0
   19898:	9c9ff06f          	j	19260 <_svfprintf_r+0x304>
   1989c:	00013783          	ld	a5,0(sp)
   198a0:	00040d13          	mv	s10,s0
   198a4:	00f73023          	sd	a5,0(a4)
   198a8:	9b9ff06f          	j	19260 <_svfprintf_r+0x304>
   198ac:	00044483          	lbu	s1,0(s0)
   198b0:	06c00793          	li	a5,108
   198b4:	3ef48ae3          	beq	s1,a5,1a4a8 <_svfprintf_r+0x154c>
   198b8:	01096913          	ori	s2,s2,16
   198bc:	0009091b          	sext.w	s2,s2
   198c0:	fe4ff06f          	j	190a4 <_svfprintf_r+0x148>
   198c4:	02096913          	ori	s2,s2,32
   198c8:	00044483          	lbu	s1,0(s0)
   198cc:	0009091b          	sext.w	s2,s2
   198d0:	fd4ff06f          	j	190a4 <_svfprintf_r+0x148>
   198d4:	01013683          	ld	a3,16(sp)
   198d8:	ffff87b7          	lui	a5,0xffff8
   198dc:	8307c793          	xori	a5,a5,-2000
   198e0:	0cf11823          	sh	a5,208(sp)
   198e4:	00868793          	addi	a5,a3,8
   198e8:	00296713          	ori	a4,s2,2
   198ec:	00f13823          	sd	a5,16(sp)
   198f0:	00008797          	auipc	a5,0x8
   198f4:	31878793          	addi	a5,a5,792 # 21c08 <__clzdi2+0x98>
   198f8:	04f13423          	sd	a5,72(sp)
   198fc:	0006b983          	ld	s3,0(a3)
   19900:	000b8e13          	mv	t3,s7
   19904:	00070a9b          	sext.w	s5,a4
   19908:	00200793          	li	a5,2
   1990c:	07800493          	li	s1,120
   19910:	ed9ff06f          	j	197e8 <_svfprintf_r+0x88c>
   19914:	01096713          	ori	a4,s2,16
   19918:	000b8e13          	mv	t3,s7
   1991c:	00070a9b          	sext.w	s5,a4
   19920:	01013703          	ld	a4,16(sp)
   19924:	020af793          	andi	a5,s5,32
   19928:	00870693          	addi	a3,a4,8
   1992c:	1c078ae3          	beqz	a5,1a300 <_svfprintf_r+0x13a4>
   19930:	00073983          	ld	s3,0(a4)
   19934:	00100793          	li	a5,1
   19938:	00d13823          	sd	a3,16(sp)
   1993c:	eadff06f          	j	197e8 <_svfprintf_r+0x88c>
   19940:	00896913          	ori	s2,s2,8
   19944:	00044483          	lbu	s1,0(s0)
   19948:	0009091b          	sext.w	s2,s2
   1994c:	f58ff06f          	j	190a4 <_svfprintf_r+0x148>
   19950:	08096913          	ori	s2,s2,128
   19954:	00044483          	lbu	s1,0(s0)
   19958:	0009091b          	sext.w	s2,s2
   1995c:	f48ff06f          	j	190a4 <_svfprintf_r+0x148>
   19960:	00044483          	lbu	s1,0(s0)
   19964:	00140793          	addi	a5,s0,1
   19968:	01549463          	bne	s1,s5,19970 <_svfprintf_r+0xa14>
   1996c:	4290106f          	j	1b594 <_svfprintf_r+0x2638>
   19970:	fd04871b          	addiw	a4,s1,-48
   19974:	00078413          	mv	s0,a5
   19978:	00000b93          	li	s7,0
   1997c:	f2e9ea63          	bltu	s3,a4,190b0 <_svfprintf_r+0x154>
   19980:	00044603          	lbu	a2,0(s0)
   19984:	002b979b          	slliw	a5,s7,0x2
   19988:	017787bb          	addw	a5,a5,s7
   1998c:	0017979b          	slliw	a5,a5,0x1
   19990:	00e78bbb          	addw	s7,a5,a4
   19994:	fd06071b          	addiw	a4,a2,-48
   19998:	00140413          	addi	s0,s0,1
   1999c:	fee9f2e3          	bgeu	s3,a4,19980 <_svfprintf_r+0xa24>
   199a0:	00060493          	mv	s1,a2
   199a4:	f0cff06f          	j	190b0 <_svfprintf_r+0x154>
   199a8:	00044483          	lbu	s1,0(s0)
   199ac:	00496913          	ori	s2,s2,4
   199b0:	0009091b          	sext.w	s2,s2
   199b4:	ef0ff06f          	j	190a4 <_svfprintf_r+0x148>
   199b8:	02b00793          	li	a5,43
   199bc:	00044483          	lbu	s1,0(s0)
   199c0:	0cf107a3          	sb	a5,207(sp)
   199c4:	ee0ff06f          	j	190a4 <_svfprintf_r+0x148>
   199c8:	01013783          	ld	a5,16(sp)
   199cc:	00044483          	lbu	s1,0(s0)
   199d0:	0007aa03          	lw	s4,0(a5)
   199d4:	00878793          	addi	a5,a5,8
   199d8:	00f13823          	sd	a5,16(sp)
   199dc:	ec0a5463          	bgez	s4,190a4 <_svfprintf_r+0x148>
   199e0:	41400a3b          	negw	s4,s4
   199e4:	fc9ff06f          	j	199ac <_svfprintf_r+0xa50>
   199e8:	000c8513          	mv	a0,s9
   199ec:	ec1fc0ef          	jal	ra,168ac <_localeconv_r>
   199f0:	00853783          	ld	a5,8(a0)
   199f4:	00078513          	mv	a0,a5
   199f8:	06f13823          	sd	a5,112(sp)
   199fc:	becff0ef          	jal	ra,18de8 <strlen>
   19a00:	00050793          	mv	a5,a0
   19a04:	000c8513          	mv	a0,s9
   19a08:	00078493          	mv	s1,a5
   19a0c:	06f13423          	sd	a5,104(sp)
   19a10:	e9dfc0ef          	jal	ra,168ac <_localeconv_r>
   19a14:	01053783          	ld	a5,16(a0)
   19a18:	04f13c23          	sd	a5,88(sp)
   19a1c:	1c048ce3          	beqz	s1,1a3f4 <_svfprintf_r+0x1498>
   19a20:	00044483          	lbu	s1,0(s0)
   19a24:	e8078063          	beqz	a5,190a4 <_svfprintf_r+0x148>
   19a28:	0007c783          	lbu	a5,0(a5)
   19a2c:	e6078c63          	beqz	a5,190a4 <_svfprintf_r+0x148>
   19a30:	40096913          	ori	s2,s2,1024
   19a34:	0009091b          	sext.w	s2,s2
   19a38:	e6cff06f          	j	190a4 <_svfprintf_r+0x148>
   19a3c:	00196913          	ori	s2,s2,1
   19a40:	00044483          	lbu	s1,0(s0)
   19a44:	0009091b          	sext.w	s2,s2
   19a48:	e5cff06f          	j	190a4 <_svfprintf_r+0x148>
   19a4c:	0cf14783          	lbu	a5,207(sp)
   19a50:	00044483          	lbu	s1,0(s0)
   19a54:	e4079863          	bnez	a5,190a4 <_svfprintf_r+0x148>
   19a58:	02000793          	li	a5,32
   19a5c:	0cf107a3          	sb	a5,207(sp)
   19a60:	e44ff06f          	j	190a4 <_svfprintf_r+0x148>
   19a64:	01096913          	ori	s2,s2,16
   19a68:	000b8e13          	mv	t3,s7
   19a6c:	0009091b          	sext.w	s2,s2
   19a70:	01013703          	ld	a4,16(sp)
   19a74:	02097793          	andi	a5,s2,32
   19a78:	00870693          	addi	a3,a4,8
   19a7c:	040784e3          	beqz	a5,1a2c4 <_svfprintf_r+0x1368>
   19a80:	00073783          	ld	a5,0(a4)
   19a84:	00078993          	mv	s3,a5
   19a88:	0407cee3          	bltz	a5,1a2e4 <_svfprintf_r+0x1388>
   19a8c:	fff00793          	li	a5,-1
   19a90:	6cfe00e3          	beq	t3,a5,1a950 <_svfprintf_r+0x19f4>
   19a94:	f7f97713          	andi	a4,s2,-129
   19a98:	00d13823          	sd	a3,16(sp)
   19a9c:	00070a9b          	sext.w	s5,a4
   19aa0:	76098c63          	beqz	s3,1a218 <_svfprintf_r+0x12bc>
   19aa4:	00900793          	li	a5,9
   19aa8:	4b37eae3          	bltu	a5,s3,1a75c <_svfprintf_r+0x1800>
   19aac:	0309899b          	addiw	s3,s3,48
   19ab0:	17310da3          	sb	s3,379(sp)
   19ab4:	000a8913          	mv	s2,s5
   19ab8:	00100b93          	li	s7,1
   19abc:	17b10d13          	addi	s10,sp,379
   19ac0:	d55ff06f          	j	19814 <_svfprintf_r+0x8b8>
   19ac4:	00090a93          	mv	s5,s2
   19ac8:	00100693          	li	a3,1
   19acc:	fcd78ce3          	beq	a5,a3,19aa4 <_svfprintf_r+0xb48>
   19ad0:	00200693          	li	a3,2
   19ad4:	16d78e63          	beq	a5,a3,19c50 <_svfprintf_r+0xcf4>
   19ad8:	17c10b93          	addi	s7,sp,380
   19adc:	000b8d13          	mv	s10,s7
   19ae0:	0079f793          	andi	a5,s3,7
   19ae4:	03078793          	addi	a5,a5,48
   19ae8:	fefd0fa3          	sb	a5,-1(s10)
   19aec:	0039d993          	srli	s3,s3,0x3
   19af0:	000d0693          	mv	a3,s10
   19af4:	fffd0d13          	addi	s10,s10,-1
   19af8:	fe0994e3          	bnez	s3,19ae0 <_svfprintf_r+0xb84>
   19afc:	001af613          	andi	a2,s5,1
   19b00:	16060c63          	beqz	a2,19c78 <_svfprintf_r+0xd1c>
   19b04:	03000613          	li	a2,48
   19b08:	16c78863          	beq	a5,a2,19c78 <_svfprintf_r+0xd1c>
   19b0c:	ffe68693          	addi	a3,a3,-2
   19b10:	fecd0fa3          	sb	a2,-1(s10)
   19b14:	40db8bbb          	subw	s7,s7,a3
   19b18:	000a8913          	mv	s2,s5
   19b1c:	00068d13          	mv	s10,a3
   19b20:	cf5ff06f          	j	19814 <_svfprintf_r+0x8b8>
   19b24:	06500713          	li	a4,101
   19b28:	ac9758e3          	bge	a4,s1,195f8 <_svfprintf_r+0x69c>
   19b2c:	0f013503          	ld	a0,240(sp)
   19b30:	0f813583          	ld	a1,248(sp)
   19b34:	00000613          	li	a2,0
   19b38:	00000693          	li	a3,0
   19b3c:	06f13023          	sd	a5,96(sp)
   19b40:	2e8060ef          	jal	ra,1fe28 <__eqtf2>
   19b44:	06013783          	ld	a5,96(sp)
   19b48:	52051663          	bnez	a0,1a074 <_svfprintf_r+0x1118>
   19b4c:	10812703          	lw	a4,264(sp)
   19b50:	00008697          	auipc	a3,0x8
   19b54:	0d868693          	addi	a3,a3,216 # 21c28 <__clzdi2+0xb8>
   19b58:	00ddb023          	sd	a3,0(s11)
   19b5c:	0017071b          	addiw	a4,a4,1
   19b60:	00100693          	li	a3,1
   19b64:	00178793          	addi	a5,a5,1
   19b68:	00ddb423          	sd	a3,8(s11)
   19b6c:	10e12423          	sw	a4,264(sp)
   19b70:	0007069b          	sext.w	a3,a4
   19b74:	10f13823          	sd	a5,272(sp)
   19b78:	00700713          	li	a4,7
   19b7c:	010d8d93          	addi	s11,s11,16
   19b80:	5cd74ee3          	blt	a4,a3,1a95c <_svfprintf_r+0x1a00>
   19b84:	0d812703          	lw	a4,216(sp)
   19b88:	02013683          	ld	a3,32(sp)
   19b8c:	7ed75463          	bge	a4,a3,1a374 <_svfprintf_r+0x1418>
   19b90:	04013703          	ld	a4,64(sp)
   19b94:	03813683          	ld	a3,56(sp)
   19b98:	010d8d93          	addi	s11,s11,16
   19b9c:	feedb823          	sd	a4,-16(s11)
   19ba0:	10812703          	lw	a4,264(sp)
   19ba4:	00d787b3          	add	a5,a5,a3
   19ba8:	feddbc23          	sd	a3,-8(s11)
   19bac:	0017071b          	addiw	a4,a4,1
   19bb0:	0007069b          	sext.w	a3,a4
   19bb4:	10e12423          	sw	a4,264(sp)
   19bb8:	10f13823          	sd	a5,272(sp)
   19bbc:	00700713          	li	a4,7
   19bc0:	0ad746e3          	blt	a4,a3,1a46c <_svfprintf_r+0x1510>
   19bc4:	02013703          	ld	a4,32(sp)
   19bc8:	fff7049b          	addiw	s1,a4,-1
   19bcc:	e4905463          	blez	s1,19214 <_svfprintf_r+0x2b8>
   19bd0:	10812703          	lw	a4,264(sp)
   19bd4:	5a9b54e3          	bge	s6,s1,1a97c <_svfprintf_r+0x1a20>
   19bd8:	00700993          	li	s3,7
   19bdc:	00c0006f          	j	19be8 <_svfprintf_r+0xc8c>
   19be0:	ff04849b          	addiw	s1,s1,-16
   19be4:	589b5ce3          	bge	s6,s1,1a97c <_svfprintf_r+0x1a20>
   19be8:	0017069b          	addiw	a3,a4,1
   19bec:	01078793          	addi	a5,a5,16
   19bf0:	00009717          	auipc	a4,0x9
   19bf4:	83070713          	addi	a4,a4,-2000 # 22420 <zeroes.0>
   19bf8:	00edb023          	sd	a4,0(s11)
   19bfc:	016db423          	sd	s6,8(s11)
   19c00:	10f13823          	sd	a5,272(sp)
   19c04:	0006871b          	sext.w	a4,a3
   19c08:	10d12423          	sw	a3,264(sp)
   19c0c:	010d8d93          	addi	s11,s11,16
   19c10:	fce9d8e3          	bge	s3,a4,19be0 <_svfprintf_r+0xc84>
   19c14:	10010613          	addi	a2,sp,256
   19c18:	000c0593          	mv	a1,s8
   19c1c:	000c8513          	mv	a0,s9
   19c20:	398040ef          	jal	ra,1dfb8 <__ssprint_r>
   19c24:	22051463          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19c28:	11013783          	ld	a5,272(sp)
   19c2c:	10812703          	lw	a4,264(sp)
   19c30:	18010d93          	addi	s11,sp,384
   19c34:	fadff06f          	j	19be0 <_svfprintf_r+0xc84>
   19c38:	00100713          	li	a4,1
   19c3c:	00e79463          	bne	a5,a4,19c44 <_svfprintf_r+0xce8>
   19c40:	6980106f          	j	1b2d8 <_svfprintf_r+0x237c>
   19c44:	00200713          	li	a4,2
   19c48:	00090a93          	mv	s5,s2
   19c4c:	e8e796e3          	bne	a5,a4,19ad8 <_svfprintf_r+0xb7c>
   19c50:	04813703          	ld	a4,72(sp)
   19c54:	17c10b93          	addi	s7,sp,380
   19c58:	000b8d13          	mv	s10,s7
   19c5c:	00f9f793          	andi	a5,s3,15
   19c60:	00f707b3          	add	a5,a4,a5
   19c64:	0007c783          	lbu	a5,0(a5)
   19c68:	0049d993          	srli	s3,s3,0x4
   19c6c:	fffd0d13          	addi	s10,s10,-1
   19c70:	00fd0023          	sb	a5,0(s10)
   19c74:	fe0994e3          	bnez	s3,19c5c <_svfprintf_r+0xd00>
   19c78:	41ab8bbb          	subw	s7,s7,s10
   19c7c:	000a8913          	mv	s2,s5
   19c80:	b95ff06f          	j	19814 <_svfprintf_r+0x8b8>
   19c84:	415a09bb          	subw	s3,s4,s5
   19c88:	d5305a63          	blez	s3,191dc <_svfprintf_r+0x280>
   19c8c:	10812703          	lw	a4,264(sp)
   19c90:	093b5663          	bge	s6,s3,19d1c <_svfprintf_r+0xdc0>
   19c94:	06813023          	sd	s0,96(sp)
   19c98:	00700893          	li	a7,7
   19c9c:	000c0413          	mv	s0,s8
   19ca0:	00098c13          	mv	s8,s3
   19ca4:	000e0993          	mv	s3,t3
   19ca8:	00c0006f          	j	19cb4 <_svfprintf_r+0xd58>
   19cac:	ff0c0c1b          	addiw	s8,s8,-16
   19cb0:	058b5e63          	bge	s6,s8,19d0c <_svfprintf_r+0xdb0>
   19cb4:	0017069b          	addiw	a3,a4,1
   19cb8:	01078793          	addi	a5,a5,16
   19cbc:	00008717          	auipc	a4,0x8
   19cc0:	76470713          	addi	a4,a4,1892 # 22420 <zeroes.0>
   19cc4:	00edb023          	sd	a4,0(s11)
   19cc8:	016db423          	sd	s6,8(s11)
   19ccc:	10f13823          	sd	a5,272(sp)
   19cd0:	0006871b          	sext.w	a4,a3
   19cd4:	10d12423          	sw	a3,264(sp)
   19cd8:	010d8d93          	addi	s11,s11,16
   19cdc:	fce8d8e3          	bge	a7,a4,19cac <_svfprintf_r+0xd50>
   19ce0:	10010613          	addi	a2,sp,256
   19ce4:	00040593          	mv	a1,s0
   19ce8:	000c8513          	mv	a0,s9
   19cec:	2cc040ef          	jal	ra,1dfb8 <__ssprint_r>
   19cf0:	4e0516e3          	bnez	a0,1a9dc <_svfprintf_r+0x1a80>
   19cf4:	ff0c0c1b          	addiw	s8,s8,-16
   19cf8:	11013783          	ld	a5,272(sp)
   19cfc:	10812703          	lw	a4,264(sp)
   19d00:	18010d93          	addi	s11,sp,384
   19d04:	00700893          	li	a7,7
   19d08:	fb8b46e3          	blt	s6,s8,19cb4 <_svfprintf_r+0xd58>
   19d0c:	00098e13          	mv	t3,s3
   19d10:	000c0993          	mv	s3,s8
   19d14:	00040c13          	mv	s8,s0
   19d18:	06013403          	ld	s0,96(sp)
   19d1c:	0017071b          	addiw	a4,a4,1
   19d20:	00008697          	auipc	a3,0x8
   19d24:	70068693          	addi	a3,a3,1792 # 22420 <zeroes.0>
   19d28:	013787b3          	add	a5,a5,s3
   19d2c:	00ddb023          	sd	a3,0(s11)
   19d30:	013db423          	sd	s3,8(s11)
   19d34:	0007069b          	sext.w	a3,a4
   19d38:	10e12423          	sw	a4,264(sp)
   19d3c:	10f13823          	sd	a5,272(sp)
   19d40:	00700713          	li	a4,7
   19d44:	010d8d93          	addi	s11,s11,16
   19d48:	c8d75a63          	bge	a4,a3,191dc <_svfprintf_r+0x280>
   19d4c:	10010613          	addi	a2,sp,256
   19d50:	000c0593          	mv	a1,s8
   19d54:	000c8513          	mv	a0,s9
   19d58:	07c13023          	sd	t3,96(sp)
   19d5c:	25c040ef          	jal	ra,1dfb8 <__ssprint_r>
   19d60:	0e051663          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19d64:	06013e03          	ld	t3,96(sp)
   19d68:	11013783          	ld	a5,272(sp)
   19d6c:	18010d93          	addi	s11,sp,384
   19d70:	417e09bb          	subw	s3,t3,s7
   19d74:	c7305863          	blez	s3,191e4 <_svfprintf_r+0x288>
   19d78:	10812703          	lw	a4,264(sp)
   19d7c:	073b5663          	bge	s6,s3,19de8 <_svfprintf_r+0xe8c>
   19d80:	00700893          	li	a7,7
   19d84:	00c0006f          	j	19d90 <_svfprintf_r+0xe34>
   19d88:	ff09899b          	addiw	s3,s3,-16
   19d8c:	053b5e63          	bge	s6,s3,19de8 <_svfprintf_r+0xe8c>
   19d90:	0017069b          	addiw	a3,a4,1
   19d94:	01078793          	addi	a5,a5,16
   19d98:	00008717          	auipc	a4,0x8
   19d9c:	68870713          	addi	a4,a4,1672 # 22420 <zeroes.0>
   19da0:	00edb023          	sd	a4,0(s11)
   19da4:	016db423          	sd	s6,8(s11)
   19da8:	10f13823          	sd	a5,272(sp)
   19dac:	0006871b          	sext.w	a4,a3
   19db0:	10d12423          	sw	a3,264(sp)
   19db4:	010d8d93          	addi	s11,s11,16
   19db8:	fce8d8e3          	bge	a7,a4,19d88 <_svfprintf_r+0xe2c>
   19dbc:	10010613          	addi	a2,sp,256
   19dc0:	000c0593          	mv	a1,s8
   19dc4:	000c8513          	mv	a0,s9
   19dc8:	1f0040ef          	jal	ra,1dfb8 <__ssprint_r>
   19dcc:	08051063          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19dd0:	ff09899b          	addiw	s3,s3,-16
   19dd4:	11013783          	ld	a5,272(sp)
   19dd8:	10812703          	lw	a4,264(sp)
   19ddc:	18010d93          	addi	s11,sp,384
   19de0:	00700893          	li	a7,7
   19de4:	fb3b46e3          	blt	s6,s3,19d90 <_svfprintf_r+0xe34>
   19de8:	0017071b          	addiw	a4,a4,1
   19dec:	00008697          	auipc	a3,0x8
   19df0:	63468693          	addi	a3,a3,1588 # 22420 <zeroes.0>
   19df4:	013787b3          	add	a5,a5,s3
   19df8:	00ddb023          	sd	a3,0(s11)
   19dfc:	013db423          	sd	s3,8(s11)
   19e00:	0007069b          	sext.w	a3,a4
   19e04:	10e12423          	sw	a4,264(sp)
   19e08:	10f13823          	sd	a5,272(sp)
   19e0c:	00700713          	li	a4,7
   19e10:	010d8d93          	addi	s11,s11,16
   19e14:	bcd75863          	bge	a4,a3,191e4 <_svfprintf_r+0x288>
   19e18:	10010613          	addi	a2,sp,256
   19e1c:	000c0593          	mv	a1,s8
   19e20:	000c8513          	mv	a0,s9
   19e24:	194040ef          	jal	ra,1dfb8 <__ssprint_r>
   19e28:	02051263          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19e2c:	11013783          	ld	a5,272(sp)
   19e30:	18010d93          	addi	s11,sp,384
   19e34:	bb0ff06f          	j	191e4 <_svfprintf_r+0x288>
   19e38:	10010613          	addi	a2,sp,256
   19e3c:	000c0593          	mv	a1,s8
   19e40:	000c8513          	mv	a0,s9
   19e44:	174040ef          	jal	ra,1dfb8 <__ssprint_r>
   19e48:	be050c63          	beqz	a0,19240 <_svfprintf_r+0x2e4>
   19e4c:	00813783          	ld	a5,8(sp)
   19e50:	c2078263          	beqz	a5,19274 <_svfprintf_r+0x318>
   19e54:	00813583          	ld	a1,8(sp)
   19e58:	000c8513          	mv	a0,s9
   19e5c:	8bdf90ef          	jal	ra,13718 <_free_r>
   19e60:	c14ff06f          	j	19274 <_svfprintf_r+0x318>
   19e64:	10812703          	lw	a4,264(sp)
   19e68:	00008997          	auipc	s3,0x8
   19e6c:	5a898993          	addi	s3,s3,1448 # 22410 <blanks.1>
   19e70:	0cdb5863          	bge	s6,a3,19f40 <_svfprintf_r+0xfe4>
   19e74:	08813423          	sd	s0,136(sp)
   19e78:	00068413          	mv	s0,a3
   19e7c:	000c0693          	mv	a3,s8
   19e80:	08913023          	sd	s1,128(sp)
   19e84:	000a8c13          	mv	s8,s5
   19e88:	000c8493          	mv	s1,s9
   19e8c:	000a0a93          	mv	s5,s4
   19e90:	000d0c93          	mv	s9,s10
   19e94:	00090a13          	mv	s4,s2
   19e98:	000b8d13          	mv	s10,s7
   19e9c:	00700f93          	li	t6,7
   19ea0:	07e13023          	sd	t5,96(sp)
   19ea4:	07d13c23          	sd	t4,120(sp)
   19ea8:	000e0b93          	mv	s7,t3
   19eac:	00068913          	mv	s2,a3
   19eb0:	00c0006f          	j	19ebc <_svfprintf_r+0xf60>
   19eb4:	ff04041b          	addiw	s0,s0,-16
   19eb8:	048b5863          	bge	s6,s0,19f08 <_svfprintf_r+0xfac>
   19ebc:	0017071b          	addiw	a4,a4,1
   19ec0:	01078793          	addi	a5,a5,16
   19ec4:	013db023          	sd	s3,0(s11)
   19ec8:	016db423          	sd	s6,8(s11)
   19ecc:	10f13823          	sd	a5,272(sp)
   19ed0:	10e12423          	sw	a4,264(sp)
   19ed4:	010d8d93          	addi	s11,s11,16
   19ed8:	fcefdee3          	bge	t6,a4,19eb4 <_svfprintf_r+0xf58>
   19edc:	10010613          	addi	a2,sp,256
   19ee0:	00090593          	mv	a1,s2
   19ee4:	00048513          	mv	a0,s1
   19ee8:	0d0040ef          	jal	ra,1dfb8 <__ssprint_r>
   19eec:	22051ee3          	bnez	a0,1a928 <_svfprintf_r+0x19cc>
   19ef0:	ff04041b          	addiw	s0,s0,-16
   19ef4:	11013783          	ld	a5,272(sp)
   19ef8:	10812703          	lw	a4,264(sp)
   19efc:	18010d93          	addi	s11,sp,384
   19f00:	00700f93          	li	t6,7
   19f04:	fa8b4ce3          	blt	s6,s0,19ebc <_svfprintf_r+0xf60>
   19f08:	000b8e13          	mv	t3,s7
   19f0c:	00040693          	mv	a3,s0
   19f10:	000d0b93          	mv	s7,s10
   19f14:	06013f03          	ld	t5,96(sp)
   19f18:	000c8d13          	mv	s10,s9
   19f1c:	07813e83          	ld	t4,120(sp)
   19f20:	00048c93          	mv	s9,s1
   19f24:	08813403          	ld	s0,136(sp)
   19f28:	08013483          	ld	s1,128(sp)
   19f2c:	00090613          	mv	a2,s2
   19f30:	000a0913          	mv	s2,s4
   19f34:	000a8a13          	mv	s4,s5
   19f38:	000c0a93          	mv	s5,s8
   19f3c:	00060c13          	mv	s8,a2
   19f40:	0017071b          	addiw	a4,a4,1
   19f44:	00d787b3          	add	a5,a5,a3
   19f48:	00ddb423          	sd	a3,8(s11)
   19f4c:	013db023          	sd	s3,0(s11)
   19f50:	0007069b          	sext.w	a3,a4
   19f54:	10e12423          	sw	a4,264(sp)
   19f58:	10f13823          	sd	a5,272(sp)
   19f5c:	00700713          	li	a4,7
   19f60:	010d8d93          	addi	s11,s11,16
   19f64:	9ed75e63          	bge	a4,a3,19160 <_svfprintf_r+0x204>
   19f68:	10010613          	addi	a2,sp,256
   19f6c:	000c0593          	mv	a1,s8
   19f70:	000c8513          	mv	a0,s9
   19f74:	09c13023          	sd	t3,128(sp)
   19f78:	07d13c23          	sd	t4,120(sp)
   19f7c:	07e13023          	sd	t5,96(sp)
   19f80:	038040ef          	jal	ra,1dfb8 <__ssprint_r>
   19f84:	ec0514e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19f88:	11013783          	ld	a5,272(sp)
   19f8c:	08013e03          	ld	t3,128(sp)
   19f90:	07813e83          	ld	t4,120(sp)
   19f94:	06013f03          	ld	t5,96(sp)
   19f98:	18010d93          	addi	s11,sp,384
   19f9c:	9c4ff06f          	j	19160 <_svfprintf_r+0x204>
   19fa0:	10010613          	addi	a2,sp,256
   19fa4:	000c0593          	mv	a1,s8
   19fa8:	000c8513          	mv	a0,s9
   19fac:	07c13c23          	sd	t3,120(sp)
   19fb0:	07d13023          	sd	t4,96(sp)
   19fb4:	004040ef          	jal	ra,1dfb8 <__ssprint_r>
   19fb8:	e8051ae3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   19fbc:	11013783          	ld	a5,272(sp)
   19fc0:	07813e03          	ld	t3,120(sp)
   19fc4:	06013e83          	ld	t4,96(sp)
   19fc8:	18010d93          	addi	s11,sp,384
   19fcc:	a08ff06f          	j	191d4 <_svfprintf_r+0x278>
   19fd0:	10812703          	lw	a4,264(sp)
   19fd4:	00008997          	auipc	s3,0x8
   19fd8:	43c98993          	addi	s3,s3,1084 # 22410 <blanks.1>
   19fdc:	00700913          	li	s2,7
   19fe0:	009b4863          	blt	s6,s1,19ff0 <_svfprintf_r+0x1094>
   19fe4:	0540006f          	j	1a038 <_svfprintf_r+0x10dc>
   19fe8:	ff04849b          	addiw	s1,s1,-16
   19fec:	049b5663          	bge	s6,s1,1a038 <_svfprintf_r+0x10dc>
   19ff0:	0017071b          	addiw	a4,a4,1
   19ff4:	01078793          	addi	a5,a5,16
   19ff8:	013db023          	sd	s3,0(s11)
   19ffc:	016db423          	sd	s6,8(s11)
   1a000:	10f13823          	sd	a5,272(sp)
   1a004:	10e12423          	sw	a4,264(sp)
   1a008:	010d8d93          	addi	s11,s11,16
   1a00c:	fce95ee3          	bge	s2,a4,19fe8 <_svfprintf_r+0x108c>
   1a010:	10010613          	addi	a2,sp,256
   1a014:	000c0593          	mv	a1,s8
   1a018:	000c8513          	mv	a0,s9
   1a01c:	79d030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a020:	e20516e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a024:	ff04849b          	addiw	s1,s1,-16
   1a028:	11013783          	ld	a5,272(sp)
   1a02c:	10812703          	lw	a4,264(sp)
   1a030:	18010d93          	addi	s11,sp,384
   1a034:	fa9b4ee3          	blt	s6,s1,19ff0 <_svfprintf_r+0x1094>
   1a038:	0017069b          	addiw	a3,a4,1
   1a03c:	009787b3          	add	a5,a5,s1
   1a040:	013db023          	sd	s3,0(s11)
   1a044:	009db423          	sd	s1,8(s11)
   1a048:	10f13823          	sd	a5,272(sp)
   1a04c:	10d12423          	sw	a3,264(sp)
   1a050:	00700713          	li	a4,7
   1a054:	9cd75863          	bge	a4,a3,19224 <_svfprintf_r+0x2c8>
   1a058:	10010613          	addi	a2,sp,256
   1a05c:	000c0593          	mv	a1,s8
   1a060:	000c8513          	mv	a0,s9
   1a064:	755030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a068:	de0512e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a06c:	11013783          	ld	a5,272(sp)
   1a070:	9b4ff06f          	j	19224 <_svfprintf_r+0x2c8>
   1a074:	0d812603          	lw	a2,216(sp)
   1a078:	7cc05a63          	blez	a2,1a84c <_svfprintf_r+0x18f0>
   1a07c:	01813703          	ld	a4,24(sp)
   1a080:	02013683          	ld	a3,32(sp)
   1a084:	0007049b          	sext.w	s1,a4
   1a088:	36e6ca63          	blt	a3,a4,1a3fc <_svfprintf_r+0x14a0>
   1a08c:	02905663          	blez	s1,1a0b8 <_svfprintf_r+0x115c>
   1a090:	10812703          	lw	a4,264(sp)
   1a094:	009787b3          	add	a5,a5,s1
   1a098:	01adb023          	sd	s10,0(s11)
   1a09c:	0017069b          	addiw	a3,a4,1
   1a0a0:	009db423          	sd	s1,8(s11)
   1a0a4:	10f13823          	sd	a5,272(sp)
   1a0a8:	10d12423          	sw	a3,264(sp)
   1a0ac:	00700713          	li	a4,7
   1a0b0:	010d8d93          	addi	s11,s11,16
   1a0b4:	36d744e3          	blt	a4,a3,1ac1c <_svfprintf_r+0x1cc0>
   1a0b8:	fff4c713          	not	a4,s1
   1a0bc:	43f75713          	srai	a4,a4,0x3f
   1a0c0:	00e4f4b3          	and	s1,s1,a4
   1a0c4:	01813703          	ld	a4,24(sp)
   1a0c8:	409704bb          	subw	s1,a4,s1
   1a0cc:	42904e63          	bgtz	s1,1a508 <_svfprintf_r+0x15ac>
   1a0d0:	01813683          	ld	a3,24(sp)
   1a0d4:	40097713          	andi	a4,s2,1024
   1a0d8:	00dd04b3          	add	s1,s10,a3
   1a0dc:	48071a63          	bnez	a4,1a570 <_svfprintf_r+0x1614>
   1a0e0:	0d812703          	lw	a4,216(sp)
   1a0e4:	02013683          	ld	a3,32(sp)
   1a0e8:	00d74663          	blt	a4,a3,1a0f4 <_svfprintf_r+0x1198>
   1a0ec:	00197693          	andi	a3,s2,1
   1a0f0:	34068ae3          	beqz	a3,1ac44 <_svfprintf_r+0x1ce8>
   1a0f4:	04013683          	ld	a3,64(sp)
   1a0f8:	03813603          	ld	a2,56(sp)
   1a0fc:	010d8d93          	addi	s11,s11,16
   1a100:	feddb823          	sd	a3,-16(s11)
   1a104:	10812683          	lw	a3,264(sp)
   1a108:	00c787b3          	add	a5,a5,a2
   1a10c:	fecdbc23          	sd	a2,-8(s11)
   1a110:	0016869b          	addiw	a3,a3,1
   1a114:	0006861b          	sext.w	a2,a3
   1a118:	10d12423          	sw	a3,264(sp)
   1a11c:	10f13823          	sd	a5,272(sp)
   1a120:	00700693          	li	a3,7
   1a124:	5ac6c2e3          	blt	a3,a2,1aec8 <_svfprintf_r+0x1f6c>
   1a128:	02013683          	ld	a3,32(sp)
   1a12c:	40e6863b          	subw	a2,a3,a4
   1a130:	00dd06b3          	add	a3,s10,a3
   1a134:	409686bb          	subw	a3,a3,s1
   1a138:	00060713          	mv	a4,a2
   1a13c:	00c6d463          	bge	a3,a2,1a144 <_svfprintf_r+0x11e8>
   1a140:	00068713          	mv	a4,a3
   1a144:	0007099b          	sext.w	s3,a4
   1a148:	03305663          	blez	s3,1a174 <_svfprintf_r+0x1218>
   1a14c:	10812703          	lw	a4,264(sp)
   1a150:	013787b3          	add	a5,a5,s3
   1a154:	009db023          	sd	s1,0(s11)
   1a158:	0017069b          	addiw	a3,a4,1
   1a15c:	013db423          	sd	s3,8(s11)
   1a160:	10f13823          	sd	a5,272(sp)
   1a164:	10d12423          	sw	a3,264(sp)
   1a168:	00700713          	li	a4,7
   1a16c:	010d8d93          	addi	s11,s11,16
   1a170:	60d744e3          	blt	a4,a3,1af78 <_svfprintf_r+0x201c>
   1a174:	fff9c493          	not	s1,s3
   1a178:	43f4d493          	srai	s1,s1,0x3f
   1a17c:	0099f4b3          	and	s1,s3,s1
   1a180:	409604bb          	subw	s1,a2,s1
   1a184:	88905863          	blez	s1,19214 <_svfprintf_r+0x2b8>
   1a188:	10812703          	lw	a4,264(sp)
   1a18c:	7e9b5863          	bge	s6,s1,1a97c <_svfprintf_r+0x1a20>
   1a190:	00700993          	li	s3,7
   1a194:	00c0006f          	j	1a1a0 <_svfprintf_r+0x1244>
   1a198:	ff04849b          	addiw	s1,s1,-16
   1a19c:	7e9b5063          	bge	s6,s1,1a97c <_svfprintf_r+0x1a20>
   1a1a0:	0017069b          	addiw	a3,a4,1
   1a1a4:	01078793          	addi	a5,a5,16
   1a1a8:	00008717          	auipc	a4,0x8
   1a1ac:	27870713          	addi	a4,a4,632 # 22420 <zeroes.0>
   1a1b0:	00edb023          	sd	a4,0(s11)
   1a1b4:	016db423          	sd	s6,8(s11)
   1a1b8:	10f13823          	sd	a5,272(sp)
   1a1bc:	0006871b          	sext.w	a4,a3
   1a1c0:	10d12423          	sw	a3,264(sp)
   1a1c4:	010d8d93          	addi	s11,s11,16
   1a1c8:	fce9d8e3          	bge	s3,a4,1a198 <_svfprintf_r+0x123c>
   1a1cc:	10010613          	addi	a2,sp,256
   1a1d0:	000c0593          	mv	a1,s8
   1a1d4:	000c8513          	mv	a0,s9
   1a1d8:	5e1030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a1dc:	c60518e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a1e0:	11013783          	ld	a5,272(sp)
   1a1e4:	10812703          	lw	a4,264(sp)
   1a1e8:	18010d93          	addi	s11,sp,384
   1a1ec:	fadff06f          	j	1a198 <_svfprintf_r+0x123c>
   1a1f0:	00197593          	andi	a1,s2,1
   1a1f4:	c2059463          	bnez	a1,1961c <_svfprintf_r+0x6c0>
   1a1f8:	00cdb423          	sd	a2,8(s11)
   1a1fc:	11313823          	sd	s3,272(sp)
   1a200:	10f12423          	sw	a5,264(sp)
   1a204:	00700713          	li	a4,7
   1a208:	52f74463          	blt	a4,a5,1a730 <_svfprintf_r+0x17d4>
   1a20c:	0026869b          	addiw	a3,a3,2
   1a210:	020d8d93          	addi	s11,s11,32
   1a214:	cb4ff06f          	j	196c8 <_svfprintf_r+0x76c>
   1a218:	880e1ae3          	bnez	t3,19aac <_svfprintf_r+0xb50>
   1a21c:	000a8913          	mv	s2,s5
   1a220:	00000e13          	li	t3,0
   1a224:	00000b93          	li	s7,0
   1a228:	17c10d13          	addi	s10,sp,380
   1a22c:	de8ff06f          	j	19814 <_svfprintf_r+0x8b8>
   1a230:	c8f05c63          	blez	a5,196c8 <_svfprintf_r+0x76c>
   1a234:	00fb4463          	blt	s6,a5,1a23c <_svfprintf_r+0x12e0>
   1a238:	3180106f          	j	1b550 <_svfprintf_r+0x25f4>
   1a23c:	00700d13          	li	s10,7
   1a240:	00078d93          	mv	s11,a5
   1a244:	0100006f          	j	1a254 <_svfprintf_r+0x12f8>
   1a248:	ff0d8d9b          	addiw	s11,s11,-16
   1a24c:	0bbb5ce3          	bge	s6,s11,1ab04 <_svfprintf_r+0x1ba8>
   1a250:	001b871b          	addiw	a4,s7,1
   1a254:	01098993          	addi	s3,s3,16
   1a258:	00008797          	auipc	a5,0x8
   1a25c:	1c878793          	addi	a5,a5,456 # 22420 <zeroes.0>
   1a260:	00f4b023          	sd	a5,0(s1)
   1a264:	0164b423          	sd	s6,8(s1)
   1a268:	11313823          	sd	s3,272(sp)
   1a26c:	00070b9b          	sext.w	s7,a4
   1a270:	10e12423          	sw	a4,264(sp)
   1a274:	01048493          	addi	s1,s1,16
   1a278:	fd7d58e3          	bge	s10,s7,1a248 <_svfprintf_r+0x12ec>
   1a27c:	10010613          	addi	a2,sp,256
   1a280:	000c0593          	mv	a1,s8
   1a284:	000c8513          	mv	a0,s9
   1a288:	531030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a28c:	bc0510e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a290:	11013983          	ld	s3,272(sp)
   1a294:	10812b83          	lw	s7,264(sp)
   1a298:	18010493          	addi	s1,sp,384
   1a29c:	fadff06f          	j	1a248 <_svfprintf_r+0x12ec>
   1a2a0:	01097793          	andi	a5,s2,16
   1a2a4:	14079263          	bnez	a5,1a3e8 <_svfprintf_r+0x148c>
   1a2a8:	01013703          	ld	a4,16(sp)
   1a2ac:	04097793          	andi	a5,s2,64
   1a2b0:	00072983          	lw	s3,0(a4)
   1a2b4:	0a0784e3          	beqz	a5,1ab5c <_svfprintf_r+0x1c00>
   1a2b8:	03099993          	slli	s3,s3,0x30
   1a2bc:	0309d993          	srli	s3,s3,0x30
   1a2c0:	d18ff06f          	j	197d8 <_svfprintf_r+0x87c>
   1a2c4:	01097793          	andi	a5,s2,16
   1a2c8:	10079863          	bnez	a5,1a3d8 <_svfprintf_r+0x147c>
   1a2cc:	04097793          	andi	a5,s2,64
   1a2d0:	06078ae3          	beqz	a5,1ab44 <_svfprintf_r+0x1be8>
   1a2d4:	01013783          	ld	a5,16(sp)
   1a2d8:	00079983          	lh	s3,0(a5)
   1a2dc:	00098793          	mv	a5,s3
   1a2e0:	fa07d663          	bgez	a5,19a8c <_svfprintf_r+0xb30>
   1a2e4:	02d00793          	li	a5,45
   1a2e8:	0cf107a3          	sb	a5,207(sp)
   1a2ec:	413009b3          	neg	s3,s3
   1a2f0:	00d13823          	sd	a3,16(sp)
   1a2f4:	00090a93          	mv	s5,s2
   1a2f8:	00100793          	li	a5,1
   1a2fc:	cf0ff06f          	j	197ec <_svfprintf_r+0x890>
   1a300:	010af793          	andi	a5,s5,16
   1a304:	0c079063          	bnez	a5,1a3c4 <_svfprintf_r+0x1468>
   1a308:	01013703          	ld	a4,16(sp)
   1a30c:	040af793          	andi	a5,s5,64
   1a310:	00072983          	lw	s3,0(a4)
   1a314:	04078ce3          	beqz	a5,1ab6c <_svfprintf_r+0x1c10>
   1a318:	03099993          	slli	s3,s3,0x30
   1a31c:	0309d993          	srli	s3,s3,0x30
   1a320:	00d13823          	sd	a3,16(sp)
   1a324:	00100793          	li	a5,1
   1a328:	cc0ff06f          	j	197e8 <_svfprintf_r+0x88c>
   1a32c:	10010613          	addi	a2,sp,256
   1a330:	000c0593          	mv	a1,s8
   1a334:	000c8513          	mv	a0,s9
   1a338:	481030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a33c:	b00518e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a340:	11013983          	ld	s3,272(sp)
   1a344:	10812783          	lw	a5,264(sp)
   1a348:	18010493          	addi	s1,sp,384
   1a34c:	ae8ff06f          	j	19634 <_svfprintf_r+0x6d8>
   1a350:	10010613          	addi	a2,sp,256
   1a354:	000c0593          	mv	a1,s8
   1a358:	000c8513          	mv	a0,s9
   1a35c:	45d030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a360:	ae0516e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a364:	11013983          	ld	s3,272(sp)
   1a368:	10812b83          	lw	s7,264(sp)
   1a36c:	18010493          	addi	s1,sp,384
   1a370:	af0ff06f          	j	19660 <_svfprintf_r+0x704>
   1a374:	00197713          	andi	a4,s2,1
   1a378:	00071463          	bnez	a4,1a380 <_svfprintf_r+0x1424>
   1a37c:	e99fe06f          	j	19214 <_svfprintf_r+0x2b8>
   1a380:	811ff06f          	j	19b90 <_svfprintf_r+0xc34>
   1a384:	000b8e13          	mv	t3,s7
   1a388:	ee8ff06f          	j	19a70 <_svfprintf_r+0xb14>
   1a38c:	03000793          	li	a5,48
   1a390:	16f10da3          	sb	a5,379(sp)
   1a394:	17b10d13          	addi	s10,sp,379
   1a398:	c7cff06f          	j	19814 <_svfprintf_r+0x8b8>
   1a39c:	01013783          	ld	a5,16(sp)
   1a3a0:	00f78793          	addi	a5,a5,15
   1a3a4:	ff07f793          	andi	a5,a5,-16
   1a3a8:	0007b703          	ld	a4,0(a5)
   1a3ac:	0087b683          	ld	a3,8(a5)
   1a3b0:	01078793          	addi	a5,a5,16
   1a3b4:	00f13823          	sd	a5,16(sp)
   1a3b8:	0ee13823          	sd	a4,240(sp)
   1a3bc:	0ed13c23          	sd	a3,248(sp)
   1a3c0:	f75fe06f          	j	19334 <_svfprintf_r+0x3d8>
   1a3c4:	01013783          	ld	a5,16(sp)
   1a3c8:	00d13823          	sd	a3,16(sp)
   1a3cc:	0007b983          	ld	s3,0(a5)
   1a3d0:	00100793          	li	a5,1
   1a3d4:	c14ff06f          	j	197e8 <_svfprintf_r+0x88c>
   1a3d8:	01013783          	ld	a5,16(sp)
   1a3dc:	0007b783          	ld	a5,0(a5)
   1a3e0:	00078993          	mv	s3,a5
   1a3e4:	ea4ff06f          	j	19a88 <_svfprintf_r+0xb2c>
   1a3e8:	01013783          	ld	a5,16(sp)
   1a3ec:	0007b983          	ld	s3,0(a5)
   1a3f0:	be8ff06f          	j	197d8 <_svfprintf_r+0x87c>
   1a3f4:	00044483          	lbu	s1,0(s0)
   1a3f8:	cadfe06f          	j	190a4 <_svfprintf_r+0x148>
   1a3fc:	0006849b          	sext.w	s1,a3
   1a400:	c89048e3          	bgtz	s1,1a090 <_svfprintf_r+0x1134>
   1a404:	cb5ff06f          	j	1a0b8 <_svfprintf_r+0x115c>
   1a408:	00008797          	auipc	a5,0x8
   1a40c:	80078793          	addi	a5,a5,-2048 # 21c08 <__clzdi2+0x98>
   1a410:	000b8e13          	mv	t3,s7
   1a414:	04f13423          	sd	a5,72(sp)
   1a418:	01013703          	ld	a4,16(sp)
   1a41c:	02097793          	andi	a5,s2,32
   1a420:	00870693          	addi	a3,a4,8
   1a424:	2c078a63          	beqz	a5,1a6f8 <_svfprintf_r+0x179c>
   1a428:	00073983          	ld	s3,0(a4)
   1a42c:	00197793          	andi	a5,s2,1
   1a430:	00078e63          	beqz	a5,1a44c <_svfprintf_r+0x14f0>
   1a434:	00098c63          	beqz	s3,1a44c <_svfprintf_r+0x14f0>
   1a438:	00296913          	ori	s2,s2,2
   1a43c:	03000793          	li	a5,48
   1a440:	0cf10823          	sb	a5,208(sp)
   1a444:	0c9108a3          	sb	s1,209(sp)
   1a448:	0009091b          	sext.w	s2,s2
   1a44c:	bff97713          	andi	a4,s2,-1025
   1a450:	00070a9b          	sext.w	s5,a4
   1a454:	00d13823          	sd	a3,16(sp)
   1a458:	00200793          	li	a5,2
   1a45c:	b8cff06f          	j	197e8 <_svfprintf_r+0x88c>
   1a460:	000b8e13          	mv	t3,s7
   1a464:	00090a93          	mv	s5,s2
   1a468:	cb8ff06f          	j	19920 <_svfprintf_r+0x9c4>
   1a46c:	10010613          	addi	a2,sp,256
   1a470:	000c0593          	mv	a1,s8
   1a474:	000c8513          	mv	a0,s9
   1a478:	341030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a47c:	9c0518e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a480:	11013783          	ld	a5,272(sp)
   1a484:	18010d93          	addi	s11,sp,384
   1a488:	f3cff06f          	j	19bc4 <_svfprintf_r+0xc68>
   1a48c:	20096913          	ori	s2,s2,512
   1a490:	00144483          	lbu	s1,1(s0)
   1a494:	0009091b          	sext.w	s2,s2
   1a498:	00140413          	addi	s0,s0,1
   1a49c:	c09fe06f          	j	190a4 <_svfprintf_r+0x148>
   1a4a0:	000b8e13          	mv	t3,s7
   1a4a4:	b20ff06f          	j	197c4 <_svfprintf_r+0x868>
   1a4a8:	02096913          	ori	s2,s2,32
   1a4ac:	00144483          	lbu	s1,1(s0)
   1a4b0:	0009091b          	sext.w	s2,s2
   1a4b4:	00140413          	addi	s0,s0,1
   1a4b8:	bedfe06f          	j	190a4 <_svfprintf_r+0x148>
   1a4bc:	00007797          	auipc	a5,0x7
   1a4c0:	73478793          	addi	a5,a5,1844 # 21bf0 <__clzdi2+0x80>
   1a4c4:	000b8e13          	mv	t3,s7
   1a4c8:	04f13423          	sd	a5,72(sp)
   1a4cc:	f4dff06f          	j	1a418 <_svfprintf_r+0x14bc>
   1a4d0:	04000593          	li	a1,64
   1a4d4:	000c8513          	mv	a0,s9
   1a4d8:	f44fc0ef          	jal	ra,16c1c <_malloc_r>
   1a4dc:	00ac3023          	sd	a0,0(s8)
   1a4e0:	00ac3c23          	sd	a0,24(s8)
   1a4e4:	00051463          	bnez	a0,1a4ec <_svfprintf_r+0x1590>
   1a4e8:	1100106f          	j	1b5f8 <_svfprintf_r+0x269c>
   1a4ec:	04000793          	li	a5,64
   1a4f0:	02fc2023          	sw	a5,32(s8)
   1a4f4:	ae9fe06f          	j	18fdc <_svfprintf_r+0x80>
   1a4f8:	000d0513          	mv	a0,s10
   1a4fc:	8edfe0ef          	jal	ra,18de8 <strlen>
   1a500:	00050b9b          	sext.w	s7,a0
   1a504:	a80ff06f          	j	19784 <_svfprintf_r+0x828>
   1a508:	10812703          	lw	a4,264(sp)
   1a50c:	6a9b5a63          	bge	s6,s1,1abc0 <_svfprintf_r+0x1c64>
   1a510:	00700b93          	li	s7,7
   1a514:	00c0006f          	j	1a520 <_svfprintf_r+0x15c4>
   1a518:	ff04849b          	addiw	s1,s1,-16
   1a51c:	6a9b5263          	bge	s6,s1,1abc0 <_svfprintf_r+0x1c64>
   1a520:	0017069b          	addiw	a3,a4,1
   1a524:	01078793          	addi	a5,a5,16
   1a528:	00008717          	auipc	a4,0x8
   1a52c:	ef870713          	addi	a4,a4,-264 # 22420 <zeroes.0>
   1a530:	00edb023          	sd	a4,0(s11)
   1a534:	016db423          	sd	s6,8(s11)
   1a538:	10f13823          	sd	a5,272(sp)
   1a53c:	0006871b          	sext.w	a4,a3
   1a540:	10d12423          	sw	a3,264(sp)
   1a544:	010d8d93          	addi	s11,s11,16
   1a548:	fcebd8e3          	bge	s7,a4,1a518 <_svfprintf_r+0x15bc>
   1a54c:	10010613          	addi	a2,sp,256
   1a550:	000c0593          	mv	a1,s8
   1a554:	000c8513          	mv	a0,s9
   1a558:	261030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a55c:	8e0518e3          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a560:	11013783          	ld	a5,272(sp)
   1a564:	10812703          	lw	a4,264(sp)
   1a568:	18010d93          	addi	s11,sp,384
   1a56c:	fadff06f          	j	1a518 <_svfprintf_r+0x15bc>
   1a570:	02013703          	ld	a4,32(sp)
   1a574:	02813b83          	ld	s7,40(sp)
   1a578:	00813c23          	sd	s0,24(sp)
   1a57c:	00ed06b3          	add	a3,s10,a4
   1a580:	07213023          	sd	s2,96(sp)
   1a584:	07413c23          	sd	s4,120(sp)
   1a588:	03513423          	sd	s5,40(sp)
   1a58c:	000d8713          	mv	a4,s11
   1a590:	05813403          	ld	s0,88(sp)
   1a594:	07013a03          	ld	s4,112(sp)
   1a598:	06813983          	ld	s3,104(sp)
   1a59c:	03013903          	ld	s2,48(sp)
   1a5a0:	00700893          	li	a7,7
   1a5a4:	000d0d93          	mv	s11,s10
   1a5a8:	00068a93          	mv	s5,a3
   1a5ac:	080b8e63          	beqz	s7,1a648 <_svfprintf_r+0x16ec>
   1a5b0:	08091e63          	bnez	s2,1a64c <_svfprintf_r+0x16f0>
   1a5b4:	fff40413          	addi	s0,s0,-1
   1a5b8:	fffb8b9b          	addiw	s7,s7,-1
   1a5bc:	10812683          	lw	a3,264(sp)
   1a5c0:	013787b3          	add	a5,a5,s3
   1a5c4:	01473023          	sd	s4,0(a4)
   1a5c8:	0016861b          	addiw	a2,a3,1
   1a5cc:	01373423          	sd	s3,8(a4)
   1a5d0:	10f13823          	sd	a5,272(sp)
   1a5d4:	10c12423          	sw	a2,264(sp)
   1a5d8:	01070713          	addi	a4,a4,16
   1a5dc:	12c8c863          	blt	a7,a2,1a70c <_svfprintf_r+0x17b0>
   1a5e0:	00044603          	lbu	a2,0(s0)
   1a5e4:	409a853b          	subw	a0,s5,s1
   1a5e8:	0006069b          	sext.w	a3,a2
   1a5ec:	00068813          	mv	a6,a3
   1a5f0:	00d55463          	bge	a0,a3,1a5f8 <_svfprintf_r+0x169c>
   1a5f4:	00050813          	mv	a6,a0
   1a5f8:	00080d1b          	sext.w	s10,a6
   1a5fc:	03a05863          	blez	s10,1a62c <_svfprintf_r+0x16d0>
   1a600:	10812683          	lw	a3,264(sp)
   1a604:	01a787b3          	add	a5,a5,s10
   1a608:	00973023          	sd	s1,0(a4)
   1a60c:	0016861b          	addiw	a2,a3,1
   1a610:	01a73423          	sd	s10,8(a4)
   1a614:	10f13823          	sd	a5,272(sp)
   1a618:	10c12423          	sw	a2,264(sp)
   1a61c:	38c8ca63          	blt	a7,a2,1a9b0 <_svfprintf_r+0x1a54>
   1a620:	00044603          	lbu	a2,0(s0)
   1a624:	01070713          	addi	a4,a4,16
   1a628:	0006069b          	sext.w	a3,a2
   1a62c:	fffd4513          	not	a0,s10
   1a630:	43f55513          	srai	a0,a0,0x3f
   1a634:	00ad7833          	and	a6,s10,a0
   1a638:	41068d3b          	subw	s10,a3,a6
   1a63c:	01a04c63          	bgtz	s10,1a654 <_svfprintf_r+0x16f8>
   1a640:	00c484b3          	add	s1,s1,a2
   1a644:	f60b96e3          	bnez	s7,1a5b0 <_svfprintf_r+0x1654>
   1a648:	6c090063          	beqz	s2,1ad08 <_svfprintf_r+0x1dac>
   1a64c:	fff9091b          	addiw	s2,s2,-1
   1a650:	f6dff06f          	j	1a5bc <_svfprintf_r+0x1660>
   1a654:	10812603          	lw	a2,264(sp)
   1a658:	01ab4863          	blt	s6,s10,1a668 <_svfprintf_r+0x170c>
   1a65c:	0640006f          	j	1a6c0 <_svfprintf_r+0x1764>
   1a660:	ff0d0d1b          	addiw	s10,s10,-16
   1a664:	05ab5e63          	bge	s6,s10,1a6c0 <_svfprintf_r+0x1764>
   1a668:	0016069b          	addiw	a3,a2,1
   1a66c:	01078793          	addi	a5,a5,16
   1a670:	00008617          	auipc	a2,0x8
   1a674:	db060613          	addi	a2,a2,-592 # 22420 <zeroes.0>
   1a678:	00c73023          	sd	a2,0(a4)
   1a67c:	01673423          	sd	s6,8(a4)
   1a680:	10f13823          	sd	a5,272(sp)
   1a684:	0006861b          	sext.w	a2,a3
   1a688:	10d12423          	sw	a3,264(sp)
   1a68c:	01070713          	addi	a4,a4,16
   1a690:	fcc8d8e3          	bge	a7,a2,1a660 <_svfprintf_r+0x1704>
   1a694:	10010613          	addi	a2,sp,256
   1a698:	000c0593          	mv	a1,s8
   1a69c:	000c8513          	mv	a0,s9
   1a6a0:	119030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a6a4:	fa051463          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a6a8:	ff0d0d1b          	addiw	s10,s10,-16
   1a6ac:	11013783          	ld	a5,272(sp)
   1a6b0:	10812603          	lw	a2,264(sp)
   1a6b4:	18010713          	addi	a4,sp,384
   1a6b8:	00700893          	li	a7,7
   1a6bc:	fbab46e3          	blt	s6,s10,1a668 <_svfprintf_r+0x170c>
   1a6c0:	0016061b          	addiw	a2,a2,1
   1a6c4:	00008697          	auipc	a3,0x8
   1a6c8:	d5c68693          	addi	a3,a3,-676 # 22420 <zeroes.0>
   1a6cc:	01a787b3          	add	a5,a5,s10
   1a6d0:	00d73023          	sd	a3,0(a4)
   1a6d4:	01a73423          	sd	s10,8(a4)
   1a6d8:	10f13823          	sd	a5,272(sp)
   1a6dc:	0006069b          	sext.w	a3,a2
   1a6e0:	10c12423          	sw	a2,264(sp)
   1a6e4:	6ed8c063          	blt	a7,a3,1adc4 <_svfprintf_r+0x1e68>
   1a6e8:	00044603          	lbu	a2,0(s0)
   1a6ec:	01070713          	addi	a4,a4,16
   1a6f0:	00c484b3          	add	s1,s1,a2
   1a6f4:	f51ff06f          	j	1a644 <_svfprintf_r+0x16e8>
   1a6f8:	01097793          	andi	a5,s2,16
   1a6fc:	22078c63          	beqz	a5,1a934 <_svfprintf_r+0x19d8>
   1a700:	01013783          	ld	a5,16(sp)
   1a704:	0007b983          	ld	s3,0(a5)
   1a708:	d25ff06f          	j	1a42c <_svfprintf_r+0x14d0>
   1a70c:	10010613          	addi	a2,sp,256
   1a710:	000c0593          	mv	a1,s8
   1a714:	000c8513          	mv	a0,s9
   1a718:	0a1030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a71c:	f2051863          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a720:	11013783          	ld	a5,272(sp)
   1a724:	18010713          	addi	a4,sp,384
   1a728:	00700893          	li	a7,7
   1a72c:	eb5ff06f          	j	1a5e0 <_svfprintf_r+0x1684>
   1a730:	10010613          	addi	a2,sp,256
   1a734:	000c0593          	mv	a1,s8
   1a738:	000c8513          	mv	a0,s9
   1a73c:	07d030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a740:	f0051663          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a744:	10812683          	lw	a3,264(sp)
   1a748:	11013983          	ld	s3,272(sp)
   1a74c:	19010d93          	addi	s11,sp,400
   1a750:	0016869b          	addiw	a3,a3,1
   1a754:	18010493          	addi	s1,sp,384
   1a758:	f71fe06f          	j	196c8 <_svfprintf_r+0x76c>
   1a75c:	00813c23          	sd	s0,24(sp)
   1a760:	05813403          	ld	s0,88(sp)
   1a764:	17c10b93          	addi	s7,sp,380
   1a768:	400af913          	andi	s2,s5,1024
   1a76c:	00000793          	li	a5,0
   1a770:	000b8d13          	mv	s10,s7
   1a774:	00913423          	sd	s1,8(sp)
   1a778:	03413423          	sd	s4,40(sp)
   1a77c:	000b8493          	mv	s1,s7
   1a780:	00098a13          	mv	s4,s3
   1a784:	000e0b93          	mv	s7,t3
   1a788:	00090993          	mv	s3,s2
   1a78c:	00078913          	mv	s2,a5
   1a790:	00a00593          	li	a1,10
   1a794:	000a0513          	mv	a0,s4
   1a798:	368070ef          	jal	ra,21b00 <__umoddi3>
   1a79c:	0305051b          	addiw	a0,a0,48
   1a7a0:	fea48fa3          	sb	a0,-1(s1)
   1a7a4:	0019091b          	addiw	s2,s2,1
   1a7a8:	fff48493          	addi	s1,s1,-1
   1a7ac:	00098663          	beqz	s3,1a7b8 <_svfprintf_r+0x185c>
   1a7b0:	00044683          	lbu	a3,0(s0)
   1a7b4:	04d90663          	beq	s2,a3,1a800 <_svfprintf_r+0x18a4>
   1a7b8:	00a00593          	li	a1,10
   1a7bc:	000a0513          	mv	a0,s4
   1a7c0:	2f8070ef          	jal	ra,21ab8 <__udivdi3>
   1a7c4:	00900793          	li	a5,9
   1a7c8:	0147f663          	bgeu	a5,s4,1a7d4 <_svfprintf_r+0x1878>
   1a7cc:	00050a13          	mv	s4,a0
   1a7d0:	fc1ff06f          	j	1a790 <_svfprintf_r+0x1834>
   1a7d4:	000b8e13          	mv	t3,s7
   1a7d8:	000d0b93          	mv	s7,s10
   1a7dc:	00048d13          	mv	s10,s1
   1a7e0:	04813c23          	sd	s0,88(sp)
   1a7e4:	03213023          	sd	s2,32(sp)
   1a7e8:	01813403          	ld	s0,24(sp)
   1a7ec:	02813a03          	ld	s4,40(sp)
   1a7f0:	00813483          	ld	s1,8(sp)
   1a7f4:	41ab8bbb          	subw	s7,s7,s10
   1a7f8:	000a8913          	mv	s2,s5
   1a7fc:	818ff06f          	j	19814 <_svfprintf_r+0x8b8>
   1a800:	0ff00793          	li	a5,255
   1a804:	faf68ae3          	beq	a3,a5,1a7b8 <_svfprintf_r+0x185c>
   1a808:	00900793          	li	a5,9
   1a80c:	fd47f4e3          	bgeu	a5,s4,1a7d4 <_svfprintf_r+0x1878>
   1a810:	06813783          	ld	a5,104(sp)
   1a814:	07013583          	ld	a1,112(sp)
   1a818:	00000913          	li	s2,0
   1a81c:	40f484b3          	sub	s1,s1,a5
   1a820:	00078613          	mv	a2,a5
   1a824:	00048513          	mv	a0,s1
   1a828:	e8cfe0ef          	jal	ra,18eb4 <strncpy>
   1a82c:	00144683          	lbu	a3,1(s0)
   1a830:	000a0513          	mv	a0,s4
   1a834:	00a00593          	li	a1,10
   1a838:	00d03733          	snez	a4,a3
   1a83c:	00e40433          	add	s0,s0,a4
   1a840:	278070ef          	jal	ra,21ab8 <__udivdi3>
   1a844:	00050a13          	mv	s4,a0
   1a848:	f49ff06f          	j	1a790 <_svfprintf_r+0x1834>
   1a84c:	10812703          	lw	a4,264(sp)
   1a850:	00007697          	auipc	a3,0x7
   1a854:	3d868693          	addi	a3,a3,984 # 21c28 <__clzdi2+0xb8>
   1a858:	00ddb023          	sd	a3,0(s11)
   1a85c:	0017071b          	addiw	a4,a4,1
   1a860:	00100693          	li	a3,1
   1a864:	00178793          	addi	a5,a5,1
   1a868:	00ddb423          	sd	a3,8(s11)
   1a86c:	10e12423          	sw	a4,264(sp)
   1a870:	0007069b          	sext.w	a3,a4
   1a874:	10f13823          	sd	a5,272(sp)
   1a878:	00700713          	li	a4,7
   1a87c:	010d8d93          	addi	s11,s11,16
   1a880:	08d74263          	blt	a4,a3,1a904 <_svfprintf_r+0x19a8>
   1a884:	1c061e63          	bnez	a2,1aa60 <_svfprintf_r+0x1b04>
   1a888:	02013683          	ld	a3,32(sp)
   1a88c:	00197713          	andi	a4,s2,1
   1a890:	00e6e733          	or	a4,a3,a4
   1a894:	00071463          	bnez	a4,1a89c <_svfprintf_r+0x1940>
   1a898:	97dfe06f          	j	19214 <_svfprintf_r+0x2b8>
   1a89c:	04013683          	ld	a3,64(sp)
   1a8a0:	03813703          	ld	a4,56(sp)
   1a8a4:	010d8313          	addi	t1,s11,16
   1a8a8:	00ddb023          	sd	a3,0(s11)
   1a8ac:	10812683          	lw	a3,264(sp)
   1a8b0:	00f707b3          	add	a5,a4,a5
   1a8b4:	00edb423          	sd	a4,8(s11)
   1a8b8:	0016869b          	addiw	a3,a3,1
   1a8bc:	0006871b          	sext.w	a4,a3
   1a8c0:	10d12423          	sw	a3,264(sp)
   1a8c4:	10f13823          	sd	a5,272(sp)
   1a8c8:	00700693          	li	a3,7
   1a8cc:	40e6c463          	blt	a3,a4,1acd4 <_svfprintf_r+0x1d78>
   1a8d0:	02013683          	ld	a3,32(sp)
   1a8d4:	0017071b          	addiw	a4,a4,1
   1a8d8:	10e12423          	sw	a4,264(sp)
   1a8dc:	00f687b3          	add	a5,a3,a5
   1a8e0:	00d33423          	sd	a3,8(t1)
   1a8e4:	01a33023          	sd	s10,0(t1)
   1a8e8:	0007069b          	sext.w	a3,a4
   1a8ec:	10f13823          	sd	a5,272(sp)
   1a8f0:	00700713          	li	a4,7
   1a8f4:	01030d93          	addi	s11,t1,16
   1a8f8:	00d74463          	blt	a4,a3,1a900 <_svfprintf_r+0x19a4>
   1a8fc:	919fe06f          	j	19214 <_svfprintf_r+0x2b8>
   1a900:	dedfe06f          	j	196ec <_svfprintf_r+0x790>
   1a904:	10010613          	addi	a2,sp,256
   1a908:	000c0593          	mv	a1,s8
   1a90c:	000c8513          	mv	a0,s9
   1a910:	6a8030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a914:	d2051c63          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a918:	0d812603          	lw	a2,216(sp)
   1a91c:	11013783          	ld	a5,272(sp)
   1a920:	18010d93          	addi	s11,sp,384
   1a924:	f61ff06f          	j	1a884 <_svfprintf_r+0x1928>
   1a928:	00048c93          	mv	s9,s1
   1a92c:	00090c13          	mv	s8,s2
   1a930:	d1cff06f          	j	19e4c <_svfprintf_r+0xef0>
   1a934:	01013703          	ld	a4,16(sp)
   1a938:	04097793          	andi	a5,s2,64
   1a93c:	00072983          	lw	s3,0(a4)
   1a940:	24078263          	beqz	a5,1ab84 <_svfprintf_r+0x1c28>
   1a944:	03099993          	slli	s3,s3,0x30
   1a948:	0309d993          	srli	s3,s3,0x30
   1a94c:	ae1ff06f          	j	1a42c <_svfprintf_r+0x14d0>
   1a950:	00090a93          	mv	s5,s2
   1a954:	00d13823          	sd	a3,16(sp)
   1a958:	94cff06f          	j	19aa4 <_svfprintf_r+0xb48>
   1a95c:	10010613          	addi	a2,sp,256
   1a960:	000c0593          	mv	a1,s8
   1a964:	000c8513          	mv	a0,s9
   1a968:	650030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a96c:	ce051063          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a970:	11013783          	ld	a5,272(sp)
   1a974:	18010d93          	addi	s11,sp,384
   1a978:	a0cff06f          	j	19b84 <_svfprintf_r+0xc28>
   1a97c:	00008697          	auipc	a3,0x8
   1a980:	aa468693          	addi	a3,a3,-1372 # 22420 <zeroes.0>
   1a984:	0017071b          	addiw	a4,a4,1
   1a988:	00ddb023          	sd	a3,0(s11)
   1a98c:	009db423          	sd	s1,8(s11)
   1a990:	009787b3          	add	a5,a5,s1
   1a994:	0007069b          	sext.w	a3,a4
   1a998:	10e12423          	sw	a4,264(sp)
   1a99c:	10f13823          	sd	a5,272(sp)
   1a9a0:	00700713          	li	a4,7
   1a9a4:	00d74463          	blt	a4,a3,1a9ac <_svfprintf_r+0x1a50>
   1a9a8:	869fe06f          	j	19210 <_svfprintf_r+0x2b4>
   1a9ac:	d41fe06f          	j	196ec <_svfprintf_r+0x790>
   1a9b0:	10010613          	addi	a2,sp,256
   1a9b4:	000c0593          	mv	a1,s8
   1a9b8:	000c8513          	mv	a0,s9
   1a9bc:	5fc030ef          	jal	ra,1dfb8 <__ssprint_r>
   1a9c0:	c8051663          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1a9c4:	00044603          	lbu	a2,0(s0)
   1a9c8:	11013783          	ld	a5,272(sp)
   1a9cc:	18010713          	addi	a4,sp,384
   1a9d0:	0006069b          	sext.w	a3,a2
   1a9d4:	00700893          	li	a7,7
   1a9d8:	c55ff06f          	j	1a62c <_svfprintf_r+0x16d0>
   1a9dc:	00040c13          	mv	s8,s0
   1a9e0:	c6cff06f          	j	19e4c <_svfprintf_r+0xef0>
   1a9e4:	0f013503          	ld	a0,240(sp)
   1a9e8:	0f813583          	ld	a1,248(sp)
   1a9ec:	00000613          	li	a2,0
   1a9f0:	00000693          	li	a3,0
   1a9f4:	5e8050ef          	jal	ra,1ffdc <__letf2>
   1a9f8:	4c054263          	bltz	a0,1aebc <_svfprintf_r+0x1f60>
   1a9fc:	0cf14783          	lbu	a5,207(sp)
   1aa00:	04700713          	li	a4,71
   1aa04:	00007d17          	auipc	s10,0x7
   1aa08:	1ccd0d13          	addi	s10,s10,460 # 21bd0 <__clzdi2+0x60>
   1aa0c:	20974263          	blt	a4,s1,1ac10 <_svfprintf_r+0x1cb4>
   1aa10:	f7f97913          	andi	s2,s2,-129
   1aa14:	00013423          	sd	zero,8(sp)
   1aa18:	02013823          	sd	zero,48(sp)
   1aa1c:	02013423          	sd	zero,40(sp)
   1aa20:	00013c23          	sd	zero,24(sp)
   1aa24:	0009091b          	sext.w	s2,s2
   1aa28:	00300a93          	li	s5,3
   1aa2c:	00300b93          	li	s7,3
   1aa30:	00000e13          	li	t3,0
   1aa34:	00078463          	beqz	a5,1aa3c <_svfprintf_r+0x1ae0>
   1aa38:	d79fe06f          	j	197b0 <_svfprintf_r+0x854>
   1aa3c:	f04fe06f          	j	19140 <_svfprintf_r+0x1e4>
   1aa40:	00600793          	li	a5,6
   1aa44:	000b8b9b          	sext.w	s7,s7
   1aa48:	1fc7ea63          	bltu	a5,t3,1ac3c <_svfprintf_r+0x1ce0>
   1aa4c:	000b8a93          	mv	s5,s7
   1aa50:	01313823          	sd	s3,16(sp)
   1aa54:	00007d17          	auipc	s10,0x7
   1aa58:	1ccd0d13          	addi	s10,s10,460 # 21c20 <__clzdi2+0xb0>
   1aa5c:	ed0fe06f          	j	1912c <_svfprintf_r+0x1d0>
   1aa60:	04013683          	ld	a3,64(sp)
   1aa64:	03813703          	ld	a4,56(sp)
   1aa68:	010d8313          	addi	t1,s11,16
   1aa6c:	00ddb023          	sd	a3,0(s11)
   1aa70:	10812683          	lw	a3,264(sp)
   1aa74:	00f707b3          	add	a5,a4,a5
   1aa78:	00edb423          	sd	a4,8(s11)
   1aa7c:	0016869b          	addiw	a3,a3,1
   1aa80:	0006871b          	sext.w	a4,a3
   1aa84:	10d12423          	sw	a3,264(sp)
   1aa88:	10f13823          	sd	a5,272(sp)
   1aa8c:	00700693          	li	a3,7
   1aa90:	24e6c263          	blt	a3,a4,1acd4 <_svfprintf_r+0x1d78>
   1aa94:	e2065ee3          	bgez	a2,1a8d0 <_svfprintf_r+0x1974>
   1aa98:	ff000693          	li	a3,-16
   1aa9c:	40c004bb          	negw	s1,a2
   1aaa0:	08d652e3          	bge	a2,a3,1b324 <_svfprintf_r+0x23c8>
   1aaa4:	00700993          	li	s3,7
   1aaa8:	00c0006f          	j	1aab4 <_svfprintf_r+0x1b58>
   1aaac:	ff04849b          	addiw	s1,s1,-16
   1aab0:	069b5ae3          	bge	s6,s1,1b324 <_svfprintf_r+0x23c8>
   1aab4:	0017069b          	addiw	a3,a4,1
   1aab8:	01078793          	addi	a5,a5,16
   1aabc:	00008717          	auipc	a4,0x8
   1aac0:	96470713          	addi	a4,a4,-1692 # 22420 <zeroes.0>
   1aac4:	00e33023          	sd	a4,0(t1)
   1aac8:	01633423          	sd	s6,8(t1)
   1aacc:	10f13823          	sd	a5,272(sp)
   1aad0:	0006871b          	sext.w	a4,a3
   1aad4:	10d12423          	sw	a3,264(sp)
   1aad8:	01030313          	addi	t1,t1,16
   1aadc:	fce9d8e3          	bge	s3,a4,1aaac <_svfprintf_r+0x1b50>
   1aae0:	10010613          	addi	a2,sp,256
   1aae4:	000c0593          	mv	a1,s8
   1aae8:	000c8513          	mv	a0,s9
   1aaec:	4cc030ef          	jal	ra,1dfb8 <__ssprint_r>
   1aaf0:	b4051e63          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1aaf4:	11013783          	ld	a5,272(sp)
   1aaf8:	10812703          	lw	a4,264(sp)
   1aafc:	18010313          	addi	t1,sp,384
   1ab00:	fadff06f          	j	1aaac <_svfprintf_r+0x1b50>
   1ab04:	000d8793          	mv	a5,s11
   1ab08:	001b869b          	addiw	a3,s7,1
   1ab0c:	01048713          	addi	a4,s1,16
   1ab10:	00f989b3          	add	s3,s3,a5
   1ab14:	00008617          	auipc	a2,0x8
   1ab18:	90c60613          	addi	a2,a2,-1780 # 22420 <zeroes.0>
   1ab1c:	00f4b423          	sd	a5,8(s1)
   1ab20:	00c4b023          	sd	a2,0(s1)
   1ab24:	11313823          	sd	s3,272(sp)
   1ab28:	10d12423          	sw	a3,264(sp)
   1ab2c:	00700793          	li	a5,7
   1ab30:	c0d7c0e3          	blt	a5,a3,1a730 <_svfprintf_r+0x17d4>
   1ab34:	0016869b          	addiw	a3,a3,1
   1ab38:	01070d93          	addi	s11,a4,16
   1ab3c:	00070493          	mv	s1,a4
   1ab40:	b89fe06f          	j	196c8 <_svfprintf_r+0x76c>
   1ab44:	20097793          	andi	a5,s2,512
   1ab48:	14078e63          	beqz	a5,1aca4 <_svfprintf_r+0x1d48>
   1ab4c:	01013783          	ld	a5,16(sp)
   1ab50:	00078983          	lb	s3,0(a5)
   1ab54:	00098793          	mv	a5,s3
   1ab58:	f31fe06f          	j	19a88 <_svfprintf_r+0xb2c>
   1ab5c:	20097793          	andi	a5,s2,512
   1ab60:	12078c63          	beqz	a5,1ac98 <_svfprintf_r+0x1d3c>
   1ab64:	0ff9f993          	andi	s3,s3,255
   1ab68:	c71fe06f          	j	197d8 <_svfprintf_r+0x87c>
   1ab6c:	200af793          	andi	a5,s5,512
   1ab70:	10078a63          	beqz	a5,1ac84 <_svfprintf_r+0x1d28>
   1ab74:	0ff9f993          	andi	s3,s3,255
   1ab78:	00d13823          	sd	a3,16(sp)
   1ab7c:	00100793          	li	a5,1
   1ab80:	c69fe06f          	j	197e8 <_svfprintf_r+0x88c>
   1ab84:	20097793          	andi	a5,s2,512
   1ab88:	0e078863          	beqz	a5,1ac78 <_svfprintf_r+0x1d1c>
   1ab8c:	0ff9f993          	andi	s3,s3,255
   1ab90:	89dff06f          	j	1a42c <_svfprintf_r+0x14d0>
   1ab94:	0f813783          	ld	a5,248(sp)
   1ab98:	1207da63          	bgez	a5,1accc <_svfprintf_r+0x1d70>
   1ab9c:	02d00793          	li	a5,45
   1aba0:	0cf107a3          	sb	a5,207(sp)
   1aba4:	04700713          	li	a4,71
   1aba8:	00007d17          	auipc	s10,0x7
   1abac:	038d0d13          	addi	s10,s10,56 # 21be0 <__clzdi2+0x70>
   1abb0:	e69750e3          	bge	a4,s1,1aa10 <_svfprintf_r+0x1ab4>
   1abb4:	00007d17          	auipc	s10,0x7
   1abb8:	034d0d13          	addi	s10,s10,52 # 21be8 <__clzdi2+0x78>
   1abbc:	e55ff06f          	j	1aa10 <_svfprintf_r+0x1ab4>
   1abc0:	0017071b          	addiw	a4,a4,1
   1abc4:	00008697          	auipc	a3,0x8
   1abc8:	85c68693          	addi	a3,a3,-1956 # 22420 <zeroes.0>
   1abcc:	009787b3          	add	a5,a5,s1
   1abd0:	00ddb023          	sd	a3,0(s11)
   1abd4:	009db423          	sd	s1,8(s11)
   1abd8:	0007069b          	sext.w	a3,a4
   1abdc:	10e12423          	sw	a4,264(sp)
   1abe0:	10f13823          	sd	a5,272(sp)
   1abe4:	00700713          	li	a4,7
   1abe8:	010d8d93          	addi	s11,s11,16
   1abec:	ced75263          	bge	a4,a3,1a0d0 <_svfprintf_r+0x1174>
   1abf0:	10010613          	addi	a2,sp,256
   1abf4:	000c0593          	mv	a1,s8
   1abf8:	000c8513          	mv	a0,s9
   1abfc:	3bc030ef          	jal	ra,1dfb8 <__ssprint_r>
   1ac00:	a4051663          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1ac04:	11013783          	ld	a5,272(sp)
   1ac08:	18010d93          	addi	s11,sp,384
   1ac0c:	cc4ff06f          	j	1a0d0 <_svfprintf_r+0x1174>
   1ac10:	00007d17          	auipc	s10,0x7
   1ac14:	fc8d0d13          	addi	s10,s10,-56 # 21bd8 <__clzdi2+0x68>
   1ac18:	df9ff06f          	j	1aa10 <_svfprintf_r+0x1ab4>
   1ac1c:	10010613          	addi	a2,sp,256
   1ac20:	000c0593          	mv	a1,s8
   1ac24:	000c8513          	mv	a0,s9
   1ac28:	390030ef          	jal	ra,1dfb8 <__ssprint_r>
   1ac2c:	a2051063          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1ac30:	11013783          	ld	a5,272(sp)
   1ac34:	18010d93          	addi	s11,sp,384
   1ac38:	c80ff06f          	j	1a0b8 <_svfprintf_r+0x115c>
   1ac3c:	00600b93          	li	s7,6
   1ac40:	e0dff06f          	j	1aa4c <_svfprintf_r+0x1af0>
   1ac44:	02013683          	ld	a3,32(sp)
   1ac48:	00dd0833          	add	a6,s10,a3
   1ac4c:	40e6863b          	subw	a2,a3,a4
   1ac50:	40980e3b          	subw	t3,a6,s1
   1ac54:	00060493          	mv	s1,a2
   1ac58:	00ce5463          	bge	t3,a2,1ac60 <_svfprintf_r+0x1d04>
   1ac5c:	000e0493          	mv	s1,t3
   1ac60:	0004899b          	sext.w	s3,s1
   1ac64:	d10ff06f          	j	1a174 <_svfprintf_r+0x1218>
   1ac68:	00013783          	ld	a5,0(sp)
   1ac6c:	00040d13          	mv	s10,s0
   1ac70:	00f71023          	sh	a5,0(a4)
   1ac74:	decfe06f          	j	19260 <_svfprintf_r+0x304>
   1ac78:	02099993          	slli	s3,s3,0x20
   1ac7c:	0209d993          	srli	s3,s3,0x20
   1ac80:	facff06f          	j	1a42c <_svfprintf_r+0x14d0>
   1ac84:	02099993          	slli	s3,s3,0x20
   1ac88:	0209d993          	srli	s3,s3,0x20
   1ac8c:	00d13823          	sd	a3,16(sp)
   1ac90:	00100793          	li	a5,1
   1ac94:	b55fe06f          	j	197e8 <_svfprintf_r+0x88c>
   1ac98:	02099993          	slli	s3,s3,0x20
   1ac9c:	0209d993          	srli	s3,s3,0x20
   1aca0:	b39fe06f          	j	197d8 <_svfprintf_r+0x87c>
   1aca4:	01013783          	ld	a5,16(sp)
   1aca8:	0007a983          	lw	s3,0(a5)
   1acac:	00098793          	mv	a5,s3
   1acb0:	dd9fe06f          	j	19a88 <_svfprintf_r+0xb2c>
   1acb4:	10010613          	addi	a2,sp,256
   1acb8:	000c0593          	mv	a1,s8
   1acbc:	000c8513          	mv	a0,s9
   1acc0:	2f8030ef          	jal	ra,1dfb8 <__ssprint_r>
   1acc4:	010c5783          	lhu	a5,16(s8)
   1acc8:	db0fe06f          	j	19278 <_svfprintf_r+0x31c>
   1accc:	0cf14783          	lbu	a5,207(sp)
   1acd0:	ed5ff06f          	j	1aba4 <_svfprintf_r+0x1c48>
   1acd4:	10010613          	addi	a2,sp,256
   1acd8:	000c0593          	mv	a1,s8
   1acdc:	000c8513          	mv	a0,s9
   1ace0:	2d8030ef          	jal	ra,1dfb8 <__ssprint_r>
   1ace4:	96051463          	bnez	a0,19e4c <_svfprintf_r+0xef0>
   1ace8:	0d812603          	lw	a2,216(sp)
   1acec:	11013783          	ld	a5,272(sp)
   1acf0:	10812703          	lw	a4,264(sp)
   1acf4:	18010313          	addi	t1,sp,384
   1acf8:	bc065ce3          	bgez	a2,1a8d0 <_svfprintf_r+0x1974>
   1acfc:	d9dff06f          	j	1aa98 <_svfprintf_r+0x1b3c>
   1ad00:	00600e13          	li	t3,6
   1ad04:	e94fe06f          	j	19398 <_svfprintf_r+0x43c>
   1ad08:	000d8d13          	mv	s10,s11
   1ad0c:	00070d93          	mv	s11,a4
   1ad10:	02013703          	ld	a4,32(sp)
   1ad14:	04813c23          	sd	s0,88(sp)
   1ad18:	06013903          	ld	s2,96(sp)
   1ad1c:	00ed0733          	add	a4,s10,a4
   1ad20:	01813403          	ld	s0,24(sp)
   1ad24:	07813a03          	ld	s4,120(sp)
   1ad28:	02813a83          	ld	s5,40(sp)
   1ad2c:	ba977a63          	bgeu	a4,s1,1a0e0 <_svfprintf_r+0x1184>
   1ad30:	00070493          	mv	s1,a4
   1ad34:	bacff06f          	j	1a0e0 <_svfprintf_r+0x1184>
   1ad38:	01813703          	ld	a4,24(sp)
   1ad3c:	ffd00793          	li	a5,-3
   1ad40:	00f74463          	blt	a4,a5,1ad48 <_svfprintf_r+0x1dec>
   1ad44:	00ee5a63          	bge	t3,a4,1ad58 <_svfprintf_r+0x1dfc>
   1ad48:	ffe4849b          	addiw	s1,s1,-2
   1ad4c:	fdf4f793          	andi	a5,s1,-33
   1ad50:	02f13423          	sd	a5,40(sp)
   1ad54:	f0cfe06f          	j	19460 <_svfprintf_r+0x504>
   1ad58:	01813703          	ld	a4,24(sp)
   1ad5c:	02013783          	ld	a5,32(sp)
   1ad60:	1af74e63          	blt	a4,a5,1af1c <_svfprintf_r+0x1fc0>
   1ad64:	03013783          	ld	a5,48(sp)
   1ad68:	00070b93          	mv	s7,a4
   1ad6c:	0017f793          	andi	a5,a5,1
   1ad70:	00078663          	beqz	a5,1ad7c <_svfprintf_r+0x1e20>
   1ad74:	03813783          	ld	a5,56(sp)
   1ad78:	00e78bbb          	addw	s7,a5,a4
   1ad7c:	03013783          	ld	a5,48(sp)
   1ad80:	4007f793          	andi	a5,a5,1024
   1ad84:	00078663          	beqz	a5,1ad90 <_svfprintf_r+0x1e34>
   1ad88:	01813783          	ld	a5,24(sp)
   1ad8c:	68f04e63          	bgtz	a5,1b428 <_svfprintf_r+0x24cc>
   1ad90:	fffbca93          	not	s5,s7
   1ad94:	43fada93          	srai	s5,s5,0x3f
   1ad98:	015bfab3          	and	s5,s7,s5
   1ad9c:	000a8a9b          	sext.w	s5,s5
   1ada0:	06700493          	li	s1,103
   1ada4:	02013823          	sd	zero,48(sp)
   1ada8:	02013423          	sd	zero,40(sp)
   1adac:	ff4fe06f          	j	195a0 <_svfprintf_r+0x644>
   1adb0:	0cf14783          	lbu	a5,207(sp)
   1adb4:	00000e13          	li	t3,0
   1adb8:	00078463          	beqz	a5,1adc0 <_svfprintf_r+0x1e64>
   1adbc:	9f5fe06f          	j	197b0 <_svfprintf_r+0x854>
   1adc0:	b80fe06f          	j	19140 <_svfprintf_r+0x1e4>
   1adc4:	10010613          	addi	a2,sp,256
   1adc8:	000c0593          	mv	a1,s8
   1adcc:	000c8513          	mv	a0,s9
   1add0:	1e8030ef          	jal	ra,1dfb8 <__ssprint_r>
   1add4:	00050463          	beqz	a0,1addc <_svfprintf_r+0x1e80>
   1add8:	874ff06f          	j	19e4c <_svfprintf_r+0xef0>
   1addc:	00044603          	lbu	a2,0(s0)
   1ade0:	11013783          	ld	a5,272(sp)
   1ade4:	18010713          	addi	a4,sp,384
   1ade8:	00700893          	li	a7,7
   1adec:	00c484b3          	add	s1,s1,a2
   1adf0:	855ff06f          	j	1a644 <_svfprintf_r+0x16e8>
   1adf4:	000e0713          	mv	a4,t3
   1adf8:	0d810793          	addi	a5,sp,216
   1adfc:	0e810893          	addi	a7,sp,232
   1ae00:	0dc10813          	addi	a6,sp,220
   1ae04:	00300693          	li	a3,3
   1ae08:	000b8593          	mv	a1,s7
   1ae0c:	000a8613          	mv	a2,s5
   1ae10:	000c8513          	mv	a0,s9
   1ae14:	01c13c23          	sd	t3,24(sp)
   1ae18:	f24fa0ef          	jal	ra,1553c <_ldtoa_r>
   1ae1c:	00054703          	lbu	a4,0(a0)
   1ae20:	03000793          	li	a5,48
   1ae24:	01813e03          	ld	t3,24(sp)
   1ae28:	00050d13          	mv	s10,a0
   1ae2c:	06f70063          	beq	a4,a5,1ae8c <_svfprintf_r+0x1f30>
   1ae30:	0d812783          	lw	a5,216(sp)
   1ae34:	01c787b3          	add	a5,a5,t3
   1ae38:	00fd09b3          	add	s3,s10,a5
   1ae3c:	00000613          	li	a2,0
   1ae40:	00000693          	li	a3,0
   1ae44:	000b8513          	mv	a0,s7
   1ae48:	000a8593          	mv	a1,s5
   1ae4c:	01c13c23          	sd	t3,24(sp)
   1ae50:	7d9040ef          	jal	ra,1fe28 <__eqtf2>
   1ae54:	01813e03          	ld	t3,24(sp)
   1ae58:	00098793          	mv	a5,s3
   1ae5c:	00051463          	bnez	a0,1ae64 <_svfprintf_r+0x1f08>
   1ae60:	dd0fe06f          	j	19430 <_svfprintf_r+0x4d4>
   1ae64:	0e813783          	ld	a5,232(sp)
   1ae68:	0137e463          	bltu	a5,s3,1ae70 <_svfprintf_r+0x1f14>
   1ae6c:	dc4fe06f          	j	19430 <_svfprintf_r+0x4d4>
   1ae70:	03000693          	li	a3,48
   1ae74:	00178713          	addi	a4,a5,1
   1ae78:	0ee13423          	sd	a4,232(sp)
   1ae7c:	00d78023          	sb	a3,0(a5)
   1ae80:	0e813783          	ld	a5,232(sp)
   1ae84:	ff37e8e3          	bltu	a5,s3,1ae74 <_svfprintf_r+0x1f18>
   1ae88:	da8fe06f          	j	19430 <_svfprintf_r+0x4d4>
   1ae8c:	00000613          	li	a2,0
   1ae90:	00000693          	li	a3,0
   1ae94:	000b8513          	mv	a0,s7
   1ae98:	000a8593          	mv	a1,s5
   1ae9c:	01c13c23          	sd	t3,24(sp)
   1aea0:	789040ef          	jal	ra,1fe28 <__eqtf2>
   1aea4:	01813e03          	ld	t3,24(sp)
   1aea8:	f80504e3          	beqz	a0,1ae30 <_svfprintf_r+0x1ed4>
   1aeac:	00100713          	li	a4,1
   1aeb0:	41c707bb          	subw	a5,a4,t3
   1aeb4:	0cf12c23          	sw	a5,216(sp)
   1aeb8:	f7dff06f          	j	1ae34 <_svfprintf_r+0x1ed8>
   1aebc:	02d00793          	li	a5,45
   1aec0:	0cf107a3          	sb	a5,207(sp)
   1aec4:	b3dff06f          	j	1aa00 <_svfprintf_r+0x1aa4>
   1aec8:	10010613          	addi	a2,sp,256
   1aecc:	000c0593          	mv	a1,s8
   1aed0:	000c8513          	mv	a0,s9
   1aed4:	0e4030ef          	jal	ra,1dfb8 <__ssprint_r>
   1aed8:	00050463          	beqz	a0,1aee0 <_svfprintf_r+0x1f84>
   1aedc:	f71fe06f          	j	19e4c <_svfprintf_r+0xef0>
   1aee0:	0d812703          	lw	a4,216(sp)
   1aee4:	11013783          	ld	a5,272(sp)
   1aee8:	18010d93          	addi	s11,sp,384
   1aeec:	a3cff06f          	j	1a128 <_svfprintf_r+0x11cc>
   1aef0:	0cf14783          	lbu	a5,207(sp)
   1aef4:	01313823          	sd	s3,16(sp)
   1aef8:	02013823          	sd	zero,48(sp)
   1aefc:	02013423          	sd	zero,40(sp)
   1af00:	00013c23          	sd	zero,24(sp)
   1af04:	000e0a93          	mv	s5,t3
   1af08:	000e0b93          	mv	s7,t3
   1af0c:	00000e13          	li	t3,0
   1af10:	00078463          	beqz	a5,1af18 <_svfprintf_r+0x1fbc>
   1af14:	89dfe06f          	j	197b0 <_svfprintf_r+0x854>
   1af18:	a28fe06f          	j	19140 <_svfprintf_r+0x1e4>
   1af1c:	02013703          	ld	a4,32(sp)
   1af20:	03813783          	ld	a5,56(sp)
   1af24:	06700493          	li	s1,103
   1af28:	00e78bbb          	addw	s7,a5,a4
   1af2c:	01813703          	ld	a4,24(sp)
   1af30:	5ee05663          	blez	a4,1b51c <_svfprintf_r+0x25c0>
   1af34:	03013783          	ld	a5,48(sp)
   1af38:	4007f793          	andi	a5,a5,1024
   1af3c:	4e079863          	bnez	a5,1b42c <_svfprintf_r+0x24d0>
   1af40:	fffbca93          	not	s5,s7
   1af44:	43fada93          	srai	s5,s5,0x3f
   1af48:	015bfab3          	and	s5,s7,s5
   1af4c:	000a8a9b          	sext.w	s5,s5
   1af50:	e55ff06f          	j	1ada4 <_svfprintf_r+0x1e48>
   1af54:	03013783          	ld	a5,48(sp)
   1af58:	01813703          	ld	a4,24(sp)
   1af5c:	0017f793          	andi	a5,a5,1
   1af60:	00fe67b3          	or	a5,t3,a5
   1af64:	5ee05a63          	blez	a4,1b558 <_svfprintf_r+0x25fc>
   1af68:	46079e63          	bnez	a5,1b3e4 <_svfprintf_r+0x2488>
   1af6c:	01813b83          	ld	s7,24(sp)
   1af70:	06600493          	li	s1,102
   1af74:	fc1ff06f          	j	1af34 <_svfprintf_r+0x1fd8>
   1af78:	10010613          	addi	a2,sp,256
   1af7c:	000c0593          	mv	a1,s8
   1af80:	000c8513          	mv	a0,s9
   1af84:	034030ef          	jal	ra,1dfb8 <__ssprint_r>
   1af88:	00050463          	beqz	a0,1af90 <_svfprintf_r+0x2034>
   1af8c:	ec1fe06f          	j	19e4c <_svfprintf_r+0xef0>
   1af90:	0d812603          	lw	a2,216(sp)
   1af94:	02013703          	ld	a4,32(sp)
   1af98:	11013783          	ld	a5,272(sp)
   1af9c:	18010d93          	addi	s11,sp,384
   1afa0:	40c7063b          	subw	a2,a4,a2
   1afa4:	9d0ff06f          	j	1a174 <_svfprintf_r+0x1218>
   1afa8:	03000793          	li	a5,48
   1afac:	0cf10823          	sb	a5,208(sp)
   1afb0:	05800713          	li	a4,88
   1afb4:	00296793          	ori	a5,s2,2
   1afb8:	0007879b          	sext.w	a5,a5
   1afbc:	0ce108a3          	sb	a4,209(sp)
   1afc0:	02f13823          	sd	a5,48(sp)
   1afc4:	06300713          	li	a4,99
   1afc8:	00013423          	sd	zero,8(sp)
   1afcc:	11810d13          	addi	s10,sp,280
   1afd0:	2dc74a63          	blt	a4,t3,1b2a4 <_svfprintf_r+0x2348>
   1afd4:	0f813a83          	ld	s5,248(sp)
   1afd8:	fdf4f793          	andi	a5,s1,-33
   1afdc:	10296913          	ori	s2,s2,258
   1afe0:	02f13423          	sd	a5,40(sp)
   1afe4:	06013023          	sd	zero,96(sp)
   1afe8:	0f013b83          	ld	s7,240(sp)
   1afec:	0009091b          	sext.w	s2,s2
   1aff0:	220ace63          	bltz	s5,1b22c <_svfprintf_r+0x22d0>
   1aff4:	06100793          	li	a5,97
   1aff8:	4cf48063          	beq	s1,a5,1b4b8 <_svfprintf_r+0x255c>
   1affc:	04100793          	li	a5,65
   1b000:	00f48463          	beq	s1,a5,1b008 <_svfprintf_r+0x20ac>
   1b004:	bbcfe06f          	j	193c0 <_svfprintf_r+0x464>
   1b008:	000a8593          	mv	a1,s5
   1b00c:	000b8513          	mv	a0,s7
   1b010:	01c13c23          	sd	t3,24(sp)
   1b014:	73c060ef          	jal	ra,21750 <__trunctfdf2>
   1b018:	0d810513          	addi	a0,sp,216
   1b01c:	8e5fd0ef          	jal	ra,18900 <frexp>
   1b020:	610060ef          	jal	ra,21630 <__extenddftf2>
   1b024:	00007797          	auipc	a5,0x7
   1b028:	dbc78793          	addi	a5,a5,-580 # 21de0 <zeroes.0+0x30>
   1b02c:	0007b603          	ld	a2,0(a5)
   1b030:	0087b683          	ld	a3,8(a5)
   1b034:	08c050ef          	jal	ra,200c0 <__multf3>
   1b038:	00000613          	li	a2,0
   1b03c:	00000693          	li	a3,0
   1b040:	00050993          	mv	s3,a0
   1b044:	00058b93          	mv	s7,a1
   1b048:	5e1040ef          	jal	ra,1fe28 <__eqtf2>
   1b04c:	01813e03          	ld	t3,24(sp)
   1b050:	00051663          	bnez	a0,1b05c <_svfprintf_r+0x2100>
   1b054:	00100713          	li	a4,1
   1b058:	0ce12c23          	sw	a4,216(sp)
   1b05c:	00007797          	auipc	a5,0x7
   1b060:	b9478793          	addi	a5,a5,-1132 # 21bf0 <__clzdi2+0x80>
   1b064:	00f13c23          	sd	a5,24(sp)
   1b068:	020e1713          	slli	a4,t3,0x20
   1b06c:	00007697          	auipc	a3,0x7
   1b070:	d5468693          	addi	a3,a3,-684 # 21dc0 <zeroes.0+0x10>
   1b074:	02075713          	srli	a4,a4,0x20
   1b078:	0006b783          	ld	a5,0(a3)
   1b07c:	00170713          	addi	a4,a4,1
   1b080:	0086b683          	ld	a3,8(a3)
   1b084:	00ed0733          	add	a4,s10,a4
   1b088:	02e13023          	sd	a4,32(sp)
   1b08c:	01cd073b          	addw	a4,s10,t3
   1b090:	07413c23          	sd	s4,120(sp)
   1b094:	0bb13023          	sd	s11,160(sp)
   1b098:	0b913423          	sd	s9,168(sp)
   1b09c:	0b813823          	sd	s8,176(sp)
   1b0a0:	0ba13c23          	sd	s10,184(sp)
   1b0a4:	000d0c13          	mv	s8,s10
   1b0a8:	00098c93          	mv	s9,s3
   1b0ac:	08913423          	sd	s1,136(sp)
   1b0b0:	08813823          	sd	s0,144(sp)
   1b0b4:	09213c23          	sd	s2,152(sp)
   1b0b8:	09c13023          	sd	t3,128(sp)
   1b0bc:	000b8d13          	mv	s10,s7
   1b0c0:	00070a13          	mv	s4,a4
   1b0c4:	00078d93          	mv	s11,a5
   1b0c8:	00068993          	mv	s3,a3
   1b0cc:	0140006f          	j	1b0e0 <_svfprintf_r+0x2184>
   1b0d0:	00000613          	li	a2,0
   1b0d4:	00000693          	li	a3,0
   1b0d8:	551040ef          	jal	ra,1fe28 <__eqtf2>
   1b0dc:	2c050463          	beqz	a0,1b3a4 <_svfprintf_r+0x2448>
   1b0e0:	000d8613          	mv	a2,s11
   1b0e4:	00098693          	mv	a3,s3
   1b0e8:	000c8513          	mv	a0,s9
   1b0ec:	000d0593          	mv	a1,s10
   1b0f0:	7d1040ef          	jal	ra,200c0 <__multf3>
   1b0f4:	00058a93          	mv	s5,a1
   1b0f8:	00050b93          	mv	s7,a0
   1b0fc:	3d8060ef          	jal	ra,214d4 <__fixtfsi>
   1b100:	0005041b          	sext.w	s0,a0
   1b104:	4a4060ef          	jal	ra,215a8 <__floatsitf>
   1b108:	00058693          	mv	a3,a1
   1b10c:	00050613          	mv	a2,a0
   1b110:	000a8593          	mv	a1,s5
   1b114:	000b8513          	mv	a0,s7
   1b118:	0bd050ef          	jal	ra,209d4 <__subtf3>
   1b11c:	01813783          	ld	a5,24(sp)
   1b120:	000c0a93          	mv	s5,s8
   1b124:	001c0c13          	addi	s8,s8,1
   1b128:	00878733          	add	a4,a5,s0
   1b12c:	00074683          	lbu	a3,0(a4)
   1b130:	02013783          	ld	a5,32(sp)
   1b134:	00050493          	mv	s1,a0
   1b138:	fedc0fa3          	sb	a3,-1(s8)
   1b13c:	00058913          	mv	s2,a1
   1b140:	00050c93          	mv	s9,a0
   1b144:	00058d13          	mv	s10,a1
   1b148:	418a0bbb          	subw	s7,s4,s8
   1b14c:	f98792e3          	bne	a5,s8,1b0d0 <_svfprintf_r+0x2174>
   1b150:	08013e03          	ld	t3,128(sp)
   1b154:	03513023          	sd	s5,32(sp)
   1b158:	08813023          	sd	s0,128(sp)
   1b15c:	000c0a93          	mv	s5,s8
   1b160:	0a013d83          	ld	s11,160(sp)
   1b164:	09013403          	ld	s0,144(sp)
   1b168:	0a813c83          	ld	s9,168(sp)
   1b16c:	0b013c03          	ld	s8,176(sp)
   1b170:	0b813d03          	ld	s10,184(sp)
   1b174:	08813483          	ld	s1,136(sp)
   1b178:	09813903          	ld	s2,152(sp)
   1b17c:	fff00793          	li	a5,-1
   1b180:	07813a03          	ld	s4,120(sp)
   1b184:	00050e93          	mv	t4,a0
   1b188:	00058713          	mv	a4,a1
   1b18c:	06f13c23          	sd	a5,120(sp)
   1b190:	00007797          	auipc	a5,0x7
   1b194:	c4078793          	addi	a5,a5,-960 # 21dd0 <zeroes.0+0x20>
   1b198:	0007bb83          	ld	s7,0(a5)
   1b19c:	0087b983          	ld	s3,8(a5)
   1b1a0:	000e8513          	mv	a0,t4
   1b1a4:	000b8613          	mv	a2,s7
   1b1a8:	00098693          	mv	a3,s3
   1b1ac:	00070593          	mv	a1,a4
   1b1b0:	09c13423          	sd	t3,136(sp)
   1b1b4:	09d13c23          	sd	t4,152(sp)
   1b1b8:	08e13823          	sd	a4,144(sp)
   1b1bc:	53d040ef          	jal	ra,1fef8 <__getf2>
   1b1c0:	08813e03          	ld	t3,136(sp)
   1b1c4:	08a04063          	bgtz	a0,1b244 <_svfprintf_r+0x22e8>
   1b1c8:	09813e83          	ld	t4,152(sp)
   1b1cc:	09013703          	ld	a4,144(sp)
   1b1d0:	000b8613          	mv	a2,s7
   1b1d4:	00098693          	mv	a3,s3
   1b1d8:	000e8513          	mv	a0,t4
   1b1dc:	00070593          	mv	a1,a4
   1b1e0:	449040ef          	jal	ra,1fe28 <__eqtf2>
   1b1e4:	08813e03          	ld	t3,136(sp)
   1b1e8:	00051863          	bnez	a0,1b1f8 <_svfprintf_r+0x229c>
   1b1ec:	08013783          	ld	a5,128(sp)
   1b1f0:	0017f793          	andi	a5,a5,1
   1b1f4:	04079863          	bnez	a5,1b244 <_svfprintf_r+0x22e8>
   1b1f8:	07813683          	ld	a3,120(sp)
   1b1fc:	03000713          	li	a4,48
   1b200:	0016879b          	addiw	a5,a3,1
   1b204:	00fa87b3          	add	a5,s5,a5
   1b208:	0006c863          	bltz	a3,1b218 <_svfprintf_r+0x22bc>
   1b20c:	001a8a93          	addi	s5,s5,1
   1b210:	feea8fa3          	sb	a4,-1(s5)
   1b214:	ff579ce3          	bne	a5,s5,1b20c <_svfprintf_r+0x22b0>
   1b218:	41aa87bb          	subw	a5,s5,s10
   1b21c:	02f13023          	sd	a5,32(sp)
   1b220:	a18fe06f          	j	19438 <_svfprintf_r+0x4dc>
   1b224:	00013423          	sd	zero,8(sp)
   1b228:	00078913          	mv	s2,a5
   1b22c:	fff00793          	li	a5,-1
   1b230:	03f79793          	slli	a5,a5,0x3f
   1b234:	00facab3          	xor	s5,s5,a5
   1b238:	02d00793          	li	a5,45
   1b23c:	06f13023          	sd	a5,96(sp)
   1b240:	db5ff06f          	j	1aff4 <_svfprintf_r+0x2098>
   1b244:	02013783          	ld	a5,32(sp)
   1b248:	0ef13423          	sd	a5,232(sp)
   1b24c:	01813783          	ld	a5,24(sp)
   1b250:	fffac703          	lbu	a4,-1(s5)
   1b254:	00f7c683          	lbu	a3,15(a5)
   1b258:	000a8793          	mv	a5,s5
   1b25c:	02e69063          	bne	a3,a4,1b27c <_svfprintf_r+0x2320>
   1b260:	03000613          	li	a2,48
   1b264:	fec78fa3          	sb	a2,-1(a5)
   1b268:	0e813783          	ld	a5,232(sp)
   1b26c:	fff78713          	addi	a4,a5,-1
   1b270:	0ee13423          	sd	a4,232(sp)
   1b274:	fff7c703          	lbu	a4,-1(a5)
   1b278:	fee686e3          	beq	a3,a4,1b264 <_svfprintf_r+0x2308>
   1b27c:	0017069b          	addiw	a3,a4,1
   1b280:	03900613          	li	a2,57
   1b284:	0ff6f693          	andi	a3,a3,255
   1b288:	00c70663          	beq	a4,a2,1b294 <_svfprintf_r+0x2338>
   1b28c:	fed78fa3          	sb	a3,-1(a5)
   1b290:	f89ff06f          	j	1b218 <_svfprintf_r+0x22bc>
   1b294:	01813703          	ld	a4,24(sp)
   1b298:	00a74683          	lbu	a3,10(a4)
   1b29c:	fed78fa3          	sb	a3,-1(a5)
   1b2a0:	f79ff06f          	j	1b218 <_svfprintf_r+0x22bc>
   1b2a4:	001e059b          	addiw	a1,t3,1
   1b2a8:	000c8513          	mv	a0,s9
   1b2ac:	01c13423          	sd	t3,8(sp)
   1b2b0:	96dfb0ef          	jal	ra,16c1c <_malloc_r>
   1b2b4:	00813e03          	ld	t3,8(sp)
   1b2b8:	00050d13          	mv	s10,a0
   1b2bc:	32050463          	beqz	a0,1b5e4 <_svfprintf_r+0x2688>
   1b2c0:	00a13423          	sd	a0,8(sp)
   1b2c4:	d11ff06f          	j	1afd4 <_svfprintf_r+0x2078>
   1b2c8:	03000793          	li	a5,48
   1b2cc:	0cf10823          	sb	a5,208(sp)
   1b2d0:	07800713          	li	a4,120
   1b2d4:	ce1ff06f          	j	1afb4 <_svfprintf_r+0x2058>
   1b2d8:	00090a93          	mv	s5,s2
   1b2dc:	fd0fe06f          	j	19aac <_svfprintf_r+0xb50>
   1b2e0:	001e099b          	addiw	s3,t3,1
   1b2e4:	00098713          	mv	a4,s3
   1b2e8:	0e810893          	addi	a7,sp,232
   1b2ec:	0dc10813          	addi	a6,sp,220
   1b2f0:	0d810793          	addi	a5,sp,216
   1b2f4:	00200693          	li	a3,2
   1b2f8:	000b8593          	mv	a1,s7
   1b2fc:	000a8613          	mv	a2,s5
   1b300:	000c8513          	mv	a0,s9
   1b304:	01c13c23          	sd	t3,24(sp)
   1b308:	a34fa0ef          	jal	ra,1553c <_ldtoa_r>
   1b30c:	00050d13          	mv	s10,a0
   1b310:	01813e03          	ld	t3,24(sp)
   1b314:	013d09b3          	add	s3,s10,s3
   1b318:	b25ff06f          	j	1ae3c <_svfprintf_r+0x1ee0>
   1b31c:	01cd09b3          	add	s3,s10,t3
   1b320:	b1dff06f          	j	1ae3c <_svfprintf_r+0x1ee0>
   1b324:	0017069b          	addiw	a3,a4,1
   1b328:	009787b3          	add	a5,a5,s1
   1b32c:	00007717          	auipc	a4,0x7
   1b330:	0f470713          	addi	a4,a4,244 # 22420 <zeroes.0>
   1b334:	00e33023          	sd	a4,0(t1)
   1b338:	00933423          	sd	s1,8(t1)
   1b33c:	0006871b          	sext.w	a4,a3
   1b340:	10d12423          	sw	a3,264(sp)
   1b344:	10f13823          	sd	a5,272(sp)
   1b348:	00700693          	li	a3,7
   1b34c:	01030313          	addi	t1,t1,16
   1b350:	d8e6d063          	bge	a3,a4,1a8d0 <_svfprintf_r+0x1974>
   1b354:	10010613          	addi	a2,sp,256
   1b358:	000c0593          	mv	a1,s8
   1b35c:	000c8513          	mv	a0,s9
   1b360:	459020ef          	jal	ra,1dfb8 <__ssprint_r>
   1b364:	00050463          	beqz	a0,1b36c <_svfprintf_r+0x2410>
   1b368:	ae5fe06f          	j	19e4c <_svfprintf_r+0xef0>
   1b36c:	11013783          	ld	a5,272(sp)
   1b370:	10812703          	lw	a4,264(sp)
   1b374:	18010313          	addi	t1,sp,384
   1b378:	d58ff06f          	j	1a8d0 <_svfprintf_r+0x1974>
   1b37c:	000e0463          	beqz	t3,1b384 <_svfprintf_r+0x2428>
   1b380:	818fe06f          	j	19398 <_svfprintf_r+0x43c>
   1b384:	00100e13          	li	t3,1
   1b388:	810fe06f          	j	19398 <_svfprintf_r+0x43c>
   1b38c:	00f72023          	sw	a5,0(a4)
   1b390:	00040d13          	mv	s10,s0
   1b394:	ecdfd06f          	j	19260 <_svfprintf_r+0x304>
   1b398:	fff00793          	li	a5,-1
   1b39c:	00f13023          	sd	a5,0(sp)
   1b3a0:	ee5fd06f          	j	19284 <_svfprintf_r+0x328>
   1b3a4:	07813a03          	ld	s4,120(sp)
   1b3a8:	08013e03          	ld	t3,128(sp)
   1b3ac:	03513023          	sd	s5,32(sp)
   1b3b0:	08813023          	sd	s0,128(sp)
   1b3b4:	000c0a93          	mv	s5,s8
   1b3b8:	00048e93          	mv	t4,s1
   1b3bc:	00090713          	mv	a4,s2
   1b3c0:	0a013d83          	ld	s11,160(sp)
   1b3c4:	09013403          	ld	s0,144(sp)
   1b3c8:	0a813c83          	ld	s9,168(sp)
   1b3cc:	0b013c03          	ld	s8,176(sp)
   1b3d0:	0b813d03          	ld	s10,184(sp)
   1b3d4:	08813483          	ld	s1,136(sp)
   1b3d8:	09813903          	ld	s2,152(sp)
   1b3dc:	07713c23          	sd	s7,120(sp)
   1b3e0:	db1ff06f          	j	1b190 <_svfprintf_r+0x2234>
   1b3e4:	03813783          	ld	a5,56(sp)
   1b3e8:	06600493          	li	s1,102
   1b3ec:	00e78bbb          	addw	s7,a5,a4
   1b3f0:	01cb8bbb          	addw	s7,s7,t3
   1b3f4:	b41ff06f          	j	1af34 <_svfprintf_r+0x1fd8>
   1b3f8:	0e210713          	addi	a4,sp,226
   1b3fc:	00069863          	bnez	a3,1b40c <_svfprintf_r+0x24b0>
   1b400:	03000793          	li	a5,48
   1b404:	0ef10123          	sb	a5,226(sp)
   1b408:	0e310713          	addi	a4,sp,227
   1b40c:	20010693          	addi	a3,sp,512
   1b410:	030a879b          	addiw	a5,s5,48
   1b414:	40d706b3          	sub	a3,a4,a3
   1b418:	00f70023          	sb	a5,0(a4)
   1b41c:	1216879b          	addiw	a5,a3,289
   1b420:	04f13823          	sd	a5,80(sp)
   1b424:	92cfe06f          	j	19550 <_svfprintf_r+0x5f4>
   1b428:	06700493          	li	s1,103
   1b42c:	05813603          	ld	a2,88(sp)
   1b430:	0ff00713          	li	a4,255
   1b434:	00064783          	lbu	a5,0(a2)
   1b438:	18e78a63          	beq	a5,a4,1b5cc <_svfprintf_r+0x2670>
   1b43c:	01813703          	ld	a4,24(sp)
   1b440:	00000813          	li	a6,0
   1b444:	00000513          	li	a0,0
   1b448:	0ff00693          	li	a3,255
   1b44c:	0007859b          	sext.w	a1,a5
   1b450:	00e7de63          	bge	a5,a4,1b46c <_svfprintf_r+0x2510>
   1b454:	00164783          	lbu	a5,1(a2)
   1b458:	40b7073b          	subw	a4,a4,a1
   1b45c:	04078863          	beqz	a5,1b4ac <_svfprintf_r+0x2550>
   1b460:	0015051b          	addiw	a0,a0,1
   1b464:	00160613          	addi	a2,a2,1
   1b468:	fed792e3          	bne	a5,a3,1b44c <_svfprintf_r+0x24f0>
   1b46c:	04c13c23          	sd	a2,88(sp)
   1b470:	00e13c23          	sd	a4,24(sp)
   1b474:	02a13423          	sd	a0,40(sp)
   1b478:	03013823          	sd	a6,48(sp)
   1b47c:	02813783          	ld	a5,40(sp)
   1b480:	03013703          	ld	a4,48(sp)
   1b484:	06813583          	ld	a1,104(sp)
   1b488:	00e7853b          	addw	a0,a5,a4
   1b48c:	5c0060ef          	jal	ra,21a4c <__muldi3>
   1b490:	017507bb          	addw	a5,a0,s7
   1b494:	00078b9b          	sext.w	s7,a5
   1b498:	fffbca93          	not	s5,s7
   1b49c:	43fada93          	srai	s5,s5,0x3f
   1b4a0:	0157f7b3          	and	a5,a5,s5
   1b4a4:	00078a9b          	sext.w	s5,a5
   1b4a8:	8f8fe06f          	j	195a0 <_svfprintf_r+0x644>
   1b4ac:	00064783          	lbu	a5,0(a2)
   1b4b0:	0018081b          	addiw	a6,a6,1
   1b4b4:	fb5ff06f          	j	1b468 <_svfprintf_r+0x250c>
   1b4b8:	000a8593          	mv	a1,s5
   1b4bc:	000b8513          	mv	a0,s7
   1b4c0:	01c13c23          	sd	t3,24(sp)
   1b4c4:	28c060ef          	jal	ra,21750 <__trunctfdf2>
   1b4c8:	0d810513          	addi	a0,sp,216
   1b4cc:	c34fd0ef          	jal	ra,18900 <frexp>
   1b4d0:	160060ef          	jal	ra,21630 <__extenddftf2>
   1b4d4:	00007797          	auipc	a5,0x7
   1b4d8:	90c78793          	addi	a5,a5,-1780 # 21de0 <zeroes.0+0x30>
   1b4dc:	0007b603          	ld	a2,0(a5)
   1b4e0:	0087b683          	ld	a3,8(a5)
   1b4e4:	3dd040ef          	jal	ra,200c0 <__multf3>
   1b4e8:	00000613          	li	a2,0
   1b4ec:	00000693          	li	a3,0
   1b4f0:	00050993          	mv	s3,a0
   1b4f4:	00058b93          	mv	s7,a1
   1b4f8:	131040ef          	jal	ra,1fe28 <__eqtf2>
   1b4fc:	01813e03          	ld	t3,24(sp)
   1b500:	00051663          	bnez	a0,1b50c <_svfprintf_r+0x25b0>
   1b504:	00100713          	li	a4,1
   1b508:	0ce12c23          	sw	a4,216(sp)
   1b50c:	00006797          	auipc	a5,0x6
   1b510:	6fc78793          	addi	a5,a5,1788 # 21c08 <__clzdi2+0x98>
   1b514:	00f13c23          	sd	a5,24(sp)
   1b518:	b51ff06f          	j	1b068 <_svfprintf_r+0x210c>
   1b51c:	40eb87bb          	subw	a5,s7,a4
   1b520:	0017879b          	addiw	a5,a5,1
   1b524:	00078b9b          	sext.w	s7,a5
   1b528:	fffbca93          	not	s5,s7
   1b52c:	43fada93          	srai	s5,s5,0x3f
   1b530:	0157f7b3          	and	a5,a5,s5
   1b534:	00078a9b          	sext.w	s5,a5
   1b538:	86dff06f          	j	1ada4 <_svfprintf_r+0x1e48>
   1b53c:	03013703          	ld	a4,48(sp)
   1b540:	00177713          	andi	a4,a4,1
   1b544:	00071463          	bnez	a4,1b54c <_svfprintf_r+0x25f0>
   1b548:	82cfe06f          	j	19574 <_svfprintf_r+0x618>
   1b54c:	820fe06f          	j	1956c <_svfprintf_r+0x610>
   1b550:	000d8713          	mv	a4,s11
   1b554:	dbcff06f          	j	1ab10 <_svfprintf_r+0x1bb4>
   1b558:	00079a63          	bnez	a5,1b56c <_svfprintf_r+0x2610>
   1b55c:	00100a93          	li	s5,1
   1b560:	06600493          	li	s1,102
   1b564:	00100b93          	li	s7,1
   1b568:	83dff06f          	j	1ada4 <_svfprintf_r+0x1e48>
   1b56c:	03813783          	ld	a5,56(sp)
   1b570:	06600493          	li	s1,102
   1b574:	0017869b          	addiw	a3,a5,1
   1b578:	01c686bb          	addw	a3,a3,t3
   1b57c:	00068b9b          	sext.w	s7,a3
   1b580:	fffbca93          	not	s5,s7
   1b584:	43fada93          	srai	s5,s5,0x3f
   1b588:	0156f6b3          	and	a3,a3,s5
   1b58c:	00068a9b          	sext.w	s5,a3
   1b590:	815ff06f          	j	1ada4 <_svfprintf_r+0x1e48>
   1b594:	01013683          	ld	a3,16(sp)
   1b598:	0006a703          	lw	a4,0(a3)
   1b59c:	00868693          	addi	a3,a3,8
   1b5a0:	00070e13          	mv	t3,a4
   1b5a4:	00075463          	bgez	a4,1b5ac <_svfprintf_r+0x2650>
   1b5a8:	fff00e13          	li	t3,-1
   1b5ac:	00144483          	lbu	s1,1(s0)
   1b5b0:	000e0b9b          	sext.w	s7,t3
   1b5b4:	00d13823          	sd	a3,16(sp)
   1b5b8:	00078413          	mv	s0,a5
   1b5bc:	ae9fd06f          	j	190a4 <_svfprintf_r+0x148>
   1b5c0:	000e0993          	mv	s3,t3
   1b5c4:	013d09b3          	add	s3,s10,s3
   1b5c8:	875ff06f          	j	1ae3c <_svfprintf_r+0x1ee0>
   1b5cc:	02013823          	sd	zero,48(sp)
   1b5d0:	02013423          	sd	zero,40(sp)
   1b5d4:	ea9ff06f          	j	1b47c <_svfprintf_r+0x2520>
   1b5d8:	00200793          	li	a5,2
   1b5dc:	04f13823          	sd	a5,80(sp)
   1b5e0:	f71fd06f          	j	19550 <_svfprintf_r+0x5f4>
   1b5e4:	010c5783          	lhu	a5,16(s8)
   1b5e8:	0407e713          	ori	a4,a5,64
   1b5ec:	00070793          	mv	a5,a4
   1b5f0:	00ec1823          	sh	a4,16(s8)
   1b5f4:	c85fd06f          	j	19278 <_svfprintf_r+0x31c>
   1b5f8:	00c00793          	li	a5,12
   1b5fc:	00fca023          	sw	a5,0(s9)
   1b600:	fff00793          	li	a5,-1
   1b604:	00f13023          	sd	a5,0(sp)
   1b608:	c7dfd06f          	j	19284 <_svfprintf_r+0x328>

000000000001b60c <__sprint_r.part.0>:
   1b60c:	0ac5a783          	lw	a5,172(a1)
   1b610:	fb010113          	addi	sp,sp,-80
   1b614:	00002737          	lui	a4,0x2
   1b618:	01513c23          	sd	s5,24(sp)
   1b61c:	04113423          	sd	ra,72(sp)
   1b620:	04813023          	sd	s0,64(sp)
   1b624:	02913c23          	sd	s1,56(sp)
   1b628:	03213823          	sd	s2,48(sp)
   1b62c:	03313423          	sd	s3,40(sp)
   1b630:	03413023          	sd	s4,32(sp)
   1b634:	01613823          	sd	s6,16(sp)
   1b638:	01713423          	sd	s7,8(sp)
   1b63c:	00e7f7b3          	and	a5,a5,a4
   1b640:	00060a93          	mv	s5,a2
   1b644:	0c078063          	beqz	a5,1b704 <__sprint_r.part.0+0xf8>
   1b648:	01063783          	ld	a5,16(a2)
   1b64c:	00063b03          	ld	s6,0(a2)
   1b650:	00058913          	mv	s2,a1
   1b654:	00050993          	mv	s3,a0
   1b658:	fff00a13          	li	s4,-1
   1b65c:	0a078063          	beqz	a5,1b6fc <__sprint_r.part.0+0xf0>
   1b660:	008b3483          	ld	s1,8(s6)
   1b664:	000b3403          	ld	s0,0(s6)
   1b668:	0024d493          	srli	s1,s1,0x2
   1b66c:	00048b9b          	sext.w	s7,s1
   1b670:	07705c63          	blez	s7,1b6e8 <__sprint_r.part.0+0xdc>
   1b674:	fff4849b          	addiw	s1,s1,-1
   1b678:	02049793          	slli	a5,s1,0x20
   1b67c:	01e7d493          	srli	s1,a5,0x1e
   1b680:	00440793          	addi	a5,s0,4
   1b684:	00f484b3          	add	s1,s1,a5
   1b688:	0080006f          	j	1b690 <__sprint_r.part.0+0x84>
   1b68c:	04848c63          	beq	s1,s0,1b6e4 <__sprint_r.part.0+0xd8>
   1b690:	00042583          	lw	a1,0(s0)
   1b694:	00090613          	mv	a2,s2
   1b698:	00098513          	mv	a0,s3
   1b69c:	0f1010ef          	jal	ra,1cf8c <_fputwc_r>
   1b6a0:	0005051b          	sext.w	a0,a0
   1b6a4:	00440413          	addi	s0,s0,4
   1b6a8:	ff4512e3          	bne	a0,s4,1b68c <__sprint_r.part.0+0x80>
   1b6ac:	fff00513          	li	a0,-1
   1b6b0:	04813083          	ld	ra,72(sp)
   1b6b4:	04013403          	ld	s0,64(sp)
   1b6b8:	000ab823          	sd	zero,16(s5)
   1b6bc:	000aa423          	sw	zero,8(s5)
   1b6c0:	03813483          	ld	s1,56(sp)
   1b6c4:	03013903          	ld	s2,48(sp)
   1b6c8:	02813983          	ld	s3,40(sp)
   1b6cc:	02013a03          	ld	s4,32(sp)
   1b6d0:	01813a83          	ld	s5,24(sp)
   1b6d4:	01013b03          	ld	s6,16(sp)
   1b6d8:	00813b83          	ld	s7,8(sp)
   1b6dc:	05010113          	addi	sp,sp,80
   1b6e0:	00008067          	ret
   1b6e4:	010ab783          	ld	a5,16(s5)
   1b6e8:	002b9b93          	slli	s7,s7,0x2
   1b6ec:	417787b3          	sub	a5,a5,s7
   1b6f0:	00fab823          	sd	a5,16(s5)
   1b6f4:	010b0b13          	addi	s6,s6,16
   1b6f8:	f60794e3          	bnez	a5,1b660 <__sprint_r.part.0+0x54>
   1b6fc:	00000513          	li	a0,0
   1b700:	fb1ff06f          	j	1b6b0 <__sprint_r.part.0+0xa4>
   1b704:	189010ef          	jal	ra,1d08c <__sfvwrite_r>
   1b708:	fa9ff06f          	j	1b6b0 <__sprint_r.part.0+0xa4>

000000000001b70c <__sprint_r>:
   1b70c:	01063703          	ld	a4,16(a2)
   1b710:	00070463          	beqz	a4,1b718 <__sprint_r+0xc>
   1b714:	ef9ff06f          	j	1b60c <__sprint_r.part.0>
   1b718:	00062423          	sw	zero,8(a2)
   1b71c:	00000513          	li	a0,0
   1b720:	00008067          	ret

000000000001b724 <_vfiprintf_r>:
   1b724:	e3010113          	addi	sp,sp,-464
   1b728:	1b213823          	sd	s2,432(sp)
   1b72c:	1b313423          	sd	s3,424(sp)
   1b730:	19713423          	sd	s7,392(sp)
   1b734:	1c113423          	sd	ra,456(sp)
   1b738:	1c813023          	sd	s0,448(sp)
   1b73c:	1a913c23          	sd	s1,440(sp)
   1b740:	1b413023          	sd	s4,416(sp)
   1b744:	19513c23          	sd	s5,408(sp)
   1b748:	19613823          	sd	s6,400(sp)
   1b74c:	19813023          	sd	s8,384(sp)
   1b750:	17913c23          	sd	s9,376(sp)
   1b754:	17a13823          	sd	s10,368(sp)
   1b758:	17b13423          	sd	s11,360(sp)
   1b75c:	00d13823          	sd	a3,16(sp)
   1b760:	00050993          	mv	s3,a0
   1b764:	00058913          	mv	s2,a1
   1b768:	00060b93          	mv	s7,a2
   1b76c:	00050663          	beqz	a0,1b778 <_vfiprintf_r+0x54>
   1b770:	05052783          	lw	a5,80(a0)
   1b774:	5a078a63          	beqz	a5,1bd28 <_vfiprintf_r+0x604>
   1b778:	01091703          	lh	a4,16(s2)
   1b77c:	000026b7          	lui	a3,0x2
   1b780:	03071793          	slli	a5,a4,0x30
   1b784:	0307d793          	srli	a5,a5,0x30
   1b788:	00d7f633          	and	a2,a5,a3
   1b78c:	02061863          	bnez	a2,1b7bc <_vfiprintf_r+0x98>
   1b790:	0ac92603          	lw	a2,172(s2)
   1b794:	00d767b3          	or	a5,a4,a3
   1b798:	0107979b          	slliw	a5,a5,0x10
   1b79c:	ffffe737          	lui	a4,0xffffe
   1b7a0:	4107d79b          	sraiw	a5,a5,0x10
   1b7a4:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd941f>
   1b7a8:	00e67733          	and	a4,a2,a4
   1b7ac:	00f91823          	sh	a5,16(s2)
   1b7b0:	03079793          	slli	a5,a5,0x30
   1b7b4:	0ae92623          	sw	a4,172(s2)
   1b7b8:	0307d793          	srli	a5,a5,0x30
   1b7bc:	0087f713          	andi	a4,a5,8
   1b7c0:	3a070a63          	beqz	a4,1bb74 <_vfiprintf_r+0x450>
   1b7c4:	01893703          	ld	a4,24(s2)
   1b7c8:	3a070663          	beqz	a4,1bb74 <_vfiprintf_r+0x450>
   1b7cc:	01a7f793          	andi	a5,a5,26
   1b7d0:	00a00713          	li	a4,10
   1b7d4:	3ce78063          	beq	a5,a4,1bb94 <_vfiprintf_r+0x470>
   1b7d8:	ffff87b7          	lui	a5,0xffff8
   1b7dc:	0e010493          	addi	s1,sp,224
   1b7e0:	8307c793          	xori	a5,a5,-2000
   1b7e4:	06913023          	sd	s1,96(sp)
   1b7e8:	06013823          	sd	zero,112(sp)
   1b7ec:	06012423          	sw	zero,104(sp)
   1b7f0:	00013c23          	sd	zero,24(sp)
   1b7f4:	02013423          	sd	zero,40(sp)
   1b7f8:	02013c23          	sd	zero,56(sp)
   1b7fc:	02013823          	sd	zero,48(sp)
   1b800:	00013423          	sd	zero,8(sp)
   1b804:	04f13023          	sd	a5,64(sp)
   1b808:	00048413          	mv	s0,s1
   1b80c:	000b8c13          	mv	s8,s7
   1b810:	000c4783          	lbu	a5,0(s8)
   1b814:	28078463          	beqz	a5,1ba9c <_vfiprintf_r+0x378>
   1b818:	000c0a13          	mv	s4,s8
   1b81c:	02500713          	li	a4,37
   1b820:	42e78a63          	beq	a5,a4,1bc54 <_vfiprintf_r+0x530>
   1b824:	001a4783          	lbu	a5,1(s4)
   1b828:	001a0a13          	addi	s4,s4,1
   1b82c:	fe079ae3          	bnez	a5,1b820 <_vfiprintf_r+0xfc>
   1b830:	418a0bbb          	subw	s7,s4,s8
   1b834:	260b8463          	beqz	s7,1ba9c <_vfiprintf_r+0x378>
   1b838:	06812783          	lw	a5,104(sp)
   1b83c:	07013703          	ld	a4,112(sp)
   1b840:	01843023          	sd	s8,0(s0)
   1b844:	0017869b          	addiw	a3,a5,1
   1b848:	00eb8733          	add	a4,s7,a4
   1b84c:	01743423          	sd	s7,8(s0)
   1b850:	06e13823          	sd	a4,112(sp)
   1b854:	06d12423          	sw	a3,104(sp)
   1b858:	00700793          	li	a5,7
   1b85c:	01040413          	addi	s0,s0,16
   1b860:	02d7d063          	bge	a5,a3,1b880 <_vfiprintf_r+0x15c>
   1b864:	44070ee3          	beqz	a4,1c4c0 <_vfiprintf_r+0xd9c>
   1b868:	06010613          	addi	a2,sp,96
   1b86c:	00090593          	mv	a1,s2
   1b870:	00098513          	mv	a0,s3
   1b874:	d99ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1b878:	22051663          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1b87c:	00048413          	mv	s0,s1
   1b880:	00813703          	ld	a4,8(sp)
   1b884:	000a4783          	lbu	a5,0(s4)
   1b888:	0177073b          	addw	a4,a4,s7
   1b88c:	00e13423          	sd	a4,8(sp)
   1b890:	20078663          	beqz	a5,1ba9c <_vfiprintf_r+0x378>
   1b894:	001a4783          	lbu	a5,1(s4)
   1b898:	001a0c13          	addi	s8,s4,1
   1b89c:	04010ba3          	sb	zero,87(sp)
   1b8a0:	fff00a93          	li	s5,-1
   1b8a4:	00000a13          	li	s4,0
   1b8a8:	00000b13          	li	s6,0
   1b8ac:	00900b93          	li	s7,9
   1b8b0:	02a00c93          	li	s9,42
   1b8b4:	001c0c13          	addi	s8,s8,1
   1b8b8:	0007879b          	sext.w	a5,a5
   1b8bc:	05a00613          	li	a2,90
   1b8c0:	fe07871b          	addiw	a4,a5,-32
   1b8c4:	0007069b          	sext.w	a3,a4
   1b8c8:	04d66e63          	bltu	a2,a3,1b924 <_vfiprintf_r+0x200>
   1b8cc:	02071693          	slli	a3,a4,0x20
   1b8d0:	01e6d713          	srli	a4,a3,0x1e
   1b8d4:	00007697          	auipc	a3,0x7
   1b8d8:	b5c68693          	addi	a3,a3,-1188 # 22430 <zeroes.0+0x10>
   1b8dc:	00d70733          	add	a4,a4,a3
   1b8e0:	00072703          	lw	a4,0(a4)
   1b8e4:	00d70733          	add	a4,a4,a3
   1b8e8:	00070067          	jr	a4
   1b8ec:	00000a13          	li	s4,0
   1b8f0:	000c4683          	lbu	a3,0(s8)
   1b8f4:	002a171b          	slliw	a4,s4,0x2
   1b8f8:	01470a3b          	addw	s4,a4,s4
   1b8fc:	fd07879b          	addiw	a5,a5,-48
   1b900:	001a1a1b          	slliw	s4,s4,0x1
   1b904:	fd06871b          	addiw	a4,a3,-48
   1b908:	01478a3b          	addw	s4,a5,s4
   1b90c:	001c0c13          	addi	s8,s8,1
   1b910:	0006879b          	sext.w	a5,a3
   1b914:	fcebfee3          	bgeu	s7,a4,1b8f0 <_vfiprintf_r+0x1cc>
   1b918:	fe07871b          	addiw	a4,a5,-32
   1b91c:	0007069b          	sext.w	a3,a4
   1b920:	fad676e3          	bgeu	a2,a3,1b8cc <_vfiprintf_r+0x1a8>
   1b924:	16078c63          	beqz	a5,1ba9c <_vfiprintf_r+0x378>
   1b928:	06f10c23          	sb	a5,120(sp)
   1b92c:	00100793          	li	a5,1
   1b930:	04010ba3          	sb	zero,87(sp)
   1b934:	00100d13          	li	s10,1
   1b938:	00f13023          	sd	a5,0(sp)
   1b93c:	07810c93          	addi	s9,sp,120
   1b940:	00000a93          	li	s5,0
   1b944:	002b7f13          	andi	t5,s6,2
   1b948:	000f0463          	beqz	t5,1b950 <_vfiprintf_r+0x22c>
   1b94c:	002d0d1b          	addiw	s10,s10,2
   1b950:	06812703          	lw	a4,104(sp)
   1b954:	084b7e93          	andi	t4,s6,132
   1b958:	07013783          	ld	a5,112(sp)
   1b95c:	0017051b          	addiw	a0,a4,1
   1b960:	00050613          	mv	a2,a0
   1b964:	000e9663          	bnez	t4,1b970 <_vfiprintf_r+0x24c>
   1b968:	41aa0dbb          	subw	s11,s4,s10
   1b96c:	11b048e3          	bgtz	s11,1c27c <_vfiprintf_r+0xb58>
   1b970:	05714603          	lbu	a2,87(sp)
   1b974:	01040e13          	addi	t3,s0,16
   1b978:	02060c63          	beqz	a2,1b9b0 <_vfiprintf_r+0x28c>
   1b97c:	05710713          	addi	a4,sp,87
   1b980:	00178793          	addi	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd3421>
   1b984:	00e43023          	sd	a4,0(s0)
   1b988:	00100713          	li	a4,1
   1b98c:	00e43423          	sd	a4,8(s0)
   1b990:	06f13823          	sd	a5,112(sp)
   1b994:	06a12423          	sw	a0,104(sp)
   1b998:	00700713          	li	a4,7
   1b99c:	02a74ae3          	blt	a4,a0,1c1d0 <_vfiprintf_r+0xaac>
   1b9a0:	00050713          	mv	a4,a0
   1b9a4:	000e0413          	mv	s0,t3
   1b9a8:	0015051b          	addiw	a0,a0,1
   1b9ac:	010e0e13          	addi	t3,t3,16
   1b9b0:	040f0e63          	beqz	t5,1ba0c <_vfiprintf_r+0x2e8>
   1b9b4:	05810713          	addi	a4,sp,88
   1b9b8:	00278793          	addi	a5,a5,2
   1b9bc:	00e43023          	sd	a4,0(s0)
   1b9c0:	00200713          	li	a4,2
   1b9c4:	00e43423          	sd	a4,8(s0)
   1b9c8:	06f13823          	sd	a5,112(sp)
   1b9cc:	06a12423          	sw	a0,104(sp)
   1b9d0:	00700713          	li	a4,7
   1b9d4:	06a752e3          	bge	a4,a0,1c238 <_vfiprintf_r+0xb14>
   1b9d8:	320780e3          	beqz	a5,1c4f8 <_vfiprintf_r+0xdd4>
   1b9dc:	06010613          	addi	a2,sp,96
   1b9e0:	00090593          	mv	a1,s2
   1b9e4:	00098513          	mv	a0,s3
   1b9e8:	03d13023          	sd	t4,32(sp)
   1b9ec:	c21ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1b9f0:	0a051a63          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1b9f4:	06812703          	lw	a4,104(sp)
   1b9f8:	07013783          	ld	a5,112(sp)
   1b9fc:	02013e83          	ld	t4,32(sp)
   1ba00:	0f010e13          	addi	t3,sp,240
   1ba04:	0017051b          	addiw	a0,a4,1
   1ba08:	00048413          	mv	s0,s1
   1ba0c:	08000613          	li	a2,128
   1ba10:	5cce8663          	beq	t4,a2,1bfdc <_vfiprintf_r+0x8b8>
   1ba14:	00013683          	ld	a3,0(sp)
   1ba18:	40da8abb          	subw	s5,s5,a3
   1ba1c:	6b504c63          	bgtz	s5,1c0d4 <_vfiprintf_r+0x9b0>
   1ba20:	00013703          	ld	a4,0(sp)
   1ba24:	01943023          	sd	s9,0(s0)
   1ba28:	06a12423          	sw	a0,104(sp)
   1ba2c:	00f707b3          	add	a5,a4,a5
   1ba30:	00e43423          	sd	a4,8(s0)
   1ba34:	06f13823          	sd	a5,112(sp)
   1ba38:	00700713          	li	a4,7
   1ba3c:	02a75263          	bge	a4,a0,1ba60 <_vfiprintf_r+0x33c>
   1ba40:	140784e3          	beqz	a5,1c388 <_vfiprintf_r+0xc64>
   1ba44:	06010613          	addi	a2,sp,96
   1ba48:	00090593          	mv	a1,s2
   1ba4c:	00098513          	mv	a0,s3
   1ba50:	bbdff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1ba54:	04051863          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1ba58:	07013783          	ld	a5,112(sp)
   1ba5c:	00048e13          	mv	t3,s1
   1ba60:	004b7313          	andi	t1,s6,4
   1ba64:	00030663          	beqz	t1,1ba70 <_vfiprintf_r+0x34c>
   1ba68:	41aa043b          	subw	s0,s4,s10
   1ba6c:	12804ae3          	bgtz	s0,1c3a0 <_vfiprintf_r+0xc7c>
   1ba70:	000a0713          	mv	a4,s4
   1ba74:	01aa5463          	bge	s4,s10,1ba7c <_vfiprintf_r+0x358>
   1ba78:	000d0713          	mv	a4,s10
   1ba7c:	00813683          	ld	a3,8(sp)
   1ba80:	00d7073b          	addw	a4,a4,a3
   1ba84:	00e13423          	sd	a4,8(sp)
   1ba88:	72079063          	bnez	a5,1c1a8 <_vfiprintf_r+0xa84>
   1ba8c:	000c4783          	lbu	a5,0(s8)
   1ba90:	06012423          	sw	zero,104(sp)
   1ba94:	00048413          	mv	s0,s1
   1ba98:	d80790e3          	bnez	a5,1b818 <_vfiprintf_r+0xf4>
   1ba9c:	07013783          	ld	a5,112(sp)
   1baa0:	600794e3          	bnez	a5,1c8a8 <_vfiprintf_r+0x1184>
   1baa4:	01095783          	lhu	a5,16(s2)
   1baa8:	0407f793          	andi	a5,a5,64
   1baac:	64079ce3          	bnez	a5,1c904 <_vfiprintf_r+0x11e0>
   1bab0:	1c813083          	ld	ra,456(sp)
   1bab4:	1c013403          	ld	s0,448(sp)
   1bab8:	00813503          	ld	a0,8(sp)
   1babc:	1b813483          	ld	s1,440(sp)
   1bac0:	1b013903          	ld	s2,432(sp)
   1bac4:	1a813983          	ld	s3,424(sp)
   1bac8:	1a013a03          	ld	s4,416(sp)
   1bacc:	19813a83          	ld	s5,408(sp)
   1bad0:	19013b03          	ld	s6,400(sp)
   1bad4:	18813b83          	ld	s7,392(sp)
   1bad8:	18013c03          	ld	s8,384(sp)
   1badc:	17813c83          	ld	s9,376(sp)
   1bae0:	17013d03          	ld	s10,368(sp)
   1bae4:	16813d83          	ld	s11,360(sp)
   1bae8:	1d010113          	addi	sp,sp,464
   1baec:	00008067          	ret
   1baf0:	010b6b13          	ori	s6,s6,16
   1baf4:	000c4783          	lbu	a5,0(s8)
   1baf8:	000b0b1b          	sext.w	s6,s6
   1bafc:	db9ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1bb00:	010b6313          	ori	t1,s6,16
   1bb04:	00030b1b          	sext.w	s6,t1
   1bb08:	01013703          	ld	a4,16(sp)
   1bb0c:	020b7793          	andi	a5,s6,32
   1bb10:	00870613          	addi	a2,a4,8
   1bb14:	14078863          	beqz	a5,1bc64 <_vfiprintf_r+0x540>
   1bb18:	00073783          	ld	a5,0(a4)
   1bb1c:	00078b93          	mv	s7,a5
   1bb20:	1607c263          	bltz	a5,1bc84 <_vfiprintf_r+0x560>
   1bb24:	fff00793          	li	a5,-1
   1bb28:	44fa82e3          	beq	s5,a5,1c76c <_vfiprintf_r+0x1048>
   1bb2c:	f7fb7713          	andi	a4,s6,-129
   1bb30:	00070d1b          	sext.w	s10,a4
   1bb34:	300b98e3          	bnez	s7,1c644 <_vfiprintf_r+0xf20>
   1bb38:	00c13823          	sd	a2,16(sp)
   1bb3c:	720a9263          	bnez	s5,1c260 <_vfiprintf_r+0xb3c>
   1bb40:	000d0b13          	mv	s6,s10
   1bb44:	00000a93          	li	s5,0
   1bb48:	00013023          	sd	zero,0(sp)
   1bb4c:	0dc10c93          	addi	s9,sp,220
   1bb50:	00013703          	ld	a4,0(sp)
   1bb54:	000a8793          	mv	a5,s5
   1bb58:	00ead463          	bge	s5,a4,1bb60 <_vfiprintf_r+0x43c>
   1bb5c:	00070793          	mv	a5,a4
   1bb60:	05714703          	lbu	a4,87(sp)
   1bb64:	00078d1b          	sext.w	s10,a5
   1bb68:	dc070ee3          	beqz	a4,1b944 <_vfiprintf_r+0x220>
   1bb6c:	00178d1b          	addiw	s10,a5,1
   1bb70:	dd5ff06f          	j	1b944 <_vfiprintf_r+0x220>
   1bb74:	00090593          	mv	a1,s2
   1bb78:	00098513          	mv	a0,s3
   1bb7c:	894f70ef          	jal	ra,12c10 <__swsetup_r>
   1bb80:	580512e3          	bnez	a0,1c904 <_vfiprintf_r+0x11e0>
   1bb84:	01095783          	lhu	a5,16(s2)
   1bb88:	00a00713          	li	a4,10
   1bb8c:	01a7f793          	andi	a5,a5,26
   1bb90:	c4e794e3          	bne	a5,a4,1b7d8 <_vfiprintf_r+0xb4>
   1bb94:	01291783          	lh	a5,18(s2)
   1bb98:	c407c0e3          	bltz	a5,1b7d8 <_vfiprintf_r+0xb4>
   1bb9c:	1c013403          	ld	s0,448(sp)
   1bba0:	01013683          	ld	a3,16(sp)
   1bba4:	1c813083          	ld	ra,456(sp)
   1bba8:	1b813483          	ld	s1,440(sp)
   1bbac:	1a013a03          	ld	s4,416(sp)
   1bbb0:	19813a83          	ld	s5,408(sp)
   1bbb4:	19013b03          	ld	s6,400(sp)
   1bbb8:	18013c03          	ld	s8,384(sp)
   1bbbc:	17813c83          	ld	s9,376(sp)
   1bbc0:	17013d03          	ld	s10,368(sp)
   1bbc4:	16813d83          	ld	s11,360(sp)
   1bbc8:	000b8613          	mv	a2,s7
   1bbcc:	00090593          	mv	a1,s2
   1bbd0:	18813b83          	ld	s7,392(sp)
   1bbd4:	1b013903          	ld	s2,432(sp)
   1bbd8:	00098513          	mv	a0,s3
   1bbdc:	1a813983          	ld	s3,424(sp)
   1bbe0:	1d010113          	addi	sp,sp,464
   1bbe4:	5710006f          	j	1c954 <__sbprintf>
   1bbe8:	010b6313          	ori	t1,s6,16
   1bbec:	00030b1b          	sext.w	s6,t1
   1bbf0:	01013703          	ld	a4,16(sp)
   1bbf4:	020b7793          	andi	a5,s6,32
   1bbf8:	00870613          	addi	a2,a4,8
   1bbfc:	10078463          	beqz	a5,1bd04 <_vfiprintf_r+0x5e0>
   1bc00:	00073b83          	ld	s7,0(a4)
   1bc04:	bffb7713          	andi	a4,s6,-1025
   1bc08:	00070d1b          	sext.w	s10,a4
   1bc0c:	00c13823          	sd	a2,16(sp)
   1bc10:	00000793          	li	a5,0
   1bc14:	04010ba3          	sb	zero,87(sp)
   1bc18:	fff00613          	li	a2,-1
   1bc1c:	08ca8463          	beq	s5,a2,1bca4 <_vfiprintf_r+0x580>
   1bc20:	f7fd7313          	andi	t1,s10,-129
   1bc24:	00030b1b          	sext.w	s6,t1
   1bc28:	620b9263          	bnez	s7,1c24c <_vfiprintf_r+0xb28>
   1bc2c:	360a9263          	bnez	s5,1bf90 <_vfiprintf_r+0x86c>
   1bc30:	f0079ae3          	bnez	a5,1bb44 <_vfiprintf_r+0x420>
   1bc34:	001d7793          	andi	a5,s10,1
   1bc38:	00f13023          	sd	a5,0(sp)
   1bc3c:	0dc10c93          	addi	s9,sp,220
   1bc40:	f00788e3          	beqz	a5,1bb50 <_vfiprintf_r+0x42c>
   1bc44:	03000793          	li	a5,48
   1bc48:	0cf10da3          	sb	a5,219(sp)
   1bc4c:	0db10c93          	addi	s9,sp,219
   1bc50:	f01ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1bc54:	418a0bbb          	subw	s7,s4,s8
   1bc58:	be0b90e3          	bnez	s7,1b838 <_vfiprintf_r+0x114>
   1bc5c:	000a4783          	lbu	a5,0(s4)
   1bc60:	c31ff06f          	j	1b890 <_vfiprintf_r+0x16c>
   1bc64:	010b7793          	andi	a5,s6,16
   1bc68:	1a0798e3          	bnez	a5,1c618 <_vfiprintf_r+0xef4>
   1bc6c:	040b7793          	andi	a5,s6,64
   1bc70:	36078ce3          	beqz	a5,1c7e8 <_vfiprintf_r+0x10c4>
   1bc74:	01013783          	ld	a5,16(sp)
   1bc78:	00079b83          	lh	s7,0(a5)
   1bc7c:	000b8793          	mv	a5,s7
   1bc80:	ea07d2e3          	bgez	a5,1bb24 <_vfiprintf_r+0x400>
   1bc84:	02d00793          	li	a5,45
   1bc88:	04f10ba3          	sb	a5,87(sp)
   1bc8c:	00c13823          	sd	a2,16(sp)
   1bc90:	fff00613          	li	a2,-1
   1bc94:	41700bb3          	neg	s7,s7
   1bc98:	000b0d13          	mv	s10,s6
   1bc9c:	00100793          	li	a5,1
   1bca0:	f8ca90e3          	bne	s5,a2,1bc20 <_vfiprintf_r+0x4fc>
   1bca4:	00100613          	li	a2,1
   1bca8:	5ac78863          	beq	a5,a2,1c258 <_vfiprintf_r+0xb34>
   1bcac:	00200613          	li	a2,2
   1bcb0:	2ec78a63          	beq	a5,a2,1bfa4 <_vfiprintf_r+0x880>
   1bcb4:	0dc10c93          	addi	s9,sp,220
   1bcb8:	007bf793          	andi	a5,s7,7
   1bcbc:	03078793          	addi	a5,a5,48
   1bcc0:	fefc8fa3          	sb	a5,-1(s9)
   1bcc4:	003bdb93          	srli	s7,s7,0x3
   1bcc8:	000c8613          	mv	a2,s9
   1bccc:	fffc8c93          	addi	s9,s9,-1
   1bcd0:	fe0b94e3          	bnez	s7,1bcb8 <_vfiprintf_r+0x594>
   1bcd4:	001d7593          	andi	a1,s10,1
   1bcd8:	2e058863          	beqz	a1,1bfc8 <_vfiprintf_r+0x8a4>
   1bcdc:	03000593          	li	a1,48
   1bce0:	2eb78463          	beq	a5,a1,1bfc8 <_vfiprintf_r+0x8a4>
   1bce4:	ffe60613          	addi	a2,a2,-2
   1bce8:	0dc10793          	addi	a5,sp,220
   1bcec:	40c787bb          	subw	a5,a5,a2
   1bcf0:	febc8fa3          	sb	a1,-1(s9)
   1bcf4:	00f13023          	sd	a5,0(sp)
   1bcf8:	000d0b13          	mv	s6,s10
   1bcfc:	00060c93          	mv	s9,a2
   1bd00:	e51ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1bd04:	010b7793          	andi	a5,s6,16
   1bd08:	100792e3          	bnez	a5,1c60c <_vfiprintf_r+0xee8>
   1bd0c:	01013703          	ld	a4,16(sp)
   1bd10:	040b7793          	andi	a5,s6,64
   1bd14:	00072b83          	lw	s7,0(a4)
   1bd18:	2c0780e3          	beqz	a5,1c7d8 <_vfiprintf_r+0x10b4>
   1bd1c:	030b9b93          	slli	s7,s7,0x30
   1bd20:	030bdb93          	srli	s7,s7,0x30
   1bd24:	ee1ff06f          	j	1bc04 <_vfiprintf_r+0x4e0>
   1bd28:	819f70ef          	jal	ra,13540 <__sinit>
   1bd2c:	a4dff06f          	j	1b778 <_vfiprintf_r+0x54>
   1bd30:	01013783          	ld	a5,16(sp)
   1bd34:	04010ba3          	sb	zero,87(sp)
   1bd38:	0007bc83          	ld	s9,0(a5)
   1bd3c:	00878b93          	addi	s7,a5,8
   1bd40:	260c80e3          	beqz	s9,1c7a0 <_vfiprintf_r+0x107c>
   1bd44:	fff00793          	li	a5,-1
   1bd48:	18fa88e3          	beq	s5,a5,1c6d8 <_vfiprintf_r+0xfb4>
   1bd4c:	000a8613          	mv	a2,s5
   1bd50:	00000593          	li	a1,0
   1bd54:	000c8513          	mv	a0,s9
   1bd58:	f48fb0ef          	jal	ra,174a0 <memchr>
   1bd5c:	360500e3          	beqz	a0,1c8bc <_vfiprintf_r+0x1198>
   1bd60:	419507bb          	subw	a5,a0,s9
   1bd64:	00f13023          	sd	a5,0(sp)
   1bd68:	01713823          	sd	s7,16(sp)
   1bd6c:	00000a93          	li	s5,0
   1bd70:	de1ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1bd74:	01013703          	ld	a4,16(sp)
   1bd78:	04010ba3          	sb	zero,87(sp)
   1bd7c:	00100d13          	li	s10,1
   1bd80:	00072783          	lw	a5,0(a4)
   1bd84:	00870713          	addi	a4,a4,8
   1bd88:	00e13823          	sd	a4,16(sp)
   1bd8c:	06f10c23          	sb	a5,120(sp)
   1bd90:	00100793          	li	a5,1
   1bd94:	00f13023          	sd	a5,0(sp)
   1bd98:	07810c93          	addi	s9,sp,120
   1bd9c:	ba5ff06f          	j	1b940 <_vfiprintf_r+0x21c>
   1bda0:	000c4783          	lbu	a5,0(s8)
   1bda4:	06c00713          	li	a4,108
   1bda8:	1ee782e3          	beq	a5,a4,1c78c <_vfiprintf_r+0x1068>
   1bdac:	010b6b13          	ori	s6,s6,16
   1bdb0:	000b0b1b          	sext.w	s6,s6
   1bdb4:	b01ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1bdb8:	000c4783          	lbu	a5,0(s8)
   1bdbc:	06800713          	li	a4,104
   1bdc0:	1ae78ce3          	beq	a5,a4,1c778 <_vfiprintf_r+0x1054>
   1bdc4:	040b6b13          	ori	s6,s6,64
   1bdc8:	000b0b1b          	sext.w	s6,s6
   1bdcc:	ae9ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1bdd0:	010b6713          	ori	a4,s6,16
   1bdd4:	00070d1b          	sext.w	s10,a4
   1bdd8:	01013703          	ld	a4,16(sp)
   1bddc:	020d7793          	andi	a5,s10,32
   1bde0:	00870613          	addi	a2,a4,8
   1bde4:	6e078463          	beqz	a5,1c4cc <_vfiprintf_r+0xda8>
   1bde8:	00073b83          	ld	s7,0(a4)
   1bdec:	00100793          	li	a5,1
   1bdf0:	00c13823          	sd	a2,16(sp)
   1bdf4:	e21ff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1bdf8:	080b6b13          	ori	s6,s6,128
   1bdfc:	000c4783          	lbu	a5,0(s8)
   1be00:	000b0b1b          	sext.w	s6,s6
   1be04:	ab1ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1be08:	01013703          	ld	a4,16(sp)
   1be0c:	000c4783          	lbu	a5,0(s8)
   1be10:	00072a03          	lw	s4,0(a4)
   1be14:	00870713          	addi	a4,a4,8
   1be18:	00e13823          	sd	a4,16(sp)
   1be1c:	a80a5ce3          	bgez	s4,1b8b4 <_vfiprintf_r+0x190>
   1be20:	41400a3b          	negw	s4,s4
   1be24:	0840006f          	j	1bea8 <_vfiprintf_r+0x784>
   1be28:	00098513          	mv	a0,s3
   1be2c:	a81fa0ef          	jal	ra,168ac <_localeconv_r>
   1be30:	00853783          	ld	a5,8(a0)
   1be34:	00078513          	mv	a0,a5
   1be38:	02f13823          	sd	a5,48(sp)
   1be3c:	fadfc0ef          	jal	ra,18de8 <strlen>
   1be40:	00050793          	mv	a5,a0
   1be44:	00098513          	mv	a0,s3
   1be48:	00078d13          	mv	s10,a5
   1be4c:	02f13c23          	sd	a5,56(sp)
   1be50:	a5dfa0ef          	jal	ra,168ac <_localeconv_r>
   1be54:	01053703          	ld	a4,16(a0)
   1be58:	000c4783          	lbu	a5,0(s8)
   1be5c:	02e13423          	sd	a4,40(sp)
   1be60:	a40d0ae3          	beqz	s10,1b8b4 <_vfiprintf_r+0x190>
   1be64:	a40708e3          	beqz	a4,1b8b4 <_vfiprintf_r+0x190>
   1be68:	00074703          	lbu	a4,0(a4)
   1be6c:	a40704e3          	beqz	a4,1b8b4 <_vfiprintf_r+0x190>
   1be70:	400b6b13          	ori	s6,s6,1024
   1be74:	000b0b1b          	sext.w	s6,s6
   1be78:	a3dff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1be7c:	001b6b13          	ori	s6,s6,1
   1be80:	000c4783          	lbu	a5,0(s8)
   1be84:	000b0b1b          	sext.w	s6,s6
   1be88:	a2dff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1be8c:	05714703          	lbu	a4,87(sp)
   1be90:	000c4783          	lbu	a5,0(s8)
   1be94:	a20710e3          	bnez	a4,1b8b4 <_vfiprintf_r+0x190>
   1be98:	02000713          	li	a4,32
   1be9c:	04e10ba3          	sb	a4,87(sp)
   1bea0:	a15ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1bea4:	000c4783          	lbu	a5,0(s8)
   1bea8:	004b6b13          	ori	s6,s6,4
   1beac:	000b0b1b          	sext.w	s6,s6
   1beb0:	a05ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1beb4:	02b00713          	li	a4,43
   1beb8:	000c4783          	lbu	a5,0(s8)
   1bebc:	04e10ba3          	sb	a4,87(sp)
   1bec0:	9f5ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1bec4:	000c4783          	lbu	a5,0(s8)
   1bec8:	001c0713          	addi	a4,s8,1
   1becc:	259786e3          	beq	a5,s9,1c918 <_vfiprintf_r+0x11f4>
   1bed0:	fd07869b          	addiw	a3,a5,-48
   1bed4:	00070c13          	mv	s8,a4
   1bed8:	00000a93          	li	s5,0
   1bedc:	9edbe2e3          	bltu	s7,a3,1b8c0 <_vfiprintf_r+0x19c>
   1bee0:	000c4783          	lbu	a5,0(s8)
   1bee4:	002a971b          	slliw	a4,s5,0x2
   1bee8:	01570abb          	addw	s5,a4,s5
   1beec:	001a9a9b          	slliw	s5,s5,0x1
   1bef0:	00da8abb          	addw	s5,s5,a3
   1bef4:	fd07869b          	addiw	a3,a5,-48
   1bef8:	001c0c13          	addi	s8,s8,1
   1befc:	fedbf2e3          	bgeu	s7,a3,1bee0 <_vfiprintf_r+0x7bc>
   1bf00:	9c1ff06f          	j	1b8c0 <_vfiprintf_r+0x19c>
   1bf04:	020b6b13          	ori	s6,s6,32
   1bf08:	000c4783          	lbu	a5,0(s8)
   1bf0c:	000b0b1b          	sext.w	s6,s6
   1bf10:	9a5ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1bf14:	01013783          	ld	a5,16(sp)
   1bf18:	002b6713          	ori	a4,s6,2
   1bf1c:	00070d1b          	sext.w	s10,a4
   1bf20:	04013703          	ld	a4,64(sp)
   1bf24:	0007bb83          	ld	s7,0(a5)
   1bf28:	00878793          	addi	a5,a5,8
   1bf2c:	00f13823          	sd	a5,16(sp)
   1bf30:	00006797          	auipc	a5,0x6
   1bf34:	cd878793          	addi	a5,a5,-808 # 21c08 <__clzdi2+0x98>
   1bf38:	00f13c23          	sd	a5,24(sp)
   1bf3c:	04e11c23          	sh	a4,88(sp)
   1bf40:	00200793          	li	a5,2
   1bf44:	cd1ff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1bf48:	01013683          	ld	a3,16(sp)
   1bf4c:	020b7793          	andi	a5,s6,32
   1bf50:	0006b703          	ld	a4,0(a3)
   1bf54:	00868693          	addi	a3,a3,8
   1bf58:	00d13823          	sd	a3,16(sp)
   1bf5c:	02079463          	bnez	a5,1bf84 <_vfiprintf_r+0x860>
   1bf60:	010b7793          	andi	a5,s6,16
   1bf64:	02079063          	bnez	a5,1bf84 <_vfiprintf_r+0x860>
   1bf68:	040b7793          	andi	a5,s6,64
   1bf6c:	0e079ae3          	bnez	a5,1c860 <_vfiprintf_r+0x113c>
   1bf70:	200b7313          	andi	t1,s6,512
   1bf74:	00813783          	ld	a5,8(sp)
   1bf78:	18030ce3          	beqz	t1,1c910 <_vfiprintf_r+0x11ec>
   1bf7c:	00f70023          	sb	a5,0(a4)
   1bf80:	891ff06f          	j	1b810 <_vfiprintf_r+0xec>
   1bf84:	00813783          	ld	a5,8(sp)
   1bf88:	00f73023          	sd	a5,0(a4)
   1bf8c:	885ff06f          	j	1b810 <_vfiprintf_r+0xec>
   1bf90:	00100713          	li	a4,1
   1bf94:	14e78ae3          	beq	a5,a4,1c8e8 <_vfiprintf_r+0x11c4>
   1bf98:	00200713          	li	a4,2
   1bf9c:	000b0d13          	mv	s10,s6
   1bfa0:	d0e79ae3          	bne	a5,a4,1bcb4 <_vfiprintf_r+0x590>
   1bfa4:	01813703          	ld	a4,24(sp)
   1bfa8:	0dc10c93          	addi	s9,sp,220
   1bfac:	00fbf793          	andi	a5,s7,15
   1bfb0:	00f707b3          	add	a5,a4,a5
   1bfb4:	0007c783          	lbu	a5,0(a5)
   1bfb8:	004bdb93          	srli	s7,s7,0x4
   1bfbc:	fffc8c93          	addi	s9,s9,-1
   1bfc0:	00fc8023          	sb	a5,0(s9)
   1bfc4:	fe0b94e3          	bnez	s7,1bfac <_vfiprintf_r+0x888>
   1bfc8:	0dc10793          	addi	a5,sp,220
   1bfcc:	419787bb          	subw	a5,a5,s9
   1bfd0:	00f13023          	sd	a5,0(sp)
   1bfd4:	000d0b13          	mv	s6,s10
   1bfd8:	b79ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1bfdc:	41aa0dbb          	subw	s11,s4,s10
   1bfe0:	a3b05ae3          	blez	s11,1ba14 <_vfiprintf_r+0x2f0>
   1bfe4:	01000613          	li	a2,16
   1bfe8:	11b654e3          	bge	a2,s11,1c8f0 <_vfiprintf_r+0x11cc>
   1bfec:	00006e17          	auipc	t3,0x6
   1bff0:	5c4e0e13          	addi	t3,t3,1476 # 225b0 <zeroes.0>
   1bff4:	03413023          	sd	s4,32(sp)
   1bff8:	01000b93          	li	s7,16
   1bffc:	00090a13          	mv	s4,s2
   1c000:	00700e93          	li	t4,7
   1c004:	000e0913          	mv	s2,t3
   1c008:	0180006f          	j	1c020 <_vfiprintf_r+0x8fc>
   1c00c:	0027061b          	addiw	a2,a4,2
   1c010:	01040413          	addi	s0,s0,16
   1c014:	00050713          	mv	a4,a0
   1c018:	ff0d8d9b          	addiw	s11,s11,-16
   1c01c:	05bbda63          	bge	s7,s11,1c070 <_vfiprintf_r+0x94c>
   1c020:	0017051b          	addiw	a0,a4,1
   1c024:	01078793          	addi	a5,a5,16
   1c028:	01243023          	sd	s2,0(s0)
   1c02c:	01743423          	sd	s7,8(s0)
   1c030:	06f13823          	sd	a5,112(sp)
   1c034:	06a12423          	sw	a0,104(sp)
   1c038:	fcaedae3          	bge	t4,a0,1c00c <_vfiprintf_r+0x8e8>
   1c03c:	18078263          	beqz	a5,1c1c0 <_vfiprintf_r+0xa9c>
   1c040:	06010613          	addi	a2,sp,96
   1c044:	000a0593          	mv	a1,s4
   1c048:	00098513          	mv	a0,s3
   1c04c:	dc0ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c050:	40051e63          	bnez	a0,1c46c <_vfiprintf_r+0xd48>
   1c054:	06812703          	lw	a4,104(sp)
   1c058:	ff0d8d9b          	addiw	s11,s11,-16
   1c05c:	07013783          	ld	a5,112(sp)
   1c060:	00048413          	mv	s0,s1
   1c064:	0017061b          	addiw	a2,a4,1
   1c068:	00700e93          	li	t4,7
   1c06c:	fbbbcae3          	blt	s7,s11,1c020 <_vfiprintf_r+0x8fc>
   1c070:	00090e13          	mv	t3,s2
   1c074:	000a0913          	mv	s2,s4
   1c078:	02013a03          	ld	s4,32(sp)
   1c07c:	01040593          	addi	a1,s0,16
   1c080:	01b787b3          	add	a5,a5,s11
   1c084:	01c43023          	sd	t3,0(s0)
   1c088:	01b43423          	sd	s11,8(s0)
   1c08c:	06f13823          	sd	a5,112(sp)
   1c090:	06c12423          	sw	a2,104(sp)
   1c094:	00700713          	li	a4,7
   1c098:	54c75663          	bge	a4,a2,1c5e4 <_vfiprintf_r+0xec0>
   1c09c:	78078663          	beqz	a5,1c828 <_vfiprintf_r+0x1104>
   1c0a0:	06010613          	addi	a2,sp,96
   1c0a4:	00090593          	mv	a1,s2
   1c0a8:	00098513          	mv	a0,s3
   1c0ac:	d60ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c0b0:	9e051ae3          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1c0b4:	00013683          	ld	a3,0(sp)
   1c0b8:	06812703          	lw	a4,104(sp)
   1c0bc:	07013783          	ld	a5,112(sp)
   1c0c0:	40da8abb          	subw	s5,s5,a3
   1c0c4:	0f010e13          	addi	t3,sp,240
   1c0c8:	0017051b          	addiw	a0,a4,1
   1c0cc:	00048413          	mv	s0,s1
   1c0d0:	955058e3          	blez	s5,1ba20 <_vfiprintf_r+0x2fc>
   1c0d4:	01000613          	li	a2,16
   1c0d8:	75565063          	bge	a2,s5,1c818 <_vfiprintf_r+0x10f4>
   1c0dc:	00006e17          	auipc	t3,0x6
   1c0e0:	4d4e0e13          	addi	t3,t3,1236 # 225b0 <zeroes.0>
   1c0e4:	03413023          	sd	s4,32(sp)
   1c0e8:	01000b93          	li	s7,16
   1c0ec:	00090a13          	mv	s4,s2
   1c0f0:	00700d93          	li	s11,7
   1c0f4:	000e0913          	mv	s2,t3
   1c0f8:	0180006f          	j	1c110 <_vfiprintf_r+0x9ec>
   1c0fc:	0027051b          	addiw	a0,a4,2
   1c100:	01040413          	addi	s0,s0,16
   1c104:	00060713          	mv	a4,a2
   1c108:	ff0a8a9b          	addiw	s5,s5,-16
   1c10c:	055bd863          	bge	s7,s5,1c15c <_vfiprintf_r+0xa38>
   1c110:	0017061b          	addiw	a2,a4,1
   1c114:	01078793          	addi	a5,a5,16
   1c118:	01243023          	sd	s2,0(s0)
   1c11c:	01743423          	sd	s7,8(s0)
   1c120:	06f13823          	sd	a5,112(sp)
   1c124:	06c12423          	sw	a2,104(sp)
   1c128:	fccddae3          	bge	s11,a2,1c0fc <_vfiprintf_r+0x9d8>
   1c12c:	06078663          	beqz	a5,1c198 <_vfiprintf_r+0xa74>
   1c130:	06010613          	addi	a2,sp,96
   1c134:	000a0593          	mv	a1,s4
   1c138:	00098513          	mv	a0,s3
   1c13c:	cd0ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c140:	32051663          	bnez	a0,1c46c <_vfiprintf_r+0xd48>
   1c144:	06812703          	lw	a4,104(sp)
   1c148:	ff0a8a9b          	addiw	s5,s5,-16
   1c14c:	07013783          	ld	a5,112(sp)
   1c150:	00048413          	mv	s0,s1
   1c154:	0017051b          	addiw	a0,a4,1
   1c158:	fb5bcce3          	blt	s7,s5,1c110 <_vfiprintf_r+0x9ec>
   1c15c:	00090e13          	mv	t3,s2
   1c160:	000a0913          	mv	s2,s4
   1c164:	02013a03          	ld	s4,32(sp)
   1c168:	01040613          	addi	a2,s0,16
   1c16c:	015787b3          	add	a5,a5,s5
   1c170:	01c43023          	sd	t3,0(s0)
   1c174:	01543423          	sd	s5,8(s0)
   1c178:	06f13823          	sd	a5,112(sp)
   1c17c:	06a12423          	sw	a0,104(sp)
   1c180:	00700713          	li	a4,7
   1c184:	30a74663          	blt	a4,a0,1c490 <_vfiprintf_r+0xd6c>
   1c188:	0015051b          	addiw	a0,a0,1
   1c18c:	01060e13          	addi	t3,a2,16
   1c190:	00060413          	mv	s0,a2
   1c194:	88dff06f          	j	1ba20 <_vfiprintf_r+0x2fc>
   1c198:	00100513          	li	a0,1
   1c19c:	00000713          	li	a4,0
   1c1a0:	00048413          	mv	s0,s1
   1c1a4:	f65ff06f          	j	1c108 <_vfiprintf_r+0x9e4>
   1c1a8:	06010613          	addi	a2,sp,96
   1c1ac:	00090593          	mv	a1,s2
   1c1b0:	00098513          	mv	a0,s3
   1c1b4:	c58ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c1b8:	8c050ae3          	beqz	a0,1ba8c <_vfiprintf_r+0x368>
   1c1bc:	8e9ff06f          	j	1baa4 <_vfiprintf_r+0x380>
   1c1c0:	00100613          	li	a2,1
   1c1c4:	00000713          	li	a4,0
   1c1c8:	00048413          	mv	s0,s1
   1c1cc:	e4dff06f          	j	1c018 <_vfiprintf_r+0x8f4>
   1c1d0:	32078e63          	beqz	a5,1c50c <_vfiprintf_r+0xde8>
   1c1d4:	06010613          	addi	a2,sp,96
   1c1d8:	00090593          	mv	a1,s2
   1c1dc:	00098513          	mv	a0,s3
   1c1e0:	05d13423          	sd	t4,72(sp)
   1c1e4:	03e13023          	sd	t5,32(sp)
   1c1e8:	c24ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c1ec:	8a051ce3          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1c1f0:	06812703          	lw	a4,104(sp)
   1c1f4:	07013783          	ld	a5,112(sp)
   1c1f8:	04813e83          	ld	t4,72(sp)
   1c1fc:	02013f03          	ld	t5,32(sp)
   1c200:	0f010e13          	addi	t3,sp,240
   1c204:	0017051b          	addiw	a0,a4,1
   1c208:	00048413          	mv	s0,s1
   1c20c:	fa4ff06f          	j	1b9b0 <_vfiprintf_r+0x28c>
   1c210:	38079e63          	bnez	a5,1c5ac <_vfiprintf_r+0xe88>
   1c214:	05714703          	lbu	a4,87(sp)
   1c218:	62071663          	bnez	a4,1c844 <_vfiprintf_r+0x1120>
   1c21c:	2e0f0a63          	beqz	t5,1c510 <_vfiprintf_r+0xdec>
   1c220:	05810793          	addi	a5,sp,88
   1c224:	0ef13023          	sd	a5,224(sp)
   1c228:	00200793          	li	a5,2
   1c22c:	0ef13423          	sd	a5,232(sp)
   1c230:	0f010e13          	addi	t3,sp,240
   1c234:	00100513          	li	a0,1
   1c238:	000e0413          	mv	s0,t3
   1c23c:	00050713          	mv	a4,a0
   1c240:	0017051b          	addiw	a0,a4,1
   1c244:	01040e13          	addi	t3,s0,16
   1c248:	fc4ff06f          	j	1ba0c <_vfiprintf_r+0x2e8>
   1c24c:	00100613          	li	a2,1
   1c250:	000b0d13          	mv	s10,s6
   1c254:	a4c79ce3          	bne	a5,a2,1bcac <_vfiprintf_r+0x588>
   1c258:	00900793          	li	a5,9
   1c25c:	2d77e463          	bltu	a5,s7,1c524 <_vfiprintf_r+0xe00>
   1c260:	030b8b9b          	addiw	s7,s7,48
   1c264:	00100793          	li	a5,1
   1c268:	0d710da3          	sb	s7,219(sp)
   1c26c:	000d0b13          	mv	s6,s10
   1c270:	00f13023          	sd	a5,0(sp)
   1c274:	0db10c93          	addi	s9,sp,219
   1c278:	8d9ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1c27c:	01000593          	li	a1,16
   1c280:	65b5d663          	bge	a1,s11,1c8cc <_vfiprintf_r+0x11a8>
   1c284:	00006b97          	auipc	s7,0x6
   1c288:	31cb8b93          	addi	s7,s7,796 # 225a0 <blanks.1>
   1c28c:	000b8693          	mv	a3,s7
   1c290:	01000e13          	li	t3,16
   1c294:	000a0b93          	mv	s7,s4
   1c298:	00700f93          	li	t6,7
   1c29c:	00090a13          	mv	s4,s2
   1c2a0:	03e13023          	sd	t5,32(sp)
   1c2a4:	000d8913          	mv	s2,s11
   1c2a8:	05d13423          	sd	t4,72(sp)
   1c2ac:	000c0d93          	mv	s11,s8
   1c2b0:	000a8c13          	mv	s8,s5
   1c2b4:	00068a93          	mv	s5,a3
   1c2b8:	01c0006f          	j	1c2d4 <_vfiprintf_r+0xbb0>
   1c2bc:	0027061b          	addiw	a2,a4,2
   1c2c0:	01040413          	addi	s0,s0,16
   1c2c4:	00068713          	mv	a4,a3
   1c2c8:	ff09091b          	addiw	s2,s2,-16
   1c2cc:	052e5e63          	bge	t3,s2,1c328 <_vfiprintf_r+0xc04>
   1c2d0:	0017061b          	addiw	a2,a4,1
   1c2d4:	01078793          	addi	a5,a5,16
   1c2d8:	01543023          	sd	s5,0(s0)
   1c2dc:	01c43423          	sd	t3,8(s0)
   1c2e0:	06f13823          	sd	a5,112(sp)
   1c2e4:	0006069b          	sext.w	a3,a2
   1c2e8:	06c12423          	sw	a2,104(sp)
   1c2ec:	fcdfd8e3          	bge	t6,a3,1c2bc <_vfiprintf_r+0xb98>
   1c2f0:	08078463          	beqz	a5,1c378 <_vfiprintf_r+0xc54>
   1c2f4:	06010613          	addi	a2,sp,96
   1c2f8:	000a0593          	mv	a1,s4
   1c2fc:	00098513          	mv	a0,s3
   1c300:	b0cff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c304:	16051463          	bnez	a0,1c46c <_vfiprintf_r+0xd48>
   1c308:	06812703          	lw	a4,104(sp)
   1c30c:	01000e13          	li	t3,16
   1c310:	ff09091b          	addiw	s2,s2,-16
   1c314:	07013783          	ld	a5,112(sp)
   1c318:	00048413          	mv	s0,s1
   1c31c:	0017061b          	addiw	a2,a4,1
   1c320:	00700f93          	li	t6,7
   1c324:	fb2e46e3          	blt	t3,s2,1c2d0 <_vfiprintf_r+0xbac>
   1c328:	02013f03          	ld	t5,32(sp)
   1c32c:	04813e83          	ld	t4,72(sp)
   1c330:	000a8713          	mv	a4,s5
   1c334:	000c0a93          	mv	s5,s8
   1c338:	000d8c13          	mv	s8,s11
   1c33c:	00090d93          	mv	s11,s2
   1c340:	000a0913          	mv	s2,s4
   1c344:	000b8a13          	mv	s4,s7
   1c348:	00070b93          	mv	s7,a4
   1c34c:	01b787b3          	add	a5,a5,s11
   1c350:	01743023          	sd	s7,0(s0)
   1c354:	01b43423          	sd	s11,8(s0)
   1c358:	06f13823          	sd	a5,112(sp)
   1c35c:	06c12423          	sw	a2,104(sp)
   1c360:	00700713          	li	a4,7
   1c364:	eac746e3          	blt	a4,a2,1c210 <_vfiprintf_r+0xaec>
   1c368:	01040413          	addi	s0,s0,16
   1c36c:	0016051b          	addiw	a0,a2,1
   1c370:	00060713          	mv	a4,a2
   1c374:	dfcff06f          	j	1b970 <_vfiprintf_r+0x24c>
   1c378:	00000713          	li	a4,0
   1c37c:	00100613          	li	a2,1
   1c380:	00048413          	mv	s0,s1
   1c384:	f45ff06f          	j	1c2c8 <_vfiprintf_r+0xba4>
   1c388:	06012423          	sw	zero,104(sp)
   1c38c:	004b7313          	andi	t1,s6,4
   1c390:	0e030263          	beqz	t1,1c474 <_vfiprintf_r+0xd50>
   1c394:	41aa043b          	subw	s0,s4,s10
   1c398:	0c805e63          	blez	s0,1c474 <_vfiprintf_r+0xd50>
   1c39c:	00048e13          	mv	t3,s1
   1c3a0:	01000713          	li	a4,16
   1c3a4:	06812603          	lw	a2,104(sp)
   1c3a8:	52875863          	bge	a4,s0,1c8d8 <_vfiprintf_r+0x11b4>
   1c3ac:	00006b97          	auipc	s7,0x6
   1c3b0:	1f4b8b93          	addi	s7,s7,500 # 225a0 <blanks.1>
   1c3b4:	01000c93          	li	s9,16
   1c3b8:	00700d93          	li	s11,7
   1c3bc:	0180006f          	j	1c3d4 <_vfiprintf_r+0xcb0>
   1c3c0:	0026071b          	addiw	a4,a2,2
   1c3c4:	010e0e13          	addi	t3,t3,16
   1c3c8:	00068613          	mv	a2,a3
   1c3cc:	ff04041b          	addiw	s0,s0,-16
   1c3d0:	048cd863          	bge	s9,s0,1c420 <_vfiprintf_r+0xcfc>
   1c3d4:	0016069b          	addiw	a3,a2,1
   1c3d8:	01078793          	addi	a5,a5,16
   1c3dc:	017e3023          	sd	s7,0(t3)
   1c3e0:	019e3423          	sd	s9,8(t3)
   1c3e4:	06f13823          	sd	a5,112(sp)
   1c3e8:	06d12423          	sw	a3,104(sp)
   1c3ec:	fcdddae3          	bge	s11,a3,1c3c0 <_vfiprintf_r+0xc9c>
   1c3f0:	06078663          	beqz	a5,1c45c <_vfiprintf_r+0xd38>
   1c3f4:	06010613          	addi	a2,sp,96
   1c3f8:	00090593          	mv	a1,s2
   1c3fc:	00098513          	mv	a0,s3
   1c400:	a0cff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c404:	ea051063          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1c408:	06812603          	lw	a2,104(sp)
   1c40c:	ff04041b          	addiw	s0,s0,-16
   1c410:	07013783          	ld	a5,112(sp)
   1c414:	00048e13          	mv	t3,s1
   1c418:	0016071b          	addiw	a4,a2,1
   1c41c:	fa8ccce3          	blt	s9,s0,1c3d4 <_vfiprintf_r+0xcb0>
   1c420:	008787b3          	add	a5,a5,s0
   1c424:	017e3023          	sd	s7,0(t3)
   1c428:	008e3423          	sd	s0,8(t3)
   1c42c:	06f13823          	sd	a5,112(sp)
   1c430:	06e12423          	sw	a4,104(sp)
   1c434:	00700613          	li	a2,7
   1c438:	e2e65c63          	bge	a2,a4,1ba70 <_vfiprintf_r+0x34c>
   1c43c:	02078c63          	beqz	a5,1c474 <_vfiprintf_r+0xd50>
   1c440:	06010613          	addi	a2,sp,96
   1c444:	00090593          	mv	a1,s2
   1c448:	00098513          	mv	a0,s3
   1c44c:	9c0ff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c450:	e4051a63          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1c454:	07013783          	ld	a5,112(sp)
   1c458:	e18ff06f          	j	1ba70 <_vfiprintf_r+0x34c>
   1c45c:	00100713          	li	a4,1
   1c460:	00000613          	li	a2,0
   1c464:	00048e13          	mv	t3,s1
   1c468:	f65ff06f          	j	1c3cc <_vfiprintf_r+0xca8>
   1c46c:	000a0913          	mv	s2,s4
   1c470:	e34ff06f          	j	1baa4 <_vfiprintf_r+0x380>
   1c474:	000a0793          	mv	a5,s4
   1c478:	01aa5463          	bge	s4,s10,1c480 <_vfiprintf_r+0xd5c>
   1c47c:	000d0793          	mv	a5,s10
   1c480:	00813703          	ld	a4,8(sp)
   1c484:	00e787bb          	addw	a5,a5,a4
   1c488:	00f13423          	sd	a5,8(sp)
   1c48c:	e00ff06f          	j	1ba8c <_vfiprintf_r+0x368>
   1c490:	2a078063          	beqz	a5,1c730 <_vfiprintf_r+0x100c>
   1c494:	06010613          	addi	a2,sp,96
   1c498:	00090593          	mv	a1,s2
   1c49c:	00098513          	mv	a0,s3
   1c4a0:	96cff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c4a4:	e0051063          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1c4a8:	06812503          	lw	a0,104(sp)
   1c4ac:	07013783          	ld	a5,112(sp)
   1c4b0:	0f010e13          	addi	t3,sp,240
   1c4b4:	0015051b          	addiw	a0,a0,1
   1c4b8:	00048413          	mv	s0,s1
   1c4bc:	d64ff06f          	j	1ba20 <_vfiprintf_r+0x2fc>
   1c4c0:	06012423          	sw	zero,104(sp)
   1c4c4:	00048413          	mv	s0,s1
   1c4c8:	bb8ff06f          	j	1b880 <_vfiprintf_r+0x15c>
   1c4cc:	010d7793          	andi	a5,s10,16
   1c4d0:	12079463          	bnez	a5,1c5f8 <_vfiprintf_r+0xed4>
   1c4d4:	01013703          	ld	a4,16(sp)
   1c4d8:	040d7793          	andi	a5,s10,64
   1c4dc:	00072b83          	lw	s7,0(a4)
   1c4e0:	32078063          	beqz	a5,1c800 <_vfiprintf_r+0x10dc>
   1c4e4:	030b9b93          	slli	s7,s7,0x30
   1c4e8:	030bdb93          	srli	s7,s7,0x30
   1c4ec:	00c13823          	sd	a2,16(sp)
   1c4f0:	00100793          	li	a5,1
   1c4f4:	f20ff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1c4f8:	0f010e13          	addi	t3,sp,240
   1c4fc:	00100513          	li	a0,1
   1c500:	00000713          	li	a4,0
   1c504:	00048413          	mv	s0,s1
   1c508:	d04ff06f          	j	1ba0c <_vfiprintf_r+0x2e8>
   1c50c:	100f1e63          	bnez	t5,1c628 <_vfiprintf_r+0xf04>
   1c510:	00000713          	li	a4,0
   1c514:	0f010e13          	addi	t3,sp,240
   1c518:	00100513          	li	a0,1
   1c51c:	00048413          	mv	s0,s1
   1c520:	cecff06f          	j	1ba0c <_vfiprintf_r+0x2e8>
   1c524:	00813023          	sd	s0,0(sp)
   1c528:	000b8413          	mv	s0,s7
   1c52c:	02813b83          	ld	s7,40(sp)
   1c530:	400d7d93          	andi	s11,s10,1024
   1c534:	00000b13          	li	s6,0
   1c538:	0dc10c93          	addi	s9,sp,220
   1c53c:	00a00593          	li	a1,10
   1c540:	00040513          	mv	a0,s0
   1c544:	5bc050ef          	jal	ra,21b00 <__umoddi3>
   1c548:	0305051b          	addiw	a0,a0,48
   1c54c:	feac8fa3          	sb	a0,-1(s9)
   1c550:	001b0b1b          	addiw	s6,s6,1
   1c554:	fffc8c93          	addi	s9,s9,-1
   1c558:	000d8663          	beqz	s11,1c564 <_vfiprintf_r+0xe40>
   1c55c:	000bc703          	lbu	a4,0(s7)
   1c560:	03670063          	beq	a4,s6,1c580 <_vfiprintf_r+0xe5c>
   1c564:	00a00593          	li	a1,10
   1c568:	00040513          	mv	a0,s0
   1c56c:	54c050ef          	jal	ra,21ab8 <__udivdi3>
   1c570:	00900793          	li	a5,9
   1c574:	0087fe63          	bgeu	a5,s0,1c590 <_vfiprintf_r+0xe6c>
   1c578:	00050413          	mv	s0,a0
   1c57c:	fc1ff06f          	j	1c53c <_vfiprintf_r+0xe18>
   1c580:	0ff00793          	li	a5,255
   1c584:	fef700e3          	beq	a4,a5,1c564 <_vfiprintf_r+0xe40>
   1c588:	00900793          	li	a5,9
   1c58c:	1687e463          	bltu	a5,s0,1c6f4 <_vfiprintf_r+0xfd0>
   1c590:	0dc10793          	addi	a5,sp,220
   1c594:	419787bb          	subw	a5,a5,s9
   1c598:	00013403          	ld	s0,0(sp)
   1c59c:	03713423          	sd	s7,40(sp)
   1c5a0:	00f13023          	sd	a5,0(sp)
   1c5a4:	000d0b13          	mv	s6,s10
   1c5a8:	da8ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1c5ac:	06010613          	addi	a2,sp,96
   1c5b0:	00090593          	mv	a1,s2
   1c5b4:	00098513          	mv	a0,s3
   1c5b8:	05d13423          	sd	t4,72(sp)
   1c5bc:	03e13023          	sd	t5,32(sp)
   1c5c0:	84cff0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c5c4:	ce051063          	bnez	a0,1baa4 <_vfiprintf_r+0x380>
   1c5c8:	06812703          	lw	a4,104(sp)
   1c5cc:	07013783          	ld	a5,112(sp)
   1c5d0:	04813e83          	ld	t4,72(sp)
   1c5d4:	02013f03          	ld	t5,32(sp)
   1c5d8:	00048413          	mv	s0,s1
   1c5dc:	0017051b          	addiw	a0,a4,1
   1c5e0:	b90ff06f          	j	1b970 <_vfiprintf_r+0x24c>
   1c5e4:	0016051b          	addiw	a0,a2,1
   1c5e8:	01058e13          	addi	t3,a1,16
   1c5ec:	00060713          	mv	a4,a2
   1c5f0:	00058413          	mv	s0,a1
   1c5f4:	c20ff06f          	j	1ba14 <_vfiprintf_r+0x2f0>
   1c5f8:	01013783          	ld	a5,16(sp)
   1c5fc:	00c13823          	sd	a2,16(sp)
   1c600:	0007bb83          	ld	s7,0(a5)
   1c604:	00100793          	li	a5,1
   1c608:	e0cff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1c60c:	01013783          	ld	a5,16(sp)
   1c610:	0007bb83          	ld	s7,0(a5)
   1c614:	df0ff06f          	j	1bc04 <_vfiprintf_r+0x4e0>
   1c618:	01013783          	ld	a5,16(sp)
   1c61c:	0007b783          	ld	a5,0(a5)
   1c620:	00078b93          	mv	s7,a5
   1c624:	cfcff06f          	j	1bb20 <_vfiprintf_r+0x3fc>
   1c628:	05810793          	addi	a5,sp,88
   1c62c:	0ef13023          	sd	a5,224(sp)
   1c630:	00200793          	li	a5,2
   1c634:	0ef13423          	sd	a5,232(sp)
   1c638:	0f010413          	addi	s0,sp,240
   1c63c:	00100713          	li	a4,1
   1c640:	c01ff06f          	j	1c240 <_vfiprintf_r+0xb1c>
   1c644:	00c13823          	sd	a2,16(sp)
   1c648:	c11ff06f          	j	1c258 <_vfiprintf_r+0xb34>
   1c64c:	01013683          	ld	a3,16(sp)
   1c650:	00005717          	auipc	a4,0x5
   1c654:	5a070713          	addi	a4,a4,1440 # 21bf0 <__clzdi2+0x80>
   1c658:	00e13c23          	sd	a4,24(sp)
   1c65c:	020b7713          	andi	a4,s6,32
   1c660:	00868613          	addi	a2,a3,8
   1c664:	06070063          	beqz	a4,1c6c4 <_vfiprintf_r+0xfa0>
   1c668:	0006bb83          	ld	s7,0(a3)
   1c66c:	001b7713          	andi	a4,s6,1
   1c670:	00070e63          	beqz	a4,1c68c <_vfiprintf_r+0xf68>
   1c674:	000b8c63          	beqz	s7,1c68c <_vfiprintf_r+0xf68>
   1c678:	002b6313          	ori	t1,s6,2
   1c67c:	03000713          	li	a4,48
   1c680:	04e10c23          	sb	a4,88(sp)
   1c684:	04f10ca3          	sb	a5,89(sp)
   1c688:	00030b1b          	sext.w	s6,t1
   1c68c:	bffb7713          	andi	a4,s6,-1025
   1c690:	00070d1b          	sext.w	s10,a4
   1c694:	00c13823          	sd	a2,16(sp)
   1c698:	00200793          	li	a5,2
   1c69c:	d78ff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1c6a0:	000b0d13          	mv	s10,s6
   1c6a4:	f34ff06f          	j	1bdd8 <_vfiprintf_r+0x6b4>
   1c6a8:	01013683          	ld	a3,16(sp)
   1c6ac:	00005717          	auipc	a4,0x5
   1c6b0:	55c70713          	addi	a4,a4,1372 # 21c08 <__clzdi2+0x98>
   1c6b4:	00e13c23          	sd	a4,24(sp)
   1c6b8:	020b7713          	andi	a4,s6,32
   1c6bc:	00868613          	addi	a2,a3,8
   1c6c0:	fa0714e3          	bnez	a4,1c668 <_vfiprintf_r+0xf44>
   1c6c4:	010b7713          	andi	a4,s6,16
   1c6c8:	08070463          	beqz	a4,1c750 <_vfiprintf_r+0x102c>
   1c6cc:	01013703          	ld	a4,16(sp)
   1c6d0:	00073b83          	ld	s7,0(a4)
   1c6d4:	f99ff06f          	j	1c66c <_vfiprintf_r+0xf48>
   1c6d8:	000c8513          	mv	a0,s9
   1c6dc:	f0cfc0ef          	jal	ra,18de8 <strlen>
   1c6e0:	0005079b          	sext.w	a5,a0
   1c6e4:	00f13023          	sd	a5,0(sp)
   1c6e8:	01713823          	sd	s7,16(sp)
   1c6ec:	00000a93          	li	s5,0
   1c6f0:	c60ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1c6f4:	03813783          	ld	a5,56(sp)
   1c6f8:	03013583          	ld	a1,48(sp)
   1c6fc:	00000b13          	li	s6,0
   1c700:	40fc8cb3          	sub	s9,s9,a5
   1c704:	00078613          	mv	a2,a5
   1c708:	000c8513          	mv	a0,s9
   1c70c:	fa8fc0ef          	jal	ra,18eb4 <strncpy>
   1c710:	001bc703          	lbu	a4,1(s7)
   1c714:	00040513          	mv	a0,s0
   1c718:	00a00593          	li	a1,10
   1c71c:	00e037b3          	snez	a5,a4
   1c720:	00fb8bb3          	add	s7,s7,a5
   1c724:	394050ef          	jal	ra,21ab8 <__udivdi3>
   1c728:	00050413          	mv	s0,a0
   1c72c:	e11ff06f          	j	1c53c <_vfiprintf_r+0xe18>
   1c730:	00013783          	ld	a5,0(sp)
   1c734:	00100713          	li	a4,1
   1c738:	0f913023          	sd	s9,224(sp)
   1c73c:	0ef13423          	sd	a5,232(sp)
   1c740:	06f13823          	sd	a5,112(sp)
   1c744:	06e12423          	sw	a4,104(sp)
   1c748:	0f010e13          	addi	t3,sp,240
   1c74c:	b14ff06f          	j	1ba60 <_vfiprintf_r+0x33c>
   1c750:	01013683          	ld	a3,16(sp)
   1c754:	040b7713          	andi	a4,s6,64
   1c758:	0006ab83          	lw	s7,0(a3)
   1c75c:	06070663          	beqz	a4,1c7c8 <_vfiprintf_r+0x10a4>
   1c760:	030b9b93          	slli	s7,s7,0x30
   1c764:	030bdb93          	srli	s7,s7,0x30
   1c768:	f05ff06f          	j	1c66c <_vfiprintf_r+0xf48>
   1c76c:	000b0d13          	mv	s10,s6
   1c770:	00c13823          	sd	a2,16(sp)
   1c774:	ae5ff06f          	j	1c258 <_vfiprintf_r+0xb34>
   1c778:	200b6b13          	ori	s6,s6,512
   1c77c:	001c4783          	lbu	a5,1(s8)
   1c780:	000b0b1b          	sext.w	s6,s6
   1c784:	001c0c13          	addi	s8,s8,1
   1c788:	92cff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1c78c:	020b6b13          	ori	s6,s6,32
   1c790:	001c4783          	lbu	a5,1(s8)
   1c794:	000b0b1b          	sext.w	s6,s6
   1c798:	001c0c13          	addi	s8,s8,1
   1c79c:	918ff06f          	j	1b8b4 <_vfiprintf_r+0x190>
   1c7a0:	00600793          	li	a5,6
   1c7a4:	000a8c93          	mv	s9,s5
   1c7a8:	0957ea63          	bltu	a5,s5,1c83c <_vfiprintf_r+0x1118>
   1c7ac:	000c879b          	sext.w	a5,s9
   1c7b0:	00f13023          	sd	a5,0(sp)
   1c7b4:	00078d13          	mv	s10,a5
   1c7b8:	01713823          	sd	s7,16(sp)
   1c7bc:	00005c97          	auipc	s9,0x5
   1c7c0:	464c8c93          	addi	s9,s9,1124 # 21c20 <__clzdi2+0xb0>
   1c7c4:	97cff06f          	j	1b940 <_vfiprintf_r+0x21c>
   1c7c8:	200b7713          	andi	a4,s6,512
   1c7cc:	0c070863          	beqz	a4,1c89c <_vfiprintf_r+0x1178>
   1c7d0:	0ffbfb93          	andi	s7,s7,255
   1c7d4:	e99ff06f          	j	1c66c <_vfiprintf_r+0xf48>
   1c7d8:	200b7793          	andi	a5,s6,512
   1c7dc:	0a078a63          	beqz	a5,1c890 <_vfiprintf_r+0x116c>
   1c7e0:	0ffbfb93          	andi	s7,s7,255
   1c7e4:	c20ff06f          	j	1bc04 <_vfiprintf_r+0x4e0>
   1c7e8:	200b7793          	andi	a5,s6,512
   1c7ec:	08078a63          	beqz	a5,1c880 <_vfiprintf_r+0x115c>
   1c7f0:	01013783          	ld	a5,16(sp)
   1c7f4:	00078b83          	lb	s7,0(a5)
   1c7f8:	000b8793          	mv	a5,s7
   1c7fc:	b24ff06f          	j	1bb20 <_vfiprintf_r+0x3fc>
   1c800:	200d7793          	andi	a5,s10,512
   1c804:	06078463          	beqz	a5,1c86c <_vfiprintf_r+0x1148>
   1c808:	0ffbfb93          	andi	s7,s7,255
   1c80c:	00c13823          	sd	a2,16(sp)
   1c810:	00100793          	li	a5,1
   1c814:	c00ff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1c818:	000e0613          	mv	a2,t3
   1c81c:	00006e17          	auipc	t3,0x6
   1c820:	d94e0e13          	addi	t3,t3,-620 # 225b0 <zeroes.0>
   1c824:	949ff06f          	j	1c16c <_vfiprintf_r+0xa48>
   1c828:	0f010e13          	addi	t3,sp,240
   1c82c:	00100513          	li	a0,1
   1c830:	00000713          	li	a4,0
   1c834:	00048413          	mv	s0,s1
   1c838:	9dcff06f          	j	1ba14 <_vfiprintf_r+0x2f0>
   1c83c:	00600c93          	li	s9,6
   1c840:	f6dff06f          	j	1c7ac <_vfiprintf_r+0x1088>
   1c844:	05710793          	addi	a5,sp,87
   1c848:	0ef13023          	sd	a5,224(sp)
   1c84c:	00100793          	li	a5,1
   1c850:	0ef13423          	sd	a5,232(sp)
   1c854:	0f010e13          	addi	t3,sp,240
   1c858:	00100513          	li	a0,1
   1c85c:	944ff06f          	j	1b9a0 <_vfiprintf_r+0x27c>
   1c860:	00813783          	ld	a5,8(sp)
   1c864:	00f71023          	sh	a5,0(a4)
   1c868:	fa9fe06f          	j	1b810 <_vfiprintf_r+0xec>
   1c86c:	020b9b93          	slli	s7,s7,0x20
   1c870:	020bdb93          	srli	s7,s7,0x20
   1c874:	00c13823          	sd	a2,16(sp)
   1c878:	00100793          	li	a5,1
   1c87c:	b98ff06f          	j	1bc14 <_vfiprintf_r+0x4f0>
   1c880:	01013783          	ld	a5,16(sp)
   1c884:	0007ab83          	lw	s7,0(a5)
   1c888:	000b8793          	mv	a5,s7
   1c88c:	a94ff06f          	j	1bb20 <_vfiprintf_r+0x3fc>
   1c890:	020b9b93          	slli	s7,s7,0x20
   1c894:	020bdb93          	srli	s7,s7,0x20
   1c898:	b6cff06f          	j	1bc04 <_vfiprintf_r+0x4e0>
   1c89c:	020b9b93          	slli	s7,s7,0x20
   1c8a0:	020bdb93          	srli	s7,s7,0x20
   1c8a4:	dc9ff06f          	j	1c66c <_vfiprintf_r+0xf48>
   1c8a8:	06010613          	addi	a2,sp,96
   1c8ac:	00090593          	mv	a1,s2
   1c8b0:	00098513          	mv	a0,s3
   1c8b4:	d59fe0ef          	jal	ra,1b60c <__sprint_r.part.0>
   1c8b8:	9ecff06f          	j	1baa4 <_vfiprintf_r+0x380>
   1c8bc:	01513023          	sd	s5,0(sp)
   1c8c0:	01713823          	sd	s7,16(sp)
   1c8c4:	00000a93          	li	s5,0
   1c8c8:	a88ff06f          	j	1bb50 <_vfiprintf_r+0x42c>
   1c8cc:	00006b97          	auipc	s7,0x6
   1c8d0:	cd4b8b93          	addi	s7,s7,-812 # 225a0 <blanks.1>
   1c8d4:	a79ff06f          	j	1c34c <_vfiprintf_r+0xc28>
   1c8d8:	0016071b          	addiw	a4,a2,1
   1c8dc:	00006b97          	auipc	s7,0x6
   1c8e0:	cc4b8b93          	addi	s7,s7,-828 # 225a0 <blanks.1>
   1c8e4:	b3dff06f          	j	1c420 <_vfiprintf_r+0xcfc>
   1c8e8:	000b0d13          	mv	s10,s6
   1c8ec:	975ff06f          	j	1c260 <_vfiprintf_r+0xb3c>
   1c8f0:	000e0593          	mv	a1,t3
   1c8f4:	00050613          	mv	a2,a0
   1c8f8:	00006e17          	auipc	t3,0x6
   1c8fc:	cb8e0e13          	addi	t3,t3,-840 # 225b0 <zeroes.0>
   1c900:	f80ff06f          	j	1c080 <_vfiprintf_r+0x95c>
   1c904:	fff00793          	li	a5,-1
   1c908:	00f13423          	sd	a5,8(sp)
   1c90c:	9a4ff06f          	j	1bab0 <_vfiprintf_r+0x38c>
   1c910:	00f72023          	sw	a5,0(a4)
   1c914:	efdfe06f          	j	1b810 <_vfiprintf_r+0xec>
   1c918:	01013683          	ld	a3,16(sp)
   1c91c:	0006a783          	lw	a5,0(a3)
   1c920:	00868693          	addi	a3,a3,8
   1c924:	00078a9b          	sext.w	s5,a5
   1c928:	0007d463          	bgez	a5,1c930 <_vfiprintf_r+0x120c>
   1c92c:	fff00a93          	li	s5,-1
   1c930:	001c4783          	lbu	a5,1(s8)
   1c934:	00d13823          	sd	a3,16(sp)
   1c938:	00070c13          	mv	s8,a4
   1c93c:	f79fe06f          	j	1b8b4 <_vfiprintf_r+0x190>

000000000001c940 <vfiprintf>:
   1c940:	00060693          	mv	a3,a2
   1c944:	00058613          	mv	a2,a1
   1c948:	00050593          	mv	a1,a0
   1c94c:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1c950:	dd5fe06f          	j	1b724 <_vfiprintf_r>

000000000001c954 <__sbprintf>:
   1c954:	0105d783          	lhu	a5,16(a1)
   1c958:	0ac5ae03          	lw	t3,172(a1)
   1c95c:	0125d303          	lhu	t1,18(a1)
   1c960:	0305b883          	ld	a7,48(a1)
   1c964:	0405b803          	ld	a6,64(a1)
   1c968:	b3010113          	addi	sp,sp,-1232
   1c96c:	ffd7f793          	andi	a5,a5,-3
   1c970:	40000713          	li	a4,1024
   1c974:	4c813023          	sd	s0,1216(sp)
   1c978:	00f11823          	sh	a5,16(sp)
   1c97c:	00058413          	mv	s0,a1
   1c980:	0b010793          	addi	a5,sp,176
   1c984:	00010593          	mv	a1,sp
   1c988:	4a913c23          	sd	s1,1208(sp)
   1c98c:	4b213823          	sd	s2,1200(sp)
   1c990:	4c113423          	sd	ra,1224(sp)
   1c994:	00050913          	mv	s2,a0
   1c998:	0bc12623          	sw	t3,172(sp)
   1c99c:	00611923          	sh	t1,18(sp)
   1c9a0:	03113823          	sd	a7,48(sp)
   1c9a4:	05013023          	sd	a6,64(sp)
   1c9a8:	00f13023          	sd	a5,0(sp)
   1c9ac:	00f13c23          	sd	a5,24(sp)
   1c9b0:	00e12623          	sw	a4,12(sp)
   1c9b4:	02e12023          	sw	a4,32(sp)
   1c9b8:	02012423          	sw	zero,40(sp)
   1c9bc:	d69fe0ef          	jal	ra,1b724 <_vfiprintf_r>
   1c9c0:	00050493          	mv	s1,a0
   1c9c4:	02055c63          	bgez	a0,1c9fc <__sbprintf+0xa8>
   1c9c8:	01015783          	lhu	a5,16(sp)
   1c9cc:	0407f793          	andi	a5,a5,64
   1c9d0:	00078863          	beqz	a5,1c9e0 <__sbprintf+0x8c>
   1c9d4:	01045783          	lhu	a5,16(s0)
   1c9d8:	0407e793          	ori	a5,a5,64
   1c9dc:	00f41823          	sh	a5,16(s0)
   1c9e0:	4c813083          	ld	ra,1224(sp)
   1c9e4:	4c013403          	ld	s0,1216(sp)
   1c9e8:	4b013903          	ld	s2,1200(sp)
   1c9ec:	00048513          	mv	a0,s1
   1c9f0:	4b813483          	ld	s1,1208(sp)
   1c9f4:	4d010113          	addi	sp,sp,1232
   1c9f8:	00008067          	ret
   1c9fc:	00010593          	mv	a1,sp
   1ca00:	00090513          	mv	a0,s2
   1ca04:	f00f60ef          	jal	ra,13104 <_fflush_r>
   1ca08:	fc0500e3          	beqz	a0,1c9c8 <__sbprintf+0x74>
   1ca0c:	fff00493          	li	s1,-1
   1ca10:	fb9ff06f          	j	1c9c8 <__sbprintf+0x74>

000000000001ca14 <_wctomb_r>:
   1ca14:	e401b783          	ld	a5,-448(gp) # 24220 <__global_locale+0xe0>
   1ca18:	00078067          	jr	a5

000000000001ca1c <__ascii_wctomb>:
   1ca1c:	0006079b          	sext.w	a5,a2
   1ca20:	02058463          	beqz	a1,1ca48 <__ascii_wctomb+0x2c>
   1ca24:	0ff00713          	li	a4,255
   1ca28:	00f76863          	bltu	a4,a5,1ca38 <__ascii_wctomb+0x1c>
   1ca2c:	00c58023          	sb	a2,0(a1)
   1ca30:	00100513          	li	a0,1
   1ca34:	00008067          	ret
   1ca38:	08a00793          	li	a5,138
   1ca3c:	00f52023          	sw	a5,0(a0)
   1ca40:	fff00513          	li	a0,-1
   1ca44:	00008067          	ret
   1ca48:	00000513          	li	a0,0
   1ca4c:	00008067          	ret

000000000001ca50 <_write_r>:
   1ca50:	ff010113          	addi	sp,sp,-16
   1ca54:	00058713          	mv	a4,a1
   1ca58:	00813023          	sd	s0,0(sp)
   1ca5c:	00060593          	mv	a1,a2
   1ca60:	00050413          	mv	s0,a0
   1ca64:	00068613          	mv	a2,a3
   1ca68:	00070513          	mv	a0,a4
   1ca6c:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1ca70:	00113423          	sd	ra,8(sp)
   1ca74:	2f0030ef          	jal	ra,1fd64 <_write>
   1ca78:	fff00793          	li	a5,-1
   1ca7c:	00f50a63          	beq	a0,a5,1ca90 <_write_r+0x40>
   1ca80:	00813083          	ld	ra,8(sp)
   1ca84:	00013403          	ld	s0,0(sp)
   1ca88:	01010113          	addi	sp,sp,16
   1ca8c:	00008067          	ret
   1ca90:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1ca94:	fe0786e3          	beqz	a5,1ca80 <_write_r+0x30>
   1ca98:	00813083          	ld	ra,8(sp)
   1ca9c:	00f42023          	sw	a5,0(s0)
   1caa0:	00013403          	ld	s0,0(sp)
   1caa4:	01010113          	addi	sp,sp,16
   1caa8:	00008067          	ret

000000000001caac <__assert_func>:
   1caac:	ff010113          	addi	sp,sp,-16
   1cab0:	00068793          	mv	a5,a3
   1cab4:	7581b703          	ld	a4,1880(gp) # 24b38 <_impure_ptr>
   1cab8:	00060813          	mv	a6,a2
   1cabc:	00113423          	sd	ra,8(sp)
   1cac0:	01873883          	ld	a7,24(a4)
   1cac4:	00078613          	mv	a2,a5
   1cac8:	00050693          	mv	a3,a0
   1cacc:	00058713          	mv	a4,a1
   1cad0:	00006797          	auipc	a5,0x6
   1cad4:	af078793          	addi	a5,a5,-1296 # 225c0 <zeroes.0+0x10>
   1cad8:	00080c63          	beqz	a6,1caf0 <__assert_func+0x44>
   1cadc:	00006597          	auipc	a1,0x6
   1cae0:	af458593          	addi	a1,a1,-1292 # 225d0 <zeroes.0+0x20>
   1cae4:	00088513          	mv	a0,a7
   1cae8:	330000ef          	jal	ra,1ce18 <fiprintf>
   1caec:	121020ef          	jal	ra,1f40c <abort>
   1caf0:	00005797          	auipc	a5,0x5
   1caf4:	11078793          	addi	a5,a5,272 # 21c00 <__clzdi2+0x90>
   1caf8:	00078813          	mv	a6,a5
   1cafc:	fe1ff06f          	j	1cadc <__assert_func+0x30>

000000000001cb00 <__assert>:
   1cb00:	ff010113          	addi	sp,sp,-16
   1cb04:	00060693          	mv	a3,a2
   1cb08:	00000613          	li	a2,0
   1cb0c:	00113423          	sd	ra,8(sp)
   1cb10:	f9dff0ef          	jal	ra,1caac <__assert_func>

000000000001cb14 <atexit>:
   1cb14:	00050593          	mv	a1,a0
   1cb18:	00000693          	li	a3,0
   1cb1c:	00000613          	li	a2,0
   1cb20:	00000513          	li	a0,0
   1cb24:	1010206f          	j	1f424 <__register_exitproc>

000000000001cb28 <_calloc_r>:
   1cb28:	ff010113          	addi	sp,sp,-16
   1cb2c:	00813023          	sd	s0,0(sp)
   1cb30:	00050413          	mv	s0,a0
   1cb34:	00058513          	mv	a0,a1
   1cb38:	00060593          	mv	a1,a2
   1cb3c:	00113423          	sd	ra,8(sp)
   1cb40:	70d040ef          	jal	ra,21a4c <__muldi3>
   1cb44:	00050593          	mv	a1,a0
   1cb48:	00040513          	mv	a0,s0
   1cb4c:	8d0fa0ef          	jal	ra,16c1c <_malloc_r>
   1cb50:	00050413          	mv	s0,a0
   1cb54:	02050863          	beqz	a0,1cb84 <_calloc_r+0x5c>
   1cb58:	ff853603          	ld	a2,-8(a0)
   1cb5c:	04800713          	li	a4,72
   1cb60:	ffc67613          	andi	a2,a2,-4
   1cb64:	ff860613          	addi	a2,a2,-8
   1cb68:	06c76063          	bltu	a4,a2,1cbc8 <_calloc_r+0xa0>
   1cb6c:	02700693          	li	a3,39
   1cb70:	00050793          	mv	a5,a0
   1cb74:	02c6e263          	bltu	a3,a2,1cb98 <_calloc_r+0x70>
   1cb78:	0007b023          	sd	zero,0(a5)
   1cb7c:	0007b423          	sd	zero,8(a5)
   1cb80:	0007b823          	sd	zero,16(a5)
   1cb84:	00813083          	ld	ra,8(sp)
   1cb88:	00040513          	mv	a0,s0
   1cb8c:	00013403          	ld	s0,0(sp)
   1cb90:	01010113          	addi	sp,sp,16
   1cb94:	00008067          	ret
   1cb98:	00053023          	sd	zero,0(a0)
   1cb9c:	00053423          	sd	zero,8(a0)
   1cba0:	03700793          	li	a5,55
   1cba4:	04c7f063          	bgeu	a5,a2,1cbe4 <_calloc_r+0xbc>
   1cba8:	00053823          	sd	zero,16(a0)
   1cbac:	00053c23          	sd	zero,24(a0)
   1cbb0:	02050793          	addi	a5,a0,32
   1cbb4:	fce612e3          	bne	a2,a4,1cb78 <_calloc_r+0x50>
   1cbb8:	02053023          	sd	zero,32(a0)
   1cbbc:	03050793          	addi	a5,a0,48
   1cbc0:	02053423          	sd	zero,40(a0)
   1cbc4:	fb5ff06f          	j	1cb78 <_calloc_r+0x50>
   1cbc8:	00000593          	li	a1,0
   1cbcc:	ef8f30ef          	jal	ra,102c4 <memset>
   1cbd0:	00813083          	ld	ra,8(sp)
   1cbd4:	00040513          	mv	a0,s0
   1cbd8:	00013403          	ld	s0,0(sp)
   1cbdc:	01010113          	addi	sp,sp,16
   1cbe0:	00008067          	ret
   1cbe4:	01050793          	addi	a5,a0,16
   1cbe8:	f91ff06f          	j	1cb78 <_calloc_r+0x50>

000000000001cbec <_close_r>:
   1cbec:	ff010113          	addi	sp,sp,-16
   1cbf0:	00813023          	sd	s0,0(sp)
   1cbf4:	00050413          	mv	s0,a0
   1cbf8:	00058513          	mv	a0,a1
   1cbfc:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1cc00:	00113423          	sd	ra,8(sp)
   1cc04:	6a5020ef          	jal	ra,1faa8 <_close>
   1cc08:	fff00793          	li	a5,-1
   1cc0c:	00f50a63          	beq	a0,a5,1cc20 <_close_r+0x34>
   1cc10:	00813083          	ld	ra,8(sp)
   1cc14:	00013403          	ld	s0,0(sp)
   1cc18:	01010113          	addi	sp,sp,16
   1cc1c:	00008067          	ret
   1cc20:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1cc24:	fe0786e3          	beqz	a5,1cc10 <_close_r+0x24>
   1cc28:	00813083          	ld	ra,8(sp)
   1cc2c:	00f42023          	sw	a5,0(s0)
   1cc30:	00013403          	ld	s0,0(sp)
   1cc34:	01010113          	addi	sp,sp,16
   1cc38:	00008067          	ret

000000000001cc3c <_fclose_r.part.0>:
   1cc3c:	fe010113          	addi	sp,sp,-32
   1cc40:	00813823          	sd	s0,16(sp)
   1cc44:	00913423          	sd	s1,8(sp)
   1cc48:	01213023          	sd	s2,0(sp)
   1cc4c:	00058413          	mv	s0,a1
   1cc50:	00113c23          	sd	ra,24(sp)
   1cc54:	00050493          	mv	s1,a0
   1cc58:	a48f60ef          	jal	ra,12ea0 <__sflush_r>
   1cc5c:	05043783          	ld	a5,80(s0)
   1cc60:	00050913          	mv	s2,a0
   1cc64:	00078a63          	beqz	a5,1cc78 <_fclose_r.part.0+0x3c>
   1cc68:	03043583          	ld	a1,48(s0)
   1cc6c:	00048513          	mv	a0,s1
   1cc70:	000780e7          	jalr	a5
   1cc74:	06054463          	bltz	a0,1ccdc <_fclose_r.part.0+0xa0>
   1cc78:	01045783          	lhu	a5,16(s0)
   1cc7c:	0807f793          	andi	a5,a5,128
   1cc80:	06079663          	bnez	a5,1ccec <_fclose_r.part.0+0xb0>
   1cc84:	05843583          	ld	a1,88(s0)
   1cc88:	00058c63          	beqz	a1,1cca0 <_fclose_r.part.0+0x64>
   1cc8c:	07440793          	addi	a5,s0,116
   1cc90:	00f58663          	beq	a1,a5,1cc9c <_fclose_r.part.0+0x60>
   1cc94:	00048513          	mv	a0,s1
   1cc98:	a81f60ef          	jal	ra,13718 <_free_r>
   1cc9c:	04043c23          	sd	zero,88(s0)
   1cca0:	07843583          	ld	a1,120(s0)
   1cca4:	00058863          	beqz	a1,1ccb4 <_fclose_r.part.0+0x78>
   1cca8:	00048513          	mv	a0,s1
   1ccac:	a6df60ef          	jal	ra,13718 <_free_r>
   1ccb0:	06043c23          	sd	zero,120(s0)
   1ccb4:	89df60ef          	jal	ra,13550 <__sfp_lock_acquire>
   1ccb8:	00041823          	sh	zero,16(s0)
   1ccbc:	899f60ef          	jal	ra,13554 <__sfp_lock_release>
   1ccc0:	01813083          	ld	ra,24(sp)
   1ccc4:	01013403          	ld	s0,16(sp)
   1ccc8:	00813483          	ld	s1,8(sp)
   1cccc:	00090513          	mv	a0,s2
   1ccd0:	00013903          	ld	s2,0(sp)
   1ccd4:	02010113          	addi	sp,sp,32
   1ccd8:	00008067          	ret
   1ccdc:	01045783          	lhu	a5,16(s0)
   1cce0:	fff00913          	li	s2,-1
   1cce4:	0807f793          	andi	a5,a5,128
   1cce8:	f8078ee3          	beqz	a5,1cc84 <_fclose_r.part.0+0x48>
   1ccec:	01843583          	ld	a1,24(s0)
   1ccf0:	00048513          	mv	a0,s1
   1ccf4:	a25f60ef          	jal	ra,13718 <_free_r>
   1ccf8:	f8dff06f          	j	1cc84 <_fclose_r.part.0+0x48>

000000000001ccfc <_fclose_r>:
   1ccfc:	06058463          	beqz	a1,1cd64 <_fclose_r+0x68>
   1cd00:	fe010113          	addi	sp,sp,-32
   1cd04:	00813823          	sd	s0,16(sp)
   1cd08:	00113c23          	sd	ra,24(sp)
   1cd0c:	00050413          	mv	s0,a0
   1cd10:	00050663          	beqz	a0,1cd1c <_fclose_r+0x20>
   1cd14:	05052783          	lw	a5,80(a0)
   1cd18:	02078a63          	beqz	a5,1cd4c <_fclose_r+0x50>
   1cd1c:	01059783          	lh	a5,16(a1)
   1cd20:	00079c63          	bnez	a5,1cd38 <_fclose_r+0x3c>
   1cd24:	01813083          	ld	ra,24(sp)
   1cd28:	01013403          	ld	s0,16(sp)
   1cd2c:	00000513          	li	a0,0
   1cd30:	02010113          	addi	sp,sp,32
   1cd34:	00008067          	ret
   1cd38:	00040513          	mv	a0,s0
   1cd3c:	01013403          	ld	s0,16(sp)
   1cd40:	01813083          	ld	ra,24(sp)
   1cd44:	02010113          	addi	sp,sp,32
   1cd48:	ef5ff06f          	j	1cc3c <_fclose_r.part.0>
   1cd4c:	00b13423          	sd	a1,8(sp)
   1cd50:	ff0f60ef          	jal	ra,13540 <__sinit>
   1cd54:	00813583          	ld	a1,8(sp)
   1cd58:	01059783          	lh	a5,16(a1)
   1cd5c:	fc0784e3          	beqz	a5,1cd24 <_fclose_r+0x28>
   1cd60:	fd9ff06f          	j	1cd38 <_fclose_r+0x3c>
   1cd64:	00000513          	li	a0,0
   1cd68:	00008067          	ret

000000000001cd6c <fclose>:
   1cd6c:	06050663          	beqz	a0,1cdd8 <fclose+0x6c>
   1cd70:	fe010113          	addi	sp,sp,-32
   1cd74:	00813823          	sd	s0,16(sp)
   1cd78:	00113c23          	sd	ra,24(sp)
   1cd7c:	00050413          	mv	s0,a0
   1cd80:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1cd84:	00050663          	beqz	a0,1cd90 <fclose+0x24>
   1cd88:	05052783          	lw	a5,80(a0)
   1cd8c:	02078a63          	beqz	a5,1cdc0 <fclose+0x54>
   1cd90:	01041783          	lh	a5,16(s0)
   1cd94:	00079c63          	bnez	a5,1cdac <fclose+0x40>
   1cd98:	01813083          	ld	ra,24(sp)
   1cd9c:	01013403          	ld	s0,16(sp)
   1cda0:	00000513          	li	a0,0
   1cda4:	02010113          	addi	sp,sp,32
   1cda8:	00008067          	ret
   1cdac:	00040593          	mv	a1,s0
   1cdb0:	01013403          	ld	s0,16(sp)
   1cdb4:	01813083          	ld	ra,24(sp)
   1cdb8:	02010113          	addi	sp,sp,32
   1cdbc:	e81ff06f          	j	1cc3c <_fclose_r.part.0>
   1cdc0:	00a13423          	sd	a0,8(sp)
   1cdc4:	f7cf60ef          	jal	ra,13540 <__sinit>
   1cdc8:	01041783          	lh	a5,16(s0)
   1cdcc:	00813503          	ld	a0,8(sp)
   1cdd0:	fc0784e3          	beqz	a5,1cd98 <fclose+0x2c>
   1cdd4:	fd9ff06f          	j	1cdac <fclose+0x40>
   1cdd8:	00000513          	li	a0,0
   1cddc:	00008067          	ret

000000000001cde0 <_fiprintf_r>:
   1cde0:	fb010113          	addi	sp,sp,-80
   1cde4:	02810313          	addi	t1,sp,40
   1cde8:	02d13423          	sd	a3,40(sp)
   1cdec:	00030693          	mv	a3,t1
   1cdf0:	00113c23          	sd	ra,24(sp)
   1cdf4:	02e13823          	sd	a4,48(sp)
   1cdf8:	02f13c23          	sd	a5,56(sp)
   1cdfc:	05013023          	sd	a6,64(sp)
   1ce00:	05113423          	sd	a7,72(sp)
   1ce04:	00613423          	sd	t1,8(sp)
   1ce08:	91dfe0ef          	jal	ra,1b724 <_vfiprintf_r>
   1ce0c:	01813083          	ld	ra,24(sp)
   1ce10:	05010113          	addi	sp,sp,80
   1ce14:	00008067          	ret

000000000001ce18 <fiprintf>:
   1ce18:	fb010113          	addi	sp,sp,-80
   1ce1c:	02010313          	addi	t1,sp,32
   1ce20:	02c13023          	sd	a2,32(sp)
   1ce24:	02d13423          	sd	a3,40(sp)
   1ce28:	00058613          	mv	a2,a1
   1ce2c:	00030693          	mv	a3,t1
   1ce30:	00050593          	mv	a1,a0
   1ce34:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1ce38:	00113c23          	sd	ra,24(sp)
   1ce3c:	02e13823          	sd	a4,48(sp)
   1ce40:	02f13c23          	sd	a5,56(sp)
   1ce44:	05013023          	sd	a6,64(sp)
   1ce48:	05113423          	sd	a7,72(sp)
   1ce4c:	00613423          	sd	t1,8(sp)
   1ce50:	8d5fe0ef          	jal	ra,1b724 <_vfiprintf_r>
   1ce54:	01813083          	ld	ra,24(sp)
   1ce58:	05010113          	addi	sp,sp,80
   1ce5c:	00008067          	ret

000000000001ce60 <__fputwc>:
   1ce60:	fb010113          	addi	sp,sp,-80
   1ce64:	04813023          	sd	s0,64(sp)
   1ce68:	03313423          	sd	s3,40(sp)
   1ce6c:	01613823          	sd	s6,16(sp)
   1ce70:	04113423          	sd	ra,72(sp)
   1ce74:	02913c23          	sd	s1,56(sp)
   1ce78:	03213823          	sd	s2,48(sp)
   1ce7c:	03413023          	sd	s4,32(sp)
   1ce80:	01513c23          	sd	s5,24(sp)
   1ce84:	00050b13          	mv	s6,a0
   1ce88:	00058993          	mv	s3,a1
   1ce8c:	00060413          	mv	s0,a2
   1ce90:	aa9f90ef          	jal	ra,16938 <__locale_mb_cur_max>
   1ce94:	00100793          	li	a5,1
   1ce98:	02f51063          	bne	a0,a5,1ceb8 <__fputwc+0x58>
   1ce9c:	fff9879b          	addiw	a5,s3,-1
   1cea0:	0fe00713          	li	a4,254
   1cea4:	00f76a63          	bltu	a4,a5,1ceb8 <__fputwc+0x58>
   1cea8:	0ff9f713          	andi	a4,s3,255
   1ceac:	00e10423          	sb	a4,8(sp)
   1ceb0:	00100913          	li	s2,1
   1ceb4:	02c0006f          	j	1cee0 <__fputwc+0x80>
   1ceb8:	0a440693          	addi	a3,s0,164
   1cebc:	00098613          	mv	a2,s3
   1cec0:	00810593          	addi	a1,sp,8
   1cec4:	000b0513          	mv	a0,s6
   1cec8:	444020ef          	jal	ra,1f30c <_wcrtomb_r>
   1cecc:	fff00793          	li	a5,-1
   1ced0:	00050913          	mv	s2,a0
   1ced4:	0af50263          	beq	a0,a5,1cf78 <__fputwc+0x118>
   1ced8:	08050c63          	beqz	a0,1cf70 <__fputwc+0x110>
   1cedc:	00814703          	lbu	a4,8(sp)
   1cee0:	00000493          	li	s1,0
   1cee4:	fff00a13          	li	s4,-1
   1cee8:	00a00a93          	li	s5,10
   1ceec:	0280006f          	j	1cf14 <__fputwc+0xb4>
   1cef0:	00043783          	ld	a5,0(s0)
   1cef4:	00178693          	addi	a3,a5,1
   1cef8:	00d43023          	sd	a3,0(s0)
   1cefc:	00e78023          	sb	a4,0(a5)
   1cf00:	00148493          	addi	s1,s1,1
   1cf04:	00810793          	addi	a5,sp,8
   1cf08:	009787b3          	add	a5,a5,s1
   1cf0c:	0724f263          	bgeu	s1,s2,1cf70 <__fputwc+0x110>
   1cf10:	0007c703          	lbu	a4,0(a5)
   1cf14:	00c42783          	lw	a5,12(s0)
   1cf18:	fff7879b          	addiw	a5,a5,-1
   1cf1c:	00f42623          	sw	a5,12(s0)
   1cf20:	fc07d8e3          	bgez	a5,1cef0 <__fputwc+0x90>
   1cf24:	02842683          	lw	a3,40(s0)
   1cf28:	00070593          	mv	a1,a4
   1cf2c:	00040613          	mv	a2,s0
   1cf30:	000b0513          	mv	a0,s6
   1cf34:	00d7c463          	blt	a5,a3,1cf3c <__fputwc+0xdc>
   1cf38:	fb571ce3          	bne	a4,s5,1cef0 <__fputwc+0x90>
   1cf3c:	238020ef          	jal	ra,1f174 <__swbuf_r>
   1cf40:	fd4510e3          	bne	a0,s4,1cf00 <__fputwc+0xa0>
   1cf44:	fff00513          	li	a0,-1
   1cf48:	04813083          	ld	ra,72(sp)
   1cf4c:	04013403          	ld	s0,64(sp)
   1cf50:	03813483          	ld	s1,56(sp)
   1cf54:	03013903          	ld	s2,48(sp)
   1cf58:	02813983          	ld	s3,40(sp)
   1cf5c:	02013a03          	ld	s4,32(sp)
   1cf60:	01813a83          	ld	s5,24(sp)
   1cf64:	01013b03          	ld	s6,16(sp)
   1cf68:	05010113          	addi	sp,sp,80
   1cf6c:	00008067          	ret
   1cf70:	0009851b          	sext.w	a0,s3
   1cf74:	fd5ff06f          	j	1cf48 <__fputwc+0xe8>
   1cf78:	01045783          	lhu	a5,16(s0)
   1cf7c:	fff00513          	li	a0,-1
   1cf80:	0407e793          	ori	a5,a5,64
   1cf84:	00f41823          	sh	a5,16(s0)
   1cf88:	fc1ff06f          	j	1cf48 <__fputwc+0xe8>

000000000001cf8c <_fputwc_r>:
   1cf8c:	01061783          	lh	a5,16(a2)
   1cf90:	03279713          	slli	a4,a5,0x32
   1cf94:	02074063          	bltz	a4,1cfb4 <_fputwc_r+0x28>
   1cf98:	0ac62703          	lw	a4,172(a2)
   1cf9c:	000026b7          	lui	a3,0x2
   1cfa0:	00d7e7b3          	or	a5,a5,a3
   1cfa4:	000026b7          	lui	a3,0x2
   1cfa8:	00d76733          	or	a4,a4,a3
   1cfac:	00f61823          	sh	a5,16(a2)
   1cfb0:	0ae62623          	sw	a4,172(a2)
   1cfb4:	eadff06f          	j	1ce60 <__fputwc>

000000000001cfb8 <fputwc>:
   1cfb8:	fe010113          	addi	sp,sp,-32
   1cfbc:	00813823          	sd	s0,16(sp)
   1cfc0:	00113c23          	sd	ra,24(sp)
   1cfc4:	7581b403          	ld	s0,1880(gp) # 24b38 <_impure_ptr>
   1cfc8:	00058613          	mv	a2,a1
   1cfcc:	00050593          	mv	a1,a0
   1cfd0:	00040663          	beqz	s0,1cfdc <fputwc+0x24>
   1cfd4:	05042783          	lw	a5,80(s0)
   1cfd8:	04078063          	beqz	a5,1d018 <fputwc+0x60>
   1cfdc:	01061783          	lh	a5,16(a2)
   1cfe0:	03279713          	slli	a4,a5,0x32
   1cfe4:	02074063          	bltz	a4,1d004 <fputwc+0x4c>
   1cfe8:	0ac62703          	lw	a4,172(a2)
   1cfec:	000026b7          	lui	a3,0x2
   1cff0:	00d7e7b3          	or	a5,a5,a3
   1cff4:	000026b7          	lui	a3,0x2
   1cff8:	00d76733          	or	a4,a4,a3
   1cffc:	00f61823          	sh	a5,16(a2)
   1d000:	0ae62623          	sw	a4,172(a2)
   1d004:	00040513          	mv	a0,s0
   1d008:	01013403          	ld	s0,16(sp)
   1d00c:	01813083          	ld	ra,24(sp)
   1d010:	02010113          	addi	sp,sp,32
   1d014:	e4dff06f          	j	1ce60 <__fputwc>
   1d018:	00a13023          	sd	a0,0(sp)
   1d01c:	00040513          	mv	a0,s0
   1d020:	00c13423          	sd	a2,8(sp)
   1d024:	d1cf60ef          	jal	ra,13540 <__sinit>
   1d028:	00813603          	ld	a2,8(sp)
   1d02c:	00013583          	ld	a1,0(sp)
   1d030:	fadff06f          	j	1cfdc <fputwc+0x24>

000000000001d034 <_fstat_r>:
   1d034:	ff010113          	addi	sp,sp,-16
   1d038:	00058713          	mv	a4,a1
   1d03c:	00813023          	sd	s0,0(sp)
   1d040:	00060593          	mv	a1,a2
   1d044:	00050413          	mv	s0,a0
   1d048:	00070513          	mv	a0,a4
   1d04c:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1d050:	00113423          	sd	ra,8(sp)
   1d054:	2f1020ef          	jal	ra,1fb44 <_fstat>
   1d058:	fff00793          	li	a5,-1
   1d05c:	00f50a63          	beq	a0,a5,1d070 <_fstat_r+0x3c>
   1d060:	00813083          	ld	ra,8(sp)
   1d064:	00013403          	ld	s0,0(sp)
   1d068:	01010113          	addi	sp,sp,16
   1d06c:	00008067          	ret
   1d070:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1d074:	fe0786e3          	beqz	a5,1d060 <_fstat_r+0x2c>
   1d078:	00813083          	ld	ra,8(sp)
   1d07c:	00f42023          	sw	a5,0(s0)
   1d080:	00013403          	ld	s0,0(sp)
   1d084:	01010113          	addi	sp,sp,16
   1d088:	00008067          	ret

000000000001d08c <__sfvwrite_r>:
   1d08c:	01063783          	ld	a5,16(a2)
   1d090:	28078863          	beqz	a5,1d320 <__sfvwrite_r+0x294>
   1d094:	0105d783          	lhu	a5,16(a1)
   1d098:	fa010113          	addi	sp,sp,-96
   1d09c:	04813823          	sd	s0,80(sp)
   1d0a0:	03413823          	sd	s4,48(sp)
   1d0a4:	03513423          	sd	s5,40(sp)
   1d0a8:	04113c23          	sd	ra,88(sp)
   1d0ac:	04913423          	sd	s1,72(sp)
   1d0b0:	05213023          	sd	s2,64(sp)
   1d0b4:	03313c23          	sd	s3,56(sp)
   1d0b8:	03613023          	sd	s6,32(sp)
   1d0bc:	01713c23          	sd	s7,24(sp)
   1d0c0:	01813823          	sd	s8,16(sp)
   1d0c4:	01913423          	sd	s9,8(sp)
   1d0c8:	01a13023          	sd	s10,0(sp)
   1d0cc:	0087f713          	andi	a4,a5,8
   1d0d0:	00060a13          	mv	s4,a2
   1d0d4:	00050a93          	mv	s5,a0
   1d0d8:	00058413          	mv	s0,a1
   1d0dc:	08070863          	beqz	a4,1d16c <__sfvwrite_r+0xe0>
   1d0e0:	0185b703          	ld	a4,24(a1)
   1d0e4:	08070463          	beqz	a4,1d16c <__sfvwrite_r+0xe0>
   1d0e8:	0027f713          	andi	a4,a5,2
   1d0ec:	000a3903          	ld	s2,0(s4)
   1d0f0:	08070e63          	beqz	a4,1d18c <__sfvwrite_r+0x100>
   1d0f4:	04043783          	ld	a5,64(s0)
   1d0f8:	03043583          	ld	a1,48(s0)
   1d0fc:	80000b37          	lui	s6,0x80000
   1d100:	00000993          	li	s3,0
   1d104:	00000493          	li	s1,0
   1d108:	c00b4b13          	xori	s6,s6,-1024
   1d10c:	00098613          	mv	a2,s3
   1d110:	000a8513          	mv	a0,s5
   1d114:	04048463          	beqz	s1,1d15c <__sfvwrite_r+0xd0>
   1d118:	00048693          	mv	a3,s1
   1d11c:	009b7463          	bgeu	s6,s1,1d124 <__sfvwrite_r+0x98>
   1d120:	000b0693          	mv	a3,s6
   1d124:	0006869b          	sext.w	a3,a3
   1d128:	000780e7          	jalr	a5
   1d12c:	1ea05063          	blez	a0,1d30c <__sfvwrite_r+0x280>
   1d130:	010a3783          	ld	a5,16(s4)
   1d134:	00a989b3          	add	s3,s3,a0
   1d138:	40a484b3          	sub	s1,s1,a0
   1d13c:	40a78533          	sub	a0,a5,a0
   1d140:	00aa3823          	sd	a0,16(s4)
   1d144:	16050e63          	beqz	a0,1d2c0 <__sfvwrite_r+0x234>
   1d148:	04043783          	ld	a5,64(s0)
   1d14c:	03043583          	ld	a1,48(s0)
   1d150:	00098613          	mv	a2,s3
   1d154:	000a8513          	mv	a0,s5
   1d158:	fc0490e3          	bnez	s1,1d118 <__sfvwrite_r+0x8c>
   1d15c:	00093983          	ld	s3,0(s2)
   1d160:	00893483          	ld	s1,8(s2)
   1d164:	01090913          	addi	s2,s2,16
   1d168:	fa5ff06f          	j	1d10c <__sfvwrite_r+0x80>
   1d16c:	00040593          	mv	a1,s0
   1d170:	000a8513          	mv	a0,s5
   1d174:	a9df50ef          	jal	ra,12c10 <__swsetup_r>
   1d178:	3c051663          	bnez	a0,1d544 <__sfvwrite_r+0x4b8>
   1d17c:	01045783          	lhu	a5,16(s0)
   1d180:	000a3903          	ld	s2,0(s4)
   1d184:	0027f713          	andi	a4,a5,2
   1d188:	f60716e3          	bnez	a4,1d0f4 <__sfvwrite_r+0x68>
   1d18c:	0017f713          	andi	a4,a5,1
   1d190:	0a071263          	bnez	a4,1d234 <__sfvwrite_r+0x1a8>
   1d194:	00c42483          	lw	s1,12(s0)
   1d198:	00043503          	ld	a0,0(s0)
   1d19c:	80000b37          	lui	s6,0x80000
   1d1a0:	ffeb4b93          	xori	s7,s6,-2
   1d1a4:	00000c13          	li	s8,0
   1d1a8:	00000993          	li	s3,0
   1d1ac:	fffb4b13          	not	s6,s6
   1d1b0:	00048c93          	mv	s9,s1
   1d1b4:	06098863          	beqz	s3,1d224 <__sfvwrite_r+0x198>
   1d1b8:	2007f713          	andi	a4,a5,512
   1d1bc:	1c070863          	beqz	a4,1d38c <__sfvwrite_r+0x300>
   1d1c0:	00048d13          	mv	s10,s1
   1d1c4:	2699f663          	bgeu	s3,s1,1d430 <__sfvwrite_r+0x3a4>
   1d1c8:	00098c93          	mv	s9,s3
   1d1cc:	00098d13          	mv	s10,s3
   1d1d0:	000d0613          	mv	a2,s10
   1d1d4:	000c0593          	mv	a1,s8
   1d1d8:	53c000ef          	jal	ra,1d714 <memmove>
   1d1dc:	00c42703          	lw	a4,12(s0)
   1d1e0:	00043783          	ld	a5,0(s0)
   1d1e4:	00098493          	mv	s1,s3
   1d1e8:	41970cbb          	subw	s9,a4,s9
   1d1ec:	01a787b3          	add	a5,a5,s10
   1d1f0:	01942623          	sw	s9,12(s0)
   1d1f4:	00f43023          	sd	a5,0(s0)
   1d1f8:	00000993          	li	s3,0
   1d1fc:	010a3603          	ld	a2,16(s4)
   1d200:	009c0c33          	add	s8,s8,s1
   1d204:	409604b3          	sub	s1,a2,s1
   1d208:	009a3823          	sd	s1,16(s4)
   1d20c:	0a048a63          	beqz	s1,1d2c0 <__sfvwrite_r+0x234>
   1d210:	00c42483          	lw	s1,12(s0)
   1d214:	00043503          	ld	a0,0(s0)
   1d218:	01045783          	lhu	a5,16(s0)
   1d21c:	00048c93          	mv	s9,s1
   1d220:	f8099ce3          	bnez	s3,1d1b8 <__sfvwrite_r+0x12c>
   1d224:	00093c03          	ld	s8,0(s2)
   1d228:	00893983          	ld	s3,8(s2)
   1d22c:	01090913          	addi	s2,s2,16
   1d230:	f81ff06f          	j	1d1b0 <__sfvwrite_r+0x124>
   1d234:	00000993          	li	s3,0
   1d238:	00000513          	li	a0,0
   1d23c:	00000c93          	li	s9,0
   1d240:	00000c13          	li	s8,0
   1d244:	0e0c0263          	beqz	s8,1d328 <__sfvwrite_r+0x29c>
   1d248:	0e050863          	beqz	a0,1d338 <__sfvwrite_r+0x2ac>
   1d24c:	00098b93          	mv	s7,s3
   1d250:	013c7463          	bgeu	s8,s3,1d258 <__sfvwrite_r+0x1cc>
   1d254:	000c0b93          	mv	s7,s8
   1d258:	00043503          	ld	a0,0(s0)
   1d25c:	01843783          	ld	a5,24(s0)
   1d260:	02042683          	lw	a3,32(s0)
   1d264:	000b8493          	mv	s1,s7
   1d268:	00a7f863          	bgeu	a5,a0,1d278 <__sfvwrite_r+0x1ec>
   1d26c:	00c42783          	lw	a5,12(s0)
   1d270:	00d78b3b          	addw	s6,a5,a3
   1d274:	0f7b4263          	blt	s6,s7,1d358 <__sfvwrite_r+0x2cc>
   1d278:	24dbca63          	blt	s7,a3,1d4cc <__sfvwrite_r+0x440>
   1d27c:	04043783          	ld	a5,64(s0)
   1d280:	03043583          	ld	a1,48(s0)
   1d284:	000c8613          	mv	a2,s9
   1d288:	000a8513          	mv	a0,s5
   1d28c:	000780e7          	jalr	a5
   1d290:	00050493          	mv	s1,a0
   1d294:	06a05c63          	blez	a0,1d30c <__sfvwrite_r+0x280>
   1d298:	0005079b          	sext.w	a5,a0
   1d29c:	40f989bb          	subw	s3,s3,a5
   1d2a0:	00100513          	li	a0,1
   1d2a4:	04098c63          	beqz	s3,1d2fc <__sfvwrite_r+0x270>
   1d2a8:	010a3783          	ld	a5,16(s4)
   1d2ac:	009c8cb3          	add	s9,s9,s1
   1d2b0:	409c0c33          	sub	s8,s8,s1
   1d2b4:	409784b3          	sub	s1,a5,s1
   1d2b8:	009a3823          	sd	s1,16(s4)
   1d2bc:	f80494e3          	bnez	s1,1d244 <__sfvwrite_r+0x1b8>
   1d2c0:	00000513          	li	a0,0
   1d2c4:	05813083          	ld	ra,88(sp)
   1d2c8:	05013403          	ld	s0,80(sp)
   1d2cc:	04813483          	ld	s1,72(sp)
   1d2d0:	04013903          	ld	s2,64(sp)
   1d2d4:	03813983          	ld	s3,56(sp)
   1d2d8:	03013a03          	ld	s4,48(sp)
   1d2dc:	02813a83          	ld	s5,40(sp)
   1d2e0:	02013b03          	ld	s6,32(sp)
   1d2e4:	01813b83          	ld	s7,24(sp)
   1d2e8:	01013c03          	ld	s8,16(sp)
   1d2ec:	00813c83          	ld	s9,8(sp)
   1d2f0:	00013d03          	ld	s10,0(sp)
   1d2f4:	06010113          	addi	sp,sp,96
   1d2f8:	00008067          	ret
   1d2fc:	00040593          	mv	a1,s0
   1d300:	000a8513          	mv	a0,s5
   1d304:	e01f50ef          	jal	ra,13104 <_fflush_r>
   1d308:	fa0500e3          	beqz	a0,1d2a8 <__sfvwrite_r+0x21c>
   1d30c:	01041783          	lh	a5,16(s0)
   1d310:	0407e793          	ori	a5,a5,64
   1d314:	00f41823          	sh	a5,16(s0)
   1d318:	fff00513          	li	a0,-1
   1d31c:	fa9ff06f          	j	1d2c4 <__sfvwrite_r+0x238>
   1d320:	00000513          	li	a0,0
   1d324:	00008067          	ret
   1d328:	00893c03          	ld	s8,8(s2)
   1d32c:	00093c83          	ld	s9,0(s2)
   1d330:	01090913          	addi	s2,s2,16
   1d334:	fe0c0ae3          	beqz	s8,1d328 <__sfvwrite_r+0x29c>
   1d338:	000c0613          	mv	a2,s8
   1d33c:	00a00593          	li	a1,10
   1d340:	000c8513          	mv	a0,s9
   1d344:	95cfa0ef          	jal	ra,174a0 <memchr>
   1d348:	1e050263          	beqz	a0,1d52c <__sfvwrite_r+0x4a0>
   1d34c:	00150513          	addi	a0,a0,1
   1d350:	419509bb          	subw	s3,a0,s9
   1d354:	ef9ff06f          	j	1d24c <__sfvwrite_r+0x1c0>
   1d358:	000c8593          	mv	a1,s9
   1d35c:	000b0613          	mv	a2,s6
   1d360:	3b4000ef          	jal	ra,1d714 <memmove>
   1d364:	00043783          	ld	a5,0(s0)
   1d368:	00040593          	mv	a1,s0
   1d36c:	000a8513          	mv	a0,s5
   1d370:	016787b3          	add	a5,a5,s6
   1d374:	00f43023          	sd	a5,0(s0)
   1d378:	d8df50ef          	jal	ra,13104 <_fflush_r>
   1d37c:	f80518e3          	bnez	a0,1d30c <__sfvwrite_r+0x280>
   1d380:	000b0793          	mv	a5,s6
   1d384:	000b0493          	mv	s1,s6
   1d388:	f15ff06f          	j	1d29c <__sfvwrite_r+0x210>
   1d38c:	01843783          	ld	a5,24(s0)
   1d390:	04a7ec63          	bltu	a5,a0,1d3e8 <__sfvwrite_r+0x35c>
   1d394:	02042c83          	lw	s9,32(s0)
   1d398:	0599e863          	bltu	s3,s9,1d3e8 <__sfvwrite_r+0x35c>
   1d39c:	00098513          	mv	a0,s3
   1d3a0:	013bf463          	bgeu	s7,s3,1d3a8 <__sfvwrite_r+0x31c>
   1d3a4:	000b0513          	mv	a0,s6
   1d3a8:	000c8593          	mv	a1,s9
   1d3ac:	0005051b          	sext.w	a0,a0
   1d3b0:	700040ef          	jal	ra,21ab0 <__divdi3>
   1d3b4:	00050593          	mv	a1,a0
   1d3b8:	000c8513          	mv	a0,s9
   1d3bc:	690040ef          	jal	ra,21a4c <__muldi3>
   1d3c0:	04043783          	ld	a5,64(s0)
   1d3c4:	03043583          	ld	a1,48(s0)
   1d3c8:	0005069b          	sext.w	a3,a0
   1d3cc:	000c0613          	mv	a2,s8
   1d3d0:	000a8513          	mv	a0,s5
   1d3d4:	000780e7          	jalr	a5
   1d3d8:	00050493          	mv	s1,a0
   1d3dc:	f2a058e3          	blez	a0,1d30c <__sfvwrite_r+0x280>
   1d3e0:	409989b3          	sub	s3,s3,s1
   1d3e4:	e19ff06f          	j	1d1fc <__sfvwrite_r+0x170>
   1d3e8:	0099f463          	bgeu	s3,s1,1d3f0 <__sfvwrite_r+0x364>
   1d3ec:	00098493          	mv	s1,s3
   1d3f0:	00048613          	mv	a2,s1
   1d3f4:	000c0593          	mv	a1,s8
   1d3f8:	31c000ef          	jal	ra,1d714 <memmove>
   1d3fc:	00c42783          	lw	a5,12(s0)
   1d400:	00043703          	ld	a4,0(s0)
   1d404:	409786bb          	subw	a3,a5,s1
   1d408:	00970733          	add	a4,a4,s1
   1d40c:	00d42623          	sw	a3,12(s0)
   1d410:	00e43023          	sd	a4,0(s0)
   1d414:	fc0696e3          	bnez	a3,1d3e0 <__sfvwrite_r+0x354>
   1d418:	00040593          	mv	a1,s0
   1d41c:	000a8513          	mv	a0,s5
   1d420:	ce5f50ef          	jal	ra,13104 <_fflush_r>
   1d424:	ee0514e3          	bnez	a0,1d30c <__sfvwrite_r+0x280>
   1d428:	409989b3          	sub	s3,s3,s1
   1d42c:	dd1ff06f          	j	1d1fc <__sfvwrite_r+0x170>
   1d430:	4807f713          	andi	a4,a5,1152
   1d434:	d8070ee3          	beqz	a4,1d1d0 <__sfvwrite_r+0x144>
   1d438:	02042483          	lw	s1,32(s0)
   1d43c:	01843583          	ld	a1,24(s0)
   1d440:	00198713          	addi	a4,s3,1
   1d444:	0014969b          	slliw	a3,s1,0x1
   1d448:	009686bb          	addw	a3,a3,s1
   1d44c:	40b50533          	sub	a0,a0,a1
   1d450:	01f6d49b          	srliw	s1,a3,0x1f
   1d454:	00050d1b          	sext.w	s10,a0
   1d458:	00d484bb          	addw	s1,s1,a3
   1d45c:	4014d49b          	sraiw	s1,s1,0x1
   1d460:	01a70733          	add	a4,a4,s10
   1d464:	00e4f663          	bgeu	s1,a4,1d470 <__sfvwrite_r+0x3e4>
   1d468:	0019849b          	addiw	s1,s3,1
   1d46c:	00a484bb          	addw	s1,s1,a0
   1d470:	4007f793          	andi	a5,a5,1024
   1d474:	08078263          	beqz	a5,1d4f8 <__sfvwrite_r+0x46c>
   1d478:	00048593          	mv	a1,s1
   1d47c:	000a8513          	mv	a0,s5
   1d480:	f9cf90ef          	jal	ra,16c1c <_malloc_r>
   1d484:	00050c93          	mv	s9,a0
   1d488:	0a050663          	beqz	a0,1d534 <__sfvwrite_r+0x4a8>
   1d48c:	01843583          	ld	a1,24(s0)
   1d490:	000d0613          	mv	a2,s10
   1d494:	164000ef          	jal	ra,1d5f8 <memcpy>
   1d498:	01045783          	lhu	a5,16(s0)
   1d49c:	b7f7f793          	andi	a5,a5,-1153
   1d4a0:	0807e793          	ori	a5,a5,128
   1d4a4:	00f41823          	sh	a5,16(s0)
   1d4a8:	01ac8533          	add	a0,s9,s10
   1d4ac:	41a487bb          	subw	a5,s1,s10
   1d4b0:	01943c23          	sd	s9,24(s0)
   1d4b4:	00a43023          	sd	a0,0(s0)
   1d4b8:	02942023          	sw	s1,32(s0)
   1d4bc:	00098c93          	mv	s9,s3
   1d4c0:	00f42623          	sw	a5,12(s0)
   1d4c4:	00098d13          	mv	s10,s3
   1d4c8:	d09ff06f          	j	1d1d0 <__sfvwrite_r+0x144>
   1d4cc:	000b8613          	mv	a2,s7
   1d4d0:	000c8593          	mv	a1,s9
   1d4d4:	240000ef          	jal	ra,1d714 <memmove>
   1d4d8:	00c42683          	lw	a3,12(s0)
   1d4dc:	00043703          	ld	a4,0(s0)
   1d4e0:	000b879b          	sext.w	a5,s7
   1d4e4:	417686bb          	subw	a3,a3,s7
   1d4e8:	01770733          	add	a4,a4,s7
   1d4ec:	00d42623          	sw	a3,12(s0)
   1d4f0:	00e43023          	sd	a4,0(s0)
   1d4f4:	da9ff06f          	j	1d29c <__sfvwrite_r+0x210>
   1d4f8:	00048613          	mv	a2,s1
   1d4fc:	000a8513          	mv	a0,s5
   1d500:	390000ef          	jal	ra,1d890 <_realloc_r>
   1d504:	00050c93          	mv	s9,a0
   1d508:	fa0510e3          	bnez	a0,1d4a8 <__sfvwrite_r+0x41c>
   1d50c:	01843583          	ld	a1,24(s0)
   1d510:	000a8513          	mv	a0,s5
   1d514:	a04f60ef          	jal	ra,13718 <_free_r>
   1d518:	01041783          	lh	a5,16(s0)
   1d51c:	00c00713          	li	a4,12
   1d520:	00eaa023          	sw	a4,0(s5)
   1d524:	f7f7f793          	andi	a5,a5,-129
   1d528:	de9ff06f          	j	1d310 <__sfvwrite_r+0x284>
   1d52c:	001c099b          	addiw	s3,s8,1
   1d530:	d1dff06f          	j	1d24c <__sfvwrite_r+0x1c0>
   1d534:	00c00713          	li	a4,12
   1d538:	01041783          	lh	a5,16(s0)
   1d53c:	00eaa023          	sw	a4,0(s5)
   1d540:	dd1ff06f          	j	1d310 <__sfvwrite_r+0x284>
   1d544:	fff00513          	li	a0,-1
   1d548:	d7dff06f          	j	1d2c4 <__sfvwrite_r+0x238>

000000000001d54c <_isatty_r>:
   1d54c:	ff010113          	addi	sp,sp,-16
   1d550:	00813023          	sd	s0,0(sp)
   1d554:	00050413          	mv	s0,a0
   1d558:	00058513          	mv	a0,a1
   1d55c:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1d560:	00113423          	sd	ra,8(sp)
   1d564:	65c020ef          	jal	ra,1fbc0 <_isatty>
   1d568:	fff00793          	li	a5,-1
   1d56c:	00f50a63          	beq	a0,a5,1d580 <_isatty_r+0x34>
   1d570:	00813083          	ld	ra,8(sp)
   1d574:	00013403          	ld	s0,0(sp)
   1d578:	01010113          	addi	sp,sp,16
   1d57c:	00008067          	ret
   1d580:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1d584:	fe0786e3          	beqz	a5,1d570 <_isatty_r+0x24>
   1d588:	00813083          	ld	ra,8(sp)
   1d58c:	00f42023          	sw	a5,0(s0)
   1d590:	00013403          	ld	s0,0(sp)
   1d594:	01010113          	addi	sp,sp,16
   1d598:	00008067          	ret

000000000001d59c <_lseek_r>:
   1d59c:	ff010113          	addi	sp,sp,-16
   1d5a0:	00058713          	mv	a4,a1
   1d5a4:	00813023          	sd	s0,0(sp)
   1d5a8:	00060593          	mv	a1,a2
   1d5ac:	00050413          	mv	s0,a0
   1d5b0:	00068613          	mv	a2,a3
   1d5b4:	00070513          	mv	a0,a4
   1d5b8:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1d5bc:	00113423          	sd	ra,8(sp)
   1d5c0:	664020ef          	jal	ra,1fc24 <_lseek>
   1d5c4:	fff00793          	li	a5,-1
   1d5c8:	00f50a63          	beq	a0,a5,1d5dc <_lseek_r+0x40>
   1d5cc:	00813083          	ld	ra,8(sp)
   1d5d0:	00013403          	ld	s0,0(sp)
   1d5d4:	01010113          	addi	sp,sp,16
   1d5d8:	00008067          	ret
   1d5dc:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1d5e0:	fe0786e3          	beqz	a5,1d5cc <_lseek_r+0x30>
   1d5e4:	00813083          	ld	ra,8(sp)
   1d5e8:	00f42023          	sw	a5,0(s0)
   1d5ec:	00013403          	ld	s0,0(sp)
   1d5f0:	01010113          	addi	sp,sp,16
   1d5f4:	00008067          	ret

000000000001d5f8 <memcpy>:
   1d5f8:	00a5c7b3          	xor	a5,a1,a0
   1d5fc:	0077f793          	andi	a5,a5,7
   1d600:	00c508b3          	add	a7,a0,a2
   1d604:	06079263          	bnez	a5,1d668 <memcpy+0x70>
   1d608:	00700793          	li	a5,7
   1d60c:	04c7fe63          	bgeu	a5,a2,1d668 <memcpy+0x70>
   1d610:	00757793          	andi	a5,a0,7
   1d614:	00050713          	mv	a4,a0
   1d618:	06079863          	bnez	a5,1d688 <memcpy+0x90>
   1d61c:	ff88f613          	andi	a2,a7,-8
   1d620:	fc060793          	addi	a5,a2,-64
   1d624:	08f76c63          	bltu	a4,a5,1d6bc <memcpy+0xc4>
   1d628:	02c77c63          	bgeu	a4,a2,1d660 <memcpy+0x68>
   1d62c:	00058693          	mv	a3,a1
   1d630:	00070793          	mv	a5,a4
   1d634:	0006b803          	ld	a6,0(a3) # 2000 <register_fini-0xe0b0>
   1d638:	00878793          	addi	a5,a5,8
   1d63c:	00868693          	addi	a3,a3,8
   1d640:	ff07bc23          	sd	a6,-8(a5)
   1d644:	fec7e8e3          	bltu	a5,a2,1d634 <memcpy+0x3c>
   1d648:	fff60793          	addi	a5,a2,-1
   1d64c:	40e787b3          	sub	a5,a5,a4
   1d650:	ff87f793          	andi	a5,a5,-8
   1d654:	00878793          	addi	a5,a5,8
   1d658:	00f70733          	add	a4,a4,a5
   1d65c:	00f585b3          	add	a1,a1,a5
   1d660:	01176863          	bltu	a4,a7,1d670 <memcpy+0x78>
   1d664:	00008067          	ret
   1d668:	00050713          	mv	a4,a0
   1d66c:	ff157ce3          	bgeu	a0,a7,1d664 <memcpy+0x6c>
   1d670:	0005c783          	lbu	a5,0(a1)
   1d674:	00170713          	addi	a4,a4,1
   1d678:	00158593          	addi	a1,a1,1
   1d67c:	fef70fa3          	sb	a5,-1(a4)
   1d680:	ff1768e3          	bltu	a4,a7,1d670 <memcpy+0x78>
   1d684:	00008067          	ret
   1d688:	0005c683          	lbu	a3,0(a1)
   1d68c:	00170713          	addi	a4,a4,1
   1d690:	00777793          	andi	a5,a4,7
   1d694:	fed70fa3          	sb	a3,-1(a4)
   1d698:	00158593          	addi	a1,a1,1
   1d69c:	f80780e3          	beqz	a5,1d61c <memcpy+0x24>
   1d6a0:	0005c683          	lbu	a3,0(a1)
   1d6a4:	00170713          	addi	a4,a4,1
   1d6a8:	00777793          	andi	a5,a4,7
   1d6ac:	fed70fa3          	sb	a3,-1(a4)
   1d6b0:	00158593          	addi	a1,a1,1
   1d6b4:	fc079ae3          	bnez	a5,1d688 <memcpy+0x90>
   1d6b8:	f65ff06f          	j	1d61c <memcpy+0x24>
   1d6bc:	0085b683          	ld	a3,8(a1)
   1d6c0:	0005b283          	ld	t0,0(a1)
   1d6c4:	0105bf83          	ld	t6,16(a1)
   1d6c8:	0185bf03          	ld	t5,24(a1)
   1d6cc:	0205be83          	ld	t4,32(a1)
   1d6d0:	0285be03          	ld	t3,40(a1)
   1d6d4:	0305b303          	ld	t1,48(a1)
   1d6d8:	0385b803          	ld	a6,56(a1)
   1d6dc:	00d73423          	sd	a3,8(a4)
   1d6e0:	0405b683          	ld	a3,64(a1)
   1d6e4:	00573023          	sd	t0,0(a4)
   1d6e8:	01f73823          	sd	t6,16(a4)
   1d6ec:	01e73c23          	sd	t5,24(a4)
   1d6f0:	03d73023          	sd	t4,32(a4)
   1d6f4:	03c73423          	sd	t3,40(a4)
   1d6f8:	02673823          	sd	t1,48(a4)
   1d6fc:	03073c23          	sd	a6,56(a4)
   1d700:	04d73023          	sd	a3,64(a4)
   1d704:	04870713          	addi	a4,a4,72
   1d708:	04858593          	addi	a1,a1,72
   1d70c:	faf768e3          	bltu	a4,a5,1d6bc <memcpy+0xc4>
   1d710:	f19ff06f          	j	1d628 <memcpy+0x30>

000000000001d714 <memmove>:
   1d714:	02a5f663          	bgeu	a1,a0,1d740 <memmove+0x2c>
   1d718:	00c587b3          	add	a5,a1,a2
   1d71c:	02f57263          	bgeu	a0,a5,1d740 <memmove+0x2c>
   1d720:	00c50733          	add	a4,a0,a2
   1d724:	0e060a63          	beqz	a2,1d818 <memmove+0x104>
   1d728:	fff7c683          	lbu	a3,-1(a5)
   1d72c:	fff78793          	addi	a5,a5,-1
   1d730:	fff70713          	addi	a4,a4,-1
   1d734:	00d70023          	sb	a3,0(a4)
   1d738:	fef598e3          	bne	a1,a5,1d728 <memmove+0x14>
   1d73c:	00008067          	ret
   1d740:	01f00793          	li	a5,31
   1d744:	02c7e863          	bltu	a5,a2,1d774 <memmove+0x60>
   1d748:	00050793          	mv	a5,a0
   1d74c:	fff60693          	addi	a3,a2,-1
   1d750:	0c060c63          	beqz	a2,1d828 <memmove+0x114>
   1d754:	00168693          	addi	a3,a3,1
   1d758:	00d786b3          	add	a3,a5,a3
   1d75c:	0005c703          	lbu	a4,0(a1)
   1d760:	00178793          	addi	a5,a5,1
   1d764:	00158593          	addi	a1,a1,1
   1d768:	fee78fa3          	sb	a4,-1(a5)
   1d76c:	fed798e3          	bne	a5,a3,1d75c <memmove+0x48>
   1d770:	00008067          	ret
   1d774:	00a5e7b3          	or	a5,a1,a0
   1d778:	0077f793          	andi	a5,a5,7
   1d77c:	0a079063          	bnez	a5,1d81c <memmove+0x108>
   1d780:	fe060893          	addi	a7,a2,-32
   1d784:	fe08f893          	andi	a7,a7,-32
   1d788:	02088893          	addi	a7,a7,32
   1d78c:	01150833          	add	a6,a0,a7
   1d790:	00058713          	mv	a4,a1
   1d794:	00050793          	mv	a5,a0
   1d798:	00073683          	ld	a3,0(a4)
   1d79c:	02070713          	addi	a4,a4,32
   1d7a0:	02078793          	addi	a5,a5,32
   1d7a4:	fed7b023          	sd	a3,-32(a5)
   1d7a8:	fe873683          	ld	a3,-24(a4)
   1d7ac:	fed7b423          	sd	a3,-24(a5)
   1d7b0:	ff073683          	ld	a3,-16(a4)
   1d7b4:	fed7b823          	sd	a3,-16(a5)
   1d7b8:	ff873683          	ld	a3,-8(a4)
   1d7bc:	fed7bc23          	sd	a3,-8(a5)
   1d7c0:	fcf81ce3          	bne	a6,a5,1d798 <memmove+0x84>
   1d7c4:	01867713          	andi	a4,a2,24
   1d7c8:	011585b3          	add	a1,a1,a7
   1d7cc:	01f67813          	andi	a6,a2,31
   1d7d0:	04070e63          	beqz	a4,1d82c <memmove+0x118>
   1d7d4:	00058713          	mv	a4,a1
   1d7d8:	00078893          	mv	a7,a5
   1d7dc:	00700e13          	li	t3,7
   1d7e0:	00073303          	ld	t1,0(a4)
   1d7e4:	00870713          	addi	a4,a4,8
   1d7e8:	40e806b3          	sub	a3,a6,a4
   1d7ec:	0068b023          	sd	t1,0(a7)
   1d7f0:	00d586b3          	add	a3,a1,a3
   1d7f4:	00888893          	addi	a7,a7,8
   1d7f8:	fede64e3          	bltu	t3,a3,1d7e0 <memmove+0xcc>
   1d7fc:	ff880713          	addi	a4,a6,-8 # 7feffff8 <__BSS_END__+0x7fedb418>
   1d800:	ff877713          	andi	a4,a4,-8
   1d804:	00870713          	addi	a4,a4,8
   1d808:	00767613          	andi	a2,a2,7
   1d80c:	00e787b3          	add	a5,a5,a4
   1d810:	00e585b3          	add	a1,a1,a4
   1d814:	f39ff06f          	j	1d74c <memmove+0x38>
   1d818:	00008067          	ret
   1d81c:	fff60693          	addi	a3,a2,-1
   1d820:	00050793          	mv	a5,a0
   1d824:	f31ff06f          	j	1d754 <memmove+0x40>
   1d828:	00008067          	ret
   1d82c:	00080613          	mv	a2,a6
   1d830:	f1dff06f          	j	1d74c <memmove+0x38>

000000000001d834 <_read_r>:
   1d834:	ff010113          	addi	sp,sp,-16
   1d838:	00058713          	mv	a4,a1
   1d83c:	00813023          	sd	s0,0(sp)
   1d840:	00060593          	mv	a1,a2
   1d844:	00050413          	mv	s0,a0
   1d848:	00068613          	mv	a2,a3
   1d84c:	00070513          	mv	a0,a4
   1d850:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1d854:	00113423          	sd	ra,8(sp)
   1d858:	41c020ef          	jal	ra,1fc74 <_read>
   1d85c:	fff00793          	li	a5,-1
   1d860:	00f50a63          	beq	a0,a5,1d874 <_read_r+0x40>
   1d864:	00813083          	ld	ra,8(sp)
   1d868:	00013403          	ld	s0,0(sp)
   1d86c:	01010113          	addi	sp,sp,16
   1d870:	00008067          	ret
   1d874:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1d878:	fe0786e3          	beqz	a5,1d864 <_read_r+0x30>
   1d87c:	00813083          	ld	ra,8(sp)
   1d880:	00f42023          	sw	a5,0(s0)
   1d884:	00013403          	ld	s0,0(sp)
   1d888:	01010113          	addi	sp,sp,16
   1d88c:	00008067          	ret

000000000001d890 <_realloc_r>:
   1d890:	fb010113          	addi	sp,sp,-80
   1d894:	03213823          	sd	s2,48(sp)
   1d898:	04113423          	sd	ra,72(sp)
   1d89c:	04813023          	sd	s0,64(sp)
   1d8a0:	02913c23          	sd	s1,56(sp)
   1d8a4:	03313423          	sd	s3,40(sp)
   1d8a8:	03413023          	sd	s4,32(sp)
   1d8ac:	01513c23          	sd	s5,24(sp)
   1d8b0:	01613823          	sd	s6,16(sp)
   1d8b4:	01713423          	sd	s7,8(sp)
   1d8b8:	01813023          	sd	s8,0(sp)
   1d8bc:	00060913          	mv	s2,a2
   1d8c0:	1c058663          	beqz	a1,1da8c <_realloc_r+0x1fc>
   1d8c4:	00058413          	mv	s0,a1
   1d8c8:	00050a93          	mv	s5,a0
   1d8cc:	ca5f90ef          	jal	ra,17570 <__malloc_lock>
   1d8d0:	ff843703          	ld	a4,-8(s0)
   1d8d4:	01790493          	addi	s1,s2,23
   1d8d8:	02e00793          	li	a5,46
   1d8dc:	ff040b13          	addi	s6,s0,-16
   1d8e0:	ffc77a13          	andi	s4,a4,-4
   1d8e4:	0e97fa63          	bgeu	a5,s1,1d9d8 <_realloc_r+0x148>
   1d8e8:	800007b7          	lui	a5,0x80000
   1d8ec:	ff04f493          	andi	s1,s1,-16
   1d8f0:	fff7c793          	not	a5,a5
   1d8f4:	0e97e663          	bltu	a5,s1,1d9e0 <_realloc_r+0x150>
   1d8f8:	0f24e463          	bltu	s1,s2,1d9e0 <_realloc_r+0x150>
   1d8fc:	014b09b3          	add	s3,s6,s4
   1d900:	129a5c63          	bge	s4,s1,1da38 <_realloc_r+0x1a8>
   1d904:	00007b97          	auipc	s7,0x7
   1d908:	9e4b8b93          	addi	s7,s7,-1564 # 242e8 <__malloc_av_>
   1d90c:	010bb683          	ld	a3,16(s7)
   1d910:	0089b783          	ld	a5,8(s3)
   1d914:	1d368e63          	beq	a3,s3,1daf0 <_realloc_r+0x260>
   1d918:	ffe7f693          	andi	a3,a5,-2
   1d91c:	00d986b3          	add	a3,s3,a3
   1d920:	0086b683          	ld	a3,8(a3)
   1d924:	0016f693          	andi	a3,a3,1
   1d928:	14069463          	bnez	a3,1da70 <_realloc_r+0x1e0>
   1d92c:	ffc7f793          	andi	a5,a5,-4
   1d930:	00fa06b3          	add	a3,s4,a5
   1d934:	0e96d663          	bge	a3,s1,1da20 <_realloc_r+0x190>
   1d938:	00177713          	andi	a4,a4,1
   1d93c:	02071463          	bnez	a4,1d964 <_realloc_r+0xd4>
   1d940:	ff043c03          	ld	s8,-16(s0)
   1d944:	418b0c33          	sub	s8,s6,s8
   1d948:	008c3703          	ld	a4,8(s8)
   1d94c:	ffc77713          	andi	a4,a4,-4
   1d950:	00f707b3          	add	a5,a4,a5
   1d954:	01478bb3          	add	s7,a5,s4
   1d958:	349bd863          	bge	s7,s1,1dca8 <_realloc_r+0x418>
   1d95c:	00ea0bb3          	add	s7,s4,a4
   1d960:	2c9bd263          	bge	s7,s1,1dc24 <_realloc_r+0x394>
   1d964:	00090593          	mv	a1,s2
   1d968:	000a8513          	mv	a0,s5
   1d96c:	ab0f90ef          	jal	ra,16c1c <_malloc_r>
   1d970:	00050913          	mv	s2,a0
   1d974:	04050c63          	beqz	a0,1d9cc <_realloc_r+0x13c>
   1d978:	ff843783          	ld	a5,-8(s0)
   1d97c:	ff050713          	addi	a4,a0,-16
   1d980:	ffe7f793          	andi	a5,a5,-2
   1d984:	00fb07b3          	add	a5,s6,a5
   1d988:	28e78463          	beq	a5,a4,1dc10 <_realloc_r+0x380>
   1d98c:	ff8a0613          	addi	a2,s4,-8
   1d990:	04800793          	li	a5,72
   1d994:	30c7e463          	bltu	a5,a2,1dc9c <_realloc_r+0x40c>
   1d998:	02700713          	li	a4,39
   1d99c:	00043683          	ld	a3,0(s0)
   1d9a0:	20c76c63          	bltu	a4,a2,1dbb8 <_realloc_r+0x328>
   1d9a4:	00050793          	mv	a5,a0
   1d9a8:	00040713          	mv	a4,s0
   1d9ac:	00d7b023          	sd	a3,0(a5) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdb420>
   1d9b0:	00873683          	ld	a3,8(a4)
   1d9b4:	00d7b423          	sd	a3,8(a5)
   1d9b8:	01073703          	ld	a4,16(a4)
   1d9bc:	00e7b823          	sd	a4,16(a5)
   1d9c0:	00040593          	mv	a1,s0
   1d9c4:	000a8513          	mv	a0,s5
   1d9c8:	d51f50ef          	jal	ra,13718 <_free_r>
   1d9cc:	000a8513          	mv	a0,s5
   1d9d0:	ba5f90ef          	jal	ra,17574 <__malloc_unlock>
   1d9d4:	0180006f          	j	1d9ec <_realloc_r+0x15c>
   1d9d8:	02000493          	li	s1,32
   1d9dc:	f324f0e3          	bgeu	s1,s2,1d8fc <_realloc_r+0x6c>
   1d9e0:	00c00793          	li	a5,12
   1d9e4:	00faa023          	sw	a5,0(s5)
   1d9e8:	00000913          	li	s2,0
   1d9ec:	04813083          	ld	ra,72(sp)
   1d9f0:	04013403          	ld	s0,64(sp)
   1d9f4:	03813483          	ld	s1,56(sp)
   1d9f8:	02813983          	ld	s3,40(sp)
   1d9fc:	02013a03          	ld	s4,32(sp)
   1da00:	01813a83          	ld	s5,24(sp)
   1da04:	01013b03          	ld	s6,16(sp)
   1da08:	00813b83          	ld	s7,8(sp)
   1da0c:	00013c03          	ld	s8,0(sp)
   1da10:	00090513          	mv	a0,s2
   1da14:	03013903          	ld	s2,48(sp)
   1da18:	05010113          	addi	sp,sp,80
   1da1c:	00008067          	ret
   1da20:	0189b783          	ld	a5,24(s3)
   1da24:	0109b703          	ld	a4,16(s3)
   1da28:	00068a13          	mv	s4,a3
   1da2c:	00db09b3          	add	s3,s6,a3
   1da30:	00f73c23          	sd	a5,24(a4)
   1da34:	00e7b823          	sd	a4,16(a5)
   1da38:	008b3783          	ld	a5,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb428>
   1da3c:	409a0733          	sub	a4,s4,s1
   1da40:	01f00693          	li	a3,31
   1da44:	0017f793          	andi	a5,a5,1
   1da48:	06e6ec63          	bltu	a3,a4,1dac0 <_realloc_r+0x230>
   1da4c:	00fa67b3          	or	a5,s4,a5
   1da50:	00fb3423          	sd	a5,8(s6)
   1da54:	0089b783          	ld	a5,8(s3)
   1da58:	0017e793          	ori	a5,a5,1
   1da5c:	00f9b423          	sd	a5,8(s3)
   1da60:	000a8513          	mv	a0,s5
   1da64:	b11f90ef          	jal	ra,17574 <__malloc_unlock>
   1da68:	00040913          	mv	s2,s0
   1da6c:	f81ff06f          	j	1d9ec <_realloc_r+0x15c>
   1da70:	00177713          	andi	a4,a4,1
   1da74:	ee0718e3          	bnez	a4,1d964 <_realloc_r+0xd4>
   1da78:	ff043c03          	ld	s8,-16(s0)
   1da7c:	418b0c33          	sub	s8,s6,s8
   1da80:	008c3703          	ld	a4,8(s8)
   1da84:	ffc77713          	andi	a4,a4,-4
   1da88:	ed5ff06f          	j	1d95c <_realloc_r+0xcc>
   1da8c:	04013403          	ld	s0,64(sp)
   1da90:	04813083          	ld	ra,72(sp)
   1da94:	03813483          	ld	s1,56(sp)
   1da98:	03013903          	ld	s2,48(sp)
   1da9c:	02813983          	ld	s3,40(sp)
   1daa0:	02013a03          	ld	s4,32(sp)
   1daa4:	01813a83          	ld	s5,24(sp)
   1daa8:	01013b03          	ld	s6,16(sp)
   1daac:	00813b83          	ld	s7,8(sp)
   1dab0:	00013c03          	ld	s8,0(sp)
   1dab4:	00060593          	mv	a1,a2
   1dab8:	05010113          	addi	sp,sp,80
   1dabc:	960f906f          	j	16c1c <_malloc_r>
   1dac0:	00f4e7b3          	or	a5,s1,a5
   1dac4:	00fb3423          	sd	a5,8(s6)
   1dac8:	009b05b3          	add	a1,s6,s1
   1dacc:	00176713          	ori	a4,a4,1
   1dad0:	00e5b423          	sd	a4,8(a1)
   1dad4:	0089b783          	ld	a5,8(s3)
   1dad8:	01058593          	addi	a1,a1,16
   1dadc:	000a8513          	mv	a0,s5
   1dae0:	0017e793          	ori	a5,a5,1
   1dae4:	00f9b423          	sd	a5,8(s3)
   1dae8:	c31f50ef          	jal	ra,13718 <_free_r>
   1daec:	f75ff06f          	j	1da60 <_realloc_r+0x1d0>
   1daf0:	ffc7f793          	andi	a5,a5,-4
   1daf4:	00fa06b3          	add	a3,s4,a5
   1daf8:	02048613          	addi	a2,s1,32
   1dafc:	0ec6d063          	bge	a3,a2,1dbdc <_realloc_r+0x34c>
   1db00:	00177713          	andi	a4,a4,1
   1db04:	e60710e3          	bnez	a4,1d964 <_realloc_r+0xd4>
   1db08:	ff043c03          	ld	s8,-16(s0)
   1db0c:	418b0c33          	sub	s8,s6,s8
   1db10:	008c3703          	ld	a4,8(s8)
   1db14:	ffc77713          	andi	a4,a4,-4
   1db18:	00f707b3          	add	a5,a4,a5
   1db1c:	014789b3          	add	s3,a5,s4
   1db20:	e2c9cee3          	blt	s3,a2,1d95c <_realloc_r+0xcc>
   1db24:	018c3783          	ld	a5,24(s8)
   1db28:	010c3703          	ld	a4,16(s8)
   1db2c:	ff8a0613          	addi	a2,s4,-8
   1db30:	04800693          	li	a3,72
   1db34:	00f73c23          	sd	a5,24(a4)
   1db38:	00e7b823          	sd	a4,16(a5)
   1db3c:	010c0913          	addi	s2,s8,16
   1db40:	26c6ec63          	bltu	a3,a2,1ddb8 <_realloc_r+0x528>
   1db44:	02700593          	li	a1,39
   1db48:	00043703          	ld	a4,0(s0)
   1db4c:	00090793          	mv	a5,s2
   1db50:	02c5f263          	bgeu	a1,a2,1db74 <_realloc_r+0x2e4>
   1db54:	00ec3823          	sd	a4,16(s8)
   1db58:	00843703          	ld	a4,8(s0)
   1db5c:	03700793          	li	a5,55
   1db60:	00ec3c23          	sd	a4,24(s8)
   1db64:	26c7e263          	bltu	a5,a2,1ddc8 <_realloc_r+0x538>
   1db68:	01043703          	ld	a4,16(s0)
   1db6c:	020c0793          	addi	a5,s8,32
   1db70:	01040413          	addi	s0,s0,16
   1db74:	00e7b023          	sd	a4,0(a5)
   1db78:	00843703          	ld	a4,8(s0)
   1db7c:	00e7b423          	sd	a4,8(a5)
   1db80:	01043703          	ld	a4,16(s0)
   1db84:	00e7b823          	sd	a4,16(a5)
   1db88:	009c0733          	add	a4,s8,s1
   1db8c:	409987b3          	sub	a5,s3,s1
   1db90:	00ebb823          	sd	a4,16(s7)
   1db94:	0017e793          	ori	a5,a5,1
   1db98:	00f73423          	sd	a5,8(a4)
   1db9c:	008c3783          	ld	a5,8(s8)
   1dba0:	000a8513          	mv	a0,s5
   1dba4:	0017f793          	andi	a5,a5,1
   1dba8:	0097e4b3          	or	s1,a5,s1
   1dbac:	009c3423          	sd	s1,8(s8)
   1dbb0:	9c5f90ef          	jal	ra,17574 <__malloc_unlock>
   1dbb4:	e39ff06f          	j	1d9ec <_realloc_r+0x15c>
   1dbb8:	00d53023          	sd	a3,0(a0)
   1dbbc:	00843683          	ld	a3,8(s0)
   1dbc0:	03700713          	li	a4,55
   1dbc4:	00d53423          	sd	a3,8(a0)
   1dbc8:	16c76e63          	bltu	a4,a2,1dd44 <_realloc_r+0x4b4>
   1dbcc:	01043683          	ld	a3,16(s0)
   1dbd0:	01040713          	addi	a4,s0,16
   1dbd4:	01050793          	addi	a5,a0,16
   1dbd8:	dd5ff06f          	j	1d9ac <_realloc_r+0x11c>
   1dbdc:	009b0b33          	add	s6,s6,s1
   1dbe0:	409687b3          	sub	a5,a3,s1
   1dbe4:	016bb823          	sd	s6,16(s7)
   1dbe8:	0017e793          	ori	a5,a5,1
   1dbec:	00fb3423          	sd	a5,8(s6)
   1dbf0:	ff843783          	ld	a5,-8(s0)
   1dbf4:	000a8513          	mv	a0,s5
   1dbf8:	00040913          	mv	s2,s0
   1dbfc:	0017f793          	andi	a5,a5,1
   1dc00:	0097e4b3          	or	s1,a5,s1
   1dc04:	fe943c23          	sd	s1,-8(s0)
   1dc08:	96df90ef          	jal	ra,17574 <__malloc_unlock>
   1dc0c:	de1ff06f          	j	1d9ec <_realloc_r+0x15c>
   1dc10:	ff853783          	ld	a5,-8(a0)
   1dc14:	ffc7f793          	andi	a5,a5,-4
   1dc18:	00fa0a33          	add	s4,s4,a5
   1dc1c:	014b09b3          	add	s3,s6,s4
   1dc20:	e19ff06f          	j	1da38 <_realloc_r+0x1a8>
   1dc24:	018c3783          	ld	a5,24(s8)
   1dc28:	010c3703          	ld	a4,16(s8)
   1dc2c:	ff8a0613          	addi	a2,s4,-8
   1dc30:	04800693          	li	a3,72
   1dc34:	00f73c23          	sd	a5,24(a4)
   1dc38:	00e7b823          	sd	a4,16(a5)
   1dc3c:	010c0913          	addi	s2,s8,16
   1dc40:	017c09b3          	add	s3,s8,s7
   1dc44:	0ec6e263          	bltu	a3,a2,1dd28 <_realloc_r+0x498>
   1dc48:	02700593          	li	a1,39
   1dc4c:	00043703          	ld	a4,0(s0)
   1dc50:	00090793          	mv	a5,s2
   1dc54:	02c5f263          	bgeu	a1,a2,1dc78 <_realloc_r+0x3e8>
   1dc58:	00ec3823          	sd	a4,16(s8)
   1dc5c:	00843703          	ld	a4,8(s0)
   1dc60:	03700793          	li	a5,55
   1dc64:	00ec3c23          	sd	a4,24(s8)
   1dc68:	10c7e063          	bltu	a5,a2,1dd68 <_realloc_r+0x4d8>
   1dc6c:	01043703          	ld	a4,16(s0)
   1dc70:	020c0793          	addi	a5,s8,32
   1dc74:	01040413          	addi	s0,s0,16
   1dc78:	00e7b023          	sd	a4,0(a5)
   1dc7c:	00843703          	ld	a4,8(s0)
   1dc80:	000b8a13          	mv	s4,s7
   1dc84:	000c0b13          	mv	s6,s8
   1dc88:	00e7b423          	sd	a4,8(a5)
   1dc8c:	01043703          	ld	a4,16(s0)
   1dc90:	00090413          	mv	s0,s2
   1dc94:	00e7b823          	sd	a4,16(a5)
   1dc98:	da1ff06f          	j	1da38 <_realloc_r+0x1a8>
   1dc9c:	00040593          	mv	a1,s0
   1dca0:	a75ff0ef          	jal	ra,1d714 <memmove>
   1dca4:	d1dff06f          	j	1d9c0 <_realloc_r+0x130>
   1dca8:	0189b783          	ld	a5,24(s3)
   1dcac:	0109b703          	ld	a4,16(s3)
   1dcb0:	ff8a0613          	addi	a2,s4,-8
   1dcb4:	04800693          	li	a3,72
   1dcb8:	00f73c23          	sd	a5,24(a4)
   1dcbc:	00e7b823          	sd	a4,16(a5)
   1dcc0:	010c3703          	ld	a4,16(s8)
   1dcc4:	018c3783          	ld	a5,24(s8)
   1dcc8:	010c0913          	addi	s2,s8,16
   1dccc:	017c09b3          	add	s3,s8,s7
   1dcd0:	00f73c23          	sd	a5,24(a4)
   1dcd4:	00e7b823          	sd	a4,16(a5)
   1dcd8:	04c6e863          	bltu	a3,a2,1dd28 <_realloc_r+0x498>
   1dcdc:	02700693          	li	a3,39
   1dce0:	00043703          	ld	a4,0(s0)
   1dce4:	00090793          	mv	a5,s2
   1dce8:	f8c6f8e3          	bgeu	a3,a2,1dc78 <_realloc_r+0x3e8>
   1dcec:	00ec3823          	sd	a4,16(s8)
   1dcf0:	00843703          	ld	a4,8(s0)
   1dcf4:	03700793          	li	a5,55
   1dcf8:	00ec3c23          	sd	a4,24(s8)
   1dcfc:	01043703          	ld	a4,16(s0)
   1dd00:	f6c7f8e3          	bgeu	a5,a2,1dc70 <_realloc_r+0x3e0>
   1dd04:	02ec3023          	sd	a4,32(s8)
   1dd08:	01843703          	ld	a4,24(s0)
   1dd0c:	04800793          	li	a5,72
   1dd10:	02ec3423          	sd	a4,40(s8)
   1dd14:	02043703          	ld	a4,32(s0)
   1dd18:	06f60463          	beq	a2,a5,1dd80 <_realloc_r+0x4f0>
   1dd1c:	030c0793          	addi	a5,s8,48
   1dd20:	02040413          	addi	s0,s0,32
   1dd24:	f55ff06f          	j	1dc78 <_realloc_r+0x3e8>
   1dd28:	00040593          	mv	a1,s0
   1dd2c:	00090513          	mv	a0,s2
   1dd30:	9e5ff0ef          	jal	ra,1d714 <memmove>
   1dd34:	00090413          	mv	s0,s2
   1dd38:	000b8a13          	mv	s4,s7
   1dd3c:	000c0b13          	mv	s6,s8
   1dd40:	cf9ff06f          	j	1da38 <_realloc_r+0x1a8>
   1dd44:	01043703          	ld	a4,16(s0)
   1dd48:	00e53823          	sd	a4,16(a0)
   1dd4c:	01843703          	ld	a4,24(s0)
   1dd50:	00e53c23          	sd	a4,24(a0)
   1dd54:	02043683          	ld	a3,32(s0)
   1dd58:	04f60263          	beq	a2,a5,1dd9c <_realloc_r+0x50c>
   1dd5c:	02040713          	addi	a4,s0,32
   1dd60:	02050793          	addi	a5,a0,32
   1dd64:	c49ff06f          	j	1d9ac <_realloc_r+0x11c>
   1dd68:	01043783          	ld	a5,16(s0)
   1dd6c:	02fc3023          	sd	a5,32(s8)
   1dd70:	01843783          	ld	a5,24(s0)
   1dd74:	02fc3423          	sd	a5,40(s8)
   1dd78:	02043703          	ld	a4,32(s0)
   1dd7c:	fad610e3          	bne	a2,a3,1dd1c <_realloc_r+0x48c>
   1dd80:	02ec3823          	sd	a4,48(s8)
   1dd84:	02843703          	ld	a4,40(s0)
   1dd88:	040c0793          	addi	a5,s8,64
   1dd8c:	03040413          	addi	s0,s0,48
   1dd90:	02ec3c23          	sd	a4,56(s8)
   1dd94:	00043703          	ld	a4,0(s0)
   1dd98:	ee1ff06f          	j	1dc78 <_realloc_r+0x3e8>
   1dd9c:	02d53023          	sd	a3,32(a0)
   1dda0:	02843683          	ld	a3,40(s0)
   1dda4:	03040713          	addi	a4,s0,48
   1dda8:	03050793          	addi	a5,a0,48
   1ddac:	02d53423          	sd	a3,40(a0)
   1ddb0:	03043683          	ld	a3,48(s0)
   1ddb4:	bf9ff06f          	j	1d9ac <_realloc_r+0x11c>
   1ddb8:	00040593          	mv	a1,s0
   1ddbc:	00090513          	mv	a0,s2
   1ddc0:	955ff0ef          	jal	ra,1d714 <memmove>
   1ddc4:	dc5ff06f          	j	1db88 <_realloc_r+0x2f8>
   1ddc8:	01043783          	ld	a5,16(s0)
   1ddcc:	02fc3023          	sd	a5,32(s8)
   1ddd0:	01843783          	ld	a5,24(s0)
   1ddd4:	02fc3423          	sd	a5,40(s8)
   1ddd8:	02043703          	ld	a4,32(s0)
   1dddc:	00d60863          	beq	a2,a3,1ddec <_realloc_r+0x55c>
   1dde0:	030c0793          	addi	a5,s8,48
   1dde4:	02040413          	addi	s0,s0,32
   1dde8:	d8dff06f          	j	1db74 <_realloc_r+0x2e4>
   1ddec:	02ec3823          	sd	a4,48(s8)
   1ddf0:	02843703          	ld	a4,40(s0)
   1ddf4:	040c0793          	addi	a5,s8,64
   1ddf8:	03040413          	addi	s0,s0,48
   1ddfc:	02ec3c23          	sd	a4,56(s8)
   1de00:	00043703          	ld	a4,0(s0)
   1de04:	d71ff06f          	j	1db74 <_realloc_r+0x2e4>

000000000001de08 <cleanup_glue>:
   1de08:	fd010113          	addi	sp,sp,-48
   1de0c:	01213823          	sd	s2,16(sp)
   1de10:	0005b903          	ld	s2,0(a1)
   1de14:	02813023          	sd	s0,32(sp)
   1de18:	00913c23          	sd	s1,24(sp)
   1de1c:	02113423          	sd	ra,40(sp)
   1de20:	01313423          	sd	s3,8(sp)
   1de24:	01413023          	sd	s4,0(sp)
   1de28:	00058413          	mv	s0,a1
   1de2c:	00050493          	mv	s1,a0
   1de30:	04090263          	beqz	s2,1de74 <cleanup_glue+0x6c>
   1de34:	00093983          	ld	s3,0(s2)
   1de38:	02098863          	beqz	s3,1de68 <cleanup_glue+0x60>
   1de3c:	0009ba03          	ld	s4,0(s3)
   1de40:	000a0e63          	beqz	s4,1de5c <cleanup_glue+0x54>
   1de44:	000a3583          	ld	a1,0(s4)
   1de48:	00058463          	beqz	a1,1de50 <cleanup_glue+0x48>
   1de4c:	fbdff0ef          	jal	ra,1de08 <cleanup_glue>
   1de50:	000a0593          	mv	a1,s4
   1de54:	00048513          	mv	a0,s1
   1de58:	8c1f50ef          	jal	ra,13718 <_free_r>
   1de5c:	00098593          	mv	a1,s3
   1de60:	00048513          	mv	a0,s1
   1de64:	8b5f50ef          	jal	ra,13718 <_free_r>
   1de68:	00090593          	mv	a1,s2
   1de6c:	00048513          	mv	a0,s1
   1de70:	8a9f50ef          	jal	ra,13718 <_free_r>
   1de74:	00040593          	mv	a1,s0
   1de78:	02013403          	ld	s0,32(sp)
   1de7c:	02813083          	ld	ra,40(sp)
   1de80:	01013903          	ld	s2,16(sp)
   1de84:	00813983          	ld	s3,8(sp)
   1de88:	00013a03          	ld	s4,0(sp)
   1de8c:	00048513          	mv	a0,s1
   1de90:	01813483          	ld	s1,24(sp)
   1de94:	03010113          	addi	sp,sp,48
   1de98:	881f506f          	j	13718 <_free_r>

000000000001de9c <_reclaim_reent>:
   1de9c:	7581b783          	ld	a5,1880(gp) # 24b38 <_impure_ptr>
   1dea0:	10a78a63          	beq	a5,a0,1dfb4 <_reclaim_reent+0x118>
   1dea4:	07853583          	ld	a1,120(a0)
   1dea8:	fd010113          	addi	sp,sp,-48
   1deac:	00913c23          	sd	s1,24(sp)
   1deb0:	02113423          	sd	ra,40(sp)
   1deb4:	02813023          	sd	s0,32(sp)
   1deb8:	01213823          	sd	s2,16(sp)
   1debc:	01313423          	sd	s3,8(sp)
   1dec0:	00050493          	mv	s1,a0
   1dec4:	04058063          	beqz	a1,1df04 <_reclaim_reent+0x68>
   1dec8:	00000913          	li	s2,0
   1decc:	20000993          	li	s3,512
   1ded0:	012587b3          	add	a5,a1,s2
   1ded4:	0007b403          	ld	s0,0(a5)
   1ded8:	00040e63          	beqz	s0,1def4 <_reclaim_reent+0x58>
   1dedc:	00040593          	mv	a1,s0
   1dee0:	00043403          	ld	s0,0(s0)
   1dee4:	00048513          	mv	a0,s1
   1dee8:	831f50ef          	jal	ra,13718 <_free_r>
   1deec:	fe0418e3          	bnez	s0,1dedc <_reclaim_reent+0x40>
   1def0:	0784b583          	ld	a1,120(s1)
   1def4:	00890913          	addi	s2,s2,8
   1def8:	fd391ce3          	bne	s2,s3,1ded0 <_reclaim_reent+0x34>
   1defc:	00048513          	mv	a0,s1
   1df00:	819f50ef          	jal	ra,13718 <_free_r>
   1df04:	0604b583          	ld	a1,96(s1)
   1df08:	00058663          	beqz	a1,1df14 <_reclaim_reent+0x78>
   1df0c:	00048513          	mv	a0,s1
   1df10:	809f50ef          	jal	ra,13718 <_free_r>
   1df14:	1f84b403          	ld	s0,504(s1)
   1df18:	02040063          	beqz	s0,1df38 <_reclaim_reent+0x9c>
   1df1c:	20048913          	addi	s2,s1,512
   1df20:	01240c63          	beq	s0,s2,1df38 <_reclaim_reent+0x9c>
   1df24:	00040593          	mv	a1,s0
   1df28:	00043403          	ld	s0,0(s0)
   1df2c:	00048513          	mv	a0,s1
   1df30:	fe8f50ef          	jal	ra,13718 <_free_r>
   1df34:	fe8918e3          	bne	s2,s0,1df24 <_reclaim_reent+0x88>
   1df38:	0884b583          	ld	a1,136(s1)
   1df3c:	00058663          	beqz	a1,1df48 <_reclaim_reent+0xac>
   1df40:	00048513          	mv	a0,s1
   1df44:	fd4f50ef          	jal	ra,13718 <_free_r>
   1df48:	0504a783          	lw	a5,80(s1)
   1df4c:	04078663          	beqz	a5,1df98 <_reclaim_reent+0xfc>
   1df50:	0584b783          	ld	a5,88(s1)
   1df54:	00048513          	mv	a0,s1
   1df58:	000780e7          	jalr	a5
   1df5c:	5204b403          	ld	s0,1312(s1)
   1df60:	02040c63          	beqz	s0,1df98 <_reclaim_reent+0xfc>
   1df64:	00043583          	ld	a1,0(s0)
   1df68:	00058663          	beqz	a1,1df74 <_reclaim_reent+0xd8>
   1df6c:	00048513          	mv	a0,s1
   1df70:	e99ff0ef          	jal	ra,1de08 <cleanup_glue>
   1df74:	00040593          	mv	a1,s0
   1df78:	02013403          	ld	s0,32(sp)
   1df7c:	02813083          	ld	ra,40(sp)
   1df80:	01013903          	ld	s2,16(sp)
   1df84:	00813983          	ld	s3,8(sp)
   1df88:	00048513          	mv	a0,s1
   1df8c:	01813483          	ld	s1,24(sp)
   1df90:	03010113          	addi	sp,sp,48
   1df94:	f84f506f          	j	13718 <_free_r>
   1df98:	02813083          	ld	ra,40(sp)
   1df9c:	02013403          	ld	s0,32(sp)
   1dfa0:	01813483          	ld	s1,24(sp)
   1dfa4:	01013903          	ld	s2,16(sp)
   1dfa8:	00813983          	ld	s3,8(sp)
   1dfac:	03010113          	addi	sp,sp,48
   1dfb0:	00008067          	ret
   1dfb4:	00008067          	ret

000000000001dfb8 <__ssprint_r>:
   1dfb8:	01063783          	ld	a5,16(a2)
   1dfbc:	fb010113          	addi	sp,sp,-80
   1dfc0:	03413023          	sd	s4,32(sp)
   1dfc4:	04113423          	sd	ra,72(sp)
   1dfc8:	04813023          	sd	s0,64(sp)
   1dfcc:	02913c23          	sd	s1,56(sp)
   1dfd0:	03213823          	sd	s2,48(sp)
   1dfd4:	03313423          	sd	s3,40(sp)
   1dfd8:	01513c23          	sd	s5,24(sp)
   1dfdc:	01613823          	sd	s6,16(sp)
   1dfe0:	01713423          	sd	s7,8(sp)
   1dfe4:	01813023          	sd	s8,0(sp)
   1dfe8:	00060a13          	mv	s4,a2
   1dfec:	10078c63          	beqz	a5,1e104 <__ssprint_r+0x14c>
   1dff0:	00050a93          	mv	s5,a0
   1dff4:	00063983          	ld	s3,0(a2)
   1dff8:	0005b503          	ld	a0,0(a1)
   1dffc:	00c5a403          	lw	s0,12(a1)
   1e000:	00058913          	mv	s2,a1
   1e004:	00000b13          	li	s6,0
   1e008:	00000493          	li	s1,0
   1e00c:	12048863          	beqz	s1,1e13c <__ssprint_r+0x184>
   1e010:	00040c13          	mv	s8,s0
   1e014:	0004879b          	sext.w	a5,s1
   1e018:	1284ea63          	bltu	s1,s0,1e14c <__ssprint_r+0x194>
   1e01c:	01095783          	lhu	a5,16(s2)
   1e020:	00048b9b          	sext.w	s7,s1
   1e024:	4807f713          	andi	a4,a5,1152
   1e028:	0a070063          	beqz	a4,1e0c8 <__ssprint_r+0x110>
   1e02c:	02092683          	lw	a3,32(s2)
   1e030:	01893583          	ld	a1,24(s2)
   1e034:	00148713          	addi	a4,s1,1
   1e038:	0016941b          	slliw	s0,a3,0x1
   1e03c:	00d406bb          	addw	a3,s0,a3
   1e040:	40b50533          	sub	a0,a0,a1
   1e044:	01f6d41b          	srliw	s0,a3,0x1f
   1e048:	00050b9b          	sext.w	s7,a0
   1e04c:	00d4043b          	addw	s0,s0,a3
   1e050:	4014541b          	sraiw	s0,s0,0x1
   1e054:	01770733          	add	a4,a4,s7
   1e058:	00e47663          	bgeu	s0,a4,1e064 <__ssprint_r+0xac>
   1e05c:	0014841b          	addiw	s0,s1,1
   1e060:	00a4043b          	addw	s0,s0,a0
   1e064:	4007f793          	andi	a5,a5,1024
   1e068:	0e078a63          	beqz	a5,1e15c <__ssprint_r+0x1a4>
   1e06c:	00040593          	mv	a1,s0
   1e070:	000a8513          	mv	a0,s5
   1e074:	ba9f80ef          	jal	ra,16c1c <_malloc_r>
   1e078:	00050c13          	mv	s8,a0
   1e07c:	10050063          	beqz	a0,1e17c <__ssprint_r+0x1c4>
   1e080:	01893583          	ld	a1,24(s2)
   1e084:	000b8613          	mv	a2,s7
   1e088:	d70ff0ef          	jal	ra,1d5f8 <memcpy>
   1e08c:	01095783          	lhu	a5,16(s2)
   1e090:	b7f7f793          	andi	a5,a5,-1153
   1e094:	0807e793          	ori	a5,a5,128
   1e098:	00f91823          	sh	a5,16(s2)
   1e09c:	017c0533          	add	a0,s8,s7
   1e0a0:	41740bbb          	subw	s7,s0,s7
   1e0a4:	0004879b          	sext.w	a5,s1
   1e0a8:	01893c23          	sd	s8,24(s2)
   1e0ac:	02892023          	sw	s0,32(s2)
   1e0b0:	01792623          	sw	s7,12(s2)
   1e0b4:	00a93023          	sd	a0,0(s2)
   1e0b8:	00078413          	mv	s0,a5
   1e0bc:	00078b93          	mv	s7,a5
   1e0c0:	00078c13          	mv	s8,a5
   1e0c4:	08f4e463          	bltu	s1,a5,1e14c <__ssprint_r+0x194>
   1e0c8:	00040613          	mv	a2,s0
   1e0cc:	000b0593          	mv	a1,s6
   1e0d0:	e44ff0ef          	jal	ra,1d714 <memmove>
   1e0d4:	00c92603          	lw	a2,12(s2)
   1e0d8:	00093503          	ld	a0,0(s2)
   1e0dc:	010a3783          	ld	a5,16(s4)
   1e0e0:	4086043b          	subw	s0,a2,s0
   1e0e4:	01850533          	add	a0,a0,s8
   1e0e8:	00892623          	sw	s0,12(s2)
   1e0ec:	00a93023          	sd	a0,0(s2)
   1e0f0:	417787b3          	sub	a5,a5,s7
   1e0f4:	00fa3823          	sd	a5,16(s4)
   1e0f8:	017b0b33          	add	s6,s6,s7
   1e0fc:	417484b3          	sub	s1,s1,s7
   1e100:	f00796e3          	bnez	a5,1e00c <__ssprint_r+0x54>
   1e104:	000a2423          	sw	zero,8(s4)
   1e108:	00000513          	li	a0,0
   1e10c:	04813083          	ld	ra,72(sp)
   1e110:	04013403          	ld	s0,64(sp)
   1e114:	03813483          	ld	s1,56(sp)
   1e118:	03013903          	ld	s2,48(sp)
   1e11c:	02813983          	ld	s3,40(sp)
   1e120:	02013a03          	ld	s4,32(sp)
   1e124:	01813a83          	ld	s5,24(sp)
   1e128:	01013b03          	ld	s6,16(sp)
   1e12c:	00813b83          	ld	s7,8(sp)
   1e130:	00013c03          	ld	s8,0(sp)
   1e134:	05010113          	addi	sp,sp,80
   1e138:	00008067          	ret
   1e13c:	0009bb03          	ld	s6,0(s3)
   1e140:	0089b483          	ld	s1,8(s3)
   1e144:	01098993          	addi	s3,s3,16
   1e148:	ec5ff06f          	j	1e00c <__ssprint_r+0x54>
   1e14c:	00078413          	mv	s0,a5
   1e150:	00078b93          	mv	s7,a5
   1e154:	00078c13          	mv	s8,a5
   1e158:	f71ff06f          	j	1e0c8 <__ssprint_r+0x110>
   1e15c:	00040613          	mv	a2,s0
   1e160:	000a8513          	mv	a0,s5
   1e164:	f2cff0ef          	jal	ra,1d890 <_realloc_r>
   1e168:	00050c13          	mv	s8,a0
   1e16c:	f20518e3          	bnez	a0,1e09c <__ssprint_r+0xe4>
   1e170:	01893583          	ld	a1,24(s2)
   1e174:	000a8513          	mv	a0,s5
   1e178:	da0f50ef          	jal	ra,13718 <_free_r>
   1e17c:	00c00793          	li	a5,12
   1e180:	00faa023          	sw	a5,0(s5)
   1e184:	01095783          	lhu	a5,16(s2)
   1e188:	fff00513          	li	a0,-1
   1e18c:	0407e793          	ori	a5,a5,64
   1e190:	00f91823          	sh	a5,16(s2)
   1e194:	000a3823          	sd	zero,16(s4)
   1e198:	000a2423          	sw	zero,8(s4)
   1e19c:	f71ff06f          	j	1e10c <__ssprint_r+0x154>

000000000001e1a0 <_svfiprintf_r>:
   1e1a0:	0105d783          	lhu	a5,16(a1)
   1e1a4:	e3010113          	addi	sp,sp,-464
   1e1a8:	1a913c23          	sd	s1,440(sp)
   1e1ac:	1b313423          	sd	s3,424(sp)
   1e1b0:	19713423          	sd	s7,392(sp)
   1e1b4:	1c113423          	sd	ra,456(sp)
   1e1b8:	1c813023          	sd	s0,448(sp)
   1e1bc:	1b213823          	sd	s2,432(sp)
   1e1c0:	1b413023          	sd	s4,416(sp)
   1e1c4:	19513c23          	sd	s5,408(sp)
   1e1c8:	19613823          	sd	s6,400(sp)
   1e1cc:	19813023          	sd	s8,384(sp)
   1e1d0:	17913c23          	sd	s9,376(sp)
   1e1d4:	17a13823          	sd	s10,368(sp)
   1e1d8:	17b13423          	sd	s11,360(sp)
   1e1dc:	0807f793          	andi	a5,a5,128
   1e1e0:	00d13823          	sd	a3,16(sp)
   1e1e4:	00058493          	mv	s1,a1
   1e1e8:	00050993          	mv	s3,a0
   1e1ec:	00060b93          	mv	s7,a2
   1e1f0:	00078663          	beqz	a5,1e1fc <_svfiprintf_r+0x5c>
   1e1f4:	0185b783          	ld	a5,24(a1)
   1e1f8:	52078ce3          	beqz	a5,1ef30 <_svfiprintf_r+0xd90>
   1e1fc:	ffff87b7          	lui	a5,0xffff8
   1e200:	0e010913          	addi	s2,sp,224
   1e204:	8307c793          	xori	a5,a5,-2000
   1e208:	07213023          	sd	s2,96(sp)
   1e20c:	06013823          	sd	zero,112(sp)
   1e210:	06012423          	sw	zero,104(sp)
   1e214:	00013c23          	sd	zero,24(sp)
   1e218:	02013023          	sd	zero,32(sp)
   1e21c:	02013823          	sd	zero,48(sp)
   1e220:	02013423          	sd	zero,40(sp)
   1e224:	00013423          	sd	zero,8(sp)
   1e228:	02f13c23          	sd	a5,56(sp)
   1e22c:	00090413          	mv	s0,s2
   1e230:	000b8c13          	mv	s8,s7
   1e234:	000c4783          	lbu	a5,0(s8)
   1e238:	22078863          	beqz	a5,1e468 <_svfiprintf_r+0x2c8>
   1e23c:	000c0a13          	mv	s4,s8
   1e240:	02500693          	li	a3,37
   1e244:	36d78a63          	beq	a5,a3,1e5b8 <_svfiprintf_r+0x418>
   1e248:	001a4783          	lbu	a5,1(s4)
   1e24c:	001a0a13          	addi	s4,s4,1
   1e250:	fe079ae3          	bnez	a5,1e244 <_svfiprintf_r+0xa4>
   1e254:	418a0bbb          	subw	s7,s4,s8
   1e258:	200b8863          	beqz	s7,1e468 <_svfiprintf_r+0x2c8>
   1e25c:	07013703          	ld	a4,112(sp)
   1e260:	06812783          	lw	a5,104(sp)
   1e264:	01843023          	sd	s8,0(s0)
   1e268:	01770733          	add	a4,a4,s7
   1e26c:	0017879b          	addiw	a5,a5,1
   1e270:	01743423          	sd	s7,8(s0)
   1e274:	06e13823          	sd	a4,112(sp)
   1e278:	06f12423          	sw	a5,104(sp)
   1e27c:	0007871b          	sext.w	a4,a5
   1e280:	00700793          	li	a5,7
   1e284:	01040413          	addi	s0,s0,16
   1e288:	34e7c063          	blt	a5,a4,1e5c8 <_svfiprintf_r+0x428>
   1e28c:	00813703          	ld	a4,8(sp)
   1e290:	000a4783          	lbu	a5,0(s4)
   1e294:	0177073b          	addw	a4,a4,s7
   1e298:	00e13423          	sd	a4,8(sp)
   1e29c:	1c078663          	beqz	a5,1e468 <_svfiprintf_r+0x2c8>
   1e2a0:	001a4783          	lbu	a5,1(s4)
   1e2a4:	001a0c13          	addi	s8,s4,1
   1e2a8:	04010ba3          	sb	zero,87(sp)
   1e2ac:	fff00a93          	li	s5,-1
   1e2b0:	00000a13          	li	s4,0
   1e2b4:	00000b13          	li	s6,0
   1e2b8:	00900b93          	li	s7,9
   1e2bc:	02a00d13          	li	s10,42
   1e2c0:	001c0c13          	addi	s8,s8,1
   1e2c4:	0007879b          	sext.w	a5,a5
   1e2c8:	05a00613          	li	a2,90
   1e2cc:	fe07871b          	addiw	a4,a5,-32
   1e2d0:	0007069b          	sext.w	a3,a4
   1e2d4:	04d66e63          	bltu	a2,a3,1e330 <_svfiprintf_r+0x190>
   1e2d8:	02071693          	slli	a3,a4,0x20
   1e2dc:	01e6d713          	srli	a4,a3,0x1e
   1e2e0:	00004697          	auipc	a3,0x4
   1e2e4:	42868693          	addi	a3,a3,1064 # 22708 <_ctype_+0x108>
   1e2e8:	00d70733          	add	a4,a4,a3
   1e2ec:	00072703          	lw	a4,0(a4)
   1e2f0:	00d70733          	add	a4,a4,a3
   1e2f4:	00070067          	jr	a4
   1e2f8:	00000a13          	li	s4,0
   1e2fc:	000c4683          	lbu	a3,0(s8)
   1e300:	002a171b          	slliw	a4,s4,0x2
   1e304:	01470a3b          	addw	s4,a4,s4
   1e308:	fd07879b          	addiw	a5,a5,-48
   1e30c:	001a1a1b          	slliw	s4,s4,0x1
   1e310:	fd06871b          	addiw	a4,a3,-48
   1e314:	01478a3b          	addw	s4,a5,s4
   1e318:	001c0c13          	addi	s8,s8,1
   1e31c:	0006879b          	sext.w	a5,a3
   1e320:	fcebfee3          	bgeu	s7,a4,1e2fc <_svfiprintf_r+0x15c>
   1e324:	fe07871b          	addiw	a4,a5,-32
   1e328:	0007069b          	sext.w	a3,a4
   1e32c:	fad676e3          	bgeu	a2,a3,1e2d8 <_svfiprintf_r+0x138>
   1e330:	12078c63          	beqz	a5,1e468 <_svfiprintf_r+0x2c8>
   1e334:	06f10c23          	sb	a5,120(sp)
   1e338:	00100793          	li	a5,1
   1e33c:	04010ba3          	sb	zero,87(sp)
   1e340:	00100d93          	li	s11,1
   1e344:	00f13023          	sd	a5,0(sp)
   1e348:	07810d13          	addi	s10,sp,120
   1e34c:	00000a93          	li	s5,0
   1e350:	002b7f13          	andi	t5,s6,2
   1e354:	000f0463          	beqz	t5,1e35c <_svfiprintf_r+0x1bc>
   1e358:	002d8d9b          	addiw	s11,s11,2
   1e35c:	084b7e93          	andi	t4,s6,132
   1e360:	07013783          	ld	a5,112(sp)
   1e364:	06812603          	lw	a2,104(sp)
   1e368:	000e9663          	bnez	t4,1e374 <_svfiprintf_r+0x1d4>
   1e36c:	41ba0bbb          	subw	s7,s4,s11
   1e370:	79704e63          	bgtz	s7,1eb0c <_svfiprintf_r+0x96c>
   1e374:	05714e03          	lbu	t3,87(sp)
   1e378:	0016051b          	addiw	a0,a2,1
   1e37c:	01040593          	addi	a1,s0,16
   1e380:	040e0063          	beqz	t3,1e3c0 <_svfiprintf_r+0x220>
   1e384:	05710e13          	addi	t3,sp,87
   1e388:	00178793          	addi	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd3421>
   1e38c:	01c43023          	sd	t3,0(s0)
   1e390:	00100e13          	li	t3,1
   1e394:	01c43423          	sd	t3,8(s0)
   1e398:	06f13823          	sd	a5,112(sp)
   1e39c:	06a12423          	sw	a0,104(sp)
   1e3a0:	00700693          	li	a3,7
   1e3a4:	0aa6cce3          	blt	a3,a0,1ec5c <_svfiprintf_r+0xabc>
   1e3a8:	00260e1b          	addiw	t3,a2,2
   1e3ac:	02040693          	addi	a3,s0,32
   1e3b0:	00050613          	mv	a2,a0
   1e3b4:	00058413          	mv	s0,a1
   1e3b8:	000e0513          	mv	a0,t3
   1e3bc:	00068593          	mv	a1,a3
   1e3c0:	020f0c63          	beqz	t5,1e3f8 <_svfiprintf_r+0x258>
   1e3c4:	05810693          	addi	a3,sp,88
   1e3c8:	00278793          	addi	a5,a5,2
   1e3cc:	00d43023          	sd	a3,0(s0)
   1e3d0:	00200693          	li	a3,2
   1e3d4:	00d43423          	sd	a3,8(s0)
   1e3d8:	06f13823          	sd	a5,112(sp)
   1e3dc:	06a12423          	sw	a0,104(sp)
   1e3e0:	00700693          	li	a3,7
   1e3e4:	04a6c2e3          	blt	a3,a0,1ec28 <_svfiprintf_r+0xa88>
   1e3e8:	00050613          	mv	a2,a0
   1e3ec:	00058413          	mv	s0,a1
   1e3f0:	0015051b          	addiw	a0,a0,1
   1e3f4:	01058593          	addi	a1,a1,16
   1e3f8:	08000693          	li	a3,128
   1e3fc:	54de8c63          	beq	t4,a3,1e954 <_svfiprintf_r+0x7b4>
   1e400:	00013703          	ld	a4,0(sp)
   1e404:	40ea8abb          	subw	s5,s5,a4
   1e408:	61504263          	bgtz	s5,1ea0c <_svfiprintf_r+0x86c>
   1e40c:	00013703          	ld	a4,0(sp)
   1e410:	01a43023          	sd	s10,0(s0)
   1e414:	06a12423          	sw	a0,104(sp)
   1e418:	00f707b3          	add	a5,a4,a5
   1e41c:	00e43423          	sd	a4,8(s0)
   1e420:	06f13823          	sd	a5,112(sp)
   1e424:	00700693          	li	a3,7
   1e428:	6aa6c263          	blt	a3,a0,1eacc <_svfiprintf_r+0x92c>
   1e42c:	004b7313          	andi	t1,s6,4
   1e430:	00030663          	beqz	t1,1e43c <_svfiprintf_r+0x29c>
   1e434:	41ba043b          	subw	s0,s4,s11
   1e438:	068040e3          	bgtz	s0,1ec98 <_svfiprintf_r+0xaf8>
   1e43c:	000a0693          	mv	a3,s4
   1e440:	01ba5463          	bge	s4,s11,1e448 <_svfiprintf_r+0x2a8>
   1e444:	000d8693          	mv	a3,s11
   1e448:	00813703          	ld	a4,8(sp)
   1e44c:	00e6873b          	addw	a4,a3,a4
   1e450:	00e13423          	sd	a4,8(sp)
   1e454:	68079c63          	bnez	a5,1eaec <_svfiprintf_r+0x94c>
   1e458:	000c4783          	lbu	a5,0(s8)
   1e45c:	06012423          	sw	zero,104(sp)
   1e460:	00090413          	mv	s0,s2
   1e464:	dc079ce3          	bnez	a5,1e23c <_svfiprintf_r+0x9c>
   1e468:	07013783          	ld	a5,112(sp)
   1e46c:	46079ce3          	bnez	a5,1f0e4 <_svfiprintf_r+0xf44>
   1e470:	0104d783          	lhu	a5,16(s1)
   1e474:	0407f793          	andi	a5,a5,64
   1e478:	4a079ae3          	bnez	a5,1f12c <_svfiprintf_r+0xf8c>
   1e47c:	1c813083          	ld	ra,456(sp)
   1e480:	1c013403          	ld	s0,448(sp)
   1e484:	00813503          	ld	a0,8(sp)
   1e488:	1b813483          	ld	s1,440(sp)
   1e48c:	1b013903          	ld	s2,432(sp)
   1e490:	1a813983          	ld	s3,424(sp)
   1e494:	1a013a03          	ld	s4,416(sp)
   1e498:	19813a83          	ld	s5,408(sp)
   1e49c:	19013b03          	ld	s6,400(sp)
   1e4a0:	18813b83          	ld	s7,392(sp)
   1e4a4:	18013c03          	ld	s8,384(sp)
   1e4a8:	17813c83          	ld	s9,376(sp)
   1e4ac:	17013d03          	ld	s10,368(sp)
   1e4b0:	16813d83          	ld	s11,360(sp)
   1e4b4:	1d010113          	addi	sp,sp,464
   1e4b8:	00008067          	ret
   1e4bc:	010b6b13          	ori	s6,s6,16
   1e4c0:	000c4783          	lbu	a5,0(s8)
   1e4c4:	000b0b1b          	sext.w	s6,s6
   1e4c8:	df9ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e4cc:	010b6313          	ori	t1,s6,16
   1e4d0:	00030b1b          	sext.w	s6,t1
   1e4d4:	01013703          	ld	a4,16(sp)
   1e4d8:	020b7793          	andi	a5,s6,32
   1e4dc:	00870613          	addi	a2,a4,8
   1e4e0:	12078463          	beqz	a5,1e608 <_svfiprintf_r+0x468>
   1e4e4:	00073783          	ld	a5,0(a4)
   1e4e8:	00078b93          	mv	s7,a5
   1e4ec:	1207ce63          	bltz	a5,1e628 <_svfiprintf_r+0x488>
   1e4f0:	fff00793          	li	a5,-1
   1e4f4:	2afa8ee3          	beq	s5,a5,1efb0 <_svfiprintf_r+0xe10>
   1e4f8:	f7fb7693          	andi	a3,s6,-129
   1e4fc:	00c13823          	sd	a2,16(sp)
   1e500:	00068d9b          	sext.w	s11,a3
   1e504:	040b84e3          	beqz	s7,1ed4c <_svfiprintf_r+0xbac>
   1e508:	00900793          	li	a5,9
   1e50c:	0b77e8e3          	bltu	a5,s7,1edbc <_svfiprintf_r+0xc1c>
   1e510:	030b8b9b          	addiw	s7,s7,48
   1e514:	00100793          	li	a5,1
   1e518:	0d710da3          	sb	s7,219(sp)
   1e51c:	000d8b13          	mv	s6,s11
   1e520:	00f13023          	sd	a5,0(sp)
   1e524:	0db10d13          	addi	s10,sp,219
   1e528:	06c0006f          	j	1e594 <_svfiprintf_r+0x3f4>
   1e52c:	010b6313          	ori	t1,s6,16
   1e530:	00030b1b          	sext.w	s6,t1
   1e534:	01013703          	ld	a4,16(sp)
   1e538:	020b7793          	andi	a5,s6,32
   1e53c:	00870613          	addi	a2,a4,8
   1e540:	0a078263          	beqz	a5,1e5e4 <_svfiprintf_r+0x444>
   1e544:	00073b83          	ld	s7,0(a4)
   1e548:	bffb7693          	andi	a3,s6,-1025
   1e54c:	00068d9b          	sext.w	s11,a3
   1e550:	00c13823          	sd	a2,16(sp)
   1e554:	00000793          	li	a5,0
   1e558:	04010ba3          	sb	zero,87(sp)
   1e55c:	fff00613          	li	a2,-1
   1e560:	0eca8463          	beq	s5,a2,1e648 <_svfiprintf_r+0x4a8>
   1e564:	f7fdf313          	andi	t1,s11,-129
   1e568:	00030b1b          	sext.w	s6,t1
   1e56c:	580b9c63          	bnez	s7,1eb04 <_svfiprintf_r+0x964>
   1e570:	380a9c63          	bnez	s5,1e908 <_svfiprintf_r+0x768>
   1e574:	7e079063          	bnez	a5,1ed54 <_svfiprintf_r+0xbb4>
   1e578:	001df793          	andi	a5,s11,1
   1e57c:	00f13023          	sd	a5,0(sp)
   1e580:	0dc10d13          	addi	s10,sp,220
   1e584:	00078863          	beqz	a5,1e594 <_svfiprintf_r+0x3f4>
   1e588:	03000793          	li	a5,48
   1e58c:	0cf10da3          	sb	a5,219(sp)
   1e590:	0db10d13          	addi	s10,sp,219
   1e594:	00013703          	ld	a4,0(sp)
   1e598:	000a8793          	mv	a5,s5
   1e59c:	00ead463          	bge	s5,a4,1e5a4 <_svfiprintf_r+0x404>
   1e5a0:	00070793          	mv	a5,a4
   1e5a4:	05714683          	lbu	a3,87(sp)
   1e5a8:	00078d9b          	sext.w	s11,a5
   1e5ac:	da0682e3          	beqz	a3,1e350 <_svfiprintf_r+0x1b0>
   1e5b0:	00178d9b          	addiw	s11,a5,1
   1e5b4:	d9dff06f          	j	1e350 <_svfiprintf_r+0x1b0>
   1e5b8:	418a0bbb          	subw	s7,s4,s8
   1e5bc:	ca0b90e3          	bnez	s7,1e25c <_svfiprintf_r+0xbc>
   1e5c0:	000a4783          	lbu	a5,0(s4)
   1e5c4:	cd9ff06f          	j	1e29c <_svfiprintf_r+0xfc>
   1e5c8:	06010613          	addi	a2,sp,96
   1e5cc:	00048593          	mv	a1,s1
   1e5d0:	00098513          	mv	a0,s3
   1e5d4:	9e5ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1e5d8:	e8051ce3          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1e5dc:	00090413          	mv	s0,s2
   1e5e0:	cadff06f          	j	1e28c <_svfiprintf_r+0xec>
   1e5e4:	010b7793          	andi	a5,s6,16
   1e5e8:	08079ae3          	bnez	a5,1ee7c <_svfiprintf_r+0xcdc>
   1e5ec:	01013703          	ld	a4,16(sp)
   1e5f0:	040b7793          	andi	a5,s6,64
   1e5f4:	00072b83          	lw	s7,0(a4)
   1e5f8:	24078ee3          	beqz	a5,1f054 <_svfiprintf_r+0xeb4>
   1e5fc:	030b9b93          	slli	s7,s7,0x30
   1e600:	030bdb93          	srli	s7,s7,0x30
   1e604:	f45ff06f          	j	1e548 <_svfiprintf_r+0x3a8>
   1e608:	010b7793          	andi	a5,s6,16
   1e60c:	060790e3          	bnez	a5,1ee6c <_svfiprintf_r+0xccc>
   1e610:	040b7793          	andi	a5,s6,64
   1e614:	220784e3          	beqz	a5,1f03c <_svfiprintf_r+0xe9c>
   1e618:	01013783          	ld	a5,16(sp)
   1e61c:	00079b83          	lh	s7,0(a5)
   1e620:	000b8793          	mv	a5,s7
   1e624:	ec07d6e3          	bgez	a5,1e4f0 <_svfiprintf_r+0x350>
   1e628:	02d00793          	li	a5,45
   1e62c:	04f10ba3          	sb	a5,87(sp)
   1e630:	00c13823          	sd	a2,16(sp)
   1e634:	fff00613          	li	a2,-1
   1e638:	41700bb3          	neg	s7,s7
   1e63c:	000b0d93          	mv	s11,s6
   1e640:	00100793          	li	a5,1
   1e644:	f2ca90e3          	bne	s5,a2,1e564 <_svfiprintf_r+0x3c4>
   1e648:	00100613          	li	a2,1
   1e64c:	eac78ee3          	beq	a5,a2,1e508 <_svfiprintf_r+0x368>
   1e650:	00200613          	li	a2,2
   1e654:	2cc78463          	beq	a5,a2,1e91c <_svfiprintf_r+0x77c>
   1e658:	0dc10d13          	addi	s10,sp,220
   1e65c:	007bf793          	andi	a5,s7,7
   1e660:	03078793          	addi	a5,a5,48
   1e664:	fefd0fa3          	sb	a5,-1(s10)
   1e668:	003bdb93          	srli	s7,s7,0x3
   1e66c:	000d0613          	mv	a2,s10
   1e670:	fffd0d13          	addi	s10,s10,-1
   1e674:	fe0b94e3          	bnez	s7,1e65c <_svfiprintf_r+0x4bc>
   1e678:	001df593          	andi	a1,s11,1
   1e67c:	2c058263          	beqz	a1,1e940 <_svfiprintf_r+0x7a0>
   1e680:	03000593          	li	a1,48
   1e684:	2ab78e63          	beq	a5,a1,1e940 <_svfiprintf_r+0x7a0>
   1e688:	ffe60613          	addi	a2,a2,-2
   1e68c:	0dc10793          	addi	a5,sp,220
   1e690:	40c787bb          	subw	a5,a5,a2
   1e694:	febd0fa3          	sb	a1,-1(s10)
   1e698:	00f13023          	sd	a5,0(sp)
   1e69c:	000d8b13          	mv	s6,s11
   1e6a0:	00060d13          	mv	s10,a2
   1e6a4:	ef1ff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1e6a8:	01013783          	ld	a5,16(sp)
   1e6ac:	04010ba3          	sb	zero,87(sp)
   1e6b0:	0007bd03          	ld	s10,0(a5)
   1e6b4:	00878b93          	addi	s7,a5,8
   1e6b8:	140d0ce3          	beqz	s10,1f010 <_svfiprintf_r+0xe70>
   1e6bc:	fff00793          	li	a5,-1
   1e6c0:	04fa8ae3          	beq	s5,a5,1ef14 <_svfiprintf_r+0xd74>
   1e6c4:	000a8613          	mv	a2,s5
   1e6c8:	00000593          	li	a1,0
   1e6cc:	000d0513          	mv	a0,s10
   1e6d0:	dd1f80ef          	jal	ra,174a0 <memchr>
   1e6d4:	220502e3          	beqz	a0,1f0f8 <_svfiprintf_r+0xf58>
   1e6d8:	41a507bb          	subw	a5,a0,s10
   1e6dc:	00f13023          	sd	a5,0(sp)
   1e6e0:	01713823          	sd	s7,16(sp)
   1e6e4:	00000a93          	li	s5,0
   1e6e8:	eadff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1e6ec:	01013703          	ld	a4,16(sp)
   1e6f0:	04010ba3          	sb	zero,87(sp)
   1e6f4:	00100d93          	li	s11,1
   1e6f8:	00072783          	lw	a5,0(a4)
   1e6fc:	00870713          	addi	a4,a4,8
   1e700:	00e13823          	sd	a4,16(sp)
   1e704:	06f10c23          	sb	a5,120(sp)
   1e708:	00100793          	li	a5,1
   1e70c:	00f13023          	sd	a5,0(sp)
   1e710:	07810d13          	addi	s10,sp,120
   1e714:	c39ff06f          	j	1e34c <_svfiprintf_r+0x1ac>
   1e718:	020b6b13          	ori	s6,s6,32
   1e71c:	000c4783          	lbu	a5,0(s8)
   1e720:	000b0b1b          	sext.w	s6,s6
   1e724:	b9dff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e728:	01013783          	ld	a5,16(sp)
   1e72c:	03813703          	ld	a4,56(sp)
   1e730:	002b6693          	ori	a3,s6,2
   1e734:	0007bb83          	ld	s7,0(a5)
   1e738:	00878793          	addi	a5,a5,8
   1e73c:	00f13823          	sd	a5,16(sp)
   1e740:	00003797          	auipc	a5,0x3
   1e744:	4c878793          	addi	a5,a5,1224 # 21c08 <__clzdi2+0x98>
   1e748:	00f13c23          	sd	a5,24(sp)
   1e74c:	00068d9b          	sext.w	s11,a3
   1e750:	04e11c23          	sh	a4,88(sp)
   1e754:	00200793          	li	a5,2
   1e758:	e01ff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1e75c:	01013703          	ld	a4,16(sp)
   1e760:	020b7793          	andi	a5,s6,32
   1e764:	00073683          	ld	a3,0(a4)
   1e768:	00870713          	addi	a4,a4,8
   1e76c:	00e13823          	sd	a4,16(sp)
   1e770:	02079463          	bnez	a5,1e798 <_svfiprintf_r+0x5f8>
   1e774:	010b7793          	andi	a5,s6,16
   1e778:	02079063          	bnez	a5,1e798 <_svfiprintf_r+0x5f8>
   1e77c:	040b7793          	andi	a5,s6,64
   1e780:	14079ce3          	bnez	a5,1f0d8 <_svfiprintf_r+0xf38>
   1e784:	200b7313          	andi	t1,s6,512
   1e788:	00813783          	ld	a5,8(sp)
   1e78c:	18030ce3          	beqz	t1,1f124 <_svfiprintf_r+0xf84>
   1e790:	00f68023          	sb	a5,0(a3)
   1e794:	aa1ff06f          	j	1e234 <_svfiprintf_r+0x94>
   1e798:	00813783          	ld	a5,8(sp)
   1e79c:	00f6b023          	sd	a5,0(a3)
   1e7a0:	a95ff06f          	j	1e234 <_svfiprintf_r+0x94>
   1e7a4:	000c4783          	lbu	a5,0(s8)
   1e7a8:	06c00713          	li	a4,108
   1e7ac:	04e788e3          	beq	a5,a4,1effc <_svfiprintf_r+0xe5c>
   1e7b0:	010b6b13          	ori	s6,s6,16
   1e7b4:	000b0b1b          	sext.w	s6,s6
   1e7b8:	b09ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e7bc:	000c4783          	lbu	a5,0(s8)
   1e7c0:	06800713          	li	a4,104
   1e7c4:	02e782e3          	beq	a5,a4,1efe8 <_svfiprintf_r+0xe48>
   1e7c8:	040b6b13          	ori	s6,s6,64
   1e7cc:	000b0b1b          	sext.w	s6,s6
   1e7d0:	af1ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e7d4:	010b6693          	ori	a3,s6,16
   1e7d8:	00068d9b          	sext.w	s11,a3
   1e7dc:	01013703          	ld	a4,16(sp)
   1e7e0:	020df793          	andi	a5,s11,32
   1e7e4:	00870613          	addi	a2,a4,8
   1e7e8:	56078e63          	beqz	a5,1ed64 <_svfiprintf_r+0xbc4>
   1e7ec:	00073b83          	ld	s7,0(a4)
   1e7f0:	00100793          	li	a5,1
   1e7f4:	00c13823          	sd	a2,16(sp)
   1e7f8:	d61ff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1e7fc:	080b6b13          	ori	s6,s6,128
   1e800:	000c4783          	lbu	a5,0(s8)
   1e804:	000b0b1b          	sext.w	s6,s6
   1e808:	ab9ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e80c:	01013703          	ld	a4,16(sp)
   1e810:	000c4783          	lbu	a5,0(s8)
   1e814:	00072a03          	lw	s4,0(a4)
   1e818:	00870713          	addi	a4,a4,8
   1e81c:	00e13823          	sd	a4,16(sp)
   1e820:	aa0a50e3          	bgez	s4,1e2c0 <_svfiprintf_r+0x120>
   1e824:	41400a3b          	negw	s4,s4
   1e828:	0840006f          	j	1e8ac <_svfiprintf_r+0x70c>
   1e82c:	00098513          	mv	a0,s3
   1e830:	87cf80ef          	jal	ra,168ac <_localeconv_r>
   1e834:	00853783          	ld	a5,8(a0)
   1e838:	00078513          	mv	a0,a5
   1e83c:	02f13423          	sd	a5,40(sp)
   1e840:	da8fa0ef          	jal	ra,18de8 <strlen>
   1e844:	00050793          	mv	a5,a0
   1e848:	00098513          	mv	a0,s3
   1e84c:	00078c93          	mv	s9,a5
   1e850:	02f13823          	sd	a5,48(sp)
   1e854:	858f80ef          	jal	ra,168ac <_localeconv_r>
   1e858:	01053703          	ld	a4,16(a0)
   1e85c:	000c4783          	lbu	a5,0(s8)
   1e860:	02e13023          	sd	a4,32(sp)
   1e864:	a40c8ee3          	beqz	s9,1e2c0 <_svfiprintf_r+0x120>
   1e868:	a4070ce3          	beqz	a4,1e2c0 <_svfiprintf_r+0x120>
   1e86c:	00074703          	lbu	a4,0(a4)
   1e870:	a40708e3          	beqz	a4,1e2c0 <_svfiprintf_r+0x120>
   1e874:	400b6b13          	ori	s6,s6,1024
   1e878:	000b0b1b          	sext.w	s6,s6
   1e87c:	a45ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e880:	001b6b13          	ori	s6,s6,1
   1e884:	000c4783          	lbu	a5,0(s8)
   1e888:	000b0b1b          	sext.w	s6,s6
   1e88c:	a35ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e890:	05714703          	lbu	a4,87(sp)
   1e894:	000c4783          	lbu	a5,0(s8)
   1e898:	a20714e3          	bnez	a4,1e2c0 <_svfiprintf_r+0x120>
   1e89c:	02000713          	li	a4,32
   1e8a0:	04e10ba3          	sb	a4,87(sp)
   1e8a4:	a1dff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e8a8:	000c4783          	lbu	a5,0(s8)
   1e8ac:	004b6b13          	ori	s6,s6,4
   1e8b0:	000b0b1b          	sext.w	s6,s6
   1e8b4:	a0dff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e8b8:	02b00713          	li	a4,43
   1e8bc:	000c4783          	lbu	a5,0(s8)
   1e8c0:	04e10ba3          	sb	a4,87(sp)
   1e8c4:	9fdff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1e8c8:	000c4783          	lbu	a5,0(s8)
   1e8cc:	001c0713          	addi	a4,s8,1
   1e8d0:	07a784e3          	beq	a5,s10,1f138 <_svfiprintf_r+0xf98>
   1e8d4:	fd07869b          	addiw	a3,a5,-48
   1e8d8:	00070c13          	mv	s8,a4
   1e8dc:	00000a93          	li	s5,0
   1e8e0:	9edbe6e3          	bltu	s7,a3,1e2cc <_svfiprintf_r+0x12c>
   1e8e4:	000c4783          	lbu	a5,0(s8)
   1e8e8:	002a971b          	slliw	a4,s5,0x2
   1e8ec:	01570abb          	addw	s5,a4,s5
   1e8f0:	001a9a9b          	slliw	s5,s5,0x1
   1e8f4:	00da8abb          	addw	s5,s5,a3
   1e8f8:	fd07869b          	addiw	a3,a5,-48
   1e8fc:	001c0c13          	addi	s8,s8,1
   1e900:	fedbf2e3          	bgeu	s7,a3,1e8e4 <_svfiprintf_r+0x744>
   1e904:	9c9ff06f          	j	1e2cc <_svfiprintf_r+0x12c>
   1e908:	00100693          	li	a3,1
   1e90c:	7ed78e63          	beq	a5,a3,1f108 <_svfiprintf_r+0xf68>
   1e910:	00200693          	li	a3,2
   1e914:	000b0d93          	mv	s11,s6
   1e918:	d4d790e3          	bne	a5,a3,1e658 <_svfiprintf_r+0x4b8>
   1e91c:	01813703          	ld	a4,24(sp)
   1e920:	0dc10d13          	addi	s10,sp,220
   1e924:	00fbf793          	andi	a5,s7,15
   1e928:	00f707b3          	add	a5,a4,a5
   1e92c:	0007c783          	lbu	a5,0(a5)
   1e930:	004bdb93          	srli	s7,s7,0x4
   1e934:	fffd0d13          	addi	s10,s10,-1
   1e938:	00fd0023          	sb	a5,0(s10)
   1e93c:	fe0b94e3          	bnez	s7,1e924 <_svfiprintf_r+0x784>
   1e940:	0dc10793          	addi	a5,sp,220
   1e944:	41a787bb          	subw	a5,a5,s10
   1e948:	00f13023          	sd	a5,0(sp)
   1e94c:	000d8b13          	mv	s6,s11
   1e950:	c45ff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1e954:	41ba0bbb          	subw	s7,s4,s11
   1e958:	ab7054e3          	blez	s7,1e400 <_svfiprintf_r+0x260>
   1e95c:	01000693          	li	a3,16
   1e960:	7b76d863          	bge	a3,s7,1f110 <_svfiprintf_r+0xf70>
   1e964:	00004c97          	auipc	s9,0x4
   1e968:	f24c8c93          	addi	s9,s9,-220 # 22888 <zeroes.0>
   1e96c:	01000713          	li	a4,16
   1e970:	00700e93          	li	t4,7
   1e974:	00c0006f          	j	1e980 <_svfiprintf_r+0x7e0>
   1e978:	ff0b8b9b          	addiw	s7,s7,-16
   1e97c:	05775a63          	bge	a4,s7,1e9d0 <_svfiprintf_r+0x830>
   1e980:	0016061b          	addiw	a2,a2,1
   1e984:	01078793          	addi	a5,a5,16
   1e988:	01943023          	sd	s9,0(s0)
   1e98c:	00e43423          	sd	a4,8(s0)
   1e990:	06f13823          	sd	a5,112(sp)
   1e994:	06c12423          	sw	a2,104(sp)
   1e998:	01040413          	addi	s0,s0,16
   1e99c:	fccedee3          	bge	t4,a2,1e978 <_svfiprintf_r+0x7d8>
   1e9a0:	06010613          	addi	a2,sp,96
   1e9a4:	00048593          	mv	a1,s1
   1e9a8:	00098513          	mv	a0,s3
   1e9ac:	e0cff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1e9b0:	ac0510e3          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1e9b4:	01000713          	li	a4,16
   1e9b8:	ff0b8b9b          	addiw	s7,s7,-16
   1e9bc:	07013783          	ld	a5,112(sp)
   1e9c0:	06812603          	lw	a2,104(sp)
   1e9c4:	00090413          	mv	s0,s2
   1e9c8:	00700e93          	li	t4,7
   1e9cc:	fb774ae3          	blt	a4,s7,1e980 <_svfiprintf_r+0x7e0>
   1e9d0:	0016061b          	addiw	a2,a2,1
   1e9d4:	01040693          	addi	a3,s0,16
   1e9d8:	017787b3          	add	a5,a5,s7
   1e9dc:	01943023          	sd	s9,0(s0)
   1e9e0:	01743423          	sd	s7,8(s0)
   1e9e4:	06f13823          	sd	a5,112(sp)
   1e9e8:	06c12423          	sw	a2,104(sp)
   1e9ec:	00700593          	li	a1,7
   1e9f0:	5cc5c663          	blt	a1,a2,1efbc <_svfiprintf_r+0xe1c>
   1e9f4:	00013703          	ld	a4,0(sp)
   1e9f8:	0016051b          	addiw	a0,a2,1
   1e9fc:	01068593          	addi	a1,a3,16
   1ea00:	40ea8abb          	subw	s5,s5,a4
   1ea04:	00068413          	mv	s0,a3
   1ea08:	a15052e3          	blez	s5,1e40c <_svfiprintf_r+0x26c>
   1ea0c:	01000693          	li	a3,16
   1ea10:	6756de63          	bge	a3,s5,1f08c <_svfiprintf_r+0xeec>
   1ea14:	00004c97          	auipc	s9,0x4
   1ea18:	e74c8c93          	addi	s9,s9,-396 # 22888 <zeroes.0>
   1ea1c:	01000b93          	li	s7,16
   1ea20:	00700813          	li	a6,7
   1ea24:	00c0006f          	j	1ea30 <_svfiprintf_r+0x890>
   1ea28:	ff0a8a9b          	addiw	s5,s5,-16
   1ea2c:	055bd863          	bge	s7,s5,1ea7c <_svfiprintf_r+0x8dc>
   1ea30:	0016061b          	addiw	a2,a2,1
   1ea34:	01078793          	addi	a5,a5,16
   1ea38:	01943023          	sd	s9,0(s0)
   1ea3c:	01743423          	sd	s7,8(s0)
   1ea40:	06f13823          	sd	a5,112(sp)
   1ea44:	06c12423          	sw	a2,104(sp)
   1ea48:	01040413          	addi	s0,s0,16
   1ea4c:	fcc85ee3          	bge	a6,a2,1ea28 <_svfiprintf_r+0x888>
   1ea50:	06010613          	addi	a2,sp,96
   1ea54:	00048593          	mv	a1,s1
   1ea58:	00098513          	mv	a0,s3
   1ea5c:	d5cff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1ea60:	a00518e3          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1ea64:	ff0a8a9b          	addiw	s5,s5,-16
   1ea68:	07013783          	ld	a5,112(sp)
   1ea6c:	06812603          	lw	a2,104(sp)
   1ea70:	00090413          	mv	s0,s2
   1ea74:	00700813          	li	a6,7
   1ea78:	fb5bcce3          	blt	s7,s5,1ea30 <_svfiprintf_r+0x890>
   1ea7c:	0016051b          	addiw	a0,a2,1
   1ea80:	01040693          	addi	a3,s0,16
   1ea84:	015787b3          	add	a5,a5,s5
   1ea88:	01943023          	sd	s9,0(s0)
   1ea8c:	01543423          	sd	s5,8(s0)
   1ea90:	06f13823          	sd	a5,112(sp)
   1ea94:	06a12423          	sw	a0,104(sp)
   1ea98:	00700613          	li	a2,7
   1ea9c:	2ea64a63          	blt	a2,a0,1ed90 <_svfiprintf_r+0xbf0>
   1eaa0:	00013703          	ld	a4,0(sp)
   1eaa4:	00068413          	mv	s0,a3
   1eaa8:	0015051b          	addiw	a0,a0,1
   1eaac:	00f707b3          	add	a5,a4,a5
   1eab0:	01068593          	addi	a1,a3,16
   1eab4:	01a43023          	sd	s10,0(s0)
   1eab8:	00e43423          	sd	a4,8(s0)
   1eabc:	06f13823          	sd	a5,112(sp)
   1eac0:	06a12423          	sw	a0,104(sp)
   1eac4:	00700693          	li	a3,7
   1eac8:	96a6d2e3          	bge	a3,a0,1e42c <_svfiprintf_r+0x28c>
   1eacc:	06010613          	addi	a2,sp,96
   1ead0:	00048593          	mv	a1,s1
   1ead4:	00098513          	mv	a0,s3
   1ead8:	ce0ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1eadc:	98051ae3          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1eae0:	07013783          	ld	a5,112(sp)
   1eae4:	00090593          	mv	a1,s2
   1eae8:	945ff06f          	j	1e42c <_svfiprintf_r+0x28c>
   1eaec:	06010613          	addi	a2,sp,96
   1eaf0:	00048593          	mv	a1,s1
   1eaf4:	00098513          	mv	a0,s3
   1eaf8:	cc0ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1eafc:	94050ee3          	beqz	a0,1e458 <_svfiprintf_r+0x2b8>
   1eb00:	971ff06f          	j	1e470 <_svfiprintf_r+0x2d0>
   1eb04:	000b0d93          	mv	s11,s6
   1eb08:	b41ff06f          	j	1e648 <_svfiprintf_r+0x4a8>
   1eb0c:	01000693          	li	a3,16
   1eb10:	00004c97          	auipc	s9,0x4
   1eb14:	d68c8c93          	addi	s9,s9,-664 # 22878 <blanks.1>
   1eb18:	0b76dc63          	bge	a3,s7,1ebd0 <_svfiprintf_r+0xa30>
   1eb1c:	00048693          	mv	a3,s1
   1eb20:	000c8713          	mv	a4,s9
   1eb24:	000b8493          	mv	s1,s7
   1eb28:	000c0c93          	mv	s9,s8
   1eb2c:	000a0b93          	mv	s7,s4
   1eb30:	000a8c13          	mv	s8,s5
   1eb34:	01000e13          	li	t3,16
   1eb38:	00700f93          	li	t6,7
   1eb3c:	05e13023          	sd	t5,64(sp)
   1eb40:	05d13423          	sd	t4,72(sp)
   1eb44:	00070a93          	mv	s5,a4
   1eb48:	00068a13          	mv	s4,a3
   1eb4c:	00c0006f          	j	1eb58 <_svfiprintf_r+0x9b8>
   1eb50:	ff04849b          	addiw	s1,s1,-16
   1eb54:	049e5a63          	bge	t3,s1,1eba8 <_svfiprintf_r+0xa08>
   1eb58:	0016061b          	addiw	a2,a2,1
   1eb5c:	01078793          	addi	a5,a5,16
   1eb60:	01543023          	sd	s5,0(s0)
   1eb64:	01c43423          	sd	t3,8(s0)
   1eb68:	06f13823          	sd	a5,112(sp)
   1eb6c:	06c12423          	sw	a2,104(sp)
   1eb70:	01040413          	addi	s0,s0,16
   1eb74:	fccfdee3          	bge	t6,a2,1eb50 <_svfiprintf_r+0x9b0>
   1eb78:	06010613          	addi	a2,sp,96
   1eb7c:	000a0593          	mv	a1,s4
   1eb80:	00098513          	mv	a0,s3
   1eb84:	c34ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1eb88:	42051063          	bnez	a0,1efa8 <_svfiprintf_r+0xe08>
   1eb8c:	01000e13          	li	t3,16
   1eb90:	ff04849b          	addiw	s1,s1,-16
   1eb94:	07013783          	ld	a5,112(sp)
   1eb98:	06812603          	lw	a2,104(sp)
   1eb9c:	00090413          	mv	s0,s2
   1eba0:	00700f93          	li	t6,7
   1eba4:	fa9e4ae3          	blt	t3,s1,1eb58 <_svfiprintf_r+0x9b8>
   1eba8:	04013f03          	ld	t5,64(sp)
   1ebac:	04813e83          	ld	t4,72(sp)
   1ebb0:	000a0693          	mv	a3,s4
   1ebb4:	000a8713          	mv	a4,s5
   1ebb8:	000b8a13          	mv	s4,s7
   1ebbc:	000c0a93          	mv	s5,s8
   1ebc0:	00048b93          	mv	s7,s1
   1ebc4:	000c8c13          	mv	s8,s9
   1ebc8:	00068493          	mv	s1,a3
   1ebcc:	00070c93          	mv	s9,a4
   1ebd0:	0016061b          	addiw	a2,a2,1
   1ebd4:	017787b3          	add	a5,a5,s7
   1ebd8:	01943023          	sd	s9,0(s0)
   1ebdc:	01743423          	sd	s7,8(s0)
   1ebe0:	06f13823          	sd	a5,112(sp)
   1ebe4:	06c12423          	sw	a2,104(sp)
   1ebe8:	00700693          	li	a3,7
   1ebec:	01040413          	addi	s0,s0,16
   1ebf0:	f8c6d263          	bge	a3,a2,1e374 <_svfiprintf_r+0x1d4>
   1ebf4:	06010613          	addi	a2,sp,96
   1ebf8:	00048593          	mv	a1,s1
   1ebfc:	00098513          	mv	a0,s3
   1ec00:	05d13423          	sd	t4,72(sp)
   1ec04:	05e13023          	sd	t5,64(sp)
   1ec08:	bb0ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1ec0c:	860512e3          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1ec10:	07013783          	ld	a5,112(sp)
   1ec14:	06812603          	lw	a2,104(sp)
   1ec18:	04813e83          	ld	t4,72(sp)
   1ec1c:	04013f03          	ld	t5,64(sp)
   1ec20:	00090413          	mv	s0,s2
   1ec24:	f50ff06f          	j	1e374 <_svfiprintf_r+0x1d4>
   1ec28:	06010613          	addi	a2,sp,96
   1ec2c:	00048593          	mv	a1,s1
   1ec30:	00098513          	mv	a0,s3
   1ec34:	05d13023          	sd	t4,64(sp)
   1ec38:	b80ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1ec3c:	82051ae3          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1ec40:	06812603          	lw	a2,104(sp)
   1ec44:	07013783          	ld	a5,112(sp)
   1ec48:	04013e83          	ld	t4,64(sp)
   1ec4c:	0f010593          	addi	a1,sp,240
   1ec50:	0016051b          	addiw	a0,a2,1
   1ec54:	00090413          	mv	s0,s2
   1ec58:	fa0ff06f          	j	1e3f8 <_svfiprintf_r+0x258>
   1ec5c:	06010613          	addi	a2,sp,96
   1ec60:	00048593          	mv	a1,s1
   1ec64:	00098513          	mv	a0,s3
   1ec68:	05d13423          	sd	t4,72(sp)
   1ec6c:	05e13023          	sd	t5,64(sp)
   1ec70:	b48ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1ec74:	fe051e63          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1ec78:	06812603          	lw	a2,104(sp)
   1ec7c:	07013783          	ld	a5,112(sp)
   1ec80:	04813e83          	ld	t4,72(sp)
   1ec84:	04013f03          	ld	t5,64(sp)
   1ec88:	0f010593          	addi	a1,sp,240
   1ec8c:	0016051b          	addiw	a0,a2,1
   1ec90:	00090413          	mv	s0,s2
   1ec94:	f2cff06f          	j	1e3c0 <_svfiprintf_r+0x220>
   1ec98:	01000613          	li	a2,16
   1ec9c:	06812683          	lw	a3,104(sp)
   1eca0:	00004c97          	auipc	s9,0x4
   1eca4:	bd8c8c93          	addi	s9,s9,-1064 # 22878 <blanks.1>
   1eca8:	01000b93          	li	s7,16
   1ecac:	00700d13          	li	s10,7
   1ecb0:	00058713          	mv	a4,a1
   1ecb4:	00864863          	blt	a2,s0,1ecc4 <_svfiprintf_r+0xb24>
   1ecb8:	0580006f          	j	1ed10 <_svfiprintf_r+0xb70>
   1ecbc:	ff04041b          	addiw	s0,s0,-16
   1ecc0:	048bd663          	bge	s7,s0,1ed0c <_svfiprintf_r+0xb6c>
   1ecc4:	0016869b          	addiw	a3,a3,1
   1ecc8:	01078793          	addi	a5,a5,16
   1eccc:	01973023          	sd	s9,0(a4)
   1ecd0:	01773423          	sd	s7,8(a4)
   1ecd4:	06f13823          	sd	a5,112(sp)
   1ecd8:	06d12423          	sw	a3,104(sp)
   1ecdc:	01070713          	addi	a4,a4,16
   1ece0:	fcdd5ee3          	bge	s10,a3,1ecbc <_svfiprintf_r+0xb1c>
   1ece4:	06010613          	addi	a2,sp,96
   1ece8:	00048593          	mv	a1,s1
   1ecec:	00098513          	mv	a0,s3
   1ecf0:	ac8ff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1ecf4:	f6051e63          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1ecf8:	ff04041b          	addiw	s0,s0,-16
   1ecfc:	07013783          	ld	a5,112(sp)
   1ed00:	06812683          	lw	a3,104(sp)
   1ed04:	00090713          	mv	a4,s2
   1ed08:	fa8bcee3          	blt	s7,s0,1ecc4 <_svfiprintf_r+0xb24>
   1ed0c:	00070593          	mv	a1,a4
   1ed10:	0016861b          	addiw	a2,a3,1
   1ed14:	008787b3          	add	a5,a5,s0
   1ed18:	0195b023          	sd	s9,0(a1)
   1ed1c:	0085b423          	sd	s0,8(a1)
   1ed20:	06f13823          	sd	a5,112(sp)
   1ed24:	06c12423          	sw	a2,104(sp)
   1ed28:	00700693          	li	a3,7
   1ed2c:	f0c6d863          	bge	a3,a2,1e43c <_svfiprintf_r+0x29c>
   1ed30:	06010613          	addi	a2,sp,96
   1ed34:	00048593          	mv	a1,s1
   1ed38:	00098513          	mv	a0,s3
   1ed3c:	a7cff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1ed40:	f2051863          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1ed44:	07013783          	ld	a5,112(sp)
   1ed48:	ef4ff06f          	j	1e43c <_svfiprintf_r+0x29c>
   1ed4c:	fc0a9263          	bnez	s5,1e510 <_svfiprintf_r+0x370>
   1ed50:	000d8b13          	mv	s6,s11
   1ed54:	00000a93          	li	s5,0
   1ed58:	00013023          	sd	zero,0(sp)
   1ed5c:	0dc10d13          	addi	s10,sp,220
   1ed60:	835ff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1ed64:	010df793          	andi	a5,s11,16
   1ed68:	12079063          	bnez	a5,1ee88 <_svfiprintf_r+0xce8>
   1ed6c:	01013703          	ld	a4,16(sp)
   1ed70:	040df793          	andi	a5,s11,64
   1ed74:	00072b83          	lw	s7,0(a4)
   1ed78:	2e078663          	beqz	a5,1f064 <_svfiprintf_r+0xec4>
   1ed7c:	030b9b93          	slli	s7,s7,0x30
   1ed80:	030bdb93          	srli	s7,s7,0x30
   1ed84:	00c13823          	sd	a2,16(sp)
   1ed88:	00100793          	li	a5,1
   1ed8c:	fccff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1ed90:	06010613          	addi	a2,sp,96
   1ed94:	00048593          	mv	a1,s1
   1ed98:	00098513          	mv	a0,s3
   1ed9c:	a1cff0ef          	jal	ra,1dfb8 <__ssprint_r>
   1eda0:	ec051863          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1eda4:	06812503          	lw	a0,104(sp)
   1eda8:	07013783          	ld	a5,112(sp)
   1edac:	0f010593          	addi	a1,sp,240
   1edb0:	0015051b          	addiw	a0,a0,1
   1edb4:	00090413          	mv	s0,s2
   1edb8:	e54ff06f          	j	1e40c <_svfiprintf_r+0x26c>
   1edbc:	400df793          	andi	a5,s11,1024
   1edc0:	00813023          	sd	s0,0(sp)
   1edc4:	02013403          	ld	s0,32(sp)
   1edc8:	0dc10d13          	addi	s10,sp,220
   1edcc:	05313023          	sd	s3,64(sp)
   1edd0:	000b8993          	mv	s3,s7
   1edd4:	00078b93          	mv	s7,a5
   1edd8:	000c0793          	mv	a5,s8
   1eddc:	00000c93          	li	s9,0
   1ede0:	00048c13          	mv	s8,s1
   1ede4:	00900b13          	li	s6,9
   1ede8:	000d0493          	mv	s1,s10
   1edec:	00078d13          	mv	s10,a5
   1edf0:	00a00593          	li	a1,10
   1edf4:	00098513          	mv	a0,s3
   1edf8:	509020ef          	jal	ra,21b00 <__umoddi3>
   1edfc:	0305051b          	addiw	a0,a0,48
   1ee00:	fea48fa3          	sb	a0,-1(s1)
   1ee04:	001c8c9b          	addiw	s9,s9,1
   1ee08:	fff48493          	addi	s1,s1,-1
   1ee0c:	000b8663          	beqz	s7,1ee18 <_svfiprintf_r+0xc78>
   1ee10:	00044683          	lbu	a3,0(s0)
   1ee14:	01968e63          	beq	a3,s9,1ee30 <_svfiprintf_r+0xc90>
   1ee18:	00a00593          	li	a1,10
   1ee1c:	00098513          	mv	a0,s3
   1ee20:	499020ef          	jal	ra,21ab8 <__udivdi3>
   1ee24:	013b7c63          	bgeu	s6,s3,1ee3c <_svfiprintf_r+0xc9c>
   1ee28:	00050993          	mv	s3,a0
   1ee2c:	fc5ff06f          	j	1edf0 <_svfiprintf_r+0xc50>
   1ee30:	0ff00793          	li	a5,255
   1ee34:	fef682e3          	beq	a3,a5,1ee18 <_svfiprintf_r+0xc78>
   1ee38:	113b6c63          	bltu	s6,s3,1ef50 <_svfiprintf_r+0xdb0>
   1ee3c:	000d0793          	mv	a5,s10
   1ee40:	00048d13          	mv	s10,s1
   1ee44:	000c0493          	mv	s1,s8
   1ee48:	00078c13          	mv	s8,a5
   1ee4c:	0dc10793          	addi	a5,sp,220
   1ee50:	41a787bb          	subw	a5,a5,s10
   1ee54:	02813023          	sd	s0,32(sp)
   1ee58:	04013983          	ld	s3,64(sp)
   1ee5c:	00013403          	ld	s0,0(sp)
   1ee60:	000d8b13          	mv	s6,s11
   1ee64:	00f13023          	sd	a5,0(sp)
   1ee68:	f2cff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1ee6c:	01013783          	ld	a5,16(sp)
   1ee70:	0007b783          	ld	a5,0(a5)
   1ee74:	00078b93          	mv	s7,a5
   1ee78:	e74ff06f          	j	1e4ec <_svfiprintf_r+0x34c>
   1ee7c:	01013783          	ld	a5,16(sp)
   1ee80:	0007bb83          	ld	s7,0(a5)
   1ee84:	ec4ff06f          	j	1e548 <_svfiprintf_r+0x3a8>
   1ee88:	01013783          	ld	a5,16(sp)
   1ee8c:	00c13823          	sd	a2,16(sp)
   1ee90:	0007bb83          	ld	s7,0(a5)
   1ee94:	00100793          	li	a5,1
   1ee98:	ec0ff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1ee9c:	000b0d93          	mv	s11,s6
   1eea0:	93dff06f          	j	1e7dc <_svfiprintf_r+0x63c>
   1eea4:	00003717          	auipc	a4,0x3
   1eea8:	d4c70713          	addi	a4,a4,-692 # 21bf0 <__clzdi2+0x80>
   1eeac:	00e13c23          	sd	a4,24(sp)
   1eeb0:	01013703          	ld	a4,16(sp)
   1eeb4:	020b7693          	andi	a3,s6,32
   1eeb8:	00870613          	addi	a2,a4,8
   1eebc:	00069863          	bnez	a3,1eecc <_svfiprintf_r+0xd2c>
   1eec0:	010b7693          	andi	a3,s6,16
   1eec4:	0c068463          	beqz	a3,1ef8c <_svfiprintf_r+0xdec>
   1eec8:	01013703          	ld	a4,16(sp)
   1eecc:	00073b83          	ld	s7,0(a4)
   1eed0:	001b7693          	andi	a3,s6,1
   1eed4:	00068e63          	beqz	a3,1eef0 <_svfiprintf_r+0xd50>
   1eed8:	000b8c63          	beqz	s7,1eef0 <_svfiprintf_r+0xd50>
   1eedc:	002b6313          	ori	t1,s6,2
   1eee0:	03000693          	li	a3,48
   1eee4:	04d10c23          	sb	a3,88(sp)
   1eee8:	04f10ca3          	sb	a5,89(sp)
   1eeec:	00030b1b          	sext.w	s6,t1
   1eef0:	bffb7693          	andi	a3,s6,-1025
   1eef4:	00068d9b          	sext.w	s11,a3
   1eef8:	00c13823          	sd	a2,16(sp)
   1eefc:	00200793          	li	a5,2
   1ef00:	e58ff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1ef04:	00003717          	auipc	a4,0x3
   1ef08:	d0470713          	addi	a4,a4,-764 # 21c08 <__clzdi2+0x98>
   1ef0c:	00e13c23          	sd	a4,24(sp)
   1ef10:	fa1ff06f          	j	1eeb0 <_svfiprintf_r+0xd10>
   1ef14:	000d0513          	mv	a0,s10
   1ef18:	ed1f90ef          	jal	ra,18de8 <strlen>
   1ef1c:	0005079b          	sext.w	a5,a0
   1ef20:	00f13023          	sd	a5,0(sp)
   1ef24:	01713823          	sd	s7,16(sp)
   1ef28:	00000a93          	li	s5,0
   1ef2c:	e68ff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1ef30:	04000593          	li	a1,64
   1ef34:	ce9f70ef          	jal	ra,16c1c <_malloc_r>
   1ef38:	00a4b023          	sd	a0,0(s1)
   1ef3c:	00a4bc23          	sd	a0,24(s1)
   1ef40:	22050063          	beqz	a0,1f160 <_svfiprintf_r+0xfc0>
   1ef44:	04000793          	li	a5,64
   1ef48:	02f4a023          	sw	a5,32(s1)
   1ef4c:	ab0ff06f          	j	1e1fc <_svfiprintf_r+0x5c>
   1ef50:	03013783          	ld	a5,48(sp)
   1ef54:	02813583          	ld	a1,40(sp)
   1ef58:	00000c93          	li	s9,0
   1ef5c:	40f484b3          	sub	s1,s1,a5
   1ef60:	00078613          	mv	a2,a5
   1ef64:	00048513          	mv	a0,s1
   1ef68:	f4df90ef          	jal	ra,18eb4 <strncpy>
   1ef6c:	00144683          	lbu	a3,1(s0)
   1ef70:	00098513          	mv	a0,s3
   1ef74:	00a00593          	li	a1,10
   1ef78:	00d03733          	snez	a4,a3
   1ef7c:	00e40433          	add	s0,s0,a4
   1ef80:	339020ef          	jal	ra,21ab8 <__udivdi3>
   1ef84:	00050993          	mv	s3,a0
   1ef88:	e69ff06f          	j	1edf0 <_svfiprintf_r+0xc50>
   1ef8c:	01013703          	ld	a4,16(sp)
   1ef90:	040b7693          	andi	a3,s6,64
   1ef94:	00072b83          	lw	s7,0(a4)
   1ef98:	0e068263          	beqz	a3,1f07c <_svfiprintf_r+0xedc>
   1ef9c:	030b9b93          	slli	s7,s7,0x30
   1efa0:	030bdb93          	srli	s7,s7,0x30
   1efa4:	f2dff06f          	j	1eed0 <_svfiprintf_r+0xd30>
   1efa8:	000a0493          	mv	s1,s4
   1efac:	cc4ff06f          	j	1e470 <_svfiprintf_r+0x2d0>
   1efb0:	000b0d93          	mv	s11,s6
   1efb4:	00c13823          	sd	a2,16(sp)
   1efb8:	d50ff06f          	j	1e508 <_svfiprintf_r+0x368>
   1efbc:	06010613          	addi	a2,sp,96
   1efc0:	00048593          	mv	a1,s1
   1efc4:	00098513          	mv	a0,s3
   1efc8:	ff1fe0ef          	jal	ra,1dfb8 <__ssprint_r>
   1efcc:	ca051263          	bnez	a0,1e470 <_svfiprintf_r+0x2d0>
   1efd0:	06812603          	lw	a2,104(sp)
   1efd4:	07013783          	ld	a5,112(sp)
   1efd8:	0f010593          	addi	a1,sp,240
   1efdc:	0016051b          	addiw	a0,a2,1
   1efe0:	00090413          	mv	s0,s2
   1efe4:	c1cff06f          	j	1e400 <_svfiprintf_r+0x260>
   1efe8:	200b6b13          	ori	s6,s6,512
   1efec:	001c4783          	lbu	a5,1(s8)
   1eff0:	000b0b1b          	sext.w	s6,s6
   1eff4:	001c0c13          	addi	s8,s8,1
   1eff8:	ac8ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1effc:	020b6b13          	ori	s6,s6,32
   1f000:	001c4783          	lbu	a5,1(s8)
   1f004:	000b0b1b          	sext.w	s6,s6
   1f008:	001c0c13          	addi	s8,s8,1
   1f00c:	ab4ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1f010:	00600793          	li	a5,6
   1f014:	000a8d13          	mv	s10,s5
   1f018:	0157f463          	bgeu	a5,s5,1f020 <_svfiprintf_r+0xe80>
   1f01c:	00600d13          	li	s10,6
   1f020:	000d079b          	sext.w	a5,s10
   1f024:	00f13023          	sd	a5,0(sp)
   1f028:	00078d93          	mv	s11,a5
   1f02c:	01713823          	sd	s7,16(sp)
   1f030:	00003d17          	auipc	s10,0x3
   1f034:	bf0d0d13          	addi	s10,s10,-1040 # 21c20 <__clzdi2+0xb0>
   1f038:	b14ff06f          	j	1e34c <_svfiprintf_r+0x1ac>
   1f03c:	200b7793          	andi	a5,s6,512
   1f040:	08078463          	beqz	a5,1f0c8 <_svfiprintf_r+0xf28>
   1f044:	01013783          	ld	a5,16(sp)
   1f048:	00078b83          	lb	s7,0(a5)
   1f04c:	000b8793          	mv	a5,s7
   1f050:	c9cff06f          	j	1e4ec <_svfiprintf_r+0x34c>
   1f054:	200b7793          	andi	a5,s6,512
   1f058:	06078263          	beqz	a5,1f0bc <_svfiprintf_r+0xf1c>
   1f05c:	0ffbfb93          	andi	s7,s7,255
   1f060:	ce8ff06f          	j	1e548 <_svfiprintf_r+0x3a8>
   1f064:	200df793          	andi	a5,s11,512
   1f068:	04078063          	beqz	a5,1f0a8 <_svfiprintf_r+0xf08>
   1f06c:	0ffbfb93          	andi	s7,s7,255
   1f070:	00c13823          	sd	a2,16(sp)
   1f074:	00100793          	li	a5,1
   1f078:	ce0ff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1f07c:	200b7693          	andi	a3,s6,512
   1f080:	00068e63          	beqz	a3,1f09c <_svfiprintf_r+0xefc>
   1f084:	0ffbfb93          	andi	s7,s7,255
   1f088:	e49ff06f          	j	1eed0 <_svfiprintf_r+0xd30>
   1f08c:	00058693          	mv	a3,a1
   1f090:	00003c97          	auipc	s9,0x3
   1f094:	7f8c8c93          	addi	s9,s9,2040 # 22888 <zeroes.0>
   1f098:	9edff06f          	j	1ea84 <_svfiprintf_r+0x8e4>
   1f09c:	020b9b93          	slli	s7,s7,0x20
   1f0a0:	020bdb93          	srli	s7,s7,0x20
   1f0a4:	e2dff06f          	j	1eed0 <_svfiprintf_r+0xd30>
   1f0a8:	020b9b93          	slli	s7,s7,0x20
   1f0ac:	020bdb93          	srli	s7,s7,0x20
   1f0b0:	00c13823          	sd	a2,16(sp)
   1f0b4:	00100793          	li	a5,1
   1f0b8:	ca0ff06f          	j	1e558 <_svfiprintf_r+0x3b8>
   1f0bc:	020b9b93          	slli	s7,s7,0x20
   1f0c0:	020bdb93          	srli	s7,s7,0x20
   1f0c4:	c84ff06f          	j	1e548 <_svfiprintf_r+0x3a8>
   1f0c8:	01013783          	ld	a5,16(sp)
   1f0cc:	0007ab83          	lw	s7,0(a5)
   1f0d0:	000b8793          	mv	a5,s7
   1f0d4:	c18ff06f          	j	1e4ec <_svfiprintf_r+0x34c>
   1f0d8:	00813783          	ld	a5,8(sp)
   1f0dc:	00f69023          	sh	a5,0(a3)
   1f0e0:	954ff06f          	j	1e234 <_svfiprintf_r+0x94>
   1f0e4:	06010613          	addi	a2,sp,96
   1f0e8:	00048593          	mv	a1,s1
   1f0ec:	00098513          	mv	a0,s3
   1f0f0:	ec9fe0ef          	jal	ra,1dfb8 <__ssprint_r>
   1f0f4:	b7cff06f          	j	1e470 <_svfiprintf_r+0x2d0>
   1f0f8:	01513023          	sd	s5,0(sp)
   1f0fc:	01713823          	sd	s7,16(sp)
   1f100:	00000a93          	li	s5,0
   1f104:	c90ff06f          	j	1e594 <_svfiprintf_r+0x3f4>
   1f108:	000b0d93          	mv	s11,s6
   1f10c:	c04ff06f          	j	1e510 <_svfiprintf_r+0x370>
   1f110:	00058693          	mv	a3,a1
   1f114:	00050613          	mv	a2,a0
   1f118:	00003c97          	auipc	s9,0x3
   1f11c:	770c8c93          	addi	s9,s9,1904 # 22888 <zeroes.0>
   1f120:	8b9ff06f          	j	1e9d8 <_svfiprintf_r+0x838>
   1f124:	00f6a023          	sw	a5,0(a3)
   1f128:	90cff06f          	j	1e234 <_svfiprintf_r+0x94>
   1f12c:	fff00793          	li	a5,-1
   1f130:	00f13423          	sd	a5,8(sp)
   1f134:	b48ff06f          	j	1e47c <_svfiprintf_r+0x2dc>
   1f138:	01013683          	ld	a3,16(sp)
   1f13c:	0006a783          	lw	a5,0(a3)
   1f140:	00868693          	addi	a3,a3,8
   1f144:	00078a9b          	sext.w	s5,a5
   1f148:	0007d463          	bgez	a5,1f150 <_svfiprintf_r+0xfb0>
   1f14c:	fff00a93          	li	s5,-1
   1f150:	001c4783          	lbu	a5,1(s8)
   1f154:	00d13823          	sd	a3,16(sp)
   1f158:	00070c13          	mv	s8,a4
   1f15c:	964ff06f          	j	1e2c0 <_svfiprintf_r+0x120>
   1f160:	00c00793          	li	a5,12
   1f164:	00f9a023          	sw	a5,0(s3)
   1f168:	fff00793          	li	a5,-1
   1f16c:	00f13423          	sd	a5,8(sp)
   1f170:	b0cff06f          	j	1e47c <_svfiprintf_r+0x2dc>

000000000001f174 <__swbuf_r>:
   1f174:	fd010113          	addi	sp,sp,-48
   1f178:	02813023          	sd	s0,32(sp)
   1f17c:	00913c23          	sd	s1,24(sp)
   1f180:	01213823          	sd	s2,16(sp)
   1f184:	02113423          	sd	ra,40(sp)
   1f188:	01313423          	sd	s3,8(sp)
   1f18c:	00050913          	mv	s2,a0
   1f190:	00058493          	mv	s1,a1
   1f194:	00060413          	mv	s0,a2
   1f198:	00050663          	beqz	a0,1f1a4 <__swbuf_r+0x30>
   1f19c:	05052783          	lw	a5,80(a0)
   1f1a0:	14078a63          	beqz	a5,1f2f4 <__swbuf_r+0x180>
   1f1a4:	01041703          	lh	a4,16(s0)
   1f1a8:	02842683          	lw	a3,40(s0)
   1f1ac:	00877793          	andi	a5,a4,8
   1f1b0:	00d42623          	sw	a3,12(s0)
   1f1b4:	03071693          	slli	a3,a4,0x30
   1f1b8:	0306d693          	srli	a3,a3,0x30
   1f1bc:	08078463          	beqz	a5,1f244 <__swbuf_r+0xd0>
   1f1c0:	01843783          	ld	a5,24(s0)
   1f1c4:	08078063          	beqz	a5,1f244 <__swbuf_r+0xd0>
   1f1c8:	00002637          	lui	a2,0x2
   1f1cc:	0ff4f993          	andi	s3,s1,255
   1f1d0:	00c6f6b3          	and	a3,a3,a2
   1f1d4:	00098493          	mv	s1,s3
   1f1d8:	0a068063          	beqz	a3,1f278 <__swbuf_r+0x104>
   1f1dc:	00043703          	ld	a4,0(s0)
   1f1e0:	02042683          	lw	a3,32(s0)
   1f1e4:	40f707bb          	subw	a5,a4,a5
   1f1e8:	0ad7de63          	bge	a5,a3,1f2a4 <__swbuf_r+0x130>
   1f1ec:	00c42683          	lw	a3,12(s0)
   1f1f0:	00170613          	addi	a2,a4,1
   1f1f4:	00c43023          	sd	a2,0(s0)
   1f1f8:	fff6869b          	addiw	a3,a3,-1
   1f1fc:	00d42623          	sw	a3,12(s0)
   1f200:	01370023          	sb	s3,0(a4)
   1f204:	02042703          	lw	a4,32(s0)
   1f208:	0017879b          	addiw	a5,a5,1
   1f20c:	0cf70863          	beq	a4,a5,1f2dc <__swbuf_r+0x168>
   1f210:	01045783          	lhu	a5,16(s0)
   1f214:	0017f793          	andi	a5,a5,1
   1f218:	00078663          	beqz	a5,1f224 <__swbuf_r+0xb0>
   1f21c:	00a00793          	li	a5,10
   1f220:	0af48e63          	beq	s1,a5,1f2dc <__swbuf_r+0x168>
   1f224:	02813083          	ld	ra,40(sp)
   1f228:	02013403          	ld	s0,32(sp)
   1f22c:	01013903          	ld	s2,16(sp)
   1f230:	00813983          	ld	s3,8(sp)
   1f234:	00048513          	mv	a0,s1
   1f238:	01813483          	ld	s1,24(sp)
   1f23c:	03010113          	addi	sp,sp,48
   1f240:	00008067          	ret
   1f244:	00040593          	mv	a1,s0
   1f248:	00090513          	mv	a0,s2
   1f24c:	9c5f30ef          	jal	ra,12c10 <__swsetup_r>
   1f250:	08051e63          	bnez	a0,1f2ec <__swbuf_r+0x178>
   1f254:	01041703          	lh	a4,16(s0)
   1f258:	00002637          	lui	a2,0x2
   1f25c:	0ff4f993          	andi	s3,s1,255
   1f260:	03071693          	slli	a3,a4,0x30
   1f264:	0306d693          	srli	a3,a3,0x30
   1f268:	00c6f6b3          	and	a3,a3,a2
   1f26c:	01843783          	ld	a5,24(s0)
   1f270:	00098493          	mv	s1,s3
   1f274:	f60694e3          	bnez	a3,1f1dc <__swbuf_r+0x68>
   1f278:	0ac42683          	lw	a3,172(s0)
   1f27c:	00c76733          	or	a4,a4,a2
   1f280:	ffffe637          	lui	a2,0xffffe
   1f284:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd941f>
   1f288:	00c6f6b3          	and	a3,a3,a2
   1f28c:	00e41823          	sh	a4,16(s0)
   1f290:	00043703          	ld	a4,0(s0)
   1f294:	0ad42623          	sw	a3,172(s0)
   1f298:	02042683          	lw	a3,32(s0)
   1f29c:	40f707bb          	subw	a5,a4,a5
   1f2a0:	f4d7c6e3          	blt	a5,a3,1f1ec <__swbuf_r+0x78>
   1f2a4:	00040593          	mv	a1,s0
   1f2a8:	00090513          	mv	a0,s2
   1f2ac:	e59f30ef          	jal	ra,13104 <_fflush_r>
   1f2b0:	02051e63          	bnez	a0,1f2ec <__swbuf_r+0x178>
   1f2b4:	00043703          	ld	a4,0(s0)
   1f2b8:	00c42683          	lw	a3,12(s0)
   1f2bc:	00100793          	li	a5,1
   1f2c0:	00170613          	addi	a2,a4,1
   1f2c4:	fff6869b          	addiw	a3,a3,-1
   1f2c8:	00c43023          	sd	a2,0(s0)
   1f2cc:	00d42623          	sw	a3,12(s0)
   1f2d0:	01370023          	sb	s3,0(a4)
   1f2d4:	02042703          	lw	a4,32(s0)
   1f2d8:	f2f71ce3          	bne	a4,a5,1f210 <__swbuf_r+0x9c>
   1f2dc:	00040593          	mv	a1,s0
   1f2e0:	00090513          	mv	a0,s2
   1f2e4:	e21f30ef          	jal	ra,13104 <_fflush_r>
   1f2e8:	f2050ee3          	beqz	a0,1f224 <__swbuf_r+0xb0>
   1f2ec:	fff00493          	li	s1,-1
   1f2f0:	f35ff06f          	j	1f224 <__swbuf_r+0xb0>
   1f2f4:	a4cf40ef          	jal	ra,13540 <__sinit>
   1f2f8:	eadff06f          	j	1f1a4 <__swbuf_r+0x30>

000000000001f2fc <__swbuf>:
   1f2fc:	00058613          	mv	a2,a1
   1f300:	00050593          	mv	a1,a0
   1f304:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1f308:	e6dff06f          	j	1f174 <__swbuf_r>

000000000001f30c <_wcrtomb_r>:
   1f30c:	fd010113          	addi	sp,sp,-48
   1f310:	02813023          	sd	s0,32(sp)
   1f314:	00913c23          	sd	s1,24(sp)
   1f318:	02113423          	sd	ra,40(sp)
   1f31c:	00050413          	mv	s0,a0
   1f320:	00068493          	mv	s1,a3
   1f324:	e401b783          	ld	a5,-448(gp) # 24220 <__global_locale+0xe0>
   1f328:	02058263          	beqz	a1,1f34c <_wcrtomb_r+0x40>
   1f32c:	000780e7          	jalr	a5
   1f330:	fff00793          	li	a5,-1
   1f334:	02f50663          	beq	a0,a5,1f360 <_wcrtomb_r+0x54>
   1f338:	02813083          	ld	ra,40(sp)
   1f33c:	02013403          	ld	s0,32(sp)
   1f340:	01813483          	ld	s1,24(sp)
   1f344:	03010113          	addi	sp,sp,48
   1f348:	00008067          	ret
   1f34c:	00000613          	li	a2,0
   1f350:	00010593          	mv	a1,sp
   1f354:	000780e7          	jalr	a5
   1f358:	fff00793          	li	a5,-1
   1f35c:	fcf51ee3          	bne	a0,a5,1f338 <_wcrtomb_r+0x2c>
   1f360:	0004a023          	sw	zero,0(s1)
   1f364:	08a00793          	li	a5,138
   1f368:	02813083          	ld	ra,40(sp)
   1f36c:	00f42023          	sw	a5,0(s0)
   1f370:	02013403          	ld	s0,32(sp)
   1f374:	01813483          	ld	s1,24(sp)
   1f378:	03010113          	addi	sp,sp,48
   1f37c:	00008067          	ret

000000000001f380 <wcrtomb>:
   1f380:	fd010113          	addi	sp,sp,-48
   1f384:	02813023          	sd	s0,32(sp)
   1f388:	00913c23          	sd	s1,24(sp)
   1f38c:	02113423          	sd	ra,40(sp)
   1f390:	00060413          	mv	s0,a2
   1f394:	7581b483          	ld	s1,1880(gp) # 24b38 <_impure_ptr>
   1f398:	e401b783          	ld	a5,-448(gp) # 24220 <__global_locale+0xe0>
   1f39c:	02050a63          	beqz	a0,1f3d0 <wcrtomb+0x50>
   1f3a0:	00058613          	mv	a2,a1
   1f3a4:	00040693          	mv	a3,s0
   1f3a8:	00050593          	mv	a1,a0
   1f3ac:	00048513          	mv	a0,s1
   1f3b0:	000780e7          	jalr	a5
   1f3b4:	fff00793          	li	a5,-1
   1f3b8:	02f50a63          	beq	a0,a5,1f3ec <wcrtomb+0x6c>
   1f3bc:	02813083          	ld	ra,40(sp)
   1f3c0:	02013403          	ld	s0,32(sp)
   1f3c4:	01813483          	ld	s1,24(sp)
   1f3c8:	03010113          	addi	sp,sp,48
   1f3cc:	00008067          	ret
   1f3d0:	00060693          	mv	a3,a2
   1f3d4:	00010593          	mv	a1,sp
   1f3d8:	00000613          	li	a2,0
   1f3dc:	00048513          	mv	a0,s1
   1f3e0:	000780e7          	jalr	a5
   1f3e4:	fff00793          	li	a5,-1
   1f3e8:	fcf51ae3          	bne	a0,a5,1f3bc <wcrtomb+0x3c>
   1f3ec:	00042023          	sw	zero,0(s0)
   1f3f0:	02813083          	ld	ra,40(sp)
   1f3f4:	02013403          	ld	s0,32(sp)
   1f3f8:	08a00793          	li	a5,138
   1f3fc:	00f4a023          	sw	a5,0(s1)
   1f400:	01813483          	ld	s1,24(sp)
   1f404:	03010113          	addi	sp,sp,48
   1f408:	00008067          	ret

000000000001f40c <abort>:
   1f40c:	ff010113          	addi	sp,sp,-16
   1f410:	00600513          	li	a0,6
   1f414:	00113423          	sd	ra,8(sp)
   1f418:	374000ef          	jal	ra,1f78c <raise>
   1f41c:	00100513          	li	a0,1
   1f420:	6e0000ef          	jal	ra,1fb00 <_exit>

000000000001f424 <__register_exitproc>:
   1f424:	7481b703          	ld	a4,1864(gp) # 24b28 <_global_impure_ptr>
   1f428:	1f873783          	ld	a5,504(a4)
   1f42c:	06078063          	beqz	a5,1f48c <__register_exitproc+0x68>
   1f430:	0087a703          	lw	a4,8(a5)
   1f434:	01f00813          	li	a6,31
   1f438:	08e84663          	blt	a6,a4,1f4c4 <__register_exitproc+0xa0>
   1f43c:	02050863          	beqz	a0,1f46c <__register_exitproc+0x48>
   1f440:	00371813          	slli	a6,a4,0x3
   1f444:	01078833          	add	a6,a5,a6
   1f448:	10c83823          	sd	a2,272(a6)
   1f44c:	3107a883          	lw	a7,784(a5)
   1f450:	00100613          	li	a2,1
   1f454:	00e6163b          	sllw	a2,a2,a4
   1f458:	00c8e8b3          	or	a7,a7,a2
   1f45c:	3117a823          	sw	a7,784(a5)
   1f460:	20d83823          	sd	a3,528(a6)
   1f464:	00200693          	li	a3,2
   1f468:	02d50863          	beq	a0,a3,1f498 <__register_exitproc+0x74>
   1f46c:	00270693          	addi	a3,a4,2
   1f470:	00369693          	slli	a3,a3,0x3
   1f474:	0017071b          	addiw	a4,a4,1
   1f478:	00e7a423          	sw	a4,8(a5)
   1f47c:	00d787b3          	add	a5,a5,a3
   1f480:	00b7b023          	sd	a1,0(a5)
   1f484:	00000513          	li	a0,0
   1f488:	00008067          	ret
   1f48c:	20070793          	addi	a5,a4,512
   1f490:	1ef73c23          	sd	a5,504(a4)
   1f494:	f9dff06f          	j	1f430 <__register_exitproc+0xc>
   1f498:	3147a683          	lw	a3,788(a5)
   1f49c:	00000513          	li	a0,0
   1f4a0:	00c6e633          	or	a2,a3,a2
   1f4a4:	00270693          	addi	a3,a4,2
   1f4a8:	00369693          	slli	a3,a3,0x3
   1f4ac:	0017071b          	addiw	a4,a4,1
   1f4b0:	30c7aa23          	sw	a2,788(a5)
   1f4b4:	00e7a423          	sw	a4,8(a5)
   1f4b8:	00d787b3          	add	a5,a5,a3
   1f4bc:	00b7b023          	sd	a1,0(a5)
   1f4c0:	00008067          	ret
   1f4c4:	fff00513          	li	a0,-1
   1f4c8:	00008067          	ret

000000000001f4cc <_init_signal_r>:
   1f4cc:	51853783          	ld	a5,1304(a0)
   1f4d0:	00078663          	beqz	a5,1f4dc <_init_signal_r+0x10>
   1f4d4:	00000513          	li	a0,0
   1f4d8:	00008067          	ret
   1f4dc:	ff010113          	addi	sp,sp,-16
   1f4e0:	10000593          	li	a1,256
   1f4e4:	00813023          	sd	s0,0(sp)
   1f4e8:	00113423          	sd	ra,8(sp)
   1f4ec:	00050413          	mv	s0,a0
   1f4f0:	f2cf70ef          	jal	ra,16c1c <_malloc_r>
   1f4f4:	50a43c23          	sd	a0,1304(s0)
   1f4f8:	02050463          	beqz	a0,1f520 <_init_signal_r+0x54>
   1f4fc:	10050793          	addi	a5,a0,256
   1f500:	00053023          	sd	zero,0(a0)
   1f504:	00850513          	addi	a0,a0,8
   1f508:	fef51ce3          	bne	a0,a5,1f500 <_init_signal_r+0x34>
   1f50c:	00000513          	li	a0,0
   1f510:	00813083          	ld	ra,8(sp)
   1f514:	00013403          	ld	s0,0(sp)
   1f518:	01010113          	addi	sp,sp,16
   1f51c:	00008067          	ret
   1f520:	fff00513          	li	a0,-1
   1f524:	fedff06f          	j	1f510 <_init_signal_r+0x44>

000000000001f528 <_signal_r>:
   1f528:	fd010113          	addi	sp,sp,-48
   1f52c:	00913c23          	sd	s1,24(sp)
   1f530:	02113423          	sd	ra,40(sp)
   1f534:	02813023          	sd	s0,32(sp)
   1f538:	01f00793          	li	a5,31
   1f53c:	00050493          	mv	s1,a0
   1f540:	02b7ea63          	bltu	a5,a1,1f574 <_signal_r+0x4c>
   1f544:	51853703          	ld	a4,1304(a0)
   1f548:	00058413          	mv	s0,a1
   1f54c:	04070463          	beqz	a4,1f594 <_signal_r+0x6c>
   1f550:	00341413          	slli	s0,s0,0x3
   1f554:	00870433          	add	s0,a4,s0
   1f558:	00043503          	ld	a0,0(s0)
   1f55c:	00c43023          	sd	a2,0(s0)
   1f560:	02813083          	ld	ra,40(sp)
   1f564:	02013403          	ld	s0,32(sp)
   1f568:	01813483          	ld	s1,24(sp)
   1f56c:	03010113          	addi	sp,sp,48
   1f570:	00008067          	ret
   1f574:	02813083          	ld	ra,40(sp)
   1f578:	02013403          	ld	s0,32(sp)
   1f57c:	01600793          	li	a5,22
   1f580:	00f52023          	sw	a5,0(a0)
   1f584:	01813483          	ld	s1,24(sp)
   1f588:	fff00513          	li	a0,-1
   1f58c:	03010113          	addi	sp,sp,48
   1f590:	00008067          	ret
   1f594:	10000593          	li	a1,256
   1f598:	00c13423          	sd	a2,8(sp)
   1f59c:	e80f70ef          	jal	ra,16c1c <_malloc_r>
   1f5a0:	50a4bc23          	sd	a0,1304(s1)
   1f5a4:	00050713          	mv	a4,a0
   1f5a8:	02050063          	beqz	a0,1f5c8 <_signal_r+0xa0>
   1f5ac:	00813603          	ld	a2,8(sp)
   1f5b0:	00050793          	mv	a5,a0
   1f5b4:	10050693          	addi	a3,a0,256
   1f5b8:	0007b023          	sd	zero,0(a5)
   1f5bc:	00878793          	addi	a5,a5,8
   1f5c0:	fef69ce3          	bne	a3,a5,1f5b8 <_signal_r+0x90>
   1f5c4:	f8dff06f          	j	1f550 <_signal_r+0x28>
   1f5c8:	fff00513          	li	a0,-1
   1f5cc:	f95ff06f          	j	1f560 <_signal_r+0x38>

000000000001f5d0 <_raise_r>:
   1f5d0:	fe010113          	addi	sp,sp,-32
   1f5d4:	00913423          	sd	s1,8(sp)
   1f5d8:	00113c23          	sd	ra,24(sp)
   1f5dc:	00813823          	sd	s0,16(sp)
   1f5e0:	01f00793          	li	a5,31
   1f5e4:	00050493          	mv	s1,a0
   1f5e8:	0ab7ea63          	bltu	a5,a1,1f69c <_raise_r+0xcc>
   1f5ec:	51853783          	ld	a5,1304(a0)
   1f5f0:	00058413          	mv	s0,a1
   1f5f4:	04078463          	beqz	a5,1f63c <_raise_r+0x6c>
   1f5f8:	00359713          	slli	a4,a1,0x3
   1f5fc:	00e787b3          	add	a5,a5,a4
   1f600:	0007b703          	ld	a4,0(a5)
   1f604:	02070c63          	beqz	a4,1f63c <_raise_r+0x6c>
   1f608:	00100693          	li	a3,1
   1f60c:	06d70c63          	beq	a4,a3,1f684 <_raise_r+0xb4>
   1f610:	fff00693          	li	a3,-1
   1f614:	04d70863          	beq	a4,a3,1f664 <_raise_r+0x94>
   1f618:	00058513          	mv	a0,a1
   1f61c:	0007b023          	sd	zero,0(a5)
   1f620:	000700e7          	jalr	a4
   1f624:	00000513          	li	a0,0
   1f628:	01813083          	ld	ra,24(sp)
   1f62c:	01013403          	ld	s0,16(sp)
   1f630:	00813483          	ld	s1,8(sp)
   1f634:	02010113          	addi	sp,sp,32
   1f638:	00008067          	ret
   1f63c:	00048513          	mv	a0,s1
   1f640:	464000ef          	jal	ra,1faa4 <_getpid_r>
   1f644:	00040613          	mv	a2,s0
   1f648:	01013403          	ld	s0,16(sp)
   1f64c:	01813083          	ld	ra,24(sp)
   1f650:	00050593          	mv	a1,a0
   1f654:	00048513          	mv	a0,s1
   1f658:	00813483          	ld	s1,8(sp)
   1f65c:	02010113          	addi	sp,sp,32
   1f660:	3ec0006f          	j	1fa4c <_kill_r>
   1f664:	01813083          	ld	ra,24(sp)
   1f668:	01013403          	ld	s0,16(sp)
   1f66c:	01600793          	li	a5,22
   1f670:	00f52023          	sw	a5,0(a0)
   1f674:	00813483          	ld	s1,8(sp)
   1f678:	00100513          	li	a0,1
   1f67c:	02010113          	addi	sp,sp,32
   1f680:	00008067          	ret
   1f684:	01813083          	ld	ra,24(sp)
   1f688:	01013403          	ld	s0,16(sp)
   1f68c:	00813483          	ld	s1,8(sp)
   1f690:	00000513          	li	a0,0
   1f694:	02010113          	addi	sp,sp,32
   1f698:	00008067          	ret
   1f69c:	01600793          	li	a5,22
   1f6a0:	00f52023          	sw	a5,0(a0)
   1f6a4:	fff00513          	li	a0,-1
   1f6a8:	f81ff06f          	j	1f628 <_raise_r+0x58>

000000000001f6ac <__sigtramp_r>:
   1f6ac:	01f00793          	li	a5,31
   1f6b0:	0cb7ea63          	bltu	a5,a1,1f784 <__sigtramp_r+0xd8>
   1f6b4:	51853703          	ld	a4,1304(a0)
   1f6b8:	fe010113          	addi	sp,sp,-32
   1f6bc:	00813823          	sd	s0,16(sp)
   1f6c0:	00913423          	sd	s1,8(sp)
   1f6c4:	00113c23          	sd	ra,24(sp)
   1f6c8:	00058413          	mv	s0,a1
   1f6cc:	00050493          	mv	s1,a0
   1f6d0:	06070063          	beqz	a4,1f730 <__sigtramp_r+0x84>
   1f6d4:	00341513          	slli	a0,s0,0x3
   1f6d8:	00a70733          	add	a4,a4,a0
   1f6dc:	00073783          	ld	a5,0(a4)
   1f6e0:	02078c63          	beqz	a5,1f718 <__sigtramp_r+0x6c>
   1f6e4:	fff00693          	li	a3,-1
   1f6e8:	08d78663          	beq	a5,a3,1f774 <__sigtramp_r+0xc8>
   1f6ec:	00100693          	li	a3,1
   1f6f0:	06d78663          	beq	a5,a3,1f75c <__sigtramp_r+0xb0>
   1f6f4:	00040513          	mv	a0,s0
   1f6f8:	00073023          	sd	zero,0(a4)
   1f6fc:	000780e7          	jalr	a5
   1f700:	00000513          	li	a0,0
   1f704:	01813083          	ld	ra,24(sp)
   1f708:	01013403          	ld	s0,16(sp)
   1f70c:	00813483          	ld	s1,8(sp)
   1f710:	02010113          	addi	sp,sp,32
   1f714:	00008067          	ret
   1f718:	01813083          	ld	ra,24(sp)
   1f71c:	01013403          	ld	s0,16(sp)
   1f720:	00813483          	ld	s1,8(sp)
   1f724:	00100513          	li	a0,1
   1f728:	02010113          	addi	sp,sp,32
   1f72c:	00008067          	ret
   1f730:	10000593          	li	a1,256
   1f734:	ce8f70ef          	jal	ra,16c1c <_malloc_r>
   1f738:	50a4bc23          	sd	a0,1304(s1)
   1f73c:	00050713          	mv	a4,a0
   1f740:	02050e63          	beqz	a0,1f77c <__sigtramp_r+0xd0>
   1f744:	00050793          	mv	a5,a0
   1f748:	10050693          	addi	a3,a0,256
   1f74c:	0007b023          	sd	zero,0(a5)
   1f750:	00878793          	addi	a5,a5,8
   1f754:	fed79ce3          	bne	a5,a3,1f74c <__sigtramp_r+0xa0>
   1f758:	f7dff06f          	j	1f6d4 <__sigtramp_r+0x28>
   1f75c:	01813083          	ld	ra,24(sp)
   1f760:	01013403          	ld	s0,16(sp)
   1f764:	00813483          	ld	s1,8(sp)
   1f768:	00300513          	li	a0,3
   1f76c:	02010113          	addi	sp,sp,32
   1f770:	00008067          	ret
   1f774:	00200513          	li	a0,2
   1f778:	f8dff06f          	j	1f704 <__sigtramp_r+0x58>
   1f77c:	fff00513          	li	a0,-1
   1f780:	f85ff06f          	j	1f704 <__sigtramp_r+0x58>
   1f784:	fff00513          	li	a0,-1
   1f788:	00008067          	ret

000000000001f78c <raise>:
   1f78c:	fe010113          	addi	sp,sp,-32
   1f790:	00913423          	sd	s1,8(sp)
   1f794:	00113c23          	sd	ra,24(sp)
   1f798:	00813823          	sd	s0,16(sp)
   1f79c:	01f00793          	li	a5,31
   1f7a0:	7581b483          	ld	s1,1880(gp) # 24b38 <_impure_ptr>
   1f7a4:	0aa7e863          	bltu	a5,a0,1f854 <raise+0xc8>
   1f7a8:	5184b783          	ld	a5,1304(s1)
   1f7ac:	00050413          	mv	s0,a0
   1f7b0:	04078263          	beqz	a5,1f7f4 <raise+0x68>
   1f7b4:	00351713          	slli	a4,a0,0x3
   1f7b8:	00e787b3          	add	a5,a5,a4
   1f7bc:	0007b703          	ld	a4,0(a5)
   1f7c0:	02070a63          	beqz	a4,1f7f4 <raise+0x68>
   1f7c4:	00100693          	li	a3,1
   1f7c8:	06d70a63          	beq	a4,a3,1f83c <raise+0xb0>
   1f7cc:	fff00693          	li	a3,-1
   1f7d0:	04d70663          	beq	a4,a3,1f81c <raise+0x90>
   1f7d4:	0007b023          	sd	zero,0(a5)
   1f7d8:	000700e7          	jalr	a4
   1f7dc:	00000513          	li	a0,0
   1f7e0:	01813083          	ld	ra,24(sp)
   1f7e4:	01013403          	ld	s0,16(sp)
   1f7e8:	00813483          	ld	s1,8(sp)
   1f7ec:	02010113          	addi	sp,sp,32
   1f7f0:	00008067          	ret
   1f7f4:	00048513          	mv	a0,s1
   1f7f8:	2ac000ef          	jal	ra,1faa4 <_getpid_r>
   1f7fc:	00040613          	mv	a2,s0
   1f800:	01013403          	ld	s0,16(sp)
   1f804:	01813083          	ld	ra,24(sp)
   1f808:	00050593          	mv	a1,a0
   1f80c:	00048513          	mv	a0,s1
   1f810:	00813483          	ld	s1,8(sp)
   1f814:	02010113          	addi	sp,sp,32
   1f818:	2340006f          	j	1fa4c <_kill_r>
   1f81c:	01813083          	ld	ra,24(sp)
   1f820:	01013403          	ld	s0,16(sp)
   1f824:	01600793          	li	a5,22
   1f828:	00f4a023          	sw	a5,0(s1)
   1f82c:	00100513          	li	a0,1
   1f830:	00813483          	ld	s1,8(sp)
   1f834:	02010113          	addi	sp,sp,32
   1f838:	00008067          	ret
   1f83c:	01813083          	ld	ra,24(sp)
   1f840:	01013403          	ld	s0,16(sp)
   1f844:	00813483          	ld	s1,8(sp)
   1f848:	00000513          	li	a0,0
   1f84c:	02010113          	addi	sp,sp,32
   1f850:	00008067          	ret
   1f854:	01600793          	li	a5,22
   1f858:	00f4a023          	sw	a5,0(s1)
   1f85c:	fff00513          	li	a0,-1
   1f860:	f81ff06f          	j	1f7e0 <raise+0x54>

000000000001f864 <signal>:
   1f864:	fe010113          	addi	sp,sp,-32
   1f868:	01213023          	sd	s2,0(sp)
   1f86c:	00113c23          	sd	ra,24(sp)
   1f870:	00813823          	sd	s0,16(sp)
   1f874:	00913423          	sd	s1,8(sp)
   1f878:	01f00793          	li	a5,31
   1f87c:	7581b903          	ld	s2,1880(gp) # 24b38 <_impure_ptr>
   1f880:	02a7ee63          	bltu	a5,a0,1f8bc <signal+0x58>
   1f884:	00050413          	mv	s0,a0
   1f888:	51893503          	ld	a0,1304(s2)
   1f88c:	00058493          	mv	s1,a1
   1f890:	04050863          	beqz	a0,1f8e0 <signal+0x7c>
   1f894:	00341413          	slli	s0,s0,0x3
   1f898:	00850433          	add	s0,a0,s0
   1f89c:	00043503          	ld	a0,0(s0)
   1f8a0:	00943023          	sd	s1,0(s0)
   1f8a4:	01813083          	ld	ra,24(sp)
   1f8a8:	01013403          	ld	s0,16(sp)
   1f8ac:	00813483          	ld	s1,8(sp)
   1f8b0:	00013903          	ld	s2,0(sp)
   1f8b4:	02010113          	addi	sp,sp,32
   1f8b8:	00008067          	ret
   1f8bc:	01813083          	ld	ra,24(sp)
   1f8c0:	01013403          	ld	s0,16(sp)
   1f8c4:	01600793          	li	a5,22
   1f8c8:	00f92023          	sw	a5,0(s2)
   1f8cc:	00813483          	ld	s1,8(sp)
   1f8d0:	00013903          	ld	s2,0(sp)
   1f8d4:	fff00513          	li	a0,-1
   1f8d8:	02010113          	addi	sp,sp,32
   1f8dc:	00008067          	ret
   1f8e0:	10000593          	li	a1,256
   1f8e4:	00090513          	mv	a0,s2
   1f8e8:	b34f70ef          	jal	ra,16c1c <_malloc_r>
   1f8ec:	50a93c23          	sd	a0,1304(s2)
   1f8f0:	00050e63          	beqz	a0,1f90c <signal+0xa8>
   1f8f4:	00050793          	mv	a5,a0
   1f8f8:	10050713          	addi	a4,a0,256
   1f8fc:	0007b023          	sd	zero,0(a5)
   1f900:	00878793          	addi	a5,a5,8
   1f904:	fef71ce3          	bne	a4,a5,1f8fc <signal+0x98>
   1f908:	f8dff06f          	j	1f894 <signal+0x30>
   1f90c:	fff00513          	li	a0,-1
   1f910:	f95ff06f          	j	1f8a4 <signal+0x40>

000000000001f914 <_init_signal>:
   1f914:	ff010113          	addi	sp,sp,-16
   1f918:	00813023          	sd	s0,0(sp)
   1f91c:	7581b403          	ld	s0,1880(gp) # 24b38 <_impure_ptr>
   1f920:	51843783          	ld	a5,1304(s0)
   1f924:	00113423          	sd	ra,8(sp)
   1f928:	00078c63          	beqz	a5,1f940 <_init_signal+0x2c>
   1f92c:	00000513          	li	a0,0
   1f930:	00813083          	ld	ra,8(sp)
   1f934:	00013403          	ld	s0,0(sp)
   1f938:	01010113          	addi	sp,sp,16
   1f93c:	00008067          	ret
   1f940:	10000593          	li	a1,256
   1f944:	00040513          	mv	a0,s0
   1f948:	ad4f70ef          	jal	ra,16c1c <_malloc_r>
   1f94c:	50a43c23          	sd	a0,1304(s0)
   1f950:	00050c63          	beqz	a0,1f968 <_init_signal+0x54>
   1f954:	10050793          	addi	a5,a0,256
   1f958:	00053023          	sd	zero,0(a0)
   1f95c:	00850513          	addi	a0,a0,8
   1f960:	fef51ce3          	bne	a0,a5,1f958 <_init_signal+0x44>
   1f964:	fc9ff06f          	j	1f92c <_init_signal+0x18>
   1f968:	fff00513          	li	a0,-1
   1f96c:	fc5ff06f          	j	1f930 <_init_signal+0x1c>

000000000001f970 <__sigtramp>:
   1f970:	fe010113          	addi	sp,sp,-32
   1f974:	00913423          	sd	s1,8(sp)
   1f978:	00113c23          	sd	ra,24(sp)
   1f97c:	00813823          	sd	s0,16(sp)
   1f980:	01f00793          	li	a5,31
   1f984:	7581b483          	ld	s1,1880(gp) # 24b38 <_impure_ptr>
   1f988:	0aa7ee63          	bltu	a5,a0,1fa44 <__sigtramp+0xd4>
   1f98c:	5184b703          	ld	a4,1304(s1)
   1f990:	00050413          	mv	s0,a0
   1f994:	06070063          	beqz	a4,1f9f4 <__sigtramp+0x84>
   1f998:	00341513          	slli	a0,s0,0x3
   1f99c:	00a70733          	add	a4,a4,a0
   1f9a0:	00073783          	ld	a5,0(a4)
   1f9a4:	02078c63          	beqz	a5,1f9dc <__sigtramp+0x6c>
   1f9a8:	fff00693          	li	a3,-1
   1f9ac:	08d78863          	beq	a5,a3,1fa3c <__sigtramp+0xcc>
   1f9b0:	00100693          	li	a3,1
   1f9b4:	06d78863          	beq	a5,a3,1fa24 <__sigtramp+0xb4>
   1f9b8:	00040513          	mv	a0,s0
   1f9bc:	00073023          	sd	zero,0(a4)
   1f9c0:	000780e7          	jalr	a5
   1f9c4:	00000513          	li	a0,0
   1f9c8:	01813083          	ld	ra,24(sp)
   1f9cc:	01013403          	ld	s0,16(sp)
   1f9d0:	00813483          	ld	s1,8(sp)
   1f9d4:	02010113          	addi	sp,sp,32
   1f9d8:	00008067          	ret
   1f9dc:	01813083          	ld	ra,24(sp)
   1f9e0:	01013403          	ld	s0,16(sp)
   1f9e4:	00813483          	ld	s1,8(sp)
   1f9e8:	00100513          	li	a0,1
   1f9ec:	02010113          	addi	sp,sp,32
   1f9f0:	00008067          	ret
   1f9f4:	10000593          	li	a1,256
   1f9f8:	00048513          	mv	a0,s1
   1f9fc:	a20f70ef          	jal	ra,16c1c <_malloc_r>
   1fa00:	50a4bc23          	sd	a0,1304(s1)
   1fa04:	00050713          	mv	a4,a0
   1fa08:	02050e63          	beqz	a0,1fa44 <__sigtramp+0xd4>
   1fa0c:	00050793          	mv	a5,a0
   1fa10:	10050693          	addi	a3,a0,256
   1fa14:	0007b023          	sd	zero,0(a5)
   1fa18:	00878793          	addi	a5,a5,8
   1fa1c:	fed79ce3          	bne	a5,a3,1fa14 <__sigtramp+0xa4>
   1fa20:	f79ff06f          	j	1f998 <__sigtramp+0x28>
   1fa24:	01813083          	ld	ra,24(sp)
   1fa28:	01013403          	ld	s0,16(sp)
   1fa2c:	00813483          	ld	s1,8(sp)
   1fa30:	00300513          	li	a0,3
   1fa34:	02010113          	addi	sp,sp,32
   1fa38:	00008067          	ret
   1fa3c:	00200513          	li	a0,2
   1fa40:	f89ff06f          	j	1f9c8 <__sigtramp+0x58>
   1fa44:	fff00513          	li	a0,-1
   1fa48:	f81ff06f          	j	1f9c8 <__sigtramp+0x58>

000000000001fa4c <_kill_r>:
   1fa4c:	ff010113          	addi	sp,sp,-16
   1fa50:	00058713          	mv	a4,a1
   1fa54:	00813023          	sd	s0,0(sp)
   1fa58:	00060593          	mv	a1,a2
   1fa5c:	00050413          	mv	s0,a0
   1fa60:	00070513          	mv	a0,a4
   1fa64:	7801a823          	sw	zero,1936(gp) # 24b70 <errno>
   1fa68:	00113423          	sd	ra,8(sp)
   1fa6c:	194000ef          	jal	ra,1fc00 <_kill>
   1fa70:	fff00793          	li	a5,-1
   1fa74:	00f50a63          	beq	a0,a5,1fa88 <_kill_r+0x3c>
   1fa78:	00813083          	ld	ra,8(sp)
   1fa7c:	00013403          	ld	s0,0(sp)
   1fa80:	01010113          	addi	sp,sp,16
   1fa84:	00008067          	ret
   1fa88:	7901a783          	lw	a5,1936(gp) # 24b70 <errno>
   1fa8c:	fe0786e3          	beqz	a5,1fa78 <_kill_r+0x2c>
   1fa90:	00813083          	ld	ra,8(sp)
   1fa94:	00f42023          	sw	a5,0(s0)
   1fa98:	00013403          	ld	s0,0(sp)
   1fa9c:	01010113          	addi	sp,sp,16
   1faa0:	00008067          	ret

000000000001faa4 <_getpid_r>:
   1faa4:	1140006f          	j	1fbb8 <_getpid>

000000000001faa8 <_close>:
   1faa8:	ff010113          	addi	sp,sp,-16
   1faac:	00113423          	sd	ra,8(sp)
   1fab0:	00813023          	sd	s0,0(sp)
   1fab4:	00000593          	li	a1,0
   1fab8:	00000613          	li	a2,0
   1fabc:	00000693          	li	a3,0
   1fac0:	00000713          	li	a4,0
   1fac4:	00000793          	li	a5,0
   1fac8:	03900893          	li	a7,57
   1facc:	00000073          	ecall
   1fad0:	00050413          	mv	s0,a0
   1fad4:	00054c63          	bltz	a0,1faec <_close+0x44>
   1fad8:	0005051b          	sext.w	a0,a0
   1fadc:	00813083          	ld	ra,8(sp)
   1fae0:	00013403          	ld	s0,0(sp)
   1fae4:	01010113          	addi	sp,sp,16
   1fae8:	00008067          	ret
   1faec:	334000ef          	jal	ra,1fe20 <__errno>
   1faf0:	4080043b          	negw	s0,s0
   1faf4:	00852023          	sw	s0,0(a0)
   1faf8:	fff00513          	li	a0,-1
   1fafc:	fe1ff06f          	j	1fadc <_close+0x34>

000000000001fb00 <_exit>:
   1fb00:	00000593          	li	a1,0
   1fb04:	00000613          	li	a2,0
   1fb08:	00000693          	li	a3,0
   1fb0c:	00000713          	li	a4,0
   1fb10:	00000793          	li	a5,0
   1fb14:	05d00893          	li	a7,93
   1fb18:	00000073          	ecall
   1fb1c:	00054463          	bltz	a0,1fb24 <_exit+0x24>
   1fb20:	0000006f          	j	1fb20 <_exit+0x20>
   1fb24:	ff010113          	addi	sp,sp,-16
   1fb28:	00813023          	sd	s0,0(sp)
   1fb2c:	00050413          	mv	s0,a0
   1fb30:	00113423          	sd	ra,8(sp)
   1fb34:	4080043b          	negw	s0,s0
   1fb38:	2e8000ef          	jal	ra,1fe20 <__errno>
   1fb3c:	00852023          	sw	s0,0(a0)
   1fb40:	0000006f          	j	1fb40 <_exit+0x40>

000000000001fb44 <_fstat>:
   1fb44:	f6010113          	addi	sp,sp,-160
   1fb48:	08913423          	sd	s1,136(sp)
   1fb4c:	08113c23          	sd	ra,152(sp)
   1fb50:	00058493          	mv	s1,a1
   1fb54:	08813823          	sd	s0,144(sp)
   1fb58:	00010593          	mv	a1,sp
   1fb5c:	00000613          	li	a2,0
   1fb60:	00000693          	li	a3,0
   1fb64:	00000713          	li	a4,0
   1fb68:	00000793          	li	a5,0
   1fb6c:	05000893          	li	a7,80
   1fb70:	00000073          	ecall
   1fb74:	00050413          	mv	s0,a0
   1fb78:	02054663          	bltz	a0,1fba4 <_fstat+0x60>
   1fb7c:	0005041b          	sext.w	s0,a0
   1fb80:	00048513          	mv	a0,s1
   1fb84:	00010593          	mv	a1,sp
   1fb88:	22c000ef          	jal	ra,1fdb4 <_conv_stat>
   1fb8c:	09813083          	ld	ra,152(sp)
   1fb90:	00040513          	mv	a0,s0
   1fb94:	09013403          	ld	s0,144(sp)
   1fb98:	08813483          	ld	s1,136(sp)
   1fb9c:	0a010113          	addi	sp,sp,160
   1fba0:	00008067          	ret
   1fba4:	4080043b          	negw	s0,s0
   1fba8:	278000ef          	jal	ra,1fe20 <__errno>
   1fbac:	00852023          	sw	s0,0(a0)
   1fbb0:	fff00413          	li	s0,-1
   1fbb4:	fcdff06f          	j	1fb80 <_fstat+0x3c>

000000000001fbb8 <_getpid>:
   1fbb8:	00100513          	li	a0,1
   1fbbc:	00008067          	ret

000000000001fbc0 <_isatty>:
   1fbc0:	f8010113          	addi	sp,sp,-128
   1fbc4:	00810593          	addi	a1,sp,8
   1fbc8:	06113c23          	sd	ra,120(sp)
   1fbcc:	f79ff0ef          	jal	ra,1fb44 <_fstat>
   1fbd0:	fff00793          	li	a5,-1
   1fbd4:	00f50e63          	beq	a0,a5,1fbf0 <_isatty+0x30>
   1fbd8:	00c12503          	lw	a0,12(sp)
   1fbdc:	07813083          	ld	ra,120(sp)
   1fbe0:	40d5551b          	sraiw	a0,a0,0xd
   1fbe4:	00157513          	andi	a0,a0,1
   1fbe8:	08010113          	addi	sp,sp,128
   1fbec:	00008067          	ret
   1fbf0:	07813083          	ld	ra,120(sp)
   1fbf4:	00000513          	li	a0,0
   1fbf8:	08010113          	addi	sp,sp,128
   1fbfc:	00008067          	ret

000000000001fc00 <_kill>:
   1fc00:	ff010113          	addi	sp,sp,-16
   1fc04:	00113423          	sd	ra,8(sp)
   1fc08:	218000ef          	jal	ra,1fe20 <__errno>
   1fc0c:	00813083          	ld	ra,8(sp)
   1fc10:	01600793          	li	a5,22
   1fc14:	00f52023          	sw	a5,0(a0)
   1fc18:	fff00513          	li	a0,-1
   1fc1c:	01010113          	addi	sp,sp,16
   1fc20:	00008067          	ret

000000000001fc24 <_lseek>:
   1fc24:	ff010113          	addi	sp,sp,-16
   1fc28:	00113423          	sd	ra,8(sp)
   1fc2c:	00813023          	sd	s0,0(sp)
   1fc30:	00000693          	li	a3,0
   1fc34:	00000713          	li	a4,0
   1fc38:	00000793          	li	a5,0
   1fc3c:	03e00893          	li	a7,62
   1fc40:	00000073          	ecall
   1fc44:	00050413          	mv	s0,a0
   1fc48:	00054c63          	bltz	a0,1fc60 <_lseek+0x3c>
   1fc4c:	00813083          	ld	ra,8(sp)
   1fc50:	00040513          	mv	a0,s0
   1fc54:	00013403          	ld	s0,0(sp)
   1fc58:	01010113          	addi	sp,sp,16
   1fc5c:	00008067          	ret
   1fc60:	4080043b          	negw	s0,s0
   1fc64:	1bc000ef          	jal	ra,1fe20 <__errno>
   1fc68:	00852023          	sw	s0,0(a0)
   1fc6c:	fff00413          	li	s0,-1
   1fc70:	fddff06f          	j	1fc4c <_lseek+0x28>

000000000001fc74 <_read>:
   1fc74:	ff010113          	addi	sp,sp,-16
   1fc78:	00113423          	sd	ra,8(sp)
   1fc7c:	00813023          	sd	s0,0(sp)
   1fc80:	00000693          	li	a3,0
   1fc84:	00000713          	li	a4,0
   1fc88:	00000793          	li	a5,0
   1fc8c:	03f00893          	li	a7,63
   1fc90:	00000073          	ecall
   1fc94:	00050413          	mv	s0,a0
   1fc98:	00054c63          	bltz	a0,1fcb0 <_read+0x3c>
   1fc9c:	00813083          	ld	ra,8(sp)
   1fca0:	00040513          	mv	a0,s0
   1fca4:	00013403          	ld	s0,0(sp)
   1fca8:	01010113          	addi	sp,sp,16
   1fcac:	00008067          	ret
   1fcb0:	4080043b          	negw	s0,s0
   1fcb4:	16c000ef          	jal	ra,1fe20 <__errno>
   1fcb8:	00852023          	sw	s0,0(a0)
   1fcbc:	fff00413          	li	s0,-1
   1fcc0:	fddff06f          	j	1fc9c <_read+0x28>

000000000001fcc4 <_sbrk>:
   1fcc4:	79818313          	addi	t1,gp,1944 # 24b78 <heap_end.0>
   1fcc8:	00033783          	ld	a5,0(t1)
   1fccc:	ff010113          	addi	sp,sp,-16
   1fcd0:	00113423          	sd	ra,8(sp)
   1fcd4:	00050813          	mv	a6,a0
   1fcd8:	02079863          	bnez	a5,1fd08 <_sbrk+0x44>
   1fcdc:	00000513          	li	a0,0
   1fce0:	00000593          	li	a1,0
   1fce4:	00000613          	li	a2,0
   1fce8:	00000693          	li	a3,0
   1fcec:	00000713          	li	a4,0
   1fcf0:	0d600893          	li	a7,214
   1fcf4:	00000073          	ecall
   1fcf8:	fff00713          	li	a4,-1
   1fcfc:	00050793          	mv	a5,a0
   1fd00:	04e50463          	beq	a0,a4,1fd48 <_sbrk+0x84>
   1fd04:	00a33023          	sd	a0,0(t1)
   1fd08:	00f80533          	add	a0,a6,a5
   1fd0c:	00000593          	li	a1,0
   1fd10:	00000613          	li	a2,0
   1fd14:	00000693          	li	a3,0
   1fd18:	00000713          	li	a4,0
   1fd1c:	00000793          	li	a5,0
   1fd20:	0d600893          	li	a7,214
   1fd24:	00000073          	ecall
   1fd28:	00033783          	ld	a5,0(t1)
   1fd2c:	00f80833          	add	a6,a6,a5
   1fd30:	01051c63          	bne	a0,a6,1fd48 <_sbrk+0x84>
   1fd34:	00813083          	ld	ra,8(sp)
   1fd38:	00a33023          	sd	a0,0(t1)
   1fd3c:	00078513          	mv	a0,a5
   1fd40:	01010113          	addi	sp,sp,16
   1fd44:	00008067          	ret
   1fd48:	0d8000ef          	jal	ra,1fe20 <__errno>
   1fd4c:	00813083          	ld	ra,8(sp)
   1fd50:	00c00793          	li	a5,12
   1fd54:	00f52023          	sw	a5,0(a0)
   1fd58:	fff00513          	li	a0,-1
   1fd5c:	01010113          	addi	sp,sp,16
   1fd60:	00008067          	ret

000000000001fd64 <_write>:
   1fd64:	ff010113          	addi	sp,sp,-16
   1fd68:	00113423          	sd	ra,8(sp)
   1fd6c:	00813023          	sd	s0,0(sp)
   1fd70:	00000693          	li	a3,0
   1fd74:	00000713          	li	a4,0
   1fd78:	00000793          	li	a5,0
   1fd7c:	04000893          	li	a7,64
   1fd80:	00000073          	ecall
   1fd84:	00050413          	mv	s0,a0
   1fd88:	00054c63          	bltz	a0,1fda0 <_write+0x3c>
   1fd8c:	00813083          	ld	ra,8(sp)
   1fd90:	00040513          	mv	a0,s0
   1fd94:	00013403          	ld	s0,0(sp)
   1fd98:	01010113          	addi	sp,sp,16
   1fd9c:	00008067          	ret
   1fda0:	4080043b          	negw	s0,s0
   1fda4:	07c000ef          	jal	ra,1fe20 <__errno>
   1fda8:	00852023          	sw	s0,0(a0)
   1fdac:	fff00413          	li	s0,-1
   1fdb0:	fddff06f          	j	1fd8c <_write+0x28>

000000000001fdb4 <_conv_stat>:
   1fdb4:	0005b383          	ld	t2,0(a1)
   1fdb8:	0085b283          	ld	t0,8(a1)
   1fdbc:	0105af83          	lw	t6,16(a1)
   1fdc0:	0145af03          	lw	t5,20(a1)
   1fdc4:	0185ae83          	lw	t4,24(a1)
   1fdc8:	01c5ae03          	lw	t3,28(a1)
   1fdcc:	0205b303          	ld	t1,32(a1)
   1fdd0:	0305b883          	ld	a7,48(a1)
   1fdd4:	0405b803          	ld	a6,64(a1)
   1fdd8:	0385a603          	lw	a2,56(a1)
   1fddc:	0485b683          	ld	a3,72(a1)
   1fde0:	0585b703          	ld	a4,88(a1)
   1fde4:	0685b783          	ld	a5,104(a1)
   1fde8:	00751023          	sh	t2,0(a0)
   1fdec:	00551123          	sh	t0,2(a0)
   1fdf0:	01f52223          	sw	t6,4(a0)
   1fdf4:	01e51423          	sh	t5,8(a0)
   1fdf8:	01d51523          	sh	t4,10(a0)
   1fdfc:	01c51623          	sh	t3,12(a0)
   1fe00:	00651723          	sh	t1,14(a0)
   1fe04:	01153823          	sd	a7,16(a0)
   1fe08:	05053823          	sd	a6,80(a0)
   1fe0c:	04c53423          	sd	a2,72(a0)
   1fe10:	00d53c23          	sd	a3,24(a0)
   1fe14:	02e53423          	sd	a4,40(a0)
   1fe18:	02f53c23          	sd	a5,56(a0)
   1fe1c:	00008067          	ret

000000000001fe20 <__errno>:
   1fe20:	7581b503          	ld	a0,1880(gp) # 24b38 <_impure_ptr>
   1fe24:	00008067          	ret

000000000001fe28 <__eqtf2>:
   1fe28:	00050813          	mv	a6,a0
   1fe2c:	002027f3          	frrm	a5
   1fe30:	00008537          	lui	a0,0x8
   1fe34:	0305d893          	srli	a7,a1,0x30
   1fe38:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   1fe3c:	fff00793          	li	a5,-1
   1fe40:	0107d793          	srli	a5,a5,0x10
   1fe44:	0306d313          	srli	t1,a3,0x30
   1fe48:	00a8f8b3          	and	a7,a7,a0
   1fe4c:	00f5f733          	and	a4,a1,a5
   1fe50:	00a37333          	and	t1,t1,a0
   1fe54:	00f6f7b3          	and	a5,a3,a5
   1fe58:	03f5d593          	srli	a1,a1,0x3f
   1fe5c:	03f6d693          	srli	a3,a3,0x3f
   1fe60:	00a89a63          	bne	a7,a0,1fe74 <__eqtf2+0x4c>
   1fe64:	01076533          	or	a0,a4,a6
   1fe68:	02051663          	bnez	a0,1fe94 <__eqtf2+0x6c>
   1fe6c:	05131863          	bne	t1,a7,1febc <__eqtf2+0x94>
   1fe70:	0080006f          	j	1fe78 <__eqtf2+0x50>
   1fe74:	04a31863          	bne	t1,a0,1fec4 <__eqtf2+0x9c>
   1fe78:	00c7e533          	or	a0,a5,a2
   1fe7c:	04050463          	beqz	a0,1fec4 <__eqtf2+0x9c>
   1fe80:	000086b7          	lui	a3,0x8
   1fe84:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   1fe88:	02d89663          	bne	a7,a3,1feb4 <__eqtf2+0x8c>
   1fe8c:	01076533          	or	a0,a4,a6
   1fe90:	02050263          	beqz	a0,1feb4 <__eqtf2+0x8c>
   1fe94:	02f75713          	srli	a4,a4,0x2f
   1fe98:	04070c63          	beqz	a4,1fef0 <__eqtf2+0xc8>
   1fe9c:	00008737          	lui	a4,0x8
   1fea0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1fea4:	00100513          	li	a0,1
   1fea8:	00e31c63          	bne	t1,a4,1fec0 <__eqtf2+0x98>
   1feac:	00c7e633          	or	a2,a5,a2
   1feb0:	00060863          	beqz	a2,1fec0 <__eqtf2+0x98>
   1feb4:	02f7d793          	srli	a5,a5,0x2f
   1feb8:	02078c63          	beqz	a5,1fef0 <__eqtf2+0xc8>
   1febc:	00100513          	li	a0,1
   1fec0:	00008067          	ret
   1fec4:	00100513          	li	a0,1
   1fec8:	fe689ce3          	bne	a7,t1,1fec0 <__eqtf2+0x98>
   1fecc:	fef71ae3          	bne	a4,a5,1fec0 <__eqtf2+0x98>
   1fed0:	fec818e3          	bne	a6,a2,1fec0 <__eqtf2+0x98>
   1fed4:	00d58a63          	beq	a1,a3,1fee8 <__eqtf2+0xc0>
   1fed8:	fe0894e3          	bnez	a7,1fec0 <__eqtf2+0x98>
   1fedc:	01076533          	or	a0,a4,a6
   1fee0:	00a03533          	snez	a0,a0
   1fee4:	00008067          	ret
   1fee8:	00000513          	li	a0,0
   1feec:	00008067          	ret
   1fef0:	00186073          	csrsi	fflags,16
   1fef4:	fc9ff06f          	j	1febc <__eqtf2+0x94>

000000000001fef8 <__getf2>:
   1fef8:	00050893          	mv	a7,a0
   1fefc:	002027f3          	frrm	a5
   1ff00:	00008337          	lui	t1,0x8
   1ff04:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   1ff08:	fff00793          	li	a5,-1
   1ff0c:	0305d813          	srli	a6,a1,0x30
   1ff10:	0107d793          	srli	a5,a5,0x10
   1ff14:	0306d713          	srli	a4,a3,0x30
   1ff18:	00687833          	and	a6,a6,t1
   1ff1c:	00f5fe33          	and	t3,a1,a5
   1ff20:	03f5d513          	srli	a0,a1,0x3f
   1ff24:	00f6f7b3          	and	a5,a3,a5
   1ff28:	00677733          	and	a4,a4,t1
   1ff2c:	03f6d693          	srli	a3,a3,0x3f
   1ff30:	00681c63          	bne	a6,t1,1ff48 <__getf2+0x50>
   1ff34:	011e65b3          	or	a1,t3,a7
   1ff38:	08058a63          	beqz	a1,1ffcc <__getf2+0xd4>
   1ff3c:	00186073          	csrsi	fflags,16
   1ff40:	ffe00513          	li	a0,-2
   1ff44:	00008067          	ret
   1ff48:	00671663          	bne	a4,t1,1ff54 <__getf2+0x5c>
   1ff4c:	00c7e5b3          	or	a1,a5,a2
   1ff50:	fe0596e3          	bnez	a1,1ff3c <__getf2+0x44>
   1ff54:	06081e63          	bnez	a6,1ffd0 <__getf2+0xd8>
   1ff58:	011e65b3          	or	a1,t3,a7
   1ff5c:	0015b593          	seqz	a1,a1
   1ff60:	04071663          	bnez	a4,1ffac <__getf2+0xb4>
   1ff64:	00c7e333          	or	t1,a5,a2
   1ff68:	04031263          	bnez	t1,1ffac <__getf2+0xb4>
   1ff6c:	02059863          	bnez	a1,1ff9c <__getf2+0xa4>
   1ff70:	02050a63          	beqz	a0,1ffa4 <__getf2+0xac>
   1ff74:	fff00513          	li	a0,-1
   1ff78:	00008067          	ret
   1ff7c:	fff00513          	li	a0,-1
   1ff80:	04068063          	beqz	a3,1ffc0 <__getf2+0xc8>
   1ff84:	00068513          	mv	a0,a3
   1ff88:	00008067          	ret
   1ff8c:	ffc7e2e3          	bltu	a5,t3,1ff70 <__getf2+0x78>
   1ff90:	02fe1a63          	bne	t3,a5,1ffc4 <__getf2+0xcc>
   1ff94:	fd166ee3          	bltu	a2,a7,1ff70 <__getf2+0x78>
   1ff98:	02c8e263          	bltu	a7,a2,1ffbc <__getf2+0xc4>
   1ff9c:	00000513          	li	a0,0
   1ffa0:	00008067          	ret
   1ffa4:	00100513          	li	a0,1
   1ffa8:	00008067          	ret
   1ffac:	fc0598e3          	bnez	a1,1ff7c <__getf2+0x84>
   1ffb0:	fcd510e3          	bne	a0,a3,1ff70 <__getf2+0x78>
   1ffb4:	fb074ee3          	blt	a4,a6,1ff70 <__getf2+0x78>
   1ffb8:	fce85ae3          	bge	a6,a4,1ff8c <__getf2+0x94>
   1ffbc:	fa050ce3          	beqz	a0,1ff74 <__getf2+0x7c>
   1ffc0:	00008067          	ret
   1ffc4:	fefe6ce3          	bltu	t3,a5,1ffbc <__getf2+0xc4>
   1ffc8:	fd5ff06f          	j	1ff9c <__getf2+0xa4>
   1ffcc:	f90700e3          	beq	a4,a6,1ff4c <__getf2+0x54>
   1ffd0:	fe0710e3          	bnez	a4,1ffb0 <__getf2+0xb8>
   1ffd4:	00000593          	li	a1,0
   1ffd8:	f8dff06f          	j	1ff64 <__getf2+0x6c>

000000000001ffdc <__letf2>:
   1ffdc:	00050893          	mv	a7,a0
   1ffe0:	002027f3          	frrm	a5
   1ffe4:	00008337          	lui	t1,0x8
   1ffe8:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   1ffec:	fff00793          	li	a5,-1
   1fff0:	0305d813          	srli	a6,a1,0x30
   1fff4:	0107d793          	srli	a5,a5,0x10
   1fff8:	0306d713          	srli	a4,a3,0x30
   1fffc:	00687833          	and	a6,a6,t1
   20000:	00f5fe33          	and	t3,a1,a5
   20004:	03f5d513          	srli	a0,a1,0x3f
   20008:	00f6f7b3          	and	a5,a3,a5
   2000c:	00677733          	and	a4,a4,t1
   20010:	03f6d693          	srli	a3,a3,0x3f
   20014:	00681c63          	bne	a6,t1,2002c <__letf2+0x50>
   20018:	011e65b3          	or	a1,t3,a7
   2001c:	08058a63          	beqz	a1,200b0 <__letf2+0xd4>
   20020:	00186073          	csrsi	fflags,16
   20024:	00200513          	li	a0,2
   20028:	00008067          	ret
   2002c:	00671663          	bne	a4,t1,20038 <__letf2+0x5c>
   20030:	00c7e5b3          	or	a1,a5,a2
   20034:	fe0596e3          	bnez	a1,20020 <__letf2+0x44>
   20038:	06081e63          	bnez	a6,200b4 <__letf2+0xd8>
   2003c:	011e65b3          	or	a1,t3,a7
   20040:	0015b593          	seqz	a1,a1
   20044:	04071663          	bnez	a4,20090 <__letf2+0xb4>
   20048:	00c7e333          	or	t1,a5,a2
   2004c:	04031263          	bnez	t1,20090 <__letf2+0xb4>
   20050:	02059863          	bnez	a1,20080 <__letf2+0xa4>
   20054:	02050a63          	beqz	a0,20088 <__letf2+0xac>
   20058:	fff00513          	li	a0,-1
   2005c:	00008067          	ret
   20060:	fff00513          	li	a0,-1
   20064:	04068063          	beqz	a3,200a4 <__letf2+0xc8>
   20068:	00068513          	mv	a0,a3
   2006c:	00008067          	ret
   20070:	ffc7e2e3          	bltu	a5,t3,20054 <__letf2+0x78>
   20074:	02fe1a63          	bne	t3,a5,200a8 <__letf2+0xcc>
   20078:	fd166ee3          	bltu	a2,a7,20054 <__letf2+0x78>
   2007c:	02c8e263          	bltu	a7,a2,200a0 <__letf2+0xc4>
   20080:	00000513          	li	a0,0
   20084:	00008067          	ret
   20088:	00100513          	li	a0,1
   2008c:	00008067          	ret
   20090:	fc0598e3          	bnez	a1,20060 <__letf2+0x84>
   20094:	fcd510e3          	bne	a0,a3,20054 <__letf2+0x78>
   20098:	fb074ee3          	blt	a4,a6,20054 <__letf2+0x78>
   2009c:	fce85ae3          	bge	a6,a4,20070 <__letf2+0x94>
   200a0:	fa050ce3          	beqz	a0,20058 <__letf2+0x7c>
   200a4:	00008067          	ret
   200a8:	fefe6ce3          	bltu	t3,a5,200a0 <__letf2+0xc4>
   200ac:	fd5ff06f          	j	20080 <__letf2+0xa4>
   200b0:	f90700e3          	beq	a4,a6,20030 <__letf2+0x54>
   200b4:	fe0710e3          	bnez	a4,20094 <__letf2+0xb8>
   200b8:	00000593          	li	a1,0
   200bc:	f8dff06f          	j	20048 <__letf2+0x6c>

00000000000200c0 <__multf3>:
   200c0:	f9010113          	addi	sp,sp,-112
   200c4:	03513c23          	sd	s5,56(sp)
   200c8:	01913c23          	sd	s9,24(sp)
   200cc:	06113423          	sd	ra,104(sp)
   200d0:	06813023          	sd	s0,96(sp)
   200d4:	04913c23          	sd	s1,88(sp)
   200d8:	05213823          	sd	s2,80(sp)
   200dc:	05313423          	sd	s3,72(sp)
   200e0:	05413023          	sd	s4,64(sp)
   200e4:	03613823          	sd	s6,48(sp)
   200e8:	03713423          	sd	s7,40(sp)
   200ec:	03813023          	sd	s8,32(sp)
   200f0:	01a13823          	sd	s10,16(sp)
   200f4:	01b13423          	sd	s11,8(sp)
   200f8:	00060c93          	mv	s9,a2
   200fc:	00068a93          	mv	s5,a3
   20100:	00202973          	frrm	s2
   20104:	00008737          	lui	a4,0x8
   20108:	0305da13          	srli	s4,a1,0x30
   2010c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20110:	01059b93          	slli	s7,a1,0x10
   20114:	00ea77b3          	and	a5,s4,a4
   20118:	0009091b          	sext.w	s2,s2
   2011c:	010bdb93          	srli	s7,s7,0x10
   20120:	03f5db13          	srli	s6,a1,0x3f
   20124:	04078263          	beqz	a5,20168 <__multf3+0xa8>
   20128:	00050993          	mv	s3,a0
   2012c:	00078a1b          	sext.w	s4,a5
   20130:	0ae78663          	beq	a5,a4,201dc <__multf3+0x11c>
   20134:	003b9b93          	slli	s7,s7,0x3
   20138:	03d55713          	srli	a4,a0,0x3d
   2013c:	01776733          	or	a4,a4,s7
   20140:	ffffca37          	lui	s4,0xffffc
   20144:	00100b93          	li	s7,1
   20148:	033b9b93          	slli	s7,s7,0x33
   2014c:	001a0a13          	addi	s4,s4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7421>
   20150:	01776bb3          	or	s7,a4,s7
   20154:	00351993          	slli	s3,a0,0x3
   20158:	01478a33          	add	s4,a5,s4
   2015c:	00000c13          	li	s8,0
   20160:	00000493          	li	s1,0
   20164:	0940006f          	j	201f8 <__multf3+0x138>
   20168:	00abe7b3          	or	a5,s7,a0
   2016c:	00050413          	mv	s0,a0
   20170:	10078e63          	beqz	a5,2028c <__multf3+0x1cc>
   20174:	040b8663          	beqz	s7,201c0 <__multf3+0x100>
   20178:	000b8513          	mv	a0,s7
   2017c:	1f5010ef          	jal	ra,21b70 <__clzdi2>
   20180:	0005079b          	sext.w	a5,a0
   20184:	ff178693          	addi	a3,a5,-15
   20188:	03c00613          	li	a2,60
   2018c:	0006871b          	sext.w	a4,a3
   20190:	02d64e63          	blt	a2,a3,201cc <__multf3+0x10c>
   20194:	03d00693          	li	a3,61
   20198:	0037099b          	addiw	s3,a4,3
   2019c:	40e6873b          	subw	a4,a3,a4
   201a0:	013b9bb3          	sll	s7,s7,s3
   201a4:	00e45733          	srl	a4,s0,a4
   201a8:	01776bb3          	or	s7,a4,s7
   201ac:	013419b3          	sll	s3,s0,s3
   201b0:	ffffca37          	lui	s4,0xffffc
   201b4:	011a0a13          	addi	s4,s4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7431>
   201b8:	40fa0a33          	sub	s4,s4,a5
   201bc:	fa1ff06f          	j	2015c <__multf3+0x9c>
   201c0:	1b1010ef          	jal	ra,21b70 <__clzdi2>
   201c4:	0405079b          	addiw	a5,a0,64
   201c8:	fbdff06f          	j	20184 <__multf3+0xc4>
   201cc:	fc37071b          	addiw	a4,a4,-61
   201d0:	00e41bb3          	sll	s7,s0,a4
   201d4:	00000993          	li	s3,0
   201d8:	fd9ff06f          	j	201b0 <__multf3+0xf0>
   201dc:	00abe7b3          	or	a5,s7,a0
   201e0:	0c078063          	beqz	a5,202a0 <__multf3+0x1e0>
   201e4:	02fbd793          	srli	a5,s7,0x2f
   201e8:	0017f793          	andi	a5,a5,1
   201ec:	00300c13          	li	s8,3
   201f0:	01000493          	li	s1,16
   201f4:	f60796e3          	bnez	a5,20160 <__multf3+0xa0>
   201f8:	000086b7          	lui	a3,0x8
   201fc:	030ad713          	srli	a4,s5,0x30
   20200:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   20204:	010a9413          	slli	s0,s5,0x10
   20208:	00d77533          	and	a0,a4,a3
   2020c:	000c8793          	mv	a5,s9
   20210:	01045413          	srli	s0,s0,0x10
   20214:	03fada93          	srli	s5,s5,0x3f
   20218:	08050c63          	beqz	a0,202b0 <__multf3+0x1f0>
   2021c:	0005071b          	sext.w	a4,a0
   20220:	10d50263          	beq	a0,a3,20324 <__multf3+0x264>
   20224:	00341413          	slli	s0,s0,0x3
   20228:	03dcd713          	srli	a4,s9,0x3d
   2022c:	00876733          	or	a4,a4,s0
   20230:	00100413          	li	s0,1
   20234:	03341413          	slli	s0,s0,0x33
   20238:	00876433          	or	s0,a4,s0
   2023c:	ffffc737          	lui	a4,0xffffc
   20240:	00170713          	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7421>
   20244:	003c9793          	slli	a5,s9,0x3
   20248:	00e50733          	add	a4,a0,a4
   2024c:	00000693          	li	a3,0
   20250:	01470a33          	add	s4,a4,s4
   20254:	002c1713          	slli	a4,s8,0x2
   20258:	00d76733          	or	a4,a4,a3
   2025c:	fff70713          	addi	a4,a4,-1
   20260:	00e00613          	li	a2,14
   20264:	015b4833          	xor	a6,s6,s5
   20268:	001a0313          	addi	t1,s4,1
   2026c:	18e66263          	bltu	a2,a4,203f0 <__multf3+0x330>
   20270:	00002617          	auipc	a2,0x2
   20274:	62860613          	addi	a2,a2,1576 # 22898 <zeroes.0+0x10>
   20278:	00271713          	slli	a4,a4,0x2
   2027c:	00c70733          	add	a4,a4,a2
   20280:	00072703          	lw	a4,0(a4)
   20284:	00c70733          	add	a4,a4,a2
   20288:	00070067          	jr	a4
   2028c:	00000b93          	li	s7,0
   20290:	00000993          	li	s3,0
   20294:	00000a13          	li	s4,0
   20298:	00100c13          	li	s8,1
   2029c:	ec5ff06f          	j	20160 <__multf3+0xa0>
   202a0:	00000b93          	li	s7,0
   202a4:	00000993          	li	s3,0
   202a8:	00200c13          	li	s8,2
   202ac:	eb5ff06f          	j	20160 <__multf3+0xa0>
   202b0:	008ce7b3          	or	a5,s9,s0
   202b4:	08078863          	beqz	a5,20344 <__multf3+0x284>
   202b8:	04040663          	beqz	s0,20304 <__multf3+0x244>
   202bc:	00040513          	mv	a0,s0
   202c0:	0b1010ef          	jal	ra,21b70 <__clzdi2>
   202c4:	0005051b          	sext.w	a0,a0
   202c8:	ff150793          	addi	a5,a0,-15
   202cc:	03c00693          	li	a3,60
   202d0:	0007871b          	sext.w	a4,a5
   202d4:	04f6c063          	blt	a3,a5,20314 <__multf3+0x254>
   202d8:	03d00693          	li	a3,61
   202dc:	0037079b          	addiw	a5,a4,3
   202e0:	40e6873b          	subw	a4,a3,a4
   202e4:	00f41433          	sll	s0,s0,a5
   202e8:	00ecd733          	srl	a4,s9,a4
   202ec:	00876433          	or	s0,a4,s0
   202f0:	00fc97b3          	sll	a5,s9,a5
   202f4:	ffffc737          	lui	a4,0xffffc
   202f8:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7431>
   202fc:	40a70733          	sub	a4,a4,a0
   20300:	f4dff06f          	j	2024c <__multf3+0x18c>
   20304:	000c8513          	mv	a0,s9
   20308:	069010ef          	jal	ra,21b70 <__clzdi2>
   2030c:	0405051b          	addiw	a0,a0,64
   20310:	fb9ff06f          	j	202c8 <__multf3+0x208>
   20314:	fc37071b          	addiw	a4,a4,-61
   20318:	00ec9433          	sll	s0,s9,a4
   2031c:	00000793          	li	a5,0
   20320:	fd5ff06f          	j	202f4 <__multf3+0x234>
   20324:	008ce6b3          	or	a3,s9,s0
   20328:	02068863          	beqz	a3,20358 <__multf3+0x298>
   2032c:	02f45693          	srli	a3,s0,0x2f
   20330:	0016f693          	andi	a3,a3,1
   20334:	02069a63          	bnez	a3,20368 <__multf3+0x2a8>
   20338:	00300693          	li	a3,3
   2033c:	01000493          	li	s1,16
   20340:	f11ff06f          	j	20250 <__multf3+0x190>
   20344:	00000413          	li	s0,0
   20348:	00000793          	li	a5,0
   2034c:	00000713          	li	a4,0
   20350:	00100693          	li	a3,1
   20354:	efdff06f          	j	20250 <__multf3+0x190>
   20358:	00000413          	li	s0,0
   2035c:	00000793          	li	a5,0
   20360:	00200693          	li	a3,2
   20364:	eedff06f          	j	20250 <__multf3+0x190>
   20368:	00300693          	li	a3,3
   2036c:	ee5ff06f          	j	20250 <__multf3+0x190>
   20370:	00100413          	li	s0,1
   20374:	00008737          	lui	a4,0x8
   20378:	02f41413          	slli	s0,s0,0x2f
   2037c:	00000513          	li	a0,0
   20380:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20384:	00000813          	li	a6,0
   20388:	01000493          	li	s1,16
   2038c:	03171713          	slli	a4,a4,0x31
   20390:	03175713          	srli	a4,a4,0x31
   20394:	00f81813          	slli	a6,a6,0xf
   20398:	01041413          	slli	s0,s0,0x10
   2039c:	00e86733          	or	a4,a6,a4
   203a0:	03071713          	slli	a4,a4,0x30
   203a4:	01045593          	srli	a1,s0,0x10
   203a8:	00e5e5b3          	or	a1,a1,a4
   203ac:	00048463          	beqz	s1,203b4 <__multf3+0x2f4>
   203b0:	0014a073          	csrs	fflags,s1
   203b4:	06813083          	ld	ra,104(sp)
   203b8:	06013403          	ld	s0,96(sp)
   203bc:	05813483          	ld	s1,88(sp)
   203c0:	05013903          	ld	s2,80(sp)
   203c4:	04813983          	ld	s3,72(sp)
   203c8:	04013a03          	ld	s4,64(sp)
   203cc:	03813a83          	ld	s5,56(sp)
   203d0:	03013b03          	ld	s6,48(sp)
   203d4:	02813b83          	ld	s7,40(sp)
   203d8:	02013c03          	ld	s8,32(sp)
   203dc:	01813c83          	ld	s9,24(sp)
   203e0:	01013d03          	ld	s10,16(sp)
   203e4:	00813d83          	ld	s11,8(sp)
   203e8:	07010113          	addi	sp,sp,112
   203ec:	00008067          	ret
   203f0:	fff00713          	li	a4,-1
   203f4:	013b8ab3          	add	s5,s7,s3
   203f8:	008783b3          	add	t2,a5,s0
   203fc:	02075713          	srli	a4,a4,0x20
   20400:	013abfb3          	sltu	t6,s5,s3
   20404:	00f3b2b3          	sltu	t0,t2,a5
   20408:	0209dc13          	srli	s8,s3,0x20
   2040c:	0207df13          	srli	t5,a5,0x20
   20410:	00e9f9b3          	and	s3,s3,a4
   20414:	00e7f7b3          	and	a5,a5,a4
   20418:	000f8e93          	mv	t4,t6
   2041c:	00028b13          	mv	s6,t0
   20420:	00098513          	mv	a0,s3
   20424:	00078593          	mv	a1,a5
   20428:	624010ef          	jal	ra,21a4c <__muldi3>
   2042c:	00050893          	mv	a7,a0
   20430:	000f0593          	mv	a1,t5
   20434:	00098513          	mv	a0,s3
   20438:	614010ef          	jal	ra,21a4c <__muldi3>
   2043c:	00050e13          	mv	t3,a0
   20440:	00078593          	mv	a1,a5
   20444:	000c0513          	mv	a0,s8
   20448:	604010ef          	jal	ra,21a4c <__muldi3>
   2044c:	00050713          	mv	a4,a0
   20450:	000f0593          	mv	a1,t5
   20454:	000c0513          	mv	a0,s8
   20458:	5f4010ef          	jal	ra,21a4c <__muldi3>
   2045c:	0208d793          	srli	a5,a7,0x20
   20460:	00ee0e33          	add	t3,t3,a4
   20464:	01c787b3          	add	a5,a5,t3
   20468:	00050f13          	mv	t5,a0
   2046c:	00e7f863          	bgeu	a5,a4,2047c <__multf3+0x3bc>
   20470:	00100713          	li	a4,1
   20474:	02071713          	slli	a4,a4,0x20
   20478:	00e50f33          	add	t5,a0,a4
   2047c:	fff00713          	li	a4,-1
   20480:	02075713          	srli	a4,a4,0x20
   20484:	00e7fe33          	and	t3,a5,a4
   20488:	0207d513          	srli	a0,a5,0x20
   2048c:	00e8f8b3          	and	a7,a7,a4
   20490:	00eafcb3          	and	s9,s5,a4
   20494:	00e3f9b3          	and	s3,t2,a4
   20498:	020e1e13          	slli	t3,t3,0x20
   2049c:	01e50f33          	add	t5,a0,t5
   204a0:	011e0e33          	add	t3,t3,a7
   204a4:	020ad793          	srli	a5,s5,0x20
   204a8:	0203dc13          	srli	s8,t2,0x20
   204ac:	000c8513          	mv	a0,s9
   204b0:	00098593          	mv	a1,s3
   204b4:	598010ef          	jal	ra,21a4c <__muldi3>
   204b8:	00050713          	mv	a4,a0
   204bc:	000c0593          	mv	a1,s8
   204c0:	000c8513          	mv	a0,s9
   204c4:	588010ef          	jal	ra,21a4c <__muldi3>
   204c8:	00050893          	mv	a7,a0
   204cc:	00098593          	mv	a1,s3
   204d0:	00078513          	mv	a0,a5
   204d4:	578010ef          	jal	ra,21a4c <__muldi3>
   204d8:	00050993          	mv	s3,a0
   204dc:	000c0593          	mv	a1,s8
   204e0:	00078513          	mv	a0,a5
   204e4:	568010ef          	jal	ra,21a4c <__muldi3>
   204e8:	02075793          	srli	a5,a4,0x20
   204ec:	013888b3          	add	a7,a7,s3
   204f0:	011787b3          	add	a5,a5,a7
   204f4:	00050c93          	mv	s9,a0
   204f8:	0137f863          	bgeu	a5,s3,20508 <__multf3+0x448>
   204fc:	00100693          	li	a3,1
   20500:	02069693          	slli	a3,a3,0x20
   20504:	00d50cb3          	add	s9,a0,a3
   20508:	fff00593          	li	a1,-1
   2050c:	0205d593          	srli	a1,a1,0x20
   20510:	00b7f8b3          	and	a7,a5,a1
   20514:	00b77733          	and	a4,a4,a1
   20518:	0207dc13          	srli	s8,a5,0x20
   2051c:	020bdd93          	srli	s11,s7,0x20
   20520:	02045793          	srli	a5,s0,0x20
   20524:	00bbfbb3          	and	s7,s7,a1
   20528:	00b47433          	and	s0,s0,a1
   2052c:	02089893          	slli	a7,a7,0x20
   20530:	00e888b3          	add	a7,a7,a4
   20534:	000b8513          	mv	a0,s7
   20538:	00040593          	mv	a1,s0
   2053c:	510010ef          	jal	ra,21a4c <__muldi3>
   20540:	00050d13          	mv	s10,a0
   20544:	00078593          	mv	a1,a5
   20548:	000b8513          	mv	a0,s7
   2054c:	500010ef          	jal	ra,21a4c <__muldi3>
   20550:	00050993          	mv	s3,a0
   20554:	00040593          	mv	a1,s0
   20558:	000d8513          	mv	a0,s11
   2055c:	4f0010ef          	jal	ra,21a4c <__muldi3>
   20560:	00050413          	mv	s0,a0
   20564:	00078593          	mv	a1,a5
   20568:	000d8513          	mv	a0,s11
   2056c:	4e0010ef          	jal	ra,21a4c <__muldi3>
   20570:	008985b3          	add	a1,s3,s0
   20574:	020d5713          	srli	a4,s10,0x20
   20578:	00e585b3          	add	a1,a1,a4
   2057c:	0085f863          	bgeu	a1,s0,2058c <__multf3+0x4cc>
   20580:	00100793          	li	a5,1
   20584:	02079793          	slli	a5,a5,0x20
   20588:	00f50533          	add	a0,a0,a5
   2058c:	0205d693          	srli	a3,a1,0x20
   20590:	01e888b3          	add	a7,a7,t5
   20594:	00a686b3          	add	a3,a3,a0
   20598:	fff00513          	li	a0,-1
   2059c:	02055513          	srli	a0,a0,0x20
   205a0:	01e8b7b3          	sltu	a5,a7,t5
   205a4:	00a5f733          	and	a4,a1,a0
   205a8:	00fc0c33          	add	s8,s8,a5
   205ac:	416005b3          	neg	a1,s6
   205b0:	019c0cb3          	add	s9,s8,s9
   205b4:	41d00eb3          	neg	t4,t4
   205b8:	0155f5b3          	and	a1,a1,s5
   205bc:	019585b3          	add	a1,a1,s9
   205c0:	00fcb7b3          	sltu	a5,s9,a5
   205c4:	007ef3b3          	and	t2,t4,t2
   205c8:	005ff633          	and	a2,t6,t0
   205cc:	00b383b3          	add	t2,t2,a1
   205d0:	00c78633          	add	a2,a5,a2
   205d4:	0195bcb3          	sltu	s9,a1,s9
   205d8:	01960633          	add	a2,a2,s9
   205dc:	00b3b5b3          	sltu	a1,t2,a1
   205e0:	41c88eb3          	sub	t4,a7,t3
   205e4:	00ad7d33          	and	s10,s10,a0
   205e8:	02071713          	slli	a4,a4,0x20
   205ec:	01d8b533          	sltu	a0,a7,t4
   205f0:	00b60633          	add	a2,a2,a1
   205f4:	41e385b3          	sub	a1,t2,t5
   205f8:	00b3b7b3          	sltu	a5,t2,a1
   205fc:	01a70733          	add	a4,a4,s10
   20600:	40a585b3          	sub	a1,a1,a0
   20604:	00000513          	li	a0,0
   20608:	01d8f663          	bgeu	a7,t4,20614 <__multf3+0x554>
   2060c:	407f03b3          	sub	t2,t5,t2
   20610:	0013b513          	seqz	a0,t2
   20614:	00f563b3          	or	t2,a0,a5
   20618:	40ee8533          	sub	a0,t4,a4
   2061c:	00d60633          	add	a2,a2,a3
   20620:	00aeb7b3          	sltu	a5,t4,a0
   20624:	40d586b3          	sub	a3,a1,a3
   20628:	00d5b5b3          	sltu	a1,a1,a3
   2062c:	40f707b3          	sub	a5,a4,a5
   20630:	00000893          	li	a7,0
   20634:	00aef463          	bgeu	t4,a0,2063c <__multf3+0x57c>
   20638:	0016b893          	seqz	a7,a3
   2063c:	00f686b3          	add	a3,a3,a5
   20640:	00e6b733          	sltu	a4,a3,a4
   20644:	00c70733          	add	a4,a4,a2
   20648:	40770733          	sub	a4,a4,t2
   2064c:	00b8e5b3          	or	a1,a7,a1
   20650:	00d51793          	slli	a5,a0,0xd
   20654:	40b70733          	sub	a4,a4,a1
   20658:	00d71713          	slli	a4,a4,0xd
   2065c:	0336d413          	srli	s0,a3,0x33
   20660:	01c7e7b3          	or	a5,a5,t3
   20664:	00876433          	or	s0,a4,s0
   20668:	00f037b3          	snez	a5,a5
   2066c:	03355513          	srli	a0,a0,0x33
   20670:	03475713          	srli	a4,a4,0x34
   20674:	00a7e7b3          	or	a5,a5,a0
   20678:	00d69693          	slli	a3,a3,0xd
   2067c:	00177713          	andi	a4,a4,1
   20680:	00d7e7b3          	or	a5,a5,a3
   20684:	0a070463          	beqz	a4,2072c <__multf3+0x66c>
   20688:	0017d713          	srli	a4,a5,0x1
   2068c:	0017f793          	andi	a5,a5,1
   20690:	03f41513          	slli	a0,s0,0x3f
   20694:	00f767b3          	or	a5,a4,a5
   20698:	00a7e7b3          	or	a5,a5,a0
   2069c:	00145413          	srli	s0,s0,0x1
   206a0:	00004737          	lui	a4,0x4
   206a4:	fff70713          	addi	a4,a4,-1 # 3fff <register_fini-0xc0b1>
   206a8:	00e30733          	add	a4,t1,a4
   206ac:	12e05263          	blez	a4,207d0 <__multf3+0x710>
   206b0:	0077f693          	andi	a3,a5,7
   206b4:	08068863          	beqz	a3,20744 <__multf3+0x684>
   206b8:	00200693          	li	a3,2
   206bc:	0014e493          	ori	s1,s1,1
   206c0:	08d90063          	beq	s2,a3,20740 <__multf3+0x680>
   206c4:	00300693          	li	a3,3
   206c8:	06d90663          	beq	s2,a3,20734 <__multf3+0x674>
   206cc:	06091c63          	bnez	s2,20744 <__multf3+0x684>
   206d0:	00f7f693          	andi	a3,a5,15
   206d4:	00400613          	li	a2,4
   206d8:	06c68663          	beq	a3,a2,20744 <__multf3+0x684>
   206dc:	00478693          	addi	a3,a5,4
   206e0:	00f6b7b3          	sltu	a5,a3,a5
   206e4:	00f40433          	add	s0,s0,a5
   206e8:	00068793          	mv	a5,a3
   206ec:	0580006f          	j	20744 <__multf3+0x684>
   206f0:	000b0813          	mv	a6,s6
   206f4:	000b8413          	mv	s0,s7
   206f8:	00098793          	mv	a5,s3
   206fc:	000c0693          	mv	a3,s8
   20700:	00200713          	li	a4,2
   20704:	2ae68063          	beq	a3,a4,209a4 <__multf3+0x8e4>
   20708:	00300713          	li	a4,3
   2070c:	2ae68663          	beq	a3,a4,209b8 <__multf3+0x8f8>
   20710:	00100713          	li	a4,1
   20714:	f8e696e3          	bne	a3,a4,206a0 <__multf3+0x5e0>
   20718:	00000413          	li	s0,0
   2071c:	00000513          	li	a0,0
   20720:	2600006f          	j	20980 <__multf3+0x8c0>
   20724:	000a8813          	mv	a6,s5
   20728:	fd9ff06f          	j	20700 <__multf3+0x640>
   2072c:	000a0313          	mv	t1,s4
   20730:	f71ff06f          	j	206a0 <__multf3+0x5e0>
   20734:	00081863          	bnez	a6,20744 <__multf3+0x684>
   20738:	00878693          	addi	a3,a5,8
   2073c:	fa5ff06f          	j	206e0 <__multf3+0x620>
   20740:	fe081ce3          	bnez	a6,20738 <__multf3+0x678>
   20744:	03445693          	srli	a3,s0,0x34
   20748:	0016f693          	andi	a3,a3,1
   2074c:	00068e63          	beqz	a3,20768 <__multf3+0x6a8>
   20750:	fff00713          	li	a4,-1
   20754:	03471713          	slli	a4,a4,0x34
   20758:	fff70713          	addi	a4,a4,-1
   2075c:	00e47433          	and	s0,s0,a4
   20760:	00004737          	lui	a4,0x4
   20764:	00e30733          	add	a4,t1,a4
   20768:	000086b7          	lui	a3,0x8
   2076c:	ffe68613          	addi	a2,a3,-2 # 7ffe <register_fini-0x80b2>
   20770:	00e64c63          	blt	a2,a4,20788 <__multf3+0x6c8>
   20774:	03d41513          	slli	a0,s0,0x3d
   20778:	0037d793          	srli	a5,a5,0x3
   2077c:	00f56533          	or	a0,a0,a5
   20780:	00345413          	srli	s0,s0,0x3
   20784:	c09ff06f          	j	2038c <__multf3+0x2cc>
   20788:	00200793          	li	a5,2
   2078c:	02f90a63          	beq	s2,a5,207c0 <__multf3+0x700>
   20790:	00300793          	li	a5,3
   20794:	fff68713          	addi	a4,a3,-1
   20798:	00f90863          	beq	s2,a5,207a8 <__multf3+0x6e8>
   2079c:	00091863          	bnez	s2,207ac <__multf3+0x6ec>
   207a0:	00000513          	li	a0,0
   207a4:	0100006f          	j	207b4 <__multf3+0x6f4>
   207a8:	fe080ce3          	beqz	a6,207a0 <__multf3+0x6e0>
   207ac:	fff00513          	li	a0,-1
   207b0:	00060713          	mv	a4,a2
   207b4:	0054e493          	ori	s1,s1,5
   207b8:	00050413          	mv	s0,a0
   207bc:	bd1ff06f          	j	2038c <__multf3+0x2cc>
   207c0:	fe0806e3          	beqz	a6,207ac <__multf3+0x6ec>
   207c4:	00000513          	li	a0,0
   207c8:	fff68713          	addi	a4,a3,-1
   207cc:	fe9ff06f          	j	207b4 <__multf3+0x6f4>
   207d0:	00100693          	li	a3,1
   207d4:	06071463          	bnez	a4,2083c <__multf3+0x77c>
   207d8:	0077f613          	andi	a2,a5,7
   207dc:	00040693          	mv	a3,s0
   207e0:	04060863          	beqz	a2,20830 <__multf3+0x770>
   207e4:	00200613          	li	a2,2
   207e8:	0014e493          	ori	s1,s1,1
   207ec:	04c90063          	beq	s2,a2,2082c <__multf3+0x76c>
   207f0:	00300613          	li	a2,3
   207f4:	02c90663          	beq	s2,a2,20820 <__multf3+0x760>
   207f8:	02091c63          	bnez	s2,20830 <__multf3+0x770>
   207fc:	00f7f613          	andi	a2,a5,15
   20800:	00400593          	li	a1,4
   20804:	02b60663          	beq	a2,a1,20830 <__multf3+0x770>
   20808:	ffc7b693          	sltiu	a3,a5,-4
   2080c:	0016c693          	xori	a3,a3,1
   20810:	02069693          	slli	a3,a3,0x20
   20814:	0206d693          	srli	a3,a3,0x20
   20818:	008686b3          	add	a3,a3,s0
   2081c:	0140006f          	j	20830 <__multf3+0x770>
   20820:	00081863          	bnez	a6,20830 <__multf3+0x770>
   20824:	ff87b693          	sltiu	a3,a5,-8
   20828:	fe5ff06f          	j	2080c <__multf3+0x74c>
   2082c:	fe081ce3          	bnez	a6,20824 <__multf3+0x764>
   20830:	0346d693          	srli	a3,a3,0x34
   20834:	0016c693          	xori	a3,a3,1
   20838:	0016f693          	andi	a3,a3,1
   2083c:	00100593          	li	a1,1
   20840:	40e585b3          	sub	a1,a1,a4
   20844:	07400713          	li	a4,116
   20848:	10b74263          	blt	a4,a1,2094c <__multf3+0x88c>
   2084c:	03f00613          	li	a2,63
   20850:	0005871b          	sext.w	a4,a1
   20854:	06b64463          	blt	a2,a1,208bc <__multf3+0x7fc>
   20858:	04000613          	li	a2,64
   2085c:	40e6063b          	subw	a2,a2,a4
   20860:	00c41533          	sll	a0,s0,a2
   20864:	00e7d5b3          	srl	a1,a5,a4
   20868:	00c797b3          	sll	a5,a5,a2
   2086c:	00b56533          	or	a0,a0,a1
   20870:	00f037b3          	snez	a5,a5
   20874:	00f56533          	or	a0,a0,a5
   20878:	00e45433          	srl	s0,s0,a4
   2087c:	00757793          	andi	a5,a0,7
   20880:	08078063          	beqz	a5,20900 <__multf3+0x840>
   20884:	00200793          	li	a5,2
   20888:	0014e493          	ori	s1,s1,1
   2088c:	06f90863          	beq	s2,a5,208fc <__multf3+0x83c>
   20890:	00300793          	li	a5,3
   20894:	04f90e63          	beq	s2,a5,208f0 <__multf3+0x830>
   20898:	06091463          	bnez	s2,20900 <__multf3+0x840>
   2089c:	00f57793          	andi	a5,a0,15
   208a0:	00400713          	li	a4,4
   208a4:	04e78e63          	beq	a5,a4,20900 <__multf3+0x840>
   208a8:	00450793          	addi	a5,a0,4
   208ac:	00a7b533          	sltu	a0,a5,a0
   208b0:	00a40433          	add	s0,s0,a0
   208b4:	00078513          	mv	a0,a5
   208b8:	0480006f          	j	20900 <__multf3+0x840>
   208bc:	fc07051b          	addiw	a0,a4,-64
   208c0:	04000893          	li	a7,64
   208c4:	00a45533          	srl	a0,s0,a0
   208c8:	00000613          	li	a2,0
   208cc:	01158863          	beq	a1,a7,208dc <__multf3+0x81c>
   208d0:	08000613          	li	a2,128
   208d4:	40e6073b          	subw	a4,a2,a4
   208d8:	00e41633          	sll	a2,s0,a4
   208dc:	00f667b3          	or	a5,a2,a5
   208e0:	00f037b3          	snez	a5,a5
   208e4:	00f56533          	or	a0,a0,a5
   208e8:	00000413          	li	s0,0
   208ec:	f91ff06f          	j	2087c <__multf3+0x7bc>
   208f0:	00081863          	bnez	a6,20900 <__multf3+0x840>
   208f4:	00850793          	addi	a5,a0,8
   208f8:	fb5ff06f          	j	208ac <__multf3+0x7ec>
   208fc:	fe081ce3          	bnez	a6,208f4 <__multf3+0x834>
   20900:	03345793          	srli	a5,s0,0x33
   20904:	0017f793          	andi	a5,a5,1
   20908:	02078063          	beqz	a5,20928 <__multf3+0x868>
   2090c:	0014e493          	ori	s1,s1,1
   20910:	00000413          	li	s0,0
   20914:	00000513          	li	a0,0
   20918:	00100713          	li	a4,1
   2091c:	a60688e3          	beqz	a3,2038c <__multf3+0x2cc>
   20920:	0024e493          	ori	s1,s1,2
   20924:	a69ff06f          	j	2038c <__multf3+0x2cc>
   20928:	03d41793          	slli	a5,s0,0x3d
   2092c:	00355513          	srli	a0,a0,0x3
   20930:	00a7e533          	or	a0,a5,a0
   20934:	00345413          	srli	s0,s0,0x3
   20938:	00000713          	li	a4,0
   2093c:	a40688e3          	beqz	a3,2038c <__multf3+0x2cc>
   20940:	0014f793          	andi	a5,s1,1
   20944:	a40784e3          	beqz	a5,2038c <__multf3+0x2cc>
   20948:	fd9ff06f          	j	20920 <__multf3+0x860>
   2094c:	0087e533          	or	a0,a5,s0
   20950:	02050463          	beqz	a0,20978 <__multf3+0x8b8>
   20954:	00200793          	li	a5,2
   20958:	0014e493          	ori	s1,s1,1
   2095c:	02f90e63          	beq	s2,a5,20998 <__multf3+0x8d8>
   20960:	00300793          	li	a5,3
   20964:	02f90263          	beq	s2,a5,20988 <__multf3+0x8c8>
   20968:	00100793          	li	a5,1
   2096c:	00091463          	bnez	s2,20974 <__multf3+0x8b4>
   20970:	00500793          	li	a5,5
   20974:	0037d513          	srli	a0,a5,0x3
   20978:	0024e493          	ori	s1,s1,2
   2097c:	00000413          	li	s0,0
   20980:	00000713          	li	a4,0
   20984:	a09ff06f          	j	2038c <__multf3+0x2cc>
   20988:	00900793          	li	a5,9
   2098c:	fe0804e3          	beqz	a6,20974 <__multf3+0x8b4>
   20990:	00100793          	li	a5,1
   20994:	fe1ff06f          	j	20974 <__multf3+0x8b4>
   20998:	00900793          	li	a5,9
   2099c:	fc081ce3          	bnez	a6,20974 <__multf3+0x8b4>
   209a0:	ff1ff06f          	j	20990 <__multf3+0x8d0>
   209a4:	00008737          	lui	a4,0x8
   209a8:	00000413          	li	s0,0
   209ac:	00000513          	li	a0,0
   209b0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   209b4:	9d9ff06f          	j	2038c <__multf3+0x2cc>
   209b8:	00100413          	li	s0,1
   209bc:	00008737          	lui	a4,0x8
   209c0:	02f41413          	slli	s0,s0,0x2f
   209c4:	00000513          	li	a0,0
   209c8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   209cc:	00000813          	li	a6,0
   209d0:	9bdff06f          	j	2038c <__multf3+0x2cc>

00000000000209d4 <__subtf3>:
   209d4:	fd010113          	addi	sp,sp,-48
   209d8:	02113423          	sd	ra,40(sp)
   209dc:	02813023          	sd	s0,32(sp)
   209e0:	00913c23          	sd	s1,24(sp)
   209e4:	01213823          	sd	s2,16(sp)
   209e8:	01313423          	sd	s3,8(sp)
   209ec:	01413023          	sd	s4,0(sp)
   209f0:	00202473          	frrm	s0
   209f4:	fff00713          	li	a4,-1
   209f8:	01075713          	srli	a4,a4,0x10
   209fc:	00008837          	lui	a6,0x8
   20a00:	0305d893          	srli	a7,a1,0x30
   20a04:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   20a08:	0306de93          	srli	t4,a3,0x30
   20a0c:	03f5d493          	srli	s1,a1,0x3f
   20a10:	03f6d313          	srli	t1,a3,0x3f
   20a14:	00e5f5b3          	and	a1,a1,a4
   20a18:	00e6f6b3          	and	a3,a3,a4
   20a1c:	00359593          	slli	a1,a1,0x3
   20a20:	03d55793          	srli	a5,a0,0x3d
   20a24:	03d65713          	srli	a4,a2,0x3d
   20a28:	0108f8b3          	and	a7,a7,a6
   20a2c:	010efeb3          	and	t4,t4,a6
   20a30:	00369693          	slli	a3,a3,0x3
   20a34:	00b7e7b3          	or	a5,a5,a1
   20a38:	0004041b          	sext.w	s0,s0
   20a3c:	00088993          	mv	s3,a7
   20a40:	00351513          	slli	a0,a0,0x3
   20a44:	000e8593          	mv	a1,t4
   20a48:	00d76733          	or	a4,a4,a3
   20a4c:	00361613          	slli	a2,a2,0x3
   20a50:	010e9663          	bne	t4,a6,20a5c <__subtf3+0x88>
   20a54:	00c766b3          	or	a3,a4,a2
   20a58:	00069463          	bnez	a3,20a60 <__subtf3+0x8c>
   20a5c:	00134313          	xori	t1,t1,1
   20a60:	41d886bb          	subw	a3,a7,t4
   20a64:	00008e37          	lui	t3,0x8
   20a68:	0006881b          	sext.w	a6,a3
   20a6c:	fffe0f13          	addi	t5,t3,-1 # 7fff <register_fini-0x80b1>
   20a70:	4c931663          	bne	t1,s1,20f3c <__subtf3+0x568>
   20a74:	13005c63          	blez	a6,20bac <__subtf3+0x1d8>
   20a78:	0a0e9663          	bnez	t4,20b24 <__subtf3+0x150>
   20a7c:	00c765b3          	or	a1,a4,a2
   20a80:	00059a63          	bnez	a1,20a94 <__subtf3+0xc0>
   20a84:	09e88063          	beq	a7,t5,20b04 <__subtf3+0x130>
   20a88:	00078713          	mv	a4,a5
   20a8c:	00088593          	mv	a1,a7
   20a90:	1010006f          	j	21390 <__subtf3+0x9bc>
   20a94:	fff6881b          	addiw	a6,a3,-1
   20a98:	06081463          	bnez	a6,20b00 <__subtf3+0x12c>
   20a9c:	00a60633          	add	a2,a2,a0
   20aa0:	00a63533          	sltu	a0,a2,a0
   20aa4:	00f70733          	add	a4,a4,a5
   20aa8:	00a70733          	add	a4,a4,a0
   20aac:	00088593          	mv	a1,a7
   20ab0:	00060513          	mv	a0,a2
   20ab4:	03375793          	srli	a5,a4,0x33
   20ab8:	0017f793          	andi	a5,a5,1
   20abc:	0c078ae3          	beqz	a5,21390 <__subtf3+0x9bc>
   20ac0:	000086b7          	lui	a3,0x8
   20ac4:	00158593          	addi	a1,a1,1
   20ac8:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x80b1>
   20acc:	42f58e63          	beq	a1,a5,20f08 <__subtf3+0x534>
   20ad0:	fff00793          	li	a5,-1
   20ad4:	03379793          	slli	a5,a5,0x33
   20ad8:	fff78793          	addi	a5,a5,-1
   20adc:	00f777b3          	and	a5,a4,a5
   20ae0:	00155713          	srli	a4,a0,0x1
   20ae4:	00157513          	andi	a0,a0,1
   20ae8:	00a76533          	or	a0,a4,a0
   20aec:	03f79713          	slli	a4,a5,0x3f
   20af0:	00a76533          	or	a0,a4,a0
   20af4:	0017d793          	srli	a5,a5,0x1
   20af8:	00000813          	li	a6,0
   20afc:	3900006f          	j	20e8c <__subtf3+0x4b8>
   20b00:	03e89a63          	bne	a7,t5,20b34 <__subtf3+0x160>
   20b04:	00a7e733          	or	a4,a5,a0
   20b08:	100704e3          	beqz	a4,21410 <__subtf3+0xa3c>
   20b0c:	0327d713          	srli	a4,a5,0x32
   20b10:	00177713          	andi	a4,a4,1
   20b14:	00088593          	mv	a1,a7
   20b18:	00000813          	li	a6,0
   20b1c:	36071863          	bnez	a4,20e8c <__subtf3+0x4b8>
   20b20:	0c00006f          	j	20be0 <__subtf3+0x20c>
   20b24:	ffe880e3          	beq	a7,t5,20b04 <__subtf3+0x130>
   20b28:	00100693          	li	a3,1
   20b2c:	03369693          	slli	a3,a3,0x33
   20b30:	00d76733          	or	a4,a4,a3
   20b34:	07400693          	li	a3,116
   20b38:	0706c463          	blt	a3,a6,20ba0 <__subtf3+0x1cc>
   20b3c:	03f00693          	li	a3,63
   20b40:	0306c663          	blt	a3,a6,20b6c <__subtf3+0x198>
   20b44:	04000593          	li	a1,64
   20b48:	410585bb          	subw	a1,a1,a6
   20b4c:	00b716b3          	sll	a3,a4,a1
   20b50:	01065333          	srl	t1,a2,a6
   20b54:	00b61633          	sll	a2,a2,a1
   20b58:	0066e6b3          	or	a3,a3,t1
   20b5c:	00c03633          	snez	a2,a2
   20b60:	00c6e633          	or	a2,a3,a2
   20b64:	01075733          	srl	a4,a4,a6
   20b68:	f35ff06f          	j	20a9c <__subtf3+0xc8>
   20b6c:	fc08069b          	addiw	a3,a6,-64
   20b70:	04000313          	li	t1,64
   20b74:	00d756b3          	srl	a3,a4,a3
   20b78:	00000593          	li	a1,0
   20b7c:	00680863          	beq	a6,t1,20b8c <__subtf3+0x1b8>
   20b80:	08000593          	li	a1,128
   20b84:	410585bb          	subw	a1,a1,a6
   20b88:	00b715b3          	sll	a1,a4,a1
   20b8c:	00c5e633          	or	a2,a1,a2
   20b90:	00c03633          	snez	a2,a2
   20b94:	00c6e633          	or	a2,a3,a2
   20b98:	00000713          	li	a4,0
   20b9c:	f01ff06f          	j	20a9c <__subtf3+0xc8>
   20ba0:	00c76633          	or	a2,a4,a2
   20ba4:	00c03633          	snez	a2,a2
   20ba8:	ff1ff06f          	j	20b98 <__subtf3+0x1c4>
   20bac:	12080063          	beqz	a6,20ccc <__subtf3+0x2f8>
   20bb0:	08089063          	bnez	a7,20c30 <__subtf3+0x25c>
   20bb4:	00a7e833          	or	a6,a5,a0
   20bb8:	02081863          	bnez	a6,20be8 <__subtf3+0x214>
   20bbc:	00060513          	mv	a0,a2
   20bc0:	7dee9863          	bne	t4,t5,21390 <__subtf3+0x9bc>
   20bc4:	00c76533          	or	a0,a4,a2
   20bc8:	020508e3          	beqz	a0,213f8 <__subtf3+0xa24>
   20bcc:	03275793          	srli	a5,a4,0x32
   20bd0:	0017f793          	andi	a5,a5,1
   20bd4:	020798e3          	bnez	a5,21404 <__subtf3+0xa30>
   20bd8:	00070793          	mv	a5,a4
   20bdc:	00060513          	mv	a0,a2
   20be0:	01000693          	li	a3,16
   20be4:	1440006f          	j	20d28 <__subtf3+0x354>
   20be8:	fff6c693          	not	a3,a3
   20bec:	0006869b          	sext.w	a3,a3
   20bf0:	00069c63          	bnez	a3,20c08 <__subtf3+0x234>
   20bf4:	00c50533          	add	a0,a0,a2
   20bf8:	00e78733          	add	a4,a5,a4
   20bfc:	00c53633          	sltu	a2,a0,a2
   20c00:	00c70733          	add	a4,a4,a2
   20c04:	eb1ff06f          	j	20ab4 <__subtf3+0xe0>
   20c08:	03ee9e63          	bne	t4,t5,20c44 <__subtf3+0x270>
   20c0c:	00c76533          	or	a0,a4,a2
   20c10:	7e050463          	beqz	a0,213f8 <__subtf3+0xa24>
   20c14:	03275793          	srli	a5,a4,0x32
   20c18:	0017f793          	andi	a5,a5,1
   20c1c:	7e079463          	bnez	a5,21404 <__subtf3+0xa30>
   20c20:	00070793          	mv	a5,a4
   20c24:	00060513          	mv	a0,a2
   20c28:	00000813          	li	a6,0
   20c2c:	fb5ff06f          	j	20be0 <__subtf3+0x20c>
   20c30:	fdee8ee3          	beq	t4,t5,20c0c <__subtf3+0x238>
   20c34:	00100813          	li	a6,1
   20c38:	03381813          	slli	a6,a6,0x33
   20c3c:	40d006bb          	negw	a3,a3
   20c40:	0107e7b3          	or	a5,a5,a6
   20c44:	07400813          	li	a6,116
   20c48:	06d84c63          	blt	a6,a3,20cc0 <__subtf3+0x2ec>
   20c4c:	03f00813          	li	a6,63
   20c50:	02d84e63          	blt	a6,a3,20c8c <__subtf3+0x2b8>
   20c54:	04000893          	li	a7,64
   20c58:	40d888bb          	subw	a7,a7,a3
   20c5c:	00d55333          	srl	t1,a0,a3
   20c60:	01179833          	sll	a6,a5,a7
   20c64:	01151533          	sll	a0,a0,a7
   20c68:	00686833          	or	a6,a6,t1
   20c6c:	00a03533          	snez	a0,a0
   20c70:	00a86533          	or	a0,a6,a0
   20c74:	00d7d6b3          	srl	a3,a5,a3
   20c78:	00c50533          	add	a0,a0,a2
   20c7c:	00e686b3          	add	a3,a3,a4
   20c80:	00c53633          	sltu	a2,a0,a2
   20c84:	00c68733          	add	a4,a3,a2
   20c88:	e2dff06f          	j	20ab4 <__subtf3+0xe0>
   20c8c:	fc06881b          	addiw	a6,a3,-64
   20c90:	04000313          	li	t1,64
   20c94:	0107d833          	srl	a6,a5,a6
   20c98:	00000893          	li	a7,0
   20c9c:	00668863          	beq	a3,t1,20cac <__subtf3+0x2d8>
   20ca0:	08000893          	li	a7,128
   20ca4:	40d886bb          	subw	a3,a7,a3
   20ca8:	00d798b3          	sll	a7,a5,a3
   20cac:	00a8e533          	or	a0,a7,a0
   20cb0:	00a03533          	snez	a0,a0
   20cb4:	00a86533          	or	a0,a6,a0
   20cb8:	00000693          	li	a3,0
   20cbc:	fbdff06f          	j	20c78 <__subtf3+0x2a4>
   20cc0:	00a7e533          	or	a0,a5,a0
   20cc4:	00a03533          	snez	a0,a0
   20cc8:	ff1ff06f          	j	20cb8 <__subtf3+0x2e4>
   20ccc:	00188593          	addi	a1,a7,1
   20cd0:	ffee0693          	addi	a3,t3,-2
   20cd4:	00d5f333          	and	t1,a1,a3
   20cd8:	18031863          	bnez	t1,20e68 <__subtf3+0x494>
   20cdc:	00a7e5b3          	or	a1,a5,a0
   20ce0:	06089263          	bnez	a7,20d44 <__subtf3+0x370>
   20ce4:	6c058263          	beqz	a1,213a8 <__subtf3+0x9d4>
   20ce8:	00c766b3          	or	a3,a4,a2
   20cec:	48068263          	beqz	a3,21170 <__subtf3+0x79c>
   20cf0:	00c50633          	add	a2,a0,a2
   20cf4:	00e787b3          	add	a5,a5,a4
   20cf8:	00a63533          	sltu	a0,a2,a0
   20cfc:	00a787b3          	add	a5,a5,a0
   20d00:	0337d713          	srli	a4,a5,0x33
   20d04:	00177713          	andi	a4,a4,1
   20d08:	6a070263          	beqz	a4,213ac <__subtf3+0x9d8>
   20d0c:	fff00713          	li	a4,-1
   20d10:	03371713          	slli	a4,a4,0x33
   20d14:	fff70713          	addi	a4,a4,-1
   20d18:	00e7f7b3          	and	a5,a5,a4
   20d1c:	00060513          	mv	a0,a2
   20d20:	00000693          	li	a3,0
   20d24:	00100593          	li	a1,1
   20d28:	00757713          	andi	a4,a0,7
   20d2c:	1a071263          	bnez	a4,20ed0 <__subtf3+0x4fc>
   20d30:	08080663          	beqz	a6,20dbc <__subtf3+0x3e8>
   20d34:	0016f713          	andi	a4,a3,1
   20d38:	08070263          	beqz	a4,20dbc <__subtf3+0x3e8>
   20d3c:	0026e693          	ori	a3,a3,2
   20d40:	07c0006f          	j	20dbc <__subtf3+0x3e8>
   20d44:	03e89c63          	bne	a7,t5,20d7c <__subtf3+0x3a8>
   20d48:	78058063          	beqz	a1,214c8 <__subtf3+0xaf4>
   20d4c:	0327d693          	srli	a3,a5,0x32
   20d50:	0016f693          	andi	a3,a3,1
   20d54:	0016b693          	seqz	a3,a3
   20d58:	00469693          	slli	a3,a3,0x4
   20d5c:	051e9063          	bne	t4,a7,20d9c <__subtf3+0x3c8>
   20d60:	00c768b3          	or	a7,a4,a2
   20d64:	02088063          	beqz	a7,20d84 <__subtf3+0x3b0>
   20d68:	03275893          	srli	a7,a4,0x32
   20d6c:	0018f893          	andi	a7,a7,1
   20d70:	00089a63          	bnez	a7,20d84 <__subtf3+0x3b0>
   20d74:	01000693          	li	a3,16
   20d78:	00c0006f          	j	20d84 <__subtf3+0x3b0>
   20d7c:	00000693          	li	a3,0
   20d80:	ffee80e3          	beq	t4,t5,20d60 <__subtf3+0x38c>
   20d84:	00059c63          	bnez	a1,20d9c <__subtf3+0x3c8>
   20d88:	00070793          	mv	a5,a4
   20d8c:	00060513          	mv	a0,a2
   20d90:	000085b7          	lui	a1,0x8
   20d94:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   20d98:	f91ff06f          	j	20d28 <__subtf3+0x354>
   20d9c:	00c76633          	or	a2,a4,a2
   20da0:	fe0608e3          	beqz	a2,20d90 <__subtf3+0x3bc>
   20da4:	00100793          	li	a5,1
   20da8:	000085b7          	lui	a1,0x8
   20dac:	00000493          	li	s1,0
   20db0:	03279793          	slli	a5,a5,0x32
   20db4:	00000513          	li	a0,0
   20db8:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   20dbc:	0337d713          	srli	a4,a5,0x33
   20dc0:	00177713          	andi	a4,a4,1
   20dc4:	02070263          	beqz	a4,20de8 <__subtf3+0x414>
   20dc8:	00008737          	lui	a4,0x8
   20dcc:	00158593          	addi	a1,a1,1
   20dd0:	fff70613          	addi	a2,a4,-1 # 7fff <register_fini-0x80b1>
   20dd4:	6ac58863          	beq	a1,a2,21484 <__subtf3+0xab0>
   20dd8:	fff00713          	li	a4,-1
   20ddc:	03371713          	slli	a4,a4,0x33
   20de0:	fff70713          	addi	a4,a4,-1
   20de4:	00e7f7b3          	and	a5,a5,a4
   20de8:	00355713          	srli	a4,a0,0x3
   20dec:	03d79513          	slli	a0,a5,0x3d
   20df0:	00e56533          	or	a0,a0,a4
   20df4:	00008737          	lui	a4,0x8
   20df8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20dfc:	0037d793          	srli	a5,a5,0x3
   20e00:	02e59063          	bne	a1,a4,20e20 <__subtf3+0x44c>
   20e04:	00f56533          	or	a0,a0,a5
   20e08:	00000793          	li	a5,0
   20e0c:	00050a63          	beqz	a0,20e20 <__subtf3+0x44c>
   20e10:	00100793          	li	a5,1
   20e14:	02f79793          	slli	a5,a5,0x2f
   20e18:	00000513          	li	a0,0
   20e1c:	00000493          	li	s1,0
   20e20:	03159593          	slli	a1,a1,0x31
   20e24:	00f4949b          	slliw	s1,s1,0xf
   20e28:	0315d593          	srli	a1,a1,0x31
   20e2c:	0095e5b3          	or	a1,a1,s1
   20e30:	01079793          	slli	a5,a5,0x10
   20e34:	03059493          	slli	s1,a1,0x30
   20e38:	0107d593          	srli	a1,a5,0x10
   20e3c:	0095e5b3          	or	a1,a1,s1
   20e40:	00068463          	beqz	a3,20e48 <__subtf3+0x474>
   20e44:	0016a073          	csrs	fflags,a3
   20e48:	02813083          	ld	ra,40(sp)
   20e4c:	02013403          	ld	s0,32(sp)
   20e50:	01813483          	ld	s1,24(sp)
   20e54:	01013903          	ld	s2,16(sp)
   20e58:	00813983          	ld	s3,8(sp)
   20e5c:	00013a03          	ld	s4,0(sp)
   20e60:	03010113          	addi	sp,sp,48
   20e64:	00008067          	ret
   20e68:	03e58663          	beq	a1,t5,20e94 <__subtf3+0x4c0>
   20e6c:	00c50633          	add	a2,a0,a2
   20e70:	00a63533          	sltu	a0,a2,a0
   20e74:	00e787b3          	add	a5,a5,a4
   20e78:	00a787b3          	add	a5,a5,a0
   20e7c:	03f79513          	slli	a0,a5,0x3f
   20e80:	00165613          	srli	a2,a2,0x1
   20e84:	00c56533          	or	a0,a0,a2
   20e88:	0017d793          	srli	a5,a5,0x1
   20e8c:	00000693          	li	a3,0
   20e90:	e99ff06f          	j	20d28 <__subtf3+0x354>
   20e94:	00040863          	beqz	s0,20ea4 <__subtf3+0x4d0>
   20e98:	00300793          	li	a5,3
   20e9c:	00f41c63          	bne	s0,a5,20eb4 <__subtf3+0x4e0>
   20ea0:	02049063          	bnez	s1,20ec0 <__subtf3+0x4ec>
   20ea4:	00000793          	li	a5,0
   20ea8:	00000513          	li	a0,0
   20eac:	00500693          	li	a3,5
   20eb0:	f0dff06f          	j	20dbc <__subtf3+0x3e8>
   20eb4:	00200793          	li	a5,2
   20eb8:	00f41463          	bne	s0,a5,20ec0 <__subtf3+0x4ec>
   20ebc:	fe0494e3          	bnez	s1,20ea4 <__subtf3+0x4d0>
   20ec0:	fff00793          	li	a5,-1
   20ec4:	fff00513          	li	a0,-1
   20ec8:	00068593          	mv	a1,a3
   20ecc:	00500693          	li	a3,5
   20ed0:	00200713          	li	a4,2
   20ed4:	0016e693          	ori	a3,a3,1
   20ed8:	5ae40063          	beq	s0,a4,21478 <__subtf3+0xaa4>
   20edc:	00300713          	li	a4,3
   20ee0:	58e40663          	beq	s0,a4,2146c <__subtf3+0xa98>
   20ee4:	58041c63          	bnez	s0,2147c <__subtf3+0xaa8>
   20ee8:	00f57713          	andi	a4,a0,15
   20eec:	00400613          	li	a2,4
   20ef0:	58c70663          	beq	a4,a2,2147c <__subtf3+0xaa8>
   20ef4:	00450713          	addi	a4,a0,4
   20ef8:	00a73533          	sltu	a0,a4,a0
   20efc:	00a787b3          	add	a5,a5,a0
   20f00:	00070513          	mv	a0,a4
   20f04:	5780006f          	j	2147c <__subtf3+0xaa8>
   20f08:	f8040ee3          	beqz	s0,20ea4 <__subtf3+0x4d0>
   20f0c:	00300793          	li	a5,3
   20f10:	00f41e63          	bne	s0,a5,20f2c <__subtf3+0x558>
   20f14:	f80488e3          	beqz	s1,20ea4 <__subtf3+0x4d0>
   20f18:	fff00793          	li	a5,-1
   20f1c:	fff00513          	li	a0,-1
   20f20:	ffe68593          	addi	a1,a3,-2
   20f24:	00000813          	li	a6,0
   20f28:	fa5ff06f          	j	20ecc <__subtf3+0x4f8>
   20f2c:	00200793          	li	a5,2
   20f30:	fef414e3          	bne	s0,a5,20f18 <__subtf3+0x544>
   20f34:	f60498e3          	bnez	s1,20ea4 <__subtf3+0x4d0>
   20f38:	fe1ff06f          	j	20f18 <__subtf3+0x544>
   20f3c:	0f005063          	blez	a6,2101c <__subtf3+0x648>
   20f40:	080e9463          	bnez	t4,20fc8 <__subtf3+0x5f4>
   20f44:	00c765b3          	or	a1,a4,a2
   20f48:	b2058ee3          	beqz	a1,20a84 <__subtf3+0xb0>
   20f4c:	fff6881b          	addiw	a6,a3,-1
   20f50:	02081e63          	bnez	a6,20f8c <__subtf3+0x5b8>
   20f54:	40c50633          	sub	a2,a0,a2
   20f58:	00c53533          	sltu	a0,a0,a2
   20f5c:	40e78733          	sub	a4,a5,a4
   20f60:	40a70733          	sub	a4,a4,a0
   20f64:	00088593          	mv	a1,a7
   20f68:	00060513          	mv	a0,a2
   20f6c:	03375793          	srli	a5,a4,0x33
   20f70:	0017f793          	andi	a5,a5,1
   20f74:	40078e63          	beqz	a5,21390 <__subtf3+0x9bc>
   20f78:	00d71713          	slli	a4,a4,0xd
   20f7c:	00d75913          	srli	s2,a4,0xd
   20f80:	00050a13          	mv	s4,a0
   20f84:	00058993          	mv	s3,a1
   20f88:	3240006f          	j	212ac <__subtf3+0x8d8>
   20f8c:	b7e88ce3          	beq	a7,t5,20b04 <__subtf3+0x130>
   20f90:	07400693          	li	a3,116
   20f94:	0706ce63          	blt	a3,a6,21010 <__subtf3+0x63c>
   20f98:	03f00693          	li	a3,63
   20f9c:	0506c063          	blt	a3,a6,20fdc <__subtf3+0x608>
   20fa0:	04000593          	li	a1,64
   20fa4:	410585bb          	subw	a1,a1,a6
   20fa8:	00b716b3          	sll	a3,a4,a1
   20fac:	01065333          	srl	t1,a2,a6
   20fb0:	00b61633          	sll	a2,a2,a1
   20fb4:	0066e6b3          	or	a3,a3,t1
   20fb8:	00c03633          	snez	a2,a2
   20fbc:	00c6e633          	or	a2,a3,a2
   20fc0:	01075733          	srl	a4,a4,a6
   20fc4:	f91ff06f          	j	20f54 <__subtf3+0x580>
   20fc8:	b3e88ee3          	beq	a7,t5,20b04 <__subtf3+0x130>
   20fcc:	00100693          	li	a3,1
   20fd0:	03369693          	slli	a3,a3,0x33
   20fd4:	00d76733          	or	a4,a4,a3
   20fd8:	fb9ff06f          	j	20f90 <__subtf3+0x5bc>
   20fdc:	fc08069b          	addiw	a3,a6,-64
   20fe0:	04000313          	li	t1,64
   20fe4:	00d756b3          	srl	a3,a4,a3
   20fe8:	00000593          	li	a1,0
   20fec:	00680863          	beq	a6,t1,20ffc <__subtf3+0x628>
   20ff0:	08000593          	li	a1,128
   20ff4:	410585bb          	subw	a1,a1,a6
   20ff8:	00b715b3          	sll	a1,a4,a1
   20ffc:	00c5e633          	or	a2,a1,a2
   21000:	00c03633          	snez	a2,a2
   21004:	00c6e633          	or	a2,a3,a2
   21008:	00000713          	li	a4,0
   2100c:	f49ff06f          	j	20f54 <__subtf3+0x580>
   21010:	00c76633          	or	a2,a4,a2
   21014:	00c03633          	snez	a2,a2
   21018:	ff1ff06f          	j	21008 <__subtf3+0x634>
   2101c:	12080063          	beqz	a6,2113c <__subtf3+0x768>
   21020:	08089063          	bnez	a7,210a0 <__subtf3+0x6cc>
   21024:	00a7e833          	or	a6,a5,a0
   21028:	02081663          	bnez	a6,21054 <__subtf3+0x680>
   2102c:	37ee9863          	bne	t4,t5,2139c <__subtf3+0x9c8>
   21030:	00c76533          	or	a0,a4,a2
   21034:	3e050663          	beqz	a0,21420 <__subtf3+0xa4c>
   21038:	03275793          	srli	a5,a4,0x32
   2103c:	0017f793          	andi	a5,a5,1
   21040:	3e079663          	bnez	a5,2142c <__subtf3+0xa58>
   21044:	00070793          	mv	a5,a4
   21048:	00060513          	mv	a0,a2
   2104c:	00030493          	mv	s1,t1
   21050:	b91ff06f          	j	20be0 <__subtf3+0x20c>
   21054:	fff6c693          	not	a3,a3
   21058:	0006869b          	sext.w	a3,a3
   2105c:	00069e63          	bnez	a3,21078 <__subtf3+0x6a4>
   21060:	40a60533          	sub	a0,a2,a0
   21064:	40f70733          	sub	a4,a4,a5
   21068:	00a63633          	sltu	a2,a2,a0
   2106c:	40c70733          	sub	a4,a4,a2
   21070:	00030493          	mv	s1,t1
   21074:	ef9ff06f          	j	20f6c <__subtf3+0x598>
   21078:	03ee9e63          	bne	t4,t5,210b4 <__subtf3+0x6e0>
   2107c:	00c76533          	or	a0,a4,a2
   21080:	3a050063          	beqz	a0,21420 <__subtf3+0xa4c>
   21084:	03275793          	srli	a5,a4,0x32
   21088:	0017f793          	andi	a5,a5,1
   2108c:	3a079063          	bnez	a5,2142c <__subtf3+0xa58>
   21090:	00070793          	mv	a5,a4
   21094:	00060513          	mv	a0,a2
   21098:	00030493          	mv	s1,t1
   2109c:	b8dff06f          	j	20c28 <__subtf3+0x254>
   210a0:	fdee8ee3          	beq	t4,t5,2107c <__subtf3+0x6a8>
   210a4:	00100813          	li	a6,1
   210a8:	03381813          	slli	a6,a6,0x33
   210ac:	40d006bb          	negw	a3,a3
   210b0:	0107e7b3          	or	a5,a5,a6
   210b4:	07400813          	li	a6,116
   210b8:	06d84c63          	blt	a6,a3,21130 <__subtf3+0x75c>
   210bc:	03f00813          	li	a6,63
   210c0:	02d84e63          	blt	a6,a3,210fc <__subtf3+0x728>
   210c4:	04000893          	li	a7,64
   210c8:	40d888bb          	subw	a7,a7,a3
   210cc:	01179833          	sll	a6,a5,a7
   210d0:	00d55e33          	srl	t3,a0,a3
   210d4:	01151533          	sll	a0,a0,a7
   210d8:	01c86833          	or	a6,a6,t3
   210dc:	00a03533          	snez	a0,a0
   210e0:	00a86533          	or	a0,a6,a0
   210e4:	00d7d7b3          	srl	a5,a5,a3
   210e8:	40a60533          	sub	a0,a2,a0
   210ec:	40f707b3          	sub	a5,a4,a5
   210f0:	00a63633          	sltu	a2,a2,a0
   210f4:	40c78733          	sub	a4,a5,a2
   210f8:	f79ff06f          	j	21070 <__subtf3+0x69c>
   210fc:	fc06881b          	addiw	a6,a3,-64
   21100:	04000e13          	li	t3,64
   21104:	0107d833          	srl	a6,a5,a6
   21108:	00000893          	li	a7,0
   2110c:	01c68863          	beq	a3,t3,2111c <__subtf3+0x748>
   21110:	08000893          	li	a7,128
   21114:	40d886bb          	subw	a3,a7,a3
   21118:	00d798b3          	sll	a7,a5,a3
   2111c:	00a8e533          	or	a0,a7,a0
   21120:	00a03533          	snez	a0,a0
   21124:	00a86533          	or	a0,a6,a0
   21128:	00000793          	li	a5,0
   2112c:	fbdff06f          	j	210e8 <__subtf3+0x714>
   21130:	00a7e533          	or	a0,a5,a0
   21134:	00a03533          	snez	a0,a0
   21138:	ff1ff06f          	j	21128 <__subtf3+0x754>
   2113c:	00188593          	addi	a1,a7,1
   21140:	ffee0693          	addi	a3,t3,-2
   21144:	00d5f6b3          	and	a3,a1,a3
   21148:	12069a63          	bnez	a3,2127c <__subtf3+0x8a8>
   2114c:	00a7ee33          	or	t3,a5,a0
   21150:	00c765b3          	or	a1,a4,a2
   21154:	0c089663          	bnez	a7,21220 <__subtf3+0x84c>
   21158:	060e1c63          	bnez	t3,211d0 <__subtf3+0x7fc>
   2115c:	24059c63          	bnez	a1,213b4 <__subtf3+0x9e0>
   21160:	ffe40493          	addi	s1,s0,-2
   21164:	0014b493          	seqz	s1,s1
   21168:	00000793          	li	a5,0
   2116c:	00000513          	li	a0,0
   21170:	00f56733          	or	a4,a0,a5
   21174:	2e070463          	beqz	a4,2145c <__subtf3+0xa88>
   21178:	03f55713          	srli	a4,a0,0x3f
   2117c:	00179813          	slli	a6,a5,0x1
   21180:	00e80833          	add	a6,a6,a4
   21184:	00151713          	slli	a4,a0,0x1
   21188:	00777613          	andi	a2,a4,7
   2118c:	00000693          	li	a3,0
   21190:	02060663          	beqz	a2,211bc <__subtf3+0x7e8>
   21194:	00200693          	li	a3,2
   21198:	24d40a63          	beq	s0,a3,213ec <__subtf3+0xa18>
   2119c:	00300693          	li	a3,3
   211a0:	22d40663          	beq	s0,a3,213cc <__subtf3+0x9f8>
   211a4:	00100693          	li	a3,1
   211a8:	00041a63          	bnez	s0,211bc <__subtf3+0x7e8>
   211ac:	00f77613          	andi	a2,a4,15
   211b0:	00400593          	li	a1,4
   211b4:	ffc73713          	sltiu	a4,a4,-4
   211b8:	22b61063          	bne	a2,a1,213d8 <__subtf3+0xa04>
   211bc:	03485813          	srli	a6,a6,0x34
   211c0:	00184813          	xori	a6,a6,1
   211c4:	00187813          	andi	a6,a6,1
   211c8:	00000593          	li	a1,0
   211cc:	b5dff06f          	j	20d28 <__subtf3+0x354>
   211d0:	fa0580e3          	beqz	a1,21170 <__subtf3+0x79c>
   211d4:	40c505b3          	sub	a1,a0,a2
   211d8:	00b53833          	sltu	a6,a0,a1
   211dc:	40e786b3          	sub	a3,a5,a4
   211e0:	410686b3          	sub	a3,a3,a6
   211e4:	0336d813          	srli	a6,a3,0x33
   211e8:	00187813          	andi	a6,a6,1
   211ec:	00080e63          	beqz	a6,21208 <__subtf3+0x834>
   211f0:	40a60533          	sub	a0,a2,a0
   211f4:	40f707b3          	sub	a5,a4,a5
   211f8:	00a63633          	sltu	a2,a2,a0
   211fc:	40c787b3          	sub	a5,a5,a2
   21200:	00030493          	mv	s1,t1
   21204:	f6dff06f          	j	21170 <__subtf3+0x79c>
   21208:	00d5e533          	or	a0,a1,a3
   2120c:	1a051a63          	bnez	a0,213c0 <__subtf3+0x9ec>
   21210:	ffe40493          	addi	s1,s0,-2
   21214:	0014b493          	seqz	s1,s1
   21218:	00000793          	li	a5,0
   2121c:	f55ff06f          	j	21170 <__subtf3+0x79c>
   21220:	03e89a63          	bne	a7,t5,21254 <__subtf3+0x880>
   21224:	280e0c63          	beqz	t3,214bc <__subtf3+0xae8>
   21228:	0327d693          	srli	a3,a5,0x32
   2122c:	0016f693          	andi	a3,a3,1
   21230:	0016b693          	seqz	a3,a3
   21234:	00469693          	slli	a3,a3,0x4
   21238:	031e9e63          	bne	t4,a7,21274 <__subtf3+0x8a0>
   2123c:	02058063          	beqz	a1,2125c <__subtf3+0x888>
   21240:	03275893          	srli	a7,a4,0x32
   21244:	0018f893          	andi	a7,a7,1
   21248:	00089a63          	bnez	a7,2125c <__subtf3+0x888>
   2124c:	01000693          	li	a3,16
   21250:	00c0006f          	j	2125c <__subtf3+0x888>
   21254:	00000693          	li	a3,0
   21258:	ffee82e3          	beq	t4,t5,2123c <__subtf3+0x868>
   2125c:	000e1c63          	bnez	t3,21274 <__subtf3+0x8a0>
   21260:	1c058e63          	beqz	a1,2143c <__subtf3+0xa68>
   21264:	00070793          	mv	a5,a4
   21268:	00060513          	mv	a0,a2
   2126c:	00030493          	mv	s1,t1
   21270:	b21ff06f          	j	20d90 <__subtf3+0x3bc>
   21274:	b0058ee3          	beqz	a1,20d90 <__subtf3+0x3bc>
   21278:	b2dff06f          	j	20da4 <__subtf3+0x3d0>
   2127c:	40c50a33          	sub	s4,a0,a2
   21280:	014536b3          	sltu	a3,a0,s4
   21284:	40e78933          	sub	s2,a5,a4
   21288:	40d90933          	sub	s2,s2,a3
   2128c:	03395693          	srli	a3,s2,0x33
   21290:	0016f693          	andi	a3,a3,1
   21294:	08068663          	beqz	a3,21320 <__subtf3+0x94c>
   21298:	40a60a33          	sub	s4,a2,a0
   2129c:	40f70733          	sub	a4,a4,a5
   212a0:	01463633          	sltu	a2,a2,s4
   212a4:	40c70933          	sub	s2,a4,a2
   212a8:	00030493          	mv	s1,t1
   212ac:	08090063          	beqz	s2,2132c <__subtf3+0x958>
   212b0:	00090513          	mv	a0,s2
   212b4:	0bd000ef          	jal	ra,21b70 <__clzdi2>
   212b8:	0005051b          	sext.w	a0,a0
   212bc:	ff45059b          	addiw	a1,a0,-12
   212c0:	03f00793          	li	a5,63
   212c4:	00058693          	mv	a3,a1
   212c8:	06b7ca63          	blt	a5,a1,2133c <__subtf3+0x968>
   212cc:	04000713          	li	a4,64
   212d0:	40b7073b          	subw	a4,a4,a1
   212d4:	00b91933          	sll	s2,s2,a1
   212d8:	00ea5733          	srl	a4,s4,a4
   212dc:	01276733          	or	a4,a4,s2
   212e0:	00ba1533          	sll	a0,s4,a1
   212e4:	0935cc63          	blt	a1,s3,2137c <__subtf3+0x9a8>
   212e8:	413686bb          	subw	a3,a3,s3
   212ec:	0016879b          	addiw	a5,a3,1
   212f0:	03f00613          	li	a2,63
   212f4:	04f64c63          	blt	a2,a5,2134c <__subtf3+0x978>
   212f8:	04000693          	li	a3,64
   212fc:	40f686bb          	subw	a3,a3,a5
   21300:	00f555b3          	srl	a1,a0,a5
   21304:	00d71633          	sll	a2,a4,a3
   21308:	00d51533          	sll	a0,a0,a3
   2130c:	00b66633          	or	a2,a2,a1
   21310:	00a03533          	snez	a0,a0
   21314:	00a66533          	or	a0,a2,a0
   21318:	00f757b3          	srl	a5,a4,a5
   2131c:	e55ff06f          	j	21170 <__subtf3+0x79c>
   21320:	012a6533          	or	a0,s4,s2
   21324:	f80514e3          	bnez	a0,212ac <__subtf3+0x8d8>
   21328:	ee9ff06f          	j	21210 <__subtf3+0x83c>
   2132c:	000a0513          	mv	a0,s4
   21330:	041000ef          	jal	ra,21b70 <__clzdi2>
   21334:	0405051b          	addiw	a0,a0,64
   21338:	f85ff06f          	j	212bc <__subtf3+0x8e8>
   2133c:	fb45071b          	addiw	a4,a0,-76
   21340:	00ea1733          	sll	a4,s4,a4
   21344:	00000513          	li	a0,0
   21348:	f9dff06f          	j	212e4 <__subtf3+0x910>
   2134c:	fc16869b          	addiw	a3,a3,-63
   21350:	04000813          	li	a6,64
   21354:	00d75633          	srl	a2,a4,a3
   21358:	00000693          	li	a3,0
   2135c:	01078863          	beq	a5,a6,2136c <__subtf3+0x998>
   21360:	08000693          	li	a3,128
   21364:	40f686bb          	subw	a3,a3,a5
   21368:	00d716b3          	sll	a3,a4,a3
   2136c:	00d56533          	or	a0,a0,a3
   21370:	00a03533          	snez	a0,a0
   21374:	00a66533          	or	a0,a2,a0
   21378:	ea1ff06f          	j	21218 <__subtf3+0x844>
   2137c:	fff00793          	li	a5,-1
   21380:	03379793          	slli	a5,a5,0x33
   21384:	fff78793          	addi	a5,a5,-1
   21388:	40b985b3          	sub	a1,s3,a1
   2138c:	00f77733          	and	a4,a4,a5
   21390:	00070793          	mv	a5,a4
   21394:	dc058ee3          	beqz	a1,21170 <__subtf3+0x79c>
   21398:	f60ff06f          	j	20af8 <__subtf3+0x124>
   2139c:	00060513          	mv	a0,a2
   213a0:	00030493          	mv	s1,t1
   213a4:	fedff06f          	j	21390 <__subtf3+0x9bc>
   213a8:	00070793          	mv	a5,a4
   213ac:	00060513          	mv	a0,a2
   213b0:	dc1ff06f          	j	21170 <__subtf3+0x79c>
   213b4:	00070793          	mv	a5,a4
   213b8:	00060513          	mv	a0,a2
   213bc:	e45ff06f          	j	21200 <__subtf3+0x82c>
   213c0:	00068793          	mv	a5,a3
   213c4:	00058513          	mv	a0,a1
   213c8:	da9ff06f          	j	21170 <__subtf3+0x79c>
   213cc:	00100693          	li	a3,1
   213d0:	de0496e3          	bnez	s1,211bc <__subtf3+0x7e8>
   213d4:	ff873713          	sltiu	a4,a4,-8
   213d8:	00174713          	xori	a4,a4,1
   213dc:	02071713          	slli	a4,a4,0x20
   213e0:	02075713          	srli	a4,a4,0x20
   213e4:	00e80833          	add	a6,a6,a4
   213e8:	dd5ff06f          	j	211bc <__subtf3+0x7e8>
   213ec:	00100693          	li	a3,1
   213f0:	dc0486e3          	beqz	s1,211bc <__subtf3+0x7e8>
   213f4:	fe1ff06f          	j	213d4 <__subtf3+0xa00>
   213f8:	00000793          	li	a5,0
   213fc:	00000693          	li	a3,0
   21400:	9bdff06f          	j	20dbc <__subtf3+0x3e8>
   21404:	00070793          	mv	a5,a4
   21408:	00060513          	mv	a0,a2
   2140c:	eecff06f          	j	20af8 <__subtf3+0x124>
   21410:	00000793          	li	a5,0
   21414:	00000513          	li	a0,0
   21418:	00088593          	mv	a1,a7
   2141c:	fe1ff06f          	j	213fc <__subtf3+0xa28>
   21420:	00000793          	li	a5,0
   21424:	00030493          	mv	s1,t1
   21428:	fd5ff06f          	j	213fc <__subtf3+0xa28>
   2142c:	00070793          	mv	a5,a4
   21430:	00060513          	mv	a0,a2
   21434:	00030493          	mv	s1,t1
   21438:	ec0ff06f          	j	20af8 <__subtf3+0x124>
   2143c:	00100793          	li	a5,1
   21440:	000085b7          	lui	a1,0x8
   21444:	00000513          	li	a0,0
   21448:	00000493          	li	s1,0
   2144c:	03279793          	slli	a5,a5,0x32
   21450:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   21454:	01000693          	li	a3,16
   21458:	965ff06f          	j	20dbc <__subtf3+0x3e8>
   2145c:	00000793          	li	a5,0
   21460:	00000513          	li	a0,0
   21464:	00000593          	li	a1,0
   21468:	f95ff06f          	j	213fc <__subtf3+0xa28>
   2146c:	00049863          	bnez	s1,2147c <__subtf3+0xaa8>
   21470:	00850713          	addi	a4,a0,8
   21474:	a85ff06f          	j	20ef8 <__subtf3+0x524>
   21478:	fe049ce3          	bnez	s1,21470 <__subtf3+0xa9c>
   2147c:	8c0810e3          	bnez	a6,20d3c <__subtf3+0x368>
   21480:	93dff06f          	j	20dbc <__subtf3+0x3e8>
   21484:	00000513          	li	a0,0
   21488:	02040463          	beqz	s0,214b0 <__subtf3+0xadc>
   2148c:	00300793          	li	a5,3
   21490:	00f41a63          	bne	s0,a5,214a4 <__subtf3+0xad0>
   21494:	00048e63          	beqz	s1,214b0 <__subtf3+0xadc>
   21498:	fff00513          	li	a0,-1
   2149c:	ffe70593          	addi	a1,a4,-2
   214a0:	0100006f          	j	214b0 <__subtf3+0xadc>
   214a4:	00200793          	li	a5,2
   214a8:	fef418e3          	bne	s0,a5,21498 <__subtf3+0xac4>
   214ac:	fe0486e3          	beqz	s1,21498 <__subtf3+0xac4>
   214b0:	0056e693          	ori	a3,a3,5
   214b4:	00050793          	mv	a5,a0
   214b8:	931ff06f          	j	20de8 <__subtf3+0x414>
   214bc:	00000693          	li	a3,0
   214c0:	db1e90e3          	bne	t4,a7,21260 <__subtf3+0x88c>
   214c4:	d79ff06f          	j	2123c <__subtf3+0x868>
   214c8:	00000693          	li	a3,0
   214cc:	8b1e9ee3          	bne	t4,a7,20d88 <__subtf3+0x3b4>
   214d0:	891ff06f          	j	20d60 <__subtf3+0x38c>

00000000000214d4 <__fixtfsi>:
   214d4:	00050613          	mv	a2,a0
   214d8:	002027f3          	frrm	a5
   214dc:	00004837          	lui	a6,0x4
   214e0:	00159693          	slli	a3,a1,0x1
   214e4:	01059793          	slli	a5,a1,0x10
   214e8:	0316d693          	srli	a3,a3,0x31
   214ec:	ffe80713          	addi	a4,a6,-2 # 3ffe <register_fini-0xc0b2>
   214f0:	0107d793          	srli	a5,a5,0x10
   214f4:	03f5d593          	srli	a1,a1,0x3f
   214f8:	00d74c63          	blt	a4,a3,21510 <__fixtfsi+0x3c>
   214fc:	08069c63          	bnez	a3,21594 <__fixtfsi+0xc0>
   21500:	00f567b3          	or	a5,a0,a5
   21504:	00000513          	li	a0,0
   21508:	04079063          	bnez	a5,21548 <__fixtfsi+0x74>
   2150c:	00008067          	ret
   21510:	01d80713          	addi	a4,a6,29
   21514:	02d75e63          	bge	a4,a3,21550 <__fixtfsi+0x7c>
   21518:	80000737          	lui	a4,0x80000
   2151c:	fff74713          	not	a4,a4
   21520:	00b7053b          	addw	a0,a4,a1
   21524:	06058c63          	beqz	a1,2159c <__fixtfsi+0xc8>
   21528:	01e80813          	addi	a6,a6,30
   2152c:	01000713          	li	a4,16
   21530:	07069863          	bne	a3,a6,215a0 <__fixtfsi+0xcc>
   21534:	0117d693          	srli	a3,a5,0x11
   21538:	06069463          	bnez	a3,215a0 <__fixtfsi+0xcc>
   2153c:	02f79793          	slli	a5,a5,0x2f
   21540:	00c7e7b3          	or	a5,a5,a2
   21544:	04078663          	beqz	a5,21590 <__fixtfsi+0xbc>
   21548:	00100713          	li	a4,1
   2154c:	0540006f          	j	215a0 <__fixtfsi+0xcc>
   21550:	00100513          	li	a0,1
   21554:	03051513          	slli	a0,a0,0x30
   21558:	00a7e7b3          	or	a5,a5,a0
   2155c:	ffffc737          	lui	a4,0xffffc
   21560:	00004537          	lui	a0,0x4
   21564:	02f5051b          	addiw	a0,a0,47
   21568:	0117071b          	addiw	a4,a4,17
   2156c:	00d7073b          	addw	a4,a4,a3
   21570:	40d506bb          	subw	a3,a0,a3
   21574:	00e79733          	sll	a4,a5,a4
   21578:	00d7d7b3          	srl	a5,a5,a3
   2157c:	00c76733          	or	a4,a4,a2
   21580:	0007851b          	sext.w	a0,a5
   21584:	00058463          	beqz	a1,2158c <__fixtfsi+0xb8>
   21588:	40a0053b          	negw	a0,a0
   2158c:	fa071ee3          	bnez	a4,21548 <__fixtfsi+0x74>
   21590:	00008067          	ret
   21594:	00000513          	li	a0,0
   21598:	fb1ff06f          	j	21548 <__fixtfsi+0x74>
   2159c:	01000713          	li	a4,16
   215a0:	00172073          	csrs	fflags,a4
   215a4:	fedff06f          	j	21590 <__fixtfsi+0xbc>

00000000000215a8 <__floatsitf>:
   215a8:	fe010113          	addi	sp,sp,-32
   215ac:	00113c23          	sd	ra,24(sp)
   215b0:	00813823          	sd	s0,16(sp)
   215b4:	00913423          	sd	s1,8(sp)
   215b8:	06050463          	beqz	a0,21620 <__floatsitf+0x78>
   215bc:	0005079b          	sext.w	a5,a0
   215c0:	03f55493          	srli	s1,a0,0x3f
   215c4:	00055463          	bgez	a0,215cc <__floatsitf+0x24>
   215c8:	40f007bb          	negw	a5,a5
   215cc:	02079413          	slli	s0,a5,0x20
   215d0:	02045413          	srli	s0,s0,0x20
   215d4:	00040513          	mv	a0,s0
   215d8:	598000ef          	jal	ra,21b70 <__clzdi2>
   215dc:	000045b7          	lui	a1,0x4
   215e0:	03e5859b          	addiw	a1,a1,62
   215e4:	ff15079b          	addiw	a5,a0,-15
   215e8:	40a585bb          	subw	a1,a1,a0
   215ec:	00f417b3          	sll	a5,s0,a5
   215f0:	01813083          	ld	ra,24(sp)
   215f4:	01013403          	ld	s0,16(sp)
   215f8:	00f4949b          	slliw	s1,s1,0xf
   215fc:	0095e5b3          	or	a1,a1,s1
   21600:	01079793          	slli	a5,a5,0x10
   21604:	03059593          	slli	a1,a1,0x30
   21608:	0107d793          	srli	a5,a5,0x10
   2160c:	00813483          	ld	s1,8(sp)
   21610:	00000513          	li	a0,0
   21614:	00b7e5b3          	or	a1,a5,a1
   21618:	02010113          	addi	sp,sp,32
   2161c:	00008067          	ret
   21620:	00000793          	li	a5,0
   21624:	00000593          	li	a1,0
   21628:	00000493          	li	s1,0
   2162c:	fc5ff06f          	j	215f0 <__floatsitf+0x48>

0000000000021630 <__extenddftf2>:
   21630:	fe010113          	addi	sp,sp,-32
   21634:	e20507d3          	fmv.x.d	a5,fa0
   21638:	00113c23          	sd	ra,24(sp)
   2163c:	00813823          	sd	s0,16(sp)
   21640:	00913423          	sd	s1,8(sp)
   21644:	00202773          	frrm	a4
   21648:	0347d513          	srli	a0,a5,0x34
   2164c:	7ff57513          	andi	a0,a0,2047
   21650:	00c79413          	slli	s0,a5,0xc
   21654:	03f7d493          	srli	s1,a5,0x3f
   21658:	00150793          	addi	a5,a0,1 # 4001 <register_fini-0xc0af>
   2165c:	7fe7f793          	andi	a5,a5,2046
   21660:	00c45413          	srli	s0,s0,0xc
   21664:	02078063          	beqz	a5,21684 <__extenddftf2+0x54>
   21668:	000047b7          	lui	a5,0x4
   2166c:	c0078793          	addi	a5,a5,-1024 # 3c00 <register_fini-0xc4b0>
   21670:	00445593          	srli	a1,s0,0x4
   21674:	00f50533          	add	a0,a0,a5
   21678:	03c41413          	slli	s0,s0,0x3c
   2167c:	00000793          	li	a5,0
   21680:	0880006f          	j	21708 <__extenddftf2+0xd8>
   21684:	04051a63          	bnez	a0,216d8 <__extenddftf2+0xa8>
   21688:	00000593          	li	a1,0
   2168c:	fe0408e3          	beqz	s0,2167c <__extenddftf2+0x4c>
   21690:	00040513          	mv	a0,s0
   21694:	4dc000ef          	jal	ra,21b70 <__clzdi2>
   21698:	0005071b          	sext.w	a4,a0
   2169c:	00e00793          	li	a5,14
   216a0:	02e7c463          	blt	a5,a4,216c8 <__extenddftf2+0x98>
   216a4:	00f00593          	li	a1,15
   216a8:	40a585bb          	subw	a1,a1,a0
   216ac:	0315079b          	addiw	a5,a0,49
   216b0:	00b455b3          	srl	a1,s0,a1
   216b4:	00f41433          	sll	s0,s0,a5
   216b8:	000047b7          	lui	a5,0x4
   216bc:	c0c7879b          	addiw	a5,a5,-1012
   216c0:	40a7853b          	subw	a0,a5,a0
   216c4:	fb9ff06f          	j	2167c <__extenddftf2+0x4c>
   216c8:	ff15059b          	addiw	a1,a0,-15
   216cc:	00b415b3          	sll	a1,s0,a1
   216d0:	00000413          	li	s0,0
   216d4:	fe5ff06f          	j	216b8 <__extenddftf2+0x88>
   216d8:	06040463          	beqz	s0,21740 <__extenddftf2+0x110>
   216dc:	00100713          	li	a4,1
   216e0:	03371793          	slli	a5,a4,0x33
   216e4:	00f477b3          	and	a5,s0,a5
   216e8:	00445593          	srli	a1,s0,0x4
   216ec:	0017b793          	seqz	a5,a5
   216f0:	02f71713          	slli	a4,a4,0x2f
   216f4:	00008537          	lui	a0,0x8
   216f8:	00479793          	slli	a5,a5,0x4
   216fc:	00e5e5b3          	or	a1,a1,a4
   21700:	03c41413          	slli	s0,s0,0x3c
   21704:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   21708:	00f4949b          	slliw	s1,s1,0xf
   2170c:	01059593          	slli	a1,a1,0x10
   21710:	00956533          	or	a0,a0,s1
   21714:	03051513          	slli	a0,a0,0x30
   21718:	0105d593          	srli	a1,a1,0x10
   2171c:	00a5e5b3          	or	a1,a1,a0
   21720:	00078463          	beqz	a5,21728 <__extenddftf2+0xf8>
   21724:	0017a073          	csrs	fflags,a5
   21728:	01813083          	ld	ra,24(sp)
   2172c:	00040513          	mv	a0,s0
   21730:	01013403          	ld	s0,16(sp)
   21734:	00813483          	ld	s1,8(sp)
   21738:	02010113          	addi	sp,sp,32
   2173c:	00008067          	ret
   21740:	00008537          	lui	a0,0x8
   21744:	00000593          	li	a1,0
   21748:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   2174c:	f31ff06f          	j	2167c <__extenddftf2+0x4c>

0000000000021750 <__trunctfdf2>:
   21750:	00202873          	frrm	a6
   21754:	00008337          	lui	t1,0x8
   21758:	0305d713          	srli	a4,a1,0x30
   2175c:	fff30e13          	addi	t3,t1,-1 # 7fff <register_fini-0x80b1>
   21760:	01c77633          	and	a2,a4,t3
   21764:	03f5d693          	srli	a3,a1,0x3f
   21768:	00160793          	addi	a5,a2,1
   2176c:	01059593          	slli	a1,a1,0x10
   21770:	ffe30313          	addi	t1,t1,-2
   21774:	00d5d593          	srli	a1,a1,0xd
   21778:	03d55713          	srli	a4,a0,0x3d
   2177c:	0067f333          	and	t1,a5,t1
   21780:	0008081b          	sext.w	a6,a6
   21784:	00b76733          	or	a4,a4,a1
   21788:	00351e93          	slli	t4,a0,0x3
   2178c:	1e030e63          	beqz	t1,21988 <__trunctfdf2+0x238>
   21790:	ffffc7b7          	lui	a5,0xffffc
   21794:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd7820>
   21798:	00f60633          	add	a2,a2,a5
   2179c:	7fe00793          	li	a5,2046
   217a0:	0ec7d063          	bge	a5,a2,21880 <__trunctfdf2+0x130>
   217a4:	06080063          	beqz	a6,21804 <__trunctfdf2+0xb4>
   217a8:	00300793          	li	a5,3
   217ac:	04f81663          	bne	a6,a5,217f8 <__trunctfdf2+0xa8>
   217b0:	04068a63          	beqz	a3,21804 <__trunctfdf2+0xb4>
   217b4:	fff00793          	li	a5,-1
   217b8:	7fe00613          	li	a2,2046
   217bc:	00000713          	li	a4,0
   217c0:	00500893          	li	a7,5
   217c4:	00200593          	li	a1,2
   217c8:	0018e893          	ori	a7,a7,1
   217cc:	24b80263          	beq	a6,a1,21a10 <__trunctfdf2+0x2c0>
   217d0:	00300593          	li	a1,3
   217d4:	22b80863          	beq	a6,a1,21a04 <__trunctfdf2+0x2b4>
   217d8:	00081a63          	bnez	a6,217ec <__trunctfdf2+0x9c>
   217dc:	00f7f593          	andi	a1,a5,15
   217e0:	00400513          	li	a0,4
   217e4:	00a58463          	beq	a1,a0,217ec <__trunctfdf2+0x9c>
   217e8:	00478793          	addi	a5,a5,4
   217ec:	02070263          	beqz	a4,21810 <__trunctfdf2+0xc0>
   217f0:	0028e893          	ori	a7,a7,2
   217f4:	01c0006f          	j	21810 <__trunctfdf2+0xc0>
   217f8:	00200793          	li	a5,2
   217fc:	faf81ce3          	bne	a6,a5,217b4 <__trunctfdf2+0x64>
   21800:	fa068ae3          	beqz	a3,217b4 <__trunctfdf2+0x64>
   21804:	00000793          	li	a5,0
   21808:	7ff00613          	li	a2,2047
   2180c:	00500893          	li	a7,5
   21810:	0377d713          	srli	a4,a5,0x37
   21814:	00177713          	andi	a4,a4,1
   21818:	02070063          	beqz	a4,21838 <__trunctfdf2+0xe8>
   2181c:	00160613          	addi	a2,a2,1
   21820:	7ff00713          	li	a4,2047
   21824:	1ee60a63          	beq	a2,a4,21a18 <__trunctfdf2+0x2c8>
   21828:	fff00593          	li	a1,-1
   2182c:	03759593          	slli	a1,a1,0x37
   21830:	fff58593          	addi	a1,a1,-1 # 3fff <register_fini-0xc0b1>
   21834:	00b7f7b3          	and	a5,a5,a1
   21838:	7ff00713          	li	a4,2047
   2183c:	0037d793          	srli	a5,a5,0x3
   21840:	00e61a63          	bne	a2,a4,21854 <__trunctfdf2+0x104>
   21844:	00078863          	beqz	a5,21854 <__trunctfdf2+0x104>
   21848:	00100793          	li	a5,1
   2184c:	03379793          	slli	a5,a5,0x33
   21850:	00000693          	li	a3,0
   21854:	7ff67713          	andi	a4,a2,2047
   21858:	00c79793          	slli	a5,a5,0xc
   2185c:	03471713          	slli	a4,a4,0x34
   21860:	00c7d793          	srli	a5,a5,0xc
   21864:	00f767b3          	or	a5,a4,a5
   21868:	03f69693          	slli	a3,a3,0x3f
   2186c:	00d7e7b3          	or	a5,a5,a3
   21870:	00088463          	beqz	a7,21878 <__trunctfdf2+0x128>
   21874:	0018a073          	csrs	fflags,a7
   21878:	f2078553          	fmv.d.x	fa0,a5
   2187c:	00008067          	ret
   21880:	0cc04a63          	bgtz	a2,21954 <__trunctfdf2+0x204>
   21884:	fcc00793          	li	a5,-52
   21888:	14f64a63          	blt	a2,a5,219dc <__trunctfdf2+0x28c>
   2188c:	00100793          	li	a5,1
   21890:	03379793          	slli	a5,a5,0x33
   21894:	03d00e13          	li	t3,61
   21898:	00f76733          	or	a4,a4,a5
   2189c:	40ce0e33          	sub	t3,t3,a2
   218a0:	03f00793          	li	a5,63
   218a4:	0006089b          	sext.w	a7,a2
   218a8:	07c7ce63          	blt	a5,t3,21924 <__trunctfdf2+0x1d4>
   218ac:	0038859b          	addiw	a1,a7,3
   218b0:	03d00613          	li	a2,61
   218b4:	4116063b          	subw	a2,a2,a7
   218b8:	00be97b3          	sll	a5,t4,a1
   218bc:	00ced633          	srl	a2,t4,a2
   218c0:	00f037b3          	snez	a5,a5
   218c4:	00f667b3          	or	a5,a2,a5
   218c8:	00b71733          	sll	a4,a4,a1
   218cc:	00f767b3          	or	a5,a4,a5
   218d0:	00000613          	li	a2,0
   218d4:	0c078063          	beqz	a5,21994 <__trunctfdf2+0x244>
   218d8:	00179713          	slli	a4,a5,0x1
   218dc:	00777613          	andi	a2,a4,7
   218e0:	00000893          	li	a7,0
   218e4:	02060663          	beqz	a2,21910 <__trunctfdf2+0x1c0>
   218e8:	00200613          	li	a2,2
   218ec:	10c80263          	beq	a6,a2,219f0 <__trunctfdf2+0x2a0>
   218f0:	00300613          	li	a2,3
   218f4:	00100893          	li	a7,1
   218f8:	0ec80663          	beq	a6,a2,219e4 <__trunctfdf2+0x294>
   218fc:	00081a63          	bnez	a6,21910 <__trunctfdf2+0x1c0>
   21900:	00f77613          	andi	a2,a4,15
   21904:	00400593          	li	a1,4
   21908:	00b60463          	beq	a2,a1,21910 <__trunctfdf2+0x1c0>
   2190c:	00470713          	addi	a4,a4,4 # ffffffffffffc004 <__BSS_END__+0xfffffffffffd7424>
   21910:	03875713          	srli	a4,a4,0x38
   21914:	00174713          	xori	a4,a4,1
   21918:	00177713          	andi	a4,a4,1
   2191c:	00000613          	li	a2,0
   21920:	0540006f          	j	21974 <__trunctfdf2+0x224>
   21924:	ffd00313          	li	t1,-3
   21928:	4113033b          	subw	t1,t1,a7
   2192c:	04000793          	li	a5,64
   21930:	00675333          	srl	t1,a4,t1
   21934:	00000593          	li	a1,0
   21938:	00fe0663          	beq	t3,a5,21944 <__trunctfdf2+0x1f4>
   2193c:	0438861b          	addiw	a2,a7,67
   21940:	00c715b3          	sll	a1,a4,a2
   21944:	01d5e5b3          	or	a1,a1,t4
   21948:	00b035b3          	snez	a1,a1
   2194c:	00b367b3          	or	a5,t1,a1
   21950:	f81ff06f          	j	218d0 <__trunctfdf2+0x180>
   21954:	00751793          	slli	a5,a0,0x7
   21958:	00f037b3          	snez	a5,a5
   2195c:	03ced593          	srli	a1,t4,0x3c
   21960:	00471713          	slli	a4,a4,0x4
   21964:	00b7e7b3          	or	a5,a5,a1
   21968:	00f767b3          	or	a5,a4,a5
   2196c:	00000893          	li	a7,0
   21970:	00000713          	li	a4,0
   21974:	0077f593          	andi	a1,a5,7
   21978:	e40596e3          	bnez	a1,217c4 <__trunctfdf2+0x74>
   2197c:	e8070ae3          	beqz	a4,21810 <__trunctfdf2+0xc0>
   21980:	0018f713          	andi	a4,a7,1
   21984:	e69ff06f          	j	217ec <__trunctfdf2+0x9c>
   21988:	01d767b3          	or	a5,a4,t4
   2198c:	00061863          	bnez	a2,2199c <__trunctfdf2+0x24c>
   21990:	04079663          	bnez	a5,219dc <__trunctfdf2+0x28c>
   21994:	00000893          	li	a7,0
   21998:	e79ff06f          	j	21810 <__trunctfdf2+0xc0>
   2199c:	06078063          	beqz	a5,219fc <__trunctfdf2+0x2ac>
   219a0:	00000893          	li	a7,0
   219a4:	01c61863          	bne	a2,t3,219b4 <__trunctfdf2+0x264>
   219a8:	03275893          	srli	a7,a4,0x32
   219ac:	0018b893          	seqz	a7,a7
   219b0:	00489893          	slli	a7,a7,0x4
   219b4:	03ced793          	srli	a5,t4,0x3c
   219b8:	00471713          	slli	a4,a4,0x4
   219bc:	00f76733          	or	a4,a4,a5
   219c0:	00100793          	li	a5,1
   219c4:	ff877713          	andi	a4,a4,-8
   219c8:	03679793          	slli	a5,a5,0x36
   219cc:	00f767b3          	or	a5,a4,a5
   219d0:	7ff00613          	li	a2,2047
   219d4:	00000713          	li	a4,0
   219d8:	f9dff06f          	j	21974 <__trunctfdf2+0x224>
   219dc:	00100793          	li	a5,1
   219e0:	ef9ff06f          	j	218d8 <__trunctfdf2+0x188>
   219e4:	f20696e3          	bnez	a3,21910 <__trunctfdf2+0x1c0>
   219e8:	00870713          	addi	a4,a4,8
   219ec:	f25ff06f          	j	21910 <__trunctfdf2+0x1c0>
   219f0:	00100893          	li	a7,1
   219f4:	f0068ee3          	beqz	a3,21910 <__trunctfdf2+0x1c0>
   219f8:	ff1ff06f          	j	219e8 <__trunctfdf2+0x298>
   219fc:	7ff00613          	li	a2,2047
   21a00:	f95ff06f          	j	21994 <__trunctfdf2+0x244>
   21a04:	de0694e3          	bnez	a3,217ec <__trunctfdf2+0x9c>
   21a08:	00878793          	addi	a5,a5,8
   21a0c:	de1ff06f          	j	217ec <__trunctfdf2+0x9c>
   21a10:	dc068ee3          	beqz	a3,217ec <__trunctfdf2+0x9c>
   21a14:	ff5ff06f          	j	21a08 <__trunctfdf2+0x2b8>
   21a18:	00000793          	li	a5,0
   21a1c:	02080463          	beqz	a6,21a44 <__trunctfdf2+0x2f4>
   21a20:	00300713          	li	a4,3
   21a24:	00e81a63          	bne	a6,a4,21a38 <__trunctfdf2+0x2e8>
   21a28:	00068e63          	beqz	a3,21a44 <__trunctfdf2+0x2f4>
   21a2c:	fff00793          	li	a5,-1
   21a30:	7fe00613          	li	a2,2046
   21a34:	0100006f          	j	21a44 <__trunctfdf2+0x2f4>
   21a38:	00200713          	li	a4,2
   21a3c:	fee818e3          	bne	a6,a4,21a2c <__trunctfdf2+0x2dc>
   21a40:	fe0686e3          	beqz	a3,21a2c <__trunctfdf2+0x2dc>
   21a44:	0058e893          	ori	a7,a7,5
   21a48:	df1ff06f          	j	21838 <__trunctfdf2+0xe8>

0000000000021a4c <__muldi3>:
   21a4c:	00050613          	mv	a2,a0
   21a50:	00000513          	li	a0,0
   21a54:	0015f693          	andi	a3,a1,1
   21a58:	00068463          	beqz	a3,21a60 <__muldi3+0x14>
   21a5c:	00c50533          	add	a0,a0,a2
   21a60:	0015d593          	srli	a1,a1,0x1
   21a64:	00161613          	slli	a2,a2,0x1
   21a68:	fe0596e3          	bnez	a1,21a54 <__muldi3+0x8>
   21a6c:	00008067          	ret

0000000000021a70 <__udivsi3>:
   21a70:	02051513          	slli	a0,a0,0x20
   21a74:	02059593          	slli	a1,a1,0x20
   21a78:	00008293          	mv	t0,ra
   21a7c:	03c000ef          	jal	ra,21ab8 <__udivdi3>
   21a80:	0005051b          	sext.w	a0,a0
   21a84:	00028067          	jr	t0 # 10378 <memset+0xb4>

0000000000021a88 <__umodsi3>:
   21a88:	02051513          	slli	a0,a0,0x20
   21a8c:	02059593          	slli	a1,a1,0x20
   21a90:	02055513          	srli	a0,a0,0x20
   21a94:	0205d593          	srli	a1,a1,0x20
   21a98:	00008293          	mv	t0,ra
   21a9c:	01c000ef          	jal	ra,21ab8 <__udivdi3>
   21aa0:	0005851b          	sext.w	a0,a1
   21aa4:	00028067          	jr	t0

0000000000021aa8 <__divsi3>:
   21aa8:	fff00293          	li	t0,-1
   21aac:	0a558c63          	beq	a1,t0,21b64 <__moddi3+0x30>

0000000000021ab0 <__divdi3>:
   21ab0:	06054063          	bltz	a0,21b10 <__umoddi3+0x10>
   21ab4:	0605c663          	bltz	a1,21b20 <__umoddi3+0x20>

0000000000021ab8 <__udivdi3>:
   21ab8:	00058613          	mv	a2,a1
   21abc:	00050593          	mv	a1,a0
   21ac0:	fff00513          	li	a0,-1
   21ac4:	02060c63          	beqz	a2,21afc <__udivdi3+0x44>
   21ac8:	00100693          	li	a3,1
   21acc:	00b67a63          	bgeu	a2,a1,21ae0 <__udivdi3+0x28>
   21ad0:	00c05863          	blez	a2,21ae0 <__udivdi3+0x28>
   21ad4:	00161613          	slli	a2,a2,0x1
   21ad8:	00169693          	slli	a3,a3,0x1
   21adc:	feb66ae3          	bltu	a2,a1,21ad0 <__udivdi3+0x18>
   21ae0:	00000513          	li	a0,0
   21ae4:	00c5e663          	bltu	a1,a2,21af0 <__udivdi3+0x38>
   21ae8:	40c585b3          	sub	a1,a1,a2
   21aec:	00d56533          	or	a0,a0,a3
   21af0:	0016d693          	srli	a3,a3,0x1
   21af4:	00165613          	srli	a2,a2,0x1
   21af8:	fe0696e3          	bnez	a3,21ae4 <__udivdi3+0x2c>
   21afc:	00008067          	ret

0000000000021b00 <__umoddi3>:
   21b00:	00008293          	mv	t0,ra
   21b04:	fb5ff0ef          	jal	ra,21ab8 <__udivdi3>
   21b08:	00058513          	mv	a0,a1
   21b0c:	00028067          	jr	t0
   21b10:	40a00533          	neg	a0,a0
   21b14:	00b04863          	bgtz	a1,21b24 <__umoddi3+0x24>
   21b18:	40b005b3          	neg	a1,a1
   21b1c:	f9dff06f          	j	21ab8 <__udivdi3>
   21b20:	40b005b3          	neg	a1,a1
   21b24:	00008293          	mv	t0,ra
   21b28:	f91ff0ef          	jal	ra,21ab8 <__udivdi3>
   21b2c:	40a00533          	neg	a0,a0
   21b30:	00028067          	jr	t0

0000000000021b34 <__moddi3>:
   21b34:	00008293          	mv	t0,ra
   21b38:	0005ca63          	bltz	a1,21b4c <__moddi3+0x18>
   21b3c:	00054c63          	bltz	a0,21b54 <__moddi3+0x20>
   21b40:	f79ff0ef          	jal	ra,21ab8 <__udivdi3>
   21b44:	00058513          	mv	a0,a1
   21b48:	00028067          	jr	t0
   21b4c:	40b005b3          	neg	a1,a1
   21b50:	fe0558e3          	bgez	a0,21b40 <__moddi3+0xc>
   21b54:	40a00533          	neg	a0,a0
   21b58:	f61ff0ef          	jal	ra,21ab8 <__udivdi3>
   21b5c:	40b00533          	neg	a0,a1
   21b60:	00028067          	jr	t0
   21b64:	01f29293          	slli	t0,t0,0x1f
   21b68:	f45514e3          	bne	a0,t0,21ab0 <__divdi3>
   21b6c:	00008067          	ret

0000000000021b70 <__clzdi2>:
   21b70:	03800793          	li	a5,56
   21b74:	00f55733          	srl	a4,a0,a5
   21b78:	0ff77713          	andi	a4,a4,255
   21b7c:	00071663          	bnez	a4,21b88 <__clzdi2+0x18>
   21b80:	ff878793          	addi	a5,a5,-8
   21b84:	fe0798e3          	bnez	a5,21b74 <__clzdi2+0x4>
   21b88:	04000713          	li	a4,64
   21b8c:	40f70733          	sub	a4,a4,a5
   21b90:	00f55533          	srl	a0,a0,a5
   21b94:	00001797          	auipc	a5,0x1
   21b98:	d4478793          	addi	a5,a5,-700 # 228d8 <__clz_tab>
   21b9c:	00a78533          	add	a0,a5,a0
   21ba0:	00054503          	lbu	a0,0(a0)
   21ba4:	40a7053b          	subw	a0,a4,a0
   21ba8:	00008067          	ret
