
simple-function.riscv:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	489000ef          	jal	10d30 <__call_exitprocs>
   100ac:	d701a783          	lw	a5,-656(gp) # 13748 <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	791010ef          	jal	1204c <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00012537          	lui	a0,0x12
   100cc:	f1450513          	add	a0,a0,-236 # 11f14 <__libc_fini_array>
   100d0:	5950006f          	j	10e64 <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00004197          	auipc	gp,0x4
   100dc:	90018193          	add	gp,gp,-1792 # 139d8 <__global_pointer$>
   100e0:	d7018513          	add	a0,gp,-656 # 13748 <__stdio_exit_handler>
   100e4:	09818613          	add	a2,gp,152 # 13a70 <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	365000ef          	jal	10c54 <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	d7050513          	add	a0,a0,-656 # 10e64 <atexit>
   100fc:	00050863          	beqz	a0,1010c <_start+0x34>
   10100:	00002517          	auipc	a0,0x2
   10104:	e1450513          	add	a0,a0,-492 # 11f14 <__libc_fini_array>
   10108:	55d000ef          	jal	10e64 <atexit>
   1010c:	2ad000ef          	jal	10bb8 <__libc_init_array>
   10110:	00012503          	lw	a0,0(sp)
   10114:	00410593          	add	a1,sp,4
   10118:	00000613          	li	a2,0
   1011c:	190000ef          	jal	102ac <main>
   10120:	f75ff06f          	j	10094 <exit>

00010124 <__do_global_dtors_aux>:
   10124:	ff010113          	add	sp,sp,-16
   10128:	00812423          	sw	s0,8(sp)
   1012c:	d8c1c783          	lbu	a5,-628(gp) # 13764 <completed.1>
   10130:	00112623          	sw	ra,12(sp)
   10134:	02079263          	bnez	a5,10158 <__do_global_dtors_aux+0x34>
   10138:	00000793          	li	a5,0
   1013c:	00078a63          	beqz	a5,10150 <__do_global_dtors_aux+0x2c>
   10140:	00013537          	lui	a0,0x13
   10144:	1c850513          	add	a0,a0,456 # 131c8 <__EH_FRAME_BEGIN__>
   10148:	00000097          	auipc	ra,0x0
   1014c:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10150:	00100793          	li	a5,1
   10154:	d8f18623          	sb	a5,-628(gp) # 13764 <completed.1>
   10158:	00c12083          	lw	ra,12(sp)
   1015c:	00812403          	lw	s0,8(sp)
   10160:	01010113          	add	sp,sp,16
   10164:	00008067          	ret

00010168 <frame_dummy>:
   10168:	00000793          	li	a5,0
   1016c:	00078c63          	beqz	a5,10184 <frame_dummy+0x1c>
   10170:	00013537          	lui	a0,0x13
   10174:	d9018593          	add	a1,gp,-624 # 13768 <object.0>
   10178:	1c850513          	add	a0,a0,456 # 131c8 <__EH_FRAME_BEGIN__>
   1017c:	00000317          	auipc	t1,0x0
   10180:	00000067          	jr	zero # 0 <exit-0x10094>
   10184:	00008067          	ret

00010188 <fuction>:
   10188:	fe010113          	add	sp,sp,-32
   1018c:	00112e23          	sw	ra,28(sp)
   10190:	00812c23          	sw	s0,24(sp)
   10194:	02010413          	add	s0,sp,32
   10198:	fe042623          	sw	zero,-20(s0)
   1019c:	fe042623          	sw	zero,-20(s0)
   101a0:	0440006f          	j	101e4 <fuction+0x5c>
   101a4:	000137b7          	lui	a5,0x13
   101a8:	1d878713          	add	a4,a5,472 # 131d8 <result>
   101ac:	fec42783          	lw	a5,-20(s0)
   101b0:	00279793          	sll	a5,a5,0x2
   101b4:	00f707b3          	add	a5,a4,a5
   101b8:	0007a783          	lw	a5,0(a5)
   101bc:	00a78713          	add	a4,a5,10
   101c0:	000137b7          	lui	a5,0x13
   101c4:	1d878693          	add	a3,a5,472 # 131d8 <result>
   101c8:	fec42783          	lw	a5,-20(s0)
   101cc:	00279793          	sll	a5,a5,0x2
   101d0:	00f687b3          	add	a5,a3,a5
   101d4:	00e7a023          	sw	a4,0(a5)
   101d8:	fec42783          	lw	a5,-20(s0)
   101dc:	00178793          	add	a5,a5,1
   101e0:	fef42623          	sw	a5,-20(s0)
   101e4:	fec42703          	lw	a4,-20(s0)
   101e8:	00400793          	li	a5,4
   101ec:	fae7dce3          	bge	a5,a4,101a4 <fuction+0x1c>
   101f0:	00500793          	li	a5,5
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	0440006f          	j	1023c <fuction+0xb4>
   101fc:	000137b7          	lui	a5,0x13
   10200:	1d878713          	add	a4,a5,472 # 131d8 <result>
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	00279793          	sll	a5,a5,0x2
   1020c:	00f707b3          	add	a5,a4,a5
   10210:	0007a783          	lw	a5,0(a5)
   10214:	ffb78713          	add	a4,a5,-5
   10218:	000137b7          	lui	a5,0x13
   1021c:	1d878693          	add	a3,a5,472 # 131d8 <result>
   10220:	fec42783          	lw	a5,-20(s0)
   10224:	00279793          	sll	a5,a5,0x2
   10228:	00f687b3          	add	a5,a3,a5
   1022c:	00e7a023          	sw	a4,0(a5)
   10230:	fec42783          	lw	a5,-20(s0)
   10234:	00178793          	add	a5,a5,1
   10238:	fef42623          	sw	a5,-20(s0)
   1023c:	fec42703          	lw	a4,-20(s0)
   10240:	00900793          	li	a5,9
   10244:	fae7dce3          	bge	a5,a4,101fc <fuction+0x74>
   10248:	fe042623          	sw	zero,-20(s0)
   1024c:	0380006f          	j	10284 <fuction+0xfc>
   10250:	000137b7          	lui	a5,0x13
   10254:	1d878713          	add	a4,a5,472 # 131d8 <result>
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	00279793          	sll	a5,a5,0x2
   10260:	00f707b3          	add	a5,a4,a5
   10264:	0007a783          	lw	a5,0(a5)
   10268:	00078513          	mv	a0,a5
   1026c:	070000ef          	jal	102dc <print_d>
   10270:	02000513          	li	a0,32
   10274:	0b8000ef          	jal	1032c <print_c>
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	00178793          	add	a5,a5,1
   10280:	fef42623          	sw	a5,-20(s0)
   10284:	fec42703          	lw	a4,-20(s0)
   10288:	00900793          	li	a5,9
   1028c:	fce7d2e3          	bge	a5,a4,10250 <fuction+0xc8>
   10290:	00a00513          	li	a0,10
   10294:	098000ef          	jal	1032c <print_c>
   10298:	00000013          	nop
   1029c:	01c12083          	lw	ra,28(sp)
   102a0:	01812403          	lw	s0,24(sp)
   102a4:	02010113          	add	sp,sp,32
   102a8:	00008067          	ret

000102ac <main>:
   102ac:	ff010113          	add	sp,sp,-16
   102b0:	00112623          	sw	ra,12(sp)
   102b4:	00812423          	sw	s0,8(sp)
   102b8:	01010413          	add	s0,sp,16
   102bc:	ecdff0ef          	jal	10188 <fuction>
   102c0:	098000ef          	jal	10358 <exit_proc>
   102c4:	00000793          	li	a5,0
   102c8:	00078513          	mv	a0,a5
   102cc:	00c12083          	lw	ra,12(sp)
   102d0:	00812403          	lw	s0,8(sp)
   102d4:	01010113          	add	sp,sp,16
   102d8:	00008067          	ret

000102dc <print_d>:
   102dc:	fe010113          	add	sp,sp,-32
   102e0:	00812e23          	sw	s0,28(sp)
   102e4:	02010413          	add	s0,sp,32
   102e8:	fea42623          	sw	a0,-20(s0)
   102ec:	00200893          	li	a7,2
   102f0:	00000073          	ecall
   102f4:	00000013          	nop
   102f8:	01c12403          	lw	s0,28(sp)
   102fc:	02010113          	add	sp,sp,32
   10300:	00008067          	ret

00010304 <print_s>:
   10304:	fe010113          	add	sp,sp,-32
   10308:	00812e23          	sw	s0,28(sp)
   1030c:	02010413          	add	s0,sp,32
   10310:	fea42623          	sw	a0,-20(s0)
   10314:	00000893          	li	a7,0
   10318:	00000073          	ecall
   1031c:	00000013          	nop
   10320:	01c12403          	lw	s0,28(sp)
   10324:	02010113          	add	sp,sp,32
   10328:	00008067          	ret

0001032c <print_c>:
   1032c:	fe010113          	add	sp,sp,-32
   10330:	00812e23          	sw	s0,28(sp)
   10334:	02010413          	add	s0,sp,32
   10338:	00050793          	mv	a5,a0
   1033c:	fef407a3          	sb	a5,-17(s0)
   10340:	00100893          	li	a7,1
   10344:	00000073          	ecall
   10348:	00000013          	nop
   1034c:	01c12403          	lw	s0,28(sp)
   10350:	02010113          	add	sp,sp,32
   10354:	00008067          	ret

00010358 <exit_proc>:
   10358:	ff010113          	add	sp,sp,-16
   1035c:	00812623          	sw	s0,12(sp)
   10360:	01010413          	add	s0,sp,16
   10364:	00300893          	li	a7,3
   10368:	00000073          	ecall
   1036c:	00000013          	nop
   10370:	00c12403          	lw	s0,12(sp)
   10374:	01010113          	add	sp,sp,16
   10378:	00008067          	ret

0001037c <read_char>:
   1037c:	fe010113          	add	sp,sp,-32
   10380:	00812e23          	sw	s0,28(sp)
   10384:	02010413          	add	s0,sp,32
   10388:	00400893          	li	a7,4
   1038c:	00000073          	ecall
   10390:	00050793          	mv	a5,a0
   10394:	fef407a3          	sb	a5,-17(s0)
   10398:	fef44783          	lbu	a5,-17(s0)
   1039c:	00078513          	mv	a0,a5
   103a0:	01c12403          	lw	s0,28(sp)
   103a4:	02010113          	add	sp,sp,32
   103a8:	00008067          	ret

000103ac <read_num>:
   103ac:	fe010113          	add	sp,sp,-32
   103b0:	00812e23          	sw	s0,28(sp)
   103b4:	02010413          	add	s0,sp,32
   103b8:	00500893          	li	a7,5
   103bc:	00000073          	ecall
   103c0:	00050713          	mv	a4,a0
   103c4:	fee42423          	sw	a4,-24(s0)
   103c8:	fef42623          	sw	a5,-20(s0)
   103cc:	fe842703          	lw	a4,-24(s0)
   103d0:	fec42783          	lw	a5,-20(s0)
   103d4:	00070513          	mv	a0,a4
   103d8:	00078593          	mv	a1,a5
   103dc:	01c12403          	lw	s0,28(sp)
   103e0:	02010113          	add	sp,sp,32
   103e4:	00008067          	ret

000103e8 <__fp_lock>:
   103e8:	00000513          	li	a0,0
   103ec:	00008067          	ret

000103f0 <stdio_exit_handler>:
   103f0:	000125b7          	lui	a1,0x12
   103f4:	00013537          	lui	a0,0x13
   103f8:	82818613          	add	a2,gp,-2008 # 13200 <__sglue>
   103fc:	a7858593          	add	a1,a1,-1416 # 11a78 <_fclose_r>
   10400:	21050513          	add	a0,a0,528 # 13210 <_impure_data>
   10404:	33c0006f          	j	10740 <_fwalk_sglue>

00010408 <cleanup_stdio>:
   10408:	00452583          	lw	a1,4(a0)
   1040c:	ff010113          	add	sp,sp,-16
   10410:	00812423          	sw	s0,8(sp)
   10414:	00112623          	sw	ra,12(sp)
   10418:	da818793          	add	a5,gp,-600 # 13780 <__sf>
   1041c:	00050413          	mv	s0,a0
   10420:	00f58463          	beq	a1,a5,10428 <cleanup_stdio+0x20>
   10424:	654010ef          	jal	11a78 <_fclose_r>
   10428:	00842583          	lw	a1,8(s0)
   1042c:	e1018793          	add	a5,gp,-496 # 137e8 <__sf+0x68>
   10430:	00f58663          	beq	a1,a5,1043c <cleanup_stdio+0x34>
   10434:	00040513          	mv	a0,s0
   10438:	640010ef          	jal	11a78 <_fclose_r>
   1043c:	00c42583          	lw	a1,12(s0)
   10440:	e7818793          	add	a5,gp,-392 # 13850 <__sf+0xd0>
   10444:	00f58c63          	beq	a1,a5,1045c <cleanup_stdio+0x54>
   10448:	00040513          	mv	a0,s0
   1044c:	00812403          	lw	s0,8(sp)
   10450:	00c12083          	lw	ra,12(sp)
   10454:	01010113          	add	sp,sp,16
   10458:	6200106f          	j	11a78 <_fclose_r>
   1045c:	00c12083          	lw	ra,12(sp)
   10460:	00812403          	lw	s0,8(sp)
   10464:	01010113          	add	sp,sp,16
   10468:	00008067          	ret

0001046c <__fp_unlock>:
   1046c:	00000513          	li	a0,0
   10470:	00008067          	ret

00010474 <global_stdio_init.part.0>:
   10474:	fe010113          	add	sp,sp,-32
   10478:	000107b7          	lui	a5,0x10
   1047c:	00812c23          	sw	s0,24(sp)
   10480:	3f078793          	add	a5,a5,1008 # 103f0 <stdio_exit_handler>
   10484:	da818413          	add	s0,gp,-600 # 13780 <__sf>
   10488:	00112e23          	sw	ra,28(sp)
   1048c:	00912a23          	sw	s1,20(sp)
   10490:	01212823          	sw	s2,16(sp)
   10494:	01312623          	sw	s3,12(sp)
   10498:	01412423          	sw	s4,8(sp)
   1049c:	d6f1a823          	sw	a5,-656(gp) # 13748 <__stdio_exit_handler>
   104a0:	00800613          	li	a2,8
   104a4:	00400793          	li	a5,4
   104a8:	00000593          	li	a1,0
   104ac:	e0418513          	add	a0,gp,-508 # 137dc <__sf+0x5c>
   104b0:	00f42623          	sw	a5,12(s0)
   104b4:	00042023          	sw	zero,0(s0)
   104b8:	00042223          	sw	zero,4(s0)
   104bc:	00042423          	sw	zero,8(s0)
   104c0:	06042223          	sw	zero,100(s0)
   104c4:	00042823          	sw	zero,16(s0)
   104c8:	00042a23          	sw	zero,20(s0)
   104cc:	00042c23          	sw	zero,24(s0)
   104d0:	784000ef          	jal	10c54 <memset>
   104d4:	000107b7          	lui	a5,0x10
   104d8:	00010a37          	lui	s4,0x10
   104dc:	000119b7          	lui	s3,0x11
   104e0:	00011937          	lui	s2,0x11
   104e4:	000114b7          	lui	s1,0x11
   104e8:	7f4a0a13          	add	s4,s4,2036 # 107f4 <__sread>
   104ec:	85898993          	add	s3,s3,-1960 # 10858 <__swrite>
   104f0:	8e090913          	add	s2,s2,-1824 # 108e0 <__sseek>
   104f4:	95848493          	add	s1,s1,-1704 # 10958 <__sclose>
   104f8:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   104fc:	00800613          	li	a2,8
   10500:	00000593          	li	a1,0
   10504:	e6c18513          	add	a0,gp,-404 # 13844 <__sf+0xc4>
   10508:	03442023          	sw	s4,32(s0)
   1050c:	03342223          	sw	s3,36(s0)
   10510:	03242423          	sw	s2,40(s0)
   10514:	02942623          	sw	s1,44(s0)
   10518:	06f42a23          	sw	a5,116(s0)
   1051c:	00842e23          	sw	s0,28(s0)
   10520:	06042423          	sw	zero,104(s0)
   10524:	06042623          	sw	zero,108(s0)
   10528:	06042823          	sw	zero,112(s0)
   1052c:	0c042623          	sw	zero,204(s0)
   10530:	06042c23          	sw	zero,120(s0)
   10534:	06042e23          	sw	zero,124(s0)
   10538:	08042023          	sw	zero,128(s0)
   1053c:	718000ef          	jal	10c54 <memset>
   10540:	000207b7          	lui	a5,0x20
   10544:	01278793          	add	a5,a5,18 # 20012 <__BSS_END__+0xc5a2>
   10548:	e1018713          	add	a4,gp,-496 # 137e8 <__sf+0x68>
   1054c:	00800613          	li	a2,8
   10550:	00000593          	li	a1,0
   10554:	ed418513          	add	a0,gp,-300 # 138ac <__sf+0x12c>
   10558:	09442423          	sw	s4,136(s0)
   1055c:	09342623          	sw	s3,140(s0)
   10560:	09242823          	sw	s2,144(s0)
   10564:	08942a23          	sw	s1,148(s0)
   10568:	0cf42e23          	sw	a5,220(s0)
   1056c:	08e42223          	sw	a4,132(s0)
   10570:	0c042823          	sw	zero,208(s0)
   10574:	0c042a23          	sw	zero,212(s0)
   10578:	0c042c23          	sw	zero,216(s0)
   1057c:	12042a23          	sw	zero,308(s0)
   10580:	0e042023          	sw	zero,224(s0)
   10584:	0e042223          	sw	zero,228(s0)
   10588:	0e042423          	sw	zero,232(s0)
   1058c:	6c8000ef          	jal	10c54 <memset>
   10590:	e7818793          	add	a5,gp,-392 # 13850 <__sf+0xd0>
   10594:	0f442823          	sw	s4,240(s0)
   10598:	0f342a23          	sw	s3,244(s0)
   1059c:	0f242c23          	sw	s2,248(s0)
   105a0:	0e942e23          	sw	s1,252(s0)
   105a4:	01c12083          	lw	ra,28(sp)
   105a8:	0ef42623          	sw	a5,236(s0)
   105ac:	01812403          	lw	s0,24(sp)
   105b0:	01412483          	lw	s1,20(sp)
   105b4:	01012903          	lw	s2,16(sp)
   105b8:	00c12983          	lw	s3,12(sp)
   105bc:	00812a03          	lw	s4,8(sp)
   105c0:	02010113          	add	sp,sp,32
   105c4:	00008067          	ret

000105c8 <__sfp>:
   105c8:	d701a783          	lw	a5,-656(gp) # 13748 <__stdio_exit_handler>
   105cc:	fe010113          	add	sp,sp,-32
   105d0:	01312623          	sw	s3,12(sp)
   105d4:	00112e23          	sw	ra,28(sp)
   105d8:	00812c23          	sw	s0,24(sp)
   105dc:	00912a23          	sw	s1,20(sp)
   105e0:	01212823          	sw	s2,16(sp)
   105e4:	00050993          	mv	s3,a0
   105e8:	0e078663          	beqz	a5,106d4 <__sfp+0x10c>
   105ec:	82818913          	add	s2,gp,-2008 # 13200 <__sglue>
   105f0:	fff00493          	li	s1,-1
   105f4:	00492783          	lw	a5,4(s2)
   105f8:	00892403          	lw	s0,8(s2)
   105fc:	fff78793          	add	a5,a5,-1
   10600:	0007d863          	bgez	a5,10610 <__sfp+0x48>
   10604:	0800006f          	j	10684 <__sfp+0xbc>
   10608:	06840413          	add	s0,s0,104
   1060c:	06978c63          	beq	a5,s1,10684 <__sfp+0xbc>
   10610:	00c41703          	lh	a4,12(s0)
   10614:	fff78793          	add	a5,a5,-1
   10618:	fe0718e3          	bnez	a4,10608 <__sfp+0x40>
   1061c:	ffff07b7          	lui	a5,0xffff0
   10620:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc591>
   10624:	00f42623          	sw	a5,12(s0)
   10628:	06042223          	sw	zero,100(s0)
   1062c:	00042023          	sw	zero,0(s0)
   10630:	00042423          	sw	zero,8(s0)
   10634:	00042223          	sw	zero,4(s0)
   10638:	00042823          	sw	zero,16(s0)
   1063c:	00042a23          	sw	zero,20(s0)
   10640:	00042c23          	sw	zero,24(s0)
   10644:	00800613          	li	a2,8
   10648:	00000593          	li	a1,0
   1064c:	05c40513          	add	a0,s0,92
   10650:	604000ef          	jal	10c54 <memset>
   10654:	02042823          	sw	zero,48(s0)
   10658:	02042a23          	sw	zero,52(s0)
   1065c:	04042223          	sw	zero,68(s0)
   10660:	04042423          	sw	zero,72(s0)
   10664:	01c12083          	lw	ra,28(sp)
   10668:	00040513          	mv	a0,s0
   1066c:	01812403          	lw	s0,24(sp)
   10670:	01412483          	lw	s1,20(sp)
   10674:	01012903          	lw	s2,16(sp)
   10678:	00c12983          	lw	s3,12(sp)
   1067c:	02010113          	add	sp,sp,32
   10680:	00008067          	ret
   10684:	00092403          	lw	s0,0(s2)
   10688:	00040663          	beqz	s0,10694 <__sfp+0xcc>
   1068c:	00040913          	mv	s2,s0
   10690:	f65ff06f          	j	105f4 <__sfp+0x2c>
   10694:	1ac00593          	li	a1,428
   10698:	00098513          	mv	a0,s3
   1069c:	419000ef          	jal	112b4 <_malloc_r>
   106a0:	00050413          	mv	s0,a0
   106a4:	02050c63          	beqz	a0,106dc <__sfp+0x114>
   106a8:	00c50513          	add	a0,a0,12
   106ac:	00400793          	li	a5,4
   106b0:	00042023          	sw	zero,0(s0)
   106b4:	00f42223          	sw	a5,4(s0)
   106b8:	00a42423          	sw	a0,8(s0)
   106bc:	1a000613          	li	a2,416
   106c0:	00000593          	li	a1,0
   106c4:	590000ef          	jal	10c54 <memset>
   106c8:	00892023          	sw	s0,0(s2)
   106cc:	00040913          	mv	s2,s0
   106d0:	f25ff06f          	j	105f4 <__sfp+0x2c>
   106d4:	da1ff0ef          	jal	10474 <global_stdio_init.part.0>
   106d8:	f15ff06f          	j	105ec <__sfp+0x24>
   106dc:	00092023          	sw	zero,0(s2)
   106e0:	00c00793          	li	a5,12
   106e4:	00f9a023          	sw	a5,0(s3)
   106e8:	f7dff06f          	j	10664 <__sfp+0x9c>

000106ec <__sinit>:
   106ec:	03452783          	lw	a5,52(a0)
   106f0:	00078463          	beqz	a5,106f8 <__sinit+0xc>
   106f4:	00008067          	ret
   106f8:	d701a703          	lw	a4,-656(gp) # 13748 <__stdio_exit_handler>
   106fc:	000107b7          	lui	a5,0x10
   10700:	40878793          	add	a5,a5,1032 # 10408 <cleanup_stdio>
   10704:	02f52a23          	sw	a5,52(a0)
   10708:	fe0716e3          	bnez	a4,106f4 <__sinit+0x8>
   1070c:	d69ff06f          	j	10474 <global_stdio_init.part.0>

00010710 <__sfp_lock_acquire>:
   10710:	00008067          	ret

00010714 <__sfp_lock_release>:
   10714:	00008067          	ret

00010718 <__fp_lock_all>:
   10718:	000105b7          	lui	a1,0x10
   1071c:	82818613          	add	a2,gp,-2008 # 13200 <__sglue>
   10720:	3e858593          	add	a1,a1,1000 # 103e8 <__fp_lock>
   10724:	00000513          	li	a0,0
   10728:	0180006f          	j	10740 <_fwalk_sglue>

0001072c <__fp_unlock_all>:
   1072c:	000105b7          	lui	a1,0x10
   10730:	82818613          	add	a2,gp,-2008 # 13200 <__sglue>
   10734:	46c58593          	add	a1,a1,1132 # 1046c <__fp_unlock>
   10738:	00000513          	li	a0,0
   1073c:	0040006f          	j	10740 <_fwalk_sglue>

00010740 <_fwalk_sglue>:
   10740:	fd010113          	add	sp,sp,-48
   10744:	03212023          	sw	s2,32(sp)
   10748:	01312e23          	sw	s3,28(sp)
   1074c:	01412c23          	sw	s4,24(sp)
   10750:	01512a23          	sw	s5,20(sp)
   10754:	01612823          	sw	s6,16(sp)
   10758:	01712623          	sw	s7,12(sp)
   1075c:	02112623          	sw	ra,44(sp)
   10760:	02812423          	sw	s0,40(sp)
   10764:	02912223          	sw	s1,36(sp)
   10768:	00050b13          	mv	s6,a0
   1076c:	00058b93          	mv	s7,a1
   10770:	00060a93          	mv	s5,a2
   10774:	00000a13          	li	s4,0
   10778:	00100993          	li	s3,1
   1077c:	fff00913          	li	s2,-1
   10780:	004aa483          	lw	s1,4(s5)
   10784:	008aa403          	lw	s0,8(s5)
   10788:	fff48493          	add	s1,s1,-1
   1078c:	0204c863          	bltz	s1,107bc <_fwalk_sglue+0x7c>
   10790:	00c45783          	lhu	a5,12(s0)
   10794:	00f9fe63          	bgeu	s3,a5,107b0 <_fwalk_sglue+0x70>
   10798:	00e41783          	lh	a5,14(s0)
   1079c:	00040593          	mv	a1,s0
   107a0:	000b0513          	mv	a0,s6
   107a4:	01278663          	beq	a5,s2,107b0 <_fwalk_sglue+0x70>
   107a8:	000b80e7          	jalr	s7
   107ac:	00aa6a33          	or	s4,s4,a0
   107b0:	fff48493          	add	s1,s1,-1
   107b4:	06840413          	add	s0,s0,104
   107b8:	fd249ce3          	bne	s1,s2,10790 <_fwalk_sglue+0x50>
   107bc:	000aaa83          	lw	s5,0(s5)
   107c0:	fc0a90e3          	bnez	s5,10780 <_fwalk_sglue+0x40>
   107c4:	02c12083          	lw	ra,44(sp)
   107c8:	02812403          	lw	s0,40(sp)
   107cc:	02412483          	lw	s1,36(sp)
   107d0:	02012903          	lw	s2,32(sp)
   107d4:	01c12983          	lw	s3,28(sp)
   107d8:	01412a83          	lw	s5,20(sp)
   107dc:	01012b03          	lw	s6,16(sp)
   107e0:	00c12b83          	lw	s7,12(sp)
   107e4:	000a0513          	mv	a0,s4
   107e8:	01812a03          	lw	s4,24(sp)
   107ec:	03010113          	add	sp,sp,48
   107f0:	00008067          	ret

000107f4 <__sread>:
   107f4:	ff010113          	add	sp,sp,-16
   107f8:	00812423          	sw	s0,8(sp)
   107fc:	00058413          	mv	s0,a1
   10800:	00e59583          	lh	a1,14(a1)
   10804:	00112623          	sw	ra,12(sp)
   10808:	2e0000ef          	jal	10ae8 <_read_r>
   1080c:	02054063          	bltz	a0,1082c <__sread+0x38>
   10810:	05042783          	lw	a5,80(s0)
   10814:	00c12083          	lw	ra,12(sp)
   10818:	00a787b3          	add	a5,a5,a0
   1081c:	04f42823          	sw	a5,80(s0)
   10820:	00812403          	lw	s0,8(sp)
   10824:	01010113          	add	sp,sp,16
   10828:	00008067          	ret
   1082c:	00c45783          	lhu	a5,12(s0)
   10830:	fffff737          	lui	a4,0xfffff
   10834:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb58f>
   10838:	00e7f7b3          	and	a5,a5,a4
   1083c:	00c12083          	lw	ra,12(sp)
   10840:	00f41623          	sh	a5,12(s0)
   10844:	00812403          	lw	s0,8(sp)
   10848:	01010113          	add	sp,sp,16
   1084c:	00008067          	ret

00010850 <__seofread>:
   10850:	00000513          	li	a0,0
   10854:	00008067          	ret

00010858 <__swrite>:
   10858:	00c59783          	lh	a5,12(a1)
   1085c:	fe010113          	add	sp,sp,-32
   10860:	00812c23          	sw	s0,24(sp)
   10864:	00912a23          	sw	s1,20(sp)
   10868:	01212823          	sw	s2,16(sp)
   1086c:	01312623          	sw	s3,12(sp)
   10870:	00112e23          	sw	ra,28(sp)
   10874:	1007f713          	and	a4,a5,256
   10878:	00058413          	mv	s0,a1
   1087c:	00050493          	mv	s1,a0
   10880:	00060913          	mv	s2,a2
   10884:	00068993          	mv	s3,a3
   10888:	04071063          	bnez	a4,108c8 <__swrite+0x70>
   1088c:	fffff737          	lui	a4,0xfffff
   10890:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb58f>
   10894:	00e7f7b3          	and	a5,a5,a4
   10898:	00e41583          	lh	a1,14(s0)
   1089c:	00f41623          	sh	a5,12(s0)
   108a0:	01812403          	lw	s0,24(sp)
   108a4:	01c12083          	lw	ra,28(sp)
   108a8:	00098693          	mv	a3,s3
   108ac:	00090613          	mv	a2,s2
   108b0:	00c12983          	lw	s3,12(sp)
   108b4:	01012903          	lw	s2,16(sp)
   108b8:	00048513          	mv	a0,s1
   108bc:	01412483          	lw	s1,20(sp)
   108c0:	02010113          	add	sp,sp,32
   108c4:	28c0006f          	j	10b50 <_write_r>
   108c8:	00e59583          	lh	a1,14(a1)
   108cc:	00200693          	li	a3,2
   108d0:	00000613          	li	a2,0
   108d4:	1ac000ef          	jal	10a80 <_lseek_r>
   108d8:	00c41783          	lh	a5,12(s0)
   108dc:	fb1ff06f          	j	1088c <__swrite+0x34>

000108e0 <__sseek>:
   108e0:	ff010113          	add	sp,sp,-16
   108e4:	00812423          	sw	s0,8(sp)
   108e8:	00058413          	mv	s0,a1
   108ec:	00e59583          	lh	a1,14(a1)
   108f0:	00112623          	sw	ra,12(sp)
   108f4:	18c000ef          	jal	10a80 <_lseek_r>
   108f8:	fff00793          	li	a5,-1
   108fc:	02f50863          	beq	a0,a5,1092c <__sseek+0x4c>
   10900:	00c45783          	lhu	a5,12(s0)
   10904:	00001737          	lui	a4,0x1
   10908:	00c12083          	lw	ra,12(sp)
   1090c:	00e7e7b3          	or	a5,a5,a4
   10910:	01079793          	sll	a5,a5,0x10
   10914:	4107d793          	sra	a5,a5,0x10
   10918:	04a42823          	sw	a0,80(s0)
   1091c:	00f41623          	sh	a5,12(s0)
   10920:	00812403          	lw	s0,8(sp)
   10924:	01010113          	add	sp,sp,16
   10928:	00008067          	ret
   1092c:	00c45783          	lhu	a5,12(s0)
   10930:	fffff737          	lui	a4,0xfffff
   10934:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb58f>
   10938:	00e7f7b3          	and	a5,a5,a4
   1093c:	01079793          	sll	a5,a5,0x10
   10940:	4107d793          	sra	a5,a5,0x10
   10944:	00c12083          	lw	ra,12(sp)
   10948:	00f41623          	sh	a5,12(s0)
   1094c:	00812403          	lw	s0,8(sp)
   10950:	01010113          	add	sp,sp,16
   10954:	00008067          	ret

00010958 <__sclose>:
   10958:	00e59583          	lh	a1,14(a1)
   1095c:	0040006f          	j	10960 <_close_r>

00010960 <_close_r>:
   10960:	ff010113          	add	sp,sp,-16
   10964:	00812423          	sw	s0,8(sp)
   10968:	00912223          	sw	s1,4(sp)
   1096c:	00050413          	mv	s0,a0
   10970:	00058513          	mv	a0,a1
   10974:	00112623          	sw	ra,12(sp)
   10978:	d601aa23          	sw	zero,-652(gp) # 1374c <errno>
   1097c:	68c010ef          	jal	12008 <_close>
   10980:	fff00793          	li	a5,-1
   10984:	00f50c63          	beq	a0,a5,1099c <_close_r+0x3c>
   10988:	00c12083          	lw	ra,12(sp)
   1098c:	00812403          	lw	s0,8(sp)
   10990:	00412483          	lw	s1,4(sp)
   10994:	01010113          	add	sp,sp,16
   10998:	00008067          	ret
   1099c:	d741a783          	lw	a5,-652(gp) # 1374c <errno>
   109a0:	fe0784e3          	beqz	a5,10988 <_close_r+0x28>
   109a4:	00c12083          	lw	ra,12(sp)
   109a8:	00f42023          	sw	a5,0(s0)
   109ac:	00812403          	lw	s0,8(sp)
   109b0:	00412483          	lw	s1,4(sp)
   109b4:	01010113          	add	sp,sp,16
   109b8:	00008067          	ret

000109bc <_reclaim_reent>:
   109bc:	d641a783          	lw	a5,-668(gp) # 1373c <_impure_ptr>
   109c0:	0aa78e63          	beq	a5,a0,10a7c <_reclaim_reent+0xc0>
   109c4:	04452583          	lw	a1,68(a0)
   109c8:	fe010113          	add	sp,sp,-32
   109cc:	00912a23          	sw	s1,20(sp)
   109d0:	00112e23          	sw	ra,28(sp)
   109d4:	00050493          	mv	s1,a0
   109d8:	04058c63          	beqz	a1,10a30 <_reclaim_reent+0x74>
   109dc:	01212823          	sw	s2,16(sp)
   109e0:	01312623          	sw	s3,12(sp)
   109e4:	00812c23          	sw	s0,24(sp)
   109e8:	00000913          	li	s2,0
   109ec:	08000993          	li	s3,128
   109f0:	012587b3          	add	a5,a1,s2
   109f4:	0007a403          	lw	s0,0(a5)
   109f8:	00040e63          	beqz	s0,10a14 <_reclaim_reent+0x58>
   109fc:	00040593          	mv	a1,s0
   10a00:	00042403          	lw	s0,0(s0)
   10a04:	00048513          	mv	a0,s1
   10a08:	5a8000ef          	jal	10fb0 <_free_r>
   10a0c:	fe0418e3          	bnez	s0,109fc <_reclaim_reent+0x40>
   10a10:	0444a583          	lw	a1,68(s1)
   10a14:	00490913          	add	s2,s2,4
   10a18:	fd391ce3          	bne	s2,s3,109f0 <_reclaim_reent+0x34>
   10a1c:	00048513          	mv	a0,s1
   10a20:	590000ef          	jal	10fb0 <_free_r>
   10a24:	01812403          	lw	s0,24(sp)
   10a28:	01012903          	lw	s2,16(sp)
   10a2c:	00c12983          	lw	s3,12(sp)
   10a30:	0384a583          	lw	a1,56(s1)
   10a34:	00058663          	beqz	a1,10a40 <_reclaim_reent+0x84>
   10a38:	00048513          	mv	a0,s1
   10a3c:	574000ef          	jal	10fb0 <_free_r>
   10a40:	04c4a583          	lw	a1,76(s1)
   10a44:	00058663          	beqz	a1,10a50 <_reclaim_reent+0x94>
   10a48:	00048513          	mv	a0,s1
   10a4c:	564000ef          	jal	10fb0 <_free_r>
   10a50:	0344a783          	lw	a5,52(s1)
   10a54:	00078c63          	beqz	a5,10a6c <_reclaim_reent+0xb0>
   10a58:	01c12083          	lw	ra,28(sp)
   10a5c:	00048513          	mv	a0,s1
   10a60:	01412483          	lw	s1,20(sp)
   10a64:	02010113          	add	sp,sp,32
   10a68:	00078067          	jr	a5
   10a6c:	01c12083          	lw	ra,28(sp)
   10a70:	01412483          	lw	s1,20(sp)
   10a74:	02010113          	add	sp,sp,32
   10a78:	00008067          	ret
   10a7c:	00008067          	ret

00010a80 <_lseek_r>:
   10a80:	ff010113          	add	sp,sp,-16
   10a84:	00058713          	mv	a4,a1
   10a88:	00812423          	sw	s0,8(sp)
   10a8c:	00912223          	sw	s1,4(sp)
   10a90:	00060593          	mv	a1,a2
   10a94:	00050413          	mv	s0,a0
   10a98:	00068613          	mv	a2,a3
   10a9c:	00070513          	mv	a0,a4
   10aa0:	00112623          	sw	ra,12(sp)
   10aa4:	d601aa23          	sw	zero,-652(gp) # 1374c <errno>
   10aa8:	5d4010ef          	jal	1207c <_lseek>
   10aac:	fff00793          	li	a5,-1
   10ab0:	00f50c63          	beq	a0,a5,10ac8 <_lseek_r+0x48>
   10ab4:	00c12083          	lw	ra,12(sp)
   10ab8:	00812403          	lw	s0,8(sp)
   10abc:	00412483          	lw	s1,4(sp)
   10ac0:	01010113          	add	sp,sp,16
   10ac4:	00008067          	ret
   10ac8:	d741a783          	lw	a5,-652(gp) # 1374c <errno>
   10acc:	fe0784e3          	beqz	a5,10ab4 <_lseek_r+0x34>
   10ad0:	00c12083          	lw	ra,12(sp)
   10ad4:	00f42023          	sw	a5,0(s0)
   10ad8:	00812403          	lw	s0,8(sp)
   10adc:	00412483          	lw	s1,4(sp)
   10ae0:	01010113          	add	sp,sp,16
   10ae4:	00008067          	ret

00010ae8 <_read_r>:
   10ae8:	ff010113          	add	sp,sp,-16
   10aec:	00058713          	mv	a4,a1
   10af0:	00812423          	sw	s0,8(sp)
   10af4:	00912223          	sw	s1,4(sp)
   10af8:	00060593          	mv	a1,a2
   10afc:	00050413          	mv	s0,a0
   10b00:	00068613          	mv	a2,a3
   10b04:	00070513          	mv	a0,a4
   10b08:	00112623          	sw	ra,12(sp)
   10b0c:	d601aa23          	sw	zero,-652(gp) # 1374c <errno>
   10b10:	5b0010ef          	jal	120c0 <_read>
   10b14:	fff00793          	li	a5,-1
   10b18:	00f50c63          	beq	a0,a5,10b30 <_read_r+0x48>
   10b1c:	00c12083          	lw	ra,12(sp)
   10b20:	00812403          	lw	s0,8(sp)
   10b24:	00412483          	lw	s1,4(sp)
   10b28:	01010113          	add	sp,sp,16
   10b2c:	00008067          	ret
   10b30:	d741a783          	lw	a5,-652(gp) # 1374c <errno>
   10b34:	fe0784e3          	beqz	a5,10b1c <_read_r+0x34>
   10b38:	00c12083          	lw	ra,12(sp)
   10b3c:	00f42023          	sw	a5,0(s0)
   10b40:	00812403          	lw	s0,8(sp)
   10b44:	00412483          	lw	s1,4(sp)
   10b48:	01010113          	add	sp,sp,16
   10b4c:	00008067          	ret

00010b50 <_write_r>:
   10b50:	ff010113          	add	sp,sp,-16
   10b54:	00058713          	mv	a4,a1
   10b58:	00812423          	sw	s0,8(sp)
   10b5c:	00912223          	sw	s1,4(sp)
   10b60:	00060593          	mv	a1,a2
   10b64:	00050413          	mv	s0,a0
   10b68:	00068613          	mv	a2,a3
   10b6c:	00070513          	mv	a0,a4
   10b70:	00112623          	sw	ra,12(sp)
   10b74:	d601aa23          	sw	zero,-652(gp) # 1374c <errno>
   10b78:	604010ef          	jal	1217c <_write>
   10b7c:	fff00793          	li	a5,-1
   10b80:	00f50c63          	beq	a0,a5,10b98 <_write_r+0x48>
   10b84:	00c12083          	lw	ra,12(sp)
   10b88:	00812403          	lw	s0,8(sp)
   10b8c:	00412483          	lw	s1,4(sp)
   10b90:	01010113          	add	sp,sp,16
   10b94:	00008067          	ret
   10b98:	d741a783          	lw	a5,-652(gp) # 1374c <errno>
   10b9c:	fe0784e3          	beqz	a5,10b84 <_write_r+0x34>
   10ba0:	00c12083          	lw	ra,12(sp)
   10ba4:	00f42023          	sw	a5,0(s0)
   10ba8:	00812403          	lw	s0,8(sp)
   10bac:	00412483          	lw	s1,4(sp)
   10bb0:	01010113          	add	sp,sp,16
   10bb4:	00008067          	ret

00010bb8 <__libc_init_array>:
   10bb8:	ff010113          	add	sp,sp,-16
   10bbc:	00812423          	sw	s0,8(sp)
   10bc0:	000137b7          	lui	a5,0x13
   10bc4:	00013437          	lui	s0,0x13
   10bc8:	01212023          	sw	s2,0(sp)
   10bcc:	1cc78793          	add	a5,a5,460 # 131cc <__init_array_start>
   10bd0:	1cc40713          	add	a4,s0,460 # 131cc <__init_array_start>
   10bd4:	00112623          	sw	ra,12(sp)
   10bd8:	00912223          	sw	s1,4(sp)
   10bdc:	40e78933          	sub	s2,a5,a4
   10be0:	02e78263          	beq	a5,a4,10c04 <__libc_init_array+0x4c>
   10be4:	40295913          	sra	s2,s2,0x2
   10be8:	1cc40413          	add	s0,s0,460
   10bec:	00000493          	li	s1,0
   10bf0:	00042783          	lw	a5,0(s0)
   10bf4:	00148493          	add	s1,s1,1
   10bf8:	00440413          	add	s0,s0,4
   10bfc:	000780e7          	jalr	a5
   10c00:	ff24e8e3          	bltu	s1,s2,10bf0 <__libc_init_array+0x38>
   10c04:	00013437          	lui	s0,0x13
   10c08:	000137b7          	lui	a5,0x13
   10c0c:	1d478793          	add	a5,a5,468 # 131d4 <__do_global_dtors_aux_fini_array_entry>
   10c10:	1cc40713          	add	a4,s0,460 # 131cc <__init_array_start>
   10c14:	40e78933          	sub	s2,a5,a4
   10c18:	40295913          	sra	s2,s2,0x2
   10c1c:	02e78063          	beq	a5,a4,10c3c <__libc_init_array+0x84>
   10c20:	1cc40413          	add	s0,s0,460
   10c24:	00000493          	li	s1,0
   10c28:	00042783          	lw	a5,0(s0)
   10c2c:	00148493          	add	s1,s1,1
   10c30:	00440413          	add	s0,s0,4
   10c34:	000780e7          	jalr	a5
   10c38:	ff24e8e3          	bltu	s1,s2,10c28 <__libc_init_array+0x70>
   10c3c:	00c12083          	lw	ra,12(sp)
   10c40:	00812403          	lw	s0,8(sp)
   10c44:	00412483          	lw	s1,4(sp)
   10c48:	00012903          	lw	s2,0(sp)
   10c4c:	01010113          	add	sp,sp,16
   10c50:	00008067          	ret

00010c54 <memset>:
   10c54:	00f00313          	li	t1,15
   10c58:	00050713          	mv	a4,a0
   10c5c:	02c37e63          	bgeu	t1,a2,10c98 <memset+0x44>
   10c60:	00f77793          	and	a5,a4,15
   10c64:	0a079063          	bnez	a5,10d04 <memset+0xb0>
   10c68:	08059263          	bnez	a1,10cec <memset+0x98>
   10c6c:	ff067693          	and	a3,a2,-16
   10c70:	00f67613          	and	a2,a2,15
   10c74:	00e686b3          	add	a3,a3,a4
   10c78:	00b72023          	sw	a1,0(a4)
   10c7c:	00b72223          	sw	a1,4(a4)
   10c80:	00b72423          	sw	a1,8(a4)
   10c84:	00b72623          	sw	a1,12(a4)
   10c88:	01070713          	add	a4,a4,16
   10c8c:	fed766e3          	bltu	a4,a3,10c78 <memset+0x24>
   10c90:	00061463          	bnez	a2,10c98 <memset+0x44>
   10c94:	00008067          	ret
   10c98:	40c306b3          	sub	a3,t1,a2
   10c9c:	00269693          	sll	a3,a3,0x2
   10ca0:	00000297          	auipc	t0,0x0
   10ca4:	005686b3          	add	a3,a3,t0
   10ca8:	00c68067          	jr	12(a3)
   10cac:	00b70723          	sb	a1,14(a4)
   10cb0:	00b706a3          	sb	a1,13(a4)
   10cb4:	00b70623          	sb	a1,12(a4)
   10cb8:	00b705a3          	sb	a1,11(a4)
   10cbc:	00b70523          	sb	a1,10(a4)
   10cc0:	00b704a3          	sb	a1,9(a4)
   10cc4:	00b70423          	sb	a1,8(a4)
   10cc8:	00b703a3          	sb	a1,7(a4)
   10ccc:	00b70323          	sb	a1,6(a4)
   10cd0:	00b702a3          	sb	a1,5(a4)
   10cd4:	00b70223          	sb	a1,4(a4)
   10cd8:	00b701a3          	sb	a1,3(a4)
   10cdc:	00b70123          	sb	a1,2(a4)
   10ce0:	00b700a3          	sb	a1,1(a4)
   10ce4:	00b70023          	sb	a1,0(a4)
   10ce8:	00008067          	ret
   10cec:	0ff5f593          	zext.b	a1,a1
   10cf0:	00859693          	sll	a3,a1,0x8
   10cf4:	00d5e5b3          	or	a1,a1,a3
   10cf8:	01059693          	sll	a3,a1,0x10
   10cfc:	00d5e5b3          	or	a1,a1,a3
   10d00:	f6dff06f          	j	10c6c <memset+0x18>
   10d04:	00279693          	sll	a3,a5,0x2
   10d08:	00000297          	auipc	t0,0x0
   10d0c:	005686b3          	add	a3,a3,t0
   10d10:	00008293          	mv	t0,ra
   10d14:	fa0680e7          	jalr	-96(a3)
   10d18:	00028093          	mv	ra,t0
   10d1c:	ff078793          	add	a5,a5,-16
   10d20:	40f70733          	sub	a4,a4,a5
   10d24:	00f60633          	add	a2,a2,a5
   10d28:	f6c378e3          	bgeu	t1,a2,10c98 <memset+0x44>
   10d2c:	f3dff06f          	j	10c68 <memset+0x14>

00010d30 <__call_exitprocs>:
   10d30:	fd010113          	add	sp,sp,-48
   10d34:	01412c23          	sw	s4,24(sp)
   10d38:	03212023          	sw	s2,32(sp)
   10d3c:	d781a903          	lw	s2,-648(gp) # 13750 <__atexit>
   10d40:	02112623          	sw	ra,44(sp)
   10d44:	0a090863          	beqz	s2,10df4 <__call_exitprocs+0xc4>
   10d48:	01312e23          	sw	s3,28(sp)
   10d4c:	01512a23          	sw	s5,20(sp)
   10d50:	01612823          	sw	s6,16(sp)
   10d54:	01712623          	sw	s7,12(sp)
   10d58:	02812423          	sw	s0,40(sp)
   10d5c:	02912223          	sw	s1,36(sp)
   10d60:	01812423          	sw	s8,8(sp)
   10d64:	00050b13          	mv	s6,a0
   10d68:	00058b93          	mv	s7,a1
   10d6c:	fff00993          	li	s3,-1
   10d70:	00100a93          	li	s5,1
   10d74:	00492483          	lw	s1,4(s2)
   10d78:	fff48413          	add	s0,s1,-1
   10d7c:	04044e63          	bltz	s0,10dd8 <__call_exitprocs+0xa8>
   10d80:	00249493          	sll	s1,s1,0x2
   10d84:	009904b3          	add	s1,s2,s1
   10d88:	080b9063          	bnez	s7,10e08 <__call_exitprocs+0xd8>
   10d8c:	00492783          	lw	a5,4(s2)
   10d90:	0044a683          	lw	a3,4(s1)
   10d94:	fff78793          	add	a5,a5,-1
   10d98:	0a878c63          	beq	a5,s0,10e50 <__call_exitprocs+0x120>
   10d9c:	0004a223          	sw	zero,4(s1)
   10da0:	02068663          	beqz	a3,10dcc <__call_exitprocs+0x9c>
   10da4:	18892783          	lw	a5,392(s2)
   10da8:	008a9733          	sll	a4,s5,s0
   10dac:	00492c03          	lw	s8,4(s2)
   10db0:	00f777b3          	and	a5,a4,a5
   10db4:	06079663          	bnez	a5,10e20 <__call_exitprocs+0xf0>
   10db8:	000680e7          	jalr	a3
   10dbc:	00492703          	lw	a4,4(s2)
   10dc0:	d781a783          	lw	a5,-648(gp) # 13750 <__atexit>
   10dc4:	09871063          	bne	a4,s8,10e44 <__call_exitprocs+0x114>
   10dc8:	07279e63          	bne	a5,s2,10e44 <__call_exitprocs+0x114>
   10dcc:	fff40413          	add	s0,s0,-1
   10dd0:	ffc48493          	add	s1,s1,-4
   10dd4:	fb341ae3          	bne	s0,s3,10d88 <__call_exitprocs+0x58>
   10dd8:	02812403          	lw	s0,40(sp)
   10ddc:	02412483          	lw	s1,36(sp)
   10de0:	01c12983          	lw	s3,28(sp)
   10de4:	01412a83          	lw	s5,20(sp)
   10de8:	01012b03          	lw	s6,16(sp)
   10dec:	00c12b83          	lw	s7,12(sp)
   10df0:	00812c03          	lw	s8,8(sp)
   10df4:	02c12083          	lw	ra,44(sp)
   10df8:	02012903          	lw	s2,32(sp)
   10dfc:	01812a03          	lw	s4,24(sp)
   10e00:	03010113          	add	sp,sp,48
   10e04:	00008067          	ret
   10e08:	1044a783          	lw	a5,260(s1)
   10e0c:	f97780e3          	beq	a5,s7,10d8c <__call_exitprocs+0x5c>
   10e10:	fff40413          	add	s0,s0,-1
   10e14:	ffc48493          	add	s1,s1,-4
   10e18:	ff3418e3          	bne	s0,s3,10e08 <__call_exitprocs+0xd8>
   10e1c:	fbdff06f          	j	10dd8 <__call_exitprocs+0xa8>
   10e20:	18c92783          	lw	a5,396(s2)
   10e24:	0844a583          	lw	a1,132(s1)
   10e28:	00f77733          	and	a4,a4,a5
   10e2c:	02071663          	bnez	a4,10e58 <__call_exitprocs+0x128>
   10e30:	000b0513          	mv	a0,s6
   10e34:	000680e7          	jalr	a3
   10e38:	00492703          	lw	a4,4(s2)
   10e3c:	d781a783          	lw	a5,-648(gp) # 13750 <__atexit>
   10e40:	f98704e3          	beq	a4,s8,10dc8 <__call_exitprocs+0x98>
   10e44:	f8078ae3          	beqz	a5,10dd8 <__call_exitprocs+0xa8>
   10e48:	00078913          	mv	s2,a5
   10e4c:	f29ff06f          	j	10d74 <__call_exitprocs+0x44>
   10e50:	00892223          	sw	s0,4(s2)
   10e54:	f4dff06f          	j	10da0 <__call_exitprocs+0x70>
   10e58:	00058513          	mv	a0,a1
   10e5c:	000680e7          	jalr	a3
   10e60:	f5dff06f          	j	10dbc <__call_exitprocs+0x8c>

00010e64 <atexit>:
   10e64:	00050593          	mv	a1,a0
   10e68:	00000693          	li	a3,0
   10e6c:	00000613          	li	a2,0
   10e70:	00000513          	li	a0,0
   10e74:	0fc0106f          	j	11f70 <__register_exitproc>

00010e78 <_malloc_trim_r>:
   10e78:	fe010113          	add	sp,sp,-32
   10e7c:	01312623          	sw	s3,12(sp)
   10e80:	000139b7          	lui	s3,0x13
   10e84:	00812c23          	sw	s0,24(sp)
   10e88:	00912a23          	sw	s1,20(sp)
   10e8c:	01212823          	sw	s2,16(sp)
   10e90:	01412423          	sw	s4,8(sp)
   10e94:	00112e23          	sw	ra,28(sp)
   10e98:	00058a13          	mv	s4,a1
   10e9c:	00050913          	mv	s2,a0
   10ea0:	33098993          	add	s3,s3,816 # 13330 <__malloc_av_>
   10ea4:	3cd000ef          	jal	11a70 <__malloc_lock>
   10ea8:	0089a703          	lw	a4,8(s3)
   10eac:	000017b7          	lui	a5,0x1
   10eb0:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   10eb4:	00472483          	lw	s1,4(a4)
   10eb8:	00001737          	lui	a4,0x1
   10ebc:	ffc4f493          	and	s1,s1,-4
   10ec0:	00f48433          	add	s0,s1,a5
   10ec4:	41440433          	sub	s0,s0,s4
   10ec8:	00c45413          	srl	s0,s0,0xc
   10ecc:	fff40413          	add	s0,s0,-1
   10ed0:	00c41413          	sll	s0,s0,0xc
   10ed4:	00e44e63          	blt	s0,a4,10ef0 <_malloc_trim_r+0x78>
   10ed8:	00000593          	li	a1,0
   10edc:	00090513          	mv	a0,s2
   10ee0:	7d9000ef          	jal	11eb8 <_sbrk_r>
   10ee4:	0089a783          	lw	a5,8(s3)
   10ee8:	009787b3          	add	a5,a5,s1
   10eec:	02f50863          	beq	a0,a5,10f1c <_malloc_trim_r+0xa4>
   10ef0:	00090513          	mv	a0,s2
   10ef4:	381000ef          	jal	11a74 <__malloc_unlock>
   10ef8:	01c12083          	lw	ra,28(sp)
   10efc:	01812403          	lw	s0,24(sp)
   10f00:	01412483          	lw	s1,20(sp)
   10f04:	01012903          	lw	s2,16(sp)
   10f08:	00c12983          	lw	s3,12(sp)
   10f0c:	00812a03          	lw	s4,8(sp)
   10f10:	00000513          	li	a0,0
   10f14:	02010113          	add	sp,sp,32
   10f18:	00008067          	ret
   10f1c:	408005b3          	neg	a1,s0
   10f20:	00090513          	mv	a0,s2
   10f24:	795000ef          	jal	11eb8 <_sbrk_r>
   10f28:	fff00793          	li	a5,-1
   10f2c:	04f50863          	beq	a0,a5,10f7c <_malloc_trim_r+0x104>
   10f30:	ee018793          	add	a5,gp,-288 # 138b8 <__malloc_current_mallinfo>
   10f34:	0007a703          	lw	a4,0(a5)
   10f38:	0089a683          	lw	a3,8(s3)
   10f3c:	408484b3          	sub	s1,s1,s0
   10f40:	0014e493          	or	s1,s1,1
   10f44:	40870733          	sub	a4,a4,s0
   10f48:	00090513          	mv	a0,s2
   10f4c:	0096a223          	sw	s1,4(a3)
   10f50:	00e7a023          	sw	a4,0(a5)
   10f54:	321000ef          	jal	11a74 <__malloc_unlock>
   10f58:	01c12083          	lw	ra,28(sp)
   10f5c:	01812403          	lw	s0,24(sp)
   10f60:	01412483          	lw	s1,20(sp)
   10f64:	01012903          	lw	s2,16(sp)
   10f68:	00c12983          	lw	s3,12(sp)
   10f6c:	00812a03          	lw	s4,8(sp)
   10f70:	00100513          	li	a0,1
   10f74:	02010113          	add	sp,sp,32
   10f78:	00008067          	ret
   10f7c:	00000593          	li	a1,0
   10f80:	00090513          	mv	a0,s2
   10f84:	735000ef          	jal	11eb8 <_sbrk_r>
   10f88:	0089a703          	lw	a4,8(s3)
   10f8c:	00f00693          	li	a3,15
   10f90:	40e507b3          	sub	a5,a0,a4
   10f94:	f4f6dee3          	bge	a3,a5,10ef0 <_malloc_trim_r+0x78>
   10f98:	d681a683          	lw	a3,-664(gp) # 13740 <__malloc_sbrk_base>
   10f9c:	0017e793          	or	a5,a5,1
   10fa0:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf090>
   10fa4:	40d50533          	sub	a0,a0,a3
   10fa8:	eea1a023          	sw	a0,-288(gp) # 138b8 <__malloc_current_mallinfo>
   10fac:	f45ff06f          	j	10ef0 <_malloc_trim_r+0x78>

00010fb0 <_free_r>:
   10fb0:	18058263          	beqz	a1,11134 <_free_r+0x184>
   10fb4:	ff010113          	add	sp,sp,-16
   10fb8:	00812423          	sw	s0,8(sp)
   10fbc:	00912223          	sw	s1,4(sp)
   10fc0:	00058413          	mv	s0,a1
   10fc4:	00050493          	mv	s1,a0
   10fc8:	00112623          	sw	ra,12(sp)
   10fcc:	2a5000ef          	jal	11a70 <__malloc_lock>
   10fd0:	ffc42503          	lw	a0,-4(s0)
   10fd4:	ff840713          	add	a4,s0,-8
   10fd8:	000135b7          	lui	a1,0x13
   10fdc:	ffe57793          	and	a5,a0,-2
   10fe0:	00f70633          	add	a2,a4,a5
   10fe4:	33058593          	add	a1,a1,816 # 13330 <__malloc_av_>
   10fe8:	00462683          	lw	a3,4(a2)
   10fec:	0085a803          	lw	a6,8(a1)
   10ff0:	ffc6f693          	and	a3,a3,-4
   10ff4:	1ac80263          	beq	a6,a2,11198 <_free_r+0x1e8>
   10ff8:	00d62223          	sw	a3,4(a2)
   10ffc:	00157513          	and	a0,a0,1
   11000:	00d60833          	add	a6,a2,a3
   11004:	0a051063          	bnez	a0,110a4 <_free_r+0xf4>
   11008:	ff842303          	lw	t1,-8(s0)
   1100c:	00482803          	lw	a6,4(a6)
   11010:	00013537          	lui	a0,0x13
   11014:	40670733          	sub	a4,a4,t1
   11018:	00872883          	lw	a7,8(a4)
   1101c:	33850513          	add	a0,a0,824 # 13338 <__malloc_av_+0x8>
   11020:	006787b3          	add	a5,a5,t1
   11024:	00187813          	and	a6,a6,1
   11028:	14a88263          	beq	a7,a0,1116c <_free_r+0x1bc>
   1102c:	00c72303          	lw	t1,12(a4)
   11030:	0068a623          	sw	t1,12(a7)
   11034:	01132423          	sw	a7,8(t1) # 10184 <frame_dummy+0x1c>
   11038:	1a080663          	beqz	a6,111e4 <_free_r+0x234>
   1103c:	0017e693          	or	a3,a5,1
   11040:	00d72223          	sw	a3,4(a4)
   11044:	00f62023          	sw	a5,0(a2)
   11048:	1ff00693          	li	a3,511
   1104c:	06f6ec63          	bltu	a3,a5,110c4 <_free_r+0x114>
   11050:	ff87f693          	and	a3,a5,-8
   11054:	00868693          	add	a3,a3,8
   11058:	0045a503          	lw	a0,4(a1)
   1105c:	00d586b3          	add	a3,a1,a3
   11060:	0006a603          	lw	a2,0(a3)
   11064:	0057d813          	srl	a6,a5,0x5
   11068:	00100793          	li	a5,1
   1106c:	010797b3          	sll	a5,a5,a6
   11070:	00a7e7b3          	or	a5,a5,a0
   11074:	ff868513          	add	a0,a3,-8
   11078:	00a72623          	sw	a0,12(a4)
   1107c:	00c72423          	sw	a2,8(a4)
   11080:	00f5a223          	sw	a5,4(a1)
   11084:	00e6a023          	sw	a4,0(a3)
   11088:	00e62623          	sw	a4,12(a2)
   1108c:	00812403          	lw	s0,8(sp)
   11090:	00c12083          	lw	ra,12(sp)
   11094:	00048513          	mv	a0,s1
   11098:	00412483          	lw	s1,4(sp)
   1109c:	01010113          	add	sp,sp,16
   110a0:	1d50006f          	j	11a74 <__malloc_unlock>
   110a4:	00482503          	lw	a0,4(a6)
   110a8:	00157513          	and	a0,a0,1
   110ac:	08050663          	beqz	a0,11138 <_free_r+0x188>
   110b0:	0017e693          	or	a3,a5,1
   110b4:	fed42e23          	sw	a3,-4(s0)
   110b8:	00f62023          	sw	a5,0(a2)
   110bc:	1ff00693          	li	a3,511
   110c0:	f8f6f8e3          	bgeu	a3,a5,11050 <_free_r+0xa0>
   110c4:	0097d693          	srl	a3,a5,0x9
   110c8:	00400613          	li	a2,4
   110cc:	12d66063          	bltu	a2,a3,111ec <_free_r+0x23c>
   110d0:	0067d693          	srl	a3,a5,0x6
   110d4:	03968513          	add	a0,a3,57
   110d8:	03868613          	add	a2,a3,56
   110dc:	00351513          	sll	a0,a0,0x3
   110e0:	00a58533          	add	a0,a1,a0
   110e4:	00052683          	lw	a3,0(a0)
   110e8:	ff850513          	add	a0,a0,-8
   110ec:	00d51863          	bne	a0,a3,110fc <_free_r+0x14c>
   110f0:	1540006f          	j	11244 <_free_r+0x294>
   110f4:	0086a683          	lw	a3,8(a3)
   110f8:	00d50863          	beq	a0,a3,11108 <_free_r+0x158>
   110fc:	0046a603          	lw	a2,4(a3)
   11100:	ffc67613          	and	a2,a2,-4
   11104:	fec7e8e3          	bltu	a5,a2,110f4 <_free_r+0x144>
   11108:	00c6a503          	lw	a0,12(a3)
   1110c:	00a72623          	sw	a0,12(a4)
   11110:	00d72423          	sw	a3,8(a4)
   11114:	00812403          	lw	s0,8(sp)
   11118:	00e52423          	sw	a4,8(a0)
   1111c:	00c12083          	lw	ra,12(sp)
   11120:	00048513          	mv	a0,s1
   11124:	00412483          	lw	s1,4(sp)
   11128:	00e6a623          	sw	a4,12(a3)
   1112c:	01010113          	add	sp,sp,16
   11130:	1450006f          	j	11a74 <__malloc_unlock>
   11134:	00008067          	ret
   11138:	00013537          	lui	a0,0x13
   1113c:	00d787b3          	add	a5,a5,a3
   11140:	33850513          	add	a0,a0,824 # 13338 <__malloc_av_+0x8>
   11144:	00862683          	lw	a3,8(a2)
   11148:	0ca68c63          	beq	a3,a0,11220 <_free_r+0x270>
   1114c:	00c62803          	lw	a6,12(a2)
   11150:	0017e513          	or	a0,a5,1
   11154:	00f70633          	add	a2,a4,a5
   11158:	0106a623          	sw	a6,12(a3)
   1115c:	00d82423          	sw	a3,8(a6)
   11160:	00a72223          	sw	a0,4(a4)
   11164:	00f62023          	sw	a5,0(a2)
   11168:	ee1ff06f          	j	11048 <_free_r+0x98>
   1116c:	12081c63          	bnez	a6,112a4 <_free_r+0x2f4>
   11170:	00862583          	lw	a1,8(a2)
   11174:	00c62603          	lw	a2,12(a2)
   11178:	00f686b3          	add	a3,a3,a5
   1117c:	0016e793          	or	a5,a3,1
   11180:	00c5a623          	sw	a2,12(a1)
   11184:	00b62423          	sw	a1,8(a2)
   11188:	00f72223          	sw	a5,4(a4)
   1118c:	00d70733          	add	a4,a4,a3
   11190:	00d72023          	sw	a3,0(a4)
   11194:	ef9ff06f          	j	1108c <_free_r+0xdc>
   11198:	00157513          	and	a0,a0,1
   1119c:	00d786b3          	add	a3,a5,a3
   111a0:	02051063          	bnez	a0,111c0 <_free_r+0x210>
   111a4:	ff842503          	lw	a0,-8(s0)
   111a8:	40a70733          	sub	a4,a4,a0
   111ac:	00c72783          	lw	a5,12(a4)
   111b0:	00872603          	lw	a2,8(a4)
   111b4:	00a686b3          	add	a3,a3,a0
   111b8:	00f62623          	sw	a5,12(a2)
   111bc:	00c7a423          	sw	a2,8(a5)
   111c0:	0016e613          	or	a2,a3,1
   111c4:	d6c1a783          	lw	a5,-660(gp) # 13744 <__malloc_trim_threshold>
   111c8:	00c72223          	sw	a2,4(a4)
   111cc:	00e5a423          	sw	a4,8(a1)
   111d0:	eaf6eee3          	bltu	a3,a5,1108c <_free_r+0xdc>
   111d4:	d841a583          	lw	a1,-636(gp) # 1375c <__malloc_top_pad>
   111d8:	00048513          	mv	a0,s1
   111dc:	c9dff0ef          	jal	10e78 <_malloc_trim_r>
   111e0:	eadff06f          	j	1108c <_free_r+0xdc>
   111e4:	00d787b3          	add	a5,a5,a3
   111e8:	f5dff06f          	j	11144 <_free_r+0x194>
   111ec:	01400613          	li	a2,20
   111f0:	02d67063          	bgeu	a2,a3,11210 <_free_r+0x260>
   111f4:	05400613          	li	a2,84
   111f8:	06d66463          	bltu	a2,a3,11260 <_free_r+0x2b0>
   111fc:	00c7d693          	srl	a3,a5,0xc
   11200:	06f68513          	add	a0,a3,111
   11204:	06e68613          	add	a2,a3,110
   11208:	00351513          	sll	a0,a0,0x3
   1120c:	ed5ff06f          	j	110e0 <_free_r+0x130>
   11210:	05c68513          	add	a0,a3,92
   11214:	05b68613          	add	a2,a3,91
   11218:	00351513          	sll	a0,a0,0x3
   1121c:	ec5ff06f          	j	110e0 <_free_r+0x130>
   11220:	00e5aa23          	sw	a4,20(a1)
   11224:	00e5a823          	sw	a4,16(a1)
   11228:	0017e693          	or	a3,a5,1
   1122c:	00a72623          	sw	a0,12(a4)
   11230:	00a72423          	sw	a0,8(a4)
   11234:	00d72223          	sw	a3,4(a4)
   11238:	00f70733          	add	a4,a4,a5
   1123c:	00f72023          	sw	a5,0(a4)
   11240:	e4dff06f          	j	1108c <_free_r+0xdc>
   11244:	0045a803          	lw	a6,4(a1)
   11248:	40265613          	sra	a2,a2,0x2
   1124c:	00100793          	li	a5,1
   11250:	00c797b3          	sll	a5,a5,a2
   11254:	0107e7b3          	or	a5,a5,a6
   11258:	00f5a223          	sw	a5,4(a1)
   1125c:	eb1ff06f          	j	1110c <_free_r+0x15c>
   11260:	15400613          	li	a2,340
   11264:	00d66c63          	bltu	a2,a3,1127c <_free_r+0x2cc>
   11268:	00f7d693          	srl	a3,a5,0xf
   1126c:	07868513          	add	a0,a3,120
   11270:	07768613          	add	a2,a3,119
   11274:	00351513          	sll	a0,a0,0x3
   11278:	e69ff06f          	j	110e0 <_free_r+0x130>
   1127c:	55400613          	li	a2,1364
   11280:	00d66c63          	bltu	a2,a3,11298 <_free_r+0x2e8>
   11284:	0127d693          	srl	a3,a5,0x12
   11288:	07d68513          	add	a0,a3,125
   1128c:	07c68613          	add	a2,a3,124
   11290:	00351513          	sll	a0,a0,0x3
   11294:	e4dff06f          	j	110e0 <_free_r+0x130>
   11298:	3f800513          	li	a0,1016
   1129c:	07e00613          	li	a2,126
   112a0:	e41ff06f          	j	110e0 <_free_r+0x130>
   112a4:	0017e693          	or	a3,a5,1
   112a8:	00d72223          	sw	a3,4(a4)
   112ac:	00f62023          	sw	a5,0(a2)
   112b0:	dddff06f          	j	1108c <_free_r+0xdc>

000112b4 <_malloc_r>:
   112b4:	fd010113          	add	sp,sp,-48
   112b8:	01312e23          	sw	s3,28(sp)
   112bc:	02112623          	sw	ra,44(sp)
   112c0:	02812423          	sw	s0,40(sp)
   112c4:	02912223          	sw	s1,36(sp)
   112c8:	03212023          	sw	s2,32(sp)
   112cc:	00b58793          	add	a5,a1,11
   112d0:	01600713          	li	a4,22
   112d4:	00050993          	mv	s3,a0
   112d8:	08f76263          	bltu	a4,a5,1135c <_malloc_r+0xa8>
   112dc:	01000793          	li	a5,16
   112e0:	20b7e663          	bltu	a5,a1,114ec <_malloc_r+0x238>
   112e4:	78c000ef          	jal	11a70 <__malloc_lock>
   112e8:	01800793          	li	a5,24
   112ec:	00200593          	li	a1,2
   112f0:	01000493          	li	s1,16
   112f4:	00013937          	lui	s2,0x13
   112f8:	33090913          	add	s2,s2,816 # 13330 <__malloc_av_>
   112fc:	00f907b3          	add	a5,s2,a5
   11300:	0047a403          	lw	s0,4(a5)
   11304:	ff878713          	add	a4,a5,-8
   11308:	34e40463          	beq	s0,a4,11650 <_malloc_r+0x39c>
   1130c:	00442783          	lw	a5,4(s0)
   11310:	00c42683          	lw	a3,12(s0)
   11314:	00842603          	lw	a2,8(s0)
   11318:	ffc7f793          	and	a5,a5,-4
   1131c:	00f407b3          	add	a5,s0,a5
   11320:	0047a703          	lw	a4,4(a5)
   11324:	00d62623          	sw	a3,12(a2)
   11328:	00c6a423          	sw	a2,8(a3)
   1132c:	00176713          	or	a4,a4,1
   11330:	00098513          	mv	a0,s3
   11334:	00e7a223          	sw	a4,4(a5)
   11338:	73c000ef          	jal	11a74 <__malloc_unlock>
   1133c:	00840513          	add	a0,s0,8
   11340:	02c12083          	lw	ra,44(sp)
   11344:	02812403          	lw	s0,40(sp)
   11348:	02412483          	lw	s1,36(sp)
   1134c:	02012903          	lw	s2,32(sp)
   11350:	01c12983          	lw	s3,28(sp)
   11354:	03010113          	add	sp,sp,48
   11358:	00008067          	ret
   1135c:	ff87f493          	and	s1,a5,-8
   11360:	1807c663          	bltz	a5,114ec <_malloc_r+0x238>
   11364:	18b4e463          	bltu	s1,a1,114ec <_malloc_r+0x238>
   11368:	708000ef          	jal	11a70 <__malloc_lock>
   1136c:	1f700793          	li	a5,503
   11370:	3e97fa63          	bgeu	a5,s1,11764 <_malloc_r+0x4b0>
   11374:	0094d793          	srl	a5,s1,0x9
   11378:	18078263          	beqz	a5,114fc <_malloc_r+0x248>
   1137c:	00400713          	li	a4,4
   11380:	34f76063          	bltu	a4,a5,116c0 <_malloc_r+0x40c>
   11384:	0064d793          	srl	a5,s1,0x6
   11388:	03978593          	add	a1,a5,57
   1138c:	03878813          	add	a6,a5,56
   11390:	00359613          	sll	a2,a1,0x3
   11394:	00013937          	lui	s2,0x13
   11398:	33090913          	add	s2,s2,816 # 13330 <__malloc_av_>
   1139c:	00c90633          	add	a2,s2,a2
   113a0:	00462403          	lw	s0,4(a2)
   113a4:	ff860613          	add	a2,a2,-8
   113a8:	02860863          	beq	a2,s0,113d8 <_malloc_r+0x124>
   113ac:	00f00513          	li	a0,15
   113b0:	0140006f          	j	113c4 <_malloc_r+0x110>
   113b4:	00c42683          	lw	a3,12(s0)
   113b8:	28075863          	bgez	a4,11648 <_malloc_r+0x394>
   113bc:	00d60e63          	beq	a2,a3,113d8 <_malloc_r+0x124>
   113c0:	00068413          	mv	s0,a3
   113c4:	00442783          	lw	a5,4(s0)
   113c8:	ffc7f793          	and	a5,a5,-4
   113cc:	40978733          	sub	a4,a5,s1
   113d0:	fee552e3          	bge	a0,a4,113b4 <_malloc_r+0x100>
   113d4:	00080593          	mv	a1,a6
   113d8:	01092403          	lw	s0,16(s2)
   113dc:	00013837          	lui	a6,0x13
   113e0:	33880813          	add	a6,a6,824 # 13338 <__malloc_av_+0x8>
   113e4:	25040e63          	beq	s0,a6,11640 <_malloc_r+0x38c>
   113e8:	00442783          	lw	a5,4(s0)
   113ec:	00f00693          	li	a3,15
   113f0:	ffc7f793          	and	a5,a5,-4
   113f4:	40978733          	sub	a4,a5,s1
   113f8:	36e6cc63          	blt	a3,a4,11770 <_malloc_r+0x4bc>
   113fc:	01092a23          	sw	a6,20(s2)
   11400:	01092823          	sw	a6,16(s2)
   11404:	34075063          	bgez	a4,11744 <_malloc_r+0x490>
   11408:	1ff00713          	li	a4,511
   1140c:	00492503          	lw	a0,4(s2)
   11410:	24f76863          	bltu	a4,a5,11660 <_malloc_r+0x3ac>
   11414:	ff87f713          	and	a4,a5,-8
   11418:	00870713          	add	a4,a4,8
   1141c:	00e90733          	add	a4,s2,a4
   11420:	00072683          	lw	a3,0(a4)
   11424:	0057d613          	srl	a2,a5,0x5
   11428:	00100793          	li	a5,1
   1142c:	00c797b3          	sll	a5,a5,a2
   11430:	00f56533          	or	a0,a0,a5
   11434:	ff870793          	add	a5,a4,-8
   11438:	00f42623          	sw	a5,12(s0)
   1143c:	00d42423          	sw	a3,8(s0)
   11440:	00a92223          	sw	a0,4(s2)
   11444:	00872023          	sw	s0,0(a4)
   11448:	0086a623          	sw	s0,12(a3)
   1144c:	4025d793          	sra	a5,a1,0x2
   11450:	00100613          	li	a2,1
   11454:	00f61633          	sll	a2,a2,a5
   11458:	0ac56a63          	bltu	a0,a2,1150c <_malloc_r+0x258>
   1145c:	00a677b3          	and	a5,a2,a0
   11460:	02079463          	bnez	a5,11488 <_malloc_r+0x1d4>
   11464:	00161613          	sll	a2,a2,0x1
   11468:	ffc5f593          	and	a1,a1,-4
   1146c:	00a677b3          	and	a5,a2,a0
   11470:	00458593          	add	a1,a1,4
   11474:	00079a63          	bnez	a5,11488 <_malloc_r+0x1d4>
   11478:	00161613          	sll	a2,a2,0x1
   1147c:	00a677b3          	and	a5,a2,a0
   11480:	00458593          	add	a1,a1,4
   11484:	fe078ae3          	beqz	a5,11478 <_malloc_r+0x1c4>
   11488:	00f00893          	li	a7,15
   1148c:	00359313          	sll	t1,a1,0x3
   11490:	00690333          	add	t1,s2,t1
   11494:	00030513          	mv	a0,t1
   11498:	00c52783          	lw	a5,12(a0)
   1149c:	00058e13          	mv	t3,a1
   114a0:	24f50263          	beq	a0,a5,116e4 <_malloc_r+0x430>
   114a4:	0047a703          	lw	a4,4(a5)
   114a8:	00078413          	mv	s0,a5
   114ac:	00c7a783          	lw	a5,12(a5)
   114b0:	ffc77713          	and	a4,a4,-4
   114b4:	409706b3          	sub	a3,a4,s1
   114b8:	24d8c263          	blt	a7,a3,116fc <_malloc_r+0x448>
   114bc:	fe06c2e3          	bltz	a3,114a0 <_malloc_r+0x1ec>
   114c0:	00e40733          	add	a4,s0,a4
   114c4:	00472683          	lw	a3,4(a4)
   114c8:	00842603          	lw	a2,8(s0)
   114cc:	00098513          	mv	a0,s3
   114d0:	0016e693          	or	a3,a3,1
   114d4:	00d72223          	sw	a3,4(a4)
   114d8:	00f62623          	sw	a5,12(a2)
   114dc:	00c7a423          	sw	a2,8(a5)
   114e0:	594000ef          	jal	11a74 <__malloc_unlock>
   114e4:	00840513          	add	a0,s0,8
   114e8:	e59ff06f          	j	11340 <_malloc_r+0x8c>
   114ec:	00c00793          	li	a5,12
   114f0:	00f9a023          	sw	a5,0(s3)
   114f4:	00000513          	li	a0,0
   114f8:	e49ff06f          	j	11340 <_malloc_r+0x8c>
   114fc:	20000613          	li	a2,512
   11500:	04000593          	li	a1,64
   11504:	03f00813          	li	a6,63
   11508:	e8dff06f          	j	11394 <_malloc_r+0xe0>
   1150c:	00892403          	lw	s0,8(s2)
   11510:	01612823          	sw	s6,16(sp)
   11514:	00442783          	lw	a5,4(s0)
   11518:	ffc7fb13          	and	s6,a5,-4
   1151c:	009b6863          	bltu	s6,s1,1152c <_malloc_r+0x278>
   11520:	409b0733          	sub	a4,s6,s1
   11524:	00f00793          	li	a5,15
   11528:	0ce7ca63          	blt	a5,a4,115fc <_malloc_r+0x348>
   1152c:	01912223          	sw	s9,4(sp)
   11530:	01512a23          	sw	s5,20(sp)
   11534:	d681a703          	lw	a4,-664(gp) # 13740 <__malloc_sbrk_base>
   11538:	d841aa83          	lw	s5,-636(gp) # 1375c <__malloc_top_pad>
   1153c:	01412c23          	sw	s4,24(sp)
   11540:	01712623          	sw	s7,12(sp)
   11544:	fff00793          	li	a5,-1
   11548:	01640a33          	add	s4,s0,s6
   1154c:	01548ab3          	add	s5,s1,s5
   11550:	3cf70663          	beq	a4,a5,1191c <_malloc_r+0x668>
   11554:	000017b7          	lui	a5,0x1
   11558:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   1155c:	00fa8ab3          	add	s5,s5,a5
   11560:	fffff7b7          	lui	a5,0xfffff
   11564:	00fafab3          	and	s5,s5,a5
   11568:	000a8593          	mv	a1,s5
   1156c:	00098513          	mv	a0,s3
   11570:	149000ef          	jal	11eb8 <_sbrk_r>
   11574:	fff00793          	li	a5,-1
   11578:	00050b93          	mv	s7,a0
   1157c:	44f50a63          	beq	a0,a5,119d0 <_malloc_r+0x71c>
   11580:	01812423          	sw	s8,8(sp)
   11584:	23456e63          	bltu	a0,s4,117c0 <_malloc_r+0x50c>
   11588:	ee018c13          	add	s8,gp,-288 # 138b8 <__malloc_current_mallinfo>
   1158c:	000c2583          	lw	a1,0(s8)
   11590:	00ba85b3          	add	a1,s5,a1
   11594:	00bc2023          	sw	a1,0(s8)
   11598:	00058713          	mv	a4,a1
   1159c:	2aaa1663          	bne	s4,a0,11848 <_malloc_r+0x594>
   115a0:	01451793          	sll	a5,a0,0x14
   115a4:	2a079263          	bnez	a5,11848 <_malloc_r+0x594>
   115a8:	00892b83          	lw	s7,8(s2)
   115ac:	015b07b3          	add	a5,s6,s5
   115b0:	0017e793          	or	a5,a5,1
   115b4:	00fba223          	sw	a5,4(s7)
   115b8:	d801a683          	lw	a3,-640(gp) # 13758 <__malloc_max_sbrked_mem>
   115bc:	00b6f463          	bgeu	a3,a1,115c4 <_malloc_r+0x310>
   115c0:	d8b1a023          	sw	a1,-640(gp) # 13758 <__malloc_max_sbrked_mem>
   115c4:	d7c1a683          	lw	a3,-644(gp) # 13754 <__malloc_max_total_mem>
   115c8:	00b6f463          	bgeu	a3,a1,115d0 <_malloc_r+0x31c>
   115cc:	d6b1ae23          	sw	a1,-644(gp) # 13754 <__malloc_max_total_mem>
   115d0:	00812c03          	lw	s8,8(sp)
   115d4:	000b8413          	mv	s0,s7
   115d8:	ffc7f793          	and	a5,a5,-4
   115dc:	40978733          	sub	a4,a5,s1
   115e0:	3897ea63          	bltu	a5,s1,11974 <_malloc_r+0x6c0>
   115e4:	00f00793          	li	a5,15
   115e8:	38e7d663          	bge	a5,a4,11974 <_malloc_r+0x6c0>
   115ec:	01812a03          	lw	s4,24(sp)
   115f0:	01412a83          	lw	s5,20(sp)
   115f4:	00c12b83          	lw	s7,12(sp)
   115f8:	00412c83          	lw	s9,4(sp)
   115fc:	0014e793          	or	a5,s1,1
   11600:	00f42223          	sw	a5,4(s0)
   11604:	009404b3          	add	s1,s0,s1
   11608:	00992423          	sw	s1,8(s2)
   1160c:	00176713          	or	a4,a4,1
   11610:	00098513          	mv	a0,s3
   11614:	00e4a223          	sw	a4,4(s1)
   11618:	45c000ef          	jal	11a74 <__malloc_unlock>
   1161c:	02c12083          	lw	ra,44(sp)
   11620:	00840513          	add	a0,s0,8
   11624:	02812403          	lw	s0,40(sp)
   11628:	01012b03          	lw	s6,16(sp)
   1162c:	02412483          	lw	s1,36(sp)
   11630:	02012903          	lw	s2,32(sp)
   11634:	01c12983          	lw	s3,28(sp)
   11638:	03010113          	add	sp,sp,48
   1163c:	00008067          	ret
   11640:	00492503          	lw	a0,4(s2)
   11644:	e09ff06f          	j	1144c <_malloc_r+0x198>
   11648:	00842603          	lw	a2,8(s0)
   1164c:	cd1ff06f          	j	1131c <_malloc_r+0x68>
   11650:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffeb59c>
   11654:	00258593          	add	a1,a1,2
   11658:	d88780e3          	beq	a5,s0,113d8 <_malloc_r+0x124>
   1165c:	cb1ff06f          	j	1130c <_malloc_r+0x58>
   11660:	0097d713          	srl	a4,a5,0x9
   11664:	00400693          	li	a3,4
   11668:	14e6f263          	bgeu	a3,a4,117ac <_malloc_r+0x4f8>
   1166c:	01400693          	li	a3,20
   11670:	32e6e463          	bltu	a3,a4,11998 <_malloc_r+0x6e4>
   11674:	05c70613          	add	a2,a4,92
   11678:	05b70693          	add	a3,a4,91
   1167c:	00361613          	sll	a2,a2,0x3
   11680:	00c90633          	add	a2,s2,a2
   11684:	00062703          	lw	a4,0(a2)
   11688:	ff860613          	add	a2,a2,-8
   1168c:	00e61863          	bne	a2,a4,1169c <_malloc_r+0x3e8>
   11690:	2940006f          	j	11924 <_malloc_r+0x670>
   11694:	00872703          	lw	a4,8(a4)
   11698:	00e60863          	beq	a2,a4,116a8 <_malloc_r+0x3f4>
   1169c:	00472683          	lw	a3,4(a4)
   116a0:	ffc6f693          	and	a3,a3,-4
   116a4:	fed7e8e3          	bltu	a5,a3,11694 <_malloc_r+0x3e0>
   116a8:	00c72603          	lw	a2,12(a4)
   116ac:	00c42623          	sw	a2,12(s0)
   116b0:	00e42423          	sw	a4,8(s0)
   116b4:	00862423          	sw	s0,8(a2)
   116b8:	00872623          	sw	s0,12(a4)
   116bc:	d91ff06f          	j	1144c <_malloc_r+0x198>
   116c0:	01400713          	li	a4,20
   116c4:	10f77863          	bgeu	a4,a5,117d4 <_malloc_r+0x520>
   116c8:	05400713          	li	a4,84
   116cc:	2ef76463          	bltu	a4,a5,119b4 <_malloc_r+0x700>
   116d0:	00c4d793          	srl	a5,s1,0xc
   116d4:	06f78593          	add	a1,a5,111
   116d8:	06e78813          	add	a6,a5,110
   116dc:	00359613          	sll	a2,a1,0x3
   116e0:	cb5ff06f          	j	11394 <_malloc_r+0xe0>
   116e4:	001e0e13          	add	t3,t3,1
   116e8:	003e7793          	and	a5,t3,3
   116ec:	00850513          	add	a0,a0,8
   116f0:	10078063          	beqz	a5,117f0 <_malloc_r+0x53c>
   116f4:	00c52783          	lw	a5,12(a0)
   116f8:	da9ff06f          	j	114a0 <_malloc_r+0x1ec>
   116fc:	00842603          	lw	a2,8(s0)
   11700:	0014e593          	or	a1,s1,1
   11704:	00b42223          	sw	a1,4(s0)
   11708:	00f62623          	sw	a5,12(a2)
   1170c:	00c7a423          	sw	a2,8(a5)
   11710:	009404b3          	add	s1,s0,s1
   11714:	00992a23          	sw	s1,20(s2)
   11718:	00992823          	sw	s1,16(s2)
   1171c:	0016e793          	or	a5,a3,1
   11720:	0104a623          	sw	a6,12(s1)
   11724:	0104a423          	sw	a6,8(s1)
   11728:	00f4a223          	sw	a5,4(s1)
   1172c:	00e40733          	add	a4,s0,a4
   11730:	00098513          	mv	a0,s3
   11734:	00d72023          	sw	a3,0(a4)
   11738:	33c000ef          	jal	11a74 <__malloc_unlock>
   1173c:	00840513          	add	a0,s0,8
   11740:	c01ff06f          	j	11340 <_malloc_r+0x8c>
   11744:	00f407b3          	add	a5,s0,a5
   11748:	0047a703          	lw	a4,4(a5)
   1174c:	00098513          	mv	a0,s3
   11750:	00176713          	or	a4,a4,1
   11754:	00e7a223          	sw	a4,4(a5)
   11758:	31c000ef          	jal	11a74 <__malloc_unlock>
   1175c:	00840513          	add	a0,s0,8
   11760:	be1ff06f          	j	11340 <_malloc_r+0x8c>
   11764:	0034d593          	srl	a1,s1,0x3
   11768:	00848793          	add	a5,s1,8
   1176c:	b89ff06f          	j	112f4 <_malloc_r+0x40>
   11770:	0014e693          	or	a3,s1,1
   11774:	00d42223          	sw	a3,4(s0)
   11778:	009404b3          	add	s1,s0,s1
   1177c:	00992a23          	sw	s1,20(s2)
   11780:	00992823          	sw	s1,16(s2)
   11784:	00176693          	or	a3,a4,1
   11788:	0104a623          	sw	a6,12(s1)
   1178c:	0104a423          	sw	a6,8(s1)
   11790:	00d4a223          	sw	a3,4(s1)
   11794:	00f407b3          	add	a5,s0,a5
   11798:	00098513          	mv	a0,s3
   1179c:	00e7a023          	sw	a4,0(a5)
   117a0:	2d4000ef          	jal	11a74 <__malloc_unlock>
   117a4:	00840513          	add	a0,s0,8
   117a8:	b99ff06f          	j	11340 <_malloc_r+0x8c>
   117ac:	0067d713          	srl	a4,a5,0x6
   117b0:	03970613          	add	a2,a4,57
   117b4:	03870693          	add	a3,a4,56
   117b8:	00361613          	sll	a2,a2,0x3
   117bc:	ec5ff06f          	j	11680 <_malloc_r+0x3cc>
   117c0:	07240c63          	beq	s0,s2,11838 <_malloc_r+0x584>
   117c4:	00892403          	lw	s0,8(s2)
   117c8:	00812c03          	lw	s8,8(sp)
   117cc:	00442783          	lw	a5,4(s0)
   117d0:	e09ff06f          	j	115d8 <_malloc_r+0x324>
   117d4:	05c78593          	add	a1,a5,92
   117d8:	05b78813          	add	a6,a5,91
   117dc:	00359613          	sll	a2,a1,0x3
   117e0:	bb5ff06f          	j	11394 <_malloc_r+0xe0>
   117e4:	00832783          	lw	a5,8(t1)
   117e8:	fff58593          	add	a1,a1,-1
   117ec:	26679e63          	bne	a5,t1,11a68 <_malloc_r+0x7b4>
   117f0:	0035f793          	and	a5,a1,3
   117f4:	ff830313          	add	t1,t1,-8
   117f8:	fe0796e3          	bnez	a5,117e4 <_malloc_r+0x530>
   117fc:	00492703          	lw	a4,4(s2)
   11800:	fff64793          	not	a5,a2
   11804:	00e7f7b3          	and	a5,a5,a4
   11808:	00f92223          	sw	a5,4(s2)
   1180c:	00161613          	sll	a2,a2,0x1
   11810:	cec7eee3          	bltu	a5,a2,1150c <_malloc_r+0x258>
   11814:	ce060ce3          	beqz	a2,1150c <_malloc_r+0x258>
   11818:	00f67733          	and	a4,a2,a5
   1181c:	00071a63          	bnez	a4,11830 <_malloc_r+0x57c>
   11820:	00161613          	sll	a2,a2,0x1
   11824:	00f67733          	and	a4,a2,a5
   11828:	004e0e13          	add	t3,t3,4
   1182c:	fe070ae3          	beqz	a4,11820 <_malloc_r+0x56c>
   11830:	000e0593          	mv	a1,t3
   11834:	c59ff06f          	j	1148c <_malloc_r+0x1d8>
   11838:	ee018c13          	add	s8,gp,-288 # 138b8 <__malloc_current_mallinfo>
   1183c:	000c2703          	lw	a4,0(s8)
   11840:	00ea8733          	add	a4,s5,a4
   11844:	00ec2023          	sw	a4,0(s8)
   11848:	d681a683          	lw	a3,-664(gp) # 13740 <__malloc_sbrk_base>
   1184c:	fff00793          	li	a5,-1
   11850:	18f68663          	beq	a3,a5,119dc <_malloc_r+0x728>
   11854:	414b87b3          	sub	a5,s7,s4
   11858:	00e787b3          	add	a5,a5,a4
   1185c:	00fc2023          	sw	a5,0(s8)
   11860:	007bfc93          	and	s9,s7,7
   11864:	0c0c8c63          	beqz	s9,1193c <_malloc_r+0x688>
   11868:	419b8bb3          	sub	s7,s7,s9
   1186c:	000017b7          	lui	a5,0x1
   11870:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   11874:	008b8b93          	add	s7,s7,8
   11878:	419785b3          	sub	a1,a5,s9
   1187c:	015b8ab3          	add	s5,s7,s5
   11880:	415585b3          	sub	a1,a1,s5
   11884:	01459593          	sll	a1,a1,0x14
   11888:	0145da13          	srl	s4,a1,0x14
   1188c:	000a0593          	mv	a1,s4
   11890:	00098513          	mv	a0,s3
   11894:	624000ef          	jal	11eb8 <_sbrk_r>
   11898:	fff00793          	li	a5,-1
   1189c:	18f50063          	beq	a0,a5,11a1c <_malloc_r+0x768>
   118a0:	41750533          	sub	a0,a0,s7
   118a4:	01450ab3          	add	s5,a0,s4
   118a8:	000c2703          	lw	a4,0(s8)
   118ac:	01792423          	sw	s7,8(s2)
   118b0:	001ae793          	or	a5,s5,1
   118b4:	00ea05b3          	add	a1,s4,a4
   118b8:	00bc2023          	sw	a1,0(s8)
   118bc:	00fba223          	sw	a5,4(s7)
   118c0:	cf240ce3          	beq	s0,s2,115b8 <_malloc_r+0x304>
   118c4:	00f00693          	li	a3,15
   118c8:	0b66f063          	bgeu	a3,s6,11968 <_malloc_r+0x6b4>
   118cc:	00442703          	lw	a4,4(s0)
   118d0:	ff4b0793          	add	a5,s6,-12
   118d4:	ff87f793          	and	a5,a5,-8
   118d8:	00177713          	and	a4,a4,1
   118dc:	00f76733          	or	a4,a4,a5
   118e0:	00e42223          	sw	a4,4(s0)
   118e4:	00500613          	li	a2,5
   118e8:	00f40733          	add	a4,s0,a5
   118ec:	00c72223          	sw	a2,4(a4)
   118f0:	00c72423          	sw	a2,8(a4)
   118f4:	00f6e663          	bltu	a3,a5,11900 <_malloc_r+0x64c>
   118f8:	004ba783          	lw	a5,4(s7)
   118fc:	cbdff06f          	j	115b8 <_malloc_r+0x304>
   11900:	00840593          	add	a1,s0,8
   11904:	00098513          	mv	a0,s3
   11908:	ea8ff0ef          	jal	10fb0 <_free_r>
   1190c:	00892b83          	lw	s7,8(s2)
   11910:	000c2583          	lw	a1,0(s8)
   11914:	004ba783          	lw	a5,4(s7)
   11918:	ca1ff06f          	j	115b8 <_malloc_r+0x304>
   1191c:	010a8a93          	add	s5,s5,16
   11920:	c49ff06f          	j	11568 <_malloc_r+0x2b4>
   11924:	4026d693          	sra	a3,a3,0x2
   11928:	00100793          	li	a5,1
   1192c:	00d797b3          	sll	a5,a5,a3
   11930:	00f56533          	or	a0,a0,a5
   11934:	00a92223          	sw	a0,4(s2)
   11938:	d75ff06f          	j	116ac <_malloc_r+0x3f8>
   1193c:	015b85b3          	add	a1,s7,s5
   11940:	40b005b3          	neg	a1,a1
   11944:	01459593          	sll	a1,a1,0x14
   11948:	0145da13          	srl	s4,a1,0x14
   1194c:	000a0593          	mv	a1,s4
   11950:	00098513          	mv	a0,s3
   11954:	564000ef          	jal	11eb8 <_sbrk_r>
   11958:	fff00793          	li	a5,-1
   1195c:	f4f512e3          	bne	a0,a5,118a0 <_malloc_r+0x5ec>
   11960:	00000a13          	li	s4,0
   11964:	f45ff06f          	j	118a8 <_malloc_r+0x5f4>
   11968:	00812c03          	lw	s8,8(sp)
   1196c:	00100793          	li	a5,1
   11970:	00fba223          	sw	a5,4(s7)
   11974:	00098513          	mv	a0,s3
   11978:	0fc000ef          	jal	11a74 <__malloc_unlock>
   1197c:	00000513          	li	a0,0
   11980:	01812a03          	lw	s4,24(sp)
   11984:	01412a83          	lw	s5,20(sp)
   11988:	01012b03          	lw	s6,16(sp)
   1198c:	00c12b83          	lw	s7,12(sp)
   11990:	00412c83          	lw	s9,4(sp)
   11994:	9adff06f          	j	11340 <_malloc_r+0x8c>
   11998:	05400693          	li	a3,84
   1199c:	04e6e463          	bltu	a3,a4,119e4 <_malloc_r+0x730>
   119a0:	00c7d713          	srl	a4,a5,0xc
   119a4:	06f70613          	add	a2,a4,111
   119a8:	06e70693          	add	a3,a4,110
   119ac:	00361613          	sll	a2,a2,0x3
   119b0:	cd1ff06f          	j	11680 <_malloc_r+0x3cc>
   119b4:	15400713          	li	a4,340
   119b8:	04f76463          	bltu	a4,a5,11a00 <_malloc_r+0x74c>
   119bc:	00f4d793          	srl	a5,s1,0xf
   119c0:	07878593          	add	a1,a5,120
   119c4:	07778813          	add	a6,a5,119
   119c8:	00359613          	sll	a2,a1,0x3
   119cc:	9c9ff06f          	j	11394 <_malloc_r+0xe0>
   119d0:	00892403          	lw	s0,8(s2)
   119d4:	00442783          	lw	a5,4(s0)
   119d8:	c01ff06f          	j	115d8 <_malloc_r+0x324>
   119dc:	d771a423          	sw	s7,-664(gp) # 13740 <__malloc_sbrk_base>
   119e0:	e81ff06f          	j	11860 <_malloc_r+0x5ac>
   119e4:	15400693          	li	a3,340
   119e8:	04e6e463          	bltu	a3,a4,11a30 <_malloc_r+0x77c>
   119ec:	00f7d713          	srl	a4,a5,0xf
   119f0:	07870613          	add	a2,a4,120
   119f4:	07770693          	add	a3,a4,119
   119f8:	00361613          	sll	a2,a2,0x3
   119fc:	c85ff06f          	j	11680 <_malloc_r+0x3cc>
   11a00:	55400713          	li	a4,1364
   11a04:	04f76463          	bltu	a4,a5,11a4c <_malloc_r+0x798>
   11a08:	0124d793          	srl	a5,s1,0x12
   11a0c:	07d78593          	add	a1,a5,125
   11a10:	07c78813          	add	a6,a5,124
   11a14:	00359613          	sll	a2,a1,0x3
   11a18:	97dff06f          	j	11394 <_malloc_r+0xe0>
   11a1c:	ff8c8c93          	add	s9,s9,-8
   11a20:	019a8ab3          	add	s5,s5,s9
   11a24:	417a8ab3          	sub	s5,s5,s7
   11a28:	00000a13          	li	s4,0
   11a2c:	e7dff06f          	j	118a8 <_malloc_r+0x5f4>
   11a30:	55400693          	li	a3,1364
   11a34:	02e6e463          	bltu	a3,a4,11a5c <_malloc_r+0x7a8>
   11a38:	0127d713          	srl	a4,a5,0x12
   11a3c:	07d70613          	add	a2,a4,125
   11a40:	07c70693          	add	a3,a4,124
   11a44:	00361613          	sll	a2,a2,0x3
   11a48:	c39ff06f          	j	11680 <_malloc_r+0x3cc>
   11a4c:	3f800613          	li	a2,1016
   11a50:	07f00593          	li	a1,127
   11a54:	07e00813          	li	a6,126
   11a58:	93dff06f          	j	11394 <_malloc_r+0xe0>
   11a5c:	3f800613          	li	a2,1016
   11a60:	07e00693          	li	a3,126
   11a64:	c1dff06f          	j	11680 <_malloc_r+0x3cc>
   11a68:	00492783          	lw	a5,4(s2)
   11a6c:	da1ff06f          	j	1180c <_malloc_r+0x558>

00011a70 <__malloc_lock>:
   11a70:	00008067          	ret

00011a74 <__malloc_unlock>:
   11a74:	00008067          	ret

00011a78 <_fclose_r>:
   11a78:	ff010113          	add	sp,sp,-16
   11a7c:	00112623          	sw	ra,12(sp)
   11a80:	01212023          	sw	s2,0(sp)
   11a84:	02058863          	beqz	a1,11ab4 <_fclose_r+0x3c>
   11a88:	00812423          	sw	s0,8(sp)
   11a8c:	00912223          	sw	s1,4(sp)
   11a90:	00058413          	mv	s0,a1
   11a94:	00050493          	mv	s1,a0
   11a98:	00050663          	beqz	a0,11aa4 <_fclose_r+0x2c>
   11a9c:	03452783          	lw	a5,52(a0)
   11aa0:	0c078c63          	beqz	a5,11b78 <_fclose_r+0x100>
   11aa4:	00c41783          	lh	a5,12(s0)
   11aa8:	02079263          	bnez	a5,11acc <_fclose_r+0x54>
   11aac:	00812403          	lw	s0,8(sp)
   11ab0:	00412483          	lw	s1,4(sp)
   11ab4:	00c12083          	lw	ra,12(sp)
   11ab8:	00000913          	li	s2,0
   11abc:	00090513          	mv	a0,s2
   11ac0:	00012903          	lw	s2,0(sp)
   11ac4:	01010113          	add	sp,sp,16
   11ac8:	00008067          	ret
   11acc:	00040593          	mv	a1,s0
   11ad0:	00048513          	mv	a0,s1
   11ad4:	0b8000ef          	jal	11b8c <__sflush_r>
   11ad8:	02c42783          	lw	a5,44(s0)
   11adc:	00050913          	mv	s2,a0
   11ae0:	00078a63          	beqz	a5,11af4 <_fclose_r+0x7c>
   11ae4:	01c42583          	lw	a1,28(s0)
   11ae8:	00048513          	mv	a0,s1
   11aec:	000780e7          	jalr	a5
   11af0:	06054463          	bltz	a0,11b58 <_fclose_r+0xe0>
   11af4:	00c45783          	lhu	a5,12(s0)
   11af8:	0807f793          	and	a5,a5,128
   11afc:	06079663          	bnez	a5,11b68 <_fclose_r+0xf0>
   11b00:	03042583          	lw	a1,48(s0)
   11b04:	00058c63          	beqz	a1,11b1c <_fclose_r+0xa4>
   11b08:	04040793          	add	a5,s0,64
   11b0c:	00f58663          	beq	a1,a5,11b18 <_fclose_r+0xa0>
   11b10:	00048513          	mv	a0,s1
   11b14:	c9cff0ef          	jal	10fb0 <_free_r>
   11b18:	02042823          	sw	zero,48(s0)
   11b1c:	04442583          	lw	a1,68(s0)
   11b20:	00058863          	beqz	a1,11b30 <_fclose_r+0xb8>
   11b24:	00048513          	mv	a0,s1
   11b28:	c88ff0ef          	jal	10fb0 <_free_r>
   11b2c:	04042223          	sw	zero,68(s0)
   11b30:	be1fe0ef          	jal	10710 <__sfp_lock_acquire>
   11b34:	00041623          	sh	zero,12(s0)
   11b38:	bddfe0ef          	jal	10714 <__sfp_lock_release>
   11b3c:	00c12083          	lw	ra,12(sp)
   11b40:	00812403          	lw	s0,8(sp)
   11b44:	00412483          	lw	s1,4(sp)
   11b48:	00090513          	mv	a0,s2
   11b4c:	00012903          	lw	s2,0(sp)
   11b50:	01010113          	add	sp,sp,16
   11b54:	00008067          	ret
   11b58:	00c45783          	lhu	a5,12(s0)
   11b5c:	fff00913          	li	s2,-1
   11b60:	0807f793          	and	a5,a5,128
   11b64:	f8078ee3          	beqz	a5,11b00 <_fclose_r+0x88>
   11b68:	01042583          	lw	a1,16(s0)
   11b6c:	00048513          	mv	a0,s1
   11b70:	c40ff0ef          	jal	10fb0 <_free_r>
   11b74:	f8dff06f          	j	11b00 <_fclose_r+0x88>
   11b78:	b75fe0ef          	jal	106ec <__sinit>
   11b7c:	f29ff06f          	j	11aa4 <_fclose_r+0x2c>

00011b80 <fclose>:
   11b80:	00050593          	mv	a1,a0
   11b84:	d641a503          	lw	a0,-668(gp) # 1373c <_impure_ptr>
   11b88:	ef1ff06f          	j	11a78 <_fclose_r>

00011b8c <__sflush_r>:
   11b8c:	00c59703          	lh	a4,12(a1)
   11b90:	fe010113          	add	sp,sp,-32
   11b94:	00812c23          	sw	s0,24(sp)
   11b98:	01312623          	sw	s3,12(sp)
   11b9c:	00112e23          	sw	ra,28(sp)
   11ba0:	00877793          	and	a5,a4,8
   11ba4:	00058413          	mv	s0,a1
   11ba8:	00050993          	mv	s3,a0
   11bac:	12079063          	bnez	a5,11ccc <__sflush_r+0x140>
   11bb0:	000017b7          	lui	a5,0x1
   11bb4:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   11bb8:	0045a683          	lw	a3,4(a1)
   11bbc:	00f767b3          	or	a5,a4,a5
   11bc0:	00f59623          	sh	a5,12(a1)
   11bc4:	18d05263          	blez	a3,11d48 <__sflush_r+0x1bc>
   11bc8:	02842803          	lw	a6,40(s0)
   11bcc:	0e080463          	beqz	a6,11cb4 <__sflush_r+0x128>
   11bd0:	00912a23          	sw	s1,20(sp)
   11bd4:	01371693          	sll	a3,a4,0x13
   11bd8:	0009a483          	lw	s1,0(s3)
   11bdc:	0009a023          	sw	zero,0(s3)
   11be0:	01c42583          	lw	a1,28(s0)
   11be4:	1606ce63          	bltz	a3,11d60 <__sflush_r+0x1d4>
   11be8:	00000613          	li	a2,0
   11bec:	00100693          	li	a3,1
   11bf0:	00098513          	mv	a0,s3
   11bf4:	000800e7          	jalr	a6
   11bf8:	fff00793          	li	a5,-1
   11bfc:	00050613          	mv	a2,a0
   11c00:	1af50463          	beq	a0,a5,11da8 <__sflush_r+0x21c>
   11c04:	00c41783          	lh	a5,12(s0)
   11c08:	02842803          	lw	a6,40(s0)
   11c0c:	01c42583          	lw	a1,28(s0)
   11c10:	0047f793          	and	a5,a5,4
   11c14:	00078e63          	beqz	a5,11c30 <__sflush_r+0xa4>
   11c18:	00442703          	lw	a4,4(s0)
   11c1c:	03042783          	lw	a5,48(s0)
   11c20:	40e60633          	sub	a2,a2,a4
   11c24:	00078663          	beqz	a5,11c30 <__sflush_r+0xa4>
   11c28:	03c42783          	lw	a5,60(s0)
   11c2c:	40f60633          	sub	a2,a2,a5
   11c30:	00000693          	li	a3,0
   11c34:	00098513          	mv	a0,s3
   11c38:	000800e7          	jalr	a6
   11c3c:	fff00793          	li	a5,-1
   11c40:	12f51463          	bne	a0,a5,11d68 <__sflush_r+0x1dc>
   11c44:	0009a683          	lw	a3,0(s3)
   11c48:	01d00793          	li	a5,29
   11c4c:	00c41703          	lh	a4,12(s0)
   11c50:	16d7ea63          	bltu	a5,a3,11dc4 <__sflush_r+0x238>
   11c54:	204007b7          	lui	a5,0x20400
   11c58:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203ec591>
   11c5c:	00d7d7b3          	srl	a5,a5,a3
   11c60:	0017f793          	and	a5,a5,1
   11c64:	16078063          	beqz	a5,11dc4 <__sflush_r+0x238>
   11c68:	01042603          	lw	a2,16(s0)
   11c6c:	fffff7b7          	lui	a5,0xfffff
   11c70:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebd8f>
   11c74:	00f777b3          	and	a5,a4,a5
   11c78:	00f41623          	sh	a5,12(s0)
   11c7c:	00042223          	sw	zero,4(s0)
   11c80:	00c42023          	sw	a2,0(s0)
   11c84:	01371793          	sll	a5,a4,0x13
   11c88:	0007d463          	bgez	a5,11c90 <__sflush_r+0x104>
   11c8c:	10068263          	beqz	a3,11d90 <__sflush_r+0x204>
   11c90:	03042583          	lw	a1,48(s0)
   11c94:	0099a023          	sw	s1,0(s3)
   11c98:	10058463          	beqz	a1,11da0 <__sflush_r+0x214>
   11c9c:	04040793          	add	a5,s0,64
   11ca0:	00f58663          	beq	a1,a5,11cac <__sflush_r+0x120>
   11ca4:	00098513          	mv	a0,s3
   11ca8:	b08ff0ef          	jal	10fb0 <_free_r>
   11cac:	01412483          	lw	s1,20(sp)
   11cb0:	02042823          	sw	zero,48(s0)
   11cb4:	00000513          	li	a0,0
   11cb8:	01c12083          	lw	ra,28(sp)
   11cbc:	01812403          	lw	s0,24(sp)
   11cc0:	00c12983          	lw	s3,12(sp)
   11cc4:	02010113          	add	sp,sp,32
   11cc8:	00008067          	ret
   11ccc:	01212823          	sw	s2,16(sp)
   11cd0:	0105a903          	lw	s2,16(a1)
   11cd4:	08090263          	beqz	s2,11d58 <__sflush_r+0x1cc>
   11cd8:	00912a23          	sw	s1,20(sp)
   11cdc:	0005a483          	lw	s1,0(a1)
   11ce0:	00377713          	and	a4,a4,3
   11ce4:	0125a023          	sw	s2,0(a1)
   11ce8:	412484b3          	sub	s1,s1,s2
   11cec:	00000793          	li	a5,0
   11cf0:	00071463          	bnez	a4,11cf8 <__sflush_r+0x16c>
   11cf4:	0145a783          	lw	a5,20(a1)
   11cf8:	00f42423          	sw	a5,8(s0)
   11cfc:	00904863          	bgtz	s1,11d0c <__sflush_r+0x180>
   11d00:	0540006f          	j	11d54 <__sflush_r+0x1c8>
   11d04:	00a90933          	add	s2,s2,a0
   11d08:	04905663          	blez	s1,11d54 <__sflush_r+0x1c8>
   11d0c:	02442783          	lw	a5,36(s0)
   11d10:	01c42583          	lw	a1,28(s0)
   11d14:	00048693          	mv	a3,s1
   11d18:	00090613          	mv	a2,s2
   11d1c:	00098513          	mv	a0,s3
   11d20:	000780e7          	jalr	a5
   11d24:	40a484b3          	sub	s1,s1,a0
   11d28:	fca04ee3          	bgtz	a0,11d04 <__sflush_r+0x178>
   11d2c:	00c41703          	lh	a4,12(s0)
   11d30:	01012903          	lw	s2,16(sp)
   11d34:	04076713          	or	a4,a4,64
   11d38:	01412483          	lw	s1,20(sp)
   11d3c:	00e41623          	sh	a4,12(s0)
   11d40:	fff00513          	li	a0,-1
   11d44:	f75ff06f          	j	11cb8 <__sflush_r+0x12c>
   11d48:	03c5a683          	lw	a3,60(a1)
   11d4c:	e6d04ee3          	bgtz	a3,11bc8 <__sflush_r+0x3c>
   11d50:	f65ff06f          	j	11cb4 <__sflush_r+0x128>
   11d54:	01412483          	lw	s1,20(sp)
   11d58:	01012903          	lw	s2,16(sp)
   11d5c:	f59ff06f          	j	11cb4 <__sflush_r+0x128>
   11d60:	05042603          	lw	a2,80(s0)
   11d64:	eadff06f          	j	11c10 <__sflush_r+0x84>
   11d68:	00c41703          	lh	a4,12(s0)
   11d6c:	01042683          	lw	a3,16(s0)
   11d70:	fffff7b7          	lui	a5,0xfffff
   11d74:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebd8f>
   11d78:	00f777b3          	and	a5,a4,a5
   11d7c:	00f41623          	sh	a5,12(s0)
   11d80:	00042223          	sw	zero,4(s0)
   11d84:	00d42023          	sw	a3,0(s0)
   11d88:	01371793          	sll	a5,a4,0x13
   11d8c:	f007d2e3          	bgez	a5,11c90 <__sflush_r+0x104>
   11d90:	03042583          	lw	a1,48(s0)
   11d94:	04a42823          	sw	a0,80(s0)
   11d98:	0099a023          	sw	s1,0(s3)
   11d9c:	f00590e3          	bnez	a1,11c9c <__sflush_r+0x110>
   11da0:	01412483          	lw	s1,20(sp)
   11da4:	f11ff06f          	j	11cb4 <__sflush_r+0x128>
   11da8:	0009a783          	lw	a5,0(s3)
   11dac:	e4078ce3          	beqz	a5,11c04 <__sflush_r+0x78>
   11db0:	01d00713          	li	a4,29
   11db4:	00e78c63          	beq	a5,a4,11dcc <__sflush_r+0x240>
   11db8:	01600713          	li	a4,22
   11dbc:	00e78863          	beq	a5,a4,11dcc <__sflush_r+0x240>
   11dc0:	00c41703          	lh	a4,12(s0)
   11dc4:	04076713          	or	a4,a4,64
   11dc8:	f71ff06f          	j	11d38 <__sflush_r+0x1ac>
   11dcc:	0099a023          	sw	s1,0(s3)
   11dd0:	01412483          	lw	s1,20(sp)
   11dd4:	ee1ff06f          	j	11cb4 <__sflush_r+0x128>

00011dd8 <_fflush_r>:
   11dd8:	fe010113          	add	sp,sp,-32
   11ddc:	00812c23          	sw	s0,24(sp)
   11de0:	00112e23          	sw	ra,28(sp)
   11de4:	00050413          	mv	s0,a0
   11de8:	00050663          	beqz	a0,11df4 <_fflush_r+0x1c>
   11dec:	03452783          	lw	a5,52(a0)
   11df0:	02078a63          	beqz	a5,11e24 <_fflush_r+0x4c>
   11df4:	00c59783          	lh	a5,12(a1)
   11df8:	00079c63          	bnez	a5,11e10 <_fflush_r+0x38>
   11dfc:	01c12083          	lw	ra,28(sp)
   11e00:	01812403          	lw	s0,24(sp)
   11e04:	00000513          	li	a0,0
   11e08:	02010113          	add	sp,sp,32
   11e0c:	00008067          	ret
   11e10:	00040513          	mv	a0,s0
   11e14:	01812403          	lw	s0,24(sp)
   11e18:	01c12083          	lw	ra,28(sp)
   11e1c:	02010113          	add	sp,sp,32
   11e20:	d6dff06f          	j	11b8c <__sflush_r>
   11e24:	00b12623          	sw	a1,12(sp)
   11e28:	8c5fe0ef          	jal	106ec <__sinit>
   11e2c:	00c12583          	lw	a1,12(sp)
   11e30:	fc5ff06f          	j	11df4 <_fflush_r+0x1c>

00011e34 <fflush>:
   11e34:	06050063          	beqz	a0,11e94 <fflush+0x60>
   11e38:	00050593          	mv	a1,a0
   11e3c:	d641a503          	lw	a0,-668(gp) # 1373c <_impure_ptr>
   11e40:	00050663          	beqz	a0,11e4c <fflush+0x18>
   11e44:	03452783          	lw	a5,52(a0)
   11e48:	00078c63          	beqz	a5,11e60 <fflush+0x2c>
   11e4c:	00c59783          	lh	a5,12(a1)
   11e50:	00079663          	bnez	a5,11e5c <fflush+0x28>
   11e54:	00000513          	li	a0,0
   11e58:	00008067          	ret
   11e5c:	d31ff06f          	j	11b8c <__sflush_r>
   11e60:	fe010113          	add	sp,sp,-32
   11e64:	00b12623          	sw	a1,12(sp)
   11e68:	00a12423          	sw	a0,8(sp)
   11e6c:	00112e23          	sw	ra,28(sp)
   11e70:	87dfe0ef          	jal	106ec <__sinit>
   11e74:	00c12583          	lw	a1,12(sp)
   11e78:	00812503          	lw	a0,8(sp)
   11e7c:	00c59783          	lh	a5,12(a1)
   11e80:	02079663          	bnez	a5,11eac <fflush+0x78>
   11e84:	01c12083          	lw	ra,28(sp)
   11e88:	00000513          	li	a0,0
   11e8c:	02010113          	add	sp,sp,32
   11e90:	00008067          	ret
   11e94:	000125b7          	lui	a1,0x12
   11e98:	00013537          	lui	a0,0x13
   11e9c:	82818613          	add	a2,gp,-2008 # 13200 <__sglue>
   11ea0:	dd858593          	add	a1,a1,-552 # 11dd8 <_fflush_r>
   11ea4:	21050513          	add	a0,a0,528 # 13210 <_impure_data>
   11ea8:	899fe06f          	j	10740 <_fwalk_sglue>
   11eac:	01c12083          	lw	ra,28(sp)
   11eb0:	02010113          	add	sp,sp,32
   11eb4:	cd9ff06f          	j	11b8c <__sflush_r>

00011eb8 <_sbrk_r>:
   11eb8:	ff010113          	add	sp,sp,-16
   11ebc:	00812423          	sw	s0,8(sp)
   11ec0:	00912223          	sw	s1,4(sp)
   11ec4:	00050413          	mv	s0,a0
   11ec8:	00058513          	mv	a0,a1
   11ecc:	00112623          	sw	ra,12(sp)
   11ed0:	d601aa23          	sw	zero,-652(gp) # 1374c <errno>
   11ed4:	230000ef          	jal	12104 <_sbrk>
   11ed8:	fff00793          	li	a5,-1
   11edc:	00f50c63          	beq	a0,a5,11ef4 <_sbrk_r+0x3c>
   11ee0:	00c12083          	lw	ra,12(sp)
   11ee4:	00812403          	lw	s0,8(sp)
   11ee8:	00412483          	lw	s1,4(sp)
   11eec:	01010113          	add	sp,sp,16
   11ef0:	00008067          	ret
   11ef4:	d741a783          	lw	a5,-652(gp) # 1374c <errno>
   11ef8:	fe0784e3          	beqz	a5,11ee0 <_sbrk_r+0x28>
   11efc:	00c12083          	lw	ra,12(sp)
   11f00:	00f42023          	sw	a5,0(s0)
   11f04:	00812403          	lw	s0,8(sp)
   11f08:	00412483          	lw	s1,4(sp)
   11f0c:	01010113          	add	sp,sp,16
   11f10:	00008067          	ret

00011f14 <__libc_fini_array>:
   11f14:	ff010113          	add	sp,sp,-16
   11f18:	00812423          	sw	s0,8(sp)
   11f1c:	000137b7          	lui	a5,0x13
   11f20:	00013437          	lui	s0,0x13
   11f24:	1d478793          	add	a5,a5,468 # 131d4 <__do_global_dtors_aux_fini_array_entry>
   11f28:	1d840413          	add	s0,s0,472 # 131d8 <result>
   11f2c:	40f40433          	sub	s0,s0,a5
   11f30:	00912223          	sw	s1,4(sp)
   11f34:	00112623          	sw	ra,12(sp)
   11f38:	40245493          	sra	s1,s0,0x2
   11f3c:	02048063          	beqz	s1,11f5c <__libc_fini_array+0x48>
   11f40:	ffc40413          	add	s0,s0,-4
   11f44:	00f40433          	add	s0,s0,a5
   11f48:	00042783          	lw	a5,0(s0)
   11f4c:	fff48493          	add	s1,s1,-1
   11f50:	ffc40413          	add	s0,s0,-4
   11f54:	000780e7          	jalr	a5
   11f58:	fe0498e3          	bnez	s1,11f48 <__libc_fini_array+0x34>
   11f5c:	00c12083          	lw	ra,12(sp)
   11f60:	00812403          	lw	s0,8(sp)
   11f64:	00412483          	lw	s1,4(sp)
   11f68:	01010113          	add	sp,sp,16
   11f6c:	00008067          	ret

00011f70 <__register_exitproc>:
   11f70:	d781a783          	lw	a5,-648(gp) # 13750 <__atexit>
   11f74:	04078c63          	beqz	a5,11fcc <__register_exitproc+0x5c>
   11f78:	0047a703          	lw	a4,4(a5)
   11f7c:	01f00813          	li	a6,31
   11f80:	08e84063          	blt	a6,a4,12000 <__register_exitproc+0x90>
   11f84:	00271813          	sll	a6,a4,0x2
   11f88:	02050663          	beqz	a0,11fb4 <__register_exitproc+0x44>
   11f8c:	01078333          	add	t1,a5,a6
   11f90:	08c32423          	sw	a2,136(t1)
   11f94:	1887a883          	lw	a7,392(a5)
   11f98:	00100613          	li	a2,1
   11f9c:	00e61633          	sll	a2,a2,a4
   11fa0:	00c8e8b3          	or	a7,a7,a2
   11fa4:	1917a423          	sw	a7,392(a5)
   11fa8:	10d32423          	sw	a3,264(t1)
   11fac:	00200693          	li	a3,2
   11fb0:	02d50663          	beq	a0,a3,11fdc <__register_exitproc+0x6c>
   11fb4:	00170713          	add	a4,a4,1
   11fb8:	00e7a223          	sw	a4,4(a5)
   11fbc:	010787b3          	add	a5,a5,a6
   11fc0:	00b7a423          	sw	a1,8(a5)
   11fc4:	00000513          	li	a0,0
   11fc8:	00008067          	ret
   11fcc:	f0818813          	add	a6,gp,-248 # 138e0 <__atexit0>
   11fd0:	d701ac23          	sw	a6,-648(gp) # 13750 <__atexit>
   11fd4:	f0818793          	add	a5,gp,-248 # 138e0 <__atexit0>
   11fd8:	fa1ff06f          	j	11f78 <__register_exitproc+0x8>
   11fdc:	18c7a683          	lw	a3,396(a5)
   11fe0:	00170713          	add	a4,a4,1
   11fe4:	00e7a223          	sw	a4,4(a5)
   11fe8:	00c6e6b3          	or	a3,a3,a2
   11fec:	18d7a623          	sw	a3,396(a5)
   11ff0:	010787b3          	add	a5,a5,a6
   11ff4:	00b7a423          	sw	a1,8(a5)
   11ff8:	00000513          	li	a0,0
   11ffc:	00008067          	ret
   12000:	fff00513          	li	a0,-1
   12004:	00008067          	ret

00012008 <_close>:
   12008:	ff010113          	add	sp,sp,-16
   1200c:	00112623          	sw	ra,12(sp)
   12010:	00812423          	sw	s0,8(sp)
   12014:	03900893          	li	a7,57
   12018:	00000073          	ecall
   1201c:	00050413          	mv	s0,a0
   12020:	00054c63          	bltz	a0,12038 <_close+0x30>
   12024:	00c12083          	lw	ra,12(sp)
   12028:	00040513          	mv	a0,s0
   1202c:	00812403          	lw	s0,8(sp)
   12030:	01010113          	add	sp,sp,16
   12034:	00008067          	ret
   12038:	40800433          	neg	s0,s0
   1203c:	184000ef          	jal	121c0 <__errno>
   12040:	00852023          	sw	s0,0(a0)
   12044:	fff00413          	li	s0,-1
   12048:	fddff06f          	j	12024 <_close+0x1c>

0001204c <_exit>:
   1204c:	05d00893          	li	a7,93
   12050:	00000073          	ecall
   12054:	00054463          	bltz	a0,1205c <_exit+0x10>
   12058:	0000006f          	j	12058 <_exit+0xc>
   1205c:	ff010113          	add	sp,sp,-16
   12060:	00812423          	sw	s0,8(sp)
   12064:	00050413          	mv	s0,a0
   12068:	00112623          	sw	ra,12(sp)
   1206c:	40800433          	neg	s0,s0
   12070:	150000ef          	jal	121c0 <__errno>
   12074:	00852023          	sw	s0,0(a0)
   12078:	0000006f          	j	12078 <_exit+0x2c>

0001207c <_lseek>:
   1207c:	ff010113          	add	sp,sp,-16
   12080:	00112623          	sw	ra,12(sp)
   12084:	00812423          	sw	s0,8(sp)
   12088:	03e00893          	li	a7,62
   1208c:	00000073          	ecall
   12090:	00050413          	mv	s0,a0
   12094:	00054c63          	bltz	a0,120ac <_lseek+0x30>
   12098:	00c12083          	lw	ra,12(sp)
   1209c:	00040513          	mv	a0,s0
   120a0:	00812403          	lw	s0,8(sp)
   120a4:	01010113          	add	sp,sp,16
   120a8:	00008067          	ret
   120ac:	40800433          	neg	s0,s0
   120b0:	110000ef          	jal	121c0 <__errno>
   120b4:	00852023          	sw	s0,0(a0)
   120b8:	fff00413          	li	s0,-1
   120bc:	fddff06f          	j	12098 <_lseek+0x1c>

000120c0 <_read>:
   120c0:	ff010113          	add	sp,sp,-16
   120c4:	00112623          	sw	ra,12(sp)
   120c8:	00812423          	sw	s0,8(sp)
   120cc:	03f00893          	li	a7,63
   120d0:	00000073          	ecall
   120d4:	00050413          	mv	s0,a0
   120d8:	00054c63          	bltz	a0,120f0 <_read+0x30>
   120dc:	00c12083          	lw	ra,12(sp)
   120e0:	00040513          	mv	a0,s0
   120e4:	00812403          	lw	s0,8(sp)
   120e8:	01010113          	add	sp,sp,16
   120ec:	00008067          	ret
   120f0:	40800433          	neg	s0,s0
   120f4:	0cc000ef          	jal	121c0 <__errno>
   120f8:	00852023          	sw	s0,0(a0)
   120fc:	fff00413          	li	s0,-1
   12100:	fddff06f          	j	120dc <_read+0x1c>

00012104 <_sbrk>:
   12104:	d881a703          	lw	a4,-632(gp) # 13760 <heap_end.0>
   12108:	ff010113          	add	sp,sp,-16
   1210c:	00112623          	sw	ra,12(sp)
   12110:	00050793          	mv	a5,a0
   12114:	02071063          	bnez	a4,12134 <_sbrk+0x30>
   12118:	0d600893          	li	a7,214
   1211c:	00000513          	li	a0,0
   12120:	00000073          	ecall
   12124:	fff00613          	li	a2,-1
   12128:	00050713          	mv	a4,a0
   1212c:	02c50a63          	beq	a0,a2,12160 <_sbrk+0x5c>
   12130:	d8a1a423          	sw	a0,-632(gp) # 13760 <heap_end.0>
   12134:	0d600893          	li	a7,214
   12138:	00e78533          	add	a0,a5,a4
   1213c:	00000073          	ecall
   12140:	d881a703          	lw	a4,-632(gp) # 13760 <heap_end.0>
   12144:	00e787b3          	add	a5,a5,a4
   12148:	00f51c63          	bne	a0,a5,12160 <_sbrk+0x5c>
   1214c:	00c12083          	lw	ra,12(sp)
   12150:	d8a1a423          	sw	a0,-632(gp) # 13760 <heap_end.0>
   12154:	00070513          	mv	a0,a4
   12158:	01010113          	add	sp,sp,16
   1215c:	00008067          	ret
   12160:	060000ef          	jal	121c0 <__errno>
   12164:	00c12083          	lw	ra,12(sp)
   12168:	00c00793          	li	a5,12
   1216c:	00f52023          	sw	a5,0(a0)
   12170:	fff00513          	li	a0,-1
   12174:	01010113          	add	sp,sp,16
   12178:	00008067          	ret

0001217c <_write>:
   1217c:	ff010113          	add	sp,sp,-16
   12180:	00112623          	sw	ra,12(sp)
   12184:	00812423          	sw	s0,8(sp)
   12188:	04000893          	li	a7,64
   1218c:	00000073          	ecall
   12190:	00050413          	mv	s0,a0
   12194:	00054c63          	bltz	a0,121ac <_write+0x30>
   12198:	00c12083          	lw	ra,12(sp)
   1219c:	00040513          	mv	a0,s0
   121a0:	00812403          	lw	s0,8(sp)
   121a4:	01010113          	add	sp,sp,16
   121a8:	00008067          	ret
   121ac:	40800433          	neg	s0,s0
   121b0:	010000ef          	jal	121c0 <__errno>
   121b4:	00852023          	sw	s0,0(a0)
   121b8:	fff00413          	li	s0,-1
   121bc:	fddff06f          	j	12198 <_write+0x1c>

000121c0 <__errno>:
   121c0:	d641a503          	lw	a0,-668(gp) # 1373c <_impure_ptr>
   121c4:	00008067          	ret

Disassembly of section .eh_frame:

000131c8 <__EH_FRAME_BEGIN__>:
   131c8:	0000                	.insn	2, 0x
	...

Disassembly of section .init_array:

000131cc <__init_array_start>:
   131cc:	00c0                	.insn	2, 0x00c0
   131ce:	0001                	.insn	2, 0x0001

000131d0 <__frame_dummy_init_array_entry>:
   131d0:	0168                	.insn	2, 0x0168
   131d2:	0001                	.insn	2, 0x0001

Disassembly of section .fini_array:

000131d4 <__do_global_dtors_aux_fini_array_entry>:
   131d4:	0124                	.insn	2, 0x0124
   131d6:	0001                	.insn	2, 0x0001

Disassembly of section .data:

000131d8 <result>:
   131d8:	0001                	.insn	2, 0x0001
   131da:	0000                	.insn	2, 0x
   131dc:	0002                	.insn	2, 0x0002
   131de:	0000                	.insn	2, 0x
   131e0:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   131e4:	0004                	.insn	2, 0x0004
   131e6:	0000                	.insn	2, 0x
   131e8:	0005                	.insn	2, 0x0005
   131ea:	0000                	.insn	2, 0x
   131ec:	0006                	.insn	2, 0x0006
   131ee:	0000                	.insn	2, 0x
   131f0:	00000007          	.insn	4, 0x0007
   131f4:	0008                	.insn	2, 0x0008
   131f6:	0000                	.insn	2, 0x
   131f8:	0009                	.insn	2, 0x0009
   131fa:	0000                	.insn	2, 0x
   131fc:	000a                	.insn	2, 0x000a
	...

00013200 <__sglue>:
   13200:	0000                	.insn	2, 0x
   13202:	0000                	.insn	2, 0x
   13204:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   13208:	3780                	.insn	2, 0x3780
   1320a:	0001                	.insn	2, 0x0001
   1320c:	0000                	.insn	2, 0x
	...

00013210 <_impure_data>:
   13210:	0000                	.insn	2, 0x
   13212:	0000                	.insn	2, 0x
   13214:	3780                	.insn	2, 0x3780
   13216:	0001                	.insn	2, 0x0001
   13218:	37e8                	.insn	2, 0x37e8
   1321a:	0001                	.insn	2, 0x0001
   1321c:	3850                	.insn	2, 0x3850
   1321e:	0001                	.insn	2, 0x0001
	...
   132a8:	0001                	.insn	2, 0x0001
   132aa:	0000                	.insn	2, 0x
   132ac:	0000                	.insn	2, 0x
   132ae:	0000                	.insn	2, 0x
   132b0:	330e                	.insn	2, 0x330e
   132b2:	abcd                	.insn	2, 0xabcd
   132b4:	1234                	.insn	2, 0x1234
   132b6:	e66d                	.insn	2, 0xe66d
   132b8:	deec                	.insn	2, 0xdeec
   132ba:	0005                	.insn	2, 0x0005
   132bc:	0000000b          	.insn	4, 0x000b
	...

00013330 <__malloc_av_>:
	...
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
   13728:	3720                	.insn	2, 0x3720
   1372a:	0001                	.insn	2, 0x0001
   1372c:	3720                	.insn	2, 0x3720
   1372e:	0001                	.insn	2, 0x0001
   13730:	3728                	.insn	2, 0x3728
   13732:	0001                	.insn	2, 0x0001
   13734:	3728                	.insn	2, 0x3728
   13736:	0001                	.insn	2, 0x0001

Disassembly of section .sdata:

00013738 <__dso_handle>:
   13738:	0000                	.insn	2, 0x
	...

0001373c <_impure_ptr>:
   1373c:	3210                	.insn	2, 0x3210
   1373e:	0001                	.insn	2, 0x0001

00013740 <__malloc_sbrk_base>:
   13740:	ffff                	.insn	2, 0xffff
   13742:	ffff                	.insn	2, 0xffff

00013744 <__malloc_trim_threshold>:
   13744:	0000                	.insn	2, 0x
   13746:	0002                	.insn	2, 0x0002

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
