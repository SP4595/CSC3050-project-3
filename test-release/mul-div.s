
mul-div.riscv:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	475000ef          	jal	10d1c <__call_exitprocs>
   100ac:	d701a783          	lw	a5,-656(gp) # 13738 <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	77d010ef          	jal	12038 <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00012537          	lui	a0,0x12
   100cc:	f0050513          	add	a0,a0,-256 # 11f00 <__libc_fini_array>
   100d0:	5810006f          	j	10e50 <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00004197          	auipc	gp,0x4
   100dc:	8f018193          	add	gp,gp,-1808 # 139c8 <__global_pointer$>
   100e0:	d7018513          	add	a0,gp,-656 # 13738 <__stdio_exit_handler>
   100e4:	09818613          	add	a2,gp,152 # 13a60 <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	351000ef          	jal	10c40 <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	d5c50513          	add	a0,a0,-676 # 10e50 <atexit>
   100fc:	00050863          	beqz	a0,1010c <_start+0x34>
   10100:	00002517          	auipc	a0,0x2
   10104:	e0050513          	add	a0,a0,-512 # 11f00 <__libc_fini_array>
   10108:	549000ef          	jal	10e50 <atexit>
   1010c:	299000ef          	jal	10ba4 <__libc_init_array>
   10110:	00012503          	lw	a0,0(sp)
   10114:	00410593          	add	a1,sp,4
   10118:	00000613          	li	a2,0
   1011c:	06c000ef          	jal	10188 <main>
   10120:	f75ff06f          	j	10094 <exit>

00010124 <__do_global_dtors_aux>:
   10124:	ff010113          	add	sp,sp,-16
   10128:	00812423          	sw	s0,8(sp)
   1012c:	d8c1c783          	lbu	a5,-628(gp) # 13754 <completed.1>
   10130:	00112623          	sw	ra,12(sp)
   10134:	02079263          	bnez	a5,10158 <__do_global_dtors_aux+0x34>
   10138:	00000793          	li	a5,0
   1013c:	00078a63          	beqz	a5,10150 <__do_global_dtors_aux+0x2c>
   10140:	00013537          	lui	a0,0x13
   10144:	1b450513          	add	a0,a0,436 # 131b4 <__EH_FRAME_BEGIN__>
   10148:	00000097          	auipc	ra,0x0
   1014c:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10150:	00100793          	li	a5,1
   10154:	d8f18623          	sb	a5,-628(gp) # 13754 <completed.1>
   10158:	00c12083          	lw	ra,12(sp)
   1015c:	00812403          	lw	s0,8(sp)
   10160:	01010113          	add	sp,sp,16
   10164:	00008067          	ret

00010168 <frame_dummy>:
   10168:	00000793          	li	a5,0
   1016c:	00078c63          	beqz	a5,10184 <frame_dummy+0x1c>
   10170:	00013537          	lui	a0,0x13
   10174:	d9018593          	add	a1,gp,-624 # 13758 <object.0>
   10178:	1b450513          	add	a0,a0,436 # 131b4 <__EH_FRAME_BEGIN__>
   1017c:	00000317          	auipc	t1,0x0
   10180:	00000067          	jr	zero # 0 <exit-0x10094>
   10184:	00008067          	ret

00010188 <main>:
   10188:	fe010113          	add	sp,sp,-32
   1018c:	00112e23          	sw	ra,28(sp)
   10190:	00812c23          	sw	s0,24(sp)
   10194:	02010413          	add	s0,sp,32
   10198:	fe042623          	sw	zero,-20(s0)
   1019c:	fe042623          	sw	zero,-20(s0)
   101a0:	04c0006f          	j	101ec <main+0x64>
   101a4:	000137b7          	lui	a5,0x13
   101a8:	1c878713          	add	a4,a5,456 # 131c8 <result>
   101ac:	fec42783          	lw	a5,-20(s0)
   101b0:	00279793          	sll	a5,a5,0x2
   101b4:	00f707b3          	add	a5,a4,a5
   101b8:	0007a703          	lw	a4,0(a5)
   101bc:	00070793          	mv	a5,a4
   101c0:	00279793          	sll	a5,a5,0x2
   101c4:	00e78733          	add	a4,a5,a4
   101c8:	000137b7          	lui	a5,0x13
   101cc:	1c878693          	add	a3,a5,456 # 131c8 <result>
   101d0:	fec42783          	lw	a5,-20(s0)
   101d4:	00279793          	sll	a5,a5,0x2
   101d8:	00f687b3          	add	a5,a3,a5
   101dc:	00e7a023          	sw	a4,0(a5)
   101e0:	fec42783          	lw	a5,-20(s0)
   101e4:	00178793          	add	a5,a5,1
   101e8:	fef42623          	sw	a5,-20(s0)
   101ec:	fec42703          	lw	a4,-20(s0)
   101f0:	00400793          	li	a5,4
   101f4:	fae7d8e3          	bge	a5,a4,101a4 <main+0x1c>
   101f8:	00500793          	li	a5,5
   101fc:	fef42623          	sw	a5,-20(s0)
   10200:	0500006f          	j	10250 <main+0xc8>
   10204:	000137b7          	lui	a5,0x13
   10208:	1c878713          	add	a4,a5,456 # 131c8 <result>
   1020c:	fec42783          	lw	a5,-20(s0)
   10210:	00279793          	sll	a5,a5,0x2
   10214:	00f707b3          	add	a5,a4,a5
   10218:	0007a783          	lw	a5,0(a5)
   1021c:	01f7d713          	srl	a4,a5,0x1f
   10220:	00f707b3          	add	a5,a4,a5
   10224:	4017d793          	sra	a5,a5,0x1
   10228:	00078693          	mv	a3,a5
   1022c:	000137b7          	lui	a5,0x13
   10230:	1c878713          	add	a4,a5,456 # 131c8 <result>
   10234:	fec42783          	lw	a5,-20(s0)
   10238:	00279793          	sll	a5,a5,0x2
   1023c:	00f707b3          	add	a5,a4,a5
   10240:	00d7a023          	sw	a3,0(a5)
   10244:	fec42783          	lw	a5,-20(s0)
   10248:	00178793          	add	a5,a5,1
   1024c:	fef42623          	sw	a5,-20(s0)
   10250:	fec42703          	lw	a4,-20(s0)
   10254:	00900793          	li	a5,9
   10258:	fae7d6e3          	bge	a5,a4,10204 <main+0x7c>
   1025c:	fe042623          	sw	zero,-20(s0)
   10260:	0380006f          	j	10298 <main+0x110>
   10264:	000137b7          	lui	a5,0x13
   10268:	1c878713          	add	a4,a5,456 # 131c8 <result>
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	00279793          	sll	a5,a5,0x2
   10274:	00f707b3          	add	a5,a4,a5
   10278:	0007a783          	lw	a5,0(a5)
   1027c:	00078513          	mv	a0,a5
   10280:	048000ef          	jal	102c8 <print_d>
   10284:	02000513          	li	a0,32
   10288:	090000ef          	jal	10318 <print_c>
   1028c:	fec42783          	lw	a5,-20(s0)
   10290:	00178793          	add	a5,a5,1
   10294:	fef42623          	sw	a5,-20(s0)
   10298:	fec42703          	lw	a4,-20(s0)
   1029c:	00900793          	li	a5,9
   102a0:	fce7d2e3          	bge	a5,a4,10264 <main+0xdc>
   102a4:	00a00513          	li	a0,10
   102a8:	070000ef          	jal	10318 <print_c>
   102ac:	098000ef          	jal	10344 <exit_proc>
   102b0:	00000793          	li	a5,0
   102b4:	00078513          	mv	a0,a5
   102b8:	01c12083          	lw	ra,28(sp)
   102bc:	01812403          	lw	s0,24(sp)
   102c0:	02010113          	add	sp,sp,32
   102c4:	00008067          	ret

000102c8 <print_d>:
   102c8:	fe010113          	add	sp,sp,-32
   102cc:	00812e23          	sw	s0,28(sp)
   102d0:	02010413          	add	s0,sp,32
   102d4:	fea42623          	sw	a0,-20(s0)
   102d8:	00200893          	li	a7,2
   102dc:	00000073          	ecall
   102e0:	00000013          	nop
   102e4:	01c12403          	lw	s0,28(sp)
   102e8:	02010113          	add	sp,sp,32
   102ec:	00008067          	ret

000102f0 <print_s>:
   102f0:	fe010113          	add	sp,sp,-32
   102f4:	00812e23          	sw	s0,28(sp)
   102f8:	02010413          	add	s0,sp,32
   102fc:	fea42623          	sw	a0,-20(s0)
   10300:	00000893          	li	a7,0
   10304:	00000073          	ecall
   10308:	00000013          	nop
   1030c:	01c12403          	lw	s0,28(sp)
   10310:	02010113          	add	sp,sp,32
   10314:	00008067          	ret

00010318 <print_c>:
   10318:	fe010113          	add	sp,sp,-32
   1031c:	00812e23          	sw	s0,28(sp)
   10320:	02010413          	add	s0,sp,32
   10324:	00050793          	mv	a5,a0
   10328:	fef407a3          	sb	a5,-17(s0)
   1032c:	00100893          	li	a7,1
   10330:	00000073          	ecall
   10334:	00000013          	nop
   10338:	01c12403          	lw	s0,28(sp)
   1033c:	02010113          	add	sp,sp,32
   10340:	00008067          	ret

00010344 <exit_proc>:
   10344:	ff010113          	add	sp,sp,-16
   10348:	00812623          	sw	s0,12(sp)
   1034c:	01010413          	add	s0,sp,16
   10350:	00300893          	li	a7,3
   10354:	00000073          	ecall
   10358:	00000013          	nop
   1035c:	00c12403          	lw	s0,12(sp)
   10360:	01010113          	add	sp,sp,16
   10364:	00008067          	ret

00010368 <read_char>:
   10368:	fe010113          	add	sp,sp,-32
   1036c:	00812e23          	sw	s0,28(sp)
   10370:	02010413          	add	s0,sp,32
   10374:	00400893          	li	a7,4
   10378:	00000073          	ecall
   1037c:	00050793          	mv	a5,a0
   10380:	fef407a3          	sb	a5,-17(s0)
   10384:	fef44783          	lbu	a5,-17(s0)
   10388:	00078513          	mv	a0,a5
   1038c:	01c12403          	lw	s0,28(sp)
   10390:	02010113          	add	sp,sp,32
   10394:	00008067          	ret

00010398 <read_num>:
   10398:	fe010113          	add	sp,sp,-32
   1039c:	00812e23          	sw	s0,28(sp)
   103a0:	02010413          	add	s0,sp,32
   103a4:	00500893          	li	a7,5
   103a8:	00000073          	ecall
   103ac:	00050713          	mv	a4,a0
   103b0:	fee42423          	sw	a4,-24(s0)
   103b4:	fef42623          	sw	a5,-20(s0)
   103b8:	fe842703          	lw	a4,-24(s0)
   103bc:	fec42783          	lw	a5,-20(s0)
   103c0:	00070513          	mv	a0,a4
   103c4:	00078593          	mv	a1,a5
   103c8:	01c12403          	lw	s0,28(sp)
   103cc:	02010113          	add	sp,sp,32
   103d0:	00008067          	ret

000103d4 <__fp_lock>:
   103d4:	00000513          	li	a0,0
   103d8:	00008067          	ret

000103dc <stdio_exit_handler>:
   103dc:	000125b7          	lui	a1,0x12
   103e0:	00013537          	lui	a0,0x13
   103e4:	82818613          	add	a2,gp,-2008 # 131f0 <__sglue>
   103e8:	a6458593          	add	a1,a1,-1436 # 11a64 <_fclose_r>
   103ec:	20050513          	add	a0,a0,512 # 13200 <_impure_data>
   103f0:	33c0006f          	j	1072c <_fwalk_sglue>

000103f4 <cleanup_stdio>:
   103f4:	00452583          	lw	a1,4(a0)
   103f8:	ff010113          	add	sp,sp,-16
   103fc:	00812423          	sw	s0,8(sp)
   10400:	00112623          	sw	ra,12(sp)
   10404:	da818793          	add	a5,gp,-600 # 13770 <__sf>
   10408:	00050413          	mv	s0,a0
   1040c:	00f58463          	beq	a1,a5,10414 <cleanup_stdio+0x20>
   10410:	654010ef          	jal	11a64 <_fclose_r>
   10414:	00842583          	lw	a1,8(s0)
   10418:	e1018793          	add	a5,gp,-496 # 137d8 <__sf+0x68>
   1041c:	00f58663          	beq	a1,a5,10428 <cleanup_stdio+0x34>
   10420:	00040513          	mv	a0,s0
   10424:	640010ef          	jal	11a64 <_fclose_r>
   10428:	00c42583          	lw	a1,12(s0)
   1042c:	e7818793          	add	a5,gp,-392 # 13840 <__sf+0xd0>
   10430:	00f58c63          	beq	a1,a5,10448 <cleanup_stdio+0x54>
   10434:	00040513          	mv	a0,s0
   10438:	00812403          	lw	s0,8(sp)
   1043c:	00c12083          	lw	ra,12(sp)
   10440:	01010113          	add	sp,sp,16
   10444:	6200106f          	j	11a64 <_fclose_r>
   10448:	00c12083          	lw	ra,12(sp)
   1044c:	00812403          	lw	s0,8(sp)
   10450:	01010113          	add	sp,sp,16
   10454:	00008067          	ret

00010458 <__fp_unlock>:
   10458:	00000513          	li	a0,0
   1045c:	00008067          	ret

00010460 <global_stdio_init.part.0>:
   10460:	fe010113          	add	sp,sp,-32
   10464:	000107b7          	lui	a5,0x10
   10468:	00812c23          	sw	s0,24(sp)
   1046c:	3dc78793          	add	a5,a5,988 # 103dc <stdio_exit_handler>
   10470:	da818413          	add	s0,gp,-600 # 13770 <__sf>
   10474:	00112e23          	sw	ra,28(sp)
   10478:	00912a23          	sw	s1,20(sp)
   1047c:	01212823          	sw	s2,16(sp)
   10480:	01312623          	sw	s3,12(sp)
   10484:	01412423          	sw	s4,8(sp)
   10488:	d6f1a823          	sw	a5,-656(gp) # 13738 <__stdio_exit_handler>
   1048c:	00800613          	li	a2,8
   10490:	00400793          	li	a5,4
   10494:	00000593          	li	a1,0
   10498:	e0418513          	add	a0,gp,-508 # 137cc <__sf+0x5c>
   1049c:	00f42623          	sw	a5,12(s0)
   104a0:	00042023          	sw	zero,0(s0)
   104a4:	00042223          	sw	zero,4(s0)
   104a8:	00042423          	sw	zero,8(s0)
   104ac:	06042223          	sw	zero,100(s0)
   104b0:	00042823          	sw	zero,16(s0)
   104b4:	00042a23          	sw	zero,20(s0)
   104b8:	00042c23          	sw	zero,24(s0)
   104bc:	784000ef          	jal	10c40 <memset>
   104c0:	000107b7          	lui	a5,0x10
   104c4:	00010a37          	lui	s4,0x10
   104c8:	000119b7          	lui	s3,0x11
   104cc:	00011937          	lui	s2,0x11
   104d0:	000114b7          	lui	s1,0x11
   104d4:	7e0a0a13          	add	s4,s4,2016 # 107e0 <__sread>
   104d8:	84498993          	add	s3,s3,-1980 # 10844 <__swrite>
   104dc:	8cc90913          	add	s2,s2,-1844 # 108cc <__sseek>
   104e0:	94448493          	add	s1,s1,-1724 # 10944 <__sclose>
   104e4:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   104e8:	00800613          	li	a2,8
   104ec:	00000593          	li	a1,0
   104f0:	e6c18513          	add	a0,gp,-404 # 13834 <__sf+0xc4>
   104f4:	03442023          	sw	s4,32(s0)
   104f8:	03342223          	sw	s3,36(s0)
   104fc:	03242423          	sw	s2,40(s0)
   10500:	02942623          	sw	s1,44(s0)
   10504:	06f42a23          	sw	a5,116(s0)
   10508:	00842e23          	sw	s0,28(s0)
   1050c:	06042423          	sw	zero,104(s0)
   10510:	06042623          	sw	zero,108(s0)
   10514:	06042823          	sw	zero,112(s0)
   10518:	0c042623          	sw	zero,204(s0)
   1051c:	06042c23          	sw	zero,120(s0)
   10520:	06042e23          	sw	zero,124(s0)
   10524:	08042023          	sw	zero,128(s0)
   10528:	718000ef          	jal	10c40 <memset>
   1052c:	000207b7          	lui	a5,0x20
   10530:	01278793          	add	a5,a5,18 # 20012 <__BSS_END__+0xc5b2>
   10534:	e1018713          	add	a4,gp,-496 # 137d8 <__sf+0x68>
   10538:	00800613          	li	a2,8
   1053c:	00000593          	li	a1,0
   10540:	ed418513          	add	a0,gp,-300 # 1389c <__sf+0x12c>
   10544:	09442423          	sw	s4,136(s0)
   10548:	09342623          	sw	s3,140(s0)
   1054c:	09242823          	sw	s2,144(s0)
   10550:	08942a23          	sw	s1,148(s0)
   10554:	0cf42e23          	sw	a5,220(s0)
   10558:	08e42223          	sw	a4,132(s0)
   1055c:	0c042823          	sw	zero,208(s0)
   10560:	0c042a23          	sw	zero,212(s0)
   10564:	0c042c23          	sw	zero,216(s0)
   10568:	12042a23          	sw	zero,308(s0)
   1056c:	0e042023          	sw	zero,224(s0)
   10570:	0e042223          	sw	zero,228(s0)
   10574:	0e042423          	sw	zero,232(s0)
   10578:	6c8000ef          	jal	10c40 <memset>
   1057c:	e7818793          	add	a5,gp,-392 # 13840 <__sf+0xd0>
   10580:	0f442823          	sw	s4,240(s0)
   10584:	0f342a23          	sw	s3,244(s0)
   10588:	0f242c23          	sw	s2,248(s0)
   1058c:	0e942e23          	sw	s1,252(s0)
   10590:	01c12083          	lw	ra,28(sp)
   10594:	0ef42623          	sw	a5,236(s0)
   10598:	01812403          	lw	s0,24(sp)
   1059c:	01412483          	lw	s1,20(sp)
   105a0:	01012903          	lw	s2,16(sp)
   105a4:	00c12983          	lw	s3,12(sp)
   105a8:	00812a03          	lw	s4,8(sp)
   105ac:	02010113          	add	sp,sp,32
   105b0:	00008067          	ret

000105b4 <__sfp>:
   105b4:	d701a783          	lw	a5,-656(gp) # 13738 <__stdio_exit_handler>
   105b8:	fe010113          	add	sp,sp,-32
   105bc:	01312623          	sw	s3,12(sp)
   105c0:	00112e23          	sw	ra,28(sp)
   105c4:	00812c23          	sw	s0,24(sp)
   105c8:	00912a23          	sw	s1,20(sp)
   105cc:	01212823          	sw	s2,16(sp)
   105d0:	00050993          	mv	s3,a0
   105d4:	0e078663          	beqz	a5,106c0 <__sfp+0x10c>
   105d8:	82818913          	add	s2,gp,-2008 # 131f0 <__sglue>
   105dc:	fff00493          	li	s1,-1
   105e0:	00492783          	lw	a5,4(s2)
   105e4:	00892403          	lw	s0,8(s2)
   105e8:	fff78793          	add	a5,a5,-1
   105ec:	0007d863          	bgez	a5,105fc <__sfp+0x48>
   105f0:	0800006f          	j	10670 <__sfp+0xbc>
   105f4:	06840413          	add	s0,s0,104
   105f8:	06978c63          	beq	a5,s1,10670 <__sfp+0xbc>
   105fc:	00c41703          	lh	a4,12(s0)
   10600:	fff78793          	add	a5,a5,-1
   10604:	fe0718e3          	bnez	a4,105f4 <__sfp+0x40>
   10608:	ffff07b7          	lui	a5,0xffff0
   1060c:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc5a1>
   10610:	00f42623          	sw	a5,12(s0)
   10614:	06042223          	sw	zero,100(s0)
   10618:	00042023          	sw	zero,0(s0)
   1061c:	00042423          	sw	zero,8(s0)
   10620:	00042223          	sw	zero,4(s0)
   10624:	00042823          	sw	zero,16(s0)
   10628:	00042a23          	sw	zero,20(s0)
   1062c:	00042c23          	sw	zero,24(s0)
   10630:	00800613          	li	a2,8
   10634:	00000593          	li	a1,0
   10638:	05c40513          	add	a0,s0,92
   1063c:	604000ef          	jal	10c40 <memset>
   10640:	02042823          	sw	zero,48(s0)
   10644:	02042a23          	sw	zero,52(s0)
   10648:	04042223          	sw	zero,68(s0)
   1064c:	04042423          	sw	zero,72(s0)
   10650:	01c12083          	lw	ra,28(sp)
   10654:	00040513          	mv	a0,s0
   10658:	01812403          	lw	s0,24(sp)
   1065c:	01412483          	lw	s1,20(sp)
   10660:	01012903          	lw	s2,16(sp)
   10664:	00c12983          	lw	s3,12(sp)
   10668:	02010113          	add	sp,sp,32
   1066c:	00008067          	ret
   10670:	00092403          	lw	s0,0(s2)
   10674:	00040663          	beqz	s0,10680 <__sfp+0xcc>
   10678:	00040913          	mv	s2,s0
   1067c:	f65ff06f          	j	105e0 <__sfp+0x2c>
   10680:	1ac00593          	li	a1,428
   10684:	00098513          	mv	a0,s3
   10688:	419000ef          	jal	112a0 <_malloc_r>
   1068c:	00050413          	mv	s0,a0
   10690:	02050c63          	beqz	a0,106c8 <__sfp+0x114>
   10694:	00c50513          	add	a0,a0,12
   10698:	00400793          	li	a5,4
   1069c:	00042023          	sw	zero,0(s0)
   106a0:	00f42223          	sw	a5,4(s0)
   106a4:	00a42423          	sw	a0,8(s0)
   106a8:	1a000613          	li	a2,416
   106ac:	00000593          	li	a1,0
   106b0:	590000ef          	jal	10c40 <memset>
   106b4:	00892023          	sw	s0,0(s2)
   106b8:	00040913          	mv	s2,s0
   106bc:	f25ff06f          	j	105e0 <__sfp+0x2c>
   106c0:	da1ff0ef          	jal	10460 <global_stdio_init.part.0>
   106c4:	f15ff06f          	j	105d8 <__sfp+0x24>
   106c8:	00092023          	sw	zero,0(s2)
   106cc:	00c00793          	li	a5,12
   106d0:	00f9a023          	sw	a5,0(s3)
   106d4:	f7dff06f          	j	10650 <__sfp+0x9c>

000106d8 <__sinit>:
   106d8:	03452783          	lw	a5,52(a0)
   106dc:	00078463          	beqz	a5,106e4 <__sinit+0xc>
   106e0:	00008067          	ret
   106e4:	d701a703          	lw	a4,-656(gp) # 13738 <__stdio_exit_handler>
   106e8:	000107b7          	lui	a5,0x10
   106ec:	3f478793          	add	a5,a5,1012 # 103f4 <cleanup_stdio>
   106f0:	02f52a23          	sw	a5,52(a0)
   106f4:	fe0716e3          	bnez	a4,106e0 <__sinit+0x8>
   106f8:	d69ff06f          	j	10460 <global_stdio_init.part.0>

000106fc <__sfp_lock_acquire>:
   106fc:	00008067          	ret

00010700 <__sfp_lock_release>:
   10700:	00008067          	ret

00010704 <__fp_lock_all>:
   10704:	000105b7          	lui	a1,0x10
   10708:	82818613          	add	a2,gp,-2008 # 131f0 <__sglue>
   1070c:	3d458593          	add	a1,a1,980 # 103d4 <__fp_lock>
   10710:	00000513          	li	a0,0
   10714:	0180006f          	j	1072c <_fwalk_sglue>

00010718 <__fp_unlock_all>:
   10718:	000105b7          	lui	a1,0x10
   1071c:	82818613          	add	a2,gp,-2008 # 131f0 <__sglue>
   10720:	45858593          	add	a1,a1,1112 # 10458 <__fp_unlock>
   10724:	00000513          	li	a0,0
   10728:	0040006f          	j	1072c <_fwalk_sglue>

0001072c <_fwalk_sglue>:
   1072c:	fd010113          	add	sp,sp,-48
   10730:	03212023          	sw	s2,32(sp)
   10734:	01312e23          	sw	s3,28(sp)
   10738:	01412c23          	sw	s4,24(sp)
   1073c:	01512a23          	sw	s5,20(sp)
   10740:	01612823          	sw	s6,16(sp)
   10744:	01712623          	sw	s7,12(sp)
   10748:	02112623          	sw	ra,44(sp)
   1074c:	02812423          	sw	s0,40(sp)
   10750:	02912223          	sw	s1,36(sp)
   10754:	00050b13          	mv	s6,a0
   10758:	00058b93          	mv	s7,a1
   1075c:	00060a93          	mv	s5,a2
   10760:	00000a13          	li	s4,0
   10764:	00100993          	li	s3,1
   10768:	fff00913          	li	s2,-1
   1076c:	004aa483          	lw	s1,4(s5)
   10770:	008aa403          	lw	s0,8(s5)
   10774:	fff48493          	add	s1,s1,-1
   10778:	0204c863          	bltz	s1,107a8 <_fwalk_sglue+0x7c>
   1077c:	00c45783          	lhu	a5,12(s0)
   10780:	00f9fe63          	bgeu	s3,a5,1079c <_fwalk_sglue+0x70>
   10784:	00e41783          	lh	a5,14(s0)
   10788:	00040593          	mv	a1,s0
   1078c:	000b0513          	mv	a0,s6
   10790:	01278663          	beq	a5,s2,1079c <_fwalk_sglue+0x70>
   10794:	000b80e7          	jalr	s7
   10798:	00aa6a33          	or	s4,s4,a0
   1079c:	fff48493          	add	s1,s1,-1
   107a0:	06840413          	add	s0,s0,104
   107a4:	fd249ce3          	bne	s1,s2,1077c <_fwalk_sglue+0x50>
   107a8:	000aaa83          	lw	s5,0(s5)
   107ac:	fc0a90e3          	bnez	s5,1076c <_fwalk_sglue+0x40>
   107b0:	02c12083          	lw	ra,44(sp)
   107b4:	02812403          	lw	s0,40(sp)
   107b8:	02412483          	lw	s1,36(sp)
   107bc:	02012903          	lw	s2,32(sp)
   107c0:	01c12983          	lw	s3,28(sp)
   107c4:	01412a83          	lw	s5,20(sp)
   107c8:	01012b03          	lw	s6,16(sp)
   107cc:	00c12b83          	lw	s7,12(sp)
   107d0:	000a0513          	mv	a0,s4
   107d4:	01812a03          	lw	s4,24(sp)
   107d8:	03010113          	add	sp,sp,48
   107dc:	00008067          	ret

000107e0 <__sread>:
   107e0:	ff010113          	add	sp,sp,-16
   107e4:	00812423          	sw	s0,8(sp)
   107e8:	00058413          	mv	s0,a1
   107ec:	00e59583          	lh	a1,14(a1)
   107f0:	00112623          	sw	ra,12(sp)
   107f4:	2e0000ef          	jal	10ad4 <_read_r>
   107f8:	02054063          	bltz	a0,10818 <__sread+0x38>
   107fc:	05042783          	lw	a5,80(s0)
   10800:	00c12083          	lw	ra,12(sp)
   10804:	00a787b3          	add	a5,a5,a0
   10808:	04f42823          	sw	a5,80(s0)
   1080c:	00812403          	lw	s0,8(sp)
   10810:	01010113          	add	sp,sp,16
   10814:	00008067          	ret
   10818:	00c45783          	lhu	a5,12(s0)
   1081c:	fffff737          	lui	a4,0xfffff
   10820:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb59f>
   10824:	00e7f7b3          	and	a5,a5,a4
   10828:	00c12083          	lw	ra,12(sp)
   1082c:	00f41623          	sh	a5,12(s0)
   10830:	00812403          	lw	s0,8(sp)
   10834:	01010113          	add	sp,sp,16
   10838:	00008067          	ret

0001083c <__seofread>:
   1083c:	00000513          	li	a0,0
   10840:	00008067          	ret

00010844 <__swrite>:
   10844:	00c59783          	lh	a5,12(a1)
   10848:	fe010113          	add	sp,sp,-32
   1084c:	00812c23          	sw	s0,24(sp)
   10850:	00912a23          	sw	s1,20(sp)
   10854:	01212823          	sw	s2,16(sp)
   10858:	01312623          	sw	s3,12(sp)
   1085c:	00112e23          	sw	ra,28(sp)
   10860:	1007f713          	and	a4,a5,256
   10864:	00058413          	mv	s0,a1
   10868:	00050493          	mv	s1,a0
   1086c:	00060913          	mv	s2,a2
   10870:	00068993          	mv	s3,a3
   10874:	04071063          	bnez	a4,108b4 <__swrite+0x70>
   10878:	fffff737          	lui	a4,0xfffff
   1087c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb59f>
   10880:	00e7f7b3          	and	a5,a5,a4
   10884:	00e41583          	lh	a1,14(s0)
   10888:	00f41623          	sh	a5,12(s0)
   1088c:	01812403          	lw	s0,24(sp)
   10890:	01c12083          	lw	ra,28(sp)
   10894:	00098693          	mv	a3,s3
   10898:	00090613          	mv	a2,s2
   1089c:	00c12983          	lw	s3,12(sp)
   108a0:	01012903          	lw	s2,16(sp)
   108a4:	00048513          	mv	a0,s1
   108a8:	01412483          	lw	s1,20(sp)
   108ac:	02010113          	add	sp,sp,32
   108b0:	28c0006f          	j	10b3c <_write_r>
   108b4:	00e59583          	lh	a1,14(a1)
   108b8:	00200693          	li	a3,2
   108bc:	00000613          	li	a2,0
   108c0:	1ac000ef          	jal	10a6c <_lseek_r>
   108c4:	00c41783          	lh	a5,12(s0)
   108c8:	fb1ff06f          	j	10878 <__swrite+0x34>

000108cc <__sseek>:
   108cc:	ff010113          	add	sp,sp,-16
   108d0:	00812423          	sw	s0,8(sp)
   108d4:	00058413          	mv	s0,a1
   108d8:	00e59583          	lh	a1,14(a1)
   108dc:	00112623          	sw	ra,12(sp)
   108e0:	18c000ef          	jal	10a6c <_lseek_r>
   108e4:	fff00793          	li	a5,-1
   108e8:	02f50863          	beq	a0,a5,10918 <__sseek+0x4c>
   108ec:	00c45783          	lhu	a5,12(s0)
   108f0:	00001737          	lui	a4,0x1
   108f4:	00c12083          	lw	ra,12(sp)
   108f8:	00e7e7b3          	or	a5,a5,a4
   108fc:	01079793          	sll	a5,a5,0x10
   10900:	4107d793          	sra	a5,a5,0x10
   10904:	04a42823          	sw	a0,80(s0)
   10908:	00f41623          	sh	a5,12(s0)
   1090c:	00812403          	lw	s0,8(sp)
   10910:	01010113          	add	sp,sp,16
   10914:	00008067          	ret
   10918:	00c45783          	lhu	a5,12(s0)
   1091c:	fffff737          	lui	a4,0xfffff
   10920:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb59f>
   10924:	00e7f7b3          	and	a5,a5,a4
   10928:	01079793          	sll	a5,a5,0x10
   1092c:	4107d793          	sra	a5,a5,0x10
   10930:	00c12083          	lw	ra,12(sp)
   10934:	00f41623          	sh	a5,12(s0)
   10938:	00812403          	lw	s0,8(sp)
   1093c:	01010113          	add	sp,sp,16
   10940:	00008067          	ret

00010944 <__sclose>:
   10944:	00e59583          	lh	a1,14(a1)
   10948:	0040006f          	j	1094c <_close_r>

0001094c <_close_r>:
   1094c:	ff010113          	add	sp,sp,-16
   10950:	00812423          	sw	s0,8(sp)
   10954:	00912223          	sw	s1,4(sp)
   10958:	00050413          	mv	s0,a0
   1095c:	00058513          	mv	a0,a1
   10960:	00112623          	sw	ra,12(sp)
   10964:	d601aa23          	sw	zero,-652(gp) # 1373c <errno>
   10968:	68c010ef          	jal	11ff4 <_close>
   1096c:	fff00793          	li	a5,-1
   10970:	00f50c63          	beq	a0,a5,10988 <_close_r+0x3c>
   10974:	00c12083          	lw	ra,12(sp)
   10978:	00812403          	lw	s0,8(sp)
   1097c:	00412483          	lw	s1,4(sp)
   10980:	01010113          	add	sp,sp,16
   10984:	00008067          	ret
   10988:	d741a783          	lw	a5,-652(gp) # 1373c <errno>
   1098c:	fe0784e3          	beqz	a5,10974 <_close_r+0x28>
   10990:	00c12083          	lw	ra,12(sp)
   10994:	00f42023          	sw	a5,0(s0)
   10998:	00812403          	lw	s0,8(sp)
   1099c:	00412483          	lw	s1,4(sp)
   109a0:	01010113          	add	sp,sp,16
   109a4:	00008067          	ret

000109a8 <_reclaim_reent>:
   109a8:	d641a783          	lw	a5,-668(gp) # 1372c <_impure_ptr>
   109ac:	0aa78e63          	beq	a5,a0,10a68 <_reclaim_reent+0xc0>
   109b0:	04452583          	lw	a1,68(a0)
   109b4:	fe010113          	add	sp,sp,-32
   109b8:	00912a23          	sw	s1,20(sp)
   109bc:	00112e23          	sw	ra,28(sp)
   109c0:	00050493          	mv	s1,a0
   109c4:	04058c63          	beqz	a1,10a1c <_reclaim_reent+0x74>
   109c8:	01212823          	sw	s2,16(sp)
   109cc:	01312623          	sw	s3,12(sp)
   109d0:	00812c23          	sw	s0,24(sp)
   109d4:	00000913          	li	s2,0
   109d8:	08000993          	li	s3,128
   109dc:	012587b3          	add	a5,a1,s2
   109e0:	0007a403          	lw	s0,0(a5)
   109e4:	00040e63          	beqz	s0,10a00 <_reclaim_reent+0x58>
   109e8:	00040593          	mv	a1,s0
   109ec:	00042403          	lw	s0,0(s0)
   109f0:	00048513          	mv	a0,s1
   109f4:	5a8000ef          	jal	10f9c <_free_r>
   109f8:	fe0418e3          	bnez	s0,109e8 <_reclaim_reent+0x40>
   109fc:	0444a583          	lw	a1,68(s1)
   10a00:	00490913          	add	s2,s2,4
   10a04:	fd391ce3          	bne	s2,s3,109dc <_reclaim_reent+0x34>
   10a08:	00048513          	mv	a0,s1
   10a0c:	590000ef          	jal	10f9c <_free_r>
   10a10:	01812403          	lw	s0,24(sp)
   10a14:	01012903          	lw	s2,16(sp)
   10a18:	00c12983          	lw	s3,12(sp)
   10a1c:	0384a583          	lw	a1,56(s1)
   10a20:	00058663          	beqz	a1,10a2c <_reclaim_reent+0x84>
   10a24:	00048513          	mv	a0,s1
   10a28:	574000ef          	jal	10f9c <_free_r>
   10a2c:	04c4a583          	lw	a1,76(s1)
   10a30:	00058663          	beqz	a1,10a3c <_reclaim_reent+0x94>
   10a34:	00048513          	mv	a0,s1
   10a38:	564000ef          	jal	10f9c <_free_r>
   10a3c:	0344a783          	lw	a5,52(s1)
   10a40:	00078c63          	beqz	a5,10a58 <_reclaim_reent+0xb0>
   10a44:	01c12083          	lw	ra,28(sp)
   10a48:	00048513          	mv	a0,s1
   10a4c:	01412483          	lw	s1,20(sp)
   10a50:	02010113          	add	sp,sp,32
   10a54:	00078067          	jr	a5
   10a58:	01c12083          	lw	ra,28(sp)
   10a5c:	01412483          	lw	s1,20(sp)
   10a60:	02010113          	add	sp,sp,32
   10a64:	00008067          	ret
   10a68:	00008067          	ret

00010a6c <_lseek_r>:
   10a6c:	ff010113          	add	sp,sp,-16
   10a70:	00058713          	mv	a4,a1
   10a74:	00812423          	sw	s0,8(sp)
   10a78:	00912223          	sw	s1,4(sp)
   10a7c:	00060593          	mv	a1,a2
   10a80:	00050413          	mv	s0,a0
   10a84:	00068613          	mv	a2,a3
   10a88:	00070513          	mv	a0,a4
   10a8c:	00112623          	sw	ra,12(sp)
   10a90:	d601aa23          	sw	zero,-652(gp) # 1373c <errno>
   10a94:	5d4010ef          	jal	12068 <_lseek>
   10a98:	fff00793          	li	a5,-1
   10a9c:	00f50c63          	beq	a0,a5,10ab4 <_lseek_r+0x48>
   10aa0:	00c12083          	lw	ra,12(sp)
   10aa4:	00812403          	lw	s0,8(sp)
   10aa8:	00412483          	lw	s1,4(sp)
   10aac:	01010113          	add	sp,sp,16
   10ab0:	00008067          	ret
   10ab4:	d741a783          	lw	a5,-652(gp) # 1373c <errno>
   10ab8:	fe0784e3          	beqz	a5,10aa0 <_lseek_r+0x34>
   10abc:	00c12083          	lw	ra,12(sp)
   10ac0:	00f42023          	sw	a5,0(s0)
   10ac4:	00812403          	lw	s0,8(sp)
   10ac8:	00412483          	lw	s1,4(sp)
   10acc:	01010113          	add	sp,sp,16
   10ad0:	00008067          	ret

00010ad4 <_read_r>:
   10ad4:	ff010113          	add	sp,sp,-16
   10ad8:	00058713          	mv	a4,a1
   10adc:	00812423          	sw	s0,8(sp)
   10ae0:	00912223          	sw	s1,4(sp)
   10ae4:	00060593          	mv	a1,a2
   10ae8:	00050413          	mv	s0,a0
   10aec:	00068613          	mv	a2,a3
   10af0:	00070513          	mv	a0,a4
   10af4:	00112623          	sw	ra,12(sp)
   10af8:	d601aa23          	sw	zero,-652(gp) # 1373c <errno>
   10afc:	5b0010ef          	jal	120ac <_read>
   10b00:	fff00793          	li	a5,-1
   10b04:	00f50c63          	beq	a0,a5,10b1c <_read_r+0x48>
   10b08:	00c12083          	lw	ra,12(sp)
   10b0c:	00812403          	lw	s0,8(sp)
   10b10:	00412483          	lw	s1,4(sp)
   10b14:	01010113          	add	sp,sp,16
   10b18:	00008067          	ret
   10b1c:	d741a783          	lw	a5,-652(gp) # 1373c <errno>
   10b20:	fe0784e3          	beqz	a5,10b08 <_read_r+0x34>
   10b24:	00c12083          	lw	ra,12(sp)
   10b28:	00f42023          	sw	a5,0(s0)
   10b2c:	00812403          	lw	s0,8(sp)
   10b30:	00412483          	lw	s1,4(sp)
   10b34:	01010113          	add	sp,sp,16
   10b38:	00008067          	ret

00010b3c <_write_r>:
   10b3c:	ff010113          	add	sp,sp,-16
   10b40:	00058713          	mv	a4,a1
   10b44:	00812423          	sw	s0,8(sp)
   10b48:	00912223          	sw	s1,4(sp)
   10b4c:	00060593          	mv	a1,a2
   10b50:	00050413          	mv	s0,a0
   10b54:	00068613          	mv	a2,a3
   10b58:	00070513          	mv	a0,a4
   10b5c:	00112623          	sw	ra,12(sp)
   10b60:	d601aa23          	sw	zero,-652(gp) # 1373c <errno>
   10b64:	604010ef          	jal	12168 <_write>
   10b68:	fff00793          	li	a5,-1
   10b6c:	00f50c63          	beq	a0,a5,10b84 <_write_r+0x48>
   10b70:	00c12083          	lw	ra,12(sp)
   10b74:	00812403          	lw	s0,8(sp)
   10b78:	00412483          	lw	s1,4(sp)
   10b7c:	01010113          	add	sp,sp,16
   10b80:	00008067          	ret
   10b84:	d741a783          	lw	a5,-652(gp) # 1373c <errno>
   10b88:	fe0784e3          	beqz	a5,10b70 <_write_r+0x34>
   10b8c:	00c12083          	lw	ra,12(sp)
   10b90:	00f42023          	sw	a5,0(s0)
   10b94:	00812403          	lw	s0,8(sp)
   10b98:	00412483          	lw	s1,4(sp)
   10b9c:	01010113          	add	sp,sp,16
   10ba0:	00008067          	ret

00010ba4 <__libc_init_array>:
   10ba4:	ff010113          	add	sp,sp,-16
   10ba8:	00812423          	sw	s0,8(sp)
   10bac:	000137b7          	lui	a5,0x13
   10bb0:	00013437          	lui	s0,0x13
   10bb4:	01212023          	sw	s2,0(sp)
   10bb8:	1b878793          	add	a5,a5,440 # 131b8 <__init_array_start>
   10bbc:	1b840713          	add	a4,s0,440 # 131b8 <__init_array_start>
   10bc0:	00112623          	sw	ra,12(sp)
   10bc4:	00912223          	sw	s1,4(sp)
   10bc8:	40e78933          	sub	s2,a5,a4
   10bcc:	02e78263          	beq	a5,a4,10bf0 <__libc_init_array+0x4c>
   10bd0:	40295913          	sra	s2,s2,0x2
   10bd4:	1b840413          	add	s0,s0,440
   10bd8:	00000493          	li	s1,0
   10bdc:	00042783          	lw	a5,0(s0)
   10be0:	00148493          	add	s1,s1,1
   10be4:	00440413          	add	s0,s0,4
   10be8:	000780e7          	jalr	a5
   10bec:	ff24e8e3          	bltu	s1,s2,10bdc <__libc_init_array+0x38>
   10bf0:	00013437          	lui	s0,0x13
   10bf4:	000137b7          	lui	a5,0x13
   10bf8:	1c078793          	add	a5,a5,448 # 131c0 <__do_global_dtors_aux_fini_array_entry>
   10bfc:	1b840713          	add	a4,s0,440 # 131b8 <__init_array_start>
   10c00:	40e78933          	sub	s2,a5,a4
   10c04:	40295913          	sra	s2,s2,0x2
   10c08:	02e78063          	beq	a5,a4,10c28 <__libc_init_array+0x84>
   10c0c:	1b840413          	add	s0,s0,440
   10c10:	00000493          	li	s1,0
   10c14:	00042783          	lw	a5,0(s0)
   10c18:	00148493          	add	s1,s1,1
   10c1c:	00440413          	add	s0,s0,4
   10c20:	000780e7          	jalr	a5
   10c24:	ff24e8e3          	bltu	s1,s2,10c14 <__libc_init_array+0x70>
   10c28:	00c12083          	lw	ra,12(sp)
   10c2c:	00812403          	lw	s0,8(sp)
   10c30:	00412483          	lw	s1,4(sp)
   10c34:	00012903          	lw	s2,0(sp)
   10c38:	01010113          	add	sp,sp,16
   10c3c:	00008067          	ret

00010c40 <memset>:
   10c40:	00f00313          	li	t1,15
   10c44:	00050713          	mv	a4,a0
   10c48:	02c37e63          	bgeu	t1,a2,10c84 <memset+0x44>
   10c4c:	00f77793          	and	a5,a4,15
   10c50:	0a079063          	bnez	a5,10cf0 <memset+0xb0>
   10c54:	08059263          	bnez	a1,10cd8 <memset+0x98>
   10c58:	ff067693          	and	a3,a2,-16
   10c5c:	00f67613          	and	a2,a2,15
   10c60:	00e686b3          	add	a3,a3,a4
   10c64:	00b72023          	sw	a1,0(a4)
   10c68:	00b72223          	sw	a1,4(a4)
   10c6c:	00b72423          	sw	a1,8(a4)
   10c70:	00b72623          	sw	a1,12(a4)
   10c74:	01070713          	add	a4,a4,16
   10c78:	fed766e3          	bltu	a4,a3,10c64 <memset+0x24>
   10c7c:	00061463          	bnez	a2,10c84 <memset+0x44>
   10c80:	00008067          	ret
   10c84:	40c306b3          	sub	a3,t1,a2
   10c88:	00269693          	sll	a3,a3,0x2
   10c8c:	00000297          	auipc	t0,0x0
   10c90:	005686b3          	add	a3,a3,t0
   10c94:	00c68067          	jr	12(a3)
   10c98:	00b70723          	sb	a1,14(a4)
   10c9c:	00b706a3          	sb	a1,13(a4)
   10ca0:	00b70623          	sb	a1,12(a4)
   10ca4:	00b705a3          	sb	a1,11(a4)
   10ca8:	00b70523          	sb	a1,10(a4)
   10cac:	00b704a3          	sb	a1,9(a4)
   10cb0:	00b70423          	sb	a1,8(a4)
   10cb4:	00b703a3          	sb	a1,7(a4)
   10cb8:	00b70323          	sb	a1,6(a4)
   10cbc:	00b702a3          	sb	a1,5(a4)
   10cc0:	00b70223          	sb	a1,4(a4)
   10cc4:	00b701a3          	sb	a1,3(a4)
   10cc8:	00b70123          	sb	a1,2(a4)
   10ccc:	00b700a3          	sb	a1,1(a4)
   10cd0:	00b70023          	sb	a1,0(a4)
   10cd4:	00008067          	ret
   10cd8:	0ff5f593          	zext.b	a1,a1
   10cdc:	00859693          	sll	a3,a1,0x8
   10ce0:	00d5e5b3          	or	a1,a1,a3
   10ce4:	01059693          	sll	a3,a1,0x10
   10ce8:	00d5e5b3          	or	a1,a1,a3
   10cec:	f6dff06f          	j	10c58 <memset+0x18>
   10cf0:	00279693          	sll	a3,a5,0x2
   10cf4:	00000297          	auipc	t0,0x0
   10cf8:	005686b3          	add	a3,a3,t0
   10cfc:	00008293          	mv	t0,ra
   10d00:	fa0680e7          	jalr	-96(a3)
   10d04:	00028093          	mv	ra,t0
   10d08:	ff078793          	add	a5,a5,-16
   10d0c:	40f70733          	sub	a4,a4,a5
   10d10:	00f60633          	add	a2,a2,a5
   10d14:	f6c378e3          	bgeu	t1,a2,10c84 <memset+0x44>
   10d18:	f3dff06f          	j	10c54 <memset+0x14>

00010d1c <__call_exitprocs>:
   10d1c:	fd010113          	add	sp,sp,-48
   10d20:	01412c23          	sw	s4,24(sp)
   10d24:	03212023          	sw	s2,32(sp)
   10d28:	d781a903          	lw	s2,-648(gp) # 13740 <__atexit>
   10d2c:	02112623          	sw	ra,44(sp)
   10d30:	0a090863          	beqz	s2,10de0 <__call_exitprocs+0xc4>
   10d34:	01312e23          	sw	s3,28(sp)
   10d38:	01512a23          	sw	s5,20(sp)
   10d3c:	01612823          	sw	s6,16(sp)
   10d40:	01712623          	sw	s7,12(sp)
   10d44:	02812423          	sw	s0,40(sp)
   10d48:	02912223          	sw	s1,36(sp)
   10d4c:	01812423          	sw	s8,8(sp)
   10d50:	00050b13          	mv	s6,a0
   10d54:	00058b93          	mv	s7,a1
   10d58:	fff00993          	li	s3,-1
   10d5c:	00100a93          	li	s5,1
   10d60:	00492483          	lw	s1,4(s2)
   10d64:	fff48413          	add	s0,s1,-1
   10d68:	04044e63          	bltz	s0,10dc4 <__call_exitprocs+0xa8>
   10d6c:	00249493          	sll	s1,s1,0x2
   10d70:	009904b3          	add	s1,s2,s1
   10d74:	080b9063          	bnez	s7,10df4 <__call_exitprocs+0xd8>
   10d78:	00492783          	lw	a5,4(s2)
   10d7c:	0044a683          	lw	a3,4(s1)
   10d80:	fff78793          	add	a5,a5,-1
   10d84:	0a878c63          	beq	a5,s0,10e3c <__call_exitprocs+0x120>
   10d88:	0004a223          	sw	zero,4(s1)
   10d8c:	02068663          	beqz	a3,10db8 <__call_exitprocs+0x9c>
   10d90:	18892783          	lw	a5,392(s2)
   10d94:	008a9733          	sll	a4,s5,s0
   10d98:	00492c03          	lw	s8,4(s2)
   10d9c:	00f777b3          	and	a5,a4,a5
   10da0:	06079663          	bnez	a5,10e0c <__call_exitprocs+0xf0>
   10da4:	000680e7          	jalr	a3
   10da8:	00492703          	lw	a4,4(s2)
   10dac:	d781a783          	lw	a5,-648(gp) # 13740 <__atexit>
   10db0:	09871063          	bne	a4,s8,10e30 <__call_exitprocs+0x114>
   10db4:	07279e63          	bne	a5,s2,10e30 <__call_exitprocs+0x114>
   10db8:	fff40413          	add	s0,s0,-1
   10dbc:	ffc48493          	add	s1,s1,-4
   10dc0:	fb341ae3          	bne	s0,s3,10d74 <__call_exitprocs+0x58>
   10dc4:	02812403          	lw	s0,40(sp)
   10dc8:	02412483          	lw	s1,36(sp)
   10dcc:	01c12983          	lw	s3,28(sp)
   10dd0:	01412a83          	lw	s5,20(sp)
   10dd4:	01012b03          	lw	s6,16(sp)
   10dd8:	00c12b83          	lw	s7,12(sp)
   10ddc:	00812c03          	lw	s8,8(sp)
   10de0:	02c12083          	lw	ra,44(sp)
   10de4:	02012903          	lw	s2,32(sp)
   10de8:	01812a03          	lw	s4,24(sp)
   10dec:	03010113          	add	sp,sp,48
   10df0:	00008067          	ret
   10df4:	1044a783          	lw	a5,260(s1)
   10df8:	f97780e3          	beq	a5,s7,10d78 <__call_exitprocs+0x5c>
   10dfc:	fff40413          	add	s0,s0,-1
   10e00:	ffc48493          	add	s1,s1,-4
   10e04:	ff3418e3          	bne	s0,s3,10df4 <__call_exitprocs+0xd8>
   10e08:	fbdff06f          	j	10dc4 <__call_exitprocs+0xa8>
   10e0c:	18c92783          	lw	a5,396(s2)
   10e10:	0844a583          	lw	a1,132(s1)
   10e14:	00f77733          	and	a4,a4,a5
   10e18:	02071663          	bnez	a4,10e44 <__call_exitprocs+0x128>
   10e1c:	000b0513          	mv	a0,s6
   10e20:	000680e7          	jalr	a3
   10e24:	00492703          	lw	a4,4(s2)
   10e28:	d781a783          	lw	a5,-648(gp) # 13740 <__atexit>
   10e2c:	f98704e3          	beq	a4,s8,10db4 <__call_exitprocs+0x98>
   10e30:	f8078ae3          	beqz	a5,10dc4 <__call_exitprocs+0xa8>
   10e34:	00078913          	mv	s2,a5
   10e38:	f29ff06f          	j	10d60 <__call_exitprocs+0x44>
   10e3c:	00892223          	sw	s0,4(s2)
   10e40:	f4dff06f          	j	10d8c <__call_exitprocs+0x70>
   10e44:	00058513          	mv	a0,a1
   10e48:	000680e7          	jalr	a3
   10e4c:	f5dff06f          	j	10da8 <__call_exitprocs+0x8c>

00010e50 <atexit>:
   10e50:	00050593          	mv	a1,a0
   10e54:	00000693          	li	a3,0
   10e58:	00000613          	li	a2,0
   10e5c:	00000513          	li	a0,0
   10e60:	0fc0106f          	j	11f5c <__register_exitproc>

00010e64 <_malloc_trim_r>:
   10e64:	fe010113          	add	sp,sp,-32
   10e68:	01312623          	sw	s3,12(sp)
   10e6c:	000139b7          	lui	s3,0x13
   10e70:	00812c23          	sw	s0,24(sp)
   10e74:	00912a23          	sw	s1,20(sp)
   10e78:	01212823          	sw	s2,16(sp)
   10e7c:	01412423          	sw	s4,8(sp)
   10e80:	00112e23          	sw	ra,28(sp)
   10e84:	00058a13          	mv	s4,a1
   10e88:	00050913          	mv	s2,a0
   10e8c:	32098993          	add	s3,s3,800 # 13320 <__malloc_av_>
   10e90:	3cd000ef          	jal	11a5c <__malloc_lock>
   10e94:	0089a703          	lw	a4,8(s3)
   10e98:	000017b7          	lui	a5,0x1
   10e9c:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   10ea0:	00472483          	lw	s1,4(a4)
   10ea4:	00001737          	lui	a4,0x1
   10ea8:	ffc4f493          	and	s1,s1,-4
   10eac:	00f48433          	add	s0,s1,a5
   10eb0:	41440433          	sub	s0,s0,s4
   10eb4:	00c45413          	srl	s0,s0,0xc
   10eb8:	fff40413          	add	s0,s0,-1
   10ebc:	00c41413          	sll	s0,s0,0xc
   10ec0:	00e44e63          	blt	s0,a4,10edc <_malloc_trim_r+0x78>
   10ec4:	00000593          	li	a1,0
   10ec8:	00090513          	mv	a0,s2
   10ecc:	7d9000ef          	jal	11ea4 <_sbrk_r>
   10ed0:	0089a783          	lw	a5,8(s3)
   10ed4:	009787b3          	add	a5,a5,s1
   10ed8:	02f50863          	beq	a0,a5,10f08 <_malloc_trim_r+0xa4>
   10edc:	00090513          	mv	a0,s2
   10ee0:	381000ef          	jal	11a60 <__malloc_unlock>
   10ee4:	01c12083          	lw	ra,28(sp)
   10ee8:	01812403          	lw	s0,24(sp)
   10eec:	01412483          	lw	s1,20(sp)
   10ef0:	01012903          	lw	s2,16(sp)
   10ef4:	00c12983          	lw	s3,12(sp)
   10ef8:	00812a03          	lw	s4,8(sp)
   10efc:	00000513          	li	a0,0
   10f00:	02010113          	add	sp,sp,32
   10f04:	00008067          	ret
   10f08:	408005b3          	neg	a1,s0
   10f0c:	00090513          	mv	a0,s2
   10f10:	795000ef          	jal	11ea4 <_sbrk_r>
   10f14:	fff00793          	li	a5,-1
   10f18:	04f50863          	beq	a0,a5,10f68 <_malloc_trim_r+0x104>
   10f1c:	ee018793          	add	a5,gp,-288 # 138a8 <__malloc_current_mallinfo>
   10f20:	0007a703          	lw	a4,0(a5)
   10f24:	0089a683          	lw	a3,8(s3)
   10f28:	408484b3          	sub	s1,s1,s0
   10f2c:	0014e493          	or	s1,s1,1
   10f30:	40870733          	sub	a4,a4,s0
   10f34:	00090513          	mv	a0,s2
   10f38:	0096a223          	sw	s1,4(a3)
   10f3c:	00e7a023          	sw	a4,0(a5)
   10f40:	321000ef          	jal	11a60 <__malloc_unlock>
   10f44:	01c12083          	lw	ra,28(sp)
   10f48:	01812403          	lw	s0,24(sp)
   10f4c:	01412483          	lw	s1,20(sp)
   10f50:	01012903          	lw	s2,16(sp)
   10f54:	00c12983          	lw	s3,12(sp)
   10f58:	00812a03          	lw	s4,8(sp)
   10f5c:	00100513          	li	a0,1
   10f60:	02010113          	add	sp,sp,32
   10f64:	00008067          	ret
   10f68:	00000593          	li	a1,0
   10f6c:	00090513          	mv	a0,s2
   10f70:	735000ef          	jal	11ea4 <_sbrk_r>
   10f74:	0089a703          	lw	a4,8(s3)
   10f78:	00f00693          	li	a3,15
   10f7c:	40e507b3          	sub	a5,a0,a4
   10f80:	f4f6dee3          	bge	a3,a5,10edc <_malloc_trim_r+0x78>
   10f84:	d681a683          	lw	a3,-664(gp) # 13730 <__malloc_sbrk_base>
   10f88:	0017e793          	or	a5,a5,1
   10f8c:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf090>
   10f90:	40d50533          	sub	a0,a0,a3
   10f94:	eea1a023          	sw	a0,-288(gp) # 138a8 <__malloc_current_mallinfo>
   10f98:	f45ff06f          	j	10edc <_malloc_trim_r+0x78>

00010f9c <_free_r>:
   10f9c:	18058263          	beqz	a1,11120 <_free_r+0x184>
   10fa0:	ff010113          	add	sp,sp,-16
   10fa4:	00812423          	sw	s0,8(sp)
   10fa8:	00912223          	sw	s1,4(sp)
   10fac:	00058413          	mv	s0,a1
   10fb0:	00050493          	mv	s1,a0
   10fb4:	00112623          	sw	ra,12(sp)
   10fb8:	2a5000ef          	jal	11a5c <__malloc_lock>
   10fbc:	ffc42503          	lw	a0,-4(s0)
   10fc0:	ff840713          	add	a4,s0,-8
   10fc4:	000135b7          	lui	a1,0x13
   10fc8:	ffe57793          	and	a5,a0,-2
   10fcc:	00f70633          	add	a2,a4,a5
   10fd0:	32058593          	add	a1,a1,800 # 13320 <__malloc_av_>
   10fd4:	00462683          	lw	a3,4(a2)
   10fd8:	0085a803          	lw	a6,8(a1)
   10fdc:	ffc6f693          	and	a3,a3,-4
   10fe0:	1ac80263          	beq	a6,a2,11184 <_free_r+0x1e8>
   10fe4:	00d62223          	sw	a3,4(a2)
   10fe8:	00157513          	and	a0,a0,1
   10fec:	00d60833          	add	a6,a2,a3
   10ff0:	0a051063          	bnez	a0,11090 <_free_r+0xf4>
   10ff4:	ff842303          	lw	t1,-8(s0)
   10ff8:	00482803          	lw	a6,4(a6)
   10ffc:	00013537          	lui	a0,0x13
   11000:	40670733          	sub	a4,a4,t1
   11004:	00872883          	lw	a7,8(a4)
   11008:	32850513          	add	a0,a0,808 # 13328 <__malloc_av_+0x8>
   1100c:	006787b3          	add	a5,a5,t1
   11010:	00187813          	and	a6,a6,1
   11014:	14a88263          	beq	a7,a0,11158 <_free_r+0x1bc>
   11018:	00c72303          	lw	t1,12(a4)
   1101c:	0068a623          	sw	t1,12(a7)
   11020:	01132423          	sw	a7,8(t1) # 10184 <frame_dummy+0x1c>
   11024:	1a080663          	beqz	a6,111d0 <_free_r+0x234>
   11028:	0017e693          	or	a3,a5,1
   1102c:	00d72223          	sw	a3,4(a4)
   11030:	00f62023          	sw	a5,0(a2)
   11034:	1ff00693          	li	a3,511
   11038:	06f6ec63          	bltu	a3,a5,110b0 <_free_r+0x114>
   1103c:	ff87f693          	and	a3,a5,-8
   11040:	00868693          	add	a3,a3,8
   11044:	0045a503          	lw	a0,4(a1)
   11048:	00d586b3          	add	a3,a1,a3
   1104c:	0006a603          	lw	a2,0(a3)
   11050:	0057d813          	srl	a6,a5,0x5
   11054:	00100793          	li	a5,1
   11058:	010797b3          	sll	a5,a5,a6
   1105c:	00a7e7b3          	or	a5,a5,a0
   11060:	ff868513          	add	a0,a3,-8
   11064:	00a72623          	sw	a0,12(a4)
   11068:	00c72423          	sw	a2,8(a4)
   1106c:	00f5a223          	sw	a5,4(a1)
   11070:	00e6a023          	sw	a4,0(a3)
   11074:	00e62623          	sw	a4,12(a2)
   11078:	00812403          	lw	s0,8(sp)
   1107c:	00c12083          	lw	ra,12(sp)
   11080:	00048513          	mv	a0,s1
   11084:	00412483          	lw	s1,4(sp)
   11088:	01010113          	add	sp,sp,16
   1108c:	1d50006f          	j	11a60 <__malloc_unlock>
   11090:	00482503          	lw	a0,4(a6)
   11094:	00157513          	and	a0,a0,1
   11098:	08050663          	beqz	a0,11124 <_free_r+0x188>
   1109c:	0017e693          	or	a3,a5,1
   110a0:	fed42e23          	sw	a3,-4(s0)
   110a4:	00f62023          	sw	a5,0(a2)
   110a8:	1ff00693          	li	a3,511
   110ac:	f8f6f8e3          	bgeu	a3,a5,1103c <_free_r+0xa0>
   110b0:	0097d693          	srl	a3,a5,0x9
   110b4:	00400613          	li	a2,4
   110b8:	12d66063          	bltu	a2,a3,111d8 <_free_r+0x23c>
   110bc:	0067d693          	srl	a3,a5,0x6
   110c0:	03968513          	add	a0,a3,57
   110c4:	03868613          	add	a2,a3,56
   110c8:	00351513          	sll	a0,a0,0x3
   110cc:	00a58533          	add	a0,a1,a0
   110d0:	00052683          	lw	a3,0(a0)
   110d4:	ff850513          	add	a0,a0,-8
   110d8:	00d51863          	bne	a0,a3,110e8 <_free_r+0x14c>
   110dc:	1540006f          	j	11230 <_free_r+0x294>
   110e0:	0086a683          	lw	a3,8(a3)
   110e4:	00d50863          	beq	a0,a3,110f4 <_free_r+0x158>
   110e8:	0046a603          	lw	a2,4(a3)
   110ec:	ffc67613          	and	a2,a2,-4
   110f0:	fec7e8e3          	bltu	a5,a2,110e0 <_free_r+0x144>
   110f4:	00c6a503          	lw	a0,12(a3)
   110f8:	00a72623          	sw	a0,12(a4)
   110fc:	00d72423          	sw	a3,8(a4)
   11100:	00812403          	lw	s0,8(sp)
   11104:	00e52423          	sw	a4,8(a0)
   11108:	00c12083          	lw	ra,12(sp)
   1110c:	00048513          	mv	a0,s1
   11110:	00412483          	lw	s1,4(sp)
   11114:	00e6a623          	sw	a4,12(a3)
   11118:	01010113          	add	sp,sp,16
   1111c:	1450006f          	j	11a60 <__malloc_unlock>
   11120:	00008067          	ret
   11124:	00013537          	lui	a0,0x13
   11128:	00d787b3          	add	a5,a5,a3
   1112c:	32850513          	add	a0,a0,808 # 13328 <__malloc_av_+0x8>
   11130:	00862683          	lw	a3,8(a2)
   11134:	0ca68c63          	beq	a3,a0,1120c <_free_r+0x270>
   11138:	00c62803          	lw	a6,12(a2)
   1113c:	0017e513          	or	a0,a5,1
   11140:	00f70633          	add	a2,a4,a5
   11144:	0106a623          	sw	a6,12(a3)
   11148:	00d82423          	sw	a3,8(a6)
   1114c:	00a72223          	sw	a0,4(a4)
   11150:	00f62023          	sw	a5,0(a2)
   11154:	ee1ff06f          	j	11034 <_free_r+0x98>
   11158:	12081c63          	bnez	a6,11290 <_free_r+0x2f4>
   1115c:	00862583          	lw	a1,8(a2)
   11160:	00c62603          	lw	a2,12(a2)
   11164:	00f686b3          	add	a3,a3,a5
   11168:	0016e793          	or	a5,a3,1
   1116c:	00c5a623          	sw	a2,12(a1)
   11170:	00b62423          	sw	a1,8(a2)
   11174:	00f72223          	sw	a5,4(a4)
   11178:	00d70733          	add	a4,a4,a3
   1117c:	00d72023          	sw	a3,0(a4)
   11180:	ef9ff06f          	j	11078 <_free_r+0xdc>
   11184:	00157513          	and	a0,a0,1
   11188:	00d786b3          	add	a3,a5,a3
   1118c:	02051063          	bnez	a0,111ac <_free_r+0x210>
   11190:	ff842503          	lw	a0,-8(s0)
   11194:	40a70733          	sub	a4,a4,a0
   11198:	00c72783          	lw	a5,12(a4)
   1119c:	00872603          	lw	a2,8(a4)
   111a0:	00a686b3          	add	a3,a3,a0
   111a4:	00f62623          	sw	a5,12(a2)
   111a8:	00c7a423          	sw	a2,8(a5)
   111ac:	0016e613          	or	a2,a3,1
   111b0:	d6c1a783          	lw	a5,-660(gp) # 13734 <__malloc_trim_threshold>
   111b4:	00c72223          	sw	a2,4(a4)
   111b8:	00e5a423          	sw	a4,8(a1)
   111bc:	eaf6eee3          	bltu	a3,a5,11078 <_free_r+0xdc>
   111c0:	d841a583          	lw	a1,-636(gp) # 1374c <__malloc_top_pad>
   111c4:	00048513          	mv	a0,s1
   111c8:	c9dff0ef          	jal	10e64 <_malloc_trim_r>
   111cc:	eadff06f          	j	11078 <_free_r+0xdc>
   111d0:	00d787b3          	add	a5,a5,a3
   111d4:	f5dff06f          	j	11130 <_free_r+0x194>
   111d8:	01400613          	li	a2,20
   111dc:	02d67063          	bgeu	a2,a3,111fc <_free_r+0x260>
   111e0:	05400613          	li	a2,84
   111e4:	06d66463          	bltu	a2,a3,1124c <_free_r+0x2b0>
   111e8:	00c7d693          	srl	a3,a5,0xc
   111ec:	06f68513          	add	a0,a3,111
   111f0:	06e68613          	add	a2,a3,110
   111f4:	00351513          	sll	a0,a0,0x3
   111f8:	ed5ff06f          	j	110cc <_free_r+0x130>
   111fc:	05c68513          	add	a0,a3,92
   11200:	05b68613          	add	a2,a3,91
   11204:	00351513          	sll	a0,a0,0x3
   11208:	ec5ff06f          	j	110cc <_free_r+0x130>
   1120c:	00e5aa23          	sw	a4,20(a1)
   11210:	00e5a823          	sw	a4,16(a1)
   11214:	0017e693          	or	a3,a5,1
   11218:	00a72623          	sw	a0,12(a4)
   1121c:	00a72423          	sw	a0,8(a4)
   11220:	00d72223          	sw	a3,4(a4)
   11224:	00f70733          	add	a4,a4,a5
   11228:	00f72023          	sw	a5,0(a4)
   1122c:	e4dff06f          	j	11078 <_free_r+0xdc>
   11230:	0045a803          	lw	a6,4(a1)
   11234:	40265613          	sra	a2,a2,0x2
   11238:	00100793          	li	a5,1
   1123c:	00c797b3          	sll	a5,a5,a2
   11240:	0107e7b3          	or	a5,a5,a6
   11244:	00f5a223          	sw	a5,4(a1)
   11248:	eb1ff06f          	j	110f8 <_free_r+0x15c>
   1124c:	15400613          	li	a2,340
   11250:	00d66c63          	bltu	a2,a3,11268 <_free_r+0x2cc>
   11254:	00f7d693          	srl	a3,a5,0xf
   11258:	07868513          	add	a0,a3,120
   1125c:	07768613          	add	a2,a3,119
   11260:	00351513          	sll	a0,a0,0x3
   11264:	e69ff06f          	j	110cc <_free_r+0x130>
   11268:	55400613          	li	a2,1364
   1126c:	00d66c63          	bltu	a2,a3,11284 <_free_r+0x2e8>
   11270:	0127d693          	srl	a3,a5,0x12
   11274:	07d68513          	add	a0,a3,125
   11278:	07c68613          	add	a2,a3,124
   1127c:	00351513          	sll	a0,a0,0x3
   11280:	e4dff06f          	j	110cc <_free_r+0x130>
   11284:	3f800513          	li	a0,1016
   11288:	07e00613          	li	a2,126
   1128c:	e41ff06f          	j	110cc <_free_r+0x130>
   11290:	0017e693          	or	a3,a5,1
   11294:	00d72223          	sw	a3,4(a4)
   11298:	00f62023          	sw	a5,0(a2)
   1129c:	dddff06f          	j	11078 <_free_r+0xdc>

000112a0 <_malloc_r>:
   112a0:	fd010113          	add	sp,sp,-48
   112a4:	01312e23          	sw	s3,28(sp)
   112a8:	02112623          	sw	ra,44(sp)
   112ac:	02812423          	sw	s0,40(sp)
   112b0:	02912223          	sw	s1,36(sp)
   112b4:	03212023          	sw	s2,32(sp)
   112b8:	00b58793          	add	a5,a1,11
   112bc:	01600713          	li	a4,22
   112c0:	00050993          	mv	s3,a0
   112c4:	08f76263          	bltu	a4,a5,11348 <_malloc_r+0xa8>
   112c8:	01000793          	li	a5,16
   112cc:	20b7e663          	bltu	a5,a1,114d8 <_malloc_r+0x238>
   112d0:	78c000ef          	jal	11a5c <__malloc_lock>
   112d4:	01800793          	li	a5,24
   112d8:	00200593          	li	a1,2
   112dc:	01000493          	li	s1,16
   112e0:	00013937          	lui	s2,0x13
   112e4:	32090913          	add	s2,s2,800 # 13320 <__malloc_av_>
   112e8:	00f907b3          	add	a5,s2,a5
   112ec:	0047a403          	lw	s0,4(a5)
   112f0:	ff878713          	add	a4,a5,-8
   112f4:	34e40463          	beq	s0,a4,1163c <_malloc_r+0x39c>
   112f8:	00442783          	lw	a5,4(s0)
   112fc:	00c42683          	lw	a3,12(s0)
   11300:	00842603          	lw	a2,8(s0)
   11304:	ffc7f793          	and	a5,a5,-4
   11308:	00f407b3          	add	a5,s0,a5
   1130c:	0047a703          	lw	a4,4(a5)
   11310:	00d62623          	sw	a3,12(a2)
   11314:	00c6a423          	sw	a2,8(a3)
   11318:	00176713          	or	a4,a4,1
   1131c:	00098513          	mv	a0,s3
   11320:	00e7a223          	sw	a4,4(a5)
   11324:	73c000ef          	jal	11a60 <__malloc_unlock>
   11328:	00840513          	add	a0,s0,8
   1132c:	02c12083          	lw	ra,44(sp)
   11330:	02812403          	lw	s0,40(sp)
   11334:	02412483          	lw	s1,36(sp)
   11338:	02012903          	lw	s2,32(sp)
   1133c:	01c12983          	lw	s3,28(sp)
   11340:	03010113          	add	sp,sp,48
   11344:	00008067          	ret
   11348:	ff87f493          	and	s1,a5,-8
   1134c:	1807c663          	bltz	a5,114d8 <_malloc_r+0x238>
   11350:	18b4e463          	bltu	s1,a1,114d8 <_malloc_r+0x238>
   11354:	708000ef          	jal	11a5c <__malloc_lock>
   11358:	1f700793          	li	a5,503
   1135c:	3e97fa63          	bgeu	a5,s1,11750 <_malloc_r+0x4b0>
   11360:	0094d793          	srl	a5,s1,0x9
   11364:	18078263          	beqz	a5,114e8 <_malloc_r+0x248>
   11368:	00400713          	li	a4,4
   1136c:	34f76063          	bltu	a4,a5,116ac <_malloc_r+0x40c>
   11370:	0064d793          	srl	a5,s1,0x6
   11374:	03978593          	add	a1,a5,57
   11378:	03878813          	add	a6,a5,56
   1137c:	00359613          	sll	a2,a1,0x3
   11380:	00013937          	lui	s2,0x13
   11384:	32090913          	add	s2,s2,800 # 13320 <__malloc_av_>
   11388:	00c90633          	add	a2,s2,a2
   1138c:	00462403          	lw	s0,4(a2)
   11390:	ff860613          	add	a2,a2,-8
   11394:	02860863          	beq	a2,s0,113c4 <_malloc_r+0x124>
   11398:	00f00513          	li	a0,15
   1139c:	0140006f          	j	113b0 <_malloc_r+0x110>
   113a0:	00c42683          	lw	a3,12(s0)
   113a4:	28075863          	bgez	a4,11634 <_malloc_r+0x394>
   113a8:	00d60e63          	beq	a2,a3,113c4 <_malloc_r+0x124>
   113ac:	00068413          	mv	s0,a3
   113b0:	00442783          	lw	a5,4(s0)
   113b4:	ffc7f793          	and	a5,a5,-4
   113b8:	40978733          	sub	a4,a5,s1
   113bc:	fee552e3          	bge	a0,a4,113a0 <_malloc_r+0x100>
   113c0:	00080593          	mv	a1,a6
   113c4:	01092403          	lw	s0,16(s2)
   113c8:	00013837          	lui	a6,0x13
   113cc:	32880813          	add	a6,a6,808 # 13328 <__malloc_av_+0x8>
   113d0:	25040e63          	beq	s0,a6,1162c <_malloc_r+0x38c>
   113d4:	00442783          	lw	a5,4(s0)
   113d8:	00f00693          	li	a3,15
   113dc:	ffc7f793          	and	a5,a5,-4
   113e0:	40978733          	sub	a4,a5,s1
   113e4:	36e6cc63          	blt	a3,a4,1175c <_malloc_r+0x4bc>
   113e8:	01092a23          	sw	a6,20(s2)
   113ec:	01092823          	sw	a6,16(s2)
   113f0:	34075063          	bgez	a4,11730 <_malloc_r+0x490>
   113f4:	1ff00713          	li	a4,511
   113f8:	00492503          	lw	a0,4(s2)
   113fc:	24f76863          	bltu	a4,a5,1164c <_malloc_r+0x3ac>
   11400:	ff87f713          	and	a4,a5,-8
   11404:	00870713          	add	a4,a4,8
   11408:	00e90733          	add	a4,s2,a4
   1140c:	00072683          	lw	a3,0(a4)
   11410:	0057d613          	srl	a2,a5,0x5
   11414:	00100793          	li	a5,1
   11418:	00c797b3          	sll	a5,a5,a2
   1141c:	00f56533          	or	a0,a0,a5
   11420:	ff870793          	add	a5,a4,-8
   11424:	00f42623          	sw	a5,12(s0)
   11428:	00d42423          	sw	a3,8(s0)
   1142c:	00a92223          	sw	a0,4(s2)
   11430:	00872023          	sw	s0,0(a4)
   11434:	0086a623          	sw	s0,12(a3)
   11438:	4025d793          	sra	a5,a1,0x2
   1143c:	00100613          	li	a2,1
   11440:	00f61633          	sll	a2,a2,a5
   11444:	0ac56a63          	bltu	a0,a2,114f8 <_malloc_r+0x258>
   11448:	00a677b3          	and	a5,a2,a0
   1144c:	02079463          	bnez	a5,11474 <_malloc_r+0x1d4>
   11450:	00161613          	sll	a2,a2,0x1
   11454:	ffc5f593          	and	a1,a1,-4
   11458:	00a677b3          	and	a5,a2,a0
   1145c:	00458593          	add	a1,a1,4
   11460:	00079a63          	bnez	a5,11474 <_malloc_r+0x1d4>
   11464:	00161613          	sll	a2,a2,0x1
   11468:	00a677b3          	and	a5,a2,a0
   1146c:	00458593          	add	a1,a1,4
   11470:	fe078ae3          	beqz	a5,11464 <_malloc_r+0x1c4>
   11474:	00f00893          	li	a7,15
   11478:	00359313          	sll	t1,a1,0x3
   1147c:	00690333          	add	t1,s2,t1
   11480:	00030513          	mv	a0,t1
   11484:	00c52783          	lw	a5,12(a0)
   11488:	00058e13          	mv	t3,a1
   1148c:	24f50263          	beq	a0,a5,116d0 <_malloc_r+0x430>
   11490:	0047a703          	lw	a4,4(a5)
   11494:	00078413          	mv	s0,a5
   11498:	00c7a783          	lw	a5,12(a5)
   1149c:	ffc77713          	and	a4,a4,-4
   114a0:	409706b3          	sub	a3,a4,s1
   114a4:	24d8c263          	blt	a7,a3,116e8 <_malloc_r+0x448>
   114a8:	fe06c2e3          	bltz	a3,1148c <_malloc_r+0x1ec>
   114ac:	00e40733          	add	a4,s0,a4
   114b0:	00472683          	lw	a3,4(a4)
   114b4:	00842603          	lw	a2,8(s0)
   114b8:	00098513          	mv	a0,s3
   114bc:	0016e693          	or	a3,a3,1
   114c0:	00d72223          	sw	a3,4(a4)
   114c4:	00f62623          	sw	a5,12(a2)
   114c8:	00c7a423          	sw	a2,8(a5)
   114cc:	594000ef          	jal	11a60 <__malloc_unlock>
   114d0:	00840513          	add	a0,s0,8
   114d4:	e59ff06f          	j	1132c <_malloc_r+0x8c>
   114d8:	00c00793          	li	a5,12
   114dc:	00f9a023          	sw	a5,0(s3)
   114e0:	00000513          	li	a0,0
   114e4:	e49ff06f          	j	1132c <_malloc_r+0x8c>
   114e8:	20000613          	li	a2,512
   114ec:	04000593          	li	a1,64
   114f0:	03f00813          	li	a6,63
   114f4:	e8dff06f          	j	11380 <_malloc_r+0xe0>
   114f8:	00892403          	lw	s0,8(s2)
   114fc:	01612823          	sw	s6,16(sp)
   11500:	00442783          	lw	a5,4(s0)
   11504:	ffc7fb13          	and	s6,a5,-4
   11508:	009b6863          	bltu	s6,s1,11518 <_malloc_r+0x278>
   1150c:	409b0733          	sub	a4,s6,s1
   11510:	00f00793          	li	a5,15
   11514:	0ce7ca63          	blt	a5,a4,115e8 <_malloc_r+0x348>
   11518:	01912223          	sw	s9,4(sp)
   1151c:	01512a23          	sw	s5,20(sp)
   11520:	d681a703          	lw	a4,-664(gp) # 13730 <__malloc_sbrk_base>
   11524:	d841aa83          	lw	s5,-636(gp) # 1374c <__malloc_top_pad>
   11528:	01412c23          	sw	s4,24(sp)
   1152c:	01712623          	sw	s7,12(sp)
   11530:	fff00793          	li	a5,-1
   11534:	01640a33          	add	s4,s0,s6
   11538:	01548ab3          	add	s5,s1,s5
   1153c:	3cf70663          	beq	a4,a5,11908 <_malloc_r+0x668>
   11540:	000017b7          	lui	a5,0x1
   11544:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   11548:	00fa8ab3          	add	s5,s5,a5
   1154c:	fffff7b7          	lui	a5,0xfffff
   11550:	00fafab3          	and	s5,s5,a5
   11554:	000a8593          	mv	a1,s5
   11558:	00098513          	mv	a0,s3
   1155c:	149000ef          	jal	11ea4 <_sbrk_r>
   11560:	fff00793          	li	a5,-1
   11564:	00050b93          	mv	s7,a0
   11568:	44f50a63          	beq	a0,a5,119bc <_malloc_r+0x71c>
   1156c:	01812423          	sw	s8,8(sp)
   11570:	23456e63          	bltu	a0,s4,117ac <_malloc_r+0x50c>
   11574:	ee018c13          	add	s8,gp,-288 # 138a8 <__malloc_current_mallinfo>
   11578:	000c2583          	lw	a1,0(s8)
   1157c:	00ba85b3          	add	a1,s5,a1
   11580:	00bc2023          	sw	a1,0(s8)
   11584:	00058713          	mv	a4,a1
   11588:	2aaa1663          	bne	s4,a0,11834 <_malloc_r+0x594>
   1158c:	01451793          	sll	a5,a0,0x14
   11590:	2a079263          	bnez	a5,11834 <_malloc_r+0x594>
   11594:	00892b83          	lw	s7,8(s2)
   11598:	015b07b3          	add	a5,s6,s5
   1159c:	0017e793          	or	a5,a5,1
   115a0:	00fba223          	sw	a5,4(s7)
   115a4:	d801a683          	lw	a3,-640(gp) # 13748 <__malloc_max_sbrked_mem>
   115a8:	00b6f463          	bgeu	a3,a1,115b0 <_malloc_r+0x310>
   115ac:	d8b1a023          	sw	a1,-640(gp) # 13748 <__malloc_max_sbrked_mem>
   115b0:	d7c1a683          	lw	a3,-644(gp) # 13744 <__malloc_max_total_mem>
   115b4:	00b6f463          	bgeu	a3,a1,115bc <_malloc_r+0x31c>
   115b8:	d6b1ae23          	sw	a1,-644(gp) # 13744 <__malloc_max_total_mem>
   115bc:	00812c03          	lw	s8,8(sp)
   115c0:	000b8413          	mv	s0,s7
   115c4:	ffc7f793          	and	a5,a5,-4
   115c8:	40978733          	sub	a4,a5,s1
   115cc:	3897ea63          	bltu	a5,s1,11960 <_malloc_r+0x6c0>
   115d0:	00f00793          	li	a5,15
   115d4:	38e7d663          	bge	a5,a4,11960 <_malloc_r+0x6c0>
   115d8:	01812a03          	lw	s4,24(sp)
   115dc:	01412a83          	lw	s5,20(sp)
   115e0:	00c12b83          	lw	s7,12(sp)
   115e4:	00412c83          	lw	s9,4(sp)
   115e8:	0014e793          	or	a5,s1,1
   115ec:	00f42223          	sw	a5,4(s0)
   115f0:	009404b3          	add	s1,s0,s1
   115f4:	00992423          	sw	s1,8(s2)
   115f8:	00176713          	or	a4,a4,1
   115fc:	00098513          	mv	a0,s3
   11600:	00e4a223          	sw	a4,4(s1)
   11604:	45c000ef          	jal	11a60 <__malloc_unlock>
   11608:	02c12083          	lw	ra,44(sp)
   1160c:	00840513          	add	a0,s0,8
   11610:	02812403          	lw	s0,40(sp)
   11614:	01012b03          	lw	s6,16(sp)
   11618:	02412483          	lw	s1,36(sp)
   1161c:	02012903          	lw	s2,32(sp)
   11620:	01c12983          	lw	s3,28(sp)
   11624:	03010113          	add	sp,sp,48
   11628:	00008067          	ret
   1162c:	00492503          	lw	a0,4(s2)
   11630:	e09ff06f          	j	11438 <_malloc_r+0x198>
   11634:	00842603          	lw	a2,8(s0)
   11638:	cd1ff06f          	j	11308 <_malloc_r+0x68>
   1163c:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffeb5ac>
   11640:	00258593          	add	a1,a1,2
   11644:	d88780e3          	beq	a5,s0,113c4 <_malloc_r+0x124>
   11648:	cb1ff06f          	j	112f8 <_malloc_r+0x58>
   1164c:	0097d713          	srl	a4,a5,0x9
   11650:	00400693          	li	a3,4
   11654:	14e6f263          	bgeu	a3,a4,11798 <_malloc_r+0x4f8>
   11658:	01400693          	li	a3,20
   1165c:	32e6e463          	bltu	a3,a4,11984 <_malloc_r+0x6e4>
   11660:	05c70613          	add	a2,a4,92
   11664:	05b70693          	add	a3,a4,91
   11668:	00361613          	sll	a2,a2,0x3
   1166c:	00c90633          	add	a2,s2,a2
   11670:	00062703          	lw	a4,0(a2)
   11674:	ff860613          	add	a2,a2,-8
   11678:	00e61863          	bne	a2,a4,11688 <_malloc_r+0x3e8>
   1167c:	2940006f          	j	11910 <_malloc_r+0x670>
   11680:	00872703          	lw	a4,8(a4)
   11684:	00e60863          	beq	a2,a4,11694 <_malloc_r+0x3f4>
   11688:	00472683          	lw	a3,4(a4)
   1168c:	ffc6f693          	and	a3,a3,-4
   11690:	fed7e8e3          	bltu	a5,a3,11680 <_malloc_r+0x3e0>
   11694:	00c72603          	lw	a2,12(a4)
   11698:	00c42623          	sw	a2,12(s0)
   1169c:	00e42423          	sw	a4,8(s0)
   116a0:	00862423          	sw	s0,8(a2)
   116a4:	00872623          	sw	s0,12(a4)
   116a8:	d91ff06f          	j	11438 <_malloc_r+0x198>
   116ac:	01400713          	li	a4,20
   116b0:	10f77863          	bgeu	a4,a5,117c0 <_malloc_r+0x520>
   116b4:	05400713          	li	a4,84
   116b8:	2ef76463          	bltu	a4,a5,119a0 <_malloc_r+0x700>
   116bc:	00c4d793          	srl	a5,s1,0xc
   116c0:	06f78593          	add	a1,a5,111
   116c4:	06e78813          	add	a6,a5,110
   116c8:	00359613          	sll	a2,a1,0x3
   116cc:	cb5ff06f          	j	11380 <_malloc_r+0xe0>
   116d0:	001e0e13          	add	t3,t3,1
   116d4:	003e7793          	and	a5,t3,3
   116d8:	00850513          	add	a0,a0,8
   116dc:	10078063          	beqz	a5,117dc <_malloc_r+0x53c>
   116e0:	00c52783          	lw	a5,12(a0)
   116e4:	da9ff06f          	j	1148c <_malloc_r+0x1ec>
   116e8:	00842603          	lw	a2,8(s0)
   116ec:	0014e593          	or	a1,s1,1
   116f0:	00b42223          	sw	a1,4(s0)
   116f4:	00f62623          	sw	a5,12(a2)
   116f8:	00c7a423          	sw	a2,8(a5)
   116fc:	009404b3          	add	s1,s0,s1
   11700:	00992a23          	sw	s1,20(s2)
   11704:	00992823          	sw	s1,16(s2)
   11708:	0016e793          	or	a5,a3,1
   1170c:	0104a623          	sw	a6,12(s1)
   11710:	0104a423          	sw	a6,8(s1)
   11714:	00f4a223          	sw	a5,4(s1)
   11718:	00e40733          	add	a4,s0,a4
   1171c:	00098513          	mv	a0,s3
   11720:	00d72023          	sw	a3,0(a4)
   11724:	33c000ef          	jal	11a60 <__malloc_unlock>
   11728:	00840513          	add	a0,s0,8
   1172c:	c01ff06f          	j	1132c <_malloc_r+0x8c>
   11730:	00f407b3          	add	a5,s0,a5
   11734:	0047a703          	lw	a4,4(a5)
   11738:	00098513          	mv	a0,s3
   1173c:	00176713          	or	a4,a4,1
   11740:	00e7a223          	sw	a4,4(a5)
   11744:	31c000ef          	jal	11a60 <__malloc_unlock>
   11748:	00840513          	add	a0,s0,8
   1174c:	be1ff06f          	j	1132c <_malloc_r+0x8c>
   11750:	0034d593          	srl	a1,s1,0x3
   11754:	00848793          	add	a5,s1,8
   11758:	b89ff06f          	j	112e0 <_malloc_r+0x40>
   1175c:	0014e693          	or	a3,s1,1
   11760:	00d42223          	sw	a3,4(s0)
   11764:	009404b3          	add	s1,s0,s1
   11768:	00992a23          	sw	s1,20(s2)
   1176c:	00992823          	sw	s1,16(s2)
   11770:	00176693          	or	a3,a4,1
   11774:	0104a623          	sw	a6,12(s1)
   11778:	0104a423          	sw	a6,8(s1)
   1177c:	00d4a223          	sw	a3,4(s1)
   11780:	00f407b3          	add	a5,s0,a5
   11784:	00098513          	mv	a0,s3
   11788:	00e7a023          	sw	a4,0(a5)
   1178c:	2d4000ef          	jal	11a60 <__malloc_unlock>
   11790:	00840513          	add	a0,s0,8
   11794:	b99ff06f          	j	1132c <_malloc_r+0x8c>
   11798:	0067d713          	srl	a4,a5,0x6
   1179c:	03970613          	add	a2,a4,57
   117a0:	03870693          	add	a3,a4,56
   117a4:	00361613          	sll	a2,a2,0x3
   117a8:	ec5ff06f          	j	1166c <_malloc_r+0x3cc>
   117ac:	07240c63          	beq	s0,s2,11824 <_malloc_r+0x584>
   117b0:	00892403          	lw	s0,8(s2)
   117b4:	00812c03          	lw	s8,8(sp)
   117b8:	00442783          	lw	a5,4(s0)
   117bc:	e09ff06f          	j	115c4 <_malloc_r+0x324>
   117c0:	05c78593          	add	a1,a5,92
   117c4:	05b78813          	add	a6,a5,91
   117c8:	00359613          	sll	a2,a1,0x3
   117cc:	bb5ff06f          	j	11380 <_malloc_r+0xe0>
   117d0:	00832783          	lw	a5,8(t1)
   117d4:	fff58593          	add	a1,a1,-1
   117d8:	26679e63          	bne	a5,t1,11a54 <_malloc_r+0x7b4>
   117dc:	0035f793          	and	a5,a1,3
   117e0:	ff830313          	add	t1,t1,-8
   117e4:	fe0796e3          	bnez	a5,117d0 <_malloc_r+0x530>
   117e8:	00492703          	lw	a4,4(s2)
   117ec:	fff64793          	not	a5,a2
   117f0:	00e7f7b3          	and	a5,a5,a4
   117f4:	00f92223          	sw	a5,4(s2)
   117f8:	00161613          	sll	a2,a2,0x1
   117fc:	cec7eee3          	bltu	a5,a2,114f8 <_malloc_r+0x258>
   11800:	ce060ce3          	beqz	a2,114f8 <_malloc_r+0x258>
   11804:	00f67733          	and	a4,a2,a5
   11808:	00071a63          	bnez	a4,1181c <_malloc_r+0x57c>
   1180c:	00161613          	sll	a2,a2,0x1
   11810:	00f67733          	and	a4,a2,a5
   11814:	004e0e13          	add	t3,t3,4
   11818:	fe070ae3          	beqz	a4,1180c <_malloc_r+0x56c>
   1181c:	000e0593          	mv	a1,t3
   11820:	c59ff06f          	j	11478 <_malloc_r+0x1d8>
   11824:	ee018c13          	add	s8,gp,-288 # 138a8 <__malloc_current_mallinfo>
   11828:	000c2703          	lw	a4,0(s8)
   1182c:	00ea8733          	add	a4,s5,a4
   11830:	00ec2023          	sw	a4,0(s8)
   11834:	d681a683          	lw	a3,-664(gp) # 13730 <__malloc_sbrk_base>
   11838:	fff00793          	li	a5,-1
   1183c:	18f68663          	beq	a3,a5,119c8 <_malloc_r+0x728>
   11840:	414b87b3          	sub	a5,s7,s4
   11844:	00e787b3          	add	a5,a5,a4
   11848:	00fc2023          	sw	a5,0(s8)
   1184c:	007bfc93          	and	s9,s7,7
   11850:	0c0c8c63          	beqz	s9,11928 <_malloc_r+0x688>
   11854:	419b8bb3          	sub	s7,s7,s9
   11858:	000017b7          	lui	a5,0x1
   1185c:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   11860:	008b8b93          	add	s7,s7,8
   11864:	419785b3          	sub	a1,a5,s9
   11868:	015b8ab3          	add	s5,s7,s5
   1186c:	415585b3          	sub	a1,a1,s5
   11870:	01459593          	sll	a1,a1,0x14
   11874:	0145da13          	srl	s4,a1,0x14
   11878:	000a0593          	mv	a1,s4
   1187c:	00098513          	mv	a0,s3
   11880:	624000ef          	jal	11ea4 <_sbrk_r>
   11884:	fff00793          	li	a5,-1
   11888:	18f50063          	beq	a0,a5,11a08 <_malloc_r+0x768>
   1188c:	41750533          	sub	a0,a0,s7
   11890:	01450ab3          	add	s5,a0,s4
   11894:	000c2703          	lw	a4,0(s8)
   11898:	01792423          	sw	s7,8(s2)
   1189c:	001ae793          	or	a5,s5,1
   118a0:	00ea05b3          	add	a1,s4,a4
   118a4:	00bc2023          	sw	a1,0(s8)
   118a8:	00fba223          	sw	a5,4(s7)
   118ac:	cf240ce3          	beq	s0,s2,115a4 <_malloc_r+0x304>
   118b0:	00f00693          	li	a3,15
   118b4:	0b66f063          	bgeu	a3,s6,11954 <_malloc_r+0x6b4>
   118b8:	00442703          	lw	a4,4(s0)
   118bc:	ff4b0793          	add	a5,s6,-12
   118c0:	ff87f793          	and	a5,a5,-8
   118c4:	00177713          	and	a4,a4,1
   118c8:	00f76733          	or	a4,a4,a5
   118cc:	00e42223          	sw	a4,4(s0)
   118d0:	00500613          	li	a2,5
   118d4:	00f40733          	add	a4,s0,a5
   118d8:	00c72223          	sw	a2,4(a4)
   118dc:	00c72423          	sw	a2,8(a4)
   118e0:	00f6e663          	bltu	a3,a5,118ec <_malloc_r+0x64c>
   118e4:	004ba783          	lw	a5,4(s7)
   118e8:	cbdff06f          	j	115a4 <_malloc_r+0x304>
   118ec:	00840593          	add	a1,s0,8
   118f0:	00098513          	mv	a0,s3
   118f4:	ea8ff0ef          	jal	10f9c <_free_r>
   118f8:	00892b83          	lw	s7,8(s2)
   118fc:	000c2583          	lw	a1,0(s8)
   11900:	004ba783          	lw	a5,4(s7)
   11904:	ca1ff06f          	j	115a4 <_malloc_r+0x304>
   11908:	010a8a93          	add	s5,s5,16
   1190c:	c49ff06f          	j	11554 <_malloc_r+0x2b4>
   11910:	4026d693          	sra	a3,a3,0x2
   11914:	00100793          	li	a5,1
   11918:	00d797b3          	sll	a5,a5,a3
   1191c:	00f56533          	or	a0,a0,a5
   11920:	00a92223          	sw	a0,4(s2)
   11924:	d75ff06f          	j	11698 <_malloc_r+0x3f8>
   11928:	015b85b3          	add	a1,s7,s5
   1192c:	40b005b3          	neg	a1,a1
   11930:	01459593          	sll	a1,a1,0x14
   11934:	0145da13          	srl	s4,a1,0x14
   11938:	000a0593          	mv	a1,s4
   1193c:	00098513          	mv	a0,s3
   11940:	564000ef          	jal	11ea4 <_sbrk_r>
   11944:	fff00793          	li	a5,-1
   11948:	f4f512e3          	bne	a0,a5,1188c <_malloc_r+0x5ec>
   1194c:	00000a13          	li	s4,0
   11950:	f45ff06f          	j	11894 <_malloc_r+0x5f4>
   11954:	00812c03          	lw	s8,8(sp)
   11958:	00100793          	li	a5,1
   1195c:	00fba223          	sw	a5,4(s7)
   11960:	00098513          	mv	a0,s3
   11964:	0fc000ef          	jal	11a60 <__malloc_unlock>
   11968:	00000513          	li	a0,0
   1196c:	01812a03          	lw	s4,24(sp)
   11970:	01412a83          	lw	s5,20(sp)
   11974:	01012b03          	lw	s6,16(sp)
   11978:	00c12b83          	lw	s7,12(sp)
   1197c:	00412c83          	lw	s9,4(sp)
   11980:	9adff06f          	j	1132c <_malloc_r+0x8c>
   11984:	05400693          	li	a3,84
   11988:	04e6e463          	bltu	a3,a4,119d0 <_malloc_r+0x730>
   1198c:	00c7d713          	srl	a4,a5,0xc
   11990:	06f70613          	add	a2,a4,111
   11994:	06e70693          	add	a3,a4,110
   11998:	00361613          	sll	a2,a2,0x3
   1199c:	cd1ff06f          	j	1166c <_malloc_r+0x3cc>
   119a0:	15400713          	li	a4,340
   119a4:	04f76463          	bltu	a4,a5,119ec <_malloc_r+0x74c>
   119a8:	00f4d793          	srl	a5,s1,0xf
   119ac:	07878593          	add	a1,a5,120
   119b0:	07778813          	add	a6,a5,119
   119b4:	00359613          	sll	a2,a1,0x3
   119b8:	9c9ff06f          	j	11380 <_malloc_r+0xe0>
   119bc:	00892403          	lw	s0,8(s2)
   119c0:	00442783          	lw	a5,4(s0)
   119c4:	c01ff06f          	j	115c4 <_malloc_r+0x324>
   119c8:	d771a423          	sw	s7,-664(gp) # 13730 <__malloc_sbrk_base>
   119cc:	e81ff06f          	j	1184c <_malloc_r+0x5ac>
   119d0:	15400693          	li	a3,340
   119d4:	04e6e463          	bltu	a3,a4,11a1c <_malloc_r+0x77c>
   119d8:	00f7d713          	srl	a4,a5,0xf
   119dc:	07870613          	add	a2,a4,120
   119e0:	07770693          	add	a3,a4,119
   119e4:	00361613          	sll	a2,a2,0x3
   119e8:	c85ff06f          	j	1166c <_malloc_r+0x3cc>
   119ec:	55400713          	li	a4,1364
   119f0:	04f76463          	bltu	a4,a5,11a38 <_malloc_r+0x798>
   119f4:	0124d793          	srl	a5,s1,0x12
   119f8:	07d78593          	add	a1,a5,125
   119fc:	07c78813          	add	a6,a5,124
   11a00:	00359613          	sll	a2,a1,0x3
   11a04:	97dff06f          	j	11380 <_malloc_r+0xe0>
   11a08:	ff8c8c93          	add	s9,s9,-8
   11a0c:	019a8ab3          	add	s5,s5,s9
   11a10:	417a8ab3          	sub	s5,s5,s7
   11a14:	00000a13          	li	s4,0
   11a18:	e7dff06f          	j	11894 <_malloc_r+0x5f4>
   11a1c:	55400693          	li	a3,1364
   11a20:	02e6e463          	bltu	a3,a4,11a48 <_malloc_r+0x7a8>
   11a24:	0127d713          	srl	a4,a5,0x12
   11a28:	07d70613          	add	a2,a4,125
   11a2c:	07c70693          	add	a3,a4,124
   11a30:	00361613          	sll	a2,a2,0x3
   11a34:	c39ff06f          	j	1166c <_malloc_r+0x3cc>
   11a38:	3f800613          	li	a2,1016
   11a3c:	07f00593          	li	a1,127
   11a40:	07e00813          	li	a6,126
   11a44:	93dff06f          	j	11380 <_malloc_r+0xe0>
   11a48:	3f800613          	li	a2,1016
   11a4c:	07e00693          	li	a3,126
   11a50:	c1dff06f          	j	1166c <_malloc_r+0x3cc>
   11a54:	00492783          	lw	a5,4(s2)
   11a58:	da1ff06f          	j	117f8 <_malloc_r+0x558>

00011a5c <__malloc_lock>:
   11a5c:	00008067          	ret

00011a60 <__malloc_unlock>:
   11a60:	00008067          	ret

00011a64 <_fclose_r>:
   11a64:	ff010113          	add	sp,sp,-16
   11a68:	00112623          	sw	ra,12(sp)
   11a6c:	01212023          	sw	s2,0(sp)
   11a70:	02058863          	beqz	a1,11aa0 <_fclose_r+0x3c>
   11a74:	00812423          	sw	s0,8(sp)
   11a78:	00912223          	sw	s1,4(sp)
   11a7c:	00058413          	mv	s0,a1
   11a80:	00050493          	mv	s1,a0
   11a84:	00050663          	beqz	a0,11a90 <_fclose_r+0x2c>
   11a88:	03452783          	lw	a5,52(a0)
   11a8c:	0c078c63          	beqz	a5,11b64 <_fclose_r+0x100>
   11a90:	00c41783          	lh	a5,12(s0)
   11a94:	02079263          	bnez	a5,11ab8 <_fclose_r+0x54>
   11a98:	00812403          	lw	s0,8(sp)
   11a9c:	00412483          	lw	s1,4(sp)
   11aa0:	00c12083          	lw	ra,12(sp)
   11aa4:	00000913          	li	s2,0
   11aa8:	00090513          	mv	a0,s2
   11aac:	00012903          	lw	s2,0(sp)
   11ab0:	01010113          	add	sp,sp,16
   11ab4:	00008067          	ret
   11ab8:	00040593          	mv	a1,s0
   11abc:	00048513          	mv	a0,s1
   11ac0:	0b8000ef          	jal	11b78 <__sflush_r>
   11ac4:	02c42783          	lw	a5,44(s0)
   11ac8:	00050913          	mv	s2,a0
   11acc:	00078a63          	beqz	a5,11ae0 <_fclose_r+0x7c>
   11ad0:	01c42583          	lw	a1,28(s0)
   11ad4:	00048513          	mv	a0,s1
   11ad8:	000780e7          	jalr	a5
   11adc:	06054463          	bltz	a0,11b44 <_fclose_r+0xe0>
   11ae0:	00c45783          	lhu	a5,12(s0)
   11ae4:	0807f793          	and	a5,a5,128
   11ae8:	06079663          	bnez	a5,11b54 <_fclose_r+0xf0>
   11aec:	03042583          	lw	a1,48(s0)
   11af0:	00058c63          	beqz	a1,11b08 <_fclose_r+0xa4>
   11af4:	04040793          	add	a5,s0,64
   11af8:	00f58663          	beq	a1,a5,11b04 <_fclose_r+0xa0>
   11afc:	00048513          	mv	a0,s1
   11b00:	c9cff0ef          	jal	10f9c <_free_r>
   11b04:	02042823          	sw	zero,48(s0)
   11b08:	04442583          	lw	a1,68(s0)
   11b0c:	00058863          	beqz	a1,11b1c <_fclose_r+0xb8>
   11b10:	00048513          	mv	a0,s1
   11b14:	c88ff0ef          	jal	10f9c <_free_r>
   11b18:	04042223          	sw	zero,68(s0)
   11b1c:	be1fe0ef          	jal	106fc <__sfp_lock_acquire>
   11b20:	00041623          	sh	zero,12(s0)
   11b24:	bddfe0ef          	jal	10700 <__sfp_lock_release>
   11b28:	00c12083          	lw	ra,12(sp)
   11b2c:	00812403          	lw	s0,8(sp)
   11b30:	00412483          	lw	s1,4(sp)
   11b34:	00090513          	mv	a0,s2
   11b38:	00012903          	lw	s2,0(sp)
   11b3c:	01010113          	add	sp,sp,16
   11b40:	00008067          	ret
   11b44:	00c45783          	lhu	a5,12(s0)
   11b48:	fff00913          	li	s2,-1
   11b4c:	0807f793          	and	a5,a5,128
   11b50:	f8078ee3          	beqz	a5,11aec <_fclose_r+0x88>
   11b54:	01042583          	lw	a1,16(s0)
   11b58:	00048513          	mv	a0,s1
   11b5c:	c40ff0ef          	jal	10f9c <_free_r>
   11b60:	f8dff06f          	j	11aec <_fclose_r+0x88>
   11b64:	b75fe0ef          	jal	106d8 <__sinit>
   11b68:	f29ff06f          	j	11a90 <_fclose_r+0x2c>

00011b6c <fclose>:
   11b6c:	00050593          	mv	a1,a0
   11b70:	d641a503          	lw	a0,-668(gp) # 1372c <_impure_ptr>
   11b74:	ef1ff06f          	j	11a64 <_fclose_r>

00011b78 <__sflush_r>:
   11b78:	00c59703          	lh	a4,12(a1)
   11b7c:	fe010113          	add	sp,sp,-32
   11b80:	00812c23          	sw	s0,24(sp)
   11b84:	01312623          	sw	s3,12(sp)
   11b88:	00112e23          	sw	ra,28(sp)
   11b8c:	00877793          	and	a5,a4,8
   11b90:	00058413          	mv	s0,a1
   11b94:	00050993          	mv	s3,a0
   11b98:	12079063          	bnez	a5,11cb8 <__sflush_r+0x140>
   11b9c:	000017b7          	lui	a5,0x1
   11ba0:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   11ba4:	0045a683          	lw	a3,4(a1)
   11ba8:	00f767b3          	or	a5,a4,a5
   11bac:	00f59623          	sh	a5,12(a1)
   11bb0:	18d05263          	blez	a3,11d34 <__sflush_r+0x1bc>
   11bb4:	02842803          	lw	a6,40(s0)
   11bb8:	0e080463          	beqz	a6,11ca0 <__sflush_r+0x128>
   11bbc:	00912a23          	sw	s1,20(sp)
   11bc0:	01371693          	sll	a3,a4,0x13
   11bc4:	0009a483          	lw	s1,0(s3)
   11bc8:	0009a023          	sw	zero,0(s3)
   11bcc:	01c42583          	lw	a1,28(s0)
   11bd0:	1606ce63          	bltz	a3,11d4c <__sflush_r+0x1d4>
   11bd4:	00000613          	li	a2,0
   11bd8:	00100693          	li	a3,1
   11bdc:	00098513          	mv	a0,s3
   11be0:	000800e7          	jalr	a6
   11be4:	fff00793          	li	a5,-1
   11be8:	00050613          	mv	a2,a0
   11bec:	1af50463          	beq	a0,a5,11d94 <__sflush_r+0x21c>
   11bf0:	00c41783          	lh	a5,12(s0)
   11bf4:	02842803          	lw	a6,40(s0)
   11bf8:	01c42583          	lw	a1,28(s0)
   11bfc:	0047f793          	and	a5,a5,4
   11c00:	00078e63          	beqz	a5,11c1c <__sflush_r+0xa4>
   11c04:	00442703          	lw	a4,4(s0)
   11c08:	03042783          	lw	a5,48(s0)
   11c0c:	40e60633          	sub	a2,a2,a4
   11c10:	00078663          	beqz	a5,11c1c <__sflush_r+0xa4>
   11c14:	03c42783          	lw	a5,60(s0)
   11c18:	40f60633          	sub	a2,a2,a5
   11c1c:	00000693          	li	a3,0
   11c20:	00098513          	mv	a0,s3
   11c24:	000800e7          	jalr	a6
   11c28:	fff00793          	li	a5,-1
   11c2c:	12f51463          	bne	a0,a5,11d54 <__sflush_r+0x1dc>
   11c30:	0009a683          	lw	a3,0(s3)
   11c34:	01d00793          	li	a5,29
   11c38:	00c41703          	lh	a4,12(s0)
   11c3c:	16d7ea63          	bltu	a5,a3,11db0 <__sflush_r+0x238>
   11c40:	204007b7          	lui	a5,0x20400
   11c44:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203ec5a1>
   11c48:	00d7d7b3          	srl	a5,a5,a3
   11c4c:	0017f793          	and	a5,a5,1
   11c50:	16078063          	beqz	a5,11db0 <__sflush_r+0x238>
   11c54:	01042603          	lw	a2,16(s0)
   11c58:	fffff7b7          	lui	a5,0xfffff
   11c5c:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebd9f>
   11c60:	00f777b3          	and	a5,a4,a5
   11c64:	00f41623          	sh	a5,12(s0)
   11c68:	00042223          	sw	zero,4(s0)
   11c6c:	00c42023          	sw	a2,0(s0)
   11c70:	01371793          	sll	a5,a4,0x13
   11c74:	0007d463          	bgez	a5,11c7c <__sflush_r+0x104>
   11c78:	10068263          	beqz	a3,11d7c <__sflush_r+0x204>
   11c7c:	03042583          	lw	a1,48(s0)
   11c80:	0099a023          	sw	s1,0(s3)
   11c84:	10058463          	beqz	a1,11d8c <__sflush_r+0x214>
   11c88:	04040793          	add	a5,s0,64
   11c8c:	00f58663          	beq	a1,a5,11c98 <__sflush_r+0x120>
   11c90:	00098513          	mv	a0,s3
   11c94:	b08ff0ef          	jal	10f9c <_free_r>
   11c98:	01412483          	lw	s1,20(sp)
   11c9c:	02042823          	sw	zero,48(s0)
   11ca0:	00000513          	li	a0,0
   11ca4:	01c12083          	lw	ra,28(sp)
   11ca8:	01812403          	lw	s0,24(sp)
   11cac:	00c12983          	lw	s3,12(sp)
   11cb0:	02010113          	add	sp,sp,32
   11cb4:	00008067          	ret
   11cb8:	01212823          	sw	s2,16(sp)
   11cbc:	0105a903          	lw	s2,16(a1)
   11cc0:	08090263          	beqz	s2,11d44 <__sflush_r+0x1cc>
   11cc4:	00912a23          	sw	s1,20(sp)
   11cc8:	0005a483          	lw	s1,0(a1)
   11ccc:	00377713          	and	a4,a4,3
   11cd0:	0125a023          	sw	s2,0(a1)
   11cd4:	412484b3          	sub	s1,s1,s2
   11cd8:	00000793          	li	a5,0
   11cdc:	00071463          	bnez	a4,11ce4 <__sflush_r+0x16c>
   11ce0:	0145a783          	lw	a5,20(a1)
   11ce4:	00f42423          	sw	a5,8(s0)
   11ce8:	00904863          	bgtz	s1,11cf8 <__sflush_r+0x180>
   11cec:	0540006f          	j	11d40 <__sflush_r+0x1c8>
   11cf0:	00a90933          	add	s2,s2,a0
   11cf4:	04905663          	blez	s1,11d40 <__sflush_r+0x1c8>
   11cf8:	02442783          	lw	a5,36(s0)
   11cfc:	01c42583          	lw	a1,28(s0)
   11d00:	00048693          	mv	a3,s1
   11d04:	00090613          	mv	a2,s2
   11d08:	00098513          	mv	a0,s3
   11d0c:	000780e7          	jalr	a5
   11d10:	40a484b3          	sub	s1,s1,a0
   11d14:	fca04ee3          	bgtz	a0,11cf0 <__sflush_r+0x178>
   11d18:	00c41703          	lh	a4,12(s0)
   11d1c:	01012903          	lw	s2,16(sp)
   11d20:	04076713          	or	a4,a4,64
   11d24:	01412483          	lw	s1,20(sp)
   11d28:	00e41623          	sh	a4,12(s0)
   11d2c:	fff00513          	li	a0,-1
   11d30:	f75ff06f          	j	11ca4 <__sflush_r+0x12c>
   11d34:	03c5a683          	lw	a3,60(a1)
   11d38:	e6d04ee3          	bgtz	a3,11bb4 <__sflush_r+0x3c>
   11d3c:	f65ff06f          	j	11ca0 <__sflush_r+0x128>
   11d40:	01412483          	lw	s1,20(sp)
   11d44:	01012903          	lw	s2,16(sp)
   11d48:	f59ff06f          	j	11ca0 <__sflush_r+0x128>
   11d4c:	05042603          	lw	a2,80(s0)
   11d50:	eadff06f          	j	11bfc <__sflush_r+0x84>
   11d54:	00c41703          	lh	a4,12(s0)
   11d58:	01042683          	lw	a3,16(s0)
   11d5c:	fffff7b7          	lui	a5,0xfffff
   11d60:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebd9f>
   11d64:	00f777b3          	and	a5,a4,a5
   11d68:	00f41623          	sh	a5,12(s0)
   11d6c:	00042223          	sw	zero,4(s0)
   11d70:	00d42023          	sw	a3,0(s0)
   11d74:	01371793          	sll	a5,a4,0x13
   11d78:	f007d2e3          	bgez	a5,11c7c <__sflush_r+0x104>
   11d7c:	03042583          	lw	a1,48(s0)
   11d80:	04a42823          	sw	a0,80(s0)
   11d84:	0099a023          	sw	s1,0(s3)
   11d88:	f00590e3          	bnez	a1,11c88 <__sflush_r+0x110>
   11d8c:	01412483          	lw	s1,20(sp)
   11d90:	f11ff06f          	j	11ca0 <__sflush_r+0x128>
   11d94:	0009a783          	lw	a5,0(s3)
   11d98:	e4078ce3          	beqz	a5,11bf0 <__sflush_r+0x78>
   11d9c:	01d00713          	li	a4,29
   11da0:	00e78c63          	beq	a5,a4,11db8 <__sflush_r+0x240>
   11da4:	01600713          	li	a4,22
   11da8:	00e78863          	beq	a5,a4,11db8 <__sflush_r+0x240>
   11dac:	00c41703          	lh	a4,12(s0)
   11db0:	04076713          	or	a4,a4,64
   11db4:	f71ff06f          	j	11d24 <__sflush_r+0x1ac>
   11db8:	0099a023          	sw	s1,0(s3)
   11dbc:	01412483          	lw	s1,20(sp)
   11dc0:	ee1ff06f          	j	11ca0 <__sflush_r+0x128>

00011dc4 <_fflush_r>:
   11dc4:	fe010113          	add	sp,sp,-32
   11dc8:	00812c23          	sw	s0,24(sp)
   11dcc:	00112e23          	sw	ra,28(sp)
   11dd0:	00050413          	mv	s0,a0
   11dd4:	00050663          	beqz	a0,11de0 <_fflush_r+0x1c>
   11dd8:	03452783          	lw	a5,52(a0)
   11ddc:	02078a63          	beqz	a5,11e10 <_fflush_r+0x4c>
   11de0:	00c59783          	lh	a5,12(a1)
   11de4:	00079c63          	bnez	a5,11dfc <_fflush_r+0x38>
   11de8:	01c12083          	lw	ra,28(sp)
   11dec:	01812403          	lw	s0,24(sp)
   11df0:	00000513          	li	a0,0
   11df4:	02010113          	add	sp,sp,32
   11df8:	00008067          	ret
   11dfc:	00040513          	mv	a0,s0
   11e00:	01812403          	lw	s0,24(sp)
   11e04:	01c12083          	lw	ra,28(sp)
   11e08:	02010113          	add	sp,sp,32
   11e0c:	d6dff06f          	j	11b78 <__sflush_r>
   11e10:	00b12623          	sw	a1,12(sp)
   11e14:	8c5fe0ef          	jal	106d8 <__sinit>
   11e18:	00c12583          	lw	a1,12(sp)
   11e1c:	fc5ff06f          	j	11de0 <_fflush_r+0x1c>

00011e20 <fflush>:
   11e20:	06050063          	beqz	a0,11e80 <fflush+0x60>
   11e24:	00050593          	mv	a1,a0
   11e28:	d641a503          	lw	a0,-668(gp) # 1372c <_impure_ptr>
   11e2c:	00050663          	beqz	a0,11e38 <fflush+0x18>
   11e30:	03452783          	lw	a5,52(a0)
   11e34:	00078c63          	beqz	a5,11e4c <fflush+0x2c>
   11e38:	00c59783          	lh	a5,12(a1)
   11e3c:	00079663          	bnez	a5,11e48 <fflush+0x28>
   11e40:	00000513          	li	a0,0
   11e44:	00008067          	ret
   11e48:	d31ff06f          	j	11b78 <__sflush_r>
   11e4c:	fe010113          	add	sp,sp,-32
   11e50:	00b12623          	sw	a1,12(sp)
   11e54:	00a12423          	sw	a0,8(sp)
   11e58:	00112e23          	sw	ra,28(sp)
   11e5c:	87dfe0ef          	jal	106d8 <__sinit>
   11e60:	00c12583          	lw	a1,12(sp)
   11e64:	00812503          	lw	a0,8(sp)
   11e68:	00c59783          	lh	a5,12(a1)
   11e6c:	02079663          	bnez	a5,11e98 <fflush+0x78>
   11e70:	01c12083          	lw	ra,28(sp)
   11e74:	00000513          	li	a0,0
   11e78:	02010113          	add	sp,sp,32
   11e7c:	00008067          	ret
   11e80:	000125b7          	lui	a1,0x12
   11e84:	00013537          	lui	a0,0x13
   11e88:	82818613          	add	a2,gp,-2008 # 131f0 <__sglue>
   11e8c:	dc458593          	add	a1,a1,-572 # 11dc4 <_fflush_r>
   11e90:	20050513          	add	a0,a0,512 # 13200 <_impure_data>
   11e94:	899fe06f          	j	1072c <_fwalk_sglue>
   11e98:	01c12083          	lw	ra,28(sp)
   11e9c:	02010113          	add	sp,sp,32
   11ea0:	cd9ff06f          	j	11b78 <__sflush_r>

00011ea4 <_sbrk_r>:
   11ea4:	ff010113          	add	sp,sp,-16
   11ea8:	00812423          	sw	s0,8(sp)
   11eac:	00912223          	sw	s1,4(sp)
   11eb0:	00050413          	mv	s0,a0
   11eb4:	00058513          	mv	a0,a1
   11eb8:	00112623          	sw	ra,12(sp)
   11ebc:	d601aa23          	sw	zero,-652(gp) # 1373c <errno>
   11ec0:	230000ef          	jal	120f0 <_sbrk>
   11ec4:	fff00793          	li	a5,-1
   11ec8:	00f50c63          	beq	a0,a5,11ee0 <_sbrk_r+0x3c>
   11ecc:	00c12083          	lw	ra,12(sp)
   11ed0:	00812403          	lw	s0,8(sp)
   11ed4:	00412483          	lw	s1,4(sp)
   11ed8:	01010113          	add	sp,sp,16
   11edc:	00008067          	ret
   11ee0:	d741a783          	lw	a5,-652(gp) # 1373c <errno>
   11ee4:	fe0784e3          	beqz	a5,11ecc <_sbrk_r+0x28>
   11ee8:	00c12083          	lw	ra,12(sp)
   11eec:	00f42023          	sw	a5,0(s0)
   11ef0:	00812403          	lw	s0,8(sp)
   11ef4:	00412483          	lw	s1,4(sp)
   11ef8:	01010113          	add	sp,sp,16
   11efc:	00008067          	ret

00011f00 <__libc_fini_array>:
   11f00:	ff010113          	add	sp,sp,-16
   11f04:	00812423          	sw	s0,8(sp)
   11f08:	000137b7          	lui	a5,0x13
   11f0c:	00013437          	lui	s0,0x13
   11f10:	1c078793          	add	a5,a5,448 # 131c0 <__do_global_dtors_aux_fini_array_entry>
   11f14:	1c440413          	add	s0,s0,452 # 131c4 <__fini_array_end>
   11f18:	40f40433          	sub	s0,s0,a5
   11f1c:	00912223          	sw	s1,4(sp)
   11f20:	00112623          	sw	ra,12(sp)
   11f24:	40245493          	sra	s1,s0,0x2
   11f28:	02048063          	beqz	s1,11f48 <__libc_fini_array+0x48>
   11f2c:	ffc40413          	add	s0,s0,-4
   11f30:	00f40433          	add	s0,s0,a5
   11f34:	00042783          	lw	a5,0(s0)
   11f38:	fff48493          	add	s1,s1,-1
   11f3c:	ffc40413          	add	s0,s0,-4
   11f40:	000780e7          	jalr	a5
   11f44:	fe0498e3          	bnez	s1,11f34 <__libc_fini_array+0x34>
   11f48:	00c12083          	lw	ra,12(sp)
   11f4c:	00812403          	lw	s0,8(sp)
   11f50:	00412483          	lw	s1,4(sp)
   11f54:	01010113          	add	sp,sp,16
   11f58:	00008067          	ret

00011f5c <__register_exitproc>:
   11f5c:	d781a783          	lw	a5,-648(gp) # 13740 <__atexit>
   11f60:	04078c63          	beqz	a5,11fb8 <__register_exitproc+0x5c>
   11f64:	0047a703          	lw	a4,4(a5)
   11f68:	01f00813          	li	a6,31
   11f6c:	08e84063          	blt	a6,a4,11fec <__register_exitproc+0x90>
   11f70:	00271813          	sll	a6,a4,0x2
   11f74:	02050663          	beqz	a0,11fa0 <__register_exitproc+0x44>
   11f78:	01078333          	add	t1,a5,a6
   11f7c:	08c32423          	sw	a2,136(t1)
   11f80:	1887a883          	lw	a7,392(a5)
   11f84:	00100613          	li	a2,1
   11f88:	00e61633          	sll	a2,a2,a4
   11f8c:	00c8e8b3          	or	a7,a7,a2
   11f90:	1917a423          	sw	a7,392(a5)
   11f94:	10d32423          	sw	a3,264(t1)
   11f98:	00200693          	li	a3,2
   11f9c:	02d50663          	beq	a0,a3,11fc8 <__register_exitproc+0x6c>
   11fa0:	00170713          	add	a4,a4,1
   11fa4:	00e7a223          	sw	a4,4(a5)
   11fa8:	010787b3          	add	a5,a5,a6
   11fac:	00b7a423          	sw	a1,8(a5)
   11fb0:	00000513          	li	a0,0
   11fb4:	00008067          	ret
   11fb8:	f0818813          	add	a6,gp,-248 # 138d0 <__atexit0>
   11fbc:	d701ac23          	sw	a6,-648(gp) # 13740 <__atexit>
   11fc0:	f0818793          	add	a5,gp,-248 # 138d0 <__atexit0>
   11fc4:	fa1ff06f          	j	11f64 <__register_exitproc+0x8>
   11fc8:	18c7a683          	lw	a3,396(a5)
   11fcc:	00170713          	add	a4,a4,1
   11fd0:	00e7a223          	sw	a4,4(a5)
   11fd4:	00c6e6b3          	or	a3,a3,a2
   11fd8:	18d7a623          	sw	a3,396(a5)
   11fdc:	010787b3          	add	a5,a5,a6
   11fe0:	00b7a423          	sw	a1,8(a5)
   11fe4:	00000513          	li	a0,0
   11fe8:	00008067          	ret
   11fec:	fff00513          	li	a0,-1
   11ff0:	00008067          	ret

00011ff4 <_close>:
   11ff4:	ff010113          	add	sp,sp,-16
   11ff8:	00112623          	sw	ra,12(sp)
   11ffc:	00812423          	sw	s0,8(sp)
   12000:	03900893          	li	a7,57
   12004:	00000073          	ecall
   12008:	00050413          	mv	s0,a0
   1200c:	00054c63          	bltz	a0,12024 <_close+0x30>
   12010:	00c12083          	lw	ra,12(sp)
   12014:	00040513          	mv	a0,s0
   12018:	00812403          	lw	s0,8(sp)
   1201c:	01010113          	add	sp,sp,16
   12020:	00008067          	ret
   12024:	40800433          	neg	s0,s0
   12028:	184000ef          	jal	121ac <__errno>
   1202c:	00852023          	sw	s0,0(a0)
   12030:	fff00413          	li	s0,-1
   12034:	fddff06f          	j	12010 <_close+0x1c>

00012038 <_exit>:
   12038:	05d00893          	li	a7,93
   1203c:	00000073          	ecall
   12040:	00054463          	bltz	a0,12048 <_exit+0x10>
   12044:	0000006f          	j	12044 <_exit+0xc>
   12048:	ff010113          	add	sp,sp,-16
   1204c:	00812423          	sw	s0,8(sp)
   12050:	00050413          	mv	s0,a0
   12054:	00112623          	sw	ra,12(sp)
   12058:	40800433          	neg	s0,s0
   1205c:	150000ef          	jal	121ac <__errno>
   12060:	00852023          	sw	s0,0(a0)
   12064:	0000006f          	j	12064 <_exit+0x2c>

00012068 <_lseek>:
   12068:	ff010113          	add	sp,sp,-16
   1206c:	00112623          	sw	ra,12(sp)
   12070:	00812423          	sw	s0,8(sp)
   12074:	03e00893          	li	a7,62
   12078:	00000073          	ecall
   1207c:	00050413          	mv	s0,a0
   12080:	00054c63          	bltz	a0,12098 <_lseek+0x30>
   12084:	00c12083          	lw	ra,12(sp)
   12088:	00040513          	mv	a0,s0
   1208c:	00812403          	lw	s0,8(sp)
   12090:	01010113          	add	sp,sp,16
   12094:	00008067          	ret
   12098:	40800433          	neg	s0,s0
   1209c:	110000ef          	jal	121ac <__errno>
   120a0:	00852023          	sw	s0,0(a0)
   120a4:	fff00413          	li	s0,-1
   120a8:	fddff06f          	j	12084 <_lseek+0x1c>

000120ac <_read>:
   120ac:	ff010113          	add	sp,sp,-16
   120b0:	00112623          	sw	ra,12(sp)
   120b4:	00812423          	sw	s0,8(sp)
   120b8:	03f00893          	li	a7,63
   120bc:	00000073          	ecall
   120c0:	00050413          	mv	s0,a0
   120c4:	00054c63          	bltz	a0,120dc <_read+0x30>
   120c8:	00c12083          	lw	ra,12(sp)
   120cc:	00040513          	mv	a0,s0
   120d0:	00812403          	lw	s0,8(sp)
   120d4:	01010113          	add	sp,sp,16
   120d8:	00008067          	ret
   120dc:	40800433          	neg	s0,s0
   120e0:	0cc000ef          	jal	121ac <__errno>
   120e4:	00852023          	sw	s0,0(a0)
   120e8:	fff00413          	li	s0,-1
   120ec:	fddff06f          	j	120c8 <_read+0x1c>

000120f0 <_sbrk>:
   120f0:	d881a703          	lw	a4,-632(gp) # 13750 <heap_end.0>
   120f4:	ff010113          	add	sp,sp,-16
   120f8:	00112623          	sw	ra,12(sp)
   120fc:	00050793          	mv	a5,a0
   12100:	02071063          	bnez	a4,12120 <_sbrk+0x30>
   12104:	0d600893          	li	a7,214
   12108:	00000513          	li	a0,0
   1210c:	00000073          	ecall
   12110:	fff00613          	li	a2,-1
   12114:	00050713          	mv	a4,a0
   12118:	02c50a63          	beq	a0,a2,1214c <_sbrk+0x5c>
   1211c:	d8a1a423          	sw	a0,-632(gp) # 13750 <heap_end.0>
   12120:	0d600893          	li	a7,214
   12124:	00e78533          	add	a0,a5,a4
   12128:	00000073          	ecall
   1212c:	d881a703          	lw	a4,-632(gp) # 13750 <heap_end.0>
   12130:	00e787b3          	add	a5,a5,a4
   12134:	00f51c63          	bne	a0,a5,1214c <_sbrk+0x5c>
   12138:	00c12083          	lw	ra,12(sp)
   1213c:	d8a1a423          	sw	a0,-632(gp) # 13750 <heap_end.0>
   12140:	00070513          	mv	a0,a4
   12144:	01010113          	add	sp,sp,16
   12148:	00008067          	ret
   1214c:	060000ef          	jal	121ac <__errno>
   12150:	00c12083          	lw	ra,12(sp)
   12154:	00c00793          	li	a5,12
   12158:	00f52023          	sw	a5,0(a0)
   1215c:	fff00513          	li	a0,-1
   12160:	01010113          	add	sp,sp,16
   12164:	00008067          	ret

00012168 <_write>:
   12168:	ff010113          	add	sp,sp,-16
   1216c:	00112623          	sw	ra,12(sp)
   12170:	00812423          	sw	s0,8(sp)
   12174:	04000893          	li	a7,64
   12178:	00000073          	ecall
   1217c:	00050413          	mv	s0,a0
   12180:	00054c63          	bltz	a0,12198 <_write+0x30>
   12184:	00c12083          	lw	ra,12(sp)
   12188:	00040513          	mv	a0,s0
   1218c:	00812403          	lw	s0,8(sp)
   12190:	01010113          	add	sp,sp,16
   12194:	00008067          	ret
   12198:	40800433          	neg	s0,s0
   1219c:	010000ef          	jal	121ac <__errno>
   121a0:	00852023          	sw	s0,0(a0)
   121a4:	fff00413          	li	s0,-1
   121a8:	fddff06f          	j	12184 <_write+0x1c>

000121ac <__errno>:
   121ac:	d641a503          	lw	a0,-668(gp) # 1372c <_impure_ptr>
   121b0:	00008067          	ret

Disassembly of section .eh_frame:

000131b4 <__EH_FRAME_BEGIN__>:
   131b4:	0000                	.insn	2, 0x
	...

Disassembly of section .init_array:

000131b8 <__init_array_start>:
   131b8:	00c0                	.insn	2, 0x00c0
   131ba:	0001                	.insn	2, 0x0001

000131bc <__frame_dummy_init_array_entry>:
   131bc:	0168                	.insn	2, 0x0168
   131be:	0001                	.insn	2, 0x0001

Disassembly of section .fini_array:

000131c0 <__do_global_dtors_aux_fini_array_entry>:
   131c0:	0124                	.insn	2, 0x0124
   131c2:	0001                	.insn	2, 0x0001

Disassembly of section .data:

000131c8 <result>:
   131c8:	0001                	.insn	2, 0x0001
   131ca:	0000                	.insn	2, 0x
   131cc:	0002                	.insn	2, 0x0002
   131ce:	0000                	.insn	2, 0x
   131d0:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   131d4:	0004                	.insn	2, 0x0004
   131d6:	0000                	.insn	2, 0x
   131d8:	0005                	.insn	2, 0x0005
   131da:	0000                	.insn	2, 0x
   131dc:	0002                	.insn	2, 0x0002
   131de:	0000                	.insn	2, 0x
   131e0:	0004                	.insn	2, 0x0004
   131e2:	0000                	.insn	2, 0x
   131e4:	0006                	.insn	2, 0x0006
   131e6:	0000                	.insn	2, 0x
   131e8:	0008                	.insn	2, 0x0008
   131ea:	0000                	.insn	2, 0x
   131ec:	000a                	.insn	2, 0x000a
	...

000131f0 <__sglue>:
   131f0:	0000                	.insn	2, 0x
   131f2:	0000                	.insn	2, 0x
   131f4:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   131f8:	3770                	.insn	2, 0x3770
   131fa:	0001                	.insn	2, 0x0001
   131fc:	0000                	.insn	2, 0x
	...

00013200 <_impure_data>:
   13200:	0000                	.insn	2, 0x
   13202:	0000                	.insn	2, 0x
   13204:	3770                	.insn	2, 0x3770
   13206:	0001                	.insn	2, 0x0001
   13208:	37d8                	.insn	2, 0x37d8
   1320a:	0001                	.insn	2, 0x0001
   1320c:	3840                	.insn	2, 0x3840
   1320e:	0001                	.insn	2, 0x0001
	...
   13298:	0001                	.insn	2, 0x0001
   1329a:	0000                	.insn	2, 0x
   1329c:	0000                	.insn	2, 0x
   1329e:	0000                	.insn	2, 0x
   132a0:	330e                	.insn	2, 0x330e
   132a2:	abcd                	.insn	2, 0xabcd
   132a4:	1234                	.insn	2, 0x1234
   132a6:	e66d                	.insn	2, 0xe66d
   132a8:	deec                	.insn	2, 0xdeec
   132aa:	0005                	.insn	2, 0x0005
   132ac:	0000000b          	.insn	4, 0x000b
	...

00013320 <__malloc_av_>:
	...
   13328:	3320                	.insn	2, 0x3320
   1332a:	0001                	.insn	2, 0x0001
   1332c:	3320                	.insn	2, 0x3320
   1332e:	0001                	.insn	2, 0x0001
   13330:	3328                	.insn	2, 0x3328
   13332:	0001                	.insn	2, 0x0001
   13334:	3328                	.insn	2, 0x3328
   13336:	0001                	.insn	2, 0x0001
   13338:	3330                	.insn	2, 0x3330
   1333a:	0001                	.insn	2, 0x0001
   1333c:	3330                	.insn	2, 0x3330
   1333e:	0001                	.insn	2, 0x0001
   13340:	3338                	.insn	2, 0x3338
   13342:	0001                	.insn	2, 0x0001
   13344:	3338                	.insn	2, 0x3338
   13346:	0001                	.insn	2, 0x0001
   13348:	3340                	.insn	2, 0x3340
   1334a:	0001                	.insn	2, 0x0001
   1334c:	3340                	.insn	2, 0x3340
   1334e:	0001                	.insn	2, 0x0001
   13350:	3348                	.insn	2, 0x3348
   13352:	0001                	.insn	2, 0x0001
   13354:	3348                	.insn	2, 0x3348
   13356:	0001                	.insn	2, 0x0001
   13358:	3350                	.insn	2, 0x3350
   1335a:	0001                	.insn	2, 0x0001
   1335c:	3350                	.insn	2, 0x3350
   1335e:	0001                	.insn	2, 0x0001
   13360:	3358                	.insn	2, 0x3358
   13362:	0001                	.insn	2, 0x0001
   13364:	3358                	.insn	2, 0x3358
   13366:	0001                	.insn	2, 0x0001
   13368:	3360                	.insn	2, 0x3360
   1336a:	0001                	.insn	2, 0x0001
   1336c:	3360                	.insn	2, 0x3360
   1336e:	0001                	.insn	2, 0x0001
   13370:	3368                	.insn	2, 0x3368
   13372:	0001                	.insn	2, 0x0001
   13374:	3368                	.insn	2, 0x3368
   13376:	0001                	.insn	2, 0x0001
   13378:	3370                	.insn	2, 0x3370
   1337a:	0001                	.insn	2, 0x0001
   1337c:	3370                	.insn	2, 0x3370
   1337e:	0001                	.insn	2, 0x0001
   13380:	3378                	.insn	2, 0x3378
   13382:	0001                	.insn	2, 0x0001
   13384:	3378                	.insn	2, 0x3378
   13386:	0001                	.insn	2, 0x0001
   13388:	3380                	.insn	2, 0x3380
   1338a:	0001                	.insn	2, 0x0001
   1338c:	3380                	.insn	2, 0x3380
   1338e:	0001                	.insn	2, 0x0001
   13390:	3388                	.insn	2, 0x3388
   13392:	0001                	.insn	2, 0x0001
   13394:	3388                	.insn	2, 0x3388
   13396:	0001                	.insn	2, 0x0001
   13398:	3390                	.insn	2, 0x3390
   1339a:	0001                	.insn	2, 0x0001
   1339c:	3390                	.insn	2, 0x3390
   1339e:	0001                	.insn	2, 0x0001
   133a0:	3398                	.insn	2, 0x3398
   133a2:	0001                	.insn	2, 0x0001
   133a4:	3398                	.insn	2, 0x3398
   133a6:	0001                	.insn	2, 0x0001
   133a8:	33a0                	.insn	2, 0x33a0
   133aa:	0001                	.insn	2, 0x0001
   133ac:	33a0                	.insn	2, 0x33a0
   133ae:	0001                	.insn	2, 0x0001
   133b0:	33a8                	.insn	2, 0x33a8
   133b2:	0001                	.insn	2, 0x0001
   133b4:	33a8                	.insn	2, 0x33a8
   133b6:	0001                	.insn	2, 0x0001
   133b8:	33b0                	.insn	2, 0x33b0
   133ba:	0001                	.insn	2, 0x0001
   133bc:	33b0                	.insn	2, 0x33b0
   133be:	0001                	.insn	2, 0x0001
   133c0:	33b8                	.insn	2, 0x33b8
   133c2:	0001                	.insn	2, 0x0001
   133c4:	33b8                	.insn	2, 0x33b8
   133c6:	0001                	.insn	2, 0x0001
   133c8:	33c0                	.insn	2, 0x33c0
   133ca:	0001                	.insn	2, 0x0001
   133cc:	33c0                	.insn	2, 0x33c0
   133ce:	0001                	.insn	2, 0x0001
   133d0:	33c8                	.insn	2, 0x33c8
   133d2:	0001                	.insn	2, 0x0001
   133d4:	33c8                	.insn	2, 0x33c8
   133d6:	0001                	.insn	2, 0x0001
   133d8:	33d0                	.insn	2, 0x33d0
   133da:	0001                	.insn	2, 0x0001
   133dc:	33d0                	.insn	2, 0x33d0
   133de:	0001                	.insn	2, 0x0001
   133e0:	33d8                	.insn	2, 0x33d8
   133e2:	0001                	.insn	2, 0x0001
   133e4:	33d8                	.insn	2, 0x33d8
   133e6:	0001                	.insn	2, 0x0001
   133e8:	33e0                	.insn	2, 0x33e0
   133ea:	0001                	.insn	2, 0x0001
   133ec:	33e0                	.insn	2, 0x33e0
   133ee:	0001                	.insn	2, 0x0001
   133f0:	33e8                	.insn	2, 0x33e8
   133f2:	0001                	.insn	2, 0x0001
   133f4:	33e8                	.insn	2, 0x33e8
   133f6:	0001                	.insn	2, 0x0001
   133f8:	33f0                	.insn	2, 0x33f0
   133fa:	0001                	.insn	2, 0x0001
   133fc:	33f0                	.insn	2, 0x33f0
   133fe:	0001                	.insn	2, 0x0001
   13400:	33f8                	.insn	2, 0x33f8
   13402:	0001                	.insn	2, 0x0001
   13404:	33f8                	.insn	2, 0x33f8
   13406:	0001                	.insn	2, 0x0001
   13408:	3400                	.insn	2, 0x3400
   1340a:	0001                	.insn	2, 0x0001
   1340c:	3400                	.insn	2, 0x3400
   1340e:	0001                	.insn	2, 0x0001
   13410:	3408                	.insn	2, 0x3408
   13412:	0001                	.insn	2, 0x0001
   13414:	3408                	.insn	2, 0x3408
   13416:	0001                	.insn	2, 0x0001
   13418:	3410                	.insn	2, 0x3410
   1341a:	0001                	.insn	2, 0x0001
   1341c:	3410                	.insn	2, 0x3410
   1341e:	0001                	.insn	2, 0x0001
   13420:	3418                	.insn	2, 0x3418
   13422:	0001                	.insn	2, 0x0001
   13424:	3418                	.insn	2, 0x3418
   13426:	0001                	.insn	2, 0x0001
   13428:	3420                	.insn	2, 0x3420
   1342a:	0001                	.insn	2, 0x0001
   1342c:	3420                	.insn	2, 0x3420
   1342e:	0001                	.insn	2, 0x0001
   13430:	3428                	.insn	2, 0x3428
   13432:	0001                	.insn	2, 0x0001
   13434:	3428                	.insn	2, 0x3428
   13436:	0001                	.insn	2, 0x0001
   13438:	3430                	.insn	2, 0x3430
   1343a:	0001                	.insn	2, 0x0001
   1343c:	3430                	.insn	2, 0x3430
   1343e:	0001                	.insn	2, 0x0001
   13440:	3438                	.insn	2, 0x3438
   13442:	0001                	.insn	2, 0x0001
   13444:	3438                	.insn	2, 0x3438
   13446:	0001                	.insn	2, 0x0001
   13448:	3440                	.insn	2, 0x3440
   1344a:	0001                	.insn	2, 0x0001
   1344c:	3440                	.insn	2, 0x3440
   1344e:	0001                	.insn	2, 0x0001
   13450:	3448                	.insn	2, 0x3448
   13452:	0001                	.insn	2, 0x0001
   13454:	3448                	.insn	2, 0x3448
   13456:	0001                	.insn	2, 0x0001
   13458:	3450                	.insn	2, 0x3450
   1345a:	0001                	.insn	2, 0x0001
   1345c:	3450                	.insn	2, 0x3450
   1345e:	0001                	.insn	2, 0x0001
   13460:	3458                	.insn	2, 0x3458
   13462:	0001                	.insn	2, 0x0001
   13464:	3458                	.insn	2, 0x3458
   13466:	0001                	.insn	2, 0x0001
   13468:	3460                	.insn	2, 0x3460
   1346a:	0001                	.insn	2, 0x0001
   1346c:	3460                	.insn	2, 0x3460
   1346e:	0001                	.insn	2, 0x0001
   13470:	3468                	.insn	2, 0x3468
   13472:	0001                	.insn	2, 0x0001
   13474:	3468                	.insn	2, 0x3468
   13476:	0001                	.insn	2, 0x0001
   13478:	3470                	.insn	2, 0x3470
   1347a:	0001                	.insn	2, 0x0001
   1347c:	3470                	.insn	2, 0x3470
   1347e:	0001                	.insn	2, 0x0001
   13480:	3478                	.insn	2, 0x3478
   13482:	0001                	.insn	2, 0x0001
   13484:	3478                	.insn	2, 0x3478
   13486:	0001                	.insn	2, 0x0001
   13488:	3480                	.insn	2, 0x3480
   1348a:	0001                	.insn	2, 0x0001
   1348c:	3480                	.insn	2, 0x3480
   1348e:	0001                	.insn	2, 0x0001
   13490:	3488                	.insn	2, 0x3488
   13492:	0001                	.insn	2, 0x0001
   13494:	3488                	.insn	2, 0x3488
   13496:	0001                	.insn	2, 0x0001
   13498:	3490                	.insn	2, 0x3490
   1349a:	0001                	.insn	2, 0x0001
   1349c:	3490                	.insn	2, 0x3490
   1349e:	0001                	.insn	2, 0x0001
   134a0:	3498                	.insn	2, 0x3498
   134a2:	0001                	.insn	2, 0x0001
   134a4:	3498                	.insn	2, 0x3498
   134a6:	0001                	.insn	2, 0x0001
   134a8:	34a0                	.insn	2, 0x34a0
   134aa:	0001                	.insn	2, 0x0001
   134ac:	34a0                	.insn	2, 0x34a0
   134ae:	0001                	.insn	2, 0x0001
   134b0:	34a8                	.insn	2, 0x34a8
   134b2:	0001                	.insn	2, 0x0001
   134b4:	34a8                	.insn	2, 0x34a8
   134b6:	0001                	.insn	2, 0x0001
   134b8:	34b0                	.insn	2, 0x34b0
   134ba:	0001                	.insn	2, 0x0001
   134bc:	34b0                	.insn	2, 0x34b0
   134be:	0001                	.insn	2, 0x0001
   134c0:	34b8                	.insn	2, 0x34b8
   134c2:	0001                	.insn	2, 0x0001
   134c4:	34b8                	.insn	2, 0x34b8
   134c6:	0001                	.insn	2, 0x0001
   134c8:	34c0                	.insn	2, 0x34c0
   134ca:	0001                	.insn	2, 0x0001
   134cc:	34c0                	.insn	2, 0x34c0
   134ce:	0001                	.insn	2, 0x0001
   134d0:	34c8                	.insn	2, 0x34c8
   134d2:	0001                	.insn	2, 0x0001
   134d4:	34c8                	.insn	2, 0x34c8
   134d6:	0001                	.insn	2, 0x0001
   134d8:	34d0                	.insn	2, 0x34d0
   134da:	0001                	.insn	2, 0x0001
   134dc:	34d0                	.insn	2, 0x34d0
   134de:	0001                	.insn	2, 0x0001
   134e0:	34d8                	.insn	2, 0x34d8
   134e2:	0001                	.insn	2, 0x0001
   134e4:	34d8                	.insn	2, 0x34d8
   134e6:	0001                	.insn	2, 0x0001
   134e8:	34e0                	.insn	2, 0x34e0
   134ea:	0001                	.insn	2, 0x0001
   134ec:	34e0                	.insn	2, 0x34e0
   134ee:	0001                	.insn	2, 0x0001
   134f0:	34e8                	.insn	2, 0x34e8
   134f2:	0001                	.insn	2, 0x0001
   134f4:	34e8                	.insn	2, 0x34e8
   134f6:	0001                	.insn	2, 0x0001
   134f8:	34f0                	.insn	2, 0x34f0
   134fa:	0001                	.insn	2, 0x0001
   134fc:	34f0                	.insn	2, 0x34f0
   134fe:	0001                	.insn	2, 0x0001
   13500:	34f8                	.insn	2, 0x34f8
   13502:	0001                	.insn	2, 0x0001
   13504:	34f8                	.insn	2, 0x34f8
   13506:	0001                	.insn	2, 0x0001
   13508:	3500                	.insn	2, 0x3500
   1350a:	0001                	.insn	2, 0x0001
   1350c:	3500                	.insn	2, 0x3500
   1350e:	0001                	.insn	2, 0x0001
   13510:	3508                	.insn	2, 0x3508
   13512:	0001                	.insn	2, 0x0001
   13514:	3508                	.insn	2, 0x3508
   13516:	0001                	.insn	2, 0x0001
   13518:	3510                	.insn	2, 0x3510
   1351a:	0001                	.insn	2, 0x0001
   1351c:	3510                	.insn	2, 0x3510
   1351e:	0001                	.insn	2, 0x0001
   13520:	3518                	.insn	2, 0x3518
   13522:	0001                	.insn	2, 0x0001
   13524:	3518                	.insn	2, 0x3518
   13526:	0001                	.insn	2, 0x0001
   13528:	3520                	.insn	2, 0x3520
   1352a:	0001                	.insn	2, 0x0001
   1352c:	3520                	.insn	2, 0x3520
   1352e:	0001                	.insn	2, 0x0001
   13530:	3528                	.insn	2, 0x3528
   13532:	0001                	.insn	2, 0x0001
   13534:	3528                	.insn	2, 0x3528
   13536:	0001                	.insn	2, 0x0001
   13538:	3530                	.insn	2, 0x3530
   1353a:	0001                	.insn	2, 0x0001
   1353c:	3530                	.insn	2, 0x3530
   1353e:	0001                	.insn	2, 0x0001
   13540:	3538                	.insn	2, 0x3538
   13542:	0001                	.insn	2, 0x0001
   13544:	3538                	.insn	2, 0x3538
   13546:	0001                	.insn	2, 0x0001
   13548:	3540                	.insn	2, 0x3540
   1354a:	0001                	.insn	2, 0x0001
   1354c:	3540                	.insn	2, 0x3540
   1354e:	0001                	.insn	2, 0x0001
   13550:	3548                	.insn	2, 0x3548
   13552:	0001                	.insn	2, 0x0001
   13554:	3548                	.insn	2, 0x3548
   13556:	0001                	.insn	2, 0x0001
   13558:	3550                	.insn	2, 0x3550
   1355a:	0001                	.insn	2, 0x0001
   1355c:	3550                	.insn	2, 0x3550
   1355e:	0001                	.insn	2, 0x0001
   13560:	3558                	.insn	2, 0x3558
   13562:	0001                	.insn	2, 0x0001
   13564:	3558                	.insn	2, 0x3558
   13566:	0001                	.insn	2, 0x0001
   13568:	3560                	.insn	2, 0x3560
   1356a:	0001                	.insn	2, 0x0001
   1356c:	3560                	.insn	2, 0x3560
   1356e:	0001                	.insn	2, 0x0001
   13570:	3568                	.insn	2, 0x3568
   13572:	0001                	.insn	2, 0x0001
   13574:	3568                	.insn	2, 0x3568
   13576:	0001                	.insn	2, 0x0001
   13578:	3570                	.insn	2, 0x3570
   1357a:	0001                	.insn	2, 0x0001
   1357c:	3570                	.insn	2, 0x3570
   1357e:	0001                	.insn	2, 0x0001
   13580:	3578                	.insn	2, 0x3578
   13582:	0001                	.insn	2, 0x0001
   13584:	3578                	.insn	2, 0x3578
   13586:	0001                	.insn	2, 0x0001
   13588:	3580                	.insn	2, 0x3580
   1358a:	0001                	.insn	2, 0x0001
   1358c:	3580                	.insn	2, 0x3580
   1358e:	0001                	.insn	2, 0x0001
   13590:	3588                	.insn	2, 0x3588
   13592:	0001                	.insn	2, 0x0001
   13594:	3588                	.insn	2, 0x3588
   13596:	0001                	.insn	2, 0x0001
   13598:	3590                	.insn	2, 0x3590
   1359a:	0001                	.insn	2, 0x0001
   1359c:	3590                	.insn	2, 0x3590
   1359e:	0001                	.insn	2, 0x0001
   135a0:	3598                	.insn	2, 0x3598
   135a2:	0001                	.insn	2, 0x0001
   135a4:	3598                	.insn	2, 0x3598
   135a6:	0001                	.insn	2, 0x0001
   135a8:	35a0                	.insn	2, 0x35a0
   135aa:	0001                	.insn	2, 0x0001
   135ac:	35a0                	.insn	2, 0x35a0
   135ae:	0001                	.insn	2, 0x0001
   135b0:	35a8                	.insn	2, 0x35a8
   135b2:	0001                	.insn	2, 0x0001
   135b4:	35a8                	.insn	2, 0x35a8
   135b6:	0001                	.insn	2, 0x0001
   135b8:	35b0                	.insn	2, 0x35b0
   135ba:	0001                	.insn	2, 0x0001
   135bc:	35b0                	.insn	2, 0x35b0
   135be:	0001                	.insn	2, 0x0001
   135c0:	35b8                	.insn	2, 0x35b8
   135c2:	0001                	.insn	2, 0x0001
   135c4:	35b8                	.insn	2, 0x35b8
   135c6:	0001                	.insn	2, 0x0001
   135c8:	35c0                	.insn	2, 0x35c0
   135ca:	0001                	.insn	2, 0x0001
   135cc:	35c0                	.insn	2, 0x35c0
   135ce:	0001                	.insn	2, 0x0001
   135d0:	35c8                	.insn	2, 0x35c8
   135d2:	0001                	.insn	2, 0x0001
   135d4:	35c8                	.insn	2, 0x35c8
   135d6:	0001                	.insn	2, 0x0001
   135d8:	35d0                	.insn	2, 0x35d0
   135da:	0001                	.insn	2, 0x0001
   135dc:	35d0                	.insn	2, 0x35d0
   135de:	0001                	.insn	2, 0x0001
   135e0:	35d8                	.insn	2, 0x35d8
   135e2:	0001                	.insn	2, 0x0001
   135e4:	35d8                	.insn	2, 0x35d8
   135e6:	0001                	.insn	2, 0x0001
   135e8:	35e0                	.insn	2, 0x35e0
   135ea:	0001                	.insn	2, 0x0001
   135ec:	35e0                	.insn	2, 0x35e0
   135ee:	0001                	.insn	2, 0x0001
   135f0:	35e8                	.insn	2, 0x35e8
   135f2:	0001                	.insn	2, 0x0001
   135f4:	35e8                	.insn	2, 0x35e8
   135f6:	0001                	.insn	2, 0x0001
   135f8:	35f0                	.insn	2, 0x35f0
   135fa:	0001                	.insn	2, 0x0001
   135fc:	35f0                	.insn	2, 0x35f0
   135fe:	0001                	.insn	2, 0x0001
   13600:	35f8                	.insn	2, 0x35f8
   13602:	0001                	.insn	2, 0x0001
   13604:	35f8                	.insn	2, 0x35f8
   13606:	0001                	.insn	2, 0x0001
   13608:	3600                	.insn	2, 0x3600
   1360a:	0001                	.insn	2, 0x0001
   1360c:	3600                	.insn	2, 0x3600
   1360e:	0001                	.insn	2, 0x0001
   13610:	3608                	.insn	2, 0x3608
   13612:	0001                	.insn	2, 0x0001
   13614:	3608                	.insn	2, 0x3608
   13616:	0001                	.insn	2, 0x0001
   13618:	3610                	.insn	2, 0x3610
   1361a:	0001                	.insn	2, 0x0001
   1361c:	3610                	.insn	2, 0x3610
   1361e:	0001                	.insn	2, 0x0001
   13620:	3618                	.insn	2, 0x3618
   13622:	0001                	.insn	2, 0x0001
   13624:	3618                	.insn	2, 0x3618
   13626:	0001                	.insn	2, 0x0001
   13628:	3620                	.insn	2, 0x3620
   1362a:	0001                	.insn	2, 0x0001
   1362c:	3620                	.insn	2, 0x3620
   1362e:	0001                	.insn	2, 0x0001
   13630:	3628                	.insn	2, 0x3628
   13632:	0001                	.insn	2, 0x0001
   13634:	3628                	.insn	2, 0x3628
   13636:	0001                	.insn	2, 0x0001
   13638:	3630                	.insn	2, 0x3630
   1363a:	0001                	.insn	2, 0x0001
   1363c:	3630                	.insn	2, 0x3630
   1363e:	0001                	.insn	2, 0x0001
   13640:	3638                	.insn	2, 0x3638
   13642:	0001                	.insn	2, 0x0001
   13644:	3638                	.insn	2, 0x3638
   13646:	0001                	.insn	2, 0x0001
   13648:	3640                	.insn	2, 0x3640
   1364a:	0001                	.insn	2, 0x0001
   1364c:	3640                	.insn	2, 0x3640
   1364e:	0001                	.insn	2, 0x0001
   13650:	3648                	.insn	2, 0x3648
   13652:	0001                	.insn	2, 0x0001
   13654:	3648                	.insn	2, 0x3648
   13656:	0001                	.insn	2, 0x0001
   13658:	3650                	.insn	2, 0x3650
   1365a:	0001                	.insn	2, 0x0001
   1365c:	3650                	.insn	2, 0x3650
   1365e:	0001                	.insn	2, 0x0001
   13660:	3658                	.insn	2, 0x3658
   13662:	0001                	.insn	2, 0x0001
   13664:	3658                	.insn	2, 0x3658
   13666:	0001                	.insn	2, 0x0001
   13668:	3660                	.insn	2, 0x3660
   1366a:	0001                	.insn	2, 0x0001
   1366c:	3660                	.insn	2, 0x3660
   1366e:	0001                	.insn	2, 0x0001
   13670:	3668                	.insn	2, 0x3668
   13672:	0001                	.insn	2, 0x0001
   13674:	3668                	.insn	2, 0x3668
   13676:	0001                	.insn	2, 0x0001
   13678:	3670                	.insn	2, 0x3670
   1367a:	0001                	.insn	2, 0x0001
   1367c:	3670                	.insn	2, 0x3670
   1367e:	0001                	.insn	2, 0x0001
   13680:	3678                	.insn	2, 0x3678
   13682:	0001                	.insn	2, 0x0001
   13684:	3678                	.insn	2, 0x3678
   13686:	0001                	.insn	2, 0x0001
   13688:	3680                	.insn	2, 0x3680
   1368a:	0001                	.insn	2, 0x0001
   1368c:	3680                	.insn	2, 0x3680
   1368e:	0001                	.insn	2, 0x0001
   13690:	3688                	.insn	2, 0x3688
   13692:	0001                	.insn	2, 0x0001
   13694:	3688                	.insn	2, 0x3688
   13696:	0001                	.insn	2, 0x0001
   13698:	3690                	.insn	2, 0x3690
   1369a:	0001                	.insn	2, 0x0001
   1369c:	3690                	.insn	2, 0x3690
   1369e:	0001                	.insn	2, 0x0001
   136a0:	3698                	.insn	2, 0x3698
   136a2:	0001                	.insn	2, 0x0001
   136a4:	3698                	.insn	2, 0x3698
   136a6:	0001                	.insn	2, 0x0001
   136a8:	36a0                	.insn	2, 0x36a0
   136aa:	0001                	.insn	2, 0x0001
   136ac:	36a0                	.insn	2, 0x36a0
   136ae:	0001                	.insn	2, 0x0001
   136b0:	36a8                	.insn	2, 0x36a8
   136b2:	0001                	.insn	2, 0x0001
   136b4:	36a8                	.insn	2, 0x36a8
   136b6:	0001                	.insn	2, 0x0001
   136b8:	36b0                	.insn	2, 0x36b0
   136ba:	0001                	.insn	2, 0x0001
   136bc:	36b0                	.insn	2, 0x36b0
   136be:	0001                	.insn	2, 0x0001
   136c0:	36b8                	.insn	2, 0x36b8
   136c2:	0001                	.insn	2, 0x0001
   136c4:	36b8                	.insn	2, 0x36b8
   136c6:	0001                	.insn	2, 0x0001
   136c8:	36c0                	.insn	2, 0x36c0
   136ca:	0001                	.insn	2, 0x0001
   136cc:	36c0                	.insn	2, 0x36c0
   136ce:	0001                	.insn	2, 0x0001
   136d0:	36c8                	.insn	2, 0x36c8
   136d2:	0001                	.insn	2, 0x0001
   136d4:	36c8                	.insn	2, 0x36c8
   136d6:	0001                	.insn	2, 0x0001
   136d8:	36d0                	.insn	2, 0x36d0
   136da:	0001                	.insn	2, 0x0001
   136dc:	36d0                	.insn	2, 0x36d0
   136de:	0001                	.insn	2, 0x0001
   136e0:	36d8                	.insn	2, 0x36d8
   136e2:	0001                	.insn	2, 0x0001
   136e4:	36d8                	.insn	2, 0x36d8
   136e6:	0001                	.insn	2, 0x0001
   136e8:	36e0                	.insn	2, 0x36e0
   136ea:	0001                	.insn	2, 0x0001
   136ec:	36e0                	.insn	2, 0x36e0
   136ee:	0001                	.insn	2, 0x0001
   136f0:	36e8                	.insn	2, 0x36e8
   136f2:	0001                	.insn	2, 0x0001
   136f4:	36e8                	.insn	2, 0x36e8
   136f6:	0001                	.insn	2, 0x0001
   136f8:	36f0                	.insn	2, 0x36f0
   136fa:	0001                	.insn	2, 0x0001
   136fc:	36f0                	.insn	2, 0x36f0
   136fe:	0001                	.insn	2, 0x0001
   13700:	36f8                	.insn	2, 0x36f8
   13702:	0001                	.insn	2, 0x0001
   13704:	36f8                	.insn	2, 0x36f8
   13706:	0001                	.insn	2, 0x0001
   13708:	3700                	.insn	2, 0x3700
   1370a:	0001                	.insn	2, 0x0001
   1370c:	3700                	.insn	2, 0x3700
   1370e:	0001                	.insn	2, 0x0001
   13710:	3708                	.insn	2, 0x3708
   13712:	0001                	.insn	2, 0x0001
   13714:	3708                	.insn	2, 0x3708
   13716:	0001                	.insn	2, 0x0001
   13718:	3710                	.insn	2, 0x3710
   1371a:	0001                	.insn	2, 0x0001
   1371c:	3710                	.insn	2, 0x3710
   1371e:	0001                	.insn	2, 0x0001
   13720:	3718                	.insn	2, 0x3718
   13722:	0001                	.insn	2, 0x0001
   13724:	3718                	.insn	2, 0x3718
   13726:	0001                	.insn	2, 0x0001

Disassembly of section .sdata:

00013728 <__dso_handle>:
   13728:	0000                	.insn	2, 0x
	...

0001372c <_impure_ptr>:
   1372c:	3200                	.insn	2, 0x3200
   1372e:	0001                	.insn	2, 0x0001

00013730 <__malloc_sbrk_base>:
   13730:	ffff                	.insn	2, 0xffff
   13732:	ffff                	.insn	2, 0xffff

00013734 <__malloc_trim_threshold>:
   13734:	0000                	.insn	2, 0x
   13736:	0002                	.insn	2, 0x0002

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	39386367          	.insn	4, 0x39386367
   a:	6431                	.insn	2, 0x6431
   c:	6438                	.insn	2, 0x6438
   e:	65333263          	.insn	4, 0x65333263
  12:	2029                	.insn	2, 0x2029
  14:	3331                	.insn	2, 0x3331
  16:	322e                	.insn	2, 0x322e
  18:	302e                	.insn	2, 0x302e
  1a:	4700                	.insn	2, 0x4700
  1c:	203a4343          	.insn	4, 0x203a4343
  20:	4728                	.insn	2, 0x4728
  22:	554e                	.insn	2, 0x554e
  24:	2029                	.insn	2, 0x2029
  26:	3331                	.insn	2, 0x3331
  28:	322e                	.insn	2, 0x322e
  2a:	302e                	.insn	2, 0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1b41                	.insn	2, 0x1b41
   2:	0000                	.insn	2, 0x
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <exit-0x10080>
   c:	0011                	.insn	2, 0x0011
   e:	0000                	.insn	2, 0x
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3376                	.insn	2, 0x3376
  16:	6932                	.insn	2, 0x6932
  18:	7032                	.insn	2, 0x7032
  1a:	0031                	.insn	2, 0x0031
