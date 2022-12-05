
sample_complex_addition_patched:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00003517          	auipc	a0,0x3
   100bc:	4e450513          	addi	a0,a0,1252 # 1359c <__libc_fini_array>
   100c0:	2710c06f          	j	1cb30 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00014197          	auipc	gp,0x14
   100cc:	33818193          	addi	gp,gp,824 # 24400 <__global_pointer$>
   100d0:	77018513          	addi	a0,gp,1904 # 24b70 <_PathLocale>
   100d4:	00015617          	auipc	a2,0x15
   100d8:	b2c60613          	addi	a2,a2,-1236 # 24c00 <__BSS_END__>
   100dc:	40a60633          	sub	a2,a2,a0
   100e0:	00000593          	li	a1,0
   100e4:	1fc000ef          	jal	ra,102e0 <memset>
   100e8:	0000d517          	auipc	a0,0xd
   100ec:	a4850513          	addi	a0,a0,-1464 # 1cb30 <atexit>
   100f0:	00050863          	beqz	a0,10100 <_start+0x38>
   100f4:	00003517          	auipc	a0,0x3
   100f8:	4a850513          	addi	a0,a0,1192 # 1359c <__libc_fini_array>
   100fc:	2350c0ef          	jal	ra,1cb30 <atexit>
   10100:	14c000ef          	jal	ra,1024c <__libc_init_array>
   10104:	00012503          	lw	a0,0(sp)
   10108:	00810593          	addi	a1,sp,8
   1010c:	00000613          	li	a2,0
   10110:	070000ef          	jal	ra,10180 <main>
   10114:	1080006f          	j	1021c <exit>

0000000000010118 <__do_global_dtors_aux>:
   10118:	ff010113          	addi	sp,sp,-16
   1011c:	00813023          	sd	s0,0(sp)
   10120:	7a018413          	addi	s0,gp,1952 # 24ba0 <completed.1>
   10124:	00044783          	lbu	a5,0(s0)
   10128:	00113423          	sd	ra,8(sp)
   1012c:	02079263          	bnez	a5,10150 <__do_global_dtors_aux+0x38>
   10130:	00000793          	li	a5,0
   10134:	00078a63          	beqz	a5,10148 <__do_global_dtors_aux+0x30>
   10138:	00014517          	auipc	a0,0x14
   1013c:	8c050513          	addi	a0,a0,-1856 # 239f8 <__FRAME_END__>
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
   10168:	7a818593          	addi	a1,gp,1960 # 24ba8 <object.0>
   1016c:	00014517          	auipc	a0,0x14
   10170:	88c50513          	addi	a0,a0,-1908 # 239f8 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	03010413          	addi	s0,sp,48
   10190:	00100793          	li	a5,1
   10194:	fef41423          	sh	a5,-24(s0)
   10198:	00200793          	li	a5,2
   1019c:	fef41523          	sh	a5,-22(s0)
   101a0:	00300793          	li	a5,3
   101a4:	fef41023          	sh	a5,-32(s0)
   101a8:	00100793          	li	a5,1
   101ac:	fef41123          	sh	a5,-30(s0)
   101b0:	fe842703          	lw	a4,-24(s0)
   101b4:	fe042783          	lw	a5,-32(s0)
   101b8:	00f7078b          	0xf7078b
   101bc:	0007879b          	sext.w	a5,a5
   101c0:	fcf42c23          	sw	a5,-40(s0)
   101c4:	fe841783          	lh	a5,-24(s0)
   101c8:	0007859b          	sext.w	a1,a5
   101cc:	fea41783          	lh	a5,-22(s0)
   101d0:	0007861b          	sext.w	a2,a5
   101d4:	fe041783          	lh	a5,-32(s0)
   101d8:	0007869b          	sext.w	a3,a5
   101dc:	fe241783          	lh	a5,-30(s0)
   101e0:	0007871b          	sext.w	a4,a5
   101e4:	fd841783          	lh	a5,-40(s0)
   101e8:	0007879b          	sext.w	a5,a5
   101ec:	fda41503          	lh	a0,-38(s0)
   101f0:	0005051b          	sext.w	a0,a0
   101f4:	00050813          	mv	a6,a0
   101f8:	00022537          	lui	a0,0x22
   101fc:	bd050513          	addi	a0,a0,-1072 # 21bd0 <__clzdi2+0x44>
   10200:	1fc000ef          	jal	ra,103fc <printf>
   10204:	00000793          	li	a5,0
   10208:	00078513          	mv	a0,a5
   1020c:	02813083          	ld	ra,40(sp)
   10210:	02013403          	ld	s0,32(sp)
   10214:	03010113          	addi	sp,sp,48
   10218:	00008067          	ret

000000000001021c <exit>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00000593          	li	a1,0
   10224:	00813023          	sd	s0,0(sp)
   10228:	00113423          	sd	ra,8(sp)
   1022c:	00050413          	mv	s0,a0
   10230:	365020ef          	jal	ra,12d94 <__call_exitprocs>
   10234:	7481b503          	ld	a0,1864(gp) # 24b48 <_global_impure_ptr>
   10238:	05853783          	ld	a5,88(a0)
   1023c:	00078463          	beqz	a5,10244 <exit+0x28>
   10240:	000780e7          	jalr	a5
   10244:	00040513          	mv	a0,s0
   10248:	0d50f0ef          	jal	ra,1fb1c <_exit>

000000000001024c <__libc_init_array>:
   1024c:	fe010113          	addi	sp,sp,-32
   10250:	00813823          	sd	s0,16(sp)
   10254:	01213023          	sd	s2,0(sp)
   10258:	00013417          	auipc	s0,0x13
   1025c:	7a440413          	addi	s0,s0,1956 # 239fc <__preinit_array_end>
   10260:	00013917          	auipc	s2,0x13
   10264:	79c90913          	addi	s2,s2,1948 # 239fc <__preinit_array_end>
   10268:	40890933          	sub	s2,s2,s0
   1026c:	00113c23          	sd	ra,24(sp)
   10270:	00913423          	sd	s1,8(sp)
   10274:	40395913          	srai	s2,s2,0x3
   10278:	00090e63          	beqz	s2,10294 <__libc_init_array+0x48>
   1027c:	00000493          	li	s1,0
   10280:	00043783          	ld	a5,0(s0)
   10284:	00148493          	addi	s1,s1,1
   10288:	00840413          	addi	s0,s0,8
   1028c:	000780e7          	jalr	a5
   10290:	fe9918e3          	bne	s2,s1,10280 <__libc_init_array+0x34>
   10294:	00013417          	auipc	s0,0x13
   10298:	76c40413          	addi	s0,s0,1900 # 23a00 <__init_array_start>
   1029c:	00013917          	auipc	s2,0x13
   102a0:	77490913          	addi	s2,s2,1908 # 23a10 <__do_global_dtors_aux_fini_array_entry>
   102a4:	40890933          	sub	s2,s2,s0
   102a8:	40395913          	srai	s2,s2,0x3
   102ac:	00090e63          	beqz	s2,102c8 <__libc_init_array+0x7c>
   102b0:	00000493          	li	s1,0
   102b4:	00043783          	ld	a5,0(s0)
   102b8:	00148493          	addi	s1,s1,1
   102bc:	00840413          	addi	s0,s0,8
   102c0:	000780e7          	jalr	a5
   102c4:	fe9918e3          	bne	s2,s1,102b4 <__libc_init_array+0x68>
   102c8:	01813083          	ld	ra,24(sp)
   102cc:	01013403          	ld	s0,16(sp)
   102d0:	00813483          	ld	s1,8(sp)
   102d4:	00013903          	ld	s2,0(sp)
   102d8:	02010113          	addi	sp,sp,32
   102dc:	00008067          	ret

00000000000102e0 <memset>:
   102e0:	00f00313          	li	t1,15
   102e4:	00050713          	mv	a4,a0
   102e8:	02c37a63          	bgeu	t1,a2,1031c <memset+0x3c>
   102ec:	00f77793          	andi	a5,a4,15
   102f0:	0a079063          	bnez	a5,10390 <memset+0xb0>
   102f4:	06059e63          	bnez	a1,10370 <memset+0x90>
   102f8:	ff067693          	andi	a3,a2,-16
   102fc:	00f67613          	andi	a2,a2,15
   10300:	00e686b3          	add	a3,a3,a4
   10304:	00b73023          	sd	a1,0(a4)
   10308:	00b73423          	sd	a1,8(a4)
   1030c:	01070713          	addi	a4,a4,16
   10310:	fed76ae3          	bltu	a4,a3,10304 <memset+0x24>
   10314:	00061463          	bnez	a2,1031c <memset+0x3c>
   10318:	00008067          	ret
   1031c:	40c306b3          	sub	a3,t1,a2
   10320:	00269693          	slli	a3,a3,0x2
   10324:	00000297          	auipc	t0,0x0
   10328:	005686b3          	add	a3,a3,t0
   1032c:	00c68067          	jr	12(a3)
   10330:	00b70723          	sb	a1,14(a4)
   10334:	00b706a3          	sb	a1,13(a4)
   10338:	00b70623          	sb	a1,12(a4)
   1033c:	00b705a3          	sb	a1,11(a4)
   10340:	00b70523          	sb	a1,10(a4)
   10344:	00b704a3          	sb	a1,9(a4)
   10348:	00b70423          	sb	a1,8(a4)
   1034c:	00b703a3          	sb	a1,7(a4)
   10350:	00b70323          	sb	a1,6(a4)
   10354:	00b702a3          	sb	a1,5(a4)
   10358:	00b70223          	sb	a1,4(a4)
   1035c:	00b701a3          	sb	a1,3(a4)
   10360:	00b70123          	sb	a1,2(a4)
   10364:	00b700a3          	sb	a1,1(a4)
   10368:	00b70023          	sb	a1,0(a4)
   1036c:	00008067          	ret
   10370:	0ff5f593          	andi	a1,a1,255
   10374:	00859693          	slli	a3,a1,0x8
   10378:	00d5e5b3          	or	a1,a1,a3
   1037c:	01059693          	slli	a3,a1,0x10
   10380:	00d5e5b3          	or	a1,a1,a3
   10384:	02059693          	slli	a3,a1,0x20
   10388:	00d5e5b3          	or	a1,a1,a3
   1038c:	f6dff06f          	j	102f8 <memset+0x18>
   10390:	00279693          	slli	a3,a5,0x2
   10394:	00000297          	auipc	t0,0x0
   10398:	005686b3          	add	a3,a3,t0
   1039c:	00008293          	mv	t0,ra
   103a0:	f98680e7          	jalr	-104(a3)
   103a4:	00028093          	mv	ra,t0
   103a8:	ff078793          	addi	a5,a5,-16
   103ac:	40f70733          	sub	a4,a4,a5
   103b0:	00f60633          	add	a2,a2,a5
   103b4:	f6c374e3          	bgeu	t1,a2,1031c <memset+0x3c>
   103b8:	f3dff06f          	j	102f4 <memset+0x14>

00000000000103bc <_printf_r>:
   103bc:	fb010113          	addi	sp,sp,-80
   103c0:	02c13023          	sd	a2,32(sp)
   103c4:	02d13423          	sd	a3,40(sp)
   103c8:	02e13823          	sd	a4,48(sp)
   103cc:	02f13c23          	sd	a5,56(sp)
   103d0:	05013023          	sd	a6,64(sp)
   103d4:	05113423          	sd	a7,72(sp)
   103d8:	00058613          	mv	a2,a1
   103dc:	01053583          	ld	a1,16(a0)
   103e0:	02010693          	addi	a3,sp,32
   103e4:	00113c23          	sd	ra,24(sp)
   103e8:	00d13423          	sd	a3,8(sp)
   103ec:	05c000ef          	jal	ra,10448 <_vfprintf_r>
   103f0:	01813083          	ld	ra,24(sp)
   103f4:	05010113          	addi	sp,sp,80
   103f8:	00008067          	ret

00000000000103fc <printf>:
   103fc:	fa010113          	addi	sp,sp,-96
   10400:	02c13823          	sd	a2,48(sp)
   10404:	02d13c23          	sd	a3,56(sp)
   10408:	7581b303          	ld	t1,1880(gp) # 24b58 <_impure_ptr>
   1040c:	02b13423          	sd	a1,40(sp)
   10410:	04e13023          	sd	a4,64(sp)
   10414:	04f13423          	sd	a5,72(sp)
   10418:	05013823          	sd	a6,80(sp)
   1041c:	05113c23          	sd	a7,88(sp)
   10420:	01033583          	ld	a1,16(t1) # 10184 <main+0x4>
   10424:	02810693          	addi	a3,sp,40
   10428:	00050613          	mv	a2,a0
   1042c:	00030513          	mv	a0,t1
   10430:	00113c23          	sd	ra,24(sp)
   10434:	00d13423          	sd	a3,8(sp)
   10438:	010000ef          	jal	ra,10448 <_vfprintf_r>
   1043c:	01813083          	ld	ra,24(sp)
   10440:	06010113          	addi	sp,sp,96
   10444:	00008067          	ret

0000000000010448 <_vfprintf_r>:
   10448:	d9010113          	addi	sp,sp,-624
   1044c:	26113423          	sd	ra,616(sp)
   10450:	25313423          	sd	s3,584(sp)
   10454:	23813023          	sd	s8,544(sp)
   10458:	21913c23          	sd	s9,536(sp)
   1045c:	00058c13          	mv	s8,a1
   10460:	00060993          	mv	s3,a2
   10464:	00d13423          	sd	a3,8(sp)
   10468:	26813023          	sd	s0,608(sp)
   1046c:	24913c23          	sd	s1,600(sp)
   10470:	25213823          	sd	s2,592(sp)
   10474:	25413023          	sd	s4,576(sp)
   10478:	23513c23          	sd	s5,568(sp)
   1047c:	23613823          	sd	s6,560(sp)
   10480:	23713423          	sd	s7,552(sp)
   10484:	21a13823          	sd	s10,528(sp)
   10488:	21b13423          	sd	s11,520(sp)
   1048c:	00050c93          	mv	s9,a0
   10490:	438060ef          	jal	ra,168c8 <_localeconv_r>
   10494:	00053783          	ld	a5,0(a0)
   10498:	00078513          	mv	a0,a5
   1049c:	04f13023          	sd	a5,64(sp)
   104a0:	165080ef          	jal	ra,18e04 <strlen>
   104a4:	02a13c23          	sd	a0,56(sp)
   104a8:	0e013823          	sd	zero,240(sp)
   104ac:	0e013c23          	sd	zero,248(sp)
   104b0:	000c8663          	beqz	s9,104bc <_vfprintf_r+0x74>
   104b4:	050ca783          	lw	a5,80(s9)
   104b8:	7c078c63          	beqz	a5,10c90 <_vfprintf_r+0x848>
   104bc:	010c1703          	lh	a4,16(s8)
   104c0:	000026b7          	lui	a3,0x2
   104c4:	03071793          	slli	a5,a4,0x30
   104c8:	0307d793          	srli	a5,a5,0x30
   104cc:	00d7f633          	and	a2,a5,a3
   104d0:	02061863          	bnez	a2,10500 <_vfprintf_r+0xb8>
   104d4:	0acc2603          	lw	a2,172(s8)
   104d8:	00d767b3          	or	a5,a4,a3
   104dc:	0107979b          	slliw	a5,a5,0x10
   104e0:	ffffe737          	lui	a4,0xffffe
   104e4:	4107d79b          	sraiw	a5,a5,0x10
   104e8:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd93ff>
   104ec:	00e67733          	and	a4,a2,a4
   104f0:	00fc1823          	sh	a5,16(s8)
   104f4:	03079793          	slli	a5,a5,0x30
   104f8:	0aec2623          	sw	a4,172(s8)
   104fc:	0307d793          	srli	a5,a5,0x30
   10500:	0087f713          	andi	a4,a5,8
   10504:	30070863          	beqz	a4,10814 <_vfprintf_r+0x3cc>
   10508:	018c3703          	ld	a4,24(s8)
   1050c:	30070463          	beqz	a4,10814 <_vfprintf_r+0x3cc>
   10510:	01a7f793          	andi	a5,a5,26
   10514:	00a00713          	li	a4,10
   10518:	32e78063          	beq	a5,a4,10838 <_vfprintf_r+0x3f0>
   1051c:	18010793          	addi	a5,sp,384
   10520:	00098d13          	mv	s10,s3
   10524:	10f13023          	sd	a5,256(sp)
   10528:	00078d93          	mv	s11,a5
   1052c:	000d4783          	lbu	a5,0(s10)
   10530:	10013823          	sd	zero,272(sp)
   10534:	10012423          	sw	zero,264(sp)
   10538:	02013023          	sd	zero,32(sp)
   1053c:	04013423          	sd	zero,72(sp)
   10540:	04013823          	sd	zero,80(sp)
   10544:	04013c23          	sd	zero,88(sp)
   10548:	06013423          	sd	zero,104(sp)
   1054c:	06013823          	sd	zero,112(sp)
   10550:	00013023          	sd	zero,0(sp)
   10554:	01000b13          	li	s6,16
   10558:	24078863          	beqz	a5,107a8 <_vfprintf_r+0x360>
   1055c:	000d0413          	mv	s0,s10
   10560:	02500713          	li	a4,37
   10564:	2ee78c63          	beq	a5,a4,1085c <_vfprintf_r+0x414>
   10568:	00144783          	lbu	a5,1(s0)
   1056c:	00140413          	addi	s0,s0,1
   10570:	fe079ae3          	bnez	a5,10564 <_vfprintf_r+0x11c>
   10574:	41a404bb          	subw	s1,s0,s10
   10578:	22048863          	beqz	s1,107a8 <_vfprintf_r+0x360>
   1057c:	11013703          	ld	a4,272(sp)
   10580:	10812783          	lw	a5,264(sp)
   10584:	01adb023          	sd	s10,0(s11)
   10588:	00970733          	add	a4,a4,s1
   1058c:	0017879b          	addiw	a5,a5,1
   10590:	009db423          	sd	s1,8(s11)
   10594:	10e13823          	sd	a4,272(sp)
   10598:	10f12423          	sw	a5,264(sp)
   1059c:	0007871b          	sext.w	a4,a5
   105a0:	00700793          	li	a5,7
   105a4:	010d8d93          	addi	s11,s11,16
   105a8:	2ce7c263          	blt	a5,a4,1086c <_vfprintf_r+0x424>
   105ac:	00013703          	ld	a4,0(sp)
   105b0:	00044783          	lbu	a5,0(s0)
   105b4:	0097073b          	addw	a4,a4,s1
   105b8:	00e13023          	sd	a4,0(sp)
   105bc:	1e078663          	beqz	a5,107a8 <_vfprintf_r+0x360>
   105c0:	fff00e13          	li	t3,-1
   105c4:	00144483          	lbu	s1,1(s0)
   105c8:	0c0107a3          	sb	zero,207(sp)
   105cc:	00140413          	addi	s0,s0,1
   105d0:	00000a13          	li	s4,0
   105d4:	00000913          	li	s2,0
   105d8:	00900993          	li	s3,9
   105dc:	02a00a93          	li	s5,42
   105e0:	000e0b93          	mv	s7,t3
   105e4:	00140413          	addi	s0,s0,1
   105e8:	0004849b          	sext.w	s1,s1
   105ec:	05a00693          	li	a3,90
   105f0:	fe04879b          	addiw	a5,s1,-32
   105f4:	0007871b          	sext.w	a4,a5
   105f8:	04e6ee63          	bltu	a3,a4,10654 <_vfprintf_r+0x20c>
   105fc:	02079713          	slli	a4,a5,0x20
   10600:	01e75793          	srli	a5,a4,0x1e
   10604:	00011717          	auipc	a4,0x11
   10608:	64c70713          	addi	a4,a4,1612 # 21c50 <__clzdi2+0xc4>
   1060c:	00e787b3          	add	a5,a5,a4
   10610:	0007a783          	lw	a5,0(a5)
   10614:	00e787b3          	add	a5,a5,a4
   10618:	00078067          	jr	a5
   1061c:	00000a13          	li	s4,0
   10620:	00044703          	lbu	a4,0(s0)
   10624:	002a179b          	slliw	a5,s4,0x2
   10628:	014787bb          	addw	a5,a5,s4
   1062c:	fd04849b          	addiw	s1,s1,-48
   10630:	0017979b          	slliw	a5,a5,0x1
   10634:	fd07061b          	addiw	a2,a4,-48
   10638:	00f48a3b          	addw	s4,s1,a5
   1063c:	00140413          	addi	s0,s0,1
   10640:	0007049b          	sext.w	s1,a4
   10644:	fcc9fee3          	bgeu	s3,a2,10620 <_vfprintf_r+0x1d8>
   10648:	fe04879b          	addiw	a5,s1,-32
   1064c:	0007871b          	sext.w	a4,a5
   10650:	fae6f6e3          	bgeu	a3,a4,105fc <_vfprintf_r+0x1b4>
   10654:	14048a63          	beqz	s1,107a8 <_vfprintf_r+0x360>
   10658:	10910c23          	sb	s1,280(sp)
   1065c:	0c0107a3          	sb	zero,207(sp)
   10660:	00100a93          	li	s5,1
   10664:	00100b93          	li	s7,1
   10668:	11810d13          	addi	s10,sp,280
   1066c:	00013823          	sd	zero,16(sp)
   10670:	00000e13          	li	t3,0
   10674:	02013823          	sd	zero,48(sp)
   10678:	02013423          	sd	zero,40(sp)
   1067c:	00013c23          	sd	zero,24(sp)
   10680:	00297f13          	andi	t5,s2,2
   10684:	000f0463          	beqz	t5,1068c <_vfprintf_r+0x244>
   10688:	002a8a9b          	addiw	s5,s5,2
   1068c:	08497e93          	andi	t4,s2,132
   10690:	11013783          	ld	a5,272(sp)
   10694:	000e9663          	bnez	t4,106a0 <_vfprintf_r+0x258>
   10698:	415a06bb          	subw	a3,s4,s5
   1069c:	52d04ce3          	bgtz	a3,113d4 <_vfprintf_r+0xf8c>
   106a0:	0cf14703          	lbu	a4,207(sp)
   106a4:	02070c63          	beqz	a4,106dc <_vfprintf_r+0x294>
   106a8:	10812703          	lw	a4,264(sp)
   106ac:	0cf10693          	addi	a3,sp,207
   106b0:	00ddb023          	sd	a3,0(s11)
   106b4:	0017071b          	addiw	a4,a4,1
   106b8:	00100693          	li	a3,1
   106bc:	00178793          	addi	a5,a5,1
   106c0:	00ddb423          	sd	a3,8(s11)
   106c4:	10e12423          	sw	a4,264(sp)
   106c8:	0007069b          	sext.w	a3,a4
   106cc:	10f13823          	sd	a5,272(sp)
   106d0:	00700713          	li	a4,7
   106d4:	010d8d93          	addi	s11,s11,16
   106d8:	46d74863          	blt	a4,a3,10b48 <_vfprintf_r+0x700>
   106dc:	020f0c63          	beqz	t5,10714 <_vfprintf_r+0x2cc>
   106e0:	10812703          	lw	a4,264(sp)
   106e4:	0d010693          	addi	a3,sp,208
   106e8:	00ddb023          	sd	a3,0(s11)
   106ec:	0017071b          	addiw	a4,a4,1
   106f0:	00200693          	li	a3,2
   106f4:	00278793          	addi	a5,a5,2
   106f8:	00ddb423          	sd	a3,8(s11)
   106fc:	10e12423          	sw	a4,264(sp)
   10700:	0007069b          	sext.w	a3,a4
   10704:	10f13823          	sd	a5,272(sp)
   10708:	00700713          	li	a4,7
   1070c:	010d8d93          	addi	s11,s11,16
   10710:	62d744e3          	blt	a4,a3,11538 <_vfprintf_r+0x10f0>
   10714:	08000713          	li	a4,128
   10718:	2eee82e3          	beq	t4,a4,111fc <_vfprintf_r+0xdb4>
   1071c:	417e09bb          	subw	s3,t3,s7
   10720:	3d3046e3          	bgtz	s3,112ec <_vfprintf_r+0xea4>
   10724:	10097713          	andi	a4,s2,256
   10728:	1c0710e3          	bnez	a4,110e8 <_vfprintf_r+0xca0>
   1072c:	10812703          	lw	a4,264(sp)
   10730:	017787b3          	add	a5,a5,s7
   10734:	01adb023          	sd	s10,0(s11)
   10738:	0017069b          	addiw	a3,a4,1
   1073c:	017db423          	sd	s7,8(s11)
   10740:	10f13823          	sd	a5,272(sp)
   10744:	10d12423          	sw	a3,264(sp)
   10748:	00700713          	li	a4,7
   1074c:	52d74263          	blt	a4,a3,10c70 <_vfprintf_r+0x828>
   10750:	010d8d93          	addi	s11,s11,16
   10754:	00497913          	andi	s2,s2,4
   10758:	00090663          	beqz	s2,10764 <_vfprintf_r+0x31c>
   1075c:	415a04bb          	subw	s1,s4,s5
   10760:	609044e3          	bgtz	s1,11568 <_vfprintf_r+0x1120>
   10764:	000a0713          	mv	a4,s4
   10768:	015a5463          	bge	s4,s5,10770 <_vfprintf_r+0x328>
   1076c:	000a8713          	mv	a4,s5
   10770:	00013683          	ld	a3,0(sp)
   10774:	00d7073b          	addw	a4,a4,a3
   10778:	00e13023          	sd	a4,0(sp)
   1077c:	420798e3          	bnez	a5,113ac <_vfprintf_r+0xf64>
   10780:	01013783          	ld	a5,16(sp)
   10784:	10012423          	sw	zero,264(sp)
   10788:	00078863          	beqz	a5,10798 <_vfprintf_r+0x350>
   1078c:	01013583          	ld	a1,16(sp)
   10790:	000c8513          	mv	a0,s9
   10794:	7a1020ef          	jal	ra,13734 <_free_r>
   10798:	18010d93          	addi	s11,sp,384
   1079c:	00040d13          	mv	s10,s0
   107a0:	000d4783          	lbu	a5,0(s10)
   107a4:	da079ce3          	bnez	a5,1055c <_vfprintf_r+0x114>
   107a8:	11013783          	ld	a5,272(sp)
   107ac:	00078463          	beqz	a5,107b4 <_vfprintf_r+0x36c>
   107b0:	2690106f          	j	12218 <_vfprintf_r+0x1dd0>
   107b4:	010c5783          	lhu	a5,16(s8)
   107b8:	0407f793          	andi	a5,a5,64
   107bc:	00078463          	beqz	a5,107c4 <_vfprintf_r+0x37c>
   107c0:	7e10106f          	j	127a0 <_vfprintf_r+0x2358>
   107c4:	26813083          	ld	ra,616(sp)
   107c8:	26013403          	ld	s0,608(sp)
   107cc:	00013503          	ld	a0,0(sp)
   107d0:	25813483          	ld	s1,600(sp)
   107d4:	25013903          	ld	s2,592(sp)
   107d8:	24813983          	ld	s3,584(sp)
   107dc:	24013a03          	ld	s4,576(sp)
   107e0:	23813a83          	ld	s5,568(sp)
   107e4:	23013b03          	ld	s6,560(sp)
   107e8:	22813b83          	ld	s7,552(sp)
   107ec:	22013c03          	ld	s8,544(sp)
   107f0:	21813c83          	ld	s9,536(sp)
   107f4:	21013d03          	ld	s10,528(sp)
   107f8:	20813d83          	ld	s11,520(sp)
   107fc:	27010113          	addi	sp,sp,624
   10800:	00008067          	ret
   10804:	01096913          	ori	s2,s2,16
   10808:	00044483          	lbu	s1,0(s0)
   1080c:	0009091b          	sext.w	s2,s2
   10810:	dd5ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10814:	000c0593          	mv	a1,s8
   10818:	000c8513          	mv	a0,s9
   1081c:	410020ef          	jal	ra,12c2c <__swsetup_r>
   10820:	00050463          	beqz	a0,10828 <_vfprintf_r+0x3e0>
   10824:	77d0106f          	j	127a0 <_vfprintf_r+0x2358>
   10828:	010c5783          	lhu	a5,16(s8)
   1082c:	00a00713          	li	a4,10
   10830:	01a7f793          	andi	a5,a5,26
   10834:	cee794e3          	bne	a5,a4,1051c <_vfprintf_r+0xd4>
   10838:	012c1783          	lh	a5,18(s8)
   1083c:	ce07c0e3          	bltz	a5,1051c <_vfprintf_r+0xd4>
   10840:	00813683          	ld	a3,8(sp)
   10844:	00098613          	mv	a2,s3
   10848:	000c0593          	mv	a1,s8
   1084c:	000c8513          	mv	a0,s9
   10850:	31c020ef          	jal	ra,12b6c <__sbprintf>
   10854:	00a13023          	sd	a0,0(sp)
   10858:	f6dff06f          	j	107c4 <_vfprintf_r+0x37c>
   1085c:	41a404bb          	subw	s1,s0,s10
   10860:	d0049ee3          	bnez	s1,1057c <_vfprintf_r+0x134>
   10864:	00044783          	lbu	a5,0(s0)
   10868:	d55ff06f          	j	105bc <_vfprintf_r+0x174>
   1086c:	10010613          	addi	a2,sp,256
   10870:	000c0593          	mv	a1,s8
   10874:	000c8513          	mv	a0,s9
   10878:	6b10a0ef          	jal	ra,1b728 <__sprint_r>
   1087c:	f2051ce3          	bnez	a0,107b4 <_vfprintf_r+0x36c>
   10880:	18010d93          	addi	s11,sp,384
   10884:	d29ff06f          	j	105ac <_vfprintf_r+0x164>
   10888:	00897793          	andi	a5,s2,8
   1088c:	000b8e13          	mv	t3,s7
   10890:	00078463          	beqz	a5,10898 <_vfprintf_r+0x450>
   10894:	0780106f          	j	1190c <_vfprintf_r+0x14c4>
   10898:	00813783          	ld	a5,8(sp)
   1089c:	01713823          	sd	s7,16(sp)
   108a0:	0007b507          	fld	fa0,0(a5)
   108a4:	00878793          	addi	a5,a5,8
   108a8:	00f13423          	sd	a5,8(sp)
   108ac:	5a1100ef          	jal	ra,2164c <__extenddftf2>
   108b0:	01013e03          	ld	t3,16(sp)
   108b4:	0ea13823          	sd	a0,240(sp)
   108b8:	0eb13c23          	sd	a1,248(sp)
   108bc:	0f010513          	addi	a0,sp,240
   108c0:	01c13823          	sd	t3,16(sp)
   108c4:	795050ef          	jal	ra,16858 <_ldcheck>
   108c8:	0ca12c23          	sw	a0,216(sp)
   108cc:	00200793          	li	a5,2
   108d0:	01013e03          	ld	t3,16(sp)
   108d4:	00f51463          	bne	a0,a5,108dc <_vfprintf_r+0x494>
   108d8:	4b80106f          	j	11d90 <_vfprintf_r+0x1948>
   108dc:	00100793          	li	a5,1
   108e0:	00f51463          	bne	a0,a5,108e8 <_vfprintf_r+0x4a0>
   108e4:	60c0106f          	j	11ef0 <_vfprintf_r+0x1aa8>
   108e8:	06100793          	li	a5,97
   108ec:	00f49463          	bne	s1,a5,108f4 <_vfprintf_r+0x4ac>
   108f0:	6f10106f          	j	127e0 <_vfprintf_r+0x2398>
   108f4:	04100793          	li	a5,65
   108f8:	00f49463          	bne	s1,a5,10900 <_vfprintf_r+0x4b8>
   108fc:	1690106f          	j	12264 <_vfprintf_r+0x1e1c>
   10900:	fdf4f713          	andi	a4,s1,-33
   10904:	fff00793          	li	a5,-1
   10908:	02e13423          	sd	a4,40(sp)
   1090c:	00fe1463          	bne	t3,a5,10914 <_vfprintf_r+0x4cc>
   10910:	7e10106f          	j	128f0 <_vfprintf_r+0x24a8>
   10914:	04700793          	li	a5,71
   10918:	00f71463          	bne	a4,a5,10920 <_vfprintf_r+0x4d8>
   1091c:	7dd0106f          	j	128f8 <_vfprintf_r+0x24b0>
   10920:	0f813a83          	ld	s5,248(sp)
   10924:	10096793          	ori	a5,s2,256
   10928:	03213823          	sd	s2,48(sp)
   1092c:	0f013b83          	ld	s7,240(sp)
   10930:	0007879b          	sext.w	a5,a5
   10934:	000ad463          	bgez	s5,1093c <_vfprintf_r+0x4f4>
   10938:	4650106f          	j	1259c <_vfprintf_r+0x2154>
   1093c:	06013023          	sd	zero,96(sp)
   10940:	00078913          	mv	s2,a5
   10944:	00013823          	sd	zero,16(sp)
   10948:	02813703          	ld	a4,40(sp)
   1094c:	04600793          	li	a5,70
   10950:	00f71463          	bne	a4,a5,10958 <_vfprintf_r+0x510>
   10954:	4990106f          	j	125ec <_vfprintf_r+0x21a4>
   10958:	04500793          	li	a5,69
   1095c:	00f71463          	bne	a4,a5,10964 <_vfprintf_r+0x51c>
   10960:	6910106f          	j	127f0 <_vfprintf_r+0x23a8>
   10964:	000e0713          	mv	a4,t3
   10968:	0d810793          	addi	a5,sp,216
   1096c:	0e810893          	addi	a7,sp,232
   10970:	0dc10813          	addi	a6,sp,220
   10974:	00200693          	li	a3,2
   10978:	000b8593          	mv	a1,s7
   1097c:	000a8613          	mv	a2,s5
   10980:	000c8513          	mv	a0,s9
   10984:	01c13c23          	sd	t3,24(sp)
   10988:	3d1040ef          	jal	ra,15558 <_ldtoa_r>
   1098c:	02813703          	ld	a4,40(sp)
   10990:	04700793          	li	a5,71
   10994:	01813e03          	ld	t3,24(sp)
   10998:	00050d13          	mv	s10,a0
   1099c:	00f70463          	beq	a4,a5,109a4 <_vfprintf_r+0x55c>
   109a0:	19c0206f          	j	12b3c <_vfprintf_r+0x26f4>
   109a4:	03013783          	ld	a5,48(sp)
   109a8:	0017f793          	andi	a5,a5,1
   109ac:	00078463          	beqz	a5,109b4 <_vfprintf_r+0x56c>
   109b0:	6210106f          	j	127d0 <_vfprintf_r+0x2388>
   109b4:	0e813783          	ld	a5,232(sp)
   109b8:	41a787bb          	subw	a5,a5,s10
   109bc:	02f13023          	sd	a5,32(sp)
   109c0:	0d812703          	lw	a4,216(sp)
   109c4:	04700793          	li	a5,71
   109c8:	00e13c23          	sd	a4,24(sp)
   109cc:	02813703          	ld	a4,40(sp)
   109d0:	00f71463          	bne	a4,a5,109d8 <_vfprintf_r+0x590>
   109d4:	33d0106f          	j	12510 <_vfprintf_r+0x20c8>
   109d8:	02813703          	ld	a4,40(sp)
   109dc:	04600793          	li	a5,70
   109e0:	00f71463          	bne	a4,a5,109e8 <_vfprintf_r+0x5a0>
   109e4:	5990106f          	j	1277c <_vfprintf_r+0x2334>
   109e8:	01813783          	ld	a5,24(sp)
   109ec:	02813603          	ld	a2,40(sp)
   109f0:	04100713          	li	a4,65
   109f4:	fff78a9b          	addiw	s5,a5,-1
   109f8:	0d512c23          	sw	s5,216(sp)
   109fc:	0ff4f793          	andi	a5,s1,255
   10a00:	00000693          	li	a3,0
   10a04:	00e61863          	bne	a2,a4,10a14 <_vfprintf_r+0x5cc>
   10a08:	00f7879b          	addiw	a5,a5,15
   10a0c:	0ff7f793          	andi	a5,a5,255
   10a10:	00100693          	li	a3,1
   10a14:	0ef10023          	sb	a5,224(sp)
   10a18:	02b00793          	li	a5,43
   10a1c:	000ada63          	bgez	s5,10a30 <_vfprintf_r+0x5e8>
   10a20:	01813703          	ld	a4,24(sp)
   10a24:	00100793          	li	a5,1
   10a28:	40e78abb          	subw	s5,a5,a4
   10a2c:	02d00793          	li	a5,45
   10a30:	0ef100a3          	sb	a5,225(sp)
   10a34:	00900793          	li	a5,9
   10a38:	0157c463          	blt	a5,s5,10a40 <_vfprintf_r+0x5f8>
   10a3c:	70d0106f          	j	12948 <_vfprintf_r+0x2500>
   10a40:	0ef10913          	addi	s2,sp,239
   10a44:	00090b93          	mv	s7,s2
   10a48:	00813c23          	sd	s0,24(sp)
   10a4c:	00a00593          	li	a1,10
   10a50:	000a8513          	mv	a0,s5
   10a54:	0fc110ef          	jal	ra,21b50 <__moddi3>
   10a58:	0305079b          	addiw	a5,a0,48
   10a5c:	fefb8fa3          	sb	a5,-1(s7)
   10a60:	000a8513          	mv	a0,s5
   10a64:	00a00593          	li	a1,10
   10a68:	064110ef          	jal	ra,21acc <__divdi3>
   10a6c:	000a8413          	mv	s0,s5
   10a70:	06300793          	li	a5,99
   10a74:	000b8993          	mv	s3,s7
   10a78:	00050a9b          	sext.w	s5,a0
   10a7c:	fffb8b93          	addi	s7,s7,-1
   10a80:	fc87c6e3          	blt	a5,s0,10a4c <_vfprintf_r+0x604>
   10a84:	030a879b          	addiw	a5,s5,48
   10a88:	0ff7f693          	andi	a3,a5,255
   10a8c:	fedb8fa3          	sb	a3,-1(s7)
   10a90:	ffe98793          	addi	a5,s3,-2
   10a94:	01813403          	ld	s0,24(sp)
   10a98:	0127e463          	bltu	a5,s2,10aa0 <_vfprintf_r+0x658>
   10a9c:	0880206f          	j	12b24 <_vfprintf_r+0x26dc>
   10aa0:	0e210713          	addi	a4,sp,226
   10aa4:	0080006f          	j	10aac <_vfprintf_r+0x664>
   10aa8:	0007c683          	lbu	a3,0(a5)
   10aac:	00d70023          	sb	a3,0(a4)
   10ab0:	00178793          	addi	a5,a5,1
   10ab4:	00170713          	addi	a4,a4,1
   10ab8:	ff2798e3          	bne	a5,s2,10aa8 <_vfprintf_r+0x660>
   10abc:	0f110793          	addi	a5,sp,241
   10ac0:	0e210713          	addi	a4,sp,226
   10ac4:	413787b3          	sub	a5,a5,s3
   10ac8:	00f707b3          	add	a5,a4,a5
   10acc:	0e010713          	addi	a4,sp,224
   10ad0:	40e787bb          	subw	a5,a5,a4
   10ad4:	04f13823          	sd	a5,80(sp)
   10ad8:	05013783          	ld	a5,80(sp)
   10adc:	02013683          	ld	a3,32(sp)
   10ae0:	00100713          	li	a4,1
   10ae4:	00f68bbb          	addw	s7,a3,a5
   10ae8:	000b8793          	mv	a5,s7
   10aec:	00d74463          	blt	a4,a3,10af4 <_vfprintf_r+0x6ac>
   10af0:	7b10106f          	j	12aa0 <_vfprintf_r+0x2658>
   10af4:	03813703          	ld	a4,56(sp)
   10af8:	00e78bbb          	addw	s7,a5,a4
   10afc:	03013783          	ld	a5,48(sp)
   10b00:	fffbca93          	not	s5,s7
   10b04:	43fada93          	srai	s5,s5,0x3f
   10b08:	bff7f913          	andi	s2,a5,-1025
   10b0c:	0009091b          	sext.w	s2,s2
   10b10:	015bfab3          	and	s5,s7,s5
   10b14:	10096913          	ori	s2,s2,256
   10b18:	000a8a9b          	sext.w	s5,s5
   10b1c:	02013823          	sd	zero,48(sp)
   10b20:	02013423          	sd	zero,40(sp)
   10b24:	00013c23          	sd	zero,24(sp)
   10b28:	06013783          	ld	a5,96(sp)
   10b2c:	00079463          	bnez	a5,10b34 <_vfprintf_r+0x6ec>
   10b30:	2590106f          	j	12588 <_vfprintf_r+0x2140>
   10b34:	02d00793          	li	a5,45
   10b38:	0cf107a3          	sb	a5,207(sp)
   10b3c:	00000e13          	li	t3,0
   10b40:	001a8a9b          	addiw	s5,s5,1
   10b44:	b3dff06f          	j	10680 <_vfprintf_r+0x238>
   10b48:	10010613          	addi	a2,sp,256
   10b4c:	000c0593          	mv	a1,s8
   10b50:	000c8513          	mv	a0,s9
   10b54:	09c13023          	sd	t3,128(sp)
   10b58:	07d13c23          	sd	t4,120(sp)
   10b5c:	07e13023          	sd	t5,96(sp)
   10b60:	3c90a0ef          	jal	ra,1b728 <__sprint_r>
   10b64:	04051ee3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   10b68:	11013783          	ld	a5,272(sp)
   10b6c:	08013e03          	ld	t3,128(sp)
   10b70:	07813e83          	ld	t4,120(sp)
   10b74:	06013f03          	ld	t5,96(sp)
   10b78:	18010d93          	addi	s11,sp,384
   10b7c:	b61ff06f          	j	106dc <_vfprintf_r+0x294>
   10b80:	10812683          	lw	a3,264(sp)
   10b84:	02013583          	ld	a1,32(sp)
   10b88:	00178993          	addi	s3,a5,1
   10b8c:	00100613          	li	a2,1
   10b90:	0016879b          	addiw	a5,a3,1
   10b94:	01adb023          	sd	s10,0(s11)
   10b98:	00078713          	mv	a4,a5
   10b9c:	010d8493          	addi	s1,s11,16
   10ba0:	3eb65ae3          	bge	a2,a1,11794 <_vfprintf_r+0x134c>
   10ba4:	00100693          	li	a3,1
   10ba8:	10e12423          	sw	a4,264(sp)
   10bac:	00ddb423          	sd	a3,8(s11)
   10bb0:	11313823          	sd	s3,272(sp)
   10bb4:	00700713          	li	a4,7
   10bb8:	76f742e3          	blt	a4,a5,11b1c <_vfprintf_r+0x16d4>
   10bbc:	03813703          	ld	a4,56(sp)
   10bc0:	04013683          	ld	a3,64(sp)
   10bc4:	00178b9b          	addiw	s7,a5,1
   10bc8:	00e989b3          	add	s3,s3,a4
   10bcc:	00d4b023          	sd	a3,0(s1)
   10bd0:	00e4b423          	sd	a4,8(s1)
   10bd4:	11313823          	sd	s3,272(sp)
   10bd8:	11712423          	sw	s7,264(sp)
   10bdc:	00700793          	li	a5,7
   10be0:	01048493          	addi	s1,s1,16
   10be4:	7577cee3          	blt	a5,s7,11b40 <_vfprintf_r+0x16f8>
   10be8:	0f013503          	ld	a0,240(sp)
   10bec:	0f813583          	ld	a1,248(sp)
   10bf0:	001b871b          	addiw	a4,s7,1
   10bf4:	00000693          	li	a3,0
   10bf8:	00000613          	li	a2,0
   10bfc:	00e12c23          	sw	a4,24(sp)
   10c00:	2440f0ef          	jal	ra,1fe44 <__eqtf2>
   10c04:	01812703          	lw	a4,24(sp)
   10c08:	02013783          	ld	a5,32(sp)
   10c0c:	01048d93          	addi	s11,s1,16
   10c10:	0007069b          	sext.w	a3,a4
   10c14:	fff7879b          	addiw	a5,a5,-1
   10c18:	3a0502e3          	beqz	a0,117bc <_vfprintf_r+0x1374>
   10c1c:	00f989b3          	add	s3,s3,a5
   10c20:	001d0813          	addi	a6,s10,1
   10c24:	00f4b423          	sd	a5,8(s1)
   10c28:	0104b023          	sd	a6,0(s1)
   10c2c:	11313823          	sd	s3,272(sp)
   10c30:	10e12423          	sw	a4,264(sp)
   10c34:	00700793          	li	a5,7
   10c38:	54d7cae3          	blt	a5,a3,1198c <_vfprintf_r+0x1544>
   10c3c:	02048793          	addi	a5,s1,32
   10c40:	002b869b          	addiw	a3,s7,2
   10c44:	000d8493          	mv	s1,s11
   10c48:	00078d93          	mv	s11,a5
   10c4c:	05013603          	ld	a2,80(sp)
   10c50:	0e010713          	addi	a4,sp,224
   10c54:	00e4b023          	sd	a4,0(s1)
   10c58:	013607b3          	add	a5,a2,s3
   10c5c:	00c4b423          	sd	a2,8(s1)
   10c60:	10f13823          	sd	a5,272(sp)
   10c64:	10d12423          	sw	a3,264(sp)
   10c68:	00700713          	li	a4,7
   10c6c:	aed754e3          	bge	a4,a3,10754 <_vfprintf_r+0x30c>
   10c70:	10010613          	addi	a2,sp,256
   10c74:	000c0593          	mv	a1,s8
   10c78:	000c8513          	mv	a0,s9
   10c7c:	2ad0a0ef          	jal	ra,1b728 <__sprint_r>
   10c80:	74051063          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   10c84:	11013783          	ld	a5,272(sp)
   10c88:	18010d93          	addi	s11,sp,384
   10c8c:	ac9ff06f          	j	10754 <_vfprintf_r+0x30c>
   10c90:	000c8513          	mv	a0,s9
   10c94:	0c9020ef          	jal	ra,1355c <__sinit>
   10c98:	825ff06f          	j	104bc <_vfprintf_r+0x74>
   10c9c:	00813703          	ld	a4,8(sp)
   10ca0:	0c0107a3          	sb	zero,207(sp)
   10ca4:	00100a93          	li	s5,1
   10ca8:	00072783          	lw	a5,0(a4)
   10cac:	00870713          	addi	a4,a4,8
   10cb0:	00e13423          	sd	a4,8(sp)
   10cb4:	10f10c23          	sb	a5,280(sp)
   10cb8:	00100b93          	li	s7,1
   10cbc:	11810d13          	addi	s10,sp,280
   10cc0:	9adff06f          	j	1066c <_vfprintf_r+0x224>
   10cc4:	00813783          	ld	a5,8(sp)
   10cc8:	0c0107a3          	sb	zero,207(sp)
   10ccc:	000b8e13          	mv	t3,s7
   10cd0:	0007bd03          	ld	s10,0(a5)
   10cd4:	00878993          	addi	s3,a5,8
   10cd8:	5a0d04e3          	beqz	s10,11a80 <_vfprintf_r+0x1638>
   10cdc:	fff00793          	li	a5,-1
   10ce0:	00fb9463          	bne	s7,a5,10ce8 <_vfprintf_r+0x8a0>
   10ce4:	1ac0106f          	j	11e90 <_vfprintf_r+0x1a48>
   10ce8:	000b8613          	mv	a2,s7
   10cec:	00000593          	li	a1,0
   10cf0:	000d0513          	mv	a0,s10
   10cf4:	01713423          	sd	s7,8(sp)
   10cf8:	7c4060ef          	jal	ra,174bc <memchr>
   10cfc:	00a13823          	sd	a0,16(sp)
   10d00:	00813e03          	ld	t3,8(sp)
   10d04:	00051463          	bnez	a0,10d0c <_vfprintf_r+0x8c4>
   10d08:	1e10106f          	j	126e8 <_vfprintf_r+0x22a0>
   10d0c:	01013783          	ld	a5,16(sp)
   10d10:	41a78bbb          	subw	s7,a5,s10
   10d14:	0cf14783          	lbu	a5,207(sp)
   10d18:	fffbca93          	not	s5,s7
   10d1c:	43fada93          	srai	s5,s5,0x3f
   10d20:	01313423          	sd	s3,8(sp)
   10d24:	00013823          	sd	zero,16(sp)
   10d28:	02013823          	sd	zero,48(sp)
   10d2c:	02013423          	sd	zero,40(sp)
   10d30:	00013c23          	sd	zero,24(sp)
   10d34:	017afab3          	and	s5,s5,s7
   10d38:	00000e13          	li	t3,0
   10d3c:	940782e3          	beqz	a5,10680 <_vfprintf_r+0x238>
   10d40:	001a8a9b          	addiw	s5,s5,1
   10d44:	93dff06f          	j	10680 <_vfprintf_r+0x238>
   10d48:	01096913          	ori	s2,s2,16
   10d4c:	000b8e13          	mv	t3,s7
   10d50:	0009091b          	sext.w	s2,s2
   10d54:	00813703          	ld	a4,8(sp)
   10d58:	02097793          	andi	a5,s2,32
   10d5c:	00870693          	addi	a3,a4,8
   10d60:	2e078ce3          	beqz	a5,11858 <_vfprintf_r+0x1410>
   10d64:	00073983          	ld	s3,0(a4)
   10d68:	bff97713          	andi	a4,s2,-1025
   10d6c:	00070a9b          	sext.w	s5,a4
   10d70:	00d13423          	sd	a3,8(sp)
   10d74:	00000793          	li	a5,0
   10d78:	0c0107a3          	sb	zero,207(sp)
   10d7c:	fff00693          	li	a3,-1
   10d80:	2cde0063          	beq	t3,a3,11040 <_vfprintf_r+0xbf8>
   10d84:	f7faf913          	andi	s2,s5,-129
   10d88:	0009091b          	sext.w	s2,s2
   10d8c:	2a099863          	bnez	s3,1103c <_vfprintf_r+0xbf4>
   10d90:	300e1663          	bnez	t3,1109c <_vfprintf_r+0xc54>
   10d94:	28079c63          	bnez	a5,1102c <_vfprintf_r+0xbe4>
   10d98:	001afb93          	andi	s7,s5,1
   10d9c:	17c10d13          	addi	s10,sp,380
   10da0:	320b98e3          	bnez	s7,118d0 <_vfprintf_r+0x1488>
   10da4:	0cf14783          	lbu	a5,207(sp)
   10da8:	000b8a9b          	sext.w	s5,s7
   10dac:	01cbd463          	bge	s7,t3,10db4 <_vfprintf_r+0x96c>
   10db0:	000e0a9b          	sext.w	s5,t3
   10db4:	00013823          	sd	zero,16(sp)
   10db8:	02013823          	sd	zero,48(sp)
   10dbc:	02013423          	sd	zero,40(sp)
   10dc0:	00013c23          	sd	zero,24(sp)
   10dc4:	f6079ee3          	bnez	a5,10d40 <_vfprintf_r+0x8f8>
   10dc8:	8b9ff06f          	j	10680 <_vfprintf_r+0x238>
   10dcc:	00044483          	lbu	s1,0(s0)
   10dd0:	06800793          	li	a5,104
   10dd4:	44f484e3          	beq	s1,a5,11a1c <_vfprintf_r+0x15d4>
   10dd8:	04096913          	ori	s2,s2,64
   10ddc:	0009091b          	sext.w	s2,s2
   10de0:	805ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10de4:	00813683          	ld	a3,8(sp)
   10de8:	02097793          	andi	a5,s2,32
   10dec:	0006b703          	ld	a4,0(a3) # 2000 <register_fini-0xe0b0>
   10df0:	00868693          	addi	a3,a3,8
   10df4:	00d13423          	sd	a3,8(sp)
   10df8:	2e0794e3          	bnez	a5,118e0 <_vfprintf_r+0x1498>
   10dfc:	01097793          	andi	a5,s2,16
   10e00:	2e0790e3          	bnez	a5,118e0 <_vfprintf_r+0x1498>
   10e04:	04097793          	andi	a5,s2,64
   10e08:	00078463          	beqz	a5,10e10 <_vfprintf_r+0x9c8>
   10e0c:	3cc0106f          	j	121d8 <_vfprintf_r+0x1d90>
   10e10:	20097913          	andi	s2,s2,512
   10e14:	00013783          	ld	a5,0(sp)
   10e18:	00091463          	bnez	s2,10e20 <_vfprintf_r+0x9d8>
   10e1c:	2c90106f          	j	128e4 <_vfprintf_r+0x249c>
   10e20:	00f70023          	sb	a5,0(a4)
   10e24:	00040d13          	mv	s10,s0
   10e28:	979ff06f          	j	107a0 <_vfprintf_r+0x358>
   10e2c:	00044483          	lbu	s1,0(s0)
   10e30:	06c00793          	li	a5,108
   10e34:	40f48ee3          	beq	s1,a5,11a50 <_vfprintf_r+0x1608>
   10e38:	01096913          	ori	s2,s2,16
   10e3c:	0009091b          	sext.w	s2,s2
   10e40:	fa4ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10e44:	02096913          	ori	s2,s2,32
   10e48:	00044483          	lbu	s1,0(s0)
   10e4c:	0009091b          	sext.w	s2,s2
   10e50:	f94ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10e54:	00813683          	ld	a3,8(sp)
   10e58:	ffff87b7          	lui	a5,0xffff8
   10e5c:	8307c793          	xori	a5,a5,-2000
   10e60:	0cf11823          	sh	a5,208(sp)
   10e64:	00868793          	addi	a5,a3,8
   10e68:	00296713          	ori	a4,s2,2
   10e6c:	00f13423          	sd	a5,8(sp)
   10e70:	00011797          	auipc	a5,0x11
   10e74:	db878793          	addi	a5,a5,-584 # 21c28 <__clzdi2+0x9c>
   10e78:	04f13423          	sd	a5,72(sp)
   10e7c:	0006b983          	ld	s3,0(a3)
   10e80:	000b8e13          	mv	t3,s7
   10e84:	00070a9b          	sext.w	s5,a4
   10e88:	00200793          	li	a5,2
   10e8c:	07800493          	li	s1,120
   10e90:	ee9ff06f          	j	10d78 <_vfprintf_r+0x930>
   10e94:	01096713          	ori	a4,s2,16
   10e98:	000b8e13          	mv	t3,s7
   10e9c:	00070a9b          	sext.w	s5,a4
   10ea0:	00813703          	ld	a4,8(sp)
   10ea4:	020af793          	andi	a5,s5,32
   10ea8:	00870693          	addi	a3,a4,8
   10eac:	180780e3          	beqz	a5,1182c <_vfprintf_r+0x13e4>
   10eb0:	00073983          	ld	s3,0(a4)
   10eb4:	00100793          	li	a5,1
   10eb8:	00d13423          	sd	a3,8(sp)
   10ebc:	ebdff06f          	j	10d78 <_vfprintf_r+0x930>
   10ec0:	00896913          	ori	s2,s2,8
   10ec4:	00044483          	lbu	s1,0(s0)
   10ec8:	0009091b          	sext.w	s2,s2
   10ecc:	f18ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10ed0:	08096913          	ori	s2,s2,128
   10ed4:	00044483          	lbu	s1,0(s0)
   10ed8:	0009091b          	sext.w	s2,s2
   10edc:	f08ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10ee0:	00044483          	lbu	s1,0(s0)
   10ee4:	00140793          	addi	a5,s0,1
   10ee8:	01549463          	bne	s1,s5,10ef0 <_vfprintf_r+0xaa8>
   10eec:	40d0106f          	j	12af8 <_vfprintf_r+0x26b0>
   10ef0:	fd04871b          	addiw	a4,s1,-48
   10ef4:	00078413          	mv	s0,a5
   10ef8:	00000b93          	li	s7,0
   10efc:	eee9ea63          	bltu	s3,a4,105f0 <_vfprintf_r+0x1a8>
   10f00:	00044603          	lbu	a2,0(s0)
   10f04:	002b979b          	slliw	a5,s7,0x2
   10f08:	017787bb          	addw	a5,a5,s7
   10f0c:	0017979b          	slliw	a5,a5,0x1
   10f10:	00e78bbb          	addw	s7,a5,a4
   10f14:	fd06071b          	addiw	a4,a2,-48
   10f18:	00140413          	addi	s0,s0,1
   10f1c:	fee9f2e3          	bgeu	s3,a4,10f00 <_vfprintf_r+0xab8>
   10f20:	00060493          	mv	s1,a2
   10f24:	eccff06f          	j	105f0 <_vfprintf_r+0x1a8>
   10f28:	00044483          	lbu	s1,0(s0)
   10f2c:	00496913          	ori	s2,s2,4
   10f30:	0009091b          	sext.w	s2,s2
   10f34:	eb0ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10f38:	02b00793          	li	a5,43
   10f3c:	00044483          	lbu	s1,0(s0)
   10f40:	0cf107a3          	sb	a5,207(sp)
   10f44:	ea0ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10f48:	00813783          	ld	a5,8(sp)
   10f4c:	00044483          	lbu	s1,0(s0)
   10f50:	0007aa03          	lw	s4,0(a5)
   10f54:	00878793          	addi	a5,a5,8
   10f58:	00f13423          	sd	a5,8(sp)
   10f5c:	e80a5463          	bgez	s4,105e4 <_vfprintf_r+0x19c>
   10f60:	41400a3b          	negw	s4,s4
   10f64:	fc9ff06f          	j	10f2c <_vfprintf_r+0xae4>
   10f68:	000c8513          	mv	a0,s9
   10f6c:	15d050ef          	jal	ra,168c8 <_localeconv_r>
   10f70:	00853783          	ld	a5,8(a0)
   10f74:	00078513          	mv	a0,a5
   10f78:	06f13823          	sd	a5,112(sp)
   10f7c:	689070ef          	jal	ra,18e04 <strlen>
   10f80:	00050793          	mv	a5,a0
   10f84:	000c8513          	mv	a0,s9
   10f88:	00078493          	mv	s1,a5
   10f8c:	06f13423          	sd	a5,104(sp)
   10f90:	139050ef          	jal	ra,168c8 <_localeconv_r>
   10f94:	01053783          	ld	a5,16(a0)
   10f98:	04f13c23          	sd	a5,88(sp)
   10f9c:	14048ae3          	beqz	s1,118f0 <_vfprintf_r+0x14a8>
   10fa0:	00044483          	lbu	s1,0(s0)
   10fa4:	e4078063          	beqz	a5,105e4 <_vfprintf_r+0x19c>
   10fa8:	0007c783          	lbu	a5,0(a5)
   10fac:	e2078c63          	beqz	a5,105e4 <_vfprintf_r+0x19c>
   10fb0:	40096913          	ori	s2,s2,1024
   10fb4:	0009091b          	sext.w	s2,s2
   10fb8:	e2cff06f          	j	105e4 <_vfprintf_r+0x19c>
   10fbc:	00196913          	ori	s2,s2,1
   10fc0:	00044483          	lbu	s1,0(s0)
   10fc4:	0009091b          	sext.w	s2,s2
   10fc8:	e1cff06f          	j	105e4 <_vfprintf_r+0x19c>
   10fcc:	0cf14783          	lbu	a5,207(sp)
   10fd0:	00044483          	lbu	s1,0(s0)
   10fd4:	e0079863          	bnez	a5,105e4 <_vfprintf_r+0x19c>
   10fd8:	02000793          	li	a5,32
   10fdc:	0cf107a3          	sb	a5,207(sp)
   10fe0:	e04ff06f          	j	105e4 <_vfprintf_r+0x19c>
   10fe4:	01096913          	ori	s2,s2,16
   10fe8:	000b8e13          	mv	t3,s7
   10fec:	0009091b          	sext.w	s2,s2
   10ff0:	00813703          	ld	a4,8(sp)
   10ff4:	02097793          	andi	a5,s2,32
   10ff8:	00870693          	addi	a3,a4,8
   10ffc:	080780e3          	beqz	a5,1187c <_vfprintf_r+0x1434>
   11000:	00073783          	ld	a5,0(a4)
   11004:	00078993          	mv	s3,a5
   11008:	0807cae3          	bltz	a5,1189c <_vfprintf_r+0x1454>
   1100c:	fff00793          	li	a5,-1
   11010:	50fe0063          	beq	t3,a5,11510 <_vfprintf_r+0x10c8>
   11014:	f7f97713          	andi	a4,s2,-129
   11018:	00d13423          	sd	a3,8(sp)
   1101c:	00070a9b          	sext.w	s5,a4
   11020:	4e099c63          	bnez	s3,11518 <_vfprintf_r+0x10d0>
   11024:	4e0e1e63          	bnez	t3,11520 <_vfprintf_r+0x10d8>
   11028:	000a8913          	mv	s2,s5
   1102c:	00000e13          	li	t3,0
   11030:	00000b93          	li	s7,0
   11034:	17c10d13          	addi	s10,sp,380
   11038:	d6dff06f          	j	10da4 <_vfprintf_r+0x95c>
   1103c:	00090a93          	mv	s5,s2
   11040:	00100693          	li	a3,1
   11044:	4cd78a63          	beq	a5,a3,11518 <_vfprintf_r+0x10d0>
   11048:	00200693          	li	a3,2
   1104c:	06d78463          	beq	a5,a3,110b4 <_vfprintf_r+0xc6c>
   11050:	17c10b93          	addi	s7,sp,380
   11054:	000b8d13          	mv	s10,s7
   11058:	0079f793          	andi	a5,s3,7
   1105c:	03078793          	addi	a5,a5,48
   11060:	fefd0fa3          	sb	a5,-1(s10)
   11064:	0039d993          	srli	s3,s3,0x3
   11068:	000d0693          	mv	a3,s10
   1106c:	fffd0d13          	addi	s10,s10,-1
   11070:	fe0994e3          	bnez	s3,11058 <_vfprintf_r+0xc10>
   11074:	001af613          	andi	a2,s5,1
   11078:	06060263          	beqz	a2,110dc <_vfprintf_r+0xc94>
   1107c:	03000613          	li	a2,48
   11080:	04c78e63          	beq	a5,a2,110dc <_vfprintf_r+0xc94>
   11084:	ffe68693          	addi	a3,a3,-2
   11088:	fecd0fa3          	sb	a2,-1(s10)
   1108c:	40db8bbb          	subw	s7,s7,a3
   11090:	000a8913          	mv	s2,s5
   11094:	00068d13          	mv	s10,a3
   11098:	d0dff06f          	j	10da4 <_vfprintf_r+0x95c>
   1109c:	00100713          	li	a4,1
   110a0:	00e79463          	bne	a5,a4,110a8 <_vfprintf_r+0xc60>
   110a4:	7340106f          	j	127d8 <_vfprintf_r+0x2390>
   110a8:	00200713          	li	a4,2
   110ac:	00090a93          	mv	s5,s2
   110b0:	fae790e3          	bne	a5,a4,11050 <_vfprintf_r+0xc08>
   110b4:	04813703          	ld	a4,72(sp)
   110b8:	17c10b93          	addi	s7,sp,380
   110bc:	000b8d13          	mv	s10,s7
   110c0:	00f9f793          	andi	a5,s3,15
   110c4:	00f707b3          	add	a5,a4,a5
   110c8:	0007c783          	lbu	a5,0(a5)
   110cc:	0049d993          	srli	s3,s3,0x4
   110d0:	fffd0d13          	addi	s10,s10,-1
   110d4:	00fd0023          	sb	a5,0(s10)
   110d8:	fe0994e3          	bnez	s3,110c0 <_vfprintf_r+0xc78>
   110dc:	41ab8bbb          	subw	s7,s7,s10
   110e0:	000a8913          	mv	s2,s5
   110e4:	cc1ff06f          	j	10da4 <_vfprintf_r+0x95c>
   110e8:	06500713          	li	a4,101
   110ec:	a8975ae3          	bge	a4,s1,10b80 <_vfprintf_r+0x738>
   110f0:	0f013503          	ld	a0,240(sp)
   110f4:	0f813583          	ld	a1,248(sp)
   110f8:	00000613          	li	a2,0
   110fc:	00000693          	li	a3,0
   11100:	06f13023          	sd	a5,96(sp)
   11104:	5410e0ef          	jal	ra,1fe44 <__eqtf2>
   11108:	06013783          	ld	a5,96(sp)
   1110c:	50051063          	bnez	a0,1160c <_vfprintf_r+0x11c4>
   11110:	10812703          	lw	a4,264(sp)
   11114:	00011697          	auipc	a3,0x11
   11118:	b3468693          	addi	a3,a3,-1228 # 21c48 <__clzdi2+0xbc>
   1111c:	00ddb023          	sd	a3,0(s11)
   11120:	0017071b          	addiw	a4,a4,1
   11124:	00100693          	li	a3,1
   11128:	00178793          	addi	a5,a5,1
   1112c:	00ddb423          	sd	a3,8(s11)
   11130:	10e12423          	sw	a4,264(sp)
   11134:	0007069b          	sext.w	a3,a4
   11138:	10f13823          	sd	a5,272(sp)
   1113c:	00700713          	li	a4,7
   11140:	010d8d93          	addi	s11,s11,16
   11144:	3ed748e3          	blt	a4,a3,11d34 <_vfprintf_r+0x18ec>
   11148:	0d812703          	lw	a4,216(sp)
   1114c:	02013683          	ld	a3,32(sp)
   11150:	76d75463          	bge	a4,a3,118b8 <_vfprintf_r+0x1470>
   11154:	04013703          	ld	a4,64(sp)
   11158:	03813683          	ld	a3,56(sp)
   1115c:	010d8d93          	addi	s11,s11,16
   11160:	feedb823          	sd	a4,-16(s11)
   11164:	10812703          	lw	a4,264(sp)
   11168:	00d787b3          	add	a5,a5,a3
   1116c:	feddbc23          	sd	a3,-8(s11)
   11170:	0017071b          	addiw	a4,a4,1
   11174:	0007069b          	sext.w	a3,a4
   11178:	10e12423          	sw	a4,264(sp)
   1117c:	10f13823          	sd	a5,272(sp)
   11180:	00700713          	li	a4,7
   11184:	0ad746e3          	blt	a4,a3,11a30 <_vfprintf_r+0x15e8>
   11188:	02013703          	ld	a4,32(sp)
   1118c:	fff7049b          	addiw	s1,a4,-1
   11190:	dc905263          	blez	s1,10754 <_vfprintf_r+0x30c>
   11194:	10812703          	lw	a4,264(sp)
   11198:	3a9b5ee3          	bge	s6,s1,11d54 <_vfprintf_r+0x190c>
   1119c:	00700993          	li	s3,7
   111a0:	00c0006f          	j	111ac <_vfprintf_r+0xd64>
   111a4:	ff04849b          	addiw	s1,s1,-16
   111a8:	3a9b56e3          	bge	s6,s1,11d54 <_vfprintf_r+0x190c>
   111ac:	0017069b          	addiw	a3,a4,1
   111b0:	01078793          	addi	a5,a5,16
   111b4:	00011717          	auipc	a4,0x11
   111b8:	c1c70713          	addi	a4,a4,-996 # 21dd0 <zeroes.0>
   111bc:	00edb023          	sd	a4,0(s11)
   111c0:	016db423          	sd	s6,8(s11)
   111c4:	10f13823          	sd	a5,272(sp)
   111c8:	0006871b          	sext.w	a4,a3
   111cc:	10d12423          	sw	a3,264(sp)
   111d0:	010d8d93          	addi	s11,s11,16
   111d4:	fce9d8e3          	bge	s3,a4,111a4 <_vfprintf_r+0xd5c>
   111d8:	10010613          	addi	a2,sp,256
   111dc:	000c0593          	mv	a1,s8
   111e0:	000c8513          	mv	a0,s9
   111e4:	5440a0ef          	jal	ra,1b728 <__sprint_r>
   111e8:	1c051c63          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   111ec:	11013783          	ld	a5,272(sp)
   111f0:	10812703          	lw	a4,264(sp)
   111f4:	18010d93          	addi	s11,sp,384
   111f8:	fadff06f          	j	111a4 <_vfprintf_r+0xd5c>
   111fc:	415a09bb          	subw	s3,s4,s5
   11200:	d1305e63          	blez	s3,1071c <_vfprintf_r+0x2d4>
   11204:	10812703          	lw	a4,264(sp)
   11208:	093b5663          	bge	s6,s3,11294 <_vfprintf_r+0xe4c>
   1120c:	06813023          	sd	s0,96(sp)
   11210:	00700893          	li	a7,7
   11214:	000c0413          	mv	s0,s8
   11218:	00098c13          	mv	s8,s3
   1121c:	000e0993          	mv	s3,t3
   11220:	00c0006f          	j	1122c <_vfprintf_r+0xde4>
   11224:	ff0c0c1b          	addiw	s8,s8,-16
   11228:	058b5e63          	bge	s6,s8,11284 <_vfprintf_r+0xe3c>
   1122c:	0017069b          	addiw	a3,a4,1
   11230:	01078793          	addi	a5,a5,16
   11234:	00011717          	auipc	a4,0x11
   11238:	b9c70713          	addi	a4,a4,-1124 # 21dd0 <zeroes.0>
   1123c:	00edb023          	sd	a4,0(s11)
   11240:	016db423          	sd	s6,8(s11)
   11244:	10f13823          	sd	a5,272(sp)
   11248:	0006871b          	sext.w	a4,a3
   1124c:	10d12423          	sw	a3,264(sp)
   11250:	010d8d93          	addi	s11,s11,16
   11254:	fce8d8e3          	bge	a7,a4,11224 <_vfprintf_r+0xddc>
   11258:	10010613          	addi	a2,sp,256
   1125c:	00040593          	mv	a1,s0
   11260:	000c8513          	mv	a0,s9
   11264:	4c40a0ef          	jal	ra,1b728 <__sprint_r>
   11268:	320510e3          	bnez	a0,11d88 <_vfprintf_r+0x1940>
   1126c:	ff0c0c1b          	addiw	s8,s8,-16
   11270:	11013783          	ld	a5,272(sp)
   11274:	10812703          	lw	a4,264(sp)
   11278:	18010d93          	addi	s11,sp,384
   1127c:	00700893          	li	a7,7
   11280:	fb8b46e3          	blt	s6,s8,1122c <_vfprintf_r+0xde4>
   11284:	00098e13          	mv	t3,s3
   11288:	000c0993          	mv	s3,s8
   1128c:	00040c13          	mv	s8,s0
   11290:	06013403          	ld	s0,96(sp)
   11294:	0017071b          	addiw	a4,a4,1
   11298:	00011697          	auipc	a3,0x11
   1129c:	b3868693          	addi	a3,a3,-1224 # 21dd0 <zeroes.0>
   112a0:	013787b3          	add	a5,a5,s3
   112a4:	00ddb023          	sd	a3,0(s11)
   112a8:	013db423          	sd	s3,8(s11)
   112ac:	0007069b          	sext.w	a3,a4
   112b0:	10e12423          	sw	a4,264(sp)
   112b4:	10f13823          	sd	a5,272(sp)
   112b8:	00700713          	li	a4,7
   112bc:	010d8d93          	addi	s11,s11,16
   112c0:	c4d75e63          	bge	a4,a3,1071c <_vfprintf_r+0x2d4>
   112c4:	10010613          	addi	a2,sp,256
   112c8:	000c0593          	mv	a1,s8
   112cc:	000c8513          	mv	a0,s9
   112d0:	07c13023          	sd	t3,96(sp)
   112d4:	4540a0ef          	jal	ra,1b728 <__sprint_r>
   112d8:	0e051463          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   112dc:	11013783          	ld	a5,272(sp)
   112e0:	06013e03          	ld	t3,96(sp)
   112e4:	18010d93          	addi	s11,sp,384
   112e8:	c34ff06f          	j	1071c <_vfprintf_r+0x2d4>
   112ec:	10812703          	lw	a4,264(sp)
   112f0:	073b5663          	bge	s6,s3,1135c <_vfprintf_r+0xf14>
   112f4:	00700893          	li	a7,7
   112f8:	00c0006f          	j	11304 <_vfprintf_r+0xebc>
   112fc:	ff09899b          	addiw	s3,s3,-16
   11300:	053b5e63          	bge	s6,s3,1135c <_vfprintf_r+0xf14>
   11304:	0017069b          	addiw	a3,a4,1
   11308:	01078793          	addi	a5,a5,16
   1130c:	00011717          	auipc	a4,0x11
   11310:	ac470713          	addi	a4,a4,-1340 # 21dd0 <zeroes.0>
   11314:	00edb023          	sd	a4,0(s11)
   11318:	016db423          	sd	s6,8(s11)
   1131c:	10f13823          	sd	a5,272(sp)
   11320:	0006871b          	sext.w	a4,a3
   11324:	10d12423          	sw	a3,264(sp)
   11328:	010d8d93          	addi	s11,s11,16
   1132c:	fce8d8e3          	bge	a7,a4,112fc <_vfprintf_r+0xeb4>
   11330:	10010613          	addi	a2,sp,256
   11334:	000c0593          	mv	a1,s8
   11338:	000c8513          	mv	a0,s9
   1133c:	3ec0a0ef          	jal	ra,1b728 <__sprint_r>
   11340:	08051063          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11344:	ff09899b          	addiw	s3,s3,-16
   11348:	11013783          	ld	a5,272(sp)
   1134c:	10812703          	lw	a4,264(sp)
   11350:	18010d93          	addi	s11,sp,384
   11354:	00700893          	li	a7,7
   11358:	fb3b46e3          	blt	s6,s3,11304 <_vfprintf_r+0xebc>
   1135c:	0017071b          	addiw	a4,a4,1
   11360:	00011697          	auipc	a3,0x11
   11364:	a7068693          	addi	a3,a3,-1424 # 21dd0 <zeroes.0>
   11368:	013787b3          	add	a5,a5,s3
   1136c:	00ddb023          	sd	a3,0(s11)
   11370:	013db423          	sd	s3,8(s11)
   11374:	0007069b          	sext.w	a3,a4
   11378:	10e12423          	sw	a4,264(sp)
   1137c:	10f13823          	sd	a5,272(sp)
   11380:	00700713          	li	a4,7
   11384:	010d8d93          	addi	s11,s11,16
   11388:	b8d75e63          	bge	a4,a3,10724 <_vfprintf_r+0x2dc>
   1138c:	10010613          	addi	a2,sp,256
   11390:	000c0593          	mv	a1,s8
   11394:	000c8513          	mv	a0,s9
   11398:	3900a0ef          	jal	ra,1b728 <__sprint_r>
   1139c:	02051263          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   113a0:	11013783          	ld	a5,272(sp)
   113a4:	18010d93          	addi	s11,sp,384
   113a8:	b7cff06f          	j	10724 <_vfprintf_r+0x2dc>
   113ac:	10010613          	addi	a2,sp,256
   113b0:	000c0593          	mv	a1,s8
   113b4:	000c8513          	mv	a0,s9
   113b8:	3700a0ef          	jal	ra,1b728 <__sprint_r>
   113bc:	bc050263          	beqz	a0,10780 <_vfprintf_r+0x338>
   113c0:	01013583          	ld	a1,16(sp)
   113c4:	be058863          	beqz	a1,107b4 <_vfprintf_r+0x36c>
   113c8:	000c8513          	mv	a0,s9
   113cc:	368020ef          	jal	ra,13734 <_free_r>
   113d0:	be4ff06f          	j	107b4 <_vfprintf_r+0x36c>
   113d4:	10812703          	lw	a4,264(sp)
   113d8:	00011997          	auipc	s3,0x11
   113dc:	9e898993          	addi	s3,s3,-1560 # 21dc0 <blanks.1>
   113e0:	0cdb5863          	bge	s6,a3,114b0 <_vfprintf_r+0x1068>
   113e4:	08813423          	sd	s0,136(sp)
   113e8:	00068413          	mv	s0,a3
   113ec:	000c0693          	mv	a3,s8
   113f0:	08913023          	sd	s1,128(sp)
   113f4:	000a8c13          	mv	s8,s5
   113f8:	000c8493          	mv	s1,s9
   113fc:	000a0a93          	mv	s5,s4
   11400:	000d0c93          	mv	s9,s10
   11404:	00090a13          	mv	s4,s2
   11408:	000b8d13          	mv	s10,s7
   1140c:	00700f93          	li	t6,7
   11410:	07e13023          	sd	t5,96(sp)
   11414:	07d13c23          	sd	t4,120(sp)
   11418:	000e0b93          	mv	s7,t3
   1141c:	00068913          	mv	s2,a3
   11420:	00c0006f          	j	1142c <_vfprintf_r+0xfe4>
   11424:	ff04041b          	addiw	s0,s0,-16
   11428:	048b5863          	bge	s6,s0,11478 <_vfprintf_r+0x1030>
   1142c:	0017071b          	addiw	a4,a4,1
   11430:	01078793          	addi	a5,a5,16
   11434:	013db023          	sd	s3,0(s11)
   11438:	016db423          	sd	s6,8(s11)
   1143c:	10f13823          	sd	a5,272(sp)
   11440:	10e12423          	sw	a4,264(sp)
   11444:	010d8d93          	addi	s11,s11,16
   11448:	fcefdee3          	bge	t6,a4,11424 <_vfprintf_r+0xfdc>
   1144c:	10010613          	addi	a2,sp,256
   11450:	00090593          	mv	a1,s2
   11454:	00048513          	mv	a0,s1
   11458:	2d00a0ef          	jal	ra,1b728 <__sprint_r>
   1145c:	0a0518e3          	bnez	a0,11d0c <_vfprintf_r+0x18c4>
   11460:	ff04041b          	addiw	s0,s0,-16
   11464:	11013783          	ld	a5,272(sp)
   11468:	10812703          	lw	a4,264(sp)
   1146c:	18010d93          	addi	s11,sp,384
   11470:	00700f93          	li	t6,7
   11474:	fa8b4ce3          	blt	s6,s0,1142c <_vfprintf_r+0xfe4>
   11478:	000b8e13          	mv	t3,s7
   1147c:	00040693          	mv	a3,s0
   11480:	000d0b93          	mv	s7,s10
   11484:	06013f03          	ld	t5,96(sp)
   11488:	000c8d13          	mv	s10,s9
   1148c:	07813e83          	ld	t4,120(sp)
   11490:	00048c93          	mv	s9,s1
   11494:	08813403          	ld	s0,136(sp)
   11498:	08013483          	ld	s1,128(sp)
   1149c:	00090613          	mv	a2,s2
   114a0:	000a0913          	mv	s2,s4
   114a4:	000a8a13          	mv	s4,s5
   114a8:	000c0a93          	mv	s5,s8
   114ac:	00060c13          	mv	s8,a2
   114b0:	0017071b          	addiw	a4,a4,1
   114b4:	00d787b3          	add	a5,a5,a3
   114b8:	00ddb423          	sd	a3,8(s11)
   114bc:	013db023          	sd	s3,0(s11)
   114c0:	0007069b          	sext.w	a3,a4
   114c4:	10e12423          	sw	a4,264(sp)
   114c8:	10f13823          	sd	a5,272(sp)
   114cc:	00700713          	li	a4,7
   114d0:	010d8d93          	addi	s11,s11,16
   114d4:	9cd75663          	bge	a4,a3,106a0 <_vfprintf_r+0x258>
   114d8:	10010613          	addi	a2,sp,256
   114dc:	000c0593          	mv	a1,s8
   114e0:	000c8513          	mv	a0,s9
   114e4:	09c13023          	sd	t3,128(sp)
   114e8:	07d13c23          	sd	t4,120(sp)
   114ec:	07e13023          	sd	t5,96(sp)
   114f0:	2380a0ef          	jal	ra,1b728 <__sprint_r>
   114f4:	ec0516e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   114f8:	11013783          	ld	a5,272(sp)
   114fc:	08013e03          	ld	t3,128(sp)
   11500:	07813e83          	ld	t4,120(sp)
   11504:	06013f03          	ld	t5,96(sp)
   11508:	18010d93          	addi	s11,sp,384
   1150c:	994ff06f          	j	106a0 <_vfprintf_r+0x258>
   11510:	00090a93          	mv	s5,s2
   11514:	00d13423          	sd	a3,8(sp)
   11518:	00900793          	li	a5,9
   1151c:	6537e463          	bltu	a5,s3,11b64 <_vfprintf_r+0x171c>
   11520:	0309899b          	addiw	s3,s3,48
   11524:	17310da3          	sb	s3,379(sp)
   11528:	000a8913          	mv	s2,s5
   1152c:	00100b93          	li	s7,1
   11530:	17b10d13          	addi	s10,sp,379
   11534:	871ff06f          	j	10da4 <_vfprintf_r+0x95c>
   11538:	10010613          	addi	a2,sp,256
   1153c:	000c0593          	mv	a1,s8
   11540:	000c8513          	mv	a0,s9
   11544:	07c13c23          	sd	t3,120(sp)
   11548:	07d13023          	sd	t4,96(sp)
   1154c:	1dc0a0ef          	jal	ra,1b728 <__sprint_r>
   11550:	e60518e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11554:	11013783          	ld	a5,272(sp)
   11558:	07813e03          	ld	t3,120(sp)
   1155c:	06013e83          	ld	t4,96(sp)
   11560:	18010d93          	addi	s11,sp,384
   11564:	9b0ff06f          	j	10714 <_vfprintf_r+0x2cc>
   11568:	10812703          	lw	a4,264(sp)
   1156c:	00011997          	auipc	s3,0x11
   11570:	85498993          	addi	s3,s3,-1964 # 21dc0 <blanks.1>
   11574:	00700913          	li	s2,7
   11578:	009b4863          	blt	s6,s1,11588 <_vfprintf_r+0x1140>
   1157c:	0540006f          	j	115d0 <_vfprintf_r+0x1188>
   11580:	ff04849b          	addiw	s1,s1,-16
   11584:	049b5663          	bge	s6,s1,115d0 <_vfprintf_r+0x1188>
   11588:	0017071b          	addiw	a4,a4,1
   1158c:	01078793          	addi	a5,a5,16
   11590:	013db023          	sd	s3,0(s11)
   11594:	016db423          	sd	s6,8(s11)
   11598:	10f13823          	sd	a5,272(sp)
   1159c:	10e12423          	sw	a4,264(sp)
   115a0:	010d8d93          	addi	s11,s11,16
   115a4:	fce95ee3          	bge	s2,a4,11580 <_vfprintf_r+0x1138>
   115a8:	10010613          	addi	a2,sp,256
   115ac:	000c0593          	mv	a1,s8
   115b0:	000c8513          	mv	a0,s9
   115b4:	1740a0ef          	jal	ra,1b728 <__sprint_r>
   115b8:	e00514e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   115bc:	ff04849b          	addiw	s1,s1,-16
   115c0:	11013783          	ld	a5,272(sp)
   115c4:	10812703          	lw	a4,264(sp)
   115c8:	18010d93          	addi	s11,sp,384
   115cc:	fa9b4ee3          	blt	s6,s1,11588 <_vfprintf_r+0x1140>
   115d0:	0017069b          	addiw	a3,a4,1
   115d4:	009787b3          	add	a5,a5,s1
   115d8:	013db023          	sd	s3,0(s11)
   115dc:	009db423          	sd	s1,8(s11)
   115e0:	10f13823          	sd	a5,272(sp)
   115e4:	10d12423          	sw	a3,264(sp)
   115e8:	00700713          	li	a4,7
   115ec:	96d75c63          	bge	a4,a3,10764 <_vfprintf_r+0x31c>
   115f0:	10010613          	addi	a2,sp,256
   115f4:	000c0593          	mv	a1,s8
   115f8:	000c8513          	mv	a0,s9
   115fc:	12c0a0ef          	jal	ra,1b728 <__sprint_r>
   11600:	dc0510e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11604:	11013783          	ld	a5,272(sp)
   11608:	95cff06f          	j	10764 <_vfprintf_r+0x31c>
   1160c:	0d812603          	lw	a2,216(sp)
   11610:	64c05263          	blez	a2,11c54 <_vfprintf_r+0x180c>
   11614:	01813703          	ld	a4,24(sp)
   11618:	02013683          	ld	a3,32(sp)
   1161c:	0007049b          	sext.w	s1,a4
   11620:	32e6c863          	blt	a3,a4,11950 <_vfprintf_r+0x1508>
   11624:	02905663          	blez	s1,11650 <_vfprintf_r+0x1208>
   11628:	10812703          	lw	a4,264(sp)
   1162c:	009787b3          	add	a5,a5,s1
   11630:	01adb023          	sd	s10,0(s11)
   11634:	0017069b          	addiw	a3,a4,1
   11638:	009db423          	sd	s1,8(s11)
   1163c:	10f13823          	sd	a5,272(sp)
   11640:	10d12423          	sw	a3,264(sp)
   11644:	00700713          	li	a4,7
   11648:	010d8d93          	addi	s11,s11,16
   1164c:	32d74ae3          	blt	a4,a3,12180 <_vfprintf_r+0x1d38>
   11650:	fff4c713          	not	a4,s1
   11654:	43f75713          	srai	a4,a4,0x3f
   11658:	00e4f4b3          	and	s1,s1,a4
   1165c:	01813703          	ld	a4,24(sp)
   11660:	409704bb          	subw	s1,a4,s1
   11664:	42904e63          	bgtz	s1,11aa0 <_vfprintf_r+0x1658>
   11668:	01813683          	ld	a3,24(sp)
   1166c:	40097713          	andi	a4,s2,1024
   11670:	00dd04b3          	add	s1,s10,a3
   11674:	0e071ae3          	bnez	a4,11f68 <_vfprintf_r+0x1b20>
   11678:	0d812703          	lw	a4,216(sp)
   1167c:	02013683          	ld	a3,32(sp)
   11680:	00d74663          	blt	a4,a3,1168c <_vfprintf_r+0x1244>
   11684:	00197693          	andi	a3,s2,1
   11688:	320680e3          	beqz	a3,121a8 <_vfprintf_r+0x1d60>
   1168c:	04013683          	ld	a3,64(sp)
   11690:	03813603          	ld	a2,56(sp)
   11694:	010d8d93          	addi	s11,s11,16
   11698:	feddb823          	sd	a3,-16(s11)
   1169c:	10812683          	lw	a3,264(sp)
   116a0:	00c787b3          	add	a5,a5,a2
   116a4:	fecdbc23          	sd	a2,-8(s11)
   116a8:	0016869b          	addiw	a3,a3,1
   116ac:	0006861b          	sext.w	a2,a3
   116b0:	10d12423          	sw	a3,264(sp)
   116b4:	10f13823          	sd	a5,272(sp)
   116b8:	00700693          	li	a3,7
   116bc:	00c6d463          	bge	a3,a2,116c4 <_vfprintf_r+0x127c>
   116c0:	0000106f          	j	126c0 <_vfprintf_r+0x2278>
   116c4:	02013683          	ld	a3,32(sp)
   116c8:	40e6863b          	subw	a2,a3,a4
   116cc:	00dd06b3          	add	a3,s10,a3
   116d0:	409686bb          	subw	a3,a3,s1
   116d4:	00060713          	mv	a4,a2
   116d8:	00c6d463          	bge	a3,a2,116e0 <_vfprintf_r+0x1298>
   116dc:	00068713          	mv	a4,a3
   116e0:	0007099b          	sext.w	s3,a4
   116e4:	03305863          	blez	s3,11714 <_vfprintf_r+0x12cc>
   116e8:	10812703          	lw	a4,264(sp)
   116ec:	013787b3          	add	a5,a5,s3
   116f0:	009db023          	sd	s1,0(s11)
   116f4:	0017069b          	addiw	a3,a4,1
   116f8:	013db423          	sd	s3,8(s11)
   116fc:	10f13823          	sd	a5,272(sp)
   11700:	10d12423          	sw	a3,264(sp)
   11704:	00700713          	li	a4,7
   11708:	010d8d93          	addi	s11,s11,16
   1170c:	00d75463          	bge	a4,a3,11714 <_vfprintf_r+0x12cc>
   11710:	0040106f          	j	12714 <_vfprintf_r+0x22cc>
   11714:	fff9c493          	not	s1,s3
   11718:	43f4d493          	srai	s1,s1,0x3f
   1171c:	0099f4b3          	and	s1,s3,s1
   11720:	409604bb          	subw	s1,a2,s1
   11724:	00904463          	bgtz	s1,1172c <_vfprintf_r+0x12e4>
   11728:	82cff06f          	j	10754 <_vfprintf_r+0x30c>
   1172c:	10812703          	lw	a4,264(sp)
   11730:	629b5263          	bge	s6,s1,11d54 <_vfprintf_r+0x190c>
   11734:	00700993          	li	s3,7
   11738:	00c0006f          	j	11744 <_vfprintf_r+0x12fc>
   1173c:	ff04849b          	addiw	s1,s1,-16
   11740:	609b5a63          	bge	s6,s1,11d54 <_vfprintf_r+0x190c>
   11744:	0017069b          	addiw	a3,a4,1
   11748:	01078793          	addi	a5,a5,16
   1174c:	00010717          	auipc	a4,0x10
   11750:	68470713          	addi	a4,a4,1668 # 21dd0 <zeroes.0>
   11754:	00edb023          	sd	a4,0(s11)
   11758:	016db423          	sd	s6,8(s11)
   1175c:	10f13823          	sd	a5,272(sp)
   11760:	0006871b          	sext.w	a4,a3
   11764:	10d12423          	sw	a3,264(sp)
   11768:	010d8d93          	addi	s11,s11,16
   1176c:	fce9d8e3          	bge	s3,a4,1173c <_vfprintf_r+0x12f4>
   11770:	10010613          	addi	a2,sp,256
   11774:	000c0593          	mv	a1,s8
   11778:	000c8513          	mv	a0,s9
   1177c:	7ad090ef          	jal	ra,1b728 <__sprint_r>
   11780:	c40510e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11784:	11013783          	ld	a5,272(sp)
   11788:	10812703          	lw	a4,264(sp)
   1178c:	18010d93          	addi	s11,sp,384
   11790:	fadff06f          	j	1173c <_vfprintf_r+0x12f4>
   11794:	00197593          	andi	a1,s2,1
   11798:	c0059663          	bnez	a1,10ba4 <_vfprintf_r+0x75c>
   1179c:	00cdb423          	sd	a2,8(s11)
   117a0:	11313823          	sd	s3,272(sp)
   117a4:	10f12423          	sw	a5,264(sp)
   117a8:	00700713          	li	a4,7
   117ac:	1ef74063          	blt	a4,a5,1198c <_vfprintf_r+0x1544>
   117b0:	0026869b          	addiw	a3,a3,2
   117b4:	020d8d93          	addi	s11,s11,32
   117b8:	c94ff06f          	j	10c4c <_vfprintf_r+0x804>
   117bc:	c8f05863          	blez	a5,10c4c <_vfprintf_r+0x804>
   117c0:	00fb4463          	blt	s6,a5,117c8 <_vfprintf_r+0x1380>
   117c4:	32c0106f          	j	12af0 <_vfprintf_r+0x26a8>
   117c8:	00700d13          	li	s10,7
   117cc:	00078d93          	mv	s11,a5
   117d0:	0100006f          	j	117e0 <_vfprintf_r+0x1398>
   117d4:	ff0d8d9b          	addiw	s11,s11,-16
   117d8:	19bb5263          	bge	s6,s11,1195c <_vfprintf_r+0x1514>
   117dc:	001b871b          	addiw	a4,s7,1
   117e0:	01098993          	addi	s3,s3,16
   117e4:	00010797          	auipc	a5,0x10
   117e8:	5ec78793          	addi	a5,a5,1516 # 21dd0 <zeroes.0>
   117ec:	00f4b023          	sd	a5,0(s1)
   117f0:	0164b423          	sd	s6,8(s1)
   117f4:	11313823          	sd	s3,272(sp)
   117f8:	00070b9b          	sext.w	s7,a4
   117fc:	10e12423          	sw	a4,264(sp)
   11800:	01048493          	addi	s1,s1,16
   11804:	fd7d58e3          	bge	s10,s7,117d4 <_vfprintf_r+0x138c>
   11808:	10010613          	addi	a2,sp,256
   1180c:	000c0593          	mv	a1,s8
   11810:	000c8513          	mv	a0,s9
   11814:	715090ef          	jal	ra,1b728 <__sprint_r>
   11818:	ba0514e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   1181c:	11013983          	ld	s3,272(sp)
   11820:	10812b83          	lw	s7,264(sp)
   11824:	18010493          	addi	s1,sp,384
   11828:	fadff06f          	j	117d4 <_vfprintf_r+0x138c>
   1182c:	010af793          	andi	a5,s5,16
   11830:	0c079463          	bnez	a5,118f8 <_vfprintf_r+0x14b0>
   11834:	00813703          	ld	a4,8(sp)
   11838:	040af793          	andi	a5,s5,64
   1183c:	00072983          	lw	s3,0(a4)
   11840:	66078863          	beqz	a5,11eb0 <_vfprintf_r+0x1a68>
   11844:	03099993          	slli	s3,s3,0x30
   11848:	0309d993          	srli	s3,s3,0x30
   1184c:	00d13423          	sd	a3,8(sp)
   11850:	00100793          	li	a5,1
   11854:	d24ff06f          	j	10d78 <_vfprintf_r+0x930>
   11858:	01097793          	andi	a5,s2,16
   1185c:	0e079463          	bnez	a5,11944 <_vfprintf_r+0x14fc>
   11860:	00813703          	ld	a4,8(sp)
   11864:	04097793          	andi	a5,s2,64
   11868:	00072983          	lw	s3,0(a4)
   1186c:	66078a63          	beqz	a5,11ee0 <_vfprintf_r+0x1a98>
   11870:	03099993          	slli	s3,s3,0x30
   11874:	0309d993          	srli	s3,s3,0x30
   11878:	cf0ff06f          	j	10d68 <_vfprintf_r+0x920>
   1187c:	01097793          	andi	a5,s2,16
   11880:	0a079a63          	bnez	a5,11934 <_vfprintf_r+0x14ec>
   11884:	04097793          	andi	a5,s2,64
   11888:	64078063          	beqz	a5,11ec8 <_vfprintf_r+0x1a80>
   1188c:	00813783          	ld	a5,8(sp)
   11890:	00079983          	lh	s3,0(a5)
   11894:	00098793          	mv	a5,s3
   11898:	f607da63          	bgez	a5,1100c <_vfprintf_r+0xbc4>
   1189c:	02d00793          	li	a5,45
   118a0:	0cf107a3          	sb	a5,207(sp)
   118a4:	413009b3          	neg	s3,s3
   118a8:	00d13423          	sd	a3,8(sp)
   118ac:	00090a93          	mv	s5,s2
   118b0:	00100793          	li	a5,1
   118b4:	cc8ff06f          	j	10d7c <_vfprintf_r+0x934>
   118b8:	00197713          	andi	a4,s2,1
   118bc:	00071463          	bnez	a4,118c4 <_vfprintf_r+0x147c>
   118c0:	e95fe06f          	j	10754 <_vfprintf_r+0x30c>
   118c4:	891ff06f          	j	11154 <_vfprintf_r+0xd0c>
   118c8:	000b8e13          	mv	t3,s7
   118cc:	f24ff06f          	j	10ff0 <_vfprintf_r+0xba8>
   118d0:	03000793          	li	a5,48
   118d4:	16f10da3          	sb	a5,379(sp)
   118d8:	17b10d13          	addi	s10,sp,379
   118dc:	cc8ff06f          	j	10da4 <_vfprintf_r+0x95c>
   118e0:	00013783          	ld	a5,0(sp)
   118e4:	00040d13          	mv	s10,s0
   118e8:	00f73023          	sd	a5,0(a4)
   118ec:	eb5fe06f          	j	107a0 <_vfprintf_r+0x358>
   118f0:	00044483          	lbu	s1,0(s0)
   118f4:	cf1fe06f          	j	105e4 <_vfprintf_r+0x19c>
   118f8:	00813783          	ld	a5,8(sp)
   118fc:	00d13423          	sd	a3,8(sp)
   11900:	0007b983          	ld	s3,0(a5)
   11904:	00100793          	li	a5,1
   11908:	c70ff06f          	j	10d78 <_vfprintf_r+0x930>
   1190c:	00813783          	ld	a5,8(sp)
   11910:	00f78793          	addi	a5,a5,15
   11914:	ff07f793          	andi	a5,a5,-16
   11918:	0007b703          	ld	a4,0(a5)
   1191c:	0087b683          	ld	a3,8(a5)
   11920:	01078793          	addi	a5,a5,16
   11924:	00f13423          	sd	a5,8(sp)
   11928:	0ee13823          	sd	a4,240(sp)
   1192c:	0ed13c23          	sd	a3,248(sp)
   11930:	f8dfe06f          	j	108bc <_vfprintf_r+0x474>
   11934:	00813783          	ld	a5,8(sp)
   11938:	0007b783          	ld	a5,0(a5)
   1193c:	00078993          	mv	s3,a5
   11940:	ec8ff06f          	j	11008 <_vfprintf_r+0xbc0>
   11944:	00813783          	ld	a5,8(sp)
   11948:	0007b983          	ld	s3,0(a5)
   1194c:	c1cff06f          	j	10d68 <_vfprintf_r+0x920>
   11950:	0006849b          	sext.w	s1,a3
   11954:	cc904ae3          	bgtz	s1,11628 <_vfprintf_r+0x11e0>
   11958:	cf9ff06f          	j	11650 <_vfprintf_r+0x1208>
   1195c:	000d8793          	mv	a5,s11
   11960:	001b869b          	addiw	a3,s7,1
   11964:	01048713          	addi	a4,s1,16
   11968:	00f989b3          	add	s3,s3,a5
   1196c:	00010617          	auipc	a2,0x10
   11970:	46460613          	addi	a2,a2,1124 # 21dd0 <zeroes.0>
   11974:	00f4b423          	sd	a5,8(s1)
   11978:	00c4b023          	sd	a2,0(s1)
   1197c:	11313823          	sd	s3,272(sp)
   11980:	10d12423          	sw	a3,264(sp)
   11984:	00700793          	li	a5,7
   11988:	7ad7dc63          	bge	a5,a3,12140 <_vfprintf_r+0x1cf8>
   1198c:	10010613          	addi	a2,sp,256
   11990:	000c0593          	mv	a1,s8
   11994:	000c8513          	mv	a0,s9
   11998:	591090ef          	jal	ra,1b728 <__sprint_r>
   1199c:	a20512e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   119a0:	10812683          	lw	a3,264(sp)
   119a4:	11013983          	ld	s3,272(sp)
   119a8:	19010d93          	addi	s11,sp,400
   119ac:	0016869b          	addiw	a3,a3,1
   119b0:	18010493          	addi	s1,sp,384
   119b4:	a98ff06f          	j	10c4c <_vfprintf_r+0x804>
   119b8:	00010797          	auipc	a5,0x10
   119bc:	27078793          	addi	a5,a5,624 # 21c28 <__clzdi2+0x9c>
   119c0:	000b8e13          	mv	t3,s7
   119c4:	04f13423          	sd	a5,72(sp)
   119c8:	00813703          	ld	a4,8(sp)
   119cc:	02097793          	andi	a5,s2,32
   119d0:	00870693          	addi	a3,a4,8
   119d4:	12078a63          	beqz	a5,11b08 <_vfprintf_r+0x16c0>
   119d8:	00073983          	ld	s3,0(a4)
   119dc:	00197793          	andi	a5,s2,1
   119e0:	00078e63          	beqz	a5,119fc <_vfprintf_r+0x15b4>
   119e4:	00098c63          	beqz	s3,119fc <_vfprintf_r+0x15b4>
   119e8:	00296913          	ori	s2,s2,2
   119ec:	03000793          	li	a5,48
   119f0:	0cf10823          	sb	a5,208(sp)
   119f4:	0c9108a3          	sb	s1,209(sp)
   119f8:	0009091b          	sext.w	s2,s2
   119fc:	bff97713          	andi	a4,s2,-1025
   11a00:	00070a9b          	sext.w	s5,a4
   11a04:	00d13423          	sd	a3,8(sp)
   11a08:	00200793          	li	a5,2
   11a0c:	b6cff06f          	j	10d78 <_vfprintf_r+0x930>
   11a10:	000b8e13          	mv	t3,s7
   11a14:	00090a93          	mv	s5,s2
   11a18:	c88ff06f          	j	10ea0 <_vfprintf_r+0xa58>
   11a1c:	20096913          	ori	s2,s2,512
   11a20:	00144483          	lbu	s1,1(s0)
   11a24:	0009091b          	sext.w	s2,s2
   11a28:	00140413          	addi	s0,s0,1
   11a2c:	bb9fe06f          	j	105e4 <_vfprintf_r+0x19c>
   11a30:	10010613          	addi	a2,sp,256
   11a34:	000c0593          	mv	a1,s8
   11a38:	000c8513          	mv	a0,s9
   11a3c:	4ed090ef          	jal	ra,1b728 <__sprint_r>
   11a40:	980510e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11a44:	11013783          	ld	a5,272(sp)
   11a48:	18010d93          	addi	s11,sp,384
   11a4c:	f3cff06f          	j	11188 <_vfprintf_r+0xd40>
   11a50:	02096913          	ori	s2,s2,32
   11a54:	00144483          	lbu	s1,1(s0)
   11a58:	0009091b          	sext.w	s2,s2
   11a5c:	00140413          	addi	s0,s0,1
   11a60:	b85fe06f          	j	105e4 <_vfprintf_r+0x19c>
   11a64:	00010797          	auipc	a5,0x10
   11a68:	1ac78793          	addi	a5,a5,428 # 21c10 <__clzdi2+0x84>
   11a6c:	000b8e13          	mv	t3,s7
   11a70:	04f13423          	sd	a5,72(sp)
   11a74:	f55ff06f          	j	119c8 <_vfprintf_r+0x1580>
   11a78:	000b8e13          	mv	t3,s7
   11a7c:	ad8ff06f          	j	10d54 <_vfprintf_r+0x90c>
   11a80:	00600793          	li	a5,6
   11a84:	000b8b9b          	sext.w	s7,s7
   11a88:	71c7ec63          	bltu	a5,t3,121a0 <_vfprintf_r+0x1d58>
   11a8c:	000b8a93          	mv	s5,s7
   11a90:	01313423          	sd	s3,8(sp)
   11a94:	00010d17          	auipc	s10,0x10
   11a98:	1acd0d13          	addi	s10,s10,428 # 21c40 <__clzdi2+0xb4>
   11a9c:	bd1fe06f          	j	1066c <_vfprintf_r+0x224>
   11aa0:	10812703          	lw	a4,264(sp)
   11aa4:	469b5a63          	bge	s6,s1,11f18 <_vfprintf_r+0x1ad0>
   11aa8:	00700b93          	li	s7,7
   11aac:	00c0006f          	j	11ab8 <_vfprintf_r+0x1670>
   11ab0:	ff04849b          	addiw	s1,s1,-16
   11ab4:	469b5263          	bge	s6,s1,11f18 <_vfprintf_r+0x1ad0>
   11ab8:	0017069b          	addiw	a3,a4,1
   11abc:	01078793          	addi	a5,a5,16
   11ac0:	00010717          	auipc	a4,0x10
   11ac4:	31070713          	addi	a4,a4,784 # 21dd0 <zeroes.0>
   11ac8:	00edb023          	sd	a4,0(s11)
   11acc:	016db423          	sd	s6,8(s11)
   11ad0:	10f13823          	sd	a5,272(sp)
   11ad4:	0006871b          	sext.w	a4,a3
   11ad8:	10d12423          	sw	a3,264(sp)
   11adc:	010d8d93          	addi	s11,s11,16
   11ae0:	fcebd8e3          	bge	s7,a4,11ab0 <_vfprintf_r+0x1668>
   11ae4:	10010613          	addi	a2,sp,256
   11ae8:	000c0593          	mv	a1,s8
   11aec:	000c8513          	mv	a0,s9
   11af0:	439090ef          	jal	ra,1b728 <__sprint_r>
   11af4:	8c0516e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11af8:	11013783          	ld	a5,272(sp)
   11afc:	10812703          	lw	a4,264(sp)
   11b00:	18010d93          	addi	s11,sp,384
   11b04:	fadff06f          	j	11ab0 <_vfprintf_r+0x1668>
   11b08:	01097793          	andi	a5,s2,16
   11b0c:	20078663          	beqz	a5,11d18 <_vfprintf_r+0x18d0>
   11b10:	00813783          	ld	a5,8(sp)
   11b14:	0007b983          	ld	s3,0(a5)
   11b18:	ec5ff06f          	j	119dc <_vfprintf_r+0x1594>
   11b1c:	10010613          	addi	a2,sp,256
   11b20:	000c0593          	mv	a1,s8
   11b24:	000c8513          	mv	a0,s9
   11b28:	401090ef          	jal	ra,1b728 <__sprint_r>
   11b2c:	88051ae3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11b30:	11013983          	ld	s3,272(sp)
   11b34:	10812783          	lw	a5,264(sp)
   11b38:	18010493          	addi	s1,sp,384
   11b3c:	880ff06f          	j	10bbc <_vfprintf_r+0x774>
   11b40:	10010613          	addi	a2,sp,256
   11b44:	000c0593          	mv	a1,s8
   11b48:	000c8513          	mv	a0,s9
   11b4c:	3dd090ef          	jal	ra,1b728 <__sprint_r>
   11b50:	860518e3          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11b54:	11013983          	ld	s3,272(sp)
   11b58:	10812b83          	lw	s7,264(sp)
   11b5c:	18010493          	addi	s1,sp,384
   11b60:	888ff06f          	j	10be8 <_vfprintf_r+0x7a0>
   11b64:	00813c23          	sd	s0,24(sp)
   11b68:	05813403          	ld	s0,88(sp)
   11b6c:	17c10b93          	addi	s7,sp,380
   11b70:	400af913          	andi	s2,s5,1024
   11b74:	00000793          	li	a5,0
   11b78:	000b8d13          	mv	s10,s7
   11b7c:	00913823          	sd	s1,16(sp)
   11b80:	03413423          	sd	s4,40(sp)
   11b84:	000b8493          	mv	s1,s7
   11b88:	00098a13          	mv	s4,s3
   11b8c:	000e0b93          	mv	s7,t3
   11b90:	00090993          	mv	s3,s2
   11b94:	00078913          	mv	s2,a5
   11b98:	00a00593          	li	a1,10
   11b9c:	000a0513          	mv	a0,s4
   11ba0:	77d0f0ef          	jal	ra,21b1c <__umoddi3>
   11ba4:	0305051b          	addiw	a0,a0,48
   11ba8:	fea48fa3          	sb	a0,-1(s1)
   11bac:	0019091b          	addiw	s2,s2,1
   11bb0:	fff48493          	addi	s1,s1,-1
   11bb4:	00098663          	beqz	s3,11bc0 <_vfprintf_r+0x1778>
   11bb8:	00044683          	lbu	a3,0(s0)
   11bbc:	04d90663          	beq	s2,a3,11c08 <_vfprintf_r+0x17c0>
   11bc0:	00a00593          	li	a1,10
   11bc4:	000a0513          	mv	a0,s4
   11bc8:	70d0f0ef          	jal	ra,21ad4 <__udivdi3>
   11bcc:	00900793          	li	a5,9
   11bd0:	0147f663          	bgeu	a5,s4,11bdc <_vfprintf_r+0x1794>
   11bd4:	00050a13          	mv	s4,a0
   11bd8:	fc1ff06f          	j	11b98 <_vfprintf_r+0x1750>
   11bdc:	000b8e13          	mv	t3,s7
   11be0:	000d0b93          	mv	s7,s10
   11be4:	00048d13          	mv	s10,s1
   11be8:	04813c23          	sd	s0,88(sp)
   11bec:	03213023          	sd	s2,32(sp)
   11bf0:	01813403          	ld	s0,24(sp)
   11bf4:	02813a03          	ld	s4,40(sp)
   11bf8:	01013483          	ld	s1,16(sp)
   11bfc:	41ab8bbb          	subw	s7,s7,s10
   11c00:	000a8913          	mv	s2,s5
   11c04:	9a0ff06f          	j	10da4 <_vfprintf_r+0x95c>
   11c08:	0ff00793          	li	a5,255
   11c0c:	faf68ae3          	beq	a3,a5,11bc0 <_vfprintf_r+0x1778>
   11c10:	00900793          	li	a5,9
   11c14:	fd47f4e3          	bgeu	a5,s4,11bdc <_vfprintf_r+0x1794>
   11c18:	06813783          	ld	a5,104(sp)
   11c1c:	07013583          	ld	a1,112(sp)
   11c20:	00000913          	li	s2,0
   11c24:	40f484b3          	sub	s1,s1,a5
   11c28:	00078613          	mv	a2,a5
   11c2c:	00048513          	mv	a0,s1
   11c30:	2a0070ef          	jal	ra,18ed0 <strncpy>
   11c34:	00144683          	lbu	a3,1(s0)
   11c38:	000a0513          	mv	a0,s4
   11c3c:	00a00593          	li	a1,10
   11c40:	00d03733          	snez	a4,a3
   11c44:	00e40433          	add	s0,s0,a4
   11c48:	68d0f0ef          	jal	ra,21ad4 <__udivdi3>
   11c4c:	00050a13          	mv	s4,a0
   11c50:	f49ff06f          	j	11b98 <_vfprintf_r+0x1750>
   11c54:	10812703          	lw	a4,264(sp)
   11c58:	00010697          	auipc	a3,0x10
   11c5c:	ff068693          	addi	a3,a3,-16 # 21c48 <__clzdi2+0xbc>
   11c60:	00ddb023          	sd	a3,0(s11)
   11c64:	0017071b          	addiw	a4,a4,1
   11c68:	00100693          	li	a3,1
   11c6c:	00178793          	addi	a5,a5,1
   11c70:	00ddb423          	sd	a3,8(s11)
   11c74:	10e12423          	sw	a4,264(sp)
   11c78:	0007069b          	sext.w	a3,a4
   11c7c:	10f13823          	sd	a5,272(sp)
   11c80:	00700713          	li	a4,7
   11c84:	010d8d93          	addi	s11,s11,16
   11c88:	4cd74463          	blt	a4,a3,12150 <_vfprintf_r+0x1d08>
   11c8c:	16061063          	bnez	a2,11dec <_vfprintf_r+0x19a4>
   11c90:	02013683          	ld	a3,32(sp)
   11c94:	00197713          	andi	a4,s2,1
   11c98:	00e6e733          	or	a4,a3,a4
   11c9c:	00071463          	bnez	a4,11ca4 <_vfprintf_r+0x185c>
   11ca0:	ab5fe06f          	j	10754 <_vfprintf_r+0x30c>
   11ca4:	04013683          	ld	a3,64(sp)
   11ca8:	03813703          	ld	a4,56(sp)
   11cac:	010d8313          	addi	t1,s11,16
   11cb0:	00ddb023          	sd	a3,0(s11)
   11cb4:	10812683          	lw	a3,264(sp)
   11cb8:	00f707b3          	add	a5,a4,a5
   11cbc:	00edb423          	sd	a4,8(s11)
   11cc0:	0016869b          	addiw	a3,a3,1
   11cc4:	0006871b          	sext.w	a4,a3
   11cc8:	10d12423          	sw	a3,264(sp)
   11ccc:	10f13823          	sd	a5,272(sp)
   11cd0:	00700693          	li	a3,7
   11cd4:	56e6c263          	blt	a3,a4,12238 <_vfprintf_r+0x1df0>
   11cd8:	02013683          	ld	a3,32(sp)
   11cdc:	0017071b          	addiw	a4,a4,1
   11ce0:	10e12423          	sw	a4,264(sp)
   11ce4:	00f687b3          	add	a5,a3,a5
   11ce8:	00d33423          	sd	a3,8(t1)
   11cec:	01a33023          	sd	s10,0(t1)
   11cf0:	0007069b          	sext.w	a3,a4
   11cf4:	10f13823          	sd	a5,272(sp)
   11cf8:	00700713          	li	a4,7
   11cfc:	01030d93          	addi	s11,t1,16
   11d00:	00d74463          	blt	a4,a3,11d08 <_vfprintf_r+0x18c0>
   11d04:	a51fe06f          	j	10754 <_vfprintf_r+0x30c>
   11d08:	f69fe06f          	j	10c70 <_vfprintf_r+0x828>
   11d0c:	00048c93          	mv	s9,s1
   11d10:	00090c13          	mv	s8,s2
   11d14:	eacff06f          	j	113c0 <_vfprintf_r+0xf78>
   11d18:	00813703          	ld	a4,8(sp)
   11d1c:	04097793          	andi	a5,s2,64
   11d20:	00072983          	lw	s3,0(a4)
   11d24:	16078e63          	beqz	a5,11ea0 <_vfprintf_r+0x1a58>
   11d28:	03099993          	slli	s3,s3,0x30
   11d2c:	0309d993          	srli	s3,s3,0x30
   11d30:	cadff06f          	j	119dc <_vfprintf_r+0x1594>
   11d34:	10010613          	addi	a2,sp,256
   11d38:	000c0593          	mv	a1,s8
   11d3c:	000c8513          	mv	a0,s9
   11d40:	1e9090ef          	jal	ra,1b728 <__sprint_r>
   11d44:	e6051e63          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11d48:	11013783          	ld	a5,272(sp)
   11d4c:	18010d93          	addi	s11,sp,384
   11d50:	bf8ff06f          	j	11148 <_vfprintf_r+0xd00>
   11d54:	00010697          	auipc	a3,0x10
   11d58:	07c68693          	addi	a3,a3,124 # 21dd0 <zeroes.0>
   11d5c:	0017071b          	addiw	a4,a4,1
   11d60:	00ddb023          	sd	a3,0(s11)
   11d64:	009db423          	sd	s1,8(s11)
   11d68:	009787b3          	add	a5,a5,s1
   11d6c:	0007069b          	sext.w	a3,a4
   11d70:	10e12423          	sw	a4,264(sp)
   11d74:	10f13823          	sd	a5,272(sp)
   11d78:	00700713          	li	a4,7
   11d7c:	00d74463          	blt	a4,a3,11d84 <_vfprintf_r+0x193c>
   11d80:	9d1fe06f          	j	10750 <_vfprintf_r+0x308>
   11d84:	eedfe06f          	j	10c70 <_vfprintf_r+0x828>
   11d88:	00040c13          	mv	s8,s0
   11d8c:	e34ff06f          	j	113c0 <_vfprintf_r+0xf78>
   11d90:	0f013503          	ld	a0,240(sp)
   11d94:	0f813583          	ld	a1,248(sp)
   11d98:	00000613          	li	a2,0
   11d9c:	00000693          	li	a3,0
   11da0:	2580e0ef          	jal	ra,1fff8 <__letf2>
   11da4:	100548e3          	bltz	a0,126b4 <_vfprintf_r+0x226c>
   11da8:	0cf14783          	lbu	a5,207(sp)
   11dac:	04700713          	li	a4,71
   11db0:	00010d17          	auipc	s10,0x10
   11db4:	e40d0d13          	addi	s10,s10,-448 # 21bf0 <__clzdi2+0x64>
   11db8:	3a974e63          	blt	a4,s1,12174 <_vfprintf_r+0x1d2c>
   11dbc:	f7f97913          	andi	s2,s2,-129
   11dc0:	00013823          	sd	zero,16(sp)
   11dc4:	02013823          	sd	zero,48(sp)
   11dc8:	02013423          	sd	zero,40(sp)
   11dcc:	00013c23          	sd	zero,24(sp)
   11dd0:	0009091b          	sext.w	s2,s2
   11dd4:	00300a93          	li	s5,3
   11dd8:	00300b93          	li	s7,3
   11ddc:	00000e13          	li	t3,0
   11de0:	00078463          	beqz	a5,11de8 <_vfprintf_r+0x19a0>
   11de4:	f5dfe06f          	j	10d40 <_vfprintf_r+0x8f8>
   11de8:	899fe06f          	j	10680 <_vfprintf_r+0x238>
   11dec:	04013683          	ld	a3,64(sp)
   11df0:	03813703          	ld	a4,56(sp)
   11df4:	010d8313          	addi	t1,s11,16
   11df8:	00ddb023          	sd	a3,0(s11)
   11dfc:	10812683          	lw	a3,264(sp)
   11e00:	00f707b3          	add	a5,a4,a5
   11e04:	00edb423          	sd	a4,8(s11)
   11e08:	0016869b          	addiw	a3,a3,1
   11e0c:	0006871b          	sext.w	a4,a3
   11e10:	10d12423          	sw	a3,264(sp)
   11e14:	10f13823          	sd	a5,272(sp)
   11e18:	00700693          	li	a3,7
   11e1c:	40e6ce63          	blt	a3,a4,12238 <_vfprintf_r+0x1df0>
   11e20:	ea065ce3          	bgez	a2,11cd8 <_vfprintf_r+0x1890>
   11e24:	ff000693          	li	a3,-16
   11e28:	40c004bb          	negw	s1,a2
   11e2c:	20d650e3          	bge	a2,a3,1282c <_vfprintf_r+0x23e4>
   11e30:	00700993          	li	s3,7
   11e34:	00c0006f          	j	11e40 <_vfprintf_r+0x19f8>
   11e38:	ff04849b          	addiw	s1,s1,-16
   11e3c:	1e9b58e3          	bge	s6,s1,1282c <_vfprintf_r+0x23e4>
   11e40:	0017069b          	addiw	a3,a4,1
   11e44:	01078793          	addi	a5,a5,16
   11e48:	00010717          	auipc	a4,0x10
   11e4c:	f8870713          	addi	a4,a4,-120 # 21dd0 <zeroes.0>
   11e50:	00e33023          	sd	a4,0(t1)
   11e54:	01633423          	sd	s6,8(t1)
   11e58:	10f13823          	sd	a5,272(sp)
   11e5c:	0006871b          	sext.w	a4,a3
   11e60:	10d12423          	sw	a3,264(sp)
   11e64:	01030313          	addi	t1,t1,16
   11e68:	fce9d8e3          	bge	s3,a4,11e38 <_vfprintf_r+0x19f0>
   11e6c:	10010613          	addi	a2,sp,256
   11e70:	000c0593          	mv	a1,s8
   11e74:	000c8513          	mv	a0,s9
   11e78:	0b1090ef          	jal	ra,1b728 <__sprint_r>
   11e7c:	d4051263          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11e80:	11013783          	ld	a5,272(sp)
   11e84:	10812703          	lw	a4,264(sp)
   11e88:	18010313          	addi	t1,sp,384
   11e8c:	fadff06f          	j	11e38 <_vfprintf_r+0x19f0>
   11e90:	000d0513          	mv	a0,s10
   11e94:	771060ef          	jal	ra,18e04 <strlen>
   11e98:	00050b9b          	sext.w	s7,a0
   11e9c:	e79fe06f          	j	10d14 <_vfprintf_r+0x8cc>
   11ea0:	20097793          	andi	a5,s2,512
   11ea4:	34078c63          	beqz	a5,121fc <_vfprintf_r+0x1db4>
   11ea8:	0ff9f993          	andi	s3,s3,255
   11eac:	b31ff06f          	j	119dc <_vfprintf_r+0x1594>
   11eb0:	200af793          	andi	a5,s5,512
   11eb4:	32078a63          	beqz	a5,121e8 <_vfprintf_r+0x1da0>
   11eb8:	0ff9f993          	andi	s3,s3,255
   11ebc:	00d13423          	sd	a3,8(sp)
   11ec0:	00100793          	li	a5,1
   11ec4:	eb5fe06f          	j	10d78 <_vfprintf_r+0x930>
   11ec8:	20097793          	andi	a5,s2,512
   11ecc:	32078e63          	beqz	a5,12208 <_vfprintf_r+0x1dc0>
   11ed0:	00813783          	ld	a5,8(sp)
   11ed4:	00078983          	lb	s3,0(a5)
   11ed8:	00098793          	mv	a5,s3
   11edc:	92cff06f          	j	11008 <_vfprintf_r+0xbc0>
   11ee0:	20097793          	andi	a5,s2,512
   11ee4:	2e078463          	beqz	a5,121cc <_vfprintf_r+0x1d84>
   11ee8:	0ff9f993          	andi	s3,s3,255
   11eec:	e7dfe06f          	j	10d68 <_vfprintf_r+0x920>
   11ef0:	0f813783          	ld	a5,248(sp)
   11ef4:	3207cc63          	bltz	a5,1222c <_vfprintf_r+0x1de4>
   11ef8:	0cf14783          	lbu	a5,207(sp)
   11efc:	04700713          	li	a4,71
   11f00:	00010d17          	auipc	s10,0x10
   11f04:	d00d0d13          	addi	s10,s10,-768 # 21c00 <__clzdi2+0x74>
   11f08:	ea975ae3          	bge	a4,s1,11dbc <_vfprintf_r+0x1974>
   11f0c:	00010d17          	auipc	s10,0x10
   11f10:	cfcd0d13          	addi	s10,s10,-772 # 21c08 <__clzdi2+0x7c>
   11f14:	ea9ff06f          	j	11dbc <_vfprintf_r+0x1974>
   11f18:	0017071b          	addiw	a4,a4,1
   11f1c:	00010697          	auipc	a3,0x10
   11f20:	eb468693          	addi	a3,a3,-332 # 21dd0 <zeroes.0>
   11f24:	009787b3          	add	a5,a5,s1
   11f28:	00ddb023          	sd	a3,0(s11)
   11f2c:	009db423          	sd	s1,8(s11)
   11f30:	0007069b          	sext.w	a3,a4
   11f34:	10e12423          	sw	a4,264(sp)
   11f38:	10f13823          	sd	a5,272(sp)
   11f3c:	00700713          	li	a4,7
   11f40:	010d8d93          	addi	s11,s11,16
   11f44:	f2d75263          	bge	a4,a3,11668 <_vfprintf_r+0x1220>
   11f48:	10010613          	addi	a2,sp,256
   11f4c:	000c0593          	mv	a1,s8
   11f50:	000c8513          	mv	a0,s9
   11f54:	7d4090ef          	jal	ra,1b728 <__sprint_r>
   11f58:	c6051463          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   11f5c:	11013783          	ld	a5,272(sp)
   11f60:	18010d93          	addi	s11,sp,384
   11f64:	f04ff06f          	j	11668 <_vfprintf_r+0x1220>
   11f68:	02013703          	ld	a4,32(sp)
   11f6c:	02813b83          	ld	s7,40(sp)
   11f70:	00813c23          	sd	s0,24(sp)
   11f74:	00ed06b3          	add	a3,s10,a4
   11f78:	07213023          	sd	s2,96(sp)
   11f7c:	07413c23          	sd	s4,120(sp)
   11f80:	03513423          	sd	s5,40(sp)
   11f84:	000d8713          	mv	a4,s11
   11f88:	05813403          	ld	s0,88(sp)
   11f8c:	07013a03          	ld	s4,112(sp)
   11f90:	06813983          	ld	s3,104(sp)
   11f94:	03013903          	ld	s2,48(sp)
   11f98:	00700893          	li	a7,7
   11f9c:	000d0d93          	mv	s11,s10
   11fa0:	00068a93          	mv	s5,a3
   11fa4:	080b8e63          	beqz	s7,12040 <_vfprintf_r+0x1bf8>
   11fa8:	08091e63          	bnez	s2,12044 <_vfprintf_r+0x1bfc>
   11fac:	fff40413          	addi	s0,s0,-1
   11fb0:	fffb8b9b          	addiw	s7,s7,-1
   11fb4:	10812683          	lw	a3,264(sp)
   11fb8:	013787b3          	add	a5,a5,s3
   11fbc:	01473023          	sd	s4,0(a4)
   11fc0:	0016861b          	addiw	a2,a3,1
   11fc4:	01373423          	sd	s3,8(a4)
   11fc8:	10f13823          	sd	a5,272(sp)
   11fcc:	10c12423          	sw	a2,264(sp)
   11fd0:	01070713          	addi	a4,a4,16
   11fd4:	10c8ce63          	blt	a7,a2,120f0 <_vfprintf_r+0x1ca8>
   11fd8:	00044603          	lbu	a2,0(s0)
   11fdc:	409a853b          	subw	a0,s5,s1
   11fe0:	0006069b          	sext.w	a3,a2
   11fe4:	00068813          	mv	a6,a3
   11fe8:	00d55463          	bge	a0,a3,11ff0 <_vfprintf_r+0x1ba8>
   11fec:	00050813          	mv	a6,a0
   11ff0:	00080d1b          	sext.w	s10,a6
   11ff4:	03a05863          	blez	s10,12024 <_vfprintf_r+0x1bdc>
   11ff8:	10812683          	lw	a3,264(sp)
   11ffc:	01a787b3          	add	a5,a5,s10
   12000:	00973023          	sd	s1,0(a4)
   12004:	0016861b          	addiw	a2,a3,1
   12008:	01a73423          	sd	s10,8(a4)
   1200c:	10f13823          	sd	a5,272(sp)
   12010:	10c12423          	sw	a2,264(sp)
   12014:	10c8c063          	blt	a7,a2,12114 <_vfprintf_r+0x1ccc>
   12018:	00044603          	lbu	a2,0(s0)
   1201c:	01070713          	addi	a4,a4,16
   12020:	0006069b          	sext.w	a3,a2
   12024:	fffd4513          	not	a0,s10
   12028:	43f55513          	srai	a0,a0,0x3f
   1202c:	00ad7833          	and	a6,s10,a0
   12030:	41068d3b          	subw	s10,a3,a6
   12034:	01a04c63          	bgtz	s10,1204c <_vfprintf_r+0x1c04>
   12038:	00c484b3          	add	s1,s1,a2
   1203c:	f60b96e3          	bnez	s7,11fa8 <_vfprintf_r+0x1b60>
   12040:	4a090063          	beqz	s2,124e0 <_vfprintf_r+0x2098>
   12044:	fff9091b          	addiw	s2,s2,-1
   12048:	f6dff06f          	j	11fb4 <_vfprintf_r+0x1b6c>
   1204c:	10812603          	lw	a2,264(sp)
   12050:	01ab4863          	blt	s6,s10,12060 <_vfprintf_r+0x1c18>
   12054:	0640006f          	j	120b8 <_vfprintf_r+0x1c70>
   12058:	ff0d0d1b          	addiw	s10,s10,-16
   1205c:	05ab5e63          	bge	s6,s10,120b8 <_vfprintf_r+0x1c70>
   12060:	0016069b          	addiw	a3,a2,1
   12064:	01078793          	addi	a5,a5,16
   12068:	00010617          	auipc	a2,0x10
   1206c:	d6860613          	addi	a2,a2,-664 # 21dd0 <zeroes.0>
   12070:	00c73023          	sd	a2,0(a4)
   12074:	01673423          	sd	s6,8(a4)
   12078:	10f13823          	sd	a5,272(sp)
   1207c:	0006861b          	sext.w	a2,a3
   12080:	10d12423          	sw	a3,264(sp)
   12084:	01070713          	addi	a4,a4,16
   12088:	fcc8d8e3          	bge	a7,a2,12058 <_vfprintf_r+0x1c10>
   1208c:	10010613          	addi	a2,sp,256
   12090:	000c0593          	mv	a1,s8
   12094:	000c8513          	mv	a0,s9
   12098:	690090ef          	jal	ra,1b728 <__sprint_r>
   1209c:	b2051263          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   120a0:	ff0d0d1b          	addiw	s10,s10,-16
   120a4:	11013783          	ld	a5,272(sp)
   120a8:	10812603          	lw	a2,264(sp)
   120ac:	18010713          	addi	a4,sp,384
   120b0:	00700893          	li	a7,7
   120b4:	fbab46e3          	blt	s6,s10,12060 <_vfprintf_r+0x1c18>
   120b8:	0016061b          	addiw	a2,a2,1
   120bc:	00010697          	auipc	a3,0x10
   120c0:	d1468693          	addi	a3,a3,-748 # 21dd0 <zeroes.0>
   120c4:	01a787b3          	add	a5,a5,s10
   120c8:	00d73023          	sd	a3,0(a4)
   120cc:	01a73423          	sd	s10,8(a4)
   120d0:	10f13823          	sd	a5,272(sp)
   120d4:	0006069b          	sext.w	a3,a2
   120d8:	10c12423          	sw	a2,264(sp)
   120dc:	4ed8c063          	blt	a7,a3,125bc <_vfprintf_r+0x2174>
   120e0:	00044603          	lbu	a2,0(s0)
   120e4:	01070713          	addi	a4,a4,16
   120e8:	00c484b3          	add	s1,s1,a2
   120ec:	f51ff06f          	j	1203c <_vfprintf_r+0x1bf4>
   120f0:	10010613          	addi	a2,sp,256
   120f4:	000c0593          	mv	a1,s8
   120f8:	000c8513          	mv	a0,s9
   120fc:	62c090ef          	jal	ra,1b728 <__sprint_r>
   12100:	ac051063          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   12104:	11013783          	ld	a5,272(sp)
   12108:	18010713          	addi	a4,sp,384
   1210c:	00700893          	li	a7,7
   12110:	ec9ff06f          	j	11fd8 <_vfprintf_r+0x1b90>
   12114:	10010613          	addi	a2,sp,256
   12118:	000c0593          	mv	a1,s8
   1211c:	000c8513          	mv	a0,s9
   12120:	608090ef          	jal	ra,1b728 <__sprint_r>
   12124:	a8051e63          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   12128:	00044603          	lbu	a2,0(s0)
   1212c:	11013783          	ld	a5,272(sp)
   12130:	18010713          	addi	a4,sp,384
   12134:	0006069b          	sext.w	a3,a2
   12138:	00700893          	li	a7,7
   1213c:	ee9ff06f          	j	12024 <_vfprintf_r+0x1bdc>
   12140:	0016869b          	addiw	a3,a3,1
   12144:	01070d93          	addi	s11,a4,16
   12148:	00070493          	mv	s1,a4
   1214c:	b01fe06f          	j	10c4c <_vfprintf_r+0x804>
   12150:	10010613          	addi	a2,sp,256
   12154:	000c0593          	mv	a1,s8
   12158:	000c8513          	mv	a0,s9
   1215c:	5cc090ef          	jal	ra,1b728 <__sprint_r>
   12160:	a6051063          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   12164:	0d812603          	lw	a2,216(sp)
   12168:	11013783          	ld	a5,272(sp)
   1216c:	18010d93          	addi	s11,sp,384
   12170:	b1dff06f          	j	11c8c <_vfprintf_r+0x1844>
   12174:	00010d17          	auipc	s10,0x10
   12178:	a84d0d13          	addi	s10,s10,-1404 # 21bf8 <__clzdi2+0x6c>
   1217c:	c41ff06f          	j	11dbc <_vfprintf_r+0x1974>
   12180:	10010613          	addi	a2,sp,256
   12184:	000c0593          	mv	a1,s8
   12188:	000c8513          	mv	a0,s9
   1218c:	59c090ef          	jal	ra,1b728 <__sprint_r>
   12190:	a2051863          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   12194:	11013783          	ld	a5,272(sp)
   12198:	18010d93          	addi	s11,sp,384
   1219c:	cb4ff06f          	j	11650 <_vfprintf_r+0x1208>
   121a0:	00600b93          	li	s7,6
   121a4:	8e9ff06f          	j	11a8c <_vfprintf_r+0x1644>
   121a8:	02013683          	ld	a3,32(sp)
   121ac:	00dd0833          	add	a6,s10,a3
   121b0:	40e6863b          	subw	a2,a3,a4
   121b4:	40980e3b          	subw	t3,a6,s1
   121b8:	00060493          	mv	s1,a2
   121bc:	00ce5463          	bge	t3,a2,121c4 <_vfprintf_r+0x1d7c>
   121c0:	000e0493          	mv	s1,t3
   121c4:	0004899b          	sext.w	s3,s1
   121c8:	d4cff06f          	j	11714 <_vfprintf_r+0x12cc>
   121cc:	02099993          	slli	s3,s3,0x20
   121d0:	0209d993          	srli	s3,s3,0x20
   121d4:	b95fe06f          	j	10d68 <_vfprintf_r+0x920>
   121d8:	00013783          	ld	a5,0(sp)
   121dc:	00040d13          	mv	s10,s0
   121e0:	00f71023          	sh	a5,0(a4)
   121e4:	dbcfe06f          	j	107a0 <_vfprintf_r+0x358>
   121e8:	02099993          	slli	s3,s3,0x20
   121ec:	0209d993          	srli	s3,s3,0x20
   121f0:	00d13423          	sd	a3,8(sp)
   121f4:	00100793          	li	a5,1
   121f8:	b81fe06f          	j	10d78 <_vfprintf_r+0x930>
   121fc:	02099993          	slli	s3,s3,0x20
   12200:	0209d993          	srli	s3,s3,0x20
   12204:	fd8ff06f          	j	119dc <_vfprintf_r+0x1594>
   12208:	00813783          	ld	a5,8(sp)
   1220c:	0007a983          	lw	s3,0(a5)
   12210:	00098793          	mv	a5,s3
   12214:	df5fe06f          	j	11008 <_vfprintf_r+0xbc0>
   12218:	10010613          	addi	a2,sp,256
   1221c:	000c0593          	mv	a1,s8
   12220:	000c8513          	mv	a0,s9
   12224:	504090ef          	jal	ra,1b728 <__sprint_r>
   12228:	d8cfe06f          	j	107b4 <_vfprintf_r+0x36c>
   1222c:	02d00793          	li	a5,45
   12230:	0cf107a3          	sb	a5,207(sp)
   12234:	cc9ff06f          	j	11efc <_vfprintf_r+0x1ab4>
   12238:	10010613          	addi	a2,sp,256
   1223c:	000c0593          	mv	a1,s8
   12240:	000c8513          	mv	a0,s9
   12244:	4e4090ef          	jal	ra,1b728 <__sprint_r>
   12248:	96051c63          	bnez	a0,113c0 <_vfprintf_r+0xf78>
   1224c:	0d812603          	lw	a2,216(sp)
   12250:	11013783          	ld	a5,272(sp)
   12254:	10812703          	lw	a4,264(sp)
   12258:	18010313          	addi	t1,sp,384
   1225c:	a6065ee3          	bgez	a2,11cd8 <_vfprintf_r+0x1890>
   12260:	bc5ff06f          	j	11e24 <_vfprintf_r+0x19dc>
   12264:	03000793          	li	a5,48
   12268:	0cf10823          	sb	a5,208(sp)
   1226c:	05800713          	li	a4,88
   12270:	00296793          	ori	a5,s2,2
   12274:	0007879b          	sext.w	a5,a5
   12278:	0ce108a3          	sb	a4,209(sp)
   1227c:	02f13823          	sd	a5,48(sp)
   12280:	06300713          	li	a4,99
   12284:	00013823          	sd	zero,16(sp)
   12288:	11810d13          	addi	s10,sp,280
   1228c:	53c74063          	blt	a4,t3,127ac <_vfprintf_r+0x2364>
   12290:	0f813a83          	ld	s5,248(sp)
   12294:	fdf4f793          	andi	a5,s1,-33
   12298:	10296913          	ori	s2,s2,258
   1229c:	02f13423          	sd	a5,40(sp)
   122a0:	06013023          	sd	zero,96(sp)
   122a4:	0f013b83          	ld	s7,240(sp)
   122a8:	0009091b          	sext.w	s2,s2
   122ac:	2e0acc63          	bltz	s5,125a4 <_vfprintf_r+0x215c>
   122b0:	06100793          	li	a5,97
   122b4:	6cf48263          	beq	s1,a5,12978 <_vfprintf_r+0x2530>
   122b8:	04100793          	li	a5,65
   122bc:	00f48463          	beq	s1,a5,122c4 <_vfprintf_r+0x1e7c>
   122c0:	e88fe06f          	j	10948 <_vfprintf_r+0x500>
   122c4:	000a8593          	mv	a1,s5
   122c8:	000b8513          	mv	a0,s7
   122cc:	01c13c23          	sd	t3,24(sp)
   122d0:	49c0f0ef          	jal	ra,2176c <__trunctfdf2>
   122d4:	0d810513          	addi	a0,sp,216
   122d8:	644060ef          	jal	ra,1891c <frexp>
   122dc:	3700f0ef          	jal	ra,2164c <__extenddftf2>
   122e0:	00010797          	auipc	a5,0x10
   122e4:	b2078793          	addi	a5,a5,-1248 # 21e00 <zeroes.0+0x30>
   122e8:	0007b603          	ld	a2,0(a5)
   122ec:	0087b683          	ld	a3,8(a5)
   122f0:	5ed0d0ef          	jal	ra,200dc <__multf3>
   122f4:	00000613          	li	a2,0
   122f8:	00000693          	li	a3,0
   122fc:	00050993          	mv	s3,a0
   12300:	00058b93          	mv	s7,a1
   12304:	3410d0ef          	jal	ra,1fe44 <__eqtf2>
   12308:	01813e03          	ld	t3,24(sp)
   1230c:	00051663          	bnez	a0,12318 <_vfprintf_r+0x1ed0>
   12310:	00100713          	li	a4,1
   12314:	0ce12c23          	sw	a4,216(sp)
   12318:	00010797          	auipc	a5,0x10
   1231c:	8f878793          	addi	a5,a5,-1800 # 21c10 <__clzdi2+0x84>
   12320:	00f13c23          	sd	a5,24(sp)
   12324:	020e1713          	slli	a4,t3,0x20
   12328:	00010697          	auipc	a3,0x10
   1232c:	ab868693          	addi	a3,a3,-1352 # 21de0 <zeroes.0+0x10>
   12330:	02075713          	srli	a4,a4,0x20
   12334:	0006b783          	ld	a5,0(a3)
   12338:	00170713          	addi	a4,a4,1
   1233c:	0086b683          	ld	a3,8(a3)
   12340:	00ed0733          	add	a4,s10,a4
   12344:	02e13023          	sd	a4,32(sp)
   12348:	01cd073b          	addw	a4,s10,t3
   1234c:	07413c23          	sd	s4,120(sp)
   12350:	0bb13023          	sd	s11,160(sp)
   12354:	0b913423          	sd	s9,168(sp)
   12358:	0b813823          	sd	s8,176(sp)
   1235c:	0ba13c23          	sd	s10,184(sp)
   12360:	000d0c13          	mv	s8,s10
   12364:	00098c93          	mv	s9,s3
   12368:	08913423          	sd	s1,136(sp)
   1236c:	08813823          	sd	s0,144(sp)
   12370:	09213c23          	sd	s2,152(sp)
   12374:	09c13023          	sd	t3,128(sp)
   12378:	000b8d13          	mv	s10,s7
   1237c:	00070a13          	mv	s4,a4
   12380:	00078d93          	mv	s11,a5
   12384:	00068993          	mv	s3,a3
   12388:	0140006f          	j	1239c <_vfprintf_r+0x1f54>
   1238c:	00000613          	li	a2,0
   12390:	00000693          	li	a3,0
   12394:	2b10d0ef          	jal	ra,1fe44 <__eqtf2>
   12398:	56050863          	beqz	a0,12908 <_vfprintf_r+0x24c0>
   1239c:	000d8613          	mv	a2,s11
   123a0:	00098693          	mv	a3,s3
   123a4:	000c8513          	mv	a0,s9
   123a8:	000d0593          	mv	a1,s10
   123ac:	5310d0ef          	jal	ra,200dc <__multf3>
   123b0:	00058a93          	mv	s5,a1
   123b4:	00050b93          	mv	s7,a0
   123b8:	1380f0ef          	jal	ra,214f0 <__fixtfsi>
   123bc:	0005041b          	sext.w	s0,a0
   123c0:	2040f0ef          	jal	ra,215c4 <__floatsitf>
   123c4:	00058693          	mv	a3,a1
   123c8:	00050613          	mv	a2,a0
   123cc:	000a8593          	mv	a1,s5
   123d0:	000b8513          	mv	a0,s7
   123d4:	61c0e0ef          	jal	ra,209f0 <__subtf3>
   123d8:	01813783          	ld	a5,24(sp)
   123dc:	000c0b93          	mv	s7,s8
   123e0:	001c0c13          	addi	s8,s8,1
   123e4:	00878733          	add	a4,a5,s0
   123e8:	00074683          	lbu	a3,0(a4)
   123ec:	02013783          	ld	a5,32(sp)
   123f0:	00050493          	mv	s1,a0
   123f4:	fedc0fa3          	sb	a3,-1(s8)
   123f8:	00058913          	mv	s2,a1
   123fc:	00050c93          	mv	s9,a0
   12400:	00058d13          	mv	s10,a1
   12404:	418a0abb          	subw	s5,s4,s8
   12408:	f98792e3          	bne	a5,s8,1238c <_vfprintf_r+0x1f44>
   1240c:	08013e03          	ld	t3,128(sp)
   12410:	000c0a93          	mv	s5,s8
   12414:	08813023          	sd	s0,128(sp)
   12418:	0a013d83          	ld	s11,160(sp)
   1241c:	09013403          	ld	s0,144(sp)
   12420:	0a813c83          	ld	s9,168(sp)
   12424:	0b013c03          	ld	s8,176(sp)
   12428:	0b813d03          	ld	s10,184(sp)
   1242c:	08813483          	ld	s1,136(sp)
   12430:	09813903          	ld	s2,152(sp)
   12434:	fff00793          	li	a5,-1
   12438:	07813a03          	ld	s4,120(sp)
   1243c:	00050e93          	mv	t4,a0
   12440:	07713c23          	sd	s7,120(sp)
   12444:	00058713          	mv	a4,a1
   12448:	02f13023          	sd	a5,32(sp)
   1244c:	00010797          	auipc	a5,0x10
   12450:	9a478793          	addi	a5,a5,-1628 # 21df0 <zeroes.0+0x20>
   12454:	0007bb83          	ld	s7,0(a5)
   12458:	0087b983          	ld	s3,8(a5)
   1245c:	000e8513          	mv	a0,t4
   12460:	000b8613          	mv	a2,s7
   12464:	00098693          	mv	a3,s3
   12468:	00070593          	mv	a1,a4
   1246c:	09c13423          	sd	t3,136(sp)
   12470:	09d13c23          	sd	t4,152(sp)
   12474:	08e13823          	sd	a4,144(sp)
   12478:	29d0d0ef          	jal	ra,1ff14 <__getf2>
   1247c:	08813e03          	ld	t3,136(sp)
   12480:	40a04263          	bgtz	a0,12884 <_vfprintf_r+0x243c>
   12484:	09813e83          	ld	t4,152(sp)
   12488:	09013703          	ld	a4,144(sp)
   1248c:	000b8613          	mv	a2,s7
   12490:	00098693          	mv	a3,s3
   12494:	000e8513          	mv	a0,t4
   12498:	00070593          	mv	a1,a4
   1249c:	1a90d0ef          	jal	ra,1fe44 <__eqtf2>
   124a0:	08813e03          	ld	t3,136(sp)
   124a4:	00051863          	bnez	a0,124b4 <_vfprintf_r+0x206c>
   124a8:	08013783          	ld	a5,128(sp)
   124ac:	0017f793          	andi	a5,a5,1
   124b0:	3c079a63          	bnez	a5,12884 <_vfprintf_r+0x243c>
   124b4:	02013683          	ld	a3,32(sp)
   124b8:	03000713          	li	a4,48
   124bc:	0016879b          	addiw	a5,a3,1
   124c0:	00fa87b3          	add	a5,s5,a5
   124c4:	0006c863          	bltz	a3,124d4 <_vfprintf_r+0x208c>
   124c8:	001a8a93          	addi	s5,s5,1
   124cc:	feea8fa3          	sb	a4,-1(s5)
   124d0:	ff579ce3          	bne	a5,s5,124c8 <_vfprintf_r+0x2080>
   124d4:	41aa87bb          	subw	a5,s5,s10
   124d8:	02f13023          	sd	a5,32(sp)
   124dc:	ce4fe06f          	j	109c0 <_vfprintf_r+0x578>
   124e0:	000d8d13          	mv	s10,s11
   124e4:	00070d93          	mv	s11,a4
   124e8:	02013703          	ld	a4,32(sp)
   124ec:	04813c23          	sd	s0,88(sp)
   124f0:	06013903          	ld	s2,96(sp)
   124f4:	00ed0733          	add	a4,s10,a4
   124f8:	01813403          	ld	s0,24(sp)
   124fc:	07813a03          	ld	s4,120(sp)
   12500:	02813a83          	ld	s5,40(sp)
   12504:	96977a63          	bgeu	a4,s1,11678 <_vfprintf_r+0x1230>
   12508:	00070493          	mv	s1,a4
   1250c:	96cff06f          	j	11678 <_vfprintf_r+0x1230>
   12510:	01813703          	ld	a4,24(sp)
   12514:	ffd00793          	li	a5,-3
   12518:	00f74463          	blt	a4,a5,12520 <_vfprintf_r+0x20d8>
   1251c:	00ee5a63          	bge	t3,a4,12530 <_vfprintf_r+0x20e8>
   12520:	ffe4849b          	addiw	s1,s1,-2
   12524:	fdf4f793          	andi	a5,s1,-33
   12528:	02f13423          	sd	a5,40(sp)
   1252c:	cbcfe06f          	j	109e8 <_vfprintf_r+0x5a0>
   12530:	01813703          	ld	a4,24(sp)
   12534:	02013783          	ld	a5,32(sp)
   12538:	20f74663          	blt	a4,a5,12744 <_vfprintf_r+0x22fc>
   1253c:	03013783          	ld	a5,48(sp)
   12540:	00070b93          	mv	s7,a4
   12544:	0017f793          	andi	a5,a5,1
   12548:	00078663          	beqz	a5,12554 <_vfprintf_r+0x210c>
   1254c:	03813783          	ld	a5,56(sp)
   12550:	00e78bbb          	addw	s7,a5,a4
   12554:	03013783          	ld	a5,48(sp)
   12558:	4007f793          	andi	a5,a5,1024
   1255c:	00078663          	beqz	a5,12568 <_vfprintf_r+0x2120>
   12560:	01813783          	ld	a5,24(sp)
   12564:	48f04663          	bgtz	a5,129f0 <_vfprintf_r+0x25a8>
   12568:	fffbca93          	not	s5,s7
   1256c:	43fada93          	srai	s5,s5,0x3f
   12570:	015bfab3          	and	s5,s7,s5
   12574:	000a8a9b          	sext.w	s5,s5
   12578:	06700493          	li	s1,103
   1257c:	02013823          	sd	zero,48(sp)
   12580:	02013423          	sd	zero,40(sp)
   12584:	da4fe06f          	j	10b28 <_vfprintf_r+0x6e0>
   12588:	0cf14783          	lbu	a5,207(sp)
   1258c:	00000e13          	li	t3,0
   12590:	00078463          	beqz	a5,12598 <_vfprintf_r+0x2150>
   12594:	facfe06f          	j	10d40 <_vfprintf_r+0x8f8>
   12598:	8e8fe06f          	j	10680 <_vfprintf_r+0x238>
   1259c:	00013823          	sd	zero,16(sp)
   125a0:	00078913          	mv	s2,a5
   125a4:	fff00793          	li	a5,-1
   125a8:	03f79793          	slli	a5,a5,0x3f
   125ac:	00facab3          	xor	s5,s5,a5
   125b0:	02d00793          	li	a5,45
   125b4:	06f13023          	sd	a5,96(sp)
   125b8:	cf9ff06f          	j	122b0 <_vfprintf_r+0x1e68>
   125bc:	10010613          	addi	a2,sp,256
   125c0:	000c0593          	mv	a1,s8
   125c4:	000c8513          	mv	a0,s9
   125c8:	160090ef          	jal	ra,1b728 <__sprint_r>
   125cc:	00050463          	beqz	a0,125d4 <_vfprintf_r+0x218c>
   125d0:	df1fe06f          	j	113c0 <_vfprintf_r+0xf78>
   125d4:	00044603          	lbu	a2,0(s0)
   125d8:	11013783          	ld	a5,272(sp)
   125dc:	18010713          	addi	a4,sp,384
   125e0:	00700893          	li	a7,7
   125e4:	00c484b3          	add	s1,s1,a2
   125e8:	a55ff06f          	j	1203c <_vfprintf_r+0x1bf4>
   125ec:	000e0713          	mv	a4,t3
   125f0:	0d810793          	addi	a5,sp,216
   125f4:	0e810893          	addi	a7,sp,232
   125f8:	0dc10813          	addi	a6,sp,220
   125fc:	00300693          	li	a3,3
   12600:	000b8593          	mv	a1,s7
   12604:	000a8613          	mv	a2,s5
   12608:	000c8513          	mv	a0,s9
   1260c:	01c13c23          	sd	t3,24(sp)
   12610:	749020ef          	jal	ra,15558 <_ldtoa_r>
   12614:	00054703          	lbu	a4,0(a0)
   12618:	03000793          	li	a5,48
   1261c:	01813e03          	ld	t3,24(sp)
   12620:	00050d13          	mv	s10,a0
   12624:	06f70063          	beq	a4,a5,12684 <_vfprintf_r+0x223c>
   12628:	0d812783          	lw	a5,216(sp)
   1262c:	01c787b3          	add	a5,a5,t3
   12630:	00fd09b3          	add	s3,s10,a5
   12634:	00000613          	li	a2,0
   12638:	00000693          	li	a3,0
   1263c:	000b8513          	mv	a0,s7
   12640:	000a8593          	mv	a1,s5
   12644:	01c13c23          	sd	t3,24(sp)
   12648:	7fc0d0ef          	jal	ra,1fe44 <__eqtf2>
   1264c:	01813e03          	ld	t3,24(sp)
   12650:	00098793          	mv	a5,s3
   12654:	00051463          	bnez	a0,1265c <_vfprintf_r+0x2214>
   12658:	b60fe06f          	j	109b8 <_vfprintf_r+0x570>
   1265c:	0e813783          	ld	a5,232(sp)
   12660:	0137e463          	bltu	a5,s3,12668 <_vfprintf_r+0x2220>
   12664:	b54fe06f          	j	109b8 <_vfprintf_r+0x570>
   12668:	03000693          	li	a3,48
   1266c:	00178713          	addi	a4,a5,1
   12670:	0ee13423          	sd	a4,232(sp)
   12674:	00d78023          	sb	a3,0(a5)
   12678:	0e813783          	ld	a5,232(sp)
   1267c:	ff37e8e3          	bltu	a5,s3,1266c <_vfprintf_r+0x2224>
   12680:	b38fe06f          	j	109b8 <_vfprintf_r+0x570>
   12684:	00000613          	li	a2,0
   12688:	00000693          	li	a3,0
   1268c:	000b8513          	mv	a0,s7
   12690:	000a8593          	mv	a1,s5
   12694:	01c13c23          	sd	t3,24(sp)
   12698:	7ac0d0ef          	jal	ra,1fe44 <__eqtf2>
   1269c:	01813e03          	ld	t3,24(sp)
   126a0:	f80504e3          	beqz	a0,12628 <_vfprintf_r+0x21e0>
   126a4:	00100713          	li	a4,1
   126a8:	41c707bb          	subw	a5,a4,t3
   126ac:	0cf12c23          	sw	a5,216(sp)
   126b0:	f7dff06f          	j	1262c <_vfprintf_r+0x21e4>
   126b4:	02d00793          	li	a5,45
   126b8:	0cf107a3          	sb	a5,207(sp)
   126bc:	ef0ff06f          	j	11dac <_vfprintf_r+0x1964>
   126c0:	10010613          	addi	a2,sp,256
   126c4:	000c0593          	mv	a1,s8
   126c8:	000c8513          	mv	a0,s9
   126cc:	05c090ef          	jal	ra,1b728 <__sprint_r>
   126d0:	00050463          	beqz	a0,126d8 <_vfprintf_r+0x2290>
   126d4:	cedfe06f          	j	113c0 <_vfprintf_r+0xf78>
   126d8:	0d812703          	lw	a4,216(sp)
   126dc:	11013783          	ld	a5,272(sp)
   126e0:	18010d93          	addi	s11,sp,384
   126e4:	fe1fe06f          	j	116c4 <_vfprintf_r+0x127c>
   126e8:	0cf14783          	lbu	a5,207(sp)
   126ec:	01313423          	sd	s3,8(sp)
   126f0:	02013823          	sd	zero,48(sp)
   126f4:	02013423          	sd	zero,40(sp)
   126f8:	00013c23          	sd	zero,24(sp)
   126fc:	000e0a93          	mv	s5,t3
   12700:	000e0b93          	mv	s7,t3
   12704:	00000e13          	li	t3,0
   12708:	00078463          	beqz	a5,12710 <_vfprintf_r+0x22c8>
   1270c:	e34fe06f          	j	10d40 <_vfprintf_r+0x8f8>
   12710:	f71fd06f          	j	10680 <_vfprintf_r+0x238>
   12714:	10010613          	addi	a2,sp,256
   12718:	000c0593          	mv	a1,s8
   1271c:	000c8513          	mv	a0,s9
   12720:	008090ef          	jal	ra,1b728 <__sprint_r>
   12724:	00050463          	beqz	a0,1272c <_vfprintf_r+0x22e4>
   12728:	c99fe06f          	j	113c0 <_vfprintf_r+0xf78>
   1272c:	0d812603          	lw	a2,216(sp)
   12730:	02013703          	ld	a4,32(sp)
   12734:	11013783          	ld	a5,272(sp)
   12738:	18010d93          	addi	s11,sp,384
   1273c:	40c7063b          	subw	a2,a4,a2
   12740:	fd5fe06f          	j	11714 <_vfprintf_r+0x12cc>
   12744:	02013703          	ld	a4,32(sp)
   12748:	03813783          	ld	a5,56(sp)
   1274c:	06700493          	li	s1,103
   12750:	00e78bbb          	addw	s7,a5,a4
   12754:	01813703          	ld	a4,24(sp)
   12758:	32e05463          	blez	a4,12a80 <_vfprintf_r+0x2638>
   1275c:	03013783          	ld	a5,48(sp)
   12760:	4007f793          	andi	a5,a5,1024
   12764:	28079863          	bnez	a5,129f4 <_vfprintf_r+0x25ac>
   12768:	fffbca93          	not	s5,s7
   1276c:	43fada93          	srai	s5,s5,0x3f
   12770:	015bfab3          	and	s5,s7,s5
   12774:	000a8a9b          	sext.w	s5,s5
   12778:	e05ff06f          	j	1257c <_vfprintf_r+0x2134>
   1277c:	03013783          	ld	a5,48(sp)
   12780:	01813703          	ld	a4,24(sp)
   12784:	0017f793          	andi	a5,a5,1
   12788:	00fe67b3          	or	a5,t3,a5
   1278c:	32e05463          	blez	a4,12ab4 <_vfprintf_r+0x266c>
   12790:	24079663          	bnez	a5,129dc <_vfprintf_r+0x2594>
   12794:	01813b83          	ld	s7,24(sp)
   12798:	06600493          	li	s1,102
   1279c:	fc1ff06f          	j	1275c <_vfprintf_r+0x2314>
   127a0:	fff00793          	li	a5,-1
   127a4:	00f13023          	sd	a5,0(sp)
   127a8:	81cfe06f          	j	107c4 <_vfprintf_r+0x37c>
   127ac:	001e059b          	addiw	a1,t3,1
   127b0:	000c8513          	mv	a0,s9
   127b4:	01c13823          	sd	t3,16(sp)
   127b8:	480040ef          	jal	ra,16c38 <_malloc_r>
   127bc:	01013e03          	ld	t3,16(sp)
   127c0:	00050d13          	mv	s10,a0
   127c4:	38050263          	beqz	a0,12b48 <_vfprintf_r+0x2700>
   127c8:	00a13823          	sd	a0,16(sp)
   127cc:	ac5ff06f          	j	12290 <_vfprintf_r+0x1e48>
   127d0:	01cd09b3          	add	s3,s10,t3
   127d4:	e61ff06f          	j	12634 <_vfprintf_r+0x21ec>
   127d8:	00090a93          	mv	s5,s2
   127dc:	d45fe06f          	j	11520 <_vfprintf_r+0x10d8>
   127e0:	03000793          	li	a5,48
   127e4:	0cf10823          	sb	a5,208(sp)
   127e8:	07800713          	li	a4,120
   127ec:	a85ff06f          	j	12270 <_vfprintf_r+0x1e28>
   127f0:	001e099b          	addiw	s3,t3,1
   127f4:	00098713          	mv	a4,s3
   127f8:	0e810893          	addi	a7,sp,232
   127fc:	0dc10813          	addi	a6,sp,220
   12800:	0d810793          	addi	a5,sp,216
   12804:	00200693          	li	a3,2
   12808:	000b8593          	mv	a1,s7
   1280c:	000a8613          	mv	a2,s5
   12810:	000c8513          	mv	a0,s9
   12814:	01c13c23          	sd	t3,24(sp)
   12818:	541020ef          	jal	ra,15558 <_ldtoa_r>
   1281c:	00050d13          	mv	s10,a0
   12820:	01813e03          	ld	t3,24(sp)
   12824:	013d09b3          	add	s3,s10,s3
   12828:	e0dff06f          	j	12634 <_vfprintf_r+0x21ec>
   1282c:	0017069b          	addiw	a3,a4,1
   12830:	009787b3          	add	a5,a5,s1
   12834:	0000f717          	auipc	a4,0xf
   12838:	59c70713          	addi	a4,a4,1436 # 21dd0 <zeroes.0>
   1283c:	00e33023          	sd	a4,0(t1)
   12840:	00933423          	sd	s1,8(t1)
   12844:	0006871b          	sext.w	a4,a3
   12848:	10d12423          	sw	a3,264(sp)
   1284c:	10f13823          	sd	a5,272(sp)
   12850:	00700693          	li	a3,7
   12854:	01030313          	addi	t1,t1,16
   12858:	c8e6d063          	bge	a3,a4,11cd8 <_vfprintf_r+0x1890>
   1285c:	10010613          	addi	a2,sp,256
   12860:	000c0593          	mv	a1,s8
   12864:	000c8513          	mv	a0,s9
   12868:	6c1080ef          	jal	ra,1b728 <__sprint_r>
   1286c:	00050463          	beqz	a0,12874 <_vfprintf_r+0x242c>
   12870:	b51fe06f          	j	113c0 <_vfprintf_r+0xf78>
   12874:	11013783          	ld	a5,272(sp)
   12878:	10812703          	lw	a4,264(sp)
   1287c:	18010313          	addi	t1,sp,384
   12880:	c58ff06f          	j	11cd8 <_vfprintf_r+0x1890>
   12884:	07813783          	ld	a5,120(sp)
   12888:	0ef13423          	sd	a5,232(sp)
   1288c:	01813783          	ld	a5,24(sp)
   12890:	fffac703          	lbu	a4,-1(s5)
   12894:	00f7c683          	lbu	a3,15(a5)
   12898:	000a8793          	mv	a5,s5
   1289c:	02e69063          	bne	a3,a4,128bc <_vfprintf_r+0x2474>
   128a0:	03000613          	li	a2,48
   128a4:	fec78fa3          	sb	a2,-1(a5)
   128a8:	0e813783          	ld	a5,232(sp)
   128ac:	fff78713          	addi	a4,a5,-1
   128b0:	0ee13423          	sd	a4,232(sp)
   128b4:	fff7c703          	lbu	a4,-1(a5)
   128b8:	fee686e3          	beq	a3,a4,128a4 <_vfprintf_r+0x245c>
   128bc:	0017069b          	addiw	a3,a4,1
   128c0:	03900613          	li	a2,57
   128c4:	0ff6f693          	andi	a3,a3,255
   128c8:	00c70663          	beq	a4,a2,128d4 <_vfprintf_r+0x248c>
   128cc:	fed78fa3          	sb	a3,-1(a5)
   128d0:	c05ff06f          	j	124d4 <_vfprintf_r+0x208c>
   128d4:	01813703          	ld	a4,24(sp)
   128d8:	00a74683          	lbu	a3,10(a4)
   128dc:	fed78fa3          	sb	a3,-1(a5)
   128e0:	bf5ff06f          	j	124d4 <_vfprintf_r+0x208c>
   128e4:	00f72023          	sw	a5,0(a4)
   128e8:	00040d13          	mv	s10,s0
   128ec:	eb5fd06f          	j	107a0 <_vfprintf_r+0x358>
   128f0:	00600e13          	li	t3,6
   128f4:	82cfe06f          	j	10920 <_vfprintf_r+0x4d8>
   128f8:	000e0463          	beqz	t3,12900 <_vfprintf_r+0x24b8>
   128fc:	824fe06f          	j	10920 <_vfprintf_r+0x4d8>
   12900:	00100e13          	li	t3,1
   12904:	81cfe06f          	j	10920 <_vfprintf_r+0x4d8>
   12908:	07813a03          	ld	s4,120(sp)
   1290c:	08013e03          	ld	t3,128(sp)
   12910:	03513023          	sd	s5,32(sp)
   12914:	08813023          	sd	s0,128(sp)
   12918:	000c0a93          	mv	s5,s8
   1291c:	00048e93          	mv	t4,s1
   12920:	00090713          	mv	a4,s2
   12924:	0a013d83          	ld	s11,160(sp)
   12928:	09013403          	ld	s0,144(sp)
   1292c:	0a813c83          	ld	s9,168(sp)
   12930:	0b013c03          	ld	s8,176(sp)
   12934:	0b813d03          	ld	s10,184(sp)
   12938:	08813483          	ld	s1,136(sp)
   1293c:	09813903          	ld	s2,152(sp)
   12940:	07713c23          	sd	s7,120(sp)
   12944:	b09ff06f          	j	1244c <_vfprintf_r+0x2004>
   12948:	0e210713          	addi	a4,sp,226
   1294c:	00069863          	bnez	a3,1295c <_vfprintf_r+0x2514>
   12950:	03000793          	li	a5,48
   12954:	0ef10123          	sb	a5,226(sp)
   12958:	0e310713          	addi	a4,sp,227
   1295c:	20010693          	addi	a3,sp,512
   12960:	030a879b          	addiw	a5,s5,48
   12964:	40d706b3          	sub	a3,a4,a3
   12968:	00f70023          	sb	a5,0(a4)
   1296c:	1216879b          	addiw	a5,a3,289
   12970:	04f13823          	sd	a5,80(sp)
   12974:	964fe06f          	j	10ad8 <_vfprintf_r+0x690>
   12978:	000a8593          	mv	a1,s5
   1297c:	000b8513          	mv	a0,s7
   12980:	01c13c23          	sd	t3,24(sp)
   12984:	5e90e0ef          	jal	ra,2176c <__trunctfdf2>
   12988:	0d810513          	addi	a0,sp,216
   1298c:	791050ef          	jal	ra,1891c <frexp>
   12990:	4bd0e0ef          	jal	ra,2164c <__extenddftf2>
   12994:	0000f797          	auipc	a5,0xf
   12998:	46c78793          	addi	a5,a5,1132 # 21e00 <zeroes.0+0x30>
   1299c:	0007b603          	ld	a2,0(a5)
   129a0:	0087b683          	ld	a3,8(a5)
   129a4:	7380d0ef          	jal	ra,200dc <__multf3>
   129a8:	00000613          	li	a2,0
   129ac:	00000693          	li	a3,0
   129b0:	00050993          	mv	s3,a0
   129b4:	00058b93          	mv	s7,a1
   129b8:	48c0d0ef          	jal	ra,1fe44 <__eqtf2>
   129bc:	01813e03          	ld	t3,24(sp)
   129c0:	00051663          	bnez	a0,129cc <_vfprintf_r+0x2584>
   129c4:	00100713          	li	a4,1
   129c8:	0ce12c23          	sw	a4,216(sp)
   129cc:	0000f797          	auipc	a5,0xf
   129d0:	25c78793          	addi	a5,a5,604 # 21c28 <__clzdi2+0x9c>
   129d4:	00f13c23          	sd	a5,24(sp)
   129d8:	94dff06f          	j	12324 <_vfprintf_r+0x1edc>
   129dc:	03813783          	ld	a5,56(sp)
   129e0:	06600493          	li	s1,102
   129e4:	00e78bbb          	addw	s7,a5,a4
   129e8:	01cb8bbb          	addw	s7,s7,t3
   129ec:	d71ff06f          	j	1275c <_vfprintf_r+0x2314>
   129f0:	06700493          	li	s1,103
   129f4:	05813603          	ld	a2,88(sp)
   129f8:	0ff00713          	li	a4,255
   129fc:	00064783          	lbu	a5,0(a2)
   12a00:	12e78863          	beq	a5,a4,12b30 <_vfprintf_r+0x26e8>
   12a04:	01813703          	ld	a4,24(sp)
   12a08:	00000813          	li	a6,0
   12a0c:	00000513          	li	a0,0
   12a10:	0ff00693          	li	a3,255
   12a14:	0007859b          	sext.w	a1,a5
   12a18:	00e7de63          	bge	a5,a4,12a34 <_vfprintf_r+0x25ec>
   12a1c:	00164783          	lbu	a5,1(a2)
   12a20:	40b7073b          	subw	a4,a4,a1
   12a24:	04078863          	beqz	a5,12a74 <_vfprintf_r+0x262c>
   12a28:	0015051b          	addiw	a0,a0,1
   12a2c:	00160613          	addi	a2,a2,1
   12a30:	fed792e3          	bne	a5,a3,12a14 <_vfprintf_r+0x25cc>
   12a34:	04c13c23          	sd	a2,88(sp)
   12a38:	00e13c23          	sd	a4,24(sp)
   12a3c:	02a13423          	sd	a0,40(sp)
   12a40:	03013823          	sd	a6,48(sp)
   12a44:	02813783          	ld	a5,40(sp)
   12a48:	03013703          	ld	a4,48(sp)
   12a4c:	06813583          	ld	a1,104(sp)
   12a50:	00e7853b          	addw	a0,a5,a4
   12a54:	0140f0ef          	jal	ra,21a68 <__muldi3>
   12a58:	017507bb          	addw	a5,a0,s7
   12a5c:	00078b9b          	sext.w	s7,a5
   12a60:	fffbca93          	not	s5,s7
   12a64:	43fada93          	srai	s5,s5,0x3f
   12a68:	0157f7b3          	and	a5,a5,s5
   12a6c:	00078a9b          	sext.w	s5,a5
   12a70:	8b8fe06f          	j	10b28 <_vfprintf_r+0x6e0>
   12a74:	00064783          	lbu	a5,0(a2)
   12a78:	0018081b          	addiw	a6,a6,1
   12a7c:	fb5ff06f          	j	12a30 <_vfprintf_r+0x25e8>
   12a80:	40eb87bb          	subw	a5,s7,a4
   12a84:	0017879b          	addiw	a5,a5,1
   12a88:	00078b9b          	sext.w	s7,a5
   12a8c:	fffbca93          	not	s5,s7
   12a90:	43fada93          	srai	s5,s5,0x3f
   12a94:	0157f7b3          	and	a5,a5,s5
   12a98:	00078a9b          	sext.w	s5,a5
   12a9c:	ae1ff06f          	j	1257c <_vfprintf_r+0x2134>
   12aa0:	03013703          	ld	a4,48(sp)
   12aa4:	00177713          	andi	a4,a4,1
   12aa8:	00071463          	bnez	a4,12ab0 <_vfprintf_r+0x2668>
   12aac:	850fe06f          	j	10afc <_vfprintf_r+0x6b4>
   12ab0:	844fe06f          	j	10af4 <_vfprintf_r+0x6ac>
   12ab4:	00079a63          	bnez	a5,12ac8 <_vfprintf_r+0x2680>
   12ab8:	00100a93          	li	s5,1
   12abc:	06600493          	li	s1,102
   12ac0:	00100b93          	li	s7,1
   12ac4:	ab9ff06f          	j	1257c <_vfprintf_r+0x2134>
   12ac8:	03813783          	ld	a5,56(sp)
   12acc:	06600493          	li	s1,102
   12ad0:	0017869b          	addiw	a3,a5,1
   12ad4:	01c686bb          	addw	a3,a3,t3
   12ad8:	00068b9b          	sext.w	s7,a3
   12adc:	fffbca93          	not	s5,s7
   12ae0:	43fada93          	srai	s5,s5,0x3f
   12ae4:	0156f6b3          	and	a3,a3,s5
   12ae8:	00068a9b          	sext.w	s5,a3
   12aec:	a91ff06f          	j	1257c <_vfprintf_r+0x2134>
   12af0:	000d8713          	mv	a4,s11
   12af4:	e75fe06f          	j	11968 <_vfprintf_r+0x1520>
   12af8:	00813683          	ld	a3,8(sp)
   12afc:	0006a703          	lw	a4,0(a3)
   12b00:	00868693          	addi	a3,a3,8
   12b04:	00070e13          	mv	t3,a4
   12b08:	00075463          	bgez	a4,12b10 <_vfprintf_r+0x26c8>
   12b0c:	fff00e13          	li	t3,-1
   12b10:	00144483          	lbu	s1,1(s0)
   12b14:	000e0b9b          	sext.w	s7,t3
   12b18:	00d13423          	sd	a3,8(sp)
   12b1c:	00078413          	mv	s0,a5
   12b20:	ac5fd06f          	j	105e4 <_vfprintf_r+0x19c>
   12b24:	00200793          	li	a5,2
   12b28:	04f13823          	sd	a5,80(sp)
   12b2c:	fadfd06f          	j	10ad8 <_vfprintf_r+0x690>
   12b30:	02013823          	sd	zero,48(sp)
   12b34:	02013423          	sd	zero,40(sp)
   12b38:	f0dff06f          	j	12a44 <_vfprintf_r+0x25fc>
   12b3c:	000e0993          	mv	s3,t3
   12b40:	013d09b3          	add	s3,s10,s3
   12b44:	af1ff06f          	j	12634 <_vfprintf_r+0x21ec>
   12b48:	010c5783          	lhu	a5,16(s8)
   12b4c:	0407e793          	ori	a5,a5,64
   12b50:	00fc1823          	sh	a5,16(s8)
   12b54:	c61fd06f          	j	107b4 <_vfprintf_r+0x36c>

0000000000012b58 <vfprintf>:
   12b58:	00060693          	mv	a3,a2
   12b5c:	00058613          	mv	a2,a1
   12b60:	00050593          	mv	a1,a0
   12b64:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   12b68:	8e1fd06f          	j	10448 <_vfprintf_r>

0000000000012b6c <__sbprintf>:
   12b6c:	0105d783          	lhu	a5,16(a1)
   12b70:	0ac5ae03          	lw	t3,172(a1)
   12b74:	0125d303          	lhu	t1,18(a1)
   12b78:	0305b883          	ld	a7,48(a1)
   12b7c:	0405b803          	ld	a6,64(a1)
   12b80:	b3010113          	addi	sp,sp,-1232
   12b84:	ffd7f793          	andi	a5,a5,-3
   12b88:	40000713          	li	a4,1024
   12b8c:	4c813023          	sd	s0,1216(sp)
   12b90:	00f11823          	sh	a5,16(sp)
   12b94:	00058413          	mv	s0,a1
   12b98:	0b010793          	addi	a5,sp,176
   12b9c:	00010593          	mv	a1,sp
   12ba0:	4a913c23          	sd	s1,1208(sp)
   12ba4:	4b213823          	sd	s2,1200(sp)
   12ba8:	4c113423          	sd	ra,1224(sp)
   12bac:	00050913          	mv	s2,a0
   12bb0:	0bc12623          	sw	t3,172(sp)
   12bb4:	00611923          	sh	t1,18(sp)
   12bb8:	03113823          	sd	a7,48(sp)
   12bbc:	05013023          	sd	a6,64(sp)
   12bc0:	00f13023          	sd	a5,0(sp)
   12bc4:	00f13c23          	sd	a5,24(sp)
   12bc8:	00e12623          	sw	a4,12(sp)
   12bcc:	02e12023          	sw	a4,32(sp)
   12bd0:	02012423          	sw	zero,40(sp)
   12bd4:	875fd0ef          	jal	ra,10448 <_vfprintf_r>
   12bd8:	00050493          	mv	s1,a0
   12bdc:	02055c63          	bgez	a0,12c14 <__sbprintf+0xa8>
   12be0:	01015783          	lhu	a5,16(sp)
   12be4:	0407f793          	andi	a5,a5,64
   12be8:	00078863          	beqz	a5,12bf8 <__sbprintf+0x8c>
   12bec:	01045783          	lhu	a5,16(s0)
   12bf0:	0407e793          	ori	a5,a5,64
   12bf4:	00f41823          	sh	a5,16(s0)
   12bf8:	4c813083          	ld	ra,1224(sp)
   12bfc:	4c013403          	ld	s0,1216(sp)
   12c00:	4b013903          	ld	s2,1200(sp)
   12c04:	00048513          	mv	a0,s1
   12c08:	4b813483          	ld	s1,1208(sp)
   12c0c:	4d010113          	addi	sp,sp,1232
   12c10:	00008067          	ret
   12c14:	00010593          	mv	a1,sp
   12c18:	00090513          	mv	a0,s2
   12c1c:	504000ef          	jal	ra,13120 <_fflush_r>
   12c20:	fc0500e3          	beqz	a0,12be0 <__sbprintf+0x74>
   12c24:	fff00493          	li	s1,-1
   12c28:	fb9ff06f          	j	12be0 <__sbprintf+0x74>

0000000000012c2c <__swsetup_r>:
   12c2c:	fe010113          	addi	sp,sp,-32
   12c30:	00813823          	sd	s0,16(sp)
   12c34:	00913423          	sd	s1,8(sp)
   12c38:	00113c23          	sd	ra,24(sp)
   12c3c:	7581b783          	ld	a5,1880(gp) # 24b58 <_impure_ptr>
   12c40:	00050493          	mv	s1,a0
   12c44:	00058413          	mv	s0,a1
   12c48:	00078663          	beqz	a5,12c54 <__swsetup_r+0x28>
   12c4c:	0507a703          	lw	a4,80(a5)
   12c50:	08070463          	beqz	a4,12cd8 <__swsetup_r+0xac>
   12c54:	01041703          	lh	a4,16(s0)
   12c58:	03071793          	slli	a5,a4,0x30
   12c5c:	00877693          	andi	a3,a4,8
   12c60:	0307d793          	srli	a5,a5,0x30
   12c64:	08068863          	beqz	a3,12cf4 <__swsetup_r+0xc8>
   12c68:	01843683          	ld	a3,24(s0)
   12c6c:	0a068863          	beqz	a3,12d1c <__swsetup_r+0xf0>
   12c70:	0017f613          	andi	a2,a5,1
   12c74:	02060863          	beqz	a2,12ca4 <__swsetup_r+0x78>
   12c78:	02042603          	lw	a2,32(s0)
   12c7c:	00042623          	sw	zero,12(s0)
   12c80:	00000513          	li	a0,0
   12c84:	40c0063b          	negw	a2,a2
   12c88:	02c42423          	sw	a2,40(s0)
   12c8c:	02068a63          	beqz	a3,12cc0 <__swsetup_r+0x94>
   12c90:	01813083          	ld	ra,24(sp)
   12c94:	01013403          	ld	s0,16(sp)
   12c98:	00813483          	ld	s1,8(sp)
   12c9c:	02010113          	addi	sp,sp,32
   12ca0:	00008067          	ret
   12ca4:	0027f613          	andi	a2,a5,2
   12ca8:	00000593          	li	a1,0
   12cac:	00061463          	bnez	a2,12cb4 <__swsetup_r+0x88>
   12cb0:	02042583          	lw	a1,32(s0)
   12cb4:	00b42623          	sw	a1,12(s0)
   12cb8:	00000513          	li	a0,0
   12cbc:	fc069ae3          	bnez	a3,12c90 <__swsetup_r+0x64>
   12cc0:	0807f793          	andi	a5,a5,128
   12cc4:	fc0786e3          	beqz	a5,12c90 <__swsetup_r+0x64>
   12cc8:	04076713          	ori	a4,a4,64
   12ccc:	00e41823          	sh	a4,16(s0)
   12cd0:	fff00513          	li	a0,-1
   12cd4:	fbdff06f          	j	12c90 <__swsetup_r+0x64>
   12cd8:	00078513          	mv	a0,a5
   12cdc:	081000ef          	jal	ra,1355c <__sinit>
   12ce0:	01041703          	lh	a4,16(s0)
   12ce4:	03071793          	slli	a5,a4,0x30
   12ce8:	00877693          	andi	a3,a4,8
   12cec:	0307d793          	srli	a5,a5,0x30
   12cf0:	f6069ce3          	bnez	a3,12c68 <__swsetup_r+0x3c>
   12cf4:	0107f693          	andi	a3,a5,16
   12cf8:	08068263          	beqz	a3,12d7c <__swsetup_r+0x150>
   12cfc:	0047f793          	andi	a5,a5,4
   12d00:	04079463          	bnez	a5,12d48 <__swsetup_r+0x11c>
   12d04:	01843683          	ld	a3,24(s0)
   12d08:	00876713          	ori	a4,a4,8
   12d0c:	03071793          	slli	a5,a4,0x30
   12d10:	00e41823          	sh	a4,16(s0)
   12d14:	0307d793          	srli	a5,a5,0x30
   12d18:	f4069ce3          	bnez	a3,12c70 <__swsetup_r+0x44>
   12d1c:	2807f613          	andi	a2,a5,640
   12d20:	20000593          	li	a1,512
   12d24:	f4b606e3          	beq	a2,a1,12c70 <__swsetup_r+0x44>
   12d28:	00040593          	mv	a1,s0
   12d2c:	00048513          	mv	a0,s1
   12d30:	4a9030ef          	jal	ra,169d8 <__smakebuf_r>
   12d34:	01041703          	lh	a4,16(s0)
   12d38:	01843683          	ld	a3,24(s0)
   12d3c:	03071793          	slli	a5,a4,0x30
   12d40:	0307d793          	srli	a5,a5,0x30
   12d44:	f2dff06f          	j	12c70 <__swsetup_r+0x44>
   12d48:	05843583          	ld	a1,88(s0)
   12d4c:	00058e63          	beqz	a1,12d68 <__swsetup_r+0x13c>
   12d50:	07440793          	addi	a5,s0,116
   12d54:	00f58863          	beq	a1,a5,12d64 <__swsetup_r+0x138>
   12d58:	00048513          	mv	a0,s1
   12d5c:	1d9000ef          	jal	ra,13734 <_free_r>
   12d60:	01041703          	lh	a4,16(s0)
   12d64:	04043c23          	sd	zero,88(s0)
   12d68:	01843683          	ld	a3,24(s0)
   12d6c:	fdb77713          	andi	a4,a4,-37
   12d70:	00042423          	sw	zero,8(s0)
   12d74:	00d43023          	sd	a3,0(s0)
   12d78:	f91ff06f          	j	12d08 <__swsetup_r+0xdc>
   12d7c:	00900793          	li	a5,9
   12d80:	00f4a023          	sw	a5,0(s1)
   12d84:	04076713          	ori	a4,a4,64
   12d88:	00e41823          	sh	a4,16(s0)
   12d8c:	fff00513          	li	a0,-1
   12d90:	f01ff06f          	j	12c90 <__swsetup_r+0x64>

0000000000012d94 <__call_exitprocs>:
   12d94:	fb010113          	addi	sp,sp,-80
   12d98:	03413023          	sd	s4,32(sp)
   12d9c:	7481ba03          	ld	s4,1864(gp) # 24b48 <_global_impure_ptr>
   12da0:	03213823          	sd	s2,48(sp)
   12da4:	1f8a3903          	ld	s2,504(s4)
   12da8:	04113423          	sd	ra,72(sp)
   12dac:	04813023          	sd	s0,64(sp)
   12db0:	02913c23          	sd	s1,56(sp)
   12db4:	03313423          	sd	s3,40(sp)
   12db8:	01513c23          	sd	s5,24(sp)
   12dbc:	01613823          	sd	s6,16(sp)
   12dc0:	01713423          	sd	s7,8(sp)
   12dc4:	01813023          	sd	s8,0(sp)
   12dc8:	04090063          	beqz	s2,12e08 <__call_exitprocs+0x74>
   12dcc:	00050b13          	mv	s6,a0
   12dd0:	00058b93          	mv	s7,a1
   12dd4:	00100a93          	li	s5,1
   12dd8:	fff00993          	li	s3,-1
   12ddc:	00892483          	lw	s1,8(s2)
   12de0:	fff4841b          	addiw	s0,s1,-1
   12de4:	02044263          	bltz	s0,12e08 <__call_exitprocs+0x74>
   12de8:	00349493          	slli	s1,s1,0x3
   12dec:	009904b3          	add	s1,s2,s1
   12df0:	040b8463          	beqz	s7,12e38 <__call_exitprocs+0xa4>
   12df4:	2084b783          	ld	a5,520(s1)
   12df8:	05778063          	beq	a5,s7,12e38 <__call_exitprocs+0xa4>
   12dfc:	fff4041b          	addiw	s0,s0,-1
   12e00:	ff848493          	addi	s1,s1,-8
   12e04:	ff3416e3          	bne	s0,s3,12df0 <__call_exitprocs+0x5c>
   12e08:	04813083          	ld	ra,72(sp)
   12e0c:	04013403          	ld	s0,64(sp)
   12e10:	03813483          	ld	s1,56(sp)
   12e14:	03013903          	ld	s2,48(sp)
   12e18:	02813983          	ld	s3,40(sp)
   12e1c:	02013a03          	ld	s4,32(sp)
   12e20:	01813a83          	ld	s5,24(sp)
   12e24:	01013b03          	ld	s6,16(sp)
   12e28:	00813b83          	ld	s7,8(sp)
   12e2c:	00013c03          	ld	s8,0(sp)
   12e30:	05010113          	addi	sp,sp,80
   12e34:	00008067          	ret
   12e38:	00892783          	lw	a5,8(s2)
   12e3c:	0084b703          	ld	a4,8(s1)
   12e40:	fff7879b          	addiw	a5,a5,-1
   12e44:	06878263          	beq	a5,s0,12ea8 <__call_exitprocs+0x114>
   12e48:	0004b423          	sd	zero,8(s1)
   12e4c:	fa0708e3          	beqz	a4,12dfc <__call_exitprocs+0x68>
   12e50:	31092783          	lw	a5,784(s2)
   12e54:	008a96bb          	sllw	a3,s5,s0
   12e58:	00892c03          	lw	s8,8(s2)
   12e5c:	00d7f7b3          	and	a5,a5,a3
   12e60:	0007879b          	sext.w	a5,a5
   12e64:	02079263          	bnez	a5,12e88 <__call_exitprocs+0xf4>
   12e68:	000700e7          	jalr	a4
   12e6c:	00892703          	lw	a4,8(s2)
   12e70:	1f8a3783          	ld	a5,504(s4)
   12e74:	01871463          	bne	a4,s8,12e7c <__call_exitprocs+0xe8>
   12e78:	f92782e3          	beq	a5,s2,12dfc <__call_exitprocs+0x68>
   12e7c:	f80786e3          	beqz	a5,12e08 <__call_exitprocs+0x74>
   12e80:	00078913          	mv	s2,a5
   12e84:	f59ff06f          	j	12ddc <__call_exitprocs+0x48>
   12e88:	31492783          	lw	a5,788(s2)
   12e8c:	1084b583          	ld	a1,264(s1)
   12e90:	00d7f7b3          	and	a5,a5,a3
   12e94:	0007879b          	sext.w	a5,a5
   12e98:	00079c63          	bnez	a5,12eb0 <__call_exitprocs+0x11c>
   12e9c:	000b0513          	mv	a0,s6
   12ea0:	000700e7          	jalr	a4
   12ea4:	fc9ff06f          	j	12e6c <__call_exitprocs+0xd8>
   12ea8:	00892423          	sw	s0,8(s2)
   12eac:	fa1ff06f          	j	12e4c <__call_exitprocs+0xb8>
   12eb0:	00058513          	mv	a0,a1
   12eb4:	000700e7          	jalr	a4
   12eb8:	fb5ff06f          	j	12e6c <__call_exitprocs+0xd8>

0000000000012ebc <__sflush_r>:
   12ebc:	01059783          	lh	a5,16(a1)
   12ec0:	fd010113          	addi	sp,sp,-48
   12ec4:	02813023          	sd	s0,32(sp)
   12ec8:	01313423          	sd	s3,8(sp)
   12ecc:	02113423          	sd	ra,40(sp)
   12ed0:	00913c23          	sd	s1,24(sp)
   12ed4:	01213823          	sd	s2,16(sp)
   12ed8:	0087f693          	andi	a3,a5,8
   12edc:	00058413          	mv	s0,a1
   12ee0:	00050993          	mv	s3,a0
   12ee4:	10069c63          	bnez	a3,12ffc <__sflush_r+0x140>
   12ee8:	00001737          	lui	a4,0x1
   12eec:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   12ef0:	0085a683          	lw	a3,8(a1)
   12ef4:	00e7e7b3          	or	a5,a5,a4
   12ef8:	00f59823          	sh	a5,16(a1)
   12efc:	18d05663          	blez	a3,13088 <__sflush_r+0x1cc>
   12f00:	04843703          	ld	a4,72(s0)
   12f04:	0c070c63          	beqz	a4,12fdc <__sflush_r+0x120>
   12f08:	03079793          	slli	a5,a5,0x30
   12f0c:	0307d793          	srli	a5,a5,0x30
   12f10:	000016b7          	lui	a3,0x1
   12f14:	0009a483          	lw	s1,0(s3)
   12f18:	00d7f6b3          	and	a3,a5,a3
   12f1c:	0009a023          	sw	zero,0(s3)
   12f20:	03043583          	ld	a1,48(s0)
   12f24:	16069863          	bnez	a3,13094 <__sflush_r+0x1d8>
   12f28:	00000613          	li	a2,0
   12f2c:	00100693          	li	a3,1
   12f30:	00098513          	mv	a0,s3
   12f34:	000700e7          	jalr	a4
   12f38:	fff00793          	li	a5,-1
   12f3c:	00050613          	mv	a2,a0
   12f40:	18f50c63          	beq	a0,a5,130d8 <__sflush_r+0x21c>
   12f44:	01045783          	lhu	a5,16(s0)
   12f48:	04843703          	ld	a4,72(s0)
   12f4c:	03043583          	ld	a1,48(s0)
   12f50:	0047f793          	andi	a5,a5,4
   12f54:	00078e63          	beqz	a5,12f70 <__sflush_r+0xb4>
   12f58:	00842683          	lw	a3,8(s0)
   12f5c:	05843783          	ld	a5,88(s0)
   12f60:	40d60633          	sub	a2,a2,a3
   12f64:	00078663          	beqz	a5,12f70 <__sflush_r+0xb4>
   12f68:	07042783          	lw	a5,112(s0)
   12f6c:	40f60633          	sub	a2,a2,a5
   12f70:	00000693          	li	a3,0
   12f74:	00098513          	mv	a0,s3
   12f78:	000700e7          	jalr	a4
   12f7c:	fff00793          	li	a5,-1
   12f80:	10f51e63          	bne	a0,a5,1309c <__sflush_r+0x1e0>
   12f84:	0009a703          	lw	a4,0(s3)
   12f88:	01041783          	lh	a5,16(s0)
   12f8c:	16070863          	beqz	a4,130fc <__sflush_r+0x240>
   12f90:	01d00693          	li	a3,29
   12f94:	00d70663          	beq	a4,a3,12fa0 <__sflush_r+0xe4>
   12f98:	01600693          	li	a3,22
   12f9c:	16d71a63          	bne	a4,a3,13110 <__sflush_r+0x254>
   12fa0:	01843683          	ld	a3,24(s0)
   12fa4:	fffff737          	lui	a4,0xfffff
   12fa8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdabff>
   12fac:	00e7f7b3          	and	a5,a5,a4
   12fb0:	00f41823          	sh	a5,16(s0)
   12fb4:	00042423          	sw	zero,8(s0)
   12fb8:	00d43023          	sd	a3,0(s0)
   12fbc:	05843583          	ld	a1,88(s0)
   12fc0:	0099a023          	sw	s1,0(s3)
   12fc4:	00058c63          	beqz	a1,12fdc <__sflush_r+0x120>
   12fc8:	07440793          	addi	a5,s0,116
   12fcc:	00f58663          	beq	a1,a5,12fd8 <__sflush_r+0x11c>
   12fd0:	00098513          	mv	a0,s3
   12fd4:	760000ef          	jal	ra,13734 <_free_r>
   12fd8:	04043c23          	sd	zero,88(s0)
   12fdc:	00000513          	li	a0,0
   12fe0:	02813083          	ld	ra,40(sp)
   12fe4:	02013403          	ld	s0,32(sp)
   12fe8:	01813483          	ld	s1,24(sp)
   12fec:	01013903          	ld	s2,16(sp)
   12ff0:	00813983          	ld	s3,8(sp)
   12ff4:	03010113          	addi	sp,sp,48
   12ff8:	00008067          	ret
   12ffc:	0185b903          	ld	s2,24(a1)
   13000:	fc090ee3          	beqz	s2,12fdc <__sflush_r+0x120>
   13004:	0005b483          	ld	s1,0(a1)
   13008:	03079713          	slli	a4,a5,0x30
   1300c:	03075713          	srli	a4,a4,0x30
   13010:	00377713          	andi	a4,a4,3
   13014:	0125b023          	sd	s2,0(a1)
   13018:	412484bb          	subw	s1,s1,s2
   1301c:	00000793          	li	a5,0
   13020:	00071463          	bnez	a4,13028 <__sflush_r+0x16c>
   13024:	0205a783          	lw	a5,32(a1)
   13028:	00f42623          	sw	a5,12(s0)
   1302c:	00904863          	bgtz	s1,1303c <__sflush_r+0x180>
   13030:	fadff06f          	j	12fdc <__sflush_r+0x120>
   13034:	00a90933          	add	s2,s2,a0
   13038:	fa9052e3          	blez	s1,12fdc <__sflush_r+0x120>
   1303c:	04043783          	ld	a5,64(s0)
   13040:	03043583          	ld	a1,48(s0)
   13044:	00048693          	mv	a3,s1
   13048:	00090613          	mv	a2,s2
   1304c:	00098513          	mv	a0,s3
   13050:	000780e7          	jalr	a5
   13054:	40a484bb          	subw	s1,s1,a0
   13058:	fca04ee3          	bgtz	a0,13034 <__sflush_r+0x178>
   1305c:	01045783          	lhu	a5,16(s0)
   13060:	02813083          	ld	ra,40(sp)
   13064:	01813483          	ld	s1,24(sp)
   13068:	0407e793          	ori	a5,a5,64
   1306c:	00f41823          	sh	a5,16(s0)
   13070:	02013403          	ld	s0,32(sp)
   13074:	01013903          	ld	s2,16(sp)
   13078:	00813983          	ld	s3,8(sp)
   1307c:	fff00513          	li	a0,-1
   13080:	03010113          	addi	sp,sp,48
   13084:	00008067          	ret
   13088:	0705a703          	lw	a4,112(a1)
   1308c:	e6e04ae3          	bgtz	a4,12f00 <__sflush_r+0x44>
   13090:	f4dff06f          	j	12fdc <__sflush_r+0x120>
   13094:	09043603          	ld	a2,144(s0)
   13098:	eb9ff06f          	j	12f50 <__sflush_r+0x94>
   1309c:	01045783          	lhu	a5,16(s0)
   130a0:	fffff737          	lui	a4,0xfffff
   130a4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdabff>
   130a8:	00e7f7b3          	and	a5,a5,a4
   130ac:	01843683          	ld	a3,24(s0)
   130b0:	0107979b          	slliw	a5,a5,0x10
   130b4:	4107d79b          	sraiw	a5,a5,0x10
   130b8:	00001737          	lui	a4,0x1
   130bc:	00f41823          	sh	a5,16(s0)
   130c0:	00042423          	sw	zero,8(s0)
   130c4:	00d43023          	sd	a3,0(s0)
   130c8:	00e7f7b3          	and	a5,a5,a4
   130cc:	ee0788e3          	beqz	a5,12fbc <__sflush_r+0x100>
   130d0:	08a43823          	sd	a0,144(s0)
   130d4:	ee9ff06f          	j	12fbc <__sflush_r+0x100>
   130d8:	0009a783          	lw	a5,0(s3)
   130dc:	e60784e3          	beqz	a5,12f44 <__sflush_r+0x88>
   130e0:	01d00713          	li	a4,29
   130e4:	00e78663          	beq	a5,a4,130f0 <__sflush_r+0x234>
   130e8:	01600713          	li	a4,22
   130ec:	f6e798e3          	bne	a5,a4,1305c <__sflush_r+0x1a0>
   130f0:	0099a023          	sw	s1,0(s3)
   130f4:	00000513          	li	a0,0
   130f8:	ee9ff06f          	j	12fe0 <__sflush_r+0x124>
   130fc:	fffff737          	lui	a4,0xfffff
   13100:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdabff>
   13104:	01843683          	ld	a3,24(s0)
   13108:	00e7f7b3          	and	a5,a5,a4
   1310c:	fadff06f          	j	130b8 <__sflush_r+0x1fc>
   13110:	0407e793          	ori	a5,a5,64
   13114:	00f41823          	sh	a5,16(s0)
   13118:	fff00513          	li	a0,-1
   1311c:	ec5ff06f          	j	12fe0 <__sflush_r+0x124>

0000000000013120 <_fflush_r>:
   13120:	fe010113          	addi	sp,sp,-32
   13124:	00813823          	sd	s0,16(sp)
   13128:	00113c23          	sd	ra,24(sp)
   1312c:	00050413          	mv	s0,a0
   13130:	00050663          	beqz	a0,1313c <_fflush_r+0x1c>
   13134:	05052783          	lw	a5,80(a0)
   13138:	02078063          	beqz	a5,13158 <_fflush_r+0x38>
   1313c:	01059783          	lh	a5,16(a1)
   13140:	02079663          	bnez	a5,1316c <_fflush_r+0x4c>
   13144:	01813083          	ld	ra,24(sp)
   13148:	01013403          	ld	s0,16(sp)
   1314c:	00000513          	li	a0,0
   13150:	02010113          	addi	sp,sp,32
   13154:	00008067          	ret
   13158:	00b13423          	sd	a1,8(sp)
   1315c:	400000ef          	jal	ra,1355c <__sinit>
   13160:	00813583          	ld	a1,8(sp)
   13164:	01059783          	lh	a5,16(a1)
   13168:	fc078ee3          	beqz	a5,13144 <_fflush_r+0x24>
   1316c:	00040513          	mv	a0,s0
   13170:	01013403          	ld	s0,16(sp)
   13174:	01813083          	ld	ra,24(sp)
   13178:	02010113          	addi	sp,sp,32
   1317c:	d41ff06f          	j	12ebc <__sflush_r>

0000000000013180 <fflush>:
   13180:	06050663          	beqz	a0,131ec <fflush+0x6c>
   13184:	fe010113          	addi	sp,sp,-32
   13188:	00813823          	sd	s0,16(sp)
   1318c:	00113c23          	sd	ra,24(sp)
   13190:	00050413          	mv	s0,a0
   13194:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   13198:	00050663          	beqz	a0,131a4 <fflush+0x24>
   1319c:	05052783          	lw	a5,80(a0)
   131a0:	02078a63          	beqz	a5,131d4 <fflush+0x54>
   131a4:	01041783          	lh	a5,16(s0)
   131a8:	00079c63          	bnez	a5,131c0 <fflush+0x40>
   131ac:	01813083          	ld	ra,24(sp)
   131b0:	01013403          	ld	s0,16(sp)
   131b4:	00000513          	li	a0,0
   131b8:	02010113          	addi	sp,sp,32
   131bc:	00008067          	ret
   131c0:	00040593          	mv	a1,s0
   131c4:	01013403          	ld	s0,16(sp)
   131c8:	01813083          	ld	ra,24(sp)
   131cc:	02010113          	addi	sp,sp,32
   131d0:	cedff06f          	j	12ebc <__sflush_r>
   131d4:	00a13423          	sd	a0,8(sp)
   131d8:	384000ef          	jal	ra,1355c <__sinit>
   131dc:	01041783          	lh	a5,16(s0)
   131e0:	00813503          	ld	a0,8(sp)
   131e4:	fc0784e3          	beqz	a5,131ac <fflush+0x2c>
   131e8:	fd9ff06f          	j	131c0 <fflush+0x40>
   131ec:	00000597          	auipc	a1,0x0
   131f0:	f3458593          	addi	a1,a1,-204 # 13120 <_fflush_r>
   131f4:	7481b503          	ld	a0,1864(gp) # 24b48 <_global_impure_ptr>
   131f8:	12d0006f          	j	13b24 <_fwalk_reent>

00000000000131fc <__fp_lock>:
   131fc:	00000513          	li	a0,0
   13200:	00008067          	ret

0000000000013204 <_cleanup_r>:
   13204:	0000a597          	auipc	a1,0xa
   13208:	b1458593          	addi	a1,a1,-1260 # 1cd18 <_fclose_r>
   1320c:	1190006f          	j	13b24 <_fwalk_reent>

0000000000013210 <__fp_unlock>:
   13210:	00000513          	li	a0,0
   13214:	00008067          	ret

0000000000013218 <__sinit.part.0>:
   13218:	fc010113          	addi	sp,sp,-64
   1321c:	02113c23          	sd	ra,56(sp)
   13220:	02813823          	sd	s0,48(sp)
   13224:	02913423          	sd	s1,40(sp)
   13228:	03213023          	sd	s2,32(sp)
   1322c:	01313c23          	sd	s3,24(sp)
   13230:	01413823          	sd	s4,16(sp)
   13234:	01513423          	sd	s5,8(sp)
   13238:	01613023          	sd	s6,0(sp)
   1323c:	00853403          	ld	s0,8(a0)
   13240:	00000717          	auipc	a4,0x0
   13244:	fc470713          	addi	a4,a4,-60 # 13204 <_cleanup_r>
   13248:	04e53c23          	sd	a4,88(a0)
   1324c:	53850793          	addi	a5,a0,1336
   13250:	00300713          	li	a4,3
   13254:	52e52423          	sw	a4,1320(a0)
   13258:	52f53823          	sd	a5,1328(a0)
   1325c:	52053023          	sd	zero,1312(a0)
   13260:	00400793          	li	a5,4
   13264:	00050913          	mv	s2,a0
   13268:	00f42823          	sw	a5,16(s0)
   1326c:	00800613          	li	a2,8
   13270:	00000593          	li	a1,0
   13274:	0a042623          	sw	zero,172(s0)
   13278:	00043023          	sd	zero,0(s0)
   1327c:	00043423          	sd	zero,8(s0)
   13280:	00043c23          	sd	zero,24(s0)
   13284:	02042023          	sw	zero,32(s0)
   13288:	02042423          	sw	zero,40(s0)
   1328c:	0a440513          	addi	a0,s0,164
   13290:	850fd0ef          	jal	ra,102e0 <memset>
   13294:	01093483          	ld	s1,16(s2)
   13298:	00006b17          	auipc	s6,0x6
   1329c:	804b0b13          	addi	s6,s6,-2044 # 18a9c <__sread>
   132a0:	00006a97          	auipc	s5,0x6
   132a4:	860a8a93          	addi	s5,s5,-1952 # 18b00 <__swrite>
   132a8:	00006a17          	auipc	s4,0x6
   132ac:	8e0a0a13          	addi	s4,s4,-1824 # 18b88 <__sseek>
   132b0:	00006997          	auipc	s3,0x6
   132b4:	94098993          	addi	s3,s3,-1728 # 18bf0 <__sclose>
   132b8:	000107b7          	lui	a5,0x10
   132bc:	03643c23          	sd	s6,56(s0)
   132c0:	05543023          	sd	s5,64(s0)
   132c4:	05443423          	sd	s4,72(s0)
   132c8:	05343823          	sd	s3,80(s0)
   132cc:	02843823          	sd	s0,48(s0)
   132d0:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0xa7>
   132d4:	00f4a823          	sw	a5,16(s1)
   132d8:	00800613          	li	a2,8
   132dc:	00000593          	li	a1,0
   132e0:	0a04a623          	sw	zero,172(s1)
   132e4:	0004b023          	sd	zero,0(s1)
   132e8:	0004b423          	sd	zero,8(s1)
   132ec:	0004bc23          	sd	zero,24(s1)
   132f0:	0204a023          	sw	zero,32(s1)
   132f4:	0204a423          	sw	zero,40(s1)
   132f8:	0a448513          	addi	a0,s1,164
   132fc:	fe5fc0ef          	jal	ra,102e0 <memset>
   13300:	01893403          	ld	s0,24(s2)
   13304:	000207b7          	lui	a5,0x20
   13308:	0364bc23          	sd	s6,56(s1)
   1330c:	0554b023          	sd	s5,64(s1)
   13310:	0544b423          	sd	s4,72(s1)
   13314:	0534b823          	sd	s3,80(s1)
   13318:	0294b823          	sd	s1,48(s1)
   1331c:	01278793          	addi	a5,a5,18 # 20012 <__letf2+0x1a>
   13320:	00f42823          	sw	a5,16(s0)
   13324:	0a042623          	sw	zero,172(s0)
   13328:	00043023          	sd	zero,0(s0)
   1332c:	00043423          	sd	zero,8(s0)
   13330:	00043c23          	sd	zero,24(s0)
   13334:	02042023          	sw	zero,32(s0)
   13338:	02042423          	sw	zero,40(s0)
   1333c:	0a440513          	addi	a0,s0,164
   13340:	00800613          	li	a2,8
   13344:	00000593          	li	a1,0
   13348:	f99fc0ef          	jal	ra,102e0 <memset>
   1334c:	03813083          	ld	ra,56(sp)
   13350:	03643c23          	sd	s6,56(s0)
   13354:	05543023          	sd	s5,64(s0)
   13358:	05443423          	sd	s4,72(s0)
   1335c:	05343823          	sd	s3,80(s0)
   13360:	02843823          	sd	s0,48(s0)
   13364:	03013403          	ld	s0,48(sp)
   13368:	00100793          	li	a5,1
   1336c:	04f92823          	sw	a5,80(s2)
   13370:	02813483          	ld	s1,40(sp)
   13374:	02013903          	ld	s2,32(sp)
   13378:	01813983          	ld	s3,24(sp)
   1337c:	01013a03          	ld	s4,16(sp)
   13380:	00813a83          	ld	s5,8(sp)
   13384:	00013b03          	ld	s6,0(sp)
   13388:	04010113          	addi	sp,sp,64
   1338c:	00008067          	ret

0000000000013390 <__sfmoreglue>:
   13390:	fe010113          	addi	sp,sp,-32
   13394:	fff5861b          	addiw	a2,a1,-1
   13398:	00813823          	sd	s0,16(sp)
   1339c:	00161413          	slli	s0,a2,0x1
   133a0:	00c40433          	add	s0,s0,a2
   133a4:	00241413          	slli	s0,s0,0x2
   133a8:	40c40433          	sub	s0,s0,a2
   133ac:	00441413          	slli	s0,s0,0x4
   133b0:	01213023          	sd	s2,0(sp)
   133b4:	00058913          	mv	s2,a1
   133b8:	0c840593          	addi	a1,s0,200
   133bc:	00913423          	sd	s1,8(sp)
   133c0:	00113c23          	sd	ra,24(sp)
   133c4:	075030ef          	jal	ra,16c38 <_malloc_r>
   133c8:	00050493          	mv	s1,a0
   133cc:	02050063          	beqz	a0,133ec <__sfmoreglue+0x5c>
   133d0:	01850513          	addi	a0,a0,24
   133d4:	0004b023          	sd	zero,0(s1)
   133d8:	0124a423          	sw	s2,8(s1)
   133dc:	00a4b823          	sd	a0,16(s1)
   133e0:	0b040613          	addi	a2,s0,176
   133e4:	00000593          	li	a1,0
   133e8:	ef9fc0ef          	jal	ra,102e0 <memset>
   133ec:	01813083          	ld	ra,24(sp)
   133f0:	01013403          	ld	s0,16(sp)
   133f4:	00013903          	ld	s2,0(sp)
   133f8:	00048513          	mv	a0,s1
   133fc:	00813483          	ld	s1,8(sp)
   13400:	02010113          	addi	sp,sp,32
   13404:	00008067          	ret

0000000000013408 <__sfp>:
   13408:	fd010113          	addi	sp,sp,-48
   1340c:	01213823          	sd	s2,16(sp)
   13410:	7481b903          	ld	s2,1864(gp) # 24b48 <_global_impure_ptr>
   13414:	05092783          	lw	a5,80(s2)
   13418:	00913c23          	sd	s1,24(sp)
   1341c:	02113423          	sd	ra,40(sp)
   13420:	02813023          	sd	s0,32(sp)
   13424:	01313423          	sd	s3,8(sp)
   13428:	00050493          	mv	s1,a0
   1342c:	0c078463          	beqz	a5,134f4 <__sfp+0xec>
   13430:	52090913          	addi	s2,s2,1312
   13434:	00400993          	li	s3,4
   13438:	00892783          	lw	a5,8(s2)
   1343c:	01093403          	ld	s0,16(s2)
   13440:	0af05263          	blez	a5,134e4 <__sfp+0xdc>
   13444:	fff7879b          	addiw	a5,a5,-1
   13448:	02079793          	slli	a5,a5,0x20
   1344c:	0207d793          	srli	a5,a5,0x20
   13450:	00178713          	addi	a4,a5,1
   13454:	00171793          	slli	a5,a4,0x1
   13458:	00e787b3          	add	a5,a5,a4
   1345c:	00279793          	slli	a5,a5,0x2
   13460:	40e787b3          	sub	a5,a5,a4
   13464:	00479793          	slli	a5,a5,0x4
   13468:	00f407b3          	add	a5,s0,a5
   1346c:	00c0006f          	j	13478 <__sfp+0x70>
   13470:	0b040413          	addi	s0,s0,176
   13474:	06f40863          	beq	s0,a5,134e4 <__sfp+0xdc>
   13478:	01041703          	lh	a4,16(s0)
   1347c:	fe071ae3          	bnez	a4,13470 <__sfp+0x68>
   13480:	ffff07b7          	lui	a5,0xffff0
   13484:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb401>
   13488:	0a042623          	sw	zero,172(s0)
   1348c:	00043023          	sd	zero,0(s0)
   13490:	00043423          	sd	zero,8(s0)
   13494:	00f42823          	sw	a5,16(s0)
   13498:	00043c23          	sd	zero,24(s0)
   1349c:	02042023          	sw	zero,32(s0)
   134a0:	02042423          	sw	zero,40(s0)
   134a4:	00800613          	li	a2,8
   134a8:	00000593          	li	a1,0
   134ac:	0a440513          	addi	a0,s0,164
   134b0:	e31fc0ef          	jal	ra,102e0 <memset>
   134b4:	04043c23          	sd	zero,88(s0)
   134b8:	06042023          	sw	zero,96(s0)
   134bc:	06043c23          	sd	zero,120(s0)
   134c0:	08042023          	sw	zero,128(s0)
   134c4:	02813083          	ld	ra,40(sp)
   134c8:	00040513          	mv	a0,s0
   134cc:	02013403          	ld	s0,32(sp)
   134d0:	01813483          	ld	s1,24(sp)
   134d4:	01013903          	ld	s2,16(sp)
   134d8:	00813983          	ld	s3,8(sp)
   134dc:	03010113          	addi	sp,sp,48
   134e0:	00008067          	ret
   134e4:	00093403          	ld	s0,0(s2)
   134e8:	00040c63          	beqz	s0,13500 <__sfp+0xf8>
   134ec:	00040913          	mv	s2,s0
   134f0:	f49ff06f          	j	13438 <__sfp+0x30>
   134f4:	00090513          	mv	a0,s2
   134f8:	d21ff0ef          	jal	ra,13218 <__sinit.part.0>
   134fc:	f35ff06f          	j	13430 <__sfp+0x28>
   13500:	2d800593          	li	a1,728
   13504:	00048513          	mv	a0,s1
   13508:	730030ef          	jal	ra,16c38 <_malloc_r>
   1350c:	00050413          	mv	s0,a0
   13510:	02050663          	beqz	a0,1353c <__sfp+0x134>
   13514:	01850513          	addi	a0,a0,24
   13518:	00043023          	sd	zero,0(s0)
   1351c:	01342423          	sw	s3,8(s0)
   13520:	00a43823          	sd	a0,16(s0)
   13524:	2c000613          	li	a2,704
   13528:	00000593          	li	a1,0
   1352c:	db5fc0ef          	jal	ra,102e0 <memset>
   13530:	00893023          	sd	s0,0(s2)
   13534:	00040913          	mv	s2,s0
   13538:	f01ff06f          	j	13438 <__sfp+0x30>
   1353c:	00093023          	sd	zero,0(s2)
   13540:	00c00793          	li	a5,12
   13544:	00f4a023          	sw	a5,0(s1)
   13548:	f7dff06f          	j	134c4 <__sfp+0xbc>

000000000001354c <_cleanup>:
   1354c:	00009597          	auipc	a1,0x9
   13550:	7cc58593          	addi	a1,a1,1996 # 1cd18 <_fclose_r>
   13554:	7481b503          	ld	a0,1864(gp) # 24b48 <_global_impure_ptr>
   13558:	5cc0006f          	j	13b24 <_fwalk_reent>

000000000001355c <__sinit>:
   1355c:	05052783          	lw	a5,80(a0)
   13560:	00078463          	beqz	a5,13568 <__sinit+0xc>
   13564:	00008067          	ret
   13568:	cb1ff06f          	j	13218 <__sinit.part.0>

000000000001356c <__sfp_lock_acquire>:
   1356c:	00008067          	ret

0000000000013570 <__sfp_lock_release>:
   13570:	00008067          	ret

0000000000013574 <__sinit_lock_acquire>:
   13574:	00008067          	ret

0000000000013578 <__sinit_lock_release>:
   13578:	00008067          	ret

000000000001357c <__fp_lock_all>:
   1357c:	00000597          	auipc	a1,0x0
   13580:	c8058593          	addi	a1,a1,-896 # 131fc <__fp_lock>
   13584:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   13588:	4d40006f          	j	13a5c <_fwalk>

000000000001358c <__fp_unlock_all>:
   1358c:	00000597          	auipc	a1,0x0
   13590:	c8458593          	addi	a1,a1,-892 # 13210 <__fp_unlock>
   13594:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   13598:	4c40006f          	j	13a5c <_fwalk>

000000000001359c <__libc_fini_array>:
   1359c:	fe010113          	addi	sp,sp,-32
   135a0:	00813823          	sd	s0,16(sp)
   135a4:	00010797          	auipc	a5,0x10
   135a8:	47478793          	addi	a5,a5,1140 # 23a18 <impure_data>
   135ac:	00010417          	auipc	s0,0x10
   135b0:	46440413          	addi	s0,s0,1124 # 23a10 <__do_global_dtors_aux_fini_array_entry>
   135b4:	408787b3          	sub	a5,a5,s0
   135b8:	00913423          	sd	s1,8(sp)
   135bc:	00113c23          	sd	ra,24(sp)
   135c0:	4037d493          	srai	s1,a5,0x3
   135c4:	02048063          	beqz	s1,135e4 <__libc_fini_array+0x48>
   135c8:	ff878793          	addi	a5,a5,-8
   135cc:	00878433          	add	s0,a5,s0
   135d0:	00043783          	ld	a5,0(s0)
   135d4:	fff48493          	addi	s1,s1,-1
   135d8:	ff840413          	addi	s0,s0,-8
   135dc:	000780e7          	jalr	a5
   135e0:	fe0498e3          	bnez	s1,135d0 <__libc_fini_array+0x34>
   135e4:	01813083          	ld	ra,24(sp)
   135e8:	01013403          	ld	s0,16(sp)
   135ec:	00813483          	ld	s1,8(sp)
   135f0:	02010113          	addi	sp,sp,32
   135f4:	00008067          	ret

00000000000135f8 <_malloc_trim_r>:
   135f8:	fd010113          	addi	sp,sp,-48
   135fc:	02813023          	sd	s0,32(sp)
   13600:	00913c23          	sd	s1,24(sp)
   13604:	01213823          	sd	s2,16(sp)
   13608:	01313423          	sd	s3,8(sp)
   1360c:	01413023          	sd	s4,0(sp)
   13610:	00058993          	mv	s3,a1
   13614:	02113423          	sd	ra,40(sp)
   13618:	00011a17          	auipc	s4,0x11
   1361c:	cf0a0a13          	addi	s4,s4,-784 # 24308 <__malloc_av_>
   13620:	00050913          	mv	s2,a0
   13624:	769030ef          	jal	ra,1758c <__malloc_lock>
   13628:	010a3703          	ld	a4,16(s4)
   1362c:	000017b7          	lui	a5,0x1
   13630:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   13634:	00873483          	ld	s1,8(a4)
   13638:	41340433          	sub	s0,s0,s3
   1363c:	ffc4f493          	andi	s1,s1,-4
   13640:	00940433          	add	s0,s0,s1
   13644:	00c45413          	srli	s0,s0,0xc
   13648:	fff40413          	addi	s0,s0,-1
   1364c:	00c41413          	slli	s0,s0,0xc
   13650:	00f44e63          	blt	s0,a5,1366c <_malloc_trim_r+0x74>
   13654:	00000593          	li	a1,0
   13658:	00090513          	mv	a0,s2
   1365c:	270050ef          	jal	ra,188cc <_sbrk_r>
   13660:	010a3783          	ld	a5,16(s4)
   13664:	009787b3          	add	a5,a5,s1
   13668:	02f50863          	beq	a0,a5,13698 <_malloc_trim_r+0xa0>
   1366c:	00090513          	mv	a0,s2
   13670:	721030ef          	jal	ra,17590 <__malloc_unlock>
   13674:	02813083          	ld	ra,40(sp)
   13678:	02013403          	ld	s0,32(sp)
   1367c:	01813483          	ld	s1,24(sp)
   13680:	01013903          	ld	s2,16(sp)
   13684:	00813983          	ld	s3,8(sp)
   13688:	00013a03          	ld	s4,0(sp)
   1368c:	00000513          	li	a0,0
   13690:	03010113          	addi	sp,sp,48
   13694:	00008067          	ret
   13698:	408005b3          	neg	a1,s0
   1369c:	00090513          	mv	a0,s2
   136a0:	22c050ef          	jal	ra,188cc <_sbrk_r>
   136a4:	fff00793          	li	a5,-1
   136a8:	04f50a63          	beq	a0,a5,136fc <_malloc_trim_r+0x104>
   136ac:	00011717          	auipc	a4,0x11
   136b0:	52c70713          	addi	a4,a4,1324 # 24bd8 <__malloc_current_mallinfo>
   136b4:	00072783          	lw	a5,0(a4)
   136b8:	010a3683          	ld	a3,16(s4)
   136bc:	408484b3          	sub	s1,s1,s0
   136c0:	0014e493          	ori	s1,s1,1
   136c4:	4087843b          	subw	s0,a5,s0
   136c8:	00090513          	mv	a0,s2
   136cc:	0096b423          	sd	s1,8(a3) # 1008 <register_fini-0xf0a8>
   136d0:	00872023          	sw	s0,0(a4)
   136d4:	6bd030ef          	jal	ra,17590 <__malloc_unlock>
   136d8:	02813083          	ld	ra,40(sp)
   136dc:	02013403          	ld	s0,32(sp)
   136e0:	01813483          	ld	s1,24(sp)
   136e4:	01013903          	ld	s2,16(sp)
   136e8:	00813983          	ld	s3,8(sp)
   136ec:	00013a03          	ld	s4,0(sp)
   136f0:	00100513          	li	a0,1
   136f4:	03010113          	addi	sp,sp,48
   136f8:	00008067          	ret
   136fc:	00000593          	li	a1,0
   13700:	00090513          	mv	a0,s2
   13704:	1c8050ef          	jal	ra,188cc <_sbrk_r>
   13708:	010a3703          	ld	a4,16(s4)
   1370c:	01f00693          	li	a3,31
   13710:	40e507b3          	sub	a5,a0,a4
   13714:	f4f6dce3          	bge	a3,a5,1366c <_malloc_trim_r+0x74>
   13718:	7601b683          	ld	a3,1888(gp) # 24b60 <__malloc_sbrk_base>
   1371c:	40d50533          	sub	a0,a0,a3
   13720:	0017e793          	ori	a5,a5,1
   13724:	00011697          	auipc	a3,0x11
   13728:	4aa6aa23          	sw	a0,1204(a3) # 24bd8 <__malloc_current_mallinfo>
   1372c:	00f73423          	sd	a5,8(a4)
   13730:	f3dff06f          	j	1366c <_malloc_trim_r+0x74>

0000000000013734 <_free_r>:
   13734:	12058e63          	beqz	a1,13870 <_free_r+0x13c>
   13738:	fe010113          	addi	sp,sp,-32
   1373c:	00813823          	sd	s0,16(sp)
   13740:	00913423          	sd	s1,8(sp)
   13744:	00058413          	mv	s0,a1
   13748:	00050493          	mv	s1,a0
   1374c:	00113c23          	sd	ra,24(sp)
   13750:	63d030ef          	jal	ra,1758c <__malloc_lock>
   13754:	ff843583          	ld	a1,-8(s0)
   13758:	ff040713          	addi	a4,s0,-16
   1375c:	00011517          	auipc	a0,0x11
   13760:	bac50513          	addi	a0,a0,-1108 # 24308 <__malloc_av_>
   13764:	ffe5f793          	andi	a5,a1,-2
   13768:	00f70633          	add	a2,a4,a5
   1376c:	00863683          	ld	a3,8(a2)
   13770:	01053803          	ld	a6,16(a0)
   13774:	ffc6f693          	andi	a3,a3,-4
   13778:	1cc80063          	beq	a6,a2,13938 <_free_r+0x204>
   1377c:	00d63423          	sd	a3,8(a2)
   13780:	0015f593          	andi	a1,a1,1
   13784:	00d60833          	add	a6,a2,a3
   13788:	0a059463          	bnez	a1,13830 <_free_r+0xfc>
   1378c:	ff043303          	ld	t1,-16(s0)
   13790:	00883583          	ld	a1,8(a6)
   13794:	00011897          	auipc	a7,0x11
   13798:	b8488893          	addi	a7,a7,-1148 # 24318 <__malloc_av_+0x10>
   1379c:	40670733          	sub	a4,a4,t1
   137a0:	01073803          	ld	a6,16(a4)
   137a4:	006787b3          	add	a5,a5,t1
   137a8:	0015f593          	andi	a1,a1,1
   137ac:	15180663          	beq	a6,a7,138f8 <_free_r+0x1c4>
   137b0:	01873303          	ld	t1,24(a4)
   137b4:	00683c23          	sd	t1,24(a6)
   137b8:	01033823          	sd	a6,16(t1)
   137bc:	1e058863          	beqz	a1,139ac <_free_r+0x278>
   137c0:	0017e693          	ori	a3,a5,1
   137c4:	00d73423          	sd	a3,8(a4)
   137c8:	00f63023          	sd	a5,0(a2)
   137cc:	1ff00693          	li	a3,511
   137d0:	0af6ec63          	bltu	a3,a5,13888 <_free_r+0x154>
   137d4:	0037d793          	srli	a5,a5,0x3
   137d8:	0017869b          	addiw	a3,a5,1
   137dc:	0016969b          	slliw	a3,a3,0x1
   137e0:	00369693          	slli	a3,a3,0x3
   137e4:	00853803          	ld	a6,8(a0)
   137e8:	00d506b3          	add	a3,a0,a3
   137ec:	0006b583          	ld	a1,0(a3)
   137f0:	4027d61b          	sraiw	a2,a5,0x2
   137f4:	00100793          	li	a5,1
   137f8:	00c797b3          	sll	a5,a5,a2
   137fc:	0107e7b3          	or	a5,a5,a6
   13800:	ff068613          	addi	a2,a3,-16
   13804:	00c73c23          	sd	a2,24(a4)
   13808:	00b73823          	sd	a1,16(a4)
   1380c:	00f53423          	sd	a5,8(a0)
   13810:	00e6b023          	sd	a4,0(a3)
   13814:	00e5bc23          	sd	a4,24(a1)
   13818:	01013403          	ld	s0,16(sp)
   1381c:	01813083          	ld	ra,24(sp)
   13820:	00048513          	mv	a0,s1
   13824:	00813483          	ld	s1,8(sp)
   13828:	02010113          	addi	sp,sp,32
   1382c:	5650306f          	j	17590 <__malloc_unlock>
   13830:	00883583          	ld	a1,8(a6)
   13834:	0015f593          	andi	a1,a1,1
   13838:	02059e63          	bnez	a1,13874 <_free_r+0x140>
   1383c:	00d787b3          	add	a5,a5,a3
   13840:	00011897          	auipc	a7,0x11
   13844:	ad888893          	addi	a7,a7,-1320 # 24318 <__malloc_av_+0x10>
   13848:	01063683          	ld	a3,16(a2)
   1384c:	0017e813          	ori	a6,a5,1
   13850:	00f705b3          	add	a1,a4,a5
   13854:	17168a63          	beq	a3,a7,139c8 <_free_r+0x294>
   13858:	01863603          	ld	a2,24(a2)
   1385c:	00c6bc23          	sd	a2,24(a3)
   13860:	00d63823          	sd	a3,16(a2)
   13864:	01073423          	sd	a6,8(a4)
   13868:	00f5b023          	sd	a5,0(a1)
   1386c:	f61ff06f          	j	137cc <_free_r+0x98>
   13870:	00008067          	ret
   13874:	0017e693          	ori	a3,a5,1
   13878:	fed43c23          	sd	a3,-8(s0)
   1387c:	00f63023          	sd	a5,0(a2)
   13880:	1ff00693          	li	a3,511
   13884:	f4f6f8e3          	bgeu	a3,a5,137d4 <_free_r+0xa0>
   13888:	0097d693          	srli	a3,a5,0x9
   1388c:	00400613          	li	a2,4
   13890:	0ed66a63          	bltu	a2,a3,13984 <_free_r+0x250>
   13894:	0067d693          	srli	a3,a5,0x6
   13898:	0396859b          	addiw	a1,a3,57
   1389c:	0015959b          	slliw	a1,a1,0x1
   138a0:	0386861b          	addiw	a2,a3,56
   138a4:	00359593          	slli	a1,a1,0x3
   138a8:	00b505b3          	add	a1,a0,a1
   138ac:	0005b683          	ld	a3,0(a1)
   138b0:	ff058593          	addi	a1,a1,-16
   138b4:	12d58863          	beq	a1,a3,139e4 <_free_r+0x2b0>
   138b8:	0086b603          	ld	a2,8(a3)
   138bc:	ffc67613          	andi	a2,a2,-4
   138c0:	00c7f663          	bgeu	a5,a2,138cc <_free_r+0x198>
   138c4:	0106b683          	ld	a3,16(a3)
   138c8:	fed598e3          	bne	a1,a3,138b8 <_free_r+0x184>
   138cc:	0186b583          	ld	a1,24(a3)
   138d0:	00b73c23          	sd	a1,24(a4)
   138d4:	00d73823          	sd	a3,16(a4)
   138d8:	01013403          	ld	s0,16(sp)
   138dc:	01813083          	ld	ra,24(sp)
   138e0:	00e5b823          	sd	a4,16(a1)
   138e4:	00048513          	mv	a0,s1
   138e8:	00813483          	ld	s1,8(sp)
   138ec:	00e6bc23          	sd	a4,24(a3)
   138f0:	02010113          	addi	sp,sp,32
   138f4:	49d0306f          	j	17590 <__malloc_unlock>
   138f8:	14059a63          	bnez	a1,13a4c <_free_r+0x318>
   138fc:	01863583          	ld	a1,24(a2)
   13900:	01063603          	ld	a2,16(a2)
   13904:	00f687b3          	add	a5,a3,a5
   13908:	01013403          	ld	s0,16(sp)
   1390c:	00b63c23          	sd	a1,24(a2)
   13910:	00c5b823          	sd	a2,16(a1)
   13914:	0017e693          	ori	a3,a5,1
   13918:	01813083          	ld	ra,24(sp)
   1391c:	00d73423          	sd	a3,8(a4)
   13920:	00048513          	mv	a0,s1
   13924:	00f70733          	add	a4,a4,a5
   13928:	00813483          	ld	s1,8(sp)
   1392c:	00f73023          	sd	a5,0(a4)
   13930:	02010113          	addi	sp,sp,32
   13934:	45d0306f          	j	17590 <__malloc_unlock>
   13938:	0015f593          	andi	a1,a1,1
   1393c:	00d787b3          	add	a5,a5,a3
   13940:	02059063          	bnez	a1,13960 <_free_r+0x22c>
   13944:	ff043583          	ld	a1,-16(s0)
   13948:	40b70733          	sub	a4,a4,a1
   1394c:	01873683          	ld	a3,24(a4)
   13950:	01073603          	ld	a2,16(a4)
   13954:	00b787b3          	add	a5,a5,a1
   13958:	00d63c23          	sd	a3,24(a2)
   1395c:	00c6b823          	sd	a2,16(a3)
   13960:	0017e693          	ori	a3,a5,1
   13964:	00d73423          	sd	a3,8(a4)
   13968:	00e53823          	sd	a4,16(a0)
   1396c:	7681b703          	ld	a4,1896(gp) # 24b68 <__malloc_trim_threshold>
   13970:	eae7e4e3          	bltu	a5,a4,13818 <_free_r+0xe4>
   13974:	7881b583          	ld	a1,1928(gp) # 24b88 <__malloc_top_pad>
   13978:	00048513          	mv	a0,s1
   1397c:	c7dff0ef          	jal	ra,135f8 <_malloc_trim_r>
   13980:	e99ff06f          	j	13818 <_free_r+0xe4>
   13984:	01400613          	li	a2,20
   13988:	02d67663          	bgeu	a2,a3,139b4 <_free_r+0x280>
   1398c:	05400613          	li	a2,84
   13990:	06d66863          	bltu	a2,a3,13a00 <_free_r+0x2cc>
   13994:	00c7d693          	srli	a3,a5,0xc
   13998:	06f6859b          	addiw	a1,a3,111
   1399c:	0015959b          	slliw	a1,a1,0x1
   139a0:	06e6861b          	addiw	a2,a3,110
   139a4:	00359593          	slli	a1,a1,0x3
   139a8:	f01ff06f          	j	138a8 <_free_r+0x174>
   139ac:	00d787b3          	add	a5,a5,a3
   139b0:	e99ff06f          	j	13848 <_free_r+0x114>
   139b4:	05c6859b          	addiw	a1,a3,92
   139b8:	0015959b          	slliw	a1,a1,0x1
   139bc:	05b6861b          	addiw	a2,a3,91
   139c0:	00359593          	slli	a1,a1,0x3
   139c4:	ee5ff06f          	j	138a8 <_free_r+0x174>
   139c8:	02e53423          	sd	a4,40(a0)
   139cc:	02e53023          	sd	a4,32(a0)
   139d0:	01173c23          	sd	a7,24(a4)
   139d4:	01173823          	sd	a7,16(a4)
   139d8:	01073423          	sd	a6,8(a4)
   139dc:	00f5b023          	sd	a5,0(a1)
   139e0:	e39ff06f          	j	13818 <_free_r+0xe4>
   139e4:	00853803          	ld	a6,8(a0)
   139e8:	4026561b          	sraiw	a2,a2,0x2
   139ec:	00100793          	li	a5,1
   139f0:	00c79633          	sll	a2,a5,a2
   139f4:	01066633          	or	a2,a2,a6
   139f8:	00c53423          	sd	a2,8(a0)
   139fc:	ed5ff06f          	j	138d0 <_free_r+0x19c>
   13a00:	15400613          	li	a2,340
   13a04:	00d66e63          	bltu	a2,a3,13a20 <_free_r+0x2ec>
   13a08:	00f7d693          	srli	a3,a5,0xf
   13a0c:	0786859b          	addiw	a1,a3,120
   13a10:	0015959b          	slliw	a1,a1,0x1
   13a14:	0776861b          	addiw	a2,a3,119
   13a18:	00359593          	slli	a1,a1,0x3
   13a1c:	e8dff06f          	j	138a8 <_free_r+0x174>
   13a20:	55400613          	li	a2,1364
   13a24:	00d66e63          	bltu	a2,a3,13a40 <_free_r+0x30c>
   13a28:	0127d693          	srli	a3,a5,0x12
   13a2c:	07d6859b          	addiw	a1,a3,125
   13a30:	0015959b          	slliw	a1,a1,0x1
   13a34:	07c6861b          	addiw	a2,a3,124
   13a38:	00359593          	slli	a1,a1,0x3
   13a3c:	e6dff06f          	j	138a8 <_free_r+0x174>
   13a40:	7f000593          	li	a1,2032
   13a44:	07e00613          	li	a2,126
   13a48:	e61ff06f          	j	138a8 <_free_r+0x174>
   13a4c:	0017e693          	ori	a3,a5,1
   13a50:	00d73423          	sd	a3,8(a4)
   13a54:	00f63023          	sd	a5,0(a2)
   13a58:	dc1ff06f          	j	13818 <_free_r+0xe4>

0000000000013a5c <_fwalk>:
   13a5c:	fc010113          	addi	sp,sp,-64
   13a60:	03213023          	sd	s2,32(sp)
   13a64:	01313c23          	sd	s3,24(sp)
   13a68:	01413823          	sd	s4,16(sp)
   13a6c:	01513423          	sd	s5,8(sp)
   13a70:	01613023          	sd	s6,0(sp)
   13a74:	02113c23          	sd	ra,56(sp)
   13a78:	02813823          	sd	s0,48(sp)
   13a7c:	02913423          	sd	s1,40(sp)
   13a80:	00058a93          	mv	s5,a1
   13a84:	52050993          	addi	s3,a0,1312
   13a88:	00000913          	li	s2,0
   13a8c:	00100b13          	li	s6,1
   13a90:	fff00a13          	li	s4,-1
   13a94:	0089a783          	lw	a5,8(s3)
   13a98:	0109b403          	ld	s0,16(s3)
   13a9c:	04f05a63          	blez	a5,13af0 <_fwalk+0x94>
   13aa0:	fff7879b          	addiw	a5,a5,-1
   13aa4:	02079493          	slli	s1,a5,0x20
   13aa8:	0204d493          	srli	s1,s1,0x20
   13aac:	00148793          	addi	a5,s1,1
   13ab0:	00179493          	slli	s1,a5,0x1
   13ab4:	00f484b3          	add	s1,s1,a5
   13ab8:	00249493          	slli	s1,s1,0x2
   13abc:	40f484b3          	sub	s1,s1,a5
   13ac0:	00449493          	slli	s1,s1,0x4
   13ac4:	009404b3          	add	s1,s0,s1
   13ac8:	01045783          	lhu	a5,16(s0)
   13acc:	00fb7e63          	bgeu	s6,a5,13ae8 <_fwalk+0x8c>
   13ad0:	01241783          	lh	a5,18(s0)
   13ad4:	00040513          	mv	a0,s0
   13ad8:	01478863          	beq	a5,s4,13ae8 <_fwalk+0x8c>
   13adc:	000a80e7          	jalr	s5
   13ae0:	01256933          	or	s2,a0,s2
   13ae4:	0009091b          	sext.w	s2,s2
   13ae8:	0b040413          	addi	s0,s0,176
   13aec:	fc849ee3          	bne	s1,s0,13ac8 <_fwalk+0x6c>
   13af0:	0009b983          	ld	s3,0(s3)
   13af4:	fa0990e3          	bnez	s3,13a94 <_fwalk+0x38>
   13af8:	03813083          	ld	ra,56(sp)
   13afc:	03013403          	ld	s0,48(sp)
   13b00:	02813483          	ld	s1,40(sp)
   13b04:	01813983          	ld	s3,24(sp)
   13b08:	01013a03          	ld	s4,16(sp)
   13b0c:	00813a83          	ld	s5,8(sp)
   13b10:	00013b03          	ld	s6,0(sp)
   13b14:	00090513          	mv	a0,s2
   13b18:	02013903          	ld	s2,32(sp)
   13b1c:	04010113          	addi	sp,sp,64
   13b20:	00008067          	ret

0000000000013b24 <_fwalk_reent>:
   13b24:	fb010113          	addi	sp,sp,-80
   13b28:	03213823          	sd	s2,48(sp)
   13b2c:	03313423          	sd	s3,40(sp)
   13b30:	03413023          	sd	s4,32(sp)
   13b34:	01513c23          	sd	s5,24(sp)
   13b38:	01613823          	sd	s6,16(sp)
   13b3c:	01713423          	sd	s7,8(sp)
   13b40:	04113423          	sd	ra,72(sp)
   13b44:	04813023          	sd	s0,64(sp)
   13b48:	02913c23          	sd	s1,56(sp)
   13b4c:	00050b93          	mv	s7,a0
   13b50:	00058a93          	mv	s5,a1
   13b54:	52050993          	addi	s3,a0,1312
   13b58:	00000913          	li	s2,0
   13b5c:	00100b13          	li	s6,1
   13b60:	fff00a13          	li	s4,-1
   13b64:	0089a783          	lw	a5,8(s3)
   13b68:	0109b403          	ld	s0,16(s3)
   13b6c:	04f05c63          	blez	a5,13bc4 <_fwalk_reent+0xa0>
   13b70:	fff7879b          	addiw	a5,a5,-1
   13b74:	02079493          	slli	s1,a5,0x20
   13b78:	0204d493          	srli	s1,s1,0x20
   13b7c:	00148793          	addi	a5,s1,1
   13b80:	00179493          	slli	s1,a5,0x1
   13b84:	00f484b3          	add	s1,s1,a5
   13b88:	00249493          	slli	s1,s1,0x2
   13b8c:	40f484b3          	sub	s1,s1,a5
   13b90:	00449493          	slli	s1,s1,0x4
   13b94:	009404b3          	add	s1,s0,s1
   13b98:	01045783          	lhu	a5,16(s0)
   13b9c:	02fb7063          	bgeu	s6,a5,13bbc <_fwalk_reent+0x98>
   13ba0:	01241783          	lh	a5,18(s0)
   13ba4:	00040593          	mv	a1,s0
   13ba8:	000b8513          	mv	a0,s7
   13bac:	01478863          	beq	a5,s4,13bbc <_fwalk_reent+0x98>
   13bb0:	000a80e7          	jalr	s5
   13bb4:	01256933          	or	s2,a0,s2
   13bb8:	0009091b          	sext.w	s2,s2
   13bbc:	0b040413          	addi	s0,s0,176
   13bc0:	fc849ce3          	bne	s1,s0,13b98 <_fwalk_reent+0x74>
   13bc4:	0009b983          	ld	s3,0(s3)
   13bc8:	f8099ee3          	bnez	s3,13b64 <_fwalk_reent+0x40>
   13bcc:	04813083          	ld	ra,72(sp)
   13bd0:	04013403          	ld	s0,64(sp)
   13bd4:	03813483          	ld	s1,56(sp)
   13bd8:	02813983          	ld	s3,40(sp)
   13bdc:	02013a03          	ld	s4,32(sp)
   13be0:	01813a83          	ld	s5,24(sp)
   13be4:	01013b03          	ld	s6,16(sp)
   13be8:	00813b83          	ld	s7,8(sp)
   13bec:	00090513          	mv	a0,s2
   13bf0:	03013903          	ld	s2,48(sp)
   13bf4:	05010113          	addi	sp,sp,80
   13bf8:	00008067          	ret

0000000000013bfc <eshdn1>:
   13bfc:	00450693          	addi	a3,a0,4
   13c00:	00000793          	li	a5,0
   13c04:	01a50513          	addi	a0,a0,26
   13c08:	ffff8837          	lui	a6,0xffff8
   13c0c:	01c0006f          	j	13c28 <eshdn1+0x2c>
   13c10:	0017979b          	slliw	a5,a5,0x1
   13c14:	00e69023          	sh	a4,0(a3)
   13c18:	03079793          	slli	a5,a5,0x30
   13c1c:	00268693          	addi	a3,a3,2
   13c20:	0307d793          	srli	a5,a5,0x30
   13c24:	02d50e63          	beq	a0,a3,13c60 <eshdn1+0x64>
   13c28:	0006d703          	lhu	a4,0(a3)
   13c2c:	00177613          	andi	a2,a4,1
   13c30:	00060463          	beqz	a2,13c38 <eshdn1+0x3c>
   13c34:	0017e793          	ori	a5,a5,1
   13c38:	00175713          	srli	a4,a4,0x1
   13c3c:	0027f613          	andi	a2,a5,2
   13c40:	010765b3          	or	a1,a4,a6
   13c44:	fc0606e3          	beqz	a2,13c10 <eshdn1+0x14>
   13c48:	0017979b          	slliw	a5,a5,0x1
   13c4c:	00b69023          	sh	a1,0(a3)
   13c50:	03079793          	slli	a5,a5,0x30
   13c54:	00268693          	addi	a3,a3,2
   13c58:	0307d793          	srli	a5,a5,0x30
   13c5c:	fcd516e3          	bne	a0,a3,13c28 <eshdn1+0x2c>
   13c60:	00008067          	ret

0000000000013c64 <eshup1>:
   13c64:	01850693          	addi	a3,a0,24
   13c68:	00000713          	li	a4,0
   13c6c:	00250513          	addi	a0,a0,2
   13c70:	01c0006f          	j	13c8c <eshup1+0x28>
   13c74:	0017171b          	slliw	a4,a4,0x1
   13c78:	00f69023          	sh	a5,0(a3)
   13c7c:	03071713          	slli	a4,a4,0x30
   13c80:	ffe68693          	addi	a3,a3,-2
   13c84:	03075713          	srli	a4,a4,0x30
   13c88:	04d50263          	beq	a0,a3,13ccc <eshup1+0x68>
   13c8c:	0006d783          	lhu	a5,0(a3)
   13c90:	00f7d613          	srli	a2,a5,0xf
   13c94:	0017979b          	slliw	a5,a5,0x1
   13c98:	00060463          	beqz	a2,13ca0 <eshup1+0x3c>
   13c9c:	00176713          	ori	a4,a4,1
   13ca0:	03079793          	slli	a5,a5,0x30
   13ca4:	0307d793          	srli	a5,a5,0x30
   13ca8:	00277613          	andi	a2,a4,2
   13cac:	0017e593          	ori	a1,a5,1
   13cb0:	fc0602e3          	beqz	a2,13c74 <eshup1+0x10>
   13cb4:	0017171b          	slliw	a4,a4,0x1
   13cb8:	00b69023          	sh	a1,0(a3)
   13cbc:	03071713          	slli	a4,a4,0x30
   13cc0:	ffe68693          	addi	a3,a3,-2
   13cc4:	03075713          	srli	a4,a4,0x30
   13cc8:	fcd512e3          	bne	a0,a3,13c8c <eshup1+0x28>
   13ccc:	00008067          	ret

0000000000013cd0 <m16m>:
   13cd0:	fa010113          	addi	sp,sp,-96
   13cd4:	03313c23          	sd	s3,56(sp)
   13cd8:	000109b7          	lui	s3,0x10
   13cdc:	04813823          	sd	s0,80(sp)
   13ce0:	04913423          	sd	s1,72(sp)
   13ce4:	05213023          	sd	s2,64(sp)
   13ce8:	03413823          	sd	s4,48(sp)
   13cec:	03513423          	sd	s5,40(sp)
   13cf0:	04113c23          	sd	ra,88(sp)
   13cf4:	00050a13          	mv	s4,a0
   13cf8:	00060493          	mv	s1,a2
   13cfc:	00011b23          	sh	zero,22(sp)
   13d00:	00011c23          	sh	zero,24(sp)
   13d04:	01858913          	addi	s2,a1,24
   13d08:	01810413          	addi	s0,sp,24
   13d0c:	00410a93          	addi	s5,sp,4
   13d10:	fff98993          	addi	s3,s3,-1 # ffff <register_fini-0xb1>
   13d14:	00095503          	lhu	a0,0(s2)
   13d18:	000a0593          	mv	a1,s4
   13d1c:	ffe40413          	addi	s0,s0,-2
   13d20:	ffe90913          	addi	s2,s2,-2
   13d24:	04051663          	bnez	a0,13d70 <m16m+0xa0>
   13d28:	fe041f23          	sh	zero,-2(s0)
   13d2c:	ff5414e3          	bne	s0,s5,13d14 <m16m+0x44>
   13d30:	00448613          	addi	a2,s1,4
   13d34:	01a10713          	addi	a4,sp,26
   13d38:	00045783          	lhu	a5,0(s0)
   13d3c:	00240413          	addi	s0,s0,2
   13d40:	00260613          	addi	a2,a2,2
   13d44:	fef61f23          	sh	a5,-2(a2)
   13d48:	fee418e3          	bne	s0,a4,13d38 <m16m+0x68>
   13d4c:	05813083          	ld	ra,88(sp)
   13d50:	05013403          	ld	s0,80(sp)
   13d54:	04813483          	ld	s1,72(sp)
   13d58:	04013903          	ld	s2,64(sp)
   13d5c:	03813983          	ld	s3,56(sp)
   13d60:	03013a03          	ld	s4,48(sp)
   13d64:	02813a83          	ld	s5,40(sp)
   13d68:	06010113          	addi	sp,sp,96
   13d6c:	00008067          	ret
   13d70:	4f90d0ef          	jal	ra,21a68 <__muldi3>
   13d74:	00245783          	lhu	a5,2(s0)
   13d78:	00045603          	lhu	a2,0(s0)
   13d7c:	01357733          	and	a4,a0,s3
   13d80:	00f70733          	add	a4,a4,a5
   13d84:	01055793          	srli	a5,a0,0x10
   13d88:	01075693          	srli	a3,a4,0x10
   13d8c:	00c787b3          	add	a5,a5,a2
   13d90:	00d787b3          	add	a5,a5,a3
   13d94:	0107d693          	srli	a3,a5,0x10
   13d98:	00e41123          	sh	a4,2(s0)
   13d9c:	00f41023          	sh	a5,0(s0)
   13da0:	fed41f23          	sh	a3,-2(s0)
   13da4:	f75418e3          	bne	s0,s5,13d14 <m16m+0x44>
   13da8:	f89ff06f          	j	13d30 <m16m+0x60>

0000000000013dac <emovo.constprop.0>:
   13dac:	00055703          	lhu	a4,0(a0)
   13db0:	00255783          	lhu	a5,2(a0)
   13db4:	00070663          	beqz	a4,13dc0 <emovo.constprop.0+0x14>
   13db8:	00008737          	lui	a4,0x8
   13dbc:	00e7e7b3          	or	a5,a5,a4
   13dc0:	00f59923          	sh	a5,18(a1)
   13dc4:	00255703          	lhu	a4,2(a0)
   13dc8:	000087b7          	lui	a5,0x8
   13dcc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   13dd0:	02f70463          	beq	a4,a5,13df8 <emovo.constprop.0+0x4c>
   13dd4:	00650793          	addi	a5,a0,6
   13dd8:	01058593          	addi	a1,a1,16
   13ddc:	01850513          	addi	a0,a0,24
   13de0:	0007d703          	lhu	a4,0(a5)
   13de4:	00278793          	addi	a5,a5,2
   13de8:	ffe58593          	addi	a1,a1,-2
   13dec:	00e59123          	sh	a4,2(a1)
   13df0:	fea798e3          	bne	a5,a0,13de0 <emovo.constprop.0+0x34>
   13df4:	00008067          	ret
   13df8:	00650793          	addi	a5,a0,6
   13dfc:	01a50513          	addi	a0,a0,26
   13e00:	0007d703          	lhu	a4,0(a5)
   13e04:	00278793          	addi	a5,a5,2
   13e08:	02071a63          	bnez	a4,13e3c <emovo.constprop.0+0x90>
   13e0c:	fea79ae3          	bne	a5,a0,13e00 <emovo.constprop.0+0x54>
   13e10:	01258713          	addi	a4,a1,18
   13e14:	00058793          	mv	a5,a1
   13e18:	00278793          	addi	a5,a5,2
   13e1c:	fe079f23          	sh	zero,-2(a5)
   13e20:	fef71ce3          	bne	a4,a5,13e18 <emovo.constprop.0+0x6c>
   13e24:	0125d783          	lhu	a5,18(a1)
   13e28:	00008737          	lui	a4,0x8
   13e2c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   13e30:	00e7e7b3          	or	a5,a5,a4
   13e34:	00f59923          	sh	a5,18(a1)
   13e38:	00008067          	ret
   13e3c:	01058713          	addi	a4,a1,16
   13e40:	00058793          	mv	a5,a1
   13e44:	00278793          	addi	a5,a5,2
   13e48:	fe079f23          	sh	zero,-2(a5)
   13e4c:	fef71ce3          	bne	a4,a5,13e44 <emovo.constprop.0+0x98>
   13e50:	ffffc7b7          	lui	a5,0xffffc
   13e54:	00f59823          	sh	a5,16(a1)
   13e58:	ffff87b7          	lui	a5,0xffff8
   13e5c:	fff7c793          	not	a5,a5
   13e60:	00f59923          	sh	a5,18(a1)
   13e64:	00008067          	ret

0000000000013e68 <enormlz>:
   13e68:	00455783          	lhu	a5,4(a0)
   13e6c:	fe010113          	addi	sp,sp,-32
   13e70:	00913423          	sd	s1,8(sp)
   13e74:	00113c23          	sd	ra,24(sp)
   13e78:	00813823          	sd	s0,16(sp)
   13e7c:	01213023          	sd	s2,0(sp)
   13e80:	00050493          	mv	s1,a0
   13e84:	0c079863          	bnez	a5,13f54 <enormlz+0xec>
   13e88:	00655703          	lhu	a4,6(a0)
   13e8c:	00000413          	li	s0,0
   13e90:	00f75793          	srli	a5,a4,0xf
   13e94:	0a079263          	bnez	a5,13f38 <enormlz+0xd0>
   13e98:	01a50693          	addi	a3,a0,26
   13e9c:	0a000613          	li	a2,160
   13ea0:	02071863          	bnez	a4,13ed0 <enormlz+0x68>
   13ea4:	00648793          	addi	a5,s1,6
   13ea8:	0080006f          	j	13eb0 <enormlz+0x48>
   13eac:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3400>
   13eb0:	00278793          	addi	a5,a5,2
   13eb4:	fee79e23          	sh	a4,-4(a5)
   13eb8:	fed79ae3          	bne	a5,a3,13eac <enormlz+0x44>
   13ebc:	00049c23          	sh	zero,24(s1)
   13ec0:	0104041b          	addiw	s0,s0,16
   13ec4:	06c40a63          	beq	s0,a2,13f38 <enormlz+0xd0>
   13ec8:	0064d703          	lhu	a4,6(s1)
   13ecc:	fc070ce3          	beqz	a4,13ea4 <enormlz+0x3c>
   13ed0:	f0077793          	andi	a5,a4,-256
   13ed4:	04079063          	bnez	a5,13f14 <enormlz+0xac>
   13ed8:	01848513          	addi	a0,s1,24
   13edc:	00248593          	addi	a1,s1,2
   13ee0:	00000793          	li	a5,0
   13ee4:	00050713          	mv	a4,a0
   13ee8:	00075683          	lhu	a3,0(a4)
   13eec:	ffe70713          	addi	a4,a4,-2
   13ef0:	0086961b          	slliw	a2,a3,0x8
   13ef4:	00c7e7b3          	or	a5,a5,a2
   13ef8:	00f71123          	sh	a5,2(a4)
   13efc:	0086d793          	srli	a5,a3,0x8
   13f00:	fee594e3          	bne	a1,a4,13ee8 <enormlz+0x80>
   13f04:	0064d703          	lhu	a4,6(s1)
   13f08:	0084041b          	addiw	s0,s0,8
   13f0c:	f0077793          	andi	a5,a4,-256
   13f10:	fc0788e3          	beqz	a5,13ee0 <enormlz+0x78>
   13f14:	0a000913          	li	s2,160
   13f18:	0140006f          	j	13f2c <enormlz+0xc4>
   13f1c:	0014041b          	addiw	s0,s0,1
   13f20:	d45ff0ef          	jal	ra,13c64 <eshup1>
   13f24:	00894a63          	blt	s2,s0,13f38 <enormlz+0xd0>
   13f28:	0064d703          	lhu	a4,6(s1)
   13f2c:	00f75713          	srli	a4,a4,0xf
   13f30:	00048513          	mv	a0,s1
   13f34:	fe0704e3          	beqz	a4,13f1c <enormlz+0xb4>
   13f38:	01813083          	ld	ra,24(sp)
   13f3c:	00040513          	mv	a0,s0
   13f40:	01013403          	ld	s0,16(sp)
   13f44:	00813483          	ld	s1,8(sp)
   13f48:	00013903          	ld	s2,0(sp)
   13f4c:	02010113          	addi	sp,sp,32
   13f50:	00008067          	ret
   13f54:	f007f713          	andi	a4,a5,-256
   13f58:	00000413          	li	s0,0
   13f5c:	04071063          	bnez	a4,13f9c <enormlz+0x134>
   13f60:	f6f00913          	li	s2,-145
   13f64:	0140006f          	j	13f78 <enormlz+0x110>
   13f68:	fff4041b          	addiw	s0,s0,-1
   13f6c:	c91ff0ef          	jal	ra,13bfc <eshdn1>
   13f70:	fd2404e3          	beq	s0,s2,13f38 <enormlz+0xd0>
   13f74:	0044d783          	lhu	a5,4(s1)
   13f78:	00048513          	mv	a0,s1
   13f7c:	fe0796e3          	bnez	a5,13f68 <enormlz+0x100>
   13f80:	01813083          	ld	ra,24(sp)
   13f84:	00040513          	mv	a0,s0
   13f88:	01013403          	ld	s0,16(sp)
   13f8c:	00813483          	ld	s1,8(sp)
   13f90:	00013903          	ld	s2,0(sp)
   13f94:	02010113          	addi	sp,sp,32
   13f98:	00008067          	ret
   13f9c:	00450693          	addi	a3,a0,4
   13fa0:	01a50593          	addi	a1,a0,26
   13fa4:	00000713          	li	a4,0
   13fa8:	0080006f          	j	13fb0 <enormlz+0x148>
   13fac:	0006d783          	lhu	a5,0(a3)
   13fb0:	0087d61b          	srliw	a2,a5,0x8
   13fb4:	00c76733          	or	a4,a4,a2
   13fb8:	0087979b          	slliw	a5,a5,0x8
   13fbc:	00e69023          	sh	a4,0(a3)
   13fc0:	03079713          	slli	a4,a5,0x30
   13fc4:	00268693          	addi	a3,a3,2
   13fc8:	03075713          	srli	a4,a4,0x30
   13fcc:	fed590e3          	bne	a1,a3,13fac <enormlz+0x144>
   13fd0:	0044d783          	lhu	a5,4(s1)
   13fd4:	ff800413          	li	s0,-8
   13fd8:	f89ff06f          	j	13f60 <enormlz+0xf8>

0000000000013fdc <eshift.part.0>:
   13fdc:	fd010113          	addi	sp,sp,-48
   13fe0:	02813023          	sd	s0,32(sp)
   13fe4:	00913c23          	sd	s1,24(sp)
   13fe8:	02113423          	sd	ra,40(sp)
   13fec:	01213823          	sd	s2,16(sp)
   13ff0:	01313423          	sd	s3,8(sp)
   13ff4:	00058493          	mv	s1,a1
   13ff8:	00050413          	mv	s0,a0
   13ffc:	0a05c463          	bltz	a1,140a4 <eshift.part.0+0xc8>
   14000:	00f00793          	li	a5,15
   14004:	00058613          	mv	a2,a1
   14008:	00450513          	addi	a0,a0,4
   1400c:	01840693          	addi	a3,s0,24
   14010:	00f00593          	li	a1,15
   14014:	0297d463          	bge	a5,s1,1403c <eshift.part.0+0x60>
   14018:	00050793          	mv	a5,a0
   1401c:	0027d703          	lhu	a4,2(a5)
   14020:	00278793          	addi	a5,a5,2
   14024:	fee79f23          	sh	a4,-2(a5)
   14028:	fef69ae3          	bne	a3,a5,1401c <eshift.part.0+0x40>
   1402c:	00041c23          	sh	zero,24(s0)
   14030:	ff06061b          	addiw	a2,a2,-16
   14034:	fec5c2e3          	blt	a1,a2,14018 <eshift.part.0+0x3c>
   14038:	00f4f493          	andi	s1,s1,15
   1403c:	00700793          	li	a5,7
   14040:	0297d863          	bge	a5,s1,14070 <eshift.part.0+0x94>
   14044:	01840713          	addi	a4,s0,24
   14048:	00240593          	addi	a1,s0,2
   1404c:	00000793          	li	a5,0
   14050:	00075683          	lhu	a3,0(a4)
   14054:	ffe70713          	addi	a4,a4,-2
   14058:	0086961b          	slliw	a2,a3,0x8
   1405c:	00c7e7b3          	or	a5,a5,a2
   14060:	00f71123          	sh	a5,2(a4)
   14064:	0086d793          	srli	a5,a3,0x8
   14068:	fee594e3          	bne	a1,a4,14050 <eshift.part.0+0x74>
   1406c:	ff84849b          	addiw	s1,s1,-8
   14070:	00048a63          	beqz	s1,14084 <eshift.part.0+0xa8>
   14074:	fff4849b          	addiw	s1,s1,-1
   14078:	00040513          	mv	a0,s0
   1407c:	be9ff0ef          	jal	ra,13c64 <eshup1>
   14080:	fe049ae3          	bnez	s1,14074 <eshift.part.0+0x98>
   14084:	00000513          	li	a0,0
   14088:	02813083          	ld	ra,40(sp)
   1408c:	02013403          	ld	s0,32(sp)
   14090:	01813483          	ld	s1,24(sp)
   14094:	01013903          	ld	s2,16(sp)
   14098:	00813983          	ld	s3,8(sp)
   1409c:	03010113          	addi	sp,sp,48
   140a0:	00008067          	ret
   140a4:	ff100793          	li	a5,-15
   140a8:	40b0093b          	negw	s2,a1
   140ac:	12f5de63          	bge	a1,a5,141e8 <eshift.part.0+0x20c>
   140b0:	01850593          	addi	a1,a0,24
   140b4:	00000993          	li	s3,0
   140b8:	00450693          	addi	a3,a0,4
   140bc:	00f00613          	li	a2,15
   140c0:	01845703          	lhu	a4,24(s0)
   140c4:	00058793          	mv	a5,a1
   140c8:	00e9e9b3          	or	s3,s3,a4
   140cc:	ffe7d703          	lhu	a4,-2(a5)
   140d0:	ffe78793          	addi	a5,a5,-2
   140d4:	00e79123          	sh	a4,2(a5)
   140d8:	fed79ae3          	bne	a5,a3,140cc <eshift.part.0+0xf0>
   140dc:	00041223          	sh	zero,4(s0)
   140e0:	ff09091b          	addiw	s2,s2,-16
   140e4:	fd264ee3          	blt	a2,s2,140c0 <eshift.part.0+0xe4>
   140e8:	ff000913          	li	s2,-16
   140ec:	ff100713          	li	a4,-15
   140f0:	4099093b          	subw	s2,s2,s1
   140f4:	00000793          	li	a5,0
   140f8:	0ae4c663          	blt	s1,a4,141a4 <eshift.part.0+0x1c8>
   140fc:	00f9093b          	addw	s2,s2,a5
   14100:	00700793          	li	a5,7
   14104:	0527ca63          	blt	a5,s2,14158 <eshift.part.0+0x17c>
   14108:	0c090263          	beqz	s2,141cc <eshift.part.0+0x1f0>
   1410c:	01845783          	lhu	a5,24(s0)
   14110:	fff9091b          	addiw	s2,s2,-1
   14114:	00040513          	mv	a0,s0
   14118:	0017f793          	andi	a5,a5,1
   1411c:	0137e9b3          	or	s3,a5,s3
   14120:	addff0ef          	jal	ra,13bfc <eshdn1>
   14124:	fe0914e3          	bnez	s2,1410c <eshift.part.0+0x130>
   14128:	0109979b          	slliw	a5,s3,0x10
   1412c:	4107d79b          	sraiw	a5,a5,0x10
   14130:	08079663          	bnez	a5,141bc <eshift.part.0+0x1e0>
   14134:	03099513          	slli	a0,s3,0x30
   14138:	03055513          	srli	a0,a0,0x30
   1413c:	02813083          	ld	ra,40(sp)
   14140:	02013403          	ld	s0,32(sp)
   14144:	01813483          	ld	s1,24(sp)
   14148:	01013903          	ld	s2,16(sp)
   1414c:	00813983          	ld	s3,8(sp)
   14150:	03010113          	addi	sp,sp,48
   14154:	00008067          	ret
   14158:	0109999b          	slliw	s3,s3,0x10
   1415c:	4109d99b          	sraiw	s3,s3,0x10
   14160:	01844783          	lbu	a5,24(s0)
   14164:	01a40593          	addi	a1,s0,26
   14168:	00f9e9b3          	or	s3,s3,a5
   1416c:	03099993          	slli	s3,s3,0x30
   14170:	0309d993          	srli	s3,s3,0x30
   14174:	00000793          	li	a5,0
   14178:	0006d703          	lhu	a4,0(a3)
   1417c:	00268693          	addi	a3,a3,2
   14180:	0087561b          	srliw	a2,a4,0x8
   14184:	00c7e7b3          	or	a5,a5,a2
   14188:	0087171b          	slliw	a4,a4,0x8
   1418c:	fef69f23          	sh	a5,-2(a3)
   14190:	03071793          	slli	a5,a4,0x30
   14194:	0307d793          	srli	a5,a5,0x30
   14198:	fed590e3          	bne	a1,a3,14178 <eshift.part.0+0x19c>
   1419c:	ff89091b          	addiw	s2,s2,-8
   141a0:	f69ff06f          	j	14108 <eshift.part.0+0x12c>
   141a4:	ff097793          	andi	a5,s2,-16
   141a8:	40f007bb          	negw	a5,a5
   141ac:	00f9093b          	addw	s2,s2,a5
   141b0:	00700793          	li	a5,7
   141b4:	f527dae3          	bge	a5,s2,14108 <eshift.part.0+0x12c>
   141b8:	fa1ff06f          	j	14158 <eshift.part.0+0x17c>
   141bc:	00100993          	li	s3,1
   141c0:	03099513          	slli	a0,s3,0x30
   141c4:	03055513          	srli	a0,a0,0x30
   141c8:	f75ff06f          	j	1413c <eshift.part.0+0x160>
   141cc:	00098513          	mv	a0,s3
   141d0:	00099863          	bnez	s3,141e0 <eshift.part.0+0x204>
   141d4:	03051513          	slli	a0,a0,0x30
   141d8:	03055513          	srli	a0,a0,0x30
   141dc:	eadff06f          	j	14088 <eshift.part.0+0xac>
   141e0:	00100513          	li	a0,1
   141e4:	ff1ff06f          	j	141d4 <eshift.part.0+0x1f8>
   141e8:	ff900793          	li	a5,-7
   141ec:	00000993          	li	s3,0
   141f0:	00450693          	addi	a3,a0,4
   141f4:	f6f5c6e3          	blt	a1,a5,14160 <eshift.part.0+0x184>
   141f8:	f15ff06f          	j	1410c <eshift.part.0+0x130>

00000000000141fc <emovi>:
   141fc:	01255783          	lhu	a5,18(a0)
   14200:	00008637          	lui	a2,0x8
   14204:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   14208:	00f7d79b          	srliw	a5,a5,0xf
   1420c:	40f007bb          	negw	a5,a5
   14210:	00f59023          	sh	a5,0(a1)
   14214:	01255683          	lhu	a3,18(a0)
   14218:	01050793          	addi	a5,a0,16
   1421c:	00458713          	addi	a4,a1,4
   14220:	00d676b3          	and	a3,a2,a3
   14224:	00d59123          	sh	a3,2(a1)
   14228:	0006881b          	sext.w	a6,a3
   1422c:	02c68663          	beq	a3,a2,14258 <emovi+0x5c>
   14230:	00658713          	addi	a4,a1,6
   14234:	00059223          	sh	zero,4(a1)
   14238:	ffe50513          	addi	a0,a0,-2
   1423c:	0007d683          	lhu	a3,0(a5)
   14240:	ffe78793          	addi	a5,a5,-2
   14244:	00270713          	addi	a4,a4,2
   14248:	fed71f23          	sh	a3,-2(a4)
   1424c:	fef518e3          	bne	a0,a5,1423c <emovi+0x40>
   14250:	00059c23          	sh	zero,24(a1)
   14254:	00008067          	ret
   14258:	01255683          	lhu	a3,18(a0)
   1425c:	00d876b3          	and	a3,a6,a3
   14260:	01069e63          	bne	a3,a6,1427c <emovi+0x80>
   14264:	01250813          	addi	a6,a0,18
   14268:	00050693          	mv	a3,a0
   1426c:	0006d603          	lhu	a2,0(a3)
   14270:	00268693          	addi	a3,a3,2
   14274:	00061e63          	bnez	a2,14290 <emovi+0x94>
   14278:	ff069ae3          	bne	a3,a6,1426c <emovi+0x70>
   1427c:	01a58593          	addi	a1,a1,26
   14280:	00270713          	addi	a4,a4,2
   14284:	fe071f23          	sh	zero,-2(a4)
   14288:	fee59ce3          	bne	a1,a4,14280 <emovi+0x84>
   1428c:	00008067          	ret
   14290:	00658713          	addi	a4,a1,6
   14294:	00059223          	sh	zero,4(a1)
   14298:	ffc50513          	addi	a0,a0,-4
   1429c:	0007d683          	lhu	a3,0(a5)
   142a0:	ffe78793          	addi	a5,a5,-2
   142a4:	00270713          	addi	a4,a4,2
   142a8:	fed71f23          	sh	a3,-2(a4)
   142ac:	fea798e3          	bne	a5,a0,1429c <emovi+0xa0>
   142b0:	00008067          	ret

00000000000142b4 <ecmp>:
   142b4:	01255783          	lhu	a5,18(a0)
   142b8:	fb010113          	addi	sp,sp,-80
   142bc:	04813023          	sd	s0,64(sp)
   142c0:	fff7c793          	not	a5,a5
   142c4:	04113423          	sd	ra,72(sp)
   142c8:	03179713          	slli	a4,a5,0x31
   142cc:	00058413          	mv	s0,a1
   142d0:	00071e63          	bnez	a4,142ec <ecmp+0x38>
   142d4:	01250693          	addi	a3,a0,18
   142d8:	00050793          	mv	a5,a0
   142dc:	0007d703          	lhu	a4,0(a5)
   142e0:	00278793          	addi	a5,a5,2
   142e4:	08071c63          	bnez	a4,1437c <ecmp+0xc8>
   142e8:	fed79ae3          	bne	a5,a3,142dc <ecmp+0x28>
   142ec:	01245783          	lhu	a5,18(s0)
   142f0:	fff7c793          	not	a5,a5
   142f4:	03179713          	slli	a4,a5,0x31
   142f8:	06070063          	beqz	a4,14358 <ecmp+0xa4>
   142fc:	00010593          	mv	a1,sp
   14300:	efdff0ef          	jal	ra,141fc <emovi>
   14304:	02010593          	addi	a1,sp,32
   14308:	00040513          	mv	a0,s0
   1430c:	ef1ff0ef          	jal	ra,141fc <emovi>
   14310:	00015583          	lhu	a1,0(sp)
   14314:	02015783          	lhu	a5,32(sp)
   14318:	06b78c63          	beq	a5,a1,14390 <ecmp+0xdc>
   1431c:	00210793          	addi	a5,sp,2
   14320:	02210713          	addi	a4,sp,34
   14324:	01810613          	addi	a2,sp,24
   14328:	0007d683          	lhu	a3,0(a5)
   1432c:	00278793          	addi	a5,a5,2
   14330:	0a069663          	bnez	a3,143dc <ecmp+0x128>
   14334:	00075683          	lhu	a3,0(a4)
   14338:	00270713          	addi	a4,a4,2
   1433c:	0a069063          	bnez	a3,143dc <ecmp+0x128>
   14340:	fef614e3          	bne	a2,a5,14328 <ecmp+0x74>
   14344:	00000513          	li	a0,0
   14348:	04813083          	ld	ra,72(sp)
   1434c:	04013403          	ld	s0,64(sp)
   14350:	05010113          	addi	sp,sp,80
   14354:	00008067          	ret
   14358:	00040793          	mv	a5,s0
   1435c:	0007d703          	lhu	a4,0(a5)
   14360:	01240693          	addi	a3,s0,18
   14364:	00278793          	addi	a5,a5,2
   14368:	00071a63          	bnez	a4,1437c <ecmp+0xc8>
   1436c:	f8d788e3          	beq	a5,a3,142fc <ecmp+0x48>
   14370:	0007d703          	lhu	a4,0(a5)
   14374:	00278793          	addi	a5,a5,2
   14378:	fe070ae3          	beqz	a4,1436c <ecmp+0xb8>
   1437c:	04813083          	ld	ra,72(sp)
   14380:	04013403          	ld	s0,64(sp)
   14384:	ffe00513          	li	a0,-2
   14388:	05010113          	addi	sp,sp,80
   1438c:	00008067          	ret
   14390:	00100513          	li	a0,1
   14394:	04059c63          	bnez	a1,143ec <ecmp+0x138>
   14398:	00215603          	lhu	a2,2(sp)
   1439c:	02215683          	lhu	a3,34(sp)
   143a0:	00210713          	addi	a4,sp,2
   143a4:	02210793          	addi	a5,sp,34
   143a8:	03810593          	addi	a1,sp,56
   143ac:	00278793          	addi	a5,a5,2
   143b0:	00270713          	addi	a4,a4,2
   143b4:	00d61e63          	bne	a2,a3,143d0 <ecmp+0x11c>
   143b8:	f8b786e3          	beq	a5,a1,14344 <ecmp+0x90>
   143bc:	00075603          	lhu	a2,0(a4)
   143c0:	0007d683          	lhu	a3,0(a5)
   143c4:	00270713          	addi	a4,a4,2
   143c8:	00278793          	addi	a5,a5,2
   143cc:	fed606e3          	beq	a2,a3,143b8 <ecmp+0x104>
   143d0:	f6c6ece3          	bltu	a3,a2,14348 <ecmp+0x94>
   143d4:	40a0053b          	negw	a0,a0
   143d8:	f71ff06f          	j	14348 <ecmp+0x94>
   143dc:	00100513          	li	a0,1
   143e0:	f60584e3          	beqz	a1,14348 <ecmp+0x94>
   143e4:	fff00513          	li	a0,-1
   143e8:	f61ff06f          	j	14348 <ecmp+0x94>
   143ec:	fff00513          	li	a0,-1
   143f0:	fa9ff06f          	j	14398 <ecmp+0xe4>

00000000000143f4 <emdnorm>:
   143f4:	fc010113          	addi	sp,sp,-64
   143f8:	02813823          	sd	s0,48(sp)
   143fc:	02913423          	sd	s1,40(sp)
   14400:	03213023          	sd	s2,32(sp)
   14404:	01313c23          	sd	s3,24(sp)
   14408:	01413823          	sd	s4,16(sp)
   1440c:	01513423          	sd	s5,8(sp)
   14410:	00068913          	mv	s2,a3
   14414:	00078493          	mv	s1,a5
   14418:	02113c23          	sd	ra,56(sp)
   1441c:	00050413          	mv	s0,a0
   14420:	00058993          	mv	s3,a1
   14424:	00060a13          	mv	s4,a2
   14428:	00070a93          	mv	s5,a4
   1442c:	a3dff0ef          	jal	ra,13e68 <enormlz>
   14430:	09000793          	li	a5,144
   14434:	40a90933          	sub	s2,s2,a0
   14438:	1aa7da63          	bge	a5,a0,145ec <emdnorm+0x1f8>
   1443c:	000087b7          	lui	a5,0x8
   14440:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14444:	2327d863          	bge	a5,s2,14674 <emdnorm+0x280>
   14448:	200a8263          	beqz	s5,1464c <emdnorm+0x258>
   1444c:	0044a503          	lw	a0,4(s1)
   14450:	0004a783          	lw	a5,0(s1)
   14454:	06a78a63          	beq	a5,a0,144c8 <emdnorm+0xd4>
   14458:	01a48713          	addi	a4,s1,26
   1445c:	03448793          	addi	a5,s1,52
   14460:	00270713          	addi	a4,a4,2
   14464:	fe071f23          	sh	zero,-2(a4)
   14468:	fef71ce3          	bne	a4,a5,14460 <emdnorm+0x6c>
   1446c:	03800793          	li	a5,56
   14470:	36f50e63          	beq	a0,a5,147ec <emdnorm+0x3f8>
   14474:	18a7de63          	bge	a5,a0,14610 <emdnorm+0x21c>
   14478:	04000793          	li	a5,64
   1447c:	30f50c63          	beq	a0,a5,14794 <emdnorm+0x3a0>
   14480:	07100793          	li	a5,113
   14484:	32f51e63          	bne	a0,a5,147c0 <emdnorm+0x3cc>
   14488:	400087b7          	lui	a5,0x40008
   1448c:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe33ff>
   14490:	00a00713          	li	a4,10
   14494:	00f4aa23          	sw	a5,20(s1)
   14498:	ffff87b7          	lui	a5,0xffff8
   1449c:	00e4a423          	sw	a4,8(s1)
   144a0:	00f49c23          	sh	a5,24(s1)
   144a4:	00e4a623          	sw	a4,12(s1)
   144a8:	00a00793          	li	a5,10
   144ac:	00008737          	lui	a4,0x8
   144b0:	00878793          	addi	a5,a5,8 # ffffffffffff8008 <__BSS_END__+0xfffffffffffd3408>
   144b4:	00179793          	slli	a5,a5,0x1
   144b8:	00f487b3          	add	a5,s1,a5
   144bc:	00e79523          	sh	a4,10(a5)
   144c0:	00a4a023          	sw	a0,0(s1)
   144c4:	1f205663          	blez	s2,146b0 <emdnorm+0x2bc>
   144c8:	0084a683          	lw	a3,8(s1)
   144cc:	0144d603          	lhu	a2,20(s1)
   144d0:	08f00713          	li	a4,143
   144d4:	00169793          	slli	a5,a3,0x1
   144d8:	00f40833          	add	a6,s0,a5
   144dc:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3400>
   144e0:	00c8f5b3          	and	a1,a7,a2
   144e4:	04a74863          	blt	a4,a0,14534 <emdnorm+0x140>
   144e8:	00b00713          	li	a4,11
   144ec:	04d74463          	blt	a4,a3,14534 <emdnorm+0x140>
   144f0:	40d7073b          	subw	a4,a4,a3
   144f4:	02071713          	slli	a4,a4,0x20
   144f8:	02075713          	srli	a4,a4,0x20
   144fc:	00d70733          	add	a4,a4,a3
   14500:	00171693          	slli	a3,a4,0x1
   14504:	00278793          	addi	a5,a5,2
   14508:	00440713          	addi	a4,s0,4
   1450c:	00f407b3          	add	a5,s0,a5
   14510:	00e68733          	add	a4,a3,a4
   14514:	0007d683          	lhu	a3,0(a5)
   14518:	00068463          	beqz	a3,14520 <emdnorm+0x12c>
   1451c:	0015e593          	ori	a1,a1,1
   14520:	00079023          	sh	zero,0(a5)
   14524:	00278793          	addi	a5,a5,2
   14528:	fef716e3          	bne	a4,a5,14514 <emdnorm+0x120>
   1452c:	00085883          	lhu	a7,0(a6)
   14530:	0144d603          	lhu	a2,20(s1)
   14534:	fff64613          	not	a2,a2
   14538:	01167633          	and	a2,a2,a7
   1453c:	00c81023          	sh	a2,0(a6)
   14540:	0164d783          	lhu	a5,22(s1)
   14544:	00b7f733          	and	a4,a5,a1
   14548:	06070063          	beqz	a4,145a8 <emdnorm+0x1b4>
   1454c:	02b79263          	bne	a5,a1,14570 <emdnorm+0x17c>
   14550:	20099863          	bnez	s3,14760 <emdnorm+0x36c>
   14554:	00c4a783          	lw	a5,12(s1)
   14558:	0184d703          	lhu	a4,24(s1)
   1455c:	00179793          	slli	a5,a5,0x1
   14560:	00f407b3          	add	a5,s0,a5
   14564:	0007d783          	lhu	a5,0(a5)
   14568:	00e7f7b3          	and	a5,a5,a4
   1456c:	02078e63          	beqz	a5,145a8 <emdnorm+0x1b4>
   14570:	03248613          	addi	a2,s1,50
   14574:	01840693          	addi	a3,s0,24
   14578:	01c48493          	addi	s1,s1,28
   1457c:	00000713          	li	a4,0
   14580:	00065783          	lhu	a5,0(a2)
   14584:	0006d583          	lhu	a1,0(a3)
   14588:	ffe68693          	addi	a3,a3,-2
   1458c:	ffe60613          	addi	a2,a2,-2
   14590:	00b787b3          	add	a5,a5,a1
   14594:	00e787b3          	add	a5,a5,a4
   14598:	0107d713          	srli	a4,a5,0x10
   1459c:	00f69123          	sh	a5,2(a3)
   145a0:	00177713          	andi	a4,a4,1
   145a4:	fc961ee3          	bne	a2,s1,14580 <emdnorm+0x18c>
   145a8:	17205663          	blez	s2,14714 <emdnorm+0x320>
   145ac:	00445783          	lhu	a5,4(s0)
   145b0:	12079e63          	bnez	a5,146ec <emdnorm+0x2f8>
   145b4:	000087b7          	lui	a5,0x8
   145b8:	00041c23          	sh	zero,24(s0)
   145bc:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   145c0:	0927c863          	blt	a5,s2,14650 <emdnorm+0x25c>
   145c4:	01241123          	sh	s2,2(s0)
   145c8:	03813083          	ld	ra,56(sp)
   145cc:	03013403          	ld	s0,48(sp)
   145d0:	02813483          	ld	s1,40(sp)
   145d4:	02013903          	ld	s2,32(sp)
   145d8:	01813983          	ld	s3,24(sp)
   145dc:	01013a03          	ld	s4,16(sp)
   145e0:	00813a83          	ld	s5,8(sp)
   145e4:	04010113          	addi	sp,sp,64
   145e8:	00008067          	ret
   145ec:	0e095463          	bgez	s2,146d4 <emdnorm+0x2e0>
   145f0:	f7000793          	li	a5,-144
   145f4:	08f95c63          	bge	s2,a5,1468c <emdnorm+0x298>
   145f8:	00240793          	addi	a5,s0,2
   145fc:	01a40413          	addi	s0,s0,26
   14600:	00278793          	addi	a5,a5,2
   14604:	fe079f23          	sh	zero,-2(a5)
   14608:	fe879ce3          	bne	a5,s0,14600 <emdnorm+0x20c>
   1460c:	fbdff06f          	j	145c8 <emdnorm+0x1d4>
   14610:	01800793          	li	a5,24
   14614:	14f50a63          	beq	a0,a5,14768 <emdnorm+0x374>
   14618:	03500793          	li	a5,53
   1461c:	1af51263          	bne	a0,a5,147c0 <emdnorm+0x3cc>
   14620:	00001737          	lui	a4,0x1
   14624:	040007b7          	lui	a5,0x4000
   14628:	00600693          	li	a3,6
   1462c:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fdbbff>
   14630:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14634:	00f4aa23          	sw	a5,20(s1)
   14638:	00d4a423          	sw	a3,8(s1)
   1463c:	00e49c23          	sh	a4,24(s1)
   14640:	00d4a623          	sw	a3,12(s1)
   14644:	00600793          	li	a5,6
   14648:	e69ff06f          	j	144b0 <emdnorm+0xbc>
   1464c:	00041c23          	sh	zero,24(s0)
   14650:	ffff87b7          	lui	a5,0xffff8
   14654:	fff7c793          	not	a5,a5
   14658:	00f41123          	sh	a5,2(s0)
   1465c:	00440793          	addi	a5,s0,4
   14660:	01840413          	addi	s0,s0,24
   14664:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3400>
   14668:	00278793          	addi	a5,a5,2
   1466c:	fef41ce3          	bne	s0,a5,14664 <emdnorm+0x270>
   14670:	f59ff06f          	j	145c8 <emdnorm+0x1d4>
   14674:	00240793          	addi	a5,s0,2
   14678:	01a40413          	addi	s0,s0,26
   1467c:	00278793          	addi	a5,a5,2
   14680:	fe079f23          	sh	zero,-2(a5)
   14684:	fe879ce3          	bne	a5,s0,1467c <emdnorm+0x288>
   14688:	f41ff06f          	j	145c8 <emdnorm+0x1d4>
   1468c:	0009059b          	sext.w	a1,s2
   14690:	00040513          	mv	a0,s0
   14694:	949ff0ef          	jal	ra,13fdc <eshift.part.0>
   14698:	00050463          	beqz	a0,146a0 <emdnorm+0x2ac>
   1469c:	00100993          	li	s3,1
   146a0:	0a0a8a63          	beqz	s5,14754 <emdnorm+0x360>
   146a4:	0044a503          	lw	a0,4(s1)
   146a8:	0004a783          	lw	a5,0(s1)
   146ac:	daa796e3          	bne	a5,a0,14458 <emdnorm+0x64>
   146b0:	09000793          	li	a5,144
   146b4:	08f50263          	beq	a0,a5,14738 <emdnorm+0x344>
   146b8:	01845783          	lhu	a5,24(s0)
   146bc:	00040513          	mv	a0,s0
   146c0:	0017f793          	andi	a5,a5,1
   146c4:	0137e9b3          	or	s3,a5,s3
   146c8:	d34ff0ef          	jal	ra,13bfc <eshdn1>
   146cc:	0044a503          	lw	a0,4(s1)
   146d0:	df9ff06f          	j	144c8 <emdnorm+0xd4>
   146d4:	ee0a80e3          	beqz	s5,145b4 <emdnorm+0x1c0>
   146d8:	0044a503          	lw	a0,4(s1)
   146dc:	0004a783          	lw	a5,0(s1)
   146e0:	d6a79ce3          	bne	a5,a0,14458 <emdnorm+0x64>
   146e4:	df2042e3          	bgtz	s2,144c8 <emdnorm+0xd4>
   146e8:	fc9ff06f          	j	146b0 <emdnorm+0x2bc>
   146ec:	00040513          	mv	a0,s0
   146f0:	d0cff0ef          	jal	ra,13bfc <eshdn1>
   146f4:	000087b7          	lui	a5,0x8
   146f8:	00190913          	addi	s2,s2,1
   146fc:	00041c23          	sh	zero,24(s0)
   14700:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14704:	f527c6e3          	blt	a5,s2,14650 <emdnorm+0x25c>
   14708:	ea095ee3          	bgez	s2,145c4 <emdnorm+0x1d0>
   1470c:	00041123          	sh	zero,2(s0)
   14710:	eb9ff06f          	j	145c8 <emdnorm+0x1d4>
   14714:	09000793          	li	a5,144
   14718:	00f50663          	beq	a0,a5,14724 <emdnorm+0x330>
   1471c:	00040513          	mv	a0,s0
   14720:	d44ff0ef          	jal	ra,13c64 <eshup1>
   14724:	00445783          	lhu	a5,4(s0)
   14728:	fc0792e3          	bnez	a5,146ec <emdnorm+0x2f8>
   1472c:	00041c23          	sh	zero,24(s0)
   14730:	fc094ee3          	bltz	s2,1470c <emdnorm+0x318>
   14734:	e91ff06f          	j	145c4 <emdnorm+0x1d0>
   14738:	0084a803          	lw	a6,8(s1)
   1473c:	0144d603          	lhu	a2,20(s1)
   14740:	00181813          	slli	a6,a6,0x1
   14744:	01040833          	add	a6,s0,a6
   14748:	00085883          	lhu	a7,0(a6)
   1474c:	011675b3          	and	a1,a2,a7
   14750:	de5ff06f          	j	14534 <emdnorm+0x140>
   14754:	00041c23          	sh	zero,24(s0)
   14758:	00041123          	sh	zero,2(s0)
   1475c:	e6dff06f          	j	145c8 <emdnorm+0x1d4>
   14760:	e00a08e3          	beqz	s4,14570 <emdnorm+0x17c>
   14764:	e45ff06f          	j	145a8 <emdnorm+0x1b4>
   14768:	008007b7          	lui	a5,0x800
   1476c:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db4ff>
   14770:	00400713          	li	a4,4
   14774:	00f4aa23          	sw	a5,20(s1)
   14778:	10000793          	li	a5,256
   1477c:	00e4a423          	sw	a4,8(s1)
   14780:	00f49c23          	sh	a5,24(s1)
   14784:	00e4a623          	sw	a4,12(s1)
   14788:	00400793          	li	a5,4
   1478c:	10000713          	li	a4,256
   14790:	d21ff06f          	j	144b0 <emdnorm+0xbc>
   14794:	00700793          	li	a5,7
   14798:	00f4a423          	sw	a5,8(s1)
   1479c:	800107b7          	lui	a5,0x80010
   147a0:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb3ff>
   147a4:	00f4aa23          	sw	a5,20(s1)
   147a8:	00100793          	li	a5,1
   147ac:	00f49c23          	sh	a5,24(s1)
   147b0:	00600793          	li	a5,6
   147b4:	00f4a623          	sw	a5,12(s1)
   147b8:	00100713          	li	a4,1
   147bc:	cf5ff06f          	j	144b0 <emdnorm+0xbc>
   147c0:	00c00793          	li	a5,12
   147c4:	00f4a423          	sw	a5,8(s1)
   147c8:	800107b7          	lui	a5,0x80010
   147cc:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb3ff>
   147d0:	00f4aa23          	sw	a5,20(s1)
   147d4:	00100793          	li	a5,1
   147d8:	00f49c23          	sh	a5,24(s1)
   147dc:	00b00793          	li	a5,11
   147e0:	00f4a623          	sw	a5,12(s1)
   147e4:	00100713          	li	a4,1
   147e8:	cc9ff06f          	j	144b0 <emdnorm+0xbc>
   147ec:	008007b7          	lui	a5,0x800
   147f0:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7db4ff>
   147f4:	00600713          	li	a4,6
   147f8:	00f4aa23          	sw	a5,20(s1)
   147fc:	10000793          	li	a5,256
   14800:	00e4a423          	sw	a4,8(s1)
   14804:	00f49c23          	sh	a5,24(s1)
   14808:	00e4a623          	sw	a4,12(s1)
   1480c:	00600793          	li	a5,6
   14810:	10000713          	li	a4,256
   14814:	c9dff06f          	j	144b0 <emdnorm+0xbc>

0000000000014818 <eiremain>:
   14818:	fa010113          	addi	sp,sp,-96
   1481c:	05213023          	sd	s2,64(sp)
   14820:	03313c23          	sd	s3,56(sp)
   14824:	00058913          	mv	s2,a1
   14828:	00255983          	lhu	s3,2(a0)
   1482c:	04113c23          	sd	ra,88(sp)
   14830:	04813823          	sd	s0,80(sp)
   14834:	04913423          	sd	s1,72(sp)
   14838:	03413823          	sd	s4,48(sp)
   1483c:	00060493          	mv	s1,a2
   14840:	01713c23          	sd	s7,24(sp)
   14844:	03513423          	sd	s5,40(sp)
   14848:	03613023          	sd	s6,32(sp)
   1484c:	01813823          	sd	s8,16(sp)
   14850:	01913423          	sd	s9,8(sp)
   14854:	01a13023          	sd	s10,0(sp)
   14858:	00050b93          	mv	s7,a0
   1485c:	e0cff0ef          	jal	ra,13e68 <enormlz>
   14860:	00295403          	lhu	s0,2(s2)
   14864:	00050793          	mv	a5,a0
   14868:	00090513          	mv	a0,s2
   1486c:	40f989b3          	sub	s3,s3,a5
   14870:	03448a13          	addi	s4,s1,52
   14874:	df4ff0ef          	jal	ra,13e68 <enormlz>
   14878:	40a40433          	sub	s0,s0,a0
   1487c:	04e48713          	addi	a4,s1,78
   14880:	000a0793          	mv	a5,s4
   14884:	00278793          	addi	a5,a5,2
   14888:	fe079f23          	sh	zero,-2(a5)
   1488c:	fee79ce3          	bne	a5,a4,14884 <eiremain+0x6c>
   14890:	09344863          	blt	s0,s3,14920 <eiremain+0x108>
   14894:	004b8b13          	addi	s6,s7,4
   14898:	00490a93          	addi	s5,s2,4
   1489c:	01ab8c13          	addi	s8,s7,26
   148a0:	00290d13          	addi	s10,s2,2
   148a4:	000a8713          	mv	a4,s5
   148a8:	000b0793          	mv	a5,s6
   148ac:	0007d603          	lhu	a2,0(a5)
   148b0:	00075683          	lhu	a3,0(a4)
   148b4:	00278793          	addi	a5,a5,2
   148b8:	00270713          	addi	a4,a4,2
   148bc:	0ad61a63          	bne	a2,a3,14970 <eiremain+0x158>
   148c0:	ff8796e3          	bne	a5,s8,148ac <eiremain+0x94>
   148c4:	018b8613          	addi	a2,s7,24
   148c8:	01890713          	addi	a4,s2,24
   148cc:	00000693          	li	a3,0
   148d0:	00075783          	lhu	a5,0(a4)
   148d4:	00065583          	lhu	a1,0(a2)
   148d8:	ffe70713          	addi	a4,a4,-2
   148dc:	40d787b3          	sub	a5,a5,a3
   148e0:	40b787b3          	sub	a5,a5,a1
   148e4:	0107d693          	srli	a3,a5,0x10
   148e8:	00f71123          	sh	a5,2(a4)
   148ec:	0016f693          	andi	a3,a3,1
   148f0:	ffe60613          	addi	a2,a2,-2
   148f4:	fced1ee3          	bne	s10,a4,148d0 <eiremain+0xb8>
   148f8:	00100c93          	li	s9,1
   148fc:	000a0513          	mv	a0,s4
   14900:	b64ff0ef          	jal	ra,13c64 <eshup1>
   14904:	04c4d783          	lhu	a5,76(s1)
   14908:	fff40413          	addi	s0,s0,-1
   1490c:	00090513          	mv	a0,s2
   14910:	00fce7b3          	or	a5,s9,a5
   14914:	04f49623          	sh	a5,76(s1)
   14918:	b4cff0ef          	jal	ra,13c64 <eshup1>
   1491c:	f93454e3          	bge	s0,s3,148a4 <eiremain+0x8c>
   14920:	00040693          	mv	a3,s0
   14924:	05013403          	ld	s0,80(sp)
   14928:	05813083          	ld	ra,88(sp)
   1492c:	03813983          	ld	s3,56(sp)
   14930:	03013a03          	ld	s4,48(sp)
   14934:	02813a83          	ld	s5,40(sp)
   14938:	02013b03          	ld	s6,32(sp)
   1493c:	01813b83          	ld	s7,24(sp)
   14940:	01013c03          	ld	s8,16(sp)
   14944:	00813c83          	ld	s9,8(sp)
   14948:	00013d03          	ld	s10,0(sp)
   1494c:	00048793          	mv	a5,s1
   14950:	00090513          	mv	a0,s2
   14954:	04813483          	ld	s1,72(sp)
   14958:	04013903          	ld	s2,64(sp)
   1495c:	00000713          	li	a4,0
   14960:	00000613          	li	a2,0
   14964:	00000593          	li	a1,0
   14968:	06010113          	addi	sp,sp,96
   1496c:	a89ff06f          	j	143f4 <emdnorm>
   14970:	00000c93          	li	s9,0
   14974:	f8c6e4e3          	bltu	a3,a2,148fc <eiremain+0xe4>
   14978:	f4dff06f          	j	148c4 <eiremain+0xac>

000000000001497c <emul>:
   1497c:	f4010113          	addi	sp,sp,-192
   14980:	0a913423          	sd	s1,168(sp)
   14984:	00050493          	mv	s1,a0
   14988:	01255503          	lhu	a0,18(a0)
   1498c:	00008737          	lui	a4,0x8
   14990:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14994:	0a813823          	sd	s0,176(sp)
   14998:	0b213023          	sd	s2,160(sp)
   1499c:	09413823          	sd	s4,144(sp)
   149a0:	0a113c23          	sd	ra,184(sp)
   149a4:	09313c23          	sd	s3,152(sp)
   149a8:	09513423          	sd	s5,136(sp)
   149ac:	09613023          	sd	s6,128(sp)
   149b0:	07713c23          	sd	s7,120(sp)
   149b4:	07813823          	sd	s8,112(sp)
   149b8:	07913423          	sd	s9,104(sp)
   149bc:	00a77533          	and	a0,a4,a0
   149c0:	00058913          	mv	s2,a1
   149c4:	00060413          	mv	s0,a2
   149c8:	00068a13          	mv	s4,a3
   149cc:	00e51e63          	bne	a0,a4,149e8 <emul+0x6c>
   149d0:	01248993          	addi	s3,s1,18
   149d4:	00048713          	mv	a4,s1
   149d8:	00075603          	lhu	a2,0(a4)
   149dc:	00270713          	addi	a4,a4,2
   149e0:	16061863          	bnez	a2,14b50 <emul+0x1d4>
   149e4:	ff371ae3          	bne	a4,s3,149d8 <emul+0x5c>
   149e8:	01295603          	lhu	a2,18(s2)
   149ec:	000087b7          	lui	a5,0x8
   149f0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   149f4:	00f675b3          	and	a1,a2,a5
   149f8:	0af59c63          	bne	a1,a5,14ab0 <emul+0x134>
   149fc:	01290693          	addi	a3,s2,18
   14a00:	00090713          	mv	a4,s2
   14a04:	00075783          	lhu	a5,0(a4)
   14a08:	00270713          	addi	a4,a4,2
   14a0c:	22079463          	bnez	a5,14c34 <emul+0x2b8>
   14a10:	fee69ae3          	bne	a3,a4,14a04 <emul+0x88>
   14a14:	000087b7          	lui	a5,0x8
   14a18:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14a1c:	08f50c63          	beq	a0,a5,14ab4 <emul+0x138>
   14a20:	00090793          	mv	a5,s2
   14a24:	0007d703          	lhu	a4,0(a5)
   14a28:	00278793          	addi	a5,a5,2
   14a2c:	3e071a63          	bnez	a4,14e20 <emul+0x4a4>
   14a30:	fef69ae3          	bne	a3,a5,14a24 <emul+0xa8>
   14a34:	0000d597          	auipc	a1,0xd
   14a38:	41458593          	addi	a1,a1,1044 # 21e48 <ezero>
   14a3c:	00048513          	mv	a0,s1
   14a40:	875ff0ef          	jal	ra,142b4 <ecmp>
   14a44:	20050663          	beqz	a0,14c50 <emul+0x2d4>
   14a48:	0124d503          	lhu	a0,18(s1)
   14a4c:	01295603          	lhu	a2,18(s2)
   14a50:	000087b7          	lui	a5,0x8
   14a54:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14a58:	00f576b3          	and	a3,a0,a5
   14a5c:	00f67733          	and	a4,a2,a5
   14a60:	00068813          	mv	a6,a3
   14a64:	0007059b          	sext.w	a1,a4
   14a68:	12f69e63          	bne	a3,a5,14ba4 <emul+0x228>
   14a6c:	01248993          	addi	s3,s1,18
   14a70:	0007059b          	sext.w	a1,a4
   14a74:	00048793          	mv	a5,s1
   14a78:	0007d703          	lhu	a4,0(a5)
   14a7c:	00278793          	addi	a5,a5,2
   14a80:	10071e63          	bnez	a4,14b9c <emul+0x220>
   14a84:	fef99ae3          	bne	s3,a5,14a78 <emul+0xfc>
   14a88:	0004d783          	lhu	a5,0(s1)
   14a8c:	00248493          	addi	s1,s1,2
   14a90:	34079663          	bnez	a5,14ddc <emul+0x460>
   14a94:	ff349ae3          	bne	s1,s3,14a88 <emul+0x10c>
   14a98:	00f55893          	srli	a7,a0,0xf
   14a9c:	00008737          	lui	a4,0x8
   14aa0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14aa4:	14e59863          	bne	a1,a4,14bf4 <emul+0x278>
   14aa8:	01290693          	addi	a3,s2,18
   14aac:	1380006f          	j	14be4 <emul+0x268>
   14ab0:	04f51863          	bne	a0,a5,14b00 <emul+0x184>
   14ab4:	01248993          	addi	s3,s1,18
   14ab8:	00048793          	mv	a5,s1
   14abc:	0007d703          	lhu	a4,0(a5)
   14ac0:	00278793          	addi	a5,a5,2
   14ac4:	32071063          	bnez	a4,14de4 <emul+0x468>
   14ac8:	fef99ae3          	bne	s3,a5,14abc <emul+0x140>
   14acc:	0000d597          	auipc	a1,0xd
   14ad0:	37c58593          	addi	a1,a1,892 # 21e48 <ezero>
   14ad4:	00090513          	mv	a0,s2
   14ad8:	fdcff0ef          	jal	ra,142b4 <ecmp>
   14adc:	16050a63          	beqz	a0,14c50 <emul+0x2d4>
   14ae0:	01295603          	lhu	a2,18(s2)
   14ae4:	000087b7          	lui	a5,0x8
   14ae8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14aec:	00f675b3          	and	a1,a2,a5
   14af0:	18f58663          	beq	a1,a5,14c7c <emul+0x300>
   14af4:	0124d503          	lhu	a0,18(s1)
   14af8:	00f57733          	and	a4,a0,a5
   14afc:	f6f70ce3          	beq	a4,a5,14a74 <emul+0xf8>
   14b00:	00048513          	mv	a0,s1
   14b04:	00010593          	mv	a1,sp
   14b08:	ef4ff0ef          	jal	ra,141fc <emovi>
   14b0c:	02010593          	addi	a1,sp,32
   14b10:	00090513          	mv	a0,s2
   14b14:	ee8ff0ef          	jal	ra,141fc <emovi>
   14b18:	00215483          	lhu	s1,2(sp)
   14b1c:	02215983          	lhu	s3,34(sp)
   14b20:	16049263          	bnez	s1,14c84 <emul+0x308>
   14b24:	00410793          	addi	a5,sp,4
   14b28:	01810693          	addi	a3,sp,24
   14b2c:	2cd78663          	beq	a5,a3,14df8 <emul+0x47c>
   14b30:	0007d703          	lhu	a4,0(a5)
   14b34:	00278793          	addi	a5,a5,2
   14b38:	fe070ae3          	beqz	a4,14b2c <emul+0x1b0>
   14b3c:	00010513          	mv	a0,sp
   14b40:	b28ff0ef          	jal	ra,13e68 <enormlz>
   14b44:	02215703          	lhu	a4,34(sp)
   14b48:	40a004b3          	neg	s1,a0
   14b4c:	13c0006f          	j	14c88 <emul+0x30c>
   14b50:	01448713          	addi	a4,s1,20
   14b54:	0004d783          	lhu	a5,0(s1)
   14b58:	00248493          	addi	s1,s1,2
   14b5c:	00240413          	addi	s0,s0,2
   14b60:	fef41f23          	sh	a5,-2(s0)
   14b64:	fee498e3          	bne	s1,a4,14b54 <emul+0x1d8>
   14b68:	0b813083          	ld	ra,184(sp)
   14b6c:	0b013403          	ld	s0,176(sp)
   14b70:	0a813483          	ld	s1,168(sp)
   14b74:	0a013903          	ld	s2,160(sp)
   14b78:	09813983          	ld	s3,152(sp)
   14b7c:	09013a03          	ld	s4,144(sp)
   14b80:	08813a83          	ld	s5,136(sp)
   14b84:	08013b03          	ld	s6,128(sp)
   14b88:	07813b83          	ld	s7,120(sp)
   14b8c:	07013c03          	ld	s8,112(sp)
   14b90:	06813c83          	ld	s9,104(sp)
   14b94:	0c010113          	addi	sp,sp,192
   14b98:	00008067          	ret
   14b9c:	00008837          	lui	a6,0x8
   14ba0:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   14ba4:	000087b7          	lui	a5,0x8
   14ba8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14bac:	f4f59ae3          	bne	a1,a5,14b00 <emul+0x184>
   14bb0:	01290693          	addi	a3,s2,18
   14bb4:	00090793          	mv	a5,s2
   14bb8:	0007d703          	lhu	a4,0(a5)
   14bbc:	00278793          	addi	a5,a5,2
   14bc0:	f40710e3          	bnez	a4,14b00 <emul+0x184>
   14bc4:	fed79ae3          	bne	a5,a3,14bb8 <emul+0x23c>
   14bc8:	00008737          	lui	a4,0x8
   14bcc:	0008081b          	sext.w	a6,a6
   14bd0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14bd4:	00f55893          	srli	a7,a0,0xf
   14bd8:	01248993          	addi	s3,s1,18
   14bdc:	00080593          	mv	a1,a6
   14be0:	eae804e3          	beq	a6,a4,14a88 <emul+0x10c>
   14be4:	00095703          	lhu	a4,0(s2)
   14be8:	00290913          	addi	s2,s2,2
   14bec:	1e071463          	bnez	a4,14dd4 <emul+0x458>
   14bf0:	fed91ae3          	bne	s2,a3,14be4 <emul+0x268>
   14bf4:	00f65793          	srli	a5,a2,0xf
   14bf8:	411787b3          	sub	a5,a5,a7
   14bfc:	00f037b3          	snez	a5,a5
   14c00:	00f79793          	slli	a5,a5,0xf
   14c04:	00f41923          	sh	a5,18(s0)
   14c08:	01240713          	addi	a4,s0,18
   14c0c:	00040793          	mv	a5,s0
   14c10:	00278793          	addi	a5,a5,2
   14c14:	fe079f23          	sh	zero,-2(a5)
   14c18:	fee79ce3          	bne	a5,a4,14c10 <emul+0x294>
   14c1c:	01245783          	lhu	a5,18(s0)
   14c20:	00008737          	lui	a4,0x8
   14c24:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14c28:	00e7e7b3          	or	a5,a5,a4
   14c2c:	00f41923          	sh	a5,18(s0)
   14c30:	f39ff06f          	j	14b68 <emul+0x1ec>
   14c34:	01440713          	addi	a4,s0,20
   14c38:	00095783          	lhu	a5,0(s2)
   14c3c:	00240413          	addi	s0,s0,2
   14c40:	00290913          	addi	s2,s2,2
   14c44:	fef41f23          	sh	a5,-2(s0)
   14c48:	fee418e3          	bne	s0,a4,14c38 <emul+0x2bc>
   14c4c:	f1dff06f          	j	14b68 <emul+0x1ec>
   14c50:	01040713          	addi	a4,s0,16
   14c54:	00040793          	mv	a5,s0
   14c58:	00278793          	addi	a5,a5,2
   14c5c:	fe079f23          	sh	zero,-2(a5)
   14c60:	fee79ce3          	bne	a5,a4,14c58 <emul+0x2dc>
   14c64:	ffffc7b7          	lui	a5,0xffffc
   14c68:	00f41823          	sh	a5,16(s0)
   14c6c:	ffff87b7          	lui	a5,0xffff8
   14c70:	fff7c793          	not	a5,a5
   14c74:	00f41923          	sh	a5,18(s0)
   14c78:	ef1ff06f          	j	14b68 <emul+0x1ec>
   14c7c:	01290693          	addi	a3,s2,18
   14c80:	da1ff06f          	j	14a20 <emul+0xa4>
   14c84:	00098713          	mv	a4,s3
   14c88:	00098913          	mv	s2,s3
   14c8c:	02410793          	addi	a5,sp,36
   14c90:	03810693          	addi	a3,sp,56
   14c94:	02071263          	bnez	a4,14cb8 <emul+0x33c>
   14c98:	16d78a63          	beq	a5,a3,14e0c <emul+0x490>
   14c9c:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3400>
   14ca0:	00278793          	addi	a5,a5,2
   14ca4:	fe070ae3          	beqz	a4,14c98 <emul+0x31c>
   14ca8:	02010513          	addi	a0,sp,32
   14cac:	9bcff0ef          	jal	ra,13e68 <enormlz>
   14cb0:	02215703          	lhu	a4,34(sp)
   14cb4:	40a98933          	sub	s2,s3,a0
   14cb8:	02015783          	lhu	a5,32(sp)
   14cbc:	038a0993          	addi	s3,s4,56
   14cc0:	02ea1b23          	sh	a4,54(s4)
   14cc4:	02fa1a23          	sh	a5,52(s4)
   14cc8:	04ea0713          	addi	a4,s4,78
   14ccc:	00098793          	mv	a5,s3
   14cd0:	00079023          	sh	zero,0(a5)
   14cd4:	00278793          	addi	a5,a5,2
   14cd8:	fef71ce3          	bne	a4,a5,14cd0 <emul+0x354>
   14cdc:	04ca0c13          	addi	s8,s4,76
   14ce0:	00000b93          	li	s7,0
   14ce4:	01810a93          	addi	s5,sp,24
   14ce8:	00410c93          	addi	s9,sp,4
   14cec:	04210b13          	addi	s6,sp,66
   14cf0:	000ad503          	lhu	a0,0(s5)
   14cf4:	ffea8a93          	addi	s5,s5,-2
   14cf8:	08051c63          	bnez	a0,14d90 <emul+0x414>
   14cfc:	04ca5783          	lhu	a5,76(s4)
   14d00:	000c0713          	mv	a4,s8
   14d04:	00fbebb3          	or	s7,s7,a5
   14d08:	ffe75603          	lhu	a2,-2(a4)
   14d0c:	ffe70713          	addi	a4,a4,-2
   14d10:	00c71123          	sh	a2,2(a4)
   14d14:	fee99ae3          	bne	s3,a4,14d08 <emul+0x38c>
   14d18:	020a1c23          	sh	zero,56(s4)
   14d1c:	fd9a9ae3          	bne	s5,s9,14cf0 <emul+0x374>
   14d20:	034a0713          	addi	a4,s4,52
   14d24:	02010793          	addi	a5,sp,32
   14d28:	03a10613          	addi	a2,sp,58
   14d2c:	00075683          	lhu	a3,0(a4)
   14d30:	00278793          	addi	a5,a5,2
   14d34:	00270713          	addi	a4,a4,2
   14d38:	fed79f23          	sh	a3,-2(a5)
   14d3c:	fef618e3          	bne	a2,a5,14d2c <emul+0x3b0>
   14d40:	ffffc6b7          	lui	a3,0xffffc
   14d44:	012484b3          	add	s1,s1,s2
   14d48:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7402>
   14d4c:	000b8593          	mv	a1,s7
   14d50:	02010513          	addi	a0,sp,32
   14d54:	000a0793          	mv	a5,s4
   14d58:	04000713          	li	a4,64
   14d5c:	00d486b3          	add	a3,s1,a3
   14d60:	00000613          	li	a2,0
   14d64:	e90ff0ef          	jal	ra,143f4 <emdnorm>
   14d68:	02015703          	lhu	a4,32(sp)
   14d6c:	00015783          	lhu	a5,0(sp)
   14d70:	00040593          	mv	a1,s0
   14d74:	02010513          	addi	a0,sp,32
   14d78:	40e787b3          	sub	a5,a5,a4
   14d7c:	00f037b3          	snez	a5,a5
   14d80:	40f007bb          	negw	a5,a5
   14d84:	02f11023          	sh	a5,32(sp)
   14d88:	824ff0ef          	jal	ra,13dac <emovo.constprop.0>
   14d8c:	dddff06f          	j	14b68 <emul+0x1ec>
   14d90:	04010613          	addi	a2,sp,64
   14d94:	02010593          	addi	a1,sp,32
   14d98:	f39fe0ef          	jal	ra,13cd0 <m16m>
   14d9c:	000c0513          	mv	a0,s8
   14da0:	00000593          	li	a1,0
   14da4:	05810613          	addi	a2,sp,88
   14da8:	00055783          	lhu	a5,0(a0)
   14dac:	00065703          	lhu	a4,0(a2)
   14db0:	ffe50513          	addi	a0,a0,-2
   14db4:	ffe60613          	addi	a2,a2,-2
   14db8:	00f70733          	add	a4,a4,a5
   14dbc:	00b70733          	add	a4,a4,a1
   14dc0:	01075593          	srli	a1,a4,0x10
   14dc4:	00e51123          	sh	a4,2(a0)
   14dc8:	0015f593          	andi	a1,a1,1
   14dcc:	fd661ee3          	bne	a2,s6,14da8 <emul+0x42c>
   14dd0:	f2dff06f          	j	14cfc <emul+0x380>
   14dd4:	00000793          	li	a5,0
   14dd8:	e21ff06f          	j	14bf8 <emul+0x27c>
   14ddc:	00000893          	li	a7,0
   14de0:	cbdff06f          	j	14a9c <emul+0x120>
   14de4:	000087b7          	lui	a5,0x8
   14de8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14dec:	e8f588e3          	beq	a1,a5,14c7c <emul+0x300>
   14df0:	0124d503          	lhu	a0,18(s1)
   14df4:	c81ff06f          	j	14a74 <emul+0xf8>
   14df8:	01440793          	addi	a5,s0,20
   14dfc:	00240413          	addi	s0,s0,2
   14e00:	fe041f23          	sh	zero,-2(s0)
   14e04:	fe879ce3          	bne	a5,s0,14dfc <emul+0x480>
   14e08:	d61ff06f          	j	14b68 <emul+0x1ec>
   14e0c:	01440793          	addi	a5,s0,20
   14e10:	00240413          	addi	s0,s0,2
   14e14:	fe041f23          	sh	zero,-2(s0)
   14e18:	fe879ce3          	bne	a5,s0,14e10 <emul+0x494>
   14e1c:	d4dff06f          	j	14b68 <emul+0x1ec>
   14e20:	0124d503          	lhu	a0,18(s1)
   14e24:	000087b7          	lui	a5,0x8
   14e28:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14e2c:	00f575b3          	and	a1,a0,a5
   14e30:	01248993          	addi	s3,s1,18
   14e34:	00058813          	mv	a6,a1
   14e38:	d6f59ee3          	bne	a1,a5,14bb4 <emul+0x238>
   14e3c:	c39ff06f          	j	14a74 <emul+0xf8>

0000000000014e40 <ediv>:
   14e40:	01255783          	lhu	a5,18(a0)
   14e44:	f2010113          	addi	sp,sp,-224
   14e48:	0c813823          	sd	s0,208(sp)
   14e4c:	fff7c793          	not	a5,a5
   14e50:	0c913423          	sd	s1,200(sp)
   14e54:	0d213023          	sd	s2,192(sp)
   14e58:	0b313c23          	sd	s3,184(sp)
   14e5c:	0c113c23          	sd	ra,216(sp)
   14e60:	0b413823          	sd	s4,176(sp)
   14e64:	0b513423          	sd	s5,168(sp)
   14e68:	0b613023          	sd	s6,160(sp)
   14e6c:	09713c23          	sd	s7,152(sp)
   14e70:	09813823          	sd	s8,144(sp)
   14e74:	09913423          	sd	s9,136(sp)
   14e78:	09a13023          	sd	s10,128(sp)
   14e7c:	07b13c23          	sd	s11,120(sp)
   14e80:	03179713          	slli	a4,a5,0x31
   14e84:	00050493          	mv	s1,a0
   14e88:	00058913          	mv	s2,a1
   14e8c:	00060413          	mv	s0,a2
   14e90:	00068993          	mv	s3,a3
   14e94:	00071e63          	bnez	a4,14eb0 <ediv+0x70>
   14e98:	01250693          	addi	a3,a0,18
   14e9c:	00050793          	mv	a5,a0
   14ea0:	0007d703          	lhu	a4,0(a5)
   14ea4:	00278793          	addi	a5,a5,2
   14ea8:	30071463          	bnez	a4,151b0 <ediv+0x370>
   14eac:	fed79ae3          	bne	a5,a3,14ea0 <ediv+0x60>
   14eb0:	01295783          	lhu	a5,18(s2)
   14eb4:	fff7c793          	not	a5,a5
   14eb8:	03179713          	slli	a4,a5,0x31
   14ebc:	00071e63          	bnez	a4,14ed8 <ediv+0x98>
   14ec0:	01290693          	addi	a3,s2,18
   14ec4:	00090793          	mv	a5,s2
   14ec8:	0007d703          	lhu	a4,0(a5)
   14ecc:	00278793          	addi	a5,a5,2
   14ed0:	2e071e63          	bnez	a4,151cc <ediv+0x38c>
   14ed4:	fed79ae3          	bne	a5,a3,14ec8 <ediv+0x88>
   14ed8:	0000d597          	auipc	a1,0xd
   14edc:	f7058593          	addi	a1,a1,-144 # 21e48 <ezero>
   14ee0:	00048513          	mv	a0,s1
   14ee4:	bd0ff0ef          	jal	ra,142b4 <ecmp>
   14ee8:	30050063          	beqz	a0,151e8 <ediv+0x3a8>
   14eec:	0124d603          	lhu	a2,18(s1)
   14ef0:	01295583          	lhu	a1,18(s2)
   14ef4:	000087b7          	lui	a5,0x8
   14ef8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14efc:	00f67533          	and	a0,a2,a5
   14f00:	00f5f6b3          	and	a3,a1,a5
   14f04:	0af51663          	bne	a0,a5,14fb0 <ediv+0x170>
   14f08:	01248813          	addi	a6,s1,18
   14f0c:	00048793          	mv	a5,s1
   14f10:	0007d703          	lhu	a4,0(a5)
   14f14:	00278793          	addi	a5,a5,2
   14f18:	08071863          	bnez	a4,14fa8 <ediv+0x168>
   14f1c:	ff079ae3          	bne	a5,a6,14f10 <ediv+0xd0>
   14f20:	000087b7          	lui	a5,0x8
   14f24:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14f28:	2cf69e63          	bne	a3,a5,15204 <ediv+0x3c4>
   14f2c:	01290693          	addi	a3,s2,18
   14f30:	00090793          	mv	a5,s2
   14f34:	0007d703          	lhu	a4,0(a5)
   14f38:	00278793          	addi	a5,a5,2
   14f3c:	4a071063          	bnez	a4,153dc <ediv+0x59c>
   14f40:	fed79ae3          	bne	a5,a3,14f34 <ediv+0xf4>
   14f44:	01040713          	addi	a4,s0,16
   14f48:	00040793          	mv	a5,s0
   14f4c:	00278793          	addi	a5,a5,2
   14f50:	fe079f23          	sh	zero,-2(a5)
   14f54:	fee79ce3          	bne	a5,a4,14f4c <ediv+0x10c>
   14f58:	ffffc7b7          	lui	a5,0xffffc
   14f5c:	00f41823          	sh	a5,16(s0)
   14f60:	ffff87b7          	lui	a5,0xffff8
   14f64:	fff7c793          	not	a5,a5
   14f68:	00f41923          	sh	a5,18(s0)
   14f6c:	0d813083          	ld	ra,216(sp)
   14f70:	0d013403          	ld	s0,208(sp)
   14f74:	0c813483          	ld	s1,200(sp)
   14f78:	0c013903          	ld	s2,192(sp)
   14f7c:	0b813983          	ld	s3,184(sp)
   14f80:	0b013a03          	ld	s4,176(sp)
   14f84:	0a813a83          	ld	s5,168(sp)
   14f88:	0a013b03          	ld	s6,160(sp)
   14f8c:	09813b83          	ld	s7,152(sp)
   14f90:	09013c03          	ld	s8,144(sp)
   14f94:	08813c83          	ld	s9,136(sp)
   14f98:	08013d03          	ld	s10,128(sp)
   14f9c:	07813d83          	ld	s11,120(sp)
   14fa0:	0e010113          	addi	sp,sp,224
   14fa4:	00008067          	ret
   14fa8:	000087b7          	lui	a5,0x8
   14fac:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14fb0:	26f68463          	beq	a3,a5,15218 <ediv+0x3d8>
   14fb4:	00048513          	mv	a0,s1
   14fb8:	01010593          	addi	a1,sp,16
   14fbc:	a40ff0ef          	jal	ra,141fc <emovi>
   14fc0:	03010593          	addi	a1,sp,48
   14fc4:	00090513          	mv	a0,s2
   14fc8:	a34ff0ef          	jal	ra,141fc <emovi>
   14fcc:	03215a83          	lhu	s5,50(sp)
   14fd0:	01215483          	lhu	s1,18(sp)
   14fd4:	2c0a8a63          	beqz	s5,152a8 <ediv+0x468>
   14fd8:	01513423          	sd	s5,8(sp)
   14fdc:	00048613          	mv	a2,s1
   14fe0:	00913023          	sd	s1,0(sp)
   14fe4:	01410793          	addi	a5,sp,20
   14fe8:	02810693          	addi	a3,sp,40
   14fec:	02061263          	bnez	a2,15010 <ediv+0x1d0>
   14ff0:	3ad78863          	beq	a5,a3,153a0 <ediv+0x560>
   14ff4:	0007d703          	lhu	a4,0(a5)
   14ff8:	00278793          	addi	a5,a5,2
   14ffc:	fe070ae3          	beqz	a4,14ff0 <ediv+0x1b0>
   15000:	01010513          	addi	a0,sp,16
   15004:	e65fe0ef          	jal	ra,13e68 <enormlz>
   15008:	40a487b3          	sub	a5,s1,a0
   1500c:	00f13023          	sd	a5,0(sp)
   15010:	03012703          	lw	a4,48(sp)
   15014:	03898a93          	addi	s5,s3,56
   15018:	000a8793          	mv	a5,s5
   1501c:	02e9aa23          	sw	a4,52(s3)
   15020:	04e98493          	addi	s1,s3,78
   15024:	00278793          	addi	a5,a5,2
   15028:	fe079f23          	sh	zero,-2(a5)
   1502c:	fef49ce3          	bne	s1,a5,15024 <ediv+0x1e4>
   15030:	03010513          	addi	a0,sp,48
   15034:	bc9fe0ef          	jal	ra,13bfc <eshdn1>
   15038:	01615b03          	lhu	s6,22(sp)
   1503c:	00010937          	lui	s2,0x10
   15040:	04810c13          	addi	s8,sp,72
   15044:	010b1a13          	slli	s4,s6,0x10
   15048:	416a0a33          	sub	s4,s4,s6
   1504c:	03210c93          	addi	s9,sp,50
   15050:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   15054:	06a10d13          	addi	s10,sp,106
   15058:	05210d93          	addi	s11,sp,82
   1505c:	03415783          	lhu	a5,52(sp)
   15060:	03615703          	lhu	a4,54(sp)
   15064:	00090b93          	mv	s7,s2
   15068:	01079793          	slli	a5,a5,0x10
   1506c:	00e78533          	add	a0,a5,a4
   15070:	00aa6a63          	bltu	s4,a0,15084 <ediv+0x244>
   15074:	000b0593          	mv	a1,s6
   15078:	25d0c0ef          	jal	ra,21ad4 <__udivdi3>
   1507c:	03051b93          	slli	s7,a0,0x30
   15080:	030bdb93          	srli	s7,s7,0x30
   15084:	05010613          	addi	a2,sp,80
   15088:	01010593          	addi	a1,sp,16
   1508c:	000b8513          	mv	a0,s7
   15090:	c41fe0ef          	jal	ra,13cd0 <m16m>
   15094:	03410713          	addi	a4,sp,52
   15098:	05410793          	addi	a5,sp,84
   1509c:	0007d603          	lhu	a2,0(a5)
   150a0:	00075683          	lhu	a3,0(a4)
   150a4:	00278793          	addi	a5,a5,2
   150a8:	00270713          	addi	a4,a4,2
   150ac:	22d61663          	bne	a2,a3,152d8 <ediv+0x498>
   150b0:	ffa796e3          	bne	a5,s10,1509c <ediv+0x25c>
   150b4:	00000793          	li	a5,0
   150b8:	06810693          	addi	a3,sp,104
   150bc:	000c0613          	mv	a2,s8
   150c0:	00065703          	lhu	a4,0(a2)
   150c4:	0006d583          	lhu	a1,0(a3)
   150c8:	ffe60613          	addi	a2,a2,-2
   150cc:	40f70733          	sub	a4,a4,a5
   150d0:	40b70733          	sub	a4,a4,a1
   150d4:	01075793          	srli	a5,a4,0x10
   150d8:	00e61123          	sh	a4,2(a2)
   150dc:	0017f793          	andi	a5,a5,1
   150e0:	ffe68693          	addi	a3,a3,-2
   150e4:	fd961ee3          	bne	a2,s9,150c0 <ediv+0x280>
   150e8:	017a9023          	sh	s7,0(s5)
   150ec:	03410793          	addi	a5,sp,52
   150f0:	0027d703          	lhu	a4,2(a5)
   150f4:	00278793          	addi	a5,a5,2
   150f8:	fee79f23          	sh	a4,-2(a5)
   150fc:	ff879ae3          	bne	a5,s8,150f0 <ediv+0x2b0>
   15100:	04011423          	sh	zero,72(sp)
   15104:	002a8a93          	addi	s5,s5,2
   15108:	f5549ae3          	bne	s1,s5,1505c <ediv+0x21c>
   1510c:	00000713          	li	a4,0
   15110:	03410793          	addi	a5,sp,52
   15114:	04a10613          	addi	a2,sp,74
   15118:	0007d683          	lhu	a3,0(a5)
   1511c:	00278793          	addi	a5,a5,2
   15120:	00d76733          	or	a4,a4,a3
   15124:	fec79ae3          	bne	a5,a2,15118 <ediv+0x2d8>
   15128:	0107179b          	slliw	a5,a4,0x10
   1512c:	4107d79b          	sraiw	a5,a5,0x10
   15130:	00078463          	beqz	a5,15138 <ediv+0x2f8>
   15134:	00100713          	li	a4,1
   15138:	03071593          	slli	a1,a4,0x30
   1513c:	0305d593          	srli	a1,a1,0x30
   15140:	03498713          	addi	a4,s3,52
   15144:	03010793          	addi	a5,sp,48
   15148:	00075683          	lhu	a3,0(a4)
   1514c:	00278793          	addi	a5,a5,2
   15150:	00270713          	addi	a4,a4,2
   15154:	fed79f23          	sh	a3,-2(a5)
   15158:	fef618e3          	bne	a2,a5,15148 <ediv+0x308>
   1515c:	00813783          	ld	a5,8(sp)
   15160:	00013703          	ld	a4,0(sp)
   15164:	000046b7          	lui	a3,0x4
   15168:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc0b1>
   1516c:	40e78ab3          	sub	s5,a5,a4
   15170:	03010513          	addi	a0,sp,48
   15174:	00098793          	mv	a5,s3
   15178:	04000713          	li	a4,64
   1517c:	00da86b3          	add	a3,s5,a3
   15180:	00000613          	li	a2,0
   15184:	a70ff0ef          	jal	ra,143f4 <emdnorm>
   15188:	03015703          	lhu	a4,48(sp)
   1518c:	01015783          	lhu	a5,16(sp)
   15190:	00040593          	mv	a1,s0
   15194:	03010513          	addi	a0,sp,48
   15198:	40e787b3          	sub	a5,a5,a4
   1519c:	00f037b3          	snez	a5,a5
   151a0:	40f007bb          	negw	a5,a5
   151a4:	02f11823          	sh	a5,48(sp)
   151a8:	c05fe0ef          	jal	ra,13dac <emovo.constprop.0>
   151ac:	dc1ff06f          	j	14f6c <ediv+0x12c>
   151b0:	01448713          	addi	a4,s1,20
   151b4:	0004d783          	lhu	a5,0(s1)
   151b8:	00248493          	addi	s1,s1,2
   151bc:	00240413          	addi	s0,s0,2
   151c0:	fef41f23          	sh	a5,-2(s0)
   151c4:	fee498e3          	bne	s1,a4,151b4 <ediv+0x374>
   151c8:	da5ff06f          	j	14f6c <ediv+0x12c>
   151cc:	01490713          	addi	a4,s2,20
   151d0:	00095783          	lhu	a5,0(s2)
   151d4:	00290913          	addi	s2,s2,2
   151d8:	00240413          	addi	s0,s0,2
   151dc:	fef41f23          	sh	a5,-2(s0)
   151e0:	fee918e3          	bne	s2,a4,151d0 <ediv+0x390>
   151e4:	d89ff06f          	j	14f6c <ediv+0x12c>
   151e8:	0000d597          	auipc	a1,0xd
   151ec:	c6058593          	addi	a1,a1,-928 # 21e48 <ezero>
   151f0:	00090513          	mv	a0,s2
   151f4:	8c0ff0ef          	jal	ra,142b4 <ecmp>
   151f8:	ce051ae3          	bnez	a0,14eec <ediv+0xac>
   151fc:	d49ff06f          	j	14f44 <ediv+0x104>
   15200:	da080ae3          	beqz	a6,14fb4 <ediv+0x174>
   15204:	01440793          	addi	a5,s0,20
   15208:	00240413          	addi	s0,s0,2
   1520c:	fe041f23          	sh	zero,-2(s0)
   15210:	fef41ce3          	bne	s0,a5,15208 <ediv+0x3c8>
   15214:	d59ff06f          	j	14f6c <ediv+0x12c>
   15218:	00000813          	li	a6,0
   1521c:	01290693          	addi	a3,s2,18
   15220:	00090793          	mv	a5,s2
   15224:	0007d703          	lhu	a4,0(a5)
   15228:	00278793          	addi	a5,a5,2
   1522c:	fc071ae3          	bnez	a4,15200 <ediv+0x3c0>
   15230:	fed79ae3          	bne	a5,a3,15224 <ediv+0x3e4>
   15234:	000087b7          	lui	a5,0x8
   15238:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   1523c:	04f50a63          	beq	a0,a5,15290 <ediv+0x450>
   15240:	00f65613          	srli	a2,a2,0xf
   15244:	00095783          	lhu	a5,0(s2)
   15248:	00290913          	addi	s2,s2,2
   1524c:	18079063          	bnez	a5,153cc <ediv+0x58c>
   15250:	fed91ae3          	bne	s2,a3,15244 <ediv+0x404>
   15254:	00f5d593          	srli	a1,a1,0xf
   15258:	00c58463          	beq	a1,a2,15260 <ediv+0x420>
   1525c:	00008737          	lui	a4,0x8
   15260:	00e41923          	sh	a4,18(s0)
   15264:	00040793          	mv	a5,s0
   15268:	01240713          	addi	a4,s0,18
   1526c:	00278793          	addi	a5,a5,2
   15270:	fe079f23          	sh	zero,-2(a5)
   15274:	fee79ce3          	bne	a5,a4,1526c <ediv+0x42c>
   15278:	01245783          	lhu	a5,18(s0)
   1527c:	00008737          	lui	a4,0x8
   15280:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15284:	00e7e7b3          	or	a5,a5,a4
   15288:	00f41923          	sh	a5,18(s0)
   1528c:	ce1ff06f          	j	14f6c <ediv+0x12c>
   15290:	01248513          	addi	a0,s1,18
   15294:	0004d783          	lhu	a5,0(s1)
   15298:	00248493          	addi	s1,s1,2
   1529c:	12079c63          	bnez	a5,153d4 <ediv+0x594>
   152a0:	fea49ae3          	bne	s1,a0,15294 <ediv+0x454>
   152a4:	f9dff06f          	j	15240 <ediv+0x400>
   152a8:	03410793          	addi	a5,sp,52
   152ac:	04810c13          	addi	s8,sp,72
   152b0:	0cfc0e63          	beq	s8,a5,1538c <ediv+0x54c>
   152b4:	0007d703          	lhu	a4,0(a5)
   152b8:	00278793          	addi	a5,a5,2
   152bc:	fe070ae3          	beqz	a4,152b0 <ediv+0x470>
   152c0:	03010513          	addi	a0,sp,48
   152c4:	ba5fe0ef          	jal	ra,13e68 <enormlz>
   152c8:	40a007b3          	neg	a5,a0
   152cc:	01215603          	lhu	a2,18(sp)
   152d0:	00f13423          	sd	a5,8(sp)
   152d4:	d0dff06f          	j	14fe0 <ediv+0x1a0>
   152d8:	dcc6fee3          	bgeu	a3,a2,150b4 <ediv+0x274>
   152dc:	fffb879b          	addiw	a5,s7,-1
   152e0:	03079893          	slli	a7,a5,0x30
   152e4:	0308d893          	srli	a7,a7,0x30
   152e8:	00000693          	li	a3,0
   152ec:	02810613          	addi	a2,sp,40
   152f0:	06810713          	addi	a4,sp,104
   152f4:	00075783          	lhu	a5,0(a4)
   152f8:	00065583          	lhu	a1,0(a2)
   152fc:	ffe70713          	addi	a4,a4,-2
   15300:	40d787b3          	sub	a5,a5,a3
   15304:	40b787b3          	sub	a5,a5,a1
   15308:	0107d693          	srli	a3,a5,0x10
   1530c:	00f71123          	sh	a5,2(a4)
   15310:	0016f693          	andi	a3,a3,1
   15314:	ffe60613          	addi	a2,a2,-2
   15318:	fdb71ee3          	bne	a4,s11,152f4 <ediv+0x4b4>
   1531c:	03410713          	addi	a4,sp,52
   15320:	05410793          	addi	a5,sp,84
   15324:	0007d603          	lhu	a2,0(a5)
   15328:	00075683          	lhu	a3,0(a4)
   1532c:	00278793          	addi	a5,a5,2
   15330:	00270713          	addi	a4,a4,2
   15334:	00d61863          	bne	a2,a3,15344 <ediv+0x504>
   15338:	ffa796e3          	bne	a5,s10,15324 <ediv+0x4e4>
   1533c:	00088b93          	mv	s7,a7
   15340:	d75ff06f          	j	150b4 <ediv+0x274>
   15344:	fec6fce3          	bgeu	a3,a2,1533c <ediv+0x4fc>
   15348:	ffeb851b          	addiw	a0,s7,-2
   1534c:	03051b93          	slli	s7,a0,0x30
   15350:	030bdb93          	srli	s7,s7,0x30
   15354:	00000693          	li	a3,0
   15358:	02810613          	addi	a2,sp,40
   1535c:	06810713          	addi	a4,sp,104
   15360:	00075783          	lhu	a5,0(a4)
   15364:	00065583          	lhu	a1,0(a2)
   15368:	ffe70713          	addi	a4,a4,-2
   1536c:	40d787b3          	sub	a5,a5,a3
   15370:	40b787b3          	sub	a5,a5,a1
   15374:	0107d693          	srli	a3,a5,0x10
   15378:	00f71123          	sh	a5,2(a4)
   1537c:	0016f693          	andi	a3,a3,1
   15380:	ffe60613          	addi	a2,a2,-2
   15384:	fdb71ee3          	bne	a4,s11,15360 <ediv+0x520>
   15388:	d2dff06f          	j	150b4 <ediv+0x274>
   1538c:	01440793          	addi	a5,s0,20
   15390:	00240413          	addi	s0,s0,2
   15394:	fe041f23          	sh	zero,-2(s0)
   15398:	fef41ce3          	bne	s0,a5,15390 <ediv+0x550>
   1539c:	bd1ff06f          	j	14f6c <ediv+0x12c>
   153a0:	01015703          	lhu	a4,16(sp)
   153a4:	03015783          	lhu	a5,48(sp)
   153a8:	00f70463          	beq	a4,a5,153b0 <ediv+0x570>
   153ac:	00008637          	lui	a2,0x8
   153b0:	00c41923          	sh	a2,18(s0)
   153b4:	01240713          	addi	a4,s0,18
   153b8:	00040793          	mv	a5,s0
   153bc:	00278793          	addi	a5,a5,2
   153c0:	fe079f23          	sh	zero,-2(a5)
   153c4:	fef71ce3          	bne	a4,a5,153bc <ediv+0x57c>
   153c8:	eb1ff06f          	j	15278 <ediv+0x438>
   153cc:	00000593          	li	a1,0
   153d0:	e89ff06f          	j	15258 <ediv+0x418>
   153d4:	00000613          	li	a2,0
   153d8:	e6dff06f          	j	15244 <ediv+0x404>
   153dc:	00100813          	li	a6,1
   153e0:	e41ff06f          	j	15220 <ediv+0x3e0>

00000000000153e4 <e113toe.isra.0>:
   153e4:	fd010113          	addi	sp,sp,-48
   153e8:	02813023          	sd	s0,32(sp)
   153ec:	02113423          	sd	ra,40(sp)
   153f0:	00058413          	mv	s0,a1
   153f4:	00010793          	mv	a5,sp
   153f8:	01a10713          	addi	a4,sp,26
   153fc:	00278793          	addi	a5,a5,2
   15400:	fe079f23          	sh	zero,-2(a5)
   15404:	fee79ce3          	bne	a5,a4,153fc <e113toe.isra.0+0x18>
   15408:	00e55783          	lhu	a5,14(a0)
   1540c:	00f7d713          	srli	a4,a5,0xf
   15410:	06071c63          	bnez	a4,15488 <e113toe.isra.0+0xa4>
   15414:	00008737          	lui	a4,0x8
   15418:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1541c:	00e7f6b3          	and	a3,a5,a4
   15420:	00011023          	sh	zero,0(sp)
   15424:	00068613          	mv	a2,a3
   15428:	06e68e63          	beq	a3,a4,154a4 <e113toe.isra.0+0xc0>
   1542c:	00e50793          	addi	a5,a0,14
   15430:	00d11123          	sh	a3,2(sp)
   15434:	00610713          	addi	a4,sp,6
   15438:	ffe7d683          	lhu	a3,-2(a5)
   1543c:	ffe78793          	addi	a5,a5,-2
   15440:	00270713          	addi	a4,a4,2
   15444:	fed71f23          	sh	a3,-2(a4)
   15448:	fef518e3          	bne	a0,a5,15438 <e113toe.isra.0+0x54>
   1544c:	02061263          	bnez	a2,15470 <e113toe.isra.0+0x8c>
   15450:	00011223          	sh	zero,4(sp)
   15454:	00040593          	mv	a1,s0
   15458:	00010513          	mv	a0,sp
   1545c:	951fe0ef          	jal	ra,13dac <emovo.constprop.0>
   15460:	02813083          	ld	ra,40(sp)
   15464:	02013403          	ld	s0,32(sp)
   15468:	03010113          	addi	sp,sp,48
   1546c:	00008067          	ret
   15470:	00100793          	li	a5,1
   15474:	fff00593          	li	a1,-1
   15478:	00010513          	mv	a0,sp
   1547c:	00f11223          	sh	a5,4(sp)
   15480:	b5dfe0ef          	jal	ra,13fdc <eshift.part.0>
   15484:	fd1ff06f          	j	15454 <e113toe.isra.0+0x70>
   15488:	fff00713          	li	a4,-1
   1548c:	00e11023          	sh	a4,0(sp)
   15490:	00008737          	lui	a4,0x8
   15494:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15498:	00e7f6b3          	and	a3,a5,a4
   1549c:	00068613          	mv	a2,a3
   154a0:	f8e696e3          	bne	a3,a4,1542c <e113toe.isra.0+0x48>
   154a4:	00050793          	mv	a5,a0
   154a8:	00e50693          	addi	a3,a0,14
   154ac:	0007d703          	lhu	a4,0(a5)
   154b0:	00278793          	addi	a5,a5,2
   154b4:	06071c63          	bnez	a4,1552c <e113toe.isra.0+0x148>
   154b8:	fef69ae3          	bne	a3,a5,154ac <e113toe.isra.0+0xc8>
   154bc:	01440713          	addi	a4,s0,20
   154c0:	00040793          	mv	a5,s0
   154c4:	00278793          	addi	a5,a5,2
   154c8:	fe079f23          	sh	zero,-2(a5)
   154cc:	fee79ce3          	bne	a5,a4,154c4 <e113toe.isra.0+0xe0>
   154d0:	01240713          	addi	a4,s0,18
   154d4:	00040793          	mv	a5,s0
   154d8:	00278793          	addi	a5,a5,2
   154dc:	fe079f23          	sh	zero,-2(a5)
   154e0:	fef71ce3          	bne	a4,a5,154d8 <e113toe.isra.0+0xf4>
   154e4:	01245783          	lhu	a5,18(s0)
   154e8:	000086b7          	lui	a3,0x8
   154ec:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   154f0:	00d7e7b3          	or	a5,a5,a3
   154f4:	03079793          	slli	a5,a5,0x30
   154f8:	0307d793          	srli	a5,a5,0x30
   154fc:	00f41923          	sh	a5,18(s0)
   15500:	00e51683          	lh	a3,14(a0)
   15504:	f406dee3          	bgez	a3,15460 <e113toe.isra.0+0x7c>
   15508:	00040693          	mv	a3,s0
   1550c:	0006d603          	lhu	a2,0(a3)
   15510:	00268693          	addi	a3,a3,2
   15514:	f40616e3          	bnez	a2,15460 <e113toe.isra.0+0x7c>
   15518:	fed71ae3          	bne	a4,a3,1550c <e113toe.isra.0+0x128>
   1551c:	ffff8737          	lui	a4,0xffff8
   15520:	00e7c7b3          	xor	a5,a5,a4
   15524:	00f41923          	sh	a5,18(s0)
   15528:	f39ff06f          	j	15460 <e113toe.isra.0+0x7c>
   1552c:	01040713          	addi	a4,s0,16
   15530:	00040793          	mv	a5,s0
   15534:	00278793          	addi	a5,a5,2
   15538:	fe079f23          	sh	zero,-2(a5)
   1553c:	fee79ce3          	bne	a5,a4,15534 <e113toe.isra.0+0x150>
   15540:	ffffc7b7          	lui	a5,0xffffc
   15544:	00f41823          	sh	a5,16(s0)
   15548:	ffff87b7          	lui	a5,0xffff8
   1554c:	fff7c793          	not	a5,a5
   15550:	00f41923          	sh	a5,18(s0)
   15554:	f0dff06f          	j	15460 <e113toe.isra.0+0x7c>

0000000000015558 <_ldtoa_r>:
   15558:	db010113          	addi	sp,sp,-592
   1555c:	09100313          	li	t1,145
   15560:	04c13423          	sd	a2,72(sp)
   15564:	06053e03          	ld	t3,96(a0)
   15568:	02031613          	slli	a2,t1,0x20
   1556c:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   15570:	24813023          	sd	s0,576(sp)
   15574:	23413023          	sd	s4,544(sp)
   15578:	21613823          	sd	s6,528(sp)
   1557c:	24113423          	sd	ra,584(sp)
   15580:	22913c23          	sd	s1,568(sp)
   15584:	23213823          	sd	s2,560(sp)
   15588:	23313423          	sd	s3,552(sp)
   1558c:	21513c23          	sd	s5,536(sp)
   15590:	21713423          	sd	s7,520(sp)
   15594:	21813023          	sd	s8,512(sp)
   15598:	1f913c23          	sd	s9,504(sp)
   1559c:	1fa13823          	sd	s10,496(sp)
   155a0:	1fb13423          	sd	s11,488(sp)
   155a4:	04b13023          	sd	a1,64(sp)
   155a8:	18c13823          	sd	a2,400(sp)
   155ac:	00e13423          	sd	a4,8(sp)
   155b0:	00f13823          	sd	a5,16(sp)
   155b4:	03113023          	sd	a7,32(sp)
   155b8:	00050a13          	mv	s4,a0
   155bc:	00068b13          	mv	s6,a3
   155c0:	00080413          	mv	s0,a6
   155c4:	020e0263          	beqz	t3,155e8 <_ldtoa_r+0x90>
   155c8:	06852703          	lw	a4,104(a0)
   155cc:	00100793          	li	a5,1
   155d0:	000e0593          	mv	a1,t3
   155d4:	00e797bb          	sllw	a5,a5,a4
   155d8:	00ee2423          	sw	a4,8(t3)
   155dc:	00fe2623          	sw	a5,12(t3)
   155e0:	05c020ef          	jal	ra,1763c <_Bfree>
   155e4:	060a3023          	sd	zero,96(s4)
   155e8:	07010593          	addi	a1,sp,112
   155ec:	04010513          	addi	a0,sp,64
   155f0:	df5ff0ef          	jal	ra,153e4 <e113toe.isra.0>
   155f4:	08215683          	lhu	a3,130(sp)
   155f8:	000087b7          	lui	a5,0x8
   155fc:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15600:	00f6f5b3          	and	a1,a3,a5
   15604:	00f59e63          	bne	a1,a5,15620 <_ldtoa_r+0xc8>
   15608:	07010793          	addi	a5,sp,112
   1560c:	08210613          	addi	a2,sp,130
   15610:	0007d703          	lhu	a4,0(a5)
   15614:	00278793          	addi	a5,a5,2
   15618:	460718e3          	bnez	a4,16288 <_ldtoa_r+0xd30>
   1561c:	fec79ae3          	bne	a5,a2,15610 <_ldtoa_r+0xb8>
   15620:	00f6d693          	srli	a3,a3,0xf
   15624:	00d42023          	sw	a3,0(s0)
   15628:	00300793          	li	a5,3
   1562c:	12fb0ee3          	beq	s6,a5,15f68 <_ldtoa_r+0xa10>
   15630:	01400793          	li	a5,20
   15634:	00f13023          	sd	a5,0(sp)
   15638:	440b1ce3          	bnez	s6,16290 <_ldtoa_r+0xd38>
   1563c:	19412703          	lw	a4,404(sp)
   15640:	000087b7          	lui	a5,0x8
   15644:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15648:	00e13c23          	sd	a4,24(sp)
   1564c:	00f59e63          	bne	a1,a5,15668 <_ldtoa_r+0x110>
   15650:	07010793          	addi	a5,sp,112
   15654:	08210693          	addi	a3,sp,130
   15658:	0007d703          	lhu	a4,0(a5)
   1565c:	00278793          	addi	a5,a5,2
   15660:	180710e3          	bnez	a4,15fe0 <_ldtoa_r+0xa88>
   15664:	fed79ae3          	bne	a5,a3,15658 <_ldtoa_r+0x100>
   15668:	09000793          	li	a5,144
   1566c:	18f12a23          	sw	a5,404(sp)
   15670:	09010713          	addi	a4,sp,144
   15674:	07010793          	addi	a5,sp,112
   15678:	08410613          	addi	a2,sp,132
   1567c:	0007d683          	lhu	a3,0(a5)
   15680:	00278793          	addi	a5,a5,2
   15684:	00270713          	addi	a4,a4,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd3402>
   15688:	fed71f23          	sh	a3,-2(a4)
   1568c:	fec798e3          	bne	a5,a2,1567c <_ldtoa_r+0x124>
   15690:	0a215603          	lhu	a2,162(sp)
   15694:	00000913          	li	s2,0
   15698:	00f65793          	srli	a5,a2,0xf
   1569c:	60079a63          	bnez	a5,15cb0 <_ldtoa_r+0x758>
   156a0:	00000693          	li	a3,0
   156a4:	0b010793          	addi	a5,sp,176
   156a8:	0000c717          	auipc	a4,0xc
   156ac:	7b870713          	addi	a4,a4,1976 # 21e60 <eone>
   156b0:	0c410d93          	addi	s11,sp,196
   156b4:	0080006f          	j	156bc <_ldtoa_r+0x164>
   156b8:	00075683          	lhu	a3,0(a4)
   156bc:	00278793          	addi	a5,a5,2
   156c0:	fed79f23          	sh	a3,-2(a5)
   156c4:	00270713          	addi	a4,a4,2
   156c8:	ffb798e3          	bne	a5,s11,156b8 <_ldtoa_r+0x160>
   156cc:	16060a63          	beqz	a2,15840 <_ldtoa_r+0x2e8>
   156d0:	000087b7          	lui	a5,0x8
   156d4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   156d8:	56f60ae3          	beq	a2,a5,1644c <_ldtoa_r+0xef4>
   156dc:	0a011783          	lh	a5,160(sp)
   156e0:	5e07d8e3          	bgez	a5,164d0 <_ldtoa_r+0xf78>
   156e4:	09010593          	addi	a1,sp,144
   156e8:	0000c517          	auipc	a0,0xc
   156ec:	77850513          	addi	a0,a0,1912 # 21e60 <eone>
   156f0:	bc5fe0ef          	jal	ra,142b4 <ecmp>
   156f4:	16050263          	beqz	a0,15858 <_ldtoa_r+0x300>
   156f8:	100544e3          	bltz	a0,16000 <_ldtoa_r+0xaa8>
   156fc:	0a215783          	lhu	a5,162(sp)
   15700:	66079ae3          	bnez	a5,16574 <_ldtoa_r+0x101c>
   15704:	0a011783          	lh	a5,160(sp)
   15708:	00000493          	li	s1,0
   1570c:	19010993          	addi	s3,sp,400
   15710:	0207c663          	bltz	a5,1573c <_ldtoa_r+0x1e4>
   15714:	0000d417          	auipc	s0,0xd
   15718:	85440413          	addi	s0,s0,-1964 # 21f68 <etens+0xf0>
   1571c:	09010613          	addi	a2,sp,144
   15720:	00098693          	mv	a3,s3
   15724:	00060593          	mv	a1,a2
   15728:	00040513          	mv	a0,s0
   1572c:	a50ff0ef          	jal	ra,1497c <emul>
   15730:	0a011783          	lh	a5,160(sp)
   15734:	fff4849b          	addiw	s1,s1,-1
   15738:	fe07d2e3          	bgez	a5,1571c <_ldtoa_r+0x1c4>
   1573c:	0f010413          	addi	s0,sp,240
   15740:	10810b93          	addi	s7,sp,264
   15744:	00040713          	mv	a4,s0
   15748:	09010793          	addi	a5,sp,144
   1574c:	0a410613          	addi	a2,sp,164
   15750:	0007d683          	lhu	a3,0(a5)
   15754:	00278793          	addi	a5,a5,2
   15758:	00270713          	addi	a4,a4,2
   1575c:	fed71f23          	sh	a3,-2(a4)
   15760:	fec798e3          	bne	a5,a2,15750 <_ldtoa_r+0x1f8>
   15764:	00000693          	li	a3,0
   15768:	0b010793          	addi	a5,sp,176
   1576c:	0000c717          	auipc	a4,0xc
   15770:	6f470713          	addi	a4,a4,1780 # 21e60 <eone>
   15774:	0080006f          	j	1577c <_ldtoa_r+0x224>
   15778:	00075683          	lhu	a3,0(a4)
   1577c:	00278793          	addi	a5,a5,2
   15780:	fed79f23          	sh	a3,-2(a5)
   15784:	00270713          	addi	a4,a4,2
   15788:	ffb798e3          	bne	a5,s11,15778 <_ldtoa_r+0x220>
   1578c:	fffffab7          	lui	s5,0xfffff
   15790:	0000cc17          	auipc	s8,0xc
   15794:	6e8c0c13          	addi	s8,s8,1768 # 21e78 <etens>
   15798:	0000cc97          	auipc	s9,0xc
   1579c:	7e8c8c93          	addi	s9,s9,2024 # 21f80 <emtens>
   157a0:	0000cd97          	auipc	s11,0xc
   157a4:	6c0d8d93          	addi	s11,s11,1728 # 21e60 <eone>
   157a8:	0000cd17          	auipc	s10,0xc
   157ac:	7c0d0d13          	addi	s10,s10,1984 # 21f68 <etens+0xf0>
   157b0:	00c0006f          	j	157bc <_ldtoa_r+0x264>
   157b4:	014c8c93          	addi	s9,s9,20
   157b8:	014c0c13          	addi	s8,s8,20
   157bc:	00040593          	mv	a1,s0
   157c0:	000d8513          	mv	a0,s11
   157c4:	af1fe0ef          	jal	ra,142b4 <ecmp>
   157c8:	00050793          	mv	a5,a0
   157cc:	00040593          	mv	a1,s0
   157d0:	000c8513          	mv	a0,s9
   157d4:	04f05663          	blez	a5,15820 <_ldtoa_r+0x2c8>
   157d8:	addfe0ef          	jal	ra,142b4 <ecmp>
   157dc:	00050793          	mv	a5,a0
   157e0:	00098693          	mv	a3,s3
   157e4:	00040613          	mv	a2,s0
   157e8:	00040593          	mv	a1,s0
   157ec:	000c0513          	mv	a0,s8
   157f0:	0207c063          	bltz	a5,15810 <_ldtoa_r+0x2b8>
   157f4:	988ff0ef          	jal	ra,1497c <emul>
   157f8:	0b010613          	addi	a2,sp,176
   157fc:	00098693          	mv	a3,s3
   15800:	00060593          	mv	a1,a2
   15804:	000c0513          	mv	a0,s8
   15808:	974ff0ef          	jal	ra,1497c <emul>
   1580c:	009a84bb          	addw	s1,s5,s1
   15810:	01fad79b          	srliw	a5,s5,0x1f
   15814:	015787bb          	addw	a5,a5,s5
   15818:	4017da9b          	sraiw	s5,a5,0x1
   1581c:	f9ac1ce3          	bne	s8,s10,157b4 <_ldtoa_r+0x25c>
   15820:	0b010613          	addi	a2,sp,176
   15824:	00098693          	mv	a3,s3
   15828:	0000c597          	auipc	a1,0xc
   1582c:	63858593          	addi	a1,a1,1592 # 21e60 <eone>
   15830:	00060513          	mv	a0,a2
   15834:	e0cff0ef          	jal	ra,14e40 <ediv>
   15838:	15010a93          	addi	s5,sp,336
   1583c:	0300006f          	j	1586c <_ldtoa_r+0x314>
   15840:	09010793          	addi	a5,sp,144
   15844:	0a210693          	addi	a3,sp,162
   15848:	0007d703          	lhu	a4,0(a5)
   1584c:	00278793          	addi	a5,a5,2
   15850:	e8071ae3          	bnez	a4,156e4 <_ldtoa_r+0x18c>
   15854:	fef69ae3          	bne	a3,a5,15848 <_ldtoa_r+0x2f0>
   15858:	00000493          	li	s1,0
   1585c:	15010a93          	addi	s5,sp,336
   15860:	19010993          	addi	s3,sp,400
   15864:	0f010413          	addi	s0,sp,240
   15868:	10810b93          	addi	s7,sp,264
   1586c:	00040593          	mv	a1,s0
   15870:	0b010513          	addi	a0,sp,176
   15874:	989fe0ef          	jal	ra,141fc <emovi>
   15878:	0b010713          	addi	a4,sp,176
   1587c:	00040793          	mv	a5,s0
   15880:	0007d683          	lhu	a3,0(a5)
   15884:	00278793          	addi	a5,a5,2
   15888:	00270713          	addi	a4,a4,2
   1588c:	fed71f23          	sh	a3,-2(a4)
   15890:	ff7798e3          	bne	a5,s7,15880 <_ldtoa_r+0x328>
   15894:	00040593          	mv	a1,s0
   15898:	09010513          	addi	a0,sp,144
   1589c:	0c011423          	sh	zero,200(sp)
   158a0:	95dfe0ef          	jal	ra,141fc <emovi>
   158a4:	09010793          	addi	a5,sp,144
   158a8:	00045703          	lhu	a4,0(s0)
   158ac:	00240413          	addi	s0,s0,2
   158b0:	00278793          	addi	a5,a5,2
   158b4:	fee79f23          	sh	a4,-2(a5)
   158b8:	ff7418e3          	bne	s0,s7,158a8 <_ldtoa_r+0x350>
   158bc:	00098613          	mv	a2,s3
   158c0:	09010593          	addi	a1,sp,144
   158c4:	0b010513          	addi	a0,sp,176
   158c8:	0a011423          	sh	zero,168(sp)
   158cc:	f4dfe0ef          	jal	ra,14818 <eiremain>
   158d0:	1dc15c03          	lhu	s8,476(sp)
   158d4:	1c0c1463          	bnez	s8,15a9c <_ldtoa_r+0x544>
   158d8:	0000c417          	auipc	s0,0xc
   158dc:	57040413          	addi	s0,s0,1392 # 21e48 <ezero>
   158e0:	0a810d13          	addi	s10,sp,168
   158e4:	09210d93          	addi	s11,sp,146
   158e8:	0d210c93          	addi	s9,sp,210
   158ec:	00040593          	mv	a1,s0
   158f0:	09010513          	addi	a0,sp,144
   158f4:	9c1fe0ef          	jal	ra,142b4 <ecmp>
   158f8:	1a050263          	beqz	a0,15a9c <_ldtoa_r+0x544>
   158fc:	00000713          	li	a4,0
   15900:	000d0693          	mv	a3,s10
   15904:	01c0006f          	j	15920 <_ldtoa_r+0x3c8>
   15908:	0017171b          	slliw	a4,a4,0x1
   1590c:	00f69023          	sh	a5,0(a3)
   15910:	03071713          	slli	a4,a4,0x30
   15914:	ffe68693          	addi	a3,a3,-2
   15918:	03075713          	srli	a4,a4,0x30
   1591c:	05b68263          	beq	a3,s11,15960 <_ldtoa_r+0x408>
   15920:	0006d783          	lhu	a5,0(a3)
   15924:	00f7d613          	srli	a2,a5,0xf
   15928:	0017979b          	slliw	a5,a5,0x1
   1592c:	00060463          	beqz	a2,15934 <_ldtoa_r+0x3dc>
   15930:	00176713          	ori	a4,a4,1
   15934:	03079793          	slli	a5,a5,0x30
   15938:	0307d793          	srli	a5,a5,0x30
   1593c:	00277613          	andi	a2,a4,2
   15940:	0017e593          	ori	a1,a5,1
   15944:	fc0602e3          	beqz	a2,15908 <_ldtoa_r+0x3b0>
   15948:	0017171b          	slliw	a4,a4,0x1
   1594c:	00b69023          	sh	a1,0(a3)
   15950:	03071713          	slli	a4,a4,0x30
   15954:	ffe68693          	addi	a3,a3,-2
   15958:	03075713          	srli	a4,a4,0x30
   1595c:	fdb692e3          	bne	a3,s11,15920 <_ldtoa_r+0x3c8>
   15960:	0d010713          	addi	a4,sp,208
   15964:	09010793          	addi	a5,sp,144
   15968:	0007d683          	lhu	a3,0(a5)
   1596c:	00278793          	addi	a5,a5,2
   15970:	00270713          	addi	a4,a4,2
   15974:	fed71f23          	sh	a3,-2(a4)
   15978:	ffa798e3          	bne	a5,s10,15968 <_ldtoa_r+0x410>
   1597c:	0e011423          	sh	zero,232(sp)
   15980:	00000713          	li	a4,0
   15984:	0e810693          	addi	a3,sp,232
   15988:	01c0006f          	j	159a4 <_ldtoa_r+0x44c>
   1598c:	0017171b          	slliw	a4,a4,0x1
   15990:	00f69023          	sh	a5,0(a3)
   15994:	03071713          	slli	a4,a4,0x30
   15998:	ffe68693          	addi	a3,a3,-2
   1599c:	03075713          	srli	a4,a4,0x30
   159a0:	05968263          	beq	a3,s9,159e4 <_ldtoa_r+0x48c>
   159a4:	0006d783          	lhu	a5,0(a3)
   159a8:	00f7d613          	srli	a2,a5,0xf
   159ac:	0017979b          	slliw	a5,a5,0x1
   159b0:	00060463          	beqz	a2,159b8 <_ldtoa_r+0x460>
   159b4:	00176713          	ori	a4,a4,1
   159b8:	03079793          	slli	a5,a5,0x30
   159bc:	0307d793          	srli	a5,a5,0x30
   159c0:	00277613          	andi	a2,a4,2
   159c4:	0017e593          	ori	a1,a5,1
   159c8:	fc0602e3          	beqz	a2,1598c <_ldtoa_r+0x434>
   159cc:	0017171b          	slliw	a4,a4,0x1
   159d0:	00b69023          	sh	a1,0(a3)
   159d4:	03071713          	slli	a4,a4,0x30
   159d8:	ffe68693          	addi	a3,a3,-2
   159dc:	03075713          	srli	a4,a4,0x30
   159e0:	fd9692e3          	bne	a3,s9,159a4 <_ldtoa_r+0x44c>
   159e4:	00000713          	li	a4,0
   159e8:	0e810693          	addi	a3,sp,232
   159ec:	01c0006f          	j	15a08 <_ldtoa_r+0x4b0>
   159f0:	0017171b          	slliw	a4,a4,0x1
   159f4:	00f69023          	sh	a5,0(a3)
   159f8:	03071713          	slli	a4,a4,0x30
   159fc:	ffe68693          	addi	a3,a3,-2
   15a00:	03075713          	srli	a4,a4,0x30
   15a04:	05968263          	beq	a3,s9,15a48 <_ldtoa_r+0x4f0>
   15a08:	0006d783          	lhu	a5,0(a3)
   15a0c:	00f7d613          	srli	a2,a5,0xf
   15a10:	0017979b          	slliw	a5,a5,0x1
   15a14:	00060463          	beqz	a2,15a1c <_ldtoa_r+0x4c4>
   15a18:	00176713          	ori	a4,a4,1
   15a1c:	03079793          	slli	a5,a5,0x30
   15a20:	0307d793          	srli	a5,a5,0x30
   15a24:	00277613          	andi	a2,a4,2
   15a28:	0017e593          	ori	a1,a5,1
   15a2c:	fc0602e3          	beqz	a2,159f0 <_ldtoa_r+0x498>
   15a30:	0017171b          	slliw	a4,a4,0x1
   15a34:	00b69023          	sh	a1,0(a3)
   15a38:	03071713          	slli	a4,a4,0x30
   15a3c:	ffe68693          	addi	a3,a3,-2
   15a40:	03075713          	srli	a4,a4,0x30
   15a44:	fd9692e3          	bne	a3,s9,15a08 <_ldtoa_r+0x4b0>
   15a48:	00000613          	li	a2,0
   15a4c:	000d0693          	mv	a3,s10
   15a50:	0e810713          	addi	a4,sp,232
   15a54:	0006d583          	lhu	a1,0(a3)
   15a58:	00075783          	lhu	a5,0(a4)
   15a5c:	ffe68693          	addi	a3,a3,-2
   15a60:	ffe70713          	addi	a4,a4,-2
   15a64:	00b787b3          	add	a5,a5,a1
   15a68:	00c787b3          	add	a5,a5,a2
   15a6c:	0107d613          	srli	a2,a5,0x10
   15a70:	00f69123          	sh	a5,2(a3)
   15a74:	00167613          	andi	a2,a2,1
   15a78:	fd971ee3          	bne	a4,s9,15a54 <_ldtoa_r+0x4fc>
   15a7c:	00098613          	mv	a2,s3
   15a80:	09010593          	addi	a1,sp,144
   15a84:	0b010513          	addi	a0,sp,176
   15a88:	d91fe0ef          	jal	ra,14818 <eiremain>
   15a8c:	1dc15783          	lhu	a5,476(sp)
   15a90:	fff4849b          	addiw	s1,s1,-1
   15a94:	e4078ce3          	beqz	a5,158ec <_ldtoa_r+0x394>
   15a98:	00078c13          	mv	s8,a5
   15a9c:	02d00793          	li	a5,45
   15aa0:	00091463          	bnez	s2,15aa8 <_ldtoa_r+0x550>
   15aa4:	02000793          	li	a5,32
   15aa8:	14f10823          	sb	a5,336(sp)
   15aac:	00300713          	li	a4,3
   15ab0:	00013783          	ld	a5,0(sp)
   15ab4:	00eb1463          	bne	s6,a4,15abc <_ldtoa_r+0x564>
   15ab8:	009787bb          	addw	a5,a5,s1
   15abc:	02a00713          	li	a4,42
   15ac0:	0007841b          	sext.w	s0,a5
   15ac4:	00f75463          	bge	a4,a5,15acc <_ldtoa_r+0x574>
   15ac8:	02a00413          	li	s0,42
   15acc:	00a00713          	li	a4,10
   15ad0:	4eec0263          	beq	s8,a4,15fb4 <_ldtoa_r+0xa5c>
   15ad4:	030c0c1b          	addiw	s8,s8,48
   15ad8:	02e00713          	li	a4,46
   15adc:	158108a3          	sb	s8,337(sp)
   15ae0:	14e10923          	sb	a4,338(sp)
   15ae4:	1e07c263          	bltz	a5,15cc8 <_ldtoa_r+0x770>
   15ae8:	15310913          	addi	s2,sp,339
   15aec:	00000b93          	li	s7,0
   15af0:	0d010c13          	addi	s8,sp,208
   15af4:	0a810d13          	addi	s10,sp,168
   15af8:	09210d93          	addi	s11,sp,146
   15afc:	0d210c93          	addi	s9,sp,210
   15b00:	00000713          	li	a4,0
   15b04:	000d0693          	mv	a3,s10
   15b08:	01c0006f          	j	15b24 <_ldtoa_r+0x5cc>
   15b0c:	0017171b          	slliw	a4,a4,0x1
   15b10:	00f69023          	sh	a5,0(a3)
   15b14:	03071713          	slli	a4,a4,0x30
   15b18:	ffe68693          	addi	a3,a3,-2
   15b1c:	03075713          	srli	a4,a4,0x30
   15b20:	05b68263          	beq	a3,s11,15b64 <_ldtoa_r+0x60c>
   15b24:	0006d783          	lhu	a5,0(a3)
   15b28:	00f7d613          	srli	a2,a5,0xf
   15b2c:	0017979b          	slliw	a5,a5,0x1
   15b30:	00060463          	beqz	a2,15b38 <_ldtoa_r+0x5e0>
   15b34:	00176713          	ori	a4,a4,1
   15b38:	03079793          	slli	a5,a5,0x30
   15b3c:	0307d793          	srli	a5,a5,0x30
   15b40:	00277613          	andi	a2,a4,2
   15b44:	0017e593          	ori	a1,a5,1
   15b48:	fc0602e3          	beqz	a2,15b0c <_ldtoa_r+0x5b4>
   15b4c:	0017171b          	slliw	a4,a4,0x1
   15b50:	00b69023          	sh	a1,0(a3)
   15b54:	03071713          	slli	a4,a4,0x30
   15b58:	ffe68693          	addi	a3,a3,-2
   15b5c:	03075713          	srli	a4,a4,0x30
   15b60:	fdb692e3          	bne	a3,s11,15b24 <_ldtoa_r+0x5cc>
   15b64:	000c0713          	mv	a4,s8
   15b68:	09010793          	addi	a5,sp,144
   15b6c:	0007d683          	lhu	a3,0(a5)
   15b70:	00278793          	addi	a5,a5,2
   15b74:	00270713          	addi	a4,a4,2
   15b78:	fed71f23          	sh	a3,-2(a4)
   15b7c:	ffa798e3          	bne	a5,s10,15b6c <_ldtoa_r+0x614>
   15b80:	0e011423          	sh	zero,232(sp)
   15b84:	00000713          	li	a4,0
   15b88:	0e810693          	addi	a3,sp,232
   15b8c:	01c0006f          	j	15ba8 <_ldtoa_r+0x650>
   15b90:	0017171b          	slliw	a4,a4,0x1
   15b94:	00f69023          	sh	a5,0(a3)
   15b98:	03071713          	slli	a4,a4,0x30
   15b9c:	ffe68693          	addi	a3,a3,-2
   15ba0:	03075713          	srli	a4,a4,0x30
   15ba4:	05968263          	beq	a3,s9,15be8 <_ldtoa_r+0x690>
   15ba8:	0006d783          	lhu	a5,0(a3)
   15bac:	00f7d613          	srli	a2,a5,0xf
   15bb0:	0017979b          	slliw	a5,a5,0x1
   15bb4:	00060463          	beqz	a2,15bbc <_ldtoa_r+0x664>
   15bb8:	00176713          	ori	a4,a4,1
   15bbc:	03079793          	slli	a5,a5,0x30
   15bc0:	0307d793          	srli	a5,a5,0x30
   15bc4:	00277613          	andi	a2,a4,2
   15bc8:	0017e593          	ori	a1,a5,1
   15bcc:	fc0602e3          	beqz	a2,15b90 <_ldtoa_r+0x638>
   15bd0:	0017171b          	slliw	a4,a4,0x1
   15bd4:	00b69023          	sh	a1,0(a3)
   15bd8:	03071713          	slli	a4,a4,0x30
   15bdc:	ffe68693          	addi	a3,a3,-2
   15be0:	03075713          	srli	a4,a4,0x30
   15be4:	fd9692e3          	bne	a3,s9,15ba8 <_ldtoa_r+0x650>
   15be8:	00000713          	li	a4,0
   15bec:	0e810693          	addi	a3,sp,232
   15bf0:	01c0006f          	j	15c0c <_ldtoa_r+0x6b4>
   15bf4:	0017171b          	slliw	a4,a4,0x1
   15bf8:	00f69023          	sh	a5,0(a3)
   15bfc:	03071713          	slli	a4,a4,0x30
   15c00:	ffe68693          	addi	a3,a3,-2
   15c04:	03075713          	srli	a4,a4,0x30
   15c08:	05968263          	beq	a3,s9,15c4c <_ldtoa_r+0x6f4>
   15c0c:	0006d783          	lhu	a5,0(a3)
   15c10:	00f7d613          	srli	a2,a5,0xf
   15c14:	0017979b          	slliw	a5,a5,0x1
   15c18:	00060463          	beqz	a2,15c20 <_ldtoa_r+0x6c8>
   15c1c:	00176713          	ori	a4,a4,1
   15c20:	03079793          	slli	a5,a5,0x30
   15c24:	0307d793          	srli	a5,a5,0x30
   15c28:	00277613          	andi	a2,a4,2
   15c2c:	0017e593          	ori	a1,a5,1
   15c30:	fc0602e3          	beqz	a2,15bf4 <_ldtoa_r+0x69c>
   15c34:	0017171b          	slliw	a4,a4,0x1
   15c38:	00b69023          	sh	a1,0(a3)
   15c3c:	03071713          	slli	a4,a4,0x30
   15c40:	ffe68693          	addi	a3,a3,-2
   15c44:	03075713          	srli	a4,a4,0x30
   15c48:	fd9692e3          	bne	a3,s9,15c0c <_ldtoa_r+0x6b4>
   15c4c:	00000613          	li	a2,0
   15c50:	000d0693          	mv	a3,s10
   15c54:	0e810713          	addi	a4,sp,232
   15c58:	0006d583          	lhu	a1,0(a3)
   15c5c:	00075783          	lhu	a5,0(a4)
   15c60:	ffe68693          	addi	a3,a3,-2
   15c64:	ffe70713          	addi	a4,a4,-2
   15c68:	00b787b3          	add	a5,a5,a1
   15c6c:	00c787b3          	add	a5,a5,a2
   15c70:	0107d613          	srli	a2,a5,0x10
   15c74:	00f69123          	sh	a5,2(a3)
   15c78:	00167613          	andi	a2,a2,1
   15c7c:	fd971ee3          	bne	a4,s9,15c58 <_ldtoa_r+0x700>
   15c80:	00098613          	mv	a2,s3
   15c84:	09010593          	addi	a1,sp,144
   15c88:	0b010513          	addi	a0,sp,176
   15c8c:	b8dfe0ef          	jal	ra,14818 <eiremain>
   15c90:	1dc15603          	lhu	a2,476(sp)
   15c94:	00190793          	addi	a5,s2,1
   15c98:	001b8b9b          	addiw	s7,s7,1
   15c9c:	0306071b          	addiw	a4,a2,48
   15ca0:	fee78fa3          	sb	a4,-1(a5)
   15ca4:	03744863          	blt	s0,s7,15cd4 <_ldtoa_r+0x77c>
   15ca8:	00078913          	mv	s2,a5
   15cac:	e55ff06f          	j	15b00 <_ldtoa_r+0x5a8>
   15cb0:	03161613          	slli	a2,a2,0x31
   15cb4:	03165613          	srli	a2,a2,0x31
   15cb8:	000107b7          	lui	a5,0x10
   15cbc:	0ac11123          	sh	a2,162(sp)
   15cc0:	fff78913          	addi	s2,a5,-1 # ffff <register_fini-0xb1>
   15cc4:	9ddff06f          	j	156a0 <_ldtoa_r+0x148>
   15cc8:	1dc15603          	lhu	a2,476(sp)
   15ccc:	15210913          	addi	s2,sp,338
   15cd0:	15310793          	addi	a5,sp,339
   15cd4:	00400713          	li	a4,4
   15cd8:	04c75e63          	bge	a4,a2,15d34 <_ldtoa_r+0x7dc>
   15cdc:	00500713          	li	a4,5
   15ce0:	02e606e3          	beq	a2,a4,1650c <_ldtoa_r+0xfb4>
   15ce4:	ffe7c703          	lbu	a4,-2(a5)
   15ce8:	ffe78613          	addi	a2,a5,-2
   15cec:	07f77593          	andi	a1,a4,127
   15cf0:	00058713          	mv	a4,a1
   15cf4:	02044a63          	bltz	s0,15d28 <_ldtoa_r+0x7d0>
   15cf8:	02e00513          	li	a0,46
   15cfc:	03800813          	li	a6,56
   15d00:	03000893          	li	a7,48
   15d04:	00070793          	mv	a5,a4
   15d08:	76a58863          	beq	a1,a0,16478 <_ldtoa_r+0xf20>
   15d0c:	78f85463          	bge	a6,a5,16494 <_ldtoa_r+0xf3c>
   15d10:	fff64783          	lbu	a5,-1(a2)
   15d14:	01160023          	sb	a7,0(a2)
   15d18:	fff60613          	addi	a2,a2,-1
   15d1c:	07f7f593          	andi	a1,a5,127
   15d20:	00058793          	mv	a5,a1
   15d24:	fe5ff06f          	j	15d08 <_ldtoa_r+0x7b0>
   15d28:	03100713          	li	a4,49
   15d2c:	fee78f23          	sb	a4,-2(a5)
   15d30:	0014849b          	addiw	s1,s1,1
   15d34:	00048613          	mv	a2,s1
   15d38:	0000c597          	auipc	a1,0xc
   15d3c:	10058593          	addi	a1,a1,256 # 21e38 <zeroes.0+0x68>
   15d40:	00090513          	mv	a0,s2
   15d44:	4e1020ef          	jal	ra,18a24 <sprintf>
   15d48:	08215783          	lhu	a5,130(sp)
   15d4c:	01813703          	ld	a4,24(sp)
   15d50:	1a912023          	sw	s1,416(sp)
   15d54:	fff7c793          	not	a5,a5
   15d58:	18e12a23          	sw	a4,404(sp)
   15d5c:	03179713          	slli	a4,a5,0x31
   15d60:	18070463          	beqz	a4,15ee8 <_ldtoa_r+0x990>
   15d64:	01013683          	ld	a3,16(sp)
   15d68:	15014703          	lbu	a4,336(sp)
   15d6c:	0014879b          	addiw	a5,s1,1
   15d70:	00f6a023          	sw	a5,0(a3)
   15d74:	000a8793          	mv	a5,s5
   15d78:	02070a63          	beqz	a4,15dac <_ldtoa_r+0x854>
   15d7c:	02e00693          	li	a3,46
   15d80:	20d70463          	beq	a4,a3,15f88 <_ldtoa_r+0xa30>
   15d84:	0017c703          	lbu	a4,1(a5)
   15d88:	00178793          	addi	a5,a5,1
   15d8c:	fe071ae3          	bnez	a4,15d80 <_ldtoa_r+0x828>
   15d90:	04500693          	li	a3,69
   15d94:	00fae663          	bltu	s5,a5,15da0 <_ldtoa_r+0x848>
   15d98:	0140006f          	j	15dac <_ldtoa_r+0x854>
   15d9c:	01578863          	beq	a5,s5,15dac <_ldtoa_r+0x854>
   15da0:	fff7c703          	lbu	a4,-1(a5)
   15da4:	fff78793          	addi	a5,a5,-1
   15da8:	fed71ae3          	bne	a4,a3,15d9c <_ldtoa_r+0x844>
   15dac:	00078023          	sb	zero,0(a5)
   15db0:	000a8793          	mv	a5,s5
   15db4:	02000693          	li	a3,32
   15db8:	02d00613          	li	a2,45
   15dbc:	0007c703          	lbu	a4,0(a5)
   15dc0:	00d70463          	beq	a4,a3,15dc8 <_ldtoa_r+0x870>
   15dc4:	00c71663          	bne	a4,a2,15dd0 <_ldtoa_r+0x878>
   15dc8:	00178793          	addi	a5,a5,1
   15dcc:	ff1ff06f          	j	15dbc <_ldtoa_r+0x864>
   15dd0:	000a8413          	mv	s0,s5
   15dd4:	00c0006f          	j	15de0 <_ldtoa_r+0x888>
   15dd8:	0007c703          	lbu	a4,0(a5)
   15ddc:	00068413          	mv	s0,a3
   15de0:	00e40023          	sb	a4,0(s0)
   15de4:	00140693          	addi	a3,s0,1
   15de8:	00178793          	addi	a5,a5,1
   15dec:	fe0716e3          	bnez	a4,15dd8 <_ldtoa_r+0x880>
   15df0:	00200793          	li	a5,2
   15df4:	fff44703          	lbu	a4,-1(s0)
   15df8:	10fb0e63          	beq	s6,a5,15f14 <_ldtoa_r+0x9bc>
   15dfc:	00013683          	ld	a3,0(sp)
   15e00:	00068793          	mv	a5,a3
   15e04:	0096d463          	bge	a3,s1,15e0c <_ldtoa_r+0x8b4>
   15e08:	00048793          	mv	a5,s1
   15e0c:	03000613          	li	a2,48
   15e10:	0007869b          	sext.w	a3,a5
   15e14:	02c71663          	bne	a4,a2,15e40 <_ldtoa_r+0x8e8>
   15e18:	415407b3          	sub	a5,s0,s5
   15e1c:	02f6d263          	bge	a3,a5,15e40 <_ldtoa_r+0x8e8>
   15e20:	03000613          	li	a2,48
   15e24:	0080006f          	j	15e2c <_ldtoa_r+0x8d4>
   15e28:	00e6dc63          	bge	a3,a4,15e40 <_ldtoa_r+0x8e8>
   15e2c:	ffe44783          	lbu	a5,-2(s0)
   15e30:	fe040fa3          	sb	zero,-1(s0)
   15e34:	fff40413          	addi	s0,s0,-1
   15e38:	41540733          	sub	a4,s0,s5
   15e3c:	fec786e3          	beq	a5,a2,15e28 <_ldtoa_r+0x8d0>
   15e40:	00300793          	li	a5,3
   15e44:	0efb0463          	beq	s6,a5,15f2c <_ldtoa_r+0x9d4>
   15e48:	00813783          	ld	a5,8(sp)
   15e4c:	060a2423          	sw	zero,104(s4)
   15e50:	0097891b          	addiw	s2,a5,9
   15e54:	01f00793          	li	a5,31
   15e58:	1127f463          	bgeu	a5,s2,15f60 <_ldtoa_r+0xa08>
   15e5c:	00100693          	li	a3,1
   15e60:	00400793          	li	a5,4
   15e64:	0017979b          	slliw	a5,a5,0x1
   15e68:	01c78713          	addi	a4,a5,28
   15e6c:	0006859b          	sext.w	a1,a3
   15e70:	0016869b          	addiw	a3,a3,1
   15e74:	fee978e3          	bgeu	s2,a4,15e64 <_ldtoa_r+0x90c>
   15e78:	06ba2423          	sw	a1,104(s4)
   15e7c:	000a0513          	mv	a0,s4
   15e80:	714010ef          	jal	ra,17594 <_Balloc>
   15e84:	06aa3023          	sd	a0,96(s4)
   15e88:	000a8593          	mv	a1,s5
   15e8c:	00050493          	mv	s1,a0
   15e90:	695020ef          	jal	ra,18d24 <strcpy>
   15e94:	02013703          	ld	a4,32(sp)
   15e98:	00070863          	beqz	a4,15ea8 <_ldtoa_r+0x950>
   15e9c:	415407b3          	sub	a5,s0,s5
   15ea0:	00f487b3          	add	a5,s1,a5
   15ea4:	00f73023          	sd	a5,0(a4)
   15ea8:	24813083          	ld	ra,584(sp)
   15eac:	24013403          	ld	s0,576(sp)
   15eb0:	23013903          	ld	s2,560(sp)
   15eb4:	22813983          	ld	s3,552(sp)
   15eb8:	22013a03          	ld	s4,544(sp)
   15ebc:	21813a83          	ld	s5,536(sp)
   15ec0:	21013b03          	ld	s6,528(sp)
   15ec4:	20813b83          	ld	s7,520(sp)
   15ec8:	20013c03          	ld	s8,512(sp)
   15ecc:	1f813c83          	ld	s9,504(sp)
   15ed0:	1f013d03          	ld	s10,496(sp)
   15ed4:	1e813d83          	ld	s11,488(sp)
   15ed8:	00048513          	mv	a0,s1
   15edc:	23813483          	ld	s1,568(sp)
   15ee0:	25010113          	addi	sp,sp,592
   15ee4:	00008067          	ret
   15ee8:	07010793          	addi	a5,sp,112
   15eec:	08210693          	addi	a3,sp,130
   15ef0:	0007d703          	lhu	a4,0(a5)
   15ef4:	00278793          	addi	a5,a5,2
   15ef8:	5a071463          	bnez	a4,164a0 <_ldtoa_r+0xf48>
   15efc:	fed79ae3          	bne	a5,a3,15ef0 <_ldtoa_r+0x998>
   15f00:	01013703          	ld	a4,16(sp)
   15f04:	000027b7          	lui	a5,0x2
   15f08:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   15f0c:	00f72023          	sw	a5,0(a4)
   15f10:	ea1ff06f          	j	15db0 <_ldtoa_r+0x858>
   15f14:	03000793          	li	a5,48
   15f18:	f2f718e3          	bne	a4,a5,15e48 <_ldtoa_r+0x8f0>
   15f1c:	415407b3          	sub	a5,s0,s5
   15f20:	00100693          	li	a3,1
   15f24:	eef6cee3          	blt	a3,a5,15e20 <_ldtoa_r+0x8c8>
   15f28:	f21ff06f          	j	15e48 <_ldtoa_r+0x8f0>
   15f2c:	00013783          	ld	a5,0(sp)
   15f30:	009784bb          	addw	s1,a5,s1
   15f34:	4e04c663          	bltz	s1,16420 <_ldtoa_r+0xec8>
   15f38:	01013783          	ld	a5,16(sp)
   15f3c:	00813703          	ld	a4,8(sp)
   15f40:	0007a783          	lw	a5,0(a5)
   15f44:	00e787bb          	addw	a5,a5,a4
   15f48:	00f13423          	sd	a5,8(sp)
   15f4c:	00813783          	ld	a5,8(sp)
   15f50:	060a2423          	sw	zero,104(s4)
   15f54:	0037891b          	addiw	s2,a5,3
   15f58:	01f00793          	li	a5,31
   15f5c:	f127e0e3          	bltu	a5,s2,15e5c <_ldtoa_r+0x904>
   15f60:	00000593          	li	a1,0
   15f64:	f19ff06f          	j	15e7c <_ldtoa_r+0x924>
   15f68:	00813783          	ld	a5,8(sp)
   15f6c:	02a00713          	li	a4,42
   15f70:	00078b93          	mv	s7,a5
   15f74:	00f75463          	bge	a4,a5,15f7c <_ldtoa_r+0xa24>
   15f78:	02a00b93          	li	s7,42
   15f7c:	000b879b          	sext.w	a5,s7
   15f80:	00f13023          	sd	a5,0(sp)
   15f84:	eb8ff06f          	j	1563c <_ldtoa_r+0xe4>
   15f88:	0007c703          	lbu	a4,0(a5)
   15f8c:	e00702e3          	beqz	a4,15d90 <_ldtoa_r+0x838>
   15f90:	0017c703          	lbu	a4,1(a5)
   15f94:	00178793          	addi	a5,a5,1
   15f98:	fee78fa3          	sb	a4,-1(a5)
   15f9c:	de070ae3          	beqz	a4,15d90 <_ldtoa_r+0x838>
   15fa0:	0017c703          	lbu	a4,1(a5)
   15fa4:	00178793          	addi	a5,a5,1
   15fa8:	fee78fa3          	sb	a4,-1(a5)
   15fac:	fe0712e3          	bnez	a4,15f90 <_ldtoa_r+0xa38>
   15fb0:	de1ff06f          	j	15d90 <_ldtoa_r+0x838>
   15fb4:	03100713          	li	a4,49
   15fb8:	14e108a3          	sb	a4,337(sp)
   15fbc:	02e00713          	li	a4,46
   15fc0:	14e10923          	sb	a4,338(sp)
   15fc4:	0014849b          	addiw	s1,s1,1
   15fc8:	2af05a63          	blez	a5,1627c <_ldtoa_r+0xd24>
   15fcc:	03000793          	li	a5,48
   15fd0:	14f109a3          	sb	a5,339(sp)
   15fd4:	fff4041b          	addiw	s0,s0,-1
   15fd8:	15410913          	addi	s2,sp,340
   15fdc:	b11ff06f          	j	15aec <_ldtoa_r+0x594>
   15fe0:	15010a93          	addi	s5,sp,336
   15fe4:	0000c597          	auipc	a1,0xc
   15fe8:	e5c58593          	addi	a1,a1,-420 # 21e40 <zeroes.0+0x70>
   15fec:	000a8513          	mv	a0,s5
   15ff0:	000024b7          	lui	s1,0x2
   15ff4:	231020ef          	jal	ra,18a24 <sprintf>
   15ff8:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   15ffc:	d4dff06f          	j	15d48 <_ldtoa_r+0x7f0>
   16000:	0d010c13          	addi	s8,sp,208
   16004:	000c0713          	mv	a4,s8
   16008:	09010793          	addi	a5,sp,144
   1600c:	0a410613          	addi	a2,sp,164
   16010:	0007d683          	lhu	a3,0(a5)
   16014:	00278793          	addi	a5,a5,2
   16018:	00270713          	addi	a4,a4,2
   1601c:	fed71f23          	sh	a3,-2(a4)
   16020:	fec798e3          	bne	a5,a2,16010 <_ldtoa_r+0xab8>
   16024:	000047b7          	lui	a5,0x4
   16028:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   1602c:	0ef11123          	sh	a5,226(sp)
   16030:	000087b7          	lui	a5,0x8
   16034:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   16038:	02f13423          	sd	a5,40(sp)
   1603c:	ffffc7b7          	lui	a5,0xffffc
   16040:	0027879b          	addiw	a5,a5,2
   16044:	01000c93          	li	s9,16
   16048:	00000493          	li	s1,0
   1604c:	0000cd17          	auipc	s10,0xc
   16050:	eccd0d13          	addi	s10,s10,-308 # 21f18 <etens+0xa0>
   16054:	15010a93          	addi	s5,sp,336
   16058:	19010993          	addi	s3,sp,400
   1605c:	0f010413          	addi	s0,sp,240
   16060:	0c210b93          	addi	s7,sp,194
   16064:	02f12a23          	sw	a5,52(sp)
   16068:	00098693          	mv	a3,s3
   1606c:	0b010613          	addi	a2,sp,176
   16070:	000c0593          	mv	a1,s8
   16074:	000d0513          	mv	a0,s10
   16078:	dc9fe0ef          	jal	ra,14e40 <ediv>
   1607c:	05810713          	addi	a4,sp,88
   16080:	0b010793          	addi	a5,sp,176
   16084:	0007d683          	lhu	a3,0(a5) # ffffffffffffc000 <__BSS_END__+0xfffffffffffd7400>
   16088:	00278793          	addi	a5,a5,2
   1608c:	00270713          	addi	a4,a4,2
   16090:	fed71f23          	sh	a3,-2(a4)
   16094:	ffb798e3          	bne	a5,s11,16084 <_ldtoa_r+0xb2c>
   16098:	02813783          	ld	a5,40(sp)
   1609c:	06a15803          	lhu	a6,106(sp)
   160a0:	00f875b3          	and	a1,a6,a5
   160a4:	03412783          	lw	a5,52(sp)
   160a8:	00f587bb          	addw	a5,a1,a5
   160ac:	00078513          	mv	a0,a5
   160b0:	38f05263          	blez	a5,16434 <_ldtoa_r+0xedc>
   160b4:	09000593          	li	a1,144
   160b8:	40f585bb          	subw	a1,a1,a5
   160bc:	00040713          	mv	a4,s0
   160c0:	05810793          	addi	a5,sp,88
   160c4:	06c10613          	addi	a2,sp,108
   160c8:	0007d683          	lhu	a3,0(a5)
   160cc:	00278793          	addi	a5,a5,2
   160d0:	00270713          	addi	a4,a4,2
   160d4:	fed71f23          	sh	a3,-2(a4)
   160d8:	fec798e3          	bne	a5,a2,160c8 <_ldtoa_r+0xb70>
   160dc:	06b05863          	blez	a1,1614c <_ldtoa_r+0xbf4>
   160e0:	00f00793          	li	a5,15
   160e4:	00040713          	mv	a4,s0
   160e8:	02b7de63          	bge	a5,a1,16124 <_ldtoa_r+0xbcc>
   160ec:	08000693          	li	a3,128
   160f0:	40a686bb          	subw	a3,a3,a0
   160f4:	0046d69b          	srliw	a3,a3,0x4
   160f8:	0016871b          	addiw	a4,a3,1
   160fc:	00171713          	slli	a4,a4,0x1
   16100:	00e40733          	add	a4,s0,a4
   16104:	00040793          	mv	a5,s0
   16108:	00278793          	addi	a5,a5,2
   1610c:	fe079f23          	sh	zero,-2(a5)
   16110:	fee79ce3          	bne	a5,a4,16108 <_ldtoa_r+0xbb0>
   16114:	08000593          	li	a1,128
   16118:	40a585bb          	subw	a1,a1,a0
   1611c:	0046969b          	slliw	a3,a3,0x4
   16120:	40d585bb          	subw	a1,a1,a3
   16124:	0000c797          	auipc	a5,0xc
   16128:	d2478793          	addi	a5,a5,-732 # 21e48 <ezero>
   1612c:	00159593          	slli	a1,a1,0x1
   16130:	00b785b3          	add	a1,a5,a1
   16134:	2405d683          	lhu	a3,576(a1)
   16138:	00075783          	lhu	a5,0(a4)
   1613c:	00d7f7b3          	and	a5,a5,a3
   16140:	00f71023          	sh	a5,0(a4)
   16144:	00f85813          	srli	a6,a6,0xf
   16148:	14081a63          	bnez	a6,1629c <_ldtoa_r+0xd44>
   1614c:	0b010793          	addi	a5,sp,176
   16150:	00040713          	mv	a4,s0
   16154:	0007d603          	lhu	a2,0(a5)
   16158:	00075683          	lhu	a3,0(a4)
   1615c:	00278793          	addi	a5,a5,2
   16160:	00270713          	addi	a4,a4,2
   16164:	02d61463          	bne	a2,a3,1618c <_ldtoa_r+0xc34>
   16168:	fefb96e3          	bne	s7,a5,16154 <_ldtoa_r+0xbfc>
   1616c:	000c0713          	mv	a4,s8
   16170:	0b010793          	addi	a5,sp,176
   16174:	0007d683          	lhu	a3,0(a5)
   16178:	00278793          	addi	a5,a5,2
   1617c:	00270713          	addi	a4,a4,2
   16180:	fed71f23          	sh	a3,-2(a4)
   16184:	ffb798e3          	bne	a5,s11,16174 <_ldtoa_r+0xc1c>
   16188:	009c84bb          	addw	s1,s9,s1
   1618c:	014d0d13          	addi	s10,s10,20
   16190:	0000c797          	auipc	a5,0xc
   16194:	dec78793          	addi	a5,a5,-532 # 21f7c <etens+0x104>
   16198:	001cdc93          	srli	s9,s9,0x1
   1619c:	ecfd16e3          	bne	s10,a5,16068 <_ldtoa_r+0xb10>
   161a0:	0e215783          	lhu	a5,226(sp)
   161a4:	0a215703          	lhu	a4,162(sp)
   161a8:	0e410613          	addi	a2,sp,228
   161ac:	00e787bb          	addw	a5,a5,a4
   161b0:	ffffc737          	lui	a4,0xffffc
   161b4:	f727071b          	addiw	a4,a4,-142
   161b8:	00e787bb          	addw	a5,a5,a4
   161bc:	0ef11123          	sh	a5,226(sp)
   161c0:	09010713          	addi	a4,sp,144
   161c4:	000c0793          	mv	a5,s8
   161c8:	0007d683          	lhu	a3,0(a5)
   161cc:	00278793          	addi	a5,a5,2
   161d0:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7402>
   161d4:	fed71f23          	sh	a3,-2(a4)
   161d8:	fec798e3          	bne	a5,a2,161c8 <_ldtoa_r+0xc70>
   161dc:	00000693          	li	a3,0
   161e0:	0b010793          	addi	a5,sp,176
   161e4:	0000c717          	auipc	a4,0xc
   161e8:	c7c70713          	addi	a4,a4,-900 # 21e60 <eone>
   161ec:	0080006f          	j	161f4 <_ldtoa_r+0xc9c>
   161f0:	00075683          	lhu	a3,0(a4)
   161f4:	00278793          	addi	a5,a5,2
   161f8:	fed79f23          	sh	a3,-2(a5)
   161fc:	00270713          	addi	a4,a4,2
   16200:	ffb798e3          	bne	a5,s11,161f0 <_ldtoa_r+0xc98>
   16204:	00001cb7          	lui	s9,0x1
   16208:	0000cd97          	auipc	s11,0xc
   1620c:	c70d8d93          	addi	s11,s11,-912 # 21e78 <etens>
   16210:	0000cd17          	auipc	s10,0xc
   16214:	d58d0d13          	addi	s10,s10,-680 # 21f68 <etens+0xf0>
   16218:	0100006f          	j	16228 <_ldtoa_r+0xcd0>
   1621c:	001cdc93          	srli	s9,s9,0x1
   16220:	25ad8863          	beq	s11,s10,16470 <_ldtoa_r+0xf18>
   16224:	014d8d93          	addi	s11,s11,20
   16228:	000c0593          	mv	a1,s8
   1622c:	000d0513          	mv	a0,s10
   16230:	884fe0ef          	jal	ra,142b4 <ecmp>
   16234:	00050793          	mv	a5,a0
   16238:	000c0593          	mv	a1,s8
   1623c:	000d8513          	mv	a0,s11
   16240:	22f04863          	bgtz	a5,16470 <_ldtoa_r+0xf18>
   16244:	870fe0ef          	jal	ra,142b4 <ecmp>
   16248:	fca04ae3          	bgtz	a0,1621c <_ldtoa_r+0xcc4>
   1624c:	00098693          	mv	a3,s3
   16250:	000c0613          	mv	a2,s8
   16254:	000c0593          	mv	a1,s8
   16258:	000d8513          	mv	a0,s11
   1625c:	be5fe0ef          	jal	ra,14e40 <ediv>
   16260:	0b010613          	addi	a2,sp,176
   16264:	00098693          	mv	a3,s3
   16268:	00060593          	mv	a1,a2
   1626c:	000d8513          	mv	a0,s11
   16270:	f0cfe0ef          	jal	ra,1497c <emul>
   16274:	009c84bb          	addw	s1,s9,s1
   16278:	fa5ff06f          	j	1621c <_ldtoa_r+0xcc4>
   1627c:	15310913          	addi	s2,sp,339
   16280:	aa079ae3          	bnez	a5,15d34 <_ldtoa_r+0x7dc>
   16284:	869ff06f          	j	15aec <_ldtoa_r+0x594>
   16288:	00000693          	li	a3,0
   1628c:	b98ff06f          	j	15624 <_ldtoa_r+0xcc>
   16290:	00813783          	ld	a5,8(sp)
   16294:	fff7879b          	addiw	a5,a5,-1
   16298:	cd5ff06f          	j	15f6c <_ldtoa_r+0xa14>
   1629c:	05810793          	addi	a5,sp,88
   162a0:	00040713          	mv	a4,s0
   162a4:	00c0006f          	j	162b0 <_ldtoa_r+0xd58>
   162a8:	06a10693          	addi	a3,sp,106
   162ac:	eaf680e3          	beq	a3,a5,1614c <_ldtoa_r+0xbf4>
   162b0:	0007d603          	lhu	a2,0(a5)
   162b4:	00075683          	lhu	a3,0(a4)
   162b8:	00278793          	addi	a5,a5,2
   162bc:	00270713          	addi	a4,a4,2
   162c0:	fed604e3          	beq	a2,a3,162a8 <_ldtoa_r+0xd50>
   162c4:	10215783          	lhu	a5,258(sp)
   162c8:	02813703          	ld	a4,40(sp)
   162cc:	00f777b3          	and	a5,a4,a5
   162d0:	3ae78e63          	beq	a5,a4,1668c <_ldtoa_r+0x1134>
   162d4:	11010593          	addi	a1,sp,272
   162d8:	0000c517          	auipc	a0,0xc
   162dc:	b8850513          	addi	a0,a0,-1144 # 21e60 <eone>
   162e0:	f1dfd0ef          	jal	ra,141fc <emovi>
   162e4:	13010593          	addi	a1,sp,304
   162e8:	00040513          	mv	a0,s0
   162ec:	f11fd0ef          	jal	ra,141fc <emovi>
   162f0:	11015703          	lhu	a4,272(sp)
   162f4:	13215603          	lhu	a2,306(sp)
   162f8:	11215503          	lhu	a0,274(sp)
   162fc:	fff74713          	not	a4,a4
   16300:	03071713          	slli	a4,a4,0x30
   16304:	03075713          	srli	a4,a4,0x30
   16308:	10e11823          	sh	a4,272(sp)
   1630c:	40c505b3          	sub	a1,a0,a2
   16310:	00060693          	mv	a3,a2
   16314:	06b05e63          	blez	a1,16390 <_ldtoa_r+0xe38>
   16318:	000a8593          	mv	a1,s5
   1631c:	13010693          	addi	a3,sp,304
   16320:	14810793          	addi	a5,sp,328
   16324:	0006d803          	lhu	a6,0(a3)
   16328:	00268693          	addi	a3,a3,2
   1632c:	00258593          	addi	a1,a1,2
   16330:	ff059f23          	sh	a6,-2(a1)
   16334:	fef698e3          	bne	a3,a5,16324 <_ldtoa_r+0xdcc>
   16338:	16011423          	sh	zero,360(sp)
   1633c:	13010693          	addi	a3,sp,304
   16340:	11010593          	addi	a1,sp,272
   16344:	0080006f          	j	1634c <_ldtoa_r+0xdf4>
   16348:	0005d703          	lhu	a4,0(a1)
   1634c:	00268693          	addi	a3,a3,2
   16350:	fee69f23          	sh	a4,-2(a3)
   16354:	00258593          	addi	a1,a1,2
   16358:	fef698e3          	bne	a3,a5,16348 <_ldtoa_r+0xdf0>
   1635c:	14011423          	sh	zero,328(sp)
   16360:	11010713          	addi	a4,sp,272
   16364:	000a8793          	mv	a5,s5
   16368:	16810593          	addi	a1,sp,360
   1636c:	0007d683          	lhu	a3,0(a5)
   16370:	00278793          	addi	a5,a5,2
   16374:	00270713          	addi	a4,a4,2
   16378:	fed71f23          	sh	a3,-2(a4)
   1637c:	feb798e3          	bne	a5,a1,1636c <_ldtoa_r+0xe14>
   16380:	13215683          	lhu	a3,306(sp)
   16384:	40a605b3          	sub	a1,a2,a0
   16388:	12011423          	sh	zero,296(sp)
   1638c:	00068613          	mv	a2,a3
   16390:	32058863          	beqz	a1,166c0 <_ldtoa_r+0x1168>
   16394:	02d13c23          	sd	a3,56(sp)
   16398:	f6f00793          	li	a5,-145
   1639c:	06f5ca63          	blt	a1,a5,16410 <_ldtoa_r+0xeb8>
   163a0:	0005859b          	sext.w	a1,a1
   163a4:	11010513          	addi	a0,sp,272
   163a8:	c35fd0ef          	jal	ra,13fdc <eshift.part.0>
   163ac:	03813683          	ld	a3,56(sp)
   163b0:	00050593          	mv	a1,a0
   163b4:	14810793          	addi	a5,sp,328
   163b8:	12810713          	addi	a4,sp,296
   163bc:	11015503          	lhu	a0,272(sp)
   163c0:	13015603          	lhu	a2,304(sp)
   163c4:	34c50263          	beq	a0,a2,16708 <_ldtoa_r+0x11b0>
   163c8:	00000613          	li	a2,0
   163cc:	13210813          	addi	a6,sp,306
   163d0:	00060513          	mv	a0,a2
   163d4:	0007d603          	lhu	a2,0(a5)
   163d8:	00075883          	lhu	a7,0(a4)
   163dc:	ffe78793          	addi	a5,a5,-2
   163e0:	40a60633          	sub	a2,a2,a0
   163e4:	41160633          	sub	a2,a2,a7
   163e8:	01065513          	srli	a0,a2,0x10
   163ec:	00c79123          	sh	a2,2(a5)
   163f0:	00157513          	andi	a0,a0,1
   163f4:	ffe70713          	addi	a4,a4,-2
   163f8:	fd079ee3          	bne	a5,a6,163d4 <_ldtoa_r+0xe7c>
   163fc:	00100613          	li	a2,1
   16400:	00098793          	mv	a5,s3
   16404:	04000713          	li	a4,64
   16408:	13010513          	addi	a0,sp,304
   1640c:	fe9fd0ef          	jal	ra,143f4 <emdnorm>
   16410:	00040593          	mv	a1,s0
   16414:	13010513          	addi	a0,sp,304
   16418:	995fd0ef          	jal	ra,13dac <emovo.constprop.0>
   1641c:	d31ff06f          	j	1614c <_ldtoa_r+0xbf4>
   16420:	01013783          	ld	a5,16(sp)
   16424:	14010823          	sb	zero,336(sp)
   16428:	000a8413          	mv	s0,s5
   1642c:	0007a023          	sw	zero,0(a5)
   16430:	b1dff06f          	j	15f4c <_ldtoa_r+0x9f4>
   16434:	00040793          	mv	a5,s0
   16438:	10410713          	addi	a4,sp,260
   1643c:	00278793          	addi	a5,a5,2
   16440:	fe079f23          	sh	zero,-2(a5)
   16444:	fee79ce3          	bne	a5,a4,1643c <_ldtoa_r+0xee4>
   16448:	cfdff06f          	j	16144 <_ldtoa_r+0xbec>
   1644c:	15010a93          	addi	s5,sp,336
   16450:	0a090063          	beqz	s2,164f0 <_ldtoa_r+0xf98>
   16454:	0000c597          	auipc	a1,0xc
   16458:	9bc58593          	addi	a1,a1,-1604 # 21e10 <zeroes.0+0x40>
   1645c:	000a8513          	mv	a0,s5
   16460:	000024b7          	lui	s1,0x2
   16464:	5c0020ef          	jal	ra,18a24 <sprintf>
   16468:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   1646c:	8ddff06f          	j	15d48 <_ldtoa_r+0x7f0>
   16470:	10810b93          	addi	s7,sp,264
   16474:	bf8ff06f          	j	1586c <_ldtoa_r+0x314>
   16478:	fff64783          	lbu	a5,-1(a2)
   1647c:	03800713          	li	a4,56
   16480:	0ef77463          	bgeu	a4,a5,16568 <_ldtoa_r+0x1010>
   16484:	03100793          	li	a5,49
   16488:	0014849b          	addiw	s1,s1,1
   1648c:	fef60fa3          	sb	a5,-1(a2)
   16490:	8a5ff06f          	j	15d34 <_ldtoa_r+0x7dc>
   16494:	0015859b          	addiw	a1,a1,1
   16498:	00b60023          	sb	a1,0(a2)
   1649c:	899ff06f          	j	15d34 <_ldtoa_r+0x7dc>
   164a0:	07010793          	addi	a5,sp,112
   164a4:	08210693          	addi	a3,sp,130
   164a8:	0080006f          	j	164b0 <_ldtoa_r+0xf58>
   164ac:	8ad78ce3          	beq	a5,a3,15d64 <_ldtoa_r+0x80c>
   164b0:	0007d703          	lhu	a4,0(a5)
   164b4:	00278793          	addi	a5,a5,2
   164b8:	fe070ae3          	beqz	a4,164ac <_ldtoa_r+0xf54>
   164bc:	01013703          	ld	a4,16(sp)
   164c0:	000027b7          	lui	a5,0x2
   164c4:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   164c8:	00f72023          	sw	a5,0(a4)
   164cc:	8e5ff06f          	j	15db0 <_ldtoa_r+0x858>
   164d0:	15010a93          	addi	s5,sp,336
   164d4:	0000c597          	auipc	a1,0xc
   164d8:	95c58593          	addi	a1,a1,-1700 # 21e30 <zeroes.0+0x60>
   164dc:	000a8513          	mv	a0,s5
   164e0:	000024b7          	lui	s1,0x2
   164e4:	540020ef          	jal	ra,18a24 <sprintf>
   164e8:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   164ec:	85dff06f          	j	15d48 <_ldtoa_r+0x7f0>
   164f0:	0000c597          	auipc	a1,0xc
   164f4:	93058593          	addi	a1,a1,-1744 # 21e20 <zeroes.0+0x50>
   164f8:	000a8513          	mv	a0,s5
   164fc:	000024b7          	lui	s1,0x2
   16500:	524020ef          	jal	ra,18a24 <sprintf>
   16504:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16508:	841ff06f          	j	15d48 <_ldtoa_r+0x7f0>
   1650c:	0b010593          	addi	a1,sp,176
   16510:	09010513          	addi	a0,sp,144
   16514:	02f13423          	sd	a5,40(sp)
   16518:	895fd0ef          	jal	ra,13dac <emovo.constprop.0>
   1651c:	0000c597          	auipc	a1,0xc
   16520:	92c58593          	addi	a1,a1,-1748 # 21e48 <ezero>
   16524:	0b010513          	addi	a0,sp,176
   16528:	d8dfd0ef          	jal	ra,142b4 <ecmp>
   1652c:	02813783          	ld	a5,40(sp)
   16530:	fa051a63          	bnez	a0,15ce4 <_ldtoa_r+0x78c>
   16534:	800440e3          	bltz	s0,15d34 <_ldtoa_r+0x7dc>
   16538:	ffe7c703          	lbu	a4,-2(a5)
   1653c:	fd270613          	addi	a2,a4,-46
   16540:	00163613          	seqz	a2,a2
   16544:	fff64613          	not	a2,a2
   16548:	00c90633          	add	a2,s2,a2
   1654c:	00064603          	lbu	a2,0(a2)
   16550:	00167613          	andi	a2,a2,1
   16554:	fe060063          	beqz	a2,15d34 <_ldtoa_r+0x7dc>
   16558:	07f77593          	andi	a1,a4,127
   1655c:	ffe78613          	addi	a2,a5,-2
   16560:	00058713          	mv	a4,a1
   16564:	f94ff06f          	j	15cf8 <_ldtoa_r+0x7a0>
   16568:	0017879b          	addiw	a5,a5,1
   1656c:	fef60fa3          	sb	a5,-1(a2)
   16570:	fc4ff06f          	j	15d34 <_ldtoa_r+0x7dc>
   16574:	0f010413          	addi	s0,sp,240
   16578:	00040593          	mv	a1,s0
   1657c:	09010513          	addi	a0,sp,144
   16580:	00004c37          	lui	s8,0x4
   16584:	c79fd0ef          	jal	ra,141fc <emovi>
   16588:	00000493          	li	s1,0
   1658c:	10810b93          	addi	s7,sp,264
   16590:	0e810993          	addi	s3,sp,232
   16594:	0f210a93          	addi	s5,sp,242
   16598:	ffec0c13          	addi	s8,s8,-2 # 3ffe <register_fini-0xc0b2>
   1659c:	fd500c93          	li	s9,-43
   165a0:	10815783          	lhu	a5,264(sp)
   165a4:	0077f793          	andi	a5,a5,7
   165a8:	0c079863          	bnez	a5,16678 <_ldtoa_r+0x1120>
   165ac:	0d010713          	addi	a4,sp,208
   165b0:	00040793          	mv	a5,s0
   165b4:	0007d683          	lhu	a3,0(a5)
   165b8:	00278793          	addi	a5,a5,2
   165bc:	00270713          	addi	a4,a4,2
   165c0:	fed71f23          	sh	a3,-2(a4)
   165c4:	ff7798e3          	bne	a5,s7,165b4 <_ldtoa_r+0x105c>
   165c8:	0d010513          	addi	a0,sp,208
   165cc:	0e011423          	sh	zero,232(sp)
   165d0:	e2cfd0ef          	jal	ra,13bfc <eshdn1>
   165d4:	0d010513          	addi	a0,sp,208
   165d8:	e24fd0ef          	jal	ra,13bfc <eshdn1>
   165dc:	00000613          	li	a2,0
   165e0:	00098693          	mv	a3,s3
   165e4:	000b8713          	mv	a4,s7
   165e8:	0006d583          	lhu	a1,0(a3)
   165ec:	00075783          	lhu	a5,0(a4)
   165f0:	ffe68693          	addi	a3,a3,-2
   165f4:	ffe70713          	addi	a4,a4,-2
   165f8:	00b787b3          	add	a5,a5,a1
   165fc:	00c787b3          	add	a5,a5,a2
   16600:	0107d613          	srli	a2,a5,0x10
   16604:	00f69123          	sh	a5,2(a3)
   16608:	00167613          	andi	a2,a2,1
   1660c:	fd571ee3          	bne	a4,s5,165e8 <_ldtoa_r+0x1090>
   16610:	0d215783          	lhu	a5,210(sp)
   16614:	0d415703          	lhu	a4,212(sp)
   16618:	0037879b          	addiw	a5,a5,3
   1661c:	0cf11923          	sh	a5,210(sp)
   16620:	02070063          	beqz	a4,16640 <_ldtoa_r+0x10e8>
   16624:	0d010513          	addi	a0,sp,208
   16628:	dd4fd0ef          	jal	ra,13bfc <eshdn1>
   1662c:	0d215783          	lhu	a5,210(sp)
   16630:	0d415703          	lhu	a4,212(sp)
   16634:	0017879b          	addiw	a5,a5,1
   16638:	0cf11923          	sh	a5,210(sp)
   1663c:	fe0714e3          	bnez	a4,16624 <_ldtoa_r+0x10cc>
   16640:	0e815783          	lhu	a5,232(sp)
   16644:	02079a63          	bnez	a5,16678 <_ldtoa_r+0x1120>
   16648:	0d215783          	lhu	a5,210(sp)
   1664c:	02fc6663          	bltu	s8,a5,16678 <_ldtoa_r+0x1120>
   16650:	00040713          	mv	a4,s0
   16654:	0d010793          	addi	a5,sp,208
   16658:	0007d683          	lhu	a3,0(a5)
   1665c:	00278793          	addi	a5,a5,2
   16660:	00270713          	addi	a4,a4,2
   16664:	fed71f23          	sh	a3,-2(a4)
   16668:	ff3798e3          	bne	a5,s3,16658 <_ldtoa_r+0x1100>
   1666c:	10011423          	sh	zero,264(sp)
   16670:	fff4849b          	addiw	s1,s1,-1
   16674:	f39496e3          	bne	s1,s9,165a0 <_ldtoa_r+0x1048>
   16678:	09010593          	addi	a1,sp,144
   1667c:	00040513          	mv	a0,s0
   16680:	f2cfd0ef          	jal	ra,13dac <emovo.constprop.0>
   16684:	19010993          	addi	s3,sp,400
   16688:	8bcff06f          	j	15744 <_ldtoa_r+0x1ec>
   1668c:	00040793          	mv	a5,s0
   16690:	0007d703          	lhu	a4,0(a5)
   16694:	00278793          	addi	a5,a5,2
   16698:	aa071ae3          	bnez	a4,1614c <_ldtoa_r+0xbf4>
   1669c:	10210713          	addi	a4,sp,258
   166a0:	fee798e3          	bne	a5,a4,16690 <_ldtoa_r+0x1138>
   166a4:	00040793          	mv	a5,s0
   166a8:	0007d703          	lhu	a4,0(a5)
   166ac:	00278793          	addi	a5,a5,2
   166b0:	c20712e3          	bnez	a4,162d4 <_ldtoa_r+0xd7c>
   166b4:	10210713          	addi	a4,sp,258
   166b8:	fee798e3          	bne	a5,a4,166a8 <_ldtoa_r+0x1150>
   166bc:	a91ff06f          	j	1614c <_ldtoa_r+0xbf4>
   166c0:	13410713          	addi	a4,sp,308
   166c4:	11410793          	addi	a5,sp,276
   166c8:	0007d503          	lhu	a0,0(a5)
   166cc:	00075583          	lhu	a1,0(a4)
   166d0:	00278793          	addi	a5,a5,2
   166d4:	00270713          	addi	a4,a4,2
   166d8:	06b51463          	bne	a0,a1,16740 <_ldtoa_r+0x11e8>
   166dc:	12a10593          	addi	a1,sp,298
   166e0:	feb794e3          	bne	a5,a1,166c8 <_ldtoa_r+0x1170>
   166e4:	11015703          	lhu	a4,272(sp)
   166e8:	13015783          	lhu	a5,304(sp)
   166ec:	06f70463          	beq	a4,a5,16754 <_ldtoa_r+0x11fc>
   166f0:	00040793          	mv	a5,s0
   166f4:	10410713          	addi	a4,sp,260
   166f8:	00278793          	addi	a5,a5,2
   166fc:	fe079f23          	sh	zero,-2(a5)
   16700:	fee79ce3          	bne	a5,a4,166f8 <_ldtoa_r+0x11a0>
   16704:	a49ff06f          	j	1614c <_ldtoa_r+0xbf4>
   16708:	00000613          	li	a2,0
   1670c:	11210813          	addi	a6,sp,274
   16710:	0007d883          	lhu	a7,0(a5)
   16714:	00075503          	lhu	a0,0(a4)
   16718:	ffe78793          	addi	a5,a5,-2
   1671c:	ffe70713          	addi	a4,a4,-2
   16720:	01150533          	add	a0,a0,a7
   16724:	00c50633          	add	a2,a0,a2
   16728:	01065513          	srli	a0,a2,0x10
   1672c:	00c79123          	sh	a2,2(a5)
   16730:	00157613          	andi	a2,a0,1
   16734:	fd071ee3          	bne	a4,a6,16710 <_ldtoa_r+0x11b8>
   16738:	00000613          	li	a2,0
   1673c:	cc5ff06f          	j	16400 <_ldtoa_r+0xea8>
   16740:	04a5e263          	bltu	a1,a0,16784 <_ldtoa_r+0x122c>
   16744:	00000593          	li	a1,0
   16748:	14810793          	addi	a5,sp,328
   1674c:	12810713          	addi	a4,sp,296
   16750:	c6dff06f          	j	163bc <_ldtoa_r+0xe64>
   16754:	00068793          	mv	a5,a3
   16758:	00069663          	bnez	a3,16764 <_ldtoa_r+0x120c>
   1675c:	13611703          	lh	a4,310(sp)
   16760:	08075c63          	bgez	a4,167f8 <_ldtoa_r+0x12a0>
   16764:	13210713          	addi	a4,sp,306
   16768:	14810793          	addi	a5,sp,328
   1676c:	00075583          	lhu	a1,0(a4)
   16770:	00270713          	addi	a4,a4,2
   16774:	0c059c63          	bnez	a1,1684c <_ldtoa_r+0x12f4>
   16778:	fee79ae3          	bne	a5,a4,1676c <_ldtoa_r+0x1214>
   1677c:	12c11923          	sh	a2,306(sp)
   16780:	c91ff06f          	j	16410 <_ldtoa_r+0xeb8>
   16784:	000a8613          	mv	a2,s5
   16788:	13010713          	addi	a4,sp,304
   1678c:	14810793          	addi	a5,sp,328
   16790:	00075583          	lhu	a1,0(a4)
   16794:	00270713          	addi	a4,a4,2
   16798:	00260613          	addi	a2,a2,2
   1679c:	feb61f23          	sh	a1,-2(a2)
   167a0:	fef718e3          	bne	a4,a5,16790 <_ldtoa_r+0x1238>
   167a4:	16011423          	sh	zero,360(sp)
   167a8:	13010593          	addi	a1,sp,304
   167ac:	11010613          	addi	a2,sp,272
   167b0:	12810713          	addi	a4,sp,296
   167b4:	00065503          	lhu	a0,0(a2)
   167b8:	00260613          	addi	a2,a2,2
   167bc:	00258593          	addi	a1,a1,2
   167c0:	fea59f23          	sh	a0,-2(a1)
   167c4:	fee618e3          	bne	a2,a4,167b4 <_ldtoa_r+0x125c>
   167c8:	14011423          	sh	zero,328(sp)
   167cc:	11010513          	addi	a0,sp,272
   167d0:	000a8613          	mv	a2,s5
   167d4:	16810593          	addi	a1,sp,360
   167d8:	00065803          	lhu	a6,0(a2)
   167dc:	00260613          	addi	a2,a2,2
   167e0:	00250513          	addi	a0,a0,2
   167e4:	ff051f23          	sh	a6,-2(a0)
   167e8:	feb618e3          	bne	a2,a1,167d8 <_ldtoa_r+0x1280>
   167ec:	12011423          	sh	zero,296(sp)
   167f0:	00000593          	li	a1,0
   167f4:	bc9ff06f          	j	163bc <_ldtoa_r+0xe64>
   167f8:	14810693          	addi	a3,sp,328
   167fc:	13210813          	addi	a6,sp,306
   16800:	01c0006f          	j	1681c <_ldtoa_r+0x12c4>
   16804:	00e69023          	sh	a4,0(a3)
   16808:	0017979b          	slliw	a5,a5,0x1
   1680c:	03079793          	slli	a5,a5,0x30
   16810:	ffe68693          	addi	a3,a3,-2
   16814:	0307d793          	srli	a5,a5,0x30
   16818:	bf068ce3          	beq	a3,a6,16410 <_ldtoa_r+0xeb8>
   1681c:	0006d703          	lhu	a4,0(a3)
   16820:	00f75613          	srli	a2,a4,0xf
   16824:	0017171b          	slliw	a4,a4,0x1
   16828:	00060463          	beqz	a2,16830 <_ldtoa_r+0x12d8>
   1682c:	0017e793          	ori	a5,a5,1
   16830:	03071713          	slli	a4,a4,0x30
   16834:	03075713          	srli	a4,a4,0x30
   16838:	0027f613          	andi	a2,a5,2
   1683c:	00176593          	ori	a1,a4,1
   16840:	fc0602e3          	beqz	a2,16804 <_ldtoa_r+0x12ac>
   16844:	00b69023          	sh	a1,0(a3)
   16848:	fc1ff06f          	j	16808 <_ldtoa_r+0x12b0>
   1684c:	00168613          	addi	a2,a3,1
   16850:	12c11923          	sh	a2,306(sp)
   16854:	bbdff06f          	j	16410 <_ldtoa_r+0xeb8>

0000000000016858 <_ldcheck>:
   16858:	00053703          	ld	a4,0(a0)
   1685c:	00853783          	ld	a5,8(a0)
   16860:	fc010113          	addi	sp,sp,-64
   16864:	00010513          	mv	a0,sp
   16868:	01010593          	addi	a1,sp,16
   1686c:	00e13023          	sd	a4,0(sp)
   16870:	00f13423          	sd	a5,8(sp)
   16874:	02113c23          	sd	ra,56(sp)
   16878:	b6dfe0ef          	jal	ra,153e4 <e113toe.isra.0>
   1687c:	02215783          	lhu	a5,34(sp)
   16880:	00000513          	li	a0,0
   16884:	fff7c793          	not	a5,a5
   16888:	03179713          	slli	a4,a5,0x31
   1688c:	02071063          	bnez	a4,168ac <_ldcheck+0x54>
   16890:	01010793          	addi	a5,sp,16
   16894:	02210693          	addi	a3,sp,34
   16898:	0007d703          	lhu	a4,0(a5)
   1689c:	00278793          	addi	a5,a5,2
   168a0:	00071c63          	bnez	a4,168b8 <_ldcheck+0x60>
   168a4:	fed79ae3          	bne	a5,a3,16898 <_ldcheck+0x40>
   168a8:	00200513          	li	a0,2
   168ac:	03813083          	ld	ra,56(sp)
   168b0:	04010113          	addi	sp,sp,64
   168b4:	00008067          	ret
   168b8:	00100513          	li	a0,1
   168bc:	ff1ff06f          	j	168ac <_ldcheck+0x54>

00000000000168c0 <__localeconv_l>:
   168c0:	10050513          	addi	a0,a0,256
   168c4:	00008067          	ret

00000000000168c8 <_localeconv_r>:
   168c8:	e6018513          	addi	a0,gp,-416 # 24260 <__global_locale+0x100>
   168cc:	00008067          	ret

00000000000168d0 <localeconv>:
   168d0:	e6018513          	addi	a0,gp,-416 # 24260 <__global_locale+0x100>
   168d4:	00008067          	ret

00000000000168d8 <_setlocale_r>:
   168d8:	04060063          	beqz	a2,16918 <_setlocale_r+0x40>
   168dc:	ff010113          	addi	sp,sp,-16
   168e0:	0000b597          	auipc	a1,0xb
   168e4:	7d858593          	addi	a1,a1,2008 # 220b8 <bmask+0x30>
   168e8:	00060513          	mv	a0,a2
   168ec:	00813023          	sd	s0,0(sp)
   168f0:	00113423          	sd	ra,8(sp)
   168f4:	00060413          	mv	s0,a2
   168f8:	300020ef          	jal	ra,18bf8 <strcmp>
   168fc:	02051463          	bnez	a0,16924 <_setlocale_r+0x4c>
   16900:	0000b517          	auipc	a0,0xb
   16904:	7b050513          	addi	a0,a0,1968 # 220b0 <bmask+0x28>
   16908:	00813083          	ld	ra,8(sp)
   1690c:	00013403          	ld	s0,0(sp)
   16910:	01010113          	addi	sp,sp,16
   16914:	00008067          	ret
   16918:	0000b517          	auipc	a0,0xb
   1691c:	79850513          	addi	a0,a0,1944 # 220b0 <bmask+0x28>
   16920:	00008067          	ret
   16924:	0000b597          	auipc	a1,0xb
   16928:	78c58593          	addi	a1,a1,1932 # 220b0 <bmask+0x28>
   1692c:	00040513          	mv	a0,s0
   16930:	2c8020ef          	jal	ra,18bf8 <strcmp>
   16934:	fc0506e3          	beqz	a0,16900 <_setlocale_r+0x28>
   16938:	0000b597          	auipc	a1,0xb
   1693c:	2e858593          	addi	a1,a1,744 # 21c20 <__clzdi2+0x94>
   16940:	00040513          	mv	a0,s0
   16944:	2b4020ef          	jal	ra,18bf8 <strcmp>
   16948:	fa050ce3          	beqz	a0,16900 <_setlocale_r+0x28>
   1694c:	00000513          	li	a0,0
   16950:	fb9ff06f          	j	16908 <_setlocale_r+0x30>

0000000000016954 <__locale_mb_cur_max>:
   16954:	ec01c503          	lbu	a0,-320(gp) # 242c0 <__global_locale+0x160>
   16958:	00008067          	ret

000000000001695c <setlocale>:
   1695c:	04058063          	beqz	a1,1699c <setlocale+0x40>
   16960:	ff010113          	addi	sp,sp,-16
   16964:	00813023          	sd	s0,0(sp)
   16968:	00058413          	mv	s0,a1
   1696c:	00040513          	mv	a0,s0
   16970:	0000b597          	auipc	a1,0xb
   16974:	74858593          	addi	a1,a1,1864 # 220b8 <bmask+0x30>
   16978:	00113423          	sd	ra,8(sp)
   1697c:	27c020ef          	jal	ra,18bf8 <strcmp>
   16980:	02051463          	bnez	a0,169a8 <setlocale+0x4c>
   16984:	0000b517          	auipc	a0,0xb
   16988:	72c50513          	addi	a0,a0,1836 # 220b0 <bmask+0x28>
   1698c:	00813083          	ld	ra,8(sp)
   16990:	00013403          	ld	s0,0(sp)
   16994:	01010113          	addi	sp,sp,16
   16998:	00008067          	ret
   1699c:	0000b517          	auipc	a0,0xb
   169a0:	71450513          	addi	a0,a0,1812 # 220b0 <bmask+0x28>
   169a4:	00008067          	ret
   169a8:	0000b597          	auipc	a1,0xb
   169ac:	70858593          	addi	a1,a1,1800 # 220b0 <bmask+0x28>
   169b0:	00040513          	mv	a0,s0
   169b4:	244020ef          	jal	ra,18bf8 <strcmp>
   169b8:	fc0506e3          	beqz	a0,16984 <setlocale+0x28>
   169bc:	0000b597          	auipc	a1,0xb
   169c0:	26458593          	addi	a1,a1,612 # 21c20 <__clzdi2+0x94>
   169c4:	00040513          	mv	a0,s0
   169c8:	230020ef          	jal	ra,18bf8 <strcmp>
   169cc:	fa050ce3          	beqz	a0,16984 <setlocale+0x28>
   169d0:	00000513          	li	a0,0
   169d4:	fb9ff06f          	j	1698c <setlocale+0x30>

00000000000169d8 <__smakebuf_r>:
   169d8:	0105d783          	lhu	a5,16(a1)
   169dc:	f6010113          	addi	sp,sp,-160
   169e0:	08813823          	sd	s0,144(sp)
   169e4:	08113c23          	sd	ra,152(sp)
   169e8:	08913423          	sd	s1,136(sp)
   169ec:	09213023          	sd	s2,128(sp)
   169f0:	07313c23          	sd	s3,120(sp)
   169f4:	07413823          	sd	s4,112(sp)
   169f8:	0027f713          	andi	a4,a5,2
   169fc:	00058413          	mv	s0,a1
   16a00:	02070c63          	beqz	a4,16a38 <__smakebuf_r+0x60>
   16a04:	07758793          	addi	a5,a1,119
   16a08:	00f5b023          	sd	a5,0(a1)
   16a0c:	00f5bc23          	sd	a5,24(a1)
   16a10:	00100793          	li	a5,1
   16a14:	02f5a023          	sw	a5,32(a1)
   16a18:	09813083          	ld	ra,152(sp)
   16a1c:	09013403          	ld	s0,144(sp)
   16a20:	08813483          	ld	s1,136(sp)
   16a24:	08013903          	ld	s2,128(sp)
   16a28:	07813983          	ld	s3,120(sp)
   16a2c:	07013a03          	ld	s4,112(sp)
   16a30:	0a010113          	addi	sp,sp,160
   16a34:	00008067          	ret
   16a38:	01259583          	lh	a1,18(a1)
   16a3c:	00050493          	mv	s1,a0
   16a40:	0805cc63          	bltz	a1,16ad8 <__smakebuf_r+0x100>
   16a44:	00810613          	addi	a2,sp,8
   16a48:	608060ef          	jal	ra,1d050 <_fstat_r>
   16a4c:	08054463          	bltz	a0,16ad4 <__smakebuf_r+0xfc>
   16a50:	00c12903          	lw	s2,12(sp)
   16a54:	0000f7b7          	lui	a5,0xf
   16a58:	40000993          	li	s3,1024
   16a5c:	00f97933          	and	s2,s2,a5
   16a60:	000027b7          	lui	a5,0x2
   16a64:	40f90933          	sub	s2,s2,a5
   16a68:	000017b7          	lui	a5,0x1
   16a6c:	00193913          	seqz	s2,s2
   16a70:	80078a13          	addi	s4,a5,-2048 # 800 <register_fini-0xf8b0>
   16a74:	00098593          	mv	a1,s3
   16a78:	00048513          	mv	a0,s1
   16a7c:	1bc000ef          	jal	ra,16c38 <_malloc_r>
   16a80:	01041783          	lh	a5,16(s0)
   16a84:	06050e63          	beqz	a0,16b00 <__smakebuf_r+0x128>
   16a88:	ffffc717          	auipc	a4,0xffffc
   16a8c:	77c70713          	addi	a4,a4,1916 # 13204 <_cleanup_r>
   16a90:	04e4bc23          	sd	a4,88(s1)
   16a94:	0807e793          	ori	a5,a5,128
   16a98:	00f41823          	sh	a5,16(s0)
   16a9c:	00a43023          	sd	a0,0(s0)
   16aa0:	00a43c23          	sd	a0,24(s0)
   16aa4:	03342023          	sw	s3,32(s0)
   16aa8:	08091863          	bnez	s2,16b38 <__smakebuf_r+0x160>
   16aac:	0147e7b3          	or	a5,a5,s4
   16ab0:	09813083          	ld	ra,152(sp)
   16ab4:	00f41823          	sh	a5,16(s0)
   16ab8:	09013403          	ld	s0,144(sp)
   16abc:	08813483          	ld	s1,136(sp)
   16ac0:	08013903          	ld	s2,128(sp)
   16ac4:	07813983          	ld	s3,120(sp)
   16ac8:	07013a03          	ld	s4,112(sp)
   16acc:	0a010113          	addi	sp,sp,160
   16ad0:	00008067          	ret
   16ad4:	01045783          	lhu	a5,16(s0)
   16ad8:	0807f793          	andi	a5,a5,128
   16adc:	00000913          	li	s2,0
   16ae0:	04078663          	beqz	a5,16b2c <__smakebuf_r+0x154>
   16ae4:	04000993          	li	s3,64
   16ae8:	00098593          	mv	a1,s3
   16aec:	00048513          	mv	a0,s1
   16af0:	148000ef          	jal	ra,16c38 <_malloc_r>
   16af4:	01041783          	lh	a5,16(s0)
   16af8:	00000a13          	li	s4,0
   16afc:	f80516e3          	bnez	a0,16a88 <__smakebuf_r+0xb0>
   16b00:	2007f713          	andi	a4,a5,512
   16b04:	f0071ae3          	bnez	a4,16a18 <__smakebuf_r+0x40>
   16b08:	ffc7f793          	andi	a5,a5,-4
   16b0c:	0027e793          	ori	a5,a5,2
   16b10:	07740713          	addi	a4,s0,119
   16b14:	00f41823          	sh	a5,16(s0)
   16b18:	00100793          	li	a5,1
   16b1c:	00e43023          	sd	a4,0(s0)
   16b20:	00e43c23          	sd	a4,24(s0)
   16b24:	02f42023          	sw	a5,32(s0)
   16b28:	ef1ff06f          	j	16a18 <__smakebuf_r+0x40>
   16b2c:	40000993          	li	s3,1024
   16b30:	00000a13          	li	s4,0
   16b34:	f41ff06f          	j	16a74 <__smakebuf_r+0x9c>
   16b38:	01241583          	lh	a1,18(s0)
   16b3c:	00048513          	mv	a0,s1
   16b40:	229060ef          	jal	ra,1d568 <_isatty_r>
   16b44:	00051663          	bnez	a0,16b50 <__smakebuf_r+0x178>
   16b48:	01041783          	lh	a5,16(s0)
   16b4c:	f61ff06f          	j	16aac <__smakebuf_r+0xd4>
   16b50:	01045783          	lhu	a5,16(s0)
   16b54:	ffc7f793          	andi	a5,a5,-4
   16b58:	0017e793          	ori	a5,a5,1
   16b5c:	0107979b          	slliw	a5,a5,0x10
   16b60:	4107d79b          	sraiw	a5,a5,0x10
   16b64:	f49ff06f          	j	16aac <__smakebuf_r+0xd4>

0000000000016b68 <__swhatbuf_r>:
   16b68:	f7010113          	addi	sp,sp,-144
   16b6c:	08813023          	sd	s0,128(sp)
   16b70:	00058413          	mv	s0,a1
   16b74:	01259583          	lh	a1,18(a1)
   16b78:	06913c23          	sd	s1,120(sp)
   16b7c:	07213823          	sd	s2,112(sp)
   16b80:	08113423          	sd	ra,136(sp)
   16b84:	00060493          	mv	s1,a2
   16b88:	00068913          	mv	s2,a3
   16b8c:	0405ca63          	bltz	a1,16be0 <__swhatbuf_r+0x78>
   16b90:	00810613          	addi	a2,sp,8
   16b94:	4bc060ef          	jal	ra,1d050 <_fstat_r>
   16b98:	04054463          	bltz	a0,16be0 <__swhatbuf_r+0x78>
   16b9c:	00c12783          	lw	a5,12(sp)
   16ba0:	0000f737          	lui	a4,0xf
   16ba4:	08813083          	ld	ra,136(sp)
   16ba8:	00e7f7b3          	and	a5,a5,a4
   16bac:	00002737          	lui	a4,0x2
   16bb0:	40e787b3          	sub	a5,a5,a4
   16bb4:	08013403          	ld	s0,128(sp)
   16bb8:	0017b793          	seqz	a5,a5
   16bbc:	00f92023          	sw	a5,0(s2)
   16bc0:	40000793          	li	a5,1024
   16bc4:	00f4b023          	sd	a5,0(s1)
   16bc8:	00001537          	lui	a0,0x1
   16bcc:	07813483          	ld	s1,120(sp)
   16bd0:	07013903          	ld	s2,112(sp)
   16bd4:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   16bd8:	09010113          	addi	sp,sp,144
   16bdc:	00008067          	ret
   16be0:	01041783          	lh	a5,16(s0)
   16be4:	00092023          	sw	zero,0(s2)
   16be8:	0807f793          	andi	a5,a5,128
   16bec:	02078463          	beqz	a5,16c14 <__swhatbuf_r+0xac>
   16bf0:	08813083          	ld	ra,136(sp)
   16bf4:	08013403          	ld	s0,128(sp)
   16bf8:	04000793          	li	a5,64
   16bfc:	00f4b023          	sd	a5,0(s1)
   16c00:	07013903          	ld	s2,112(sp)
   16c04:	07813483          	ld	s1,120(sp)
   16c08:	00000513          	li	a0,0
   16c0c:	09010113          	addi	sp,sp,144
   16c10:	00008067          	ret
   16c14:	08813083          	ld	ra,136(sp)
   16c18:	08013403          	ld	s0,128(sp)
   16c1c:	40000793          	li	a5,1024
   16c20:	00f4b023          	sd	a5,0(s1)
   16c24:	07013903          	ld	s2,112(sp)
   16c28:	07813483          	ld	s1,120(sp)
   16c2c:	00000513          	li	a0,0
   16c30:	09010113          	addi	sp,sp,144
   16c34:	00008067          	ret

0000000000016c38 <_malloc_r>:
   16c38:	fa010113          	addi	sp,sp,-96
   16c3c:	04913423          	sd	s1,72(sp)
   16c40:	05213023          	sd	s2,64(sp)
   16c44:	04113c23          	sd	ra,88(sp)
   16c48:	04813823          	sd	s0,80(sp)
   16c4c:	03313c23          	sd	s3,56(sp)
   16c50:	03413823          	sd	s4,48(sp)
   16c54:	03513423          	sd	s5,40(sp)
   16c58:	03613023          	sd	s6,32(sp)
   16c5c:	01713c23          	sd	s7,24(sp)
   16c60:	01813823          	sd	s8,16(sp)
   16c64:	01913423          	sd	s9,8(sp)
   16c68:	01758493          	addi	s1,a1,23
   16c6c:	02e00793          	li	a5,46
   16c70:	00050913          	mv	s2,a0
   16c74:	0697e663          	bltu	a5,s1,16ce0 <_malloc_r+0xa8>
   16c78:	02000793          	li	a5,32
   16c7c:	26b7e663          	bltu	a5,a1,16ee8 <_malloc_r+0x2b0>
   16c80:	10d000ef          	jal	ra,1758c <__malloc_lock>
   16c84:	02000493          	li	s1,32
   16c88:	05000793          	li	a5,80
   16c8c:	00400613          	li	a2,4
   16c90:	0000d997          	auipc	s3,0xd
   16c94:	67898993          	addi	s3,s3,1656 # 24308 <__malloc_av_>
   16c98:	00f987b3          	add	a5,s3,a5
   16c9c:	0087b403          	ld	s0,8(a5)
   16ca0:	ff078713          	addi	a4,a5,-16
   16ca4:	28e40263          	beq	s0,a4,16f28 <_malloc_r+0x2f0>
   16ca8:	00843783          	ld	a5,8(s0)
   16cac:	01843683          	ld	a3,24(s0)
   16cb0:	01043603          	ld	a2,16(s0)
   16cb4:	ffc7f793          	andi	a5,a5,-4
   16cb8:	00f407b3          	add	a5,s0,a5
   16cbc:	0087b703          	ld	a4,8(a5)
   16cc0:	00d63c23          	sd	a3,24(a2)
   16cc4:	00c6b823          	sd	a2,16(a3)
   16cc8:	00176713          	ori	a4,a4,1
   16ccc:	00090513          	mv	a0,s2
   16cd0:	00e7b423          	sd	a4,8(a5)
   16cd4:	0bd000ef          	jal	ra,17590 <__malloc_unlock>
   16cd8:	01040513          	addi	a0,s0,16
   16cdc:	2180006f          	j	16ef4 <_malloc_r+0x2bc>
   16ce0:	800007b7          	lui	a5,0x80000
   16ce4:	ff04f493          	andi	s1,s1,-16
   16ce8:	fff7c793          	not	a5,a5
   16cec:	1e97ee63          	bltu	a5,s1,16ee8 <_malloc_r+0x2b0>
   16cf0:	1eb4ec63          	bltu	s1,a1,16ee8 <_malloc_r+0x2b0>
   16cf4:	099000ef          	jal	ra,1758c <__malloc_lock>
   16cf8:	1f700793          	li	a5,503
   16cfc:	4e97f663          	bgeu	a5,s1,171e8 <_malloc_r+0x5b0>
   16d00:	0094d793          	srli	a5,s1,0x9
   16d04:	34078c63          	beqz	a5,1705c <_malloc_r+0x424>
   16d08:	00400713          	li	a4,4
   16d0c:	40f76c63          	bltu	a4,a5,17124 <_malloc_r+0x4ec>
   16d10:	0064d793          	srli	a5,s1,0x6
   16d14:	0397861b          	addiw	a2,a5,57
   16d18:	0016169b          	slliw	a3,a2,0x1
   16d1c:	0387851b          	addiw	a0,a5,56
   16d20:	00369693          	slli	a3,a3,0x3
   16d24:	0000d997          	auipc	s3,0xd
   16d28:	5e498993          	addi	s3,s3,1508 # 24308 <__malloc_av_>
   16d2c:	00d986b3          	add	a3,s3,a3
   16d30:	0086b403          	ld	s0,8(a3)
   16d34:	ff068693          	addi	a3,a3,-16
   16d38:	1e868e63          	beq	a3,s0,16f34 <_malloc_r+0x2fc>
   16d3c:	01f00593          	li	a1,31
   16d40:	0100006f          	j	16d50 <_malloc_r+0x118>
   16d44:	36075863          	bgez	a4,170b4 <_malloc_r+0x47c>
   16d48:	01843403          	ld	s0,24(s0)
   16d4c:	1e868463          	beq	a3,s0,16f34 <_malloc_r+0x2fc>
   16d50:	00843783          	ld	a5,8(s0)
   16d54:	ffc7f793          	andi	a5,a5,-4
   16d58:	40978733          	sub	a4,a5,s1
   16d5c:	fee5d4e3          	bge	a1,a4,16d44 <_malloc_r+0x10c>
   16d60:	0209b403          	ld	s0,32(s3)
   16d64:	0000d897          	auipc	a7,0xd
   16d68:	5b488893          	addi	a7,a7,1460 # 24318 <__malloc_av_+0x10>
   16d6c:	00050613          	mv	a2,a0
   16d70:	1d141a63          	bne	s0,a7,16f44 <_malloc_r+0x30c>
   16d74:	0089b783          	ld	a5,8(s3)
   16d78:	4026571b          	sraiw	a4,a2,0x2
   16d7c:	00100593          	li	a1,1
   16d80:	00e595b3          	sll	a1,a1,a4
   16d84:	22b7fe63          	bgeu	a5,a1,16fc0 <_malloc_r+0x388>
   16d88:	0109b403          	ld	s0,16(s3)
   16d8c:	00843a03          	ld	s4,8(s0)
   16d90:	ffca7a93          	andi	s5,s4,-4
   16d94:	009ae863          	bltu	s5,s1,16da4 <_malloc_r+0x16c>
   16d98:	409a87b3          	sub	a5,s5,s1
   16d9c:	01f00713          	li	a4,31
   16da0:	2ef74663          	blt	a4,a5,1708c <_malloc_r+0x454>
   16da4:	76018c93          	addi	s9,gp,1888 # 24b60 <__malloc_sbrk_base>
   16da8:	000cb703          	ld	a4,0(s9) # 1000 <register_fini-0xf0b0>
   16dac:	7881ba03          	ld	s4,1928(gp) # 24b88 <__malloc_top_pad>
   16db0:	fff00793          	li	a5,-1
   16db4:	01540bb3          	add	s7,s0,s5
   16db8:	01448a33          	add	s4,s1,s4
   16dbc:	4ef70a63          	beq	a4,a5,172b0 <_malloc_r+0x678>
   16dc0:	000017b7          	lui	a5,0x1
   16dc4:	01f78793          	addi	a5,a5,31 # 101f <register_fini-0xf091>
   16dc8:	00fa0a33          	add	s4,s4,a5
   16dcc:	fffff7b7          	lui	a5,0xfffff
   16dd0:	00fa7a33          	and	s4,s4,a5
   16dd4:	000a0593          	mv	a1,s4
   16dd8:	00090513          	mv	a0,s2
   16ddc:	2f1010ef          	jal	ra,188cc <_sbrk_r>
   16de0:	fff00793          	li	a5,-1
   16de4:	00050b13          	mv	s6,a0
   16de8:	42f50a63          	beq	a0,a5,1721c <_malloc_r+0x5e4>
   16dec:	43756663          	bltu	a0,s7,17218 <_malloc_r+0x5e0>
   16df0:	7d818c13          	addi	s8,gp,2008 # 24bd8 <__malloc_current_mallinfo>
   16df4:	000c2703          	lw	a4,0(s8)
   16df8:	014707bb          	addw	a5,a4,s4
   16dfc:	00fc2023          	sw	a5,0(s8)
   16e00:	00078693          	mv	a3,a5
   16e04:	54ab8e63          	beq	s7,a0,17360 <_malloc_r+0x728>
   16e08:	000cb703          	ld	a4,0(s9)
   16e0c:	fff00793          	li	a5,-1
   16e10:	56f70663          	beq	a4,a5,1737c <_malloc_r+0x744>
   16e14:	417b07b3          	sub	a5,s6,s7
   16e18:	00d787bb          	addw	a5,a5,a3
   16e1c:	00fc2023          	sw	a5,0(s8)
   16e20:	00fb7b93          	andi	s7,s6,15
   16e24:	4a0b8863          	beqz	s7,172d4 <_malloc_r+0x69c>
   16e28:	00001737          	lui	a4,0x1
   16e2c:	417b0b33          	sub	s6,s6,s7
   16e30:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   16e34:	010b0b13          	addi	s6,s6,16
   16e38:	417787b3          	sub	a5,a5,s7
   16e3c:	014b0cb3          	add	s9,s6,s4
   16e40:	41978a33          	sub	s4,a5,s9
   16e44:	fff70713          	addi	a4,a4,-1
   16e48:	00ea7a33          	and	s4,s4,a4
   16e4c:	000a0593          	mv	a1,s4
   16e50:	00090513          	mv	a0,s2
   16e54:	279010ef          	jal	ra,188cc <_sbrk_r>
   16e58:	fff00793          	li	a5,-1
   16e5c:	56f50e63          	beq	a0,a5,173d8 <_malloc_r+0x7a0>
   16e60:	41650533          	sub	a0,a0,s6
   16e64:	000a071b          	sext.w	a4,s4
   16e68:	01450a33          	add	s4,a0,s4
   16e6c:	000c2783          	lw	a5,0(s8)
   16e70:	0169b823          	sd	s6,16(s3)
   16e74:	001a6a13          	ori	s4,s4,1
   16e78:	00e787bb          	addw	a5,a5,a4
   16e7c:	00fc2023          	sw	a5,0(s8)
   16e80:	014b3423          	sd	s4,8(s6)
   16e84:	51340063          	beq	s0,s3,17384 <_malloc_r+0x74c>
   16e88:	01f00613          	li	a2,31
   16e8c:	51567063          	bgeu	a2,s5,1738c <_malloc_r+0x754>
   16e90:	00843683          	ld	a3,8(s0)
   16e94:	fe8a8713          	addi	a4,s5,-24 # ffffffffffffefe8 <__BSS_END__+0xfffffffffffda3e8>
   16e98:	ff077713          	andi	a4,a4,-16
   16e9c:	0016f693          	andi	a3,a3,1
   16ea0:	00e6e6b3          	or	a3,a3,a4
   16ea4:	00d43423          	sd	a3,8(s0)
   16ea8:	00900593          	li	a1,9
   16eac:	00e406b3          	add	a3,s0,a4
   16eb0:	00b6b423          	sd	a1,8(a3)
   16eb4:	00b6b823          	sd	a1,16(a3)
   16eb8:	52e66a63          	bltu	a2,a4,173ec <_malloc_r+0x7b4>
   16ebc:	008b3a03          	ld	s4,8(s6)
   16ec0:	000b0413          	mv	s0,s6
   16ec4:	78018713          	addi	a4,gp,1920 # 24b80 <__malloc_max_sbrked_mem>
   16ec8:	00073683          	ld	a3,0(a4)
   16ecc:	00f6f463          	bgeu	a3,a5,16ed4 <_malloc_r+0x29c>
   16ed0:	00f73023          	sd	a5,0(a4)
   16ed4:	77818713          	addi	a4,gp,1912 # 24b78 <__malloc_max_total_mem>
   16ed8:	00073683          	ld	a3,0(a4)
   16edc:	34f6f463          	bgeu	a3,a5,17224 <_malloc_r+0x5ec>
   16ee0:	00f73023          	sd	a5,0(a4)
   16ee4:	3400006f          	j	17224 <_malloc_r+0x5ec>
   16ee8:	00c00793          	li	a5,12
   16eec:	00f92023          	sw	a5,0(s2)
   16ef0:	00000513          	li	a0,0
   16ef4:	05813083          	ld	ra,88(sp)
   16ef8:	05013403          	ld	s0,80(sp)
   16efc:	04813483          	ld	s1,72(sp)
   16f00:	04013903          	ld	s2,64(sp)
   16f04:	03813983          	ld	s3,56(sp)
   16f08:	03013a03          	ld	s4,48(sp)
   16f0c:	02813a83          	ld	s5,40(sp)
   16f10:	02013b03          	ld	s6,32(sp)
   16f14:	01813b83          	ld	s7,24(sp)
   16f18:	01013c03          	ld	s8,16(sp)
   16f1c:	00813c83          	ld	s9,8(sp)
   16f20:	06010113          	addi	sp,sp,96
   16f24:	00008067          	ret
   16f28:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda418>
   16f2c:	0026061b          	addiw	a2,a2,2
   16f30:	d6879ce3          	bne	a5,s0,16ca8 <_malloc_r+0x70>
   16f34:	0209b403          	ld	s0,32(s3)
   16f38:	0000d897          	auipc	a7,0xd
   16f3c:	3e088893          	addi	a7,a7,992 # 24318 <__malloc_av_+0x10>
   16f40:	e3140ae3          	beq	s0,a7,16d74 <_malloc_r+0x13c>
   16f44:	00843783          	ld	a5,8(s0)
   16f48:	01f00693          	li	a3,31
   16f4c:	ffc7f793          	andi	a5,a5,-4
   16f50:	40978733          	sub	a4,a5,s1
   16f54:	24e6cc63          	blt	a3,a4,171ac <_malloc_r+0x574>
   16f58:	0319b423          	sd	a7,40(s3)
   16f5c:	0319b023          	sd	a7,32(s3)
   16f60:	10075663          	bgez	a4,1706c <_malloc_r+0x434>
   16f64:	1ff00713          	li	a4,511
   16f68:	14f76c63          	bltu	a4,a5,170c0 <_malloc_r+0x488>
   16f6c:	0037d793          	srli	a5,a5,0x3
   16f70:	0017871b          	addiw	a4,a5,1
   16f74:	0017171b          	slliw	a4,a4,0x1
   16f78:	00371713          	slli	a4,a4,0x3
   16f7c:	0089b503          	ld	a0,8(s3)
   16f80:	00e98733          	add	a4,s3,a4
   16f84:	00073583          	ld	a1,0(a4)
   16f88:	4027d69b          	sraiw	a3,a5,0x2
   16f8c:	00100793          	li	a5,1
   16f90:	00d797b3          	sll	a5,a5,a3
   16f94:	00a7e7b3          	or	a5,a5,a0
   16f98:	ff070693          	addi	a3,a4,-16
   16f9c:	00d43c23          	sd	a3,24(s0)
   16fa0:	00b43823          	sd	a1,16(s0)
   16fa4:	00f9b423          	sd	a5,8(s3)
   16fa8:	00873023          	sd	s0,0(a4)
   16fac:	0085bc23          	sd	s0,24(a1)
   16fb0:	4026571b          	sraiw	a4,a2,0x2
   16fb4:	00100593          	li	a1,1
   16fb8:	00e595b3          	sll	a1,a1,a4
   16fbc:	dcb7e6e3          	bltu	a5,a1,16d88 <_malloc_r+0x150>
   16fc0:	00f5f733          	and	a4,a1,a5
   16fc4:	02071463          	bnez	a4,16fec <_malloc_r+0x3b4>
   16fc8:	00159593          	slli	a1,a1,0x1
   16fcc:	ffc67613          	andi	a2,a2,-4
   16fd0:	00f5f733          	and	a4,a1,a5
   16fd4:	0046061b          	addiw	a2,a2,4
   16fd8:	00071a63          	bnez	a4,16fec <_malloc_r+0x3b4>
   16fdc:	00159593          	slli	a1,a1,0x1
   16fe0:	00f5f733          	and	a4,a1,a5
   16fe4:	0046061b          	addiw	a2,a2,4
   16fe8:	fe070ae3          	beqz	a4,16fdc <_malloc_r+0x3a4>
   16fec:	01f00813          	li	a6,31
   16ff0:	0016031b          	addiw	t1,a2,1
   16ff4:	0013131b          	slliw	t1,t1,0x1
   16ff8:	00331313          	slli	t1,t1,0x3
   16ffc:	ff030313          	addi	t1,t1,-16
   17000:	00698333          	add	t1,s3,t1
   17004:	00030513          	mv	a0,t1
   17008:	01853783          	ld	a5,24(a0)
   1700c:	00060e13          	mv	t3,a2
   17010:	12f50e63          	beq	a0,a5,1714c <_malloc_r+0x514>
   17014:	0087b703          	ld	a4,8(a5)
   17018:	00078413          	mv	s0,a5
   1701c:	0187b783          	ld	a5,24(a5)
   17020:	ffc77713          	andi	a4,a4,-4
   17024:	409706b3          	sub	a3,a4,s1
   17028:	12d84e63          	blt	a6,a3,17164 <_malloc_r+0x52c>
   1702c:	fe06c2e3          	bltz	a3,17010 <_malloc_r+0x3d8>
   17030:	00e40733          	add	a4,s0,a4
   17034:	00873683          	ld	a3,8(a4)
   17038:	01043603          	ld	a2,16(s0)
   1703c:	00090513          	mv	a0,s2
   17040:	0016e693          	ori	a3,a3,1
   17044:	00d73423          	sd	a3,8(a4)
   17048:	00f63c23          	sd	a5,24(a2)
   1704c:	00c7b823          	sd	a2,16(a5)
   17050:	540000ef          	jal	ra,17590 <__malloc_unlock>
   17054:	01040513          	addi	a0,s0,16
   17058:	e9dff06f          	j	16ef4 <_malloc_r+0x2bc>
   1705c:	40000693          	li	a3,1024
   17060:	04000613          	li	a2,64
   17064:	03f00513          	li	a0,63
   17068:	cbdff06f          	j	16d24 <_malloc_r+0xec>
   1706c:	00f407b3          	add	a5,s0,a5
   17070:	0087b703          	ld	a4,8(a5)
   17074:	00090513          	mv	a0,s2
   17078:	00176713          	ori	a4,a4,1
   1707c:	00e7b423          	sd	a4,8(a5)
   17080:	510000ef          	jal	ra,17590 <__malloc_unlock>
   17084:	01040513          	addi	a0,s0,16
   17088:	e6dff06f          	j	16ef4 <_malloc_r+0x2bc>
   1708c:	0014e713          	ori	a4,s1,1
   17090:	00e43423          	sd	a4,8(s0)
   17094:	009404b3          	add	s1,s0,s1
   17098:	0099b823          	sd	s1,16(s3)
   1709c:	0017e793          	ori	a5,a5,1
   170a0:	00090513          	mv	a0,s2
   170a4:	00f4b423          	sd	a5,8(s1)
   170a8:	4e8000ef          	jal	ra,17590 <__malloc_unlock>
   170ac:	01040513          	addi	a0,s0,16
   170b0:	e45ff06f          	j	16ef4 <_malloc_r+0x2bc>
   170b4:	01843683          	ld	a3,24(s0)
   170b8:	01043603          	ld	a2,16(s0)
   170bc:	bfdff06f          	j	16cb8 <_malloc_r+0x80>
   170c0:	0097d713          	srli	a4,a5,0x9
   170c4:	00400693          	li	a3,4
   170c8:	12e6fc63          	bgeu	a3,a4,17200 <_malloc_r+0x5c8>
   170cc:	01400693          	li	a3,20
   170d0:	22e6ee63          	bltu	a3,a4,1730c <_malloc_r+0x6d4>
   170d4:	05c7059b          	addiw	a1,a4,92
   170d8:	0015959b          	slliw	a1,a1,0x1
   170dc:	05b7069b          	addiw	a3,a4,91
   170e0:	00359593          	slli	a1,a1,0x3
   170e4:	00b985b3          	add	a1,s3,a1
   170e8:	0005b703          	ld	a4,0(a1)
   170ec:	ff058593          	addi	a1,a1,-16
   170f0:	1ce58463          	beq	a1,a4,172b8 <_malloc_r+0x680>
   170f4:	00873683          	ld	a3,8(a4)
   170f8:	ffc6f693          	andi	a3,a3,-4
   170fc:	00d7f663          	bgeu	a5,a3,17108 <_malloc_r+0x4d0>
   17100:	01073703          	ld	a4,16(a4)
   17104:	fee598e3          	bne	a1,a4,170f4 <_malloc_r+0x4bc>
   17108:	01873583          	ld	a1,24(a4)
   1710c:	0089b783          	ld	a5,8(s3)
   17110:	00b43c23          	sd	a1,24(s0)
   17114:	00e43823          	sd	a4,16(s0)
   17118:	0085b823          	sd	s0,16(a1)
   1711c:	00873c23          	sd	s0,24(a4)
   17120:	e91ff06f          	j	16fb0 <_malloc_r+0x378>
   17124:	01400713          	li	a4,20
   17128:	12f77063          	bgeu	a4,a5,17248 <_malloc_r+0x610>
   1712c:	05400713          	li	a4,84
   17130:	1ef76e63          	bltu	a4,a5,1732c <_malloc_r+0x6f4>
   17134:	00c4d793          	srli	a5,s1,0xc
   17138:	06f7861b          	addiw	a2,a5,111
   1713c:	0016169b          	slliw	a3,a2,0x1
   17140:	06e7851b          	addiw	a0,a5,110
   17144:	00369693          	slli	a3,a3,0x3
   17148:	bddff06f          	j	16d24 <_malloc_r+0xec>
   1714c:	001e0e1b          	addiw	t3,t3,1
   17150:	003e7793          	andi	a5,t3,3
   17154:	01050513          	addi	a0,a0,16
   17158:	10078863          	beqz	a5,17268 <_malloc_r+0x630>
   1715c:	01853783          	ld	a5,24(a0)
   17160:	eb1ff06f          	j	17010 <_malloc_r+0x3d8>
   17164:	01043603          	ld	a2,16(s0)
   17168:	0014e593          	ori	a1,s1,1
   1716c:	00b43423          	sd	a1,8(s0)
   17170:	00f63c23          	sd	a5,24(a2)
   17174:	00c7b823          	sd	a2,16(a5)
   17178:	009404b3          	add	s1,s0,s1
   1717c:	0299b423          	sd	s1,40(s3)
   17180:	0299b023          	sd	s1,32(s3)
   17184:	0016e793          	ori	a5,a3,1
   17188:	0114bc23          	sd	a7,24(s1)
   1718c:	0114b823          	sd	a7,16(s1)
   17190:	00f4b423          	sd	a5,8(s1)
   17194:	00e40733          	add	a4,s0,a4
   17198:	00090513          	mv	a0,s2
   1719c:	00d73023          	sd	a3,0(a4)
   171a0:	3f0000ef          	jal	ra,17590 <__malloc_unlock>
   171a4:	01040513          	addi	a0,s0,16
   171a8:	d4dff06f          	j	16ef4 <_malloc_r+0x2bc>
   171ac:	0014e693          	ori	a3,s1,1
   171b0:	00d43423          	sd	a3,8(s0)
   171b4:	009404b3          	add	s1,s0,s1
   171b8:	0299b423          	sd	s1,40(s3)
   171bc:	0299b023          	sd	s1,32(s3)
   171c0:	00176693          	ori	a3,a4,1
   171c4:	0114bc23          	sd	a7,24(s1)
   171c8:	0114b823          	sd	a7,16(s1)
   171cc:	00d4b423          	sd	a3,8(s1)
   171d0:	00f407b3          	add	a5,s0,a5
   171d4:	00090513          	mv	a0,s2
   171d8:	00e7b023          	sd	a4,0(a5)
   171dc:	3b4000ef          	jal	ra,17590 <__malloc_unlock>
   171e0:	01040513          	addi	a0,s0,16
   171e4:	d11ff06f          	j	16ef4 <_malloc_r+0x2bc>
   171e8:	0034d613          	srli	a2,s1,0x3
   171ec:	0016079b          	addiw	a5,a2,1
   171f0:	0017979b          	slliw	a5,a5,0x1
   171f4:	0006061b          	sext.w	a2,a2
   171f8:	00379793          	slli	a5,a5,0x3
   171fc:	a95ff06f          	j	16c90 <_malloc_r+0x58>
   17200:	0067d713          	srli	a4,a5,0x6
   17204:	0397059b          	addiw	a1,a4,57
   17208:	0015959b          	slliw	a1,a1,0x1
   1720c:	0387069b          	addiw	a3,a4,56
   17210:	00359593          	slli	a1,a1,0x3
   17214:	ed1ff06f          	j	170e4 <_malloc_r+0x4ac>
   17218:	13340a63          	beq	s0,s3,1734c <_malloc_r+0x714>
   1721c:	0109b403          	ld	s0,16(s3)
   17220:	00843a03          	ld	s4,8(s0)
   17224:	ffca7a13          	andi	s4,s4,-4
   17228:	409a07b3          	sub	a5,s4,s1
   1722c:	009a6663          	bltu	s4,s1,17238 <_malloc_r+0x600>
   17230:	01f00713          	li	a4,31
   17234:	e4f74ce3          	blt	a4,a5,1708c <_malloc_r+0x454>
   17238:	00090513          	mv	a0,s2
   1723c:	354000ef          	jal	ra,17590 <__malloc_unlock>
   17240:	00000513          	li	a0,0
   17244:	cb1ff06f          	j	16ef4 <_malloc_r+0x2bc>
   17248:	05c7861b          	addiw	a2,a5,92
   1724c:	0016169b          	slliw	a3,a2,0x1
   17250:	05b7851b          	addiw	a0,a5,91
   17254:	00369693          	slli	a3,a3,0x3
   17258:	acdff06f          	j	16d24 <_malloc_r+0xec>
   1725c:	01033783          	ld	a5,16(t1)
   17260:	fff6061b          	addiw	a2,a2,-1
   17264:	1e679063          	bne	a5,t1,17444 <_malloc_r+0x80c>
   17268:	00367793          	andi	a5,a2,3
   1726c:	ff030313          	addi	t1,t1,-16
   17270:	fe0796e3          	bnez	a5,1725c <_malloc_r+0x624>
   17274:	0089b703          	ld	a4,8(s3)
   17278:	fff5c793          	not	a5,a1
   1727c:	00e7f7b3          	and	a5,a5,a4
   17280:	00f9b423          	sd	a5,8(s3)
   17284:	00159593          	slli	a1,a1,0x1
   17288:	b0b7e0e3          	bltu	a5,a1,16d88 <_malloc_r+0x150>
   1728c:	ae058ee3          	beqz	a1,16d88 <_malloc_r+0x150>
   17290:	00f5f733          	and	a4,a1,a5
   17294:	00071a63          	bnez	a4,172a8 <_malloc_r+0x670>
   17298:	00159593          	slli	a1,a1,0x1
   1729c:	00f5f733          	and	a4,a1,a5
   172a0:	004e0e1b          	addiw	t3,t3,4
   172a4:	fe070ae3          	beqz	a4,17298 <_malloc_r+0x660>
   172a8:	000e0613          	mv	a2,t3
   172ac:	d45ff06f          	j	16ff0 <_malloc_r+0x3b8>
   172b0:	020a0a13          	addi	s4,s4,32
   172b4:	b21ff06f          	j	16dd4 <_malloc_r+0x19c>
   172b8:	0089b503          	ld	a0,8(s3)
   172bc:	4026d69b          	sraiw	a3,a3,0x2
   172c0:	00100793          	li	a5,1
   172c4:	00d797b3          	sll	a5,a5,a3
   172c8:	00a7e7b3          	or	a5,a5,a0
   172cc:	00f9b423          	sd	a5,8(s3)
   172d0:	e41ff06f          	j	17110 <_malloc_r+0x4d8>
   172d4:	014b0bb3          	add	s7,s6,s4
   172d8:	41700bb3          	neg	s7,s7
   172dc:	034b9b93          	slli	s7,s7,0x34
   172e0:	034bdb93          	srli	s7,s7,0x34
   172e4:	000b8593          	mv	a1,s7
   172e8:	00090513          	mv	a0,s2
   172ec:	5e0010ef          	jal	ra,188cc <_sbrk_r>
   172f0:	fff00793          	li	a5,-1
   172f4:	00000713          	li	a4,0
   172f8:	b6f50ae3          	beq	a0,a5,16e6c <_malloc_r+0x234>
   172fc:	41650533          	sub	a0,a0,s6
   17300:	000b871b          	sext.w	a4,s7
   17304:	01750a33          	add	s4,a0,s7
   17308:	b65ff06f          	j	16e6c <_malloc_r+0x234>
   1730c:	05400693          	li	a3,84
   17310:	08e6e463          	bltu	a3,a4,17398 <_malloc_r+0x760>
   17314:	00c7d713          	srli	a4,a5,0xc
   17318:	06f7059b          	addiw	a1,a4,111
   1731c:	0015959b          	slliw	a1,a1,0x1
   17320:	06e7069b          	addiw	a3,a4,110
   17324:	00359593          	slli	a1,a1,0x3
   17328:	dbdff06f          	j	170e4 <_malloc_r+0x4ac>
   1732c:	15400713          	li	a4,340
   17330:	08f76463          	bltu	a4,a5,173b8 <_malloc_r+0x780>
   17334:	00f4d793          	srli	a5,s1,0xf
   17338:	0787861b          	addiw	a2,a5,120
   1733c:	0016169b          	slliw	a3,a2,0x1
   17340:	0777851b          	addiw	a0,a5,119
   17344:	00369693          	slli	a3,a3,0x3
   17348:	9ddff06f          	j	16d24 <_malloc_r+0xec>
   1734c:	7d818c13          	addi	s8,gp,2008 # 24bd8 <__malloc_current_mallinfo>
   17350:	000c2783          	lw	a5,0(s8)
   17354:	014786bb          	addw	a3,a5,s4
   17358:	00dc2023          	sw	a3,0(s8)
   1735c:	aadff06f          	j	16e08 <_malloc_r+0x1d0>
   17360:	034b9713          	slli	a4,s7,0x34
   17364:	aa0712e3          	bnez	a4,16e08 <_malloc_r+0x1d0>
   17368:	0109b403          	ld	s0,16(s3)
   1736c:	014a8a33          	add	s4,s5,s4
   17370:	001a6a13          	ori	s4,s4,1
   17374:	01443423          	sd	s4,8(s0)
   17378:	b4dff06f          	j	16ec4 <_malloc_r+0x28c>
   1737c:	016cb023          	sd	s6,0(s9)
   17380:	aa1ff06f          	j	16e20 <_malloc_r+0x1e8>
   17384:	000b0413          	mv	s0,s6
   17388:	b3dff06f          	j	16ec4 <_malloc_r+0x28c>
   1738c:	00100793          	li	a5,1
   17390:	00fb3423          	sd	a5,8(s6)
   17394:	ea5ff06f          	j	17238 <_malloc_r+0x600>
   17398:	15400693          	li	a3,340
   1739c:	06e6e663          	bltu	a3,a4,17408 <_malloc_r+0x7d0>
   173a0:	00f7d713          	srli	a4,a5,0xf
   173a4:	0787059b          	addiw	a1,a4,120
   173a8:	0015959b          	slliw	a1,a1,0x1
   173ac:	0777069b          	addiw	a3,a4,119
   173b0:	00359593          	slli	a1,a1,0x3
   173b4:	d31ff06f          	j	170e4 <_malloc_r+0x4ac>
   173b8:	55400713          	li	a4,1364
   173bc:	06f76663          	bltu	a4,a5,17428 <_malloc_r+0x7f0>
   173c0:	0124d793          	srli	a5,s1,0x12
   173c4:	07d7861b          	addiw	a2,a5,125
   173c8:	0016169b          	slliw	a3,a2,0x1
   173cc:	07c7851b          	addiw	a0,a5,124
   173d0:	00369693          	slli	a3,a3,0x3
   173d4:	951ff06f          	j	16d24 <_malloc_r+0xec>
   173d8:	ff0b8b93          	addi	s7,s7,-16
   173dc:	017c8a33          	add	s4,s9,s7
   173e0:	416a0a33          	sub	s4,s4,s6
   173e4:	00000713          	li	a4,0
   173e8:	a85ff06f          	j	16e6c <_malloc_r+0x234>
   173ec:	01040593          	addi	a1,s0,16
   173f0:	00090513          	mv	a0,s2
   173f4:	b40fc0ef          	jal	ra,13734 <_free_r>
   173f8:	0109b403          	ld	s0,16(s3)
   173fc:	000c2783          	lw	a5,0(s8)
   17400:	00843a03          	ld	s4,8(s0)
   17404:	ac1ff06f          	j	16ec4 <_malloc_r+0x28c>
   17408:	55400693          	li	a3,1364
   1740c:	02e6e663          	bltu	a3,a4,17438 <_malloc_r+0x800>
   17410:	0127d713          	srli	a4,a5,0x12
   17414:	07d7059b          	addiw	a1,a4,125
   17418:	0015959b          	slliw	a1,a1,0x1
   1741c:	07c7069b          	addiw	a3,a4,124
   17420:	00359593          	slli	a1,a1,0x3
   17424:	cc1ff06f          	j	170e4 <_malloc_r+0x4ac>
   17428:	7f000693          	li	a3,2032
   1742c:	07f00613          	li	a2,127
   17430:	07e00513          	li	a0,126
   17434:	8f1ff06f          	j	16d24 <_malloc_r+0xec>
   17438:	7f000593          	li	a1,2032
   1743c:	07e00693          	li	a3,126
   17440:	ca5ff06f          	j	170e4 <_malloc_r+0x4ac>
   17444:	0089b783          	ld	a5,8(s3)
   17448:	e3dff06f          	j	17284 <_malloc_r+0x64c>

000000000001744c <_mbtowc_r>:
   1744c:	e481b783          	ld	a5,-440(gp) # 24248 <__global_locale+0xe8>
   17450:	00078067          	jr	a5

0000000000017454 <__ascii_mbtowc>:
   17454:	02058063          	beqz	a1,17474 <__ascii_mbtowc+0x20>
   17458:	04060263          	beqz	a2,1749c <__ascii_mbtowc+0x48>
   1745c:	04068863          	beqz	a3,174ac <__ascii_mbtowc+0x58>
   17460:	00064783          	lbu	a5,0(a2)
   17464:	00f5a023          	sw	a5,0(a1)
   17468:	00064503          	lbu	a0,0(a2)
   1746c:	00a03533          	snez	a0,a0
   17470:	00008067          	ret
   17474:	ff010113          	addi	sp,sp,-16
   17478:	00c10593          	addi	a1,sp,12
   1747c:	02060463          	beqz	a2,174a4 <__ascii_mbtowc+0x50>
   17480:	02068a63          	beqz	a3,174b4 <__ascii_mbtowc+0x60>
   17484:	00064783          	lbu	a5,0(a2)
   17488:	00f5a023          	sw	a5,0(a1)
   1748c:	00064503          	lbu	a0,0(a2)
   17490:	00a03533          	snez	a0,a0
   17494:	01010113          	addi	sp,sp,16
   17498:	00008067          	ret
   1749c:	00000513          	li	a0,0
   174a0:	00008067          	ret
   174a4:	00000513          	li	a0,0
   174a8:	fedff06f          	j	17494 <__ascii_mbtowc+0x40>
   174ac:	ffe00513          	li	a0,-2
   174b0:	00008067          	ret
   174b4:	ffe00513          	li	a0,-2
   174b8:	fddff06f          	j	17494 <__ascii_mbtowc+0x40>

00000000000174bc <memchr>:
   174bc:	00757793          	andi	a5,a0,7
   174c0:	0ff5f693          	andi	a3,a1,255
   174c4:	02078a63          	beqz	a5,174f8 <memchr+0x3c>
   174c8:	fff60793          	addi	a5,a2,-1
   174cc:	02060e63          	beqz	a2,17508 <memchr+0x4c>
   174d0:	fff00613          	li	a2,-1
   174d4:	0180006f          	j	174ec <memchr+0x30>
   174d8:	00150513          	addi	a0,a0,1
   174dc:	00757713          	andi	a4,a0,7
   174e0:	00070e63          	beqz	a4,174fc <memchr+0x40>
   174e4:	fff78793          	addi	a5,a5,-1
   174e8:	02c78063          	beq	a5,a2,17508 <memchr+0x4c>
   174ec:	00054703          	lbu	a4,0(a0)
   174f0:	fed714e3          	bne	a4,a3,174d8 <memchr+0x1c>
   174f4:	00008067          	ret
   174f8:	00060793          	mv	a5,a2
   174fc:	00700713          	li	a4,7
   17500:	02f76663          	bltu	a4,a5,1752c <memchr+0x70>
   17504:	00079663          	bnez	a5,17510 <memchr+0x54>
   17508:	00000513          	li	a0,0
   1750c:	00008067          	ret
   17510:	00f507b3          	add	a5,a0,a5
   17514:	00c0006f          	j	17520 <memchr+0x64>
   17518:	00150513          	addi	a0,a0,1
   1751c:	fea786e3          	beq	a5,a0,17508 <memchr+0x4c>
   17520:	00054703          	lbu	a4,0(a0)
   17524:	fed71ae3          	bne	a4,a3,17518 <memchr+0x5c>
   17528:	00008067          	ret
   1752c:	0ff5f593          	andi	a1,a1,255
   17530:	00859713          	slli	a4,a1,0x8
   17534:	00b765b3          	or	a1,a4,a1
   17538:	01059713          	slli	a4,a1,0x10
   1753c:	00b76733          	or	a4,a4,a1
   17540:	02071593          	slli	a1,a4,0x20
   17544:	00e5e5b3          	or	a1,a1,a4
   17548:	0000d897          	auipc	a7,0xd
   1754c:	5d08b883          	ld	a7,1488(a7) # 24b18 <__SDATA_BEGIN__>
   17550:	0000d817          	auipc	a6,0xd
   17554:	5d083803          	ld	a6,1488(a6) # 24b20 <__SDATA_BEGIN__+0x8>
   17558:	00700313          	li	t1,7
   1755c:	00053703          	ld	a4,0(a0)
   17560:	00e5c733          	xor	a4,a1,a4
   17564:	01170633          	add	a2,a4,a7
   17568:	fff74713          	not	a4,a4
   1756c:	00e67733          	and	a4,a2,a4
   17570:	01077733          	and	a4,a4,a6
   17574:	f8071ee3          	bnez	a4,17510 <memchr+0x54>
   17578:	ff878793          	addi	a5,a5,-8
   1757c:	00850513          	addi	a0,a0,8
   17580:	fcf36ee3          	bltu	t1,a5,1755c <memchr+0xa0>
   17584:	f80796e3          	bnez	a5,17510 <memchr+0x54>
   17588:	f81ff06f          	j	17508 <memchr+0x4c>

000000000001758c <__malloc_lock>:
   1758c:	00008067          	ret

0000000000017590 <__malloc_unlock>:
   17590:	00008067          	ret

0000000000017594 <_Balloc>:
   17594:	07853783          	ld	a5,120(a0)
   17598:	fe010113          	addi	sp,sp,-32
   1759c:	00813823          	sd	s0,16(sp)
   175a0:	00913423          	sd	s1,8(sp)
   175a4:	00113c23          	sd	ra,24(sp)
   175a8:	01213023          	sd	s2,0(sp)
   175ac:	00050413          	mv	s0,a0
   175b0:	00058493          	mv	s1,a1
   175b4:	02078c63          	beqz	a5,175ec <_Balloc+0x58>
   175b8:	00349513          	slli	a0,s1,0x3
   175bc:	00a787b3          	add	a5,a5,a0
   175c0:	0007b503          	ld	a0,0(a5)
   175c4:	04050463          	beqz	a0,1760c <_Balloc+0x78>
   175c8:	00053703          	ld	a4,0(a0)
   175cc:	00e7b023          	sd	a4,0(a5)
   175d0:	00053823          	sd	zero,16(a0)
   175d4:	01813083          	ld	ra,24(sp)
   175d8:	01013403          	ld	s0,16(sp)
   175dc:	00813483          	ld	s1,8(sp)
   175e0:	00013903          	ld	s2,0(sp)
   175e4:	02010113          	addi	sp,sp,32
   175e8:	00008067          	ret
   175ec:	04100613          	li	a2,65
   175f0:	00800593          	li	a1,8
   175f4:	550050ef          	jal	ra,1cb44 <_calloc_r>
   175f8:	06a43c23          	sd	a0,120(s0)
   175fc:	00050793          	mv	a5,a0
   17600:	fa051ce3          	bnez	a0,175b8 <_Balloc+0x24>
   17604:	00000513          	li	a0,0
   17608:	fcdff06f          	j	175d4 <_Balloc+0x40>
   1760c:	00100913          	li	s2,1
   17610:	0099163b          	sllw	a2,s2,s1
   17614:	00060913          	mv	s2,a2
   17618:	00760613          	addi	a2,a2,7
   1761c:	00261613          	slli	a2,a2,0x2
   17620:	00100593          	li	a1,1
   17624:	00040513          	mv	a0,s0
   17628:	51c050ef          	jal	ra,1cb44 <_calloc_r>
   1762c:	fc050ce3          	beqz	a0,17604 <_Balloc+0x70>
   17630:	00952423          	sw	s1,8(a0)
   17634:	01252623          	sw	s2,12(a0)
   17638:	f99ff06f          	j	175d0 <_Balloc+0x3c>

000000000001763c <_Bfree>:
   1763c:	02058063          	beqz	a1,1765c <_Bfree+0x20>
   17640:	0085a703          	lw	a4,8(a1)
   17644:	07853783          	ld	a5,120(a0)
   17648:	00371713          	slli	a4,a4,0x3
   1764c:	00e787b3          	add	a5,a5,a4
   17650:	0007b703          	ld	a4,0(a5)
   17654:	00e5b023          	sd	a4,0(a1)
   17658:	00b7b023          	sd	a1,0(a5)
   1765c:	00008067          	ret

0000000000017660 <__multadd>:
   17660:	fb010113          	addi	sp,sp,-80
   17664:	03213823          	sd	s2,48(sp)
   17668:	0145a903          	lw	s2,20(a1)
   1766c:	01813023          	sd	s8,0(sp)
   17670:	00010c37          	lui	s8,0x10
   17674:	04813023          	sd	s0,64(sp)
   17678:	02913c23          	sd	s1,56(sp)
   1767c:	03313423          	sd	s3,40(sp)
   17680:	03413023          	sd	s4,32(sp)
   17684:	01513c23          	sd	s5,24(sp)
   17688:	01613823          	sd	s6,16(sp)
   1768c:	04113423          	sd	ra,72(sp)
   17690:	01713423          	sd	s7,8(sp)
   17694:	00058993          	mv	s3,a1
   17698:	00050a13          	mv	s4,a0
   1769c:	00068413          	mv	s0,a3
   176a0:	01858493          	addi	s1,a1,24
   176a4:	00060a93          	mv	s5,a2
   176a8:	00000b13          	li	s6,0
   176ac:	fffc0c13          	addi	s8,s8,-1 # ffff <register_fini-0xb1>
   176b0:	0004ab83          	lw	s7,0(s1)
   176b4:	000a8593          	mv	a1,s5
   176b8:	00448493          	addi	s1,s1,4
   176bc:	018bf533          	and	a0,s7,s8
   176c0:	3a80a0ef          	jal	ra,21a68 <__muldi3>
   176c4:	0085043b          	addw	s0,a0,s0
   176c8:	000a8593          	mv	a1,s5
   176cc:	010bd51b          	srliw	a0,s7,0x10
   176d0:	3980a0ef          	jal	ra,21a68 <__muldi3>
   176d4:	0104569b          	srliw	a3,s0,0x10
   176d8:	00a6853b          	addw	a0,a3,a0
   176dc:	0105179b          	slliw	a5,a0,0x10
   176e0:	008c7433          	and	s0,s8,s0
   176e4:	0087843b          	addw	s0,a5,s0
   176e8:	fe84ae23          	sw	s0,-4(s1)
   176ec:	001b0b1b          	addiw	s6,s6,1
   176f0:	0105541b          	srliw	s0,a0,0x10
   176f4:	fb2b4ee3          	blt	s6,s2,176b0 <__multadd+0x50>
   176f8:	02040263          	beqz	s0,1771c <__multadd+0xbc>
   176fc:	00c9a783          	lw	a5,12(s3)
   17700:	04f95863          	bge	s2,a5,17750 <__multadd+0xf0>
   17704:	00490793          	addi	a5,s2,4
   17708:	00279793          	slli	a5,a5,0x2
   1770c:	00f987b3          	add	a5,s3,a5
   17710:	0087a423          	sw	s0,8(a5)
   17714:	0019091b          	addiw	s2,s2,1
   17718:	0129aa23          	sw	s2,20(s3)
   1771c:	04813083          	ld	ra,72(sp)
   17720:	04013403          	ld	s0,64(sp)
   17724:	03813483          	ld	s1,56(sp)
   17728:	03013903          	ld	s2,48(sp)
   1772c:	02013a03          	ld	s4,32(sp)
   17730:	01813a83          	ld	s5,24(sp)
   17734:	01013b03          	ld	s6,16(sp)
   17738:	00813b83          	ld	s7,8(sp)
   1773c:	00013c03          	ld	s8,0(sp)
   17740:	00098513          	mv	a0,s3
   17744:	02813983          	ld	s3,40(sp)
   17748:	05010113          	addi	sp,sp,80
   1774c:	00008067          	ret
   17750:	0089a583          	lw	a1,8(s3)
   17754:	000a0513          	mv	a0,s4
   17758:	0015859b          	addiw	a1,a1,1
   1775c:	e39ff0ef          	jal	ra,17594 <_Balloc>
   17760:	00050493          	mv	s1,a0
   17764:	04050c63          	beqz	a0,177bc <__multadd+0x15c>
   17768:	0149a603          	lw	a2,20(s3)
   1776c:	01098593          	addi	a1,s3,16
   17770:	01050513          	addi	a0,a0,16
   17774:	00260613          	addi	a2,a2,2
   17778:	00261613          	slli	a2,a2,0x2
   1777c:	699050ef          	jal	ra,1d614 <memcpy>
   17780:	0089a703          	lw	a4,8(s3)
   17784:	078a3783          	ld	a5,120(s4)
   17788:	00371713          	slli	a4,a4,0x3
   1778c:	00e787b3          	add	a5,a5,a4
   17790:	0007b703          	ld	a4,0(a5)
   17794:	00e9b023          	sd	a4,0(s3)
   17798:	0137b023          	sd	s3,0(a5)
   1779c:	00490793          	addi	a5,s2,4
   177a0:	00048993          	mv	s3,s1
   177a4:	00279793          	slli	a5,a5,0x2
   177a8:	00f987b3          	add	a5,s3,a5
   177ac:	0087a423          	sw	s0,8(a5)
   177b0:	0019091b          	addiw	s2,s2,1
   177b4:	0129aa23          	sw	s2,20(s3)
   177b8:	f65ff06f          	j	1771c <__multadd+0xbc>
   177bc:	0000b697          	auipc	a3,0xb
   177c0:	90c68693          	addi	a3,a3,-1780 # 220c8 <bmask+0x40>
   177c4:	00000613          	li	a2,0
   177c8:	0b500593          	li	a1,181
   177cc:	0000b517          	auipc	a0,0xb
   177d0:	91450513          	addi	a0,a0,-1772 # 220e0 <bmask+0x58>
   177d4:	2f4050ef          	jal	ra,1cac8 <__assert_func>

00000000000177d8 <__s2b>:
   177d8:	fc010113          	addi	sp,sp,-64
   177dc:	02813823          	sd	s0,48(sp)
   177e0:	03213023          	sd	s2,32(sp)
   177e4:	00058413          	mv	s0,a1
   177e8:	00050913          	mv	s2,a0
   177ec:	00900593          	li	a1,9
   177f0:	0086851b          	addiw	a0,a3,8
   177f4:	02913423          	sd	s1,40(sp)
   177f8:	01313c23          	sd	s3,24(sp)
   177fc:	01413823          	sd	s4,16(sp)
   17800:	02113c23          	sd	ra,56(sp)
   17804:	01513423          	sd	s5,8(sp)
   17808:	01613023          	sd	s6,0(sp)
   1780c:	00068493          	mv	s1,a3
   17810:	00060993          	mv	s3,a2
   17814:	00070a13          	mv	s4,a4
   17818:	2b40a0ef          	jal	ra,21acc <__divdi3>
   1781c:	00900793          	li	a5,9
   17820:	0e97de63          	bge	a5,s1,1791c <__s2b+0x144>
   17824:	0005051b          	sext.w	a0,a0
   17828:	00100793          	li	a5,1
   1782c:	00000593          	li	a1,0
   17830:	0017979b          	slliw	a5,a5,0x1
   17834:	0015859b          	addiw	a1,a1,1
   17838:	fea7cce3          	blt	a5,a0,17830 <__s2b+0x58>
   1783c:	00090513          	mv	a0,s2
   17840:	d55ff0ef          	jal	ra,17594 <_Balloc>
   17844:	00050593          	mv	a1,a0
   17848:	0c050e63          	beqz	a0,17924 <__s2b+0x14c>
   1784c:	00100793          	li	a5,1
   17850:	00f52a23          	sw	a5,20(a0)
   17854:	01452c23          	sw	s4,24(a0)
   17858:	00900793          	li	a5,9
   1785c:	0b37da63          	bge	a5,s3,17910 <__s2b+0x138>
   17860:	02099a13          	slli	s4,s3,0x20
   17864:	00940b13          	addi	s6,s0,9
   17868:	020a5a13          	srli	s4,s4,0x20
   1786c:	01440a33          	add	s4,s0,s4
   17870:	00098a9b          	sext.w	s5,s3
   17874:	000b0413          	mv	s0,s6
   17878:	00044683          	lbu	a3,0(s0)
   1787c:	00a00613          	li	a2,10
   17880:	00090513          	mv	a0,s2
   17884:	fd06869b          	addiw	a3,a3,-48
   17888:	dd9ff0ef          	jal	ra,17660 <__multadd>
   1788c:	00140413          	addi	s0,s0,1
   17890:	00050593          	mv	a1,a0
   17894:	ff4412e3          	bne	s0,s4,17878 <__s2b+0xa0>
   17898:	ff8a841b          	addiw	s0,s5,-8
   1789c:	02041413          	slli	s0,s0,0x20
   178a0:	02045413          	srli	s0,s0,0x20
   178a4:	008b0433          	add	s0,s6,s0
   178a8:	0299de63          	bge	s3,s1,178e4 <__s2b+0x10c>
   178ac:	fff4849b          	addiw	s1,s1,-1
   178b0:	413484bb          	subw	s1,s1,s3
   178b4:	02049493          	slli	s1,s1,0x20
   178b8:	0204d493          	srli	s1,s1,0x20
   178bc:	00148493          	addi	s1,s1,1
   178c0:	009404b3          	add	s1,s0,s1
   178c4:	00044683          	lbu	a3,0(s0)
   178c8:	00a00613          	li	a2,10
   178cc:	00090513          	mv	a0,s2
   178d0:	fd06869b          	addiw	a3,a3,-48
   178d4:	d8dff0ef          	jal	ra,17660 <__multadd>
   178d8:	00140413          	addi	s0,s0,1
   178dc:	00050593          	mv	a1,a0
   178e0:	fe9412e3          	bne	s0,s1,178c4 <__s2b+0xec>
   178e4:	03813083          	ld	ra,56(sp)
   178e8:	03013403          	ld	s0,48(sp)
   178ec:	02813483          	ld	s1,40(sp)
   178f0:	02013903          	ld	s2,32(sp)
   178f4:	01813983          	ld	s3,24(sp)
   178f8:	01013a03          	ld	s4,16(sp)
   178fc:	00813a83          	ld	s5,8(sp)
   17900:	00013b03          	ld	s6,0(sp)
   17904:	00058513          	mv	a0,a1
   17908:	04010113          	addi	sp,sp,64
   1790c:	00008067          	ret
   17910:	00a40413          	addi	s0,s0,10
   17914:	00900993          	li	s3,9
   17918:	f91ff06f          	j	178a8 <__s2b+0xd0>
   1791c:	00000593          	li	a1,0
   17920:	f1dff06f          	j	1783c <__s2b+0x64>
   17924:	0000a697          	auipc	a3,0xa
   17928:	7a468693          	addi	a3,a3,1956 # 220c8 <bmask+0x40>
   1792c:	00000613          	li	a2,0
   17930:	0ce00593          	li	a1,206
   17934:	0000a517          	auipc	a0,0xa
   17938:	7ac50513          	addi	a0,a0,1964 # 220e0 <bmask+0x58>
   1793c:	18c050ef          	jal	ra,1cac8 <__assert_func>

0000000000017940 <__hi0bits>:
   17940:	ffff0737          	lui	a4,0xffff0
   17944:	00e57733          	and	a4,a0,a4
   17948:	00050793          	mv	a5,a0
   1794c:	00000513          	li	a0,0
   17950:	00071663          	bnez	a4,1795c <__hi0bits+0x1c>
   17954:	0107979b          	slliw	a5,a5,0x10
   17958:	01000513          	li	a0,16
   1795c:	ff000737          	lui	a4,0xff000
   17960:	00e7f733          	and	a4,a5,a4
   17964:	00071663          	bnez	a4,17970 <__hi0bits+0x30>
   17968:	0087979b          	slliw	a5,a5,0x8
   1796c:	0085051b          	addiw	a0,a0,8
   17970:	f0000737          	lui	a4,0xf0000
   17974:	00e7f733          	and	a4,a5,a4
   17978:	00071663          	bnez	a4,17984 <__hi0bits+0x44>
   1797c:	0047979b          	slliw	a5,a5,0x4
   17980:	0045051b          	addiw	a0,a0,4
   17984:	c0000737          	lui	a4,0xc0000
   17988:	00e7f733          	and	a4,a5,a4
   1798c:	00071663          	bnez	a4,17998 <__hi0bits+0x58>
   17990:	0027979b          	slliw	a5,a5,0x2
   17994:	0025051b          	addiw	a0,a0,2
   17998:	0007ca63          	bltz	a5,179ac <__hi0bits+0x6c>
   1799c:	01e7d793          	srli	a5,a5,0x1e
   179a0:	0017f793          	andi	a5,a5,1
   179a4:	0015051b          	addiw	a0,a0,1
   179a8:	00078463          	beqz	a5,179b0 <__hi0bits+0x70>
   179ac:	00008067          	ret
   179b0:	02000513          	li	a0,32
   179b4:	00008067          	ret

00000000000179b8 <__lo0bits>:
   179b8:	00052783          	lw	a5,0(a0)
   179bc:	00050713          	mv	a4,a0
   179c0:	0077f693          	andi	a3,a5,7
   179c4:	00078613          	mv	a2,a5
   179c8:	02068463          	beqz	a3,179f0 <__lo0bits+0x38>
   179cc:	0017f693          	andi	a3,a5,1
   179d0:	00000513          	li	a0,0
   179d4:	04069e63          	bnez	a3,17a30 <__lo0bits+0x78>
   179d8:	00267613          	andi	a2,a2,2
   179dc:	0a060863          	beqz	a2,17a8c <__lo0bits+0xd4>
   179e0:	0017d79b          	srliw	a5,a5,0x1
   179e4:	00f72023          	sw	a5,0(a4) # ffffffffc0000000 <__BSS_END__+0xffffffffbffdb400>
   179e8:	00100513          	li	a0,1
   179ec:	00008067          	ret
   179f0:	03079693          	slli	a3,a5,0x30
   179f4:	0306d693          	srli	a3,a3,0x30
   179f8:	00000513          	li	a0,0
   179fc:	06068e63          	beqz	a3,17a78 <__lo0bits+0xc0>
   17a00:	0ff7f693          	andi	a3,a5,255
   17a04:	06068063          	beqz	a3,17a64 <__lo0bits+0xac>
   17a08:	00f7f693          	andi	a3,a5,15
   17a0c:	04068263          	beqz	a3,17a50 <__lo0bits+0x98>
   17a10:	0037f693          	andi	a3,a5,3
   17a14:	02068463          	beqz	a3,17a3c <__lo0bits+0x84>
   17a18:	0017f693          	andi	a3,a5,1
   17a1c:	00069c63          	bnez	a3,17a34 <__lo0bits+0x7c>
   17a20:	0017d79b          	srliw	a5,a5,0x1
   17a24:	0015051b          	addiw	a0,a0,1
   17a28:	00079663          	bnez	a5,17a34 <__lo0bits+0x7c>
   17a2c:	02000513          	li	a0,32
   17a30:	00008067          	ret
   17a34:	00f72023          	sw	a5,0(a4)
   17a38:	00008067          	ret
   17a3c:	0027d79b          	srliw	a5,a5,0x2
   17a40:	0017f693          	andi	a3,a5,1
   17a44:	0025051b          	addiw	a0,a0,2
   17a48:	fe0696e3          	bnez	a3,17a34 <__lo0bits+0x7c>
   17a4c:	fd5ff06f          	j	17a20 <__lo0bits+0x68>
   17a50:	0047d79b          	srliw	a5,a5,0x4
   17a54:	0037f693          	andi	a3,a5,3
   17a58:	0045051b          	addiw	a0,a0,4
   17a5c:	fa069ee3          	bnez	a3,17a18 <__lo0bits+0x60>
   17a60:	fddff06f          	j	17a3c <__lo0bits+0x84>
   17a64:	0087d79b          	srliw	a5,a5,0x8
   17a68:	00f7f693          	andi	a3,a5,15
   17a6c:	0085051b          	addiw	a0,a0,8
   17a70:	fa0690e3          	bnez	a3,17a10 <__lo0bits+0x58>
   17a74:	fddff06f          	j	17a50 <__lo0bits+0x98>
   17a78:	0107d79b          	srliw	a5,a5,0x10
   17a7c:	0ff7f693          	andi	a3,a5,255
   17a80:	01000513          	li	a0,16
   17a84:	f80692e3          	bnez	a3,17a08 <__lo0bits+0x50>
   17a88:	fddff06f          	j	17a64 <__lo0bits+0xac>
   17a8c:	0027d79b          	srliw	a5,a5,0x2
   17a90:	00f72023          	sw	a5,0(a4)
   17a94:	00200513          	li	a0,2
   17a98:	00008067          	ret

0000000000017a9c <__i2b>:
   17a9c:	07853783          	ld	a5,120(a0)
   17aa0:	fe010113          	addi	sp,sp,-32
   17aa4:	00813823          	sd	s0,16(sp)
   17aa8:	00913423          	sd	s1,8(sp)
   17aac:	00113c23          	sd	ra,24(sp)
   17ab0:	00050413          	mv	s0,a0
   17ab4:	00058493          	mv	s1,a1
   17ab8:	02078c63          	beqz	a5,17af0 <__i2b+0x54>
   17abc:	0087b503          	ld	a0,8(a5)
   17ac0:	06050263          	beqz	a0,17b24 <__i2b+0x88>
   17ac4:	00053703          	ld	a4,0(a0)
   17ac8:	00e7b423          	sd	a4,8(a5)
   17acc:	01813083          	ld	ra,24(sp)
   17ad0:	01013403          	ld	s0,16(sp)
   17ad4:	00100793          	li	a5,1
   17ad8:	02079793          	slli	a5,a5,0x20
   17adc:	00952c23          	sw	s1,24(a0)
   17ae0:	00f53823          	sd	a5,16(a0)
   17ae4:	00813483          	ld	s1,8(sp)
   17ae8:	02010113          	addi	sp,sp,32
   17aec:	00008067          	ret
   17af0:	04100613          	li	a2,65
   17af4:	00800593          	li	a1,8
   17af8:	04c050ef          	jal	ra,1cb44 <_calloc_r>
   17afc:	06a43c23          	sd	a0,120(s0)
   17b00:	00050793          	mv	a5,a0
   17b04:	fa051ce3          	bnez	a0,17abc <__i2b+0x20>
   17b08:	0000a697          	auipc	a3,0xa
   17b0c:	5c068693          	addi	a3,a3,1472 # 220c8 <bmask+0x40>
   17b10:	00000613          	li	a2,0
   17b14:	14000593          	li	a1,320
   17b18:	0000a517          	auipc	a0,0xa
   17b1c:	5c850513          	addi	a0,a0,1480 # 220e0 <bmask+0x58>
   17b20:	7a9040ef          	jal	ra,1cac8 <__assert_func>
   17b24:	02400613          	li	a2,36
   17b28:	00100593          	li	a1,1
   17b2c:	00040513          	mv	a0,s0
   17b30:	014050ef          	jal	ra,1cb44 <_calloc_r>
   17b34:	fc050ae3          	beqz	a0,17b08 <__i2b+0x6c>
   17b38:	00100793          	li	a5,1
   17b3c:	02179793          	slli	a5,a5,0x21
   17b40:	00178793          	addi	a5,a5,1
   17b44:	00f53423          	sd	a5,8(a0)
   17b48:	f85ff06f          	j	17acc <__i2b+0x30>

0000000000017b4c <__multiply>:
   17b4c:	f6010113          	addi	sp,sp,-160
   17b50:	07313c23          	sd	s3,120(sp)
   17b54:	05813823          	sd	s8,80(sp)
   17b58:	01462983          	lw	s3,20(a2)
   17b5c:	0145ac03          	lw	s8,20(a1)
   17b60:	08813823          	sd	s0,144(sp)
   17b64:	07413823          	sd	s4,112(sp)
   17b68:	08113c23          	sd	ra,152(sp)
   17b6c:	08913423          	sd	s1,136(sp)
   17b70:	09213023          	sd	s2,128(sp)
   17b74:	07513423          	sd	s5,104(sp)
   17b78:	07613023          	sd	s6,96(sp)
   17b7c:	05713c23          	sd	s7,88(sp)
   17b80:	05913423          	sd	s9,72(sp)
   17b84:	05a13023          	sd	s10,64(sp)
   17b88:	03b13c23          	sd	s11,56(sp)
   17b8c:	00058a13          	mv	s4,a1
   17b90:	00060413          	mv	s0,a2
   17b94:	013c4c63          	blt	s8,s3,17bac <__multiply+0x60>
   17b98:	00098793          	mv	a5,s3
   17b9c:	00058413          	mv	s0,a1
   17ba0:	000c0993          	mv	s3,s8
   17ba4:	00060a13          	mv	s4,a2
   17ba8:	00078c13          	mv	s8,a5
   17bac:	00c42783          	lw	a5,12(s0)
   17bb0:	0189873b          	addw	a4,s3,s8
   17bb4:	00e13423          	sd	a4,8(sp)
   17bb8:	00842583          	lw	a1,8(s0)
   17bbc:	00e7d463          	bge	a5,a4,17bc4 <__multiply+0x78>
   17bc0:	0015859b          	addiw	a1,a1,1
   17bc4:	9d1ff0ef          	jal	ra,17594 <_Balloc>
   17bc8:	02a13423          	sd	a0,40(sp)
   17bcc:	22050663          	beqz	a0,17df8 <__multiply+0x2ac>
   17bd0:	02813783          	ld	a5,40(sp)
   17bd4:	01878b13          	addi	s6,a5,24
   17bd8:	00813783          	ld	a5,8(sp)
   17bdc:	00279a93          	slli	s5,a5,0x2
   17be0:	015b0ab3          	add	s5,s6,s5
   17be4:	000b0793          	mv	a5,s6
   17be8:	015b7863          	bgeu	s6,s5,17bf8 <__multiply+0xac>
   17bec:	0007a023          	sw	zero,0(a5)
   17bf0:	00478793          	addi	a5,a5,4
   17bf4:	ff57ece3          	bltu	a5,s5,17bec <__multiply+0xa0>
   17bf8:	018a0a13          	addi	s4,s4,24
   17bfc:	002c1c13          	slli	s8,s8,0x2
   17c00:	01840793          	addi	a5,s0,24
   17c04:	018a0733          	add	a4,s4,s8
   17c08:	00299993          	slli	s3,s3,0x2
   17c0c:	02f13023          	sd	a5,32(sp)
   17c10:	00e13823          	sd	a4,16(sp)
   17c14:	013789b3          	add	s3,a5,s3
   17c18:	14ea7a63          	bgeu	s4,a4,17d6c <__multiply+0x220>
   17c1c:	00400713          	li	a4,4
   17c20:	01940793          	addi	a5,s0,25
   17c24:	00e13c23          	sd	a4,24(sp)
   17c28:	1af9fc63          	bgeu	s3,a5,17de0 <__multiply+0x294>
   17c2c:	00010937          	lui	s2,0x10
   17c30:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   17c34:	01c0006f          	j	17c50 <__multiply+0x104>
   17c38:	0107dc1b          	srliw	s8,a5,0x10
   17c3c:	0a0c1063          	bnez	s8,17cdc <__multiply+0x190>
   17c40:	01013783          	ld	a5,16(sp)
   17c44:	004a0a13          	addi	s4,s4,4
   17c48:	004b0b13          	addi	s6,s6,4
   17c4c:	12fa7063          	bgeu	s4,a5,17d6c <__multiply+0x220>
   17c50:	000a2783          	lw	a5,0(s4)
   17c54:	0127fdb3          	and	s11,a5,s2
   17c58:	fe0d80e3          	beqz	s11,17c38 <__multiply+0xec>
   17c5c:	02013c83          	ld	s9,32(sp)
   17c60:	000b0d13          	mv	s10,s6
   17c64:	00000c13          	li	s8,0
   17c68:	000cab83          	lw	s7,0(s9)
   17c6c:	000d2483          	lw	s1,0(s10)
   17c70:	000d8593          	mv	a1,s11
   17c74:	012bf533          	and	a0,s7,s2
   17c78:	5f1090ef          	jal	ra,21a68 <__muldi3>
   17c7c:	0124f433          	and	s0,s1,s2
   17c80:	0085043b          	addw	s0,a0,s0
   17c84:	000d8593          	mv	a1,s11
   17c88:	010bd51b          	srliw	a0,s7,0x10
   17c8c:	5dd090ef          	jal	ra,21a68 <__muldi3>
   17c90:	0184043b          	addw	s0,s0,s8
   17c94:	0104d49b          	srliw	s1,s1,0x10
   17c98:	00a484bb          	addw	s1,s1,a0
   17c9c:	0104551b          	srliw	a0,s0,0x10
   17ca0:	00a4853b          	addw	a0,s1,a0
   17ca4:	0105169b          	slliw	a3,a0,0x10
   17ca8:	00897433          	and	s0,s2,s0
   17cac:	004d0d13          	addi	s10,s10,4
   17cb0:	00d46433          	or	s0,s0,a3
   17cb4:	004c8c93          	addi	s9,s9,4
   17cb8:	fe8d2e23          	sw	s0,-4(s10)
   17cbc:	01055c1b          	srliw	s8,a0,0x10
   17cc0:	fb3ce4e3          	bltu	s9,s3,17c68 <__multiply+0x11c>
   17cc4:	01813783          	ld	a5,24(sp)
   17cc8:	00fb07b3          	add	a5,s6,a5
   17ccc:	0187a023          	sw	s8,0(a5)
   17cd0:	000a2783          	lw	a5,0(s4)
   17cd4:	0107dc1b          	srliw	s8,a5,0x10
   17cd8:	f60c04e3          	beqz	s8,17c40 <__multiply+0xf4>
   17cdc:	000b2c83          	lw	s9,0(s6)
   17ce0:	02013d83          	ld	s11,32(sp)
   17ce4:	000b0d13          	mv	s10,s6
   17ce8:	000c8413          	mv	s0,s9
   17cec:	00000493          	li	s1,0
   17cf0:	000da503          	lw	a0,0(s11)
   17cf4:	000c0593          	mv	a1,s8
   17cf8:	0104541b          	srliw	s0,s0,0x10
   17cfc:	00a97533          	and	a0,s2,a0
   17d00:	569090ef          	jal	ra,21a68 <__muldi3>
   17d04:	00a4043b          	addw	s0,s0,a0
   17d08:	009404bb          	addw	s1,s0,s1
   17d0c:	0104961b          	slliw	a2,s1,0x10
   17d10:	012cf7b3          	and	a5,s9,s2
   17d14:	00c7e7b3          	or	a5,a5,a2
   17d18:	00fd2023          	sw	a5,0(s10)
   17d1c:	002dd503          	lhu	a0,2(s11)
   17d20:	004d2403          	lw	s0,4(s10)
   17d24:	000c0593          	mv	a1,s8
   17d28:	541090ef          	jal	ra,21a68 <__muldi3>
   17d2c:	012477b3          	and	a5,s0,s2
   17d30:	0104d49b          	srliw	s1,s1,0x10
   17d34:	00f5053b          	addw	a0,a0,a5
   17d38:	0095053b          	addw	a0,a0,s1
   17d3c:	004d8d93          	addi	s11,s11,4
   17d40:	004d0d13          	addi	s10,s10,4
   17d44:	00050c9b          	sext.w	s9,a0
   17d48:	0105549b          	srliw	s1,a0,0x10
   17d4c:	fb3de2e3          	bltu	s11,s3,17cf0 <__multiply+0x1a4>
   17d50:	01813783          	ld	a5,24(sp)
   17d54:	004a0a13          	addi	s4,s4,4
   17d58:	00fb0733          	add	a4,s6,a5
   17d5c:	01013783          	ld	a5,16(sp)
   17d60:	01972023          	sw	s9,0(a4)
   17d64:	004b0b13          	addi	s6,s6,4
   17d68:	eefa64e3          	bltu	s4,a5,17c50 <__multiply+0x104>
   17d6c:	00813783          	ld	a5,8(sp)
   17d70:	00f04c63          	bgtz	a5,17d88 <__multiply+0x23c>
   17d74:	0200006f          	j	17d94 <__multiply+0x248>
   17d78:	00813783          	ld	a5,8(sp)
   17d7c:	fff7879b          	addiw	a5,a5,-1
   17d80:	00f13423          	sd	a5,8(sp)
   17d84:	00078863          	beqz	a5,17d94 <__multiply+0x248>
   17d88:	ffcaa783          	lw	a5,-4(s5)
   17d8c:	ffca8a93          	addi	s5,s5,-4
   17d90:	fe0784e3          	beqz	a5,17d78 <__multiply+0x22c>
   17d94:	02813783          	ld	a5,40(sp)
   17d98:	00813703          	ld	a4,8(sp)
   17d9c:	09813083          	ld	ra,152(sp)
   17da0:	09013403          	ld	s0,144(sp)
   17da4:	00e7aa23          	sw	a4,20(a5)
   17da8:	08813483          	ld	s1,136(sp)
   17dac:	08013903          	ld	s2,128(sp)
   17db0:	07813983          	ld	s3,120(sp)
   17db4:	07013a03          	ld	s4,112(sp)
   17db8:	06813a83          	ld	s5,104(sp)
   17dbc:	06013b03          	ld	s6,96(sp)
   17dc0:	05813b83          	ld	s7,88(sp)
   17dc4:	05013c03          	ld	s8,80(sp)
   17dc8:	04813c83          	ld	s9,72(sp)
   17dcc:	04013d03          	ld	s10,64(sp)
   17dd0:	03813d83          	ld	s11,56(sp)
   17dd4:	00078513          	mv	a0,a5
   17dd8:	0a010113          	addi	sp,sp,160
   17ddc:	00008067          	ret
   17de0:	40898db3          	sub	s11,s3,s0
   17de4:	fe7d8d93          	addi	s11,s11,-25
   17de8:	ffcdfd93          	andi	s11,s11,-4
   17dec:	004d8793          	addi	a5,s11,4
   17df0:	00f13c23          	sd	a5,24(sp)
   17df4:	e39ff06f          	j	17c2c <__multiply+0xe0>
   17df8:	0000a697          	auipc	a3,0xa
   17dfc:	2d068693          	addi	a3,a3,720 # 220c8 <bmask+0x40>
   17e00:	00000613          	li	a2,0
   17e04:	15d00593          	li	a1,349
   17e08:	0000a517          	auipc	a0,0xa
   17e0c:	2d850513          	addi	a0,a0,728 # 220e0 <bmask+0x58>
   17e10:	4b9040ef          	jal	ra,1cac8 <__assert_func>

0000000000017e14 <__pow5mult>:
   17e14:	fd010113          	addi	sp,sp,-48
   17e18:	02813023          	sd	s0,32(sp)
   17e1c:	01213823          	sd	s2,16(sp)
   17e20:	01313423          	sd	s3,8(sp)
   17e24:	02113423          	sd	ra,40(sp)
   17e28:	00913c23          	sd	s1,24(sp)
   17e2c:	00367793          	andi	a5,a2,3
   17e30:	00060413          	mv	s0,a2
   17e34:	00050993          	mv	s3,a0
   17e38:	00058913          	mv	s2,a1
   17e3c:	0a079e63          	bnez	a5,17ef8 <__pow5mult+0xe4>
   17e40:	40245413          	srai	s0,s0,0x2
   17e44:	06040663          	beqz	s0,17eb0 <__pow5mult+0x9c>
   17e48:	0709b483          	ld	s1,112(s3)
   17e4c:	0c048a63          	beqz	s1,17f20 <__pow5mult+0x10c>
   17e50:	00147793          	andi	a5,s0,1
   17e54:	02079063          	bnez	a5,17e74 <__pow5mult+0x60>
   17e58:	40145413          	srai	s0,s0,0x1
   17e5c:	04040a63          	beqz	s0,17eb0 <__pow5mult+0x9c>
   17e60:	0004b503          	ld	a0,0(s1)
   17e64:	06050663          	beqz	a0,17ed0 <__pow5mult+0xbc>
   17e68:	00050493          	mv	s1,a0
   17e6c:	00147793          	andi	a5,s0,1
   17e70:	fe0784e3          	beqz	a5,17e58 <__pow5mult+0x44>
   17e74:	00048613          	mv	a2,s1
   17e78:	00090593          	mv	a1,s2
   17e7c:	00098513          	mv	a0,s3
   17e80:	ccdff0ef          	jal	ra,17b4c <__multiply>
   17e84:	06090663          	beqz	s2,17ef0 <__pow5mult+0xdc>
   17e88:	00892703          	lw	a4,8(s2)
   17e8c:	0789b783          	ld	a5,120(s3)
   17e90:	40145413          	srai	s0,s0,0x1
   17e94:	00371713          	slli	a4,a4,0x3
   17e98:	00e787b3          	add	a5,a5,a4
   17e9c:	0007b703          	ld	a4,0(a5)
   17ea0:	00e93023          	sd	a4,0(s2)
   17ea4:	0127b023          	sd	s2,0(a5)
   17ea8:	00050913          	mv	s2,a0
   17eac:	fa041ae3          	bnez	s0,17e60 <__pow5mult+0x4c>
   17eb0:	02813083          	ld	ra,40(sp)
   17eb4:	02013403          	ld	s0,32(sp)
   17eb8:	01813483          	ld	s1,24(sp)
   17ebc:	00813983          	ld	s3,8(sp)
   17ec0:	00090513          	mv	a0,s2
   17ec4:	01013903          	ld	s2,16(sp)
   17ec8:	03010113          	addi	sp,sp,48
   17ecc:	00008067          	ret
   17ed0:	00048613          	mv	a2,s1
   17ed4:	00048593          	mv	a1,s1
   17ed8:	00098513          	mv	a0,s3
   17edc:	c71ff0ef          	jal	ra,17b4c <__multiply>
   17ee0:	00a4b023          	sd	a0,0(s1)
   17ee4:	00053023          	sd	zero,0(a0)
   17ee8:	00050493          	mv	s1,a0
   17eec:	f81ff06f          	j	17e6c <__pow5mult+0x58>
   17ef0:	00050913          	mv	s2,a0
   17ef4:	f65ff06f          	j	17e58 <__pow5mult+0x44>
   17ef8:	fff7879b          	addiw	a5,a5,-1
   17efc:	0000a717          	auipc	a4,0xa
   17f00:	29c70713          	addi	a4,a4,668 # 22198 <p05.0>
   17f04:	00279793          	slli	a5,a5,0x2
   17f08:	00f707b3          	add	a5,a4,a5
   17f0c:	0007a603          	lw	a2,0(a5)
   17f10:	00000693          	li	a3,0
   17f14:	f4cff0ef          	jal	ra,17660 <__multadd>
   17f18:	00050913          	mv	s2,a0
   17f1c:	f25ff06f          	j	17e40 <__pow5mult+0x2c>
   17f20:	00100593          	li	a1,1
   17f24:	00098513          	mv	a0,s3
   17f28:	e6cff0ef          	jal	ra,17594 <_Balloc>
   17f2c:	00050493          	mv	s1,a0
   17f30:	02050063          	beqz	a0,17f50 <__pow5mult+0x13c>
   17f34:	27100793          	li	a5,625
   17f38:	00f52c23          	sw	a5,24(a0)
   17f3c:	00100793          	li	a5,1
   17f40:	00f52a23          	sw	a5,20(a0)
   17f44:	06a9b823          	sd	a0,112(s3)
   17f48:	00053023          	sd	zero,0(a0)
   17f4c:	f05ff06f          	j	17e50 <__pow5mult+0x3c>
   17f50:	0000a697          	auipc	a3,0xa
   17f54:	17868693          	addi	a3,a3,376 # 220c8 <bmask+0x40>
   17f58:	00000613          	li	a2,0
   17f5c:	14000593          	li	a1,320
   17f60:	0000a517          	auipc	a0,0xa
   17f64:	18050513          	addi	a0,a0,384 # 220e0 <bmask+0x58>
   17f68:	361040ef          	jal	ra,1cac8 <__assert_func>

0000000000017f6c <__lshift>:
   17f6c:	fc010113          	addi	sp,sp,-64
   17f70:	01313c23          	sd	s3,24(sp)
   17f74:	0145a983          	lw	s3,20(a1)
   17f78:	00c5a783          	lw	a5,12(a1)
   17f7c:	01513423          	sd	s5,8(sp)
   17f80:	40565a9b          	sraiw	s5,a2,0x5
   17f84:	015989bb          	addw	s3,s3,s5
   17f88:	02813823          	sd	s0,48(sp)
   17f8c:	02913423          	sd	s1,40(sp)
   17f90:	03213023          	sd	s2,32(sp)
   17f94:	01413823          	sd	s4,16(sp)
   17f98:	01613023          	sd	s6,0(sp)
   17f9c:	02113c23          	sd	ra,56(sp)
   17fa0:	0019891b          	addiw	s2,s3,1
   17fa4:	00058493          	mv	s1,a1
   17fa8:	00060413          	mv	s0,a2
   17fac:	0085a583          	lw	a1,8(a1)
   17fb0:	00050a13          	mv	s4,a0
   17fb4:	40565b13          	srai	s6,a2,0x5
   17fb8:	0127d863          	bge	a5,s2,17fc8 <__lshift+0x5c>
   17fbc:	0017979b          	slliw	a5,a5,0x1
   17fc0:	0015859b          	addiw	a1,a1,1
   17fc4:	ff27cce3          	blt	a5,s2,17fbc <__lshift+0x50>
   17fc8:	000a0513          	mv	a0,s4
   17fcc:	dc8ff0ef          	jal	ra,17594 <_Balloc>
   17fd0:	12050263          	beqz	a0,180f4 <__lshift+0x188>
   17fd4:	01850693          	addi	a3,a0,24
   17fd8:	03605863          	blez	s6,18008 <__lshift+0x9c>
   17fdc:	006a871b          	addiw	a4,s5,6
   17fe0:	02071793          	slli	a5,a4,0x20
   17fe4:	01e7d713          	srli	a4,a5,0x1e
   17fe8:	00e50733          	add	a4,a0,a4
   17fec:	00068793          	mv	a5,a3
   17ff0:	00478793          	addi	a5,a5,4
   17ff4:	fe07ae23          	sw	zero,-4(a5)
   17ff8:	fee79ce3          	bne	a5,a4,17ff0 <__lshift+0x84>
   17ffc:	020a9793          	slli	a5,s5,0x20
   18000:	01e7da93          	srli	s5,a5,0x1e
   18004:	015686b3          	add	a3,a3,s5
   18008:	0144a803          	lw	a6,20(s1)
   1800c:	01848793          	addi	a5,s1,24
   18010:	01f47313          	andi	t1,s0,31
   18014:	00281813          	slli	a6,a6,0x2
   18018:	01078833          	add	a6,a5,a6
   1801c:	0a030663          	beqz	t1,180c8 <__lshift+0x15c>
   18020:	02000593          	li	a1,32
   18024:	406585bb          	subw	a1,a1,t1
   18028:	00068893          	mv	a7,a3
   1802c:	00000713          	li	a4,0
   18030:	0007a603          	lw	a2,0(a5)
   18034:	00488893          	addi	a7,a7,4
   18038:	00478793          	addi	a5,a5,4
   1803c:	0066163b          	sllw	a2,a2,t1
   18040:	00c76733          	or	a4,a4,a2
   18044:	fee8ae23          	sw	a4,-4(a7)
   18048:	ffc7a703          	lw	a4,-4(a5)
   1804c:	00b7573b          	srlw	a4,a4,a1
   18050:	ff07e0e3          	bltu	a5,a6,18030 <__lshift+0xc4>
   18054:	01948613          	addi	a2,s1,25
   18058:	00400793          	li	a5,4
   1805c:	00c86a63          	bltu	a6,a2,18070 <__lshift+0x104>
   18060:	409807b3          	sub	a5,a6,s1
   18064:	fe778793          	addi	a5,a5,-25
   18068:	ffc7f793          	andi	a5,a5,-4
   1806c:	00478793          	addi	a5,a5,4
   18070:	00f686b3          	add	a3,a3,a5
   18074:	00e6a023          	sw	a4,0(a3)
   18078:	00070463          	beqz	a4,18080 <__lshift+0x114>
   1807c:	00090993          	mv	s3,s2
   18080:	0084a703          	lw	a4,8(s1)
   18084:	078a3783          	ld	a5,120(s4)
   18088:	03813083          	ld	ra,56(sp)
   1808c:	00371713          	slli	a4,a4,0x3
   18090:	00e787b3          	add	a5,a5,a4
   18094:	0007b703          	ld	a4,0(a5)
   18098:	01352a23          	sw	s3,20(a0)
   1809c:	03013403          	ld	s0,48(sp)
   180a0:	00e4b023          	sd	a4,0(s1)
   180a4:	0097b023          	sd	s1,0(a5)
   180a8:	02013903          	ld	s2,32(sp)
   180ac:	02813483          	ld	s1,40(sp)
   180b0:	01813983          	ld	s3,24(sp)
   180b4:	01013a03          	ld	s4,16(sp)
   180b8:	00813a83          	ld	s5,8(sp)
   180bc:	00013b03          	ld	s6,0(sp)
   180c0:	04010113          	addi	sp,sp,64
   180c4:	00008067          	ret
   180c8:	0007a703          	lw	a4,0(a5)
   180cc:	00478793          	addi	a5,a5,4
   180d0:	00468693          	addi	a3,a3,4
   180d4:	fee6ae23          	sw	a4,-4(a3)
   180d8:	fb07f4e3          	bgeu	a5,a6,18080 <__lshift+0x114>
   180dc:	0007a703          	lw	a4,0(a5)
   180e0:	00478793          	addi	a5,a5,4
   180e4:	00468693          	addi	a3,a3,4
   180e8:	fee6ae23          	sw	a4,-4(a3)
   180ec:	fd07eee3          	bltu	a5,a6,180c8 <__lshift+0x15c>
   180f0:	f91ff06f          	j	18080 <__lshift+0x114>
   180f4:	0000a697          	auipc	a3,0xa
   180f8:	fd468693          	addi	a3,a3,-44 # 220c8 <bmask+0x40>
   180fc:	00000613          	li	a2,0
   18100:	1d900593          	li	a1,473
   18104:	0000a517          	auipc	a0,0xa
   18108:	fdc50513          	addi	a0,a0,-36 # 220e0 <bmask+0x58>
   1810c:	1bd040ef          	jal	ra,1cac8 <__assert_func>

0000000000018110 <__mcmp>:
   18110:	0145a783          	lw	a5,20(a1)
   18114:	00050813          	mv	a6,a0
   18118:	01452503          	lw	a0,20(a0)
   1811c:	40f5053b          	subw	a0,a0,a5
   18120:	02051e63          	bnez	a0,1815c <__mcmp+0x4c>
   18124:	00279793          	slli	a5,a5,0x2
   18128:	01880813          	addi	a6,a6,24
   1812c:	01858593          	addi	a1,a1,24
   18130:	00f80733          	add	a4,a6,a5
   18134:	00f587b3          	add	a5,a1,a5
   18138:	0080006f          	j	18140 <__mcmp+0x30>
   1813c:	02e87063          	bgeu	a6,a4,1815c <__mcmp+0x4c>
   18140:	ffc72603          	lw	a2,-4(a4)
   18144:	ffc7a683          	lw	a3,-4(a5)
   18148:	ffc70713          	addi	a4,a4,-4
   1814c:	ffc78793          	addi	a5,a5,-4
   18150:	fed606e3          	beq	a2,a3,1813c <__mcmp+0x2c>
   18154:	fff00513          	li	a0,-1
   18158:	00d67463          	bgeu	a2,a3,18160 <__mcmp+0x50>
   1815c:	00008067          	ret
   18160:	00100513          	li	a0,1
   18164:	00008067          	ret

0000000000018168 <__mdiff>:
   18168:	fe010113          	addi	sp,sp,-32
   1816c:	01462703          	lw	a4,20(a2)
   18170:	01213023          	sd	s2,0(sp)
   18174:	0145a903          	lw	s2,20(a1)
   18178:	00813823          	sd	s0,16(sp)
   1817c:	00913423          	sd	s1,8(sp)
   18180:	00113c23          	sd	ra,24(sp)
   18184:	40e9093b          	subw	s2,s2,a4
   18188:	00058493          	mv	s1,a1
   1818c:	00060413          	mv	s0,a2
   18190:	1a091863          	bnez	s2,18340 <__mdiff+0x1d8>
   18194:	00271693          	slli	a3,a4,0x2
   18198:	01858593          	addi	a1,a1,24
   1819c:	01860713          	addi	a4,a2,24
   181a0:	00d587b3          	add	a5,a1,a3
   181a4:	00d70733          	add	a4,a4,a3
   181a8:	0080006f          	j	181b0 <__mdiff+0x48>
   181ac:	1af5f063          	bgeu	a1,a5,1834c <__mdiff+0x1e4>
   181b0:	ffc7a603          	lw	a2,-4(a5)
   181b4:	ffc72683          	lw	a3,-4(a4)
   181b8:	ffc78793          	addi	a5,a5,-4
   181bc:	ffc70713          	addi	a4,a4,-4
   181c0:	fed606e3          	beq	a2,a3,181ac <__mdiff+0x44>
   181c4:	16d66463          	bltu	a2,a3,1832c <__mdiff+0x1c4>
   181c8:	0084a583          	lw	a1,8(s1)
   181cc:	bc8ff0ef          	jal	ra,17594 <_Balloc>
   181d0:	1a050663          	beqz	a0,1837c <__mdiff+0x214>
   181d4:	0144a883          	lw	a7,20(s1)
   181d8:	01442f83          	lw	t6,20(s0)
   181dc:	01848493          	addi	s1,s1,24
   181e0:	00289313          	slli	t1,a7,0x2
   181e4:	01840813          	addi	a6,s0,24
   181e8:	002f9f93          	slli	t6,t6,0x2
   181ec:	01850f13          	addi	t5,a0,24
   181f0:	00010e37          	lui	t3,0x10
   181f4:	01252823          	sw	s2,16(a0)
   181f8:	00648333          	add	t1,s1,t1
   181fc:	01f80fb3          	add	t6,a6,t6
   18200:	000f0613          	mv	a2,t5
   18204:	00048e93          	mv	t4,s1
   18208:	00000713          	li	a4,0
   1820c:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   18210:	000ea683          	lw	a3,0(t4)
   18214:	00082583          	lw	a1,0(a6)
   18218:	00460613          	addi	a2,a2,4
   1821c:	01c6f7b3          	and	a5,a3,t3
   18220:	00e787bb          	addw	a5,a5,a4
   18224:	01c5f733          	and	a4,a1,t3
   18228:	40e787bb          	subw	a5,a5,a4
   1822c:	0105d59b          	srliw	a1,a1,0x10
   18230:	0106d71b          	srliw	a4,a3,0x10
   18234:	40b7073b          	subw	a4,a4,a1
   18238:	4107d69b          	sraiw	a3,a5,0x10
   1823c:	00d7073b          	addw	a4,a4,a3
   18240:	0107169b          	slliw	a3,a4,0x10
   18244:	01c7f7b3          	and	a5,a5,t3
   18248:	00d7e7b3          	or	a5,a5,a3
   1824c:	0007879b          	sext.w	a5,a5
   18250:	00480813          	addi	a6,a6,4
   18254:	fef62e23          	sw	a5,-4(a2)
   18258:	004e8e93          	addi	t4,t4,4
   1825c:	4107571b          	sraiw	a4,a4,0x10
   18260:	fbf868e3          	bltu	a6,t6,18210 <__mdiff+0xa8>
   18264:	408f85b3          	sub	a1,t6,s0
   18268:	fe758593          	addi	a1,a1,-25
   1826c:	01940413          	addi	s0,s0,25
   18270:	0025d593          	srli	a1,a1,0x2
   18274:	00000693          	li	a3,0
   18278:	008fe463          	bltu	t6,s0,18280 <__mdiff+0x118>
   1827c:	00259693          	slli	a3,a1,0x2
   18280:	00df06b3          	add	a3,t5,a3
   18284:	00400813          	li	a6,4
   18288:	008fe663          	bltu	t6,s0,18294 <__mdiff+0x12c>
   1828c:	00158593          	addi	a1,a1,1
   18290:	00259813          	slli	a6,a1,0x2
   18294:	010484b3          	add	s1,s1,a6
   18298:	010f0f33          	add	t5,t5,a6
   1829c:	0664f063          	bgeu	s1,t1,182fc <__mdiff+0x194>
   182a0:	00010837          	lui	a6,0x10
   182a4:	000f0593          	mv	a1,t5
   182a8:	00048613          	mv	a2,s1
   182ac:	fff80813          	addi	a6,a6,-1 # ffff <register_fini-0xb1>
   182b0:	00062683          	lw	a3,0(a2)
   182b4:	00458593          	addi	a1,a1,4
   182b8:	00460613          	addi	a2,a2,4
   182bc:	0106f7b3          	and	a5,a3,a6
   182c0:	00e787bb          	addw	a5,a5,a4
   182c4:	0106d71b          	srliw	a4,a3,0x10
   182c8:	4107d69b          	sraiw	a3,a5,0x10
   182cc:	00d7073b          	addw	a4,a4,a3
   182d0:	0107169b          	slliw	a3,a4,0x10
   182d4:	0107f7b3          	and	a5,a5,a6
   182d8:	00d7e7b3          	or	a5,a5,a3
   182dc:	0007879b          	sext.w	a5,a5
   182e0:	fef5ae23          	sw	a5,-4(a1)
   182e4:	4107571b          	sraiw	a4,a4,0x10
   182e8:	fc6664e3          	bltu	a2,t1,182b0 <__mdiff+0x148>
   182ec:	fff30693          	addi	a3,t1,-1
   182f0:	409684b3          	sub	s1,a3,s1
   182f4:	ffc4f693          	andi	a3,s1,-4
   182f8:	00df06b3          	add	a3,t5,a3
   182fc:	00079a63          	bnez	a5,18310 <__mdiff+0x1a8>
   18300:	ffc6a783          	lw	a5,-4(a3)
   18304:	fff8889b          	addiw	a7,a7,-1
   18308:	ffc68693          	addi	a3,a3,-4
   1830c:	fe078ae3          	beqz	a5,18300 <__mdiff+0x198>
   18310:	01813083          	ld	ra,24(sp)
   18314:	01013403          	ld	s0,16(sp)
   18318:	01152a23          	sw	a7,20(a0)
   1831c:	00813483          	ld	s1,8(sp)
   18320:	00013903          	ld	s2,0(sp)
   18324:	02010113          	addi	sp,sp,32
   18328:	00008067          	ret
   1832c:	00048793          	mv	a5,s1
   18330:	00100913          	li	s2,1
   18334:	00040493          	mv	s1,s0
   18338:	00078413          	mv	s0,a5
   1833c:	e8dff06f          	j	181c8 <__mdiff+0x60>
   18340:	fe0946e3          	bltz	s2,1832c <__mdiff+0x1c4>
   18344:	00000913          	li	s2,0
   18348:	e81ff06f          	j	181c8 <__mdiff+0x60>
   1834c:	00000593          	li	a1,0
   18350:	a44ff0ef          	jal	ra,17594 <_Balloc>
   18354:	04050263          	beqz	a0,18398 <__mdiff+0x230>
   18358:	01813083          	ld	ra,24(sp)
   1835c:	01013403          	ld	s0,16(sp)
   18360:	00100793          	li	a5,1
   18364:	00f52a23          	sw	a5,20(a0)
   18368:	00052c23          	sw	zero,24(a0)
   1836c:	00813483          	ld	s1,8(sp)
   18370:	00013903          	ld	s2,0(sp)
   18374:	02010113          	addi	sp,sp,32
   18378:	00008067          	ret
   1837c:	0000a697          	auipc	a3,0xa
   18380:	d4c68693          	addi	a3,a3,-692 # 220c8 <bmask+0x40>
   18384:	00000613          	li	a2,0
   18388:	24000593          	li	a1,576
   1838c:	0000a517          	auipc	a0,0xa
   18390:	d5450513          	addi	a0,a0,-684 # 220e0 <bmask+0x58>
   18394:	734040ef          	jal	ra,1cac8 <__assert_func>
   18398:	0000a697          	auipc	a3,0xa
   1839c:	d3068693          	addi	a3,a3,-720 # 220c8 <bmask+0x40>
   183a0:	00000613          	li	a2,0
   183a4:	23200593          	li	a1,562
   183a8:	0000a517          	auipc	a0,0xa
   183ac:	d3850513          	addi	a0,a0,-712 # 220e0 <bmask+0x58>
   183b0:	718040ef          	jal	ra,1cac8 <__assert_func>

00000000000183b4 <__ulp>:
   183b4:	e20507d3          	fmv.x.d	a5,fa0
   183b8:	7ff00737          	lui	a4,0x7ff00
   183bc:	0207d793          	srli	a5,a5,0x20
   183c0:	00e7f733          	and	a4,a5,a4
   183c4:	fcc007b7          	lui	a5,0xfcc00
   183c8:	00e787bb          	addw	a5,a5,a4
   183cc:	0007871b          	sext.w	a4,a5
   183d0:	00e05863          	blez	a4,183e0 <__ulp+0x2c>
   183d4:	02079793          	slli	a5,a5,0x20
   183d8:	f2078553          	fmv.d.x	fa0,a5
   183dc:	00008067          	ret
   183e0:	40f007bb          	negw	a5,a5
   183e4:	4147d71b          	sraiw	a4,a5,0x14
   183e8:	01300693          	li	a3,19
   183ec:	00e6c863          	blt	a3,a4,183fc <__ulp+0x48>
   183f0:	000807b7          	lui	a5,0x80
   183f4:	40e7d7bb          	sraw	a5,a5,a4
   183f8:	fddff06f          	j	183d4 <__ulp+0x20>
   183fc:	fec7069b          	addiw	a3,a4,-20
   18400:	01e00613          	li	a2,30
   18404:	00000793          	li	a5,0
   18408:	00100713          	li	a4,1
   1840c:	00d64663          	blt	a2,a3,18418 <__ulp+0x64>
   18410:	80000737          	lui	a4,0x80000
   18414:	00d7573b          	srlw	a4,a4,a3
   18418:	0207d793          	srli	a5,a5,0x20
   1841c:	02071713          	slli	a4,a4,0x20
   18420:	02075713          	srli	a4,a4,0x20
   18424:	02079793          	slli	a5,a5,0x20
   18428:	00e7e7b3          	or	a5,a5,a4
   1842c:	f2078553          	fmv.d.x	fa0,a5
   18430:	00008067          	ret

0000000000018434 <__b2d>:
   18434:	fd010113          	addi	sp,sp,-48
   18438:	00913c23          	sd	s1,24(sp)
   1843c:	01452483          	lw	s1,20(a0)
   18440:	02813023          	sd	s0,32(sp)
   18444:	01850413          	addi	s0,a0,24
   18448:	00249493          	slli	s1,s1,0x2
   1844c:	009404b3          	add	s1,s0,s1
   18450:	01213823          	sd	s2,16(sp)
   18454:	ffc4a903          	lw	s2,-4(s1)
   18458:	01313423          	sd	s3,8(sp)
   1845c:	01413023          	sd	s4,0(sp)
   18460:	00090513          	mv	a0,s2
   18464:	00058993          	mv	s3,a1
   18468:	02113423          	sd	ra,40(sp)
   1846c:	cd4ff0ef          	jal	ra,17940 <__hi0bits>
   18470:	02000693          	li	a3,32
   18474:	40a687bb          	subw	a5,a3,a0
   18478:	00f9a023          	sw	a5,0(s3)
   1847c:	00a00793          	li	a5,10
   18480:	ffc48a13          	addi	s4,s1,-4
   18484:	0aa7d663          	bge	a5,a0,18530 <__b2d+0xfc>
   18488:	ff55079b          	addiw	a5,a0,-11
   1848c:	07447063          	bgeu	s0,s4,184ec <__b2d+0xb8>
   18490:	ff84a703          	lw	a4,-8(s1)
   18494:	06078063          	beqz	a5,184f4 <__b2d+0xc0>
   18498:	40f6853b          	subw	a0,a3,a5
   1849c:	00f916bb          	sllw	a3,s2,a5
   184a0:	00a7593b          	srlw	s2,a4,a0
   184a4:	0126e6b3          	or	a3,a3,s2
   184a8:	3ff00937          	lui	s2,0x3ff00
   184ac:	0126e6b3          	or	a3,a3,s2
   184b0:	00f7173b          	sllw	a4,a4,a5
   184b4:	ff848613          	addi	a2,s1,-8
   184b8:	02069793          	slli	a5,a3,0x20
   184bc:	0007069b          	sext.w	a3,a4
   184c0:	00c47a63          	bgeu	s0,a2,184d4 <__b2d+0xa0>
   184c4:	ff44a683          	lw	a3,-12(s1)
   184c8:	00a6d6bb          	srlw	a3,a3,a0
   184cc:	00e6e6b3          	or	a3,a3,a4
   184d0:	0006869b          	sext.w	a3,a3
   184d4:	0207d793          	srli	a5,a5,0x20
   184d8:	02069693          	slli	a3,a3,0x20
   184dc:	0206d693          	srli	a3,a3,0x20
   184e0:	02079793          	slli	a5,a5,0x20
   184e4:	00d7e7b3          	or	a5,a5,a3
   184e8:	0240006f          	j	1850c <__b2d+0xd8>
   184ec:	00000713          	li	a4,0
   184f0:	08079663          	bnez	a5,1857c <__b2d+0x148>
   184f4:	3ff007b7          	lui	a5,0x3ff00
   184f8:	00f967b3          	or	a5,s2,a5
   184fc:	02071713          	slli	a4,a4,0x20
   18500:	02075713          	srli	a4,a4,0x20
   18504:	02079793          	slli	a5,a5,0x20
   18508:	00e7e7b3          	or	a5,a5,a4
   1850c:	02813083          	ld	ra,40(sp)
   18510:	02013403          	ld	s0,32(sp)
   18514:	01813483          	ld	s1,24(sp)
   18518:	01013903          	ld	s2,16(sp)
   1851c:	00813983          	ld	s3,8(sp)
   18520:	00013a03          	ld	s4,0(sp)
   18524:	f2078553          	fmv.d.x	fa0,a5
   18528:	03010113          	addi	sp,sp,48
   1852c:	00008067          	ret
   18530:	00b00693          	li	a3,11
   18534:	40a686bb          	subw	a3,a3,a0
   18538:	3ff00737          	lui	a4,0x3ff00
   1853c:	00d957bb          	srlw	a5,s2,a3
   18540:	00e7e7b3          	or	a5,a5,a4
   18544:	02079793          	slli	a5,a5,0x20
   18548:	00000713          	li	a4,0
   1854c:	01447663          	bgeu	s0,s4,18558 <__b2d+0x124>
   18550:	ff84a703          	lw	a4,-8(s1)
   18554:	00d7573b          	srlw	a4,a4,a3
   18558:	0155051b          	addiw	a0,a0,21
   1855c:	00a9153b          	sllw	a0,s2,a0
   18560:	00a76533          	or	a0,a4,a0
   18564:	0207d793          	srli	a5,a5,0x20
   18568:	02051513          	slli	a0,a0,0x20
   1856c:	02055513          	srli	a0,a0,0x20
   18570:	02079793          	slli	a5,a5,0x20
   18574:	00a7e7b3          	or	a5,a5,a0
   18578:	f95ff06f          	j	1850c <__b2d+0xd8>
   1857c:	00f917bb          	sllw	a5,s2,a5
   18580:	3ff00937          	lui	s2,0x3ff00
   18584:	0127e7b3          	or	a5,a5,s2
   18588:	02079793          	slli	a5,a5,0x20
   1858c:	00000693          	li	a3,0
   18590:	f45ff06f          	j	184d4 <__b2d+0xa0>

0000000000018594 <__d2b>:
   18594:	fc010113          	addi	sp,sp,-64
   18598:	01413823          	sd	s4,16(sp)
   1859c:	00058a13          	mv	s4,a1
   185a0:	00100593          	li	a1,1
   185a4:	02813823          	sd	s0,48(sp)
   185a8:	01313c23          	sd	s3,24(sp)
   185ac:	02113c23          	sd	ra,56(sp)
   185b0:	02913423          	sd	s1,40(sp)
   185b4:	03213023          	sd	s2,32(sp)
   185b8:	e2050453          	fmv.x.d	s0,fa0
   185bc:	00060993          	mv	s3,a2
   185c0:	fd5fe0ef          	jal	ra,17594 <_Balloc>
   185c4:	10050c63          	beqz	a0,186dc <__d2b+0x148>
   185c8:	42045793          	srai	a5,s0,0x20
   185cc:	0147d91b          	srliw	s2,a5,0x14
   185d0:	7ff97913          	andi	s2,s2,2047
   185d4:	02c79793          	slli	a5,a5,0x2c
   185d8:	00050493          	mv	s1,a0
   185dc:	02c7d793          	srli	a5,a5,0x2c
   185e0:	00090663          	beqz	s2,185ec <__d2b+0x58>
   185e4:	00100737          	lui	a4,0x100
   185e8:	00e7e7b3          	or	a5,a5,a4
   185ec:	00f12623          	sw	a5,12(sp)
   185f0:	0004041b          	sext.w	s0,s0
   185f4:	08040663          	beqz	s0,18680 <__d2b+0xec>
   185f8:	00810513          	addi	a0,sp,8
   185fc:	00812423          	sw	s0,8(sp)
   18600:	bb8ff0ef          	jal	ra,179b8 <__lo0bits>
   18604:	0c050463          	beqz	a0,186cc <__d2b+0x138>
   18608:	00c12703          	lw	a4,12(sp)
   1860c:	00812683          	lw	a3,8(sp)
   18610:	02000793          	li	a5,32
   18614:	40a787bb          	subw	a5,a5,a0
   18618:	00f717bb          	sllw	a5,a4,a5
   1861c:	00d7e7b3          	or	a5,a5,a3
   18620:	00a7573b          	srlw	a4,a4,a0
   18624:	00f4ac23          	sw	a5,24(s1)
   18628:	00e12623          	sw	a4,12(sp)
   1862c:	0007079b          	sext.w	a5,a4
   18630:	00f03433          	snez	s0,a5
   18634:	00140413          	addi	s0,s0,1
   18638:	00f4ae23          	sw	a5,28(s1)
   1863c:	0084aa23          	sw	s0,20(s1)
   18640:	06090263          	beqz	s2,186a4 <__d2b+0x110>
   18644:	bcd9091b          	addiw	s2,s2,-1075
   18648:	00a9093b          	addw	s2,s2,a0
   1864c:	03500793          	li	a5,53
   18650:	012a2023          	sw	s2,0(s4)
   18654:	40a7853b          	subw	a0,a5,a0
   18658:	00a9a023          	sw	a0,0(s3)
   1865c:	03813083          	ld	ra,56(sp)
   18660:	03013403          	ld	s0,48(sp)
   18664:	02013903          	ld	s2,32(sp)
   18668:	01813983          	ld	s3,24(sp)
   1866c:	01013a03          	ld	s4,16(sp)
   18670:	00048513          	mv	a0,s1
   18674:	02813483          	ld	s1,40(sp)
   18678:	04010113          	addi	sp,sp,64
   1867c:	00008067          	ret
   18680:	00c10513          	addi	a0,sp,12
   18684:	b34ff0ef          	jal	ra,179b8 <__lo0bits>
   18688:	00100793          	li	a5,1
   1868c:	00f4aa23          	sw	a5,20(s1)
   18690:	00c12783          	lw	a5,12(sp)
   18694:	0205051b          	addiw	a0,a0,32
   18698:	00100413          	li	s0,1
   1869c:	00f4ac23          	sw	a5,24(s1)
   186a0:	fa0912e3          	bnez	s2,18644 <__d2b+0xb0>
   186a4:	bce5051b          	addiw	a0,a0,-1074
   186a8:	00241793          	slli	a5,s0,0x2
   186ac:	00aa2023          	sw	a0,0(s4)
   186b0:	00f487b3          	add	a5,s1,a5
   186b4:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb414>
   186b8:	0054141b          	slliw	s0,s0,0x5
   186bc:	a84ff0ef          	jal	ra,17940 <__hi0bits>
   186c0:	40a4043b          	subw	s0,s0,a0
   186c4:	0089a023          	sw	s0,0(s3)
   186c8:	f95ff06f          	j	1865c <__d2b+0xc8>
   186cc:	00812703          	lw	a4,8(sp)
   186d0:	00c12783          	lw	a5,12(sp)
   186d4:	00e4ac23          	sw	a4,24(s1)
   186d8:	f59ff06f          	j	18630 <__d2b+0x9c>
   186dc:	0000a697          	auipc	a3,0xa
   186e0:	9ec68693          	addi	a3,a3,-1556 # 220c8 <bmask+0x40>
   186e4:	00000613          	li	a2,0
   186e8:	30a00593          	li	a1,778
   186ec:	0000a517          	auipc	a0,0xa
   186f0:	9f450513          	addi	a0,a0,-1548 # 220e0 <bmask+0x58>
   186f4:	3d4040ef          	jal	ra,1cac8 <__assert_func>

00000000000186f8 <__ratio>:
   186f8:	fd010113          	addi	sp,sp,-48
   186fc:	00913c23          	sd	s1,24(sp)
   18700:	00058493          	mv	s1,a1
   18704:	00810593          	addi	a1,sp,8
   18708:	02113423          	sd	ra,40(sp)
   1870c:	02813023          	sd	s0,32(sp)
   18710:	01213823          	sd	s2,16(sp)
   18714:	00050913          	mv	s2,a0
   18718:	d1dff0ef          	jal	ra,18434 <__b2d>
   1871c:	00c10593          	addi	a1,sp,12
   18720:	00048513          	mv	a0,s1
   18724:	e2050453          	fmv.x.d	s0,fa0
   18728:	d0dff0ef          	jal	ra,18434 <__b2d>
   1872c:	0144a703          	lw	a4,20(s1)
   18730:	01492783          	lw	a5,20(s2) # 3ff00014 <__BSS_END__+0x3fedb414>
   18734:	00c12683          	lw	a3,12(sp)
   18738:	40e787bb          	subw	a5,a5,a4
   1873c:	00812703          	lw	a4,8(sp)
   18740:	0057979b          	slliw	a5,a5,0x5
   18744:	40d7073b          	subw	a4,a4,a3
   18748:	00e786bb          	addw	a3,a5,a4
   1874c:	00068793          	mv	a5,a3
   18750:	e2050753          	fmv.x.d	a4,fa0
   18754:	04d05463          	blez	a3,1879c <__ratio+0xa4>
   18758:	02045693          	srli	a3,s0,0x20
   1875c:	0147979b          	slliw	a5,a5,0x14
   18760:	00d787bb          	addw	a5,a5,a3
   18764:	fff00693          	li	a3,-1
   18768:	0206d693          	srli	a3,a3,0x20
   1876c:	02079793          	slli	a5,a5,0x20
   18770:	0086f433          	and	s0,a3,s0
   18774:	00f46433          	or	s0,s0,a5
   18778:	f20407d3          	fmv.d.x	fa5,s0
   1877c:	02813083          	ld	ra,40(sp)
   18780:	02013403          	ld	s0,32(sp)
   18784:	f2070753          	fmv.d.x	fa4,a4
   18788:	01813483          	ld	s1,24(sp)
   1878c:	01013903          	ld	s2,16(sp)
   18790:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   18794:	03010113          	addi	sp,sp,48
   18798:	00008067          	ret
   1879c:	02075693          	srli	a3,a4,0x20
   187a0:	0147979b          	slliw	a5,a5,0x14
   187a4:	40f687bb          	subw	a5,a3,a5
   187a8:	fff00693          	li	a3,-1
   187ac:	0206d693          	srli	a3,a3,0x20
   187b0:	02079793          	slli	a5,a5,0x20
   187b4:	00e6f733          	and	a4,a3,a4
   187b8:	00f76733          	or	a4,a4,a5
   187bc:	fbdff06f          	j	18778 <__ratio+0x80>

00000000000187c0 <_mprec_log10>:
   187c0:	01700793          	li	a5,23
   187c4:	02a7d263          	bge	a5,a0,187e8 <_mprec_log10+0x28>
   187c8:	0000c797          	auipc	a5,0xc
   187cc:	3607b507          	fld	fa0,864(a5) # 24b28 <__SDATA_BEGIN__+0x10>
   187d0:	0000c797          	auipc	a5,0xc
   187d4:	3607b787          	fld	fa5,864(a5) # 24b30 <__SDATA_BEGIN__+0x18>
   187d8:	fff5051b          	addiw	a0,a0,-1
   187dc:	12f57553          	fmul.d	fa0,fa0,fa5
   187e0:	fe051ce3          	bnez	a0,187d8 <_mprec_log10+0x18>
   187e4:	00008067          	ret
   187e8:	0000a797          	auipc	a5,0xa
   187ec:	9b078793          	addi	a5,a5,-1616 # 22198 <p05.0>
   187f0:	00351513          	slli	a0,a0,0x3
   187f4:	00a78533          	add	a0,a5,a0
   187f8:	01053507          	fld	fa0,16(a0)
   187fc:	00008067          	ret

0000000000018800 <__copybits>:
   18800:	01462683          	lw	a3,20(a2)
   18804:	fff5859b          	addiw	a1,a1,-1
   18808:	4055d59b          	sraiw	a1,a1,0x5
   1880c:	0015859b          	addiw	a1,a1,1
   18810:	01860793          	addi	a5,a2,24
   18814:	00269693          	slli	a3,a3,0x2
   18818:	00259593          	slli	a1,a1,0x2
   1881c:	00d786b3          	add	a3,a5,a3
   18820:	00b505b3          	add	a1,a0,a1
   18824:	02d7f863          	bgeu	a5,a3,18854 <__copybits+0x54>
   18828:	00050713          	mv	a4,a0
   1882c:	0007a803          	lw	a6,0(a5)
   18830:	00478793          	addi	a5,a5,4
   18834:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdb404>
   18838:	ff072e23          	sw	a6,-4(a4)
   1883c:	fed7e8e3          	bltu	a5,a3,1882c <__copybits+0x2c>
   18840:	40c687b3          	sub	a5,a3,a2
   18844:	fe778793          	addi	a5,a5,-25
   18848:	ffc7f793          	andi	a5,a5,-4
   1884c:	00478793          	addi	a5,a5,4
   18850:	00f50533          	add	a0,a0,a5
   18854:	00b57863          	bgeu	a0,a1,18864 <__copybits+0x64>
   18858:	00450513          	addi	a0,a0,4
   1885c:	fe052e23          	sw	zero,-4(a0)
   18860:	feb56ce3          	bltu	a0,a1,18858 <__copybits+0x58>
   18864:	00008067          	ret

0000000000018868 <__any_on>:
   18868:	01452703          	lw	a4,20(a0)
   1886c:	4055d613          	srai	a2,a1,0x5
   18870:	01850693          	addi	a3,a0,24
   18874:	02c75263          	bge	a4,a2,18898 <__any_on+0x30>
   18878:	00271793          	slli	a5,a4,0x2
   1887c:	00f687b3          	add	a5,a3,a5
   18880:	04f6f263          	bgeu	a3,a5,188c4 <__any_on+0x5c>
   18884:	ffc7a703          	lw	a4,-4(a5)
   18888:	ffc78793          	addi	a5,a5,-4
   1888c:	fe070ae3          	beqz	a4,18880 <__any_on+0x18>
   18890:	00100513          	li	a0,1
   18894:	00008067          	ret
   18898:	00261793          	slli	a5,a2,0x2
   1889c:	00f687b3          	add	a5,a3,a5
   188a0:	fee650e3          	bge	a2,a4,18880 <__any_on+0x18>
   188a4:	01f5f593          	andi	a1,a1,31
   188a8:	fc058ce3          	beqz	a1,18880 <__any_on+0x18>
   188ac:	0007a603          	lw	a2,0(a5)
   188b0:	00100513          	li	a0,1
   188b4:	00b6573b          	srlw	a4,a2,a1
   188b8:	00b715bb          	sllw	a1,a4,a1
   188bc:	fcc582e3          	beq	a1,a2,18880 <__any_on+0x18>
   188c0:	00008067          	ret
   188c4:	00000513          	li	a0,0
   188c8:	00008067          	ret

00000000000188cc <_sbrk_r>:
   188cc:	ff010113          	addi	sp,sp,-16
   188d0:	00813023          	sd	s0,0(sp)
   188d4:	00050413          	mv	s0,a0
   188d8:	00058513          	mv	a0,a1
   188dc:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   188e0:	00113423          	sd	ra,8(sp)
   188e4:	3fc070ef          	jal	ra,1fce0 <_sbrk>
   188e8:	fff00793          	li	a5,-1
   188ec:	00f50a63          	beq	a0,a5,18900 <_sbrk_r+0x34>
   188f0:	00813083          	ld	ra,8(sp)
   188f4:	00013403          	ld	s0,0(sp)
   188f8:	01010113          	addi	sp,sp,16
   188fc:	00008067          	ret
   18900:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   18904:	fe0786e3          	beqz	a5,188f0 <_sbrk_r+0x24>
   18908:	00813083          	ld	ra,8(sp)
   1890c:	00f42023          	sw	a5,0(s0)
   18910:	00013403          	ld	s0,0(sp)
   18914:	01010113          	addi	sp,sp,16
   18918:	00008067          	ret

000000000001891c <frexp>:
   1891c:	e20507d3          	fmv.x.d	a5,fa0
   18920:	80000637          	lui	a2,0x80000
   18924:	fff64613          	not	a2,a2
   18928:	4207d593          	srai	a1,a5,0x20
   1892c:	00c5f733          	and	a4,a1,a2
   18930:	00052023          	sw	zero,0(a0)
   18934:	7ff00837          	lui	a6,0x7ff00
   18938:	00058693          	mv	a3,a1
   1893c:	07075a63          	bge	a4,a6,189b0 <frexp+0x94>
   18940:	00f76833          	or	a6,a4,a5
   18944:	0008081b          	sext.w	a6,a6
   18948:	06080463          	beqz	a6,189b0 <frexp+0x94>
   1894c:	7ff00837          	lui	a6,0x7ff00
   18950:	0105f5b3          	and	a1,a1,a6
   18954:	00000813          	li	a6,0
   18958:	02059063          	bnez	a1,18978 <frexp+0x5c>
   1895c:	0000c717          	auipc	a4,0xc
   18960:	1dc73787          	fld	fa5,476(a4) # 24b38 <__SDATA_BEGIN__+0x20>
   18964:	12f577d3          	fmul.d	fa5,fa0,fa5
   18968:	fca00813          	li	a6,-54
   1896c:	e20787d3          	fmv.x.d	a5,fa5
   18970:	4207d693          	srai	a3,a5,0x20
   18974:	00c6f733          	and	a4,a3,a2
   18978:	80100637          	lui	a2,0x80100
   1897c:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db3ff>
   18980:	00c6f6b3          	and	a3,a3,a2
   18984:	3fe00637          	lui	a2,0x3fe00
   18988:	00c6e6b3          	or	a3,a3,a2
   1898c:	4147571b          	sraiw	a4,a4,0x14
   18990:	fff00613          	li	a2,-1
   18994:	c027071b          	addiw	a4,a4,-1022
   18998:	02065613          	srli	a2,a2,0x20
   1899c:	0107073b          	addw	a4,a4,a6
   189a0:	02069693          	slli	a3,a3,0x20
   189a4:	00f677b3          	and	a5,a2,a5
   189a8:	00e52023          	sw	a4,0(a0)
   189ac:	00d7e7b3          	or	a5,a5,a3
   189b0:	f2078553          	fmv.d.x	fa0,a5
   189b4:	00008067          	ret

00000000000189b8 <_sprintf_r>:
   189b8:	f0010113          	addi	sp,sp,-256
   189bc:	0d810e93          	addi	t4,sp,216
   189c0:	0ef13423          	sd	a5,232(sp)
   189c4:	80000337          	lui	t1,0x80000
   189c8:	ffff07b7          	lui	a5,0xffff0
   189cc:	00058e13          	mv	t3,a1
   189d0:	fff34313          	not	t1,t1
   189d4:	0cd13c23          	sd	a3,216(sp)
   189d8:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb608>
   189dc:	01010593          	addi	a1,sp,16
   189e0:	000e8693          	mv	a3,t4
   189e4:	0c113423          	sd	ra,200(sp)
   189e8:	02f12023          	sw	a5,32(sp)
   189ec:	0ee13023          	sd	a4,224(sp)
   189f0:	0f013823          	sd	a6,240(sp)
   189f4:	0f113c23          	sd	a7,248(sp)
   189f8:	01c13823          	sd	t3,16(sp)
   189fc:	03c13423          	sd	t3,40(sp)
   18a00:	02612823          	sw	t1,48(sp)
   18a04:	00612e23          	sw	t1,28(sp)
   18a08:	01d13423          	sd	t4,8(sp)
   18a0c:	56c000ef          	jal	ra,18f78 <_svfprintf_r>
   18a10:	01013783          	ld	a5,16(sp)
   18a14:	00078023          	sb	zero,0(a5)
   18a18:	0c813083          	ld	ra,200(sp)
   18a1c:	10010113          	addi	sp,sp,256
   18a20:	00008067          	ret

0000000000018a24 <sprintf>:
   18a24:	f0010113          	addi	sp,sp,-256
   18a28:	0d010e93          	addi	t4,sp,208
   18a2c:	0ef13423          	sd	a5,232(sp)
   18a30:	80000337          	lui	t1,0x80000
   18a34:	ffff07b7          	lui	a5,0xffff0
   18a38:	00050e13          	mv	t3,a0
   18a3c:	fff34313          	not	t1,t1
   18a40:	0cc13823          	sd	a2,208(sp)
   18a44:	0cd13c23          	sd	a3,216(sp)
   18a48:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb608>
   18a4c:	00058613          	mv	a2,a1
   18a50:	000e8693          	mv	a3,t4
   18a54:	01010593          	addi	a1,sp,16
   18a58:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   18a5c:	0c113423          	sd	ra,200(sp)
   18a60:	02f12023          	sw	a5,32(sp)
   18a64:	0ee13023          	sd	a4,224(sp)
   18a68:	0f013823          	sd	a6,240(sp)
   18a6c:	0f113c23          	sd	a7,248(sp)
   18a70:	01c13823          	sd	t3,16(sp)
   18a74:	03c13423          	sd	t3,40(sp)
   18a78:	02612823          	sw	t1,48(sp)
   18a7c:	00612e23          	sw	t1,28(sp)
   18a80:	01d13423          	sd	t4,8(sp)
   18a84:	4f4000ef          	jal	ra,18f78 <_svfprintf_r>
   18a88:	01013783          	ld	a5,16(sp)
   18a8c:	00078023          	sb	zero,0(a5)
   18a90:	0c813083          	ld	ra,200(sp)
   18a94:	10010113          	addi	sp,sp,256
   18a98:	00008067          	ret

0000000000018a9c <__sread>:
   18a9c:	ff010113          	addi	sp,sp,-16
   18aa0:	00813023          	sd	s0,0(sp)
   18aa4:	00058413          	mv	s0,a1
   18aa8:	01259583          	lh	a1,18(a1)
   18aac:	00113423          	sd	ra,8(sp)
   18ab0:	5a1040ef          	jal	ra,1d850 <_read_r>
   18ab4:	02054063          	bltz	a0,18ad4 <__sread+0x38>
   18ab8:	09043783          	ld	a5,144(s0)
   18abc:	00813083          	ld	ra,8(sp)
   18ac0:	00a787b3          	add	a5,a5,a0
   18ac4:	08f43823          	sd	a5,144(s0)
   18ac8:	00013403          	ld	s0,0(sp)
   18acc:	01010113          	addi	sp,sp,16
   18ad0:	00008067          	ret
   18ad4:	01045783          	lhu	a5,16(s0)
   18ad8:	fffff737          	lui	a4,0xfffff
   18adc:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda3ff>
   18ae0:	00e7f7b3          	and	a5,a5,a4
   18ae4:	00813083          	ld	ra,8(sp)
   18ae8:	00f41823          	sh	a5,16(s0)
   18aec:	00013403          	ld	s0,0(sp)
   18af0:	01010113          	addi	sp,sp,16
   18af4:	00008067          	ret

0000000000018af8 <__seofread>:
   18af8:	00000513          	li	a0,0
   18afc:	00008067          	ret

0000000000018b00 <__swrite>:
   18b00:	01059783          	lh	a5,16(a1)
   18b04:	fd010113          	addi	sp,sp,-48
   18b08:	02813023          	sd	s0,32(sp)
   18b0c:	00913c23          	sd	s1,24(sp)
   18b10:	01213823          	sd	s2,16(sp)
   18b14:	01313423          	sd	s3,8(sp)
   18b18:	02113423          	sd	ra,40(sp)
   18b1c:	1007f713          	andi	a4,a5,256
   18b20:	00058413          	mv	s0,a1
   18b24:	00050493          	mv	s1,a0
   18b28:	01259583          	lh	a1,18(a1)
   18b2c:	00060913          	mv	s2,a2
   18b30:	00068993          	mv	s3,a3
   18b34:	02071e63          	bnez	a4,18b70 <__swrite+0x70>
   18b38:	fffff737          	lui	a4,0xfffff
   18b3c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda3ff>
   18b40:	00e7f7b3          	and	a5,a5,a4
   18b44:	00f41823          	sh	a5,16(s0)
   18b48:	02013403          	ld	s0,32(sp)
   18b4c:	02813083          	ld	ra,40(sp)
   18b50:	00098693          	mv	a3,s3
   18b54:	00090613          	mv	a2,s2
   18b58:	00813983          	ld	s3,8(sp)
   18b5c:	01013903          	ld	s2,16(sp)
   18b60:	00048513          	mv	a0,s1
   18b64:	01813483          	ld	s1,24(sp)
   18b68:	03010113          	addi	sp,sp,48
   18b6c:	7010306f          	j	1ca6c <_write_r>
   18b70:	00200693          	li	a3,2
   18b74:	00000613          	li	a2,0
   18b78:	241040ef          	jal	ra,1d5b8 <_lseek_r>
   18b7c:	01041783          	lh	a5,16(s0)
   18b80:	01241583          	lh	a1,18(s0)
   18b84:	fb5ff06f          	j	18b38 <__swrite+0x38>

0000000000018b88 <__sseek>:
   18b88:	ff010113          	addi	sp,sp,-16
   18b8c:	00813023          	sd	s0,0(sp)
   18b90:	00058413          	mv	s0,a1
   18b94:	01259583          	lh	a1,18(a1)
   18b98:	00113423          	sd	ra,8(sp)
   18b9c:	21d040ef          	jal	ra,1d5b8 <_lseek_r>
   18ba0:	fff00793          	li	a5,-1
   18ba4:	02f50463          	beq	a0,a5,18bcc <__sseek+0x44>
   18ba8:	01045783          	lhu	a5,16(s0)
   18bac:	00001737          	lui	a4,0x1
   18bb0:	00813083          	ld	ra,8(sp)
   18bb4:	00e7e7b3          	or	a5,a5,a4
   18bb8:	08a43823          	sd	a0,144(s0)
   18bbc:	00f41823          	sh	a5,16(s0)
   18bc0:	00013403          	ld	s0,0(sp)
   18bc4:	01010113          	addi	sp,sp,16
   18bc8:	00008067          	ret
   18bcc:	01045783          	lhu	a5,16(s0)
   18bd0:	fffff737          	lui	a4,0xfffff
   18bd4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda3ff>
   18bd8:	00e7f7b3          	and	a5,a5,a4
   18bdc:	00813083          	ld	ra,8(sp)
   18be0:	00f41823          	sh	a5,16(s0)
   18be4:	00013403          	ld	s0,0(sp)
   18be8:	01010113          	addi	sp,sp,16
   18bec:	00008067          	ret

0000000000018bf0 <__sclose>:
   18bf0:	01259583          	lh	a1,18(a1)
   18bf4:	0140406f          	j	1cc08 <_close_r>

0000000000018bf8 <strcmp>:
   18bf8:	00b56733          	or	a4,a0,a1
   18bfc:	fff00393          	li	t2,-1
   18c00:	00777713          	andi	a4,a4,7
   18c04:	0c071c63          	bnez	a4,18cdc <strcmp+0xe4>
   18c08:	0000c797          	auipc	a5,0xc
   18c0c:	f387b783          	ld	a5,-200(a5) # 24b40 <mask>
   18c10:	00053603          	ld	a2,0(a0)
   18c14:	0005b683          	ld	a3,0(a1)
   18c18:	00f672b3          	and	t0,a2,a5
   18c1c:	00f66333          	or	t1,a2,a5
   18c20:	00f282b3          	add	t0,t0,a5
   18c24:	0062e2b3          	or	t0,t0,t1
   18c28:	0c729e63          	bne	t0,t2,18d04 <strcmp+0x10c>
   18c2c:	04d61663          	bne	a2,a3,18c78 <strcmp+0x80>
   18c30:	00853603          	ld	a2,8(a0)
   18c34:	0085b683          	ld	a3,8(a1)
   18c38:	00f672b3          	and	t0,a2,a5
   18c3c:	00f66333          	or	t1,a2,a5
   18c40:	00f282b3          	add	t0,t0,a5
   18c44:	0062e2b3          	or	t0,t0,t1
   18c48:	0a729a63          	bne	t0,t2,18cfc <strcmp+0x104>
   18c4c:	02d61663          	bne	a2,a3,18c78 <strcmp+0x80>
   18c50:	01053603          	ld	a2,16(a0)
   18c54:	0105b683          	ld	a3,16(a1)
   18c58:	00f672b3          	and	t0,a2,a5
   18c5c:	00f66333          	or	t1,a2,a5
   18c60:	00f282b3          	add	t0,t0,a5
   18c64:	0062e2b3          	or	t0,t0,t1
   18c68:	0a729463          	bne	t0,t2,18d10 <strcmp+0x118>
   18c6c:	01850513          	addi	a0,a0,24
   18c70:	01858593          	addi	a1,a1,24
   18c74:	f8d60ee3          	beq	a2,a3,18c10 <strcmp+0x18>
   18c78:	03061713          	slli	a4,a2,0x30
   18c7c:	03069793          	slli	a5,a3,0x30
   18c80:	02f71a63          	bne	a4,a5,18cb4 <strcmp+0xbc>
   18c84:	02061713          	slli	a4,a2,0x20
   18c88:	02069793          	slli	a5,a3,0x20
   18c8c:	02f71463          	bne	a4,a5,18cb4 <strcmp+0xbc>
   18c90:	01061713          	slli	a4,a2,0x10
   18c94:	01069793          	slli	a5,a3,0x10
   18c98:	00f71e63          	bne	a4,a5,18cb4 <strcmp+0xbc>
   18c9c:	03065713          	srli	a4,a2,0x30
   18ca0:	0306d793          	srli	a5,a3,0x30
   18ca4:	40f70533          	sub	a0,a4,a5
   18ca8:	0ff57593          	andi	a1,a0,255
   18cac:	02059063          	bnez	a1,18ccc <strcmp+0xd4>
   18cb0:	00008067          	ret
   18cb4:	03075713          	srli	a4,a4,0x30
   18cb8:	0307d793          	srli	a5,a5,0x30
   18cbc:	40f70533          	sub	a0,a4,a5
   18cc0:	0ff57593          	andi	a1,a0,255
   18cc4:	00059463          	bnez	a1,18ccc <strcmp+0xd4>
   18cc8:	00008067          	ret
   18ccc:	0ff77713          	andi	a4,a4,255
   18cd0:	0ff7f793          	andi	a5,a5,255
   18cd4:	40f70533          	sub	a0,a4,a5
   18cd8:	00008067          	ret
   18cdc:	00054603          	lbu	a2,0(a0)
   18ce0:	0005c683          	lbu	a3,0(a1)
   18ce4:	00150513          	addi	a0,a0,1
   18ce8:	00158593          	addi	a1,a1,1
   18cec:	00d61463          	bne	a2,a3,18cf4 <strcmp+0xfc>
   18cf0:	fe0616e3          	bnez	a2,18cdc <strcmp+0xe4>
   18cf4:	40d60533          	sub	a0,a2,a3
   18cf8:	00008067          	ret
   18cfc:	00850513          	addi	a0,a0,8
   18d00:	00858593          	addi	a1,a1,8
   18d04:	fcd61ce3          	bne	a2,a3,18cdc <strcmp+0xe4>
   18d08:	00000513          	li	a0,0
   18d0c:	00008067          	ret
   18d10:	01050513          	addi	a0,a0,16
   18d14:	01058593          	addi	a1,a1,16
   18d18:	fcd612e3          	bne	a2,a3,18cdc <strcmp+0xe4>
   18d1c:	00000513          	li	a0,0
   18d20:	00008067          	ret

0000000000018d24 <strcpy>:
   18d24:	00b567b3          	or	a5,a0,a1
   18d28:	0077f793          	andi	a5,a5,7
   18d2c:	0a079663          	bnez	a5,18dd8 <strcpy+0xb4>
   18d30:	0005b703          	ld	a4,0(a1)
   18d34:	0000c697          	auipc	a3,0xc
   18d38:	e0c6b683          	ld	a3,-500(a3) # 24b40 <mask>
   18d3c:	fff00613          	li	a2,-1
   18d40:	00d777b3          	and	a5,a4,a3
   18d44:	00d787b3          	add	a5,a5,a3
   18d48:	00e7e7b3          	or	a5,a5,a4
   18d4c:	00d7e7b3          	or	a5,a5,a3
   18d50:	0ac79263          	bne	a5,a2,18df4 <strcpy+0xd0>
   18d54:	00050613          	mv	a2,a0
   18d58:	fff00813          	li	a6,-1
   18d5c:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb400>
   18d60:	0085b703          	ld	a4,8(a1)
   18d64:	00858593          	addi	a1,a1,8
   18d68:	00860613          	addi	a2,a2,8
   18d6c:	00d777b3          	and	a5,a4,a3
   18d70:	00d787b3          	add	a5,a5,a3
   18d74:	00e7e7b3          	or	a5,a5,a4
   18d78:	00d7e7b3          	or	a5,a5,a3
   18d7c:	ff0780e3          	beq	a5,a6,18d5c <strcpy+0x38>
   18d80:	0005c783          	lbu	a5,0(a1)
   18d84:	0015c703          	lbu	a4,1(a1)
   18d88:	0025c683          	lbu	a3,2(a1)
   18d8c:	00f60023          	sb	a5,0(a2)
   18d90:	04078263          	beqz	a5,18dd4 <strcpy+0xb0>
   18d94:	00e600a3          	sb	a4,1(a2)
   18d98:	02070e63          	beqz	a4,18dd4 <strcpy+0xb0>
   18d9c:	0035c783          	lbu	a5,3(a1)
   18da0:	00d60123          	sb	a3,2(a2)
   18da4:	02068863          	beqz	a3,18dd4 <strcpy+0xb0>
   18da8:	0045c703          	lbu	a4,4(a1)
   18dac:	00f601a3          	sb	a5,3(a2)
   18db0:	02078263          	beqz	a5,18dd4 <strcpy+0xb0>
   18db4:	0055c783          	lbu	a5,5(a1)
   18db8:	00e60223          	sb	a4,4(a2)
   18dbc:	00070c63          	beqz	a4,18dd4 <strcpy+0xb0>
   18dc0:	0065c703          	lbu	a4,6(a1)
   18dc4:	00f602a3          	sb	a5,5(a2)
   18dc8:	00078663          	beqz	a5,18dd4 <strcpy+0xb0>
   18dcc:	00e60323          	sb	a4,6(a2)
   18dd0:	02071663          	bnez	a4,18dfc <strcpy+0xd8>
   18dd4:	00008067          	ret
   18dd8:	00050793          	mv	a5,a0
   18ddc:	0005c703          	lbu	a4,0(a1)
   18de0:	00178793          	addi	a5,a5,1
   18de4:	00158593          	addi	a1,a1,1
   18de8:	fee78fa3          	sb	a4,-1(a5)
   18dec:	fe0718e3          	bnez	a4,18ddc <strcpy+0xb8>
   18df0:	00008067          	ret
   18df4:	00050613          	mv	a2,a0
   18df8:	f89ff06f          	j	18d80 <strcpy+0x5c>
   18dfc:	000603a3          	sb	zero,7(a2)
   18e00:	00008067          	ret

0000000000018e04 <strlen>:
   18e04:	00757793          	andi	a5,a0,7
   18e08:	00050713          	mv	a4,a0
   18e0c:	06079c63          	bnez	a5,18e84 <strlen+0x80>
   18e10:	0000c697          	auipc	a3,0xc
   18e14:	d306b683          	ld	a3,-720(a3) # 24b40 <mask>
   18e18:	fff00593          	li	a1,-1
   18e1c:	00073603          	ld	a2,0(a4)
   18e20:	00870713          	addi	a4,a4,8
   18e24:	00d677b3          	and	a5,a2,a3
   18e28:	00d787b3          	add	a5,a5,a3
   18e2c:	00c7e7b3          	or	a5,a5,a2
   18e30:	00d7e7b3          	or	a5,a5,a3
   18e34:	feb784e3          	beq	a5,a1,18e1c <strlen+0x18>
   18e38:	ff874683          	lbu	a3,-8(a4)
   18e3c:	40a707b3          	sub	a5,a4,a0
   18e40:	06068463          	beqz	a3,18ea8 <strlen+0xa4>
   18e44:	ff974683          	lbu	a3,-7(a4)
   18e48:	04068c63          	beqz	a3,18ea0 <strlen+0x9c>
   18e4c:	ffa74683          	lbu	a3,-6(a4)
   18e50:	06068463          	beqz	a3,18eb8 <strlen+0xb4>
   18e54:	ffb74683          	lbu	a3,-5(a4)
   18e58:	04068c63          	beqz	a3,18eb0 <strlen+0xac>
   18e5c:	ffc74683          	lbu	a3,-4(a4)
   18e60:	ffd74603          	lbu	a2,-3(a4)
   18e64:	ffe74503          	lbu	a0,-2(a4)
   18e68:	04068c63          	beqz	a3,18ec0 <strlen+0xbc>
   18e6c:	04060e63          	beqz	a2,18ec8 <strlen+0xc4>
   18e70:	00a03533          	snez	a0,a0
   18e74:	00f50533          	add	a0,a0,a5
   18e78:	ffe50513          	addi	a0,a0,-2
   18e7c:	00008067          	ret
   18e80:	f80688e3          	beqz	a3,18e10 <strlen+0xc>
   18e84:	00074783          	lbu	a5,0(a4)
   18e88:	00170713          	addi	a4,a4,1
   18e8c:	00777693          	andi	a3,a4,7
   18e90:	fe0798e3          	bnez	a5,18e80 <strlen+0x7c>
   18e94:	40a70733          	sub	a4,a4,a0
   18e98:	fff70513          	addi	a0,a4,-1
   18e9c:	00008067          	ret
   18ea0:	ff978513          	addi	a0,a5,-7
   18ea4:	00008067          	ret
   18ea8:	ff878513          	addi	a0,a5,-8
   18eac:	00008067          	ret
   18eb0:	ffb78513          	addi	a0,a5,-5
   18eb4:	00008067          	ret
   18eb8:	ffa78513          	addi	a0,a5,-6
   18ebc:	00008067          	ret
   18ec0:	ffc78513          	addi	a0,a5,-4
   18ec4:	00008067          	ret
   18ec8:	ffd78513          	addi	a0,a5,-3
   18ecc:	00008067          	ret

0000000000018ed0 <strncpy>:
   18ed0:	00a5e7b3          	or	a5,a1,a0
   18ed4:	0077f793          	andi	a5,a5,7
   18ed8:	00050713          	mv	a4,a0
   18edc:	06079863          	bnez	a5,18f4c <strncpy+0x7c>
   18ee0:	00700793          	li	a5,7
   18ee4:	06c7f463          	bgeu	a5,a2,18f4c <strncpy+0x7c>
   18ee8:	0000c317          	auipc	t1,0xc
   18eec:	c3033303          	ld	t1,-976(t1) # 24b18 <__SDATA_BEGIN__>
   18ef0:	0000c897          	auipc	a7,0xc
   18ef4:	c308b883          	ld	a7,-976(a7) # 24b20 <__SDATA_BEGIN__+0x8>
   18ef8:	00700e13          	li	t3,7
   18efc:	0005b683          	ld	a3,0(a1)
   18f00:	006687b3          	add	a5,a3,t1
   18f04:	fff6c813          	not	a6,a3
   18f08:	0107f7b3          	and	a5,a5,a6
   18f0c:	0117f7b3          	and	a5,a5,a7
   18f10:	02079e63          	bnez	a5,18f4c <strncpy+0x7c>
   18f14:	00d73023          	sd	a3,0(a4)
   18f18:	ff860613          	addi	a2,a2,-8
   18f1c:	00870713          	addi	a4,a4,8
   18f20:	00858593          	addi	a1,a1,8
   18f24:	fcce6ce3          	bltu	t3,a2,18efc <strncpy+0x2c>
   18f28:	00158593          	addi	a1,a1,1
   18f2c:	00170793          	addi	a5,a4,1
   18f30:	02060463          	beqz	a2,18f58 <strncpy+0x88>
   18f34:	fff5c683          	lbu	a3,-1(a1)
   18f38:	fff60813          	addi	a6,a2,-1
   18f3c:	fed78fa3          	sb	a3,-1(a5)
   18f40:	00068e63          	beqz	a3,18f5c <strncpy+0x8c>
   18f44:	00078713          	mv	a4,a5
   18f48:	00080613          	mv	a2,a6
   18f4c:	00158593          	addi	a1,a1,1
   18f50:	00170793          	addi	a5,a4,1
   18f54:	fe0610e3          	bnez	a2,18f34 <strncpy+0x64>
   18f58:	00008067          	ret
   18f5c:	00c70633          	add	a2,a4,a2
   18f60:	00080a63          	beqz	a6,18f74 <strncpy+0xa4>
   18f64:	00178793          	addi	a5,a5,1
   18f68:	fe078fa3          	sb	zero,-1(a5)
   18f6c:	fec79ce3          	bne	a5,a2,18f64 <strncpy+0x94>
   18f70:	00008067          	ret
   18f74:	00008067          	ret

0000000000018f78 <_svfprintf_r>:
   18f78:	d9010113          	addi	sp,sp,-624
   18f7c:	26113423          	sd	ra,616(sp)
   18f80:	25313423          	sd	s3,584(sp)
   18f84:	23813023          	sd	s8,544(sp)
   18f88:	21913c23          	sd	s9,536(sp)
   18f8c:	00058c13          	mv	s8,a1
   18f90:	00060993          	mv	s3,a2
   18f94:	00d13823          	sd	a3,16(sp)
   18f98:	26813023          	sd	s0,608(sp)
   18f9c:	24913c23          	sd	s1,600(sp)
   18fa0:	25213823          	sd	s2,592(sp)
   18fa4:	25413023          	sd	s4,576(sp)
   18fa8:	23513c23          	sd	s5,568(sp)
   18fac:	23613823          	sd	s6,560(sp)
   18fb0:	23713423          	sd	s7,552(sp)
   18fb4:	21a13823          	sd	s10,528(sp)
   18fb8:	21b13423          	sd	s11,520(sp)
   18fbc:	00050c93          	mv	s9,a0
   18fc0:	909fd0ef          	jal	ra,168c8 <_localeconv_r>
   18fc4:	00053783          	ld	a5,0(a0)
   18fc8:	00078513          	mv	a0,a5
   18fcc:	04f13023          	sd	a5,64(sp)
   18fd0:	e35ff0ef          	jal	ra,18e04 <strlen>
   18fd4:	010c5783          	lhu	a5,16(s8)
   18fd8:	0e013823          	sd	zero,240(sp)
   18fdc:	0e013c23          	sd	zero,248(sp)
   18fe0:	0807f793          	andi	a5,a5,128
   18fe4:	02a13c23          	sd	a0,56(sp)
   18fe8:	00078863          	beqz	a5,18ff8 <_svfprintf_r+0x80>
   18fec:	018c3783          	ld	a5,24(s8)
   18ff0:	00079463          	bnez	a5,18ff8 <_svfprintf_r+0x80>
   18ff4:	4f80106f          	j	1a4ec <_svfprintf_r+0x1574>
   18ff8:	18010793          	addi	a5,sp,384
   18ffc:	00098d13          	mv	s10,s3
   19000:	10f13023          	sd	a5,256(sp)
   19004:	00078d93          	mv	s11,a5
   19008:	000d4783          	lbu	a5,0(s10)
   1900c:	10013823          	sd	zero,272(sp)
   19010:	10012423          	sw	zero,264(sp)
   19014:	02013023          	sd	zero,32(sp)
   19018:	04013423          	sd	zero,72(sp)
   1901c:	04013823          	sd	zero,80(sp)
   19020:	04013c23          	sd	zero,88(sp)
   19024:	06013423          	sd	zero,104(sp)
   19028:	06013823          	sd	zero,112(sp)
   1902c:	00013023          	sd	zero,0(sp)
   19030:	01000b13          	li	s6,16
   19034:	24078863          	beqz	a5,19284 <_svfprintf_r+0x30c>
   19038:	000d0413          	mv	s0,s10
   1903c:	02500713          	li	a4,37
   19040:	2ae78863          	beq	a5,a4,192f0 <_svfprintf_r+0x378>
   19044:	00144783          	lbu	a5,1(s0)
   19048:	00140413          	addi	s0,s0,1
   1904c:	fe079ae3          	bnez	a5,19040 <_svfprintf_r+0xc8>
   19050:	41a404bb          	subw	s1,s0,s10
   19054:	22048863          	beqz	s1,19284 <_svfprintf_r+0x30c>
   19058:	11013703          	ld	a4,272(sp)
   1905c:	10812783          	lw	a5,264(sp)
   19060:	01adb023          	sd	s10,0(s11)
   19064:	00970733          	add	a4,a4,s1
   19068:	0017879b          	addiw	a5,a5,1
   1906c:	009db423          	sd	s1,8(s11)
   19070:	10e13823          	sd	a4,272(sp)
   19074:	10f12423          	sw	a5,264(sp)
   19078:	0007871b          	sext.w	a4,a5
   1907c:	00700793          	li	a5,7
   19080:	010d8d93          	addi	s11,s11,16
   19084:	26e7ce63          	blt	a5,a4,19300 <_svfprintf_r+0x388>
   19088:	00013703          	ld	a4,0(sp)
   1908c:	00044783          	lbu	a5,0(s0)
   19090:	0097073b          	addw	a4,a4,s1
   19094:	00e13023          	sd	a4,0(sp)
   19098:	1e078663          	beqz	a5,19284 <_svfprintf_r+0x30c>
   1909c:	fff00e13          	li	t3,-1
   190a0:	00144483          	lbu	s1,1(s0)
   190a4:	0c0107a3          	sb	zero,207(sp)
   190a8:	00140413          	addi	s0,s0,1
   190ac:	00000a13          	li	s4,0
   190b0:	00000913          	li	s2,0
   190b4:	00900993          	li	s3,9
   190b8:	02a00a93          	li	s5,42
   190bc:	000e0b93          	mv	s7,t3
   190c0:	00140413          	addi	s0,s0,1
   190c4:	0004849b          	sext.w	s1,s1
   190c8:	05a00693          	li	a3,90
   190cc:	fe04879b          	addiw	a5,s1,-32
   190d0:	0007871b          	sext.w	a4,a5
   190d4:	04e6ee63          	bltu	a3,a4,19130 <_svfprintf_r+0x1b8>
   190d8:	02079713          	slli	a4,a5,0x20
   190dc:	01e75793          	srli	a5,a4,0x1e
   190e0:	00009717          	auipc	a4,0x9
   190e4:	1e070713          	addi	a4,a4,480 # 222c0 <__mprec_bigtens+0x28>
   190e8:	00e787b3          	add	a5,a5,a4
   190ec:	0007a783          	lw	a5,0(a5)
   190f0:	00e787b3          	add	a5,a5,a4
   190f4:	00078067          	jr	a5
   190f8:	00000a13          	li	s4,0
   190fc:	00044703          	lbu	a4,0(s0)
   19100:	002a179b          	slliw	a5,s4,0x2
   19104:	014787bb          	addw	a5,a5,s4
   19108:	fd04849b          	addiw	s1,s1,-48
   1910c:	0017979b          	slliw	a5,a5,0x1
   19110:	fd07061b          	addiw	a2,a4,-48
   19114:	00f48a3b          	addw	s4,s1,a5
   19118:	00140413          	addi	s0,s0,1
   1911c:	0007049b          	sext.w	s1,a4
   19120:	fcc9fee3          	bgeu	s3,a2,190fc <_svfprintf_r+0x184>
   19124:	fe04879b          	addiw	a5,s1,-32
   19128:	0007871b          	sext.w	a4,a5
   1912c:	fae6f6e3          	bgeu	a3,a4,190d8 <_svfprintf_r+0x160>
   19130:	14048a63          	beqz	s1,19284 <_svfprintf_r+0x30c>
   19134:	10910c23          	sb	s1,280(sp)
   19138:	0c0107a3          	sb	zero,207(sp)
   1913c:	00100a93          	li	s5,1
   19140:	00100b93          	li	s7,1
   19144:	11810d13          	addi	s10,sp,280
   19148:	00013423          	sd	zero,8(sp)
   1914c:	00000e13          	li	t3,0
   19150:	02013823          	sd	zero,48(sp)
   19154:	02013423          	sd	zero,40(sp)
   19158:	00013c23          	sd	zero,24(sp)
   1915c:	00297f13          	andi	t5,s2,2
   19160:	000f0463          	beqz	t5,19168 <_svfprintf_r+0x1f0>
   19164:	002a8a9b          	addiw	s5,s5,2
   19168:	08497e93          	andi	t4,s2,132
   1916c:	11013783          	ld	a5,272(sp)
   19170:	000e9663          	bnez	t4,1917c <_svfprintf_r+0x204>
   19174:	415a06bb          	subw	a3,s4,s5
   19178:	50d044e3          	bgtz	a3,19e80 <_svfprintf_r+0xf08>
   1917c:	0cf14703          	lbu	a4,207(sp)
   19180:	02070c63          	beqz	a4,191b8 <_svfprintf_r+0x240>
   19184:	10812703          	lw	a4,264(sp)
   19188:	0cf10693          	addi	a3,sp,207
   1918c:	00ddb023          	sd	a3,0(s11)
   19190:	0017071b          	addiw	a4,a4,1
   19194:	00100693          	li	a3,1
   19198:	00178793          	addi	a5,a5,1
   1919c:	00ddb423          	sd	a3,8(s11)
   191a0:	10e12423          	sw	a4,264(sp)
   191a4:	0007069b          	sext.w	a3,a4
   191a8:	10f13823          	sd	a5,272(sp)
   191ac:	00700713          	li	a4,7
   191b0:	010d8d93          	addi	s11,s11,16
   191b4:	42d74463          	blt	a4,a3,195dc <_svfprintf_r+0x664>
   191b8:	020f0c63          	beqz	t5,191f0 <_svfprintf_r+0x278>
   191bc:	10812703          	lw	a4,264(sp)
   191c0:	0d010693          	addi	a3,sp,208
   191c4:	00ddb023          	sd	a3,0(s11)
   191c8:	0017071b          	addiw	a4,a4,1
   191cc:	00200693          	li	a3,2
   191d0:	00278793          	addi	a5,a5,2
   191d4:	00ddb423          	sd	a3,8(s11)
   191d8:	10e12423          	sw	a4,264(sp)
   191dc:	0007069b          	sext.w	a3,a4
   191e0:	10f13823          	sd	a5,272(sp)
   191e4:	00700713          	li	a4,7
   191e8:	010d8d93          	addi	s11,s11,16
   191ec:	5cd748e3          	blt	a4,a3,19fbc <_svfprintf_r+0x1044>
   191f0:	08000713          	li	a4,128
   191f4:	2aee86e3          	beq	t4,a4,19ca0 <_svfprintf_r+0xd28>
   191f8:	417e09bb          	subw	s3,t3,s7
   191fc:	39304ce3          	bgtz	s3,19d94 <_svfprintf_r+0xe1c>
   19200:	10097713          	andi	a4,s2,256
   19204:	12071ee3          	bnez	a4,19b40 <_svfprintf_r+0xbc8>
   19208:	10812703          	lw	a4,264(sp)
   1920c:	017787b3          	add	a5,a5,s7
   19210:	01adb023          	sd	s10,0(s11)
   19214:	0017069b          	addiw	a3,a4,1
   19218:	017db423          	sd	s7,8(s11)
   1921c:	10f13823          	sd	a5,272(sp)
   19220:	10d12423          	sw	a3,264(sp)
   19224:	00700713          	li	a4,7
   19228:	4ed74063          	blt	a4,a3,19708 <_svfprintf_r+0x790>
   1922c:	010d8d93          	addi	s11,s11,16
   19230:	00497913          	andi	s2,s2,4
   19234:	00090663          	beqz	s2,19240 <_svfprintf_r+0x2c8>
   19238:	415a04bb          	subw	s1,s4,s5
   1923c:	5a9048e3          	bgtz	s1,19fec <_svfprintf_r+0x1074>
   19240:	000a0713          	mv	a4,s4
   19244:	015a5463          	bge	s4,s5,1924c <_svfprintf_r+0x2d4>
   19248:	000a8713          	mv	a4,s5
   1924c:	00013683          	ld	a3,0(sp)
   19250:	00d7073b          	addw	a4,a4,a3
   19254:	00e13023          	sd	a4,0(sp)
   19258:	3e079ee3          	bnez	a5,19e54 <_svfprintf_r+0xedc>
   1925c:	00813783          	ld	a5,8(sp)
   19260:	10012423          	sw	zero,264(sp)
   19264:	00078863          	beqz	a5,19274 <_svfprintf_r+0x2fc>
   19268:	00813583          	ld	a1,8(sp)
   1926c:	000c8513          	mv	a0,s9
   19270:	cc4fa0ef          	jal	ra,13734 <_free_r>
   19274:	18010d93          	addi	s11,sp,384
   19278:	00040d13          	mv	s10,s0
   1927c:	000d4783          	lbu	a5,0(s10)
   19280:	da079ce3          	bnez	a5,19038 <_svfprintf_r+0xc0>
   19284:	11013783          	ld	a5,272(sp)
   19288:	00078463          	beqz	a5,19290 <_svfprintf_r+0x318>
   1928c:	2450106f          	j	1acd0 <_svfprintf_r+0x1d58>
   19290:	010c5783          	lhu	a5,16(s8)
   19294:	0407f793          	andi	a5,a5,64
   19298:	00078463          	beqz	a5,192a0 <_svfprintf_r+0x328>
   1929c:	1180206f          	j	1b3b4 <_svfprintf_r+0x243c>
   192a0:	26813083          	ld	ra,616(sp)
   192a4:	26013403          	ld	s0,608(sp)
   192a8:	00013503          	ld	a0,0(sp)
   192ac:	25813483          	ld	s1,600(sp)
   192b0:	25013903          	ld	s2,592(sp)
   192b4:	24813983          	ld	s3,584(sp)
   192b8:	24013a03          	ld	s4,576(sp)
   192bc:	23813a83          	ld	s5,568(sp)
   192c0:	23013b03          	ld	s6,560(sp)
   192c4:	22813b83          	ld	s7,552(sp)
   192c8:	22013c03          	ld	s8,544(sp)
   192cc:	21813c83          	ld	s9,536(sp)
   192d0:	21013d03          	ld	s10,528(sp)
   192d4:	20813d83          	ld	s11,520(sp)
   192d8:	27010113          	addi	sp,sp,624
   192dc:	00008067          	ret
   192e0:	01096913          	ori	s2,s2,16
   192e4:	00044483          	lbu	s1,0(s0)
   192e8:	0009091b          	sext.w	s2,s2
   192ec:	dd5ff06f          	j	190c0 <_svfprintf_r+0x148>
   192f0:	41a404bb          	subw	s1,s0,s10
   192f4:	d60492e3          	bnez	s1,19058 <_svfprintf_r+0xe0>
   192f8:	00044783          	lbu	a5,0(s0)
   192fc:	d9dff06f          	j	19098 <_svfprintf_r+0x120>
   19300:	10010613          	addi	a2,sp,256
   19304:	000c0593          	mv	a1,s8
   19308:	000c8513          	mv	a0,s9
   1930c:	4c9040ef          	jal	ra,1dfd4 <__ssprint_r>
   19310:	f80510e3          	bnez	a0,19290 <_svfprintf_r+0x318>
   19314:	18010d93          	addi	s11,sp,384
   19318:	d71ff06f          	j	19088 <_svfprintf_r+0x110>
   1931c:	00897793          	andi	a5,s2,8
   19320:	000b8e13          	mv	t3,s7
   19324:	00078463          	beqz	a5,1932c <_svfprintf_r+0x3b4>
   19328:	0900106f          	j	1a3b8 <_svfprintf_r+0x1440>
   1932c:	01013783          	ld	a5,16(sp)
   19330:	01713423          	sd	s7,8(sp)
   19334:	0007b507          	fld	fa0,0(a5)
   19338:	00878793          	addi	a5,a5,8
   1933c:	00f13823          	sd	a5,16(sp)
   19340:	30c080ef          	jal	ra,2164c <__extenddftf2>
   19344:	00813e03          	ld	t3,8(sp)
   19348:	0ea13823          	sd	a0,240(sp)
   1934c:	0eb13c23          	sd	a1,248(sp)
   19350:	0f010513          	addi	a0,sp,240
   19354:	01c13423          	sd	t3,8(sp)
   19358:	d00fd0ef          	jal	ra,16858 <_ldcheck>
   1935c:	0ca12c23          	sw	a0,216(sp)
   19360:	00200793          	li	a5,2
   19364:	00813e03          	ld	t3,8(sp)
   19368:	00f51463          	bne	a0,a5,19370 <_svfprintf_r+0x3f8>
   1936c:	6940106f          	j	1aa00 <_svfprintf_r+0x1a88>
   19370:	00100793          	li	a5,1
   19374:	00f51463          	bne	a0,a5,1937c <_svfprintf_r+0x404>
   19378:	0390106f          	j	1abb0 <_svfprintf_r+0x1c38>
   1937c:	06100793          	li	a5,97
   19380:	00f49463          	bne	s1,a5,19388 <_svfprintf_r+0x410>
   19384:	7610106f          	j	1b2e4 <_svfprintf_r+0x236c>
   19388:	04100793          	li	a5,65
   1938c:	00f49463          	bne	s1,a5,19394 <_svfprintf_r+0x41c>
   19390:	4350106f          	j	1afc4 <_svfprintf_r+0x204c>
   19394:	fdf4f713          	andi	a4,s1,-33
   19398:	fff00793          	li	a5,-1
   1939c:	02e13423          	sd	a4,40(sp)
   193a0:	00fe1463          	bne	t3,a5,193a8 <_svfprintf_r+0x430>
   193a4:	1790106f          	j	1ad1c <_svfprintf_r+0x1da4>
   193a8:	04700793          	li	a5,71
   193ac:	00f71463          	bne	a4,a5,193b4 <_svfprintf_r+0x43c>
   193b0:	7e90106f          	j	1b398 <_svfprintf_r+0x2420>
   193b4:	0f813a83          	ld	s5,248(sp)
   193b8:	10096793          	ori	a5,s2,256
   193bc:	03213823          	sd	s2,48(sp)
   193c0:	0f013b83          	ld	s7,240(sp)
   193c4:	0007879b          	sext.w	a5,a5
   193c8:	000ad463          	bgez	s5,193d0 <_svfprintf_r+0x458>
   193cc:	6750106f          	j	1b240 <_svfprintf_r+0x22c8>
   193d0:	06013023          	sd	zero,96(sp)
   193d4:	00078913          	mv	s2,a5
   193d8:	00013423          	sd	zero,8(sp)
   193dc:	02813703          	ld	a4,40(sp)
   193e0:	04600793          	li	a5,70
   193e4:	00f71463          	bne	a4,a5,193ec <_svfprintf_r+0x474>
   193e8:	2290106f          	j	1ae10 <_svfprintf_r+0x1e98>
   193ec:	04500793          	li	a5,69
   193f0:	00f71463          	bne	a4,a5,193f8 <_svfprintf_r+0x480>
   193f4:	7090106f          	j	1b2fc <_svfprintf_r+0x2384>
   193f8:	000e0713          	mv	a4,t3
   193fc:	0d810793          	addi	a5,sp,216
   19400:	0e810893          	addi	a7,sp,232
   19404:	0dc10813          	addi	a6,sp,220
   19408:	00200693          	li	a3,2
   1940c:	000b8593          	mv	a1,s7
   19410:	000a8613          	mv	a2,s5
   19414:	000c8513          	mv	a0,s9
   19418:	01c13c23          	sd	t3,24(sp)
   1941c:	93cfc0ef          	jal	ra,15558 <_ldtoa_r>
   19420:	02813703          	ld	a4,40(sp)
   19424:	04700793          	li	a5,71
   19428:	01813e03          	ld	t3,24(sp)
   1942c:	00050d13          	mv	s10,a0
   19430:	00f70463          	beq	a4,a5,19438 <_svfprintf_r+0x4c0>
   19434:	1a80206f          	j	1b5dc <_svfprintf_r+0x2664>
   19438:	03013783          	ld	a5,48(sp)
   1943c:	0017f793          	andi	a5,a5,1
   19440:	00078463          	beqz	a5,19448 <_svfprintf_r+0x4d0>
   19444:	6f50106f          	j	1b338 <_svfprintf_r+0x23c0>
   19448:	0e813783          	ld	a5,232(sp)
   1944c:	41a787bb          	subw	a5,a5,s10
   19450:	02f13023          	sd	a5,32(sp)
   19454:	0d812703          	lw	a4,216(sp)
   19458:	04700793          	li	a5,71
   1945c:	00e13c23          	sd	a4,24(sp)
   19460:	02813703          	ld	a4,40(sp)
   19464:	00f71463          	bne	a4,a5,1946c <_svfprintf_r+0x4f4>
   19468:	0ed0106f          	j	1ad54 <_svfprintf_r+0x1ddc>
   1946c:	02813703          	ld	a4,40(sp)
   19470:	04600793          	li	a5,70
   19474:	00f71463          	bne	a4,a5,1947c <_svfprintf_r+0x504>
   19478:	2f90106f          	j	1af70 <_svfprintf_r+0x1ff8>
   1947c:	01813783          	ld	a5,24(sp)
   19480:	02813603          	ld	a2,40(sp)
   19484:	04100713          	li	a4,65
   19488:	fff78a9b          	addiw	s5,a5,-1
   1948c:	0d512c23          	sw	s5,216(sp)
   19490:	0ff4f793          	andi	a5,s1,255
   19494:	00000693          	li	a3,0
   19498:	00e61863          	bne	a2,a4,194a8 <_svfprintf_r+0x530>
   1949c:	00f7879b          	addiw	a5,a5,15
   194a0:	0ff7f793          	andi	a5,a5,255
   194a4:	00100693          	li	a3,1
   194a8:	0ef10023          	sb	a5,224(sp)
   194ac:	02b00793          	li	a5,43
   194b0:	000ada63          	bgez	s5,194c4 <_svfprintf_r+0x54c>
   194b4:	01813703          	ld	a4,24(sp)
   194b8:	00100793          	li	a5,1
   194bc:	40e78abb          	subw	s5,a5,a4
   194c0:	02d00793          	li	a5,45
   194c4:	0ef100a3          	sb	a5,225(sp)
   194c8:	00900793          	li	a5,9
   194cc:	0157c463          	blt	a5,s5,194d4 <_svfprintf_r+0x55c>
   194d0:	7450106f          	j	1b414 <_svfprintf_r+0x249c>
   194d4:	0ef10913          	addi	s2,sp,239
   194d8:	00090b93          	mv	s7,s2
   194dc:	00813c23          	sd	s0,24(sp)
   194e0:	00a00593          	li	a1,10
   194e4:	000a8513          	mv	a0,s5
   194e8:	668080ef          	jal	ra,21b50 <__moddi3>
   194ec:	0305079b          	addiw	a5,a0,48
   194f0:	fefb8fa3          	sb	a5,-1(s7)
   194f4:	000a8513          	mv	a0,s5
   194f8:	00a00593          	li	a1,10
   194fc:	5d0080ef          	jal	ra,21acc <__divdi3>
   19500:	000a8413          	mv	s0,s5
   19504:	06300793          	li	a5,99
   19508:	000b8993          	mv	s3,s7
   1950c:	00050a9b          	sext.w	s5,a0
   19510:	fffb8b93          	addi	s7,s7,-1
   19514:	fc87c6e3          	blt	a5,s0,194e0 <_svfprintf_r+0x568>
   19518:	030a879b          	addiw	a5,s5,48
   1951c:	0ff7f693          	andi	a3,a5,255
   19520:	fedb8fa3          	sb	a3,-1(s7)
   19524:	ffe98793          	addi	a5,s3,-2
   19528:	01813403          	ld	s0,24(sp)
   1952c:	0127e463          	bltu	a5,s2,19534 <_svfprintf_r+0x5bc>
   19530:	0c40206f          	j	1b5f4 <_svfprintf_r+0x267c>
   19534:	0e210713          	addi	a4,sp,226
   19538:	0080006f          	j	19540 <_svfprintf_r+0x5c8>
   1953c:	0007c683          	lbu	a3,0(a5)
   19540:	00d70023          	sb	a3,0(a4)
   19544:	00178793          	addi	a5,a5,1
   19548:	00170713          	addi	a4,a4,1
   1954c:	ff2798e3          	bne	a5,s2,1953c <_svfprintf_r+0x5c4>
   19550:	0f110793          	addi	a5,sp,241
   19554:	0e210713          	addi	a4,sp,226
   19558:	413787b3          	sub	a5,a5,s3
   1955c:	00f707b3          	add	a5,a4,a5
   19560:	0e010713          	addi	a4,sp,224
   19564:	40e787bb          	subw	a5,a5,a4
   19568:	04f13823          	sd	a5,80(sp)
   1956c:	05013783          	ld	a5,80(sp)
   19570:	02013683          	ld	a3,32(sp)
   19574:	00100713          	li	a4,1
   19578:	00d78bbb          	addw	s7,a5,a3
   1957c:	000b8793          	mv	a5,s7
   19580:	00d74463          	blt	a4,a3,19588 <_svfprintf_r+0x610>
   19584:	7d50106f          	j	1b558 <_svfprintf_r+0x25e0>
   19588:	03813703          	ld	a4,56(sp)
   1958c:	00e78bbb          	addw	s7,a5,a4
   19590:	03013783          	ld	a5,48(sp)
   19594:	fffbca93          	not	s5,s7
   19598:	43fada93          	srai	s5,s5,0x3f
   1959c:	bff7f913          	andi	s2,a5,-1025
   195a0:	0009091b          	sext.w	s2,s2
   195a4:	015bfab3          	and	s5,s7,s5
   195a8:	10096913          	ori	s2,s2,256
   195ac:	000a8a9b          	sext.w	s5,s5
   195b0:	02013823          	sd	zero,48(sp)
   195b4:	02013423          	sd	zero,40(sp)
   195b8:	00013c23          	sd	zero,24(sp)
   195bc:	06013783          	ld	a5,96(sp)
   195c0:	00079463          	bnez	a5,195c8 <_svfprintf_r+0x650>
   195c4:	0090106f          	j	1adcc <_svfprintf_r+0x1e54>
   195c8:	02d00793          	li	a5,45
   195cc:	0cf107a3          	sb	a5,207(sp)
   195d0:	00000e13          	li	t3,0
   195d4:	001a8a9b          	addiw	s5,s5,1
   195d8:	b85ff06f          	j	1915c <_svfprintf_r+0x1e4>
   195dc:	10010613          	addi	a2,sp,256
   195e0:	000c0593          	mv	a1,s8
   195e4:	000c8513          	mv	a0,s9
   195e8:	09c13023          	sd	t3,128(sp)
   195ec:	07d13c23          	sd	t4,120(sp)
   195f0:	07e13023          	sd	t5,96(sp)
   195f4:	1e1040ef          	jal	ra,1dfd4 <__ssprint_r>
   195f8:	060518e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   195fc:	11013783          	ld	a5,272(sp)
   19600:	08013e03          	ld	t3,128(sp)
   19604:	07813e83          	ld	t4,120(sp)
   19608:	06013f03          	ld	t5,96(sp)
   1960c:	18010d93          	addi	s11,sp,384
   19610:	ba9ff06f          	j	191b8 <_svfprintf_r+0x240>
   19614:	10812683          	lw	a3,264(sp)
   19618:	02013583          	ld	a1,32(sp)
   1961c:	00178993          	addi	s3,a5,1
   19620:	00100613          	li	a2,1
   19624:	0016879b          	addiw	a5,a3,1
   19628:	01adb023          	sd	s10,0(s11)
   1962c:	00078713          	mv	a4,a5
   19630:	010d8493          	addi	s1,s11,16
   19634:	3cb65ce3          	bge	a2,a1,1a20c <_svfprintf_r+0x1294>
   19638:	00100693          	li	a3,1
   1963c:	10e12423          	sw	a4,264(sp)
   19640:	00ddb423          	sd	a3,8(s11)
   19644:	11313823          	sd	s3,272(sp)
   19648:	00700713          	li	a4,7
   1964c:	4ef74ee3          	blt	a4,a5,1a348 <_svfprintf_r+0x13d0>
   19650:	03813703          	ld	a4,56(sp)
   19654:	04013683          	ld	a3,64(sp)
   19658:	00178b9b          	addiw	s7,a5,1
   1965c:	00e989b3          	add	s3,s3,a4
   19660:	00d4b023          	sd	a3,0(s1)
   19664:	00e4b423          	sd	a4,8(s1)
   19668:	11313823          	sd	s3,272(sp)
   1966c:	11712423          	sw	s7,264(sp)
   19670:	00700793          	li	a5,7
   19674:	01048493          	addi	s1,s1,16
   19678:	4f77cae3          	blt	a5,s7,1a36c <_svfprintf_r+0x13f4>
   1967c:	0f013503          	ld	a0,240(sp)
   19680:	0f813583          	ld	a1,248(sp)
   19684:	001b871b          	addiw	a4,s7,1
   19688:	00000693          	li	a3,0
   1968c:	00000613          	li	a2,0
   19690:	00e12c23          	sw	a4,24(sp)
   19694:	7b0060ef          	jal	ra,1fe44 <__eqtf2>
   19698:	01812703          	lw	a4,24(sp)
   1969c:	02013783          	ld	a5,32(sp)
   196a0:	01048d93          	addi	s11,s1,16
   196a4:	0007069b          	sext.w	a3,a4
   196a8:	fff7879b          	addiw	a5,a5,-1
   196ac:	3a0500e3          	beqz	a0,1a24c <_svfprintf_r+0x12d4>
   196b0:	00f989b3          	add	s3,s3,a5
   196b4:	001d0813          	addi	a6,s10,1
   196b8:	00f4b423          	sd	a5,8(s1)
   196bc:	0104b023          	sd	a6,0(s1)
   196c0:	11313823          	sd	s3,272(sp)
   196c4:	10e12423          	sw	a4,264(sp)
   196c8:	00700793          	li	a5,7
   196cc:	00d7d463          	bge	a5,a3,196d4 <_svfprintf_r+0x75c>
   196d0:	07c0106f          	j	1a74c <_svfprintf_r+0x17d4>
   196d4:	02048793          	addi	a5,s1,32
   196d8:	002b869b          	addiw	a3,s7,2
   196dc:	000d8493          	mv	s1,s11
   196e0:	00078d93          	mv	s11,a5
   196e4:	05013603          	ld	a2,80(sp)
   196e8:	0e010713          	addi	a4,sp,224
   196ec:	00e4b023          	sd	a4,0(s1)
   196f0:	013607b3          	add	a5,a2,s3
   196f4:	00c4b423          	sd	a2,8(s1)
   196f8:	10f13823          	sd	a5,272(sp)
   196fc:	10d12423          	sw	a3,264(sp)
   19700:	00700713          	li	a4,7
   19704:	b2d756e3          	bge	a4,a3,19230 <_svfprintf_r+0x2b8>
   19708:	10010613          	addi	a2,sp,256
   1970c:	000c0593          	mv	a1,s8
   19710:	000c8513          	mv	a0,s9
   19714:	0c1040ef          	jal	ra,1dfd4 <__ssprint_r>
   19718:	74051863          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1971c:	11013783          	ld	a5,272(sp)
   19720:	18010d93          	addi	s11,sp,384
   19724:	b0dff06f          	j	19230 <_svfprintf_r+0x2b8>
   19728:	01013703          	ld	a4,16(sp)
   1972c:	0c0107a3          	sb	zero,207(sp)
   19730:	00100a93          	li	s5,1
   19734:	00072783          	lw	a5,0(a4)
   19738:	00870713          	addi	a4,a4,8
   1973c:	00e13823          	sd	a4,16(sp)
   19740:	10f10c23          	sb	a5,280(sp)
   19744:	00100b93          	li	s7,1
   19748:	11810d13          	addi	s10,sp,280
   1974c:	9fdff06f          	j	19148 <_svfprintf_r+0x1d0>
   19750:	01013783          	ld	a5,16(sp)
   19754:	0c0107a3          	sb	zero,207(sp)
   19758:	000b8e13          	mv	t3,s7
   1975c:	0007bd03          	ld	s10,0(a5)
   19760:	00878993          	addi	s3,a5,8
   19764:	000d1463          	bnez	s10,1976c <_svfprintf_r+0x7f4>
   19768:	2f40106f          	j	1aa5c <_svfprintf_r+0x1ae4>
   1976c:	fff00793          	li	a5,-1
   19770:	5afb82e3          	beq	s7,a5,1a514 <_svfprintf_r+0x159c>
   19774:	000b8613          	mv	a2,s7
   19778:	00000593          	li	a1,0
   1977c:	000d0513          	mv	a0,s10
   19780:	01713823          	sd	s7,16(sp)
   19784:	d39fd0ef          	jal	ra,174bc <memchr>
   19788:	00a13423          	sd	a0,8(sp)
   1978c:	01013e03          	ld	t3,16(sp)
   19790:	00051463          	bnez	a0,19798 <_svfprintf_r+0x820>
   19794:	7780106f          	j	1af0c <_svfprintf_r+0x1f94>
   19798:	00813783          	ld	a5,8(sp)
   1979c:	41a78bbb          	subw	s7,a5,s10
   197a0:	0cf14783          	lbu	a5,207(sp)
   197a4:	fffbca93          	not	s5,s7
   197a8:	43fada93          	srai	s5,s5,0x3f
   197ac:	01313823          	sd	s3,16(sp)
   197b0:	00013423          	sd	zero,8(sp)
   197b4:	02013823          	sd	zero,48(sp)
   197b8:	02013423          	sd	zero,40(sp)
   197bc:	00013c23          	sd	zero,24(sp)
   197c0:	017afab3          	and	s5,s5,s7
   197c4:	00000e13          	li	t3,0
   197c8:	98078ae3          	beqz	a5,1915c <_svfprintf_r+0x1e4>
   197cc:	001a8a9b          	addiw	s5,s5,1
   197d0:	98dff06f          	j	1915c <_svfprintf_r+0x1e4>
   197d4:	01096913          	ori	s2,s2,16
   197d8:	000b8e13          	mv	t3,s7
   197dc:	0009091b          	sext.w	s2,s2
   197e0:	01013703          	ld	a4,16(sp)
   197e4:	02097793          	andi	a5,s2,32
   197e8:	00870693          	addi	a3,a4,8
   197ec:	2c0788e3          	beqz	a5,1a2bc <_svfprintf_r+0x1344>
   197f0:	00073983          	ld	s3,0(a4)
   197f4:	bff97713          	andi	a4,s2,-1025
   197f8:	00070a9b          	sext.w	s5,a4
   197fc:	00d13823          	sd	a3,16(sp)
   19800:	00000793          	li	a5,0
   19804:	0c0107a3          	sb	zero,207(sp)
   19808:	fff00693          	li	a3,-1
   1980c:	2cde0c63          	beq	t3,a3,19ae4 <_svfprintf_r+0xb6c>
   19810:	f7faf913          	andi	s2,s5,-129
   19814:	0009091b          	sext.w	s2,s2
   19818:	2c099463          	bnez	s3,19ae0 <_svfprintf_r+0xb68>
   1981c:	420e1c63          	bnez	t3,19c54 <_svfprintf_r+0xcdc>
   19820:	20079ee3          	bnez	a5,1a23c <_svfprintf_r+0x12c4>
   19824:	001afb93          	andi	s7,s5,1
   19828:	17c10d13          	addi	s10,sp,380
   1982c:	360b9ee3          	bnez	s7,1a3a8 <_svfprintf_r+0x1430>
   19830:	0cf14783          	lbu	a5,207(sp)
   19834:	000b8a9b          	sext.w	s5,s7
   19838:	01cbd463          	bge	s7,t3,19840 <_svfprintf_r+0x8c8>
   1983c:	000e0a9b          	sext.w	s5,t3
   19840:	00013423          	sd	zero,8(sp)
   19844:	02013823          	sd	zero,48(sp)
   19848:	02013423          	sd	zero,40(sp)
   1984c:	00013c23          	sd	zero,24(sp)
   19850:	f6079ee3          	bnez	a5,197cc <_svfprintf_r+0x854>
   19854:	909ff06f          	j	1915c <_svfprintf_r+0x1e4>
   19858:	00044483          	lbu	s1,0(s0)
   1985c:	06800793          	li	a5,104
   19860:	44f484e3          	beq	s1,a5,1a4a8 <_svfprintf_r+0x1530>
   19864:	04096913          	ori	s2,s2,64
   19868:	0009091b          	sext.w	s2,s2
   1986c:	855ff06f          	j	190c0 <_svfprintf_r+0x148>
   19870:	01013683          	ld	a3,16(sp)
   19874:	02097793          	andi	a5,s2,32
   19878:	0006b703          	ld	a4,0(a3)
   1987c:	00868693          	addi	a3,a3,8
   19880:	00d13823          	sd	a3,16(sp)
   19884:	02079a63          	bnez	a5,198b8 <_svfprintf_r+0x940>
   19888:	01097793          	andi	a5,s2,16
   1988c:	02079663          	bnez	a5,198b8 <_svfprintf_r+0x940>
   19890:	04097793          	andi	a5,s2,64
   19894:	00078463          	beqz	a5,1989c <_svfprintf_r+0x924>
   19898:	3ec0106f          	j	1ac84 <_svfprintf_r+0x1d0c>
   1989c:	20097913          	andi	s2,s2,512
   198a0:	00013783          	ld	a5,0(sp)
   198a4:	00091463          	bnez	s2,198ac <_svfprintf_r+0x934>
   198a8:	3010106f          	j	1b3a8 <_svfprintf_r+0x2430>
   198ac:	00f70023          	sb	a5,0(a4)
   198b0:	00040d13          	mv	s10,s0
   198b4:	9c9ff06f          	j	1927c <_svfprintf_r+0x304>
   198b8:	00013783          	ld	a5,0(sp)
   198bc:	00040d13          	mv	s10,s0
   198c0:	00f73023          	sd	a5,0(a4)
   198c4:	9b9ff06f          	j	1927c <_svfprintf_r+0x304>
   198c8:	00044483          	lbu	s1,0(s0)
   198cc:	06c00793          	li	a5,108
   198d0:	3ef48ae3          	beq	s1,a5,1a4c4 <_svfprintf_r+0x154c>
   198d4:	01096913          	ori	s2,s2,16
   198d8:	0009091b          	sext.w	s2,s2
   198dc:	fe4ff06f          	j	190c0 <_svfprintf_r+0x148>
   198e0:	02096913          	ori	s2,s2,32
   198e4:	00044483          	lbu	s1,0(s0)
   198e8:	0009091b          	sext.w	s2,s2
   198ec:	fd4ff06f          	j	190c0 <_svfprintf_r+0x148>
   198f0:	01013683          	ld	a3,16(sp)
   198f4:	ffff87b7          	lui	a5,0xffff8
   198f8:	8307c793          	xori	a5,a5,-2000
   198fc:	0cf11823          	sh	a5,208(sp)
   19900:	00868793          	addi	a5,a3,8
   19904:	00296713          	ori	a4,s2,2
   19908:	00f13823          	sd	a5,16(sp)
   1990c:	00008797          	auipc	a5,0x8
   19910:	31c78793          	addi	a5,a5,796 # 21c28 <__clzdi2+0x9c>
   19914:	04f13423          	sd	a5,72(sp)
   19918:	0006b983          	ld	s3,0(a3)
   1991c:	000b8e13          	mv	t3,s7
   19920:	00070a9b          	sext.w	s5,a4
   19924:	00200793          	li	a5,2
   19928:	07800493          	li	s1,120
   1992c:	ed9ff06f          	j	19804 <_svfprintf_r+0x88c>
   19930:	01096713          	ori	a4,s2,16
   19934:	000b8e13          	mv	t3,s7
   19938:	00070a9b          	sext.w	s5,a4
   1993c:	01013703          	ld	a4,16(sp)
   19940:	020af793          	andi	a5,s5,32
   19944:	00870693          	addi	a3,a4,8
   19948:	1c078ae3          	beqz	a5,1a31c <_svfprintf_r+0x13a4>
   1994c:	00073983          	ld	s3,0(a4)
   19950:	00100793          	li	a5,1
   19954:	00d13823          	sd	a3,16(sp)
   19958:	eadff06f          	j	19804 <_svfprintf_r+0x88c>
   1995c:	00896913          	ori	s2,s2,8
   19960:	00044483          	lbu	s1,0(s0)
   19964:	0009091b          	sext.w	s2,s2
   19968:	f58ff06f          	j	190c0 <_svfprintf_r+0x148>
   1996c:	08096913          	ori	s2,s2,128
   19970:	00044483          	lbu	s1,0(s0)
   19974:	0009091b          	sext.w	s2,s2
   19978:	f48ff06f          	j	190c0 <_svfprintf_r+0x148>
   1997c:	00044483          	lbu	s1,0(s0)
   19980:	00140793          	addi	a5,s0,1
   19984:	01549463          	bne	s1,s5,1998c <_svfprintf_r+0xa14>
   19988:	4290106f          	j	1b5b0 <_svfprintf_r+0x2638>
   1998c:	fd04871b          	addiw	a4,s1,-48
   19990:	00078413          	mv	s0,a5
   19994:	00000b93          	li	s7,0
   19998:	f2e9ea63          	bltu	s3,a4,190cc <_svfprintf_r+0x154>
   1999c:	00044603          	lbu	a2,0(s0)
   199a0:	002b979b          	slliw	a5,s7,0x2
   199a4:	017787bb          	addw	a5,a5,s7
   199a8:	0017979b          	slliw	a5,a5,0x1
   199ac:	00e78bbb          	addw	s7,a5,a4
   199b0:	fd06071b          	addiw	a4,a2,-48
   199b4:	00140413          	addi	s0,s0,1
   199b8:	fee9f2e3          	bgeu	s3,a4,1999c <_svfprintf_r+0xa24>
   199bc:	00060493          	mv	s1,a2
   199c0:	f0cff06f          	j	190cc <_svfprintf_r+0x154>
   199c4:	00044483          	lbu	s1,0(s0)
   199c8:	00496913          	ori	s2,s2,4
   199cc:	0009091b          	sext.w	s2,s2
   199d0:	ef0ff06f          	j	190c0 <_svfprintf_r+0x148>
   199d4:	02b00793          	li	a5,43
   199d8:	00044483          	lbu	s1,0(s0)
   199dc:	0cf107a3          	sb	a5,207(sp)
   199e0:	ee0ff06f          	j	190c0 <_svfprintf_r+0x148>
   199e4:	01013783          	ld	a5,16(sp)
   199e8:	00044483          	lbu	s1,0(s0)
   199ec:	0007aa03          	lw	s4,0(a5)
   199f0:	00878793          	addi	a5,a5,8
   199f4:	00f13823          	sd	a5,16(sp)
   199f8:	ec0a5463          	bgez	s4,190c0 <_svfprintf_r+0x148>
   199fc:	41400a3b          	negw	s4,s4
   19a00:	fc9ff06f          	j	199c8 <_svfprintf_r+0xa50>
   19a04:	000c8513          	mv	a0,s9
   19a08:	ec1fc0ef          	jal	ra,168c8 <_localeconv_r>
   19a0c:	00853783          	ld	a5,8(a0)
   19a10:	00078513          	mv	a0,a5
   19a14:	06f13823          	sd	a5,112(sp)
   19a18:	becff0ef          	jal	ra,18e04 <strlen>
   19a1c:	00050793          	mv	a5,a0
   19a20:	000c8513          	mv	a0,s9
   19a24:	00078493          	mv	s1,a5
   19a28:	06f13423          	sd	a5,104(sp)
   19a2c:	e9dfc0ef          	jal	ra,168c8 <_localeconv_r>
   19a30:	01053783          	ld	a5,16(a0)
   19a34:	04f13c23          	sd	a5,88(sp)
   19a38:	1c048ce3          	beqz	s1,1a410 <_svfprintf_r+0x1498>
   19a3c:	00044483          	lbu	s1,0(s0)
   19a40:	e8078063          	beqz	a5,190c0 <_svfprintf_r+0x148>
   19a44:	0007c783          	lbu	a5,0(a5)
   19a48:	e6078c63          	beqz	a5,190c0 <_svfprintf_r+0x148>
   19a4c:	40096913          	ori	s2,s2,1024
   19a50:	0009091b          	sext.w	s2,s2
   19a54:	e6cff06f          	j	190c0 <_svfprintf_r+0x148>
   19a58:	00196913          	ori	s2,s2,1
   19a5c:	00044483          	lbu	s1,0(s0)
   19a60:	0009091b          	sext.w	s2,s2
   19a64:	e5cff06f          	j	190c0 <_svfprintf_r+0x148>
   19a68:	0cf14783          	lbu	a5,207(sp)
   19a6c:	00044483          	lbu	s1,0(s0)
   19a70:	e4079863          	bnez	a5,190c0 <_svfprintf_r+0x148>
   19a74:	02000793          	li	a5,32
   19a78:	0cf107a3          	sb	a5,207(sp)
   19a7c:	e44ff06f          	j	190c0 <_svfprintf_r+0x148>
   19a80:	01096913          	ori	s2,s2,16
   19a84:	000b8e13          	mv	t3,s7
   19a88:	0009091b          	sext.w	s2,s2
   19a8c:	01013703          	ld	a4,16(sp)
   19a90:	02097793          	andi	a5,s2,32
   19a94:	00870693          	addi	a3,a4,8
   19a98:	040784e3          	beqz	a5,1a2e0 <_svfprintf_r+0x1368>
   19a9c:	00073783          	ld	a5,0(a4)
   19aa0:	00078993          	mv	s3,a5
   19aa4:	0407cee3          	bltz	a5,1a300 <_svfprintf_r+0x1388>
   19aa8:	fff00793          	li	a5,-1
   19aac:	6cfe00e3          	beq	t3,a5,1a96c <_svfprintf_r+0x19f4>
   19ab0:	f7f97713          	andi	a4,s2,-129
   19ab4:	00d13823          	sd	a3,16(sp)
   19ab8:	00070a9b          	sext.w	s5,a4
   19abc:	76098c63          	beqz	s3,1a234 <_svfprintf_r+0x12bc>
   19ac0:	00900793          	li	a5,9
   19ac4:	4b37eae3          	bltu	a5,s3,1a778 <_svfprintf_r+0x1800>
   19ac8:	0309899b          	addiw	s3,s3,48
   19acc:	17310da3          	sb	s3,379(sp)
   19ad0:	000a8913          	mv	s2,s5
   19ad4:	00100b93          	li	s7,1
   19ad8:	17b10d13          	addi	s10,sp,379
   19adc:	d55ff06f          	j	19830 <_svfprintf_r+0x8b8>
   19ae0:	00090a93          	mv	s5,s2
   19ae4:	00100693          	li	a3,1
   19ae8:	fcd78ce3          	beq	a5,a3,19ac0 <_svfprintf_r+0xb48>
   19aec:	00200693          	li	a3,2
   19af0:	16d78e63          	beq	a5,a3,19c6c <_svfprintf_r+0xcf4>
   19af4:	17c10b93          	addi	s7,sp,380
   19af8:	000b8d13          	mv	s10,s7
   19afc:	0079f793          	andi	a5,s3,7
   19b00:	03078793          	addi	a5,a5,48
   19b04:	fefd0fa3          	sb	a5,-1(s10)
   19b08:	0039d993          	srli	s3,s3,0x3
   19b0c:	000d0693          	mv	a3,s10
   19b10:	fffd0d13          	addi	s10,s10,-1
   19b14:	fe0994e3          	bnez	s3,19afc <_svfprintf_r+0xb84>
   19b18:	001af613          	andi	a2,s5,1
   19b1c:	16060c63          	beqz	a2,19c94 <_svfprintf_r+0xd1c>
   19b20:	03000613          	li	a2,48
   19b24:	16c78863          	beq	a5,a2,19c94 <_svfprintf_r+0xd1c>
   19b28:	ffe68693          	addi	a3,a3,-2
   19b2c:	fecd0fa3          	sb	a2,-1(s10)
   19b30:	40db8bbb          	subw	s7,s7,a3
   19b34:	000a8913          	mv	s2,s5
   19b38:	00068d13          	mv	s10,a3
   19b3c:	cf5ff06f          	j	19830 <_svfprintf_r+0x8b8>
   19b40:	06500713          	li	a4,101
   19b44:	ac9758e3          	bge	a4,s1,19614 <_svfprintf_r+0x69c>
   19b48:	0f013503          	ld	a0,240(sp)
   19b4c:	0f813583          	ld	a1,248(sp)
   19b50:	00000613          	li	a2,0
   19b54:	00000693          	li	a3,0
   19b58:	06f13023          	sd	a5,96(sp)
   19b5c:	2e8060ef          	jal	ra,1fe44 <__eqtf2>
   19b60:	06013783          	ld	a5,96(sp)
   19b64:	52051663          	bnez	a0,1a090 <_svfprintf_r+0x1118>
   19b68:	10812703          	lw	a4,264(sp)
   19b6c:	00008697          	auipc	a3,0x8
   19b70:	0dc68693          	addi	a3,a3,220 # 21c48 <__clzdi2+0xbc>
   19b74:	00ddb023          	sd	a3,0(s11)
   19b78:	0017071b          	addiw	a4,a4,1
   19b7c:	00100693          	li	a3,1
   19b80:	00178793          	addi	a5,a5,1
   19b84:	00ddb423          	sd	a3,8(s11)
   19b88:	10e12423          	sw	a4,264(sp)
   19b8c:	0007069b          	sext.w	a3,a4
   19b90:	10f13823          	sd	a5,272(sp)
   19b94:	00700713          	li	a4,7
   19b98:	010d8d93          	addi	s11,s11,16
   19b9c:	5cd74ee3          	blt	a4,a3,1a978 <_svfprintf_r+0x1a00>
   19ba0:	0d812703          	lw	a4,216(sp)
   19ba4:	02013683          	ld	a3,32(sp)
   19ba8:	7ed75463          	bge	a4,a3,1a390 <_svfprintf_r+0x1418>
   19bac:	04013703          	ld	a4,64(sp)
   19bb0:	03813683          	ld	a3,56(sp)
   19bb4:	010d8d93          	addi	s11,s11,16
   19bb8:	feedb823          	sd	a4,-16(s11)
   19bbc:	10812703          	lw	a4,264(sp)
   19bc0:	00d787b3          	add	a5,a5,a3
   19bc4:	feddbc23          	sd	a3,-8(s11)
   19bc8:	0017071b          	addiw	a4,a4,1
   19bcc:	0007069b          	sext.w	a3,a4
   19bd0:	10e12423          	sw	a4,264(sp)
   19bd4:	10f13823          	sd	a5,272(sp)
   19bd8:	00700713          	li	a4,7
   19bdc:	0ad746e3          	blt	a4,a3,1a488 <_svfprintf_r+0x1510>
   19be0:	02013703          	ld	a4,32(sp)
   19be4:	fff7049b          	addiw	s1,a4,-1
   19be8:	e4905463          	blez	s1,19230 <_svfprintf_r+0x2b8>
   19bec:	10812703          	lw	a4,264(sp)
   19bf0:	5a9b54e3          	bge	s6,s1,1a998 <_svfprintf_r+0x1a20>
   19bf4:	00700993          	li	s3,7
   19bf8:	00c0006f          	j	19c04 <_svfprintf_r+0xc8c>
   19bfc:	ff04849b          	addiw	s1,s1,-16
   19c00:	589b5ce3          	bge	s6,s1,1a998 <_svfprintf_r+0x1a20>
   19c04:	0017069b          	addiw	a3,a4,1
   19c08:	01078793          	addi	a5,a5,16
   19c0c:	00009717          	auipc	a4,0x9
   19c10:	83470713          	addi	a4,a4,-1996 # 22440 <zeroes.0>
   19c14:	00edb023          	sd	a4,0(s11)
   19c18:	016db423          	sd	s6,8(s11)
   19c1c:	10f13823          	sd	a5,272(sp)
   19c20:	0006871b          	sext.w	a4,a3
   19c24:	10d12423          	sw	a3,264(sp)
   19c28:	010d8d93          	addi	s11,s11,16
   19c2c:	fce9d8e3          	bge	s3,a4,19bfc <_svfprintf_r+0xc84>
   19c30:	10010613          	addi	a2,sp,256
   19c34:	000c0593          	mv	a1,s8
   19c38:	000c8513          	mv	a0,s9
   19c3c:	398040ef          	jal	ra,1dfd4 <__ssprint_r>
   19c40:	22051463          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   19c44:	11013783          	ld	a5,272(sp)
   19c48:	10812703          	lw	a4,264(sp)
   19c4c:	18010d93          	addi	s11,sp,384
   19c50:	fadff06f          	j	19bfc <_svfprintf_r+0xc84>
   19c54:	00100713          	li	a4,1
   19c58:	00e79463          	bne	a5,a4,19c60 <_svfprintf_r+0xce8>
   19c5c:	6980106f          	j	1b2f4 <_svfprintf_r+0x237c>
   19c60:	00200713          	li	a4,2
   19c64:	00090a93          	mv	s5,s2
   19c68:	e8e796e3          	bne	a5,a4,19af4 <_svfprintf_r+0xb7c>
   19c6c:	04813703          	ld	a4,72(sp)
   19c70:	17c10b93          	addi	s7,sp,380
   19c74:	000b8d13          	mv	s10,s7
   19c78:	00f9f793          	andi	a5,s3,15
   19c7c:	00f707b3          	add	a5,a4,a5
   19c80:	0007c783          	lbu	a5,0(a5)
   19c84:	0049d993          	srli	s3,s3,0x4
   19c88:	fffd0d13          	addi	s10,s10,-1
   19c8c:	00fd0023          	sb	a5,0(s10)
   19c90:	fe0994e3          	bnez	s3,19c78 <_svfprintf_r+0xd00>
   19c94:	41ab8bbb          	subw	s7,s7,s10
   19c98:	000a8913          	mv	s2,s5
   19c9c:	b95ff06f          	j	19830 <_svfprintf_r+0x8b8>
   19ca0:	415a09bb          	subw	s3,s4,s5
   19ca4:	d5305a63          	blez	s3,191f8 <_svfprintf_r+0x280>
   19ca8:	10812703          	lw	a4,264(sp)
   19cac:	093b5663          	bge	s6,s3,19d38 <_svfprintf_r+0xdc0>
   19cb0:	06813023          	sd	s0,96(sp)
   19cb4:	00700893          	li	a7,7
   19cb8:	000c0413          	mv	s0,s8
   19cbc:	00098c13          	mv	s8,s3
   19cc0:	000e0993          	mv	s3,t3
   19cc4:	00c0006f          	j	19cd0 <_svfprintf_r+0xd58>
   19cc8:	ff0c0c1b          	addiw	s8,s8,-16
   19ccc:	058b5e63          	bge	s6,s8,19d28 <_svfprintf_r+0xdb0>
   19cd0:	0017069b          	addiw	a3,a4,1
   19cd4:	01078793          	addi	a5,a5,16
   19cd8:	00008717          	auipc	a4,0x8
   19cdc:	76870713          	addi	a4,a4,1896 # 22440 <zeroes.0>
   19ce0:	00edb023          	sd	a4,0(s11)
   19ce4:	016db423          	sd	s6,8(s11)
   19ce8:	10f13823          	sd	a5,272(sp)
   19cec:	0006871b          	sext.w	a4,a3
   19cf0:	10d12423          	sw	a3,264(sp)
   19cf4:	010d8d93          	addi	s11,s11,16
   19cf8:	fce8d8e3          	bge	a7,a4,19cc8 <_svfprintf_r+0xd50>
   19cfc:	10010613          	addi	a2,sp,256
   19d00:	00040593          	mv	a1,s0
   19d04:	000c8513          	mv	a0,s9
   19d08:	2cc040ef          	jal	ra,1dfd4 <__ssprint_r>
   19d0c:	4e0516e3          	bnez	a0,1a9f8 <_svfprintf_r+0x1a80>
   19d10:	ff0c0c1b          	addiw	s8,s8,-16
   19d14:	11013783          	ld	a5,272(sp)
   19d18:	10812703          	lw	a4,264(sp)
   19d1c:	18010d93          	addi	s11,sp,384
   19d20:	00700893          	li	a7,7
   19d24:	fb8b46e3          	blt	s6,s8,19cd0 <_svfprintf_r+0xd58>
   19d28:	00098e13          	mv	t3,s3
   19d2c:	000c0993          	mv	s3,s8
   19d30:	00040c13          	mv	s8,s0
   19d34:	06013403          	ld	s0,96(sp)
   19d38:	0017071b          	addiw	a4,a4,1
   19d3c:	00008697          	auipc	a3,0x8
   19d40:	70468693          	addi	a3,a3,1796 # 22440 <zeroes.0>
   19d44:	013787b3          	add	a5,a5,s3
   19d48:	00ddb023          	sd	a3,0(s11)
   19d4c:	013db423          	sd	s3,8(s11)
   19d50:	0007069b          	sext.w	a3,a4
   19d54:	10e12423          	sw	a4,264(sp)
   19d58:	10f13823          	sd	a5,272(sp)
   19d5c:	00700713          	li	a4,7
   19d60:	010d8d93          	addi	s11,s11,16
   19d64:	c8d75a63          	bge	a4,a3,191f8 <_svfprintf_r+0x280>
   19d68:	10010613          	addi	a2,sp,256
   19d6c:	000c0593          	mv	a1,s8
   19d70:	000c8513          	mv	a0,s9
   19d74:	07c13023          	sd	t3,96(sp)
   19d78:	25c040ef          	jal	ra,1dfd4 <__ssprint_r>
   19d7c:	0e051663          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   19d80:	06013e03          	ld	t3,96(sp)
   19d84:	11013783          	ld	a5,272(sp)
   19d88:	18010d93          	addi	s11,sp,384
   19d8c:	417e09bb          	subw	s3,t3,s7
   19d90:	c7305863          	blez	s3,19200 <_svfprintf_r+0x288>
   19d94:	10812703          	lw	a4,264(sp)
   19d98:	073b5663          	bge	s6,s3,19e04 <_svfprintf_r+0xe8c>
   19d9c:	00700893          	li	a7,7
   19da0:	00c0006f          	j	19dac <_svfprintf_r+0xe34>
   19da4:	ff09899b          	addiw	s3,s3,-16
   19da8:	053b5e63          	bge	s6,s3,19e04 <_svfprintf_r+0xe8c>
   19dac:	0017069b          	addiw	a3,a4,1
   19db0:	01078793          	addi	a5,a5,16
   19db4:	00008717          	auipc	a4,0x8
   19db8:	68c70713          	addi	a4,a4,1676 # 22440 <zeroes.0>
   19dbc:	00edb023          	sd	a4,0(s11)
   19dc0:	016db423          	sd	s6,8(s11)
   19dc4:	10f13823          	sd	a5,272(sp)
   19dc8:	0006871b          	sext.w	a4,a3
   19dcc:	10d12423          	sw	a3,264(sp)
   19dd0:	010d8d93          	addi	s11,s11,16
   19dd4:	fce8d8e3          	bge	a7,a4,19da4 <_svfprintf_r+0xe2c>
   19dd8:	10010613          	addi	a2,sp,256
   19ddc:	000c0593          	mv	a1,s8
   19de0:	000c8513          	mv	a0,s9
   19de4:	1f0040ef          	jal	ra,1dfd4 <__ssprint_r>
   19de8:	08051063          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   19dec:	ff09899b          	addiw	s3,s3,-16
   19df0:	11013783          	ld	a5,272(sp)
   19df4:	10812703          	lw	a4,264(sp)
   19df8:	18010d93          	addi	s11,sp,384
   19dfc:	00700893          	li	a7,7
   19e00:	fb3b46e3          	blt	s6,s3,19dac <_svfprintf_r+0xe34>
   19e04:	0017071b          	addiw	a4,a4,1
   19e08:	00008697          	auipc	a3,0x8
   19e0c:	63868693          	addi	a3,a3,1592 # 22440 <zeroes.0>
   19e10:	013787b3          	add	a5,a5,s3
   19e14:	00ddb023          	sd	a3,0(s11)
   19e18:	013db423          	sd	s3,8(s11)
   19e1c:	0007069b          	sext.w	a3,a4
   19e20:	10e12423          	sw	a4,264(sp)
   19e24:	10f13823          	sd	a5,272(sp)
   19e28:	00700713          	li	a4,7
   19e2c:	010d8d93          	addi	s11,s11,16
   19e30:	bcd75863          	bge	a4,a3,19200 <_svfprintf_r+0x288>
   19e34:	10010613          	addi	a2,sp,256
   19e38:	000c0593          	mv	a1,s8
   19e3c:	000c8513          	mv	a0,s9
   19e40:	194040ef          	jal	ra,1dfd4 <__ssprint_r>
   19e44:	02051263          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   19e48:	11013783          	ld	a5,272(sp)
   19e4c:	18010d93          	addi	s11,sp,384
   19e50:	bb0ff06f          	j	19200 <_svfprintf_r+0x288>
   19e54:	10010613          	addi	a2,sp,256
   19e58:	000c0593          	mv	a1,s8
   19e5c:	000c8513          	mv	a0,s9
   19e60:	174040ef          	jal	ra,1dfd4 <__ssprint_r>
   19e64:	be050c63          	beqz	a0,1925c <_svfprintf_r+0x2e4>
   19e68:	00813783          	ld	a5,8(sp)
   19e6c:	c2078263          	beqz	a5,19290 <_svfprintf_r+0x318>
   19e70:	00813583          	ld	a1,8(sp)
   19e74:	000c8513          	mv	a0,s9
   19e78:	8bdf90ef          	jal	ra,13734 <_free_r>
   19e7c:	c14ff06f          	j	19290 <_svfprintf_r+0x318>
   19e80:	10812703          	lw	a4,264(sp)
   19e84:	00008997          	auipc	s3,0x8
   19e88:	5ac98993          	addi	s3,s3,1452 # 22430 <blanks.1>
   19e8c:	0cdb5863          	bge	s6,a3,19f5c <_svfprintf_r+0xfe4>
   19e90:	08813423          	sd	s0,136(sp)
   19e94:	00068413          	mv	s0,a3
   19e98:	000c0693          	mv	a3,s8
   19e9c:	08913023          	sd	s1,128(sp)
   19ea0:	000a8c13          	mv	s8,s5
   19ea4:	000c8493          	mv	s1,s9
   19ea8:	000a0a93          	mv	s5,s4
   19eac:	000d0c93          	mv	s9,s10
   19eb0:	00090a13          	mv	s4,s2
   19eb4:	000b8d13          	mv	s10,s7
   19eb8:	00700f93          	li	t6,7
   19ebc:	07e13023          	sd	t5,96(sp)
   19ec0:	07d13c23          	sd	t4,120(sp)
   19ec4:	000e0b93          	mv	s7,t3
   19ec8:	00068913          	mv	s2,a3
   19ecc:	00c0006f          	j	19ed8 <_svfprintf_r+0xf60>
   19ed0:	ff04041b          	addiw	s0,s0,-16
   19ed4:	048b5863          	bge	s6,s0,19f24 <_svfprintf_r+0xfac>
   19ed8:	0017071b          	addiw	a4,a4,1
   19edc:	01078793          	addi	a5,a5,16
   19ee0:	013db023          	sd	s3,0(s11)
   19ee4:	016db423          	sd	s6,8(s11)
   19ee8:	10f13823          	sd	a5,272(sp)
   19eec:	10e12423          	sw	a4,264(sp)
   19ef0:	010d8d93          	addi	s11,s11,16
   19ef4:	fcefdee3          	bge	t6,a4,19ed0 <_svfprintf_r+0xf58>
   19ef8:	10010613          	addi	a2,sp,256
   19efc:	00090593          	mv	a1,s2
   19f00:	00048513          	mv	a0,s1
   19f04:	0d0040ef          	jal	ra,1dfd4 <__ssprint_r>
   19f08:	22051ee3          	bnez	a0,1a944 <_svfprintf_r+0x19cc>
   19f0c:	ff04041b          	addiw	s0,s0,-16
   19f10:	11013783          	ld	a5,272(sp)
   19f14:	10812703          	lw	a4,264(sp)
   19f18:	18010d93          	addi	s11,sp,384
   19f1c:	00700f93          	li	t6,7
   19f20:	fa8b4ce3          	blt	s6,s0,19ed8 <_svfprintf_r+0xf60>
   19f24:	000b8e13          	mv	t3,s7
   19f28:	00040693          	mv	a3,s0
   19f2c:	000d0b93          	mv	s7,s10
   19f30:	06013f03          	ld	t5,96(sp)
   19f34:	000c8d13          	mv	s10,s9
   19f38:	07813e83          	ld	t4,120(sp)
   19f3c:	00048c93          	mv	s9,s1
   19f40:	08813403          	ld	s0,136(sp)
   19f44:	08013483          	ld	s1,128(sp)
   19f48:	00090613          	mv	a2,s2
   19f4c:	000a0913          	mv	s2,s4
   19f50:	000a8a13          	mv	s4,s5
   19f54:	000c0a93          	mv	s5,s8
   19f58:	00060c13          	mv	s8,a2
   19f5c:	0017071b          	addiw	a4,a4,1
   19f60:	00d787b3          	add	a5,a5,a3
   19f64:	00ddb423          	sd	a3,8(s11)
   19f68:	013db023          	sd	s3,0(s11)
   19f6c:	0007069b          	sext.w	a3,a4
   19f70:	10e12423          	sw	a4,264(sp)
   19f74:	10f13823          	sd	a5,272(sp)
   19f78:	00700713          	li	a4,7
   19f7c:	010d8d93          	addi	s11,s11,16
   19f80:	9ed75e63          	bge	a4,a3,1917c <_svfprintf_r+0x204>
   19f84:	10010613          	addi	a2,sp,256
   19f88:	000c0593          	mv	a1,s8
   19f8c:	000c8513          	mv	a0,s9
   19f90:	09c13023          	sd	t3,128(sp)
   19f94:	07d13c23          	sd	t4,120(sp)
   19f98:	07e13023          	sd	t5,96(sp)
   19f9c:	038040ef          	jal	ra,1dfd4 <__ssprint_r>
   19fa0:	ec0514e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   19fa4:	11013783          	ld	a5,272(sp)
   19fa8:	08013e03          	ld	t3,128(sp)
   19fac:	07813e83          	ld	t4,120(sp)
   19fb0:	06013f03          	ld	t5,96(sp)
   19fb4:	18010d93          	addi	s11,sp,384
   19fb8:	9c4ff06f          	j	1917c <_svfprintf_r+0x204>
   19fbc:	10010613          	addi	a2,sp,256
   19fc0:	000c0593          	mv	a1,s8
   19fc4:	000c8513          	mv	a0,s9
   19fc8:	07c13c23          	sd	t3,120(sp)
   19fcc:	07d13023          	sd	t4,96(sp)
   19fd0:	004040ef          	jal	ra,1dfd4 <__ssprint_r>
   19fd4:	e8051ae3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   19fd8:	11013783          	ld	a5,272(sp)
   19fdc:	07813e03          	ld	t3,120(sp)
   19fe0:	06013e83          	ld	t4,96(sp)
   19fe4:	18010d93          	addi	s11,sp,384
   19fe8:	a08ff06f          	j	191f0 <_svfprintf_r+0x278>
   19fec:	10812703          	lw	a4,264(sp)
   19ff0:	00008997          	auipc	s3,0x8
   19ff4:	44098993          	addi	s3,s3,1088 # 22430 <blanks.1>
   19ff8:	00700913          	li	s2,7
   19ffc:	009b4863          	blt	s6,s1,1a00c <_svfprintf_r+0x1094>
   1a000:	0540006f          	j	1a054 <_svfprintf_r+0x10dc>
   1a004:	ff04849b          	addiw	s1,s1,-16
   1a008:	049b5663          	bge	s6,s1,1a054 <_svfprintf_r+0x10dc>
   1a00c:	0017071b          	addiw	a4,a4,1
   1a010:	01078793          	addi	a5,a5,16
   1a014:	013db023          	sd	s3,0(s11)
   1a018:	016db423          	sd	s6,8(s11)
   1a01c:	10f13823          	sd	a5,272(sp)
   1a020:	10e12423          	sw	a4,264(sp)
   1a024:	010d8d93          	addi	s11,s11,16
   1a028:	fce95ee3          	bge	s2,a4,1a004 <_svfprintf_r+0x108c>
   1a02c:	10010613          	addi	a2,sp,256
   1a030:	000c0593          	mv	a1,s8
   1a034:	000c8513          	mv	a0,s9
   1a038:	79d030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a03c:	e20516e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a040:	ff04849b          	addiw	s1,s1,-16
   1a044:	11013783          	ld	a5,272(sp)
   1a048:	10812703          	lw	a4,264(sp)
   1a04c:	18010d93          	addi	s11,sp,384
   1a050:	fa9b4ee3          	blt	s6,s1,1a00c <_svfprintf_r+0x1094>
   1a054:	0017069b          	addiw	a3,a4,1
   1a058:	009787b3          	add	a5,a5,s1
   1a05c:	013db023          	sd	s3,0(s11)
   1a060:	009db423          	sd	s1,8(s11)
   1a064:	10f13823          	sd	a5,272(sp)
   1a068:	10d12423          	sw	a3,264(sp)
   1a06c:	00700713          	li	a4,7
   1a070:	9cd75863          	bge	a4,a3,19240 <_svfprintf_r+0x2c8>
   1a074:	10010613          	addi	a2,sp,256
   1a078:	000c0593          	mv	a1,s8
   1a07c:	000c8513          	mv	a0,s9
   1a080:	755030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a084:	de0512e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a088:	11013783          	ld	a5,272(sp)
   1a08c:	9b4ff06f          	j	19240 <_svfprintf_r+0x2c8>
   1a090:	0d812603          	lw	a2,216(sp)
   1a094:	7cc05a63          	blez	a2,1a868 <_svfprintf_r+0x18f0>
   1a098:	01813703          	ld	a4,24(sp)
   1a09c:	02013683          	ld	a3,32(sp)
   1a0a0:	0007049b          	sext.w	s1,a4
   1a0a4:	36e6ca63          	blt	a3,a4,1a418 <_svfprintf_r+0x14a0>
   1a0a8:	02905663          	blez	s1,1a0d4 <_svfprintf_r+0x115c>
   1a0ac:	10812703          	lw	a4,264(sp)
   1a0b0:	009787b3          	add	a5,a5,s1
   1a0b4:	01adb023          	sd	s10,0(s11)
   1a0b8:	0017069b          	addiw	a3,a4,1
   1a0bc:	009db423          	sd	s1,8(s11)
   1a0c0:	10f13823          	sd	a5,272(sp)
   1a0c4:	10d12423          	sw	a3,264(sp)
   1a0c8:	00700713          	li	a4,7
   1a0cc:	010d8d93          	addi	s11,s11,16
   1a0d0:	36d744e3          	blt	a4,a3,1ac38 <_svfprintf_r+0x1cc0>
   1a0d4:	fff4c713          	not	a4,s1
   1a0d8:	43f75713          	srai	a4,a4,0x3f
   1a0dc:	00e4f4b3          	and	s1,s1,a4
   1a0e0:	01813703          	ld	a4,24(sp)
   1a0e4:	409704bb          	subw	s1,a4,s1
   1a0e8:	42904e63          	bgtz	s1,1a524 <_svfprintf_r+0x15ac>
   1a0ec:	01813683          	ld	a3,24(sp)
   1a0f0:	40097713          	andi	a4,s2,1024
   1a0f4:	00dd04b3          	add	s1,s10,a3
   1a0f8:	48071a63          	bnez	a4,1a58c <_svfprintf_r+0x1614>
   1a0fc:	0d812703          	lw	a4,216(sp)
   1a100:	02013683          	ld	a3,32(sp)
   1a104:	00d74663          	blt	a4,a3,1a110 <_svfprintf_r+0x1198>
   1a108:	00197693          	andi	a3,s2,1
   1a10c:	34068ae3          	beqz	a3,1ac60 <_svfprintf_r+0x1ce8>
   1a110:	04013683          	ld	a3,64(sp)
   1a114:	03813603          	ld	a2,56(sp)
   1a118:	010d8d93          	addi	s11,s11,16
   1a11c:	feddb823          	sd	a3,-16(s11)
   1a120:	10812683          	lw	a3,264(sp)
   1a124:	00c787b3          	add	a5,a5,a2
   1a128:	fecdbc23          	sd	a2,-8(s11)
   1a12c:	0016869b          	addiw	a3,a3,1
   1a130:	0006861b          	sext.w	a2,a3
   1a134:	10d12423          	sw	a3,264(sp)
   1a138:	10f13823          	sd	a5,272(sp)
   1a13c:	00700693          	li	a3,7
   1a140:	5ac6c2e3          	blt	a3,a2,1aee4 <_svfprintf_r+0x1f6c>
   1a144:	02013683          	ld	a3,32(sp)
   1a148:	40e6863b          	subw	a2,a3,a4
   1a14c:	00dd06b3          	add	a3,s10,a3
   1a150:	409686bb          	subw	a3,a3,s1
   1a154:	00060713          	mv	a4,a2
   1a158:	00c6d463          	bge	a3,a2,1a160 <_svfprintf_r+0x11e8>
   1a15c:	00068713          	mv	a4,a3
   1a160:	0007099b          	sext.w	s3,a4
   1a164:	03305663          	blez	s3,1a190 <_svfprintf_r+0x1218>
   1a168:	10812703          	lw	a4,264(sp)
   1a16c:	013787b3          	add	a5,a5,s3
   1a170:	009db023          	sd	s1,0(s11)
   1a174:	0017069b          	addiw	a3,a4,1
   1a178:	013db423          	sd	s3,8(s11)
   1a17c:	10f13823          	sd	a5,272(sp)
   1a180:	10d12423          	sw	a3,264(sp)
   1a184:	00700713          	li	a4,7
   1a188:	010d8d93          	addi	s11,s11,16
   1a18c:	60d744e3          	blt	a4,a3,1af94 <_svfprintf_r+0x201c>
   1a190:	fff9c493          	not	s1,s3
   1a194:	43f4d493          	srai	s1,s1,0x3f
   1a198:	0099f4b3          	and	s1,s3,s1
   1a19c:	409604bb          	subw	s1,a2,s1
   1a1a0:	88905863          	blez	s1,19230 <_svfprintf_r+0x2b8>
   1a1a4:	10812703          	lw	a4,264(sp)
   1a1a8:	7e9b5863          	bge	s6,s1,1a998 <_svfprintf_r+0x1a20>
   1a1ac:	00700993          	li	s3,7
   1a1b0:	00c0006f          	j	1a1bc <_svfprintf_r+0x1244>
   1a1b4:	ff04849b          	addiw	s1,s1,-16
   1a1b8:	7e9b5063          	bge	s6,s1,1a998 <_svfprintf_r+0x1a20>
   1a1bc:	0017069b          	addiw	a3,a4,1
   1a1c0:	01078793          	addi	a5,a5,16
   1a1c4:	00008717          	auipc	a4,0x8
   1a1c8:	27c70713          	addi	a4,a4,636 # 22440 <zeroes.0>
   1a1cc:	00edb023          	sd	a4,0(s11)
   1a1d0:	016db423          	sd	s6,8(s11)
   1a1d4:	10f13823          	sd	a5,272(sp)
   1a1d8:	0006871b          	sext.w	a4,a3
   1a1dc:	10d12423          	sw	a3,264(sp)
   1a1e0:	010d8d93          	addi	s11,s11,16
   1a1e4:	fce9d8e3          	bge	s3,a4,1a1b4 <_svfprintf_r+0x123c>
   1a1e8:	10010613          	addi	a2,sp,256
   1a1ec:	000c0593          	mv	a1,s8
   1a1f0:	000c8513          	mv	a0,s9
   1a1f4:	5e1030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a1f8:	c60518e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a1fc:	11013783          	ld	a5,272(sp)
   1a200:	10812703          	lw	a4,264(sp)
   1a204:	18010d93          	addi	s11,sp,384
   1a208:	fadff06f          	j	1a1b4 <_svfprintf_r+0x123c>
   1a20c:	00197593          	andi	a1,s2,1
   1a210:	c2059463          	bnez	a1,19638 <_svfprintf_r+0x6c0>
   1a214:	00cdb423          	sd	a2,8(s11)
   1a218:	11313823          	sd	s3,272(sp)
   1a21c:	10f12423          	sw	a5,264(sp)
   1a220:	00700713          	li	a4,7
   1a224:	52f74463          	blt	a4,a5,1a74c <_svfprintf_r+0x17d4>
   1a228:	0026869b          	addiw	a3,a3,2
   1a22c:	020d8d93          	addi	s11,s11,32
   1a230:	cb4ff06f          	j	196e4 <_svfprintf_r+0x76c>
   1a234:	880e1ae3          	bnez	t3,19ac8 <_svfprintf_r+0xb50>
   1a238:	000a8913          	mv	s2,s5
   1a23c:	00000e13          	li	t3,0
   1a240:	00000b93          	li	s7,0
   1a244:	17c10d13          	addi	s10,sp,380
   1a248:	de8ff06f          	j	19830 <_svfprintf_r+0x8b8>
   1a24c:	c8f05c63          	blez	a5,196e4 <_svfprintf_r+0x76c>
   1a250:	00fb4463          	blt	s6,a5,1a258 <_svfprintf_r+0x12e0>
   1a254:	3180106f          	j	1b56c <_svfprintf_r+0x25f4>
   1a258:	00700d13          	li	s10,7
   1a25c:	00078d93          	mv	s11,a5
   1a260:	0100006f          	j	1a270 <_svfprintf_r+0x12f8>
   1a264:	ff0d8d9b          	addiw	s11,s11,-16
   1a268:	0bbb5ce3          	bge	s6,s11,1ab20 <_svfprintf_r+0x1ba8>
   1a26c:	001b871b          	addiw	a4,s7,1
   1a270:	01098993          	addi	s3,s3,16
   1a274:	00008797          	auipc	a5,0x8
   1a278:	1cc78793          	addi	a5,a5,460 # 22440 <zeroes.0>
   1a27c:	00f4b023          	sd	a5,0(s1)
   1a280:	0164b423          	sd	s6,8(s1)
   1a284:	11313823          	sd	s3,272(sp)
   1a288:	00070b9b          	sext.w	s7,a4
   1a28c:	10e12423          	sw	a4,264(sp)
   1a290:	01048493          	addi	s1,s1,16
   1a294:	fd7d58e3          	bge	s10,s7,1a264 <_svfprintf_r+0x12ec>
   1a298:	10010613          	addi	a2,sp,256
   1a29c:	000c0593          	mv	a1,s8
   1a2a0:	000c8513          	mv	a0,s9
   1a2a4:	531030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a2a8:	bc0510e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a2ac:	11013983          	ld	s3,272(sp)
   1a2b0:	10812b83          	lw	s7,264(sp)
   1a2b4:	18010493          	addi	s1,sp,384
   1a2b8:	fadff06f          	j	1a264 <_svfprintf_r+0x12ec>
   1a2bc:	01097793          	andi	a5,s2,16
   1a2c0:	14079263          	bnez	a5,1a404 <_svfprintf_r+0x148c>
   1a2c4:	01013703          	ld	a4,16(sp)
   1a2c8:	04097793          	andi	a5,s2,64
   1a2cc:	00072983          	lw	s3,0(a4)
   1a2d0:	0a0784e3          	beqz	a5,1ab78 <_svfprintf_r+0x1c00>
   1a2d4:	03099993          	slli	s3,s3,0x30
   1a2d8:	0309d993          	srli	s3,s3,0x30
   1a2dc:	d18ff06f          	j	197f4 <_svfprintf_r+0x87c>
   1a2e0:	01097793          	andi	a5,s2,16
   1a2e4:	10079863          	bnez	a5,1a3f4 <_svfprintf_r+0x147c>
   1a2e8:	04097793          	andi	a5,s2,64
   1a2ec:	06078ae3          	beqz	a5,1ab60 <_svfprintf_r+0x1be8>
   1a2f0:	01013783          	ld	a5,16(sp)
   1a2f4:	00079983          	lh	s3,0(a5)
   1a2f8:	00098793          	mv	a5,s3
   1a2fc:	fa07d663          	bgez	a5,19aa8 <_svfprintf_r+0xb30>
   1a300:	02d00793          	li	a5,45
   1a304:	0cf107a3          	sb	a5,207(sp)
   1a308:	413009b3          	neg	s3,s3
   1a30c:	00d13823          	sd	a3,16(sp)
   1a310:	00090a93          	mv	s5,s2
   1a314:	00100793          	li	a5,1
   1a318:	cf0ff06f          	j	19808 <_svfprintf_r+0x890>
   1a31c:	010af793          	andi	a5,s5,16
   1a320:	0c079063          	bnez	a5,1a3e0 <_svfprintf_r+0x1468>
   1a324:	01013703          	ld	a4,16(sp)
   1a328:	040af793          	andi	a5,s5,64
   1a32c:	00072983          	lw	s3,0(a4)
   1a330:	04078ce3          	beqz	a5,1ab88 <_svfprintf_r+0x1c10>
   1a334:	03099993          	slli	s3,s3,0x30
   1a338:	0309d993          	srli	s3,s3,0x30
   1a33c:	00d13823          	sd	a3,16(sp)
   1a340:	00100793          	li	a5,1
   1a344:	cc0ff06f          	j	19804 <_svfprintf_r+0x88c>
   1a348:	10010613          	addi	a2,sp,256
   1a34c:	000c0593          	mv	a1,s8
   1a350:	000c8513          	mv	a0,s9
   1a354:	481030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a358:	b00518e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a35c:	11013983          	ld	s3,272(sp)
   1a360:	10812783          	lw	a5,264(sp)
   1a364:	18010493          	addi	s1,sp,384
   1a368:	ae8ff06f          	j	19650 <_svfprintf_r+0x6d8>
   1a36c:	10010613          	addi	a2,sp,256
   1a370:	000c0593          	mv	a1,s8
   1a374:	000c8513          	mv	a0,s9
   1a378:	45d030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a37c:	ae0516e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a380:	11013983          	ld	s3,272(sp)
   1a384:	10812b83          	lw	s7,264(sp)
   1a388:	18010493          	addi	s1,sp,384
   1a38c:	af0ff06f          	j	1967c <_svfprintf_r+0x704>
   1a390:	00197713          	andi	a4,s2,1
   1a394:	00071463          	bnez	a4,1a39c <_svfprintf_r+0x1424>
   1a398:	e99fe06f          	j	19230 <_svfprintf_r+0x2b8>
   1a39c:	811ff06f          	j	19bac <_svfprintf_r+0xc34>
   1a3a0:	000b8e13          	mv	t3,s7
   1a3a4:	ee8ff06f          	j	19a8c <_svfprintf_r+0xb14>
   1a3a8:	03000793          	li	a5,48
   1a3ac:	16f10da3          	sb	a5,379(sp)
   1a3b0:	17b10d13          	addi	s10,sp,379
   1a3b4:	c7cff06f          	j	19830 <_svfprintf_r+0x8b8>
   1a3b8:	01013783          	ld	a5,16(sp)
   1a3bc:	00f78793          	addi	a5,a5,15
   1a3c0:	ff07f793          	andi	a5,a5,-16
   1a3c4:	0007b703          	ld	a4,0(a5)
   1a3c8:	0087b683          	ld	a3,8(a5)
   1a3cc:	01078793          	addi	a5,a5,16
   1a3d0:	00f13823          	sd	a5,16(sp)
   1a3d4:	0ee13823          	sd	a4,240(sp)
   1a3d8:	0ed13c23          	sd	a3,248(sp)
   1a3dc:	f75fe06f          	j	19350 <_svfprintf_r+0x3d8>
   1a3e0:	01013783          	ld	a5,16(sp)
   1a3e4:	00d13823          	sd	a3,16(sp)
   1a3e8:	0007b983          	ld	s3,0(a5)
   1a3ec:	00100793          	li	a5,1
   1a3f0:	c14ff06f          	j	19804 <_svfprintf_r+0x88c>
   1a3f4:	01013783          	ld	a5,16(sp)
   1a3f8:	0007b783          	ld	a5,0(a5)
   1a3fc:	00078993          	mv	s3,a5
   1a400:	ea4ff06f          	j	19aa4 <_svfprintf_r+0xb2c>
   1a404:	01013783          	ld	a5,16(sp)
   1a408:	0007b983          	ld	s3,0(a5)
   1a40c:	be8ff06f          	j	197f4 <_svfprintf_r+0x87c>
   1a410:	00044483          	lbu	s1,0(s0)
   1a414:	cadfe06f          	j	190c0 <_svfprintf_r+0x148>
   1a418:	0006849b          	sext.w	s1,a3
   1a41c:	c89048e3          	bgtz	s1,1a0ac <_svfprintf_r+0x1134>
   1a420:	cb5ff06f          	j	1a0d4 <_svfprintf_r+0x115c>
   1a424:	00008797          	auipc	a5,0x8
   1a428:	80478793          	addi	a5,a5,-2044 # 21c28 <__clzdi2+0x9c>
   1a42c:	000b8e13          	mv	t3,s7
   1a430:	04f13423          	sd	a5,72(sp)
   1a434:	01013703          	ld	a4,16(sp)
   1a438:	02097793          	andi	a5,s2,32
   1a43c:	00870693          	addi	a3,a4,8
   1a440:	2c078a63          	beqz	a5,1a714 <_svfprintf_r+0x179c>
   1a444:	00073983          	ld	s3,0(a4)
   1a448:	00197793          	andi	a5,s2,1
   1a44c:	00078e63          	beqz	a5,1a468 <_svfprintf_r+0x14f0>
   1a450:	00098c63          	beqz	s3,1a468 <_svfprintf_r+0x14f0>
   1a454:	00296913          	ori	s2,s2,2
   1a458:	03000793          	li	a5,48
   1a45c:	0cf10823          	sb	a5,208(sp)
   1a460:	0c9108a3          	sb	s1,209(sp)
   1a464:	0009091b          	sext.w	s2,s2
   1a468:	bff97713          	andi	a4,s2,-1025
   1a46c:	00070a9b          	sext.w	s5,a4
   1a470:	00d13823          	sd	a3,16(sp)
   1a474:	00200793          	li	a5,2
   1a478:	b8cff06f          	j	19804 <_svfprintf_r+0x88c>
   1a47c:	000b8e13          	mv	t3,s7
   1a480:	00090a93          	mv	s5,s2
   1a484:	cb8ff06f          	j	1993c <_svfprintf_r+0x9c4>
   1a488:	10010613          	addi	a2,sp,256
   1a48c:	000c0593          	mv	a1,s8
   1a490:	000c8513          	mv	a0,s9
   1a494:	341030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a498:	9c0518e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a49c:	11013783          	ld	a5,272(sp)
   1a4a0:	18010d93          	addi	s11,sp,384
   1a4a4:	f3cff06f          	j	19be0 <_svfprintf_r+0xc68>
   1a4a8:	20096913          	ori	s2,s2,512
   1a4ac:	00144483          	lbu	s1,1(s0)
   1a4b0:	0009091b          	sext.w	s2,s2
   1a4b4:	00140413          	addi	s0,s0,1
   1a4b8:	c09fe06f          	j	190c0 <_svfprintf_r+0x148>
   1a4bc:	000b8e13          	mv	t3,s7
   1a4c0:	b20ff06f          	j	197e0 <_svfprintf_r+0x868>
   1a4c4:	02096913          	ori	s2,s2,32
   1a4c8:	00144483          	lbu	s1,1(s0)
   1a4cc:	0009091b          	sext.w	s2,s2
   1a4d0:	00140413          	addi	s0,s0,1
   1a4d4:	bedfe06f          	j	190c0 <_svfprintf_r+0x148>
   1a4d8:	00007797          	auipc	a5,0x7
   1a4dc:	73878793          	addi	a5,a5,1848 # 21c10 <__clzdi2+0x84>
   1a4e0:	000b8e13          	mv	t3,s7
   1a4e4:	04f13423          	sd	a5,72(sp)
   1a4e8:	f4dff06f          	j	1a434 <_svfprintf_r+0x14bc>
   1a4ec:	04000593          	li	a1,64
   1a4f0:	000c8513          	mv	a0,s9
   1a4f4:	f44fc0ef          	jal	ra,16c38 <_malloc_r>
   1a4f8:	00ac3023          	sd	a0,0(s8)
   1a4fc:	00ac3c23          	sd	a0,24(s8)
   1a500:	00051463          	bnez	a0,1a508 <_svfprintf_r+0x1590>
   1a504:	1100106f          	j	1b614 <_svfprintf_r+0x269c>
   1a508:	04000793          	li	a5,64
   1a50c:	02fc2023          	sw	a5,32(s8)
   1a510:	ae9fe06f          	j	18ff8 <_svfprintf_r+0x80>
   1a514:	000d0513          	mv	a0,s10
   1a518:	8edfe0ef          	jal	ra,18e04 <strlen>
   1a51c:	00050b9b          	sext.w	s7,a0
   1a520:	a80ff06f          	j	197a0 <_svfprintf_r+0x828>
   1a524:	10812703          	lw	a4,264(sp)
   1a528:	6a9b5a63          	bge	s6,s1,1abdc <_svfprintf_r+0x1c64>
   1a52c:	00700b93          	li	s7,7
   1a530:	00c0006f          	j	1a53c <_svfprintf_r+0x15c4>
   1a534:	ff04849b          	addiw	s1,s1,-16
   1a538:	6a9b5263          	bge	s6,s1,1abdc <_svfprintf_r+0x1c64>
   1a53c:	0017069b          	addiw	a3,a4,1
   1a540:	01078793          	addi	a5,a5,16
   1a544:	00008717          	auipc	a4,0x8
   1a548:	efc70713          	addi	a4,a4,-260 # 22440 <zeroes.0>
   1a54c:	00edb023          	sd	a4,0(s11)
   1a550:	016db423          	sd	s6,8(s11)
   1a554:	10f13823          	sd	a5,272(sp)
   1a558:	0006871b          	sext.w	a4,a3
   1a55c:	10d12423          	sw	a3,264(sp)
   1a560:	010d8d93          	addi	s11,s11,16
   1a564:	fcebd8e3          	bge	s7,a4,1a534 <_svfprintf_r+0x15bc>
   1a568:	10010613          	addi	a2,sp,256
   1a56c:	000c0593          	mv	a1,s8
   1a570:	000c8513          	mv	a0,s9
   1a574:	261030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a578:	8e0518e3          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a57c:	11013783          	ld	a5,272(sp)
   1a580:	10812703          	lw	a4,264(sp)
   1a584:	18010d93          	addi	s11,sp,384
   1a588:	fadff06f          	j	1a534 <_svfprintf_r+0x15bc>
   1a58c:	02013703          	ld	a4,32(sp)
   1a590:	02813b83          	ld	s7,40(sp)
   1a594:	00813c23          	sd	s0,24(sp)
   1a598:	00ed06b3          	add	a3,s10,a4
   1a59c:	07213023          	sd	s2,96(sp)
   1a5a0:	07413c23          	sd	s4,120(sp)
   1a5a4:	03513423          	sd	s5,40(sp)
   1a5a8:	000d8713          	mv	a4,s11
   1a5ac:	05813403          	ld	s0,88(sp)
   1a5b0:	07013a03          	ld	s4,112(sp)
   1a5b4:	06813983          	ld	s3,104(sp)
   1a5b8:	03013903          	ld	s2,48(sp)
   1a5bc:	00700893          	li	a7,7
   1a5c0:	000d0d93          	mv	s11,s10
   1a5c4:	00068a93          	mv	s5,a3
   1a5c8:	080b8e63          	beqz	s7,1a664 <_svfprintf_r+0x16ec>
   1a5cc:	08091e63          	bnez	s2,1a668 <_svfprintf_r+0x16f0>
   1a5d0:	fff40413          	addi	s0,s0,-1
   1a5d4:	fffb8b9b          	addiw	s7,s7,-1
   1a5d8:	10812683          	lw	a3,264(sp)
   1a5dc:	013787b3          	add	a5,a5,s3
   1a5e0:	01473023          	sd	s4,0(a4)
   1a5e4:	0016861b          	addiw	a2,a3,1
   1a5e8:	01373423          	sd	s3,8(a4)
   1a5ec:	10f13823          	sd	a5,272(sp)
   1a5f0:	10c12423          	sw	a2,264(sp)
   1a5f4:	01070713          	addi	a4,a4,16
   1a5f8:	12c8c863          	blt	a7,a2,1a728 <_svfprintf_r+0x17b0>
   1a5fc:	00044603          	lbu	a2,0(s0)
   1a600:	409a853b          	subw	a0,s5,s1
   1a604:	0006069b          	sext.w	a3,a2
   1a608:	00068813          	mv	a6,a3
   1a60c:	00d55463          	bge	a0,a3,1a614 <_svfprintf_r+0x169c>
   1a610:	00050813          	mv	a6,a0
   1a614:	00080d1b          	sext.w	s10,a6
   1a618:	03a05863          	blez	s10,1a648 <_svfprintf_r+0x16d0>
   1a61c:	10812683          	lw	a3,264(sp)
   1a620:	01a787b3          	add	a5,a5,s10
   1a624:	00973023          	sd	s1,0(a4)
   1a628:	0016861b          	addiw	a2,a3,1
   1a62c:	01a73423          	sd	s10,8(a4)
   1a630:	10f13823          	sd	a5,272(sp)
   1a634:	10c12423          	sw	a2,264(sp)
   1a638:	38c8ca63          	blt	a7,a2,1a9cc <_svfprintf_r+0x1a54>
   1a63c:	00044603          	lbu	a2,0(s0)
   1a640:	01070713          	addi	a4,a4,16
   1a644:	0006069b          	sext.w	a3,a2
   1a648:	fffd4513          	not	a0,s10
   1a64c:	43f55513          	srai	a0,a0,0x3f
   1a650:	00ad7833          	and	a6,s10,a0
   1a654:	41068d3b          	subw	s10,a3,a6
   1a658:	01a04c63          	bgtz	s10,1a670 <_svfprintf_r+0x16f8>
   1a65c:	00c484b3          	add	s1,s1,a2
   1a660:	f60b96e3          	bnez	s7,1a5cc <_svfprintf_r+0x1654>
   1a664:	6c090063          	beqz	s2,1ad24 <_svfprintf_r+0x1dac>
   1a668:	fff9091b          	addiw	s2,s2,-1
   1a66c:	f6dff06f          	j	1a5d8 <_svfprintf_r+0x1660>
   1a670:	10812603          	lw	a2,264(sp)
   1a674:	01ab4863          	blt	s6,s10,1a684 <_svfprintf_r+0x170c>
   1a678:	0640006f          	j	1a6dc <_svfprintf_r+0x1764>
   1a67c:	ff0d0d1b          	addiw	s10,s10,-16
   1a680:	05ab5e63          	bge	s6,s10,1a6dc <_svfprintf_r+0x1764>
   1a684:	0016069b          	addiw	a3,a2,1
   1a688:	01078793          	addi	a5,a5,16
   1a68c:	00008617          	auipc	a2,0x8
   1a690:	db460613          	addi	a2,a2,-588 # 22440 <zeroes.0>
   1a694:	00c73023          	sd	a2,0(a4)
   1a698:	01673423          	sd	s6,8(a4)
   1a69c:	10f13823          	sd	a5,272(sp)
   1a6a0:	0006861b          	sext.w	a2,a3
   1a6a4:	10d12423          	sw	a3,264(sp)
   1a6a8:	01070713          	addi	a4,a4,16
   1a6ac:	fcc8d8e3          	bge	a7,a2,1a67c <_svfprintf_r+0x1704>
   1a6b0:	10010613          	addi	a2,sp,256
   1a6b4:	000c0593          	mv	a1,s8
   1a6b8:	000c8513          	mv	a0,s9
   1a6bc:	119030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a6c0:	fa051463          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a6c4:	ff0d0d1b          	addiw	s10,s10,-16
   1a6c8:	11013783          	ld	a5,272(sp)
   1a6cc:	10812603          	lw	a2,264(sp)
   1a6d0:	18010713          	addi	a4,sp,384
   1a6d4:	00700893          	li	a7,7
   1a6d8:	fbab46e3          	blt	s6,s10,1a684 <_svfprintf_r+0x170c>
   1a6dc:	0016061b          	addiw	a2,a2,1
   1a6e0:	00008697          	auipc	a3,0x8
   1a6e4:	d6068693          	addi	a3,a3,-672 # 22440 <zeroes.0>
   1a6e8:	01a787b3          	add	a5,a5,s10
   1a6ec:	00d73023          	sd	a3,0(a4)
   1a6f0:	01a73423          	sd	s10,8(a4)
   1a6f4:	10f13823          	sd	a5,272(sp)
   1a6f8:	0006069b          	sext.w	a3,a2
   1a6fc:	10c12423          	sw	a2,264(sp)
   1a700:	6ed8c063          	blt	a7,a3,1ade0 <_svfprintf_r+0x1e68>
   1a704:	00044603          	lbu	a2,0(s0)
   1a708:	01070713          	addi	a4,a4,16
   1a70c:	00c484b3          	add	s1,s1,a2
   1a710:	f51ff06f          	j	1a660 <_svfprintf_r+0x16e8>
   1a714:	01097793          	andi	a5,s2,16
   1a718:	22078c63          	beqz	a5,1a950 <_svfprintf_r+0x19d8>
   1a71c:	01013783          	ld	a5,16(sp)
   1a720:	0007b983          	ld	s3,0(a5)
   1a724:	d25ff06f          	j	1a448 <_svfprintf_r+0x14d0>
   1a728:	10010613          	addi	a2,sp,256
   1a72c:	000c0593          	mv	a1,s8
   1a730:	000c8513          	mv	a0,s9
   1a734:	0a1030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a738:	f2051863          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a73c:	11013783          	ld	a5,272(sp)
   1a740:	18010713          	addi	a4,sp,384
   1a744:	00700893          	li	a7,7
   1a748:	eb5ff06f          	j	1a5fc <_svfprintf_r+0x1684>
   1a74c:	10010613          	addi	a2,sp,256
   1a750:	000c0593          	mv	a1,s8
   1a754:	000c8513          	mv	a0,s9
   1a758:	07d030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a75c:	f0051663          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a760:	10812683          	lw	a3,264(sp)
   1a764:	11013983          	ld	s3,272(sp)
   1a768:	19010d93          	addi	s11,sp,400
   1a76c:	0016869b          	addiw	a3,a3,1
   1a770:	18010493          	addi	s1,sp,384
   1a774:	f71fe06f          	j	196e4 <_svfprintf_r+0x76c>
   1a778:	00813c23          	sd	s0,24(sp)
   1a77c:	05813403          	ld	s0,88(sp)
   1a780:	17c10b93          	addi	s7,sp,380
   1a784:	400af913          	andi	s2,s5,1024
   1a788:	00000793          	li	a5,0
   1a78c:	000b8d13          	mv	s10,s7
   1a790:	00913423          	sd	s1,8(sp)
   1a794:	03413423          	sd	s4,40(sp)
   1a798:	000b8493          	mv	s1,s7
   1a79c:	00098a13          	mv	s4,s3
   1a7a0:	000e0b93          	mv	s7,t3
   1a7a4:	00090993          	mv	s3,s2
   1a7a8:	00078913          	mv	s2,a5
   1a7ac:	00a00593          	li	a1,10
   1a7b0:	000a0513          	mv	a0,s4
   1a7b4:	368070ef          	jal	ra,21b1c <__umoddi3>
   1a7b8:	0305051b          	addiw	a0,a0,48
   1a7bc:	fea48fa3          	sb	a0,-1(s1)
   1a7c0:	0019091b          	addiw	s2,s2,1
   1a7c4:	fff48493          	addi	s1,s1,-1
   1a7c8:	00098663          	beqz	s3,1a7d4 <_svfprintf_r+0x185c>
   1a7cc:	00044683          	lbu	a3,0(s0)
   1a7d0:	04d90663          	beq	s2,a3,1a81c <_svfprintf_r+0x18a4>
   1a7d4:	00a00593          	li	a1,10
   1a7d8:	000a0513          	mv	a0,s4
   1a7dc:	2f8070ef          	jal	ra,21ad4 <__udivdi3>
   1a7e0:	00900793          	li	a5,9
   1a7e4:	0147f663          	bgeu	a5,s4,1a7f0 <_svfprintf_r+0x1878>
   1a7e8:	00050a13          	mv	s4,a0
   1a7ec:	fc1ff06f          	j	1a7ac <_svfprintf_r+0x1834>
   1a7f0:	000b8e13          	mv	t3,s7
   1a7f4:	000d0b93          	mv	s7,s10
   1a7f8:	00048d13          	mv	s10,s1
   1a7fc:	04813c23          	sd	s0,88(sp)
   1a800:	03213023          	sd	s2,32(sp)
   1a804:	01813403          	ld	s0,24(sp)
   1a808:	02813a03          	ld	s4,40(sp)
   1a80c:	00813483          	ld	s1,8(sp)
   1a810:	41ab8bbb          	subw	s7,s7,s10
   1a814:	000a8913          	mv	s2,s5
   1a818:	818ff06f          	j	19830 <_svfprintf_r+0x8b8>
   1a81c:	0ff00793          	li	a5,255
   1a820:	faf68ae3          	beq	a3,a5,1a7d4 <_svfprintf_r+0x185c>
   1a824:	00900793          	li	a5,9
   1a828:	fd47f4e3          	bgeu	a5,s4,1a7f0 <_svfprintf_r+0x1878>
   1a82c:	06813783          	ld	a5,104(sp)
   1a830:	07013583          	ld	a1,112(sp)
   1a834:	00000913          	li	s2,0
   1a838:	40f484b3          	sub	s1,s1,a5
   1a83c:	00078613          	mv	a2,a5
   1a840:	00048513          	mv	a0,s1
   1a844:	e8cfe0ef          	jal	ra,18ed0 <strncpy>
   1a848:	00144683          	lbu	a3,1(s0)
   1a84c:	000a0513          	mv	a0,s4
   1a850:	00a00593          	li	a1,10
   1a854:	00d03733          	snez	a4,a3
   1a858:	00e40433          	add	s0,s0,a4
   1a85c:	278070ef          	jal	ra,21ad4 <__udivdi3>
   1a860:	00050a13          	mv	s4,a0
   1a864:	f49ff06f          	j	1a7ac <_svfprintf_r+0x1834>
   1a868:	10812703          	lw	a4,264(sp)
   1a86c:	00007697          	auipc	a3,0x7
   1a870:	3dc68693          	addi	a3,a3,988 # 21c48 <__clzdi2+0xbc>
   1a874:	00ddb023          	sd	a3,0(s11)
   1a878:	0017071b          	addiw	a4,a4,1
   1a87c:	00100693          	li	a3,1
   1a880:	00178793          	addi	a5,a5,1
   1a884:	00ddb423          	sd	a3,8(s11)
   1a888:	10e12423          	sw	a4,264(sp)
   1a88c:	0007069b          	sext.w	a3,a4
   1a890:	10f13823          	sd	a5,272(sp)
   1a894:	00700713          	li	a4,7
   1a898:	010d8d93          	addi	s11,s11,16
   1a89c:	08d74263          	blt	a4,a3,1a920 <_svfprintf_r+0x19a8>
   1a8a0:	1c061e63          	bnez	a2,1aa7c <_svfprintf_r+0x1b04>
   1a8a4:	02013683          	ld	a3,32(sp)
   1a8a8:	00197713          	andi	a4,s2,1
   1a8ac:	00e6e733          	or	a4,a3,a4
   1a8b0:	00071463          	bnez	a4,1a8b8 <_svfprintf_r+0x1940>
   1a8b4:	97dfe06f          	j	19230 <_svfprintf_r+0x2b8>
   1a8b8:	04013683          	ld	a3,64(sp)
   1a8bc:	03813703          	ld	a4,56(sp)
   1a8c0:	010d8313          	addi	t1,s11,16
   1a8c4:	00ddb023          	sd	a3,0(s11)
   1a8c8:	10812683          	lw	a3,264(sp)
   1a8cc:	00f707b3          	add	a5,a4,a5
   1a8d0:	00edb423          	sd	a4,8(s11)
   1a8d4:	0016869b          	addiw	a3,a3,1
   1a8d8:	0006871b          	sext.w	a4,a3
   1a8dc:	10d12423          	sw	a3,264(sp)
   1a8e0:	10f13823          	sd	a5,272(sp)
   1a8e4:	00700693          	li	a3,7
   1a8e8:	40e6c463          	blt	a3,a4,1acf0 <_svfprintf_r+0x1d78>
   1a8ec:	02013683          	ld	a3,32(sp)
   1a8f0:	0017071b          	addiw	a4,a4,1
   1a8f4:	10e12423          	sw	a4,264(sp)
   1a8f8:	00f687b3          	add	a5,a3,a5
   1a8fc:	00d33423          	sd	a3,8(t1)
   1a900:	01a33023          	sd	s10,0(t1)
   1a904:	0007069b          	sext.w	a3,a4
   1a908:	10f13823          	sd	a5,272(sp)
   1a90c:	00700713          	li	a4,7
   1a910:	01030d93          	addi	s11,t1,16
   1a914:	00d74463          	blt	a4,a3,1a91c <_svfprintf_r+0x19a4>
   1a918:	919fe06f          	j	19230 <_svfprintf_r+0x2b8>
   1a91c:	dedfe06f          	j	19708 <_svfprintf_r+0x790>
   1a920:	10010613          	addi	a2,sp,256
   1a924:	000c0593          	mv	a1,s8
   1a928:	000c8513          	mv	a0,s9
   1a92c:	6a8030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a930:	d2051c63          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a934:	0d812603          	lw	a2,216(sp)
   1a938:	11013783          	ld	a5,272(sp)
   1a93c:	18010d93          	addi	s11,sp,384
   1a940:	f61ff06f          	j	1a8a0 <_svfprintf_r+0x1928>
   1a944:	00048c93          	mv	s9,s1
   1a948:	00090c13          	mv	s8,s2
   1a94c:	d1cff06f          	j	19e68 <_svfprintf_r+0xef0>
   1a950:	01013703          	ld	a4,16(sp)
   1a954:	04097793          	andi	a5,s2,64
   1a958:	00072983          	lw	s3,0(a4)
   1a95c:	24078263          	beqz	a5,1aba0 <_svfprintf_r+0x1c28>
   1a960:	03099993          	slli	s3,s3,0x30
   1a964:	0309d993          	srli	s3,s3,0x30
   1a968:	ae1ff06f          	j	1a448 <_svfprintf_r+0x14d0>
   1a96c:	00090a93          	mv	s5,s2
   1a970:	00d13823          	sd	a3,16(sp)
   1a974:	94cff06f          	j	19ac0 <_svfprintf_r+0xb48>
   1a978:	10010613          	addi	a2,sp,256
   1a97c:	000c0593          	mv	a1,s8
   1a980:	000c8513          	mv	a0,s9
   1a984:	650030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a988:	ce051063          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a98c:	11013783          	ld	a5,272(sp)
   1a990:	18010d93          	addi	s11,sp,384
   1a994:	a0cff06f          	j	19ba0 <_svfprintf_r+0xc28>
   1a998:	00008697          	auipc	a3,0x8
   1a99c:	aa868693          	addi	a3,a3,-1368 # 22440 <zeroes.0>
   1a9a0:	0017071b          	addiw	a4,a4,1
   1a9a4:	00ddb023          	sd	a3,0(s11)
   1a9a8:	009db423          	sd	s1,8(s11)
   1a9ac:	009787b3          	add	a5,a5,s1
   1a9b0:	0007069b          	sext.w	a3,a4
   1a9b4:	10e12423          	sw	a4,264(sp)
   1a9b8:	10f13823          	sd	a5,272(sp)
   1a9bc:	00700713          	li	a4,7
   1a9c0:	00d74463          	blt	a4,a3,1a9c8 <_svfprintf_r+0x1a50>
   1a9c4:	869fe06f          	j	1922c <_svfprintf_r+0x2b4>
   1a9c8:	d41fe06f          	j	19708 <_svfprintf_r+0x790>
   1a9cc:	10010613          	addi	a2,sp,256
   1a9d0:	000c0593          	mv	a1,s8
   1a9d4:	000c8513          	mv	a0,s9
   1a9d8:	5fc030ef          	jal	ra,1dfd4 <__ssprint_r>
   1a9dc:	c8051663          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1a9e0:	00044603          	lbu	a2,0(s0)
   1a9e4:	11013783          	ld	a5,272(sp)
   1a9e8:	18010713          	addi	a4,sp,384
   1a9ec:	0006069b          	sext.w	a3,a2
   1a9f0:	00700893          	li	a7,7
   1a9f4:	c55ff06f          	j	1a648 <_svfprintf_r+0x16d0>
   1a9f8:	00040c13          	mv	s8,s0
   1a9fc:	c6cff06f          	j	19e68 <_svfprintf_r+0xef0>
   1aa00:	0f013503          	ld	a0,240(sp)
   1aa04:	0f813583          	ld	a1,248(sp)
   1aa08:	00000613          	li	a2,0
   1aa0c:	00000693          	li	a3,0
   1aa10:	5e8050ef          	jal	ra,1fff8 <__letf2>
   1aa14:	4c054263          	bltz	a0,1aed8 <_svfprintf_r+0x1f60>
   1aa18:	0cf14783          	lbu	a5,207(sp)
   1aa1c:	04700713          	li	a4,71
   1aa20:	00007d17          	auipc	s10,0x7
   1aa24:	1d0d0d13          	addi	s10,s10,464 # 21bf0 <__clzdi2+0x64>
   1aa28:	20974263          	blt	a4,s1,1ac2c <_svfprintf_r+0x1cb4>
   1aa2c:	f7f97913          	andi	s2,s2,-129
   1aa30:	00013423          	sd	zero,8(sp)
   1aa34:	02013823          	sd	zero,48(sp)
   1aa38:	02013423          	sd	zero,40(sp)
   1aa3c:	00013c23          	sd	zero,24(sp)
   1aa40:	0009091b          	sext.w	s2,s2
   1aa44:	00300a93          	li	s5,3
   1aa48:	00300b93          	li	s7,3
   1aa4c:	00000e13          	li	t3,0
   1aa50:	00078463          	beqz	a5,1aa58 <_svfprintf_r+0x1ae0>
   1aa54:	d79fe06f          	j	197cc <_svfprintf_r+0x854>
   1aa58:	f04fe06f          	j	1915c <_svfprintf_r+0x1e4>
   1aa5c:	00600793          	li	a5,6
   1aa60:	000b8b9b          	sext.w	s7,s7
   1aa64:	1fc7ea63          	bltu	a5,t3,1ac58 <_svfprintf_r+0x1ce0>
   1aa68:	000b8a93          	mv	s5,s7
   1aa6c:	01313823          	sd	s3,16(sp)
   1aa70:	00007d17          	auipc	s10,0x7
   1aa74:	1d0d0d13          	addi	s10,s10,464 # 21c40 <__clzdi2+0xb4>
   1aa78:	ed0fe06f          	j	19148 <_svfprintf_r+0x1d0>
   1aa7c:	04013683          	ld	a3,64(sp)
   1aa80:	03813703          	ld	a4,56(sp)
   1aa84:	010d8313          	addi	t1,s11,16
   1aa88:	00ddb023          	sd	a3,0(s11)
   1aa8c:	10812683          	lw	a3,264(sp)
   1aa90:	00f707b3          	add	a5,a4,a5
   1aa94:	00edb423          	sd	a4,8(s11)
   1aa98:	0016869b          	addiw	a3,a3,1
   1aa9c:	0006871b          	sext.w	a4,a3
   1aaa0:	10d12423          	sw	a3,264(sp)
   1aaa4:	10f13823          	sd	a5,272(sp)
   1aaa8:	00700693          	li	a3,7
   1aaac:	24e6c263          	blt	a3,a4,1acf0 <_svfprintf_r+0x1d78>
   1aab0:	e2065ee3          	bgez	a2,1a8ec <_svfprintf_r+0x1974>
   1aab4:	ff000693          	li	a3,-16
   1aab8:	40c004bb          	negw	s1,a2
   1aabc:	08d652e3          	bge	a2,a3,1b340 <_svfprintf_r+0x23c8>
   1aac0:	00700993          	li	s3,7
   1aac4:	00c0006f          	j	1aad0 <_svfprintf_r+0x1b58>
   1aac8:	ff04849b          	addiw	s1,s1,-16
   1aacc:	069b5ae3          	bge	s6,s1,1b340 <_svfprintf_r+0x23c8>
   1aad0:	0017069b          	addiw	a3,a4,1
   1aad4:	01078793          	addi	a5,a5,16
   1aad8:	00008717          	auipc	a4,0x8
   1aadc:	96870713          	addi	a4,a4,-1688 # 22440 <zeroes.0>
   1aae0:	00e33023          	sd	a4,0(t1)
   1aae4:	01633423          	sd	s6,8(t1)
   1aae8:	10f13823          	sd	a5,272(sp)
   1aaec:	0006871b          	sext.w	a4,a3
   1aaf0:	10d12423          	sw	a3,264(sp)
   1aaf4:	01030313          	addi	t1,t1,16
   1aaf8:	fce9d8e3          	bge	s3,a4,1aac8 <_svfprintf_r+0x1b50>
   1aafc:	10010613          	addi	a2,sp,256
   1ab00:	000c0593          	mv	a1,s8
   1ab04:	000c8513          	mv	a0,s9
   1ab08:	4cc030ef          	jal	ra,1dfd4 <__ssprint_r>
   1ab0c:	b4051e63          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1ab10:	11013783          	ld	a5,272(sp)
   1ab14:	10812703          	lw	a4,264(sp)
   1ab18:	18010313          	addi	t1,sp,384
   1ab1c:	fadff06f          	j	1aac8 <_svfprintf_r+0x1b50>
   1ab20:	000d8793          	mv	a5,s11
   1ab24:	001b869b          	addiw	a3,s7,1
   1ab28:	01048713          	addi	a4,s1,16
   1ab2c:	00f989b3          	add	s3,s3,a5
   1ab30:	00008617          	auipc	a2,0x8
   1ab34:	91060613          	addi	a2,a2,-1776 # 22440 <zeroes.0>
   1ab38:	00f4b423          	sd	a5,8(s1)
   1ab3c:	00c4b023          	sd	a2,0(s1)
   1ab40:	11313823          	sd	s3,272(sp)
   1ab44:	10d12423          	sw	a3,264(sp)
   1ab48:	00700793          	li	a5,7
   1ab4c:	c0d7c0e3          	blt	a5,a3,1a74c <_svfprintf_r+0x17d4>
   1ab50:	0016869b          	addiw	a3,a3,1
   1ab54:	01070d93          	addi	s11,a4,16
   1ab58:	00070493          	mv	s1,a4
   1ab5c:	b89fe06f          	j	196e4 <_svfprintf_r+0x76c>
   1ab60:	20097793          	andi	a5,s2,512
   1ab64:	14078e63          	beqz	a5,1acc0 <_svfprintf_r+0x1d48>
   1ab68:	01013783          	ld	a5,16(sp)
   1ab6c:	00078983          	lb	s3,0(a5)
   1ab70:	00098793          	mv	a5,s3
   1ab74:	f31fe06f          	j	19aa4 <_svfprintf_r+0xb2c>
   1ab78:	20097793          	andi	a5,s2,512
   1ab7c:	12078c63          	beqz	a5,1acb4 <_svfprintf_r+0x1d3c>
   1ab80:	0ff9f993          	andi	s3,s3,255
   1ab84:	c71fe06f          	j	197f4 <_svfprintf_r+0x87c>
   1ab88:	200af793          	andi	a5,s5,512
   1ab8c:	10078a63          	beqz	a5,1aca0 <_svfprintf_r+0x1d28>
   1ab90:	0ff9f993          	andi	s3,s3,255
   1ab94:	00d13823          	sd	a3,16(sp)
   1ab98:	00100793          	li	a5,1
   1ab9c:	c69fe06f          	j	19804 <_svfprintf_r+0x88c>
   1aba0:	20097793          	andi	a5,s2,512
   1aba4:	0e078863          	beqz	a5,1ac94 <_svfprintf_r+0x1d1c>
   1aba8:	0ff9f993          	andi	s3,s3,255
   1abac:	89dff06f          	j	1a448 <_svfprintf_r+0x14d0>
   1abb0:	0f813783          	ld	a5,248(sp)
   1abb4:	1207da63          	bgez	a5,1ace8 <_svfprintf_r+0x1d70>
   1abb8:	02d00793          	li	a5,45
   1abbc:	0cf107a3          	sb	a5,207(sp)
   1abc0:	04700713          	li	a4,71
   1abc4:	00007d17          	auipc	s10,0x7
   1abc8:	03cd0d13          	addi	s10,s10,60 # 21c00 <__clzdi2+0x74>
   1abcc:	e69750e3          	bge	a4,s1,1aa2c <_svfprintf_r+0x1ab4>
   1abd0:	00007d17          	auipc	s10,0x7
   1abd4:	038d0d13          	addi	s10,s10,56 # 21c08 <__clzdi2+0x7c>
   1abd8:	e55ff06f          	j	1aa2c <_svfprintf_r+0x1ab4>
   1abdc:	0017071b          	addiw	a4,a4,1
   1abe0:	00008697          	auipc	a3,0x8
   1abe4:	86068693          	addi	a3,a3,-1952 # 22440 <zeroes.0>
   1abe8:	009787b3          	add	a5,a5,s1
   1abec:	00ddb023          	sd	a3,0(s11)
   1abf0:	009db423          	sd	s1,8(s11)
   1abf4:	0007069b          	sext.w	a3,a4
   1abf8:	10e12423          	sw	a4,264(sp)
   1abfc:	10f13823          	sd	a5,272(sp)
   1ac00:	00700713          	li	a4,7
   1ac04:	010d8d93          	addi	s11,s11,16
   1ac08:	ced75263          	bge	a4,a3,1a0ec <_svfprintf_r+0x1174>
   1ac0c:	10010613          	addi	a2,sp,256
   1ac10:	000c0593          	mv	a1,s8
   1ac14:	000c8513          	mv	a0,s9
   1ac18:	3bc030ef          	jal	ra,1dfd4 <__ssprint_r>
   1ac1c:	a4051663          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1ac20:	11013783          	ld	a5,272(sp)
   1ac24:	18010d93          	addi	s11,sp,384
   1ac28:	cc4ff06f          	j	1a0ec <_svfprintf_r+0x1174>
   1ac2c:	00007d17          	auipc	s10,0x7
   1ac30:	fccd0d13          	addi	s10,s10,-52 # 21bf8 <__clzdi2+0x6c>
   1ac34:	df9ff06f          	j	1aa2c <_svfprintf_r+0x1ab4>
   1ac38:	10010613          	addi	a2,sp,256
   1ac3c:	000c0593          	mv	a1,s8
   1ac40:	000c8513          	mv	a0,s9
   1ac44:	390030ef          	jal	ra,1dfd4 <__ssprint_r>
   1ac48:	a2051063          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1ac4c:	11013783          	ld	a5,272(sp)
   1ac50:	18010d93          	addi	s11,sp,384
   1ac54:	c80ff06f          	j	1a0d4 <_svfprintf_r+0x115c>
   1ac58:	00600b93          	li	s7,6
   1ac5c:	e0dff06f          	j	1aa68 <_svfprintf_r+0x1af0>
   1ac60:	02013683          	ld	a3,32(sp)
   1ac64:	00dd0833          	add	a6,s10,a3
   1ac68:	40e6863b          	subw	a2,a3,a4
   1ac6c:	40980e3b          	subw	t3,a6,s1
   1ac70:	00060493          	mv	s1,a2
   1ac74:	00ce5463          	bge	t3,a2,1ac7c <_svfprintf_r+0x1d04>
   1ac78:	000e0493          	mv	s1,t3
   1ac7c:	0004899b          	sext.w	s3,s1
   1ac80:	d10ff06f          	j	1a190 <_svfprintf_r+0x1218>
   1ac84:	00013783          	ld	a5,0(sp)
   1ac88:	00040d13          	mv	s10,s0
   1ac8c:	00f71023          	sh	a5,0(a4)
   1ac90:	decfe06f          	j	1927c <_svfprintf_r+0x304>
   1ac94:	02099993          	slli	s3,s3,0x20
   1ac98:	0209d993          	srli	s3,s3,0x20
   1ac9c:	facff06f          	j	1a448 <_svfprintf_r+0x14d0>
   1aca0:	02099993          	slli	s3,s3,0x20
   1aca4:	0209d993          	srli	s3,s3,0x20
   1aca8:	00d13823          	sd	a3,16(sp)
   1acac:	00100793          	li	a5,1
   1acb0:	b55fe06f          	j	19804 <_svfprintf_r+0x88c>
   1acb4:	02099993          	slli	s3,s3,0x20
   1acb8:	0209d993          	srli	s3,s3,0x20
   1acbc:	b39fe06f          	j	197f4 <_svfprintf_r+0x87c>
   1acc0:	01013783          	ld	a5,16(sp)
   1acc4:	0007a983          	lw	s3,0(a5)
   1acc8:	00098793          	mv	a5,s3
   1accc:	dd9fe06f          	j	19aa4 <_svfprintf_r+0xb2c>
   1acd0:	10010613          	addi	a2,sp,256
   1acd4:	000c0593          	mv	a1,s8
   1acd8:	000c8513          	mv	a0,s9
   1acdc:	2f8030ef          	jal	ra,1dfd4 <__ssprint_r>
   1ace0:	010c5783          	lhu	a5,16(s8)
   1ace4:	db0fe06f          	j	19294 <_svfprintf_r+0x31c>
   1ace8:	0cf14783          	lbu	a5,207(sp)
   1acec:	ed5ff06f          	j	1abc0 <_svfprintf_r+0x1c48>
   1acf0:	10010613          	addi	a2,sp,256
   1acf4:	000c0593          	mv	a1,s8
   1acf8:	000c8513          	mv	a0,s9
   1acfc:	2d8030ef          	jal	ra,1dfd4 <__ssprint_r>
   1ad00:	96051463          	bnez	a0,19e68 <_svfprintf_r+0xef0>
   1ad04:	0d812603          	lw	a2,216(sp)
   1ad08:	11013783          	ld	a5,272(sp)
   1ad0c:	10812703          	lw	a4,264(sp)
   1ad10:	18010313          	addi	t1,sp,384
   1ad14:	bc065ce3          	bgez	a2,1a8ec <_svfprintf_r+0x1974>
   1ad18:	d9dff06f          	j	1aab4 <_svfprintf_r+0x1b3c>
   1ad1c:	00600e13          	li	t3,6
   1ad20:	e94fe06f          	j	193b4 <_svfprintf_r+0x43c>
   1ad24:	000d8d13          	mv	s10,s11
   1ad28:	00070d93          	mv	s11,a4
   1ad2c:	02013703          	ld	a4,32(sp)
   1ad30:	04813c23          	sd	s0,88(sp)
   1ad34:	06013903          	ld	s2,96(sp)
   1ad38:	00ed0733          	add	a4,s10,a4
   1ad3c:	01813403          	ld	s0,24(sp)
   1ad40:	07813a03          	ld	s4,120(sp)
   1ad44:	02813a83          	ld	s5,40(sp)
   1ad48:	ba977a63          	bgeu	a4,s1,1a0fc <_svfprintf_r+0x1184>
   1ad4c:	00070493          	mv	s1,a4
   1ad50:	bacff06f          	j	1a0fc <_svfprintf_r+0x1184>
   1ad54:	01813703          	ld	a4,24(sp)
   1ad58:	ffd00793          	li	a5,-3
   1ad5c:	00f74463          	blt	a4,a5,1ad64 <_svfprintf_r+0x1dec>
   1ad60:	00ee5a63          	bge	t3,a4,1ad74 <_svfprintf_r+0x1dfc>
   1ad64:	ffe4849b          	addiw	s1,s1,-2
   1ad68:	fdf4f793          	andi	a5,s1,-33
   1ad6c:	02f13423          	sd	a5,40(sp)
   1ad70:	f0cfe06f          	j	1947c <_svfprintf_r+0x504>
   1ad74:	01813703          	ld	a4,24(sp)
   1ad78:	02013783          	ld	a5,32(sp)
   1ad7c:	1af74e63          	blt	a4,a5,1af38 <_svfprintf_r+0x1fc0>
   1ad80:	03013783          	ld	a5,48(sp)
   1ad84:	00070b93          	mv	s7,a4
   1ad88:	0017f793          	andi	a5,a5,1
   1ad8c:	00078663          	beqz	a5,1ad98 <_svfprintf_r+0x1e20>
   1ad90:	03813783          	ld	a5,56(sp)
   1ad94:	00e78bbb          	addw	s7,a5,a4
   1ad98:	03013783          	ld	a5,48(sp)
   1ad9c:	4007f793          	andi	a5,a5,1024
   1ada0:	00078663          	beqz	a5,1adac <_svfprintf_r+0x1e34>
   1ada4:	01813783          	ld	a5,24(sp)
   1ada8:	68f04e63          	bgtz	a5,1b444 <_svfprintf_r+0x24cc>
   1adac:	fffbca93          	not	s5,s7
   1adb0:	43fada93          	srai	s5,s5,0x3f
   1adb4:	015bfab3          	and	s5,s7,s5
   1adb8:	000a8a9b          	sext.w	s5,s5
   1adbc:	06700493          	li	s1,103
   1adc0:	02013823          	sd	zero,48(sp)
   1adc4:	02013423          	sd	zero,40(sp)
   1adc8:	ff4fe06f          	j	195bc <_svfprintf_r+0x644>
   1adcc:	0cf14783          	lbu	a5,207(sp)
   1add0:	00000e13          	li	t3,0
   1add4:	00078463          	beqz	a5,1addc <_svfprintf_r+0x1e64>
   1add8:	9f5fe06f          	j	197cc <_svfprintf_r+0x854>
   1addc:	b80fe06f          	j	1915c <_svfprintf_r+0x1e4>
   1ade0:	10010613          	addi	a2,sp,256
   1ade4:	000c0593          	mv	a1,s8
   1ade8:	000c8513          	mv	a0,s9
   1adec:	1e8030ef          	jal	ra,1dfd4 <__ssprint_r>
   1adf0:	00050463          	beqz	a0,1adf8 <_svfprintf_r+0x1e80>
   1adf4:	874ff06f          	j	19e68 <_svfprintf_r+0xef0>
   1adf8:	00044603          	lbu	a2,0(s0)
   1adfc:	11013783          	ld	a5,272(sp)
   1ae00:	18010713          	addi	a4,sp,384
   1ae04:	00700893          	li	a7,7
   1ae08:	00c484b3          	add	s1,s1,a2
   1ae0c:	855ff06f          	j	1a660 <_svfprintf_r+0x16e8>
   1ae10:	000e0713          	mv	a4,t3
   1ae14:	0d810793          	addi	a5,sp,216
   1ae18:	0e810893          	addi	a7,sp,232
   1ae1c:	0dc10813          	addi	a6,sp,220
   1ae20:	00300693          	li	a3,3
   1ae24:	000b8593          	mv	a1,s7
   1ae28:	000a8613          	mv	a2,s5
   1ae2c:	000c8513          	mv	a0,s9
   1ae30:	01c13c23          	sd	t3,24(sp)
   1ae34:	f24fa0ef          	jal	ra,15558 <_ldtoa_r>
   1ae38:	00054703          	lbu	a4,0(a0)
   1ae3c:	03000793          	li	a5,48
   1ae40:	01813e03          	ld	t3,24(sp)
   1ae44:	00050d13          	mv	s10,a0
   1ae48:	06f70063          	beq	a4,a5,1aea8 <_svfprintf_r+0x1f30>
   1ae4c:	0d812783          	lw	a5,216(sp)
   1ae50:	01c787b3          	add	a5,a5,t3
   1ae54:	00fd09b3          	add	s3,s10,a5
   1ae58:	00000613          	li	a2,0
   1ae5c:	00000693          	li	a3,0
   1ae60:	000b8513          	mv	a0,s7
   1ae64:	000a8593          	mv	a1,s5
   1ae68:	01c13c23          	sd	t3,24(sp)
   1ae6c:	7d9040ef          	jal	ra,1fe44 <__eqtf2>
   1ae70:	01813e03          	ld	t3,24(sp)
   1ae74:	00098793          	mv	a5,s3
   1ae78:	00051463          	bnez	a0,1ae80 <_svfprintf_r+0x1f08>
   1ae7c:	dd0fe06f          	j	1944c <_svfprintf_r+0x4d4>
   1ae80:	0e813783          	ld	a5,232(sp)
   1ae84:	0137e463          	bltu	a5,s3,1ae8c <_svfprintf_r+0x1f14>
   1ae88:	dc4fe06f          	j	1944c <_svfprintf_r+0x4d4>
   1ae8c:	03000693          	li	a3,48
   1ae90:	00178713          	addi	a4,a5,1
   1ae94:	0ee13423          	sd	a4,232(sp)
   1ae98:	00d78023          	sb	a3,0(a5)
   1ae9c:	0e813783          	ld	a5,232(sp)
   1aea0:	ff37e8e3          	bltu	a5,s3,1ae90 <_svfprintf_r+0x1f18>
   1aea4:	da8fe06f          	j	1944c <_svfprintf_r+0x4d4>
   1aea8:	00000613          	li	a2,0
   1aeac:	00000693          	li	a3,0
   1aeb0:	000b8513          	mv	a0,s7
   1aeb4:	000a8593          	mv	a1,s5
   1aeb8:	01c13c23          	sd	t3,24(sp)
   1aebc:	789040ef          	jal	ra,1fe44 <__eqtf2>
   1aec0:	01813e03          	ld	t3,24(sp)
   1aec4:	f80504e3          	beqz	a0,1ae4c <_svfprintf_r+0x1ed4>
   1aec8:	00100713          	li	a4,1
   1aecc:	41c707bb          	subw	a5,a4,t3
   1aed0:	0cf12c23          	sw	a5,216(sp)
   1aed4:	f7dff06f          	j	1ae50 <_svfprintf_r+0x1ed8>
   1aed8:	02d00793          	li	a5,45
   1aedc:	0cf107a3          	sb	a5,207(sp)
   1aee0:	b3dff06f          	j	1aa1c <_svfprintf_r+0x1aa4>
   1aee4:	10010613          	addi	a2,sp,256
   1aee8:	000c0593          	mv	a1,s8
   1aeec:	000c8513          	mv	a0,s9
   1aef0:	0e4030ef          	jal	ra,1dfd4 <__ssprint_r>
   1aef4:	00050463          	beqz	a0,1aefc <_svfprintf_r+0x1f84>
   1aef8:	f71fe06f          	j	19e68 <_svfprintf_r+0xef0>
   1aefc:	0d812703          	lw	a4,216(sp)
   1af00:	11013783          	ld	a5,272(sp)
   1af04:	18010d93          	addi	s11,sp,384
   1af08:	a3cff06f          	j	1a144 <_svfprintf_r+0x11cc>
   1af0c:	0cf14783          	lbu	a5,207(sp)
   1af10:	01313823          	sd	s3,16(sp)
   1af14:	02013823          	sd	zero,48(sp)
   1af18:	02013423          	sd	zero,40(sp)
   1af1c:	00013c23          	sd	zero,24(sp)
   1af20:	000e0a93          	mv	s5,t3
   1af24:	000e0b93          	mv	s7,t3
   1af28:	00000e13          	li	t3,0
   1af2c:	00078463          	beqz	a5,1af34 <_svfprintf_r+0x1fbc>
   1af30:	89dfe06f          	j	197cc <_svfprintf_r+0x854>
   1af34:	a28fe06f          	j	1915c <_svfprintf_r+0x1e4>
   1af38:	02013703          	ld	a4,32(sp)
   1af3c:	03813783          	ld	a5,56(sp)
   1af40:	06700493          	li	s1,103
   1af44:	00e78bbb          	addw	s7,a5,a4
   1af48:	01813703          	ld	a4,24(sp)
   1af4c:	5ee05663          	blez	a4,1b538 <_svfprintf_r+0x25c0>
   1af50:	03013783          	ld	a5,48(sp)
   1af54:	4007f793          	andi	a5,a5,1024
   1af58:	4e079863          	bnez	a5,1b448 <_svfprintf_r+0x24d0>
   1af5c:	fffbca93          	not	s5,s7
   1af60:	43fada93          	srai	s5,s5,0x3f
   1af64:	015bfab3          	and	s5,s7,s5
   1af68:	000a8a9b          	sext.w	s5,s5
   1af6c:	e55ff06f          	j	1adc0 <_svfprintf_r+0x1e48>
   1af70:	03013783          	ld	a5,48(sp)
   1af74:	01813703          	ld	a4,24(sp)
   1af78:	0017f793          	andi	a5,a5,1
   1af7c:	00fe67b3          	or	a5,t3,a5
   1af80:	5ee05a63          	blez	a4,1b574 <_svfprintf_r+0x25fc>
   1af84:	46079e63          	bnez	a5,1b400 <_svfprintf_r+0x2488>
   1af88:	01813b83          	ld	s7,24(sp)
   1af8c:	06600493          	li	s1,102
   1af90:	fc1ff06f          	j	1af50 <_svfprintf_r+0x1fd8>
   1af94:	10010613          	addi	a2,sp,256
   1af98:	000c0593          	mv	a1,s8
   1af9c:	000c8513          	mv	a0,s9
   1afa0:	034030ef          	jal	ra,1dfd4 <__ssprint_r>
   1afa4:	00050463          	beqz	a0,1afac <_svfprintf_r+0x2034>
   1afa8:	ec1fe06f          	j	19e68 <_svfprintf_r+0xef0>
   1afac:	0d812603          	lw	a2,216(sp)
   1afb0:	02013703          	ld	a4,32(sp)
   1afb4:	11013783          	ld	a5,272(sp)
   1afb8:	18010d93          	addi	s11,sp,384
   1afbc:	40c7063b          	subw	a2,a4,a2
   1afc0:	9d0ff06f          	j	1a190 <_svfprintf_r+0x1218>
   1afc4:	03000793          	li	a5,48
   1afc8:	0cf10823          	sb	a5,208(sp)
   1afcc:	05800713          	li	a4,88
   1afd0:	00296793          	ori	a5,s2,2
   1afd4:	0007879b          	sext.w	a5,a5
   1afd8:	0ce108a3          	sb	a4,209(sp)
   1afdc:	02f13823          	sd	a5,48(sp)
   1afe0:	06300713          	li	a4,99
   1afe4:	00013423          	sd	zero,8(sp)
   1afe8:	11810d13          	addi	s10,sp,280
   1afec:	2dc74a63          	blt	a4,t3,1b2c0 <_svfprintf_r+0x2348>
   1aff0:	0f813a83          	ld	s5,248(sp)
   1aff4:	fdf4f793          	andi	a5,s1,-33
   1aff8:	10296913          	ori	s2,s2,258
   1affc:	02f13423          	sd	a5,40(sp)
   1b000:	06013023          	sd	zero,96(sp)
   1b004:	0f013b83          	ld	s7,240(sp)
   1b008:	0009091b          	sext.w	s2,s2
   1b00c:	220ace63          	bltz	s5,1b248 <_svfprintf_r+0x22d0>
   1b010:	06100793          	li	a5,97
   1b014:	4cf48063          	beq	s1,a5,1b4d4 <_svfprintf_r+0x255c>
   1b018:	04100793          	li	a5,65
   1b01c:	00f48463          	beq	s1,a5,1b024 <_svfprintf_r+0x20ac>
   1b020:	bbcfe06f          	j	193dc <_svfprintf_r+0x464>
   1b024:	000a8593          	mv	a1,s5
   1b028:	000b8513          	mv	a0,s7
   1b02c:	01c13c23          	sd	t3,24(sp)
   1b030:	73c060ef          	jal	ra,2176c <__trunctfdf2>
   1b034:	0d810513          	addi	a0,sp,216
   1b038:	8e5fd0ef          	jal	ra,1891c <frexp>
   1b03c:	610060ef          	jal	ra,2164c <__extenddftf2>
   1b040:	00007797          	auipc	a5,0x7
   1b044:	dc078793          	addi	a5,a5,-576 # 21e00 <zeroes.0+0x30>
   1b048:	0007b603          	ld	a2,0(a5)
   1b04c:	0087b683          	ld	a3,8(a5)
   1b050:	08c050ef          	jal	ra,200dc <__multf3>
   1b054:	00000613          	li	a2,0
   1b058:	00000693          	li	a3,0
   1b05c:	00050993          	mv	s3,a0
   1b060:	00058b93          	mv	s7,a1
   1b064:	5e1040ef          	jal	ra,1fe44 <__eqtf2>
   1b068:	01813e03          	ld	t3,24(sp)
   1b06c:	00051663          	bnez	a0,1b078 <_svfprintf_r+0x2100>
   1b070:	00100713          	li	a4,1
   1b074:	0ce12c23          	sw	a4,216(sp)
   1b078:	00007797          	auipc	a5,0x7
   1b07c:	b9878793          	addi	a5,a5,-1128 # 21c10 <__clzdi2+0x84>
   1b080:	00f13c23          	sd	a5,24(sp)
   1b084:	020e1713          	slli	a4,t3,0x20
   1b088:	00007697          	auipc	a3,0x7
   1b08c:	d5868693          	addi	a3,a3,-680 # 21de0 <zeroes.0+0x10>
   1b090:	02075713          	srli	a4,a4,0x20
   1b094:	0006b783          	ld	a5,0(a3)
   1b098:	00170713          	addi	a4,a4,1
   1b09c:	0086b683          	ld	a3,8(a3)
   1b0a0:	00ed0733          	add	a4,s10,a4
   1b0a4:	02e13023          	sd	a4,32(sp)
   1b0a8:	01cd073b          	addw	a4,s10,t3
   1b0ac:	07413c23          	sd	s4,120(sp)
   1b0b0:	0bb13023          	sd	s11,160(sp)
   1b0b4:	0b913423          	sd	s9,168(sp)
   1b0b8:	0b813823          	sd	s8,176(sp)
   1b0bc:	0ba13c23          	sd	s10,184(sp)
   1b0c0:	000d0c13          	mv	s8,s10
   1b0c4:	00098c93          	mv	s9,s3
   1b0c8:	08913423          	sd	s1,136(sp)
   1b0cc:	08813823          	sd	s0,144(sp)
   1b0d0:	09213c23          	sd	s2,152(sp)
   1b0d4:	09c13023          	sd	t3,128(sp)
   1b0d8:	000b8d13          	mv	s10,s7
   1b0dc:	00070a13          	mv	s4,a4
   1b0e0:	00078d93          	mv	s11,a5
   1b0e4:	00068993          	mv	s3,a3
   1b0e8:	0140006f          	j	1b0fc <_svfprintf_r+0x2184>
   1b0ec:	00000613          	li	a2,0
   1b0f0:	00000693          	li	a3,0
   1b0f4:	551040ef          	jal	ra,1fe44 <__eqtf2>
   1b0f8:	2c050463          	beqz	a0,1b3c0 <_svfprintf_r+0x2448>
   1b0fc:	000d8613          	mv	a2,s11
   1b100:	00098693          	mv	a3,s3
   1b104:	000c8513          	mv	a0,s9
   1b108:	000d0593          	mv	a1,s10
   1b10c:	7d1040ef          	jal	ra,200dc <__multf3>
   1b110:	00058a93          	mv	s5,a1
   1b114:	00050b93          	mv	s7,a0
   1b118:	3d8060ef          	jal	ra,214f0 <__fixtfsi>
   1b11c:	0005041b          	sext.w	s0,a0
   1b120:	4a4060ef          	jal	ra,215c4 <__floatsitf>
   1b124:	00058693          	mv	a3,a1
   1b128:	00050613          	mv	a2,a0
   1b12c:	000a8593          	mv	a1,s5
   1b130:	000b8513          	mv	a0,s7
   1b134:	0bd050ef          	jal	ra,209f0 <__subtf3>
   1b138:	01813783          	ld	a5,24(sp)
   1b13c:	000c0a93          	mv	s5,s8
   1b140:	001c0c13          	addi	s8,s8,1
   1b144:	00878733          	add	a4,a5,s0
   1b148:	00074683          	lbu	a3,0(a4)
   1b14c:	02013783          	ld	a5,32(sp)
   1b150:	00050493          	mv	s1,a0
   1b154:	fedc0fa3          	sb	a3,-1(s8)
   1b158:	00058913          	mv	s2,a1
   1b15c:	00050c93          	mv	s9,a0
   1b160:	00058d13          	mv	s10,a1
   1b164:	418a0bbb          	subw	s7,s4,s8
   1b168:	f98792e3          	bne	a5,s8,1b0ec <_svfprintf_r+0x2174>
   1b16c:	08013e03          	ld	t3,128(sp)
   1b170:	03513023          	sd	s5,32(sp)
   1b174:	08813023          	sd	s0,128(sp)
   1b178:	000c0a93          	mv	s5,s8
   1b17c:	0a013d83          	ld	s11,160(sp)
   1b180:	09013403          	ld	s0,144(sp)
   1b184:	0a813c83          	ld	s9,168(sp)
   1b188:	0b013c03          	ld	s8,176(sp)
   1b18c:	0b813d03          	ld	s10,184(sp)
   1b190:	08813483          	ld	s1,136(sp)
   1b194:	09813903          	ld	s2,152(sp)
   1b198:	fff00793          	li	a5,-1
   1b19c:	07813a03          	ld	s4,120(sp)
   1b1a0:	00050e93          	mv	t4,a0
   1b1a4:	00058713          	mv	a4,a1
   1b1a8:	06f13c23          	sd	a5,120(sp)
   1b1ac:	00007797          	auipc	a5,0x7
   1b1b0:	c4478793          	addi	a5,a5,-956 # 21df0 <zeroes.0+0x20>
   1b1b4:	0007bb83          	ld	s7,0(a5)
   1b1b8:	0087b983          	ld	s3,8(a5)
   1b1bc:	000e8513          	mv	a0,t4
   1b1c0:	000b8613          	mv	a2,s7
   1b1c4:	00098693          	mv	a3,s3
   1b1c8:	00070593          	mv	a1,a4
   1b1cc:	09c13423          	sd	t3,136(sp)
   1b1d0:	09d13c23          	sd	t4,152(sp)
   1b1d4:	08e13823          	sd	a4,144(sp)
   1b1d8:	53d040ef          	jal	ra,1ff14 <__getf2>
   1b1dc:	08813e03          	ld	t3,136(sp)
   1b1e0:	08a04063          	bgtz	a0,1b260 <_svfprintf_r+0x22e8>
   1b1e4:	09813e83          	ld	t4,152(sp)
   1b1e8:	09013703          	ld	a4,144(sp)
   1b1ec:	000b8613          	mv	a2,s7
   1b1f0:	00098693          	mv	a3,s3
   1b1f4:	000e8513          	mv	a0,t4
   1b1f8:	00070593          	mv	a1,a4
   1b1fc:	449040ef          	jal	ra,1fe44 <__eqtf2>
   1b200:	08813e03          	ld	t3,136(sp)
   1b204:	00051863          	bnez	a0,1b214 <_svfprintf_r+0x229c>
   1b208:	08013783          	ld	a5,128(sp)
   1b20c:	0017f793          	andi	a5,a5,1
   1b210:	04079863          	bnez	a5,1b260 <_svfprintf_r+0x22e8>
   1b214:	07813683          	ld	a3,120(sp)
   1b218:	03000713          	li	a4,48
   1b21c:	0016879b          	addiw	a5,a3,1
   1b220:	00fa87b3          	add	a5,s5,a5
   1b224:	0006c863          	bltz	a3,1b234 <_svfprintf_r+0x22bc>
   1b228:	001a8a93          	addi	s5,s5,1
   1b22c:	feea8fa3          	sb	a4,-1(s5)
   1b230:	ff579ce3          	bne	a5,s5,1b228 <_svfprintf_r+0x22b0>
   1b234:	41aa87bb          	subw	a5,s5,s10
   1b238:	02f13023          	sd	a5,32(sp)
   1b23c:	a18fe06f          	j	19454 <_svfprintf_r+0x4dc>
   1b240:	00013423          	sd	zero,8(sp)
   1b244:	00078913          	mv	s2,a5
   1b248:	fff00793          	li	a5,-1
   1b24c:	03f79793          	slli	a5,a5,0x3f
   1b250:	00facab3          	xor	s5,s5,a5
   1b254:	02d00793          	li	a5,45
   1b258:	06f13023          	sd	a5,96(sp)
   1b25c:	db5ff06f          	j	1b010 <_svfprintf_r+0x2098>
   1b260:	02013783          	ld	a5,32(sp)
   1b264:	0ef13423          	sd	a5,232(sp)
   1b268:	01813783          	ld	a5,24(sp)
   1b26c:	fffac703          	lbu	a4,-1(s5)
   1b270:	00f7c683          	lbu	a3,15(a5)
   1b274:	000a8793          	mv	a5,s5
   1b278:	02e69063          	bne	a3,a4,1b298 <_svfprintf_r+0x2320>
   1b27c:	03000613          	li	a2,48
   1b280:	fec78fa3          	sb	a2,-1(a5)
   1b284:	0e813783          	ld	a5,232(sp)
   1b288:	fff78713          	addi	a4,a5,-1
   1b28c:	0ee13423          	sd	a4,232(sp)
   1b290:	fff7c703          	lbu	a4,-1(a5)
   1b294:	fee686e3          	beq	a3,a4,1b280 <_svfprintf_r+0x2308>
   1b298:	0017069b          	addiw	a3,a4,1
   1b29c:	03900613          	li	a2,57
   1b2a0:	0ff6f693          	andi	a3,a3,255
   1b2a4:	00c70663          	beq	a4,a2,1b2b0 <_svfprintf_r+0x2338>
   1b2a8:	fed78fa3          	sb	a3,-1(a5)
   1b2ac:	f89ff06f          	j	1b234 <_svfprintf_r+0x22bc>
   1b2b0:	01813703          	ld	a4,24(sp)
   1b2b4:	00a74683          	lbu	a3,10(a4)
   1b2b8:	fed78fa3          	sb	a3,-1(a5)
   1b2bc:	f79ff06f          	j	1b234 <_svfprintf_r+0x22bc>
   1b2c0:	001e059b          	addiw	a1,t3,1
   1b2c4:	000c8513          	mv	a0,s9
   1b2c8:	01c13423          	sd	t3,8(sp)
   1b2cc:	96dfb0ef          	jal	ra,16c38 <_malloc_r>
   1b2d0:	00813e03          	ld	t3,8(sp)
   1b2d4:	00050d13          	mv	s10,a0
   1b2d8:	32050463          	beqz	a0,1b600 <_svfprintf_r+0x2688>
   1b2dc:	00a13423          	sd	a0,8(sp)
   1b2e0:	d11ff06f          	j	1aff0 <_svfprintf_r+0x2078>
   1b2e4:	03000793          	li	a5,48
   1b2e8:	0cf10823          	sb	a5,208(sp)
   1b2ec:	07800713          	li	a4,120
   1b2f0:	ce1ff06f          	j	1afd0 <_svfprintf_r+0x2058>
   1b2f4:	00090a93          	mv	s5,s2
   1b2f8:	fd0fe06f          	j	19ac8 <_svfprintf_r+0xb50>
   1b2fc:	001e099b          	addiw	s3,t3,1
   1b300:	00098713          	mv	a4,s3
   1b304:	0e810893          	addi	a7,sp,232
   1b308:	0dc10813          	addi	a6,sp,220
   1b30c:	0d810793          	addi	a5,sp,216
   1b310:	00200693          	li	a3,2
   1b314:	000b8593          	mv	a1,s7
   1b318:	000a8613          	mv	a2,s5
   1b31c:	000c8513          	mv	a0,s9
   1b320:	01c13c23          	sd	t3,24(sp)
   1b324:	a34fa0ef          	jal	ra,15558 <_ldtoa_r>
   1b328:	00050d13          	mv	s10,a0
   1b32c:	01813e03          	ld	t3,24(sp)
   1b330:	013d09b3          	add	s3,s10,s3
   1b334:	b25ff06f          	j	1ae58 <_svfprintf_r+0x1ee0>
   1b338:	01cd09b3          	add	s3,s10,t3
   1b33c:	b1dff06f          	j	1ae58 <_svfprintf_r+0x1ee0>
   1b340:	0017069b          	addiw	a3,a4,1
   1b344:	009787b3          	add	a5,a5,s1
   1b348:	00007717          	auipc	a4,0x7
   1b34c:	0f870713          	addi	a4,a4,248 # 22440 <zeroes.0>
   1b350:	00e33023          	sd	a4,0(t1)
   1b354:	00933423          	sd	s1,8(t1)
   1b358:	0006871b          	sext.w	a4,a3
   1b35c:	10d12423          	sw	a3,264(sp)
   1b360:	10f13823          	sd	a5,272(sp)
   1b364:	00700693          	li	a3,7
   1b368:	01030313          	addi	t1,t1,16
   1b36c:	d8e6d063          	bge	a3,a4,1a8ec <_svfprintf_r+0x1974>
   1b370:	10010613          	addi	a2,sp,256
   1b374:	000c0593          	mv	a1,s8
   1b378:	000c8513          	mv	a0,s9
   1b37c:	459020ef          	jal	ra,1dfd4 <__ssprint_r>
   1b380:	00050463          	beqz	a0,1b388 <_svfprintf_r+0x2410>
   1b384:	ae5fe06f          	j	19e68 <_svfprintf_r+0xef0>
   1b388:	11013783          	ld	a5,272(sp)
   1b38c:	10812703          	lw	a4,264(sp)
   1b390:	18010313          	addi	t1,sp,384
   1b394:	d58ff06f          	j	1a8ec <_svfprintf_r+0x1974>
   1b398:	000e0463          	beqz	t3,1b3a0 <_svfprintf_r+0x2428>
   1b39c:	818fe06f          	j	193b4 <_svfprintf_r+0x43c>
   1b3a0:	00100e13          	li	t3,1
   1b3a4:	810fe06f          	j	193b4 <_svfprintf_r+0x43c>
   1b3a8:	00f72023          	sw	a5,0(a4)
   1b3ac:	00040d13          	mv	s10,s0
   1b3b0:	ecdfd06f          	j	1927c <_svfprintf_r+0x304>
   1b3b4:	fff00793          	li	a5,-1
   1b3b8:	00f13023          	sd	a5,0(sp)
   1b3bc:	ee5fd06f          	j	192a0 <_svfprintf_r+0x328>
   1b3c0:	07813a03          	ld	s4,120(sp)
   1b3c4:	08013e03          	ld	t3,128(sp)
   1b3c8:	03513023          	sd	s5,32(sp)
   1b3cc:	08813023          	sd	s0,128(sp)
   1b3d0:	000c0a93          	mv	s5,s8
   1b3d4:	00048e93          	mv	t4,s1
   1b3d8:	00090713          	mv	a4,s2
   1b3dc:	0a013d83          	ld	s11,160(sp)
   1b3e0:	09013403          	ld	s0,144(sp)
   1b3e4:	0a813c83          	ld	s9,168(sp)
   1b3e8:	0b013c03          	ld	s8,176(sp)
   1b3ec:	0b813d03          	ld	s10,184(sp)
   1b3f0:	08813483          	ld	s1,136(sp)
   1b3f4:	09813903          	ld	s2,152(sp)
   1b3f8:	07713c23          	sd	s7,120(sp)
   1b3fc:	db1ff06f          	j	1b1ac <_svfprintf_r+0x2234>
   1b400:	03813783          	ld	a5,56(sp)
   1b404:	06600493          	li	s1,102
   1b408:	00e78bbb          	addw	s7,a5,a4
   1b40c:	01cb8bbb          	addw	s7,s7,t3
   1b410:	b41ff06f          	j	1af50 <_svfprintf_r+0x1fd8>
   1b414:	0e210713          	addi	a4,sp,226
   1b418:	00069863          	bnez	a3,1b428 <_svfprintf_r+0x24b0>
   1b41c:	03000793          	li	a5,48
   1b420:	0ef10123          	sb	a5,226(sp)
   1b424:	0e310713          	addi	a4,sp,227
   1b428:	20010693          	addi	a3,sp,512
   1b42c:	030a879b          	addiw	a5,s5,48
   1b430:	40d706b3          	sub	a3,a4,a3
   1b434:	00f70023          	sb	a5,0(a4)
   1b438:	1216879b          	addiw	a5,a3,289
   1b43c:	04f13823          	sd	a5,80(sp)
   1b440:	92cfe06f          	j	1956c <_svfprintf_r+0x5f4>
   1b444:	06700493          	li	s1,103
   1b448:	05813603          	ld	a2,88(sp)
   1b44c:	0ff00713          	li	a4,255
   1b450:	00064783          	lbu	a5,0(a2)
   1b454:	18e78a63          	beq	a5,a4,1b5e8 <_svfprintf_r+0x2670>
   1b458:	01813703          	ld	a4,24(sp)
   1b45c:	00000813          	li	a6,0
   1b460:	00000513          	li	a0,0
   1b464:	0ff00693          	li	a3,255
   1b468:	0007859b          	sext.w	a1,a5
   1b46c:	00e7de63          	bge	a5,a4,1b488 <_svfprintf_r+0x2510>
   1b470:	00164783          	lbu	a5,1(a2)
   1b474:	40b7073b          	subw	a4,a4,a1
   1b478:	04078863          	beqz	a5,1b4c8 <_svfprintf_r+0x2550>
   1b47c:	0015051b          	addiw	a0,a0,1
   1b480:	00160613          	addi	a2,a2,1
   1b484:	fed792e3          	bne	a5,a3,1b468 <_svfprintf_r+0x24f0>
   1b488:	04c13c23          	sd	a2,88(sp)
   1b48c:	00e13c23          	sd	a4,24(sp)
   1b490:	02a13423          	sd	a0,40(sp)
   1b494:	03013823          	sd	a6,48(sp)
   1b498:	02813783          	ld	a5,40(sp)
   1b49c:	03013703          	ld	a4,48(sp)
   1b4a0:	06813583          	ld	a1,104(sp)
   1b4a4:	00e7853b          	addw	a0,a5,a4
   1b4a8:	5c0060ef          	jal	ra,21a68 <__muldi3>
   1b4ac:	017507bb          	addw	a5,a0,s7
   1b4b0:	00078b9b          	sext.w	s7,a5
   1b4b4:	fffbca93          	not	s5,s7
   1b4b8:	43fada93          	srai	s5,s5,0x3f
   1b4bc:	0157f7b3          	and	a5,a5,s5
   1b4c0:	00078a9b          	sext.w	s5,a5
   1b4c4:	8f8fe06f          	j	195bc <_svfprintf_r+0x644>
   1b4c8:	00064783          	lbu	a5,0(a2)
   1b4cc:	0018081b          	addiw	a6,a6,1
   1b4d0:	fb5ff06f          	j	1b484 <_svfprintf_r+0x250c>
   1b4d4:	000a8593          	mv	a1,s5
   1b4d8:	000b8513          	mv	a0,s7
   1b4dc:	01c13c23          	sd	t3,24(sp)
   1b4e0:	28c060ef          	jal	ra,2176c <__trunctfdf2>
   1b4e4:	0d810513          	addi	a0,sp,216
   1b4e8:	c34fd0ef          	jal	ra,1891c <frexp>
   1b4ec:	160060ef          	jal	ra,2164c <__extenddftf2>
   1b4f0:	00007797          	auipc	a5,0x7
   1b4f4:	91078793          	addi	a5,a5,-1776 # 21e00 <zeroes.0+0x30>
   1b4f8:	0007b603          	ld	a2,0(a5)
   1b4fc:	0087b683          	ld	a3,8(a5)
   1b500:	3dd040ef          	jal	ra,200dc <__multf3>
   1b504:	00000613          	li	a2,0
   1b508:	00000693          	li	a3,0
   1b50c:	00050993          	mv	s3,a0
   1b510:	00058b93          	mv	s7,a1
   1b514:	131040ef          	jal	ra,1fe44 <__eqtf2>
   1b518:	01813e03          	ld	t3,24(sp)
   1b51c:	00051663          	bnez	a0,1b528 <_svfprintf_r+0x25b0>
   1b520:	00100713          	li	a4,1
   1b524:	0ce12c23          	sw	a4,216(sp)
   1b528:	00006797          	auipc	a5,0x6
   1b52c:	70078793          	addi	a5,a5,1792 # 21c28 <__clzdi2+0x9c>
   1b530:	00f13c23          	sd	a5,24(sp)
   1b534:	b51ff06f          	j	1b084 <_svfprintf_r+0x210c>
   1b538:	40eb87bb          	subw	a5,s7,a4
   1b53c:	0017879b          	addiw	a5,a5,1
   1b540:	00078b9b          	sext.w	s7,a5
   1b544:	fffbca93          	not	s5,s7
   1b548:	43fada93          	srai	s5,s5,0x3f
   1b54c:	0157f7b3          	and	a5,a5,s5
   1b550:	00078a9b          	sext.w	s5,a5
   1b554:	86dff06f          	j	1adc0 <_svfprintf_r+0x1e48>
   1b558:	03013703          	ld	a4,48(sp)
   1b55c:	00177713          	andi	a4,a4,1
   1b560:	00071463          	bnez	a4,1b568 <_svfprintf_r+0x25f0>
   1b564:	82cfe06f          	j	19590 <_svfprintf_r+0x618>
   1b568:	820fe06f          	j	19588 <_svfprintf_r+0x610>
   1b56c:	000d8713          	mv	a4,s11
   1b570:	dbcff06f          	j	1ab2c <_svfprintf_r+0x1bb4>
   1b574:	00079a63          	bnez	a5,1b588 <_svfprintf_r+0x2610>
   1b578:	00100a93          	li	s5,1
   1b57c:	06600493          	li	s1,102
   1b580:	00100b93          	li	s7,1
   1b584:	83dff06f          	j	1adc0 <_svfprintf_r+0x1e48>
   1b588:	03813783          	ld	a5,56(sp)
   1b58c:	06600493          	li	s1,102
   1b590:	0017869b          	addiw	a3,a5,1
   1b594:	01c686bb          	addw	a3,a3,t3
   1b598:	00068b9b          	sext.w	s7,a3
   1b59c:	fffbca93          	not	s5,s7
   1b5a0:	43fada93          	srai	s5,s5,0x3f
   1b5a4:	0156f6b3          	and	a3,a3,s5
   1b5a8:	00068a9b          	sext.w	s5,a3
   1b5ac:	815ff06f          	j	1adc0 <_svfprintf_r+0x1e48>
   1b5b0:	01013683          	ld	a3,16(sp)
   1b5b4:	0006a703          	lw	a4,0(a3)
   1b5b8:	00868693          	addi	a3,a3,8
   1b5bc:	00070e13          	mv	t3,a4
   1b5c0:	00075463          	bgez	a4,1b5c8 <_svfprintf_r+0x2650>
   1b5c4:	fff00e13          	li	t3,-1
   1b5c8:	00144483          	lbu	s1,1(s0)
   1b5cc:	000e0b9b          	sext.w	s7,t3
   1b5d0:	00d13823          	sd	a3,16(sp)
   1b5d4:	00078413          	mv	s0,a5
   1b5d8:	ae9fd06f          	j	190c0 <_svfprintf_r+0x148>
   1b5dc:	000e0993          	mv	s3,t3
   1b5e0:	013d09b3          	add	s3,s10,s3
   1b5e4:	875ff06f          	j	1ae58 <_svfprintf_r+0x1ee0>
   1b5e8:	02013823          	sd	zero,48(sp)
   1b5ec:	02013423          	sd	zero,40(sp)
   1b5f0:	ea9ff06f          	j	1b498 <_svfprintf_r+0x2520>
   1b5f4:	00200793          	li	a5,2
   1b5f8:	04f13823          	sd	a5,80(sp)
   1b5fc:	f71fd06f          	j	1956c <_svfprintf_r+0x5f4>
   1b600:	010c5783          	lhu	a5,16(s8)
   1b604:	0407e713          	ori	a4,a5,64
   1b608:	00070793          	mv	a5,a4
   1b60c:	00ec1823          	sh	a4,16(s8)
   1b610:	c85fd06f          	j	19294 <_svfprintf_r+0x31c>
   1b614:	00c00793          	li	a5,12
   1b618:	00fca023          	sw	a5,0(s9)
   1b61c:	fff00793          	li	a5,-1
   1b620:	00f13023          	sd	a5,0(sp)
   1b624:	c7dfd06f          	j	192a0 <_svfprintf_r+0x328>

000000000001b628 <__sprint_r.part.0>:
   1b628:	0ac5a783          	lw	a5,172(a1)
   1b62c:	fb010113          	addi	sp,sp,-80
   1b630:	00002737          	lui	a4,0x2
   1b634:	01513c23          	sd	s5,24(sp)
   1b638:	04113423          	sd	ra,72(sp)
   1b63c:	04813023          	sd	s0,64(sp)
   1b640:	02913c23          	sd	s1,56(sp)
   1b644:	03213823          	sd	s2,48(sp)
   1b648:	03313423          	sd	s3,40(sp)
   1b64c:	03413023          	sd	s4,32(sp)
   1b650:	01613823          	sd	s6,16(sp)
   1b654:	01713423          	sd	s7,8(sp)
   1b658:	00e7f7b3          	and	a5,a5,a4
   1b65c:	00060a93          	mv	s5,a2
   1b660:	0c078063          	beqz	a5,1b720 <__sprint_r.part.0+0xf8>
   1b664:	01063783          	ld	a5,16(a2)
   1b668:	00063b03          	ld	s6,0(a2)
   1b66c:	00058913          	mv	s2,a1
   1b670:	00050993          	mv	s3,a0
   1b674:	fff00a13          	li	s4,-1
   1b678:	0a078063          	beqz	a5,1b718 <__sprint_r.part.0+0xf0>
   1b67c:	008b3483          	ld	s1,8(s6)
   1b680:	000b3403          	ld	s0,0(s6)
   1b684:	0024d493          	srli	s1,s1,0x2
   1b688:	00048b9b          	sext.w	s7,s1
   1b68c:	07705c63          	blez	s7,1b704 <__sprint_r.part.0+0xdc>
   1b690:	fff4849b          	addiw	s1,s1,-1
   1b694:	02049793          	slli	a5,s1,0x20
   1b698:	01e7d493          	srli	s1,a5,0x1e
   1b69c:	00440793          	addi	a5,s0,4
   1b6a0:	00f484b3          	add	s1,s1,a5
   1b6a4:	0080006f          	j	1b6ac <__sprint_r.part.0+0x84>
   1b6a8:	04848c63          	beq	s1,s0,1b700 <__sprint_r.part.0+0xd8>
   1b6ac:	00042583          	lw	a1,0(s0)
   1b6b0:	00090613          	mv	a2,s2
   1b6b4:	00098513          	mv	a0,s3
   1b6b8:	0f1010ef          	jal	ra,1cfa8 <_fputwc_r>
   1b6bc:	0005051b          	sext.w	a0,a0
   1b6c0:	00440413          	addi	s0,s0,4
   1b6c4:	ff4512e3          	bne	a0,s4,1b6a8 <__sprint_r.part.0+0x80>
   1b6c8:	fff00513          	li	a0,-1
   1b6cc:	04813083          	ld	ra,72(sp)
   1b6d0:	04013403          	ld	s0,64(sp)
   1b6d4:	000ab823          	sd	zero,16(s5)
   1b6d8:	000aa423          	sw	zero,8(s5)
   1b6dc:	03813483          	ld	s1,56(sp)
   1b6e0:	03013903          	ld	s2,48(sp)
   1b6e4:	02813983          	ld	s3,40(sp)
   1b6e8:	02013a03          	ld	s4,32(sp)
   1b6ec:	01813a83          	ld	s5,24(sp)
   1b6f0:	01013b03          	ld	s6,16(sp)
   1b6f4:	00813b83          	ld	s7,8(sp)
   1b6f8:	05010113          	addi	sp,sp,80
   1b6fc:	00008067          	ret
   1b700:	010ab783          	ld	a5,16(s5)
   1b704:	002b9b93          	slli	s7,s7,0x2
   1b708:	417787b3          	sub	a5,a5,s7
   1b70c:	00fab823          	sd	a5,16(s5)
   1b710:	010b0b13          	addi	s6,s6,16
   1b714:	f60794e3          	bnez	a5,1b67c <__sprint_r.part.0+0x54>
   1b718:	00000513          	li	a0,0
   1b71c:	fb1ff06f          	j	1b6cc <__sprint_r.part.0+0xa4>
   1b720:	189010ef          	jal	ra,1d0a8 <__sfvwrite_r>
   1b724:	fa9ff06f          	j	1b6cc <__sprint_r.part.0+0xa4>

000000000001b728 <__sprint_r>:
   1b728:	01063703          	ld	a4,16(a2)
   1b72c:	00070463          	beqz	a4,1b734 <__sprint_r+0xc>
   1b730:	ef9ff06f          	j	1b628 <__sprint_r.part.0>
   1b734:	00062423          	sw	zero,8(a2)
   1b738:	00000513          	li	a0,0
   1b73c:	00008067          	ret

000000000001b740 <_vfiprintf_r>:
   1b740:	e3010113          	addi	sp,sp,-464
   1b744:	1b213823          	sd	s2,432(sp)
   1b748:	1b313423          	sd	s3,424(sp)
   1b74c:	19713423          	sd	s7,392(sp)
   1b750:	1c113423          	sd	ra,456(sp)
   1b754:	1c813023          	sd	s0,448(sp)
   1b758:	1a913c23          	sd	s1,440(sp)
   1b75c:	1b413023          	sd	s4,416(sp)
   1b760:	19513c23          	sd	s5,408(sp)
   1b764:	19613823          	sd	s6,400(sp)
   1b768:	19813023          	sd	s8,384(sp)
   1b76c:	17913c23          	sd	s9,376(sp)
   1b770:	17a13823          	sd	s10,368(sp)
   1b774:	17b13423          	sd	s11,360(sp)
   1b778:	00d13823          	sd	a3,16(sp)
   1b77c:	00050993          	mv	s3,a0
   1b780:	00058913          	mv	s2,a1
   1b784:	00060b93          	mv	s7,a2
   1b788:	00050663          	beqz	a0,1b794 <_vfiprintf_r+0x54>
   1b78c:	05052783          	lw	a5,80(a0)
   1b790:	5a078a63          	beqz	a5,1bd44 <_vfiprintf_r+0x604>
   1b794:	01091703          	lh	a4,16(s2)
   1b798:	000026b7          	lui	a3,0x2
   1b79c:	03071793          	slli	a5,a4,0x30
   1b7a0:	0307d793          	srli	a5,a5,0x30
   1b7a4:	00d7f633          	and	a2,a5,a3
   1b7a8:	02061863          	bnez	a2,1b7d8 <_vfiprintf_r+0x98>
   1b7ac:	0ac92603          	lw	a2,172(s2)
   1b7b0:	00d767b3          	or	a5,a4,a3
   1b7b4:	0107979b          	slliw	a5,a5,0x10
   1b7b8:	ffffe737          	lui	a4,0xffffe
   1b7bc:	4107d79b          	sraiw	a5,a5,0x10
   1b7c0:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd93ff>
   1b7c4:	00e67733          	and	a4,a2,a4
   1b7c8:	00f91823          	sh	a5,16(s2)
   1b7cc:	03079793          	slli	a5,a5,0x30
   1b7d0:	0ae92623          	sw	a4,172(s2)
   1b7d4:	0307d793          	srli	a5,a5,0x30
   1b7d8:	0087f713          	andi	a4,a5,8
   1b7dc:	3a070a63          	beqz	a4,1bb90 <_vfiprintf_r+0x450>
   1b7e0:	01893703          	ld	a4,24(s2)
   1b7e4:	3a070663          	beqz	a4,1bb90 <_vfiprintf_r+0x450>
   1b7e8:	01a7f793          	andi	a5,a5,26
   1b7ec:	00a00713          	li	a4,10
   1b7f0:	3ce78063          	beq	a5,a4,1bbb0 <_vfiprintf_r+0x470>
   1b7f4:	ffff87b7          	lui	a5,0xffff8
   1b7f8:	0e010493          	addi	s1,sp,224
   1b7fc:	8307c793          	xori	a5,a5,-2000
   1b800:	06913023          	sd	s1,96(sp)
   1b804:	06013823          	sd	zero,112(sp)
   1b808:	06012423          	sw	zero,104(sp)
   1b80c:	00013c23          	sd	zero,24(sp)
   1b810:	02013423          	sd	zero,40(sp)
   1b814:	02013c23          	sd	zero,56(sp)
   1b818:	02013823          	sd	zero,48(sp)
   1b81c:	00013423          	sd	zero,8(sp)
   1b820:	04f13023          	sd	a5,64(sp)
   1b824:	00048413          	mv	s0,s1
   1b828:	000b8c13          	mv	s8,s7
   1b82c:	000c4783          	lbu	a5,0(s8)
   1b830:	28078463          	beqz	a5,1bab8 <_vfiprintf_r+0x378>
   1b834:	000c0a13          	mv	s4,s8
   1b838:	02500713          	li	a4,37
   1b83c:	42e78a63          	beq	a5,a4,1bc70 <_vfiprintf_r+0x530>
   1b840:	001a4783          	lbu	a5,1(s4)
   1b844:	001a0a13          	addi	s4,s4,1
   1b848:	fe079ae3          	bnez	a5,1b83c <_vfiprintf_r+0xfc>
   1b84c:	418a0bbb          	subw	s7,s4,s8
   1b850:	260b8463          	beqz	s7,1bab8 <_vfiprintf_r+0x378>
   1b854:	06812783          	lw	a5,104(sp)
   1b858:	07013703          	ld	a4,112(sp)
   1b85c:	01843023          	sd	s8,0(s0)
   1b860:	0017869b          	addiw	a3,a5,1
   1b864:	00eb8733          	add	a4,s7,a4
   1b868:	01743423          	sd	s7,8(s0)
   1b86c:	06e13823          	sd	a4,112(sp)
   1b870:	06d12423          	sw	a3,104(sp)
   1b874:	00700793          	li	a5,7
   1b878:	01040413          	addi	s0,s0,16
   1b87c:	02d7d063          	bge	a5,a3,1b89c <_vfiprintf_r+0x15c>
   1b880:	44070ee3          	beqz	a4,1c4dc <_vfiprintf_r+0xd9c>
   1b884:	06010613          	addi	a2,sp,96
   1b888:	00090593          	mv	a1,s2
   1b88c:	00098513          	mv	a0,s3
   1b890:	d99ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1b894:	22051663          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1b898:	00048413          	mv	s0,s1
   1b89c:	00813703          	ld	a4,8(sp)
   1b8a0:	000a4783          	lbu	a5,0(s4)
   1b8a4:	0177073b          	addw	a4,a4,s7
   1b8a8:	00e13423          	sd	a4,8(sp)
   1b8ac:	20078663          	beqz	a5,1bab8 <_vfiprintf_r+0x378>
   1b8b0:	001a4783          	lbu	a5,1(s4)
   1b8b4:	001a0c13          	addi	s8,s4,1
   1b8b8:	04010ba3          	sb	zero,87(sp)
   1b8bc:	fff00a93          	li	s5,-1
   1b8c0:	00000a13          	li	s4,0
   1b8c4:	00000b13          	li	s6,0
   1b8c8:	00900b93          	li	s7,9
   1b8cc:	02a00c93          	li	s9,42
   1b8d0:	001c0c13          	addi	s8,s8,1
   1b8d4:	0007879b          	sext.w	a5,a5
   1b8d8:	05a00613          	li	a2,90
   1b8dc:	fe07871b          	addiw	a4,a5,-32
   1b8e0:	0007069b          	sext.w	a3,a4
   1b8e4:	04d66e63          	bltu	a2,a3,1b940 <_vfiprintf_r+0x200>
   1b8e8:	02071693          	slli	a3,a4,0x20
   1b8ec:	01e6d713          	srli	a4,a3,0x1e
   1b8f0:	00007697          	auipc	a3,0x7
   1b8f4:	b6068693          	addi	a3,a3,-1184 # 22450 <zeroes.0+0x10>
   1b8f8:	00d70733          	add	a4,a4,a3
   1b8fc:	00072703          	lw	a4,0(a4)
   1b900:	00d70733          	add	a4,a4,a3
   1b904:	00070067          	jr	a4
   1b908:	00000a13          	li	s4,0
   1b90c:	000c4683          	lbu	a3,0(s8)
   1b910:	002a171b          	slliw	a4,s4,0x2
   1b914:	01470a3b          	addw	s4,a4,s4
   1b918:	fd07879b          	addiw	a5,a5,-48
   1b91c:	001a1a1b          	slliw	s4,s4,0x1
   1b920:	fd06871b          	addiw	a4,a3,-48
   1b924:	01478a3b          	addw	s4,a5,s4
   1b928:	001c0c13          	addi	s8,s8,1
   1b92c:	0006879b          	sext.w	a5,a3
   1b930:	fcebfee3          	bgeu	s7,a4,1b90c <_vfiprintf_r+0x1cc>
   1b934:	fe07871b          	addiw	a4,a5,-32
   1b938:	0007069b          	sext.w	a3,a4
   1b93c:	fad676e3          	bgeu	a2,a3,1b8e8 <_vfiprintf_r+0x1a8>
   1b940:	16078c63          	beqz	a5,1bab8 <_vfiprintf_r+0x378>
   1b944:	06f10c23          	sb	a5,120(sp)
   1b948:	00100793          	li	a5,1
   1b94c:	04010ba3          	sb	zero,87(sp)
   1b950:	00100d13          	li	s10,1
   1b954:	00f13023          	sd	a5,0(sp)
   1b958:	07810c93          	addi	s9,sp,120
   1b95c:	00000a93          	li	s5,0
   1b960:	002b7f13          	andi	t5,s6,2
   1b964:	000f0463          	beqz	t5,1b96c <_vfiprintf_r+0x22c>
   1b968:	002d0d1b          	addiw	s10,s10,2
   1b96c:	06812703          	lw	a4,104(sp)
   1b970:	084b7e93          	andi	t4,s6,132
   1b974:	07013783          	ld	a5,112(sp)
   1b978:	0017051b          	addiw	a0,a4,1
   1b97c:	00050613          	mv	a2,a0
   1b980:	000e9663          	bnez	t4,1b98c <_vfiprintf_r+0x24c>
   1b984:	41aa0dbb          	subw	s11,s4,s10
   1b988:	11b048e3          	bgtz	s11,1c298 <_vfiprintf_r+0xb58>
   1b98c:	05714603          	lbu	a2,87(sp)
   1b990:	01040e13          	addi	t3,s0,16
   1b994:	02060c63          	beqz	a2,1b9cc <_vfiprintf_r+0x28c>
   1b998:	05710713          	addi	a4,sp,87
   1b99c:	00178793          	addi	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd3401>
   1b9a0:	00e43023          	sd	a4,0(s0)
   1b9a4:	00100713          	li	a4,1
   1b9a8:	00e43423          	sd	a4,8(s0)
   1b9ac:	06f13823          	sd	a5,112(sp)
   1b9b0:	06a12423          	sw	a0,104(sp)
   1b9b4:	00700713          	li	a4,7
   1b9b8:	02a74ae3          	blt	a4,a0,1c1ec <_vfiprintf_r+0xaac>
   1b9bc:	00050713          	mv	a4,a0
   1b9c0:	000e0413          	mv	s0,t3
   1b9c4:	0015051b          	addiw	a0,a0,1
   1b9c8:	010e0e13          	addi	t3,t3,16
   1b9cc:	040f0e63          	beqz	t5,1ba28 <_vfiprintf_r+0x2e8>
   1b9d0:	05810713          	addi	a4,sp,88
   1b9d4:	00278793          	addi	a5,a5,2
   1b9d8:	00e43023          	sd	a4,0(s0)
   1b9dc:	00200713          	li	a4,2
   1b9e0:	00e43423          	sd	a4,8(s0)
   1b9e4:	06f13823          	sd	a5,112(sp)
   1b9e8:	06a12423          	sw	a0,104(sp)
   1b9ec:	00700713          	li	a4,7
   1b9f0:	06a752e3          	bge	a4,a0,1c254 <_vfiprintf_r+0xb14>
   1b9f4:	320780e3          	beqz	a5,1c514 <_vfiprintf_r+0xdd4>
   1b9f8:	06010613          	addi	a2,sp,96
   1b9fc:	00090593          	mv	a1,s2
   1ba00:	00098513          	mv	a0,s3
   1ba04:	03d13023          	sd	t4,32(sp)
   1ba08:	c21ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1ba0c:	0a051a63          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1ba10:	06812703          	lw	a4,104(sp)
   1ba14:	07013783          	ld	a5,112(sp)
   1ba18:	02013e83          	ld	t4,32(sp)
   1ba1c:	0f010e13          	addi	t3,sp,240
   1ba20:	0017051b          	addiw	a0,a4,1
   1ba24:	00048413          	mv	s0,s1
   1ba28:	08000613          	li	a2,128
   1ba2c:	5cce8663          	beq	t4,a2,1bff8 <_vfiprintf_r+0x8b8>
   1ba30:	00013683          	ld	a3,0(sp)
   1ba34:	40da8abb          	subw	s5,s5,a3
   1ba38:	6b504c63          	bgtz	s5,1c0f0 <_vfiprintf_r+0x9b0>
   1ba3c:	00013703          	ld	a4,0(sp)
   1ba40:	01943023          	sd	s9,0(s0)
   1ba44:	06a12423          	sw	a0,104(sp)
   1ba48:	00f707b3          	add	a5,a4,a5
   1ba4c:	00e43423          	sd	a4,8(s0)
   1ba50:	06f13823          	sd	a5,112(sp)
   1ba54:	00700713          	li	a4,7
   1ba58:	02a75263          	bge	a4,a0,1ba7c <_vfiprintf_r+0x33c>
   1ba5c:	140784e3          	beqz	a5,1c3a4 <_vfiprintf_r+0xc64>
   1ba60:	06010613          	addi	a2,sp,96
   1ba64:	00090593          	mv	a1,s2
   1ba68:	00098513          	mv	a0,s3
   1ba6c:	bbdff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1ba70:	04051863          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1ba74:	07013783          	ld	a5,112(sp)
   1ba78:	00048e13          	mv	t3,s1
   1ba7c:	004b7313          	andi	t1,s6,4
   1ba80:	00030663          	beqz	t1,1ba8c <_vfiprintf_r+0x34c>
   1ba84:	41aa043b          	subw	s0,s4,s10
   1ba88:	12804ae3          	bgtz	s0,1c3bc <_vfiprintf_r+0xc7c>
   1ba8c:	000a0713          	mv	a4,s4
   1ba90:	01aa5463          	bge	s4,s10,1ba98 <_vfiprintf_r+0x358>
   1ba94:	000d0713          	mv	a4,s10
   1ba98:	00813683          	ld	a3,8(sp)
   1ba9c:	00d7073b          	addw	a4,a4,a3
   1baa0:	00e13423          	sd	a4,8(sp)
   1baa4:	72079063          	bnez	a5,1c1c4 <_vfiprintf_r+0xa84>
   1baa8:	000c4783          	lbu	a5,0(s8)
   1baac:	06012423          	sw	zero,104(sp)
   1bab0:	00048413          	mv	s0,s1
   1bab4:	d80790e3          	bnez	a5,1b834 <_vfiprintf_r+0xf4>
   1bab8:	07013783          	ld	a5,112(sp)
   1babc:	600794e3          	bnez	a5,1c8c4 <_vfiprintf_r+0x1184>
   1bac0:	01095783          	lhu	a5,16(s2)
   1bac4:	0407f793          	andi	a5,a5,64
   1bac8:	64079ce3          	bnez	a5,1c920 <_vfiprintf_r+0x11e0>
   1bacc:	1c813083          	ld	ra,456(sp)
   1bad0:	1c013403          	ld	s0,448(sp)
   1bad4:	00813503          	ld	a0,8(sp)
   1bad8:	1b813483          	ld	s1,440(sp)
   1badc:	1b013903          	ld	s2,432(sp)
   1bae0:	1a813983          	ld	s3,424(sp)
   1bae4:	1a013a03          	ld	s4,416(sp)
   1bae8:	19813a83          	ld	s5,408(sp)
   1baec:	19013b03          	ld	s6,400(sp)
   1baf0:	18813b83          	ld	s7,392(sp)
   1baf4:	18013c03          	ld	s8,384(sp)
   1baf8:	17813c83          	ld	s9,376(sp)
   1bafc:	17013d03          	ld	s10,368(sp)
   1bb00:	16813d83          	ld	s11,360(sp)
   1bb04:	1d010113          	addi	sp,sp,464
   1bb08:	00008067          	ret
   1bb0c:	010b6b13          	ori	s6,s6,16
   1bb10:	000c4783          	lbu	a5,0(s8)
   1bb14:	000b0b1b          	sext.w	s6,s6
   1bb18:	db9ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bb1c:	010b6313          	ori	t1,s6,16
   1bb20:	00030b1b          	sext.w	s6,t1
   1bb24:	01013703          	ld	a4,16(sp)
   1bb28:	020b7793          	andi	a5,s6,32
   1bb2c:	00870613          	addi	a2,a4,8
   1bb30:	14078863          	beqz	a5,1bc80 <_vfiprintf_r+0x540>
   1bb34:	00073783          	ld	a5,0(a4)
   1bb38:	00078b93          	mv	s7,a5
   1bb3c:	1607c263          	bltz	a5,1bca0 <_vfiprintf_r+0x560>
   1bb40:	fff00793          	li	a5,-1
   1bb44:	44fa82e3          	beq	s5,a5,1c788 <_vfiprintf_r+0x1048>
   1bb48:	f7fb7713          	andi	a4,s6,-129
   1bb4c:	00070d1b          	sext.w	s10,a4
   1bb50:	300b98e3          	bnez	s7,1c660 <_vfiprintf_r+0xf20>
   1bb54:	00c13823          	sd	a2,16(sp)
   1bb58:	720a9263          	bnez	s5,1c27c <_vfiprintf_r+0xb3c>
   1bb5c:	000d0b13          	mv	s6,s10
   1bb60:	00000a93          	li	s5,0
   1bb64:	00013023          	sd	zero,0(sp)
   1bb68:	0dc10c93          	addi	s9,sp,220
   1bb6c:	00013703          	ld	a4,0(sp)
   1bb70:	000a8793          	mv	a5,s5
   1bb74:	00ead463          	bge	s5,a4,1bb7c <_vfiprintf_r+0x43c>
   1bb78:	00070793          	mv	a5,a4
   1bb7c:	05714703          	lbu	a4,87(sp)
   1bb80:	00078d1b          	sext.w	s10,a5
   1bb84:	dc070ee3          	beqz	a4,1b960 <_vfiprintf_r+0x220>
   1bb88:	00178d1b          	addiw	s10,a5,1
   1bb8c:	dd5ff06f          	j	1b960 <_vfiprintf_r+0x220>
   1bb90:	00090593          	mv	a1,s2
   1bb94:	00098513          	mv	a0,s3
   1bb98:	894f70ef          	jal	ra,12c2c <__swsetup_r>
   1bb9c:	580512e3          	bnez	a0,1c920 <_vfiprintf_r+0x11e0>
   1bba0:	01095783          	lhu	a5,16(s2)
   1bba4:	00a00713          	li	a4,10
   1bba8:	01a7f793          	andi	a5,a5,26
   1bbac:	c4e794e3          	bne	a5,a4,1b7f4 <_vfiprintf_r+0xb4>
   1bbb0:	01291783          	lh	a5,18(s2)
   1bbb4:	c407c0e3          	bltz	a5,1b7f4 <_vfiprintf_r+0xb4>
   1bbb8:	1c013403          	ld	s0,448(sp)
   1bbbc:	01013683          	ld	a3,16(sp)
   1bbc0:	1c813083          	ld	ra,456(sp)
   1bbc4:	1b813483          	ld	s1,440(sp)
   1bbc8:	1a013a03          	ld	s4,416(sp)
   1bbcc:	19813a83          	ld	s5,408(sp)
   1bbd0:	19013b03          	ld	s6,400(sp)
   1bbd4:	18013c03          	ld	s8,384(sp)
   1bbd8:	17813c83          	ld	s9,376(sp)
   1bbdc:	17013d03          	ld	s10,368(sp)
   1bbe0:	16813d83          	ld	s11,360(sp)
   1bbe4:	000b8613          	mv	a2,s7
   1bbe8:	00090593          	mv	a1,s2
   1bbec:	18813b83          	ld	s7,392(sp)
   1bbf0:	1b013903          	ld	s2,432(sp)
   1bbf4:	00098513          	mv	a0,s3
   1bbf8:	1a813983          	ld	s3,424(sp)
   1bbfc:	1d010113          	addi	sp,sp,464
   1bc00:	5710006f          	j	1c970 <__sbprintf>
   1bc04:	010b6313          	ori	t1,s6,16
   1bc08:	00030b1b          	sext.w	s6,t1
   1bc0c:	01013703          	ld	a4,16(sp)
   1bc10:	020b7793          	andi	a5,s6,32
   1bc14:	00870613          	addi	a2,a4,8
   1bc18:	10078463          	beqz	a5,1bd20 <_vfiprintf_r+0x5e0>
   1bc1c:	00073b83          	ld	s7,0(a4)
   1bc20:	bffb7713          	andi	a4,s6,-1025
   1bc24:	00070d1b          	sext.w	s10,a4
   1bc28:	00c13823          	sd	a2,16(sp)
   1bc2c:	00000793          	li	a5,0
   1bc30:	04010ba3          	sb	zero,87(sp)
   1bc34:	fff00613          	li	a2,-1
   1bc38:	08ca8463          	beq	s5,a2,1bcc0 <_vfiprintf_r+0x580>
   1bc3c:	f7fd7313          	andi	t1,s10,-129
   1bc40:	00030b1b          	sext.w	s6,t1
   1bc44:	620b9263          	bnez	s7,1c268 <_vfiprintf_r+0xb28>
   1bc48:	360a9263          	bnez	s5,1bfac <_vfiprintf_r+0x86c>
   1bc4c:	f0079ae3          	bnez	a5,1bb60 <_vfiprintf_r+0x420>
   1bc50:	001d7793          	andi	a5,s10,1
   1bc54:	00f13023          	sd	a5,0(sp)
   1bc58:	0dc10c93          	addi	s9,sp,220
   1bc5c:	f00788e3          	beqz	a5,1bb6c <_vfiprintf_r+0x42c>
   1bc60:	03000793          	li	a5,48
   1bc64:	0cf10da3          	sb	a5,219(sp)
   1bc68:	0db10c93          	addi	s9,sp,219
   1bc6c:	f01ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1bc70:	418a0bbb          	subw	s7,s4,s8
   1bc74:	be0b90e3          	bnez	s7,1b854 <_vfiprintf_r+0x114>
   1bc78:	000a4783          	lbu	a5,0(s4)
   1bc7c:	c31ff06f          	j	1b8ac <_vfiprintf_r+0x16c>
   1bc80:	010b7793          	andi	a5,s6,16
   1bc84:	1a0798e3          	bnez	a5,1c634 <_vfiprintf_r+0xef4>
   1bc88:	040b7793          	andi	a5,s6,64
   1bc8c:	36078ce3          	beqz	a5,1c804 <_vfiprintf_r+0x10c4>
   1bc90:	01013783          	ld	a5,16(sp)
   1bc94:	00079b83          	lh	s7,0(a5)
   1bc98:	000b8793          	mv	a5,s7
   1bc9c:	ea07d2e3          	bgez	a5,1bb40 <_vfiprintf_r+0x400>
   1bca0:	02d00793          	li	a5,45
   1bca4:	04f10ba3          	sb	a5,87(sp)
   1bca8:	00c13823          	sd	a2,16(sp)
   1bcac:	fff00613          	li	a2,-1
   1bcb0:	41700bb3          	neg	s7,s7
   1bcb4:	000b0d13          	mv	s10,s6
   1bcb8:	00100793          	li	a5,1
   1bcbc:	f8ca90e3          	bne	s5,a2,1bc3c <_vfiprintf_r+0x4fc>
   1bcc0:	00100613          	li	a2,1
   1bcc4:	5ac78863          	beq	a5,a2,1c274 <_vfiprintf_r+0xb34>
   1bcc8:	00200613          	li	a2,2
   1bccc:	2ec78a63          	beq	a5,a2,1bfc0 <_vfiprintf_r+0x880>
   1bcd0:	0dc10c93          	addi	s9,sp,220
   1bcd4:	007bf793          	andi	a5,s7,7
   1bcd8:	03078793          	addi	a5,a5,48
   1bcdc:	fefc8fa3          	sb	a5,-1(s9)
   1bce0:	003bdb93          	srli	s7,s7,0x3
   1bce4:	000c8613          	mv	a2,s9
   1bce8:	fffc8c93          	addi	s9,s9,-1
   1bcec:	fe0b94e3          	bnez	s7,1bcd4 <_vfiprintf_r+0x594>
   1bcf0:	001d7593          	andi	a1,s10,1
   1bcf4:	2e058863          	beqz	a1,1bfe4 <_vfiprintf_r+0x8a4>
   1bcf8:	03000593          	li	a1,48
   1bcfc:	2eb78463          	beq	a5,a1,1bfe4 <_vfiprintf_r+0x8a4>
   1bd00:	ffe60613          	addi	a2,a2,-2
   1bd04:	0dc10793          	addi	a5,sp,220
   1bd08:	40c787bb          	subw	a5,a5,a2
   1bd0c:	febc8fa3          	sb	a1,-1(s9)
   1bd10:	00f13023          	sd	a5,0(sp)
   1bd14:	000d0b13          	mv	s6,s10
   1bd18:	00060c93          	mv	s9,a2
   1bd1c:	e51ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1bd20:	010b7793          	andi	a5,s6,16
   1bd24:	100792e3          	bnez	a5,1c628 <_vfiprintf_r+0xee8>
   1bd28:	01013703          	ld	a4,16(sp)
   1bd2c:	040b7793          	andi	a5,s6,64
   1bd30:	00072b83          	lw	s7,0(a4)
   1bd34:	2c0780e3          	beqz	a5,1c7f4 <_vfiprintf_r+0x10b4>
   1bd38:	030b9b93          	slli	s7,s7,0x30
   1bd3c:	030bdb93          	srli	s7,s7,0x30
   1bd40:	ee1ff06f          	j	1bc20 <_vfiprintf_r+0x4e0>
   1bd44:	819f70ef          	jal	ra,1355c <__sinit>
   1bd48:	a4dff06f          	j	1b794 <_vfiprintf_r+0x54>
   1bd4c:	01013783          	ld	a5,16(sp)
   1bd50:	04010ba3          	sb	zero,87(sp)
   1bd54:	0007bc83          	ld	s9,0(a5)
   1bd58:	00878b93          	addi	s7,a5,8
   1bd5c:	260c80e3          	beqz	s9,1c7bc <_vfiprintf_r+0x107c>
   1bd60:	fff00793          	li	a5,-1
   1bd64:	18fa88e3          	beq	s5,a5,1c6f4 <_vfiprintf_r+0xfb4>
   1bd68:	000a8613          	mv	a2,s5
   1bd6c:	00000593          	li	a1,0
   1bd70:	000c8513          	mv	a0,s9
   1bd74:	f48fb0ef          	jal	ra,174bc <memchr>
   1bd78:	360500e3          	beqz	a0,1c8d8 <_vfiprintf_r+0x1198>
   1bd7c:	419507bb          	subw	a5,a0,s9
   1bd80:	00f13023          	sd	a5,0(sp)
   1bd84:	01713823          	sd	s7,16(sp)
   1bd88:	00000a93          	li	s5,0
   1bd8c:	de1ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1bd90:	01013703          	ld	a4,16(sp)
   1bd94:	04010ba3          	sb	zero,87(sp)
   1bd98:	00100d13          	li	s10,1
   1bd9c:	00072783          	lw	a5,0(a4)
   1bda0:	00870713          	addi	a4,a4,8
   1bda4:	00e13823          	sd	a4,16(sp)
   1bda8:	06f10c23          	sb	a5,120(sp)
   1bdac:	00100793          	li	a5,1
   1bdb0:	00f13023          	sd	a5,0(sp)
   1bdb4:	07810c93          	addi	s9,sp,120
   1bdb8:	ba5ff06f          	j	1b95c <_vfiprintf_r+0x21c>
   1bdbc:	000c4783          	lbu	a5,0(s8)
   1bdc0:	06c00713          	li	a4,108
   1bdc4:	1ee782e3          	beq	a5,a4,1c7a8 <_vfiprintf_r+0x1068>
   1bdc8:	010b6b13          	ori	s6,s6,16
   1bdcc:	000b0b1b          	sext.w	s6,s6
   1bdd0:	b01ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bdd4:	000c4783          	lbu	a5,0(s8)
   1bdd8:	06800713          	li	a4,104
   1bddc:	1ae78ce3          	beq	a5,a4,1c794 <_vfiprintf_r+0x1054>
   1bde0:	040b6b13          	ori	s6,s6,64
   1bde4:	000b0b1b          	sext.w	s6,s6
   1bde8:	ae9ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bdec:	010b6713          	ori	a4,s6,16
   1bdf0:	00070d1b          	sext.w	s10,a4
   1bdf4:	01013703          	ld	a4,16(sp)
   1bdf8:	020d7793          	andi	a5,s10,32
   1bdfc:	00870613          	addi	a2,a4,8
   1be00:	6e078463          	beqz	a5,1c4e8 <_vfiprintf_r+0xda8>
   1be04:	00073b83          	ld	s7,0(a4)
   1be08:	00100793          	li	a5,1
   1be0c:	00c13823          	sd	a2,16(sp)
   1be10:	e21ff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1be14:	080b6b13          	ori	s6,s6,128
   1be18:	000c4783          	lbu	a5,0(s8)
   1be1c:	000b0b1b          	sext.w	s6,s6
   1be20:	ab1ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1be24:	01013703          	ld	a4,16(sp)
   1be28:	000c4783          	lbu	a5,0(s8)
   1be2c:	00072a03          	lw	s4,0(a4)
   1be30:	00870713          	addi	a4,a4,8
   1be34:	00e13823          	sd	a4,16(sp)
   1be38:	a80a5ce3          	bgez	s4,1b8d0 <_vfiprintf_r+0x190>
   1be3c:	41400a3b          	negw	s4,s4
   1be40:	0840006f          	j	1bec4 <_vfiprintf_r+0x784>
   1be44:	00098513          	mv	a0,s3
   1be48:	a81fa0ef          	jal	ra,168c8 <_localeconv_r>
   1be4c:	00853783          	ld	a5,8(a0)
   1be50:	00078513          	mv	a0,a5
   1be54:	02f13823          	sd	a5,48(sp)
   1be58:	fadfc0ef          	jal	ra,18e04 <strlen>
   1be5c:	00050793          	mv	a5,a0
   1be60:	00098513          	mv	a0,s3
   1be64:	00078d13          	mv	s10,a5
   1be68:	02f13c23          	sd	a5,56(sp)
   1be6c:	a5dfa0ef          	jal	ra,168c8 <_localeconv_r>
   1be70:	01053703          	ld	a4,16(a0)
   1be74:	000c4783          	lbu	a5,0(s8)
   1be78:	02e13423          	sd	a4,40(sp)
   1be7c:	a40d0ae3          	beqz	s10,1b8d0 <_vfiprintf_r+0x190>
   1be80:	a40708e3          	beqz	a4,1b8d0 <_vfiprintf_r+0x190>
   1be84:	00074703          	lbu	a4,0(a4)
   1be88:	a40704e3          	beqz	a4,1b8d0 <_vfiprintf_r+0x190>
   1be8c:	400b6b13          	ori	s6,s6,1024
   1be90:	000b0b1b          	sext.w	s6,s6
   1be94:	a3dff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1be98:	001b6b13          	ori	s6,s6,1
   1be9c:	000c4783          	lbu	a5,0(s8)
   1bea0:	000b0b1b          	sext.w	s6,s6
   1bea4:	a2dff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bea8:	05714703          	lbu	a4,87(sp)
   1beac:	000c4783          	lbu	a5,0(s8)
   1beb0:	a20710e3          	bnez	a4,1b8d0 <_vfiprintf_r+0x190>
   1beb4:	02000713          	li	a4,32
   1beb8:	04e10ba3          	sb	a4,87(sp)
   1bebc:	a15ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bec0:	000c4783          	lbu	a5,0(s8)
   1bec4:	004b6b13          	ori	s6,s6,4
   1bec8:	000b0b1b          	sext.w	s6,s6
   1becc:	a05ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bed0:	02b00713          	li	a4,43
   1bed4:	000c4783          	lbu	a5,0(s8)
   1bed8:	04e10ba3          	sb	a4,87(sp)
   1bedc:	9f5ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bee0:	000c4783          	lbu	a5,0(s8)
   1bee4:	001c0713          	addi	a4,s8,1
   1bee8:	259786e3          	beq	a5,s9,1c934 <_vfiprintf_r+0x11f4>
   1beec:	fd07869b          	addiw	a3,a5,-48
   1bef0:	00070c13          	mv	s8,a4
   1bef4:	00000a93          	li	s5,0
   1bef8:	9edbe2e3          	bltu	s7,a3,1b8dc <_vfiprintf_r+0x19c>
   1befc:	000c4783          	lbu	a5,0(s8)
   1bf00:	002a971b          	slliw	a4,s5,0x2
   1bf04:	01570abb          	addw	s5,a4,s5
   1bf08:	001a9a9b          	slliw	s5,s5,0x1
   1bf0c:	00da8abb          	addw	s5,s5,a3
   1bf10:	fd07869b          	addiw	a3,a5,-48
   1bf14:	001c0c13          	addi	s8,s8,1
   1bf18:	fedbf2e3          	bgeu	s7,a3,1befc <_vfiprintf_r+0x7bc>
   1bf1c:	9c1ff06f          	j	1b8dc <_vfiprintf_r+0x19c>
   1bf20:	020b6b13          	ori	s6,s6,32
   1bf24:	000c4783          	lbu	a5,0(s8)
   1bf28:	000b0b1b          	sext.w	s6,s6
   1bf2c:	9a5ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1bf30:	01013783          	ld	a5,16(sp)
   1bf34:	002b6713          	ori	a4,s6,2
   1bf38:	00070d1b          	sext.w	s10,a4
   1bf3c:	04013703          	ld	a4,64(sp)
   1bf40:	0007bb83          	ld	s7,0(a5)
   1bf44:	00878793          	addi	a5,a5,8
   1bf48:	00f13823          	sd	a5,16(sp)
   1bf4c:	00006797          	auipc	a5,0x6
   1bf50:	cdc78793          	addi	a5,a5,-804 # 21c28 <__clzdi2+0x9c>
   1bf54:	00f13c23          	sd	a5,24(sp)
   1bf58:	04e11c23          	sh	a4,88(sp)
   1bf5c:	00200793          	li	a5,2
   1bf60:	cd1ff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1bf64:	01013683          	ld	a3,16(sp)
   1bf68:	020b7793          	andi	a5,s6,32
   1bf6c:	0006b703          	ld	a4,0(a3)
   1bf70:	00868693          	addi	a3,a3,8
   1bf74:	00d13823          	sd	a3,16(sp)
   1bf78:	02079463          	bnez	a5,1bfa0 <_vfiprintf_r+0x860>
   1bf7c:	010b7793          	andi	a5,s6,16
   1bf80:	02079063          	bnez	a5,1bfa0 <_vfiprintf_r+0x860>
   1bf84:	040b7793          	andi	a5,s6,64
   1bf88:	0e079ae3          	bnez	a5,1c87c <_vfiprintf_r+0x113c>
   1bf8c:	200b7313          	andi	t1,s6,512
   1bf90:	00813783          	ld	a5,8(sp)
   1bf94:	18030ce3          	beqz	t1,1c92c <_vfiprintf_r+0x11ec>
   1bf98:	00f70023          	sb	a5,0(a4)
   1bf9c:	891ff06f          	j	1b82c <_vfiprintf_r+0xec>
   1bfa0:	00813783          	ld	a5,8(sp)
   1bfa4:	00f73023          	sd	a5,0(a4)
   1bfa8:	885ff06f          	j	1b82c <_vfiprintf_r+0xec>
   1bfac:	00100713          	li	a4,1
   1bfb0:	14e78ae3          	beq	a5,a4,1c904 <_vfiprintf_r+0x11c4>
   1bfb4:	00200713          	li	a4,2
   1bfb8:	000b0d13          	mv	s10,s6
   1bfbc:	d0e79ae3          	bne	a5,a4,1bcd0 <_vfiprintf_r+0x590>
   1bfc0:	01813703          	ld	a4,24(sp)
   1bfc4:	0dc10c93          	addi	s9,sp,220
   1bfc8:	00fbf793          	andi	a5,s7,15
   1bfcc:	00f707b3          	add	a5,a4,a5
   1bfd0:	0007c783          	lbu	a5,0(a5)
   1bfd4:	004bdb93          	srli	s7,s7,0x4
   1bfd8:	fffc8c93          	addi	s9,s9,-1
   1bfdc:	00fc8023          	sb	a5,0(s9)
   1bfe0:	fe0b94e3          	bnez	s7,1bfc8 <_vfiprintf_r+0x888>
   1bfe4:	0dc10793          	addi	a5,sp,220
   1bfe8:	419787bb          	subw	a5,a5,s9
   1bfec:	00f13023          	sd	a5,0(sp)
   1bff0:	000d0b13          	mv	s6,s10
   1bff4:	b79ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1bff8:	41aa0dbb          	subw	s11,s4,s10
   1bffc:	a3b05ae3          	blez	s11,1ba30 <_vfiprintf_r+0x2f0>
   1c000:	01000613          	li	a2,16
   1c004:	11b654e3          	bge	a2,s11,1c90c <_vfiprintf_r+0x11cc>
   1c008:	00006e17          	auipc	t3,0x6
   1c00c:	5c8e0e13          	addi	t3,t3,1480 # 225d0 <zeroes.0>
   1c010:	03413023          	sd	s4,32(sp)
   1c014:	01000b93          	li	s7,16
   1c018:	00090a13          	mv	s4,s2
   1c01c:	00700e93          	li	t4,7
   1c020:	000e0913          	mv	s2,t3
   1c024:	0180006f          	j	1c03c <_vfiprintf_r+0x8fc>
   1c028:	0027061b          	addiw	a2,a4,2
   1c02c:	01040413          	addi	s0,s0,16
   1c030:	00050713          	mv	a4,a0
   1c034:	ff0d8d9b          	addiw	s11,s11,-16
   1c038:	05bbda63          	bge	s7,s11,1c08c <_vfiprintf_r+0x94c>
   1c03c:	0017051b          	addiw	a0,a4,1
   1c040:	01078793          	addi	a5,a5,16
   1c044:	01243023          	sd	s2,0(s0)
   1c048:	01743423          	sd	s7,8(s0)
   1c04c:	06f13823          	sd	a5,112(sp)
   1c050:	06a12423          	sw	a0,104(sp)
   1c054:	fcaedae3          	bge	t4,a0,1c028 <_vfiprintf_r+0x8e8>
   1c058:	18078263          	beqz	a5,1c1dc <_vfiprintf_r+0xa9c>
   1c05c:	06010613          	addi	a2,sp,96
   1c060:	000a0593          	mv	a1,s4
   1c064:	00098513          	mv	a0,s3
   1c068:	dc0ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c06c:	40051e63          	bnez	a0,1c488 <_vfiprintf_r+0xd48>
   1c070:	06812703          	lw	a4,104(sp)
   1c074:	ff0d8d9b          	addiw	s11,s11,-16
   1c078:	07013783          	ld	a5,112(sp)
   1c07c:	00048413          	mv	s0,s1
   1c080:	0017061b          	addiw	a2,a4,1
   1c084:	00700e93          	li	t4,7
   1c088:	fbbbcae3          	blt	s7,s11,1c03c <_vfiprintf_r+0x8fc>
   1c08c:	00090e13          	mv	t3,s2
   1c090:	000a0913          	mv	s2,s4
   1c094:	02013a03          	ld	s4,32(sp)
   1c098:	01040593          	addi	a1,s0,16
   1c09c:	01b787b3          	add	a5,a5,s11
   1c0a0:	01c43023          	sd	t3,0(s0)
   1c0a4:	01b43423          	sd	s11,8(s0)
   1c0a8:	06f13823          	sd	a5,112(sp)
   1c0ac:	06c12423          	sw	a2,104(sp)
   1c0b0:	00700713          	li	a4,7
   1c0b4:	54c75663          	bge	a4,a2,1c600 <_vfiprintf_r+0xec0>
   1c0b8:	78078663          	beqz	a5,1c844 <_vfiprintf_r+0x1104>
   1c0bc:	06010613          	addi	a2,sp,96
   1c0c0:	00090593          	mv	a1,s2
   1c0c4:	00098513          	mv	a0,s3
   1c0c8:	d60ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c0cc:	9e051ae3          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1c0d0:	00013683          	ld	a3,0(sp)
   1c0d4:	06812703          	lw	a4,104(sp)
   1c0d8:	07013783          	ld	a5,112(sp)
   1c0dc:	40da8abb          	subw	s5,s5,a3
   1c0e0:	0f010e13          	addi	t3,sp,240
   1c0e4:	0017051b          	addiw	a0,a4,1
   1c0e8:	00048413          	mv	s0,s1
   1c0ec:	955058e3          	blez	s5,1ba3c <_vfiprintf_r+0x2fc>
   1c0f0:	01000613          	li	a2,16
   1c0f4:	75565063          	bge	a2,s5,1c834 <_vfiprintf_r+0x10f4>
   1c0f8:	00006e17          	auipc	t3,0x6
   1c0fc:	4d8e0e13          	addi	t3,t3,1240 # 225d0 <zeroes.0>
   1c100:	03413023          	sd	s4,32(sp)
   1c104:	01000b93          	li	s7,16
   1c108:	00090a13          	mv	s4,s2
   1c10c:	00700d93          	li	s11,7
   1c110:	000e0913          	mv	s2,t3
   1c114:	0180006f          	j	1c12c <_vfiprintf_r+0x9ec>
   1c118:	0027051b          	addiw	a0,a4,2
   1c11c:	01040413          	addi	s0,s0,16
   1c120:	00060713          	mv	a4,a2
   1c124:	ff0a8a9b          	addiw	s5,s5,-16
   1c128:	055bd863          	bge	s7,s5,1c178 <_vfiprintf_r+0xa38>
   1c12c:	0017061b          	addiw	a2,a4,1
   1c130:	01078793          	addi	a5,a5,16
   1c134:	01243023          	sd	s2,0(s0)
   1c138:	01743423          	sd	s7,8(s0)
   1c13c:	06f13823          	sd	a5,112(sp)
   1c140:	06c12423          	sw	a2,104(sp)
   1c144:	fccddae3          	bge	s11,a2,1c118 <_vfiprintf_r+0x9d8>
   1c148:	06078663          	beqz	a5,1c1b4 <_vfiprintf_r+0xa74>
   1c14c:	06010613          	addi	a2,sp,96
   1c150:	000a0593          	mv	a1,s4
   1c154:	00098513          	mv	a0,s3
   1c158:	cd0ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c15c:	32051663          	bnez	a0,1c488 <_vfiprintf_r+0xd48>
   1c160:	06812703          	lw	a4,104(sp)
   1c164:	ff0a8a9b          	addiw	s5,s5,-16
   1c168:	07013783          	ld	a5,112(sp)
   1c16c:	00048413          	mv	s0,s1
   1c170:	0017051b          	addiw	a0,a4,1
   1c174:	fb5bcce3          	blt	s7,s5,1c12c <_vfiprintf_r+0x9ec>
   1c178:	00090e13          	mv	t3,s2
   1c17c:	000a0913          	mv	s2,s4
   1c180:	02013a03          	ld	s4,32(sp)
   1c184:	01040613          	addi	a2,s0,16
   1c188:	015787b3          	add	a5,a5,s5
   1c18c:	01c43023          	sd	t3,0(s0)
   1c190:	01543423          	sd	s5,8(s0)
   1c194:	06f13823          	sd	a5,112(sp)
   1c198:	06a12423          	sw	a0,104(sp)
   1c19c:	00700713          	li	a4,7
   1c1a0:	30a74663          	blt	a4,a0,1c4ac <_vfiprintf_r+0xd6c>
   1c1a4:	0015051b          	addiw	a0,a0,1
   1c1a8:	01060e13          	addi	t3,a2,16
   1c1ac:	00060413          	mv	s0,a2
   1c1b0:	88dff06f          	j	1ba3c <_vfiprintf_r+0x2fc>
   1c1b4:	00100513          	li	a0,1
   1c1b8:	00000713          	li	a4,0
   1c1bc:	00048413          	mv	s0,s1
   1c1c0:	f65ff06f          	j	1c124 <_vfiprintf_r+0x9e4>
   1c1c4:	06010613          	addi	a2,sp,96
   1c1c8:	00090593          	mv	a1,s2
   1c1cc:	00098513          	mv	a0,s3
   1c1d0:	c58ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c1d4:	8c050ae3          	beqz	a0,1baa8 <_vfiprintf_r+0x368>
   1c1d8:	8e9ff06f          	j	1bac0 <_vfiprintf_r+0x380>
   1c1dc:	00100613          	li	a2,1
   1c1e0:	00000713          	li	a4,0
   1c1e4:	00048413          	mv	s0,s1
   1c1e8:	e4dff06f          	j	1c034 <_vfiprintf_r+0x8f4>
   1c1ec:	32078e63          	beqz	a5,1c528 <_vfiprintf_r+0xde8>
   1c1f0:	06010613          	addi	a2,sp,96
   1c1f4:	00090593          	mv	a1,s2
   1c1f8:	00098513          	mv	a0,s3
   1c1fc:	05d13423          	sd	t4,72(sp)
   1c200:	03e13023          	sd	t5,32(sp)
   1c204:	c24ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c208:	8a051ce3          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1c20c:	06812703          	lw	a4,104(sp)
   1c210:	07013783          	ld	a5,112(sp)
   1c214:	04813e83          	ld	t4,72(sp)
   1c218:	02013f03          	ld	t5,32(sp)
   1c21c:	0f010e13          	addi	t3,sp,240
   1c220:	0017051b          	addiw	a0,a4,1
   1c224:	00048413          	mv	s0,s1
   1c228:	fa4ff06f          	j	1b9cc <_vfiprintf_r+0x28c>
   1c22c:	38079e63          	bnez	a5,1c5c8 <_vfiprintf_r+0xe88>
   1c230:	05714703          	lbu	a4,87(sp)
   1c234:	62071663          	bnez	a4,1c860 <_vfiprintf_r+0x1120>
   1c238:	2e0f0a63          	beqz	t5,1c52c <_vfiprintf_r+0xdec>
   1c23c:	05810793          	addi	a5,sp,88
   1c240:	0ef13023          	sd	a5,224(sp)
   1c244:	00200793          	li	a5,2
   1c248:	0ef13423          	sd	a5,232(sp)
   1c24c:	0f010e13          	addi	t3,sp,240
   1c250:	00100513          	li	a0,1
   1c254:	000e0413          	mv	s0,t3
   1c258:	00050713          	mv	a4,a0
   1c25c:	0017051b          	addiw	a0,a4,1
   1c260:	01040e13          	addi	t3,s0,16
   1c264:	fc4ff06f          	j	1ba28 <_vfiprintf_r+0x2e8>
   1c268:	00100613          	li	a2,1
   1c26c:	000b0d13          	mv	s10,s6
   1c270:	a4c79ce3          	bne	a5,a2,1bcc8 <_vfiprintf_r+0x588>
   1c274:	00900793          	li	a5,9
   1c278:	2d77e463          	bltu	a5,s7,1c540 <_vfiprintf_r+0xe00>
   1c27c:	030b8b9b          	addiw	s7,s7,48
   1c280:	00100793          	li	a5,1
   1c284:	0d710da3          	sb	s7,219(sp)
   1c288:	000d0b13          	mv	s6,s10
   1c28c:	00f13023          	sd	a5,0(sp)
   1c290:	0db10c93          	addi	s9,sp,219
   1c294:	8d9ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1c298:	01000593          	li	a1,16
   1c29c:	65b5d663          	bge	a1,s11,1c8e8 <_vfiprintf_r+0x11a8>
   1c2a0:	00006b97          	auipc	s7,0x6
   1c2a4:	320b8b93          	addi	s7,s7,800 # 225c0 <blanks.1>
   1c2a8:	000b8693          	mv	a3,s7
   1c2ac:	01000e13          	li	t3,16
   1c2b0:	000a0b93          	mv	s7,s4
   1c2b4:	00700f93          	li	t6,7
   1c2b8:	00090a13          	mv	s4,s2
   1c2bc:	03e13023          	sd	t5,32(sp)
   1c2c0:	000d8913          	mv	s2,s11
   1c2c4:	05d13423          	sd	t4,72(sp)
   1c2c8:	000c0d93          	mv	s11,s8
   1c2cc:	000a8c13          	mv	s8,s5
   1c2d0:	00068a93          	mv	s5,a3
   1c2d4:	01c0006f          	j	1c2f0 <_vfiprintf_r+0xbb0>
   1c2d8:	0027061b          	addiw	a2,a4,2
   1c2dc:	01040413          	addi	s0,s0,16
   1c2e0:	00068713          	mv	a4,a3
   1c2e4:	ff09091b          	addiw	s2,s2,-16
   1c2e8:	052e5e63          	bge	t3,s2,1c344 <_vfiprintf_r+0xc04>
   1c2ec:	0017061b          	addiw	a2,a4,1
   1c2f0:	01078793          	addi	a5,a5,16
   1c2f4:	01543023          	sd	s5,0(s0)
   1c2f8:	01c43423          	sd	t3,8(s0)
   1c2fc:	06f13823          	sd	a5,112(sp)
   1c300:	0006069b          	sext.w	a3,a2
   1c304:	06c12423          	sw	a2,104(sp)
   1c308:	fcdfd8e3          	bge	t6,a3,1c2d8 <_vfiprintf_r+0xb98>
   1c30c:	08078463          	beqz	a5,1c394 <_vfiprintf_r+0xc54>
   1c310:	06010613          	addi	a2,sp,96
   1c314:	000a0593          	mv	a1,s4
   1c318:	00098513          	mv	a0,s3
   1c31c:	b0cff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c320:	16051463          	bnez	a0,1c488 <_vfiprintf_r+0xd48>
   1c324:	06812703          	lw	a4,104(sp)
   1c328:	01000e13          	li	t3,16
   1c32c:	ff09091b          	addiw	s2,s2,-16
   1c330:	07013783          	ld	a5,112(sp)
   1c334:	00048413          	mv	s0,s1
   1c338:	0017061b          	addiw	a2,a4,1
   1c33c:	00700f93          	li	t6,7
   1c340:	fb2e46e3          	blt	t3,s2,1c2ec <_vfiprintf_r+0xbac>
   1c344:	02013f03          	ld	t5,32(sp)
   1c348:	04813e83          	ld	t4,72(sp)
   1c34c:	000a8713          	mv	a4,s5
   1c350:	000c0a93          	mv	s5,s8
   1c354:	000d8c13          	mv	s8,s11
   1c358:	00090d93          	mv	s11,s2
   1c35c:	000a0913          	mv	s2,s4
   1c360:	000b8a13          	mv	s4,s7
   1c364:	00070b93          	mv	s7,a4
   1c368:	01b787b3          	add	a5,a5,s11
   1c36c:	01743023          	sd	s7,0(s0)
   1c370:	01b43423          	sd	s11,8(s0)
   1c374:	06f13823          	sd	a5,112(sp)
   1c378:	06c12423          	sw	a2,104(sp)
   1c37c:	00700713          	li	a4,7
   1c380:	eac746e3          	blt	a4,a2,1c22c <_vfiprintf_r+0xaec>
   1c384:	01040413          	addi	s0,s0,16
   1c388:	0016051b          	addiw	a0,a2,1
   1c38c:	00060713          	mv	a4,a2
   1c390:	dfcff06f          	j	1b98c <_vfiprintf_r+0x24c>
   1c394:	00000713          	li	a4,0
   1c398:	00100613          	li	a2,1
   1c39c:	00048413          	mv	s0,s1
   1c3a0:	f45ff06f          	j	1c2e4 <_vfiprintf_r+0xba4>
   1c3a4:	06012423          	sw	zero,104(sp)
   1c3a8:	004b7313          	andi	t1,s6,4
   1c3ac:	0e030263          	beqz	t1,1c490 <_vfiprintf_r+0xd50>
   1c3b0:	41aa043b          	subw	s0,s4,s10
   1c3b4:	0c805e63          	blez	s0,1c490 <_vfiprintf_r+0xd50>
   1c3b8:	00048e13          	mv	t3,s1
   1c3bc:	01000713          	li	a4,16
   1c3c0:	06812603          	lw	a2,104(sp)
   1c3c4:	52875863          	bge	a4,s0,1c8f4 <_vfiprintf_r+0x11b4>
   1c3c8:	00006b97          	auipc	s7,0x6
   1c3cc:	1f8b8b93          	addi	s7,s7,504 # 225c0 <blanks.1>
   1c3d0:	01000c93          	li	s9,16
   1c3d4:	00700d93          	li	s11,7
   1c3d8:	0180006f          	j	1c3f0 <_vfiprintf_r+0xcb0>
   1c3dc:	0026071b          	addiw	a4,a2,2
   1c3e0:	010e0e13          	addi	t3,t3,16
   1c3e4:	00068613          	mv	a2,a3
   1c3e8:	ff04041b          	addiw	s0,s0,-16
   1c3ec:	048cd863          	bge	s9,s0,1c43c <_vfiprintf_r+0xcfc>
   1c3f0:	0016069b          	addiw	a3,a2,1
   1c3f4:	01078793          	addi	a5,a5,16
   1c3f8:	017e3023          	sd	s7,0(t3)
   1c3fc:	019e3423          	sd	s9,8(t3)
   1c400:	06f13823          	sd	a5,112(sp)
   1c404:	06d12423          	sw	a3,104(sp)
   1c408:	fcdddae3          	bge	s11,a3,1c3dc <_vfiprintf_r+0xc9c>
   1c40c:	06078663          	beqz	a5,1c478 <_vfiprintf_r+0xd38>
   1c410:	06010613          	addi	a2,sp,96
   1c414:	00090593          	mv	a1,s2
   1c418:	00098513          	mv	a0,s3
   1c41c:	a0cff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c420:	ea051063          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1c424:	06812603          	lw	a2,104(sp)
   1c428:	ff04041b          	addiw	s0,s0,-16
   1c42c:	07013783          	ld	a5,112(sp)
   1c430:	00048e13          	mv	t3,s1
   1c434:	0016071b          	addiw	a4,a2,1
   1c438:	fa8ccce3          	blt	s9,s0,1c3f0 <_vfiprintf_r+0xcb0>
   1c43c:	008787b3          	add	a5,a5,s0
   1c440:	017e3023          	sd	s7,0(t3)
   1c444:	008e3423          	sd	s0,8(t3)
   1c448:	06f13823          	sd	a5,112(sp)
   1c44c:	06e12423          	sw	a4,104(sp)
   1c450:	00700613          	li	a2,7
   1c454:	e2e65c63          	bge	a2,a4,1ba8c <_vfiprintf_r+0x34c>
   1c458:	02078c63          	beqz	a5,1c490 <_vfiprintf_r+0xd50>
   1c45c:	06010613          	addi	a2,sp,96
   1c460:	00090593          	mv	a1,s2
   1c464:	00098513          	mv	a0,s3
   1c468:	9c0ff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c46c:	e4051a63          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1c470:	07013783          	ld	a5,112(sp)
   1c474:	e18ff06f          	j	1ba8c <_vfiprintf_r+0x34c>
   1c478:	00100713          	li	a4,1
   1c47c:	00000613          	li	a2,0
   1c480:	00048e13          	mv	t3,s1
   1c484:	f65ff06f          	j	1c3e8 <_vfiprintf_r+0xca8>
   1c488:	000a0913          	mv	s2,s4
   1c48c:	e34ff06f          	j	1bac0 <_vfiprintf_r+0x380>
   1c490:	000a0793          	mv	a5,s4
   1c494:	01aa5463          	bge	s4,s10,1c49c <_vfiprintf_r+0xd5c>
   1c498:	000d0793          	mv	a5,s10
   1c49c:	00813703          	ld	a4,8(sp)
   1c4a0:	00e787bb          	addw	a5,a5,a4
   1c4a4:	00f13423          	sd	a5,8(sp)
   1c4a8:	e00ff06f          	j	1baa8 <_vfiprintf_r+0x368>
   1c4ac:	2a078063          	beqz	a5,1c74c <_vfiprintf_r+0x100c>
   1c4b0:	06010613          	addi	a2,sp,96
   1c4b4:	00090593          	mv	a1,s2
   1c4b8:	00098513          	mv	a0,s3
   1c4bc:	96cff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c4c0:	e0051063          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1c4c4:	06812503          	lw	a0,104(sp)
   1c4c8:	07013783          	ld	a5,112(sp)
   1c4cc:	0f010e13          	addi	t3,sp,240
   1c4d0:	0015051b          	addiw	a0,a0,1
   1c4d4:	00048413          	mv	s0,s1
   1c4d8:	d64ff06f          	j	1ba3c <_vfiprintf_r+0x2fc>
   1c4dc:	06012423          	sw	zero,104(sp)
   1c4e0:	00048413          	mv	s0,s1
   1c4e4:	bb8ff06f          	j	1b89c <_vfiprintf_r+0x15c>
   1c4e8:	010d7793          	andi	a5,s10,16
   1c4ec:	12079463          	bnez	a5,1c614 <_vfiprintf_r+0xed4>
   1c4f0:	01013703          	ld	a4,16(sp)
   1c4f4:	040d7793          	andi	a5,s10,64
   1c4f8:	00072b83          	lw	s7,0(a4)
   1c4fc:	32078063          	beqz	a5,1c81c <_vfiprintf_r+0x10dc>
   1c500:	030b9b93          	slli	s7,s7,0x30
   1c504:	030bdb93          	srli	s7,s7,0x30
   1c508:	00c13823          	sd	a2,16(sp)
   1c50c:	00100793          	li	a5,1
   1c510:	f20ff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1c514:	0f010e13          	addi	t3,sp,240
   1c518:	00100513          	li	a0,1
   1c51c:	00000713          	li	a4,0
   1c520:	00048413          	mv	s0,s1
   1c524:	d04ff06f          	j	1ba28 <_vfiprintf_r+0x2e8>
   1c528:	100f1e63          	bnez	t5,1c644 <_vfiprintf_r+0xf04>
   1c52c:	00000713          	li	a4,0
   1c530:	0f010e13          	addi	t3,sp,240
   1c534:	00100513          	li	a0,1
   1c538:	00048413          	mv	s0,s1
   1c53c:	cecff06f          	j	1ba28 <_vfiprintf_r+0x2e8>
   1c540:	00813023          	sd	s0,0(sp)
   1c544:	000b8413          	mv	s0,s7
   1c548:	02813b83          	ld	s7,40(sp)
   1c54c:	400d7d93          	andi	s11,s10,1024
   1c550:	00000b13          	li	s6,0
   1c554:	0dc10c93          	addi	s9,sp,220
   1c558:	00a00593          	li	a1,10
   1c55c:	00040513          	mv	a0,s0
   1c560:	5bc050ef          	jal	ra,21b1c <__umoddi3>
   1c564:	0305051b          	addiw	a0,a0,48
   1c568:	feac8fa3          	sb	a0,-1(s9)
   1c56c:	001b0b1b          	addiw	s6,s6,1
   1c570:	fffc8c93          	addi	s9,s9,-1
   1c574:	000d8663          	beqz	s11,1c580 <_vfiprintf_r+0xe40>
   1c578:	000bc703          	lbu	a4,0(s7)
   1c57c:	03670063          	beq	a4,s6,1c59c <_vfiprintf_r+0xe5c>
   1c580:	00a00593          	li	a1,10
   1c584:	00040513          	mv	a0,s0
   1c588:	54c050ef          	jal	ra,21ad4 <__udivdi3>
   1c58c:	00900793          	li	a5,9
   1c590:	0087fe63          	bgeu	a5,s0,1c5ac <_vfiprintf_r+0xe6c>
   1c594:	00050413          	mv	s0,a0
   1c598:	fc1ff06f          	j	1c558 <_vfiprintf_r+0xe18>
   1c59c:	0ff00793          	li	a5,255
   1c5a0:	fef700e3          	beq	a4,a5,1c580 <_vfiprintf_r+0xe40>
   1c5a4:	00900793          	li	a5,9
   1c5a8:	1687e463          	bltu	a5,s0,1c710 <_vfiprintf_r+0xfd0>
   1c5ac:	0dc10793          	addi	a5,sp,220
   1c5b0:	419787bb          	subw	a5,a5,s9
   1c5b4:	00013403          	ld	s0,0(sp)
   1c5b8:	03713423          	sd	s7,40(sp)
   1c5bc:	00f13023          	sd	a5,0(sp)
   1c5c0:	000d0b13          	mv	s6,s10
   1c5c4:	da8ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1c5c8:	06010613          	addi	a2,sp,96
   1c5cc:	00090593          	mv	a1,s2
   1c5d0:	00098513          	mv	a0,s3
   1c5d4:	05d13423          	sd	t4,72(sp)
   1c5d8:	03e13023          	sd	t5,32(sp)
   1c5dc:	84cff0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c5e0:	ce051063          	bnez	a0,1bac0 <_vfiprintf_r+0x380>
   1c5e4:	06812703          	lw	a4,104(sp)
   1c5e8:	07013783          	ld	a5,112(sp)
   1c5ec:	04813e83          	ld	t4,72(sp)
   1c5f0:	02013f03          	ld	t5,32(sp)
   1c5f4:	00048413          	mv	s0,s1
   1c5f8:	0017051b          	addiw	a0,a4,1
   1c5fc:	b90ff06f          	j	1b98c <_vfiprintf_r+0x24c>
   1c600:	0016051b          	addiw	a0,a2,1
   1c604:	01058e13          	addi	t3,a1,16
   1c608:	00060713          	mv	a4,a2
   1c60c:	00058413          	mv	s0,a1
   1c610:	c20ff06f          	j	1ba30 <_vfiprintf_r+0x2f0>
   1c614:	01013783          	ld	a5,16(sp)
   1c618:	00c13823          	sd	a2,16(sp)
   1c61c:	0007bb83          	ld	s7,0(a5)
   1c620:	00100793          	li	a5,1
   1c624:	e0cff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1c628:	01013783          	ld	a5,16(sp)
   1c62c:	0007bb83          	ld	s7,0(a5)
   1c630:	df0ff06f          	j	1bc20 <_vfiprintf_r+0x4e0>
   1c634:	01013783          	ld	a5,16(sp)
   1c638:	0007b783          	ld	a5,0(a5)
   1c63c:	00078b93          	mv	s7,a5
   1c640:	cfcff06f          	j	1bb3c <_vfiprintf_r+0x3fc>
   1c644:	05810793          	addi	a5,sp,88
   1c648:	0ef13023          	sd	a5,224(sp)
   1c64c:	00200793          	li	a5,2
   1c650:	0ef13423          	sd	a5,232(sp)
   1c654:	0f010413          	addi	s0,sp,240
   1c658:	00100713          	li	a4,1
   1c65c:	c01ff06f          	j	1c25c <_vfiprintf_r+0xb1c>
   1c660:	00c13823          	sd	a2,16(sp)
   1c664:	c11ff06f          	j	1c274 <_vfiprintf_r+0xb34>
   1c668:	01013683          	ld	a3,16(sp)
   1c66c:	00005717          	auipc	a4,0x5
   1c670:	5a470713          	addi	a4,a4,1444 # 21c10 <__clzdi2+0x84>
   1c674:	00e13c23          	sd	a4,24(sp)
   1c678:	020b7713          	andi	a4,s6,32
   1c67c:	00868613          	addi	a2,a3,8
   1c680:	06070063          	beqz	a4,1c6e0 <_vfiprintf_r+0xfa0>
   1c684:	0006bb83          	ld	s7,0(a3)
   1c688:	001b7713          	andi	a4,s6,1
   1c68c:	00070e63          	beqz	a4,1c6a8 <_vfiprintf_r+0xf68>
   1c690:	000b8c63          	beqz	s7,1c6a8 <_vfiprintf_r+0xf68>
   1c694:	002b6313          	ori	t1,s6,2
   1c698:	03000713          	li	a4,48
   1c69c:	04e10c23          	sb	a4,88(sp)
   1c6a0:	04f10ca3          	sb	a5,89(sp)
   1c6a4:	00030b1b          	sext.w	s6,t1
   1c6a8:	bffb7713          	andi	a4,s6,-1025
   1c6ac:	00070d1b          	sext.w	s10,a4
   1c6b0:	00c13823          	sd	a2,16(sp)
   1c6b4:	00200793          	li	a5,2
   1c6b8:	d78ff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1c6bc:	000b0d13          	mv	s10,s6
   1c6c0:	f34ff06f          	j	1bdf4 <_vfiprintf_r+0x6b4>
   1c6c4:	01013683          	ld	a3,16(sp)
   1c6c8:	00005717          	auipc	a4,0x5
   1c6cc:	56070713          	addi	a4,a4,1376 # 21c28 <__clzdi2+0x9c>
   1c6d0:	00e13c23          	sd	a4,24(sp)
   1c6d4:	020b7713          	andi	a4,s6,32
   1c6d8:	00868613          	addi	a2,a3,8
   1c6dc:	fa0714e3          	bnez	a4,1c684 <_vfiprintf_r+0xf44>
   1c6e0:	010b7713          	andi	a4,s6,16
   1c6e4:	08070463          	beqz	a4,1c76c <_vfiprintf_r+0x102c>
   1c6e8:	01013703          	ld	a4,16(sp)
   1c6ec:	00073b83          	ld	s7,0(a4)
   1c6f0:	f99ff06f          	j	1c688 <_vfiprintf_r+0xf48>
   1c6f4:	000c8513          	mv	a0,s9
   1c6f8:	f0cfc0ef          	jal	ra,18e04 <strlen>
   1c6fc:	0005079b          	sext.w	a5,a0
   1c700:	00f13023          	sd	a5,0(sp)
   1c704:	01713823          	sd	s7,16(sp)
   1c708:	00000a93          	li	s5,0
   1c70c:	c60ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1c710:	03813783          	ld	a5,56(sp)
   1c714:	03013583          	ld	a1,48(sp)
   1c718:	00000b13          	li	s6,0
   1c71c:	40fc8cb3          	sub	s9,s9,a5
   1c720:	00078613          	mv	a2,a5
   1c724:	000c8513          	mv	a0,s9
   1c728:	fa8fc0ef          	jal	ra,18ed0 <strncpy>
   1c72c:	001bc703          	lbu	a4,1(s7)
   1c730:	00040513          	mv	a0,s0
   1c734:	00a00593          	li	a1,10
   1c738:	00e037b3          	snez	a5,a4
   1c73c:	00fb8bb3          	add	s7,s7,a5
   1c740:	394050ef          	jal	ra,21ad4 <__udivdi3>
   1c744:	00050413          	mv	s0,a0
   1c748:	e11ff06f          	j	1c558 <_vfiprintf_r+0xe18>
   1c74c:	00013783          	ld	a5,0(sp)
   1c750:	00100713          	li	a4,1
   1c754:	0f913023          	sd	s9,224(sp)
   1c758:	0ef13423          	sd	a5,232(sp)
   1c75c:	06f13823          	sd	a5,112(sp)
   1c760:	06e12423          	sw	a4,104(sp)
   1c764:	0f010e13          	addi	t3,sp,240
   1c768:	b14ff06f          	j	1ba7c <_vfiprintf_r+0x33c>
   1c76c:	01013683          	ld	a3,16(sp)
   1c770:	040b7713          	andi	a4,s6,64
   1c774:	0006ab83          	lw	s7,0(a3)
   1c778:	06070663          	beqz	a4,1c7e4 <_vfiprintf_r+0x10a4>
   1c77c:	030b9b93          	slli	s7,s7,0x30
   1c780:	030bdb93          	srli	s7,s7,0x30
   1c784:	f05ff06f          	j	1c688 <_vfiprintf_r+0xf48>
   1c788:	000b0d13          	mv	s10,s6
   1c78c:	00c13823          	sd	a2,16(sp)
   1c790:	ae5ff06f          	j	1c274 <_vfiprintf_r+0xb34>
   1c794:	200b6b13          	ori	s6,s6,512
   1c798:	001c4783          	lbu	a5,1(s8)
   1c79c:	000b0b1b          	sext.w	s6,s6
   1c7a0:	001c0c13          	addi	s8,s8,1
   1c7a4:	92cff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1c7a8:	020b6b13          	ori	s6,s6,32
   1c7ac:	001c4783          	lbu	a5,1(s8)
   1c7b0:	000b0b1b          	sext.w	s6,s6
   1c7b4:	001c0c13          	addi	s8,s8,1
   1c7b8:	918ff06f          	j	1b8d0 <_vfiprintf_r+0x190>
   1c7bc:	00600793          	li	a5,6
   1c7c0:	000a8c93          	mv	s9,s5
   1c7c4:	0957ea63          	bltu	a5,s5,1c858 <_vfiprintf_r+0x1118>
   1c7c8:	000c879b          	sext.w	a5,s9
   1c7cc:	00f13023          	sd	a5,0(sp)
   1c7d0:	00078d13          	mv	s10,a5
   1c7d4:	01713823          	sd	s7,16(sp)
   1c7d8:	00005c97          	auipc	s9,0x5
   1c7dc:	468c8c93          	addi	s9,s9,1128 # 21c40 <__clzdi2+0xb4>
   1c7e0:	97cff06f          	j	1b95c <_vfiprintf_r+0x21c>
   1c7e4:	200b7713          	andi	a4,s6,512
   1c7e8:	0c070863          	beqz	a4,1c8b8 <_vfiprintf_r+0x1178>
   1c7ec:	0ffbfb93          	andi	s7,s7,255
   1c7f0:	e99ff06f          	j	1c688 <_vfiprintf_r+0xf48>
   1c7f4:	200b7793          	andi	a5,s6,512
   1c7f8:	0a078a63          	beqz	a5,1c8ac <_vfiprintf_r+0x116c>
   1c7fc:	0ffbfb93          	andi	s7,s7,255
   1c800:	c20ff06f          	j	1bc20 <_vfiprintf_r+0x4e0>
   1c804:	200b7793          	andi	a5,s6,512
   1c808:	08078a63          	beqz	a5,1c89c <_vfiprintf_r+0x115c>
   1c80c:	01013783          	ld	a5,16(sp)
   1c810:	00078b83          	lb	s7,0(a5)
   1c814:	000b8793          	mv	a5,s7
   1c818:	b24ff06f          	j	1bb3c <_vfiprintf_r+0x3fc>
   1c81c:	200d7793          	andi	a5,s10,512
   1c820:	06078463          	beqz	a5,1c888 <_vfiprintf_r+0x1148>
   1c824:	0ffbfb93          	andi	s7,s7,255
   1c828:	00c13823          	sd	a2,16(sp)
   1c82c:	00100793          	li	a5,1
   1c830:	c00ff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1c834:	000e0613          	mv	a2,t3
   1c838:	00006e17          	auipc	t3,0x6
   1c83c:	d98e0e13          	addi	t3,t3,-616 # 225d0 <zeroes.0>
   1c840:	949ff06f          	j	1c188 <_vfiprintf_r+0xa48>
   1c844:	0f010e13          	addi	t3,sp,240
   1c848:	00100513          	li	a0,1
   1c84c:	00000713          	li	a4,0
   1c850:	00048413          	mv	s0,s1
   1c854:	9dcff06f          	j	1ba30 <_vfiprintf_r+0x2f0>
   1c858:	00600c93          	li	s9,6
   1c85c:	f6dff06f          	j	1c7c8 <_vfiprintf_r+0x1088>
   1c860:	05710793          	addi	a5,sp,87
   1c864:	0ef13023          	sd	a5,224(sp)
   1c868:	00100793          	li	a5,1
   1c86c:	0ef13423          	sd	a5,232(sp)
   1c870:	0f010e13          	addi	t3,sp,240
   1c874:	00100513          	li	a0,1
   1c878:	944ff06f          	j	1b9bc <_vfiprintf_r+0x27c>
   1c87c:	00813783          	ld	a5,8(sp)
   1c880:	00f71023          	sh	a5,0(a4)
   1c884:	fa9fe06f          	j	1b82c <_vfiprintf_r+0xec>
   1c888:	020b9b93          	slli	s7,s7,0x20
   1c88c:	020bdb93          	srli	s7,s7,0x20
   1c890:	00c13823          	sd	a2,16(sp)
   1c894:	00100793          	li	a5,1
   1c898:	b98ff06f          	j	1bc30 <_vfiprintf_r+0x4f0>
   1c89c:	01013783          	ld	a5,16(sp)
   1c8a0:	0007ab83          	lw	s7,0(a5)
   1c8a4:	000b8793          	mv	a5,s7
   1c8a8:	a94ff06f          	j	1bb3c <_vfiprintf_r+0x3fc>
   1c8ac:	020b9b93          	slli	s7,s7,0x20
   1c8b0:	020bdb93          	srli	s7,s7,0x20
   1c8b4:	b6cff06f          	j	1bc20 <_vfiprintf_r+0x4e0>
   1c8b8:	020b9b93          	slli	s7,s7,0x20
   1c8bc:	020bdb93          	srli	s7,s7,0x20
   1c8c0:	dc9ff06f          	j	1c688 <_vfiprintf_r+0xf48>
   1c8c4:	06010613          	addi	a2,sp,96
   1c8c8:	00090593          	mv	a1,s2
   1c8cc:	00098513          	mv	a0,s3
   1c8d0:	d59fe0ef          	jal	ra,1b628 <__sprint_r.part.0>
   1c8d4:	9ecff06f          	j	1bac0 <_vfiprintf_r+0x380>
   1c8d8:	01513023          	sd	s5,0(sp)
   1c8dc:	01713823          	sd	s7,16(sp)
   1c8e0:	00000a93          	li	s5,0
   1c8e4:	a88ff06f          	j	1bb6c <_vfiprintf_r+0x42c>
   1c8e8:	00006b97          	auipc	s7,0x6
   1c8ec:	cd8b8b93          	addi	s7,s7,-808 # 225c0 <blanks.1>
   1c8f0:	a79ff06f          	j	1c368 <_vfiprintf_r+0xc28>
   1c8f4:	0016071b          	addiw	a4,a2,1
   1c8f8:	00006b97          	auipc	s7,0x6
   1c8fc:	cc8b8b93          	addi	s7,s7,-824 # 225c0 <blanks.1>
   1c900:	b3dff06f          	j	1c43c <_vfiprintf_r+0xcfc>
   1c904:	000b0d13          	mv	s10,s6
   1c908:	975ff06f          	j	1c27c <_vfiprintf_r+0xb3c>
   1c90c:	000e0593          	mv	a1,t3
   1c910:	00050613          	mv	a2,a0
   1c914:	00006e17          	auipc	t3,0x6
   1c918:	cbce0e13          	addi	t3,t3,-836 # 225d0 <zeroes.0>
   1c91c:	f80ff06f          	j	1c09c <_vfiprintf_r+0x95c>
   1c920:	fff00793          	li	a5,-1
   1c924:	00f13423          	sd	a5,8(sp)
   1c928:	9a4ff06f          	j	1bacc <_vfiprintf_r+0x38c>
   1c92c:	00f72023          	sw	a5,0(a4)
   1c930:	efdfe06f          	j	1b82c <_vfiprintf_r+0xec>
   1c934:	01013683          	ld	a3,16(sp)
   1c938:	0006a783          	lw	a5,0(a3)
   1c93c:	00868693          	addi	a3,a3,8
   1c940:	00078a9b          	sext.w	s5,a5
   1c944:	0007d463          	bgez	a5,1c94c <_vfiprintf_r+0x120c>
   1c948:	fff00a93          	li	s5,-1
   1c94c:	001c4783          	lbu	a5,1(s8)
   1c950:	00d13823          	sd	a3,16(sp)
   1c954:	00070c13          	mv	s8,a4
   1c958:	f79fe06f          	j	1b8d0 <_vfiprintf_r+0x190>

000000000001c95c <vfiprintf>:
   1c95c:	00060693          	mv	a3,a2
   1c960:	00058613          	mv	a2,a1
   1c964:	00050593          	mv	a1,a0
   1c968:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   1c96c:	dd5fe06f          	j	1b740 <_vfiprintf_r>

000000000001c970 <__sbprintf>:
   1c970:	0105d783          	lhu	a5,16(a1)
   1c974:	0ac5ae03          	lw	t3,172(a1)
   1c978:	0125d303          	lhu	t1,18(a1)
   1c97c:	0305b883          	ld	a7,48(a1)
   1c980:	0405b803          	ld	a6,64(a1)
   1c984:	b3010113          	addi	sp,sp,-1232
   1c988:	ffd7f793          	andi	a5,a5,-3
   1c98c:	40000713          	li	a4,1024
   1c990:	4c813023          	sd	s0,1216(sp)
   1c994:	00f11823          	sh	a5,16(sp)
   1c998:	00058413          	mv	s0,a1
   1c99c:	0b010793          	addi	a5,sp,176
   1c9a0:	00010593          	mv	a1,sp
   1c9a4:	4a913c23          	sd	s1,1208(sp)
   1c9a8:	4b213823          	sd	s2,1200(sp)
   1c9ac:	4c113423          	sd	ra,1224(sp)
   1c9b0:	00050913          	mv	s2,a0
   1c9b4:	0bc12623          	sw	t3,172(sp)
   1c9b8:	00611923          	sh	t1,18(sp)
   1c9bc:	03113823          	sd	a7,48(sp)
   1c9c0:	05013023          	sd	a6,64(sp)
   1c9c4:	00f13023          	sd	a5,0(sp)
   1c9c8:	00f13c23          	sd	a5,24(sp)
   1c9cc:	00e12623          	sw	a4,12(sp)
   1c9d0:	02e12023          	sw	a4,32(sp)
   1c9d4:	02012423          	sw	zero,40(sp)
   1c9d8:	d69fe0ef          	jal	ra,1b740 <_vfiprintf_r>
   1c9dc:	00050493          	mv	s1,a0
   1c9e0:	02055c63          	bgez	a0,1ca18 <__sbprintf+0xa8>
   1c9e4:	01015783          	lhu	a5,16(sp)
   1c9e8:	0407f793          	andi	a5,a5,64
   1c9ec:	00078863          	beqz	a5,1c9fc <__sbprintf+0x8c>
   1c9f0:	01045783          	lhu	a5,16(s0)
   1c9f4:	0407e793          	ori	a5,a5,64
   1c9f8:	00f41823          	sh	a5,16(s0)
   1c9fc:	4c813083          	ld	ra,1224(sp)
   1ca00:	4c013403          	ld	s0,1216(sp)
   1ca04:	4b013903          	ld	s2,1200(sp)
   1ca08:	00048513          	mv	a0,s1
   1ca0c:	4b813483          	ld	s1,1208(sp)
   1ca10:	4d010113          	addi	sp,sp,1232
   1ca14:	00008067          	ret
   1ca18:	00010593          	mv	a1,sp
   1ca1c:	00090513          	mv	a0,s2
   1ca20:	f00f60ef          	jal	ra,13120 <_fflush_r>
   1ca24:	fc0500e3          	beqz	a0,1c9e4 <__sbprintf+0x74>
   1ca28:	fff00493          	li	s1,-1
   1ca2c:	fb9ff06f          	j	1c9e4 <__sbprintf+0x74>

000000000001ca30 <_wctomb_r>:
   1ca30:	e401b783          	ld	a5,-448(gp) # 24240 <__global_locale+0xe0>
   1ca34:	00078067          	jr	a5

000000000001ca38 <__ascii_wctomb>:
   1ca38:	0006079b          	sext.w	a5,a2
   1ca3c:	02058463          	beqz	a1,1ca64 <__ascii_wctomb+0x2c>
   1ca40:	0ff00713          	li	a4,255
   1ca44:	00f76863          	bltu	a4,a5,1ca54 <__ascii_wctomb+0x1c>
   1ca48:	00c58023          	sb	a2,0(a1)
   1ca4c:	00100513          	li	a0,1
   1ca50:	00008067          	ret
   1ca54:	08a00793          	li	a5,138
   1ca58:	00f52023          	sw	a5,0(a0)
   1ca5c:	fff00513          	li	a0,-1
   1ca60:	00008067          	ret
   1ca64:	00000513          	li	a0,0
   1ca68:	00008067          	ret

000000000001ca6c <_write_r>:
   1ca6c:	ff010113          	addi	sp,sp,-16
   1ca70:	00058713          	mv	a4,a1
   1ca74:	00813023          	sd	s0,0(sp)
   1ca78:	00060593          	mv	a1,a2
   1ca7c:	00050413          	mv	s0,a0
   1ca80:	00068613          	mv	a2,a3
   1ca84:	00070513          	mv	a0,a4
   1ca88:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1ca8c:	00113423          	sd	ra,8(sp)
   1ca90:	2f0030ef          	jal	ra,1fd80 <_write>
   1ca94:	fff00793          	li	a5,-1
   1ca98:	00f50a63          	beq	a0,a5,1caac <_write_r+0x40>
   1ca9c:	00813083          	ld	ra,8(sp)
   1caa0:	00013403          	ld	s0,0(sp)
   1caa4:	01010113          	addi	sp,sp,16
   1caa8:	00008067          	ret
   1caac:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1cab0:	fe0786e3          	beqz	a5,1ca9c <_write_r+0x30>
   1cab4:	00813083          	ld	ra,8(sp)
   1cab8:	00f42023          	sw	a5,0(s0)
   1cabc:	00013403          	ld	s0,0(sp)
   1cac0:	01010113          	addi	sp,sp,16
   1cac4:	00008067          	ret

000000000001cac8 <__assert_func>:
   1cac8:	ff010113          	addi	sp,sp,-16
   1cacc:	00068793          	mv	a5,a3
   1cad0:	7581b703          	ld	a4,1880(gp) # 24b58 <_impure_ptr>
   1cad4:	00060813          	mv	a6,a2
   1cad8:	00113423          	sd	ra,8(sp)
   1cadc:	01873883          	ld	a7,24(a4)
   1cae0:	00078613          	mv	a2,a5
   1cae4:	00050693          	mv	a3,a0
   1cae8:	00058713          	mv	a4,a1
   1caec:	00006797          	auipc	a5,0x6
   1caf0:	af478793          	addi	a5,a5,-1292 # 225e0 <zeroes.0+0x10>
   1caf4:	00080c63          	beqz	a6,1cb0c <__assert_func+0x44>
   1caf8:	00006597          	auipc	a1,0x6
   1cafc:	af858593          	addi	a1,a1,-1288 # 225f0 <zeroes.0+0x20>
   1cb00:	00088513          	mv	a0,a7
   1cb04:	330000ef          	jal	ra,1ce34 <fiprintf>
   1cb08:	121020ef          	jal	ra,1f428 <abort>
   1cb0c:	00005797          	auipc	a5,0x5
   1cb10:	11478793          	addi	a5,a5,276 # 21c20 <__clzdi2+0x94>
   1cb14:	00078813          	mv	a6,a5
   1cb18:	fe1ff06f          	j	1caf8 <__assert_func+0x30>

000000000001cb1c <__assert>:
   1cb1c:	ff010113          	addi	sp,sp,-16
   1cb20:	00060693          	mv	a3,a2
   1cb24:	00000613          	li	a2,0
   1cb28:	00113423          	sd	ra,8(sp)
   1cb2c:	f9dff0ef          	jal	ra,1cac8 <__assert_func>

000000000001cb30 <atexit>:
   1cb30:	00050593          	mv	a1,a0
   1cb34:	00000693          	li	a3,0
   1cb38:	00000613          	li	a2,0
   1cb3c:	00000513          	li	a0,0
   1cb40:	1010206f          	j	1f440 <__register_exitproc>

000000000001cb44 <_calloc_r>:
   1cb44:	ff010113          	addi	sp,sp,-16
   1cb48:	00813023          	sd	s0,0(sp)
   1cb4c:	00050413          	mv	s0,a0
   1cb50:	00058513          	mv	a0,a1
   1cb54:	00060593          	mv	a1,a2
   1cb58:	00113423          	sd	ra,8(sp)
   1cb5c:	70d040ef          	jal	ra,21a68 <__muldi3>
   1cb60:	00050593          	mv	a1,a0
   1cb64:	00040513          	mv	a0,s0
   1cb68:	8d0fa0ef          	jal	ra,16c38 <_malloc_r>
   1cb6c:	00050413          	mv	s0,a0
   1cb70:	02050863          	beqz	a0,1cba0 <_calloc_r+0x5c>
   1cb74:	ff853603          	ld	a2,-8(a0)
   1cb78:	04800713          	li	a4,72
   1cb7c:	ffc67613          	andi	a2,a2,-4
   1cb80:	ff860613          	addi	a2,a2,-8
   1cb84:	06c76063          	bltu	a4,a2,1cbe4 <_calloc_r+0xa0>
   1cb88:	02700693          	li	a3,39
   1cb8c:	00050793          	mv	a5,a0
   1cb90:	02c6e263          	bltu	a3,a2,1cbb4 <_calloc_r+0x70>
   1cb94:	0007b023          	sd	zero,0(a5)
   1cb98:	0007b423          	sd	zero,8(a5)
   1cb9c:	0007b823          	sd	zero,16(a5)
   1cba0:	00813083          	ld	ra,8(sp)
   1cba4:	00040513          	mv	a0,s0
   1cba8:	00013403          	ld	s0,0(sp)
   1cbac:	01010113          	addi	sp,sp,16
   1cbb0:	00008067          	ret
   1cbb4:	00053023          	sd	zero,0(a0)
   1cbb8:	00053423          	sd	zero,8(a0)
   1cbbc:	03700793          	li	a5,55
   1cbc0:	04c7f063          	bgeu	a5,a2,1cc00 <_calloc_r+0xbc>
   1cbc4:	00053823          	sd	zero,16(a0)
   1cbc8:	00053c23          	sd	zero,24(a0)
   1cbcc:	02050793          	addi	a5,a0,32
   1cbd0:	fce612e3          	bne	a2,a4,1cb94 <_calloc_r+0x50>
   1cbd4:	02053023          	sd	zero,32(a0)
   1cbd8:	03050793          	addi	a5,a0,48
   1cbdc:	02053423          	sd	zero,40(a0)
   1cbe0:	fb5ff06f          	j	1cb94 <_calloc_r+0x50>
   1cbe4:	00000593          	li	a1,0
   1cbe8:	ef8f30ef          	jal	ra,102e0 <memset>
   1cbec:	00813083          	ld	ra,8(sp)
   1cbf0:	00040513          	mv	a0,s0
   1cbf4:	00013403          	ld	s0,0(sp)
   1cbf8:	01010113          	addi	sp,sp,16
   1cbfc:	00008067          	ret
   1cc00:	01050793          	addi	a5,a0,16
   1cc04:	f91ff06f          	j	1cb94 <_calloc_r+0x50>

000000000001cc08 <_close_r>:
   1cc08:	ff010113          	addi	sp,sp,-16
   1cc0c:	00813023          	sd	s0,0(sp)
   1cc10:	00050413          	mv	s0,a0
   1cc14:	00058513          	mv	a0,a1
   1cc18:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1cc1c:	00113423          	sd	ra,8(sp)
   1cc20:	6a5020ef          	jal	ra,1fac4 <_close>
   1cc24:	fff00793          	li	a5,-1
   1cc28:	00f50a63          	beq	a0,a5,1cc3c <_close_r+0x34>
   1cc2c:	00813083          	ld	ra,8(sp)
   1cc30:	00013403          	ld	s0,0(sp)
   1cc34:	01010113          	addi	sp,sp,16
   1cc38:	00008067          	ret
   1cc3c:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1cc40:	fe0786e3          	beqz	a5,1cc2c <_close_r+0x24>
   1cc44:	00813083          	ld	ra,8(sp)
   1cc48:	00f42023          	sw	a5,0(s0)
   1cc4c:	00013403          	ld	s0,0(sp)
   1cc50:	01010113          	addi	sp,sp,16
   1cc54:	00008067          	ret

000000000001cc58 <_fclose_r.part.0>:
   1cc58:	fe010113          	addi	sp,sp,-32
   1cc5c:	00813823          	sd	s0,16(sp)
   1cc60:	00913423          	sd	s1,8(sp)
   1cc64:	01213023          	sd	s2,0(sp)
   1cc68:	00058413          	mv	s0,a1
   1cc6c:	00113c23          	sd	ra,24(sp)
   1cc70:	00050493          	mv	s1,a0
   1cc74:	a48f60ef          	jal	ra,12ebc <__sflush_r>
   1cc78:	05043783          	ld	a5,80(s0)
   1cc7c:	00050913          	mv	s2,a0
   1cc80:	00078a63          	beqz	a5,1cc94 <_fclose_r.part.0+0x3c>
   1cc84:	03043583          	ld	a1,48(s0)
   1cc88:	00048513          	mv	a0,s1
   1cc8c:	000780e7          	jalr	a5
   1cc90:	06054463          	bltz	a0,1ccf8 <_fclose_r.part.0+0xa0>
   1cc94:	01045783          	lhu	a5,16(s0)
   1cc98:	0807f793          	andi	a5,a5,128
   1cc9c:	06079663          	bnez	a5,1cd08 <_fclose_r.part.0+0xb0>
   1cca0:	05843583          	ld	a1,88(s0)
   1cca4:	00058c63          	beqz	a1,1ccbc <_fclose_r.part.0+0x64>
   1cca8:	07440793          	addi	a5,s0,116
   1ccac:	00f58663          	beq	a1,a5,1ccb8 <_fclose_r.part.0+0x60>
   1ccb0:	00048513          	mv	a0,s1
   1ccb4:	a81f60ef          	jal	ra,13734 <_free_r>
   1ccb8:	04043c23          	sd	zero,88(s0)
   1ccbc:	07843583          	ld	a1,120(s0)
   1ccc0:	00058863          	beqz	a1,1ccd0 <_fclose_r.part.0+0x78>
   1ccc4:	00048513          	mv	a0,s1
   1ccc8:	a6df60ef          	jal	ra,13734 <_free_r>
   1cccc:	06043c23          	sd	zero,120(s0)
   1ccd0:	89df60ef          	jal	ra,1356c <__sfp_lock_acquire>
   1ccd4:	00041823          	sh	zero,16(s0)
   1ccd8:	899f60ef          	jal	ra,13570 <__sfp_lock_release>
   1ccdc:	01813083          	ld	ra,24(sp)
   1cce0:	01013403          	ld	s0,16(sp)
   1cce4:	00813483          	ld	s1,8(sp)
   1cce8:	00090513          	mv	a0,s2
   1ccec:	00013903          	ld	s2,0(sp)
   1ccf0:	02010113          	addi	sp,sp,32
   1ccf4:	00008067          	ret
   1ccf8:	01045783          	lhu	a5,16(s0)
   1ccfc:	fff00913          	li	s2,-1
   1cd00:	0807f793          	andi	a5,a5,128
   1cd04:	f8078ee3          	beqz	a5,1cca0 <_fclose_r.part.0+0x48>
   1cd08:	01843583          	ld	a1,24(s0)
   1cd0c:	00048513          	mv	a0,s1
   1cd10:	a25f60ef          	jal	ra,13734 <_free_r>
   1cd14:	f8dff06f          	j	1cca0 <_fclose_r.part.0+0x48>

000000000001cd18 <_fclose_r>:
   1cd18:	06058463          	beqz	a1,1cd80 <_fclose_r+0x68>
   1cd1c:	fe010113          	addi	sp,sp,-32
   1cd20:	00813823          	sd	s0,16(sp)
   1cd24:	00113c23          	sd	ra,24(sp)
   1cd28:	00050413          	mv	s0,a0
   1cd2c:	00050663          	beqz	a0,1cd38 <_fclose_r+0x20>
   1cd30:	05052783          	lw	a5,80(a0)
   1cd34:	02078a63          	beqz	a5,1cd68 <_fclose_r+0x50>
   1cd38:	01059783          	lh	a5,16(a1)
   1cd3c:	00079c63          	bnez	a5,1cd54 <_fclose_r+0x3c>
   1cd40:	01813083          	ld	ra,24(sp)
   1cd44:	01013403          	ld	s0,16(sp)
   1cd48:	00000513          	li	a0,0
   1cd4c:	02010113          	addi	sp,sp,32
   1cd50:	00008067          	ret
   1cd54:	00040513          	mv	a0,s0
   1cd58:	01013403          	ld	s0,16(sp)
   1cd5c:	01813083          	ld	ra,24(sp)
   1cd60:	02010113          	addi	sp,sp,32
   1cd64:	ef5ff06f          	j	1cc58 <_fclose_r.part.0>
   1cd68:	00b13423          	sd	a1,8(sp)
   1cd6c:	ff0f60ef          	jal	ra,1355c <__sinit>
   1cd70:	00813583          	ld	a1,8(sp)
   1cd74:	01059783          	lh	a5,16(a1)
   1cd78:	fc0784e3          	beqz	a5,1cd40 <_fclose_r+0x28>
   1cd7c:	fd9ff06f          	j	1cd54 <_fclose_r+0x3c>
   1cd80:	00000513          	li	a0,0
   1cd84:	00008067          	ret

000000000001cd88 <fclose>:
   1cd88:	06050663          	beqz	a0,1cdf4 <fclose+0x6c>
   1cd8c:	fe010113          	addi	sp,sp,-32
   1cd90:	00813823          	sd	s0,16(sp)
   1cd94:	00113c23          	sd	ra,24(sp)
   1cd98:	00050413          	mv	s0,a0
   1cd9c:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   1cda0:	00050663          	beqz	a0,1cdac <fclose+0x24>
   1cda4:	05052783          	lw	a5,80(a0)
   1cda8:	02078a63          	beqz	a5,1cddc <fclose+0x54>
   1cdac:	01041783          	lh	a5,16(s0)
   1cdb0:	00079c63          	bnez	a5,1cdc8 <fclose+0x40>
   1cdb4:	01813083          	ld	ra,24(sp)
   1cdb8:	01013403          	ld	s0,16(sp)
   1cdbc:	00000513          	li	a0,0
   1cdc0:	02010113          	addi	sp,sp,32
   1cdc4:	00008067          	ret
   1cdc8:	00040593          	mv	a1,s0
   1cdcc:	01013403          	ld	s0,16(sp)
   1cdd0:	01813083          	ld	ra,24(sp)
   1cdd4:	02010113          	addi	sp,sp,32
   1cdd8:	e81ff06f          	j	1cc58 <_fclose_r.part.0>
   1cddc:	00a13423          	sd	a0,8(sp)
   1cde0:	f7cf60ef          	jal	ra,1355c <__sinit>
   1cde4:	01041783          	lh	a5,16(s0)
   1cde8:	00813503          	ld	a0,8(sp)
   1cdec:	fc0784e3          	beqz	a5,1cdb4 <fclose+0x2c>
   1cdf0:	fd9ff06f          	j	1cdc8 <fclose+0x40>
   1cdf4:	00000513          	li	a0,0
   1cdf8:	00008067          	ret

000000000001cdfc <_fiprintf_r>:
   1cdfc:	fb010113          	addi	sp,sp,-80
   1ce00:	02810313          	addi	t1,sp,40
   1ce04:	02d13423          	sd	a3,40(sp)
   1ce08:	00030693          	mv	a3,t1
   1ce0c:	00113c23          	sd	ra,24(sp)
   1ce10:	02e13823          	sd	a4,48(sp)
   1ce14:	02f13c23          	sd	a5,56(sp)
   1ce18:	05013023          	sd	a6,64(sp)
   1ce1c:	05113423          	sd	a7,72(sp)
   1ce20:	00613423          	sd	t1,8(sp)
   1ce24:	91dfe0ef          	jal	ra,1b740 <_vfiprintf_r>
   1ce28:	01813083          	ld	ra,24(sp)
   1ce2c:	05010113          	addi	sp,sp,80
   1ce30:	00008067          	ret

000000000001ce34 <fiprintf>:
   1ce34:	fb010113          	addi	sp,sp,-80
   1ce38:	02010313          	addi	t1,sp,32
   1ce3c:	02c13023          	sd	a2,32(sp)
   1ce40:	02d13423          	sd	a3,40(sp)
   1ce44:	00058613          	mv	a2,a1
   1ce48:	00030693          	mv	a3,t1
   1ce4c:	00050593          	mv	a1,a0
   1ce50:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   1ce54:	00113c23          	sd	ra,24(sp)
   1ce58:	02e13823          	sd	a4,48(sp)
   1ce5c:	02f13c23          	sd	a5,56(sp)
   1ce60:	05013023          	sd	a6,64(sp)
   1ce64:	05113423          	sd	a7,72(sp)
   1ce68:	00613423          	sd	t1,8(sp)
   1ce6c:	8d5fe0ef          	jal	ra,1b740 <_vfiprintf_r>
   1ce70:	01813083          	ld	ra,24(sp)
   1ce74:	05010113          	addi	sp,sp,80
   1ce78:	00008067          	ret

000000000001ce7c <__fputwc>:
   1ce7c:	fb010113          	addi	sp,sp,-80
   1ce80:	04813023          	sd	s0,64(sp)
   1ce84:	03313423          	sd	s3,40(sp)
   1ce88:	01613823          	sd	s6,16(sp)
   1ce8c:	04113423          	sd	ra,72(sp)
   1ce90:	02913c23          	sd	s1,56(sp)
   1ce94:	03213823          	sd	s2,48(sp)
   1ce98:	03413023          	sd	s4,32(sp)
   1ce9c:	01513c23          	sd	s5,24(sp)
   1cea0:	00050b13          	mv	s6,a0
   1cea4:	00058993          	mv	s3,a1
   1cea8:	00060413          	mv	s0,a2
   1ceac:	aa9f90ef          	jal	ra,16954 <__locale_mb_cur_max>
   1ceb0:	00100793          	li	a5,1
   1ceb4:	02f51063          	bne	a0,a5,1ced4 <__fputwc+0x58>
   1ceb8:	fff9879b          	addiw	a5,s3,-1
   1cebc:	0fe00713          	li	a4,254
   1cec0:	00f76a63          	bltu	a4,a5,1ced4 <__fputwc+0x58>
   1cec4:	0ff9f713          	andi	a4,s3,255
   1cec8:	00e10423          	sb	a4,8(sp)
   1cecc:	00100913          	li	s2,1
   1ced0:	02c0006f          	j	1cefc <__fputwc+0x80>
   1ced4:	0a440693          	addi	a3,s0,164
   1ced8:	00098613          	mv	a2,s3
   1cedc:	00810593          	addi	a1,sp,8
   1cee0:	000b0513          	mv	a0,s6
   1cee4:	444020ef          	jal	ra,1f328 <_wcrtomb_r>
   1cee8:	fff00793          	li	a5,-1
   1ceec:	00050913          	mv	s2,a0
   1cef0:	0af50263          	beq	a0,a5,1cf94 <__fputwc+0x118>
   1cef4:	08050c63          	beqz	a0,1cf8c <__fputwc+0x110>
   1cef8:	00814703          	lbu	a4,8(sp)
   1cefc:	00000493          	li	s1,0
   1cf00:	fff00a13          	li	s4,-1
   1cf04:	00a00a93          	li	s5,10
   1cf08:	0280006f          	j	1cf30 <__fputwc+0xb4>
   1cf0c:	00043783          	ld	a5,0(s0)
   1cf10:	00178693          	addi	a3,a5,1
   1cf14:	00d43023          	sd	a3,0(s0)
   1cf18:	00e78023          	sb	a4,0(a5)
   1cf1c:	00148493          	addi	s1,s1,1
   1cf20:	00810793          	addi	a5,sp,8
   1cf24:	009787b3          	add	a5,a5,s1
   1cf28:	0724f263          	bgeu	s1,s2,1cf8c <__fputwc+0x110>
   1cf2c:	0007c703          	lbu	a4,0(a5)
   1cf30:	00c42783          	lw	a5,12(s0)
   1cf34:	fff7879b          	addiw	a5,a5,-1
   1cf38:	00f42623          	sw	a5,12(s0)
   1cf3c:	fc07d8e3          	bgez	a5,1cf0c <__fputwc+0x90>
   1cf40:	02842683          	lw	a3,40(s0)
   1cf44:	00070593          	mv	a1,a4
   1cf48:	00040613          	mv	a2,s0
   1cf4c:	000b0513          	mv	a0,s6
   1cf50:	00d7c463          	blt	a5,a3,1cf58 <__fputwc+0xdc>
   1cf54:	fb571ce3          	bne	a4,s5,1cf0c <__fputwc+0x90>
   1cf58:	238020ef          	jal	ra,1f190 <__swbuf_r>
   1cf5c:	fd4510e3          	bne	a0,s4,1cf1c <__fputwc+0xa0>
   1cf60:	fff00513          	li	a0,-1
   1cf64:	04813083          	ld	ra,72(sp)
   1cf68:	04013403          	ld	s0,64(sp)
   1cf6c:	03813483          	ld	s1,56(sp)
   1cf70:	03013903          	ld	s2,48(sp)
   1cf74:	02813983          	ld	s3,40(sp)
   1cf78:	02013a03          	ld	s4,32(sp)
   1cf7c:	01813a83          	ld	s5,24(sp)
   1cf80:	01013b03          	ld	s6,16(sp)
   1cf84:	05010113          	addi	sp,sp,80
   1cf88:	00008067          	ret
   1cf8c:	0009851b          	sext.w	a0,s3
   1cf90:	fd5ff06f          	j	1cf64 <__fputwc+0xe8>
   1cf94:	01045783          	lhu	a5,16(s0)
   1cf98:	fff00513          	li	a0,-1
   1cf9c:	0407e793          	ori	a5,a5,64
   1cfa0:	00f41823          	sh	a5,16(s0)
   1cfa4:	fc1ff06f          	j	1cf64 <__fputwc+0xe8>

000000000001cfa8 <_fputwc_r>:
   1cfa8:	01061783          	lh	a5,16(a2)
   1cfac:	03279713          	slli	a4,a5,0x32
   1cfb0:	02074063          	bltz	a4,1cfd0 <_fputwc_r+0x28>
   1cfb4:	0ac62703          	lw	a4,172(a2)
   1cfb8:	000026b7          	lui	a3,0x2
   1cfbc:	00d7e7b3          	or	a5,a5,a3
   1cfc0:	000026b7          	lui	a3,0x2
   1cfc4:	00d76733          	or	a4,a4,a3
   1cfc8:	00f61823          	sh	a5,16(a2)
   1cfcc:	0ae62623          	sw	a4,172(a2)
   1cfd0:	eadff06f          	j	1ce7c <__fputwc>

000000000001cfd4 <fputwc>:
   1cfd4:	fe010113          	addi	sp,sp,-32
   1cfd8:	00813823          	sd	s0,16(sp)
   1cfdc:	00113c23          	sd	ra,24(sp)
   1cfe0:	7581b403          	ld	s0,1880(gp) # 24b58 <_impure_ptr>
   1cfe4:	00058613          	mv	a2,a1
   1cfe8:	00050593          	mv	a1,a0
   1cfec:	00040663          	beqz	s0,1cff8 <fputwc+0x24>
   1cff0:	05042783          	lw	a5,80(s0)
   1cff4:	04078063          	beqz	a5,1d034 <fputwc+0x60>
   1cff8:	01061783          	lh	a5,16(a2)
   1cffc:	03279713          	slli	a4,a5,0x32
   1d000:	02074063          	bltz	a4,1d020 <fputwc+0x4c>
   1d004:	0ac62703          	lw	a4,172(a2)
   1d008:	000026b7          	lui	a3,0x2
   1d00c:	00d7e7b3          	or	a5,a5,a3
   1d010:	000026b7          	lui	a3,0x2
   1d014:	00d76733          	or	a4,a4,a3
   1d018:	00f61823          	sh	a5,16(a2)
   1d01c:	0ae62623          	sw	a4,172(a2)
   1d020:	00040513          	mv	a0,s0
   1d024:	01013403          	ld	s0,16(sp)
   1d028:	01813083          	ld	ra,24(sp)
   1d02c:	02010113          	addi	sp,sp,32
   1d030:	e4dff06f          	j	1ce7c <__fputwc>
   1d034:	00a13023          	sd	a0,0(sp)
   1d038:	00040513          	mv	a0,s0
   1d03c:	00c13423          	sd	a2,8(sp)
   1d040:	d1cf60ef          	jal	ra,1355c <__sinit>
   1d044:	00813603          	ld	a2,8(sp)
   1d048:	00013583          	ld	a1,0(sp)
   1d04c:	fadff06f          	j	1cff8 <fputwc+0x24>

000000000001d050 <_fstat_r>:
   1d050:	ff010113          	addi	sp,sp,-16
   1d054:	00058713          	mv	a4,a1
   1d058:	00813023          	sd	s0,0(sp)
   1d05c:	00060593          	mv	a1,a2
   1d060:	00050413          	mv	s0,a0
   1d064:	00070513          	mv	a0,a4
   1d068:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1d06c:	00113423          	sd	ra,8(sp)
   1d070:	2f1020ef          	jal	ra,1fb60 <_fstat>
   1d074:	fff00793          	li	a5,-1
   1d078:	00f50a63          	beq	a0,a5,1d08c <_fstat_r+0x3c>
   1d07c:	00813083          	ld	ra,8(sp)
   1d080:	00013403          	ld	s0,0(sp)
   1d084:	01010113          	addi	sp,sp,16
   1d088:	00008067          	ret
   1d08c:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1d090:	fe0786e3          	beqz	a5,1d07c <_fstat_r+0x2c>
   1d094:	00813083          	ld	ra,8(sp)
   1d098:	00f42023          	sw	a5,0(s0)
   1d09c:	00013403          	ld	s0,0(sp)
   1d0a0:	01010113          	addi	sp,sp,16
   1d0a4:	00008067          	ret

000000000001d0a8 <__sfvwrite_r>:
   1d0a8:	01063783          	ld	a5,16(a2)
   1d0ac:	28078863          	beqz	a5,1d33c <__sfvwrite_r+0x294>
   1d0b0:	0105d783          	lhu	a5,16(a1)
   1d0b4:	fa010113          	addi	sp,sp,-96
   1d0b8:	04813823          	sd	s0,80(sp)
   1d0bc:	03413823          	sd	s4,48(sp)
   1d0c0:	03513423          	sd	s5,40(sp)
   1d0c4:	04113c23          	sd	ra,88(sp)
   1d0c8:	04913423          	sd	s1,72(sp)
   1d0cc:	05213023          	sd	s2,64(sp)
   1d0d0:	03313c23          	sd	s3,56(sp)
   1d0d4:	03613023          	sd	s6,32(sp)
   1d0d8:	01713c23          	sd	s7,24(sp)
   1d0dc:	01813823          	sd	s8,16(sp)
   1d0e0:	01913423          	sd	s9,8(sp)
   1d0e4:	01a13023          	sd	s10,0(sp)
   1d0e8:	0087f713          	andi	a4,a5,8
   1d0ec:	00060a13          	mv	s4,a2
   1d0f0:	00050a93          	mv	s5,a0
   1d0f4:	00058413          	mv	s0,a1
   1d0f8:	08070863          	beqz	a4,1d188 <__sfvwrite_r+0xe0>
   1d0fc:	0185b703          	ld	a4,24(a1)
   1d100:	08070463          	beqz	a4,1d188 <__sfvwrite_r+0xe0>
   1d104:	0027f713          	andi	a4,a5,2
   1d108:	000a3903          	ld	s2,0(s4)
   1d10c:	08070e63          	beqz	a4,1d1a8 <__sfvwrite_r+0x100>
   1d110:	04043783          	ld	a5,64(s0)
   1d114:	03043583          	ld	a1,48(s0)
   1d118:	80000b37          	lui	s6,0x80000
   1d11c:	00000993          	li	s3,0
   1d120:	00000493          	li	s1,0
   1d124:	c00b4b13          	xori	s6,s6,-1024
   1d128:	00098613          	mv	a2,s3
   1d12c:	000a8513          	mv	a0,s5
   1d130:	04048463          	beqz	s1,1d178 <__sfvwrite_r+0xd0>
   1d134:	00048693          	mv	a3,s1
   1d138:	009b7463          	bgeu	s6,s1,1d140 <__sfvwrite_r+0x98>
   1d13c:	000b0693          	mv	a3,s6
   1d140:	0006869b          	sext.w	a3,a3
   1d144:	000780e7          	jalr	a5
   1d148:	1ea05063          	blez	a0,1d328 <__sfvwrite_r+0x280>
   1d14c:	010a3783          	ld	a5,16(s4)
   1d150:	00a989b3          	add	s3,s3,a0
   1d154:	40a484b3          	sub	s1,s1,a0
   1d158:	40a78533          	sub	a0,a5,a0
   1d15c:	00aa3823          	sd	a0,16(s4)
   1d160:	16050e63          	beqz	a0,1d2dc <__sfvwrite_r+0x234>
   1d164:	04043783          	ld	a5,64(s0)
   1d168:	03043583          	ld	a1,48(s0)
   1d16c:	00098613          	mv	a2,s3
   1d170:	000a8513          	mv	a0,s5
   1d174:	fc0490e3          	bnez	s1,1d134 <__sfvwrite_r+0x8c>
   1d178:	00093983          	ld	s3,0(s2)
   1d17c:	00893483          	ld	s1,8(s2)
   1d180:	01090913          	addi	s2,s2,16
   1d184:	fa5ff06f          	j	1d128 <__sfvwrite_r+0x80>
   1d188:	00040593          	mv	a1,s0
   1d18c:	000a8513          	mv	a0,s5
   1d190:	a9df50ef          	jal	ra,12c2c <__swsetup_r>
   1d194:	3c051663          	bnez	a0,1d560 <__sfvwrite_r+0x4b8>
   1d198:	01045783          	lhu	a5,16(s0)
   1d19c:	000a3903          	ld	s2,0(s4)
   1d1a0:	0027f713          	andi	a4,a5,2
   1d1a4:	f60716e3          	bnez	a4,1d110 <__sfvwrite_r+0x68>
   1d1a8:	0017f713          	andi	a4,a5,1
   1d1ac:	0a071263          	bnez	a4,1d250 <__sfvwrite_r+0x1a8>
   1d1b0:	00c42483          	lw	s1,12(s0)
   1d1b4:	00043503          	ld	a0,0(s0)
   1d1b8:	80000b37          	lui	s6,0x80000
   1d1bc:	ffeb4b93          	xori	s7,s6,-2
   1d1c0:	00000c13          	li	s8,0
   1d1c4:	00000993          	li	s3,0
   1d1c8:	fffb4b13          	not	s6,s6
   1d1cc:	00048c93          	mv	s9,s1
   1d1d0:	06098863          	beqz	s3,1d240 <__sfvwrite_r+0x198>
   1d1d4:	2007f713          	andi	a4,a5,512
   1d1d8:	1c070863          	beqz	a4,1d3a8 <__sfvwrite_r+0x300>
   1d1dc:	00048d13          	mv	s10,s1
   1d1e0:	2699f663          	bgeu	s3,s1,1d44c <__sfvwrite_r+0x3a4>
   1d1e4:	00098c93          	mv	s9,s3
   1d1e8:	00098d13          	mv	s10,s3
   1d1ec:	000d0613          	mv	a2,s10
   1d1f0:	000c0593          	mv	a1,s8
   1d1f4:	53c000ef          	jal	ra,1d730 <memmove>
   1d1f8:	00c42703          	lw	a4,12(s0)
   1d1fc:	00043783          	ld	a5,0(s0)
   1d200:	00098493          	mv	s1,s3
   1d204:	41970cbb          	subw	s9,a4,s9
   1d208:	01a787b3          	add	a5,a5,s10
   1d20c:	01942623          	sw	s9,12(s0)
   1d210:	00f43023          	sd	a5,0(s0)
   1d214:	00000993          	li	s3,0
   1d218:	010a3603          	ld	a2,16(s4)
   1d21c:	009c0c33          	add	s8,s8,s1
   1d220:	409604b3          	sub	s1,a2,s1
   1d224:	009a3823          	sd	s1,16(s4)
   1d228:	0a048a63          	beqz	s1,1d2dc <__sfvwrite_r+0x234>
   1d22c:	00c42483          	lw	s1,12(s0)
   1d230:	00043503          	ld	a0,0(s0)
   1d234:	01045783          	lhu	a5,16(s0)
   1d238:	00048c93          	mv	s9,s1
   1d23c:	f8099ce3          	bnez	s3,1d1d4 <__sfvwrite_r+0x12c>
   1d240:	00093c03          	ld	s8,0(s2)
   1d244:	00893983          	ld	s3,8(s2)
   1d248:	01090913          	addi	s2,s2,16
   1d24c:	f81ff06f          	j	1d1cc <__sfvwrite_r+0x124>
   1d250:	00000993          	li	s3,0
   1d254:	00000513          	li	a0,0
   1d258:	00000c93          	li	s9,0
   1d25c:	00000c13          	li	s8,0
   1d260:	0e0c0263          	beqz	s8,1d344 <__sfvwrite_r+0x29c>
   1d264:	0e050863          	beqz	a0,1d354 <__sfvwrite_r+0x2ac>
   1d268:	00098b93          	mv	s7,s3
   1d26c:	013c7463          	bgeu	s8,s3,1d274 <__sfvwrite_r+0x1cc>
   1d270:	000c0b93          	mv	s7,s8
   1d274:	00043503          	ld	a0,0(s0)
   1d278:	01843783          	ld	a5,24(s0)
   1d27c:	02042683          	lw	a3,32(s0)
   1d280:	000b8493          	mv	s1,s7
   1d284:	00a7f863          	bgeu	a5,a0,1d294 <__sfvwrite_r+0x1ec>
   1d288:	00c42783          	lw	a5,12(s0)
   1d28c:	00d78b3b          	addw	s6,a5,a3
   1d290:	0f7b4263          	blt	s6,s7,1d374 <__sfvwrite_r+0x2cc>
   1d294:	24dbca63          	blt	s7,a3,1d4e8 <__sfvwrite_r+0x440>
   1d298:	04043783          	ld	a5,64(s0)
   1d29c:	03043583          	ld	a1,48(s0)
   1d2a0:	000c8613          	mv	a2,s9
   1d2a4:	000a8513          	mv	a0,s5
   1d2a8:	000780e7          	jalr	a5
   1d2ac:	00050493          	mv	s1,a0
   1d2b0:	06a05c63          	blez	a0,1d328 <__sfvwrite_r+0x280>
   1d2b4:	0005079b          	sext.w	a5,a0
   1d2b8:	40f989bb          	subw	s3,s3,a5
   1d2bc:	00100513          	li	a0,1
   1d2c0:	04098c63          	beqz	s3,1d318 <__sfvwrite_r+0x270>
   1d2c4:	010a3783          	ld	a5,16(s4)
   1d2c8:	009c8cb3          	add	s9,s9,s1
   1d2cc:	409c0c33          	sub	s8,s8,s1
   1d2d0:	409784b3          	sub	s1,a5,s1
   1d2d4:	009a3823          	sd	s1,16(s4)
   1d2d8:	f80494e3          	bnez	s1,1d260 <__sfvwrite_r+0x1b8>
   1d2dc:	00000513          	li	a0,0
   1d2e0:	05813083          	ld	ra,88(sp)
   1d2e4:	05013403          	ld	s0,80(sp)
   1d2e8:	04813483          	ld	s1,72(sp)
   1d2ec:	04013903          	ld	s2,64(sp)
   1d2f0:	03813983          	ld	s3,56(sp)
   1d2f4:	03013a03          	ld	s4,48(sp)
   1d2f8:	02813a83          	ld	s5,40(sp)
   1d2fc:	02013b03          	ld	s6,32(sp)
   1d300:	01813b83          	ld	s7,24(sp)
   1d304:	01013c03          	ld	s8,16(sp)
   1d308:	00813c83          	ld	s9,8(sp)
   1d30c:	00013d03          	ld	s10,0(sp)
   1d310:	06010113          	addi	sp,sp,96
   1d314:	00008067          	ret
   1d318:	00040593          	mv	a1,s0
   1d31c:	000a8513          	mv	a0,s5
   1d320:	e01f50ef          	jal	ra,13120 <_fflush_r>
   1d324:	fa0500e3          	beqz	a0,1d2c4 <__sfvwrite_r+0x21c>
   1d328:	01041783          	lh	a5,16(s0)
   1d32c:	0407e793          	ori	a5,a5,64
   1d330:	00f41823          	sh	a5,16(s0)
   1d334:	fff00513          	li	a0,-1
   1d338:	fa9ff06f          	j	1d2e0 <__sfvwrite_r+0x238>
   1d33c:	00000513          	li	a0,0
   1d340:	00008067          	ret
   1d344:	00893c03          	ld	s8,8(s2)
   1d348:	00093c83          	ld	s9,0(s2)
   1d34c:	01090913          	addi	s2,s2,16
   1d350:	fe0c0ae3          	beqz	s8,1d344 <__sfvwrite_r+0x29c>
   1d354:	000c0613          	mv	a2,s8
   1d358:	00a00593          	li	a1,10
   1d35c:	000c8513          	mv	a0,s9
   1d360:	95cfa0ef          	jal	ra,174bc <memchr>
   1d364:	1e050263          	beqz	a0,1d548 <__sfvwrite_r+0x4a0>
   1d368:	00150513          	addi	a0,a0,1
   1d36c:	419509bb          	subw	s3,a0,s9
   1d370:	ef9ff06f          	j	1d268 <__sfvwrite_r+0x1c0>
   1d374:	000c8593          	mv	a1,s9
   1d378:	000b0613          	mv	a2,s6
   1d37c:	3b4000ef          	jal	ra,1d730 <memmove>
   1d380:	00043783          	ld	a5,0(s0)
   1d384:	00040593          	mv	a1,s0
   1d388:	000a8513          	mv	a0,s5
   1d38c:	016787b3          	add	a5,a5,s6
   1d390:	00f43023          	sd	a5,0(s0)
   1d394:	d8df50ef          	jal	ra,13120 <_fflush_r>
   1d398:	f80518e3          	bnez	a0,1d328 <__sfvwrite_r+0x280>
   1d39c:	000b0793          	mv	a5,s6
   1d3a0:	000b0493          	mv	s1,s6
   1d3a4:	f15ff06f          	j	1d2b8 <__sfvwrite_r+0x210>
   1d3a8:	01843783          	ld	a5,24(s0)
   1d3ac:	04a7ec63          	bltu	a5,a0,1d404 <__sfvwrite_r+0x35c>
   1d3b0:	02042c83          	lw	s9,32(s0)
   1d3b4:	0599e863          	bltu	s3,s9,1d404 <__sfvwrite_r+0x35c>
   1d3b8:	00098513          	mv	a0,s3
   1d3bc:	013bf463          	bgeu	s7,s3,1d3c4 <__sfvwrite_r+0x31c>
   1d3c0:	000b0513          	mv	a0,s6
   1d3c4:	000c8593          	mv	a1,s9
   1d3c8:	0005051b          	sext.w	a0,a0
   1d3cc:	700040ef          	jal	ra,21acc <__divdi3>
   1d3d0:	00050593          	mv	a1,a0
   1d3d4:	000c8513          	mv	a0,s9
   1d3d8:	690040ef          	jal	ra,21a68 <__muldi3>
   1d3dc:	04043783          	ld	a5,64(s0)
   1d3e0:	03043583          	ld	a1,48(s0)
   1d3e4:	0005069b          	sext.w	a3,a0
   1d3e8:	000c0613          	mv	a2,s8
   1d3ec:	000a8513          	mv	a0,s5
   1d3f0:	000780e7          	jalr	a5
   1d3f4:	00050493          	mv	s1,a0
   1d3f8:	f2a058e3          	blez	a0,1d328 <__sfvwrite_r+0x280>
   1d3fc:	409989b3          	sub	s3,s3,s1
   1d400:	e19ff06f          	j	1d218 <__sfvwrite_r+0x170>
   1d404:	0099f463          	bgeu	s3,s1,1d40c <__sfvwrite_r+0x364>
   1d408:	00098493          	mv	s1,s3
   1d40c:	00048613          	mv	a2,s1
   1d410:	000c0593          	mv	a1,s8
   1d414:	31c000ef          	jal	ra,1d730 <memmove>
   1d418:	00c42783          	lw	a5,12(s0)
   1d41c:	00043703          	ld	a4,0(s0)
   1d420:	409786bb          	subw	a3,a5,s1
   1d424:	00970733          	add	a4,a4,s1
   1d428:	00d42623          	sw	a3,12(s0)
   1d42c:	00e43023          	sd	a4,0(s0)
   1d430:	fc0696e3          	bnez	a3,1d3fc <__sfvwrite_r+0x354>
   1d434:	00040593          	mv	a1,s0
   1d438:	000a8513          	mv	a0,s5
   1d43c:	ce5f50ef          	jal	ra,13120 <_fflush_r>
   1d440:	ee0514e3          	bnez	a0,1d328 <__sfvwrite_r+0x280>
   1d444:	409989b3          	sub	s3,s3,s1
   1d448:	dd1ff06f          	j	1d218 <__sfvwrite_r+0x170>
   1d44c:	4807f713          	andi	a4,a5,1152
   1d450:	d8070ee3          	beqz	a4,1d1ec <__sfvwrite_r+0x144>
   1d454:	02042483          	lw	s1,32(s0)
   1d458:	01843583          	ld	a1,24(s0)
   1d45c:	00198713          	addi	a4,s3,1
   1d460:	0014969b          	slliw	a3,s1,0x1
   1d464:	009686bb          	addw	a3,a3,s1
   1d468:	40b50533          	sub	a0,a0,a1
   1d46c:	01f6d49b          	srliw	s1,a3,0x1f
   1d470:	00050d1b          	sext.w	s10,a0
   1d474:	00d484bb          	addw	s1,s1,a3
   1d478:	4014d49b          	sraiw	s1,s1,0x1
   1d47c:	01a70733          	add	a4,a4,s10
   1d480:	00e4f663          	bgeu	s1,a4,1d48c <__sfvwrite_r+0x3e4>
   1d484:	0019849b          	addiw	s1,s3,1
   1d488:	00a484bb          	addw	s1,s1,a0
   1d48c:	4007f793          	andi	a5,a5,1024
   1d490:	08078263          	beqz	a5,1d514 <__sfvwrite_r+0x46c>
   1d494:	00048593          	mv	a1,s1
   1d498:	000a8513          	mv	a0,s5
   1d49c:	f9cf90ef          	jal	ra,16c38 <_malloc_r>
   1d4a0:	00050c93          	mv	s9,a0
   1d4a4:	0a050663          	beqz	a0,1d550 <__sfvwrite_r+0x4a8>
   1d4a8:	01843583          	ld	a1,24(s0)
   1d4ac:	000d0613          	mv	a2,s10
   1d4b0:	164000ef          	jal	ra,1d614 <memcpy>
   1d4b4:	01045783          	lhu	a5,16(s0)
   1d4b8:	b7f7f793          	andi	a5,a5,-1153
   1d4bc:	0807e793          	ori	a5,a5,128
   1d4c0:	00f41823          	sh	a5,16(s0)
   1d4c4:	01ac8533          	add	a0,s9,s10
   1d4c8:	41a487bb          	subw	a5,s1,s10
   1d4cc:	01943c23          	sd	s9,24(s0)
   1d4d0:	00a43023          	sd	a0,0(s0)
   1d4d4:	02942023          	sw	s1,32(s0)
   1d4d8:	00098c93          	mv	s9,s3
   1d4dc:	00f42623          	sw	a5,12(s0)
   1d4e0:	00098d13          	mv	s10,s3
   1d4e4:	d09ff06f          	j	1d1ec <__sfvwrite_r+0x144>
   1d4e8:	000b8613          	mv	a2,s7
   1d4ec:	000c8593          	mv	a1,s9
   1d4f0:	240000ef          	jal	ra,1d730 <memmove>
   1d4f4:	00c42683          	lw	a3,12(s0)
   1d4f8:	00043703          	ld	a4,0(s0)
   1d4fc:	000b879b          	sext.w	a5,s7
   1d500:	417686bb          	subw	a3,a3,s7
   1d504:	01770733          	add	a4,a4,s7
   1d508:	00d42623          	sw	a3,12(s0)
   1d50c:	00e43023          	sd	a4,0(s0)
   1d510:	da9ff06f          	j	1d2b8 <__sfvwrite_r+0x210>
   1d514:	00048613          	mv	a2,s1
   1d518:	000a8513          	mv	a0,s5
   1d51c:	390000ef          	jal	ra,1d8ac <_realloc_r>
   1d520:	00050c93          	mv	s9,a0
   1d524:	fa0510e3          	bnez	a0,1d4c4 <__sfvwrite_r+0x41c>
   1d528:	01843583          	ld	a1,24(s0)
   1d52c:	000a8513          	mv	a0,s5
   1d530:	a04f60ef          	jal	ra,13734 <_free_r>
   1d534:	01041783          	lh	a5,16(s0)
   1d538:	00c00713          	li	a4,12
   1d53c:	00eaa023          	sw	a4,0(s5)
   1d540:	f7f7f793          	andi	a5,a5,-129
   1d544:	de9ff06f          	j	1d32c <__sfvwrite_r+0x284>
   1d548:	001c099b          	addiw	s3,s8,1
   1d54c:	d1dff06f          	j	1d268 <__sfvwrite_r+0x1c0>
   1d550:	00c00713          	li	a4,12
   1d554:	01041783          	lh	a5,16(s0)
   1d558:	00eaa023          	sw	a4,0(s5)
   1d55c:	dd1ff06f          	j	1d32c <__sfvwrite_r+0x284>
   1d560:	fff00513          	li	a0,-1
   1d564:	d7dff06f          	j	1d2e0 <__sfvwrite_r+0x238>

000000000001d568 <_isatty_r>:
   1d568:	ff010113          	addi	sp,sp,-16
   1d56c:	00813023          	sd	s0,0(sp)
   1d570:	00050413          	mv	s0,a0
   1d574:	00058513          	mv	a0,a1
   1d578:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1d57c:	00113423          	sd	ra,8(sp)
   1d580:	65c020ef          	jal	ra,1fbdc <_isatty>
   1d584:	fff00793          	li	a5,-1
   1d588:	00f50a63          	beq	a0,a5,1d59c <_isatty_r+0x34>
   1d58c:	00813083          	ld	ra,8(sp)
   1d590:	00013403          	ld	s0,0(sp)
   1d594:	01010113          	addi	sp,sp,16
   1d598:	00008067          	ret
   1d59c:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1d5a0:	fe0786e3          	beqz	a5,1d58c <_isatty_r+0x24>
   1d5a4:	00813083          	ld	ra,8(sp)
   1d5a8:	00f42023          	sw	a5,0(s0)
   1d5ac:	00013403          	ld	s0,0(sp)
   1d5b0:	01010113          	addi	sp,sp,16
   1d5b4:	00008067          	ret

000000000001d5b8 <_lseek_r>:
   1d5b8:	ff010113          	addi	sp,sp,-16
   1d5bc:	00058713          	mv	a4,a1
   1d5c0:	00813023          	sd	s0,0(sp)
   1d5c4:	00060593          	mv	a1,a2
   1d5c8:	00050413          	mv	s0,a0
   1d5cc:	00068613          	mv	a2,a3
   1d5d0:	00070513          	mv	a0,a4
   1d5d4:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1d5d8:	00113423          	sd	ra,8(sp)
   1d5dc:	664020ef          	jal	ra,1fc40 <_lseek>
   1d5e0:	fff00793          	li	a5,-1
   1d5e4:	00f50a63          	beq	a0,a5,1d5f8 <_lseek_r+0x40>
   1d5e8:	00813083          	ld	ra,8(sp)
   1d5ec:	00013403          	ld	s0,0(sp)
   1d5f0:	01010113          	addi	sp,sp,16
   1d5f4:	00008067          	ret
   1d5f8:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1d5fc:	fe0786e3          	beqz	a5,1d5e8 <_lseek_r+0x30>
   1d600:	00813083          	ld	ra,8(sp)
   1d604:	00f42023          	sw	a5,0(s0)
   1d608:	00013403          	ld	s0,0(sp)
   1d60c:	01010113          	addi	sp,sp,16
   1d610:	00008067          	ret

000000000001d614 <memcpy>:
   1d614:	00a5c7b3          	xor	a5,a1,a0
   1d618:	0077f793          	andi	a5,a5,7
   1d61c:	00c508b3          	add	a7,a0,a2
   1d620:	06079263          	bnez	a5,1d684 <memcpy+0x70>
   1d624:	00700793          	li	a5,7
   1d628:	04c7fe63          	bgeu	a5,a2,1d684 <memcpy+0x70>
   1d62c:	00757793          	andi	a5,a0,7
   1d630:	00050713          	mv	a4,a0
   1d634:	06079863          	bnez	a5,1d6a4 <memcpy+0x90>
   1d638:	ff88f613          	andi	a2,a7,-8
   1d63c:	fc060793          	addi	a5,a2,-64
   1d640:	08f76c63          	bltu	a4,a5,1d6d8 <memcpy+0xc4>
   1d644:	02c77c63          	bgeu	a4,a2,1d67c <memcpy+0x68>
   1d648:	00058693          	mv	a3,a1
   1d64c:	00070793          	mv	a5,a4
   1d650:	0006b803          	ld	a6,0(a3) # 2000 <register_fini-0xe0b0>
   1d654:	00878793          	addi	a5,a5,8
   1d658:	00868693          	addi	a3,a3,8
   1d65c:	ff07bc23          	sd	a6,-8(a5)
   1d660:	fec7e8e3          	bltu	a5,a2,1d650 <memcpy+0x3c>
   1d664:	fff60793          	addi	a5,a2,-1
   1d668:	40e787b3          	sub	a5,a5,a4
   1d66c:	ff87f793          	andi	a5,a5,-8
   1d670:	00878793          	addi	a5,a5,8
   1d674:	00f70733          	add	a4,a4,a5
   1d678:	00f585b3          	add	a1,a1,a5
   1d67c:	01176863          	bltu	a4,a7,1d68c <memcpy+0x78>
   1d680:	00008067          	ret
   1d684:	00050713          	mv	a4,a0
   1d688:	ff157ce3          	bgeu	a0,a7,1d680 <memcpy+0x6c>
   1d68c:	0005c783          	lbu	a5,0(a1)
   1d690:	00170713          	addi	a4,a4,1
   1d694:	00158593          	addi	a1,a1,1
   1d698:	fef70fa3          	sb	a5,-1(a4)
   1d69c:	ff1768e3          	bltu	a4,a7,1d68c <memcpy+0x78>
   1d6a0:	00008067          	ret
   1d6a4:	0005c683          	lbu	a3,0(a1)
   1d6a8:	00170713          	addi	a4,a4,1
   1d6ac:	00777793          	andi	a5,a4,7
   1d6b0:	fed70fa3          	sb	a3,-1(a4)
   1d6b4:	00158593          	addi	a1,a1,1
   1d6b8:	f80780e3          	beqz	a5,1d638 <memcpy+0x24>
   1d6bc:	0005c683          	lbu	a3,0(a1)
   1d6c0:	00170713          	addi	a4,a4,1
   1d6c4:	00777793          	andi	a5,a4,7
   1d6c8:	fed70fa3          	sb	a3,-1(a4)
   1d6cc:	00158593          	addi	a1,a1,1
   1d6d0:	fc079ae3          	bnez	a5,1d6a4 <memcpy+0x90>
   1d6d4:	f65ff06f          	j	1d638 <memcpy+0x24>
   1d6d8:	0085b683          	ld	a3,8(a1)
   1d6dc:	0005b283          	ld	t0,0(a1)
   1d6e0:	0105bf83          	ld	t6,16(a1)
   1d6e4:	0185bf03          	ld	t5,24(a1)
   1d6e8:	0205be83          	ld	t4,32(a1)
   1d6ec:	0285be03          	ld	t3,40(a1)
   1d6f0:	0305b303          	ld	t1,48(a1)
   1d6f4:	0385b803          	ld	a6,56(a1)
   1d6f8:	00d73423          	sd	a3,8(a4)
   1d6fc:	0405b683          	ld	a3,64(a1)
   1d700:	00573023          	sd	t0,0(a4)
   1d704:	01f73823          	sd	t6,16(a4)
   1d708:	01e73c23          	sd	t5,24(a4)
   1d70c:	03d73023          	sd	t4,32(a4)
   1d710:	03c73423          	sd	t3,40(a4)
   1d714:	02673823          	sd	t1,48(a4)
   1d718:	03073c23          	sd	a6,56(a4)
   1d71c:	04d73023          	sd	a3,64(a4)
   1d720:	04870713          	addi	a4,a4,72
   1d724:	04858593          	addi	a1,a1,72
   1d728:	faf768e3          	bltu	a4,a5,1d6d8 <memcpy+0xc4>
   1d72c:	f19ff06f          	j	1d644 <memcpy+0x30>

000000000001d730 <memmove>:
   1d730:	02a5f663          	bgeu	a1,a0,1d75c <memmove+0x2c>
   1d734:	00c587b3          	add	a5,a1,a2
   1d738:	02f57263          	bgeu	a0,a5,1d75c <memmove+0x2c>
   1d73c:	00c50733          	add	a4,a0,a2
   1d740:	0e060a63          	beqz	a2,1d834 <memmove+0x104>
   1d744:	fff7c683          	lbu	a3,-1(a5)
   1d748:	fff78793          	addi	a5,a5,-1
   1d74c:	fff70713          	addi	a4,a4,-1
   1d750:	00d70023          	sb	a3,0(a4)
   1d754:	fef598e3          	bne	a1,a5,1d744 <memmove+0x14>
   1d758:	00008067          	ret
   1d75c:	01f00793          	li	a5,31
   1d760:	02c7e863          	bltu	a5,a2,1d790 <memmove+0x60>
   1d764:	00050793          	mv	a5,a0
   1d768:	fff60693          	addi	a3,a2,-1
   1d76c:	0c060c63          	beqz	a2,1d844 <memmove+0x114>
   1d770:	00168693          	addi	a3,a3,1
   1d774:	00d786b3          	add	a3,a5,a3
   1d778:	0005c703          	lbu	a4,0(a1)
   1d77c:	00178793          	addi	a5,a5,1
   1d780:	00158593          	addi	a1,a1,1
   1d784:	fee78fa3          	sb	a4,-1(a5)
   1d788:	fed798e3          	bne	a5,a3,1d778 <memmove+0x48>
   1d78c:	00008067          	ret
   1d790:	00a5e7b3          	or	a5,a1,a0
   1d794:	0077f793          	andi	a5,a5,7
   1d798:	0a079063          	bnez	a5,1d838 <memmove+0x108>
   1d79c:	fe060893          	addi	a7,a2,-32
   1d7a0:	fe08f893          	andi	a7,a7,-32
   1d7a4:	02088893          	addi	a7,a7,32
   1d7a8:	01150833          	add	a6,a0,a7
   1d7ac:	00058713          	mv	a4,a1
   1d7b0:	00050793          	mv	a5,a0
   1d7b4:	00073683          	ld	a3,0(a4)
   1d7b8:	02070713          	addi	a4,a4,32
   1d7bc:	02078793          	addi	a5,a5,32
   1d7c0:	fed7b023          	sd	a3,-32(a5)
   1d7c4:	fe873683          	ld	a3,-24(a4)
   1d7c8:	fed7b423          	sd	a3,-24(a5)
   1d7cc:	ff073683          	ld	a3,-16(a4)
   1d7d0:	fed7b823          	sd	a3,-16(a5)
   1d7d4:	ff873683          	ld	a3,-8(a4)
   1d7d8:	fed7bc23          	sd	a3,-8(a5)
   1d7dc:	fcf81ce3          	bne	a6,a5,1d7b4 <memmove+0x84>
   1d7e0:	01867713          	andi	a4,a2,24
   1d7e4:	011585b3          	add	a1,a1,a7
   1d7e8:	01f67813          	andi	a6,a2,31
   1d7ec:	04070e63          	beqz	a4,1d848 <memmove+0x118>
   1d7f0:	00058713          	mv	a4,a1
   1d7f4:	00078893          	mv	a7,a5
   1d7f8:	00700e13          	li	t3,7
   1d7fc:	00073303          	ld	t1,0(a4)
   1d800:	00870713          	addi	a4,a4,8
   1d804:	40e806b3          	sub	a3,a6,a4
   1d808:	0068b023          	sd	t1,0(a7)
   1d80c:	00d586b3          	add	a3,a1,a3
   1d810:	00888893          	addi	a7,a7,8
   1d814:	fede64e3          	bltu	t3,a3,1d7fc <memmove+0xcc>
   1d818:	ff880713          	addi	a4,a6,-8 # 7feffff8 <__BSS_END__+0x7fedb3f8>
   1d81c:	ff877713          	andi	a4,a4,-8
   1d820:	00870713          	addi	a4,a4,8
   1d824:	00767613          	andi	a2,a2,7
   1d828:	00e787b3          	add	a5,a5,a4
   1d82c:	00e585b3          	add	a1,a1,a4
   1d830:	f39ff06f          	j	1d768 <memmove+0x38>
   1d834:	00008067          	ret
   1d838:	fff60693          	addi	a3,a2,-1
   1d83c:	00050793          	mv	a5,a0
   1d840:	f31ff06f          	j	1d770 <memmove+0x40>
   1d844:	00008067          	ret
   1d848:	00080613          	mv	a2,a6
   1d84c:	f1dff06f          	j	1d768 <memmove+0x38>

000000000001d850 <_read_r>:
   1d850:	ff010113          	addi	sp,sp,-16
   1d854:	00058713          	mv	a4,a1
   1d858:	00813023          	sd	s0,0(sp)
   1d85c:	00060593          	mv	a1,a2
   1d860:	00050413          	mv	s0,a0
   1d864:	00068613          	mv	a2,a3
   1d868:	00070513          	mv	a0,a4
   1d86c:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1d870:	00113423          	sd	ra,8(sp)
   1d874:	41c020ef          	jal	ra,1fc90 <_read>
   1d878:	fff00793          	li	a5,-1
   1d87c:	00f50a63          	beq	a0,a5,1d890 <_read_r+0x40>
   1d880:	00813083          	ld	ra,8(sp)
   1d884:	00013403          	ld	s0,0(sp)
   1d888:	01010113          	addi	sp,sp,16
   1d88c:	00008067          	ret
   1d890:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1d894:	fe0786e3          	beqz	a5,1d880 <_read_r+0x30>
   1d898:	00813083          	ld	ra,8(sp)
   1d89c:	00f42023          	sw	a5,0(s0)
   1d8a0:	00013403          	ld	s0,0(sp)
   1d8a4:	01010113          	addi	sp,sp,16
   1d8a8:	00008067          	ret

000000000001d8ac <_realloc_r>:
   1d8ac:	fb010113          	addi	sp,sp,-80
   1d8b0:	03213823          	sd	s2,48(sp)
   1d8b4:	04113423          	sd	ra,72(sp)
   1d8b8:	04813023          	sd	s0,64(sp)
   1d8bc:	02913c23          	sd	s1,56(sp)
   1d8c0:	03313423          	sd	s3,40(sp)
   1d8c4:	03413023          	sd	s4,32(sp)
   1d8c8:	01513c23          	sd	s5,24(sp)
   1d8cc:	01613823          	sd	s6,16(sp)
   1d8d0:	01713423          	sd	s7,8(sp)
   1d8d4:	01813023          	sd	s8,0(sp)
   1d8d8:	00060913          	mv	s2,a2
   1d8dc:	1c058663          	beqz	a1,1daa8 <_realloc_r+0x1fc>
   1d8e0:	00058413          	mv	s0,a1
   1d8e4:	00050a93          	mv	s5,a0
   1d8e8:	ca5f90ef          	jal	ra,1758c <__malloc_lock>
   1d8ec:	ff843703          	ld	a4,-8(s0)
   1d8f0:	01790493          	addi	s1,s2,23
   1d8f4:	02e00793          	li	a5,46
   1d8f8:	ff040b13          	addi	s6,s0,-16
   1d8fc:	ffc77a13          	andi	s4,a4,-4
   1d900:	0e97fa63          	bgeu	a5,s1,1d9f4 <_realloc_r+0x148>
   1d904:	800007b7          	lui	a5,0x80000
   1d908:	ff04f493          	andi	s1,s1,-16
   1d90c:	fff7c793          	not	a5,a5
   1d910:	0e97e663          	bltu	a5,s1,1d9fc <_realloc_r+0x150>
   1d914:	0f24e463          	bltu	s1,s2,1d9fc <_realloc_r+0x150>
   1d918:	014b09b3          	add	s3,s6,s4
   1d91c:	129a5c63          	bge	s4,s1,1da54 <_realloc_r+0x1a8>
   1d920:	00007b97          	auipc	s7,0x7
   1d924:	9e8b8b93          	addi	s7,s7,-1560 # 24308 <__malloc_av_>
   1d928:	010bb683          	ld	a3,16(s7)
   1d92c:	0089b783          	ld	a5,8(s3)
   1d930:	1d368e63          	beq	a3,s3,1db0c <_realloc_r+0x260>
   1d934:	ffe7f693          	andi	a3,a5,-2
   1d938:	00d986b3          	add	a3,s3,a3
   1d93c:	0086b683          	ld	a3,8(a3)
   1d940:	0016f693          	andi	a3,a3,1
   1d944:	14069463          	bnez	a3,1da8c <_realloc_r+0x1e0>
   1d948:	ffc7f793          	andi	a5,a5,-4
   1d94c:	00fa06b3          	add	a3,s4,a5
   1d950:	0e96d663          	bge	a3,s1,1da3c <_realloc_r+0x190>
   1d954:	00177713          	andi	a4,a4,1
   1d958:	02071463          	bnez	a4,1d980 <_realloc_r+0xd4>
   1d95c:	ff043c03          	ld	s8,-16(s0)
   1d960:	418b0c33          	sub	s8,s6,s8
   1d964:	008c3703          	ld	a4,8(s8)
   1d968:	ffc77713          	andi	a4,a4,-4
   1d96c:	00f707b3          	add	a5,a4,a5
   1d970:	01478bb3          	add	s7,a5,s4
   1d974:	349bd863          	bge	s7,s1,1dcc4 <_realloc_r+0x418>
   1d978:	00ea0bb3          	add	s7,s4,a4
   1d97c:	2c9bd263          	bge	s7,s1,1dc40 <_realloc_r+0x394>
   1d980:	00090593          	mv	a1,s2
   1d984:	000a8513          	mv	a0,s5
   1d988:	ab0f90ef          	jal	ra,16c38 <_malloc_r>
   1d98c:	00050913          	mv	s2,a0
   1d990:	04050c63          	beqz	a0,1d9e8 <_realloc_r+0x13c>
   1d994:	ff843783          	ld	a5,-8(s0)
   1d998:	ff050713          	addi	a4,a0,-16
   1d99c:	ffe7f793          	andi	a5,a5,-2
   1d9a0:	00fb07b3          	add	a5,s6,a5
   1d9a4:	28e78463          	beq	a5,a4,1dc2c <_realloc_r+0x380>
   1d9a8:	ff8a0613          	addi	a2,s4,-8
   1d9ac:	04800793          	li	a5,72
   1d9b0:	30c7e463          	bltu	a5,a2,1dcb8 <_realloc_r+0x40c>
   1d9b4:	02700713          	li	a4,39
   1d9b8:	00043683          	ld	a3,0(s0)
   1d9bc:	20c76c63          	bltu	a4,a2,1dbd4 <_realloc_r+0x328>
   1d9c0:	00050793          	mv	a5,a0
   1d9c4:	00040713          	mv	a4,s0
   1d9c8:	00d7b023          	sd	a3,0(a5) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdb400>
   1d9cc:	00873683          	ld	a3,8(a4)
   1d9d0:	00d7b423          	sd	a3,8(a5)
   1d9d4:	01073703          	ld	a4,16(a4)
   1d9d8:	00e7b823          	sd	a4,16(a5)
   1d9dc:	00040593          	mv	a1,s0
   1d9e0:	000a8513          	mv	a0,s5
   1d9e4:	d51f50ef          	jal	ra,13734 <_free_r>
   1d9e8:	000a8513          	mv	a0,s5
   1d9ec:	ba5f90ef          	jal	ra,17590 <__malloc_unlock>
   1d9f0:	0180006f          	j	1da08 <_realloc_r+0x15c>
   1d9f4:	02000493          	li	s1,32
   1d9f8:	f324f0e3          	bgeu	s1,s2,1d918 <_realloc_r+0x6c>
   1d9fc:	00c00793          	li	a5,12
   1da00:	00faa023          	sw	a5,0(s5)
   1da04:	00000913          	li	s2,0
   1da08:	04813083          	ld	ra,72(sp)
   1da0c:	04013403          	ld	s0,64(sp)
   1da10:	03813483          	ld	s1,56(sp)
   1da14:	02813983          	ld	s3,40(sp)
   1da18:	02013a03          	ld	s4,32(sp)
   1da1c:	01813a83          	ld	s5,24(sp)
   1da20:	01013b03          	ld	s6,16(sp)
   1da24:	00813b83          	ld	s7,8(sp)
   1da28:	00013c03          	ld	s8,0(sp)
   1da2c:	00090513          	mv	a0,s2
   1da30:	03013903          	ld	s2,48(sp)
   1da34:	05010113          	addi	sp,sp,80
   1da38:	00008067          	ret
   1da3c:	0189b783          	ld	a5,24(s3)
   1da40:	0109b703          	ld	a4,16(s3)
   1da44:	00068a13          	mv	s4,a3
   1da48:	00db09b3          	add	s3,s6,a3
   1da4c:	00f73c23          	sd	a5,24(a4)
   1da50:	00e7b823          	sd	a4,16(a5)
   1da54:	008b3783          	ld	a5,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb408>
   1da58:	409a0733          	sub	a4,s4,s1
   1da5c:	01f00693          	li	a3,31
   1da60:	0017f793          	andi	a5,a5,1
   1da64:	06e6ec63          	bltu	a3,a4,1dadc <_realloc_r+0x230>
   1da68:	00fa67b3          	or	a5,s4,a5
   1da6c:	00fb3423          	sd	a5,8(s6)
   1da70:	0089b783          	ld	a5,8(s3)
   1da74:	0017e793          	ori	a5,a5,1
   1da78:	00f9b423          	sd	a5,8(s3)
   1da7c:	000a8513          	mv	a0,s5
   1da80:	b11f90ef          	jal	ra,17590 <__malloc_unlock>
   1da84:	00040913          	mv	s2,s0
   1da88:	f81ff06f          	j	1da08 <_realloc_r+0x15c>
   1da8c:	00177713          	andi	a4,a4,1
   1da90:	ee0718e3          	bnez	a4,1d980 <_realloc_r+0xd4>
   1da94:	ff043c03          	ld	s8,-16(s0)
   1da98:	418b0c33          	sub	s8,s6,s8
   1da9c:	008c3703          	ld	a4,8(s8)
   1daa0:	ffc77713          	andi	a4,a4,-4
   1daa4:	ed5ff06f          	j	1d978 <_realloc_r+0xcc>
   1daa8:	04013403          	ld	s0,64(sp)
   1daac:	04813083          	ld	ra,72(sp)
   1dab0:	03813483          	ld	s1,56(sp)
   1dab4:	03013903          	ld	s2,48(sp)
   1dab8:	02813983          	ld	s3,40(sp)
   1dabc:	02013a03          	ld	s4,32(sp)
   1dac0:	01813a83          	ld	s5,24(sp)
   1dac4:	01013b03          	ld	s6,16(sp)
   1dac8:	00813b83          	ld	s7,8(sp)
   1dacc:	00013c03          	ld	s8,0(sp)
   1dad0:	00060593          	mv	a1,a2
   1dad4:	05010113          	addi	sp,sp,80
   1dad8:	960f906f          	j	16c38 <_malloc_r>
   1dadc:	00f4e7b3          	or	a5,s1,a5
   1dae0:	00fb3423          	sd	a5,8(s6)
   1dae4:	009b05b3          	add	a1,s6,s1
   1dae8:	00176713          	ori	a4,a4,1
   1daec:	00e5b423          	sd	a4,8(a1)
   1daf0:	0089b783          	ld	a5,8(s3)
   1daf4:	01058593          	addi	a1,a1,16
   1daf8:	000a8513          	mv	a0,s5
   1dafc:	0017e793          	ori	a5,a5,1
   1db00:	00f9b423          	sd	a5,8(s3)
   1db04:	c31f50ef          	jal	ra,13734 <_free_r>
   1db08:	f75ff06f          	j	1da7c <_realloc_r+0x1d0>
   1db0c:	ffc7f793          	andi	a5,a5,-4
   1db10:	00fa06b3          	add	a3,s4,a5
   1db14:	02048613          	addi	a2,s1,32
   1db18:	0ec6d063          	bge	a3,a2,1dbf8 <_realloc_r+0x34c>
   1db1c:	00177713          	andi	a4,a4,1
   1db20:	e60710e3          	bnez	a4,1d980 <_realloc_r+0xd4>
   1db24:	ff043c03          	ld	s8,-16(s0)
   1db28:	418b0c33          	sub	s8,s6,s8
   1db2c:	008c3703          	ld	a4,8(s8)
   1db30:	ffc77713          	andi	a4,a4,-4
   1db34:	00f707b3          	add	a5,a4,a5
   1db38:	014789b3          	add	s3,a5,s4
   1db3c:	e2c9cee3          	blt	s3,a2,1d978 <_realloc_r+0xcc>
   1db40:	018c3783          	ld	a5,24(s8)
   1db44:	010c3703          	ld	a4,16(s8)
   1db48:	ff8a0613          	addi	a2,s4,-8
   1db4c:	04800693          	li	a3,72
   1db50:	00f73c23          	sd	a5,24(a4)
   1db54:	00e7b823          	sd	a4,16(a5)
   1db58:	010c0913          	addi	s2,s8,16
   1db5c:	26c6ec63          	bltu	a3,a2,1ddd4 <_realloc_r+0x528>
   1db60:	02700593          	li	a1,39
   1db64:	00043703          	ld	a4,0(s0)
   1db68:	00090793          	mv	a5,s2
   1db6c:	02c5f263          	bgeu	a1,a2,1db90 <_realloc_r+0x2e4>
   1db70:	00ec3823          	sd	a4,16(s8)
   1db74:	00843703          	ld	a4,8(s0)
   1db78:	03700793          	li	a5,55
   1db7c:	00ec3c23          	sd	a4,24(s8)
   1db80:	26c7e263          	bltu	a5,a2,1dde4 <_realloc_r+0x538>
   1db84:	01043703          	ld	a4,16(s0)
   1db88:	020c0793          	addi	a5,s8,32
   1db8c:	01040413          	addi	s0,s0,16
   1db90:	00e7b023          	sd	a4,0(a5)
   1db94:	00843703          	ld	a4,8(s0)
   1db98:	00e7b423          	sd	a4,8(a5)
   1db9c:	01043703          	ld	a4,16(s0)
   1dba0:	00e7b823          	sd	a4,16(a5)
   1dba4:	009c0733          	add	a4,s8,s1
   1dba8:	409987b3          	sub	a5,s3,s1
   1dbac:	00ebb823          	sd	a4,16(s7)
   1dbb0:	0017e793          	ori	a5,a5,1
   1dbb4:	00f73423          	sd	a5,8(a4)
   1dbb8:	008c3783          	ld	a5,8(s8)
   1dbbc:	000a8513          	mv	a0,s5
   1dbc0:	0017f793          	andi	a5,a5,1
   1dbc4:	0097e4b3          	or	s1,a5,s1
   1dbc8:	009c3423          	sd	s1,8(s8)
   1dbcc:	9c5f90ef          	jal	ra,17590 <__malloc_unlock>
   1dbd0:	e39ff06f          	j	1da08 <_realloc_r+0x15c>
   1dbd4:	00d53023          	sd	a3,0(a0)
   1dbd8:	00843683          	ld	a3,8(s0)
   1dbdc:	03700713          	li	a4,55
   1dbe0:	00d53423          	sd	a3,8(a0)
   1dbe4:	16c76e63          	bltu	a4,a2,1dd60 <_realloc_r+0x4b4>
   1dbe8:	01043683          	ld	a3,16(s0)
   1dbec:	01040713          	addi	a4,s0,16
   1dbf0:	01050793          	addi	a5,a0,16
   1dbf4:	dd5ff06f          	j	1d9c8 <_realloc_r+0x11c>
   1dbf8:	009b0b33          	add	s6,s6,s1
   1dbfc:	409687b3          	sub	a5,a3,s1
   1dc00:	016bb823          	sd	s6,16(s7)
   1dc04:	0017e793          	ori	a5,a5,1
   1dc08:	00fb3423          	sd	a5,8(s6)
   1dc0c:	ff843783          	ld	a5,-8(s0)
   1dc10:	000a8513          	mv	a0,s5
   1dc14:	00040913          	mv	s2,s0
   1dc18:	0017f793          	andi	a5,a5,1
   1dc1c:	0097e4b3          	or	s1,a5,s1
   1dc20:	fe943c23          	sd	s1,-8(s0)
   1dc24:	96df90ef          	jal	ra,17590 <__malloc_unlock>
   1dc28:	de1ff06f          	j	1da08 <_realloc_r+0x15c>
   1dc2c:	ff853783          	ld	a5,-8(a0)
   1dc30:	ffc7f793          	andi	a5,a5,-4
   1dc34:	00fa0a33          	add	s4,s4,a5
   1dc38:	014b09b3          	add	s3,s6,s4
   1dc3c:	e19ff06f          	j	1da54 <_realloc_r+0x1a8>
   1dc40:	018c3783          	ld	a5,24(s8)
   1dc44:	010c3703          	ld	a4,16(s8)
   1dc48:	ff8a0613          	addi	a2,s4,-8
   1dc4c:	04800693          	li	a3,72
   1dc50:	00f73c23          	sd	a5,24(a4)
   1dc54:	00e7b823          	sd	a4,16(a5)
   1dc58:	010c0913          	addi	s2,s8,16
   1dc5c:	017c09b3          	add	s3,s8,s7
   1dc60:	0ec6e263          	bltu	a3,a2,1dd44 <_realloc_r+0x498>
   1dc64:	02700593          	li	a1,39
   1dc68:	00043703          	ld	a4,0(s0)
   1dc6c:	00090793          	mv	a5,s2
   1dc70:	02c5f263          	bgeu	a1,a2,1dc94 <_realloc_r+0x3e8>
   1dc74:	00ec3823          	sd	a4,16(s8)
   1dc78:	00843703          	ld	a4,8(s0)
   1dc7c:	03700793          	li	a5,55
   1dc80:	00ec3c23          	sd	a4,24(s8)
   1dc84:	10c7e063          	bltu	a5,a2,1dd84 <_realloc_r+0x4d8>
   1dc88:	01043703          	ld	a4,16(s0)
   1dc8c:	020c0793          	addi	a5,s8,32
   1dc90:	01040413          	addi	s0,s0,16
   1dc94:	00e7b023          	sd	a4,0(a5)
   1dc98:	00843703          	ld	a4,8(s0)
   1dc9c:	000b8a13          	mv	s4,s7
   1dca0:	000c0b13          	mv	s6,s8
   1dca4:	00e7b423          	sd	a4,8(a5)
   1dca8:	01043703          	ld	a4,16(s0)
   1dcac:	00090413          	mv	s0,s2
   1dcb0:	00e7b823          	sd	a4,16(a5)
   1dcb4:	da1ff06f          	j	1da54 <_realloc_r+0x1a8>
   1dcb8:	00040593          	mv	a1,s0
   1dcbc:	a75ff0ef          	jal	ra,1d730 <memmove>
   1dcc0:	d1dff06f          	j	1d9dc <_realloc_r+0x130>
   1dcc4:	0189b783          	ld	a5,24(s3)
   1dcc8:	0109b703          	ld	a4,16(s3)
   1dccc:	ff8a0613          	addi	a2,s4,-8
   1dcd0:	04800693          	li	a3,72
   1dcd4:	00f73c23          	sd	a5,24(a4)
   1dcd8:	00e7b823          	sd	a4,16(a5)
   1dcdc:	010c3703          	ld	a4,16(s8)
   1dce0:	018c3783          	ld	a5,24(s8)
   1dce4:	010c0913          	addi	s2,s8,16
   1dce8:	017c09b3          	add	s3,s8,s7
   1dcec:	00f73c23          	sd	a5,24(a4)
   1dcf0:	00e7b823          	sd	a4,16(a5)
   1dcf4:	04c6e863          	bltu	a3,a2,1dd44 <_realloc_r+0x498>
   1dcf8:	02700693          	li	a3,39
   1dcfc:	00043703          	ld	a4,0(s0)
   1dd00:	00090793          	mv	a5,s2
   1dd04:	f8c6f8e3          	bgeu	a3,a2,1dc94 <_realloc_r+0x3e8>
   1dd08:	00ec3823          	sd	a4,16(s8)
   1dd0c:	00843703          	ld	a4,8(s0)
   1dd10:	03700793          	li	a5,55
   1dd14:	00ec3c23          	sd	a4,24(s8)
   1dd18:	01043703          	ld	a4,16(s0)
   1dd1c:	f6c7f8e3          	bgeu	a5,a2,1dc8c <_realloc_r+0x3e0>
   1dd20:	02ec3023          	sd	a4,32(s8)
   1dd24:	01843703          	ld	a4,24(s0)
   1dd28:	04800793          	li	a5,72
   1dd2c:	02ec3423          	sd	a4,40(s8)
   1dd30:	02043703          	ld	a4,32(s0)
   1dd34:	06f60463          	beq	a2,a5,1dd9c <_realloc_r+0x4f0>
   1dd38:	030c0793          	addi	a5,s8,48
   1dd3c:	02040413          	addi	s0,s0,32
   1dd40:	f55ff06f          	j	1dc94 <_realloc_r+0x3e8>
   1dd44:	00040593          	mv	a1,s0
   1dd48:	00090513          	mv	a0,s2
   1dd4c:	9e5ff0ef          	jal	ra,1d730 <memmove>
   1dd50:	00090413          	mv	s0,s2
   1dd54:	000b8a13          	mv	s4,s7
   1dd58:	000c0b13          	mv	s6,s8
   1dd5c:	cf9ff06f          	j	1da54 <_realloc_r+0x1a8>
   1dd60:	01043703          	ld	a4,16(s0)
   1dd64:	00e53823          	sd	a4,16(a0)
   1dd68:	01843703          	ld	a4,24(s0)
   1dd6c:	00e53c23          	sd	a4,24(a0)
   1dd70:	02043683          	ld	a3,32(s0)
   1dd74:	04f60263          	beq	a2,a5,1ddb8 <_realloc_r+0x50c>
   1dd78:	02040713          	addi	a4,s0,32
   1dd7c:	02050793          	addi	a5,a0,32
   1dd80:	c49ff06f          	j	1d9c8 <_realloc_r+0x11c>
   1dd84:	01043783          	ld	a5,16(s0)
   1dd88:	02fc3023          	sd	a5,32(s8)
   1dd8c:	01843783          	ld	a5,24(s0)
   1dd90:	02fc3423          	sd	a5,40(s8)
   1dd94:	02043703          	ld	a4,32(s0)
   1dd98:	fad610e3          	bne	a2,a3,1dd38 <_realloc_r+0x48c>
   1dd9c:	02ec3823          	sd	a4,48(s8)
   1dda0:	02843703          	ld	a4,40(s0)
   1dda4:	040c0793          	addi	a5,s8,64
   1dda8:	03040413          	addi	s0,s0,48
   1ddac:	02ec3c23          	sd	a4,56(s8)
   1ddb0:	00043703          	ld	a4,0(s0)
   1ddb4:	ee1ff06f          	j	1dc94 <_realloc_r+0x3e8>
   1ddb8:	02d53023          	sd	a3,32(a0)
   1ddbc:	02843683          	ld	a3,40(s0)
   1ddc0:	03040713          	addi	a4,s0,48
   1ddc4:	03050793          	addi	a5,a0,48
   1ddc8:	02d53423          	sd	a3,40(a0)
   1ddcc:	03043683          	ld	a3,48(s0)
   1ddd0:	bf9ff06f          	j	1d9c8 <_realloc_r+0x11c>
   1ddd4:	00040593          	mv	a1,s0
   1ddd8:	00090513          	mv	a0,s2
   1dddc:	955ff0ef          	jal	ra,1d730 <memmove>
   1dde0:	dc5ff06f          	j	1dba4 <_realloc_r+0x2f8>
   1dde4:	01043783          	ld	a5,16(s0)
   1dde8:	02fc3023          	sd	a5,32(s8)
   1ddec:	01843783          	ld	a5,24(s0)
   1ddf0:	02fc3423          	sd	a5,40(s8)
   1ddf4:	02043703          	ld	a4,32(s0)
   1ddf8:	00d60863          	beq	a2,a3,1de08 <_realloc_r+0x55c>
   1ddfc:	030c0793          	addi	a5,s8,48
   1de00:	02040413          	addi	s0,s0,32
   1de04:	d8dff06f          	j	1db90 <_realloc_r+0x2e4>
   1de08:	02ec3823          	sd	a4,48(s8)
   1de0c:	02843703          	ld	a4,40(s0)
   1de10:	040c0793          	addi	a5,s8,64
   1de14:	03040413          	addi	s0,s0,48
   1de18:	02ec3c23          	sd	a4,56(s8)
   1de1c:	00043703          	ld	a4,0(s0)
   1de20:	d71ff06f          	j	1db90 <_realloc_r+0x2e4>

000000000001de24 <cleanup_glue>:
   1de24:	fd010113          	addi	sp,sp,-48
   1de28:	01213823          	sd	s2,16(sp)
   1de2c:	0005b903          	ld	s2,0(a1)
   1de30:	02813023          	sd	s0,32(sp)
   1de34:	00913c23          	sd	s1,24(sp)
   1de38:	02113423          	sd	ra,40(sp)
   1de3c:	01313423          	sd	s3,8(sp)
   1de40:	01413023          	sd	s4,0(sp)
   1de44:	00058413          	mv	s0,a1
   1de48:	00050493          	mv	s1,a0
   1de4c:	04090263          	beqz	s2,1de90 <cleanup_glue+0x6c>
   1de50:	00093983          	ld	s3,0(s2)
   1de54:	02098863          	beqz	s3,1de84 <cleanup_glue+0x60>
   1de58:	0009ba03          	ld	s4,0(s3)
   1de5c:	000a0e63          	beqz	s4,1de78 <cleanup_glue+0x54>
   1de60:	000a3583          	ld	a1,0(s4)
   1de64:	00058463          	beqz	a1,1de6c <cleanup_glue+0x48>
   1de68:	fbdff0ef          	jal	ra,1de24 <cleanup_glue>
   1de6c:	000a0593          	mv	a1,s4
   1de70:	00048513          	mv	a0,s1
   1de74:	8c1f50ef          	jal	ra,13734 <_free_r>
   1de78:	00098593          	mv	a1,s3
   1de7c:	00048513          	mv	a0,s1
   1de80:	8b5f50ef          	jal	ra,13734 <_free_r>
   1de84:	00090593          	mv	a1,s2
   1de88:	00048513          	mv	a0,s1
   1de8c:	8a9f50ef          	jal	ra,13734 <_free_r>
   1de90:	00040593          	mv	a1,s0
   1de94:	02013403          	ld	s0,32(sp)
   1de98:	02813083          	ld	ra,40(sp)
   1de9c:	01013903          	ld	s2,16(sp)
   1dea0:	00813983          	ld	s3,8(sp)
   1dea4:	00013a03          	ld	s4,0(sp)
   1dea8:	00048513          	mv	a0,s1
   1deac:	01813483          	ld	s1,24(sp)
   1deb0:	03010113          	addi	sp,sp,48
   1deb4:	881f506f          	j	13734 <_free_r>

000000000001deb8 <_reclaim_reent>:
   1deb8:	7581b783          	ld	a5,1880(gp) # 24b58 <_impure_ptr>
   1debc:	10a78a63          	beq	a5,a0,1dfd0 <_reclaim_reent+0x118>
   1dec0:	07853583          	ld	a1,120(a0)
   1dec4:	fd010113          	addi	sp,sp,-48
   1dec8:	00913c23          	sd	s1,24(sp)
   1decc:	02113423          	sd	ra,40(sp)
   1ded0:	02813023          	sd	s0,32(sp)
   1ded4:	01213823          	sd	s2,16(sp)
   1ded8:	01313423          	sd	s3,8(sp)
   1dedc:	00050493          	mv	s1,a0
   1dee0:	04058063          	beqz	a1,1df20 <_reclaim_reent+0x68>
   1dee4:	00000913          	li	s2,0
   1dee8:	20000993          	li	s3,512
   1deec:	012587b3          	add	a5,a1,s2
   1def0:	0007b403          	ld	s0,0(a5)
   1def4:	00040e63          	beqz	s0,1df10 <_reclaim_reent+0x58>
   1def8:	00040593          	mv	a1,s0
   1defc:	00043403          	ld	s0,0(s0)
   1df00:	00048513          	mv	a0,s1
   1df04:	831f50ef          	jal	ra,13734 <_free_r>
   1df08:	fe0418e3          	bnez	s0,1def8 <_reclaim_reent+0x40>
   1df0c:	0784b583          	ld	a1,120(s1)
   1df10:	00890913          	addi	s2,s2,8
   1df14:	fd391ce3          	bne	s2,s3,1deec <_reclaim_reent+0x34>
   1df18:	00048513          	mv	a0,s1
   1df1c:	819f50ef          	jal	ra,13734 <_free_r>
   1df20:	0604b583          	ld	a1,96(s1)
   1df24:	00058663          	beqz	a1,1df30 <_reclaim_reent+0x78>
   1df28:	00048513          	mv	a0,s1
   1df2c:	809f50ef          	jal	ra,13734 <_free_r>
   1df30:	1f84b403          	ld	s0,504(s1)
   1df34:	02040063          	beqz	s0,1df54 <_reclaim_reent+0x9c>
   1df38:	20048913          	addi	s2,s1,512
   1df3c:	01240c63          	beq	s0,s2,1df54 <_reclaim_reent+0x9c>
   1df40:	00040593          	mv	a1,s0
   1df44:	00043403          	ld	s0,0(s0)
   1df48:	00048513          	mv	a0,s1
   1df4c:	fe8f50ef          	jal	ra,13734 <_free_r>
   1df50:	fe8918e3          	bne	s2,s0,1df40 <_reclaim_reent+0x88>
   1df54:	0884b583          	ld	a1,136(s1)
   1df58:	00058663          	beqz	a1,1df64 <_reclaim_reent+0xac>
   1df5c:	00048513          	mv	a0,s1
   1df60:	fd4f50ef          	jal	ra,13734 <_free_r>
   1df64:	0504a783          	lw	a5,80(s1)
   1df68:	04078663          	beqz	a5,1dfb4 <_reclaim_reent+0xfc>
   1df6c:	0584b783          	ld	a5,88(s1)
   1df70:	00048513          	mv	a0,s1
   1df74:	000780e7          	jalr	a5
   1df78:	5204b403          	ld	s0,1312(s1)
   1df7c:	02040c63          	beqz	s0,1dfb4 <_reclaim_reent+0xfc>
   1df80:	00043583          	ld	a1,0(s0)
   1df84:	00058663          	beqz	a1,1df90 <_reclaim_reent+0xd8>
   1df88:	00048513          	mv	a0,s1
   1df8c:	e99ff0ef          	jal	ra,1de24 <cleanup_glue>
   1df90:	00040593          	mv	a1,s0
   1df94:	02013403          	ld	s0,32(sp)
   1df98:	02813083          	ld	ra,40(sp)
   1df9c:	01013903          	ld	s2,16(sp)
   1dfa0:	00813983          	ld	s3,8(sp)
   1dfa4:	00048513          	mv	a0,s1
   1dfa8:	01813483          	ld	s1,24(sp)
   1dfac:	03010113          	addi	sp,sp,48
   1dfb0:	f84f506f          	j	13734 <_free_r>
   1dfb4:	02813083          	ld	ra,40(sp)
   1dfb8:	02013403          	ld	s0,32(sp)
   1dfbc:	01813483          	ld	s1,24(sp)
   1dfc0:	01013903          	ld	s2,16(sp)
   1dfc4:	00813983          	ld	s3,8(sp)
   1dfc8:	03010113          	addi	sp,sp,48
   1dfcc:	00008067          	ret
   1dfd0:	00008067          	ret

000000000001dfd4 <__ssprint_r>:
   1dfd4:	01063783          	ld	a5,16(a2)
   1dfd8:	fb010113          	addi	sp,sp,-80
   1dfdc:	03413023          	sd	s4,32(sp)
   1dfe0:	04113423          	sd	ra,72(sp)
   1dfe4:	04813023          	sd	s0,64(sp)
   1dfe8:	02913c23          	sd	s1,56(sp)
   1dfec:	03213823          	sd	s2,48(sp)
   1dff0:	03313423          	sd	s3,40(sp)
   1dff4:	01513c23          	sd	s5,24(sp)
   1dff8:	01613823          	sd	s6,16(sp)
   1dffc:	01713423          	sd	s7,8(sp)
   1e000:	01813023          	sd	s8,0(sp)
   1e004:	00060a13          	mv	s4,a2
   1e008:	10078c63          	beqz	a5,1e120 <__ssprint_r+0x14c>
   1e00c:	00050a93          	mv	s5,a0
   1e010:	00063983          	ld	s3,0(a2)
   1e014:	0005b503          	ld	a0,0(a1)
   1e018:	00c5a403          	lw	s0,12(a1)
   1e01c:	00058913          	mv	s2,a1
   1e020:	00000b13          	li	s6,0
   1e024:	00000493          	li	s1,0
   1e028:	12048863          	beqz	s1,1e158 <__ssprint_r+0x184>
   1e02c:	00040c13          	mv	s8,s0
   1e030:	0004879b          	sext.w	a5,s1
   1e034:	1284ea63          	bltu	s1,s0,1e168 <__ssprint_r+0x194>
   1e038:	01095783          	lhu	a5,16(s2)
   1e03c:	00048b9b          	sext.w	s7,s1
   1e040:	4807f713          	andi	a4,a5,1152
   1e044:	0a070063          	beqz	a4,1e0e4 <__ssprint_r+0x110>
   1e048:	02092683          	lw	a3,32(s2)
   1e04c:	01893583          	ld	a1,24(s2)
   1e050:	00148713          	addi	a4,s1,1
   1e054:	0016941b          	slliw	s0,a3,0x1
   1e058:	00d406bb          	addw	a3,s0,a3
   1e05c:	40b50533          	sub	a0,a0,a1
   1e060:	01f6d41b          	srliw	s0,a3,0x1f
   1e064:	00050b9b          	sext.w	s7,a0
   1e068:	00d4043b          	addw	s0,s0,a3
   1e06c:	4014541b          	sraiw	s0,s0,0x1
   1e070:	01770733          	add	a4,a4,s7
   1e074:	00e47663          	bgeu	s0,a4,1e080 <__ssprint_r+0xac>
   1e078:	0014841b          	addiw	s0,s1,1
   1e07c:	00a4043b          	addw	s0,s0,a0
   1e080:	4007f793          	andi	a5,a5,1024
   1e084:	0e078a63          	beqz	a5,1e178 <__ssprint_r+0x1a4>
   1e088:	00040593          	mv	a1,s0
   1e08c:	000a8513          	mv	a0,s5
   1e090:	ba9f80ef          	jal	ra,16c38 <_malloc_r>
   1e094:	00050c13          	mv	s8,a0
   1e098:	10050063          	beqz	a0,1e198 <__ssprint_r+0x1c4>
   1e09c:	01893583          	ld	a1,24(s2)
   1e0a0:	000b8613          	mv	a2,s7
   1e0a4:	d70ff0ef          	jal	ra,1d614 <memcpy>
   1e0a8:	01095783          	lhu	a5,16(s2)
   1e0ac:	b7f7f793          	andi	a5,a5,-1153
   1e0b0:	0807e793          	ori	a5,a5,128
   1e0b4:	00f91823          	sh	a5,16(s2)
   1e0b8:	017c0533          	add	a0,s8,s7
   1e0bc:	41740bbb          	subw	s7,s0,s7
   1e0c0:	0004879b          	sext.w	a5,s1
   1e0c4:	01893c23          	sd	s8,24(s2)
   1e0c8:	02892023          	sw	s0,32(s2)
   1e0cc:	01792623          	sw	s7,12(s2)
   1e0d0:	00a93023          	sd	a0,0(s2)
   1e0d4:	00078413          	mv	s0,a5
   1e0d8:	00078b93          	mv	s7,a5
   1e0dc:	00078c13          	mv	s8,a5
   1e0e0:	08f4e463          	bltu	s1,a5,1e168 <__ssprint_r+0x194>
   1e0e4:	00040613          	mv	a2,s0
   1e0e8:	000b0593          	mv	a1,s6
   1e0ec:	e44ff0ef          	jal	ra,1d730 <memmove>
   1e0f0:	00c92603          	lw	a2,12(s2)
   1e0f4:	00093503          	ld	a0,0(s2)
   1e0f8:	010a3783          	ld	a5,16(s4)
   1e0fc:	4086043b          	subw	s0,a2,s0
   1e100:	01850533          	add	a0,a0,s8
   1e104:	00892623          	sw	s0,12(s2)
   1e108:	00a93023          	sd	a0,0(s2)
   1e10c:	417787b3          	sub	a5,a5,s7
   1e110:	00fa3823          	sd	a5,16(s4)
   1e114:	017b0b33          	add	s6,s6,s7
   1e118:	417484b3          	sub	s1,s1,s7
   1e11c:	f00796e3          	bnez	a5,1e028 <__ssprint_r+0x54>
   1e120:	000a2423          	sw	zero,8(s4)
   1e124:	00000513          	li	a0,0
   1e128:	04813083          	ld	ra,72(sp)
   1e12c:	04013403          	ld	s0,64(sp)
   1e130:	03813483          	ld	s1,56(sp)
   1e134:	03013903          	ld	s2,48(sp)
   1e138:	02813983          	ld	s3,40(sp)
   1e13c:	02013a03          	ld	s4,32(sp)
   1e140:	01813a83          	ld	s5,24(sp)
   1e144:	01013b03          	ld	s6,16(sp)
   1e148:	00813b83          	ld	s7,8(sp)
   1e14c:	00013c03          	ld	s8,0(sp)
   1e150:	05010113          	addi	sp,sp,80
   1e154:	00008067          	ret
   1e158:	0009bb03          	ld	s6,0(s3)
   1e15c:	0089b483          	ld	s1,8(s3)
   1e160:	01098993          	addi	s3,s3,16
   1e164:	ec5ff06f          	j	1e028 <__ssprint_r+0x54>
   1e168:	00078413          	mv	s0,a5
   1e16c:	00078b93          	mv	s7,a5
   1e170:	00078c13          	mv	s8,a5
   1e174:	f71ff06f          	j	1e0e4 <__ssprint_r+0x110>
   1e178:	00040613          	mv	a2,s0
   1e17c:	000a8513          	mv	a0,s5
   1e180:	f2cff0ef          	jal	ra,1d8ac <_realloc_r>
   1e184:	00050c13          	mv	s8,a0
   1e188:	f20518e3          	bnez	a0,1e0b8 <__ssprint_r+0xe4>
   1e18c:	01893583          	ld	a1,24(s2)
   1e190:	000a8513          	mv	a0,s5
   1e194:	da0f50ef          	jal	ra,13734 <_free_r>
   1e198:	00c00793          	li	a5,12
   1e19c:	00faa023          	sw	a5,0(s5)
   1e1a0:	01095783          	lhu	a5,16(s2)
   1e1a4:	fff00513          	li	a0,-1
   1e1a8:	0407e793          	ori	a5,a5,64
   1e1ac:	00f91823          	sh	a5,16(s2)
   1e1b0:	000a3823          	sd	zero,16(s4)
   1e1b4:	000a2423          	sw	zero,8(s4)
   1e1b8:	f71ff06f          	j	1e128 <__ssprint_r+0x154>

000000000001e1bc <_svfiprintf_r>:
   1e1bc:	0105d783          	lhu	a5,16(a1)
   1e1c0:	e3010113          	addi	sp,sp,-464
   1e1c4:	1a913c23          	sd	s1,440(sp)
   1e1c8:	1b313423          	sd	s3,424(sp)
   1e1cc:	19713423          	sd	s7,392(sp)
   1e1d0:	1c113423          	sd	ra,456(sp)
   1e1d4:	1c813023          	sd	s0,448(sp)
   1e1d8:	1b213823          	sd	s2,432(sp)
   1e1dc:	1b413023          	sd	s4,416(sp)
   1e1e0:	19513c23          	sd	s5,408(sp)
   1e1e4:	19613823          	sd	s6,400(sp)
   1e1e8:	19813023          	sd	s8,384(sp)
   1e1ec:	17913c23          	sd	s9,376(sp)
   1e1f0:	17a13823          	sd	s10,368(sp)
   1e1f4:	17b13423          	sd	s11,360(sp)
   1e1f8:	0807f793          	andi	a5,a5,128
   1e1fc:	00d13823          	sd	a3,16(sp)
   1e200:	00058493          	mv	s1,a1
   1e204:	00050993          	mv	s3,a0
   1e208:	00060b93          	mv	s7,a2
   1e20c:	00078663          	beqz	a5,1e218 <_svfiprintf_r+0x5c>
   1e210:	0185b783          	ld	a5,24(a1)
   1e214:	52078ce3          	beqz	a5,1ef4c <_svfiprintf_r+0xd90>
   1e218:	ffff87b7          	lui	a5,0xffff8
   1e21c:	0e010913          	addi	s2,sp,224
   1e220:	8307c793          	xori	a5,a5,-2000
   1e224:	07213023          	sd	s2,96(sp)
   1e228:	06013823          	sd	zero,112(sp)
   1e22c:	06012423          	sw	zero,104(sp)
   1e230:	00013c23          	sd	zero,24(sp)
   1e234:	02013023          	sd	zero,32(sp)
   1e238:	02013823          	sd	zero,48(sp)
   1e23c:	02013423          	sd	zero,40(sp)
   1e240:	00013423          	sd	zero,8(sp)
   1e244:	02f13c23          	sd	a5,56(sp)
   1e248:	00090413          	mv	s0,s2
   1e24c:	000b8c13          	mv	s8,s7
   1e250:	000c4783          	lbu	a5,0(s8)
   1e254:	22078863          	beqz	a5,1e484 <_svfiprintf_r+0x2c8>
   1e258:	000c0a13          	mv	s4,s8
   1e25c:	02500693          	li	a3,37
   1e260:	36d78a63          	beq	a5,a3,1e5d4 <_svfiprintf_r+0x418>
   1e264:	001a4783          	lbu	a5,1(s4)
   1e268:	001a0a13          	addi	s4,s4,1
   1e26c:	fe079ae3          	bnez	a5,1e260 <_svfiprintf_r+0xa4>
   1e270:	418a0bbb          	subw	s7,s4,s8
   1e274:	200b8863          	beqz	s7,1e484 <_svfiprintf_r+0x2c8>
   1e278:	07013703          	ld	a4,112(sp)
   1e27c:	06812783          	lw	a5,104(sp)
   1e280:	01843023          	sd	s8,0(s0)
   1e284:	01770733          	add	a4,a4,s7
   1e288:	0017879b          	addiw	a5,a5,1
   1e28c:	01743423          	sd	s7,8(s0)
   1e290:	06e13823          	sd	a4,112(sp)
   1e294:	06f12423          	sw	a5,104(sp)
   1e298:	0007871b          	sext.w	a4,a5
   1e29c:	00700793          	li	a5,7
   1e2a0:	01040413          	addi	s0,s0,16
   1e2a4:	34e7c063          	blt	a5,a4,1e5e4 <_svfiprintf_r+0x428>
   1e2a8:	00813703          	ld	a4,8(sp)
   1e2ac:	000a4783          	lbu	a5,0(s4)
   1e2b0:	0177073b          	addw	a4,a4,s7
   1e2b4:	00e13423          	sd	a4,8(sp)
   1e2b8:	1c078663          	beqz	a5,1e484 <_svfiprintf_r+0x2c8>
   1e2bc:	001a4783          	lbu	a5,1(s4)
   1e2c0:	001a0c13          	addi	s8,s4,1
   1e2c4:	04010ba3          	sb	zero,87(sp)
   1e2c8:	fff00a93          	li	s5,-1
   1e2cc:	00000a13          	li	s4,0
   1e2d0:	00000b13          	li	s6,0
   1e2d4:	00900b93          	li	s7,9
   1e2d8:	02a00d13          	li	s10,42
   1e2dc:	001c0c13          	addi	s8,s8,1
   1e2e0:	0007879b          	sext.w	a5,a5
   1e2e4:	05a00613          	li	a2,90
   1e2e8:	fe07871b          	addiw	a4,a5,-32
   1e2ec:	0007069b          	sext.w	a3,a4
   1e2f0:	04d66e63          	bltu	a2,a3,1e34c <_svfiprintf_r+0x190>
   1e2f4:	02071693          	slli	a3,a4,0x20
   1e2f8:	01e6d713          	srli	a4,a3,0x1e
   1e2fc:	00004697          	auipc	a3,0x4
   1e300:	42c68693          	addi	a3,a3,1068 # 22728 <_ctype_+0x108>
   1e304:	00d70733          	add	a4,a4,a3
   1e308:	00072703          	lw	a4,0(a4)
   1e30c:	00d70733          	add	a4,a4,a3
   1e310:	00070067          	jr	a4
   1e314:	00000a13          	li	s4,0
   1e318:	000c4683          	lbu	a3,0(s8)
   1e31c:	002a171b          	slliw	a4,s4,0x2
   1e320:	01470a3b          	addw	s4,a4,s4
   1e324:	fd07879b          	addiw	a5,a5,-48
   1e328:	001a1a1b          	slliw	s4,s4,0x1
   1e32c:	fd06871b          	addiw	a4,a3,-48
   1e330:	01478a3b          	addw	s4,a5,s4
   1e334:	001c0c13          	addi	s8,s8,1
   1e338:	0006879b          	sext.w	a5,a3
   1e33c:	fcebfee3          	bgeu	s7,a4,1e318 <_svfiprintf_r+0x15c>
   1e340:	fe07871b          	addiw	a4,a5,-32
   1e344:	0007069b          	sext.w	a3,a4
   1e348:	fad676e3          	bgeu	a2,a3,1e2f4 <_svfiprintf_r+0x138>
   1e34c:	12078c63          	beqz	a5,1e484 <_svfiprintf_r+0x2c8>
   1e350:	06f10c23          	sb	a5,120(sp)
   1e354:	00100793          	li	a5,1
   1e358:	04010ba3          	sb	zero,87(sp)
   1e35c:	00100d93          	li	s11,1
   1e360:	00f13023          	sd	a5,0(sp)
   1e364:	07810d13          	addi	s10,sp,120
   1e368:	00000a93          	li	s5,0
   1e36c:	002b7f13          	andi	t5,s6,2
   1e370:	000f0463          	beqz	t5,1e378 <_svfiprintf_r+0x1bc>
   1e374:	002d8d9b          	addiw	s11,s11,2
   1e378:	084b7e93          	andi	t4,s6,132
   1e37c:	07013783          	ld	a5,112(sp)
   1e380:	06812603          	lw	a2,104(sp)
   1e384:	000e9663          	bnez	t4,1e390 <_svfiprintf_r+0x1d4>
   1e388:	41ba0bbb          	subw	s7,s4,s11
   1e38c:	79704e63          	bgtz	s7,1eb28 <_svfiprintf_r+0x96c>
   1e390:	05714e03          	lbu	t3,87(sp)
   1e394:	0016051b          	addiw	a0,a2,1
   1e398:	01040593          	addi	a1,s0,16
   1e39c:	040e0063          	beqz	t3,1e3dc <_svfiprintf_r+0x220>
   1e3a0:	05710e13          	addi	t3,sp,87
   1e3a4:	00178793          	addi	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd3401>
   1e3a8:	01c43023          	sd	t3,0(s0)
   1e3ac:	00100e13          	li	t3,1
   1e3b0:	01c43423          	sd	t3,8(s0)
   1e3b4:	06f13823          	sd	a5,112(sp)
   1e3b8:	06a12423          	sw	a0,104(sp)
   1e3bc:	00700693          	li	a3,7
   1e3c0:	0aa6cce3          	blt	a3,a0,1ec78 <_svfiprintf_r+0xabc>
   1e3c4:	00260e1b          	addiw	t3,a2,2
   1e3c8:	02040693          	addi	a3,s0,32
   1e3cc:	00050613          	mv	a2,a0
   1e3d0:	00058413          	mv	s0,a1
   1e3d4:	000e0513          	mv	a0,t3
   1e3d8:	00068593          	mv	a1,a3
   1e3dc:	020f0c63          	beqz	t5,1e414 <_svfiprintf_r+0x258>
   1e3e0:	05810693          	addi	a3,sp,88
   1e3e4:	00278793          	addi	a5,a5,2
   1e3e8:	00d43023          	sd	a3,0(s0)
   1e3ec:	00200693          	li	a3,2
   1e3f0:	00d43423          	sd	a3,8(s0)
   1e3f4:	06f13823          	sd	a5,112(sp)
   1e3f8:	06a12423          	sw	a0,104(sp)
   1e3fc:	00700693          	li	a3,7
   1e400:	04a6c2e3          	blt	a3,a0,1ec44 <_svfiprintf_r+0xa88>
   1e404:	00050613          	mv	a2,a0
   1e408:	00058413          	mv	s0,a1
   1e40c:	0015051b          	addiw	a0,a0,1
   1e410:	01058593          	addi	a1,a1,16
   1e414:	08000693          	li	a3,128
   1e418:	54de8c63          	beq	t4,a3,1e970 <_svfiprintf_r+0x7b4>
   1e41c:	00013703          	ld	a4,0(sp)
   1e420:	40ea8abb          	subw	s5,s5,a4
   1e424:	61504263          	bgtz	s5,1ea28 <_svfiprintf_r+0x86c>
   1e428:	00013703          	ld	a4,0(sp)
   1e42c:	01a43023          	sd	s10,0(s0)
   1e430:	06a12423          	sw	a0,104(sp)
   1e434:	00f707b3          	add	a5,a4,a5
   1e438:	00e43423          	sd	a4,8(s0)
   1e43c:	06f13823          	sd	a5,112(sp)
   1e440:	00700693          	li	a3,7
   1e444:	6aa6c263          	blt	a3,a0,1eae8 <_svfiprintf_r+0x92c>
   1e448:	004b7313          	andi	t1,s6,4
   1e44c:	00030663          	beqz	t1,1e458 <_svfiprintf_r+0x29c>
   1e450:	41ba043b          	subw	s0,s4,s11
   1e454:	068040e3          	bgtz	s0,1ecb4 <_svfiprintf_r+0xaf8>
   1e458:	000a0693          	mv	a3,s4
   1e45c:	01ba5463          	bge	s4,s11,1e464 <_svfiprintf_r+0x2a8>
   1e460:	000d8693          	mv	a3,s11
   1e464:	00813703          	ld	a4,8(sp)
   1e468:	00e6873b          	addw	a4,a3,a4
   1e46c:	00e13423          	sd	a4,8(sp)
   1e470:	68079c63          	bnez	a5,1eb08 <_svfiprintf_r+0x94c>
   1e474:	000c4783          	lbu	a5,0(s8)
   1e478:	06012423          	sw	zero,104(sp)
   1e47c:	00090413          	mv	s0,s2
   1e480:	dc079ce3          	bnez	a5,1e258 <_svfiprintf_r+0x9c>
   1e484:	07013783          	ld	a5,112(sp)
   1e488:	46079ce3          	bnez	a5,1f100 <_svfiprintf_r+0xf44>
   1e48c:	0104d783          	lhu	a5,16(s1)
   1e490:	0407f793          	andi	a5,a5,64
   1e494:	4a079ae3          	bnez	a5,1f148 <_svfiprintf_r+0xf8c>
   1e498:	1c813083          	ld	ra,456(sp)
   1e49c:	1c013403          	ld	s0,448(sp)
   1e4a0:	00813503          	ld	a0,8(sp)
   1e4a4:	1b813483          	ld	s1,440(sp)
   1e4a8:	1b013903          	ld	s2,432(sp)
   1e4ac:	1a813983          	ld	s3,424(sp)
   1e4b0:	1a013a03          	ld	s4,416(sp)
   1e4b4:	19813a83          	ld	s5,408(sp)
   1e4b8:	19013b03          	ld	s6,400(sp)
   1e4bc:	18813b83          	ld	s7,392(sp)
   1e4c0:	18013c03          	ld	s8,384(sp)
   1e4c4:	17813c83          	ld	s9,376(sp)
   1e4c8:	17013d03          	ld	s10,368(sp)
   1e4cc:	16813d83          	ld	s11,360(sp)
   1e4d0:	1d010113          	addi	sp,sp,464
   1e4d4:	00008067          	ret
   1e4d8:	010b6b13          	ori	s6,s6,16
   1e4dc:	000c4783          	lbu	a5,0(s8)
   1e4e0:	000b0b1b          	sext.w	s6,s6
   1e4e4:	df9ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e4e8:	010b6313          	ori	t1,s6,16
   1e4ec:	00030b1b          	sext.w	s6,t1
   1e4f0:	01013703          	ld	a4,16(sp)
   1e4f4:	020b7793          	andi	a5,s6,32
   1e4f8:	00870613          	addi	a2,a4,8
   1e4fc:	12078463          	beqz	a5,1e624 <_svfiprintf_r+0x468>
   1e500:	00073783          	ld	a5,0(a4)
   1e504:	00078b93          	mv	s7,a5
   1e508:	1207ce63          	bltz	a5,1e644 <_svfiprintf_r+0x488>
   1e50c:	fff00793          	li	a5,-1
   1e510:	2afa8ee3          	beq	s5,a5,1efcc <_svfiprintf_r+0xe10>
   1e514:	f7fb7693          	andi	a3,s6,-129
   1e518:	00c13823          	sd	a2,16(sp)
   1e51c:	00068d9b          	sext.w	s11,a3
   1e520:	040b84e3          	beqz	s7,1ed68 <_svfiprintf_r+0xbac>
   1e524:	00900793          	li	a5,9
   1e528:	0b77e8e3          	bltu	a5,s7,1edd8 <_svfiprintf_r+0xc1c>
   1e52c:	030b8b9b          	addiw	s7,s7,48
   1e530:	00100793          	li	a5,1
   1e534:	0d710da3          	sb	s7,219(sp)
   1e538:	000d8b13          	mv	s6,s11
   1e53c:	00f13023          	sd	a5,0(sp)
   1e540:	0db10d13          	addi	s10,sp,219
   1e544:	06c0006f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1e548:	010b6313          	ori	t1,s6,16
   1e54c:	00030b1b          	sext.w	s6,t1
   1e550:	01013703          	ld	a4,16(sp)
   1e554:	020b7793          	andi	a5,s6,32
   1e558:	00870613          	addi	a2,a4,8
   1e55c:	0a078263          	beqz	a5,1e600 <_svfiprintf_r+0x444>
   1e560:	00073b83          	ld	s7,0(a4)
   1e564:	bffb7693          	andi	a3,s6,-1025
   1e568:	00068d9b          	sext.w	s11,a3
   1e56c:	00c13823          	sd	a2,16(sp)
   1e570:	00000793          	li	a5,0
   1e574:	04010ba3          	sb	zero,87(sp)
   1e578:	fff00613          	li	a2,-1
   1e57c:	0eca8463          	beq	s5,a2,1e664 <_svfiprintf_r+0x4a8>
   1e580:	f7fdf313          	andi	t1,s11,-129
   1e584:	00030b1b          	sext.w	s6,t1
   1e588:	580b9c63          	bnez	s7,1eb20 <_svfiprintf_r+0x964>
   1e58c:	380a9c63          	bnez	s5,1e924 <_svfiprintf_r+0x768>
   1e590:	7e079063          	bnez	a5,1ed70 <_svfiprintf_r+0xbb4>
   1e594:	001df793          	andi	a5,s11,1
   1e598:	00f13023          	sd	a5,0(sp)
   1e59c:	0dc10d13          	addi	s10,sp,220
   1e5a0:	00078863          	beqz	a5,1e5b0 <_svfiprintf_r+0x3f4>
   1e5a4:	03000793          	li	a5,48
   1e5a8:	0cf10da3          	sb	a5,219(sp)
   1e5ac:	0db10d13          	addi	s10,sp,219
   1e5b0:	00013703          	ld	a4,0(sp)
   1e5b4:	000a8793          	mv	a5,s5
   1e5b8:	00ead463          	bge	s5,a4,1e5c0 <_svfiprintf_r+0x404>
   1e5bc:	00070793          	mv	a5,a4
   1e5c0:	05714683          	lbu	a3,87(sp)
   1e5c4:	00078d9b          	sext.w	s11,a5
   1e5c8:	da0682e3          	beqz	a3,1e36c <_svfiprintf_r+0x1b0>
   1e5cc:	00178d9b          	addiw	s11,a5,1
   1e5d0:	d9dff06f          	j	1e36c <_svfiprintf_r+0x1b0>
   1e5d4:	418a0bbb          	subw	s7,s4,s8
   1e5d8:	ca0b90e3          	bnez	s7,1e278 <_svfiprintf_r+0xbc>
   1e5dc:	000a4783          	lbu	a5,0(s4)
   1e5e0:	cd9ff06f          	j	1e2b8 <_svfiprintf_r+0xfc>
   1e5e4:	06010613          	addi	a2,sp,96
   1e5e8:	00048593          	mv	a1,s1
   1e5ec:	00098513          	mv	a0,s3
   1e5f0:	9e5ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1e5f4:	e8051ce3          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1e5f8:	00090413          	mv	s0,s2
   1e5fc:	cadff06f          	j	1e2a8 <_svfiprintf_r+0xec>
   1e600:	010b7793          	andi	a5,s6,16
   1e604:	08079ae3          	bnez	a5,1ee98 <_svfiprintf_r+0xcdc>
   1e608:	01013703          	ld	a4,16(sp)
   1e60c:	040b7793          	andi	a5,s6,64
   1e610:	00072b83          	lw	s7,0(a4)
   1e614:	24078ee3          	beqz	a5,1f070 <_svfiprintf_r+0xeb4>
   1e618:	030b9b93          	slli	s7,s7,0x30
   1e61c:	030bdb93          	srli	s7,s7,0x30
   1e620:	f45ff06f          	j	1e564 <_svfiprintf_r+0x3a8>
   1e624:	010b7793          	andi	a5,s6,16
   1e628:	060790e3          	bnez	a5,1ee88 <_svfiprintf_r+0xccc>
   1e62c:	040b7793          	andi	a5,s6,64
   1e630:	220784e3          	beqz	a5,1f058 <_svfiprintf_r+0xe9c>
   1e634:	01013783          	ld	a5,16(sp)
   1e638:	00079b83          	lh	s7,0(a5)
   1e63c:	000b8793          	mv	a5,s7
   1e640:	ec07d6e3          	bgez	a5,1e50c <_svfiprintf_r+0x350>
   1e644:	02d00793          	li	a5,45
   1e648:	04f10ba3          	sb	a5,87(sp)
   1e64c:	00c13823          	sd	a2,16(sp)
   1e650:	fff00613          	li	a2,-1
   1e654:	41700bb3          	neg	s7,s7
   1e658:	000b0d93          	mv	s11,s6
   1e65c:	00100793          	li	a5,1
   1e660:	f2ca90e3          	bne	s5,a2,1e580 <_svfiprintf_r+0x3c4>
   1e664:	00100613          	li	a2,1
   1e668:	eac78ee3          	beq	a5,a2,1e524 <_svfiprintf_r+0x368>
   1e66c:	00200613          	li	a2,2
   1e670:	2cc78463          	beq	a5,a2,1e938 <_svfiprintf_r+0x77c>
   1e674:	0dc10d13          	addi	s10,sp,220
   1e678:	007bf793          	andi	a5,s7,7
   1e67c:	03078793          	addi	a5,a5,48
   1e680:	fefd0fa3          	sb	a5,-1(s10)
   1e684:	003bdb93          	srli	s7,s7,0x3
   1e688:	000d0613          	mv	a2,s10
   1e68c:	fffd0d13          	addi	s10,s10,-1
   1e690:	fe0b94e3          	bnez	s7,1e678 <_svfiprintf_r+0x4bc>
   1e694:	001df593          	andi	a1,s11,1
   1e698:	2c058263          	beqz	a1,1e95c <_svfiprintf_r+0x7a0>
   1e69c:	03000593          	li	a1,48
   1e6a0:	2ab78e63          	beq	a5,a1,1e95c <_svfiprintf_r+0x7a0>
   1e6a4:	ffe60613          	addi	a2,a2,-2
   1e6a8:	0dc10793          	addi	a5,sp,220
   1e6ac:	40c787bb          	subw	a5,a5,a2
   1e6b0:	febd0fa3          	sb	a1,-1(s10)
   1e6b4:	00f13023          	sd	a5,0(sp)
   1e6b8:	000d8b13          	mv	s6,s11
   1e6bc:	00060d13          	mv	s10,a2
   1e6c0:	ef1ff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1e6c4:	01013783          	ld	a5,16(sp)
   1e6c8:	04010ba3          	sb	zero,87(sp)
   1e6cc:	0007bd03          	ld	s10,0(a5)
   1e6d0:	00878b93          	addi	s7,a5,8
   1e6d4:	140d0ce3          	beqz	s10,1f02c <_svfiprintf_r+0xe70>
   1e6d8:	fff00793          	li	a5,-1
   1e6dc:	04fa8ae3          	beq	s5,a5,1ef30 <_svfiprintf_r+0xd74>
   1e6e0:	000a8613          	mv	a2,s5
   1e6e4:	00000593          	li	a1,0
   1e6e8:	000d0513          	mv	a0,s10
   1e6ec:	dd1f80ef          	jal	ra,174bc <memchr>
   1e6f0:	220502e3          	beqz	a0,1f114 <_svfiprintf_r+0xf58>
   1e6f4:	41a507bb          	subw	a5,a0,s10
   1e6f8:	00f13023          	sd	a5,0(sp)
   1e6fc:	01713823          	sd	s7,16(sp)
   1e700:	00000a93          	li	s5,0
   1e704:	eadff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1e708:	01013703          	ld	a4,16(sp)
   1e70c:	04010ba3          	sb	zero,87(sp)
   1e710:	00100d93          	li	s11,1
   1e714:	00072783          	lw	a5,0(a4)
   1e718:	00870713          	addi	a4,a4,8
   1e71c:	00e13823          	sd	a4,16(sp)
   1e720:	06f10c23          	sb	a5,120(sp)
   1e724:	00100793          	li	a5,1
   1e728:	00f13023          	sd	a5,0(sp)
   1e72c:	07810d13          	addi	s10,sp,120
   1e730:	c39ff06f          	j	1e368 <_svfiprintf_r+0x1ac>
   1e734:	020b6b13          	ori	s6,s6,32
   1e738:	000c4783          	lbu	a5,0(s8)
   1e73c:	000b0b1b          	sext.w	s6,s6
   1e740:	b9dff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e744:	01013783          	ld	a5,16(sp)
   1e748:	03813703          	ld	a4,56(sp)
   1e74c:	002b6693          	ori	a3,s6,2
   1e750:	0007bb83          	ld	s7,0(a5)
   1e754:	00878793          	addi	a5,a5,8
   1e758:	00f13823          	sd	a5,16(sp)
   1e75c:	00003797          	auipc	a5,0x3
   1e760:	4cc78793          	addi	a5,a5,1228 # 21c28 <__clzdi2+0x9c>
   1e764:	00f13c23          	sd	a5,24(sp)
   1e768:	00068d9b          	sext.w	s11,a3
   1e76c:	04e11c23          	sh	a4,88(sp)
   1e770:	00200793          	li	a5,2
   1e774:	e01ff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1e778:	01013703          	ld	a4,16(sp)
   1e77c:	020b7793          	andi	a5,s6,32
   1e780:	00073683          	ld	a3,0(a4)
   1e784:	00870713          	addi	a4,a4,8
   1e788:	00e13823          	sd	a4,16(sp)
   1e78c:	02079463          	bnez	a5,1e7b4 <_svfiprintf_r+0x5f8>
   1e790:	010b7793          	andi	a5,s6,16
   1e794:	02079063          	bnez	a5,1e7b4 <_svfiprintf_r+0x5f8>
   1e798:	040b7793          	andi	a5,s6,64
   1e79c:	14079ce3          	bnez	a5,1f0f4 <_svfiprintf_r+0xf38>
   1e7a0:	200b7313          	andi	t1,s6,512
   1e7a4:	00813783          	ld	a5,8(sp)
   1e7a8:	18030ce3          	beqz	t1,1f140 <_svfiprintf_r+0xf84>
   1e7ac:	00f68023          	sb	a5,0(a3)
   1e7b0:	aa1ff06f          	j	1e250 <_svfiprintf_r+0x94>
   1e7b4:	00813783          	ld	a5,8(sp)
   1e7b8:	00f6b023          	sd	a5,0(a3)
   1e7bc:	a95ff06f          	j	1e250 <_svfiprintf_r+0x94>
   1e7c0:	000c4783          	lbu	a5,0(s8)
   1e7c4:	06c00713          	li	a4,108
   1e7c8:	04e788e3          	beq	a5,a4,1f018 <_svfiprintf_r+0xe5c>
   1e7cc:	010b6b13          	ori	s6,s6,16
   1e7d0:	000b0b1b          	sext.w	s6,s6
   1e7d4:	b09ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e7d8:	000c4783          	lbu	a5,0(s8)
   1e7dc:	06800713          	li	a4,104
   1e7e0:	02e782e3          	beq	a5,a4,1f004 <_svfiprintf_r+0xe48>
   1e7e4:	040b6b13          	ori	s6,s6,64
   1e7e8:	000b0b1b          	sext.w	s6,s6
   1e7ec:	af1ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e7f0:	010b6693          	ori	a3,s6,16
   1e7f4:	00068d9b          	sext.w	s11,a3
   1e7f8:	01013703          	ld	a4,16(sp)
   1e7fc:	020df793          	andi	a5,s11,32
   1e800:	00870613          	addi	a2,a4,8
   1e804:	56078e63          	beqz	a5,1ed80 <_svfiprintf_r+0xbc4>
   1e808:	00073b83          	ld	s7,0(a4)
   1e80c:	00100793          	li	a5,1
   1e810:	00c13823          	sd	a2,16(sp)
   1e814:	d61ff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1e818:	080b6b13          	ori	s6,s6,128
   1e81c:	000c4783          	lbu	a5,0(s8)
   1e820:	000b0b1b          	sext.w	s6,s6
   1e824:	ab9ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e828:	01013703          	ld	a4,16(sp)
   1e82c:	000c4783          	lbu	a5,0(s8)
   1e830:	00072a03          	lw	s4,0(a4)
   1e834:	00870713          	addi	a4,a4,8
   1e838:	00e13823          	sd	a4,16(sp)
   1e83c:	aa0a50e3          	bgez	s4,1e2dc <_svfiprintf_r+0x120>
   1e840:	41400a3b          	negw	s4,s4
   1e844:	0840006f          	j	1e8c8 <_svfiprintf_r+0x70c>
   1e848:	00098513          	mv	a0,s3
   1e84c:	87cf80ef          	jal	ra,168c8 <_localeconv_r>
   1e850:	00853783          	ld	a5,8(a0)
   1e854:	00078513          	mv	a0,a5
   1e858:	02f13423          	sd	a5,40(sp)
   1e85c:	da8fa0ef          	jal	ra,18e04 <strlen>
   1e860:	00050793          	mv	a5,a0
   1e864:	00098513          	mv	a0,s3
   1e868:	00078c93          	mv	s9,a5
   1e86c:	02f13823          	sd	a5,48(sp)
   1e870:	858f80ef          	jal	ra,168c8 <_localeconv_r>
   1e874:	01053703          	ld	a4,16(a0)
   1e878:	000c4783          	lbu	a5,0(s8)
   1e87c:	02e13023          	sd	a4,32(sp)
   1e880:	a40c8ee3          	beqz	s9,1e2dc <_svfiprintf_r+0x120>
   1e884:	a4070ce3          	beqz	a4,1e2dc <_svfiprintf_r+0x120>
   1e888:	00074703          	lbu	a4,0(a4)
   1e88c:	a40708e3          	beqz	a4,1e2dc <_svfiprintf_r+0x120>
   1e890:	400b6b13          	ori	s6,s6,1024
   1e894:	000b0b1b          	sext.w	s6,s6
   1e898:	a45ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e89c:	001b6b13          	ori	s6,s6,1
   1e8a0:	000c4783          	lbu	a5,0(s8)
   1e8a4:	000b0b1b          	sext.w	s6,s6
   1e8a8:	a35ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e8ac:	05714703          	lbu	a4,87(sp)
   1e8b0:	000c4783          	lbu	a5,0(s8)
   1e8b4:	a20714e3          	bnez	a4,1e2dc <_svfiprintf_r+0x120>
   1e8b8:	02000713          	li	a4,32
   1e8bc:	04e10ba3          	sb	a4,87(sp)
   1e8c0:	a1dff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e8c4:	000c4783          	lbu	a5,0(s8)
   1e8c8:	004b6b13          	ori	s6,s6,4
   1e8cc:	000b0b1b          	sext.w	s6,s6
   1e8d0:	a0dff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e8d4:	02b00713          	li	a4,43
   1e8d8:	000c4783          	lbu	a5,0(s8)
   1e8dc:	04e10ba3          	sb	a4,87(sp)
   1e8e0:	9fdff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1e8e4:	000c4783          	lbu	a5,0(s8)
   1e8e8:	001c0713          	addi	a4,s8,1
   1e8ec:	07a784e3          	beq	a5,s10,1f154 <_svfiprintf_r+0xf98>
   1e8f0:	fd07869b          	addiw	a3,a5,-48
   1e8f4:	00070c13          	mv	s8,a4
   1e8f8:	00000a93          	li	s5,0
   1e8fc:	9edbe6e3          	bltu	s7,a3,1e2e8 <_svfiprintf_r+0x12c>
   1e900:	000c4783          	lbu	a5,0(s8)
   1e904:	002a971b          	slliw	a4,s5,0x2
   1e908:	01570abb          	addw	s5,a4,s5
   1e90c:	001a9a9b          	slliw	s5,s5,0x1
   1e910:	00da8abb          	addw	s5,s5,a3
   1e914:	fd07869b          	addiw	a3,a5,-48
   1e918:	001c0c13          	addi	s8,s8,1
   1e91c:	fedbf2e3          	bgeu	s7,a3,1e900 <_svfiprintf_r+0x744>
   1e920:	9c9ff06f          	j	1e2e8 <_svfiprintf_r+0x12c>
   1e924:	00100693          	li	a3,1
   1e928:	7ed78e63          	beq	a5,a3,1f124 <_svfiprintf_r+0xf68>
   1e92c:	00200693          	li	a3,2
   1e930:	000b0d93          	mv	s11,s6
   1e934:	d4d790e3          	bne	a5,a3,1e674 <_svfiprintf_r+0x4b8>
   1e938:	01813703          	ld	a4,24(sp)
   1e93c:	0dc10d13          	addi	s10,sp,220
   1e940:	00fbf793          	andi	a5,s7,15
   1e944:	00f707b3          	add	a5,a4,a5
   1e948:	0007c783          	lbu	a5,0(a5)
   1e94c:	004bdb93          	srli	s7,s7,0x4
   1e950:	fffd0d13          	addi	s10,s10,-1
   1e954:	00fd0023          	sb	a5,0(s10)
   1e958:	fe0b94e3          	bnez	s7,1e940 <_svfiprintf_r+0x784>
   1e95c:	0dc10793          	addi	a5,sp,220
   1e960:	41a787bb          	subw	a5,a5,s10
   1e964:	00f13023          	sd	a5,0(sp)
   1e968:	000d8b13          	mv	s6,s11
   1e96c:	c45ff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1e970:	41ba0bbb          	subw	s7,s4,s11
   1e974:	ab7054e3          	blez	s7,1e41c <_svfiprintf_r+0x260>
   1e978:	01000693          	li	a3,16
   1e97c:	7b76d863          	bge	a3,s7,1f12c <_svfiprintf_r+0xf70>
   1e980:	00004c97          	auipc	s9,0x4
   1e984:	f28c8c93          	addi	s9,s9,-216 # 228a8 <zeroes.0>
   1e988:	01000713          	li	a4,16
   1e98c:	00700e93          	li	t4,7
   1e990:	00c0006f          	j	1e99c <_svfiprintf_r+0x7e0>
   1e994:	ff0b8b9b          	addiw	s7,s7,-16
   1e998:	05775a63          	bge	a4,s7,1e9ec <_svfiprintf_r+0x830>
   1e99c:	0016061b          	addiw	a2,a2,1
   1e9a0:	01078793          	addi	a5,a5,16
   1e9a4:	01943023          	sd	s9,0(s0)
   1e9a8:	00e43423          	sd	a4,8(s0)
   1e9ac:	06f13823          	sd	a5,112(sp)
   1e9b0:	06c12423          	sw	a2,104(sp)
   1e9b4:	01040413          	addi	s0,s0,16
   1e9b8:	fccedee3          	bge	t4,a2,1e994 <_svfiprintf_r+0x7d8>
   1e9bc:	06010613          	addi	a2,sp,96
   1e9c0:	00048593          	mv	a1,s1
   1e9c4:	00098513          	mv	a0,s3
   1e9c8:	e0cff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1e9cc:	ac0510e3          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1e9d0:	01000713          	li	a4,16
   1e9d4:	ff0b8b9b          	addiw	s7,s7,-16
   1e9d8:	07013783          	ld	a5,112(sp)
   1e9dc:	06812603          	lw	a2,104(sp)
   1e9e0:	00090413          	mv	s0,s2
   1e9e4:	00700e93          	li	t4,7
   1e9e8:	fb774ae3          	blt	a4,s7,1e99c <_svfiprintf_r+0x7e0>
   1e9ec:	0016061b          	addiw	a2,a2,1
   1e9f0:	01040693          	addi	a3,s0,16
   1e9f4:	017787b3          	add	a5,a5,s7
   1e9f8:	01943023          	sd	s9,0(s0)
   1e9fc:	01743423          	sd	s7,8(s0)
   1ea00:	06f13823          	sd	a5,112(sp)
   1ea04:	06c12423          	sw	a2,104(sp)
   1ea08:	00700593          	li	a1,7
   1ea0c:	5cc5c663          	blt	a1,a2,1efd8 <_svfiprintf_r+0xe1c>
   1ea10:	00013703          	ld	a4,0(sp)
   1ea14:	0016051b          	addiw	a0,a2,1
   1ea18:	01068593          	addi	a1,a3,16
   1ea1c:	40ea8abb          	subw	s5,s5,a4
   1ea20:	00068413          	mv	s0,a3
   1ea24:	a15052e3          	blez	s5,1e428 <_svfiprintf_r+0x26c>
   1ea28:	01000693          	li	a3,16
   1ea2c:	6756de63          	bge	a3,s5,1f0a8 <_svfiprintf_r+0xeec>
   1ea30:	00004c97          	auipc	s9,0x4
   1ea34:	e78c8c93          	addi	s9,s9,-392 # 228a8 <zeroes.0>
   1ea38:	01000b93          	li	s7,16
   1ea3c:	00700813          	li	a6,7
   1ea40:	00c0006f          	j	1ea4c <_svfiprintf_r+0x890>
   1ea44:	ff0a8a9b          	addiw	s5,s5,-16
   1ea48:	055bd863          	bge	s7,s5,1ea98 <_svfiprintf_r+0x8dc>
   1ea4c:	0016061b          	addiw	a2,a2,1
   1ea50:	01078793          	addi	a5,a5,16
   1ea54:	01943023          	sd	s9,0(s0)
   1ea58:	01743423          	sd	s7,8(s0)
   1ea5c:	06f13823          	sd	a5,112(sp)
   1ea60:	06c12423          	sw	a2,104(sp)
   1ea64:	01040413          	addi	s0,s0,16
   1ea68:	fcc85ee3          	bge	a6,a2,1ea44 <_svfiprintf_r+0x888>
   1ea6c:	06010613          	addi	a2,sp,96
   1ea70:	00048593          	mv	a1,s1
   1ea74:	00098513          	mv	a0,s3
   1ea78:	d5cff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1ea7c:	a00518e3          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1ea80:	ff0a8a9b          	addiw	s5,s5,-16
   1ea84:	07013783          	ld	a5,112(sp)
   1ea88:	06812603          	lw	a2,104(sp)
   1ea8c:	00090413          	mv	s0,s2
   1ea90:	00700813          	li	a6,7
   1ea94:	fb5bcce3          	blt	s7,s5,1ea4c <_svfiprintf_r+0x890>
   1ea98:	0016051b          	addiw	a0,a2,1
   1ea9c:	01040693          	addi	a3,s0,16
   1eaa0:	015787b3          	add	a5,a5,s5
   1eaa4:	01943023          	sd	s9,0(s0)
   1eaa8:	01543423          	sd	s5,8(s0)
   1eaac:	06f13823          	sd	a5,112(sp)
   1eab0:	06a12423          	sw	a0,104(sp)
   1eab4:	00700613          	li	a2,7
   1eab8:	2ea64a63          	blt	a2,a0,1edac <_svfiprintf_r+0xbf0>
   1eabc:	00013703          	ld	a4,0(sp)
   1eac0:	00068413          	mv	s0,a3
   1eac4:	0015051b          	addiw	a0,a0,1
   1eac8:	00f707b3          	add	a5,a4,a5
   1eacc:	01068593          	addi	a1,a3,16
   1ead0:	01a43023          	sd	s10,0(s0)
   1ead4:	00e43423          	sd	a4,8(s0)
   1ead8:	06f13823          	sd	a5,112(sp)
   1eadc:	06a12423          	sw	a0,104(sp)
   1eae0:	00700693          	li	a3,7
   1eae4:	96a6d2e3          	bge	a3,a0,1e448 <_svfiprintf_r+0x28c>
   1eae8:	06010613          	addi	a2,sp,96
   1eaec:	00048593          	mv	a1,s1
   1eaf0:	00098513          	mv	a0,s3
   1eaf4:	ce0ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1eaf8:	98051ae3          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1eafc:	07013783          	ld	a5,112(sp)
   1eb00:	00090593          	mv	a1,s2
   1eb04:	945ff06f          	j	1e448 <_svfiprintf_r+0x28c>
   1eb08:	06010613          	addi	a2,sp,96
   1eb0c:	00048593          	mv	a1,s1
   1eb10:	00098513          	mv	a0,s3
   1eb14:	cc0ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1eb18:	94050ee3          	beqz	a0,1e474 <_svfiprintf_r+0x2b8>
   1eb1c:	971ff06f          	j	1e48c <_svfiprintf_r+0x2d0>
   1eb20:	000b0d93          	mv	s11,s6
   1eb24:	b41ff06f          	j	1e664 <_svfiprintf_r+0x4a8>
   1eb28:	01000693          	li	a3,16
   1eb2c:	00004c97          	auipc	s9,0x4
   1eb30:	d6cc8c93          	addi	s9,s9,-660 # 22898 <blanks.1>
   1eb34:	0b76dc63          	bge	a3,s7,1ebec <_svfiprintf_r+0xa30>
   1eb38:	00048693          	mv	a3,s1
   1eb3c:	000c8713          	mv	a4,s9
   1eb40:	000b8493          	mv	s1,s7
   1eb44:	000c0c93          	mv	s9,s8
   1eb48:	000a0b93          	mv	s7,s4
   1eb4c:	000a8c13          	mv	s8,s5
   1eb50:	01000e13          	li	t3,16
   1eb54:	00700f93          	li	t6,7
   1eb58:	05e13023          	sd	t5,64(sp)
   1eb5c:	05d13423          	sd	t4,72(sp)
   1eb60:	00070a93          	mv	s5,a4
   1eb64:	00068a13          	mv	s4,a3
   1eb68:	00c0006f          	j	1eb74 <_svfiprintf_r+0x9b8>
   1eb6c:	ff04849b          	addiw	s1,s1,-16
   1eb70:	049e5a63          	bge	t3,s1,1ebc4 <_svfiprintf_r+0xa08>
   1eb74:	0016061b          	addiw	a2,a2,1
   1eb78:	01078793          	addi	a5,a5,16
   1eb7c:	01543023          	sd	s5,0(s0)
   1eb80:	01c43423          	sd	t3,8(s0)
   1eb84:	06f13823          	sd	a5,112(sp)
   1eb88:	06c12423          	sw	a2,104(sp)
   1eb8c:	01040413          	addi	s0,s0,16
   1eb90:	fccfdee3          	bge	t6,a2,1eb6c <_svfiprintf_r+0x9b0>
   1eb94:	06010613          	addi	a2,sp,96
   1eb98:	000a0593          	mv	a1,s4
   1eb9c:	00098513          	mv	a0,s3
   1eba0:	c34ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1eba4:	42051063          	bnez	a0,1efc4 <_svfiprintf_r+0xe08>
   1eba8:	01000e13          	li	t3,16
   1ebac:	ff04849b          	addiw	s1,s1,-16
   1ebb0:	07013783          	ld	a5,112(sp)
   1ebb4:	06812603          	lw	a2,104(sp)
   1ebb8:	00090413          	mv	s0,s2
   1ebbc:	00700f93          	li	t6,7
   1ebc0:	fa9e4ae3          	blt	t3,s1,1eb74 <_svfiprintf_r+0x9b8>
   1ebc4:	04013f03          	ld	t5,64(sp)
   1ebc8:	04813e83          	ld	t4,72(sp)
   1ebcc:	000a0693          	mv	a3,s4
   1ebd0:	000a8713          	mv	a4,s5
   1ebd4:	000b8a13          	mv	s4,s7
   1ebd8:	000c0a93          	mv	s5,s8
   1ebdc:	00048b93          	mv	s7,s1
   1ebe0:	000c8c13          	mv	s8,s9
   1ebe4:	00068493          	mv	s1,a3
   1ebe8:	00070c93          	mv	s9,a4
   1ebec:	0016061b          	addiw	a2,a2,1
   1ebf0:	017787b3          	add	a5,a5,s7
   1ebf4:	01943023          	sd	s9,0(s0)
   1ebf8:	01743423          	sd	s7,8(s0)
   1ebfc:	06f13823          	sd	a5,112(sp)
   1ec00:	06c12423          	sw	a2,104(sp)
   1ec04:	00700693          	li	a3,7
   1ec08:	01040413          	addi	s0,s0,16
   1ec0c:	f8c6d263          	bge	a3,a2,1e390 <_svfiprintf_r+0x1d4>
   1ec10:	06010613          	addi	a2,sp,96
   1ec14:	00048593          	mv	a1,s1
   1ec18:	00098513          	mv	a0,s3
   1ec1c:	05d13423          	sd	t4,72(sp)
   1ec20:	05e13023          	sd	t5,64(sp)
   1ec24:	bb0ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1ec28:	860512e3          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1ec2c:	07013783          	ld	a5,112(sp)
   1ec30:	06812603          	lw	a2,104(sp)
   1ec34:	04813e83          	ld	t4,72(sp)
   1ec38:	04013f03          	ld	t5,64(sp)
   1ec3c:	00090413          	mv	s0,s2
   1ec40:	f50ff06f          	j	1e390 <_svfiprintf_r+0x1d4>
   1ec44:	06010613          	addi	a2,sp,96
   1ec48:	00048593          	mv	a1,s1
   1ec4c:	00098513          	mv	a0,s3
   1ec50:	05d13023          	sd	t4,64(sp)
   1ec54:	b80ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1ec58:	82051ae3          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1ec5c:	06812603          	lw	a2,104(sp)
   1ec60:	07013783          	ld	a5,112(sp)
   1ec64:	04013e83          	ld	t4,64(sp)
   1ec68:	0f010593          	addi	a1,sp,240
   1ec6c:	0016051b          	addiw	a0,a2,1
   1ec70:	00090413          	mv	s0,s2
   1ec74:	fa0ff06f          	j	1e414 <_svfiprintf_r+0x258>
   1ec78:	06010613          	addi	a2,sp,96
   1ec7c:	00048593          	mv	a1,s1
   1ec80:	00098513          	mv	a0,s3
   1ec84:	05d13423          	sd	t4,72(sp)
   1ec88:	05e13023          	sd	t5,64(sp)
   1ec8c:	b48ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1ec90:	fe051e63          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1ec94:	06812603          	lw	a2,104(sp)
   1ec98:	07013783          	ld	a5,112(sp)
   1ec9c:	04813e83          	ld	t4,72(sp)
   1eca0:	04013f03          	ld	t5,64(sp)
   1eca4:	0f010593          	addi	a1,sp,240
   1eca8:	0016051b          	addiw	a0,a2,1
   1ecac:	00090413          	mv	s0,s2
   1ecb0:	f2cff06f          	j	1e3dc <_svfiprintf_r+0x220>
   1ecb4:	01000613          	li	a2,16
   1ecb8:	06812683          	lw	a3,104(sp)
   1ecbc:	00004c97          	auipc	s9,0x4
   1ecc0:	bdcc8c93          	addi	s9,s9,-1060 # 22898 <blanks.1>
   1ecc4:	01000b93          	li	s7,16
   1ecc8:	00700d13          	li	s10,7
   1eccc:	00058713          	mv	a4,a1
   1ecd0:	00864863          	blt	a2,s0,1ece0 <_svfiprintf_r+0xb24>
   1ecd4:	0580006f          	j	1ed2c <_svfiprintf_r+0xb70>
   1ecd8:	ff04041b          	addiw	s0,s0,-16
   1ecdc:	048bd663          	bge	s7,s0,1ed28 <_svfiprintf_r+0xb6c>
   1ece0:	0016869b          	addiw	a3,a3,1
   1ece4:	01078793          	addi	a5,a5,16
   1ece8:	01973023          	sd	s9,0(a4)
   1ecec:	01773423          	sd	s7,8(a4)
   1ecf0:	06f13823          	sd	a5,112(sp)
   1ecf4:	06d12423          	sw	a3,104(sp)
   1ecf8:	01070713          	addi	a4,a4,16
   1ecfc:	fcdd5ee3          	bge	s10,a3,1ecd8 <_svfiprintf_r+0xb1c>
   1ed00:	06010613          	addi	a2,sp,96
   1ed04:	00048593          	mv	a1,s1
   1ed08:	00098513          	mv	a0,s3
   1ed0c:	ac8ff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1ed10:	f6051e63          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1ed14:	ff04041b          	addiw	s0,s0,-16
   1ed18:	07013783          	ld	a5,112(sp)
   1ed1c:	06812683          	lw	a3,104(sp)
   1ed20:	00090713          	mv	a4,s2
   1ed24:	fa8bcee3          	blt	s7,s0,1ece0 <_svfiprintf_r+0xb24>
   1ed28:	00070593          	mv	a1,a4
   1ed2c:	0016861b          	addiw	a2,a3,1
   1ed30:	008787b3          	add	a5,a5,s0
   1ed34:	0195b023          	sd	s9,0(a1)
   1ed38:	0085b423          	sd	s0,8(a1)
   1ed3c:	06f13823          	sd	a5,112(sp)
   1ed40:	06c12423          	sw	a2,104(sp)
   1ed44:	00700693          	li	a3,7
   1ed48:	f0c6d863          	bge	a3,a2,1e458 <_svfiprintf_r+0x29c>
   1ed4c:	06010613          	addi	a2,sp,96
   1ed50:	00048593          	mv	a1,s1
   1ed54:	00098513          	mv	a0,s3
   1ed58:	a7cff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1ed5c:	f2051863          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1ed60:	07013783          	ld	a5,112(sp)
   1ed64:	ef4ff06f          	j	1e458 <_svfiprintf_r+0x29c>
   1ed68:	fc0a9263          	bnez	s5,1e52c <_svfiprintf_r+0x370>
   1ed6c:	000d8b13          	mv	s6,s11
   1ed70:	00000a93          	li	s5,0
   1ed74:	00013023          	sd	zero,0(sp)
   1ed78:	0dc10d13          	addi	s10,sp,220
   1ed7c:	835ff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1ed80:	010df793          	andi	a5,s11,16
   1ed84:	12079063          	bnez	a5,1eea4 <_svfiprintf_r+0xce8>
   1ed88:	01013703          	ld	a4,16(sp)
   1ed8c:	040df793          	andi	a5,s11,64
   1ed90:	00072b83          	lw	s7,0(a4)
   1ed94:	2e078663          	beqz	a5,1f080 <_svfiprintf_r+0xec4>
   1ed98:	030b9b93          	slli	s7,s7,0x30
   1ed9c:	030bdb93          	srli	s7,s7,0x30
   1eda0:	00c13823          	sd	a2,16(sp)
   1eda4:	00100793          	li	a5,1
   1eda8:	fccff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1edac:	06010613          	addi	a2,sp,96
   1edb0:	00048593          	mv	a1,s1
   1edb4:	00098513          	mv	a0,s3
   1edb8:	a1cff0ef          	jal	ra,1dfd4 <__ssprint_r>
   1edbc:	ec051863          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1edc0:	06812503          	lw	a0,104(sp)
   1edc4:	07013783          	ld	a5,112(sp)
   1edc8:	0f010593          	addi	a1,sp,240
   1edcc:	0015051b          	addiw	a0,a0,1
   1edd0:	00090413          	mv	s0,s2
   1edd4:	e54ff06f          	j	1e428 <_svfiprintf_r+0x26c>
   1edd8:	400df793          	andi	a5,s11,1024
   1eddc:	00813023          	sd	s0,0(sp)
   1ede0:	02013403          	ld	s0,32(sp)
   1ede4:	0dc10d13          	addi	s10,sp,220
   1ede8:	05313023          	sd	s3,64(sp)
   1edec:	000b8993          	mv	s3,s7
   1edf0:	00078b93          	mv	s7,a5
   1edf4:	000c0793          	mv	a5,s8
   1edf8:	00000c93          	li	s9,0
   1edfc:	00048c13          	mv	s8,s1
   1ee00:	00900b13          	li	s6,9
   1ee04:	000d0493          	mv	s1,s10
   1ee08:	00078d13          	mv	s10,a5
   1ee0c:	00a00593          	li	a1,10
   1ee10:	00098513          	mv	a0,s3
   1ee14:	509020ef          	jal	ra,21b1c <__umoddi3>
   1ee18:	0305051b          	addiw	a0,a0,48
   1ee1c:	fea48fa3          	sb	a0,-1(s1)
   1ee20:	001c8c9b          	addiw	s9,s9,1
   1ee24:	fff48493          	addi	s1,s1,-1
   1ee28:	000b8663          	beqz	s7,1ee34 <_svfiprintf_r+0xc78>
   1ee2c:	00044683          	lbu	a3,0(s0)
   1ee30:	01968e63          	beq	a3,s9,1ee4c <_svfiprintf_r+0xc90>
   1ee34:	00a00593          	li	a1,10
   1ee38:	00098513          	mv	a0,s3
   1ee3c:	499020ef          	jal	ra,21ad4 <__udivdi3>
   1ee40:	013b7c63          	bgeu	s6,s3,1ee58 <_svfiprintf_r+0xc9c>
   1ee44:	00050993          	mv	s3,a0
   1ee48:	fc5ff06f          	j	1ee0c <_svfiprintf_r+0xc50>
   1ee4c:	0ff00793          	li	a5,255
   1ee50:	fef682e3          	beq	a3,a5,1ee34 <_svfiprintf_r+0xc78>
   1ee54:	113b6c63          	bltu	s6,s3,1ef6c <_svfiprintf_r+0xdb0>
   1ee58:	000d0793          	mv	a5,s10
   1ee5c:	00048d13          	mv	s10,s1
   1ee60:	000c0493          	mv	s1,s8
   1ee64:	00078c13          	mv	s8,a5
   1ee68:	0dc10793          	addi	a5,sp,220
   1ee6c:	41a787bb          	subw	a5,a5,s10
   1ee70:	02813023          	sd	s0,32(sp)
   1ee74:	04013983          	ld	s3,64(sp)
   1ee78:	00013403          	ld	s0,0(sp)
   1ee7c:	000d8b13          	mv	s6,s11
   1ee80:	00f13023          	sd	a5,0(sp)
   1ee84:	f2cff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1ee88:	01013783          	ld	a5,16(sp)
   1ee8c:	0007b783          	ld	a5,0(a5)
   1ee90:	00078b93          	mv	s7,a5
   1ee94:	e74ff06f          	j	1e508 <_svfiprintf_r+0x34c>
   1ee98:	01013783          	ld	a5,16(sp)
   1ee9c:	0007bb83          	ld	s7,0(a5)
   1eea0:	ec4ff06f          	j	1e564 <_svfiprintf_r+0x3a8>
   1eea4:	01013783          	ld	a5,16(sp)
   1eea8:	00c13823          	sd	a2,16(sp)
   1eeac:	0007bb83          	ld	s7,0(a5)
   1eeb0:	00100793          	li	a5,1
   1eeb4:	ec0ff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1eeb8:	000b0d93          	mv	s11,s6
   1eebc:	93dff06f          	j	1e7f8 <_svfiprintf_r+0x63c>
   1eec0:	00003717          	auipc	a4,0x3
   1eec4:	d5070713          	addi	a4,a4,-688 # 21c10 <__clzdi2+0x84>
   1eec8:	00e13c23          	sd	a4,24(sp)
   1eecc:	01013703          	ld	a4,16(sp)
   1eed0:	020b7693          	andi	a3,s6,32
   1eed4:	00870613          	addi	a2,a4,8
   1eed8:	00069863          	bnez	a3,1eee8 <_svfiprintf_r+0xd2c>
   1eedc:	010b7693          	andi	a3,s6,16
   1eee0:	0c068463          	beqz	a3,1efa8 <_svfiprintf_r+0xdec>
   1eee4:	01013703          	ld	a4,16(sp)
   1eee8:	00073b83          	ld	s7,0(a4)
   1eeec:	001b7693          	andi	a3,s6,1
   1eef0:	00068e63          	beqz	a3,1ef0c <_svfiprintf_r+0xd50>
   1eef4:	000b8c63          	beqz	s7,1ef0c <_svfiprintf_r+0xd50>
   1eef8:	002b6313          	ori	t1,s6,2
   1eefc:	03000693          	li	a3,48
   1ef00:	04d10c23          	sb	a3,88(sp)
   1ef04:	04f10ca3          	sb	a5,89(sp)
   1ef08:	00030b1b          	sext.w	s6,t1
   1ef0c:	bffb7693          	andi	a3,s6,-1025
   1ef10:	00068d9b          	sext.w	s11,a3
   1ef14:	00c13823          	sd	a2,16(sp)
   1ef18:	00200793          	li	a5,2
   1ef1c:	e58ff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1ef20:	00003717          	auipc	a4,0x3
   1ef24:	d0870713          	addi	a4,a4,-760 # 21c28 <__clzdi2+0x9c>
   1ef28:	00e13c23          	sd	a4,24(sp)
   1ef2c:	fa1ff06f          	j	1eecc <_svfiprintf_r+0xd10>
   1ef30:	000d0513          	mv	a0,s10
   1ef34:	ed1f90ef          	jal	ra,18e04 <strlen>
   1ef38:	0005079b          	sext.w	a5,a0
   1ef3c:	00f13023          	sd	a5,0(sp)
   1ef40:	01713823          	sd	s7,16(sp)
   1ef44:	00000a93          	li	s5,0
   1ef48:	e68ff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1ef4c:	04000593          	li	a1,64
   1ef50:	ce9f70ef          	jal	ra,16c38 <_malloc_r>
   1ef54:	00a4b023          	sd	a0,0(s1)
   1ef58:	00a4bc23          	sd	a0,24(s1)
   1ef5c:	22050063          	beqz	a0,1f17c <_svfiprintf_r+0xfc0>
   1ef60:	04000793          	li	a5,64
   1ef64:	02f4a023          	sw	a5,32(s1)
   1ef68:	ab0ff06f          	j	1e218 <_svfiprintf_r+0x5c>
   1ef6c:	03013783          	ld	a5,48(sp)
   1ef70:	02813583          	ld	a1,40(sp)
   1ef74:	00000c93          	li	s9,0
   1ef78:	40f484b3          	sub	s1,s1,a5
   1ef7c:	00078613          	mv	a2,a5
   1ef80:	00048513          	mv	a0,s1
   1ef84:	f4df90ef          	jal	ra,18ed0 <strncpy>
   1ef88:	00144683          	lbu	a3,1(s0)
   1ef8c:	00098513          	mv	a0,s3
   1ef90:	00a00593          	li	a1,10
   1ef94:	00d03733          	snez	a4,a3
   1ef98:	00e40433          	add	s0,s0,a4
   1ef9c:	339020ef          	jal	ra,21ad4 <__udivdi3>
   1efa0:	00050993          	mv	s3,a0
   1efa4:	e69ff06f          	j	1ee0c <_svfiprintf_r+0xc50>
   1efa8:	01013703          	ld	a4,16(sp)
   1efac:	040b7693          	andi	a3,s6,64
   1efb0:	00072b83          	lw	s7,0(a4)
   1efb4:	0e068263          	beqz	a3,1f098 <_svfiprintf_r+0xedc>
   1efb8:	030b9b93          	slli	s7,s7,0x30
   1efbc:	030bdb93          	srli	s7,s7,0x30
   1efc0:	f2dff06f          	j	1eeec <_svfiprintf_r+0xd30>
   1efc4:	000a0493          	mv	s1,s4
   1efc8:	cc4ff06f          	j	1e48c <_svfiprintf_r+0x2d0>
   1efcc:	000b0d93          	mv	s11,s6
   1efd0:	00c13823          	sd	a2,16(sp)
   1efd4:	d50ff06f          	j	1e524 <_svfiprintf_r+0x368>
   1efd8:	06010613          	addi	a2,sp,96
   1efdc:	00048593          	mv	a1,s1
   1efe0:	00098513          	mv	a0,s3
   1efe4:	ff1fe0ef          	jal	ra,1dfd4 <__ssprint_r>
   1efe8:	ca051263          	bnez	a0,1e48c <_svfiprintf_r+0x2d0>
   1efec:	06812603          	lw	a2,104(sp)
   1eff0:	07013783          	ld	a5,112(sp)
   1eff4:	0f010593          	addi	a1,sp,240
   1eff8:	0016051b          	addiw	a0,a2,1
   1effc:	00090413          	mv	s0,s2
   1f000:	c1cff06f          	j	1e41c <_svfiprintf_r+0x260>
   1f004:	200b6b13          	ori	s6,s6,512
   1f008:	001c4783          	lbu	a5,1(s8)
   1f00c:	000b0b1b          	sext.w	s6,s6
   1f010:	001c0c13          	addi	s8,s8,1
   1f014:	ac8ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1f018:	020b6b13          	ori	s6,s6,32
   1f01c:	001c4783          	lbu	a5,1(s8)
   1f020:	000b0b1b          	sext.w	s6,s6
   1f024:	001c0c13          	addi	s8,s8,1
   1f028:	ab4ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1f02c:	00600793          	li	a5,6
   1f030:	000a8d13          	mv	s10,s5
   1f034:	0157f463          	bgeu	a5,s5,1f03c <_svfiprintf_r+0xe80>
   1f038:	00600d13          	li	s10,6
   1f03c:	000d079b          	sext.w	a5,s10
   1f040:	00f13023          	sd	a5,0(sp)
   1f044:	00078d93          	mv	s11,a5
   1f048:	01713823          	sd	s7,16(sp)
   1f04c:	00003d17          	auipc	s10,0x3
   1f050:	bf4d0d13          	addi	s10,s10,-1036 # 21c40 <__clzdi2+0xb4>
   1f054:	b14ff06f          	j	1e368 <_svfiprintf_r+0x1ac>
   1f058:	200b7793          	andi	a5,s6,512
   1f05c:	08078463          	beqz	a5,1f0e4 <_svfiprintf_r+0xf28>
   1f060:	01013783          	ld	a5,16(sp)
   1f064:	00078b83          	lb	s7,0(a5)
   1f068:	000b8793          	mv	a5,s7
   1f06c:	c9cff06f          	j	1e508 <_svfiprintf_r+0x34c>
   1f070:	200b7793          	andi	a5,s6,512
   1f074:	06078263          	beqz	a5,1f0d8 <_svfiprintf_r+0xf1c>
   1f078:	0ffbfb93          	andi	s7,s7,255
   1f07c:	ce8ff06f          	j	1e564 <_svfiprintf_r+0x3a8>
   1f080:	200df793          	andi	a5,s11,512
   1f084:	04078063          	beqz	a5,1f0c4 <_svfiprintf_r+0xf08>
   1f088:	0ffbfb93          	andi	s7,s7,255
   1f08c:	00c13823          	sd	a2,16(sp)
   1f090:	00100793          	li	a5,1
   1f094:	ce0ff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1f098:	200b7693          	andi	a3,s6,512
   1f09c:	00068e63          	beqz	a3,1f0b8 <_svfiprintf_r+0xefc>
   1f0a0:	0ffbfb93          	andi	s7,s7,255
   1f0a4:	e49ff06f          	j	1eeec <_svfiprintf_r+0xd30>
   1f0a8:	00058693          	mv	a3,a1
   1f0ac:	00003c97          	auipc	s9,0x3
   1f0b0:	7fcc8c93          	addi	s9,s9,2044 # 228a8 <zeroes.0>
   1f0b4:	9edff06f          	j	1eaa0 <_svfiprintf_r+0x8e4>
   1f0b8:	020b9b93          	slli	s7,s7,0x20
   1f0bc:	020bdb93          	srli	s7,s7,0x20
   1f0c0:	e2dff06f          	j	1eeec <_svfiprintf_r+0xd30>
   1f0c4:	020b9b93          	slli	s7,s7,0x20
   1f0c8:	020bdb93          	srli	s7,s7,0x20
   1f0cc:	00c13823          	sd	a2,16(sp)
   1f0d0:	00100793          	li	a5,1
   1f0d4:	ca0ff06f          	j	1e574 <_svfiprintf_r+0x3b8>
   1f0d8:	020b9b93          	slli	s7,s7,0x20
   1f0dc:	020bdb93          	srli	s7,s7,0x20
   1f0e0:	c84ff06f          	j	1e564 <_svfiprintf_r+0x3a8>
   1f0e4:	01013783          	ld	a5,16(sp)
   1f0e8:	0007ab83          	lw	s7,0(a5)
   1f0ec:	000b8793          	mv	a5,s7
   1f0f0:	c18ff06f          	j	1e508 <_svfiprintf_r+0x34c>
   1f0f4:	00813783          	ld	a5,8(sp)
   1f0f8:	00f69023          	sh	a5,0(a3)
   1f0fc:	954ff06f          	j	1e250 <_svfiprintf_r+0x94>
   1f100:	06010613          	addi	a2,sp,96
   1f104:	00048593          	mv	a1,s1
   1f108:	00098513          	mv	a0,s3
   1f10c:	ec9fe0ef          	jal	ra,1dfd4 <__ssprint_r>
   1f110:	b7cff06f          	j	1e48c <_svfiprintf_r+0x2d0>
   1f114:	01513023          	sd	s5,0(sp)
   1f118:	01713823          	sd	s7,16(sp)
   1f11c:	00000a93          	li	s5,0
   1f120:	c90ff06f          	j	1e5b0 <_svfiprintf_r+0x3f4>
   1f124:	000b0d93          	mv	s11,s6
   1f128:	c04ff06f          	j	1e52c <_svfiprintf_r+0x370>
   1f12c:	00058693          	mv	a3,a1
   1f130:	00050613          	mv	a2,a0
   1f134:	00003c97          	auipc	s9,0x3
   1f138:	774c8c93          	addi	s9,s9,1908 # 228a8 <zeroes.0>
   1f13c:	8b9ff06f          	j	1e9f4 <_svfiprintf_r+0x838>
   1f140:	00f6a023          	sw	a5,0(a3)
   1f144:	90cff06f          	j	1e250 <_svfiprintf_r+0x94>
   1f148:	fff00793          	li	a5,-1
   1f14c:	00f13423          	sd	a5,8(sp)
   1f150:	b48ff06f          	j	1e498 <_svfiprintf_r+0x2dc>
   1f154:	01013683          	ld	a3,16(sp)
   1f158:	0006a783          	lw	a5,0(a3)
   1f15c:	00868693          	addi	a3,a3,8
   1f160:	00078a9b          	sext.w	s5,a5
   1f164:	0007d463          	bgez	a5,1f16c <_svfiprintf_r+0xfb0>
   1f168:	fff00a93          	li	s5,-1
   1f16c:	001c4783          	lbu	a5,1(s8)
   1f170:	00d13823          	sd	a3,16(sp)
   1f174:	00070c13          	mv	s8,a4
   1f178:	964ff06f          	j	1e2dc <_svfiprintf_r+0x120>
   1f17c:	00c00793          	li	a5,12
   1f180:	00f9a023          	sw	a5,0(s3)
   1f184:	fff00793          	li	a5,-1
   1f188:	00f13423          	sd	a5,8(sp)
   1f18c:	b0cff06f          	j	1e498 <_svfiprintf_r+0x2dc>

000000000001f190 <__swbuf_r>:
   1f190:	fd010113          	addi	sp,sp,-48
   1f194:	02813023          	sd	s0,32(sp)
   1f198:	00913c23          	sd	s1,24(sp)
   1f19c:	01213823          	sd	s2,16(sp)
   1f1a0:	02113423          	sd	ra,40(sp)
   1f1a4:	01313423          	sd	s3,8(sp)
   1f1a8:	00050913          	mv	s2,a0
   1f1ac:	00058493          	mv	s1,a1
   1f1b0:	00060413          	mv	s0,a2
   1f1b4:	00050663          	beqz	a0,1f1c0 <__swbuf_r+0x30>
   1f1b8:	05052783          	lw	a5,80(a0)
   1f1bc:	14078a63          	beqz	a5,1f310 <__swbuf_r+0x180>
   1f1c0:	01041703          	lh	a4,16(s0)
   1f1c4:	02842683          	lw	a3,40(s0)
   1f1c8:	00877793          	andi	a5,a4,8
   1f1cc:	00d42623          	sw	a3,12(s0)
   1f1d0:	03071693          	slli	a3,a4,0x30
   1f1d4:	0306d693          	srli	a3,a3,0x30
   1f1d8:	08078463          	beqz	a5,1f260 <__swbuf_r+0xd0>
   1f1dc:	01843783          	ld	a5,24(s0)
   1f1e0:	08078063          	beqz	a5,1f260 <__swbuf_r+0xd0>
   1f1e4:	00002637          	lui	a2,0x2
   1f1e8:	0ff4f993          	andi	s3,s1,255
   1f1ec:	00c6f6b3          	and	a3,a3,a2
   1f1f0:	00098493          	mv	s1,s3
   1f1f4:	0a068063          	beqz	a3,1f294 <__swbuf_r+0x104>
   1f1f8:	00043703          	ld	a4,0(s0)
   1f1fc:	02042683          	lw	a3,32(s0)
   1f200:	40f707bb          	subw	a5,a4,a5
   1f204:	0ad7de63          	bge	a5,a3,1f2c0 <__swbuf_r+0x130>
   1f208:	00c42683          	lw	a3,12(s0)
   1f20c:	00170613          	addi	a2,a4,1
   1f210:	00c43023          	sd	a2,0(s0)
   1f214:	fff6869b          	addiw	a3,a3,-1
   1f218:	00d42623          	sw	a3,12(s0)
   1f21c:	01370023          	sb	s3,0(a4)
   1f220:	02042703          	lw	a4,32(s0)
   1f224:	0017879b          	addiw	a5,a5,1
   1f228:	0cf70863          	beq	a4,a5,1f2f8 <__swbuf_r+0x168>
   1f22c:	01045783          	lhu	a5,16(s0)
   1f230:	0017f793          	andi	a5,a5,1
   1f234:	00078663          	beqz	a5,1f240 <__swbuf_r+0xb0>
   1f238:	00a00793          	li	a5,10
   1f23c:	0af48e63          	beq	s1,a5,1f2f8 <__swbuf_r+0x168>
   1f240:	02813083          	ld	ra,40(sp)
   1f244:	02013403          	ld	s0,32(sp)
   1f248:	01013903          	ld	s2,16(sp)
   1f24c:	00813983          	ld	s3,8(sp)
   1f250:	00048513          	mv	a0,s1
   1f254:	01813483          	ld	s1,24(sp)
   1f258:	03010113          	addi	sp,sp,48
   1f25c:	00008067          	ret
   1f260:	00040593          	mv	a1,s0
   1f264:	00090513          	mv	a0,s2
   1f268:	9c5f30ef          	jal	ra,12c2c <__swsetup_r>
   1f26c:	08051e63          	bnez	a0,1f308 <__swbuf_r+0x178>
   1f270:	01041703          	lh	a4,16(s0)
   1f274:	00002637          	lui	a2,0x2
   1f278:	0ff4f993          	andi	s3,s1,255
   1f27c:	03071693          	slli	a3,a4,0x30
   1f280:	0306d693          	srli	a3,a3,0x30
   1f284:	00c6f6b3          	and	a3,a3,a2
   1f288:	01843783          	ld	a5,24(s0)
   1f28c:	00098493          	mv	s1,s3
   1f290:	f60694e3          	bnez	a3,1f1f8 <__swbuf_r+0x68>
   1f294:	0ac42683          	lw	a3,172(s0)
   1f298:	00c76733          	or	a4,a4,a2
   1f29c:	ffffe637          	lui	a2,0xffffe
   1f2a0:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd93ff>
   1f2a4:	00c6f6b3          	and	a3,a3,a2
   1f2a8:	00e41823          	sh	a4,16(s0)
   1f2ac:	00043703          	ld	a4,0(s0)
   1f2b0:	0ad42623          	sw	a3,172(s0)
   1f2b4:	02042683          	lw	a3,32(s0)
   1f2b8:	40f707bb          	subw	a5,a4,a5
   1f2bc:	f4d7c6e3          	blt	a5,a3,1f208 <__swbuf_r+0x78>
   1f2c0:	00040593          	mv	a1,s0
   1f2c4:	00090513          	mv	a0,s2
   1f2c8:	e59f30ef          	jal	ra,13120 <_fflush_r>
   1f2cc:	02051e63          	bnez	a0,1f308 <__swbuf_r+0x178>
   1f2d0:	00043703          	ld	a4,0(s0)
   1f2d4:	00c42683          	lw	a3,12(s0)
   1f2d8:	00100793          	li	a5,1
   1f2dc:	00170613          	addi	a2,a4,1
   1f2e0:	fff6869b          	addiw	a3,a3,-1
   1f2e4:	00c43023          	sd	a2,0(s0)
   1f2e8:	00d42623          	sw	a3,12(s0)
   1f2ec:	01370023          	sb	s3,0(a4)
   1f2f0:	02042703          	lw	a4,32(s0)
   1f2f4:	f2f71ce3          	bne	a4,a5,1f22c <__swbuf_r+0x9c>
   1f2f8:	00040593          	mv	a1,s0
   1f2fc:	00090513          	mv	a0,s2
   1f300:	e21f30ef          	jal	ra,13120 <_fflush_r>
   1f304:	f2050ee3          	beqz	a0,1f240 <__swbuf_r+0xb0>
   1f308:	fff00493          	li	s1,-1
   1f30c:	f35ff06f          	j	1f240 <__swbuf_r+0xb0>
   1f310:	a4cf40ef          	jal	ra,1355c <__sinit>
   1f314:	eadff06f          	j	1f1c0 <__swbuf_r+0x30>

000000000001f318 <__swbuf>:
   1f318:	00058613          	mv	a2,a1
   1f31c:	00050593          	mv	a1,a0
   1f320:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   1f324:	e6dff06f          	j	1f190 <__swbuf_r>

000000000001f328 <_wcrtomb_r>:
   1f328:	fd010113          	addi	sp,sp,-48
   1f32c:	02813023          	sd	s0,32(sp)
   1f330:	00913c23          	sd	s1,24(sp)
   1f334:	02113423          	sd	ra,40(sp)
   1f338:	00050413          	mv	s0,a0
   1f33c:	00068493          	mv	s1,a3
   1f340:	e401b783          	ld	a5,-448(gp) # 24240 <__global_locale+0xe0>
   1f344:	02058263          	beqz	a1,1f368 <_wcrtomb_r+0x40>
   1f348:	000780e7          	jalr	a5
   1f34c:	fff00793          	li	a5,-1
   1f350:	02f50663          	beq	a0,a5,1f37c <_wcrtomb_r+0x54>
   1f354:	02813083          	ld	ra,40(sp)
   1f358:	02013403          	ld	s0,32(sp)
   1f35c:	01813483          	ld	s1,24(sp)
   1f360:	03010113          	addi	sp,sp,48
   1f364:	00008067          	ret
   1f368:	00000613          	li	a2,0
   1f36c:	00010593          	mv	a1,sp
   1f370:	000780e7          	jalr	a5
   1f374:	fff00793          	li	a5,-1
   1f378:	fcf51ee3          	bne	a0,a5,1f354 <_wcrtomb_r+0x2c>
   1f37c:	0004a023          	sw	zero,0(s1)
   1f380:	08a00793          	li	a5,138
   1f384:	02813083          	ld	ra,40(sp)
   1f388:	00f42023          	sw	a5,0(s0)
   1f38c:	02013403          	ld	s0,32(sp)
   1f390:	01813483          	ld	s1,24(sp)
   1f394:	03010113          	addi	sp,sp,48
   1f398:	00008067          	ret

000000000001f39c <wcrtomb>:
   1f39c:	fd010113          	addi	sp,sp,-48
   1f3a0:	02813023          	sd	s0,32(sp)
   1f3a4:	00913c23          	sd	s1,24(sp)
   1f3a8:	02113423          	sd	ra,40(sp)
   1f3ac:	00060413          	mv	s0,a2
   1f3b0:	7581b483          	ld	s1,1880(gp) # 24b58 <_impure_ptr>
   1f3b4:	e401b783          	ld	a5,-448(gp) # 24240 <__global_locale+0xe0>
   1f3b8:	02050a63          	beqz	a0,1f3ec <wcrtomb+0x50>
   1f3bc:	00058613          	mv	a2,a1
   1f3c0:	00040693          	mv	a3,s0
   1f3c4:	00050593          	mv	a1,a0
   1f3c8:	00048513          	mv	a0,s1
   1f3cc:	000780e7          	jalr	a5
   1f3d0:	fff00793          	li	a5,-1
   1f3d4:	02f50a63          	beq	a0,a5,1f408 <wcrtomb+0x6c>
   1f3d8:	02813083          	ld	ra,40(sp)
   1f3dc:	02013403          	ld	s0,32(sp)
   1f3e0:	01813483          	ld	s1,24(sp)
   1f3e4:	03010113          	addi	sp,sp,48
   1f3e8:	00008067          	ret
   1f3ec:	00060693          	mv	a3,a2
   1f3f0:	00010593          	mv	a1,sp
   1f3f4:	00000613          	li	a2,0
   1f3f8:	00048513          	mv	a0,s1
   1f3fc:	000780e7          	jalr	a5
   1f400:	fff00793          	li	a5,-1
   1f404:	fcf51ae3          	bne	a0,a5,1f3d8 <wcrtomb+0x3c>
   1f408:	00042023          	sw	zero,0(s0)
   1f40c:	02813083          	ld	ra,40(sp)
   1f410:	02013403          	ld	s0,32(sp)
   1f414:	08a00793          	li	a5,138
   1f418:	00f4a023          	sw	a5,0(s1)
   1f41c:	01813483          	ld	s1,24(sp)
   1f420:	03010113          	addi	sp,sp,48
   1f424:	00008067          	ret

000000000001f428 <abort>:
   1f428:	ff010113          	addi	sp,sp,-16
   1f42c:	00600513          	li	a0,6
   1f430:	00113423          	sd	ra,8(sp)
   1f434:	374000ef          	jal	ra,1f7a8 <raise>
   1f438:	00100513          	li	a0,1
   1f43c:	6e0000ef          	jal	ra,1fb1c <_exit>

000000000001f440 <__register_exitproc>:
   1f440:	7481b703          	ld	a4,1864(gp) # 24b48 <_global_impure_ptr>
   1f444:	1f873783          	ld	a5,504(a4)
   1f448:	06078063          	beqz	a5,1f4a8 <__register_exitproc+0x68>
   1f44c:	0087a703          	lw	a4,8(a5)
   1f450:	01f00813          	li	a6,31
   1f454:	08e84663          	blt	a6,a4,1f4e0 <__register_exitproc+0xa0>
   1f458:	02050863          	beqz	a0,1f488 <__register_exitproc+0x48>
   1f45c:	00371813          	slli	a6,a4,0x3
   1f460:	01078833          	add	a6,a5,a6
   1f464:	10c83823          	sd	a2,272(a6)
   1f468:	3107a883          	lw	a7,784(a5)
   1f46c:	00100613          	li	a2,1
   1f470:	00e6163b          	sllw	a2,a2,a4
   1f474:	00c8e8b3          	or	a7,a7,a2
   1f478:	3117a823          	sw	a7,784(a5)
   1f47c:	20d83823          	sd	a3,528(a6)
   1f480:	00200693          	li	a3,2
   1f484:	02d50863          	beq	a0,a3,1f4b4 <__register_exitproc+0x74>
   1f488:	00270693          	addi	a3,a4,2
   1f48c:	00369693          	slli	a3,a3,0x3
   1f490:	0017071b          	addiw	a4,a4,1
   1f494:	00e7a423          	sw	a4,8(a5)
   1f498:	00d787b3          	add	a5,a5,a3
   1f49c:	00b7b023          	sd	a1,0(a5)
   1f4a0:	00000513          	li	a0,0
   1f4a4:	00008067          	ret
   1f4a8:	20070793          	addi	a5,a4,512
   1f4ac:	1ef73c23          	sd	a5,504(a4)
   1f4b0:	f9dff06f          	j	1f44c <__register_exitproc+0xc>
   1f4b4:	3147a683          	lw	a3,788(a5)
   1f4b8:	00000513          	li	a0,0
   1f4bc:	00c6e633          	or	a2,a3,a2
   1f4c0:	00270693          	addi	a3,a4,2
   1f4c4:	00369693          	slli	a3,a3,0x3
   1f4c8:	0017071b          	addiw	a4,a4,1
   1f4cc:	30c7aa23          	sw	a2,788(a5)
   1f4d0:	00e7a423          	sw	a4,8(a5)
   1f4d4:	00d787b3          	add	a5,a5,a3
   1f4d8:	00b7b023          	sd	a1,0(a5)
   1f4dc:	00008067          	ret
   1f4e0:	fff00513          	li	a0,-1
   1f4e4:	00008067          	ret

000000000001f4e8 <_init_signal_r>:
   1f4e8:	51853783          	ld	a5,1304(a0)
   1f4ec:	00078663          	beqz	a5,1f4f8 <_init_signal_r+0x10>
   1f4f0:	00000513          	li	a0,0
   1f4f4:	00008067          	ret
   1f4f8:	ff010113          	addi	sp,sp,-16
   1f4fc:	10000593          	li	a1,256
   1f500:	00813023          	sd	s0,0(sp)
   1f504:	00113423          	sd	ra,8(sp)
   1f508:	00050413          	mv	s0,a0
   1f50c:	f2cf70ef          	jal	ra,16c38 <_malloc_r>
   1f510:	50a43c23          	sd	a0,1304(s0)
   1f514:	02050463          	beqz	a0,1f53c <_init_signal_r+0x54>
   1f518:	10050793          	addi	a5,a0,256
   1f51c:	00053023          	sd	zero,0(a0)
   1f520:	00850513          	addi	a0,a0,8
   1f524:	fef51ce3          	bne	a0,a5,1f51c <_init_signal_r+0x34>
   1f528:	00000513          	li	a0,0
   1f52c:	00813083          	ld	ra,8(sp)
   1f530:	00013403          	ld	s0,0(sp)
   1f534:	01010113          	addi	sp,sp,16
   1f538:	00008067          	ret
   1f53c:	fff00513          	li	a0,-1
   1f540:	fedff06f          	j	1f52c <_init_signal_r+0x44>

000000000001f544 <_signal_r>:
   1f544:	fd010113          	addi	sp,sp,-48
   1f548:	00913c23          	sd	s1,24(sp)
   1f54c:	02113423          	sd	ra,40(sp)
   1f550:	02813023          	sd	s0,32(sp)
   1f554:	01f00793          	li	a5,31
   1f558:	00050493          	mv	s1,a0
   1f55c:	02b7ea63          	bltu	a5,a1,1f590 <_signal_r+0x4c>
   1f560:	51853703          	ld	a4,1304(a0)
   1f564:	00058413          	mv	s0,a1
   1f568:	04070463          	beqz	a4,1f5b0 <_signal_r+0x6c>
   1f56c:	00341413          	slli	s0,s0,0x3
   1f570:	00870433          	add	s0,a4,s0
   1f574:	00043503          	ld	a0,0(s0)
   1f578:	00c43023          	sd	a2,0(s0)
   1f57c:	02813083          	ld	ra,40(sp)
   1f580:	02013403          	ld	s0,32(sp)
   1f584:	01813483          	ld	s1,24(sp)
   1f588:	03010113          	addi	sp,sp,48
   1f58c:	00008067          	ret
   1f590:	02813083          	ld	ra,40(sp)
   1f594:	02013403          	ld	s0,32(sp)
   1f598:	01600793          	li	a5,22
   1f59c:	00f52023          	sw	a5,0(a0)
   1f5a0:	01813483          	ld	s1,24(sp)
   1f5a4:	fff00513          	li	a0,-1
   1f5a8:	03010113          	addi	sp,sp,48
   1f5ac:	00008067          	ret
   1f5b0:	10000593          	li	a1,256
   1f5b4:	00c13423          	sd	a2,8(sp)
   1f5b8:	e80f70ef          	jal	ra,16c38 <_malloc_r>
   1f5bc:	50a4bc23          	sd	a0,1304(s1)
   1f5c0:	00050713          	mv	a4,a0
   1f5c4:	02050063          	beqz	a0,1f5e4 <_signal_r+0xa0>
   1f5c8:	00813603          	ld	a2,8(sp)
   1f5cc:	00050793          	mv	a5,a0
   1f5d0:	10050693          	addi	a3,a0,256
   1f5d4:	0007b023          	sd	zero,0(a5)
   1f5d8:	00878793          	addi	a5,a5,8
   1f5dc:	fef69ce3          	bne	a3,a5,1f5d4 <_signal_r+0x90>
   1f5e0:	f8dff06f          	j	1f56c <_signal_r+0x28>
   1f5e4:	fff00513          	li	a0,-1
   1f5e8:	f95ff06f          	j	1f57c <_signal_r+0x38>

000000000001f5ec <_raise_r>:
   1f5ec:	fe010113          	addi	sp,sp,-32
   1f5f0:	00913423          	sd	s1,8(sp)
   1f5f4:	00113c23          	sd	ra,24(sp)
   1f5f8:	00813823          	sd	s0,16(sp)
   1f5fc:	01f00793          	li	a5,31
   1f600:	00050493          	mv	s1,a0
   1f604:	0ab7ea63          	bltu	a5,a1,1f6b8 <_raise_r+0xcc>
   1f608:	51853783          	ld	a5,1304(a0)
   1f60c:	00058413          	mv	s0,a1
   1f610:	04078463          	beqz	a5,1f658 <_raise_r+0x6c>
   1f614:	00359713          	slli	a4,a1,0x3
   1f618:	00e787b3          	add	a5,a5,a4
   1f61c:	0007b703          	ld	a4,0(a5)
   1f620:	02070c63          	beqz	a4,1f658 <_raise_r+0x6c>
   1f624:	00100693          	li	a3,1
   1f628:	06d70c63          	beq	a4,a3,1f6a0 <_raise_r+0xb4>
   1f62c:	fff00693          	li	a3,-1
   1f630:	04d70863          	beq	a4,a3,1f680 <_raise_r+0x94>
   1f634:	00058513          	mv	a0,a1
   1f638:	0007b023          	sd	zero,0(a5)
   1f63c:	000700e7          	jalr	a4
   1f640:	00000513          	li	a0,0
   1f644:	01813083          	ld	ra,24(sp)
   1f648:	01013403          	ld	s0,16(sp)
   1f64c:	00813483          	ld	s1,8(sp)
   1f650:	02010113          	addi	sp,sp,32
   1f654:	00008067          	ret
   1f658:	00048513          	mv	a0,s1
   1f65c:	464000ef          	jal	ra,1fac0 <_getpid_r>
   1f660:	00040613          	mv	a2,s0
   1f664:	01013403          	ld	s0,16(sp)
   1f668:	01813083          	ld	ra,24(sp)
   1f66c:	00050593          	mv	a1,a0
   1f670:	00048513          	mv	a0,s1
   1f674:	00813483          	ld	s1,8(sp)
   1f678:	02010113          	addi	sp,sp,32
   1f67c:	3ec0006f          	j	1fa68 <_kill_r>
   1f680:	01813083          	ld	ra,24(sp)
   1f684:	01013403          	ld	s0,16(sp)
   1f688:	01600793          	li	a5,22
   1f68c:	00f52023          	sw	a5,0(a0)
   1f690:	00813483          	ld	s1,8(sp)
   1f694:	00100513          	li	a0,1
   1f698:	02010113          	addi	sp,sp,32
   1f69c:	00008067          	ret
   1f6a0:	01813083          	ld	ra,24(sp)
   1f6a4:	01013403          	ld	s0,16(sp)
   1f6a8:	00813483          	ld	s1,8(sp)
   1f6ac:	00000513          	li	a0,0
   1f6b0:	02010113          	addi	sp,sp,32
   1f6b4:	00008067          	ret
   1f6b8:	01600793          	li	a5,22
   1f6bc:	00f52023          	sw	a5,0(a0)
   1f6c0:	fff00513          	li	a0,-1
   1f6c4:	f81ff06f          	j	1f644 <_raise_r+0x58>

000000000001f6c8 <__sigtramp_r>:
   1f6c8:	01f00793          	li	a5,31
   1f6cc:	0cb7ea63          	bltu	a5,a1,1f7a0 <__sigtramp_r+0xd8>
   1f6d0:	51853703          	ld	a4,1304(a0)
   1f6d4:	fe010113          	addi	sp,sp,-32
   1f6d8:	00813823          	sd	s0,16(sp)
   1f6dc:	00913423          	sd	s1,8(sp)
   1f6e0:	00113c23          	sd	ra,24(sp)
   1f6e4:	00058413          	mv	s0,a1
   1f6e8:	00050493          	mv	s1,a0
   1f6ec:	06070063          	beqz	a4,1f74c <__sigtramp_r+0x84>
   1f6f0:	00341513          	slli	a0,s0,0x3
   1f6f4:	00a70733          	add	a4,a4,a0
   1f6f8:	00073783          	ld	a5,0(a4)
   1f6fc:	02078c63          	beqz	a5,1f734 <__sigtramp_r+0x6c>
   1f700:	fff00693          	li	a3,-1
   1f704:	08d78663          	beq	a5,a3,1f790 <__sigtramp_r+0xc8>
   1f708:	00100693          	li	a3,1
   1f70c:	06d78663          	beq	a5,a3,1f778 <__sigtramp_r+0xb0>
   1f710:	00040513          	mv	a0,s0
   1f714:	00073023          	sd	zero,0(a4)
   1f718:	000780e7          	jalr	a5
   1f71c:	00000513          	li	a0,0
   1f720:	01813083          	ld	ra,24(sp)
   1f724:	01013403          	ld	s0,16(sp)
   1f728:	00813483          	ld	s1,8(sp)
   1f72c:	02010113          	addi	sp,sp,32
   1f730:	00008067          	ret
   1f734:	01813083          	ld	ra,24(sp)
   1f738:	01013403          	ld	s0,16(sp)
   1f73c:	00813483          	ld	s1,8(sp)
   1f740:	00100513          	li	a0,1
   1f744:	02010113          	addi	sp,sp,32
   1f748:	00008067          	ret
   1f74c:	10000593          	li	a1,256
   1f750:	ce8f70ef          	jal	ra,16c38 <_malloc_r>
   1f754:	50a4bc23          	sd	a0,1304(s1)
   1f758:	00050713          	mv	a4,a0
   1f75c:	02050e63          	beqz	a0,1f798 <__sigtramp_r+0xd0>
   1f760:	00050793          	mv	a5,a0
   1f764:	10050693          	addi	a3,a0,256
   1f768:	0007b023          	sd	zero,0(a5)
   1f76c:	00878793          	addi	a5,a5,8
   1f770:	fed79ce3          	bne	a5,a3,1f768 <__sigtramp_r+0xa0>
   1f774:	f7dff06f          	j	1f6f0 <__sigtramp_r+0x28>
   1f778:	01813083          	ld	ra,24(sp)
   1f77c:	01013403          	ld	s0,16(sp)
   1f780:	00813483          	ld	s1,8(sp)
   1f784:	00300513          	li	a0,3
   1f788:	02010113          	addi	sp,sp,32
   1f78c:	00008067          	ret
   1f790:	00200513          	li	a0,2
   1f794:	f8dff06f          	j	1f720 <__sigtramp_r+0x58>
   1f798:	fff00513          	li	a0,-1
   1f79c:	f85ff06f          	j	1f720 <__sigtramp_r+0x58>
   1f7a0:	fff00513          	li	a0,-1
   1f7a4:	00008067          	ret

000000000001f7a8 <raise>:
   1f7a8:	fe010113          	addi	sp,sp,-32
   1f7ac:	00913423          	sd	s1,8(sp)
   1f7b0:	00113c23          	sd	ra,24(sp)
   1f7b4:	00813823          	sd	s0,16(sp)
   1f7b8:	01f00793          	li	a5,31
   1f7bc:	7581b483          	ld	s1,1880(gp) # 24b58 <_impure_ptr>
   1f7c0:	0aa7e863          	bltu	a5,a0,1f870 <raise+0xc8>
   1f7c4:	5184b783          	ld	a5,1304(s1)
   1f7c8:	00050413          	mv	s0,a0
   1f7cc:	04078263          	beqz	a5,1f810 <raise+0x68>
   1f7d0:	00351713          	slli	a4,a0,0x3
   1f7d4:	00e787b3          	add	a5,a5,a4
   1f7d8:	0007b703          	ld	a4,0(a5)
   1f7dc:	02070a63          	beqz	a4,1f810 <raise+0x68>
   1f7e0:	00100693          	li	a3,1
   1f7e4:	06d70a63          	beq	a4,a3,1f858 <raise+0xb0>
   1f7e8:	fff00693          	li	a3,-1
   1f7ec:	04d70663          	beq	a4,a3,1f838 <raise+0x90>
   1f7f0:	0007b023          	sd	zero,0(a5)
   1f7f4:	000700e7          	jalr	a4
   1f7f8:	00000513          	li	a0,0
   1f7fc:	01813083          	ld	ra,24(sp)
   1f800:	01013403          	ld	s0,16(sp)
   1f804:	00813483          	ld	s1,8(sp)
   1f808:	02010113          	addi	sp,sp,32
   1f80c:	00008067          	ret
   1f810:	00048513          	mv	a0,s1
   1f814:	2ac000ef          	jal	ra,1fac0 <_getpid_r>
   1f818:	00040613          	mv	a2,s0
   1f81c:	01013403          	ld	s0,16(sp)
   1f820:	01813083          	ld	ra,24(sp)
   1f824:	00050593          	mv	a1,a0
   1f828:	00048513          	mv	a0,s1
   1f82c:	00813483          	ld	s1,8(sp)
   1f830:	02010113          	addi	sp,sp,32
   1f834:	2340006f          	j	1fa68 <_kill_r>
   1f838:	01813083          	ld	ra,24(sp)
   1f83c:	01013403          	ld	s0,16(sp)
   1f840:	01600793          	li	a5,22
   1f844:	00f4a023          	sw	a5,0(s1)
   1f848:	00100513          	li	a0,1
   1f84c:	00813483          	ld	s1,8(sp)
   1f850:	02010113          	addi	sp,sp,32
   1f854:	00008067          	ret
   1f858:	01813083          	ld	ra,24(sp)
   1f85c:	01013403          	ld	s0,16(sp)
   1f860:	00813483          	ld	s1,8(sp)
   1f864:	00000513          	li	a0,0
   1f868:	02010113          	addi	sp,sp,32
   1f86c:	00008067          	ret
   1f870:	01600793          	li	a5,22
   1f874:	00f4a023          	sw	a5,0(s1)
   1f878:	fff00513          	li	a0,-1
   1f87c:	f81ff06f          	j	1f7fc <raise+0x54>

000000000001f880 <signal>:
   1f880:	fe010113          	addi	sp,sp,-32
   1f884:	01213023          	sd	s2,0(sp)
   1f888:	00113c23          	sd	ra,24(sp)
   1f88c:	00813823          	sd	s0,16(sp)
   1f890:	00913423          	sd	s1,8(sp)
   1f894:	01f00793          	li	a5,31
   1f898:	7581b903          	ld	s2,1880(gp) # 24b58 <_impure_ptr>
   1f89c:	02a7ee63          	bltu	a5,a0,1f8d8 <signal+0x58>
   1f8a0:	00050413          	mv	s0,a0
   1f8a4:	51893503          	ld	a0,1304(s2)
   1f8a8:	00058493          	mv	s1,a1
   1f8ac:	04050863          	beqz	a0,1f8fc <signal+0x7c>
   1f8b0:	00341413          	slli	s0,s0,0x3
   1f8b4:	00850433          	add	s0,a0,s0
   1f8b8:	00043503          	ld	a0,0(s0)
   1f8bc:	00943023          	sd	s1,0(s0)
   1f8c0:	01813083          	ld	ra,24(sp)
   1f8c4:	01013403          	ld	s0,16(sp)
   1f8c8:	00813483          	ld	s1,8(sp)
   1f8cc:	00013903          	ld	s2,0(sp)
   1f8d0:	02010113          	addi	sp,sp,32
   1f8d4:	00008067          	ret
   1f8d8:	01813083          	ld	ra,24(sp)
   1f8dc:	01013403          	ld	s0,16(sp)
   1f8e0:	01600793          	li	a5,22
   1f8e4:	00f92023          	sw	a5,0(s2)
   1f8e8:	00813483          	ld	s1,8(sp)
   1f8ec:	00013903          	ld	s2,0(sp)
   1f8f0:	fff00513          	li	a0,-1
   1f8f4:	02010113          	addi	sp,sp,32
   1f8f8:	00008067          	ret
   1f8fc:	10000593          	li	a1,256
   1f900:	00090513          	mv	a0,s2
   1f904:	b34f70ef          	jal	ra,16c38 <_malloc_r>
   1f908:	50a93c23          	sd	a0,1304(s2)
   1f90c:	00050e63          	beqz	a0,1f928 <signal+0xa8>
   1f910:	00050793          	mv	a5,a0
   1f914:	10050713          	addi	a4,a0,256
   1f918:	0007b023          	sd	zero,0(a5)
   1f91c:	00878793          	addi	a5,a5,8
   1f920:	fef71ce3          	bne	a4,a5,1f918 <signal+0x98>
   1f924:	f8dff06f          	j	1f8b0 <signal+0x30>
   1f928:	fff00513          	li	a0,-1
   1f92c:	f95ff06f          	j	1f8c0 <signal+0x40>

000000000001f930 <_init_signal>:
   1f930:	ff010113          	addi	sp,sp,-16
   1f934:	00813023          	sd	s0,0(sp)
   1f938:	7581b403          	ld	s0,1880(gp) # 24b58 <_impure_ptr>
   1f93c:	51843783          	ld	a5,1304(s0)
   1f940:	00113423          	sd	ra,8(sp)
   1f944:	00078c63          	beqz	a5,1f95c <_init_signal+0x2c>
   1f948:	00000513          	li	a0,0
   1f94c:	00813083          	ld	ra,8(sp)
   1f950:	00013403          	ld	s0,0(sp)
   1f954:	01010113          	addi	sp,sp,16
   1f958:	00008067          	ret
   1f95c:	10000593          	li	a1,256
   1f960:	00040513          	mv	a0,s0
   1f964:	ad4f70ef          	jal	ra,16c38 <_malloc_r>
   1f968:	50a43c23          	sd	a0,1304(s0)
   1f96c:	00050c63          	beqz	a0,1f984 <_init_signal+0x54>
   1f970:	10050793          	addi	a5,a0,256
   1f974:	00053023          	sd	zero,0(a0)
   1f978:	00850513          	addi	a0,a0,8
   1f97c:	fef51ce3          	bne	a0,a5,1f974 <_init_signal+0x44>
   1f980:	fc9ff06f          	j	1f948 <_init_signal+0x18>
   1f984:	fff00513          	li	a0,-1
   1f988:	fc5ff06f          	j	1f94c <_init_signal+0x1c>

000000000001f98c <__sigtramp>:
   1f98c:	fe010113          	addi	sp,sp,-32
   1f990:	00913423          	sd	s1,8(sp)
   1f994:	00113c23          	sd	ra,24(sp)
   1f998:	00813823          	sd	s0,16(sp)
   1f99c:	01f00793          	li	a5,31
   1f9a0:	7581b483          	ld	s1,1880(gp) # 24b58 <_impure_ptr>
   1f9a4:	0aa7ee63          	bltu	a5,a0,1fa60 <__sigtramp+0xd4>
   1f9a8:	5184b703          	ld	a4,1304(s1)
   1f9ac:	00050413          	mv	s0,a0
   1f9b0:	06070063          	beqz	a4,1fa10 <__sigtramp+0x84>
   1f9b4:	00341513          	slli	a0,s0,0x3
   1f9b8:	00a70733          	add	a4,a4,a0
   1f9bc:	00073783          	ld	a5,0(a4)
   1f9c0:	02078c63          	beqz	a5,1f9f8 <__sigtramp+0x6c>
   1f9c4:	fff00693          	li	a3,-1
   1f9c8:	08d78863          	beq	a5,a3,1fa58 <__sigtramp+0xcc>
   1f9cc:	00100693          	li	a3,1
   1f9d0:	06d78863          	beq	a5,a3,1fa40 <__sigtramp+0xb4>
   1f9d4:	00040513          	mv	a0,s0
   1f9d8:	00073023          	sd	zero,0(a4)
   1f9dc:	000780e7          	jalr	a5
   1f9e0:	00000513          	li	a0,0
   1f9e4:	01813083          	ld	ra,24(sp)
   1f9e8:	01013403          	ld	s0,16(sp)
   1f9ec:	00813483          	ld	s1,8(sp)
   1f9f0:	02010113          	addi	sp,sp,32
   1f9f4:	00008067          	ret
   1f9f8:	01813083          	ld	ra,24(sp)
   1f9fc:	01013403          	ld	s0,16(sp)
   1fa00:	00813483          	ld	s1,8(sp)
   1fa04:	00100513          	li	a0,1
   1fa08:	02010113          	addi	sp,sp,32
   1fa0c:	00008067          	ret
   1fa10:	10000593          	li	a1,256
   1fa14:	00048513          	mv	a0,s1
   1fa18:	a20f70ef          	jal	ra,16c38 <_malloc_r>
   1fa1c:	50a4bc23          	sd	a0,1304(s1)
   1fa20:	00050713          	mv	a4,a0
   1fa24:	02050e63          	beqz	a0,1fa60 <__sigtramp+0xd4>
   1fa28:	00050793          	mv	a5,a0
   1fa2c:	10050693          	addi	a3,a0,256
   1fa30:	0007b023          	sd	zero,0(a5)
   1fa34:	00878793          	addi	a5,a5,8
   1fa38:	fed79ce3          	bne	a5,a3,1fa30 <__sigtramp+0xa4>
   1fa3c:	f79ff06f          	j	1f9b4 <__sigtramp+0x28>
   1fa40:	01813083          	ld	ra,24(sp)
   1fa44:	01013403          	ld	s0,16(sp)
   1fa48:	00813483          	ld	s1,8(sp)
   1fa4c:	00300513          	li	a0,3
   1fa50:	02010113          	addi	sp,sp,32
   1fa54:	00008067          	ret
   1fa58:	00200513          	li	a0,2
   1fa5c:	f89ff06f          	j	1f9e4 <__sigtramp+0x58>
   1fa60:	fff00513          	li	a0,-1
   1fa64:	f81ff06f          	j	1f9e4 <__sigtramp+0x58>

000000000001fa68 <_kill_r>:
   1fa68:	ff010113          	addi	sp,sp,-16
   1fa6c:	00058713          	mv	a4,a1
   1fa70:	00813023          	sd	s0,0(sp)
   1fa74:	00060593          	mv	a1,a2
   1fa78:	00050413          	mv	s0,a0
   1fa7c:	00070513          	mv	a0,a4
   1fa80:	7801a823          	sw	zero,1936(gp) # 24b90 <errno>
   1fa84:	00113423          	sd	ra,8(sp)
   1fa88:	194000ef          	jal	ra,1fc1c <_kill>
   1fa8c:	fff00793          	li	a5,-1
   1fa90:	00f50a63          	beq	a0,a5,1faa4 <_kill_r+0x3c>
   1fa94:	00813083          	ld	ra,8(sp)
   1fa98:	00013403          	ld	s0,0(sp)
   1fa9c:	01010113          	addi	sp,sp,16
   1faa0:	00008067          	ret
   1faa4:	7901a783          	lw	a5,1936(gp) # 24b90 <errno>
   1faa8:	fe0786e3          	beqz	a5,1fa94 <_kill_r+0x2c>
   1faac:	00813083          	ld	ra,8(sp)
   1fab0:	00f42023          	sw	a5,0(s0)
   1fab4:	00013403          	ld	s0,0(sp)
   1fab8:	01010113          	addi	sp,sp,16
   1fabc:	00008067          	ret

000000000001fac0 <_getpid_r>:
   1fac0:	1140006f          	j	1fbd4 <_getpid>

000000000001fac4 <_close>:
   1fac4:	ff010113          	addi	sp,sp,-16
   1fac8:	00113423          	sd	ra,8(sp)
   1facc:	00813023          	sd	s0,0(sp)
   1fad0:	00000593          	li	a1,0
   1fad4:	00000613          	li	a2,0
   1fad8:	00000693          	li	a3,0
   1fadc:	00000713          	li	a4,0
   1fae0:	00000793          	li	a5,0
   1fae4:	03900893          	li	a7,57
   1fae8:	00000073          	ecall
   1faec:	00050413          	mv	s0,a0
   1faf0:	00054c63          	bltz	a0,1fb08 <_close+0x44>
   1faf4:	0005051b          	sext.w	a0,a0
   1faf8:	00813083          	ld	ra,8(sp)
   1fafc:	00013403          	ld	s0,0(sp)
   1fb00:	01010113          	addi	sp,sp,16
   1fb04:	00008067          	ret
   1fb08:	334000ef          	jal	ra,1fe3c <__errno>
   1fb0c:	4080043b          	negw	s0,s0
   1fb10:	00852023          	sw	s0,0(a0)
   1fb14:	fff00513          	li	a0,-1
   1fb18:	fe1ff06f          	j	1faf8 <_close+0x34>

000000000001fb1c <_exit>:
   1fb1c:	00000593          	li	a1,0
   1fb20:	00000613          	li	a2,0
   1fb24:	00000693          	li	a3,0
   1fb28:	00000713          	li	a4,0
   1fb2c:	00000793          	li	a5,0
   1fb30:	05d00893          	li	a7,93
   1fb34:	00000073          	ecall
   1fb38:	00054463          	bltz	a0,1fb40 <_exit+0x24>
   1fb3c:	0000006f          	j	1fb3c <_exit+0x20>
   1fb40:	ff010113          	addi	sp,sp,-16
   1fb44:	00813023          	sd	s0,0(sp)
   1fb48:	00050413          	mv	s0,a0
   1fb4c:	00113423          	sd	ra,8(sp)
   1fb50:	4080043b          	negw	s0,s0
   1fb54:	2e8000ef          	jal	ra,1fe3c <__errno>
   1fb58:	00852023          	sw	s0,0(a0)
   1fb5c:	0000006f          	j	1fb5c <_exit+0x40>

000000000001fb60 <_fstat>:
   1fb60:	f6010113          	addi	sp,sp,-160
   1fb64:	08913423          	sd	s1,136(sp)
   1fb68:	08113c23          	sd	ra,152(sp)
   1fb6c:	00058493          	mv	s1,a1
   1fb70:	08813823          	sd	s0,144(sp)
   1fb74:	00010593          	mv	a1,sp
   1fb78:	00000613          	li	a2,0
   1fb7c:	00000693          	li	a3,0
   1fb80:	00000713          	li	a4,0
   1fb84:	00000793          	li	a5,0
   1fb88:	05000893          	li	a7,80
   1fb8c:	00000073          	ecall
   1fb90:	00050413          	mv	s0,a0
   1fb94:	02054663          	bltz	a0,1fbc0 <_fstat+0x60>
   1fb98:	0005041b          	sext.w	s0,a0
   1fb9c:	00048513          	mv	a0,s1
   1fba0:	00010593          	mv	a1,sp
   1fba4:	22c000ef          	jal	ra,1fdd0 <_conv_stat>
   1fba8:	09813083          	ld	ra,152(sp)
   1fbac:	00040513          	mv	a0,s0
   1fbb0:	09013403          	ld	s0,144(sp)
   1fbb4:	08813483          	ld	s1,136(sp)
   1fbb8:	0a010113          	addi	sp,sp,160
   1fbbc:	00008067          	ret
   1fbc0:	4080043b          	negw	s0,s0
   1fbc4:	278000ef          	jal	ra,1fe3c <__errno>
   1fbc8:	00852023          	sw	s0,0(a0)
   1fbcc:	fff00413          	li	s0,-1
   1fbd0:	fcdff06f          	j	1fb9c <_fstat+0x3c>

000000000001fbd4 <_getpid>:
   1fbd4:	00100513          	li	a0,1
   1fbd8:	00008067          	ret

000000000001fbdc <_isatty>:
   1fbdc:	f8010113          	addi	sp,sp,-128
   1fbe0:	00810593          	addi	a1,sp,8
   1fbe4:	06113c23          	sd	ra,120(sp)
   1fbe8:	f79ff0ef          	jal	ra,1fb60 <_fstat>
   1fbec:	fff00793          	li	a5,-1
   1fbf0:	00f50e63          	beq	a0,a5,1fc0c <_isatty+0x30>
   1fbf4:	00c12503          	lw	a0,12(sp)
   1fbf8:	07813083          	ld	ra,120(sp)
   1fbfc:	40d5551b          	sraiw	a0,a0,0xd
   1fc00:	00157513          	andi	a0,a0,1
   1fc04:	08010113          	addi	sp,sp,128
   1fc08:	00008067          	ret
   1fc0c:	07813083          	ld	ra,120(sp)
   1fc10:	00000513          	li	a0,0
   1fc14:	08010113          	addi	sp,sp,128
   1fc18:	00008067          	ret

000000000001fc1c <_kill>:
   1fc1c:	ff010113          	addi	sp,sp,-16
   1fc20:	00113423          	sd	ra,8(sp)
   1fc24:	218000ef          	jal	ra,1fe3c <__errno>
   1fc28:	00813083          	ld	ra,8(sp)
   1fc2c:	01600793          	li	a5,22
   1fc30:	00f52023          	sw	a5,0(a0)
   1fc34:	fff00513          	li	a0,-1
   1fc38:	01010113          	addi	sp,sp,16
   1fc3c:	00008067          	ret

000000000001fc40 <_lseek>:
   1fc40:	ff010113          	addi	sp,sp,-16
   1fc44:	00113423          	sd	ra,8(sp)
   1fc48:	00813023          	sd	s0,0(sp)
   1fc4c:	00000693          	li	a3,0
   1fc50:	00000713          	li	a4,0
   1fc54:	00000793          	li	a5,0
   1fc58:	03e00893          	li	a7,62
   1fc5c:	00000073          	ecall
   1fc60:	00050413          	mv	s0,a0
   1fc64:	00054c63          	bltz	a0,1fc7c <_lseek+0x3c>
   1fc68:	00813083          	ld	ra,8(sp)
   1fc6c:	00040513          	mv	a0,s0
   1fc70:	00013403          	ld	s0,0(sp)
   1fc74:	01010113          	addi	sp,sp,16
   1fc78:	00008067          	ret
   1fc7c:	4080043b          	negw	s0,s0
   1fc80:	1bc000ef          	jal	ra,1fe3c <__errno>
   1fc84:	00852023          	sw	s0,0(a0)
   1fc88:	fff00413          	li	s0,-1
   1fc8c:	fddff06f          	j	1fc68 <_lseek+0x28>

000000000001fc90 <_read>:
   1fc90:	ff010113          	addi	sp,sp,-16
   1fc94:	00113423          	sd	ra,8(sp)
   1fc98:	00813023          	sd	s0,0(sp)
   1fc9c:	00000693          	li	a3,0
   1fca0:	00000713          	li	a4,0
   1fca4:	00000793          	li	a5,0
   1fca8:	03f00893          	li	a7,63
   1fcac:	00000073          	ecall
   1fcb0:	00050413          	mv	s0,a0
   1fcb4:	00054c63          	bltz	a0,1fccc <_read+0x3c>
   1fcb8:	00813083          	ld	ra,8(sp)
   1fcbc:	00040513          	mv	a0,s0
   1fcc0:	00013403          	ld	s0,0(sp)
   1fcc4:	01010113          	addi	sp,sp,16
   1fcc8:	00008067          	ret
   1fccc:	4080043b          	negw	s0,s0
   1fcd0:	16c000ef          	jal	ra,1fe3c <__errno>
   1fcd4:	00852023          	sw	s0,0(a0)
   1fcd8:	fff00413          	li	s0,-1
   1fcdc:	fddff06f          	j	1fcb8 <_read+0x28>

000000000001fce0 <_sbrk>:
   1fce0:	79818313          	addi	t1,gp,1944 # 24b98 <heap_end.0>
   1fce4:	00033783          	ld	a5,0(t1)
   1fce8:	ff010113          	addi	sp,sp,-16
   1fcec:	00113423          	sd	ra,8(sp)
   1fcf0:	00050813          	mv	a6,a0
   1fcf4:	02079863          	bnez	a5,1fd24 <_sbrk+0x44>
   1fcf8:	00000513          	li	a0,0
   1fcfc:	00000593          	li	a1,0
   1fd00:	00000613          	li	a2,0
   1fd04:	00000693          	li	a3,0
   1fd08:	00000713          	li	a4,0
   1fd0c:	0d600893          	li	a7,214
   1fd10:	00000073          	ecall
   1fd14:	fff00713          	li	a4,-1
   1fd18:	00050793          	mv	a5,a0
   1fd1c:	04e50463          	beq	a0,a4,1fd64 <_sbrk+0x84>
   1fd20:	00a33023          	sd	a0,0(t1)
   1fd24:	00f80533          	add	a0,a6,a5
   1fd28:	00000593          	li	a1,0
   1fd2c:	00000613          	li	a2,0
   1fd30:	00000693          	li	a3,0
   1fd34:	00000713          	li	a4,0
   1fd38:	00000793          	li	a5,0
   1fd3c:	0d600893          	li	a7,214
   1fd40:	00000073          	ecall
   1fd44:	00033783          	ld	a5,0(t1)
   1fd48:	00f80833          	add	a6,a6,a5
   1fd4c:	01051c63          	bne	a0,a6,1fd64 <_sbrk+0x84>
   1fd50:	00813083          	ld	ra,8(sp)
   1fd54:	00a33023          	sd	a0,0(t1)
   1fd58:	00078513          	mv	a0,a5
   1fd5c:	01010113          	addi	sp,sp,16
   1fd60:	00008067          	ret
   1fd64:	0d8000ef          	jal	ra,1fe3c <__errno>
   1fd68:	00813083          	ld	ra,8(sp)
   1fd6c:	00c00793          	li	a5,12
   1fd70:	00f52023          	sw	a5,0(a0)
   1fd74:	fff00513          	li	a0,-1
   1fd78:	01010113          	addi	sp,sp,16
   1fd7c:	00008067          	ret

000000000001fd80 <_write>:
   1fd80:	ff010113          	addi	sp,sp,-16
   1fd84:	00113423          	sd	ra,8(sp)
   1fd88:	00813023          	sd	s0,0(sp)
   1fd8c:	00000693          	li	a3,0
   1fd90:	00000713          	li	a4,0
   1fd94:	00000793          	li	a5,0
   1fd98:	04000893          	li	a7,64
   1fd9c:	00000073          	ecall
   1fda0:	00050413          	mv	s0,a0
   1fda4:	00054c63          	bltz	a0,1fdbc <_write+0x3c>
   1fda8:	00813083          	ld	ra,8(sp)
   1fdac:	00040513          	mv	a0,s0
   1fdb0:	00013403          	ld	s0,0(sp)
   1fdb4:	01010113          	addi	sp,sp,16
   1fdb8:	00008067          	ret
   1fdbc:	4080043b          	negw	s0,s0
   1fdc0:	07c000ef          	jal	ra,1fe3c <__errno>
   1fdc4:	00852023          	sw	s0,0(a0)
   1fdc8:	fff00413          	li	s0,-1
   1fdcc:	fddff06f          	j	1fda8 <_write+0x28>

000000000001fdd0 <_conv_stat>:
   1fdd0:	0005b383          	ld	t2,0(a1)
   1fdd4:	0085b283          	ld	t0,8(a1)
   1fdd8:	0105af83          	lw	t6,16(a1)
   1fddc:	0145af03          	lw	t5,20(a1)
   1fde0:	0185ae83          	lw	t4,24(a1)
   1fde4:	01c5ae03          	lw	t3,28(a1)
   1fde8:	0205b303          	ld	t1,32(a1)
   1fdec:	0305b883          	ld	a7,48(a1)
   1fdf0:	0405b803          	ld	a6,64(a1)
   1fdf4:	0385a603          	lw	a2,56(a1)
   1fdf8:	0485b683          	ld	a3,72(a1)
   1fdfc:	0585b703          	ld	a4,88(a1)
   1fe00:	0685b783          	ld	a5,104(a1)
   1fe04:	00751023          	sh	t2,0(a0)
   1fe08:	00551123          	sh	t0,2(a0)
   1fe0c:	01f52223          	sw	t6,4(a0)
   1fe10:	01e51423          	sh	t5,8(a0)
   1fe14:	01d51523          	sh	t4,10(a0)
   1fe18:	01c51623          	sh	t3,12(a0)
   1fe1c:	00651723          	sh	t1,14(a0)
   1fe20:	01153823          	sd	a7,16(a0)
   1fe24:	05053823          	sd	a6,80(a0)
   1fe28:	04c53423          	sd	a2,72(a0)
   1fe2c:	00d53c23          	sd	a3,24(a0)
   1fe30:	02e53423          	sd	a4,40(a0)
   1fe34:	02f53c23          	sd	a5,56(a0)
   1fe38:	00008067          	ret

000000000001fe3c <__errno>:
   1fe3c:	7581b503          	ld	a0,1880(gp) # 24b58 <_impure_ptr>
   1fe40:	00008067          	ret

000000000001fe44 <__eqtf2>:
   1fe44:	00050813          	mv	a6,a0
   1fe48:	002027f3          	frrm	a5
   1fe4c:	00008537          	lui	a0,0x8
   1fe50:	0305d893          	srli	a7,a1,0x30
   1fe54:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   1fe58:	fff00793          	li	a5,-1
   1fe5c:	0107d793          	srli	a5,a5,0x10
   1fe60:	0306d313          	srli	t1,a3,0x30
   1fe64:	00a8f8b3          	and	a7,a7,a0
   1fe68:	00f5f733          	and	a4,a1,a5
   1fe6c:	00a37333          	and	t1,t1,a0
   1fe70:	00f6f7b3          	and	a5,a3,a5
   1fe74:	03f5d593          	srli	a1,a1,0x3f
   1fe78:	03f6d693          	srli	a3,a3,0x3f
   1fe7c:	00a89a63          	bne	a7,a0,1fe90 <__eqtf2+0x4c>
   1fe80:	01076533          	or	a0,a4,a6
   1fe84:	02051663          	bnez	a0,1feb0 <__eqtf2+0x6c>
   1fe88:	05131863          	bne	t1,a7,1fed8 <__eqtf2+0x94>
   1fe8c:	0080006f          	j	1fe94 <__eqtf2+0x50>
   1fe90:	04a31863          	bne	t1,a0,1fee0 <__eqtf2+0x9c>
   1fe94:	00c7e533          	or	a0,a5,a2
   1fe98:	04050463          	beqz	a0,1fee0 <__eqtf2+0x9c>
   1fe9c:	000086b7          	lui	a3,0x8
   1fea0:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   1fea4:	02d89663          	bne	a7,a3,1fed0 <__eqtf2+0x8c>
   1fea8:	01076533          	or	a0,a4,a6
   1feac:	02050263          	beqz	a0,1fed0 <__eqtf2+0x8c>
   1feb0:	02f75713          	srli	a4,a4,0x2f
   1feb4:	04070c63          	beqz	a4,1ff0c <__eqtf2+0xc8>
   1feb8:	00008737          	lui	a4,0x8
   1febc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1fec0:	00100513          	li	a0,1
   1fec4:	00e31c63          	bne	t1,a4,1fedc <__eqtf2+0x98>
   1fec8:	00c7e633          	or	a2,a5,a2
   1fecc:	00060863          	beqz	a2,1fedc <__eqtf2+0x98>
   1fed0:	02f7d793          	srli	a5,a5,0x2f
   1fed4:	02078c63          	beqz	a5,1ff0c <__eqtf2+0xc8>
   1fed8:	00100513          	li	a0,1
   1fedc:	00008067          	ret
   1fee0:	00100513          	li	a0,1
   1fee4:	fe689ce3          	bne	a7,t1,1fedc <__eqtf2+0x98>
   1fee8:	fef71ae3          	bne	a4,a5,1fedc <__eqtf2+0x98>
   1feec:	fec818e3          	bne	a6,a2,1fedc <__eqtf2+0x98>
   1fef0:	00d58a63          	beq	a1,a3,1ff04 <__eqtf2+0xc0>
   1fef4:	fe0894e3          	bnez	a7,1fedc <__eqtf2+0x98>
   1fef8:	01076533          	or	a0,a4,a6
   1fefc:	00a03533          	snez	a0,a0
   1ff00:	00008067          	ret
   1ff04:	00000513          	li	a0,0
   1ff08:	00008067          	ret
   1ff0c:	00186073          	csrsi	fflags,16
   1ff10:	fc9ff06f          	j	1fed8 <__eqtf2+0x94>

000000000001ff14 <__getf2>:
   1ff14:	00050893          	mv	a7,a0
   1ff18:	002027f3          	frrm	a5
   1ff1c:	00008337          	lui	t1,0x8
   1ff20:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   1ff24:	fff00793          	li	a5,-1
   1ff28:	0305d813          	srli	a6,a1,0x30
   1ff2c:	0107d793          	srli	a5,a5,0x10
   1ff30:	0306d713          	srli	a4,a3,0x30
   1ff34:	00687833          	and	a6,a6,t1
   1ff38:	00f5fe33          	and	t3,a1,a5
   1ff3c:	03f5d513          	srli	a0,a1,0x3f
   1ff40:	00f6f7b3          	and	a5,a3,a5
   1ff44:	00677733          	and	a4,a4,t1
   1ff48:	03f6d693          	srli	a3,a3,0x3f
   1ff4c:	00681c63          	bne	a6,t1,1ff64 <__getf2+0x50>
   1ff50:	011e65b3          	or	a1,t3,a7
   1ff54:	08058a63          	beqz	a1,1ffe8 <__getf2+0xd4>
   1ff58:	00186073          	csrsi	fflags,16
   1ff5c:	ffe00513          	li	a0,-2
   1ff60:	00008067          	ret
   1ff64:	00671663          	bne	a4,t1,1ff70 <__getf2+0x5c>
   1ff68:	00c7e5b3          	or	a1,a5,a2
   1ff6c:	fe0596e3          	bnez	a1,1ff58 <__getf2+0x44>
   1ff70:	06081e63          	bnez	a6,1ffec <__getf2+0xd8>
   1ff74:	011e65b3          	or	a1,t3,a7
   1ff78:	0015b593          	seqz	a1,a1
   1ff7c:	04071663          	bnez	a4,1ffc8 <__getf2+0xb4>
   1ff80:	00c7e333          	or	t1,a5,a2
   1ff84:	04031263          	bnez	t1,1ffc8 <__getf2+0xb4>
   1ff88:	02059863          	bnez	a1,1ffb8 <__getf2+0xa4>
   1ff8c:	02050a63          	beqz	a0,1ffc0 <__getf2+0xac>
   1ff90:	fff00513          	li	a0,-1
   1ff94:	00008067          	ret
   1ff98:	fff00513          	li	a0,-1
   1ff9c:	04068063          	beqz	a3,1ffdc <__getf2+0xc8>
   1ffa0:	00068513          	mv	a0,a3
   1ffa4:	00008067          	ret
   1ffa8:	ffc7e2e3          	bltu	a5,t3,1ff8c <__getf2+0x78>
   1ffac:	02fe1a63          	bne	t3,a5,1ffe0 <__getf2+0xcc>
   1ffb0:	fd166ee3          	bltu	a2,a7,1ff8c <__getf2+0x78>
   1ffb4:	02c8e263          	bltu	a7,a2,1ffd8 <__getf2+0xc4>
   1ffb8:	00000513          	li	a0,0
   1ffbc:	00008067          	ret
   1ffc0:	00100513          	li	a0,1
   1ffc4:	00008067          	ret
   1ffc8:	fc0598e3          	bnez	a1,1ff98 <__getf2+0x84>
   1ffcc:	fcd510e3          	bne	a0,a3,1ff8c <__getf2+0x78>
   1ffd0:	fb074ee3          	blt	a4,a6,1ff8c <__getf2+0x78>
   1ffd4:	fce85ae3          	bge	a6,a4,1ffa8 <__getf2+0x94>
   1ffd8:	fa050ce3          	beqz	a0,1ff90 <__getf2+0x7c>
   1ffdc:	00008067          	ret
   1ffe0:	fefe6ce3          	bltu	t3,a5,1ffd8 <__getf2+0xc4>
   1ffe4:	fd5ff06f          	j	1ffb8 <__getf2+0xa4>
   1ffe8:	f90700e3          	beq	a4,a6,1ff68 <__getf2+0x54>
   1ffec:	fe0710e3          	bnez	a4,1ffcc <__getf2+0xb8>
   1fff0:	00000593          	li	a1,0
   1fff4:	f8dff06f          	j	1ff80 <__getf2+0x6c>

000000000001fff8 <__letf2>:
   1fff8:	00050893          	mv	a7,a0
   1fffc:	002027f3          	frrm	a5
   20000:	00008337          	lui	t1,0x8
   20004:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   20008:	fff00793          	li	a5,-1
   2000c:	0305d813          	srli	a6,a1,0x30
   20010:	0107d793          	srli	a5,a5,0x10
   20014:	0306d713          	srli	a4,a3,0x30
   20018:	00687833          	and	a6,a6,t1
   2001c:	00f5fe33          	and	t3,a1,a5
   20020:	03f5d513          	srli	a0,a1,0x3f
   20024:	00f6f7b3          	and	a5,a3,a5
   20028:	00677733          	and	a4,a4,t1
   2002c:	03f6d693          	srli	a3,a3,0x3f
   20030:	00681c63          	bne	a6,t1,20048 <__letf2+0x50>
   20034:	011e65b3          	or	a1,t3,a7
   20038:	08058a63          	beqz	a1,200cc <__letf2+0xd4>
   2003c:	00186073          	csrsi	fflags,16
   20040:	00200513          	li	a0,2
   20044:	00008067          	ret
   20048:	00671663          	bne	a4,t1,20054 <__letf2+0x5c>
   2004c:	00c7e5b3          	or	a1,a5,a2
   20050:	fe0596e3          	bnez	a1,2003c <__letf2+0x44>
   20054:	06081e63          	bnez	a6,200d0 <__letf2+0xd8>
   20058:	011e65b3          	or	a1,t3,a7
   2005c:	0015b593          	seqz	a1,a1
   20060:	04071663          	bnez	a4,200ac <__letf2+0xb4>
   20064:	00c7e333          	or	t1,a5,a2
   20068:	04031263          	bnez	t1,200ac <__letf2+0xb4>
   2006c:	02059863          	bnez	a1,2009c <__letf2+0xa4>
   20070:	02050a63          	beqz	a0,200a4 <__letf2+0xac>
   20074:	fff00513          	li	a0,-1
   20078:	00008067          	ret
   2007c:	fff00513          	li	a0,-1
   20080:	04068063          	beqz	a3,200c0 <__letf2+0xc8>
   20084:	00068513          	mv	a0,a3
   20088:	00008067          	ret
   2008c:	ffc7e2e3          	bltu	a5,t3,20070 <__letf2+0x78>
   20090:	02fe1a63          	bne	t3,a5,200c4 <__letf2+0xcc>
   20094:	fd166ee3          	bltu	a2,a7,20070 <__letf2+0x78>
   20098:	02c8e263          	bltu	a7,a2,200bc <__letf2+0xc4>
   2009c:	00000513          	li	a0,0
   200a0:	00008067          	ret
   200a4:	00100513          	li	a0,1
   200a8:	00008067          	ret
   200ac:	fc0598e3          	bnez	a1,2007c <__letf2+0x84>
   200b0:	fcd510e3          	bne	a0,a3,20070 <__letf2+0x78>
   200b4:	fb074ee3          	blt	a4,a6,20070 <__letf2+0x78>
   200b8:	fce85ae3          	bge	a6,a4,2008c <__letf2+0x94>
   200bc:	fa050ce3          	beqz	a0,20074 <__letf2+0x7c>
   200c0:	00008067          	ret
   200c4:	fefe6ce3          	bltu	t3,a5,200bc <__letf2+0xc4>
   200c8:	fd5ff06f          	j	2009c <__letf2+0xa4>
   200cc:	f90700e3          	beq	a4,a6,2004c <__letf2+0x54>
   200d0:	fe0710e3          	bnez	a4,200b0 <__letf2+0xb8>
   200d4:	00000593          	li	a1,0
   200d8:	f8dff06f          	j	20064 <__letf2+0x6c>

00000000000200dc <__multf3>:
   200dc:	f9010113          	addi	sp,sp,-112
   200e0:	03513c23          	sd	s5,56(sp)
   200e4:	01913c23          	sd	s9,24(sp)
   200e8:	06113423          	sd	ra,104(sp)
   200ec:	06813023          	sd	s0,96(sp)
   200f0:	04913c23          	sd	s1,88(sp)
   200f4:	05213823          	sd	s2,80(sp)
   200f8:	05313423          	sd	s3,72(sp)
   200fc:	05413023          	sd	s4,64(sp)
   20100:	03613823          	sd	s6,48(sp)
   20104:	03713423          	sd	s7,40(sp)
   20108:	03813023          	sd	s8,32(sp)
   2010c:	01a13823          	sd	s10,16(sp)
   20110:	01b13423          	sd	s11,8(sp)
   20114:	00060c93          	mv	s9,a2
   20118:	00068a93          	mv	s5,a3
   2011c:	00202973          	frrm	s2
   20120:	00008737          	lui	a4,0x8
   20124:	0305da13          	srli	s4,a1,0x30
   20128:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   2012c:	01059b93          	slli	s7,a1,0x10
   20130:	00ea77b3          	and	a5,s4,a4
   20134:	0009091b          	sext.w	s2,s2
   20138:	010bdb93          	srli	s7,s7,0x10
   2013c:	03f5db13          	srli	s6,a1,0x3f
   20140:	04078263          	beqz	a5,20184 <__multf3+0xa8>
   20144:	00050993          	mv	s3,a0
   20148:	00078a1b          	sext.w	s4,a5
   2014c:	0ae78663          	beq	a5,a4,201f8 <__multf3+0x11c>
   20150:	003b9b93          	slli	s7,s7,0x3
   20154:	03d55713          	srli	a4,a0,0x3d
   20158:	01776733          	or	a4,a4,s7
   2015c:	ffffca37          	lui	s4,0xffffc
   20160:	00100b93          	li	s7,1
   20164:	033b9b93          	slli	s7,s7,0x33
   20168:	001a0a13          	addi	s4,s4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7401>
   2016c:	01776bb3          	or	s7,a4,s7
   20170:	00351993          	slli	s3,a0,0x3
   20174:	01478a33          	add	s4,a5,s4
   20178:	00000c13          	li	s8,0
   2017c:	00000493          	li	s1,0
   20180:	0940006f          	j	20214 <__multf3+0x138>
   20184:	00abe7b3          	or	a5,s7,a0
   20188:	00050413          	mv	s0,a0
   2018c:	10078e63          	beqz	a5,202a8 <__multf3+0x1cc>
   20190:	040b8663          	beqz	s7,201dc <__multf3+0x100>
   20194:	000b8513          	mv	a0,s7
   20198:	1f5010ef          	jal	ra,21b8c <__clzdi2>
   2019c:	0005079b          	sext.w	a5,a0
   201a0:	ff178693          	addi	a3,a5,-15
   201a4:	03c00613          	li	a2,60
   201a8:	0006871b          	sext.w	a4,a3
   201ac:	02d64e63          	blt	a2,a3,201e8 <__multf3+0x10c>
   201b0:	03d00693          	li	a3,61
   201b4:	0037099b          	addiw	s3,a4,3
   201b8:	40e6873b          	subw	a4,a3,a4
   201bc:	013b9bb3          	sll	s7,s7,s3
   201c0:	00e45733          	srl	a4,s0,a4
   201c4:	01776bb3          	or	s7,a4,s7
   201c8:	013419b3          	sll	s3,s0,s3
   201cc:	ffffca37          	lui	s4,0xffffc
   201d0:	011a0a13          	addi	s4,s4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7411>
   201d4:	40fa0a33          	sub	s4,s4,a5
   201d8:	fa1ff06f          	j	20178 <__multf3+0x9c>
   201dc:	1b1010ef          	jal	ra,21b8c <__clzdi2>
   201e0:	0405079b          	addiw	a5,a0,64
   201e4:	fbdff06f          	j	201a0 <__multf3+0xc4>
   201e8:	fc37071b          	addiw	a4,a4,-61
   201ec:	00e41bb3          	sll	s7,s0,a4
   201f0:	00000993          	li	s3,0
   201f4:	fd9ff06f          	j	201cc <__multf3+0xf0>
   201f8:	00abe7b3          	or	a5,s7,a0
   201fc:	0c078063          	beqz	a5,202bc <__multf3+0x1e0>
   20200:	02fbd793          	srli	a5,s7,0x2f
   20204:	0017f793          	andi	a5,a5,1
   20208:	00300c13          	li	s8,3
   2020c:	01000493          	li	s1,16
   20210:	f60796e3          	bnez	a5,2017c <__multf3+0xa0>
   20214:	000086b7          	lui	a3,0x8
   20218:	030ad713          	srli	a4,s5,0x30
   2021c:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   20220:	010a9413          	slli	s0,s5,0x10
   20224:	00d77533          	and	a0,a4,a3
   20228:	000c8793          	mv	a5,s9
   2022c:	01045413          	srli	s0,s0,0x10
   20230:	03fada93          	srli	s5,s5,0x3f
   20234:	08050c63          	beqz	a0,202cc <__multf3+0x1f0>
   20238:	0005071b          	sext.w	a4,a0
   2023c:	10d50263          	beq	a0,a3,20340 <__multf3+0x264>
   20240:	00341413          	slli	s0,s0,0x3
   20244:	03dcd713          	srli	a4,s9,0x3d
   20248:	00876733          	or	a4,a4,s0
   2024c:	00100413          	li	s0,1
   20250:	03341413          	slli	s0,s0,0x33
   20254:	00876433          	or	s0,a4,s0
   20258:	ffffc737          	lui	a4,0xffffc
   2025c:	00170713          	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7401>
   20260:	003c9793          	slli	a5,s9,0x3
   20264:	00e50733          	add	a4,a0,a4
   20268:	00000693          	li	a3,0
   2026c:	01470a33          	add	s4,a4,s4
   20270:	002c1713          	slli	a4,s8,0x2
   20274:	00d76733          	or	a4,a4,a3
   20278:	fff70713          	addi	a4,a4,-1
   2027c:	00e00613          	li	a2,14
   20280:	015b4833          	xor	a6,s6,s5
   20284:	001a0313          	addi	t1,s4,1
   20288:	18e66263          	bltu	a2,a4,2040c <__multf3+0x330>
   2028c:	00002617          	auipc	a2,0x2
   20290:	62c60613          	addi	a2,a2,1580 # 228b8 <zeroes.0+0x10>
   20294:	00271713          	slli	a4,a4,0x2
   20298:	00c70733          	add	a4,a4,a2
   2029c:	00072703          	lw	a4,0(a4)
   202a0:	00c70733          	add	a4,a4,a2
   202a4:	00070067          	jr	a4
   202a8:	00000b93          	li	s7,0
   202ac:	00000993          	li	s3,0
   202b0:	00000a13          	li	s4,0
   202b4:	00100c13          	li	s8,1
   202b8:	ec5ff06f          	j	2017c <__multf3+0xa0>
   202bc:	00000b93          	li	s7,0
   202c0:	00000993          	li	s3,0
   202c4:	00200c13          	li	s8,2
   202c8:	eb5ff06f          	j	2017c <__multf3+0xa0>
   202cc:	008ce7b3          	or	a5,s9,s0
   202d0:	08078863          	beqz	a5,20360 <__multf3+0x284>
   202d4:	04040663          	beqz	s0,20320 <__multf3+0x244>
   202d8:	00040513          	mv	a0,s0
   202dc:	0b1010ef          	jal	ra,21b8c <__clzdi2>
   202e0:	0005051b          	sext.w	a0,a0
   202e4:	ff150793          	addi	a5,a0,-15
   202e8:	03c00693          	li	a3,60
   202ec:	0007871b          	sext.w	a4,a5
   202f0:	04f6c063          	blt	a3,a5,20330 <__multf3+0x254>
   202f4:	03d00693          	li	a3,61
   202f8:	0037079b          	addiw	a5,a4,3
   202fc:	40e6873b          	subw	a4,a3,a4
   20300:	00f41433          	sll	s0,s0,a5
   20304:	00ecd733          	srl	a4,s9,a4
   20308:	00876433          	or	s0,a4,s0
   2030c:	00fc97b3          	sll	a5,s9,a5
   20310:	ffffc737          	lui	a4,0xffffc
   20314:	01170713          	addi	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7411>
   20318:	40a70733          	sub	a4,a4,a0
   2031c:	f4dff06f          	j	20268 <__multf3+0x18c>
   20320:	000c8513          	mv	a0,s9
   20324:	069010ef          	jal	ra,21b8c <__clzdi2>
   20328:	0405051b          	addiw	a0,a0,64
   2032c:	fb9ff06f          	j	202e4 <__multf3+0x208>
   20330:	fc37071b          	addiw	a4,a4,-61
   20334:	00ec9433          	sll	s0,s9,a4
   20338:	00000793          	li	a5,0
   2033c:	fd5ff06f          	j	20310 <__multf3+0x234>
   20340:	008ce6b3          	or	a3,s9,s0
   20344:	02068863          	beqz	a3,20374 <__multf3+0x298>
   20348:	02f45693          	srli	a3,s0,0x2f
   2034c:	0016f693          	andi	a3,a3,1
   20350:	02069a63          	bnez	a3,20384 <__multf3+0x2a8>
   20354:	00300693          	li	a3,3
   20358:	01000493          	li	s1,16
   2035c:	f11ff06f          	j	2026c <__multf3+0x190>
   20360:	00000413          	li	s0,0
   20364:	00000793          	li	a5,0
   20368:	00000713          	li	a4,0
   2036c:	00100693          	li	a3,1
   20370:	efdff06f          	j	2026c <__multf3+0x190>
   20374:	00000413          	li	s0,0
   20378:	00000793          	li	a5,0
   2037c:	00200693          	li	a3,2
   20380:	eedff06f          	j	2026c <__multf3+0x190>
   20384:	00300693          	li	a3,3
   20388:	ee5ff06f          	j	2026c <__multf3+0x190>
   2038c:	00100413          	li	s0,1
   20390:	00008737          	lui	a4,0x8
   20394:	02f41413          	slli	s0,s0,0x2f
   20398:	00000513          	li	a0,0
   2039c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   203a0:	00000813          	li	a6,0
   203a4:	01000493          	li	s1,16
   203a8:	03171713          	slli	a4,a4,0x31
   203ac:	03175713          	srli	a4,a4,0x31
   203b0:	00f81813          	slli	a6,a6,0xf
   203b4:	01041413          	slli	s0,s0,0x10
   203b8:	00e86733          	or	a4,a6,a4
   203bc:	03071713          	slli	a4,a4,0x30
   203c0:	01045593          	srli	a1,s0,0x10
   203c4:	00e5e5b3          	or	a1,a1,a4
   203c8:	00048463          	beqz	s1,203d0 <__multf3+0x2f4>
   203cc:	0014a073          	csrs	fflags,s1
   203d0:	06813083          	ld	ra,104(sp)
   203d4:	06013403          	ld	s0,96(sp)
   203d8:	05813483          	ld	s1,88(sp)
   203dc:	05013903          	ld	s2,80(sp)
   203e0:	04813983          	ld	s3,72(sp)
   203e4:	04013a03          	ld	s4,64(sp)
   203e8:	03813a83          	ld	s5,56(sp)
   203ec:	03013b03          	ld	s6,48(sp)
   203f0:	02813b83          	ld	s7,40(sp)
   203f4:	02013c03          	ld	s8,32(sp)
   203f8:	01813c83          	ld	s9,24(sp)
   203fc:	01013d03          	ld	s10,16(sp)
   20400:	00813d83          	ld	s11,8(sp)
   20404:	07010113          	addi	sp,sp,112
   20408:	00008067          	ret
   2040c:	fff00713          	li	a4,-1
   20410:	013b8ab3          	add	s5,s7,s3
   20414:	008783b3          	add	t2,a5,s0
   20418:	02075713          	srli	a4,a4,0x20
   2041c:	013abfb3          	sltu	t6,s5,s3
   20420:	00f3b2b3          	sltu	t0,t2,a5
   20424:	0209dc13          	srli	s8,s3,0x20
   20428:	0207df13          	srli	t5,a5,0x20
   2042c:	00e9f9b3          	and	s3,s3,a4
   20430:	00e7f7b3          	and	a5,a5,a4
   20434:	000f8e93          	mv	t4,t6
   20438:	00028b13          	mv	s6,t0
   2043c:	00098513          	mv	a0,s3
   20440:	00078593          	mv	a1,a5
   20444:	624010ef          	jal	ra,21a68 <__muldi3>
   20448:	00050893          	mv	a7,a0
   2044c:	000f0593          	mv	a1,t5
   20450:	00098513          	mv	a0,s3
   20454:	614010ef          	jal	ra,21a68 <__muldi3>
   20458:	00050e13          	mv	t3,a0
   2045c:	00078593          	mv	a1,a5
   20460:	000c0513          	mv	a0,s8
   20464:	604010ef          	jal	ra,21a68 <__muldi3>
   20468:	00050713          	mv	a4,a0
   2046c:	000f0593          	mv	a1,t5
   20470:	000c0513          	mv	a0,s8
   20474:	5f4010ef          	jal	ra,21a68 <__muldi3>
   20478:	0208d793          	srli	a5,a7,0x20
   2047c:	00ee0e33          	add	t3,t3,a4
   20480:	01c787b3          	add	a5,a5,t3
   20484:	00050f13          	mv	t5,a0
   20488:	00e7f863          	bgeu	a5,a4,20498 <__multf3+0x3bc>
   2048c:	00100713          	li	a4,1
   20490:	02071713          	slli	a4,a4,0x20
   20494:	00e50f33          	add	t5,a0,a4
   20498:	fff00713          	li	a4,-1
   2049c:	02075713          	srli	a4,a4,0x20
   204a0:	00e7fe33          	and	t3,a5,a4
   204a4:	0207d513          	srli	a0,a5,0x20
   204a8:	00e8f8b3          	and	a7,a7,a4
   204ac:	00eafcb3          	and	s9,s5,a4
   204b0:	00e3f9b3          	and	s3,t2,a4
   204b4:	020e1e13          	slli	t3,t3,0x20
   204b8:	01e50f33          	add	t5,a0,t5
   204bc:	011e0e33          	add	t3,t3,a7
   204c0:	020ad793          	srli	a5,s5,0x20
   204c4:	0203dc13          	srli	s8,t2,0x20
   204c8:	000c8513          	mv	a0,s9
   204cc:	00098593          	mv	a1,s3
   204d0:	598010ef          	jal	ra,21a68 <__muldi3>
   204d4:	00050713          	mv	a4,a0
   204d8:	000c0593          	mv	a1,s8
   204dc:	000c8513          	mv	a0,s9
   204e0:	588010ef          	jal	ra,21a68 <__muldi3>
   204e4:	00050893          	mv	a7,a0
   204e8:	00098593          	mv	a1,s3
   204ec:	00078513          	mv	a0,a5
   204f0:	578010ef          	jal	ra,21a68 <__muldi3>
   204f4:	00050993          	mv	s3,a0
   204f8:	000c0593          	mv	a1,s8
   204fc:	00078513          	mv	a0,a5
   20500:	568010ef          	jal	ra,21a68 <__muldi3>
   20504:	02075793          	srli	a5,a4,0x20
   20508:	013888b3          	add	a7,a7,s3
   2050c:	011787b3          	add	a5,a5,a7
   20510:	00050c93          	mv	s9,a0
   20514:	0137f863          	bgeu	a5,s3,20524 <__multf3+0x448>
   20518:	00100693          	li	a3,1
   2051c:	02069693          	slli	a3,a3,0x20
   20520:	00d50cb3          	add	s9,a0,a3
   20524:	fff00593          	li	a1,-1
   20528:	0205d593          	srli	a1,a1,0x20
   2052c:	00b7f8b3          	and	a7,a5,a1
   20530:	00b77733          	and	a4,a4,a1
   20534:	0207dc13          	srli	s8,a5,0x20
   20538:	020bdd93          	srli	s11,s7,0x20
   2053c:	02045793          	srli	a5,s0,0x20
   20540:	00bbfbb3          	and	s7,s7,a1
   20544:	00b47433          	and	s0,s0,a1
   20548:	02089893          	slli	a7,a7,0x20
   2054c:	00e888b3          	add	a7,a7,a4
   20550:	000b8513          	mv	a0,s7
   20554:	00040593          	mv	a1,s0
   20558:	510010ef          	jal	ra,21a68 <__muldi3>
   2055c:	00050d13          	mv	s10,a0
   20560:	00078593          	mv	a1,a5
   20564:	000b8513          	mv	a0,s7
   20568:	500010ef          	jal	ra,21a68 <__muldi3>
   2056c:	00050993          	mv	s3,a0
   20570:	00040593          	mv	a1,s0
   20574:	000d8513          	mv	a0,s11
   20578:	4f0010ef          	jal	ra,21a68 <__muldi3>
   2057c:	00050413          	mv	s0,a0
   20580:	00078593          	mv	a1,a5
   20584:	000d8513          	mv	a0,s11
   20588:	4e0010ef          	jal	ra,21a68 <__muldi3>
   2058c:	008985b3          	add	a1,s3,s0
   20590:	020d5713          	srli	a4,s10,0x20
   20594:	00e585b3          	add	a1,a1,a4
   20598:	0085f863          	bgeu	a1,s0,205a8 <__multf3+0x4cc>
   2059c:	00100793          	li	a5,1
   205a0:	02079793          	slli	a5,a5,0x20
   205a4:	00f50533          	add	a0,a0,a5
   205a8:	0205d693          	srli	a3,a1,0x20
   205ac:	01e888b3          	add	a7,a7,t5
   205b0:	00a686b3          	add	a3,a3,a0
   205b4:	fff00513          	li	a0,-1
   205b8:	02055513          	srli	a0,a0,0x20
   205bc:	01e8b7b3          	sltu	a5,a7,t5
   205c0:	00a5f733          	and	a4,a1,a0
   205c4:	00fc0c33          	add	s8,s8,a5
   205c8:	416005b3          	neg	a1,s6
   205cc:	019c0cb3          	add	s9,s8,s9
   205d0:	41d00eb3          	neg	t4,t4
   205d4:	0155f5b3          	and	a1,a1,s5
   205d8:	019585b3          	add	a1,a1,s9
   205dc:	00fcb7b3          	sltu	a5,s9,a5
   205e0:	007ef3b3          	and	t2,t4,t2
   205e4:	005ff633          	and	a2,t6,t0
   205e8:	00b383b3          	add	t2,t2,a1
   205ec:	00c78633          	add	a2,a5,a2
   205f0:	0195bcb3          	sltu	s9,a1,s9
   205f4:	01960633          	add	a2,a2,s9
   205f8:	00b3b5b3          	sltu	a1,t2,a1
   205fc:	41c88eb3          	sub	t4,a7,t3
   20600:	00ad7d33          	and	s10,s10,a0
   20604:	02071713          	slli	a4,a4,0x20
   20608:	01d8b533          	sltu	a0,a7,t4
   2060c:	00b60633          	add	a2,a2,a1
   20610:	41e385b3          	sub	a1,t2,t5
   20614:	00b3b7b3          	sltu	a5,t2,a1
   20618:	01a70733          	add	a4,a4,s10
   2061c:	40a585b3          	sub	a1,a1,a0
   20620:	00000513          	li	a0,0
   20624:	01d8f663          	bgeu	a7,t4,20630 <__multf3+0x554>
   20628:	407f03b3          	sub	t2,t5,t2
   2062c:	0013b513          	seqz	a0,t2
   20630:	00f563b3          	or	t2,a0,a5
   20634:	40ee8533          	sub	a0,t4,a4
   20638:	00d60633          	add	a2,a2,a3
   2063c:	00aeb7b3          	sltu	a5,t4,a0
   20640:	40d586b3          	sub	a3,a1,a3
   20644:	00d5b5b3          	sltu	a1,a1,a3
   20648:	40f707b3          	sub	a5,a4,a5
   2064c:	00000893          	li	a7,0
   20650:	00aef463          	bgeu	t4,a0,20658 <__multf3+0x57c>
   20654:	0016b893          	seqz	a7,a3
   20658:	00f686b3          	add	a3,a3,a5
   2065c:	00e6b733          	sltu	a4,a3,a4
   20660:	00c70733          	add	a4,a4,a2
   20664:	40770733          	sub	a4,a4,t2
   20668:	00b8e5b3          	or	a1,a7,a1
   2066c:	00d51793          	slli	a5,a0,0xd
   20670:	40b70733          	sub	a4,a4,a1
   20674:	00d71713          	slli	a4,a4,0xd
   20678:	0336d413          	srli	s0,a3,0x33
   2067c:	01c7e7b3          	or	a5,a5,t3
   20680:	00876433          	or	s0,a4,s0
   20684:	00f037b3          	snez	a5,a5
   20688:	03355513          	srli	a0,a0,0x33
   2068c:	03475713          	srli	a4,a4,0x34
   20690:	00a7e7b3          	or	a5,a5,a0
   20694:	00d69693          	slli	a3,a3,0xd
   20698:	00177713          	andi	a4,a4,1
   2069c:	00d7e7b3          	or	a5,a5,a3
   206a0:	0a070463          	beqz	a4,20748 <__multf3+0x66c>
   206a4:	0017d713          	srli	a4,a5,0x1
   206a8:	0017f793          	andi	a5,a5,1
   206ac:	03f41513          	slli	a0,s0,0x3f
   206b0:	00f767b3          	or	a5,a4,a5
   206b4:	00a7e7b3          	or	a5,a5,a0
   206b8:	00145413          	srli	s0,s0,0x1
   206bc:	00004737          	lui	a4,0x4
   206c0:	fff70713          	addi	a4,a4,-1 # 3fff <register_fini-0xc0b1>
   206c4:	00e30733          	add	a4,t1,a4
   206c8:	12e05263          	blez	a4,207ec <__multf3+0x710>
   206cc:	0077f693          	andi	a3,a5,7
   206d0:	08068863          	beqz	a3,20760 <__multf3+0x684>
   206d4:	00200693          	li	a3,2
   206d8:	0014e493          	ori	s1,s1,1
   206dc:	08d90063          	beq	s2,a3,2075c <__multf3+0x680>
   206e0:	00300693          	li	a3,3
   206e4:	06d90663          	beq	s2,a3,20750 <__multf3+0x674>
   206e8:	06091c63          	bnez	s2,20760 <__multf3+0x684>
   206ec:	00f7f693          	andi	a3,a5,15
   206f0:	00400613          	li	a2,4
   206f4:	06c68663          	beq	a3,a2,20760 <__multf3+0x684>
   206f8:	00478693          	addi	a3,a5,4
   206fc:	00f6b7b3          	sltu	a5,a3,a5
   20700:	00f40433          	add	s0,s0,a5
   20704:	00068793          	mv	a5,a3
   20708:	0580006f          	j	20760 <__multf3+0x684>
   2070c:	000b0813          	mv	a6,s6
   20710:	000b8413          	mv	s0,s7
   20714:	00098793          	mv	a5,s3
   20718:	000c0693          	mv	a3,s8
   2071c:	00200713          	li	a4,2
   20720:	2ae68063          	beq	a3,a4,209c0 <__multf3+0x8e4>
   20724:	00300713          	li	a4,3
   20728:	2ae68663          	beq	a3,a4,209d4 <__multf3+0x8f8>
   2072c:	00100713          	li	a4,1
   20730:	f8e696e3          	bne	a3,a4,206bc <__multf3+0x5e0>
   20734:	00000413          	li	s0,0
   20738:	00000513          	li	a0,0
   2073c:	2600006f          	j	2099c <__multf3+0x8c0>
   20740:	000a8813          	mv	a6,s5
   20744:	fd9ff06f          	j	2071c <__multf3+0x640>
   20748:	000a0313          	mv	t1,s4
   2074c:	f71ff06f          	j	206bc <__multf3+0x5e0>
   20750:	00081863          	bnez	a6,20760 <__multf3+0x684>
   20754:	00878693          	addi	a3,a5,8
   20758:	fa5ff06f          	j	206fc <__multf3+0x620>
   2075c:	fe081ce3          	bnez	a6,20754 <__multf3+0x678>
   20760:	03445693          	srli	a3,s0,0x34
   20764:	0016f693          	andi	a3,a3,1
   20768:	00068e63          	beqz	a3,20784 <__multf3+0x6a8>
   2076c:	fff00713          	li	a4,-1
   20770:	03471713          	slli	a4,a4,0x34
   20774:	fff70713          	addi	a4,a4,-1
   20778:	00e47433          	and	s0,s0,a4
   2077c:	00004737          	lui	a4,0x4
   20780:	00e30733          	add	a4,t1,a4
   20784:	000086b7          	lui	a3,0x8
   20788:	ffe68613          	addi	a2,a3,-2 # 7ffe <register_fini-0x80b2>
   2078c:	00e64c63          	blt	a2,a4,207a4 <__multf3+0x6c8>
   20790:	03d41513          	slli	a0,s0,0x3d
   20794:	0037d793          	srli	a5,a5,0x3
   20798:	00f56533          	or	a0,a0,a5
   2079c:	00345413          	srli	s0,s0,0x3
   207a0:	c09ff06f          	j	203a8 <__multf3+0x2cc>
   207a4:	00200793          	li	a5,2
   207a8:	02f90a63          	beq	s2,a5,207dc <__multf3+0x700>
   207ac:	00300793          	li	a5,3
   207b0:	fff68713          	addi	a4,a3,-1
   207b4:	00f90863          	beq	s2,a5,207c4 <__multf3+0x6e8>
   207b8:	00091863          	bnez	s2,207c8 <__multf3+0x6ec>
   207bc:	00000513          	li	a0,0
   207c0:	0100006f          	j	207d0 <__multf3+0x6f4>
   207c4:	fe080ce3          	beqz	a6,207bc <__multf3+0x6e0>
   207c8:	fff00513          	li	a0,-1
   207cc:	00060713          	mv	a4,a2
   207d0:	0054e493          	ori	s1,s1,5
   207d4:	00050413          	mv	s0,a0
   207d8:	bd1ff06f          	j	203a8 <__multf3+0x2cc>
   207dc:	fe0806e3          	beqz	a6,207c8 <__multf3+0x6ec>
   207e0:	00000513          	li	a0,0
   207e4:	fff68713          	addi	a4,a3,-1
   207e8:	fe9ff06f          	j	207d0 <__multf3+0x6f4>
   207ec:	00100693          	li	a3,1
   207f0:	06071463          	bnez	a4,20858 <__multf3+0x77c>
   207f4:	0077f613          	andi	a2,a5,7
   207f8:	00040693          	mv	a3,s0
   207fc:	04060863          	beqz	a2,2084c <__multf3+0x770>
   20800:	00200613          	li	a2,2
   20804:	0014e493          	ori	s1,s1,1
   20808:	04c90063          	beq	s2,a2,20848 <__multf3+0x76c>
   2080c:	00300613          	li	a2,3
   20810:	02c90663          	beq	s2,a2,2083c <__multf3+0x760>
   20814:	02091c63          	bnez	s2,2084c <__multf3+0x770>
   20818:	00f7f613          	andi	a2,a5,15
   2081c:	00400593          	li	a1,4
   20820:	02b60663          	beq	a2,a1,2084c <__multf3+0x770>
   20824:	ffc7b693          	sltiu	a3,a5,-4
   20828:	0016c693          	xori	a3,a3,1
   2082c:	02069693          	slli	a3,a3,0x20
   20830:	0206d693          	srli	a3,a3,0x20
   20834:	008686b3          	add	a3,a3,s0
   20838:	0140006f          	j	2084c <__multf3+0x770>
   2083c:	00081863          	bnez	a6,2084c <__multf3+0x770>
   20840:	ff87b693          	sltiu	a3,a5,-8
   20844:	fe5ff06f          	j	20828 <__multf3+0x74c>
   20848:	fe081ce3          	bnez	a6,20840 <__multf3+0x764>
   2084c:	0346d693          	srli	a3,a3,0x34
   20850:	0016c693          	xori	a3,a3,1
   20854:	0016f693          	andi	a3,a3,1
   20858:	00100593          	li	a1,1
   2085c:	40e585b3          	sub	a1,a1,a4
   20860:	07400713          	li	a4,116
   20864:	10b74263          	blt	a4,a1,20968 <__multf3+0x88c>
   20868:	03f00613          	li	a2,63
   2086c:	0005871b          	sext.w	a4,a1
   20870:	06b64463          	blt	a2,a1,208d8 <__multf3+0x7fc>
   20874:	04000613          	li	a2,64
   20878:	40e6063b          	subw	a2,a2,a4
   2087c:	00c41533          	sll	a0,s0,a2
   20880:	00e7d5b3          	srl	a1,a5,a4
   20884:	00c797b3          	sll	a5,a5,a2
   20888:	00b56533          	or	a0,a0,a1
   2088c:	00f037b3          	snez	a5,a5
   20890:	00f56533          	or	a0,a0,a5
   20894:	00e45433          	srl	s0,s0,a4
   20898:	00757793          	andi	a5,a0,7
   2089c:	08078063          	beqz	a5,2091c <__multf3+0x840>
   208a0:	00200793          	li	a5,2
   208a4:	0014e493          	ori	s1,s1,1
   208a8:	06f90863          	beq	s2,a5,20918 <__multf3+0x83c>
   208ac:	00300793          	li	a5,3
   208b0:	04f90e63          	beq	s2,a5,2090c <__multf3+0x830>
   208b4:	06091463          	bnez	s2,2091c <__multf3+0x840>
   208b8:	00f57793          	andi	a5,a0,15
   208bc:	00400713          	li	a4,4
   208c0:	04e78e63          	beq	a5,a4,2091c <__multf3+0x840>
   208c4:	00450793          	addi	a5,a0,4
   208c8:	00a7b533          	sltu	a0,a5,a0
   208cc:	00a40433          	add	s0,s0,a0
   208d0:	00078513          	mv	a0,a5
   208d4:	0480006f          	j	2091c <__multf3+0x840>
   208d8:	fc07051b          	addiw	a0,a4,-64
   208dc:	04000893          	li	a7,64
   208e0:	00a45533          	srl	a0,s0,a0
   208e4:	00000613          	li	a2,0
   208e8:	01158863          	beq	a1,a7,208f8 <__multf3+0x81c>
   208ec:	08000613          	li	a2,128
   208f0:	40e6073b          	subw	a4,a2,a4
   208f4:	00e41633          	sll	a2,s0,a4
   208f8:	00f667b3          	or	a5,a2,a5
   208fc:	00f037b3          	snez	a5,a5
   20900:	00f56533          	or	a0,a0,a5
   20904:	00000413          	li	s0,0
   20908:	f91ff06f          	j	20898 <__multf3+0x7bc>
   2090c:	00081863          	bnez	a6,2091c <__multf3+0x840>
   20910:	00850793          	addi	a5,a0,8
   20914:	fb5ff06f          	j	208c8 <__multf3+0x7ec>
   20918:	fe081ce3          	bnez	a6,20910 <__multf3+0x834>
   2091c:	03345793          	srli	a5,s0,0x33
   20920:	0017f793          	andi	a5,a5,1
   20924:	02078063          	beqz	a5,20944 <__multf3+0x868>
   20928:	0014e493          	ori	s1,s1,1
   2092c:	00000413          	li	s0,0
   20930:	00000513          	li	a0,0
   20934:	00100713          	li	a4,1
   20938:	a60688e3          	beqz	a3,203a8 <__multf3+0x2cc>
   2093c:	0024e493          	ori	s1,s1,2
   20940:	a69ff06f          	j	203a8 <__multf3+0x2cc>
   20944:	03d41793          	slli	a5,s0,0x3d
   20948:	00355513          	srli	a0,a0,0x3
   2094c:	00a7e533          	or	a0,a5,a0
   20950:	00345413          	srli	s0,s0,0x3
   20954:	00000713          	li	a4,0
   20958:	a40688e3          	beqz	a3,203a8 <__multf3+0x2cc>
   2095c:	0014f793          	andi	a5,s1,1
   20960:	a40784e3          	beqz	a5,203a8 <__multf3+0x2cc>
   20964:	fd9ff06f          	j	2093c <__multf3+0x860>
   20968:	0087e533          	or	a0,a5,s0
   2096c:	02050463          	beqz	a0,20994 <__multf3+0x8b8>
   20970:	00200793          	li	a5,2
   20974:	0014e493          	ori	s1,s1,1
   20978:	02f90e63          	beq	s2,a5,209b4 <__multf3+0x8d8>
   2097c:	00300793          	li	a5,3
   20980:	02f90263          	beq	s2,a5,209a4 <__multf3+0x8c8>
   20984:	00100793          	li	a5,1
   20988:	00091463          	bnez	s2,20990 <__multf3+0x8b4>
   2098c:	00500793          	li	a5,5
   20990:	0037d513          	srli	a0,a5,0x3
   20994:	0024e493          	ori	s1,s1,2
   20998:	00000413          	li	s0,0
   2099c:	00000713          	li	a4,0
   209a0:	a09ff06f          	j	203a8 <__multf3+0x2cc>
   209a4:	00900793          	li	a5,9
   209a8:	fe0804e3          	beqz	a6,20990 <__multf3+0x8b4>
   209ac:	00100793          	li	a5,1
   209b0:	fe1ff06f          	j	20990 <__multf3+0x8b4>
   209b4:	00900793          	li	a5,9
   209b8:	fc081ce3          	bnez	a6,20990 <__multf3+0x8b4>
   209bc:	ff1ff06f          	j	209ac <__multf3+0x8d0>
   209c0:	00008737          	lui	a4,0x8
   209c4:	00000413          	li	s0,0
   209c8:	00000513          	li	a0,0
   209cc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   209d0:	9d9ff06f          	j	203a8 <__multf3+0x2cc>
   209d4:	00100413          	li	s0,1
   209d8:	00008737          	lui	a4,0x8
   209dc:	02f41413          	slli	s0,s0,0x2f
   209e0:	00000513          	li	a0,0
   209e4:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   209e8:	00000813          	li	a6,0
   209ec:	9bdff06f          	j	203a8 <__multf3+0x2cc>

00000000000209f0 <__subtf3>:
   209f0:	fd010113          	addi	sp,sp,-48
   209f4:	02113423          	sd	ra,40(sp)
   209f8:	02813023          	sd	s0,32(sp)
   209fc:	00913c23          	sd	s1,24(sp)
   20a00:	01213823          	sd	s2,16(sp)
   20a04:	01313423          	sd	s3,8(sp)
   20a08:	01413023          	sd	s4,0(sp)
   20a0c:	00202473          	frrm	s0
   20a10:	fff00713          	li	a4,-1
   20a14:	01075713          	srli	a4,a4,0x10
   20a18:	00008837          	lui	a6,0x8
   20a1c:	0305d893          	srli	a7,a1,0x30
   20a20:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   20a24:	0306de93          	srli	t4,a3,0x30
   20a28:	03f5d493          	srli	s1,a1,0x3f
   20a2c:	03f6d313          	srli	t1,a3,0x3f
   20a30:	00e5f5b3          	and	a1,a1,a4
   20a34:	00e6f6b3          	and	a3,a3,a4
   20a38:	00359593          	slli	a1,a1,0x3
   20a3c:	03d55793          	srli	a5,a0,0x3d
   20a40:	03d65713          	srli	a4,a2,0x3d
   20a44:	0108f8b3          	and	a7,a7,a6
   20a48:	010efeb3          	and	t4,t4,a6
   20a4c:	00369693          	slli	a3,a3,0x3
   20a50:	00b7e7b3          	or	a5,a5,a1
   20a54:	0004041b          	sext.w	s0,s0
   20a58:	00088993          	mv	s3,a7
   20a5c:	00351513          	slli	a0,a0,0x3
   20a60:	000e8593          	mv	a1,t4
   20a64:	00d76733          	or	a4,a4,a3
   20a68:	00361613          	slli	a2,a2,0x3
   20a6c:	010e9663          	bne	t4,a6,20a78 <__subtf3+0x88>
   20a70:	00c766b3          	or	a3,a4,a2
   20a74:	00069463          	bnez	a3,20a7c <__subtf3+0x8c>
   20a78:	00134313          	xori	t1,t1,1
   20a7c:	41d886bb          	subw	a3,a7,t4
   20a80:	00008e37          	lui	t3,0x8
   20a84:	0006881b          	sext.w	a6,a3
   20a88:	fffe0f13          	addi	t5,t3,-1 # 7fff <register_fini-0x80b1>
   20a8c:	4c931663          	bne	t1,s1,20f58 <__subtf3+0x568>
   20a90:	13005c63          	blez	a6,20bc8 <__subtf3+0x1d8>
   20a94:	0a0e9663          	bnez	t4,20b40 <__subtf3+0x150>
   20a98:	00c765b3          	or	a1,a4,a2
   20a9c:	00059a63          	bnez	a1,20ab0 <__subtf3+0xc0>
   20aa0:	09e88063          	beq	a7,t5,20b20 <__subtf3+0x130>
   20aa4:	00078713          	mv	a4,a5
   20aa8:	00088593          	mv	a1,a7
   20aac:	1010006f          	j	213ac <__subtf3+0x9bc>
   20ab0:	fff6881b          	addiw	a6,a3,-1
   20ab4:	06081463          	bnez	a6,20b1c <__subtf3+0x12c>
   20ab8:	00a60633          	add	a2,a2,a0
   20abc:	00a63533          	sltu	a0,a2,a0
   20ac0:	00f70733          	add	a4,a4,a5
   20ac4:	00a70733          	add	a4,a4,a0
   20ac8:	00088593          	mv	a1,a7
   20acc:	00060513          	mv	a0,a2
   20ad0:	03375793          	srli	a5,a4,0x33
   20ad4:	0017f793          	andi	a5,a5,1
   20ad8:	0c078ae3          	beqz	a5,213ac <__subtf3+0x9bc>
   20adc:	000086b7          	lui	a3,0x8
   20ae0:	00158593          	addi	a1,a1,1
   20ae4:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x80b1>
   20ae8:	42f58e63          	beq	a1,a5,20f24 <__subtf3+0x534>
   20aec:	fff00793          	li	a5,-1
   20af0:	03379793          	slli	a5,a5,0x33
   20af4:	fff78793          	addi	a5,a5,-1
   20af8:	00f777b3          	and	a5,a4,a5
   20afc:	00155713          	srli	a4,a0,0x1
   20b00:	00157513          	andi	a0,a0,1
   20b04:	00a76533          	or	a0,a4,a0
   20b08:	03f79713          	slli	a4,a5,0x3f
   20b0c:	00a76533          	or	a0,a4,a0
   20b10:	0017d793          	srli	a5,a5,0x1
   20b14:	00000813          	li	a6,0
   20b18:	3900006f          	j	20ea8 <__subtf3+0x4b8>
   20b1c:	03e89a63          	bne	a7,t5,20b50 <__subtf3+0x160>
   20b20:	00a7e733          	or	a4,a5,a0
   20b24:	100704e3          	beqz	a4,2142c <__subtf3+0xa3c>
   20b28:	0327d713          	srli	a4,a5,0x32
   20b2c:	00177713          	andi	a4,a4,1
   20b30:	00088593          	mv	a1,a7
   20b34:	00000813          	li	a6,0
   20b38:	36071863          	bnez	a4,20ea8 <__subtf3+0x4b8>
   20b3c:	0c00006f          	j	20bfc <__subtf3+0x20c>
   20b40:	ffe880e3          	beq	a7,t5,20b20 <__subtf3+0x130>
   20b44:	00100693          	li	a3,1
   20b48:	03369693          	slli	a3,a3,0x33
   20b4c:	00d76733          	or	a4,a4,a3
   20b50:	07400693          	li	a3,116
   20b54:	0706c463          	blt	a3,a6,20bbc <__subtf3+0x1cc>
   20b58:	03f00693          	li	a3,63
   20b5c:	0306c663          	blt	a3,a6,20b88 <__subtf3+0x198>
   20b60:	04000593          	li	a1,64
   20b64:	410585bb          	subw	a1,a1,a6
   20b68:	00b716b3          	sll	a3,a4,a1
   20b6c:	01065333          	srl	t1,a2,a6
   20b70:	00b61633          	sll	a2,a2,a1
   20b74:	0066e6b3          	or	a3,a3,t1
   20b78:	00c03633          	snez	a2,a2
   20b7c:	00c6e633          	or	a2,a3,a2
   20b80:	01075733          	srl	a4,a4,a6
   20b84:	f35ff06f          	j	20ab8 <__subtf3+0xc8>
   20b88:	fc08069b          	addiw	a3,a6,-64
   20b8c:	04000313          	li	t1,64
   20b90:	00d756b3          	srl	a3,a4,a3
   20b94:	00000593          	li	a1,0
   20b98:	00680863          	beq	a6,t1,20ba8 <__subtf3+0x1b8>
   20b9c:	08000593          	li	a1,128
   20ba0:	410585bb          	subw	a1,a1,a6
   20ba4:	00b715b3          	sll	a1,a4,a1
   20ba8:	00c5e633          	or	a2,a1,a2
   20bac:	00c03633          	snez	a2,a2
   20bb0:	00c6e633          	or	a2,a3,a2
   20bb4:	00000713          	li	a4,0
   20bb8:	f01ff06f          	j	20ab8 <__subtf3+0xc8>
   20bbc:	00c76633          	or	a2,a4,a2
   20bc0:	00c03633          	snez	a2,a2
   20bc4:	ff1ff06f          	j	20bb4 <__subtf3+0x1c4>
   20bc8:	12080063          	beqz	a6,20ce8 <__subtf3+0x2f8>
   20bcc:	08089063          	bnez	a7,20c4c <__subtf3+0x25c>
   20bd0:	00a7e833          	or	a6,a5,a0
   20bd4:	02081863          	bnez	a6,20c04 <__subtf3+0x214>
   20bd8:	00060513          	mv	a0,a2
   20bdc:	7dee9863          	bne	t4,t5,213ac <__subtf3+0x9bc>
   20be0:	00c76533          	or	a0,a4,a2
   20be4:	020508e3          	beqz	a0,21414 <__subtf3+0xa24>
   20be8:	03275793          	srli	a5,a4,0x32
   20bec:	0017f793          	andi	a5,a5,1
   20bf0:	020798e3          	bnez	a5,21420 <__subtf3+0xa30>
   20bf4:	00070793          	mv	a5,a4
   20bf8:	00060513          	mv	a0,a2
   20bfc:	01000693          	li	a3,16
   20c00:	1440006f          	j	20d44 <__subtf3+0x354>
   20c04:	fff6c693          	not	a3,a3
   20c08:	0006869b          	sext.w	a3,a3
   20c0c:	00069c63          	bnez	a3,20c24 <__subtf3+0x234>
   20c10:	00c50533          	add	a0,a0,a2
   20c14:	00e78733          	add	a4,a5,a4
   20c18:	00c53633          	sltu	a2,a0,a2
   20c1c:	00c70733          	add	a4,a4,a2
   20c20:	eb1ff06f          	j	20ad0 <__subtf3+0xe0>
   20c24:	03ee9e63          	bne	t4,t5,20c60 <__subtf3+0x270>
   20c28:	00c76533          	or	a0,a4,a2
   20c2c:	7e050463          	beqz	a0,21414 <__subtf3+0xa24>
   20c30:	03275793          	srli	a5,a4,0x32
   20c34:	0017f793          	andi	a5,a5,1
   20c38:	7e079463          	bnez	a5,21420 <__subtf3+0xa30>
   20c3c:	00070793          	mv	a5,a4
   20c40:	00060513          	mv	a0,a2
   20c44:	00000813          	li	a6,0
   20c48:	fb5ff06f          	j	20bfc <__subtf3+0x20c>
   20c4c:	fdee8ee3          	beq	t4,t5,20c28 <__subtf3+0x238>
   20c50:	00100813          	li	a6,1
   20c54:	03381813          	slli	a6,a6,0x33
   20c58:	40d006bb          	negw	a3,a3
   20c5c:	0107e7b3          	or	a5,a5,a6
   20c60:	07400813          	li	a6,116
   20c64:	06d84c63          	blt	a6,a3,20cdc <__subtf3+0x2ec>
   20c68:	03f00813          	li	a6,63
   20c6c:	02d84e63          	blt	a6,a3,20ca8 <__subtf3+0x2b8>
   20c70:	04000893          	li	a7,64
   20c74:	40d888bb          	subw	a7,a7,a3
   20c78:	00d55333          	srl	t1,a0,a3
   20c7c:	01179833          	sll	a6,a5,a7
   20c80:	01151533          	sll	a0,a0,a7
   20c84:	00686833          	or	a6,a6,t1
   20c88:	00a03533          	snez	a0,a0
   20c8c:	00a86533          	or	a0,a6,a0
   20c90:	00d7d6b3          	srl	a3,a5,a3
   20c94:	00c50533          	add	a0,a0,a2
   20c98:	00e686b3          	add	a3,a3,a4
   20c9c:	00c53633          	sltu	a2,a0,a2
   20ca0:	00c68733          	add	a4,a3,a2
   20ca4:	e2dff06f          	j	20ad0 <__subtf3+0xe0>
   20ca8:	fc06881b          	addiw	a6,a3,-64
   20cac:	04000313          	li	t1,64
   20cb0:	0107d833          	srl	a6,a5,a6
   20cb4:	00000893          	li	a7,0
   20cb8:	00668863          	beq	a3,t1,20cc8 <__subtf3+0x2d8>
   20cbc:	08000893          	li	a7,128
   20cc0:	40d886bb          	subw	a3,a7,a3
   20cc4:	00d798b3          	sll	a7,a5,a3
   20cc8:	00a8e533          	or	a0,a7,a0
   20ccc:	00a03533          	snez	a0,a0
   20cd0:	00a86533          	or	a0,a6,a0
   20cd4:	00000693          	li	a3,0
   20cd8:	fbdff06f          	j	20c94 <__subtf3+0x2a4>
   20cdc:	00a7e533          	or	a0,a5,a0
   20ce0:	00a03533          	snez	a0,a0
   20ce4:	ff1ff06f          	j	20cd4 <__subtf3+0x2e4>
   20ce8:	00188593          	addi	a1,a7,1
   20cec:	ffee0693          	addi	a3,t3,-2
   20cf0:	00d5f333          	and	t1,a1,a3
   20cf4:	18031863          	bnez	t1,20e84 <__subtf3+0x494>
   20cf8:	00a7e5b3          	or	a1,a5,a0
   20cfc:	06089263          	bnez	a7,20d60 <__subtf3+0x370>
   20d00:	6c058263          	beqz	a1,213c4 <__subtf3+0x9d4>
   20d04:	00c766b3          	or	a3,a4,a2
   20d08:	48068263          	beqz	a3,2118c <__subtf3+0x79c>
   20d0c:	00c50633          	add	a2,a0,a2
   20d10:	00e787b3          	add	a5,a5,a4
   20d14:	00a63533          	sltu	a0,a2,a0
   20d18:	00a787b3          	add	a5,a5,a0
   20d1c:	0337d713          	srli	a4,a5,0x33
   20d20:	00177713          	andi	a4,a4,1
   20d24:	6a070263          	beqz	a4,213c8 <__subtf3+0x9d8>
   20d28:	fff00713          	li	a4,-1
   20d2c:	03371713          	slli	a4,a4,0x33
   20d30:	fff70713          	addi	a4,a4,-1
   20d34:	00e7f7b3          	and	a5,a5,a4
   20d38:	00060513          	mv	a0,a2
   20d3c:	00000693          	li	a3,0
   20d40:	00100593          	li	a1,1
   20d44:	00757713          	andi	a4,a0,7
   20d48:	1a071263          	bnez	a4,20eec <__subtf3+0x4fc>
   20d4c:	08080663          	beqz	a6,20dd8 <__subtf3+0x3e8>
   20d50:	0016f713          	andi	a4,a3,1
   20d54:	08070263          	beqz	a4,20dd8 <__subtf3+0x3e8>
   20d58:	0026e693          	ori	a3,a3,2
   20d5c:	07c0006f          	j	20dd8 <__subtf3+0x3e8>
   20d60:	03e89c63          	bne	a7,t5,20d98 <__subtf3+0x3a8>
   20d64:	78058063          	beqz	a1,214e4 <__subtf3+0xaf4>
   20d68:	0327d693          	srli	a3,a5,0x32
   20d6c:	0016f693          	andi	a3,a3,1
   20d70:	0016b693          	seqz	a3,a3
   20d74:	00469693          	slli	a3,a3,0x4
   20d78:	051e9063          	bne	t4,a7,20db8 <__subtf3+0x3c8>
   20d7c:	00c768b3          	or	a7,a4,a2
   20d80:	02088063          	beqz	a7,20da0 <__subtf3+0x3b0>
   20d84:	03275893          	srli	a7,a4,0x32
   20d88:	0018f893          	andi	a7,a7,1
   20d8c:	00089a63          	bnez	a7,20da0 <__subtf3+0x3b0>
   20d90:	01000693          	li	a3,16
   20d94:	00c0006f          	j	20da0 <__subtf3+0x3b0>
   20d98:	00000693          	li	a3,0
   20d9c:	ffee80e3          	beq	t4,t5,20d7c <__subtf3+0x38c>
   20da0:	00059c63          	bnez	a1,20db8 <__subtf3+0x3c8>
   20da4:	00070793          	mv	a5,a4
   20da8:	00060513          	mv	a0,a2
   20dac:	000085b7          	lui	a1,0x8
   20db0:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   20db4:	f91ff06f          	j	20d44 <__subtf3+0x354>
   20db8:	00c76633          	or	a2,a4,a2
   20dbc:	fe0608e3          	beqz	a2,20dac <__subtf3+0x3bc>
   20dc0:	00100793          	li	a5,1
   20dc4:	000085b7          	lui	a1,0x8
   20dc8:	00000493          	li	s1,0
   20dcc:	03279793          	slli	a5,a5,0x32
   20dd0:	00000513          	li	a0,0
   20dd4:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   20dd8:	0337d713          	srli	a4,a5,0x33
   20ddc:	00177713          	andi	a4,a4,1
   20de0:	02070263          	beqz	a4,20e04 <__subtf3+0x414>
   20de4:	00008737          	lui	a4,0x8
   20de8:	00158593          	addi	a1,a1,1
   20dec:	fff70613          	addi	a2,a4,-1 # 7fff <register_fini-0x80b1>
   20df0:	6ac58863          	beq	a1,a2,214a0 <__subtf3+0xab0>
   20df4:	fff00713          	li	a4,-1
   20df8:	03371713          	slli	a4,a4,0x33
   20dfc:	fff70713          	addi	a4,a4,-1
   20e00:	00e7f7b3          	and	a5,a5,a4
   20e04:	00355713          	srli	a4,a0,0x3
   20e08:	03d79513          	slli	a0,a5,0x3d
   20e0c:	00e56533          	or	a0,a0,a4
   20e10:	00008737          	lui	a4,0x8
   20e14:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20e18:	0037d793          	srli	a5,a5,0x3
   20e1c:	02e59063          	bne	a1,a4,20e3c <__subtf3+0x44c>
   20e20:	00f56533          	or	a0,a0,a5
   20e24:	00000793          	li	a5,0
   20e28:	00050a63          	beqz	a0,20e3c <__subtf3+0x44c>
   20e2c:	00100793          	li	a5,1
   20e30:	02f79793          	slli	a5,a5,0x2f
   20e34:	00000513          	li	a0,0
   20e38:	00000493          	li	s1,0
   20e3c:	03159593          	slli	a1,a1,0x31
   20e40:	00f4949b          	slliw	s1,s1,0xf
   20e44:	0315d593          	srli	a1,a1,0x31
   20e48:	0095e5b3          	or	a1,a1,s1
   20e4c:	01079793          	slli	a5,a5,0x10
   20e50:	03059493          	slli	s1,a1,0x30
   20e54:	0107d593          	srli	a1,a5,0x10
   20e58:	0095e5b3          	or	a1,a1,s1
   20e5c:	00068463          	beqz	a3,20e64 <__subtf3+0x474>
   20e60:	0016a073          	csrs	fflags,a3
   20e64:	02813083          	ld	ra,40(sp)
   20e68:	02013403          	ld	s0,32(sp)
   20e6c:	01813483          	ld	s1,24(sp)
   20e70:	01013903          	ld	s2,16(sp)
   20e74:	00813983          	ld	s3,8(sp)
   20e78:	00013a03          	ld	s4,0(sp)
   20e7c:	03010113          	addi	sp,sp,48
   20e80:	00008067          	ret
   20e84:	03e58663          	beq	a1,t5,20eb0 <__subtf3+0x4c0>
   20e88:	00c50633          	add	a2,a0,a2
   20e8c:	00a63533          	sltu	a0,a2,a0
   20e90:	00e787b3          	add	a5,a5,a4
   20e94:	00a787b3          	add	a5,a5,a0
   20e98:	03f79513          	slli	a0,a5,0x3f
   20e9c:	00165613          	srli	a2,a2,0x1
   20ea0:	00c56533          	or	a0,a0,a2
   20ea4:	0017d793          	srli	a5,a5,0x1
   20ea8:	00000693          	li	a3,0
   20eac:	e99ff06f          	j	20d44 <__subtf3+0x354>
   20eb0:	00040863          	beqz	s0,20ec0 <__subtf3+0x4d0>
   20eb4:	00300793          	li	a5,3
   20eb8:	00f41c63          	bne	s0,a5,20ed0 <__subtf3+0x4e0>
   20ebc:	02049063          	bnez	s1,20edc <__subtf3+0x4ec>
   20ec0:	00000793          	li	a5,0
   20ec4:	00000513          	li	a0,0
   20ec8:	00500693          	li	a3,5
   20ecc:	f0dff06f          	j	20dd8 <__subtf3+0x3e8>
   20ed0:	00200793          	li	a5,2
   20ed4:	00f41463          	bne	s0,a5,20edc <__subtf3+0x4ec>
   20ed8:	fe0494e3          	bnez	s1,20ec0 <__subtf3+0x4d0>
   20edc:	fff00793          	li	a5,-1
   20ee0:	fff00513          	li	a0,-1
   20ee4:	00068593          	mv	a1,a3
   20ee8:	00500693          	li	a3,5
   20eec:	00200713          	li	a4,2
   20ef0:	0016e693          	ori	a3,a3,1
   20ef4:	5ae40063          	beq	s0,a4,21494 <__subtf3+0xaa4>
   20ef8:	00300713          	li	a4,3
   20efc:	58e40663          	beq	s0,a4,21488 <__subtf3+0xa98>
   20f00:	58041c63          	bnez	s0,21498 <__subtf3+0xaa8>
   20f04:	00f57713          	andi	a4,a0,15
   20f08:	00400613          	li	a2,4
   20f0c:	58c70663          	beq	a4,a2,21498 <__subtf3+0xaa8>
   20f10:	00450713          	addi	a4,a0,4
   20f14:	00a73533          	sltu	a0,a4,a0
   20f18:	00a787b3          	add	a5,a5,a0
   20f1c:	00070513          	mv	a0,a4
   20f20:	5780006f          	j	21498 <__subtf3+0xaa8>
   20f24:	f8040ee3          	beqz	s0,20ec0 <__subtf3+0x4d0>
   20f28:	00300793          	li	a5,3
   20f2c:	00f41e63          	bne	s0,a5,20f48 <__subtf3+0x558>
   20f30:	f80488e3          	beqz	s1,20ec0 <__subtf3+0x4d0>
   20f34:	fff00793          	li	a5,-1
   20f38:	fff00513          	li	a0,-1
   20f3c:	ffe68593          	addi	a1,a3,-2
   20f40:	00000813          	li	a6,0
   20f44:	fa5ff06f          	j	20ee8 <__subtf3+0x4f8>
   20f48:	00200793          	li	a5,2
   20f4c:	fef414e3          	bne	s0,a5,20f34 <__subtf3+0x544>
   20f50:	f60498e3          	bnez	s1,20ec0 <__subtf3+0x4d0>
   20f54:	fe1ff06f          	j	20f34 <__subtf3+0x544>
   20f58:	0f005063          	blez	a6,21038 <__subtf3+0x648>
   20f5c:	080e9463          	bnez	t4,20fe4 <__subtf3+0x5f4>
   20f60:	00c765b3          	or	a1,a4,a2
   20f64:	b2058ee3          	beqz	a1,20aa0 <__subtf3+0xb0>
   20f68:	fff6881b          	addiw	a6,a3,-1
   20f6c:	02081e63          	bnez	a6,20fa8 <__subtf3+0x5b8>
   20f70:	40c50633          	sub	a2,a0,a2
   20f74:	00c53533          	sltu	a0,a0,a2
   20f78:	40e78733          	sub	a4,a5,a4
   20f7c:	40a70733          	sub	a4,a4,a0
   20f80:	00088593          	mv	a1,a7
   20f84:	00060513          	mv	a0,a2
   20f88:	03375793          	srli	a5,a4,0x33
   20f8c:	0017f793          	andi	a5,a5,1
   20f90:	40078e63          	beqz	a5,213ac <__subtf3+0x9bc>
   20f94:	00d71713          	slli	a4,a4,0xd
   20f98:	00d75913          	srli	s2,a4,0xd
   20f9c:	00050a13          	mv	s4,a0
   20fa0:	00058993          	mv	s3,a1
   20fa4:	3240006f          	j	212c8 <__subtf3+0x8d8>
   20fa8:	b7e88ce3          	beq	a7,t5,20b20 <__subtf3+0x130>
   20fac:	07400693          	li	a3,116
   20fb0:	0706ce63          	blt	a3,a6,2102c <__subtf3+0x63c>
   20fb4:	03f00693          	li	a3,63
   20fb8:	0506c063          	blt	a3,a6,20ff8 <__subtf3+0x608>
   20fbc:	04000593          	li	a1,64
   20fc0:	410585bb          	subw	a1,a1,a6
   20fc4:	00b716b3          	sll	a3,a4,a1
   20fc8:	01065333          	srl	t1,a2,a6
   20fcc:	00b61633          	sll	a2,a2,a1
   20fd0:	0066e6b3          	or	a3,a3,t1
   20fd4:	00c03633          	snez	a2,a2
   20fd8:	00c6e633          	or	a2,a3,a2
   20fdc:	01075733          	srl	a4,a4,a6
   20fe0:	f91ff06f          	j	20f70 <__subtf3+0x580>
   20fe4:	b3e88ee3          	beq	a7,t5,20b20 <__subtf3+0x130>
   20fe8:	00100693          	li	a3,1
   20fec:	03369693          	slli	a3,a3,0x33
   20ff0:	00d76733          	or	a4,a4,a3
   20ff4:	fb9ff06f          	j	20fac <__subtf3+0x5bc>
   20ff8:	fc08069b          	addiw	a3,a6,-64
   20ffc:	04000313          	li	t1,64
   21000:	00d756b3          	srl	a3,a4,a3
   21004:	00000593          	li	a1,0
   21008:	00680863          	beq	a6,t1,21018 <__subtf3+0x628>
   2100c:	08000593          	li	a1,128
   21010:	410585bb          	subw	a1,a1,a6
   21014:	00b715b3          	sll	a1,a4,a1
   21018:	00c5e633          	or	a2,a1,a2
   2101c:	00c03633          	snez	a2,a2
   21020:	00c6e633          	or	a2,a3,a2
   21024:	00000713          	li	a4,0
   21028:	f49ff06f          	j	20f70 <__subtf3+0x580>
   2102c:	00c76633          	or	a2,a4,a2
   21030:	00c03633          	snez	a2,a2
   21034:	ff1ff06f          	j	21024 <__subtf3+0x634>
   21038:	12080063          	beqz	a6,21158 <__subtf3+0x768>
   2103c:	08089063          	bnez	a7,210bc <__subtf3+0x6cc>
   21040:	00a7e833          	or	a6,a5,a0
   21044:	02081663          	bnez	a6,21070 <__subtf3+0x680>
   21048:	37ee9863          	bne	t4,t5,213b8 <__subtf3+0x9c8>
   2104c:	00c76533          	or	a0,a4,a2
   21050:	3e050663          	beqz	a0,2143c <__subtf3+0xa4c>
   21054:	03275793          	srli	a5,a4,0x32
   21058:	0017f793          	andi	a5,a5,1
   2105c:	3e079663          	bnez	a5,21448 <__subtf3+0xa58>
   21060:	00070793          	mv	a5,a4
   21064:	00060513          	mv	a0,a2
   21068:	00030493          	mv	s1,t1
   2106c:	b91ff06f          	j	20bfc <__subtf3+0x20c>
   21070:	fff6c693          	not	a3,a3
   21074:	0006869b          	sext.w	a3,a3
   21078:	00069e63          	bnez	a3,21094 <__subtf3+0x6a4>
   2107c:	40a60533          	sub	a0,a2,a0
   21080:	40f70733          	sub	a4,a4,a5
   21084:	00a63633          	sltu	a2,a2,a0
   21088:	40c70733          	sub	a4,a4,a2
   2108c:	00030493          	mv	s1,t1
   21090:	ef9ff06f          	j	20f88 <__subtf3+0x598>
   21094:	03ee9e63          	bne	t4,t5,210d0 <__subtf3+0x6e0>
   21098:	00c76533          	or	a0,a4,a2
   2109c:	3a050063          	beqz	a0,2143c <__subtf3+0xa4c>
   210a0:	03275793          	srli	a5,a4,0x32
   210a4:	0017f793          	andi	a5,a5,1
   210a8:	3a079063          	bnez	a5,21448 <__subtf3+0xa58>
   210ac:	00070793          	mv	a5,a4
   210b0:	00060513          	mv	a0,a2
   210b4:	00030493          	mv	s1,t1
   210b8:	b8dff06f          	j	20c44 <__subtf3+0x254>
   210bc:	fdee8ee3          	beq	t4,t5,21098 <__subtf3+0x6a8>
   210c0:	00100813          	li	a6,1
   210c4:	03381813          	slli	a6,a6,0x33
   210c8:	40d006bb          	negw	a3,a3
   210cc:	0107e7b3          	or	a5,a5,a6
   210d0:	07400813          	li	a6,116
   210d4:	06d84c63          	blt	a6,a3,2114c <__subtf3+0x75c>
   210d8:	03f00813          	li	a6,63
   210dc:	02d84e63          	blt	a6,a3,21118 <__subtf3+0x728>
   210e0:	04000893          	li	a7,64
   210e4:	40d888bb          	subw	a7,a7,a3
   210e8:	01179833          	sll	a6,a5,a7
   210ec:	00d55e33          	srl	t3,a0,a3
   210f0:	01151533          	sll	a0,a0,a7
   210f4:	01c86833          	or	a6,a6,t3
   210f8:	00a03533          	snez	a0,a0
   210fc:	00a86533          	or	a0,a6,a0
   21100:	00d7d7b3          	srl	a5,a5,a3
   21104:	40a60533          	sub	a0,a2,a0
   21108:	40f707b3          	sub	a5,a4,a5
   2110c:	00a63633          	sltu	a2,a2,a0
   21110:	40c78733          	sub	a4,a5,a2
   21114:	f79ff06f          	j	2108c <__subtf3+0x69c>
   21118:	fc06881b          	addiw	a6,a3,-64
   2111c:	04000e13          	li	t3,64
   21120:	0107d833          	srl	a6,a5,a6
   21124:	00000893          	li	a7,0
   21128:	01c68863          	beq	a3,t3,21138 <__subtf3+0x748>
   2112c:	08000893          	li	a7,128
   21130:	40d886bb          	subw	a3,a7,a3
   21134:	00d798b3          	sll	a7,a5,a3
   21138:	00a8e533          	or	a0,a7,a0
   2113c:	00a03533          	snez	a0,a0
   21140:	00a86533          	or	a0,a6,a0
   21144:	00000793          	li	a5,0
   21148:	fbdff06f          	j	21104 <__subtf3+0x714>
   2114c:	00a7e533          	or	a0,a5,a0
   21150:	00a03533          	snez	a0,a0
   21154:	ff1ff06f          	j	21144 <__subtf3+0x754>
   21158:	00188593          	addi	a1,a7,1
   2115c:	ffee0693          	addi	a3,t3,-2
   21160:	00d5f6b3          	and	a3,a1,a3
   21164:	12069a63          	bnez	a3,21298 <__subtf3+0x8a8>
   21168:	00a7ee33          	or	t3,a5,a0
   2116c:	00c765b3          	or	a1,a4,a2
   21170:	0c089663          	bnez	a7,2123c <__subtf3+0x84c>
   21174:	060e1c63          	bnez	t3,211ec <__subtf3+0x7fc>
   21178:	24059c63          	bnez	a1,213d0 <__subtf3+0x9e0>
   2117c:	ffe40493          	addi	s1,s0,-2
   21180:	0014b493          	seqz	s1,s1
   21184:	00000793          	li	a5,0
   21188:	00000513          	li	a0,0
   2118c:	00f56733          	or	a4,a0,a5
   21190:	2e070463          	beqz	a4,21478 <__subtf3+0xa88>
   21194:	03f55713          	srli	a4,a0,0x3f
   21198:	00179813          	slli	a6,a5,0x1
   2119c:	00e80833          	add	a6,a6,a4
   211a0:	00151713          	slli	a4,a0,0x1
   211a4:	00777613          	andi	a2,a4,7
   211a8:	00000693          	li	a3,0
   211ac:	02060663          	beqz	a2,211d8 <__subtf3+0x7e8>
   211b0:	00200693          	li	a3,2
   211b4:	24d40a63          	beq	s0,a3,21408 <__subtf3+0xa18>
   211b8:	00300693          	li	a3,3
   211bc:	22d40663          	beq	s0,a3,213e8 <__subtf3+0x9f8>
   211c0:	00100693          	li	a3,1
   211c4:	00041a63          	bnez	s0,211d8 <__subtf3+0x7e8>
   211c8:	00f77613          	andi	a2,a4,15
   211cc:	00400593          	li	a1,4
   211d0:	ffc73713          	sltiu	a4,a4,-4
   211d4:	22b61063          	bne	a2,a1,213f4 <__subtf3+0xa04>
   211d8:	03485813          	srli	a6,a6,0x34
   211dc:	00184813          	xori	a6,a6,1
   211e0:	00187813          	andi	a6,a6,1
   211e4:	00000593          	li	a1,0
   211e8:	b5dff06f          	j	20d44 <__subtf3+0x354>
   211ec:	fa0580e3          	beqz	a1,2118c <__subtf3+0x79c>
   211f0:	40c505b3          	sub	a1,a0,a2
   211f4:	00b53833          	sltu	a6,a0,a1
   211f8:	40e786b3          	sub	a3,a5,a4
   211fc:	410686b3          	sub	a3,a3,a6
   21200:	0336d813          	srli	a6,a3,0x33
   21204:	00187813          	andi	a6,a6,1
   21208:	00080e63          	beqz	a6,21224 <__subtf3+0x834>
   2120c:	40a60533          	sub	a0,a2,a0
   21210:	40f707b3          	sub	a5,a4,a5
   21214:	00a63633          	sltu	a2,a2,a0
   21218:	40c787b3          	sub	a5,a5,a2
   2121c:	00030493          	mv	s1,t1
   21220:	f6dff06f          	j	2118c <__subtf3+0x79c>
   21224:	00d5e533          	or	a0,a1,a3
   21228:	1a051a63          	bnez	a0,213dc <__subtf3+0x9ec>
   2122c:	ffe40493          	addi	s1,s0,-2
   21230:	0014b493          	seqz	s1,s1
   21234:	00000793          	li	a5,0
   21238:	f55ff06f          	j	2118c <__subtf3+0x79c>
   2123c:	03e89a63          	bne	a7,t5,21270 <__subtf3+0x880>
   21240:	280e0c63          	beqz	t3,214d8 <__subtf3+0xae8>
   21244:	0327d693          	srli	a3,a5,0x32
   21248:	0016f693          	andi	a3,a3,1
   2124c:	0016b693          	seqz	a3,a3
   21250:	00469693          	slli	a3,a3,0x4
   21254:	031e9e63          	bne	t4,a7,21290 <__subtf3+0x8a0>
   21258:	02058063          	beqz	a1,21278 <__subtf3+0x888>
   2125c:	03275893          	srli	a7,a4,0x32
   21260:	0018f893          	andi	a7,a7,1
   21264:	00089a63          	bnez	a7,21278 <__subtf3+0x888>
   21268:	01000693          	li	a3,16
   2126c:	00c0006f          	j	21278 <__subtf3+0x888>
   21270:	00000693          	li	a3,0
   21274:	ffee82e3          	beq	t4,t5,21258 <__subtf3+0x868>
   21278:	000e1c63          	bnez	t3,21290 <__subtf3+0x8a0>
   2127c:	1c058e63          	beqz	a1,21458 <__subtf3+0xa68>
   21280:	00070793          	mv	a5,a4
   21284:	00060513          	mv	a0,a2
   21288:	00030493          	mv	s1,t1
   2128c:	b21ff06f          	j	20dac <__subtf3+0x3bc>
   21290:	b0058ee3          	beqz	a1,20dac <__subtf3+0x3bc>
   21294:	b2dff06f          	j	20dc0 <__subtf3+0x3d0>
   21298:	40c50a33          	sub	s4,a0,a2
   2129c:	014536b3          	sltu	a3,a0,s4
   212a0:	40e78933          	sub	s2,a5,a4
   212a4:	40d90933          	sub	s2,s2,a3
   212a8:	03395693          	srli	a3,s2,0x33
   212ac:	0016f693          	andi	a3,a3,1
   212b0:	08068663          	beqz	a3,2133c <__subtf3+0x94c>
   212b4:	40a60a33          	sub	s4,a2,a0
   212b8:	40f70733          	sub	a4,a4,a5
   212bc:	01463633          	sltu	a2,a2,s4
   212c0:	40c70933          	sub	s2,a4,a2
   212c4:	00030493          	mv	s1,t1
   212c8:	08090063          	beqz	s2,21348 <__subtf3+0x958>
   212cc:	00090513          	mv	a0,s2
   212d0:	0bd000ef          	jal	ra,21b8c <__clzdi2>
   212d4:	0005051b          	sext.w	a0,a0
   212d8:	ff45059b          	addiw	a1,a0,-12
   212dc:	03f00793          	li	a5,63
   212e0:	00058693          	mv	a3,a1
   212e4:	06b7ca63          	blt	a5,a1,21358 <__subtf3+0x968>
   212e8:	04000713          	li	a4,64
   212ec:	40b7073b          	subw	a4,a4,a1
   212f0:	00b91933          	sll	s2,s2,a1
   212f4:	00ea5733          	srl	a4,s4,a4
   212f8:	01276733          	or	a4,a4,s2
   212fc:	00ba1533          	sll	a0,s4,a1
   21300:	0935cc63          	blt	a1,s3,21398 <__subtf3+0x9a8>
   21304:	413686bb          	subw	a3,a3,s3
   21308:	0016879b          	addiw	a5,a3,1
   2130c:	03f00613          	li	a2,63
   21310:	04f64c63          	blt	a2,a5,21368 <__subtf3+0x978>
   21314:	04000693          	li	a3,64
   21318:	40f686bb          	subw	a3,a3,a5
   2131c:	00f555b3          	srl	a1,a0,a5
   21320:	00d71633          	sll	a2,a4,a3
   21324:	00d51533          	sll	a0,a0,a3
   21328:	00b66633          	or	a2,a2,a1
   2132c:	00a03533          	snez	a0,a0
   21330:	00a66533          	or	a0,a2,a0
   21334:	00f757b3          	srl	a5,a4,a5
   21338:	e55ff06f          	j	2118c <__subtf3+0x79c>
   2133c:	012a6533          	or	a0,s4,s2
   21340:	f80514e3          	bnez	a0,212c8 <__subtf3+0x8d8>
   21344:	ee9ff06f          	j	2122c <__subtf3+0x83c>
   21348:	000a0513          	mv	a0,s4
   2134c:	041000ef          	jal	ra,21b8c <__clzdi2>
   21350:	0405051b          	addiw	a0,a0,64
   21354:	f85ff06f          	j	212d8 <__subtf3+0x8e8>
   21358:	fb45071b          	addiw	a4,a0,-76
   2135c:	00ea1733          	sll	a4,s4,a4
   21360:	00000513          	li	a0,0
   21364:	f9dff06f          	j	21300 <__subtf3+0x910>
   21368:	fc16869b          	addiw	a3,a3,-63
   2136c:	04000813          	li	a6,64
   21370:	00d75633          	srl	a2,a4,a3
   21374:	00000693          	li	a3,0
   21378:	01078863          	beq	a5,a6,21388 <__subtf3+0x998>
   2137c:	08000693          	li	a3,128
   21380:	40f686bb          	subw	a3,a3,a5
   21384:	00d716b3          	sll	a3,a4,a3
   21388:	00d56533          	or	a0,a0,a3
   2138c:	00a03533          	snez	a0,a0
   21390:	00a66533          	or	a0,a2,a0
   21394:	ea1ff06f          	j	21234 <__subtf3+0x844>
   21398:	fff00793          	li	a5,-1
   2139c:	03379793          	slli	a5,a5,0x33
   213a0:	fff78793          	addi	a5,a5,-1
   213a4:	40b985b3          	sub	a1,s3,a1
   213a8:	00f77733          	and	a4,a4,a5
   213ac:	00070793          	mv	a5,a4
   213b0:	dc058ee3          	beqz	a1,2118c <__subtf3+0x79c>
   213b4:	f60ff06f          	j	20b14 <__subtf3+0x124>
   213b8:	00060513          	mv	a0,a2
   213bc:	00030493          	mv	s1,t1
   213c0:	fedff06f          	j	213ac <__subtf3+0x9bc>
   213c4:	00070793          	mv	a5,a4
   213c8:	00060513          	mv	a0,a2
   213cc:	dc1ff06f          	j	2118c <__subtf3+0x79c>
   213d0:	00070793          	mv	a5,a4
   213d4:	00060513          	mv	a0,a2
   213d8:	e45ff06f          	j	2121c <__subtf3+0x82c>
   213dc:	00068793          	mv	a5,a3
   213e0:	00058513          	mv	a0,a1
   213e4:	da9ff06f          	j	2118c <__subtf3+0x79c>
   213e8:	00100693          	li	a3,1
   213ec:	de0496e3          	bnez	s1,211d8 <__subtf3+0x7e8>
   213f0:	ff873713          	sltiu	a4,a4,-8
   213f4:	00174713          	xori	a4,a4,1
   213f8:	02071713          	slli	a4,a4,0x20
   213fc:	02075713          	srli	a4,a4,0x20
   21400:	00e80833          	add	a6,a6,a4
   21404:	dd5ff06f          	j	211d8 <__subtf3+0x7e8>
   21408:	00100693          	li	a3,1
   2140c:	dc0486e3          	beqz	s1,211d8 <__subtf3+0x7e8>
   21410:	fe1ff06f          	j	213f0 <__subtf3+0xa00>
   21414:	00000793          	li	a5,0
   21418:	00000693          	li	a3,0
   2141c:	9bdff06f          	j	20dd8 <__subtf3+0x3e8>
   21420:	00070793          	mv	a5,a4
   21424:	00060513          	mv	a0,a2
   21428:	eecff06f          	j	20b14 <__subtf3+0x124>
   2142c:	00000793          	li	a5,0
   21430:	00000513          	li	a0,0
   21434:	00088593          	mv	a1,a7
   21438:	fe1ff06f          	j	21418 <__subtf3+0xa28>
   2143c:	00000793          	li	a5,0
   21440:	00030493          	mv	s1,t1
   21444:	fd5ff06f          	j	21418 <__subtf3+0xa28>
   21448:	00070793          	mv	a5,a4
   2144c:	00060513          	mv	a0,a2
   21450:	00030493          	mv	s1,t1
   21454:	ec0ff06f          	j	20b14 <__subtf3+0x124>
   21458:	00100793          	li	a5,1
   2145c:	000085b7          	lui	a1,0x8
   21460:	00000513          	li	a0,0
   21464:	00000493          	li	s1,0
   21468:	03279793          	slli	a5,a5,0x32
   2146c:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   21470:	01000693          	li	a3,16
   21474:	965ff06f          	j	20dd8 <__subtf3+0x3e8>
   21478:	00000793          	li	a5,0
   2147c:	00000513          	li	a0,0
   21480:	00000593          	li	a1,0
   21484:	f95ff06f          	j	21418 <__subtf3+0xa28>
   21488:	00049863          	bnez	s1,21498 <__subtf3+0xaa8>
   2148c:	00850713          	addi	a4,a0,8
   21490:	a85ff06f          	j	20f14 <__subtf3+0x524>
   21494:	fe049ce3          	bnez	s1,2148c <__subtf3+0xa9c>
   21498:	8c0810e3          	bnez	a6,20d58 <__subtf3+0x368>
   2149c:	93dff06f          	j	20dd8 <__subtf3+0x3e8>
   214a0:	00000513          	li	a0,0
   214a4:	02040463          	beqz	s0,214cc <__subtf3+0xadc>
   214a8:	00300793          	li	a5,3
   214ac:	00f41a63          	bne	s0,a5,214c0 <__subtf3+0xad0>
   214b0:	00048e63          	beqz	s1,214cc <__subtf3+0xadc>
   214b4:	fff00513          	li	a0,-1
   214b8:	ffe70593          	addi	a1,a4,-2
   214bc:	0100006f          	j	214cc <__subtf3+0xadc>
   214c0:	00200793          	li	a5,2
   214c4:	fef418e3          	bne	s0,a5,214b4 <__subtf3+0xac4>
   214c8:	fe0486e3          	beqz	s1,214b4 <__subtf3+0xac4>
   214cc:	0056e693          	ori	a3,a3,5
   214d0:	00050793          	mv	a5,a0
   214d4:	931ff06f          	j	20e04 <__subtf3+0x414>
   214d8:	00000693          	li	a3,0
   214dc:	db1e90e3          	bne	t4,a7,2127c <__subtf3+0x88c>
   214e0:	d79ff06f          	j	21258 <__subtf3+0x868>
   214e4:	00000693          	li	a3,0
   214e8:	8b1e9ee3          	bne	t4,a7,20da4 <__subtf3+0x3b4>
   214ec:	891ff06f          	j	20d7c <__subtf3+0x38c>

00000000000214f0 <__fixtfsi>:
   214f0:	00050613          	mv	a2,a0
   214f4:	002027f3          	frrm	a5
   214f8:	00004837          	lui	a6,0x4
   214fc:	00159693          	slli	a3,a1,0x1
   21500:	01059793          	slli	a5,a1,0x10
   21504:	0316d693          	srli	a3,a3,0x31
   21508:	ffe80713          	addi	a4,a6,-2 # 3ffe <register_fini-0xc0b2>
   2150c:	0107d793          	srli	a5,a5,0x10
   21510:	03f5d593          	srli	a1,a1,0x3f
   21514:	00d74c63          	blt	a4,a3,2152c <__fixtfsi+0x3c>
   21518:	08069c63          	bnez	a3,215b0 <__fixtfsi+0xc0>
   2151c:	00f567b3          	or	a5,a0,a5
   21520:	00000513          	li	a0,0
   21524:	04079063          	bnez	a5,21564 <__fixtfsi+0x74>
   21528:	00008067          	ret
   2152c:	01d80713          	addi	a4,a6,29
   21530:	02d75e63          	bge	a4,a3,2156c <__fixtfsi+0x7c>
   21534:	80000737          	lui	a4,0x80000
   21538:	fff74713          	not	a4,a4
   2153c:	00b7053b          	addw	a0,a4,a1
   21540:	06058c63          	beqz	a1,215b8 <__fixtfsi+0xc8>
   21544:	01e80813          	addi	a6,a6,30
   21548:	01000713          	li	a4,16
   2154c:	07069863          	bne	a3,a6,215bc <__fixtfsi+0xcc>
   21550:	0117d693          	srli	a3,a5,0x11
   21554:	06069463          	bnez	a3,215bc <__fixtfsi+0xcc>
   21558:	02f79793          	slli	a5,a5,0x2f
   2155c:	00c7e7b3          	or	a5,a5,a2
   21560:	04078663          	beqz	a5,215ac <__fixtfsi+0xbc>
   21564:	00100713          	li	a4,1
   21568:	0540006f          	j	215bc <__fixtfsi+0xcc>
   2156c:	00100513          	li	a0,1
   21570:	03051513          	slli	a0,a0,0x30
   21574:	00a7e7b3          	or	a5,a5,a0
   21578:	ffffc737          	lui	a4,0xffffc
   2157c:	00004537          	lui	a0,0x4
   21580:	02f5051b          	addiw	a0,a0,47
   21584:	0117071b          	addiw	a4,a4,17
   21588:	00d7073b          	addw	a4,a4,a3
   2158c:	40d506bb          	subw	a3,a0,a3
   21590:	00e79733          	sll	a4,a5,a4
   21594:	00d7d7b3          	srl	a5,a5,a3
   21598:	00c76733          	or	a4,a4,a2
   2159c:	0007851b          	sext.w	a0,a5
   215a0:	00058463          	beqz	a1,215a8 <__fixtfsi+0xb8>
   215a4:	40a0053b          	negw	a0,a0
   215a8:	fa071ee3          	bnez	a4,21564 <__fixtfsi+0x74>
   215ac:	00008067          	ret
   215b0:	00000513          	li	a0,0
   215b4:	fb1ff06f          	j	21564 <__fixtfsi+0x74>
   215b8:	01000713          	li	a4,16
   215bc:	00172073          	csrs	fflags,a4
   215c0:	fedff06f          	j	215ac <__fixtfsi+0xbc>

00000000000215c4 <__floatsitf>:
   215c4:	fe010113          	addi	sp,sp,-32
   215c8:	00113c23          	sd	ra,24(sp)
   215cc:	00813823          	sd	s0,16(sp)
   215d0:	00913423          	sd	s1,8(sp)
   215d4:	06050463          	beqz	a0,2163c <__floatsitf+0x78>
   215d8:	0005079b          	sext.w	a5,a0
   215dc:	03f55493          	srli	s1,a0,0x3f
   215e0:	00055463          	bgez	a0,215e8 <__floatsitf+0x24>
   215e4:	40f007bb          	negw	a5,a5
   215e8:	02079413          	slli	s0,a5,0x20
   215ec:	02045413          	srli	s0,s0,0x20
   215f0:	00040513          	mv	a0,s0
   215f4:	598000ef          	jal	ra,21b8c <__clzdi2>
   215f8:	000045b7          	lui	a1,0x4
   215fc:	03e5859b          	addiw	a1,a1,62
   21600:	ff15079b          	addiw	a5,a0,-15
   21604:	40a585bb          	subw	a1,a1,a0
   21608:	00f417b3          	sll	a5,s0,a5
   2160c:	01813083          	ld	ra,24(sp)
   21610:	01013403          	ld	s0,16(sp)
   21614:	00f4949b          	slliw	s1,s1,0xf
   21618:	0095e5b3          	or	a1,a1,s1
   2161c:	01079793          	slli	a5,a5,0x10
   21620:	03059593          	slli	a1,a1,0x30
   21624:	0107d793          	srli	a5,a5,0x10
   21628:	00813483          	ld	s1,8(sp)
   2162c:	00000513          	li	a0,0
   21630:	00b7e5b3          	or	a1,a5,a1
   21634:	02010113          	addi	sp,sp,32
   21638:	00008067          	ret
   2163c:	00000793          	li	a5,0
   21640:	00000593          	li	a1,0
   21644:	00000493          	li	s1,0
   21648:	fc5ff06f          	j	2160c <__floatsitf+0x48>

000000000002164c <__extenddftf2>:
   2164c:	fe010113          	addi	sp,sp,-32
   21650:	e20507d3          	fmv.x.d	a5,fa0
   21654:	00113c23          	sd	ra,24(sp)
   21658:	00813823          	sd	s0,16(sp)
   2165c:	00913423          	sd	s1,8(sp)
   21660:	00202773          	frrm	a4
   21664:	0347d513          	srli	a0,a5,0x34
   21668:	7ff57513          	andi	a0,a0,2047
   2166c:	00c79413          	slli	s0,a5,0xc
   21670:	03f7d493          	srli	s1,a5,0x3f
   21674:	00150793          	addi	a5,a0,1 # 4001 <register_fini-0xc0af>
   21678:	7fe7f793          	andi	a5,a5,2046
   2167c:	00c45413          	srli	s0,s0,0xc
   21680:	02078063          	beqz	a5,216a0 <__extenddftf2+0x54>
   21684:	000047b7          	lui	a5,0x4
   21688:	c0078793          	addi	a5,a5,-1024 # 3c00 <register_fini-0xc4b0>
   2168c:	00445593          	srli	a1,s0,0x4
   21690:	00f50533          	add	a0,a0,a5
   21694:	03c41413          	slli	s0,s0,0x3c
   21698:	00000793          	li	a5,0
   2169c:	0880006f          	j	21724 <__extenddftf2+0xd8>
   216a0:	04051a63          	bnez	a0,216f4 <__extenddftf2+0xa8>
   216a4:	00000593          	li	a1,0
   216a8:	fe0408e3          	beqz	s0,21698 <__extenddftf2+0x4c>
   216ac:	00040513          	mv	a0,s0
   216b0:	4dc000ef          	jal	ra,21b8c <__clzdi2>
   216b4:	0005071b          	sext.w	a4,a0
   216b8:	00e00793          	li	a5,14
   216bc:	02e7c463          	blt	a5,a4,216e4 <__extenddftf2+0x98>
   216c0:	00f00593          	li	a1,15
   216c4:	40a585bb          	subw	a1,a1,a0
   216c8:	0315079b          	addiw	a5,a0,49
   216cc:	00b455b3          	srl	a1,s0,a1
   216d0:	00f41433          	sll	s0,s0,a5
   216d4:	000047b7          	lui	a5,0x4
   216d8:	c0c7879b          	addiw	a5,a5,-1012
   216dc:	40a7853b          	subw	a0,a5,a0
   216e0:	fb9ff06f          	j	21698 <__extenddftf2+0x4c>
   216e4:	ff15059b          	addiw	a1,a0,-15
   216e8:	00b415b3          	sll	a1,s0,a1
   216ec:	00000413          	li	s0,0
   216f0:	fe5ff06f          	j	216d4 <__extenddftf2+0x88>
   216f4:	06040463          	beqz	s0,2175c <__extenddftf2+0x110>
   216f8:	00100713          	li	a4,1
   216fc:	03371793          	slli	a5,a4,0x33
   21700:	00f477b3          	and	a5,s0,a5
   21704:	00445593          	srli	a1,s0,0x4
   21708:	0017b793          	seqz	a5,a5
   2170c:	02f71713          	slli	a4,a4,0x2f
   21710:	00008537          	lui	a0,0x8
   21714:	00479793          	slli	a5,a5,0x4
   21718:	00e5e5b3          	or	a1,a1,a4
   2171c:	03c41413          	slli	s0,s0,0x3c
   21720:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   21724:	00f4949b          	slliw	s1,s1,0xf
   21728:	01059593          	slli	a1,a1,0x10
   2172c:	00956533          	or	a0,a0,s1
   21730:	03051513          	slli	a0,a0,0x30
   21734:	0105d593          	srli	a1,a1,0x10
   21738:	00a5e5b3          	or	a1,a1,a0
   2173c:	00078463          	beqz	a5,21744 <__extenddftf2+0xf8>
   21740:	0017a073          	csrs	fflags,a5
   21744:	01813083          	ld	ra,24(sp)
   21748:	00040513          	mv	a0,s0
   2174c:	01013403          	ld	s0,16(sp)
   21750:	00813483          	ld	s1,8(sp)
   21754:	02010113          	addi	sp,sp,32
   21758:	00008067          	ret
   2175c:	00008537          	lui	a0,0x8
   21760:	00000593          	li	a1,0
   21764:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   21768:	f31ff06f          	j	21698 <__extenddftf2+0x4c>

000000000002176c <__trunctfdf2>:
   2176c:	00202873          	frrm	a6
   21770:	00008337          	lui	t1,0x8
   21774:	0305d713          	srli	a4,a1,0x30
   21778:	fff30e13          	addi	t3,t1,-1 # 7fff <register_fini-0x80b1>
   2177c:	01c77633          	and	a2,a4,t3
   21780:	03f5d693          	srli	a3,a1,0x3f
   21784:	00160793          	addi	a5,a2,1
   21788:	01059593          	slli	a1,a1,0x10
   2178c:	ffe30313          	addi	t1,t1,-2
   21790:	00d5d593          	srli	a1,a1,0xd
   21794:	03d55713          	srli	a4,a0,0x3d
   21798:	0067f333          	and	t1,a5,t1
   2179c:	0008081b          	sext.w	a6,a6
   217a0:	00b76733          	or	a4,a4,a1
   217a4:	00351e93          	slli	t4,a0,0x3
   217a8:	1e030e63          	beqz	t1,219a4 <__trunctfdf2+0x238>
   217ac:	ffffc7b7          	lui	a5,0xffffc
   217b0:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd7800>
   217b4:	00f60633          	add	a2,a2,a5
   217b8:	7fe00793          	li	a5,2046
   217bc:	0ec7d063          	bge	a5,a2,2189c <__trunctfdf2+0x130>
   217c0:	06080063          	beqz	a6,21820 <__trunctfdf2+0xb4>
   217c4:	00300793          	li	a5,3
   217c8:	04f81663          	bne	a6,a5,21814 <__trunctfdf2+0xa8>
   217cc:	04068a63          	beqz	a3,21820 <__trunctfdf2+0xb4>
   217d0:	fff00793          	li	a5,-1
   217d4:	7fe00613          	li	a2,2046
   217d8:	00000713          	li	a4,0
   217dc:	00500893          	li	a7,5
   217e0:	00200593          	li	a1,2
   217e4:	0018e893          	ori	a7,a7,1
   217e8:	24b80263          	beq	a6,a1,21a2c <__trunctfdf2+0x2c0>
   217ec:	00300593          	li	a1,3
   217f0:	22b80863          	beq	a6,a1,21a20 <__trunctfdf2+0x2b4>
   217f4:	00081a63          	bnez	a6,21808 <__trunctfdf2+0x9c>
   217f8:	00f7f593          	andi	a1,a5,15
   217fc:	00400513          	li	a0,4
   21800:	00a58463          	beq	a1,a0,21808 <__trunctfdf2+0x9c>
   21804:	00478793          	addi	a5,a5,4
   21808:	02070263          	beqz	a4,2182c <__trunctfdf2+0xc0>
   2180c:	0028e893          	ori	a7,a7,2
   21810:	01c0006f          	j	2182c <__trunctfdf2+0xc0>
   21814:	00200793          	li	a5,2
   21818:	faf81ce3          	bne	a6,a5,217d0 <__trunctfdf2+0x64>
   2181c:	fa068ae3          	beqz	a3,217d0 <__trunctfdf2+0x64>
   21820:	00000793          	li	a5,0
   21824:	7ff00613          	li	a2,2047
   21828:	00500893          	li	a7,5
   2182c:	0377d713          	srli	a4,a5,0x37
   21830:	00177713          	andi	a4,a4,1
   21834:	02070063          	beqz	a4,21854 <__trunctfdf2+0xe8>
   21838:	00160613          	addi	a2,a2,1
   2183c:	7ff00713          	li	a4,2047
   21840:	1ee60a63          	beq	a2,a4,21a34 <__trunctfdf2+0x2c8>
   21844:	fff00593          	li	a1,-1
   21848:	03759593          	slli	a1,a1,0x37
   2184c:	fff58593          	addi	a1,a1,-1 # 3fff <register_fini-0xc0b1>
   21850:	00b7f7b3          	and	a5,a5,a1
   21854:	7ff00713          	li	a4,2047
   21858:	0037d793          	srli	a5,a5,0x3
   2185c:	00e61a63          	bne	a2,a4,21870 <__trunctfdf2+0x104>
   21860:	00078863          	beqz	a5,21870 <__trunctfdf2+0x104>
   21864:	00100793          	li	a5,1
   21868:	03379793          	slli	a5,a5,0x33
   2186c:	00000693          	li	a3,0
   21870:	7ff67713          	andi	a4,a2,2047
   21874:	00c79793          	slli	a5,a5,0xc
   21878:	03471713          	slli	a4,a4,0x34
   2187c:	00c7d793          	srli	a5,a5,0xc
   21880:	00f767b3          	or	a5,a4,a5
   21884:	03f69693          	slli	a3,a3,0x3f
   21888:	00d7e7b3          	or	a5,a5,a3
   2188c:	00088463          	beqz	a7,21894 <__trunctfdf2+0x128>
   21890:	0018a073          	csrs	fflags,a7
   21894:	f2078553          	fmv.d.x	fa0,a5
   21898:	00008067          	ret
   2189c:	0cc04a63          	bgtz	a2,21970 <__trunctfdf2+0x204>
   218a0:	fcc00793          	li	a5,-52
   218a4:	14f64a63          	blt	a2,a5,219f8 <__trunctfdf2+0x28c>
   218a8:	00100793          	li	a5,1
   218ac:	03379793          	slli	a5,a5,0x33
   218b0:	03d00e13          	li	t3,61
   218b4:	00f76733          	or	a4,a4,a5
   218b8:	40ce0e33          	sub	t3,t3,a2
   218bc:	03f00793          	li	a5,63
   218c0:	0006089b          	sext.w	a7,a2
   218c4:	07c7ce63          	blt	a5,t3,21940 <__trunctfdf2+0x1d4>
   218c8:	0038859b          	addiw	a1,a7,3
   218cc:	03d00613          	li	a2,61
   218d0:	4116063b          	subw	a2,a2,a7
   218d4:	00be97b3          	sll	a5,t4,a1
   218d8:	00ced633          	srl	a2,t4,a2
   218dc:	00f037b3          	snez	a5,a5
   218e0:	00f667b3          	or	a5,a2,a5
   218e4:	00b71733          	sll	a4,a4,a1
   218e8:	00f767b3          	or	a5,a4,a5
   218ec:	00000613          	li	a2,0
   218f0:	0c078063          	beqz	a5,219b0 <__trunctfdf2+0x244>
   218f4:	00179713          	slli	a4,a5,0x1
   218f8:	00777613          	andi	a2,a4,7
   218fc:	00000893          	li	a7,0
   21900:	02060663          	beqz	a2,2192c <__trunctfdf2+0x1c0>
   21904:	00200613          	li	a2,2
   21908:	10c80263          	beq	a6,a2,21a0c <__trunctfdf2+0x2a0>
   2190c:	00300613          	li	a2,3
   21910:	00100893          	li	a7,1
   21914:	0ec80663          	beq	a6,a2,21a00 <__trunctfdf2+0x294>
   21918:	00081a63          	bnez	a6,2192c <__trunctfdf2+0x1c0>
   2191c:	00f77613          	andi	a2,a4,15
   21920:	00400593          	li	a1,4
   21924:	00b60463          	beq	a2,a1,2192c <__trunctfdf2+0x1c0>
   21928:	00470713          	addi	a4,a4,4 # ffffffffffffc004 <__BSS_END__+0xfffffffffffd7404>
   2192c:	03875713          	srli	a4,a4,0x38
   21930:	00174713          	xori	a4,a4,1
   21934:	00177713          	andi	a4,a4,1
   21938:	00000613          	li	a2,0
   2193c:	0540006f          	j	21990 <__trunctfdf2+0x224>
   21940:	ffd00313          	li	t1,-3
   21944:	4113033b          	subw	t1,t1,a7
   21948:	04000793          	li	a5,64
   2194c:	00675333          	srl	t1,a4,t1
   21950:	00000593          	li	a1,0
   21954:	00fe0663          	beq	t3,a5,21960 <__trunctfdf2+0x1f4>
   21958:	0438861b          	addiw	a2,a7,67
   2195c:	00c715b3          	sll	a1,a4,a2
   21960:	01d5e5b3          	or	a1,a1,t4
   21964:	00b035b3          	snez	a1,a1
   21968:	00b367b3          	or	a5,t1,a1
   2196c:	f81ff06f          	j	218ec <__trunctfdf2+0x180>
   21970:	00751793          	slli	a5,a0,0x7
   21974:	00f037b3          	snez	a5,a5
   21978:	03ced593          	srli	a1,t4,0x3c
   2197c:	00471713          	slli	a4,a4,0x4
   21980:	00b7e7b3          	or	a5,a5,a1
   21984:	00f767b3          	or	a5,a4,a5
   21988:	00000893          	li	a7,0
   2198c:	00000713          	li	a4,0
   21990:	0077f593          	andi	a1,a5,7
   21994:	e40596e3          	bnez	a1,217e0 <__trunctfdf2+0x74>
   21998:	e8070ae3          	beqz	a4,2182c <__trunctfdf2+0xc0>
   2199c:	0018f713          	andi	a4,a7,1
   219a0:	e69ff06f          	j	21808 <__trunctfdf2+0x9c>
   219a4:	01d767b3          	or	a5,a4,t4
   219a8:	00061863          	bnez	a2,219b8 <__trunctfdf2+0x24c>
   219ac:	04079663          	bnez	a5,219f8 <__trunctfdf2+0x28c>
   219b0:	00000893          	li	a7,0
   219b4:	e79ff06f          	j	2182c <__trunctfdf2+0xc0>
   219b8:	06078063          	beqz	a5,21a18 <__trunctfdf2+0x2ac>
   219bc:	00000893          	li	a7,0
   219c0:	01c61863          	bne	a2,t3,219d0 <__trunctfdf2+0x264>
   219c4:	03275893          	srli	a7,a4,0x32
   219c8:	0018b893          	seqz	a7,a7
   219cc:	00489893          	slli	a7,a7,0x4
   219d0:	03ced793          	srli	a5,t4,0x3c
   219d4:	00471713          	slli	a4,a4,0x4
   219d8:	00f76733          	or	a4,a4,a5
   219dc:	00100793          	li	a5,1
   219e0:	ff877713          	andi	a4,a4,-8
   219e4:	03679793          	slli	a5,a5,0x36
   219e8:	00f767b3          	or	a5,a4,a5
   219ec:	7ff00613          	li	a2,2047
   219f0:	00000713          	li	a4,0
   219f4:	f9dff06f          	j	21990 <__trunctfdf2+0x224>
   219f8:	00100793          	li	a5,1
   219fc:	ef9ff06f          	j	218f4 <__trunctfdf2+0x188>
   21a00:	f20696e3          	bnez	a3,2192c <__trunctfdf2+0x1c0>
   21a04:	00870713          	addi	a4,a4,8
   21a08:	f25ff06f          	j	2192c <__trunctfdf2+0x1c0>
   21a0c:	00100893          	li	a7,1
   21a10:	f0068ee3          	beqz	a3,2192c <__trunctfdf2+0x1c0>
   21a14:	ff1ff06f          	j	21a04 <__trunctfdf2+0x298>
   21a18:	7ff00613          	li	a2,2047
   21a1c:	f95ff06f          	j	219b0 <__trunctfdf2+0x244>
   21a20:	de0694e3          	bnez	a3,21808 <__trunctfdf2+0x9c>
   21a24:	00878793          	addi	a5,a5,8
   21a28:	de1ff06f          	j	21808 <__trunctfdf2+0x9c>
   21a2c:	dc068ee3          	beqz	a3,21808 <__trunctfdf2+0x9c>
   21a30:	ff5ff06f          	j	21a24 <__trunctfdf2+0x2b8>
   21a34:	00000793          	li	a5,0
   21a38:	02080463          	beqz	a6,21a60 <__trunctfdf2+0x2f4>
   21a3c:	00300713          	li	a4,3
   21a40:	00e81a63          	bne	a6,a4,21a54 <__trunctfdf2+0x2e8>
   21a44:	00068e63          	beqz	a3,21a60 <__trunctfdf2+0x2f4>
   21a48:	fff00793          	li	a5,-1
   21a4c:	7fe00613          	li	a2,2046
   21a50:	0100006f          	j	21a60 <__trunctfdf2+0x2f4>
   21a54:	00200713          	li	a4,2
   21a58:	fee818e3          	bne	a6,a4,21a48 <__trunctfdf2+0x2dc>
   21a5c:	fe0686e3          	beqz	a3,21a48 <__trunctfdf2+0x2dc>
   21a60:	0058e893          	ori	a7,a7,5
   21a64:	df1ff06f          	j	21854 <__trunctfdf2+0xe8>

0000000000021a68 <__muldi3>:
   21a68:	00050613          	mv	a2,a0
   21a6c:	00000513          	li	a0,0
   21a70:	0015f693          	andi	a3,a1,1
   21a74:	00068463          	beqz	a3,21a7c <__muldi3+0x14>
   21a78:	00c50533          	add	a0,a0,a2
   21a7c:	0015d593          	srli	a1,a1,0x1
   21a80:	00161613          	slli	a2,a2,0x1
   21a84:	fe0596e3          	bnez	a1,21a70 <__muldi3+0x8>
   21a88:	00008067          	ret

0000000000021a8c <__udivsi3>:
   21a8c:	02051513          	slli	a0,a0,0x20
   21a90:	02059593          	slli	a1,a1,0x20
   21a94:	00008293          	mv	t0,ra
   21a98:	03c000ef          	jal	ra,21ad4 <__udivdi3>
   21a9c:	0005051b          	sext.w	a0,a0
   21aa0:	00028067          	jr	t0 # 10394 <memset+0xb4>

0000000000021aa4 <__umodsi3>:
   21aa4:	02051513          	slli	a0,a0,0x20
   21aa8:	02059593          	slli	a1,a1,0x20
   21aac:	02055513          	srli	a0,a0,0x20
   21ab0:	0205d593          	srli	a1,a1,0x20
   21ab4:	00008293          	mv	t0,ra
   21ab8:	01c000ef          	jal	ra,21ad4 <__udivdi3>
   21abc:	0005851b          	sext.w	a0,a1
   21ac0:	00028067          	jr	t0

0000000000021ac4 <__divsi3>:
   21ac4:	fff00293          	li	t0,-1
   21ac8:	0a558c63          	beq	a1,t0,21b80 <__moddi3+0x30>

0000000000021acc <__divdi3>:
   21acc:	06054063          	bltz	a0,21b2c <__umoddi3+0x10>
   21ad0:	0605c663          	bltz	a1,21b3c <__umoddi3+0x20>

0000000000021ad4 <__udivdi3>:
   21ad4:	00058613          	mv	a2,a1
   21ad8:	00050593          	mv	a1,a0
   21adc:	fff00513          	li	a0,-1
   21ae0:	02060c63          	beqz	a2,21b18 <__udivdi3+0x44>
   21ae4:	00100693          	li	a3,1
   21ae8:	00b67a63          	bgeu	a2,a1,21afc <__udivdi3+0x28>
   21aec:	00c05863          	blez	a2,21afc <__udivdi3+0x28>
   21af0:	00161613          	slli	a2,a2,0x1
   21af4:	00169693          	slli	a3,a3,0x1
   21af8:	feb66ae3          	bltu	a2,a1,21aec <__udivdi3+0x18>
   21afc:	00000513          	li	a0,0
   21b00:	00c5e663          	bltu	a1,a2,21b0c <__udivdi3+0x38>
   21b04:	40c585b3          	sub	a1,a1,a2
   21b08:	00d56533          	or	a0,a0,a3
   21b0c:	0016d693          	srli	a3,a3,0x1
   21b10:	00165613          	srli	a2,a2,0x1
   21b14:	fe0696e3          	bnez	a3,21b00 <__udivdi3+0x2c>
   21b18:	00008067          	ret

0000000000021b1c <__umoddi3>:
   21b1c:	00008293          	mv	t0,ra
   21b20:	fb5ff0ef          	jal	ra,21ad4 <__udivdi3>
   21b24:	00058513          	mv	a0,a1
   21b28:	00028067          	jr	t0
   21b2c:	40a00533          	neg	a0,a0
   21b30:	00b04863          	bgtz	a1,21b40 <__umoddi3+0x24>
   21b34:	40b005b3          	neg	a1,a1
   21b38:	f9dff06f          	j	21ad4 <__udivdi3>
   21b3c:	40b005b3          	neg	a1,a1
   21b40:	00008293          	mv	t0,ra
   21b44:	f91ff0ef          	jal	ra,21ad4 <__udivdi3>
   21b48:	40a00533          	neg	a0,a0
   21b4c:	00028067          	jr	t0

0000000000021b50 <__moddi3>:
   21b50:	00008293          	mv	t0,ra
   21b54:	0005ca63          	bltz	a1,21b68 <__moddi3+0x18>
   21b58:	00054c63          	bltz	a0,21b70 <__moddi3+0x20>
   21b5c:	f79ff0ef          	jal	ra,21ad4 <__udivdi3>
   21b60:	00058513          	mv	a0,a1
   21b64:	00028067          	jr	t0
   21b68:	40b005b3          	neg	a1,a1
   21b6c:	fe0558e3          	bgez	a0,21b5c <__moddi3+0xc>
   21b70:	40a00533          	neg	a0,a0
   21b74:	f61ff0ef          	jal	ra,21ad4 <__udivdi3>
   21b78:	40b00533          	neg	a0,a1
   21b7c:	00028067          	jr	t0
   21b80:	01f29293          	slli	t0,t0,0x1f
   21b84:	f45514e3          	bne	a0,t0,21acc <__divdi3>
   21b88:	00008067          	ret

0000000000021b8c <__clzdi2>:
   21b8c:	03800793          	li	a5,56
   21b90:	00f55733          	srl	a4,a0,a5
   21b94:	0ff77713          	andi	a4,a4,255
   21b98:	00071663          	bnez	a4,21ba4 <__clzdi2+0x18>
   21b9c:	ff878793          	addi	a5,a5,-8
   21ba0:	fe0798e3          	bnez	a5,21b90 <__clzdi2+0x4>
   21ba4:	04000713          	li	a4,64
   21ba8:	40f70733          	sub	a4,a4,a5
   21bac:	00f55533          	srl	a0,a0,a5
   21bb0:	00001797          	auipc	a5,0x1
   21bb4:	d4878793          	addi	a5,a5,-696 # 228f8 <__clz_tab>
   21bb8:	00a78533          	add	a0,a5,a0
   21bbc:	00054503          	lbu	a0,0(a0)
   21bc0:	40a7053b          	subw	a0,a4,a0
   21bc4:	00008067          	ret
