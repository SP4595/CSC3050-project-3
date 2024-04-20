
qsort.riscv:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	571000ef          	jal	10e18 <__call_exitprocs>
   100ac:	d481a783          	lw	a5,-696(gp) # 13810 <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	07c020ef          	jal	12138 <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00012537          	lui	a0,0x12
   100cc:	00050513          	mv	a0,a0
   100d0:	67d0006f          	j	10f4c <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00004197          	auipc	gp,0x4
   100dc:	9f018193          	add	gp,gp,-1552 # 13ac8 <__global_pointer$>
   100e0:	d4818513          	add	a0,gp,-696 # 13810 <__stdio_exit_handler>
   100e4:	11818613          	add	a2,gp,280 # 13be0 <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	44d000ef          	jal	10d3c <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	e5850513          	add	a0,a0,-424 # 10f4c <atexit>
   100fc:	00050863          	beqz	a0,1010c <_start+0x34>
   10100:	00002517          	auipc	a0,0x2
   10104:	f0050513          	add	a0,a0,-256 # 12000 <__libc_fini_array>
   10108:	645000ef          	jal	10f4c <atexit>
   1010c:	395000ef          	jal	10ca0 <__libc_init_array>
   10110:	00012503          	lw	a0,0(sp)
   10114:	00410593          	add	a1,sp,4
   10118:	00000613          	li	a2,0
   1011c:	1dc000ef          	jal	102f8 <main>
   10120:	f75ff06f          	j	10094 <exit>

00010124 <__do_global_dtors_aux>:
   10124:	ff010113          	add	sp,sp,-16
   10128:	00812423          	sw	s0,8(sp)
   1012c:	d641c783          	lbu	a5,-668(gp) # 1382c <completed.1>
   10130:	00112623          	sw	ra,12(sp)
   10134:	02079263          	bnez	a5,10158 <__do_global_dtors_aux+0x34>
   10138:	00000793          	li	a5,0
   1013c:	00078a63          	beqz	a5,10150 <__do_global_dtors_aux+0x2c>
   10140:	00013537          	lui	a0,0x13
   10144:	2b450513          	add	a0,a0,692 # 132b4 <__EH_FRAME_BEGIN__>
   10148:	00000097          	auipc	ra,0x0
   1014c:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10150:	00100793          	li	a5,1
   10154:	d6f18223          	sb	a5,-668(gp) # 1382c <completed.1>
   10158:	00c12083          	lw	ra,12(sp)
   1015c:	00812403          	lw	s0,8(sp)
   10160:	01010113          	add	sp,sp,16
   10164:	00008067          	ret

00010168 <frame_dummy>:
   10168:	00000793          	li	a5,0
   1016c:	00078c63          	beqz	a5,10184 <frame_dummy+0x1c>
   10170:	00013537          	lui	a0,0x13
   10174:	d6818593          	add	a1,gp,-664 # 13830 <object.0>
   10178:	2b450513          	add	a0,a0,692 # 132b4 <__EH_FRAME_BEGIN__>
   1017c:	00000317          	auipc	t1,0x0
   10180:	00000067          	jr	zero # 0 <exit-0x10094>
   10184:	00008067          	ret

00010188 <qsort>:
   10188:	fd010113          	add	sp,sp,-48
   1018c:	02112623          	sw	ra,44(sp)
   10190:	02812423          	sw	s0,40(sp)
   10194:	03010413          	add	s0,sp,48
   10198:	fca42e23          	sw	a0,-36(s0)
   1019c:	fcb42c23          	sw	a1,-40(s0)
   101a0:	d8018713          	add	a4,gp,-640 # 13848 <result>
   101a4:	fdc42783          	lw	a5,-36(s0)
   101a8:	00279793          	sll	a5,a5,0x2
   101ac:	00f707b3          	add	a5,a4,a5
   101b0:	0007a783          	lw	a5,0(a5)
   101b4:	fef42223          	sw	a5,-28(s0)
   101b8:	fdc42783          	lw	a5,-36(s0)
   101bc:	fef42623          	sw	a5,-20(s0)
   101c0:	fd842783          	lw	a5,-40(s0)
   101c4:	fef42423          	sw	a5,-24(s0)
   101c8:	fdc42703          	lw	a4,-36(s0)
   101cc:	fd842783          	lw	a5,-40(s0)
   101d0:	10f75a63          	bge	a4,a5,102e4 <qsort+0x15c>
   101d4:	0c00006f          	j	10294 <qsort+0x10c>
   101d8:	fe842783          	lw	a5,-24(s0)
   101dc:	fff78793          	add	a5,a5,-1
   101e0:	fef42423          	sw	a5,-24(s0)
   101e4:	fec42703          	lw	a4,-20(s0)
   101e8:	fe842783          	lw	a5,-24(s0)
   101ec:	02f75063          	bge	a4,a5,1020c <qsort+0x84>
   101f0:	d8018713          	add	a4,gp,-640 # 13848 <result>
   101f4:	fe842783          	lw	a5,-24(s0)
   101f8:	00279793          	sll	a5,a5,0x2
   101fc:	00f707b3          	add	a5,a4,a5
   10200:	0007a783          	lw	a5,0(a5)
   10204:	fe442703          	lw	a4,-28(s0)
   10208:	fce7d8e3          	bge	a5,a4,101d8 <qsort+0x50>
   1020c:	d8018713          	add	a4,gp,-640 # 13848 <result>
   10210:	fe842783          	lw	a5,-24(s0)
   10214:	00279793          	sll	a5,a5,0x2
   10218:	00f707b3          	add	a5,a4,a5
   1021c:	0007a703          	lw	a4,0(a5)
   10220:	d8018693          	add	a3,gp,-640 # 13848 <result>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	00279793          	sll	a5,a5,0x2
   1022c:	00f687b3          	add	a5,a3,a5
   10230:	00e7a023          	sw	a4,0(a5)
   10234:	0100006f          	j	10244 <qsort+0xbc>
   10238:	fec42783          	lw	a5,-20(s0)
   1023c:	00178793          	add	a5,a5,1
   10240:	fef42623          	sw	a5,-20(s0)
   10244:	fec42703          	lw	a4,-20(s0)
   10248:	fe842783          	lw	a5,-24(s0)
   1024c:	02f75063          	bge	a4,a5,1026c <qsort+0xe4>
   10250:	d8018713          	add	a4,gp,-640 # 13848 <result>
   10254:	fec42783          	lw	a5,-20(s0)
   10258:	00279793          	sll	a5,a5,0x2
   1025c:	00f707b3          	add	a5,a4,a5
   10260:	0007a783          	lw	a5,0(a5)
   10264:	fe442703          	lw	a4,-28(s0)
   10268:	fcf758e3          	bge	a4,a5,10238 <qsort+0xb0>
   1026c:	d8018713          	add	a4,gp,-640 # 13848 <result>
   10270:	fec42783          	lw	a5,-20(s0)
   10274:	00279793          	sll	a5,a5,0x2
   10278:	00f707b3          	add	a5,a4,a5
   1027c:	0007a703          	lw	a4,0(a5)
   10280:	d8018693          	add	a3,gp,-640 # 13848 <result>
   10284:	fe842783          	lw	a5,-24(s0)
   10288:	00279793          	sll	a5,a5,0x2
   1028c:	00f687b3          	add	a5,a3,a5
   10290:	00e7a023          	sw	a4,0(a5)
   10294:	fec42703          	lw	a4,-20(s0)
   10298:	fe842783          	lw	a5,-24(s0)
   1029c:	f4f744e3          	blt	a4,a5,101e4 <qsort+0x5c>
   102a0:	d8018713          	add	a4,gp,-640 # 13848 <result>
   102a4:	fec42783          	lw	a5,-20(s0)
   102a8:	00279793          	sll	a5,a5,0x2
   102ac:	00f707b3          	add	a5,a4,a5
   102b0:	fe442703          	lw	a4,-28(s0)
   102b4:	00e7a023          	sw	a4,0(a5)
   102b8:	fec42783          	lw	a5,-20(s0)
   102bc:	fff78793          	add	a5,a5,-1
   102c0:	00078593          	mv	a1,a5
   102c4:	fdc42503          	lw	a0,-36(s0)
   102c8:	ec1ff0ef          	jal	10188 <qsort>
   102cc:	fec42783          	lw	a5,-20(s0)
   102d0:	00178793          	add	a5,a5,1
   102d4:	fd842583          	lw	a1,-40(s0)
   102d8:	00078513          	mv	a0,a5
   102dc:	eadff0ef          	jal	10188 <qsort>
   102e0:	0080006f          	j	102e8 <qsort+0x160>
   102e4:	00000013          	nop
   102e8:	02c12083          	lw	ra,44(sp)
   102ec:	02812403          	lw	s0,40(sp)
   102f0:	03010113          	add	sp,sp,48
   102f4:	00008067          	ret

000102f8 <main>:
   102f8:	fe010113          	add	sp,sp,-32
   102fc:	00112e23          	sw	ra,28(sp)
   10300:	00812c23          	sw	s0,24(sp)
   10304:	02010413          	add	s0,sp,32
   10308:	02800793          	li	a5,40
   1030c:	fef42623          	sw	a5,-20(s0)
   10310:	0280006f          	j	10338 <main+0x40>
   10314:	d8018713          	add	a4,gp,-640 # 13848 <result>
   10318:	fec42783          	lw	a5,-20(s0)
   1031c:	00279793          	sll	a5,a5,0x2
   10320:	00f707b3          	add	a5,a4,a5
   10324:	fec42703          	lw	a4,-20(s0)
   10328:	00e7a023          	sw	a4,0(a5)
   1032c:	fec42783          	lw	a5,-20(s0)
   10330:	fff78793          	add	a5,a5,-1
   10334:	fef42623          	sw	a5,-20(s0)
   10338:	fec42783          	lw	a5,-20(s0)
   1033c:	fcf04ce3          	bgtz	a5,10314 <main+0x1c>
   10340:	02700593          	li	a1,39
   10344:	00000513          	li	a0,0
   10348:	e41ff0ef          	jal	10188 <qsort>
   1034c:	fe042423          	sw	zero,-24(s0)
   10350:	0340006f          	j	10384 <main+0x8c>
   10354:	d8018713          	add	a4,gp,-640 # 13848 <result>
   10358:	fe842783          	lw	a5,-24(s0)
   1035c:	00279793          	sll	a5,a5,0x2
   10360:	00f707b3          	add	a5,a4,a5
   10364:	0007a783          	lw	a5,0(a5)
   10368:	00078513          	mv	a0,a5
   1036c:	048000ef          	jal	103b4 <print_d>
   10370:	02000513          	li	a0,32
   10374:	090000ef          	jal	10404 <print_c>
   10378:	fe842783          	lw	a5,-24(s0)
   1037c:	00178793          	add	a5,a5,1
   10380:	fef42423          	sw	a5,-24(s0)
   10384:	fe842703          	lw	a4,-24(s0)
   10388:	02700793          	li	a5,39
   1038c:	fce7d4e3          	bge	a5,a4,10354 <main+0x5c>
   10390:	00a00513          	li	a0,10
   10394:	070000ef          	jal	10404 <print_c>
   10398:	098000ef          	jal	10430 <exit_proc>
   1039c:	00000793          	li	a5,0
   103a0:	00078513          	mv	a0,a5
   103a4:	01c12083          	lw	ra,28(sp)
   103a8:	01812403          	lw	s0,24(sp)
   103ac:	02010113          	add	sp,sp,32
   103b0:	00008067          	ret

000103b4 <print_d>:
   103b4:	fe010113          	add	sp,sp,-32
   103b8:	00812e23          	sw	s0,28(sp)
   103bc:	02010413          	add	s0,sp,32
   103c0:	fea42623          	sw	a0,-20(s0)
   103c4:	00200893          	li	a7,2
   103c8:	00000073          	ecall
   103cc:	00000013          	nop
   103d0:	01c12403          	lw	s0,28(sp)
   103d4:	02010113          	add	sp,sp,32
   103d8:	00008067          	ret

000103dc <print_s>:
   103dc:	fe010113          	add	sp,sp,-32
   103e0:	00812e23          	sw	s0,28(sp)
   103e4:	02010413          	add	s0,sp,32
   103e8:	fea42623          	sw	a0,-20(s0)
   103ec:	00000893          	li	a7,0
   103f0:	00000073          	ecall
   103f4:	00000013          	nop
   103f8:	01c12403          	lw	s0,28(sp)
   103fc:	02010113          	add	sp,sp,32
   10400:	00008067          	ret

00010404 <print_c>:
   10404:	fe010113          	add	sp,sp,-32
   10408:	00812e23          	sw	s0,28(sp)
   1040c:	02010413          	add	s0,sp,32
   10410:	00050793          	mv	a5,a0
   10414:	fef407a3          	sb	a5,-17(s0)
   10418:	00100893          	li	a7,1
   1041c:	00000073          	ecall
   10420:	00000013          	nop
   10424:	01c12403          	lw	s0,28(sp)
   10428:	02010113          	add	sp,sp,32
   1042c:	00008067          	ret

00010430 <exit_proc>:
   10430:	ff010113          	add	sp,sp,-16
   10434:	00812623          	sw	s0,12(sp)
   10438:	01010413          	add	s0,sp,16
   1043c:	00300893          	li	a7,3
   10440:	00000073          	ecall
   10444:	00000013          	nop
   10448:	00c12403          	lw	s0,12(sp)
   1044c:	01010113          	add	sp,sp,16
   10450:	00008067          	ret

00010454 <read_char>:
   10454:	fe010113          	add	sp,sp,-32
   10458:	00812e23          	sw	s0,28(sp)
   1045c:	02010413          	add	s0,sp,32
   10460:	00400893          	li	a7,4
   10464:	00000073          	ecall
   10468:	00050793          	mv	a5,a0
   1046c:	fef407a3          	sb	a5,-17(s0)
   10470:	fef44783          	lbu	a5,-17(s0)
   10474:	00078513          	mv	a0,a5
   10478:	01c12403          	lw	s0,28(sp)
   1047c:	02010113          	add	sp,sp,32
   10480:	00008067          	ret

00010484 <read_num>:
   10484:	fe010113          	add	sp,sp,-32
   10488:	00812e23          	sw	s0,28(sp)
   1048c:	02010413          	add	s0,sp,32
   10490:	00500893          	li	a7,5
   10494:	00000073          	ecall
   10498:	00050713          	mv	a4,a0
   1049c:	fee42423          	sw	a4,-24(s0)
   104a0:	fef42623          	sw	a5,-20(s0)
   104a4:	fe842703          	lw	a4,-24(s0)
   104a8:	fec42783          	lw	a5,-20(s0)
   104ac:	00070513          	mv	a0,a4
   104b0:	00078593          	mv	a1,a5
   104b4:	01c12403          	lw	s0,28(sp)
   104b8:	02010113          	add	sp,sp,32
   104bc:	00008067          	ret

000104c0 <__fp_lock>:
   104c0:	00000513          	li	a0,0
   104c4:	00008067          	ret

000104c8 <stdio_exit_handler>:
   104c8:	00013637          	lui	a2,0x13
   104cc:	000125b7          	lui	a1,0x12
   104d0:	00013537          	lui	a0,0x13
   104d4:	2c860613          	add	a2,a2,712 # 132c8 <__sglue>
   104d8:	b6058593          	add	a1,a1,-1184 # 11b60 <_fclose_r>
   104dc:	2d850513          	add	a0,a0,728 # 132d8 <_impure_data>
   104e0:	3480006f          	j	10828 <_fwalk_sglue>

000104e4 <cleanup_stdio>:
   104e4:	00452583          	lw	a1,4(a0)
   104e8:	ff010113          	add	sp,sp,-16
   104ec:	00812423          	sw	s0,8(sp)
   104f0:	00112623          	sw	ra,12(sp)
   104f4:	e2818793          	add	a5,gp,-472 # 138f0 <__sf>
   104f8:	00050413          	mv	s0,a0
   104fc:	00f58463          	beq	a1,a5,10504 <cleanup_stdio+0x20>
   10500:	660010ef          	jal	11b60 <_fclose_r>
   10504:	00842583          	lw	a1,8(s0)
   10508:	e9018793          	add	a5,gp,-368 # 13958 <__sf+0x68>
   1050c:	00f58663          	beq	a1,a5,10518 <cleanup_stdio+0x34>
   10510:	00040513          	mv	a0,s0
   10514:	64c010ef          	jal	11b60 <_fclose_r>
   10518:	00c42583          	lw	a1,12(s0)
   1051c:	ef818793          	add	a5,gp,-264 # 139c0 <__sf+0xd0>
   10520:	00f58c63          	beq	a1,a5,10538 <cleanup_stdio+0x54>
   10524:	00040513          	mv	a0,s0
   10528:	00812403          	lw	s0,8(sp)
   1052c:	00c12083          	lw	ra,12(sp)
   10530:	01010113          	add	sp,sp,16
   10534:	62c0106f          	j	11b60 <_fclose_r>
   10538:	00c12083          	lw	ra,12(sp)
   1053c:	00812403          	lw	s0,8(sp)
   10540:	01010113          	add	sp,sp,16
   10544:	00008067          	ret

00010548 <__fp_unlock>:
   10548:	00000513          	li	a0,0
   1054c:	00008067          	ret

00010550 <global_stdio_init.part.0>:
   10550:	fe010113          	add	sp,sp,-32
   10554:	000107b7          	lui	a5,0x10
   10558:	00812c23          	sw	s0,24(sp)
   1055c:	4c878793          	add	a5,a5,1224 # 104c8 <stdio_exit_handler>
   10560:	e2818413          	add	s0,gp,-472 # 138f0 <__sf>
   10564:	00112e23          	sw	ra,28(sp)
   10568:	00912a23          	sw	s1,20(sp)
   1056c:	01212823          	sw	s2,16(sp)
   10570:	01312623          	sw	s3,12(sp)
   10574:	01412423          	sw	s4,8(sp)
   10578:	d4f1a423          	sw	a5,-696(gp) # 13810 <__stdio_exit_handler>
   1057c:	00800613          	li	a2,8
   10580:	00400793          	li	a5,4
   10584:	00000593          	li	a1,0
   10588:	e8418513          	add	a0,gp,-380 # 1394c <__sf+0x5c>
   1058c:	00f42623          	sw	a5,12(s0)
   10590:	00042023          	sw	zero,0(s0)
   10594:	00042223          	sw	zero,4(s0)
   10598:	00042423          	sw	zero,8(s0)
   1059c:	06042223          	sw	zero,100(s0)
   105a0:	00042823          	sw	zero,16(s0)
   105a4:	00042a23          	sw	zero,20(s0)
   105a8:	00042c23          	sw	zero,24(s0)
   105ac:	790000ef          	jal	10d3c <memset>
   105b0:	000107b7          	lui	a5,0x10
   105b4:	00011a37          	lui	s4,0x11
   105b8:	000119b7          	lui	s3,0x11
   105bc:	00011937          	lui	s2,0x11
   105c0:	000114b7          	lui	s1,0x11
   105c4:	8dca0a13          	add	s4,s4,-1828 # 108dc <__sread>
   105c8:	94098993          	add	s3,s3,-1728 # 10940 <__swrite>
   105cc:	9c890913          	add	s2,s2,-1592 # 109c8 <__sseek>
   105d0:	a4048493          	add	s1,s1,-1472 # 10a40 <__sclose>
   105d4:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   105d8:	00800613          	li	a2,8
   105dc:	00000593          	li	a1,0
   105e0:	eec18513          	add	a0,gp,-276 # 139b4 <__sf+0xc4>
   105e4:	03442023          	sw	s4,32(s0)
   105e8:	03342223          	sw	s3,36(s0)
   105ec:	03242423          	sw	s2,40(s0)
   105f0:	02942623          	sw	s1,44(s0)
   105f4:	06f42a23          	sw	a5,116(s0)
   105f8:	00842e23          	sw	s0,28(s0)
   105fc:	06042423          	sw	zero,104(s0)
   10600:	06042623          	sw	zero,108(s0)
   10604:	06042823          	sw	zero,112(s0)
   10608:	0c042623          	sw	zero,204(s0)
   1060c:	06042c23          	sw	zero,120(s0)
   10610:	06042e23          	sw	zero,124(s0)
   10614:	08042023          	sw	zero,128(s0)
   10618:	724000ef          	jal	10d3c <memset>
   1061c:	000207b7          	lui	a5,0x20
   10620:	01278793          	add	a5,a5,18 # 20012 <__BSS_END__+0xc432>
   10624:	e9018713          	add	a4,gp,-368 # 13958 <__sf+0x68>
   10628:	00800613          	li	a2,8
   1062c:	00000593          	li	a1,0
   10630:	f5418513          	add	a0,gp,-172 # 13a1c <__sf+0x12c>
   10634:	09442423          	sw	s4,136(s0)
   10638:	09342623          	sw	s3,140(s0)
   1063c:	09242823          	sw	s2,144(s0)
   10640:	08942a23          	sw	s1,148(s0)
   10644:	0cf42e23          	sw	a5,220(s0)
   10648:	08e42223          	sw	a4,132(s0)
   1064c:	0c042823          	sw	zero,208(s0)
   10650:	0c042a23          	sw	zero,212(s0)
   10654:	0c042c23          	sw	zero,216(s0)
   10658:	12042a23          	sw	zero,308(s0)
   1065c:	0e042023          	sw	zero,224(s0)
   10660:	0e042223          	sw	zero,228(s0)
   10664:	0e042423          	sw	zero,232(s0)
   10668:	6d4000ef          	jal	10d3c <memset>
   1066c:	ef818793          	add	a5,gp,-264 # 139c0 <__sf+0xd0>
   10670:	0f442823          	sw	s4,240(s0)
   10674:	0f342a23          	sw	s3,244(s0)
   10678:	0f242c23          	sw	s2,248(s0)
   1067c:	0e942e23          	sw	s1,252(s0)
   10680:	01c12083          	lw	ra,28(sp)
   10684:	0ef42623          	sw	a5,236(s0)
   10688:	01812403          	lw	s0,24(sp)
   1068c:	01412483          	lw	s1,20(sp)
   10690:	01012903          	lw	s2,16(sp)
   10694:	00c12983          	lw	s3,12(sp)
   10698:	00812a03          	lw	s4,8(sp)
   1069c:	02010113          	add	sp,sp,32
   106a0:	00008067          	ret

000106a4 <__sfp>:
   106a4:	d481a783          	lw	a5,-696(gp) # 13810 <__stdio_exit_handler>
   106a8:	fe010113          	add	sp,sp,-32
   106ac:	01312623          	sw	s3,12(sp)
   106b0:	00112e23          	sw	ra,28(sp)
   106b4:	00812c23          	sw	s0,24(sp)
   106b8:	00912a23          	sw	s1,20(sp)
   106bc:	01212823          	sw	s2,16(sp)
   106c0:	00050993          	mv	s3,a0
   106c4:	0e078863          	beqz	a5,107b4 <__sfp+0x110>
   106c8:	00013937          	lui	s2,0x13
   106cc:	2c890913          	add	s2,s2,712 # 132c8 <__sglue>
   106d0:	fff00493          	li	s1,-1
   106d4:	00492783          	lw	a5,4(s2)
   106d8:	00892403          	lw	s0,8(s2)
   106dc:	fff78793          	add	a5,a5,-1
   106e0:	0007d863          	bgez	a5,106f0 <__sfp+0x4c>
   106e4:	0800006f          	j	10764 <__sfp+0xc0>
   106e8:	06840413          	add	s0,s0,104
   106ec:	06978c63          	beq	a5,s1,10764 <__sfp+0xc0>
   106f0:	00c41703          	lh	a4,12(s0)
   106f4:	fff78793          	add	a5,a5,-1
   106f8:	fe0718e3          	bnez	a4,106e8 <__sfp+0x44>
   106fc:	ffff07b7          	lui	a5,0xffff0
   10700:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc421>
   10704:	00f42623          	sw	a5,12(s0)
   10708:	06042223          	sw	zero,100(s0)
   1070c:	00042023          	sw	zero,0(s0)
   10710:	00042423          	sw	zero,8(s0)
   10714:	00042223          	sw	zero,4(s0)
   10718:	00042823          	sw	zero,16(s0)
   1071c:	00042a23          	sw	zero,20(s0)
   10720:	00042c23          	sw	zero,24(s0)
   10724:	00800613          	li	a2,8
   10728:	00000593          	li	a1,0
   1072c:	05c40513          	add	a0,s0,92
   10730:	60c000ef          	jal	10d3c <memset>
   10734:	02042823          	sw	zero,48(s0)
   10738:	02042a23          	sw	zero,52(s0)
   1073c:	04042223          	sw	zero,68(s0)
   10740:	04042423          	sw	zero,72(s0)
   10744:	01c12083          	lw	ra,28(sp)
   10748:	00040513          	mv	a0,s0
   1074c:	01812403          	lw	s0,24(sp)
   10750:	01412483          	lw	s1,20(sp)
   10754:	01012903          	lw	s2,16(sp)
   10758:	00c12983          	lw	s3,12(sp)
   1075c:	02010113          	add	sp,sp,32
   10760:	00008067          	ret
   10764:	00092403          	lw	s0,0(s2)
   10768:	00040663          	beqz	s0,10774 <__sfp+0xd0>
   1076c:	00040913          	mv	s2,s0
   10770:	f65ff06f          	j	106d4 <__sfp+0x30>
   10774:	1ac00593          	li	a1,428
   10778:	00098513          	mv	a0,s3
   1077c:	421000ef          	jal	1139c <_malloc_r>
   10780:	00050413          	mv	s0,a0
   10784:	02050c63          	beqz	a0,107bc <__sfp+0x118>
   10788:	00c50513          	add	a0,a0,12
   1078c:	00400793          	li	a5,4
   10790:	00042023          	sw	zero,0(s0)
   10794:	00f42223          	sw	a5,4(s0)
   10798:	00a42423          	sw	a0,8(s0)
   1079c:	1a000613          	li	a2,416
   107a0:	00000593          	li	a1,0
   107a4:	598000ef          	jal	10d3c <memset>
   107a8:	00892023          	sw	s0,0(s2)
   107ac:	00040913          	mv	s2,s0
   107b0:	f25ff06f          	j	106d4 <__sfp+0x30>
   107b4:	d9dff0ef          	jal	10550 <global_stdio_init.part.0>
   107b8:	f11ff06f          	j	106c8 <__sfp+0x24>
   107bc:	00092023          	sw	zero,0(s2)
   107c0:	00c00793          	li	a5,12
   107c4:	00f9a023          	sw	a5,0(s3)
   107c8:	f7dff06f          	j	10744 <__sfp+0xa0>

000107cc <__sinit>:
   107cc:	03452783          	lw	a5,52(a0)
   107d0:	00078463          	beqz	a5,107d8 <__sinit+0xc>
   107d4:	00008067          	ret
   107d8:	d481a703          	lw	a4,-696(gp) # 13810 <__stdio_exit_handler>
   107dc:	000107b7          	lui	a5,0x10
   107e0:	4e478793          	add	a5,a5,1252 # 104e4 <cleanup_stdio>
   107e4:	02f52a23          	sw	a5,52(a0)
   107e8:	fe0716e3          	bnez	a4,107d4 <__sinit+0x8>
   107ec:	d65ff06f          	j	10550 <global_stdio_init.part.0>

000107f0 <__sfp_lock_acquire>:
   107f0:	00008067          	ret

000107f4 <__sfp_lock_release>:
   107f4:	00008067          	ret

000107f8 <__fp_lock_all>:
   107f8:	00013637          	lui	a2,0x13
   107fc:	000105b7          	lui	a1,0x10
   10800:	2c860613          	add	a2,a2,712 # 132c8 <__sglue>
   10804:	4c058593          	add	a1,a1,1216 # 104c0 <__fp_lock>
   10808:	00000513          	li	a0,0
   1080c:	01c0006f          	j	10828 <_fwalk_sglue>

00010810 <__fp_unlock_all>:
   10810:	00013637          	lui	a2,0x13
   10814:	000105b7          	lui	a1,0x10
   10818:	2c860613          	add	a2,a2,712 # 132c8 <__sglue>
   1081c:	54858593          	add	a1,a1,1352 # 10548 <__fp_unlock>
   10820:	00000513          	li	a0,0
   10824:	0040006f          	j	10828 <_fwalk_sglue>

00010828 <_fwalk_sglue>:
   10828:	fd010113          	add	sp,sp,-48
   1082c:	03212023          	sw	s2,32(sp)
   10830:	01312e23          	sw	s3,28(sp)
   10834:	01412c23          	sw	s4,24(sp)
   10838:	01512a23          	sw	s5,20(sp)
   1083c:	01612823          	sw	s6,16(sp)
   10840:	01712623          	sw	s7,12(sp)
   10844:	02112623          	sw	ra,44(sp)
   10848:	02812423          	sw	s0,40(sp)
   1084c:	02912223          	sw	s1,36(sp)
   10850:	00050b13          	mv	s6,a0
   10854:	00058b93          	mv	s7,a1
   10858:	00060a93          	mv	s5,a2
   1085c:	00000a13          	li	s4,0
   10860:	00100993          	li	s3,1
   10864:	fff00913          	li	s2,-1
   10868:	004aa483          	lw	s1,4(s5)
   1086c:	008aa403          	lw	s0,8(s5)
   10870:	fff48493          	add	s1,s1,-1
   10874:	0204c863          	bltz	s1,108a4 <_fwalk_sglue+0x7c>
   10878:	00c45783          	lhu	a5,12(s0)
   1087c:	00f9fe63          	bgeu	s3,a5,10898 <_fwalk_sglue+0x70>
   10880:	00e41783          	lh	a5,14(s0)
   10884:	00040593          	mv	a1,s0
   10888:	000b0513          	mv	a0,s6
   1088c:	01278663          	beq	a5,s2,10898 <_fwalk_sglue+0x70>
   10890:	000b80e7          	jalr	s7
   10894:	00aa6a33          	or	s4,s4,a0
   10898:	fff48493          	add	s1,s1,-1
   1089c:	06840413          	add	s0,s0,104
   108a0:	fd249ce3          	bne	s1,s2,10878 <_fwalk_sglue+0x50>
   108a4:	000aaa83          	lw	s5,0(s5)
   108a8:	fc0a90e3          	bnez	s5,10868 <_fwalk_sglue+0x40>
   108ac:	02c12083          	lw	ra,44(sp)
   108b0:	02812403          	lw	s0,40(sp)
   108b4:	02412483          	lw	s1,36(sp)
   108b8:	02012903          	lw	s2,32(sp)
   108bc:	01c12983          	lw	s3,28(sp)
   108c0:	01412a83          	lw	s5,20(sp)
   108c4:	01012b03          	lw	s6,16(sp)
   108c8:	00c12b83          	lw	s7,12(sp)
   108cc:	000a0513          	mv	a0,s4
   108d0:	01812a03          	lw	s4,24(sp)
   108d4:	03010113          	add	sp,sp,48
   108d8:	00008067          	ret

000108dc <__sread>:
   108dc:	ff010113          	add	sp,sp,-16
   108e0:	00812423          	sw	s0,8(sp)
   108e4:	00058413          	mv	s0,a1
   108e8:	00e59583          	lh	a1,14(a1)
   108ec:	00112623          	sw	ra,12(sp)
   108f0:	2e0000ef          	jal	10bd0 <_read_r>
   108f4:	02054063          	bltz	a0,10914 <__sread+0x38>
   108f8:	05042783          	lw	a5,80(s0)
   108fc:	00c12083          	lw	ra,12(sp)
   10900:	00a787b3          	add	a5,a5,a0
   10904:	04f42823          	sw	a5,80(s0)
   10908:	00812403          	lw	s0,8(sp)
   1090c:	01010113          	add	sp,sp,16
   10910:	00008067          	ret
   10914:	00c45783          	lhu	a5,12(s0)
   10918:	fffff737          	lui	a4,0xfffff
   1091c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb41f>
   10920:	00e7f7b3          	and	a5,a5,a4
   10924:	00c12083          	lw	ra,12(sp)
   10928:	00f41623          	sh	a5,12(s0)
   1092c:	00812403          	lw	s0,8(sp)
   10930:	01010113          	add	sp,sp,16
   10934:	00008067          	ret

00010938 <__seofread>:
   10938:	00000513          	li	a0,0
   1093c:	00008067          	ret

00010940 <__swrite>:
   10940:	00c59783          	lh	a5,12(a1)
   10944:	fe010113          	add	sp,sp,-32
   10948:	00812c23          	sw	s0,24(sp)
   1094c:	00912a23          	sw	s1,20(sp)
   10950:	01212823          	sw	s2,16(sp)
   10954:	01312623          	sw	s3,12(sp)
   10958:	00112e23          	sw	ra,28(sp)
   1095c:	1007f713          	and	a4,a5,256
   10960:	00058413          	mv	s0,a1
   10964:	00050493          	mv	s1,a0
   10968:	00060913          	mv	s2,a2
   1096c:	00068993          	mv	s3,a3
   10970:	04071063          	bnez	a4,109b0 <__swrite+0x70>
   10974:	fffff737          	lui	a4,0xfffff
   10978:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb41f>
   1097c:	00e7f7b3          	and	a5,a5,a4
   10980:	00e41583          	lh	a1,14(s0)
   10984:	00f41623          	sh	a5,12(s0)
   10988:	01812403          	lw	s0,24(sp)
   1098c:	01c12083          	lw	ra,28(sp)
   10990:	00098693          	mv	a3,s3
   10994:	00090613          	mv	a2,s2
   10998:	00c12983          	lw	s3,12(sp)
   1099c:	01012903          	lw	s2,16(sp)
   109a0:	00048513          	mv	a0,s1
   109a4:	01412483          	lw	s1,20(sp)
   109a8:	02010113          	add	sp,sp,32
   109ac:	28c0006f          	j	10c38 <_write_r>
   109b0:	00e59583          	lh	a1,14(a1)
   109b4:	00200693          	li	a3,2
   109b8:	00000613          	li	a2,0
   109bc:	1ac000ef          	jal	10b68 <_lseek_r>
   109c0:	00c41783          	lh	a5,12(s0)
   109c4:	fb1ff06f          	j	10974 <__swrite+0x34>

000109c8 <__sseek>:
   109c8:	ff010113          	add	sp,sp,-16
   109cc:	00812423          	sw	s0,8(sp)
   109d0:	00058413          	mv	s0,a1
   109d4:	00e59583          	lh	a1,14(a1)
   109d8:	00112623          	sw	ra,12(sp)
   109dc:	18c000ef          	jal	10b68 <_lseek_r>
   109e0:	fff00793          	li	a5,-1
   109e4:	02f50863          	beq	a0,a5,10a14 <__sseek+0x4c>
   109e8:	00c45783          	lhu	a5,12(s0)
   109ec:	00001737          	lui	a4,0x1
   109f0:	00c12083          	lw	ra,12(sp)
   109f4:	00e7e7b3          	or	a5,a5,a4
   109f8:	01079793          	sll	a5,a5,0x10
   109fc:	4107d793          	sra	a5,a5,0x10
   10a00:	04a42823          	sw	a0,80(s0)
   10a04:	00f41623          	sh	a5,12(s0)
   10a08:	00812403          	lw	s0,8(sp)
   10a0c:	01010113          	add	sp,sp,16
   10a10:	00008067          	ret
   10a14:	00c45783          	lhu	a5,12(s0)
   10a18:	fffff737          	lui	a4,0xfffff
   10a1c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb41f>
   10a20:	00e7f7b3          	and	a5,a5,a4
   10a24:	01079793          	sll	a5,a5,0x10
   10a28:	4107d793          	sra	a5,a5,0x10
   10a2c:	00c12083          	lw	ra,12(sp)
   10a30:	00f41623          	sh	a5,12(s0)
   10a34:	00812403          	lw	s0,8(sp)
   10a38:	01010113          	add	sp,sp,16
   10a3c:	00008067          	ret

00010a40 <__sclose>:
   10a40:	00e59583          	lh	a1,14(a1)
   10a44:	0040006f          	j	10a48 <_close_r>

00010a48 <_close_r>:
   10a48:	ff010113          	add	sp,sp,-16
   10a4c:	00812423          	sw	s0,8(sp)
   10a50:	00912223          	sw	s1,4(sp)
   10a54:	00050413          	mv	s0,a0
   10a58:	00058513          	mv	a0,a1
   10a5c:	00112623          	sw	ra,12(sp)
   10a60:	d401a623          	sw	zero,-692(gp) # 13814 <errno>
   10a64:	690010ef          	jal	120f4 <_close>
   10a68:	fff00793          	li	a5,-1
   10a6c:	00f50c63          	beq	a0,a5,10a84 <_close_r+0x3c>
   10a70:	00c12083          	lw	ra,12(sp)
   10a74:	00812403          	lw	s0,8(sp)
   10a78:	00412483          	lw	s1,4(sp)
   10a7c:	01010113          	add	sp,sp,16
   10a80:	00008067          	ret
   10a84:	d4c1a783          	lw	a5,-692(gp) # 13814 <errno>
   10a88:	fe0784e3          	beqz	a5,10a70 <_close_r+0x28>
   10a8c:	00c12083          	lw	ra,12(sp)
   10a90:	00f42023          	sw	a5,0(s0)
   10a94:	00812403          	lw	s0,8(sp)
   10a98:	00412483          	lw	s1,4(sp)
   10a9c:	01010113          	add	sp,sp,16
   10aa0:	00008067          	ret

00010aa4 <_reclaim_reent>:
   10aa4:	d3c1a783          	lw	a5,-708(gp) # 13804 <_impure_ptr>
   10aa8:	0aa78e63          	beq	a5,a0,10b64 <_reclaim_reent+0xc0>
   10aac:	04452583          	lw	a1,68(a0)
   10ab0:	fe010113          	add	sp,sp,-32
   10ab4:	00912a23          	sw	s1,20(sp)
   10ab8:	00112e23          	sw	ra,28(sp)
   10abc:	00050493          	mv	s1,a0
   10ac0:	04058c63          	beqz	a1,10b18 <_reclaim_reent+0x74>
   10ac4:	01212823          	sw	s2,16(sp)
   10ac8:	01312623          	sw	s3,12(sp)
   10acc:	00812c23          	sw	s0,24(sp)
   10ad0:	00000913          	li	s2,0
   10ad4:	08000993          	li	s3,128
   10ad8:	012587b3          	add	a5,a1,s2
   10adc:	0007a403          	lw	s0,0(a5)
   10ae0:	00040e63          	beqz	s0,10afc <_reclaim_reent+0x58>
   10ae4:	00040593          	mv	a1,s0
   10ae8:	00042403          	lw	s0,0(s0)
   10aec:	00048513          	mv	a0,s1
   10af0:	5a8000ef          	jal	11098 <_free_r>
   10af4:	fe0418e3          	bnez	s0,10ae4 <_reclaim_reent+0x40>
   10af8:	0444a583          	lw	a1,68(s1)
   10afc:	00490913          	add	s2,s2,4
   10b00:	fd391ce3          	bne	s2,s3,10ad8 <_reclaim_reent+0x34>
   10b04:	00048513          	mv	a0,s1
   10b08:	590000ef          	jal	11098 <_free_r>
   10b0c:	01812403          	lw	s0,24(sp)
   10b10:	01012903          	lw	s2,16(sp)
   10b14:	00c12983          	lw	s3,12(sp)
   10b18:	0384a583          	lw	a1,56(s1)
   10b1c:	00058663          	beqz	a1,10b28 <_reclaim_reent+0x84>
   10b20:	00048513          	mv	a0,s1
   10b24:	574000ef          	jal	11098 <_free_r>
   10b28:	04c4a583          	lw	a1,76(s1)
   10b2c:	00058663          	beqz	a1,10b38 <_reclaim_reent+0x94>
   10b30:	00048513          	mv	a0,s1
   10b34:	564000ef          	jal	11098 <_free_r>
   10b38:	0344a783          	lw	a5,52(s1)
   10b3c:	00078c63          	beqz	a5,10b54 <_reclaim_reent+0xb0>
   10b40:	01c12083          	lw	ra,28(sp)
   10b44:	00048513          	mv	a0,s1
   10b48:	01412483          	lw	s1,20(sp)
   10b4c:	02010113          	add	sp,sp,32
   10b50:	00078067          	jr	a5
   10b54:	01c12083          	lw	ra,28(sp)
   10b58:	01412483          	lw	s1,20(sp)
   10b5c:	02010113          	add	sp,sp,32
   10b60:	00008067          	ret
   10b64:	00008067          	ret

00010b68 <_lseek_r>:
   10b68:	ff010113          	add	sp,sp,-16
   10b6c:	00058713          	mv	a4,a1
   10b70:	00812423          	sw	s0,8(sp)
   10b74:	00912223          	sw	s1,4(sp)
   10b78:	00060593          	mv	a1,a2
   10b7c:	00050413          	mv	s0,a0
   10b80:	00068613          	mv	a2,a3
   10b84:	00070513          	mv	a0,a4
   10b88:	00112623          	sw	ra,12(sp)
   10b8c:	d401a623          	sw	zero,-692(gp) # 13814 <errno>
   10b90:	5d8010ef          	jal	12168 <_lseek>
   10b94:	fff00793          	li	a5,-1
   10b98:	00f50c63          	beq	a0,a5,10bb0 <_lseek_r+0x48>
   10b9c:	00c12083          	lw	ra,12(sp)
   10ba0:	00812403          	lw	s0,8(sp)
   10ba4:	00412483          	lw	s1,4(sp)
   10ba8:	01010113          	add	sp,sp,16
   10bac:	00008067          	ret
   10bb0:	d4c1a783          	lw	a5,-692(gp) # 13814 <errno>
   10bb4:	fe0784e3          	beqz	a5,10b9c <_lseek_r+0x34>
   10bb8:	00c12083          	lw	ra,12(sp)
   10bbc:	00f42023          	sw	a5,0(s0)
   10bc0:	00812403          	lw	s0,8(sp)
   10bc4:	00412483          	lw	s1,4(sp)
   10bc8:	01010113          	add	sp,sp,16
   10bcc:	00008067          	ret

00010bd0 <_read_r>:
   10bd0:	ff010113          	add	sp,sp,-16
   10bd4:	00058713          	mv	a4,a1
   10bd8:	00812423          	sw	s0,8(sp)
   10bdc:	00912223          	sw	s1,4(sp)
   10be0:	00060593          	mv	a1,a2
   10be4:	00050413          	mv	s0,a0
   10be8:	00068613          	mv	a2,a3
   10bec:	00070513          	mv	a0,a4
   10bf0:	00112623          	sw	ra,12(sp)
   10bf4:	d401a623          	sw	zero,-692(gp) # 13814 <errno>
   10bf8:	5b4010ef          	jal	121ac <_read>
   10bfc:	fff00793          	li	a5,-1
   10c00:	00f50c63          	beq	a0,a5,10c18 <_read_r+0x48>
   10c04:	00c12083          	lw	ra,12(sp)
   10c08:	00812403          	lw	s0,8(sp)
   10c0c:	00412483          	lw	s1,4(sp)
   10c10:	01010113          	add	sp,sp,16
   10c14:	00008067          	ret
   10c18:	d4c1a783          	lw	a5,-692(gp) # 13814 <errno>
   10c1c:	fe0784e3          	beqz	a5,10c04 <_read_r+0x34>
   10c20:	00c12083          	lw	ra,12(sp)
   10c24:	00f42023          	sw	a5,0(s0)
   10c28:	00812403          	lw	s0,8(sp)
   10c2c:	00412483          	lw	s1,4(sp)
   10c30:	01010113          	add	sp,sp,16
   10c34:	00008067          	ret

00010c38 <_write_r>:
   10c38:	ff010113          	add	sp,sp,-16
   10c3c:	00058713          	mv	a4,a1
   10c40:	00812423          	sw	s0,8(sp)
   10c44:	00912223          	sw	s1,4(sp)
   10c48:	00060593          	mv	a1,a2
   10c4c:	00050413          	mv	s0,a0
   10c50:	00068613          	mv	a2,a3
   10c54:	00070513          	mv	a0,a4
   10c58:	00112623          	sw	ra,12(sp)
   10c5c:	d401a623          	sw	zero,-692(gp) # 13814 <errno>
   10c60:	608010ef          	jal	12268 <_write>
   10c64:	fff00793          	li	a5,-1
   10c68:	00f50c63          	beq	a0,a5,10c80 <_write_r+0x48>
   10c6c:	00c12083          	lw	ra,12(sp)
   10c70:	00812403          	lw	s0,8(sp)
   10c74:	00412483          	lw	s1,4(sp)
   10c78:	01010113          	add	sp,sp,16
   10c7c:	00008067          	ret
   10c80:	d4c1a783          	lw	a5,-692(gp) # 13814 <errno>
   10c84:	fe0784e3          	beqz	a5,10c6c <_write_r+0x34>
   10c88:	00c12083          	lw	ra,12(sp)
   10c8c:	00f42023          	sw	a5,0(s0)
   10c90:	00812403          	lw	s0,8(sp)
   10c94:	00412483          	lw	s1,4(sp)
   10c98:	01010113          	add	sp,sp,16
   10c9c:	00008067          	ret

00010ca0 <__libc_init_array>:
   10ca0:	ff010113          	add	sp,sp,-16
   10ca4:	00812423          	sw	s0,8(sp)
   10ca8:	000137b7          	lui	a5,0x13
   10cac:	00013437          	lui	s0,0x13
   10cb0:	01212023          	sw	s2,0(sp)
   10cb4:	2b878793          	add	a5,a5,696 # 132b8 <__init_array_start>
   10cb8:	2b840713          	add	a4,s0,696 # 132b8 <__init_array_start>
   10cbc:	00112623          	sw	ra,12(sp)
   10cc0:	00912223          	sw	s1,4(sp)
   10cc4:	40e78933          	sub	s2,a5,a4
   10cc8:	02e78263          	beq	a5,a4,10cec <__libc_init_array+0x4c>
   10ccc:	40295913          	sra	s2,s2,0x2
   10cd0:	2b840413          	add	s0,s0,696
   10cd4:	00000493          	li	s1,0
   10cd8:	00042783          	lw	a5,0(s0)
   10cdc:	00148493          	add	s1,s1,1
   10ce0:	00440413          	add	s0,s0,4
   10ce4:	000780e7          	jalr	a5
   10ce8:	ff24e8e3          	bltu	s1,s2,10cd8 <__libc_init_array+0x38>
   10cec:	00013437          	lui	s0,0x13
   10cf0:	000137b7          	lui	a5,0x13
   10cf4:	2c078793          	add	a5,a5,704 # 132c0 <__do_global_dtors_aux_fini_array_entry>
   10cf8:	2b840713          	add	a4,s0,696 # 132b8 <__init_array_start>
   10cfc:	40e78933          	sub	s2,a5,a4
   10d00:	40295913          	sra	s2,s2,0x2
   10d04:	02e78063          	beq	a5,a4,10d24 <__libc_init_array+0x84>
   10d08:	2b840413          	add	s0,s0,696
   10d0c:	00000493          	li	s1,0
   10d10:	00042783          	lw	a5,0(s0)
   10d14:	00148493          	add	s1,s1,1
   10d18:	00440413          	add	s0,s0,4
   10d1c:	000780e7          	jalr	a5
   10d20:	ff24e8e3          	bltu	s1,s2,10d10 <__libc_init_array+0x70>
   10d24:	00c12083          	lw	ra,12(sp)
   10d28:	00812403          	lw	s0,8(sp)
   10d2c:	00412483          	lw	s1,4(sp)
   10d30:	00012903          	lw	s2,0(sp)
   10d34:	01010113          	add	sp,sp,16
   10d38:	00008067          	ret

00010d3c <memset>:
   10d3c:	00f00313          	li	t1,15
   10d40:	00050713          	mv	a4,a0
   10d44:	02c37e63          	bgeu	t1,a2,10d80 <memset+0x44>
   10d48:	00f77793          	and	a5,a4,15
   10d4c:	0a079063          	bnez	a5,10dec <memset+0xb0>
   10d50:	08059263          	bnez	a1,10dd4 <memset+0x98>
   10d54:	ff067693          	and	a3,a2,-16
   10d58:	00f67613          	and	a2,a2,15
   10d5c:	00e686b3          	add	a3,a3,a4
   10d60:	00b72023          	sw	a1,0(a4)
   10d64:	00b72223          	sw	a1,4(a4)
   10d68:	00b72423          	sw	a1,8(a4)
   10d6c:	00b72623          	sw	a1,12(a4)
   10d70:	01070713          	add	a4,a4,16
   10d74:	fed766e3          	bltu	a4,a3,10d60 <memset+0x24>
   10d78:	00061463          	bnez	a2,10d80 <memset+0x44>
   10d7c:	00008067          	ret
   10d80:	40c306b3          	sub	a3,t1,a2
   10d84:	00269693          	sll	a3,a3,0x2
   10d88:	00000297          	auipc	t0,0x0
   10d8c:	005686b3          	add	a3,a3,t0
   10d90:	00c68067          	jr	12(a3)
   10d94:	00b70723          	sb	a1,14(a4)
   10d98:	00b706a3          	sb	a1,13(a4)
   10d9c:	00b70623          	sb	a1,12(a4)
   10da0:	00b705a3          	sb	a1,11(a4)
   10da4:	00b70523          	sb	a1,10(a4)
   10da8:	00b704a3          	sb	a1,9(a4)
   10dac:	00b70423          	sb	a1,8(a4)
   10db0:	00b703a3          	sb	a1,7(a4)
   10db4:	00b70323          	sb	a1,6(a4)
   10db8:	00b702a3          	sb	a1,5(a4)
   10dbc:	00b70223          	sb	a1,4(a4)
   10dc0:	00b701a3          	sb	a1,3(a4)
   10dc4:	00b70123          	sb	a1,2(a4)
   10dc8:	00b700a3          	sb	a1,1(a4)
   10dcc:	00b70023          	sb	a1,0(a4)
   10dd0:	00008067          	ret
   10dd4:	0ff5f593          	zext.b	a1,a1
   10dd8:	00859693          	sll	a3,a1,0x8
   10ddc:	00d5e5b3          	or	a1,a1,a3
   10de0:	01059693          	sll	a3,a1,0x10
   10de4:	00d5e5b3          	or	a1,a1,a3
   10de8:	f6dff06f          	j	10d54 <memset+0x18>
   10dec:	00279693          	sll	a3,a5,0x2
   10df0:	00000297          	auipc	t0,0x0
   10df4:	005686b3          	add	a3,a3,t0
   10df8:	00008293          	mv	t0,ra
   10dfc:	fa0680e7          	jalr	-96(a3)
   10e00:	00028093          	mv	ra,t0
   10e04:	ff078793          	add	a5,a5,-16
   10e08:	40f70733          	sub	a4,a4,a5
   10e0c:	00f60633          	add	a2,a2,a5
   10e10:	f6c378e3          	bgeu	t1,a2,10d80 <memset+0x44>
   10e14:	f3dff06f          	j	10d50 <memset+0x14>

00010e18 <__call_exitprocs>:
   10e18:	fd010113          	add	sp,sp,-48
   10e1c:	01412c23          	sw	s4,24(sp)
   10e20:	03212023          	sw	s2,32(sp)
   10e24:	d501a903          	lw	s2,-688(gp) # 13818 <__atexit>
   10e28:	02112623          	sw	ra,44(sp)
   10e2c:	0a090863          	beqz	s2,10edc <__call_exitprocs+0xc4>
   10e30:	01312e23          	sw	s3,28(sp)
   10e34:	01512a23          	sw	s5,20(sp)
   10e38:	01612823          	sw	s6,16(sp)
   10e3c:	01712623          	sw	s7,12(sp)
   10e40:	02812423          	sw	s0,40(sp)
   10e44:	02912223          	sw	s1,36(sp)
   10e48:	01812423          	sw	s8,8(sp)
   10e4c:	00050b13          	mv	s6,a0
   10e50:	00058b93          	mv	s7,a1
   10e54:	fff00993          	li	s3,-1
   10e58:	00100a93          	li	s5,1
   10e5c:	00492483          	lw	s1,4(s2)
   10e60:	fff48413          	add	s0,s1,-1
   10e64:	04044e63          	bltz	s0,10ec0 <__call_exitprocs+0xa8>
   10e68:	00249493          	sll	s1,s1,0x2
   10e6c:	009904b3          	add	s1,s2,s1
   10e70:	080b9063          	bnez	s7,10ef0 <__call_exitprocs+0xd8>
   10e74:	00492783          	lw	a5,4(s2)
   10e78:	0044a683          	lw	a3,4(s1)
   10e7c:	fff78793          	add	a5,a5,-1
   10e80:	0a878c63          	beq	a5,s0,10f38 <__call_exitprocs+0x120>
   10e84:	0004a223          	sw	zero,4(s1)
   10e88:	02068663          	beqz	a3,10eb4 <__call_exitprocs+0x9c>
   10e8c:	18892783          	lw	a5,392(s2)
   10e90:	008a9733          	sll	a4,s5,s0
   10e94:	00492c03          	lw	s8,4(s2)
   10e98:	00f777b3          	and	a5,a4,a5
   10e9c:	06079663          	bnez	a5,10f08 <__call_exitprocs+0xf0>
   10ea0:	000680e7          	jalr	a3
   10ea4:	00492703          	lw	a4,4(s2)
   10ea8:	d501a783          	lw	a5,-688(gp) # 13818 <__atexit>
   10eac:	09871063          	bne	a4,s8,10f2c <__call_exitprocs+0x114>
   10eb0:	07279e63          	bne	a5,s2,10f2c <__call_exitprocs+0x114>
   10eb4:	fff40413          	add	s0,s0,-1
   10eb8:	ffc48493          	add	s1,s1,-4
   10ebc:	fb341ae3          	bne	s0,s3,10e70 <__call_exitprocs+0x58>
   10ec0:	02812403          	lw	s0,40(sp)
   10ec4:	02412483          	lw	s1,36(sp)
   10ec8:	01c12983          	lw	s3,28(sp)
   10ecc:	01412a83          	lw	s5,20(sp)
   10ed0:	01012b03          	lw	s6,16(sp)
   10ed4:	00c12b83          	lw	s7,12(sp)
   10ed8:	00812c03          	lw	s8,8(sp)
   10edc:	02c12083          	lw	ra,44(sp)
   10ee0:	02012903          	lw	s2,32(sp)
   10ee4:	01812a03          	lw	s4,24(sp)
   10ee8:	03010113          	add	sp,sp,48
   10eec:	00008067          	ret
   10ef0:	1044a783          	lw	a5,260(s1)
   10ef4:	f97780e3          	beq	a5,s7,10e74 <__call_exitprocs+0x5c>
   10ef8:	fff40413          	add	s0,s0,-1
   10efc:	ffc48493          	add	s1,s1,-4
   10f00:	ff3418e3          	bne	s0,s3,10ef0 <__call_exitprocs+0xd8>
   10f04:	fbdff06f          	j	10ec0 <__call_exitprocs+0xa8>
   10f08:	18c92783          	lw	a5,396(s2)
   10f0c:	0844a583          	lw	a1,132(s1)
   10f10:	00f77733          	and	a4,a4,a5
   10f14:	02071663          	bnez	a4,10f40 <__call_exitprocs+0x128>
   10f18:	000b0513          	mv	a0,s6
   10f1c:	000680e7          	jalr	a3
   10f20:	00492703          	lw	a4,4(s2)
   10f24:	d501a783          	lw	a5,-688(gp) # 13818 <__atexit>
   10f28:	f98704e3          	beq	a4,s8,10eb0 <__call_exitprocs+0x98>
   10f2c:	f8078ae3          	beqz	a5,10ec0 <__call_exitprocs+0xa8>
   10f30:	00078913          	mv	s2,a5
   10f34:	f29ff06f          	j	10e5c <__call_exitprocs+0x44>
   10f38:	00892223          	sw	s0,4(s2)
   10f3c:	f4dff06f          	j	10e88 <__call_exitprocs+0x70>
   10f40:	00058513          	mv	a0,a1
   10f44:	000680e7          	jalr	a3
   10f48:	f5dff06f          	j	10ea4 <__call_exitprocs+0x8c>

00010f4c <atexit>:
   10f4c:	00050593          	mv	a1,a0
   10f50:	00000693          	li	a3,0
   10f54:	00000613          	li	a2,0
   10f58:	00000513          	li	a0,0
   10f5c:	1000106f          	j	1205c <__register_exitproc>

00010f60 <_malloc_trim_r>:
   10f60:	fe010113          	add	sp,sp,-32
   10f64:	01312623          	sw	s3,12(sp)
   10f68:	000139b7          	lui	s3,0x13
   10f6c:	00812c23          	sw	s0,24(sp)
   10f70:	00912a23          	sw	s1,20(sp)
   10f74:	01212823          	sw	s2,16(sp)
   10f78:	01412423          	sw	s4,8(sp)
   10f7c:	00112e23          	sw	ra,28(sp)
   10f80:	00058a13          	mv	s4,a1
   10f84:	00050913          	mv	s2,a0
   10f88:	3f898993          	add	s3,s3,1016 # 133f8 <__malloc_av_>
   10f8c:	3cd000ef          	jal	11b58 <__malloc_lock>
   10f90:	0089a703          	lw	a4,8(s3)
   10f94:	000017b7          	lui	a5,0x1
   10f98:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   10f9c:	00472483          	lw	s1,4(a4)
   10fa0:	00001737          	lui	a4,0x1
   10fa4:	ffc4f493          	and	s1,s1,-4
   10fa8:	00f48433          	add	s0,s1,a5
   10fac:	41440433          	sub	s0,s0,s4
   10fb0:	00c45413          	srl	s0,s0,0xc
   10fb4:	fff40413          	add	s0,s0,-1
   10fb8:	00c41413          	sll	s0,s0,0xc
   10fbc:	00e44e63          	blt	s0,a4,10fd8 <_malloc_trim_r+0x78>
   10fc0:	00000593          	li	a1,0
   10fc4:	00090513          	mv	a0,s2
   10fc8:	7dd000ef          	jal	11fa4 <_sbrk_r>
   10fcc:	0089a783          	lw	a5,8(s3)
   10fd0:	009787b3          	add	a5,a5,s1
   10fd4:	02f50863          	beq	a0,a5,11004 <_malloc_trim_r+0xa4>
   10fd8:	00090513          	mv	a0,s2
   10fdc:	381000ef          	jal	11b5c <__malloc_unlock>
   10fe0:	01c12083          	lw	ra,28(sp)
   10fe4:	01812403          	lw	s0,24(sp)
   10fe8:	01412483          	lw	s1,20(sp)
   10fec:	01012903          	lw	s2,16(sp)
   10ff0:	00c12983          	lw	s3,12(sp)
   10ff4:	00812a03          	lw	s4,8(sp)
   10ff8:	00000513          	li	a0,0
   10ffc:	02010113          	add	sp,sp,32
   11000:	00008067          	ret
   11004:	408005b3          	neg	a1,s0
   11008:	00090513          	mv	a0,s2
   1100c:	799000ef          	jal	11fa4 <_sbrk_r>
   11010:	fff00793          	li	a5,-1
   11014:	04f50863          	beq	a0,a5,11064 <_malloc_trim_r+0x104>
   11018:	f6018793          	add	a5,gp,-160 # 13a28 <__malloc_current_mallinfo>
   1101c:	0007a703          	lw	a4,0(a5)
   11020:	0089a683          	lw	a3,8(s3)
   11024:	408484b3          	sub	s1,s1,s0
   11028:	0014e493          	or	s1,s1,1
   1102c:	40870733          	sub	a4,a4,s0
   11030:	00090513          	mv	a0,s2
   11034:	0096a223          	sw	s1,4(a3)
   11038:	00e7a023          	sw	a4,0(a5)
   1103c:	321000ef          	jal	11b5c <__malloc_unlock>
   11040:	01c12083          	lw	ra,28(sp)
   11044:	01812403          	lw	s0,24(sp)
   11048:	01412483          	lw	s1,20(sp)
   1104c:	01012903          	lw	s2,16(sp)
   11050:	00c12983          	lw	s3,12(sp)
   11054:	00812a03          	lw	s4,8(sp)
   11058:	00100513          	li	a0,1
   1105c:	02010113          	add	sp,sp,32
   11060:	00008067          	ret
   11064:	00000593          	li	a1,0
   11068:	00090513          	mv	a0,s2
   1106c:	739000ef          	jal	11fa4 <_sbrk_r>
   11070:	0089a703          	lw	a4,8(s3)
   11074:	00f00693          	li	a3,15
   11078:	40e507b3          	sub	a5,a0,a4
   1107c:	f4f6dee3          	bge	a3,a5,10fd8 <_malloc_trim_r+0x78>
   11080:	d401a683          	lw	a3,-704(gp) # 13808 <__malloc_sbrk_base>
   11084:	0017e793          	or	a5,a5,1
   11088:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf090>
   1108c:	40d50533          	sub	a0,a0,a3
   11090:	f6a1a023          	sw	a0,-160(gp) # 13a28 <__malloc_current_mallinfo>
   11094:	f45ff06f          	j	10fd8 <_malloc_trim_r+0x78>

00011098 <_free_r>:
   11098:	18058263          	beqz	a1,1121c <_free_r+0x184>
   1109c:	ff010113          	add	sp,sp,-16
   110a0:	00812423          	sw	s0,8(sp)
   110a4:	00912223          	sw	s1,4(sp)
   110a8:	00058413          	mv	s0,a1
   110ac:	00050493          	mv	s1,a0
   110b0:	00112623          	sw	ra,12(sp)
   110b4:	2a5000ef          	jal	11b58 <__malloc_lock>
   110b8:	ffc42503          	lw	a0,-4(s0)
   110bc:	ff840713          	add	a4,s0,-8
   110c0:	000135b7          	lui	a1,0x13
   110c4:	ffe57793          	and	a5,a0,-2
   110c8:	00f70633          	add	a2,a4,a5
   110cc:	3f858593          	add	a1,a1,1016 # 133f8 <__malloc_av_>
   110d0:	00462683          	lw	a3,4(a2)
   110d4:	0085a803          	lw	a6,8(a1)
   110d8:	ffc6f693          	and	a3,a3,-4
   110dc:	1ac80263          	beq	a6,a2,11280 <_free_r+0x1e8>
   110e0:	00d62223          	sw	a3,4(a2)
   110e4:	00157513          	and	a0,a0,1
   110e8:	00d60833          	add	a6,a2,a3
   110ec:	0a051063          	bnez	a0,1118c <_free_r+0xf4>
   110f0:	ff842303          	lw	t1,-8(s0)
   110f4:	00482803          	lw	a6,4(a6)
   110f8:	00013537          	lui	a0,0x13
   110fc:	40670733          	sub	a4,a4,t1
   11100:	00872883          	lw	a7,8(a4)
   11104:	40050513          	add	a0,a0,1024 # 13400 <__malloc_av_+0x8>
   11108:	006787b3          	add	a5,a5,t1
   1110c:	00187813          	and	a6,a6,1
   11110:	14a88263          	beq	a7,a0,11254 <_free_r+0x1bc>
   11114:	00c72303          	lw	t1,12(a4)
   11118:	0068a623          	sw	t1,12(a7)
   1111c:	01132423          	sw	a7,8(t1) # 10184 <frame_dummy+0x1c>
   11120:	1a080663          	beqz	a6,112cc <_free_r+0x234>
   11124:	0017e693          	or	a3,a5,1
   11128:	00d72223          	sw	a3,4(a4)
   1112c:	00f62023          	sw	a5,0(a2)
   11130:	1ff00693          	li	a3,511
   11134:	06f6ec63          	bltu	a3,a5,111ac <_free_r+0x114>
   11138:	ff87f693          	and	a3,a5,-8
   1113c:	00868693          	add	a3,a3,8
   11140:	0045a503          	lw	a0,4(a1)
   11144:	00d586b3          	add	a3,a1,a3
   11148:	0006a603          	lw	a2,0(a3)
   1114c:	0057d813          	srl	a6,a5,0x5
   11150:	00100793          	li	a5,1
   11154:	010797b3          	sll	a5,a5,a6
   11158:	00a7e7b3          	or	a5,a5,a0
   1115c:	ff868513          	add	a0,a3,-8
   11160:	00a72623          	sw	a0,12(a4)
   11164:	00c72423          	sw	a2,8(a4)
   11168:	00f5a223          	sw	a5,4(a1)
   1116c:	00e6a023          	sw	a4,0(a3)
   11170:	00e62623          	sw	a4,12(a2)
   11174:	00812403          	lw	s0,8(sp)
   11178:	00c12083          	lw	ra,12(sp)
   1117c:	00048513          	mv	a0,s1
   11180:	00412483          	lw	s1,4(sp)
   11184:	01010113          	add	sp,sp,16
   11188:	1d50006f          	j	11b5c <__malloc_unlock>
   1118c:	00482503          	lw	a0,4(a6)
   11190:	00157513          	and	a0,a0,1
   11194:	08050663          	beqz	a0,11220 <_free_r+0x188>
   11198:	0017e693          	or	a3,a5,1
   1119c:	fed42e23          	sw	a3,-4(s0)
   111a0:	00f62023          	sw	a5,0(a2)
   111a4:	1ff00693          	li	a3,511
   111a8:	f8f6f8e3          	bgeu	a3,a5,11138 <_free_r+0xa0>
   111ac:	0097d693          	srl	a3,a5,0x9
   111b0:	00400613          	li	a2,4
   111b4:	12d66063          	bltu	a2,a3,112d4 <_free_r+0x23c>
   111b8:	0067d693          	srl	a3,a5,0x6
   111bc:	03968513          	add	a0,a3,57
   111c0:	03868613          	add	a2,a3,56
   111c4:	00351513          	sll	a0,a0,0x3
   111c8:	00a58533          	add	a0,a1,a0
   111cc:	00052683          	lw	a3,0(a0)
   111d0:	ff850513          	add	a0,a0,-8
   111d4:	00d51863          	bne	a0,a3,111e4 <_free_r+0x14c>
   111d8:	1540006f          	j	1132c <_free_r+0x294>
   111dc:	0086a683          	lw	a3,8(a3)
   111e0:	00d50863          	beq	a0,a3,111f0 <_free_r+0x158>
   111e4:	0046a603          	lw	a2,4(a3)
   111e8:	ffc67613          	and	a2,a2,-4
   111ec:	fec7e8e3          	bltu	a5,a2,111dc <_free_r+0x144>
   111f0:	00c6a503          	lw	a0,12(a3)
   111f4:	00a72623          	sw	a0,12(a4)
   111f8:	00d72423          	sw	a3,8(a4)
   111fc:	00812403          	lw	s0,8(sp)
   11200:	00e52423          	sw	a4,8(a0)
   11204:	00c12083          	lw	ra,12(sp)
   11208:	00048513          	mv	a0,s1
   1120c:	00412483          	lw	s1,4(sp)
   11210:	00e6a623          	sw	a4,12(a3)
   11214:	01010113          	add	sp,sp,16
   11218:	1450006f          	j	11b5c <__malloc_unlock>
   1121c:	00008067          	ret
   11220:	00013537          	lui	a0,0x13
   11224:	00d787b3          	add	a5,a5,a3
   11228:	40050513          	add	a0,a0,1024 # 13400 <__malloc_av_+0x8>
   1122c:	00862683          	lw	a3,8(a2)
   11230:	0ca68c63          	beq	a3,a0,11308 <_free_r+0x270>
   11234:	00c62803          	lw	a6,12(a2)
   11238:	0017e513          	or	a0,a5,1
   1123c:	00f70633          	add	a2,a4,a5
   11240:	0106a623          	sw	a6,12(a3)
   11244:	00d82423          	sw	a3,8(a6)
   11248:	00a72223          	sw	a0,4(a4)
   1124c:	00f62023          	sw	a5,0(a2)
   11250:	ee1ff06f          	j	11130 <_free_r+0x98>
   11254:	12081c63          	bnez	a6,1138c <_free_r+0x2f4>
   11258:	00862583          	lw	a1,8(a2)
   1125c:	00c62603          	lw	a2,12(a2)
   11260:	00f686b3          	add	a3,a3,a5
   11264:	0016e793          	or	a5,a3,1
   11268:	00c5a623          	sw	a2,12(a1)
   1126c:	00b62423          	sw	a1,8(a2)
   11270:	00f72223          	sw	a5,4(a4)
   11274:	00d70733          	add	a4,a4,a3
   11278:	00d72023          	sw	a3,0(a4)
   1127c:	ef9ff06f          	j	11174 <_free_r+0xdc>
   11280:	00157513          	and	a0,a0,1
   11284:	00d786b3          	add	a3,a5,a3
   11288:	02051063          	bnez	a0,112a8 <_free_r+0x210>
   1128c:	ff842503          	lw	a0,-8(s0)
   11290:	40a70733          	sub	a4,a4,a0
   11294:	00c72783          	lw	a5,12(a4)
   11298:	00872603          	lw	a2,8(a4)
   1129c:	00a686b3          	add	a3,a3,a0
   112a0:	00f62623          	sw	a5,12(a2)
   112a4:	00c7a423          	sw	a2,8(a5)
   112a8:	0016e613          	or	a2,a3,1
   112ac:	d441a783          	lw	a5,-700(gp) # 1380c <__malloc_trim_threshold>
   112b0:	00c72223          	sw	a2,4(a4)
   112b4:	00e5a423          	sw	a4,8(a1)
   112b8:	eaf6eee3          	bltu	a3,a5,11174 <_free_r+0xdc>
   112bc:	d5c1a583          	lw	a1,-676(gp) # 13824 <__malloc_top_pad>
   112c0:	00048513          	mv	a0,s1
   112c4:	c9dff0ef          	jal	10f60 <_malloc_trim_r>
   112c8:	eadff06f          	j	11174 <_free_r+0xdc>
   112cc:	00d787b3          	add	a5,a5,a3
   112d0:	f5dff06f          	j	1122c <_free_r+0x194>
   112d4:	01400613          	li	a2,20
   112d8:	02d67063          	bgeu	a2,a3,112f8 <_free_r+0x260>
   112dc:	05400613          	li	a2,84
   112e0:	06d66463          	bltu	a2,a3,11348 <_free_r+0x2b0>
   112e4:	00c7d693          	srl	a3,a5,0xc
   112e8:	06f68513          	add	a0,a3,111
   112ec:	06e68613          	add	a2,a3,110
   112f0:	00351513          	sll	a0,a0,0x3
   112f4:	ed5ff06f          	j	111c8 <_free_r+0x130>
   112f8:	05c68513          	add	a0,a3,92
   112fc:	05b68613          	add	a2,a3,91
   11300:	00351513          	sll	a0,a0,0x3
   11304:	ec5ff06f          	j	111c8 <_free_r+0x130>
   11308:	00e5aa23          	sw	a4,20(a1)
   1130c:	00e5a823          	sw	a4,16(a1)
   11310:	0017e693          	or	a3,a5,1
   11314:	00a72623          	sw	a0,12(a4)
   11318:	00a72423          	sw	a0,8(a4)
   1131c:	00d72223          	sw	a3,4(a4)
   11320:	00f70733          	add	a4,a4,a5
   11324:	00f72023          	sw	a5,0(a4)
   11328:	e4dff06f          	j	11174 <_free_r+0xdc>
   1132c:	0045a803          	lw	a6,4(a1)
   11330:	40265613          	sra	a2,a2,0x2
   11334:	00100793          	li	a5,1
   11338:	00c797b3          	sll	a5,a5,a2
   1133c:	0107e7b3          	or	a5,a5,a6
   11340:	00f5a223          	sw	a5,4(a1)
   11344:	eb1ff06f          	j	111f4 <_free_r+0x15c>
   11348:	15400613          	li	a2,340
   1134c:	00d66c63          	bltu	a2,a3,11364 <_free_r+0x2cc>
   11350:	00f7d693          	srl	a3,a5,0xf
   11354:	07868513          	add	a0,a3,120
   11358:	07768613          	add	a2,a3,119
   1135c:	00351513          	sll	a0,a0,0x3
   11360:	e69ff06f          	j	111c8 <_free_r+0x130>
   11364:	55400613          	li	a2,1364
   11368:	00d66c63          	bltu	a2,a3,11380 <_free_r+0x2e8>
   1136c:	0127d693          	srl	a3,a5,0x12
   11370:	07d68513          	add	a0,a3,125
   11374:	07c68613          	add	a2,a3,124
   11378:	00351513          	sll	a0,a0,0x3
   1137c:	e4dff06f          	j	111c8 <_free_r+0x130>
   11380:	3f800513          	li	a0,1016
   11384:	07e00613          	li	a2,126
   11388:	e41ff06f          	j	111c8 <_free_r+0x130>
   1138c:	0017e693          	or	a3,a5,1
   11390:	00d72223          	sw	a3,4(a4)
   11394:	00f62023          	sw	a5,0(a2)
   11398:	dddff06f          	j	11174 <_free_r+0xdc>

0001139c <_malloc_r>:
   1139c:	fd010113          	add	sp,sp,-48
   113a0:	01312e23          	sw	s3,28(sp)
   113a4:	02112623          	sw	ra,44(sp)
   113a8:	02812423          	sw	s0,40(sp)
   113ac:	02912223          	sw	s1,36(sp)
   113b0:	03212023          	sw	s2,32(sp)
   113b4:	00b58793          	add	a5,a1,11
   113b8:	01600713          	li	a4,22
   113bc:	00050993          	mv	s3,a0
   113c0:	08f76263          	bltu	a4,a5,11444 <_malloc_r+0xa8>
   113c4:	01000793          	li	a5,16
   113c8:	20b7e663          	bltu	a5,a1,115d4 <_malloc_r+0x238>
   113cc:	78c000ef          	jal	11b58 <__malloc_lock>
   113d0:	01800793          	li	a5,24
   113d4:	00200593          	li	a1,2
   113d8:	01000493          	li	s1,16
   113dc:	00013937          	lui	s2,0x13
   113e0:	3f890913          	add	s2,s2,1016 # 133f8 <__malloc_av_>
   113e4:	00f907b3          	add	a5,s2,a5
   113e8:	0047a403          	lw	s0,4(a5)
   113ec:	ff878713          	add	a4,a5,-8
   113f0:	34e40463          	beq	s0,a4,11738 <_malloc_r+0x39c>
   113f4:	00442783          	lw	a5,4(s0)
   113f8:	00c42683          	lw	a3,12(s0)
   113fc:	00842603          	lw	a2,8(s0)
   11400:	ffc7f793          	and	a5,a5,-4
   11404:	00f407b3          	add	a5,s0,a5
   11408:	0047a703          	lw	a4,4(a5)
   1140c:	00d62623          	sw	a3,12(a2)
   11410:	00c6a423          	sw	a2,8(a3)
   11414:	00176713          	or	a4,a4,1
   11418:	00098513          	mv	a0,s3
   1141c:	00e7a223          	sw	a4,4(a5)
   11420:	73c000ef          	jal	11b5c <__malloc_unlock>
   11424:	00840513          	add	a0,s0,8
   11428:	02c12083          	lw	ra,44(sp)
   1142c:	02812403          	lw	s0,40(sp)
   11430:	02412483          	lw	s1,36(sp)
   11434:	02012903          	lw	s2,32(sp)
   11438:	01c12983          	lw	s3,28(sp)
   1143c:	03010113          	add	sp,sp,48
   11440:	00008067          	ret
   11444:	ff87f493          	and	s1,a5,-8
   11448:	1807c663          	bltz	a5,115d4 <_malloc_r+0x238>
   1144c:	18b4e463          	bltu	s1,a1,115d4 <_malloc_r+0x238>
   11450:	708000ef          	jal	11b58 <__malloc_lock>
   11454:	1f700793          	li	a5,503
   11458:	3e97fa63          	bgeu	a5,s1,1184c <_malloc_r+0x4b0>
   1145c:	0094d793          	srl	a5,s1,0x9
   11460:	18078263          	beqz	a5,115e4 <_malloc_r+0x248>
   11464:	00400713          	li	a4,4
   11468:	34f76063          	bltu	a4,a5,117a8 <_malloc_r+0x40c>
   1146c:	0064d793          	srl	a5,s1,0x6
   11470:	03978593          	add	a1,a5,57
   11474:	03878813          	add	a6,a5,56
   11478:	00359613          	sll	a2,a1,0x3
   1147c:	00013937          	lui	s2,0x13
   11480:	3f890913          	add	s2,s2,1016 # 133f8 <__malloc_av_>
   11484:	00c90633          	add	a2,s2,a2
   11488:	00462403          	lw	s0,4(a2)
   1148c:	ff860613          	add	a2,a2,-8
   11490:	02860863          	beq	a2,s0,114c0 <_malloc_r+0x124>
   11494:	00f00513          	li	a0,15
   11498:	0140006f          	j	114ac <_malloc_r+0x110>
   1149c:	00c42683          	lw	a3,12(s0)
   114a0:	28075863          	bgez	a4,11730 <_malloc_r+0x394>
   114a4:	00d60e63          	beq	a2,a3,114c0 <_malloc_r+0x124>
   114a8:	00068413          	mv	s0,a3
   114ac:	00442783          	lw	a5,4(s0)
   114b0:	ffc7f793          	and	a5,a5,-4
   114b4:	40978733          	sub	a4,a5,s1
   114b8:	fee552e3          	bge	a0,a4,1149c <_malloc_r+0x100>
   114bc:	00080593          	mv	a1,a6
   114c0:	01092403          	lw	s0,16(s2)
   114c4:	00013837          	lui	a6,0x13
   114c8:	40080813          	add	a6,a6,1024 # 13400 <__malloc_av_+0x8>
   114cc:	25040e63          	beq	s0,a6,11728 <_malloc_r+0x38c>
   114d0:	00442783          	lw	a5,4(s0)
   114d4:	00f00693          	li	a3,15
   114d8:	ffc7f793          	and	a5,a5,-4
   114dc:	40978733          	sub	a4,a5,s1
   114e0:	36e6cc63          	blt	a3,a4,11858 <_malloc_r+0x4bc>
   114e4:	01092a23          	sw	a6,20(s2)
   114e8:	01092823          	sw	a6,16(s2)
   114ec:	34075063          	bgez	a4,1182c <_malloc_r+0x490>
   114f0:	1ff00713          	li	a4,511
   114f4:	00492503          	lw	a0,4(s2)
   114f8:	24f76863          	bltu	a4,a5,11748 <_malloc_r+0x3ac>
   114fc:	ff87f713          	and	a4,a5,-8
   11500:	00870713          	add	a4,a4,8
   11504:	00e90733          	add	a4,s2,a4
   11508:	00072683          	lw	a3,0(a4)
   1150c:	0057d613          	srl	a2,a5,0x5
   11510:	00100793          	li	a5,1
   11514:	00c797b3          	sll	a5,a5,a2
   11518:	00f56533          	or	a0,a0,a5
   1151c:	ff870793          	add	a5,a4,-8
   11520:	00f42623          	sw	a5,12(s0)
   11524:	00d42423          	sw	a3,8(s0)
   11528:	00a92223          	sw	a0,4(s2)
   1152c:	00872023          	sw	s0,0(a4)
   11530:	0086a623          	sw	s0,12(a3)
   11534:	4025d793          	sra	a5,a1,0x2
   11538:	00100613          	li	a2,1
   1153c:	00f61633          	sll	a2,a2,a5
   11540:	0ac56a63          	bltu	a0,a2,115f4 <_malloc_r+0x258>
   11544:	00a677b3          	and	a5,a2,a0
   11548:	02079463          	bnez	a5,11570 <_malloc_r+0x1d4>
   1154c:	00161613          	sll	a2,a2,0x1
   11550:	ffc5f593          	and	a1,a1,-4
   11554:	00a677b3          	and	a5,a2,a0
   11558:	00458593          	add	a1,a1,4
   1155c:	00079a63          	bnez	a5,11570 <_malloc_r+0x1d4>
   11560:	00161613          	sll	a2,a2,0x1
   11564:	00a677b3          	and	a5,a2,a0
   11568:	00458593          	add	a1,a1,4
   1156c:	fe078ae3          	beqz	a5,11560 <_malloc_r+0x1c4>
   11570:	00f00893          	li	a7,15
   11574:	00359313          	sll	t1,a1,0x3
   11578:	00690333          	add	t1,s2,t1
   1157c:	00030513          	mv	a0,t1
   11580:	00c52783          	lw	a5,12(a0)
   11584:	00058e13          	mv	t3,a1
   11588:	24f50263          	beq	a0,a5,117cc <_malloc_r+0x430>
   1158c:	0047a703          	lw	a4,4(a5)
   11590:	00078413          	mv	s0,a5
   11594:	00c7a783          	lw	a5,12(a5)
   11598:	ffc77713          	and	a4,a4,-4
   1159c:	409706b3          	sub	a3,a4,s1
   115a0:	24d8c263          	blt	a7,a3,117e4 <_malloc_r+0x448>
   115a4:	fe06c2e3          	bltz	a3,11588 <_malloc_r+0x1ec>
   115a8:	00e40733          	add	a4,s0,a4
   115ac:	00472683          	lw	a3,4(a4)
   115b0:	00842603          	lw	a2,8(s0)
   115b4:	00098513          	mv	a0,s3
   115b8:	0016e693          	or	a3,a3,1
   115bc:	00d72223          	sw	a3,4(a4)
   115c0:	00f62623          	sw	a5,12(a2)
   115c4:	00c7a423          	sw	a2,8(a5)
   115c8:	594000ef          	jal	11b5c <__malloc_unlock>
   115cc:	00840513          	add	a0,s0,8
   115d0:	e59ff06f          	j	11428 <_malloc_r+0x8c>
   115d4:	00c00793          	li	a5,12
   115d8:	00f9a023          	sw	a5,0(s3)
   115dc:	00000513          	li	a0,0
   115e0:	e49ff06f          	j	11428 <_malloc_r+0x8c>
   115e4:	20000613          	li	a2,512
   115e8:	04000593          	li	a1,64
   115ec:	03f00813          	li	a6,63
   115f0:	e8dff06f          	j	1147c <_malloc_r+0xe0>
   115f4:	00892403          	lw	s0,8(s2)
   115f8:	01612823          	sw	s6,16(sp)
   115fc:	00442783          	lw	a5,4(s0)
   11600:	ffc7fb13          	and	s6,a5,-4
   11604:	009b6863          	bltu	s6,s1,11614 <_malloc_r+0x278>
   11608:	409b0733          	sub	a4,s6,s1
   1160c:	00f00793          	li	a5,15
   11610:	0ce7ca63          	blt	a5,a4,116e4 <_malloc_r+0x348>
   11614:	01912223          	sw	s9,4(sp)
   11618:	01512a23          	sw	s5,20(sp)
   1161c:	d401a703          	lw	a4,-704(gp) # 13808 <__malloc_sbrk_base>
   11620:	d5c1aa83          	lw	s5,-676(gp) # 13824 <__malloc_top_pad>
   11624:	01412c23          	sw	s4,24(sp)
   11628:	01712623          	sw	s7,12(sp)
   1162c:	fff00793          	li	a5,-1
   11630:	01640a33          	add	s4,s0,s6
   11634:	01548ab3          	add	s5,s1,s5
   11638:	3cf70663          	beq	a4,a5,11a04 <_malloc_r+0x668>
   1163c:	000017b7          	lui	a5,0x1
   11640:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   11644:	00fa8ab3          	add	s5,s5,a5
   11648:	fffff7b7          	lui	a5,0xfffff
   1164c:	00fafab3          	and	s5,s5,a5
   11650:	000a8593          	mv	a1,s5
   11654:	00098513          	mv	a0,s3
   11658:	14d000ef          	jal	11fa4 <_sbrk_r>
   1165c:	fff00793          	li	a5,-1
   11660:	00050b93          	mv	s7,a0
   11664:	44f50a63          	beq	a0,a5,11ab8 <_malloc_r+0x71c>
   11668:	01812423          	sw	s8,8(sp)
   1166c:	23456e63          	bltu	a0,s4,118a8 <_malloc_r+0x50c>
   11670:	f6018c13          	add	s8,gp,-160 # 13a28 <__malloc_current_mallinfo>
   11674:	000c2583          	lw	a1,0(s8)
   11678:	00ba85b3          	add	a1,s5,a1
   1167c:	00bc2023          	sw	a1,0(s8)
   11680:	00058713          	mv	a4,a1
   11684:	2aaa1663          	bne	s4,a0,11930 <_malloc_r+0x594>
   11688:	01451793          	sll	a5,a0,0x14
   1168c:	2a079263          	bnez	a5,11930 <_malloc_r+0x594>
   11690:	00892b83          	lw	s7,8(s2)
   11694:	015b07b3          	add	a5,s6,s5
   11698:	0017e793          	or	a5,a5,1
   1169c:	00fba223          	sw	a5,4(s7)
   116a0:	d581a683          	lw	a3,-680(gp) # 13820 <__malloc_max_sbrked_mem>
   116a4:	00b6f463          	bgeu	a3,a1,116ac <_malloc_r+0x310>
   116a8:	d4b1ac23          	sw	a1,-680(gp) # 13820 <__malloc_max_sbrked_mem>
   116ac:	d541a683          	lw	a3,-684(gp) # 1381c <__malloc_max_total_mem>
   116b0:	00b6f463          	bgeu	a3,a1,116b8 <_malloc_r+0x31c>
   116b4:	d4b1aa23          	sw	a1,-684(gp) # 1381c <__malloc_max_total_mem>
   116b8:	00812c03          	lw	s8,8(sp)
   116bc:	000b8413          	mv	s0,s7
   116c0:	ffc7f793          	and	a5,a5,-4
   116c4:	40978733          	sub	a4,a5,s1
   116c8:	3897ea63          	bltu	a5,s1,11a5c <_malloc_r+0x6c0>
   116cc:	00f00793          	li	a5,15
   116d0:	38e7d663          	bge	a5,a4,11a5c <_malloc_r+0x6c0>
   116d4:	01812a03          	lw	s4,24(sp)
   116d8:	01412a83          	lw	s5,20(sp)
   116dc:	00c12b83          	lw	s7,12(sp)
   116e0:	00412c83          	lw	s9,4(sp)
   116e4:	0014e793          	or	a5,s1,1
   116e8:	00f42223          	sw	a5,4(s0)
   116ec:	009404b3          	add	s1,s0,s1
   116f0:	00992423          	sw	s1,8(s2)
   116f4:	00176713          	or	a4,a4,1
   116f8:	00098513          	mv	a0,s3
   116fc:	00e4a223          	sw	a4,4(s1)
   11700:	45c000ef          	jal	11b5c <__malloc_unlock>
   11704:	02c12083          	lw	ra,44(sp)
   11708:	00840513          	add	a0,s0,8
   1170c:	02812403          	lw	s0,40(sp)
   11710:	01012b03          	lw	s6,16(sp)
   11714:	02412483          	lw	s1,36(sp)
   11718:	02012903          	lw	s2,32(sp)
   1171c:	01c12983          	lw	s3,28(sp)
   11720:	03010113          	add	sp,sp,48
   11724:	00008067          	ret
   11728:	00492503          	lw	a0,4(s2)
   1172c:	e09ff06f          	j	11534 <_malloc_r+0x198>
   11730:	00842603          	lw	a2,8(s0)
   11734:	cd1ff06f          	j	11404 <_malloc_r+0x68>
   11738:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffeb42c>
   1173c:	00258593          	add	a1,a1,2
   11740:	d88780e3          	beq	a5,s0,114c0 <_malloc_r+0x124>
   11744:	cb1ff06f          	j	113f4 <_malloc_r+0x58>
   11748:	0097d713          	srl	a4,a5,0x9
   1174c:	00400693          	li	a3,4
   11750:	14e6f263          	bgeu	a3,a4,11894 <_malloc_r+0x4f8>
   11754:	01400693          	li	a3,20
   11758:	32e6e463          	bltu	a3,a4,11a80 <_malloc_r+0x6e4>
   1175c:	05c70613          	add	a2,a4,92
   11760:	05b70693          	add	a3,a4,91
   11764:	00361613          	sll	a2,a2,0x3
   11768:	00c90633          	add	a2,s2,a2
   1176c:	00062703          	lw	a4,0(a2)
   11770:	ff860613          	add	a2,a2,-8
   11774:	00e61863          	bne	a2,a4,11784 <_malloc_r+0x3e8>
   11778:	2940006f          	j	11a0c <_malloc_r+0x670>
   1177c:	00872703          	lw	a4,8(a4)
   11780:	00e60863          	beq	a2,a4,11790 <_malloc_r+0x3f4>
   11784:	00472683          	lw	a3,4(a4)
   11788:	ffc6f693          	and	a3,a3,-4
   1178c:	fed7e8e3          	bltu	a5,a3,1177c <_malloc_r+0x3e0>
   11790:	00c72603          	lw	a2,12(a4)
   11794:	00c42623          	sw	a2,12(s0)
   11798:	00e42423          	sw	a4,8(s0)
   1179c:	00862423          	sw	s0,8(a2)
   117a0:	00872623          	sw	s0,12(a4)
   117a4:	d91ff06f          	j	11534 <_malloc_r+0x198>
   117a8:	01400713          	li	a4,20
   117ac:	10f77863          	bgeu	a4,a5,118bc <_malloc_r+0x520>
   117b0:	05400713          	li	a4,84
   117b4:	2ef76463          	bltu	a4,a5,11a9c <_malloc_r+0x700>
   117b8:	00c4d793          	srl	a5,s1,0xc
   117bc:	06f78593          	add	a1,a5,111
   117c0:	06e78813          	add	a6,a5,110
   117c4:	00359613          	sll	a2,a1,0x3
   117c8:	cb5ff06f          	j	1147c <_malloc_r+0xe0>
   117cc:	001e0e13          	add	t3,t3,1
   117d0:	003e7793          	and	a5,t3,3
   117d4:	00850513          	add	a0,a0,8
   117d8:	10078063          	beqz	a5,118d8 <_malloc_r+0x53c>
   117dc:	00c52783          	lw	a5,12(a0)
   117e0:	da9ff06f          	j	11588 <_malloc_r+0x1ec>
   117e4:	00842603          	lw	a2,8(s0)
   117e8:	0014e593          	or	a1,s1,1
   117ec:	00b42223          	sw	a1,4(s0)
   117f0:	00f62623          	sw	a5,12(a2)
   117f4:	00c7a423          	sw	a2,8(a5)
   117f8:	009404b3          	add	s1,s0,s1
   117fc:	00992a23          	sw	s1,20(s2)
   11800:	00992823          	sw	s1,16(s2)
   11804:	0016e793          	or	a5,a3,1
   11808:	0104a623          	sw	a6,12(s1)
   1180c:	0104a423          	sw	a6,8(s1)
   11810:	00f4a223          	sw	a5,4(s1)
   11814:	00e40733          	add	a4,s0,a4
   11818:	00098513          	mv	a0,s3
   1181c:	00d72023          	sw	a3,0(a4)
   11820:	33c000ef          	jal	11b5c <__malloc_unlock>
   11824:	00840513          	add	a0,s0,8
   11828:	c01ff06f          	j	11428 <_malloc_r+0x8c>
   1182c:	00f407b3          	add	a5,s0,a5
   11830:	0047a703          	lw	a4,4(a5)
   11834:	00098513          	mv	a0,s3
   11838:	00176713          	or	a4,a4,1
   1183c:	00e7a223          	sw	a4,4(a5)
   11840:	31c000ef          	jal	11b5c <__malloc_unlock>
   11844:	00840513          	add	a0,s0,8
   11848:	be1ff06f          	j	11428 <_malloc_r+0x8c>
   1184c:	0034d593          	srl	a1,s1,0x3
   11850:	00848793          	add	a5,s1,8
   11854:	b89ff06f          	j	113dc <_malloc_r+0x40>
   11858:	0014e693          	or	a3,s1,1
   1185c:	00d42223          	sw	a3,4(s0)
   11860:	009404b3          	add	s1,s0,s1
   11864:	00992a23          	sw	s1,20(s2)
   11868:	00992823          	sw	s1,16(s2)
   1186c:	00176693          	or	a3,a4,1
   11870:	0104a623          	sw	a6,12(s1)
   11874:	0104a423          	sw	a6,8(s1)
   11878:	00d4a223          	sw	a3,4(s1)
   1187c:	00f407b3          	add	a5,s0,a5
   11880:	00098513          	mv	a0,s3
   11884:	00e7a023          	sw	a4,0(a5)
   11888:	2d4000ef          	jal	11b5c <__malloc_unlock>
   1188c:	00840513          	add	a0,s0,8
   11890:	b99ff06f          	j	11428 <_malloc_r+0x8c>
   11894:	0067d713          	srl	a4,a5,0x6
   11898:	03970613          	add	a2,a4,57
   1189c:	03870693          	add	a3,a4,56
   118a0:	00361613          	sll	a2,a2,0x3
   118a4:	ec5ff06f          	j	11768 <_malloc_r+0x3cc>
   118a8:	07240c63          	beq	s0,s2,11920 <_malloc_r+0x584>
   118ac:	00892403          	lw	s0,8(s2)
   118b0:	00812c03          	lw	s8,8(sp)
   118b4:	00442783          	lw	a5,4(s0)
   118b8:	e09ff06f          	j	116c0 <_malloc_r+0x324>
   118bc:	05c78593          	add	a1,a5,92
   118c0:	05b78813          	add	a6,a5,91
   118c4:	00359613          	sll	a2,a1,0x3
   118c8:	bb5ff06f          	j	1147c <_malloc_r+0xe0>
   118cc:	00832783          	lw	a5,8(t1)
   118d0:	fff58593          	add	a1,a1,-1
   118d4:	26679e63          	bne	a5,t1,11b50 <_malloc_r+0x7b4>
   118d8:	0035f793          	and	a5,a1,3
   118dc:	ff830313          	add	t1,t1,-8
   118e0:	fe0796e3          	bnez	a5,118cc <_malloc_r+0x530>
   118e4:	00492703          	lw	a4,4(s2)
   118e8:	fff64793          	not	a5,a2
   118ec:	00e7f7b3          	and	a5,a5,a4
   118f0:	00f92223          	sw	a5,4(s2)
   118f4:	00161613          	sll	a2,a2,0x1
   118f8:	cec7eee3          	bltu	a5,a2,115f4 <_malloc_r+0x258>
   118fc:	ce060ce3          	beqz	a2,115f4 <_malloc_r+0x258>
   11900:	00f67733          	and	a4,a2,a5
   11904:	00071a63          	bnez	a4,11918 <_malloc_r+0x57c>
   11908:	00161613          	sll	a2,a2,0x1
   1190c:	00f67733          	and	a4,a2,a5
   11910:	004e0e13          	add	t3,t3,4
   11914:	fe070ae3          	beqz	a4,11908 <_malloc_r+0x56c>
   11918:	000e0593          	mv	a1,t3
   1191c:	c59ff06f          	j	11574 <_malloc_r+0x1d8>
   11920:	f6018c13          	add	s8,gp,-160 # 13a28 <__malloc_current_mallinfo>
   11924:	000c2703          	lw	a4,0(s8)
   11928:	00ea8733          	add	a4,s5,a4
   1192c:	00ec2023          	sw	a4,0(s8)
   11930:	d401a683          	lw	a3,-704(gp) # 13808 <__malloc_sbrk_base>
   11934:	fff00793          	li	a5,-1
   11938:	18f68663          	beq	a3,a5,11ac4 <_malloc_r+0x728>
   1193c:	414b87b3          	sub	a5,s7,s4
   11940:	00e787b3          	add	a5,a5,a4
   11944:	00fc2023          	sw	a5,0(s8)
   11948:	007bfc93          	and	s9,s7,7
   1194c:	0c0c8c63          	beqz	s9,11a24 <_malloc_r+0x688>
   11950:	419b8bb3          	sub	s7,s7,s9
   11954:	000017b7          	lui	a5,0x1
   11958:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   1195c:	008b8b93          	add	s7,s7,8
   11960:	419785b3          	sub	a1,a5,s9
   11964:	015b8ab3          	add	s5,s7,s5
   11968:	415585b3          	sub	a1,a1,s5
   1196c:	01459593          	sll	a1,a1,0x14
   11970:	0145da13          	srl	s4,a1,0x14
   11974:	000a0593          	mv	a1,s4
   11978:	00098513          	mv	a0,s3
   1197c:	628000ef          	jal	11fa4 <_sbrk_r>
   11980:	fff00793          	li	a5,-1
   11984:	18f50063          	beq	a0,a5,11b04 <_malloc_r+0x768>
   11988:	41750533          	sub	a0,a0,s7
   1198c:	01450ab3          	add	s5,a0,s4
   11990:	000c2703          	lw	a4,0(s8)
   11994:	01792423          	sw	s7,8(s2)
   11998:	001ae793          	or	a5,s5,1
   1199c:	00ea05b3          	add	a1,s4,a4
   119a0:	00bc2023          	sw	a1,0(s8)
   119a4:	00fba223          	sw	a5,4(s7)
   119a8:	cf240ce3          	beq	s0,s2,116a0 <_malloc_r+0x304>
   119ac:	00f00693          	li	a3,15
   119b0:	0b66f063          	bgeu	a3,s6,11a50 <_malloc_r+0x6b4>
   119b4:	00442703          	lw	a4,4(s0)
   119b8:	ff4b0793          	add	a5,s6,-12
   119bc:	ff87f793          	and	a5,a5,-8
   119c0:	00177713          	and	a4,a4,1
   119c4:	00f76733          	or	a4,a4,a5
   119c8:	00e42223          	sw	a4,4(s0)
   119cc:	00500613          	li	a2,5
   119d0:	00f40733          	add	a4,s0,a5
   119d4:	00c72223          	sw	a2,4(a4)
   119d8:	00c72423          	sw	a2,8(a4)
   119dc:	00f6e663          	bltu	a3,a5,119e8 <_malloc_r+0x64c>
   119e0:	004ba783          	lw	a5,4(s7)
   119e4:	cbdff06f          	j	116a0 <_malloc_r+0x304>
   119e8:	00840593          	add	a1,s0,8
   119ec:	00098513          	mv	a0,s3
   119f0:	ea8ff0ef          	jal	11098 <_free_r>
   119f4:	00892b83          	lw	s7,8(s2)
   119f8:	000c2583          	lw	a1,0(s8)
   119fc:	004ba783          	lw	a5,4(s7)
   11a00:	ca1ff06f          	j	116a0 <_malloc_r+0x304>
   11a04:	010a8a93          	add	s5,s5,16
   11a08:	c49ff06f          	j	11650 <_malloc_r+0x2b4>
   11a0c:	4026d693          	sra	a3,a3,0x2
   11a10:	00100793          	li	a5,1
   11a14:	00d797b3          	sll	a5,a5,a3
   11a18:	00f56533          	or	a0,a0,a5
   11a1c:	00a92223          	sw	a0,4(s2)
   11a20:	d75ff06f          	j	11794 <_malloc_r+0x3f8>
   11a24:	015b85b3          	add	a1,s7,s5
   11a28:	40b005b3          	neg	a1,a1
   11a2c:	01459593          	sll	a1,a1,0x14
   11a30:	0145da13          	srl	s4,a1,0x14
   11a34:	000a0593          	mv	a1,s4
   11a38:	00098513          	mv	a0,s3
   11a3c:	568000ef          	jal	11fa4 <_sbrk_r>
   11a40:	fff00793          	li	a5,-1
   11a44:	f4f512e3          	bne	a0,a5,11988 <_malloc_r+0x5ec>
   11a48:	00000a13          	li	s4,0
   11a4c:	f45ff06f          	j	11990 <_malloc_r+0x5f4>
   11a50:	00812c03          	lw	s8,8(sp)
   11a54:	00100793          	li	a5,1
   11a58:	00fba223          	sw	a5,4(s7)
   11a5c:	00098513          	mv	a0,s3
   11a60:	0fc000ef          	jal	11b5c <__malloc_unlock>
   11a64:	00000513          	li	a0,0
   11a68:	01812a03          	lw	s4,24(sp)
   11a6c:	01412a83          	lw	s5,20(sp)
   11a70:	01012b03          	lw	s6,16(sp)
   11a74:	00c12b83          	lw	s7,12(sp)
   11a78:	00412c83          	lw	s9,4(sp)
   11a7c:	9adff06f          	j	11428 <_malloc_r+0x8c>
   11a80:	05400693          	li	a3,84
   11a84:	04e6e463          	bltu	a3,a4,11acc <_malloc_r+0x730>
   11a88:	00c7d713          	srl	a4,a5,0xc
   11a8c:	06f70613          	add	a2,a4,111
   11a90:	06e70693          	add	a3,a4,110
   11a94:	00361613          	sll	a2,a2,0x3
   11a98:	cd1ff06f          	j	11768 <_malloc_r+0x3cc>
   11a9c:	15400713          	li	a4,340
   11aa0:	04f76463          	bltu	a4,a5,11ae8 <_malloc_r+0x74c>
   11aa4:	00f4d793          	srl	a5,s1,0xf
   11aa8:	07878593          	add	a1,a5,120
   11aac:	07778813          	add	a6,a5,119
   11ab0:	00359613          	sll	a2,a1,0x3
   11ab4:	9c9ff06f          	j	1147c <_malloc_r+0xe0>
   11ab8:	00892403          	lw	s0,8(s2)
   11abc:	00442783          	lw	a5,4(s0)
   11ac0:	c01ff06f          	j	116c0 <_malloc_r+0x324>
   11ac4:	d571a023          	sw	s7,-704(gp) # 13808 <__malloc_sbrk_base>
   11ac8:	e81ff06f          	j	11948 <_malloc_r+0x5ac>
   11acc:	15400693          	li	a3,340
   11ad0:	04e6e463          	bltu	a3,a4,11b18 <_malloc_r+0x77c>
   11ad4:	00f7d713          	srl	a4,a5,0xf
   11ad8:	07870613          	add	a2,a4,120
   11adc:	07770693          	add	a3,a4,119
   11ae0:	00361613          	sll	a2,a2,0x3
   11ae4:	c85ff06f          	j	11768 <_malloc_r+0x3cc>
   11ae8:	55400713          	li	a4,1364
   11aec:	04f76463          	bltu	a4,a5,11b34 <_malloc_r+0x798>
   11af0:	0124d793          	srl	a5,s1,0x12
   11af4:	07d78593          	add	a1,a5,125
   11af8:	07c78813          	add	a6,a5,124
   11afc:	00359613          	sll	a2,a1,0x3
   11b00:	97dff06f          	j	1147c <_malloc_r+0xe0>
   11b04:	ff8c8c93          	add	s9,s9,-8
   11b08:	019a8ab3          	add	s5,s5,s9
   11b0c:	417a8ab3          	sub	s5,s5,s7
   11b10:	00000a13          	li	s4,0
   11b14:	e7dff06f          	j	11990 <_malloc_r+0x5f4>
   11b18:	55400693          	li	a3,1364
   11b1c:	02e6e463          	bltu	a3,a4,11b44 <_malloc_r+0x7a8>
   11b20:	0127d713          	srl	a4,a5,0x12
   11b24:	07d70613          	add	a2,a4,125
   11b28:	07c70693          	add	a3,a4,124
   11b2c:	00361613          	sll	a2,a2,0x3
   11b30:	c39ff06f          	j	11768 <_malloc_r+0x3cc>
   11b34:	3f800613          	li	a2,1016
   11b38:	07f00593          	li	a1,127
   11b3c:	07e00813          	li	a6,126
   11b40:	93dff06f          	j	1147c <_malloc_r+0xe0>
   11b44:	3f800613          	li	a2,1016
   11b48:	07e00693          	li	a3,126
   11b4c:	c1dff06f          	j	11768 <_malloc_r+0x3cc>
   11b50:	00492783          	lw	a5,4(s2)
   11b54:	da1ff06f          	j	118f4 <_malloc_r+0x558>

00011b58 <__malloc_lock>:
   11b58:	00008067          	ret

00011b5c <__malloc_unlock>:
   11b5c:	00008067          	ret

00011b60 <_fclose_r>:
   11b60:	ff010113          	add	sp,sp,-16
   11b64:	00112623          	sw	ra,12(sp)
   11b68:	01212023          	sw	s2,0(sp)
   11b6c:	02058863          	beqz	a1,11b9c <_fclose_r+0x3c>
   11b70:	00812423          	sw	s0,8(sp)
   11b74:	00912223          	sw	s1,4(sp)
   11b78:	00058413          	mv	s0,a1
   11b7c:	00050493          	mv	s1,a0
   11b80:	00050663          	beqz	a0,11b8c <_fclose_r+0x2c>
   11b84:	03452783          	lw	a5,52(a0)
   11b88:	0c078c63          	beqz	a5,11c60 <_fclose_r+0x100>
   11b8c:	00c41783          	lh	a5,12(s0)
   11b90:	02079263          	bnez	a5,11bb4 <_fclose_r+0x54>
   11b94:	00812403          	lw	s0,8(sp)
   11b98:	00412483          	lw	s1,4(sp)
   11b9c:	00c12083          	lw	ra,12(sp)
   11ba0:	00000913          	li	s2,0
   11ba4:	00090513          	mv	a0,s2
   11ba8:	00012903          	lw	s2,0(sp)
   11bac:	01010113          	add	sp,sp,16
   11bb0:	00008067          	ret
   11bb4:	00040593          	mv	a1,s0
   11bb8:	00048513          	mv	a0,s1
   11bbc:	0b8000ef          	jal	11c74 <__sflush_r>
   11bc0:	02c42783          	lw	a5,44(s0)
   11bc4:	00050913          	mv	s2,a0
   11bc8:	00078a63          	beqz	a5,11bdc <_fclose_r+0x7c>
   11bcc:	01c42583          	lw	a1,28(s0)
   11bd0:	00048513          	mv	a0,s1
   11bd4:	000780e7          	jalr	a5
   11bd8:	06054463          	bltz	a0,11c40 <_fclose_r+0xe0>
   11bdc:	00c45783          	lhu	a5,12(s0)
   11be0:	0807f793          	and	a5,a5,128
   11be4:	06079663          	bnez	a5,11c50 <_fclose_r+0xf0>
   11be8:	03042583          	lw	a1,48(s0)
   11bec:	00058c63          	beqz	a1,11c04 <_fclose_r+0xa4>
   11bf0:	04040793          	add	a5,s0,64
   11bf4:	00f58663          	beq	a1,a5,11c00 <_fclose_r+0xa0>
   11bf8:	00048513          	mv	a0,s1
   11bfc:	c9cff0ef          	jal	11098 <_free_r>
   11c00:	02042823          	sw	zero,48(s0)
   11c04:	04442583          	lw	a1,68(s0)
   11c08:	00058863          	beqz	a1,11c18 <_fclose_r+0xb8>
   11c0c:	00048513          	mv	a0,s1
   11c10:	c88ff0ef          	jal	11098 <_free_r>
   11c14:	04042223          	sw	zero,68(s0)
   11c18:	bd9fe0ef          	jal	107f0 <__sfp_lock_acquire>
   11c1c:	00041623          	sh	zero,12(s0)
   11c20:	bd5fe0ef          	jal	107f4 <__sfp_lock_release>
   11c24:	00c12083          	lw	ra,12(sp)
   11c28:	00812403          	lw	s0,8(sp)
   11c2c:	00412483          	lw	s1,4(sp)
   11c30:	00090513          	mv	a0,s2
   11c34:	00012903          	lw	s2,0(sp)
   11c38:	01010113          	add	sp,sp,16
   11c3c:	00008067          	ret
   11c40:	00c45783          	lhu	a5,12(s0)
   11c44:	fff00913          	li	s2,-1
   11c48:	0807f793          	and	a5,a5,128
   11c4c:	f8078ee3          	beqz	a5,11be8 <_fclose_r+0x88>
   11c50:	01042583          	lw	a1,16(s0)
   11c54:	00048513          	mv	a0,s1
   11c58:	c40ff0ef          	jal	11098 <_free_r>
   11c5c:	f8dff06f          	j	11be8 <_fclose_r+0x88>
   11c60:	b6dfe0ef          	jal	107cc <__sinit>
   11c64:	f29ff06f          	j	11b8c <_fclose_r+0x2c>

00011c68 <fclose>:
   11c68:	00050593          	mv	a1,a0
   11c6c:	d3c1a503          	lw	a0,-708(gp) # 13804 <_impure_ptr>
   11c70:	ef1ff06f          	j	11b60 <_fclose_r>

00011c74 <__sflush_r>:
   11c74:	00c59703          	lh	a4,12(a1)
   11c78:	fe010113          	add	sp,sp,-32
   11c7c:	00812c23          	sw	s0,24(sp)
   11c80:	01312623          	sw	s3,12(sp)
   11c84:	00112e23          	sw	ra,28(sp)
   11c88:	00877793          	and	a5,a4,8
   11c8c:	00058413          	mv	s0,a1
   11c90:	00050993          	mv	s3,a0
   11c94:	12079063          	bnez	a5,11db4 <__sflush_r+0x140>
   11c98:	000017b7          	lui	a5,0x1
   11c9c:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   11ca0:	0045a683          	lw	a3,4(a1)
   11ca4:	00f767b3          	or	a5,a4,a5
   11ca8:	00f59623          	sh	a5,12(a1)
   11cac:	18d05263          	blez	a3,11e30 <__sflush_r+0x1bc>
   11cb0:	02842803          	lw	a6,40(s0)
   11cb4:	0e080463          	beqz	a6,11d9c <__sflush_r+0x128>
   11cb8:	00912a23          	sw	s1,20(sp)
   11cbc:	01371693          	sll	a3,a4,0x13
   11cc0:	0009a483          	lw	s1,0(s3)
   11cc4:	0009a023          	sw	zero,0(s3)
   11cc8:	01c42583          	lw	a1,28(s0)
   11ccc:	1606ce63          	bltz	a3,11e48 <__sflush_r+0x1d4>
   11cd0:	00000613          	li	a2,0
   11cd4:	00100693          	li	a3,1
   11cd8:	00098513          	mv	a0,s3
   11cdc:	000800e7          	jalr	a6
   11ce0:	fff00793          	li	a5,-1
   11ce4:	00050613          	mv	a2,a0
   11ce8:	1af50463          	beq	a0,a5,11e90 <__sflush_r+0x21c>
   11cec:	00c41783          	lh	a5,12(s0)
   11cf0:	02842803          	lw	a6,40(s0)
   11cf4:	01c42583          	lw	a1,28(s0)
   11cf8:	0047f793          	and	a5,a5,4
   11cfc:	00078e63          	beqz	a5,11d18 <__sflush_r+0xa4>
   11d00:	00442703          	lw	a4,4(s0)
   11d04:	03042783          	lw	a5,48(s0)
   11d08:	40e60633          	sub	a2,a2,a4
   11d0c:	00078663          	beqz	a5,11d18 <__sflush_r+0xa4>
   11d10:	03c42783          	lw	a5,60(s0)
   11d14:	40f60633          	sub	a2,a2,a5
   11d18:	00000693          	li	a3,0
   11d1c:	00098513          	mv	a0,s3
   11d20:	000800e7          	jalr	a6
   11d24:	fff00793          	li	a5,-1
   11d28:	12f51463          	bne	a0,a5,11e50 <__sflush_r+0x1dc>
   11d2c:	0009a683          	lw	a3,0(s3)
   11d30:	01d00793          	li	a5,29
   11d34:	00c41703          	lh	a4,12(s0)
   11d38:	16d7ea63          	bltu	a5,a3,11eac <__sflush_r+0x238>
   11d3c:	204007b7          	lui	a5,0x20400
   11d40:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203ec421>
   11d44:	00d7d7b3          	srl	a5,a5,a3
   11d48:	0017f793          	and	a5,a5,1
   11d4c:	16078063          	beqz	a5,11eac <__sflush_r+0x238>
   11d50:	01042603          	lw	a2,16(s0)
   11d54:	fffff7b7          	lui	a5,0xfffff
   11d58:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebc1f>
   11d5c:	00f777b3          	and	a5,a4,a5
   11d60:	00f41623          	sh	a5,12(s0)
   11d64:	00042223          	sw	zero,4(s0)
   11d68:	00c42023          	sw	a2,0(s0)
   11d6c:	01371793          	sll	a5,a4,0x13
   11d70:	0007d463          	bgez	a5,11d78 <__sflush_r+0x104>
   11d74:	10068263          	beqz	a3,11e78 <__sflush_r+0x204>
   11d78:	03042583          	lw	a1,48(s0)
   11d7c:	0099a023          	sw	s1,0(s3)
   11d80:	10058463          	beqz	a1,11e88 <__sflush_r+0x214>
   11d84:	04040793          	add	a5,s0,64
   11d88:	00f58663          	beq	a1,a5,11d94 <__sflush_r+0x120>
   11d8c:	00098513          	mv	a0,s3
   11d90:	b08ff0ef          	jal	11098 <_free_r>
   11d94:	01412483          	lw	s1,20(sp)
   11d98:	02042823          	sw	zero,48(s0)
   11d9c:	00000513          	li	a0,0
   11da0:	01c12083          	lw	ra,28(sp)
   11da4:	01812403          	lw	s0,24(sp)
   11da8:	00c12983          	lw	s3,12(sp)
   11dac:	02010113          	add	sp,sp,32
   11db0:	00008067          	ret
   11db4:	01212823          	sw	s2,16(sp)
   11db8:	0105a903          	lw	s2,16(a1)
   11dbc:	08090263          	beqz	s2,11e40 <__sflush_r+0x1cc>
   11dc0:	00912a23          	sw	s1,20(sp)
   11dc4:	0005a483          	lw	s1,0(a1)
   11dc8:	00377713          	and	a4,a4,3
   11dcc:	0125a023          	sw	s2,0(a1)
   11dd0:	412484b3          	sub	s1,s1,s2
   11dd4:	00000793          	li	a5,0
   11dd8:	00071463          	bnez	a4,11de0 <__sflush_r+0x16c>
   11ddc:	0145a783          	lw	a5,20(a1)
   11de0:	00f42423          	sw	a5,8(s0)
   11de4:	00904863          	bgtz	s1,11df4 <__sflush_r+0x180>
   11de8:	0540006f          	j	11e3c <__sflush_r+0x1c8>
   11dec:	00a90933          	add	s2,s2,a0
   11df0:	04905663          	blez	s1,11e3c <__sflush_r+0x1c8>
   11df4:	02442783          	lw	a5,36(s0)
   11df8:	01c42583          	lw	a1,28(s0)
   11dfc:	00048693          	mv	a3,s1
   11e00:	00090613          	mv	a2,s2
   11e04:	00098513          	mv	a0,s3
   11e08:	000780e7          	jalr	a5
   11e0c:	40a484b3          	sub	s1,s1,a0
   11e10:	fca04ee3          	bgtz	a0,11dec <__sflush_r+0x178>
   11e14:	00c41703          	lh	a4,12(s0)
   11e18:	01012903          	lw	s2,16(sp)
   11e1c:	04076713          	or	a4,a4,64
   11e20:	01412483          	lw	s1,20(sp)
   11e24:	00e41623          	sh	a4,12(s0)
   11e28:	fff00513          	li	a0,-1
   11e2c:	f75ff06f          	j	11da0 <__sflush_r+0x12c>
   11e30:	03c5a683          	lw	a3,60(a1)
   11e34:	e6d04ee3          	bgtz	a3,11cb0 <__sflush_r+0x3c>
   11e38:	f65ff06f          	j	11d9c <__sflush_r+0x128>
   11e3c:	01412483          	lw	s1,20(sp)
   11e40:	01012903          	lw	s2,16(sp)
   11e44:	f59ff06f          	j	11d9c <__sflush_r+0x128>
   11e48:	05042603          	lw	a2,80(s0)
   11e4c:	eadff06f          	j	11cf8 <__sflush_r+0x84>
   11e50:	00c41703          	lh	a4,12(s0)
   11e54:	01042683          	lw	a3,16(s0)
   11e58:	fffff7b7          	lui	a5,0xfffff
   11e5c:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebc1f>
   11e60:	00f777b3          	and	a5,a4,a5
   11e64:	00f41623          	sh	a5,12(s0)
   11e68:	00042223          	sw	zero,4(s0)
   11e6c:	00d42023          	sw	a3,0(s0)
   11e70:	01371793          	sll	a5,a4,0x13
   11e74:	f007d2e3          	bgez	a5,11d78 <__sflush_r+0x104>
   11e78:	03042583          	lw	a1,48(s0)
   11e7c:	04a42823          	sw	a0,80(s0)
   11e80:	0099a023          	sw	s1,0(s3)
   11e84:	f00590e3          	bnez	a1,11d84 <__sflush_r+0x110>
   11e88:	01412483          	lw	s1,20(sp)
   11e8c:	f11ff06f          	j	11d9c <__sflush_r+0x128>
   11e90:	0009a783          	lw	a5,0(s3)
   11e94:	e4078ce3          	beqz	a5,11cec <__sflush_r+0x78>
   11e98:	01d00713          	li	a4,29
   11e9c:	00e78c63          	beq	a5,a4,11eb4 <__sflush_r+0x240>
   11ea0:	01600713          	li	a4,22
   11ea4:	00e78863          	beq	a5,a4,11eb4 <__sflush_r+0x240>
   11ea8:	00c41703          	lh	a4,12(s0)
   11eac:	04076713          	or	a4,a4,64
   11eb0:	f71ff06f          	j	11e20 <__sflush_r+0x1ac>
   11eb4:	0099a023          	sw	s1,0(s3)
   11eb8:	01412483          	lw	s1,20(sp)
   11ebc:	ee1ff06f          	j	11d9c <__sflush_r+0x128>

00011ec0 <_fflush_r>:
   11ec0:	fe010113          	add	sp,sp,-32
   11ec4:	00812c23          	sw	s0,24(sp)
   11ec8:	00112e23          	sw	ra,28(sp)
   11ecc:	00050413          	mv	s0,a0
   11ed0:	00050663          	beqz	a0,11edc <_fflush_r+0x1c>
   11ed4:	03452783          	lw	a5,52(a0)
   11ed8:	02078a63          	beqz	a5,11f0c <_fflush_r+0x4c>
   11edc:	00c59783          	lh	a5,12(a1)
   11ee0:	00079c63          	bnez	a5,11ef8 <_fflush_r+0x38>
   11ee4:	01c12083          	lw	ra,28(sp)
   11ee8:	01812403          	lw	s0,24(sp)
   11eec:	00000513          	li	a0,0
   11ef0:	02010113          	add	sp,sp,32
   11ef4:	00008067          	ret
   11ef8:	00040513          	mv	a0,s0
   11efc:	01812403          	lw	s0,24(sp)
   11f00:	01c12083          	lw	ra,28(sp)
   11f04:	02010113          	add	sp,sp,32
   11f08:	d6dff06f          	j	11c74 <__sflush_r>
   11f0c:	00b12623          	sw	a1,12(sp)
   11f10:	8bdfe0ef          	jal	107cc <__sinit>
   11f14:	00c12583          	lw	a1,12(sp)
   11f18:	fc5ff06f          	j	11edc <_fflush_r+0x1c>

00011f1c <fflush>:
   11f1c:	06050063          	beqz	a0,11f7c <fflush+0x60>
   11f20:	00050593          	mv	a1,a0
   11f24:	d3c1a503          	lw	a0,-708(gp) # 13804 <_impure_ptr>
   11f28:	00050663          	beqz	a0,11f34 <fflush+0x18>
   11f2c:	03452783          	lw	a5,52(a0)
   11f30:	00078c63          	beqz	a5,11f48 <fflush+0x2c>
   11f34:	00c59783          	lh	a5,12(a1)
   11f38:	00079663          	bnez	a5,11f44 <fflush+0x28>
   11f3c:	00000513          	li	a0,0
   11f40:	00008067          	ret
   11f44:	d31ff06f          	j	11c74 <__sflush_r>
   11f48:	fe010113          	add	sp,sp,-32
   11f4c:	00b12623          	sw	a1,12(sp)
   11f50:	00a12423          	sw	a0,8(sp)
   11f54:	00112e23          	sw	ra,28(sp)
   11f58:	875fe0ef          	jal	107cc <__sinit>
   11f5c:	00c12583          	lw	a1,12(sp)
   11f60:	00812503          	lw	a0,8(sp)
   11f64:	00c59783          	lh	a5,12(a1)
   11f68:	02079863          	bnez	a5,11f98 <fflush+0x7c>
   11f6c:	01c12083          	lw	ra,28(sp)
   11f70:	00000513          	li	a0,0
   11f74:	02010113          	add	sp,sp,32
   11f78:	00008067          	ret
   11f7c:	00013637          	lui	a2,0x13
   11f80:	000125b7          	lui	a1,0x12
   11f84:	00013537          	lui	a0,0x13
   11f88:	2c860613          	add	a2,a2,712 # 132c8 <__sglue>
   11f8c:	ec058593          	add	a1,a1,-320 # 11ec0 <_fflush_r>
   11f90:	2d850513          	add	a0,a0,728 # 132d8 <_impure_data>
   11f94:	895fe06f          	j	10828 <_fwalk_sglue>
   11f98:	01c12083          	lw	ra,28(sp)
   11f9c:	02010113          	add	sp,sp,32
   11fa0:	cd5ff06f          	j	11c74 <__sflush_r>

00011fa4 <_sbrk_r>:
   11fa4:	ff010113          	add	sp,sp,-16
   11fa8:	00812423          	sw	s0,8(sp)
   11fac:	00912223          	sw	s1,4(sp)
   11fb0:	00050413          	mv	s0,a0
   11fb4:	00058513          	mv	a0,a1
   11fb8:	00112623          	sw	ra,12(sp)
   11fbc:	d401a623          	sw	zero,-692(gp) # 13814 <errno>
   11fc0:	230000ef          	jal	121f0 <_sbrk>
   11fc4:	fff00793          	li	a5,-1
   11fc8:	00f50c63          	beq	a0,a5,11fe0 <_sbrk_r+0x3c>
   11fcc:	00c12083          	lw	ra,12(sp)
   11fd0:	00812403          	lw	s0,8(sp)
   11fd4:	00412483          	lw	s1,4(sp)
   11fd8:	01010113          	add	sp,sp,16
   11fdc:	00008067          	ret
   11fe0:	d4c1a783          	lw	a5,-692(gp) # 13814 <errno>
   11fe4:	fe0784e3          	beqz	a5,11fcc <_sbrk_r+0x28>
   11fe8:	00c12083          	lw	ra,12(sp)
   11fec:	00f42023          	sw	a5,0(s0)
   11ff0:	00812403          	lw	s0,8(sp)
   11ff4:	00412483          	lw	s1,4(sp)
   11ff8:	01010113          	add	sp,sp,16
   11ffc:	00008067          	ret

00012000 <__libc_fini_array>:
   12000:	ff010113          	add	sp,sp,-16
   12004:	00812423          	sw	s0,8(sp)
   12008:	000137b7          	lui	a5,0x13
   1200c:	00013437          	lui	s0,0x13
   12010:	2c078793          	add	a5,a5,704 # 132c0 <__do_global_dtors_aux_fini_array_entry>
   12014:	2c440413          	add	s0,s0,708 # 132c4 <__fini_array_end>
   12018:	40f40433          	sub	s0,s0,a5
   1201c:	00912223          	sw	s1,4(sp)
   12020:	00112623          	sw	ra,12(sp)
   12024:	40245493          	sra	s1,s0,0x2
   12028:	02048063          	beqz	s1,12048 <__libc_fini_array+0x48>
   1202c:	ffc40413          	add	s0,s0,-4
   12030:	00f40433          	add	s0,s0,a5
   12034:	00042783          	lw	a5,0(s0)
   12038:	fff48493          	add	s1,s1,-1
   1203c:	ffc40413          	add	s0,s0,-4
   12040:	000780e7          	jalr	a5
   12044:	fe0498e3          	bnez	s1,12034 <__libc_fini_array+0x34>
   12048:	00c12083          	lw	ra,12(sp)
   1204c:	00812403          	lw	s0,8(sp)
   12050:	00412483          	lw	s1,4(sp)
   12054:	01010113          	add	sp,sp,16
   12058:	00008067          	ret

0001205c <__register_exitproc>:
   1205c:	d501a783          	lw	a5,-688(gp) # 13818 <__atexit>
   12060:	04078c63          	beqz	a5,120b8 <__register_exitproc+0x5c>
   12064:	0047a703          	lw	a4,4(a5)
   12068:	01f00813          	li	a6,31
   1206c:	08e84063          	blt	a6,a4,120ec <__register_exitproc+0x90>
   12070:	00271813          	sll	a6,a4,0x2
   12074:	02050663          	beqz	a0,120a0 <__register_exitproc+0x44>
   12078:	01078333          	add	t1,a5,a6
   1207c:	08c32423          	sw	a2,136(t1)
   12080:	1887a883          	lw	a7,392(a5)
   12084:	00100613          	li	a2,1
   12088:	00e61633          	sll	a2,a2,a4
   1208c:	00c8e8b3          	or	a7,a7,a2
   12090:	1917a423          	sw	a7,392(a5)
   12094:	10d32423          	sw	a3,264(t1)
   12098:	00200693          	li	a3,2
   1209c:	02d50663          	beq	a0,a3,120c8 <__register_exitproc+0x6c>
   120a0:	00170713          	add	a4,a4,1
   120a4:	00e7a223          	sw	a4,4(a5)
   120a8:	010787b3          	add	a5,a5,a6
   120ac:	00b7a423          	sw	a1,8(a5)
   120b0:	00000513          	li	a0,0
   120b4:	00008067          	ret
   120b8:	f8818813          	add	a6,gp,-120 # 13a50 <__atexit0>
   120bc:	d501a823          	sw	a6,-688(gp) # 13818 <__atexit>
   120c0:	f8818793          	add	a5,gp,-120 # 13a50 <__atexit0>
   120c4:	fa1ff06f          	j	12064 <__register_exitproc+0x8>
   120c8:	18c7a683          	lw	a3,396(a5)
   120cc:	00170713          	add	a4,a4,1
   120d0:	00e7a223          	sw	a4,4(a5)
   120d4:	00c6e6b3          	or	a3,a3,a2
   120d8:	18d7a623          	sw	a3,396(a5)
   120dc:	010787b3          	add	a5,a5,a6
   120e0:	00b7a423          	sw	a1,8(a5)
   120e4:	00000513          	li	a0,0
   120e8:	00008067          	ret
   120ec:	fff00513          	li	a0,-1
   120f0:	00008067          	ret

000120f4 <_close>:
   120f4:	ff010113          	add	sp,sp,-16
   120f8:	00112623          	sw	ra,12(sp)
   120fc:	00812423          	sw	s0,8(sp)
   12100:	03900893          	li	a7,57
   12104:	00000073          	ecall
   12108:	00050413          	mv	s0,a0
   1210c:	00054c63          	bltz	a0,12124 <_close+0x30>
   12110:	00c12083          	lw	ra,12(sp)
   12114:	00040513          	mv	a0,s0
   12118:	00812403          	lw	s0,8(sp)
   1211c:	01010113          	add	sp,sp,16
   12120:	00008067          	ret
   12124:	40800433          	neg	s0,s0
   12128:	184000ef          	jal	122ac <__errno>
   1212c:	00852023          	sw	s0,0(a0)
   12130:	fff00413          	li	s0,-1
   12134:	fddff06f          	j	12110 <_close+0x1c>

00012138 <_exit>:
   12138:	05d00893          	li	a7,93
   1213c:	00000073          	ecall
   12140:	00054463          	bltz	a0,12148 <_exit+0x10>
   12144:	0000006f          	j	12144 <_exit+0xc>
   12148:	ff010113          	add	sp,sp,-16
   1214c:	00812423          	sw	s0,8(sp)
   12150:	00050413          	mv	s0,a0
   12154:	00112623          	sw	ra,12(sp)
   12158:	40800433          	neg	s0,s0
   1215c:	150000ef          	jal	122ac <__errno>
   12160:	00852023          	sw	s0,0(a0)
   12164:	0000006f          	j	12164 <_exit+0x2c>

00012168 <_lseek>:
   12168:	ff010113          	add	sp,sp,-16
   1216c:	00112623          	sw	ra,12(sp)
   12170:	00812423          	sw	s0,8(sp)
   12174:	03e00893          	li	a7,62
   12178:	00000073          	ecall
   1217c:	00050413          	mv	s0,a0
   12180:	00054c63          	bltz	a0,12198 <_lseek+0x30>
   12184:	00c12083          	lw	ra,12(sp)
   12188:	00040513          	mv	a0,s0
   1218c:	00812403          	lw	s0,8(sp)
   12190:	01010113          	add	sp,sp,16
   12194:	00008067          	ret
   12198:	40800433          	neg	s0,s0
   1219c:	110000ef          	jal	122ac <__errno>
   121a0:	00852023          	sw	s0,0(a0)
   121a4:	fff00413          	li	s0,-1
   121a8:	fddff06f          	j	12184 <_lseek+0x1c>

000121ac <_read>:
   121ac:	ff010113          	add	sp,sp,-16
   121b0:	00112623          	sw	ra,12(sp)
   121b4:	00812423          	sw	s0,8(sp)
   121b8:	03f00893          	li	a7,63
   121bc:	00000073          	ecall
   121c0:	00050413          	mv	s0,a0
   121c4:	00054c63          	bltz	a0,121dc <_read+0x30>
   121c8:	00c12083          	lw	ra,12(sp)
   121cc:	00040513          	mv	a0,s0
   121d0:	00812403          	lw	s0,8(sp)
   121d4:	01010113          	add	sp,sp,16
   121d8:	00008067          	ret
   121dc:	40800433          	neg	s0,s0
   121e0:	0cc000ef          	jal	122ac <__errno>
   121e4:	00852023          	sw	s0,0(a0)
   121e8:	fff00413          	li	s0,-1
   121ec:	fddff06f          	j	121c8 <_read+0x1c>

000121f0 <_sbrk>:
   121f0:	d601a703          	lw	a4,-672(gp) # 13828 <heap_end.0>
   121f4:	ff010113          	add	sp,sp,-16
   121f8:	00112623          	sw	ra,12(sp)
   121fc:	00050793          	mv	a5,a0
   12200:	02071063          	bnez	a4,12220 <_sbrk+0x30>
   12204:	0d600893          	li	a7,214
   12208:	00000513          	li	a0,0
   1220c:	00000073          	ecall
   12210:	fff00613          	li	a2,-1
   12214:	00050713          	mv	a4,a0
   12218:	02c50a63          	beq	a0,a2,1224c <_sbrk+0x5c>
   1221c:	d6a1a023          	sw	a0,-672(gp) # 13828 <heap_end.0>
   12220:	0d600893          	li	a7,214
   12224:	00e78533          	add	a0,a5,a4
   12228:	00000073          	ecall
   1222c:	d601a703          	lw	a4,-672(gp) # 13828 <heap_end.0>
   12230:	00e787b3          	add	a5,a5,a4
   12234:	00f51c63          	bne	a0,a5,1224c <_sbrk+0x5c>
   12238:	00c12083          	lw	ra,12(sp)
   1223c:	d6a1a023          	sw	a0,-672(gp) # 13828 <heap_end.0>
   12240:	00070513          	mv	a0,a4
   12244:	01010113          	add	sp,sp,16
   12248:	00008067          	ret
   1224c:	060000ef          	jal	122ac <__errno>
   12250:	00c12083          	lw	ra,12(sp)
   12254:	00c00793          	li	a5,12
   12258:	00f52023          	sw	a5,0(a0)
   1225c:	fff00513          	li	a0,-1
   12260:	01010113          	add	sp,sp,16
   12264:	00008067          	ret

00012268 <_write>:
   12268:	ff010113          	add	sp,sp,-16
   1226c:	00112623          	sw	ra,12(sp)
   12270:	00812423          	sw	s0,8(sp)
   12274:	04000893          	li	a7,64
   12278:	00000073          	ecall
   1227c:	00050413          	mv	s0,a0
   12280:	00054c63          	bltz	a0,12298 <_write+0x30>
   12284:	00c12083          	lw	ra,12(sp)
   12288:	00040513          	mv	a0,s0
   1228c:	00812403          	lw	s0,8(sp)
   12290:	01010113          	add	sp,sp,16
   12294:	00008067          	ret
   12298:	40800433          	neg	s0,s0
   1229c:	010000ef          	jal	122ac <__errno>
   122a0:	00852023          	sw	s0,0(a0)
   122a4:	fff00413          	li	s0,-1
   122a8:	fddff06f          	j	12284 <_write+0x1c>

000122ac <__errno>:
   122ac:	d3c1a503          	lw	a0,-708(gp) # 13804 <_impure_ptr>
   122b0:	00008067          	ret

Disassembly of section .eh_frame:

000132b4 <__EH_FRAME_BEGIN__>:
   132b4:	0000                	.insn	2, 0x
	...

Disassembly of section .init_array:

000132b8 <__init_array_start>:
   132b8:	00c0                	.insn	2, 0x00c0
   132ba:	0001                	.insn	2, 0x0001

000132bc <__frame_dummy_init_array_entry>:
   132bc:	0168                	.insn	2, 0x0168
   132be:	0001                	.insn	2, 0x0001

Disassembly of section .fini_array:

000132c0 <__do_global_dtors_aux_fini_array_entry>:
   132c0:	0124                	.insn	2, 0x0124
   132c2:	0001                	.insn	2, 0x0001

Disassembly of section .data:

000132c8 <__sglue>:
   132c8:	0000                	.insn	2, 0x
   132ca:	0000                	.insn	2, 0x
   132cc:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   132d0:	38f0                	.insn	2, 0x38f0
   132d2:	0001                	.insn	2, 0x0001
   132d4:	0000                	.insn	2, 0x
	...

000132d8 <_impure_data>:
   132d8:	0000                	.insn	2, 0x
   132da:	0000                	.insn	2, 0x
   132dc:	38f0                	.insn	2, 0x38f0
   132de:	0001                	.insn	2, 0x0001
   132e0:	3958                	.insn	2, 0x3958
   132e2:	0001                	.insn	2, 0x0001
   132e4:	39c0                	.insn	2, 0x39c0
   132e6:	0001                	.insn	2, 0x0001
	...
   13370:	0001                	.insn	2, 0x0001
   13372:	0000                	.insn	2, 0x
   13374:	0000                	.insn	2, 0x
   13376:	0000                	.insn	2, 0x
   13378:	330e                	.insn	2, 0x330e
   1337a:	abcd                	.insn	2, 0xabcd
   1337c:	1234                	.insn	2, 0x1234
   1337e:	e66d                	.insn	2, 0xe66d
   13380:	deec                	.insn	2, 0xdeec
   13382:	0005                	.insn	2, 0x0005
   13384:	0000000b          	.insn	4, 0x000b
	...

000133f8 <__malloc_av_>:
	...
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
   13728:	3720                	.insn	2, 0x3720
   1372a:	0001                	.insn	2, 0x0001
   1372c:	3720                	.insn	2, 0x3720
   1372e:	0001                	.insn	2, 0x0001
   13730:	3728                	.insn	2, 0x3728
   13732:	0001                	.insn	2, 0x0001
   13734:	3728                	.insn	2, 0x3728
   13736:	0001                	.insn	2, 0x0001
   13738:	3730                	.insn	2, 0x3730
   1373a:	0001                	.insn	2, 0x0001
   1373c:	3730                	.insn	2, 0x3730
   1373e:	0001                	.insn	2, 0x0001
   13740:	3738                	.insn	2, 0x3738
   13742:	0001                	.insn	2, 0x0001
   13744:	3738                	.insn	2, 0x3738
   13746:	0001                	.insn	2, 0x0001
   13748:	3740                	.insn	2, 0x3740
   1374a:	0001                	.insn	2, 0x0001
   1374c:	3740                	.insn	2, 0x3740
   1374e:	0001                	.insn	2, 0x0001
   13750:	3748                	.insn	2, 0x3748
   13752:	0001                	.insn	2, 0x0001
   13754:	3748                	.insn	2, 0x3748
   13756:	0001                	.insn	2, 0x0001
   13758:	3750                	.insn	2, 0x3750
   1375a:	0001                	.insn	2, 0x0001
   1375c:	3750                	.insn	2, 0x3750
   1375e:	0001                	.insn	2, 0x0001
   13760:	3758                	.insn	2, 0x3758
   13762:	0001                	.insn	2, 0x0001
   13764:	3758                	.insn	2, 0x3758
   13766:	0001                	.insn	2, 0x0001
   13768:	3760                	.insn	2, 0x3760
   1376a:	0001                	.insn	2, 0x0001
   1376c:	3760                	.insn	2, 0x3760
   1376e:	0001                	.insn	2, 0x0001
   13770:	3768                	.insn	2, 0x3768
   13772:	0001                	.insn	2, 0x0001
   13774:	3768                	.insn	2, 0x3768
   13776:	0001                	.insn	2, 0x0001
   13778:	3770                	.insn	2, 0x3770
   1377a:	0001                	.insn	2, 0x0001
   1377c:	3770                	.insn	2, 0x3770
   1377e:	0001                	.insn	2, 0x0001
   13780:	3778                	.insn	2, 0x3778
   13782:	0001                	.insn	2, 0x0001
   13784:	3778                	.insn	2, 0x3778
   13786:	0001                	.insn	2, 0x0001
   13788:	3780                	.insn	2, 0x3780
   1378a:	0001                	.insn	2, 0x0001
   1378c:	3780                	.insn	2, 0x3780
   1378e:	0001                	.insn	2, 0x0001
   13790:	3788                	.insn	2, 0x3788
   13792:	0001                	.insn	2, 0x0001
   13794:	3788                	.insn	2, 0x3788
   13796:	0001                	.insn	2, 0x0001
   13798:	3790                	.insn	2, 0x3790
   1379a:	0001                	.insn	2, 0x0001
   1379c:	3790                	.insn	2, 0x3790
   1379e:	0001                	.insn	2, 0x0001
   137a0:	3798                	.insn	2, 0x3798
   137a2:	0001                	.insn	2, 0x0001
   137a4:	3798                	.insn	2, 0x3798
   137a6:	0001                	.insn	2, 0x0001
   137a8:	37a0                	.insn	2, 0x37a0
   137aa:	0001                	.insn	2, 0x0001
   137ac:	37a0                	.insn	2, 0x37a0
   137ae:	0001                	.insn	2, 0x0001
   137b0:	37a8                	.insn	2, 0x37a8
   137b2:	0001                	.insn	2, 0x0001
   137b4:	37a8                	.insn	2, 0x37a8
   137b6:	0001                	.insn	2, 0x0001
   137b8:	37b0                	.insn	2, 0x37b0
   137ba:	0001                	.insn	2, 0x0001
   137bc:	37b0                	.insn	2, 0x37b0
   137be:	0001                	.insn	2, 0x0001
   137c0:	37b8                	.insn	2, 0x37b8
   137c2:	0001                	.insn	2, 0x0001
   137c4:	37b8                	.insn	2, 0x37b8
   137c6:	0001                	.insn	2, 0x0001
   137c8:	37c0                	.insn	2, 0x37c0
   137ca:	0001                	.insn	2, 0x0001
   137cc:	37c0                	.insn	2, 0x37c0
   137ce:	0001                	.insn	2, 0x0001
   137d0:	37c8                	.insn	2, 0x37c8
   137d2:	0001                	.insn	2, 0x0001
   137d4:	37c8                	.insn	2, 0x37c8
   137d6:	0001                	.insn	2, 0x0001
   137d8:	37d0                	.insn	2, 0x37d0
   137da:	0001                	.insn	2, 0x0001
   137dc:	37d0                	.insn	2, 0x37d0
   137de:	0001                	.insn	2, 0x0001
   137e0:	37d8                	.insn	2, 0x37d8
   137e2:	0001                	.insn	2, 0x0001
   137e4:	37d8                	.insn	2, 0x37d8
   137e6:	0001                	.insn	2, 0x0001
   137e8:	37e0                	.insn	2, 0x37e0
   137ea:	0001                	.insn	2, 0x0001
   137ec:	37e0                	.insn	2, 0x37e0
   137ee:	0001                	.insn	2, 0x0001
   137f0:	37e8                	.insn	2, 0x37e8
   137f2:	0001                	.insn	2, 0x0001
   137f4:	37e8                	.insn	2, 0x37e8
   137f6:	0001                	.insn	2, 0x0001
   137f8:	37f0                	.insn	2, 0x37f0
   137fa:	0001                	.insn	2, 0x0001
   137fc:	37f0                	.insn	2, 0x37f0
   137fe:	0001                	.insn	2, 0x0001

Disassembly of section .sdata:

00013800 <__dso_handle>:
   13800:	0000                	.insn	2, 0x
	...

00013804 <_impure_ptr>:
   13804:	32d8                	.insn	2, 0x32d8
   13806:	0001                	.insn	2, 0x0001

00013808 <__malloc_sbrk_base>:
   13808:	ffff                	.insn	2, 0xffff
   1380a:	ffff                	.insn	2, 0xffff

0001380c <__malloc_trim_threshold>:
   1380c:	0000                	.insn	2, 0x
   1380e:	0002                	.insn	2, 0x0002

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
