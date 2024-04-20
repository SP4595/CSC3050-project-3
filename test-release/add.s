
add.riscv:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	461000ef          	jal	10d08 <__call_exitprocs>
   100ac:	d701a783          	lw	a5,-656(gp) # 13720 <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	769010ef          	jal	12024 <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00012537          	lui	a0,0x12
   100cc:	eec50513          	add	a0,a0,-276 # 11eec <__libc_fini_array>
   100d0:	56d0006f          	j	10e3c <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00004197          	auipc	gp,0x4
   100dc:	8d818193          	addi	gp,gp,-1832 # 139b0 <__global_pointer$>
   100e0:	d7018513          	addi	a0,gp,-656 # 13720 <__stdio_exit_handler>
   100e4:	09818613          	addi	a2,gp,152 # 13a48 <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	33d000ef          	jal	10c2c <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	d4850513          	addi	a0,a0,-696 # 10e3c <atexit>
   100fc:	00050863          	beqz	a0,1010c <_start+0x34>
   10100:	00002517          	auipc	a0,0x2
   10104:	dec50513          	add	a0,a0,-532 # 11eec <__libc_fini_array>
   10108:	535000ef          	jal	10e3c <atexit>
   1010c:	285000ef          	jal	10b90 <__libc_init_array>
   10110:	00012503          	lw	a0,0(sp)
   10114:	00410593          	add	a1,sp,4
   10118:	00000613          	li	a2,0
   1011c:	06c000ef          	jal	10188 <main>
   10120:	f75ff06f          	j	10094 <exit>

00010124 <__do_global_dtors_aux>:
   10124:	ff010113          	add	sp,sp,-16
   10128:	00812423          	sw	s0,8(sp)
   1012c:	d8c1c783          	lbu	a5,-628(gp) # 1373c <completed.1>
   10130:	00112623          	sw	ra,12(sp)
   10134:	02079263          	bnez	a5,10158 <__do_global_dtors_aux+0x34>
   10138:	00000793          	li	a5,0
   1013c:	00078a63          	beqz	a5,10150 <__do_global_dtors_aux+0x2c>
   10140:	00013537          	lui	a0,0x13
   10144:	1a050513          	add	a0,a0,416 # 131a0 <__EH_FRAME_BEGIN__>
   10148:	00000097          	auipc	ra,0x0
   1014c:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10150:	00100793          	li	a5,1
   10154:	d8f18623          	sb	a5,-628(gp) # 1373c <completed.1>
   10158:	00c12083          	lw	ra,12(sp)
   1015c:	00812403          	lw	s0,8(sp)
   10160:	01010113          	add	sp,sp,16
   10164:	00008067          	ret

00010168 <frame_dummy>:
   10168:	00000793          	li	a5,0
   1016c:	00078c63          	beqz	a5,10184 <frame_dummy+0x1c>
   10170:	00013537          	lui	a0,0x13
   10174:	d9018593          	add	a1,gp,-624 # 13740 <object.0>
   10178:	1a050513          	add	a0,a0,416 # 131a0 <__EH_FRAME_BEGIN__>
   1017c:	00000317          	auipc	t1,0x0
   10180:	00000067          	jr	zero # 0 <exit-0x10094>
   10184:	00008067          	ret

00010188 <main>:
   10188:	fe010113          	addi	sp,sp,-32 # pc = 65928
   1018c:	00112e23          	sw	ra,28(sp)
   10190:	00812c23          	sw	s0,24(sp)
   10194:	02010413          	addi	s0,sp,32
   10198:	fe042623          	sw	zero,-20(s0)
   1019c:	fe042623          	sw	zero,-20(s0)
   101a0:	0440006f          	j	101e4 <main+0x5c>
   101a4:	000137b7          	lui	a5,0x13 # a5 = 77824; pc = 65956
   101a8:	1b078713          	addi	a4,a5,432 # 131b0 <result> # a4 = 78256
   101ac:	fec42783          	lw	a5,-20(s0) # lw bubble problem !!!! # 65964
   101b0:	00279793          	slli	a5,a5,0x2 # 65968
   101b4:	00f707b3          	add	a5,a4,a5 # 65972
   101b8:	0007a783          	lw	a5,0(a5) # problem exit!!!!!, a5 is not exit 
   101bc:	00a78713          	addi	a4,a5,10
   101c0:	000137b7          	lui	a5,0x13
   101c4:	1b078693          	addi	a3,a5,432 # 131b0 <result>
   101c8:	fec42783          	lw	a5,-20(s0) 
   101cc:	00279793          	slli	a5,a5,0x2
   101d0:	00f687b3          	add	a5,a3,a5
   101d4:	00e7a023          	sw	a4,0(a5) # 66004
   101d8:	fec42783          	lw	a5,-20(s0)
   101dc:	00178793          	addi	a5,a5,1
   101e0:	fef42623          	sw	a5,-20(s0) # a5 == a4
   101e4:	fec42703          	lw	a4,-20(s0) # a5 = 0
   101e8:	00400793          	li	a5,4
   101ec:	fae7dce3          	bge	a5,a4,101a4 <main+0x1c>
   101f0:	00500793          	li	a5,5
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	0440006f          	j	1023c <main+0xb4>
   101fc:	000137b7          	lui	a5,0x13
   10200:	1b078713          	add	a4,a5,432 # 131b0 <result>
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	00279793          	sll	a5,a5,0x2
   1020c:	00f707b3          	add	a5,a4,a5
   10210:	0007a783          	lw	a5,0(a5)
   10214:	ffb78713          	add	a4,a5,-5
   10218:	000137b7          	lui	a5,0x13
   1021c:	1b078693          	add	a3,a5,432 # 131b0 <result>
   10220:	fec42783          	lw	a5,-20(s0)
   10224:	00279793          	sll	a5,a5,0x2
   10228:	00f687b3          	add	a5,a3,a5
   1022c:	00e7a023          	sw	a4,0(a5)
   10230:	fec42783          	lw	a5,-20(s0)
   10234:	00178793          	addi	a5,a5,1
   10238:	fef42623          	sw	a5,-20(s0)
   1023c:	fec42703          	lw	a4,-20(s0) # 66108
   10240:	00900793          	li	a5,9
   10244:	fae7dce3          	bge	a5,a4,101fc <main+0x74>
   10248:	fe042623          	sw	zero,-20(s0)
   1024c:	0380006f          	j	10284 <main+0xfc>
   10250:	000137b7          	lui	a5,0x13
   10254:	1b078713          	add	a4,a5,432 # 131b0 <result>
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	00279793          	sll	a5,a5,0x2
   10260:	00f707b3          	add	a5,a4,a5
   10264:	0007a783          	lw	a5,0(a5)
   10268:	00078513          	mv	a0,a5
   1026c:	048000ef          	jal	102b4 <print_d>
   10270:	02000513          	li	a0,32
   10274:	090000ef          	jal	10304 <print_c>
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	00178793          	add	a5,a5,1
   10280:	fef42623          	sw	a5,-20(s0)
   10284:	fec42703          	lw	a4,-20(s0) # 66180
   10288:	00900793          	li	a5,9
   1028c:	fce7d2e3          	bge	a5,a4,10250 <main+0xc8>
   10290:	00a00513          	li	a0,10
   10294:	070000ef          	jal	10304 <print_c>
   10298:	098000ef          	jal	10330 <exit_proc>
   1029c:	00000793          	li	a5,0
   102a0:	00078513          	mv	a0,a5
   102a4:	01c12083          	lw	ra,28(sp)
   102a8:	01812403          	lw	s0,24(sp)
   102ac:	02010113          	add	sp,sp,32
   102b0:	00008067          	ret

000102b4 <print_d>:
   102b4:	fe010113          	add	sp,sp,-32
   102b8:	00812e23          	sw	s0,28(sp)
   102bc:	02010413          	add	s0,sp,32
   102c0:	fea42623          	sw	a0,-20(s0)
   102c4:	00200893          	li	a7,2
   102c8:	00000073          	ecall
   102cc:	00000013          	nop
   102d0:	01c12403          	lw	s0,28(sp)
   102d4:	02010113          	add	sp,sp,32
   102d8:	00008067          	ret

000102dc <print_s>:
   102dc:	fe010113          	add	sp,sp,-32
   102e0:	00812e23          	sw	s0,28(sp)
   102e4:	02010413          	add	s0,sp,32
   102e8:	fea42623          	sw	a0,-20(s0)
   102ec:	00000893          	li	a7,0
   102f0:	00000073          	ecall
   102f4:	00000013          	nop
   102f8:	01c12403          	lw	s0,28(sp)
   102fc:	02010113          	add	sp,sp,32
   10300:	00008067          	ret

00010304 <print_c>:
   10304:	fe010113          	addi	sp,sp,-32 # 66308
   10308:	00812e23          	sw	s0,28(sp)
   1030c:	02010413          	add	s0,sp,32
   10310:	00050793          	mv	a5,a0
   10314:	fef407a3          	sb	a5,-17(s0)
   10318:	00100893          	li	a7,1
   1031c:	00000073          	ecall
   10320:	00000013          	nop
   10324:	01c12403          	lw	s0,28(sp)
   10328:	02010113          	add	sp,sp,32
   1032c:	00008067          	ret

00010330 <exit_proc>:
   10330:	ff010113          	addi	sp,sp,-16 # 66352
   10334:	00812623          	sw	s0,12(sp)
   10338:	01010413          	add	s0,sp,16
   1033c:	00300893          	li	a7,3
   10340:	00000073          	ecall
   10344:	00000013          	nop
   10348:	00c12403          	lw	s0,12(sp)
   1034c:	01010113          	add	sp,sp,16
   10350:	00008067          	ret

00010354 <read_char>:
   10354:	fe010113          	add	sp,sp,-32
   10358:	00812e23          	sw	s0,28(sp)
   1035c:	02010413          	add	s0,sp,32
   10360:	00400893          	li	a7,4
   10364:	00000073          	ecall
   10368:	00050793          	mv	a5,a0
   1036c:	fef407a3          	sb	a5,-17(s0)
   10370:	fef44783          	lbu	a5,-17(s0)
   10374:	00078513          	mv	a0,a5
   10378:	01c12403          	lw	s0,28(sp)
   1037c:	02010113          	add	sp,sp,32
   10380:	00008067          	ret

00010384 <read_num>:
   10384:	fe010113          	add	sp,sp,-32
   10388:	00812e23          	sw	s0,28(sp)
   1038c:	02010413          	add	s0,sp,32
   10390:	00500893          	li	a7,5
   10394:	00000073          	ecall
   10398:	00050713          	mv	a4,a0
   1039c:	fee42423          	sw	a4,-24(s0)
   103a0:	fef42623          	sw	a5,-20(s0)
   103a4:	fe842703          	lw	a4,-24(s0)
   103a8:	fec42783          	lw	a5,-20(s0)
   103ac:	00070513          	mv	a0,a4
   103b0:	00078593          	mv	a1,a5
   103b4:	01c12403          	lw	s0,28(sp)
   103b8:	02010113          	add	sp,sp,32
   103bc:	00008067          	ret

000103c0 <__fp_lock>:
   103c0:	00000513          	li	a0,0
   103c4:	00008067          	ret

000103c8 <stdio_exit_handler>:
   103c8:	000125b7          	lui	a1,0x12
   103cc:	00013537          	lui	a0,0x13
   103d0:	82818613          	add	a2,gp,-2008 # 131d8 <__sglue>
   103d4:	a5058593          	add	a1,a1,-1456 # 11a50 <_fclose_r>
   103d8:	1e850513          	add	a0,a0,488 # 131e8 <_impure_data>
   103dc:	33c0006f          	j	10718 <_fwalk_sglue>

000103e0 <cleanup_stdio>:
   103e0:	00452583          	lw	a1,4(a0)
   103e4:	ff010113          	add	sp,sp,-16
   103e8:	00812423          	sw	s0,8(sp)
   103ec:	00112623          	sw	ra,12(sp)
   103f0:	da818793          	add	a5,gp,-600 # 13758 <__sf>
   103f4:	00050413          	mv	s0,a0
   103f8:	00f58463          	beq	a1,a5,10400 <cleanup_stdio+0x20>
   103fc:	654010ef          	jal	11a50 <_fclose_r>
   10400:	00842583          	lw	a1,8(s0)
   10404:	e1018793          	add	a5,gp,-496 # 137c0 <__sf+0x68>
   10408:	00f58663          	beq	a1,a5,10414 <cleanup_stdio+0x34>
   1040c:	00040513          	mv	a0,s0
   10410:	640010ef          	jal	11a50 <_fclose_r>
   10414:	00c42583          	lw	a1,12(s0)
   10418:	e7818793          	add	a5,gp,-392 # 13828 <__sf+0xd0>
   1041c:	00f58c63          	beq	a1,a5,10434 <cleanup_stdio+0x54>
   10420:	00040513          	mv	a0,s0
   10424:	00812403          	lw	s0,8(sp)
   10428:	00c12083          	lw	ra,12(sp)
   1042c:	01010113          	add	sp,sp,16
   10430:	6200106f          	j	11a50 <_fclose_r>
   10434:	00c12083          	lw	ra,12(sp)
   10438:	00812403          	lw	s0,8(sp)
   1043c:	01010113          	add	sp,sp,16
   10440:	00008067          	ret

00010444 <__fp_unlock>:
   10444:	00000513          	li	a0,0
   10448:	00008067          	ret

0001044c <global_stdio_init.part.0>:
   1044c:	fe010113          	add	sp,sp,-32
   10450:	000107b7          	lui	a5,0x10
   10454:	00812c23          	sw	s0,24(sp)
   10458:	3c878793          	add	a5,a5,968 # 103c8 <stdio_exit_handler>
   1045c:	da818413          	add	s0,gp,-600 # 13758 <__sf>
   10460:	00112e23          	sw	ra,28(sp)
   10464:	00912a23          	sw	s1,20(sp)
   10468:	01212823          	sw	s2,16(sp)
   1046c:	01312623          	sw	s3,12(sp)
   10470:	01412423          	sw	s4,8(sp)
   10474:	d6f1a823          	sw	a5,-656(gp) # 13720 <__stdio_exit_handler>
   10478:	00800613          	li	a2,8
   1047c:	00400793          	li	a5,4
   10480:	00000593          	li	a1,0
   10484:	e0418513          	add	a0,gp,-508 # 137b4 <__sf+0x5c>
   10488:	00f42623          	sw	a5,12(s0)
   1048c:	00042023          	sw	zero,0(s0)
   10490:	00042223          	sw	zero,4(s0)
   10494:	00042423          	sw	zero,8(s0)
   10498:	06042223          	sw	zero,100(s0)
   1049c:	00042823          	sw	zero,16(s0)
   104a0:	00042a23          	sw	zero,20(s0)
   104a4:	00042c23          	sw	zero,24(s0)
   104a8:	784000ef          	jal	10c2c <memset>
   104ac:	000107b7          	lui	a5,0x10
   104b0:	00010a37          	lui	s4,0x10
   104b4:	000119b7          	lui	s3,0x11
   104b8:	00011937          	lui	s2,0x11
   104bc:	000114b7          	lui	s1,0x11
   104c0:	7cca0a13          	add	s4,s4,1996 # 107cc <__sread>
   104c4:	83098993          	add	s3,s3,-2000 # 10830 <__swrite>
   104c8:	8b890913          	add	s2,s2,-1864 # 108b8 <__sseek>
   104cc:	93048493          	add	s1,s1,-1744 # 10930 <__sclose>
   104d0:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   104d4:	00800613          	li	a2,8
   104d8:	00000593          	li	a1,0
   104dc:	e6c18513          	add	a0,gp,-404 # 1381c <__sf+0xc4>
   104e0:	03442023          	sw	s4,32(s0)
   104e4:	03342223          	sw	s3,36(s0)
   104e8:	03242423          	sw	s2,40(s0)
   104ec:	02942623          	sw	s1,44(s0)
   104f0:	06f42a23          	sw	a5,116(s0)
   104f4:	00842e23          	sw	s0,28(s0)
   104f8:	06042423          	sw	zero,104(s0)
   104fc:	06042623          	sw	zero,108(s0)
   10500:	06042823          	sw	zero,112(s0)
   10504:	0c042623          	sw	zero,204(s0)
   10508:	06042c23          	sw	zero,120(s0)
   1050c:	06042e23          	sw	zero,124(s0)
   10510:	08042023          	sw	zero,128(s0)
   10514:	718000ef          	jal	10c2c <memset>
   10518:	000207b7          	lui	a5,0x20
   1051c:	01278793          	add	a5,a5,18 # 20012 <__BSS_END__+0xc5ca>
   10520:	e1018713          	add	a4,gp,-496 # 137c0 <__sf+0x68>
   10524:	00800613          	li	a2,8
   10528:	00000593          	li	a1,0
   1052c:	ed418513          	add	a0,gp,-300 # 13884 <__sf+0x12c>
   10530:	09442423          	sw	s4,136(s0)
   10534:	09342623          	sw	s3,140(s0)
   10538:	09242823          	sw	s2,144(s0)
   1053c:	08942a23          	sw	s1,148(s0)
   10540:	0cf42e23          	sw	a5,220(s0)
   10544:	08e42223          	sw	a4,132(s0)
   10548:	0c042823          	sw	zero,208(s0)
   1054c:	0c042a23          	sw	zero,212(s0)
   10550:	0c042c23          	sw	zero,216(s0)
   10554:	12042a23          	sw	zero,308(s0)
   10558:	0e042023          	sw	zero,224(s0)
   1055c:	0e042223          	sw	zero,228(s0)
   10560:	0e042423          	sw	zero,232(s0)
   10564:	6c8000ef          	jal	10c2c <memset>
   10568:	e7818793          	add	a5,gp,-392 # 13828 <__sf+0xd0>
   1056c:	0f442823          	sw	s4,240(s0)
   10570:	0f342a23          	sw	s3,244(s0)
   10574:	0f242c23          	sw	s2,248(s0)
   10578:	0e942e23          	sw	s1,252(s0)
   1057c:	01c12083          	lw	ra,28(sp)
   10580:	0ef42623          	sw	a5,236(s0)
   10584:	01812403          	lw	s0,24(sp)
   10588:	01412483          	lw	s1,20(sp)
   1058c:	01012903          	lw	s2,16(sp)
   10590:	00c12983          	lw	s3,12(sp)
   10594:	00812a03          	lw	s4,8(sp)
   10598:	02010113          	add	sp,sp,32
   1059c:	00008067          	ret

000105a0 <__sfp>:
   105a0:	d701a783          	lw	a5,-656(gp) # 13720 <__stdio_exit_handler>
   105a4:	fe010113          	add	sp,sp,-32
   105a8:	01312623          	sw	s3,12(sp)
   105ac:	00112e23          	sw	ra,28(sp)
   105b0:	00812c23          	sw	s0,24(sp)
   105b4:	00912a23          	sw	s1,20(sp)
   105b8:	01212823          	sw	s2,16(sp)
   105bc:	00050993          	mv	s3,a0
   105c0:	0e078663          	beqz	a5,106ac <__sfp+0x10c>
   105c4:	82818913          	add	s2,gp,-2008 # 131d8 <__sglue>
   105c8:	fff00493          	li	s1,-1
   105cc:	00492783          	lw	a5,4(s2)
   105d0:	00892403          	lw	s0,8(s2)
   105d4:	fff78793          	add	a5,a5,-1
   105d8:	0007d863          	bgez	a5,105e8 <__sfp+0x48>
   105dc:	0800006f          	j	1065c <__sfp+0xbc>
   105e0:	06840413          	add	s0,s0,104
   105e4:	06978c63          	beq	a5,s1,1065c <__sfp+0xbc>
   105e8:	00c41703          	lh	a4,12(s0)
   105ec:	fff78793          	add	a5,a5,-1
   105f0:	fe0718e3          	bnez	a4,105e0 <__sfp+0x40>
   105f4:	ffff07b7          	lui	a5,0xffff0
   105f8:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc5b9>
   105fc:	00f42623          	sw	a5,12(s0)
   10600:	06042223          	sw	zero,100(s0)
   10604:	00042023          	sw	zero,0(s0)
   10608:	00042423          	sw	zero,8(s0)
   1060c:	00042223          	sw	zero,4(s0)
   10610:	00042823          	sw	zero,16(s0)
   10614:	00042a23          	sw	zero,20(s0)
   10618:	00042c23          	sw	zero,24(s0)
   1061c:	00800613          	li	a2,8
   10620:	00000593          	li	a1,0
   10624:	05c40513          	add	a0,s0,92
   10628:	604000ef          	jal	10c2c <memset>
   1062c:	02042823          	sw	zero,48(s0)
   10630:	02042a23          	sw	zero,52(s0)
   10634:	04042223          	sw	zero,68(s0)
   10638:	04042423          	sw	zero,72(s0)
   1063c:	01c12083          	lw	ra,28(sp)
   10640:	00040513          	mv	a0,s0
   10644:	01812403          	lw	s0,24(sp)
   10648:	01412483          	lw	s1,20(sp)
   1064c:	01012903          	lw	s2,16(sp)
   10650:	00c12983          	lw	s3,12(sp)
   10654:	02010113          	add	sp,sp,32
   10658:	00008067          	ret
   1065c:	00092403          	lw	s0,0(s2)
   10660:	00040663          	beqz	s0,1066c <__sfp+0xcc>
   10664:	00040913          	mv	s2,s0
   10668:	f65ff06f          	j	105cc <__sfp+0x2c>
   1066c:	1ac00593          	li	a1,428
   10670:	00098513          	mv	a0,s3
   10674:	419000ef          	jal	1128c <_malloc_r>
   10678:	00050413          	mv	s0,a0
   1067c:	02050c63          	beqz	a0,106b4 <__sfp+0x114>
   10680:	00c50513          	add	a0,a0,12
   10684:	00400793          	li	a5,4
   10688:	00042023          	sw	zero,0(s0)
   1068c:	00f42223          	sw	a5,4(s0)
   10690:	00a42423          	sw	a0,8(s0)
   10694:	1a000613          	li	a2,416
   10698:	00000593          	li	a1,0
   1069c:	590000ef          	jal	10c2c <memset>
   106a0:	00892023          	sw	s0,0(s2)
   106a4:	00040913          	mv	s2,s0
   106a8:	f25ff06f          	j	105cc <__sfp+0x2c>
   106ac:	da1ff0ef          	jal	1044c <global_stdio_init.part.0>
   106b0:	f15ff06f          	j	105c4 <__sfp+0x24>
   106b4:	00092023          	sw	zero,0(s2)
   106b8:	00c00793          	li	a5,12
   106bc:	00f9a023          	sw	a5,0(s3)
   106c0:	f7dff06f          	j	1063c <__sfp+0x9c>

000106c4 <__sinit>:
   106c4:	03452783          	lw	a5,52(a0)
   106c8:	00078463          	beqz	a5,106d0 <__sinit+0xc>
   106cc:	00008067          	ret
   106d0:	d701a703          	lw	a4,-656(gp) # 13720 <__stdio_exit_handler>
   106d4:	000107b7          	lui	a5,0x10
   106d8:	3e078793          	add	a5,a5,992 # 103e0 <cleanup_stdio>
   106dc:	02f52a23          	sw	a5,52(a0)
   106e0:	fe0716e3          	bnez	a4,106cc <__sinit+0x8>
   106e4:	d69ff06f          	j	1044c <global_stdio_init.part.0>

000106e8 <__sfp_lock_acquire>:
   106e8:	00008067          	ret

000106ec <__sfp_lock_release>:
   106ec:	00008067          	ret

000106f0 <__fp_lock_all>:
   106f0:	000105b7          	lui	a1,0x10
   106f4:	82818613          	add	a2,gp,-2008 # 131d8 <__sglue>
   106f8:	3c058593          	add	a1,a1,960 # 103c0 <__fp_lock>
   106fc:	00000513          	li	a0,0
   10700:	0180006f          	j	10718 <_fwalk_sglue>

00010704 <__fp_unlock_all>:
   10704:	000105b7          	lui	a1,0x10
   10708:	82818613          	add	a2,gp,-2008 # 131d8 <__sglue>
   1070c:	44458593          	add	a1,a1,1092 # 10444 <__fp_unlock>
   10710:	00000513          	li	a0,0
   10714:	0040006f          	j	10718 <_fwalk_sglue>

00010718 <_fwalk_sglue>:
   10718:	fd010113          	add	sp,sp,-48
   1071c:	03212023          	sw	s2,32(sp)
   10720:	01312e23          	sw	s3,28(sp)
   10724:	01412c23          	sw	s4,24(sp)
   10728:	01512a23          	sw	s5,20(sp)
   1072c:	01612823          	sw	s6,16(sp)
   10730:	01712623          	sw	s7,12(sp)
   10734:	02112623          	sw	ra,44(sp)
   10738:	02812423          	sw	s0,40(sp)
   1073c:	02912223          	sw	s1,36(sp)
   10740:	00050b13          	mv	s6,a0
   10744:	00058b93          	mv	s7,a1
   10748:	00060a93          	mv	s5,a2
   1074c:	00000a13          	li	s4,0
   10750:	00100993          	li	s3,1
   10754:	fff00913          	li	s2,-1
   10758:	004aa483          	lw	s1,4(s5)
   1075c:	008aa403          	lw	s0,8(s5)
   10760:	fff48493          	add	s1,s1,-1
   10764:	0204c863          	bltz	s1,10794 <_fwalk_sglue+0x7c>
   10768:	00c45783          	lhu	a5,12(s0)
   1076c:	00f9fe63          	bgeu	s3,a5,10788 <_fwalk_sglue+0x70>
   10770:	00e41783          	lh	a5,14(s0)
   10774:	00040593          	mv	a1,s0
   10778:	000b0513          	mv	a0,s6
   1077c:	01278663          	beq	a5,s2,10788 <_fwalk_sglue+0x70>
   10780:	000b80e7          	jalr	s7
   10784:	00aa6a33          	or	s4,s4,a0
   10788:	fff48493          	add	s1,s1,-1
   1078c:	06840413          	add	s0,s0,104
   10790:	fd249ce3          	bne	s1,s2,10768 <_fwalk_sglue+0x50>
   10794:	000aaa83          	lw	s5,0(s5)
   10798:	fc0a90e3          	bnez	s5,10758 <_fwalk_sglue+0x40>
   1079c:	02c12083          	lw	ra,44(sp)
   107a0:	02812403          	lw	s0,40(sp)
   107a4:	02412483          	lw	s1,36(sp)
   107a8:	02012903          	lw	s2,32(sp)
   107ac:	01c12983          	lw	s3,28(sp)
   107b0:	01412a83          	lw	s5,20(sp)
   107b4:	01012b03          	lw	s6,16(sp)
   107b8:	00c12b83          	lw	s7,12(sp)
   107bc:	000a0513          	mv	a0,s4
   107c0:	01812a03          	lw	s4,24(sp)
   107c4:	03010113          	add	sp,sp,48
   107c8:	00008067          	ret

000107cc <__sread>:
   107cc:	ff010113          	add	sp,sp,-16
   107d0:	00812423          	sw	s0,8(sp)
   107d4:	00058413          	mv	s0,a1
   107d8:	00e59583          	lh	a1,14(a1)
   107dc:	00112623          	sw	ra,12(sp)
   107e0:	2e0000ef          	jal	10ac0 <_read_r>
   107e4:	02054063          	bltz	a0,10804 <__sread+0x38>
   107e8:	05042783          	lw	a5,80(s0)
   107ec:	00c12083          	lw	ra,12(sp)
   107f0:	00a787b3          	add	a5,a5,a0
   107f4:	04f42823          	sw	a5,80(s0)
   107f8:	00812403          	lw	s0,8(sp)
   107fc:	01010113          	add	sp,sp,16
   10800:	00008067          	ret
   10804:	00c45783          	lhu	a5,12(s0)
   10808:	fffff737          	lui	a4,0xfffff
   1080c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb5b7>
   10810:	00e7f7b3          	and	a5,a5,a4
   10814:	00c12083          	lw	ra,12(sp)
   10818:	00f41623          	sh	a5,12(s0)
   1081c:	00812403          	lw	s0,8(sp)
   10820:	01010113          	add	sp,sp,16
   10824:	00008067          	ret

00010828 <__seofread>:
   10828:	00000513          	li	a0,0
   1082c:	00008067          	ret

00010830 <__swrite>:
   10830:	00c59783          	lh	a5,12(a1)
   10834:	fe010113          	add	sp,sp,-32
   10838:	00812c23          	sw	s0,24(sp)
   1083c:	00912a23          	sw	s1,20(sp)
   10840:	01212823          	sw	s2,16(sp)
   10844:	01312623          	sw	s3,12(sp)
   10848:	00112e23          	sw	ra,28(sp)
   1084c:	1007f713          	and	a4,a5,256
   10850:	00058413          	mv	s0,a1
   10854:	00050493          	mv	s1,a0
   10858:	00060913          	mv	s2,a2
   1085c:	00068993          	mv	s3,a3
   10860:	04071063          	bnez	a4,108a0 <__swrite+0x70>
   10864:	fffff737          	lui	a4,0xfffff
   10868:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb5b7>
   1086c:	00e7f7b3          	and	a5,a5,a4
   10870:	00e41583          	lh	a1,14(s0)
   10874:	00f41623          	sh	a5,12(s0)
   10878:	01812403          	lw	s0,24(sp)
   1087c:	01c12083          	lw	ra,28(sp)
   10880:	00098693          	mv	a3,s3
   10884:	00090613          	mv	a2,s2
   10888:	00c12983          	lw	s3,12(sp)
   1088c:	01012903          	lw	s2,16(sp)
   10890:	00048513          	mv	a0,s1
   10894:	01412483          	lw	s1,20(sp)
   10898:	02010113          	add	sp,sp,32
   1089c:	28c0006f          	j	10b28 <_write_r>
   108a0:	00e59583          	lh	a1,14(a1)
   108a4:	00200693          	li	a3,2
   108a8:	00000613          	li	a2,0
   108ac:	1ac000ef          	jal	10a58 <_lseek_r>
   108b0:	00c41783          	lh	a5,12(s0)
   108b4:	fb1ff06f          	j	10864 <__swrite+0x34>

000108b8 <__sseek>:
   108b8:	ff010113          	add	sp,sp,-16
   108bc:	00812423          	sw	s0,8(sp)
   108c0:	00058413          	mv	s0,a1
   108c4:	00e59583          	lh	a1,14(a1)
   108c8:	00112623          	sw	ra,12(sp)
   108cc:	18c000ef          	jal	10a58 <_lseek_r>
   108d0:	fff00793          	li	a5,-1
   108d4:	02f50863          	beq	a0,a5,10904 <__sseek+0x4c>
   108d8:	00c45783          	lhu	a5,12(s0)
   108dc:	00001737          	lui	a4,0x1
   108e0:	00c12083          	lw	ra,12(sp)
   108e4:	00e7e7b3          	or	a5,a5,a4
   108e8:	01079793          	sll	a5,a5,0x10
   108ec:	4107d793          	sra	a5,a5,0x10
   108f0:	04a42823          	sw	a0,80(s0)
   108f4:	00f41623          	sh	a5,12(s0)
   108f8:	00812403          	lw	s0,8(sp)
   108fc:	01010113          	add	sp,sp,16
   10900:	00008067          	ret
   10904:	00c45783          	lhu	a5,12(s0)
   10908:	fffff737          	lui	a4,0xfffff
   1090c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb5b7>
   10910:	00e7f7b3          	and	a5,a5,a4
   10914:	01079793          	sll	a5,a5,0x10
   10918:	4107d793          	sra	a5,a5,0x10
   1091c:	00c12083          	lw	ra,12(sp)
   10920:	00f41623          	sh	a5,12(s0)
   10924:	00812403          	lw	s0,8(sp)
   10928:	01010113          	add	sp,sp,16
   1092c:	00008067          	ret

00010930 <__sclose>:
   10930:	00e59583          	lh	a1,14(a1)
   10934:	0040006f          	j	10938 <_close_r>

00010938 <_close_r>:
   10938:	ff010113          	add	sp,sp,-16
   1093c:	00812423          	sw	s0,8(sp)
   10940:	00912223          	sw	s1,4(sp)
   10944:	00050413          	mv	s0,a0
   10948:	00058513          	mv	a0,a1
   1094c:	00112623          	sw	ra,12(sp)
   10950:	d601aa23          	sw	zero,-652(gp) # 13724 <errno>
   10954:	68c010ef          	jal	11fe0 <_close>
   10958:	fff00793          	li	a5,-1
   1095c:	00f50c63          	beq	a0,a5,10974 <_close_r+0x3c>
   10960:	00c12083          	lw	ra,12(sp)
   10964:	00812403          	lw	s0,8(sp)
   10968:	00412483          	lw	s1,4(sp)
   1096c:	01010113          	add	sp,sp,16
   10970:	00008067          	ret
   10974:	d741a783          	lw	a5,-652(gp) # 13724 <errno>
   10978:	fe0784e3          	beqz	a5,10960 <_close_r+0x28>
   1097c:	00c12083          	lw	ra,12(sp)
   10980:	00f42023          	sw	a5,0(s0)
   10984:	00812403          	lw	s0,8(sp)
   10988:	00412483          	lw	s1,4(sp)
   1098c:	01010113          	add	sp,sp,16
   10990:	00008067          	ret

00010994 <_reclaim_reent>:
   10994:	d641a783          	lw	a5,-668(gp) # 13714 <_impure_ptr>
   10998:	0aa78e63          	beq	a5,a0,10a54 <_reclaim_reent+0xc0>
   1099c:	04452583          	lw	a1,68(a0)
   109a0:	fe010113          	add	sp,sp,-32
   109a4:	00912a23          	sw	s1,20(sp)
   109a8:	00112e23          	sw	ra,28(sp)
   109ac:	00050493          	mv	s1,a0
   109b0:	04058c63          	beqz	a1,10a08 <_reclaim_reent+0x74>
   109b4:	01212823          	sw	s2,16(sp)
   109b8:	01312623          	sw	s3,12(sp)
   109bc:	00812c23          	sw	s0,24(sp)
   109c0:	00000913          	li	s2,0
   109c4:	08000993          	li	s3,128
   109c8:	012587b3          	add	a5,a1,s2
   109cc:	0007a403          	lw	s0,0(a5)
   109d0:	00040e63          	beqz	s0,109ec <_reclaim_reent+0x58>
   109d4:	00040593          	mv	a1,s0
   109d8:	00042403          	lw	s0,0(s0)
   109dc:	00048513          	mv	a0,s1
   109e0:	5a8000ef          	jal	10f88 <_free_r>
   109e4:	fe0418e3          	bnez	s0,109d4 <_reclaim_reent+0x40>
   109e8:	0444a583          	lw	a1,68(s1)
   109ec:	00490913          	add	s2,s2,4
   109f0:	fd391ce3          	bne	s2,s3,109c8 <_reclaim_reent+0x34>
   109f4:	00048513          	mv	a0,s1
   109f8:	590000ef          	jal	10f88 <_free_r>
   109fc:	01812403          	lw	s0,24(sp)
   10a00:	01012903          	lw	s2,16(sp)
   10a04:	00c12983          	lw	s3,12(sp)
   10a08:	0384a583          	lw	a1,56(s1)
   10a0c:	00058663          	beqz	a1,10a18 <_reclaim_reent+0x84>
   10a10:	00048513          	mv	a0,s1
   10a14:	574000ef          	jal	10f88 <_free_r>
   10a18:	04c4a583          	lw	a1,76(s1)
   10a1c:	00058663          	beqz	a1,10a28 <_reclaim_reent+0x94>
   10a20:	00048513          	mv	a0,s1
   10a24:	564000ef          	jal	10f88 <_free_r>
   10a28:	0344a783          	lw	a5,52(s1)
   10a2c:	00078c63          	beqz	a5,10a44 <_reclaim_reent+0xb0>
   10a30:	01c12083          	lw	ra,28(sp)
   10a34:	00048513          	mv	a0,s1
   10a38:	01412483          	lw	s1,20(sp)
   10a3c:	02010113          	add	sp,sp,32
   10a40:	00078067          	jr	a5
   10a44:	01c12083          	lw	ra,28(sp)
   10a48:	01412483          	lw	s1,20(sp)
   10a4c:	02010113          	add	sp,sp,32
   10a50:	00008067          	ret
   10a54:	00008067          	ret

00010a58 <_lseek_r>:
   10a58:	ff010113          	add	sp,sp,-16
   10a5c:	00058713          	mv	a4,a1
   10a60:	00812423          	sw	s0,8(sp)
   10a64:	00912223          	sw	s1,4(sp)
   10a68:	00060593          	mv	a1,a2
   10a6c:	00050413          	mv	s0,a0
   10a70:	00068613          	mv	a2,a3
   10a74:	00070513          	mv	a0,a4
   10a78:	00112623          	sw	ra,12(sp)
   10a7c:	d601aa23          	sw	zero,-652(gp) # 13724 <errno>
   10a80:	5d4010ef          	jal	12054 <_lseek>
   10a84:	fff00793          	li	a5,-1
   10a88:	00f50c63          	beq	a0,a5,10aa0 <_lseek_r+0x48>
   10a8c:	00c12083          	lw	ra,12(sp)
   10a90:	00812403          	lw	s0,8(sp)
   10a94:	00412483          	lw	s1,4(sp)
   10a98:	01010113          	add	sp,sp,16
   10a9c:	00008067          	ret
   10aa0:	d741a783          	lw	a5,-652(gp) # 13724 <errno>
   10aa4:	fe0784e3          	beqz	a5,10a8c <_lseek_r+0x34>
   10aa8:	00c12083          	lw	ra,12(sp)
   10aac:	00f42023          	sw	a5,0(s0)
   10ab0:	00812403          	lw	s0,8(sp)
   10ab4:	00412483          	lw	s1,4(sp)
   10ab8:	01010113          	add	sp,sp,16
   10abc:	00008067          	ret

00010ac0 <_read_r>:
   10ac0:	ff010113          	add	sp,sp,-16
   10ac4:	00058713          	mv	a4,a1
   10ac8:	00812423          	sw	s0,8(sp)
   10acc:	00912223          	sw	s1,4(sp)
   10ad0:	00060593          	mv	a1,a2
   10ad4:	00050413          	mv	s0,a0
   10ad8:	00068613          	mv	a2,a3
   10adc:	00070513          	mv	a0,a4
   10ae0:	00112623          	sw	ra,12(sp)
   10ae4:	d601aa23          	sw	zero,-652(gp) # 13724 <errno>
   10ae8:	5b0010ef          	jal	12098 <_read>
   10aec:	fff00793          	li	a5,-1
   10af0:	00f50c63          	beq	a0,a5,10b08 <_read_r+0x48>
   10af4:	00c12083          	lw	ra,12(sp)
   10af8:	00812403          	lw	s0,8(sp)
   10afc:	00412483          	lw	s1,4(sp)
   10b00:	01010113          	add	sp,sp,16
   10b04:	00008067          	ret
   10b08:	d741a783          	lw	a5,-652(gp) # 13724 <errno>
   10b0c:	fe0784e3          	beqz	a5,10af4 <_read_r+0x34>
   10b10:	00c12083          	lw	ra,12(sp)
   10b14:	00f42023          	sw	a5,0(s0)
   10b18:	00812403          	lw	s0,8(sp)
   10b1c:	00412483          	lw	s1,4(sp)
   10b20:	01010113          	add	sp,sp,16
   10b24:	00008067          	ret

00010b28 <_write_r>:
   10b28:	ff010113          	add	sp,sp,-16
   10b2c:	00058713          	mv	a4,a1
   10b30:	00812423          	sw	s0,8(sp)
   10b34:	00912223          	sw	s1,4(sp)
   10b38:	00060593          	mv	a1,a2
   10b3c:	00050413          	mv	s0,a0
   10b40:	00068613          	mv	a2,a3
   10b44:	00070513          	mv	a0,a4
   10b48:	00112623          	sw	ra,12(sp)
   10b4c:	d601aa23          	sw	zero,-652(gp) # 13724 <errno>
   10b50:	604010ef          	jal	12154 <_write>
   10b54:	fff00793          	li	a5,-1
   10b58:	00f50c63          	beq	a0,a5,10b70 <_write_r+0x48>
   10b5c:	00c12083          	lw	ra,12(sp)
   10b60:	00812403          	lw	s0,8(sp)
   10b64:	00412483          	lw	s1,4(sp)
   10b68:	01010113          	add	sp,sp,16
   10b6c:	00008067          	ret
   10b70:	d741a783          	lw	a5,-652(gp) # 13724 <errno>
   10b74:	fe0784e3          	beqz	a5,10b5c <_write_r+0x34>
   10b78:	00c12083          	lw	ra,12(sp)
   10b7c:	00f42023          	sw	a5,0(s0)
   10b80:	00812403          	lw	s0,8(sp)
   10b84:	00412483          	lw	s1,4(sp)
   10b88:	01010113          	add	sp,sp,16
   10b8c:	00008067          	ret

00010b90 <__libc_init_array>:
   10b90:	ff010113          	add	sp,sp,-16
   10b94:	00812423          	sw	s0,8(sp)
   10b98:	000137b7          	lui	a5,0x13
   10b9c:	00013437          	lui	s0,0x13
   10ba0:	01212023          	sw	s2,0(sp)
   10ba4:	1a478793          	add	a5,a5,420 # 131a4 <__init_array_start>
   10ba8:	1a440713          	add	a4,s0,420 # 131a4 <__init_array_start>
   10bac:	00112623          	sw	ra,12(sp)
   10bb0:	00912223          	sw	s1,4(sp)
   10bb4:	40e78933          	sub	s2,a5,a4
   10bb8:	02e78263          	beq	a5,a4,10bdc <__libc_init_array+0x4c>
   10bbc:	40295913          	sra	s2,s2,0x2
   10bc0:	1a440413          	add	s0,s0,420
   10bc4:	00000493          	li	s1,0
   10bc8:	00042783          	lw	a5,0(s0)
   10bcc:	00148493          	add	s1,s1,1
   10bd0:	00440413          	add	s0,s0,4
   10bd4:	000780e7          	jalr	a5
   10bd8:	ff24e8e3          	bltu	s1,s2,10bc8 <__libc_init_array+0x38>
   10bdc:	00013437          	lui	s0,0x13
   10be0:	000137b7          	lui	a5,0x13
   10be4:	1ac78793          	add	a5,a5,428 # 131ac <__do_global_dtors_aux_fini_array_entry>
   10be8:	1a440713          	add	a4,s0,420 # 131a4 <__init_array_start>
   10bec:	40e78933          	sub	s2,a5,a4
   10bf0:	40295913          	sra	s2,s2,0x2
   10bf4:	02e78063          	beq	a5,a4,10c14 <__libc_init_array+0x84>
   10bf8:	1a440413          	add	s0,s0,420
   10bfc:	00000493          	li	s1,0
   10c00:	00042783          	lw	a5,0(s0)
   10c04:	00148493          	add	s1,s1,1
   10c08:	00440413          	add	s0,s0,4
   10c0c:	000780e7          	jalr	a5
   10c10:	ff24e8e3          	bltu	s1,s2,10c00 <__libc_init_array+0x70>
   10c14:	00c12083          	lw	ra,12(sp)
   10c18:	00812403          	lw	s0,8(sp)
   10c1c:	00412483          	lw	s1,4(sp)
   10c20:	00012903          	lw	s2,0(sp)
   10c24:	01010113          	add	sp,sp,16
   10c28:	00008067          	ret

00010c2c <memset>:
   10c2c:	00f00313          	li	t1,15
   10c30:	00050713          	mv	a4,a0
   10c34:	02c37e63          	bgeu	t1,a2,10c70 <memset+0x44>
   10c38:	00f77793          	andi	a5,a4,15
   10c3c:	0a079063          	bnez	a5,10cdc <memset+0xb0>
   10c40:	08059263          	bnez	a1,10cc4 <memset+0x98>
   10c44:	ff067693          	and	a3,a2,-16
   10c48:	00f67613          	and	a2,a2,15
   10c4c:	00e686b3          	add	a3,a3,a4
   10c50:	00b72023          	sw	a1,0(a4)
   10c54:	00b72223          	sw	a1,4(a4)
   10c58:	00b72423          	sw	a1,8(a4)
   10c5c:	00b72623          	sw	a1,12(a4)
   10c60:	01070713          	addi	a4,a4,16
   10c64:	fed766e3          	bltu	a4,a3,10c50 <memset+0x24>
   10c68:	00061463          	bnez	a2,10c70 <memset+0x44>
   10c6c:	00008067          	ret
   10c70:	40c306b3          	sub	a3,t1,a2
   10c74:	00269693          	sll	a3,a3,0x2
   10c78:	00000297          	auipc	t0,0x0
   10c7c:	005686b3          	add	a3,a3,t0
   10c80:	00c68067          	jr	12(a3)
   10c84:	00b70723          	sb	a1,14(a4)
   10c88:	00b706a3          	sb	a1,13(a4)
   10c8c:	00b70623          	sb	a1,12(a4)
   10c90:	00b705a3          	sb	a1,11(a4)
   10c94:	00b70523          	sb	a1,10(a4)
   10c98:	00b704a3          	sb	a1,9(a4)
   10c9c:	00b70423          	sb	a1,8(a4)
   10ca0:	00b703a3          	sb	a1,7(a4)
   10ca4:	00b70323          	sb	a1,6(a4)
   10ca8:	00b702a3          	sb	a1,5(a4)
   10cac:	00b70223          	sb	a1,4(a4)
   10cb0:	00b701a3          	sb	a1,3(a4)
   10cb4:	00b70123          	sb	a1,2(a4)
   10cb8:	00b700a3          	sb	a1,1(a4)
   10cbc:	00b70023          	sb	a1,0(a4)
   10cc0:	00008067          	ret
   10cc4:	0ff5f593          	zext.b	a1,a1
   10cc8:	00859693          	sll	a3,a1,0x8
   10ccc:	00d5e5b3          	or	a1,a1,a3
   10cd0:	01059693          	sll	a3,a1,0x10
   10cd4:	00d5e5b3          	or	a1,a1,a3
   10cd8:	f6dff06f          	j	10c44 <memset+0x18>
   10cdc:	00279693          	sll	a3,a5,0x2
   10ce0:	00000297          	auipc	t0,0x0
   10ce4:	005686b3          	add	a3,a3,t0
   10ce8:	00008293          	mv	t0,ra
   10cec:	fa0680e7          	jalr	-96(a3)
   10cf0:	00028093          	mv	ra,t0
   10cf4:	ff078793          	add	a5,a5,-16
   10cf8:	40f70733          	sub	a4,a4,a5
   10cfc:	00f60633          	add	a2,a2,a5
   10d00:	f6c378e3          	bgeu	t1,a2,10c70 <memset+0x44>
   10d04:	f3dff06f          	j	10c40 <memset+0x14>

00010d08 <__call_exitprocs>:
   10d08:	fd010113          	add	sp,sp,-48
   10d0c:	01412c23          	sw	s4,24(sp)
   10d10:	03212023          	sw	s2,32(sp)
   10d14:	d781a903          	lw	s2,-648(gp) # 13728 <__atexit>
   10d18:	02112623          	sw	ra,44(sp)
   10d1c:	0a090863          	beqz	s2,10dcc <__call_exitprocs+0xc4>
   10d20:	01312e23          	sw	s3,28(sp)
   10d24:	01512a23          	sw	s5,20(sp)
   10d28:	01612823          	sw	s6,16(sp)
   10d2c:	01712623          	sw	s7,12(sp)
   10d30:	02812423          	sw	s0,40(sp)
   10d34:	02912223          	sw	s1,36(sp)
   10d38:	01812423          	sw	s8,8(sp)
   10d3c:	00050b13          	mv	s6,a0
   10d40:	00058b93          	mv	s7,a1
   10d44:	fff00993          	li	s3,-1
   10d48:	00100a93          	li	s5,1
   10d4c:	00492483          	lw	s1,4(s2)
   10d50:	fff48413          	add	s0,s1,-1
   10d54:	04044e63          	bltz	s0,10db0 <__call_exitprocs+0xa8>
   10d58:	00249493          	sll	s1,s1,0x2
   10d5c:	009904b3          	add	s1,s2,s1
   10d60:	080b9063          	bnez	s7,10de0 <__call_exitprocs+0xd8>
   10d64:	00492783          	lw	a5,4(s2)
   10d68:	0044a683          	lw	a3,4(s1)
   10d6c:	fff78793          	add	a5,a5,-1
   10d70:	0a878c63          	beq	a5,s0,10e28 <__call_exitprocs+0x120>
   10d74:	0004a223          	sw	zero,4(s1)
   10d78:	02068663          	beqz	a3,10da4 <__call_exitprocs+0x9c>
   10d7c:	18892783          	lw	a5,392(s2)
   10d80:	008a9733          	sll	a4,s5,s0
   10d84:	00492c03          	lw	s8,4(s2)
   10d88:	00f777b3          	and	a5,a4,a5
   10d8c:	06079663          	bnez	a5,10df8 <__call_exitprocs+0xf0>
   10d90:	000680e7          	jalr	a3
   10d94:	00492703          	lw	a4,4(s2)
   10d98:	d781a783          	lw	a5,-648(gp) # 13728 <__atexit>
   10d9c:	09871063          	bne	a4,s8,10e1c <__call_exitprocs+0x114>
   10da0:	07279e63          	bne	a5,s2,10e1c <__call_exitprocs+0x114>
   10da4:	fff40413          	add	s0,s0,-1
   10da8:	ffc48493          	add	s1,s1,-4
   10dac:	fb341ae3          	bne	s0,s3,10d60 <__call_exitprocs+0x58>
   10db0:	02812403          	lw	s0,40(sp)
   10db4:	02412483          	lw	s1,36(sp)
   10db8:	01c12983          	lw	s3,28(sp)
   10dbc:	01412a83          	lw	s5,20(sp)
   10dc0:	01012b03          	lw	s6,16(sp)
   10dc4:	00c12b83          	lw	s7,12(sp)
   10dc8:	00812c03          	lw	s8,8(sp)
   10dcc:	02c12083          	lw	ra,44(sp)
   10dd0:	02012903          	lw	s2,32(sp)
   10dd4:	01812a03          	lw	s4,24(sp)
   10dd8:	03010113          	add	sp,sp,48
   10ddc:	00008067          	ret
   10de0:	1044a783          	lw	a5,260(s1)
   10de4:	f97780e3          	beq	a5,s7,10d64 <__call_exitprocs+0x5c>
   10de8:	fff40413          	add	s0,s0,-1
   10dec:	ffc48493          	add	s1,s1,-4
   10df0:	ff3418e3          	bne	s0,s3,10de0 <__call_exitprocs+0xd8>
   10df4:	fbdff06f          	j	10db0 <__call_exitprocs+0xa8>
   10df8:	18c92783          	lw	a5,396(s2)
   10dfc:	0844a583          	lw	a1,132(s1)
   10e00:	00f77733          	and	a4,a4,a5
   10e04:	02071663          	bnez	a4,10e30 <__call_exitprocs+0x128>
   10e08:	000b0513          	mv	a0,s6
   10e0c:	000680e7          	jalr	a3
   10e10:	00492703          	lw	a4,4(s2)
   10e14:	d781a783          	lw	a5,-648(gp) # 13728 <__atexit>
   10e18:	f98704e3          	beq	a4,s8,10da0 <__call_exitprocs+0x98>
   10e1c:	f8078ae3          	beqz	a5,10db0 <__call_exitprocs+0xa8>
   10e20:	00078913          	mv	s2,a5
   10e24:	f29ff06f          	j	10d4c <__call_exitprocs+0x44>
   10e28:	00892223          	sw	s0,4(s2)
   10e2c:	f4dff06f          	j	10d78 <__call_exitprocs+0x70>
   10e30:	00058513          	mv	a0,a1
   10e34:	000680e7          	jalr	a3
   10e38:	f5dff06f          	j	10d94 <__call_exitprocs+0x8c>

00010e3c <atexit>:
   10e3c:	00050593          	mv	a1,a0
   10e40:	00000693          	li	a3,0
   10e44:	00000613          	li	a2,0
   10e48:	00000513          	li	a0,0
   10e4c:	0fc0106f          	j	11f48 <__register_exitproc>

00010e50 <_malloc_trim_r>:
   10e50:	fe010113          	add	sp,sp,-32
   10e54:	01312623          	sw	s3,12(sp)
   10e58:	000139b7          	lui	s3,0x13
   10e5c:	00812c23          	sw	s0,24(sp)
   10e60:	00912a23          	sw	s1,20(sp)
   10e64:	01212823          	sw	s2,16(sp)
   10e68:	01412423          	sw	s4,8(sp)
   10e6c:	00112e23          	sw	ra,28(sp)
   10e70:	00058a13          	mv	s4,a1
   10e74:	00050913          	mv	s2,a0
   10e78:	30898993          	add	s3,s3,776 # 13308 <__malloc_av_>
   10e7c:	3cd000ef          	jal	11a48 <__malloc_lock>
   10e80:	0089a703          	lw	a4,8(s3)
   10e84:	000017b7          	lui	a5,0x1
   10e88:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   10e8c:	00472483          	lw	s1,4(a4)
   10e90:	00001737          	lui	a4,0x1
   10e94:	ffc4f493          	and	s1,s1,-4
   10e98:	00f48433          	add	s0,s1,a5
   10e9c:	41440433          	sub	s0,s0,s4
   10ea0:	00c45413          	srl	s0,s0,0xc
   10ea4:	fff40413          	add	s0,s0,-1
   10ea8:	00c41413          	sll	s0,s0,0xc
   10eac:	00e44e63          	blt	s0,a4,10ec8 <_malloc_trim_r+0x78>
   10eb0:	00000593          	li	a1,0
   10eb4:	00090513          	mv	a0,s2
   10eb8:	7d9000ef          	jal	11e90 <_sbrk_r>
   10ebc:	0089a783          	lw	a5,8(s3)
   10ec0:	009787b3          	add	a5,a5,s1
   10ec4:	02f50863          	beq	a0,a5,10ef4 <_malloc_trim_r+0xa4>
   10ec8:	00090513          	mv	a0,s2
   10ecc:	381000ef          	jal	11a4c <__malloc_unlock>
   10ed0:	01c12083          	lw	ra,28(sp)
   10ed4:	01812403          	lw	s0,24(sp)
   10ed8:	01412483          	lw	s1,20(sp)
   10edc:	01012903          	lw	s2,16(sp)
   10ee0:	00c12983          	lw	s3,12(sp)
   10ee4:	00812a03          	lw	s4,8(sp)
   10ee8:	00000513          	li	a0,0
   10eec:	02010113          	add	sp,sp,32
   10ef0:	00008067          	ret
   10ef4:	408005b3          	neg	a1,s0
   10ef8:	00090513          	mv	a0,s2
   10efc:	795000ef          	jal	11e90 <_sbrk_r>
   10f00:	fff00793          	li	a5,-1
   10f04:	04f50863          	beq	a0,a5,10f54 <_malloc_trim_r+0x104>
   10f08:	ee018793          	add	a5,gp,-288 # 13890 <__malloc_current_mallinfo>
   10f0c:	0007a703          	lw	a4,0(a5)
   10f10:	0089a683          	lw	a3,8(s3)
   10f14:	408484b3          	sub	s1,s1,s0
   10f18:	0014e493          	or	s1,s1,1
   10f1c:	40870733          	sub	a4,a4,s0
   10f20:	00090513          	mv	a0,s2
   10f24:	0096a223          	sw	s1,4(a3)
   10f28:	00e7a023          	sw	a4,0(a5)
   10f2c:	321000ef          	jal	11a4c <__malloc_unlock>
   10f30:	01c12083          	lw	ra,28(sp)
   10f34:	01812403          	lw	s0,24(sp)
   10f38:	01412483          	lw	s1,20(sp)
   10f3c:	01012903          	lw	s2,16(sp)
   10f40:	00c12983          	lw	s3,12(sp)
   10f44:	00812a03          	lw	s4,8(sp)
   10f48:	00100513          	li	a0,1
   10f4c:	02010113          	add	sp,sp,32
   10f50:	00008067          	ret
   10f54:	00000593          	li	a1,0
   10f58:	00090513          	mv	a0,s2
   10f5c:	735000ef          	jal	11e90 <_sbrk_r>
   10f60:	0089a703          	lw	a4,8(s3)
   10f64:	00f00693          	li	a3,15
   10f68:	40e507b3          	sub	a5,a0,a4
   10f6c:	f4f6dee3          	bge	a3,a5,10ec8 <_malloc_trim_r+0x78>
   10f70:	d681a683          	lw	a3,-664(gp) # 13718 <__malloc_sbrk_base>
   10f74:	0017e793          	or	a5,a5,1
   10f78:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf090>
   10f7c:	40d50533          	sub	a0,a0,a3
   10f80:	eea1a023          	sw	a0,-288(gp) # 13890 <__malloc_current_mallinfo>
   10f84:	f45ff06f          	j	10ec8 <_malloc_trim_r+0x78>

00010f88 <_free_r>:
   10f88:	18058263          	beqz	a1,1110c <_free_r+0x184>
   10f8c:	ff010113          	add	sp,sp,-16
   10f90:	00812423          	sw	s0,8(sp)
   10f94:	00912223          	sw	s1,4(sp)
   10f98:	00058413          	mv	s0,a1
   10f9c:	00050493          	mv	s1,a0
   10fa0:	00112623          	sw	ra,12(sp)
   10fa4:	2a5000ef          	jal	11a48 <__malloc_lock>
   10fa8:	ffc42503          	lw	a0,-4(s0)
   10fac:	ff840713          	add	a4,s0,-8
   10fb0:	000135b7          	lui	a1,0x13
   10fb4:	ffe57793          	and	a5,a0,-2
   10fb8:	00f70633          	add	a2,a4,a5
   10fbc:	30858593          	add	a1,a1,776 # 13308 <__malloc_av_>
   10fc0:	00462683          	lw	a3,4(a2)
   10fc4:	0085a803          	lw	a6,8(a1)
   10fc8:	ffc6f693          	and	a3,a3,-4
   10fcc:	1ac80263          	beq	a6,a2,11170 <_free_r+0x1e8>
   10fd0:	00d62223          	sw	a3,4(a2)
   10fd4:	00157513          	and	a0,a0,1
   10fd8:	00d60833          	add	a6,a2,a3
   10fdc:	0a051063          	bnez	a0,1107c <_free_r+0xf4>
   10fe0:	ff842303          	lw	t1,-8(s0)
   10fe4:	00482803          	lw	a6,4(a6)
   10fe8:	00013537          	lui	a0,0x13
   10fec:	40670733          	sub	a4,a4,t1
   10ff0:	00872883          	lw	a7,8(a4)
   10ff4:	31050513          	add	a0,a0,784 # 13310 <__malloc_av_+0x8>
   10ff8:	006787b3          	add	a5,a5,t1
   10ffc:	00187813          	and	a6,a6,1
   11000:	14a88263          	beq	a7,a0,11144 <_free_r+0x1bc>
   11004:	00c72303          	lw	t1,12(a4)
   11008:	0068a623          	sw	t1,12(a7)
   1100c:	01132423          	sw	a7,8(t1) # 10184 <frame_dummy+0x1c>
   11010:	1a080663          	beqz	a6,111bc <_free_r+0x234>
   11014:	0017e693          	or	a3,a5,1
   11018:	00d72223          	sw	a3,4(a4)
   1101c:	00f62023          	sw	a5,0(a2)
   11020:	1ff00693          	li	a3,511
   11024:	06f6ec63          	bltu	a3,a5,1109c <_free_r+0x114>
   11028:	ff87f693          	and	a3,a5,-8
   1102c:	00868693          	add	a3,a3,8
   11030:	0045a503          	lw	a0,4(a1)
   11034:	00d586b3          	add	a3,a1,a3
   11038:	0006a603          	lw	a2,0(a3)
   1103c:	0057d813          	srl	a6,a5,0x5
   11040:	00100793          	li	a5,1
   11044:	010797b3          	sll	a5,a5,a6
   11048:	00a7e7b3          	or	a5,a5,a0
   1104c:	ff868513          	add	a0,a3,-8
   11050:	00a72623          	sw	a0,12(a4)
   11054:	00c72423          	sw	a2,8(a4)
   11058:	00f5a223          	sw	a5,4(a1)
   1105c:	00e6a023          	sw	a4,0(a3)
   11060:	00e62623          	sw	a4,12(a2)
   11064:	00812403          	lw	s0,8(sp)
   11068:	00c12083          	lw	ra,12(sp)
   1106c:	00048513          	mv	a0,s1
   11070:	00412483          	lw	s1,4(sp)
   11074:	01010113          	add	sp,sp,16
   11078:	1d50006f          	j	11a4c <__malloc_unlock>
   1107c:	00482503          	lw	a0,4(a6)
   11080:	00157513          	and	a0,a0,1
   11084:	08050663          	beqz	a0,11110 <_free_r+0x188>
   11088:	0017e693          	or	a3,a5,1
   1108c:	fed42e23          	sw	a3,-4(s0)
   11090:	00f62023          	sw	a5,0(a2)
   11094:	1ff00693          	li	a3,511
   11098:	f8f6f8e3          	bgeu	a3,a5,11028 <_free_r+0xa0>
   1109c:	0097d693          	srl	a3,a5,0x9
   110a0:	00400613          	li	a2,4
   110a4:	12d66063          	bltu	a2,a3,111c4 <_free_r+0x23c>
   110a8:	0067d693          	srl	a3,a5,0x6
   110ac:	03968513          	add	a0,a3,57
   110b0:	03868613          	add	a2,a3,56
   110b4:	00351513          	sll	a0,a0,0x3
   110b8:	00a58533          	add	a0,a1,a0
   110bc:	00052683          	lw	a3,0(a0)
   110c0:	ff850513          	add	a0,a0,-8
   110c4:	00d51863          	bne	a0,a3,110d4 <_free_r+0x14c>
   110c8:	1540006f          	j	1121c <_free_r+0x294>
   110cc:	0086a683          	lw	a3,8(a3)
   110d0:	00d50863          	beq	a0,a3,110e0 <_free_r+0x158>
   110d4:	0046a603          	lw	a2,4(a3)
   110d8:	ffc67613          	and	a2,a2,-4
   110dc:	fec7e8e3          	bltu	a5,a2,110cc <_free_r+0x144>
   110e0:	00c6a503          	lw	a0,12(a3)
   110e4:	00a72623          	sw	a0,12(a4)
   110e8:	00d72423          	sw	a3,8(a4)
   110ec:	00812403          	lw	s0,8(sp)
   110f0:	00e52423          	sw	a4,8(a0)
   110f4:	00c12083          	lw	ra,12(sp)
   110f8:	00048513          	mv	a0,s1
   110fc:	00412483          	lw	s1,4(sp)
   11100:	00e6a623          	sw	a4,12(a3)
   11104:	01010113          	add	sp,sp,16
   11108:	1450006f          	j	11a4c <__malloc_unlock>
   1110c:	00008067          	ret
   11110:	00013537          	lui	a0,0x13
   11114:	00d787b3          	add	a5,a5,a3
   11118:	31050513          	add	a0,a0,784 # 13310 <__malloc_av_+0x8>
   1111c:	00862683          	lw	a3,8(a2)
   11120:	0ca68c63          	beq	a3,a0,111f8 <_free_r+0x270>
   11124:	00c62803          	lw	a6,12(a2)
   11128:	0017e513          	or	a0,a5,1
   1112c:	00f70633          	add	a2,a4,a5
   11130:	0106a623          	sw	a6,12(a3)
   11134:	00d82423          	sw	a3,8(a6)
   11138:	00a72223          	sw	a0,4(a4)
   1113c:	00f62023          	sw	a5,0(a2)
   11140:	ee1ff06f          	j	11020 <_free_r+0x98>
   11144:	12081c63          	bnez	a6,1127c <_free_r+0x2f4>
   11148:	00862583          	lw	a1,8(a2)
   1114c:	00c62603          	lw	a2,12(a2)
   11150:	00f686b3          	add	a3,a3,a5
   11154:	0016e793          	or	a5,a3,1
   11158:	00c5a623          	sw	a2,12(a1)
   1115c:	00b62423          	sw	a1,8(a2)
   11160:	00f72223          	sw	a5,4(a4)
   11164:	00d70733          	add	a4,a4,a3
   11168:	00d72023          	sw	a3,0(a4)
   1116c:	ef9ff06f          	j	11064 <_free_r+0xdc>
   11170:	00157513          	and	a0,a0,1
   11174:	00d786b3          	add	a3,a5,a3
   11178:	02051063          	bnez	a0,11198 <_free_r+0x210>
   1117c:	ff842503          	lw	a0,-8(s0)
   11180:	40a70733          	sub	a4,a4,a0
   11184:	00c72783          	lw	a5,12(a4)
   11188:	00872603          	lw	a2,8(a4)
   1118c:	00a686b3          	add	a3,a3,a0
   11190:	00f62623          	sw	a5,12(a2)
   11194:	00c7a423          	sw	a2,8(a5)
   11198:	0016e613          	or	a2,a3,1
   1119c:	d6c1a783          	lw	a5,-660(gp) # 1371c <__malloc_trim_threshold>
   111a0:	00c72223          	sw	a2,4(a4)
   111a4:	00e5a423          	sw	a4,8(a1)
   111a8:	eaf6eee3          	bltu	a3,a5,11064 <_free_r+0xdc>
   111ac:	d841a583          	lw	a1,-636(gp) # 13734 <__malloc_top_pad>
   111b0:	00048513          	mv	a0,s1
   111b4:	c9dff0ef          	jal	10e50 <_malloc_trim_r>
   111b8:	eadff06f          	j	11064 <_free_r+0xdc>
   111bc:	00d787b3          	add	a5,a5,a3
   111c0:	f5dff06f          	j	1111c <_free_r+0x194>
   111c4:	01400613          	li	a2,20
   111c8:	02d67063          	bgeu	a2,a3,111e8 <_free_r+0x260>
   111cc:	05400613          	li	a2,84
   111d0:	06d66463          	bltu	a2,a3,11238 <_free_r+0x2b0>
   111d4:	00c7d693          	srl	a3,a5,0xc
   111d8:	06f68513          	add	a0,a3,111
   111dc:	06e68613          	add	a2,a3,110
   111e0:	00351513          	sll	a0,a0,0x3
   111e4:	ed5ff06f          	j	110b8 <_free_r+0x130>
   111e8:	05c68513          	add	a0,a3,92
   111ec:	05b68613          	add	a2,a3,91
   111f0:	00351513          	sll	a0,a0,0x3
   111f4:	ec5ff06f          	j	110b8 <_free_r+0x130>
   111f8:	00e5aa23          	sw	a4,20(a1)
   111fc:	00e5a823          	sw	a4,16(a1)
   11200:	0017e693          	or	a3,a5,1
   11204:	00a72623          	sw	a0,12(a4)
   11208:	00a72423          	sw	a0,8(a4)
   1120c:	00d72223          	sw	a3,4(a4)
   11210:	00f70733          	add	a4,a4,a5
   11214:	00f72023          	sw	a5,0(a4)
   11218:	e4dff06f          	j	11064 <_free_r+0xdc>
   1121c:	0045a803          	lw	a6,4(a1)
   11220:	40265613          	sra	a2,a2,0x2
   11224:	00100793          	li	a5,1
   11228:	00c797b3          	sll	a5,a5,a2
   1122c:	0107e7b3          	or	a5,a5,a6
   11230:	00f5a223          	sw	a5,4(a1)
   11234:	eb1ff06f          	j	110e4 <_free_r+0x15c>
   11238:	15400613          	li	a2,340
   1123c:	00d66c63          	bltu	a2,a3,11254 <_free_r+0x2cc>
   11240:	00f7d693          	srl	a3,a5,0xf
   11244:	07868513          	add	a0,a3,120
   11248:	07768613          	add	a2,a3,119
   1124c:	00351513          	sll	a0,a0,0x3
   11250:	e69ff06f          	j	110b8 <_free_r+0x130>
   11254:	55400613          	li	a2,1364
   11258:	00d66c63          	bltu	a2,a3,11270 <_free_r+0x2e8>
   1125c:	0127d693          	srl	a3,a5,0x12
   11260:	07d68513          	add	a0,a3,125
   11264:	07c68613          	add	a2,a3,124
   11268:	00351513          	sll	a0,a0,0x3
   1126c:	e4dff06f          	j	110b8 <_free_r+0x130>
   11270:	3f800513          	li	a0,1016
   11274:	07e00613          	li	a2,126
   11278:	e41ff06f          	j	110b8 <_free_r+0x130>
   1127c:	0017e693          	or	a3,a5,1
   11280:	00d72223          	sw	a3,4(a4)
   11284:	00f62023          	sw	a5,0(a2)
   11288:	dddff06f          	j	11064 <_free_r+0xdc>

0001128c <_malloc_r>:
   1128c:	fd010113          	add	sp,sp,-48
   11290:	01312e23          	sw	s3,28(sp)
   11294:	02112623          	sw	ra,44(sp)
   11298:	02812423          	sw	s0,40(sp)
   1129c:	02912223          	sw	s1,36(sp)
   112a0:	03212023          	sw	s2,32(sp)
   112a4:	00b58793          	add	a5,a1,11
   112a8:	01600713          	li	a4,22
   112ac:	00050993          	mv	s3,a0
   112b0:	08f76263          	bltu	a4,a5,11334 <_malloc_r+0xa8>
   112b4:	01000793          	li	a5,16
   112b8:	20b7e663          	bltu	a5,a1,114c4 <_malloc_r+0x238>
   112bc:	78c000ef          	jal	11a48 <__malloc_lock>
   112c0:	01800793          	li	a5,24
   112c4:	00200593          	li	a1,2
   112c8:	01000493          	li	s1,16
   112cc:	00013937          	lui	s2,0x13
   112d0:	30890913          	add	s2,s2,776 # 13308 <__malloc_av_>
   112d4:	00f907b3          	add	a5,s2,a5
   112d8:	0047a403          	lw	s0,4(a5)
   112dc:	ff878713          	add	a4,a5,-8
   112e0:	34e40463          	beq	s0,a4,11628 <_malloc_r+0x39c>
   112e4:	00442783          	lw	a5,4(s0)
   112e8:	00c42683          	lw	a3,12(s0)
   112ec:	00842603          	lw	a2,8(s0)
   112f0:	ffc7f793          	and	a5,a5,-4
   112f4:	00f407b3          	add	a5,s0,a5
   112f8:	0047a703          	lw	a4,4(a5)
   112fc:	00d62623          	sw	a3,12(a2)
   11300:	00c6a423          	sw	a2,8(a3)
   11304:	00176713          	or	a4,a4,1
   11308:	00098513          	mv	a0,s3
   1130c:	00e7a223          	sw	a4,4(a5)
   11310:	73c000ef          	jal	11a4c <__malloc_unlock>
   11314:	00840513          	add	a0,s0,8
   11318:	02c12083          	lw	ra,44(sp)
   1131c:	02812403          	lw	s0,40(sp)
   11320:	02412483          	lw	s1,36(sp)
   11324:	02012903          	lw	s2,32(sp)
   11328:	01c12983          	lw	s3,28(sp)
   1132c:	03010113          	add	sp,sp,48
   11330:	00008067          	ret
   11334:	ff87f493          	and	s1,a5,-8
   11338:	1807c663          	bltz	a5,114c4 <_malloc_r+0x238>
   1133c:	18b4e463          	bltu	s1,a1,114c4 <_malloc_r+0x238>
   11340:	708000ef          	jal	11a48 <__malloc_lock>
   11344:	1f700793          	li	a5,503
   11348:	3e97fa63          	bgeu	a5,s1,1173c <_malloc_r+0x4b0>
   1134c:	0094d793          	srl	a5,s1,0x9
   11350:	18078263          	beqz	a5,114d4 <_malloc_r+0x248>
   11354:	00400713          	li	a4,4
   11358:	34f76063          	bltu	a4,a5,11698 <_malloc_r+0x40c>
   1135c:	0064d793          	srl	a5,s1,0x6
   11360:	03978593          	add	a1,a5,57
   11364:	03878813          	add	a6,a5,56
   11368:	00359613          	sll	a2,a1,0x3
   1136c:	00013937          	lui	s2,0x13
   11370:	30890913          	add	s2,s2,776 # 13308 <__malloc_av_>
   11374:	00c90633          	add	a2,s2,a2
   11378:	00462403          	lw	s0,4(a2)
   1137c:	ff860613          	add	a2,a2,-8
   11380:	02860863          	beq	a2,s0,113b0 <_malloc_r+0x124>
   11384:	00f00513          	li	a0,15
   11388:	0140006f          	j	1139c <_malloc_r+0x110>
   1138c:	00c42683          	lw	a3,12(s0)
   11390:	28075863          	bgez	a4,11620 <_malloc_r+0x394>
   11394:	00d60e63          	beq	a2,a3,113b0 <_malloc_r+0x124>
   11398:	00068413          	mv	s0,a3
   1139c:	00442783          	lw	a5,4(s0)
   113a0:	ffc7f793          	and	a5,a5,-4
   113a4:	40978733          	sub	a4,a5,s1
   113a8:	fee552e3          	bge	a0,a4,1138c <_malloc_r+0x100>
   113ac:	00080593          	mv	a1,a6
   113b0:	01092403          	lw	s0,16(s2)
   113b4:	00013837          	lui	a6,0x13
   113b8:	31080813          	add	a6,a6,784 # 13310 <__malloc_av_+0x8>
   113bc:	25040e63          	beq	s0,a6,11618 <_malloc_r+0x38c>
   113c0:	00442783          	lw	a5,4(s0)
   113c4:	00f00693          	li	a3,15
   113c8:	ffc7f793          	and	a5,a5,-4
   113cc:	40978733          	sub	a4,a5,s1
   113d0:	36e6cc63          	blt	a3,a4,11748 <_malloc_r+0x4bc>
   113d4:	01092a23          	sw	a6,20(s2)
   113d8:	01092823          	sw	a6,16(s2)
   113dc:	34075063          	bgez	a4,1171c <_malloc_r+0x490>
   113e0:	1ff00713          	li	a4,511
   113e4:	00492503          	lw	a0,4(s2)
   113e8:	24f76863          	bltu	a4,a5,11638 <_malloc_r+0x3ac>
   113ec:	ff87f713          	and	a4,a5,-8
   113f0:	00870713          	add	a4,a4,8
   113f4:	00e90733          	add	a4,s2,a4
   113f8:	00072683          	lw	a3,0(a4)
   113fc:	0057d613          	srl	a2,a5,0x5
   11400:	00100793          	li	a5,1
   11404:	00c797b3          	sll	a5,a5,a2
   11408:	00f56533          	or	a0,a0,a5
   1140c:	ff870793          	add	a5,a4,-8
   11410:	00f42623          	sw	a5,12(s0)
   11414:	00d42423          	sw	a3,8(s0)
   11418:	00a92223          	sw	a0,4(s2)
   1141c:	00872023          	sw	s0,0(a4)
   11420:	0086a623          	sw	s0,12(a3)
   11424:	4025d793          	sra	a5,a1,0x2
   11428:	00100613          	li	a2,1
   1142c:	00f61633          	sll	a2,a2,a5
   11430:	0ac56a63          	bltu	a0,a2,114e4 <_malloc_r+0x258>
   11434:	00a677b3          	and	a5,a2,a0
   11438:	02079463          	bnez	a5,11460 <_malloc_r+0x1d4>
   1143c:	00161613          	sll	a2,a2,0x1
   11440:	ffc5f593          	and	a1,a1,-4
   11444:	00a677b3          	and	a5,a2,a0
   11448:	00458593          	add	a1,a1,4
   1144c:	00079a63          	bnez	a5,11460 <_malloc_r+0x1d4>
   11450:	00161613          	sll	a2,a2,0x1
   11454:	00a677b3          	and	a5,a2,a0
   11458:	00458593          	add	a1,a1,4
   1145c:	fe078ae3          	beqz	a5,11450 <_malloc_r+0x1c4>
   11460:	00f00893          	li	a7,15
   11464:	00359313          	sll	t1,a1,0x3
   11468:	00690333          	add	t1,s2,t1
   1146c:	00030513          	mv	a0,t1
   11470:	00c52783          	lw	a5,12(a0)
   11474:	00058e13          	mv	t3,a1
   11478:	24f50263          	beq	a0,a5,116bc <_malloc_r+0x430>
   1147c:	0047a703          	lw	a4,4(a5)
   11480:	00078413          	mv	s0,a5
   11484:	00c7a783          	lw	a5,12(a5)
   11488:	ffc77713          	and	a4,a4,-4
   1148c:	409706b3          	sub	a3,a4,s1
   11490:	24d8c263          	blt	a7,a3,116d4 <_malloc_r+0x448>
   11494:	fe06c2e3          	bltz	a3,11478 <_malloc_r+0x1ec>
   11498:	00e40733          	add	a4,s0,a4
   1149c:	00472683          	lw	a3,4(a4)
   114a0:	00842603          	lw	a2,8(s0)
   114a4:	00098513          	mv	a0,s3
   114a8:	0016e693          	or	a3,a3,1
   114ac:	00d72223          	sw	a3,4(a4)
   114b0:	00f62623          	sw	a5,12(a2)
   114b4:	00c7a423          	sw	a2,8(a5)
   114b8:	594000ef          	jal	11a4c <__malloc_unlock>
   114bc:	00840513          	add	a0,s0,8
   114c0:	e59ff06f          	j	11318 <_malloc_r+0x8c>
   114c4:	00c00793          	li	a5,12
   114c8:	00f9a023          	sw	a5,0(s3)
   114cc:	00000513          	li	a0,0
   114d0:	e49ff06f          	j	11318 <_malloc_r+0x8c>
   114d4:	20000613          	li	a2,512
   114d8:	04000593          	li	a1,64
   114dc:	03f00813          	li	a6,63
   114e0:	e8dff06f          	j	1136c <_malloc_r+0xe0>
   114e4:	00892403          	lw	s0,8(s2)
   114e8:	01612823          	sw	s6,16(sp)
   114ec:	00442783          	lw	a5,4(s0)
   114f0:	ffc7fb13          	and	s6,a5,-4
   114f4:	009b6863          	bltu	s6,s1,11504 <_malloc_r+0x278>
   114f8:	409b0733          	sub	a4,s6,s1
   114fc:	00f00793          	li	a5,15
   11500:	0ce7ca63          	blt	a5,a4,115d4 <_malloc_r+0x348>
   11504:	01912223          	sw	s9,4(sp)
   11508:	01512a23          	sw	s5,20(sp)
   1150c:	d681a703          	lw	a4,-664(gp) # 13718 <__malloc_sbrk_base>
   11510:	d841aa83          	lw	s5,-636(gp) # 13734 <__malloc_top_pad>
   11514:	01412c23          	sw	s4,24(sp)
   11518:	01712623          	sw	s7,12(sp)
   1151c:	fff00793          	li	a5,-1
   11520:	01640a33          	add	s4,s0,s6
   11524:	01548ab3          	add	s5,s1,s5
   11528:	3cf70663          	beq	a4,a5,118f4 <_malloc_r+0x668>
   1152c:	000017b7          	lui	a5,0x1
   11530:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   11534:	00fa8ab3          	add	s5,s5,a5
   11538:	fffff7b7          	lui	a5,0xfffff
   1153c:	00fafab3          	and	s5,s5,a5
   11540:	000a8593          	mv	a1,s5
   11544:	00098513          	mv	a0,s3
   11548:	149000ef          	jal	11e90 <_sbrk_r>
   1154c:	fff00793          	li	a5,-1
   11550:	00050b93          	mv	s7,a0
   11554:	44f50a63          	beq	a0,a5,119a8 <_malloc_r+0x71c>
   11558:	01812423          	sw	s8,8(sp)
   1155c:	23456e63          	bltu	a0,s4,11798 <_malloc_r+0x50c>
   11560:	ee018c13          	add	s8,gp,-288 # 13890 <__malloc_current_mallinfo>
   11564:	000c2583          	lw	a1,0(s8)
   11568:	00ba85b3          	add	a1,s5,a1
   1156c:	00bc2023          	sw	a1,0(s8)
   11570:	00058713          	mv	a4,a1
   11574:	2aaa1663          	bne	s4,a0,11820 <_malloc_r+0x594>
   11578:	01451793          	sll	a5,a0,0x14
   1157c:	2a079263          	bnez	a5,11820 <_malloc_r+0x594>
   11580:	00892b83          	lw	s7,8(s2)
   11584:	015b07b3          	add	a5,s6,s5
   11588:	0017e793          	or	a5,a5,1
   1158c:	00fba223          	sw	a5,4(s7)
   11590:	d801a683          	lw	a3,-640(gp) # 13730 <__malloc_max_sbrked_mem>
   11594:	00b6f463          	bgeu	a3,a1,1159c <_malloc_r+0x310>
   11598:	d8b1a023          	sw	a1,-640(gp) # 13730 <__malloc_max_sbrked_mem>
   1159c:	d7c1a683          	lw	a3,-644(gp) # 1372c <__malloc_max_total_mem>
   115a0:	00b6f463          	bgeu	a3,a1,115a8 <_malloc_r+0x31c>
   115a4:	d6b1ae23          	sw	a1,-644(gp) # 1372c <__malloc_max_total_mem>
   115a8:	00812c03          	lw	s8,8(sp)
   115ac:	000b8413          	mv	s0,s7
   115b0:	ffc7f793          	and	a5,a5,-4
   115b4:	40978733          	sub	a4,a5,s1
   115b8:	3897ea63          	bltu	a5,s1,1194c <_malloc_r+0x6c0>
   115bc:	00f00793          	li	a5,15
   115c0:	38e7d663          	bge	a5,a4,1194c <_malloc_r+0x6c0>
   115c4:	01812a03          	lw	s4,24(sp)
   115c8:	01412a83          	lw	s5,20(sp)
   115cc:	00c12b83          	lw	s7,12(sp)
   115d0:	00412c83          	lw	s9,4(sp)
   115d4:	0014e793          	or	a5,s1,1
   115d8:	00f42223          	sw	a5,4(s0)
   115dc:	009404b3          	add	s1,s0,s1
   115e0:	00992423          	sw	s1,8(s2)
   115e4:	00176713          	or	a4,a4,1
   115e8:	00098513          	mv	a0,s3
   115ec:	00e4a223          	sw	a4,4(s1)
   115f0:	45c000ef          	jal	11a4c <__malloc_unlock>
   115f4:	02c12083          	lw	ra,44(sp)
   115f8:	00840513          	add	a0,s0,8
   115fc:	02812403          	lw	s0,40(sp)
   11600:	01012b03          	lw	s6,16(sp)
   11604:	02412483          	lw	s1,36(sp)
   11608:	02012903          	lw	s2,32(sp)
   1160c:	01c12983          	lw	s3,28(sp)
   11610:	03010113          	add	sp,sp,48
   11614:	00008067          	ret
   11618:	00492503          	lw	a0,4(s2)
   1161c:	e09ff06f          	j	11424 <_malloc_r+0x198>
   11620:	00842603          	lw	a2,8(s0)
   11624:	cd1ff06f          	j	112f4 <_malloc_r+0x68>
   11628:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffeb5c4>
   1162c:	00258593          	add	a1,a1,2
   11630:	d88780e3          	beq	a5,s0,113b0 <_malloc_r+0x124>
   11634:	cb1ff06f          	j	112e4 <_malloc_r+0x58>
   11638:	0097d713          	srl	a4,a5,0x9
   1163c:	00400693          	li	a3,4
   11640:	14e6f263          	bgeu	a3,a4,11784 <_malloc_r+0x4f8>
   11644:	01400693          	li	a3,20
   11648:	32e6e463          	bltu	a3,a4,11970 <_malloc_r+0x6e4>
   1164c:	05c70613          	add	a2,a4,92
   11650:	05b70693          	add	a3,a4,91
   11654:	00361613          	sll	a2,a2,0x3
   11658:	00c90633          	add	a2,s2,a2
   1165c:	00062703          	lw	a4,0(a2)
   11660:	ff860613          	add	a2,a2,-8
   11664:	00e61863          	bne	a2,a4,11674 <_malloc_r+0x3e8>
   11668:	2940006f          	j	118fc <_malloc_r+0x670>
   1166c:	00872703          	lw	a4,8(a4)
   11670:	00e60863          	beq	a2,a4,11680 <_malloc_r+0x3f4>
   11674:	00472683          	lw	a3,4(a4)
   11678:	ffc6f693          	and	a3,a3,-4
   1167c:	fed7e8e3          	bltu	a5,a3,1166c <_malloc_r+0x3e0>
   11680:	00c72603          	lw	a2,12(a4)
   11684:	00c42623          	sw	a2,12(s0)
   11688:	00e42423          	sw	a4,8(s0)
   1168c:	00862423          	sw	s0,8(a2)
   11690:	00872623          	sw	s0,12(a4)
   11694:	d91ff06f          	j	11424 <_malloc_r+0x198>
   11698:	01400713          	li	a4,20
   1169c:	10f77863          	bgeu	a4,a5,117ac <_malloc_r+0x520>
   116a0:	05400713          	li	a4,84
   116a4:	2ef76463          	bltu	a4,a5,1198c <_malloc_r+0x700>
   116a8:	00c4d793          	srl	a5,s1,0xc
   116ac:	06f78593          	add	a1,a5,111
   116b0:	06e78813          	add	a6,a5,110
   116b4:	00359613          	sll	a2,a1,0x3
   116b8:	cb5ff06f          	j	1136c <_malloc_r+0xe0>
   116bc:	001e0e13          	add	t3,t3,1
   116c0:	003e7793          	and	a5,t3,3
   116c4:	00850513          	add	a0,a0,8
   116c8:	10078063          	beqz	a5,117c8 <_malloc_r+0x53c>
   116cc:	00c52783          	lw	a5,12(a0)
   116d0:	da9ff06f          	j	11478 <_malloc_r+0x1ec>
   116d4:	00842603          	lw	a2,8(s0)
   116d8:	0014e593          	or	a1,s1,1
   116dc:	00b42223          	sw	a1,4(s0)
   116e0:	00f62623          	sw	a5,12(a2)
   116e4:	00c7a423          	sw	a2,8(a5)
   116e8:	009404b3          	add	s1,s0,s1
   116ec:	00992a23          	sw	s1,20(s2)
   116f0:	00992823          	sw	s1,16(s2)
   116f4:	0016e793          	or	a5,a3,1
   116f8:	0104a623          	sw	a6,12(s1)
   116fc:	0104a423          	sw	a6,8(s1)
   11700:	00f4a223          	sw	a5,4(s1)
   11704:	00e40733          	add	a4,s0,a4
   11708:	00098513          	mv	a0,s3
   1170c:	00d72023          	sw	a3,0(a4)
   11710:	33c000ef          	jal	11a4c <__malloc_unlock>
   11714:	00840513          	add	a0,s0,8
   11718:	c01ff06f          	j	11318 <_malloc_r+0x8c>
   1171c:	00f407b3          	add	a5,s0,a5
   11720:	0047a703          	lw	a4,4(a5)
   11724:	00098513          	mv	a0,s3
   11728:	00176713          	or	a4,a4,1
   1172c:	00e7a223          	sw	a4,4(a5)
   11730:	31c000ef          	jal	11a4c <__malloc_unlock>
   11734:	00840513          	add	a0,s0,8
   11738:	be1ff06f          	j	11318 <_malloc_r+0x8c>
   1173c:	0034d593          	srl	a1,s1,0x3
   11740:	00848793          	add	a5,s1,8
   11744:	b89ff06f          	j	112cc <_malloc_r+0x40>
   11748:	0014e693          	or	a3,s1,1
   1174c:	00d42223          	sw	a3,4(s0)
   11750:	009404b3          	add	s1,s0,s1
   11754:	00992a23          	sw	s1,20(s2)
   11758:	00992823          	sw	s1,16(s2)
   1175c:	00176693          	or	a3,a4,1
   11760:	0104a623          	sw	a6,12(s1)
   11764:	0104a423          	sw	a6,8(s1)
   11768:	00d4a223          	sw	a3,4(s1)
   1176c:	00f407b3          	add	a5,s0,a5
   11770:	00098513          	mv	a0,s3
   11774:	00e7a023          	sw	a4,0(a5)
   11778:	2d4000ef          	jal	11a4c <__malloc_unlock>
   1177c:	00840513          	add	a0,s0,8
   11780:	b99ff06f          	j	11318 <_malloc_r+0x8c>
   11784:	0067d713          	srl	a4,a5,0x6
   11788:	03970613          	add	a2,a4,57
   1178c:	03870693          	add	a3,a4,56
   11790:	00361613          	sll	a2,a2,0x3
   11794:	ec5ff06f          	j	11658 <_malloc_r+0x3cc>
   11798:	07240c63          	beq	s0,s2,11810 <_malloc_r+0x584>
   1179c:	00892403          	lw	s0,8(s2)
   117a0:	00812c03          	lw	s8,8(sp)
   117a4:	00442783          	lw	a5,4(s0)
   117a8:	e09ff06f          	j	115b0 <_malloc_r+0x324>
   117ac:	05c78593          	add	a1,a5,92
   117b0:	05b78813          	add	a6,a5,91
   117b4:	00359613          	sll	a2,a1,0x3
   117b8:	bb5ff06f          	j	1136c <_malloc_r+0xe0>
   117bc:	00832783          	lw	a5,8(t1)
   117c0:	fff58593          	add	a1,a1,-1
   117c4:	26679e63          	bne	a5,t1,11a40 <_malloc_r+0x7b4>
   117c8:	0035f793          	and	a5,a1,3
   117cc:	ff830313          	add	t1,t1,-8
   117d0:	fe0796e3          	bnez	a5,117bc <_malloc_r+0x530>
   117d4:	00492703          	lw	a4,4(s2)
   117d8:	fff64793          	not	a5,a2
   117dc:	00e7f7b3          	and	a5,a5,a4
   117e0:	00f92223          	sw	a5,4(s2)
   117e4:	00161613          	sll	a2,a2,0x1
   117e8:	cec7eee3          	bltu	a5,a2,114e4 <_malloc_r+0x258>
   117ec:	ce060ce3          	beqz	a2,114e4 <_malloc_r+0x258>
   117f0:	00f67733          	and	a4,a2,a5
   117f4:	00071a63          	bnez	a4,11808 <_malloc_r+0x57c>
   117f8:	00161613          	sll	a2,a2,0x1
   117fc:	00f67733          	and	a4,a2,a5
   11800:	004e0e13          	add	t3,t3,4
   11804:	fe070ae3          	beqz	a4,117f8 <_malloc_r+0x56c>
   11808:	000e0593          	mv	a1,t3
   1180c:	c59ff06f          	j	11464 <_malloc_r+0x1d8>
   11810:	ee018c13          	add	s8,gp,-288 # 13890 <__malloc_current_mallinfo>
   11814:	000c2703          	lw	a4,0(s8)
   11818:	00ea8733          	add	a4,s5,a4
   1181c:	00ec2023          	sw	a4,0(s8)
   11820:	d681a683          	lw	a3,-664(gp) # 13718 <__malloc_sbrk_base>
   11824:	fff00793          	li	a5,-1
   11828:	18f68663          	beq	a3,a5,119b4 <_malloc_r+0x728>
   1182c:	414b87b3          	sub	a5,s7,s4
   11830:	00e787b3          	add	a5,a5,a4
   11834:	00fc2023          	sw	a5,0(s8)
   11838:	007bfc93          	and	s9,s7,7
   1183c:	0c0c8c63          	beqz	s9,11914 <_malloc_r+0x688>
   11840:	419b8bb3          	sub	s7,s7,s9
   11844:	000017b7          	lui	a5,0x1
   11848:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   1184c:	008b8b93          	add	s7,s7,8
   11850:	419785b3          	sub	a1,a5,s9
   11854:	015b8ab3          	add	s5,s7,s5
   11858:	415585b3          	sub	a1,a1,s5
   1185c:	01459593          	sll	a1,a1,0x14
   11860:	0145da13          	srl	s4,a1,0x14
   11864:	000a0593          	mv	a1,s4
   11868:	00098513          	mv	a0,s3
   1186c:	624000ef          	jal	11e90 <_sbrk_r>
   11870:	fff00793          	li	a5,-1
   11874:	18f50063          	beq	a0,a5,119f4 <_malloc_r+0x768>
   11878:	41750533          	sub	a0,a0,s7
   1187c:	01450ab3          	add	s5,a0,s4
   11880:	000c2703          	lw	a4,0(s8)
   11884:	01792423          	sw	s7,8(s2)
   11888:	001ae793          	or	a5,s5,1
   1188c:	00ea05b3          	add	a1,s4,a4
   11890:	00bc2023          	sw	a1,0(s8)
   11894:	00fba223          	sw	a5,4(s7)
   11898:	cf240ce3          	beq	s0,s2,11590 <_malloc_r+0x304>
   1189c:	00f00693          	li	a3,15
   118a0:	0b66f063          	bgeu	a3,s6,11940 <_malloc_r+0x6b4>
   118a4:	00442703          	lw	a4,4(s0)
   118a8:	ff4b0793          	add	a5,s6,-12
   118ac:	ff87f793          	and	a5,a5,-8
   118b0:	00177713          	and	a4,a4,1
   118b4:	00f76733          	or	a4,a4,a5
   118b8:	00e42223          	sw	a4,4(s0)
   118bc:	00500613          	li	a2,5
   118c0:	00f40733          	add	a4,s0,a5
   118c4:	00c72223          	sw	a2,4(a4)
   118c8:	00c72423          	sw	a2,8(a4)
   118cc:	00f6e663          	bltu	a3,a5,118d8 <_malloc_r+0x64c>
   118d0:	004ba783          	lw	a5,4(s7)
   118d4:	cbdff06f          	j	11590 <_malloc_r+0x304>
   118d8:	00840593          	add	a1,s0,8
   118dc:	00098513          	mv	a0,s3
   118e0:	ea8ff0ef          	jal	10f88 <_free_r>
   118e4:	00892b83          	lw	s7,8(s2)
   118e8:	000c2583          	lw	a1,0(s8)
   118ec:	004ba783          	lw	a5,4(s7)
   118f0:	ca1ff06f          	j	11590 <_malloc_r+0x304>
   118f4:	010a8a93          	add	s5,s5,16
   118f8:	c49ff06f          	j	11540 <_malloc_r+0x2b4>
   118fc:	4026d693          	sra	a3,a3,0x2
   11900:	00100793          	li	a5,1
   11904:	00d797b3          	sll	a5,a5,a3
   11908:	00f56533          	or	a0,a0,a5
   1190c:	00a92223          	sw	a0,4(s2)
   11910:	d75ff06f          	j	11684 <_malloc_r+0x3f8>
   11914:	015b85b3          	add	a1,s7,s5
   11918:	40b005b3          	neg	a1,a1
   1191c:	01459593          	sll	a1,a1,0x14
   11920:	0145da13          	srl	s4,a1,0x14
   11924:	000a0593          	mv	a1,s4
   11928:	00098513          	mv	a0,s3
   1192c:	564000ef          	jal	11e90 <_sbrk_r>
   11930:	fff00793          	li	a5,-1
   11934:	f4f512e3          	bne	a0,a5,11878 <_malloc_r+0x5ec>
   11938:	00000a13          	li	s4,0
   1193c:	f45ff06f          	j	11880 <_malloc_r+0x5f4>
   11940:	00812c03          	lw	s8,8(sp)
   11944:	00100793          	li	a5,1
   11948:	00fba223          	sw	a5,4(s7)
   1194c:	00098513          	mv	a0,s3
   11950:	0fc000ef          	jal	11a4c <__malloc_unlock>
   11954:	00000513          	li	a0,0
   11958:	01812a03          	lw	s4,24(sp)
   1195c:	01412a83          	lw	s5,20(sp)
   11960:	01012b03          	lw	s6,16(sp)
   11964:	00c12b83          	lw	s7,12(sp)
   11968:	00412c83          	lw	s9,4(sp)
   1196c:	9adff06f          	j	11318 <_malloc_r+0x8c>
   11970:	05400693          	li	a3,84
   11974:	04e6e463          	bltu	a3,a4,119bc <_malloc_r+0x730>
   11978:	00c7d713          	srl	a4,a5,0xc
   1197c:	06f70613          	add	a2,a4,111
   11980:	06e70693          	add	a3,a4,110
   11984:	00361613          	sll	a2,a2,0x3
   11988:	cd1ff06f          	j	11658 <_malloc_r+0x3cc>
   1198c:	15400713          	li	a4,340
   11990:	04f76463          	bltu	a4,a5,119d8 <_malloc_r+0x74c>
   11994:	00f4d793          	srl	a5,s1,0xf
   11998:	07878593          	add	a1,a5,120
   1199c:	07778813          	add	a6,a5,119
   119a0:	00359613          	sll	a2,a1,0x3
   119a4:	9c9ff06f          	j	1136c <_malloc_r+0xe0>
   119a8:	00892403          	lw	s0,8(s2)
   119ac:	00442783          	lw	a5,4(s0)
   119b0:	c01ff06f          	j	115b0 <_malloc_r+0x324>
   119b4:	d771a423          	sw	s7,-664(gp) # 13718 <__malloc_sbrk_base>
   119b8:	e81ff06f          	j	11838 <_malloc_r+0x5ac>
   119bc:	15400693          	li	a3,340
   119c0:	04e6e463          	bltu	a3,a4,11a08 <_malloc_r+0x77c>
   119c4:	00f7d713          	srl	a4,a5,0xf
   119c8:	07870613          	add	a2,a4,120
   119cc:	07770693          	add	a3,a4,119
   119d0:	00361613          	sll	a2,a2,0x3
   119d4:	c85ff06f          	j	11658 <_malloc_r+0x3cc>
   119d8:	55400713          	li	a4,1364
   119dc:	04f76463          	bltu	a4,a5,11a24 <_malloc_r+0x798>
   119e0:	0124d793          	srl	a5,s1,0x12
   119e4:	07d78593          	add	a1,a5,125
   119e8:	07c78813          	add	a6,a5,124
   119ec:	00359613          	sll	a2,a1,0x3
   119f0:	97dff06f          	j	1136c <_malloc_r+0xe0>
   119f4:	ff8c8c93          	add	s9,s9,-8
   119f8:	019a8ab3          	add	s5,s5,s9
   119fc:	417a8ab3          	sub	s5,s5,s7
   11a00:	00000a13          	li	s4,0
   11a04:	e7dff06f          	j	11880 <_malloc_r+0x5f4>
   11a08:	55400693          	li	a3,1364
   11a0c:	02e6e463          	bltu	a3,a4,11a34 <_malloc_r+0x7a8>
   11a10:	0127d713          	srl	a4,a5,0x12
   11a14:	07d70613          	add	a2,a4,125
   11a18:	07c70693          	add	a3,a4,124
   11a1c:	00361613          	sll	a2,a2,0x3
   11a20:	c39ff06f          	j	11658 <_malloc_r+0x3cc>
   11a24:	3f800613          	li	a2,1016
   11a28:	07f00593          	li	a1,127
   11a2c:	07e00813          	li	a6,126
   11a30:	93dff06f          	j	1136c <_malloc_r+0xe0>
   11a34:	3f800613          	li	a2,1016
   11a38:	07e00693          	li	a3,126
   11a3c:	c1dff06f          	j	11658 <_malloc_r+0x3cc>
   11a40:	00492783          	lw	a5,4(s2)
   11a44:	da1ff06f          	j	117e4 <_malloc_r+0x558>

00011a48 <__malloc_lock>:
   11a48:	00008067          	ret

00011a4c <__malloc_unlock>:
   11a4c:	00008067          	ret

00011a50 <_fclose_r>:
   11a50:	ff010113          	add	sp,sp,-16
   11a54:	00112623          	sw	ra,12(sp)
   11a58:	01212023          	sw	s2,0(sp)
   11a5c:	02058863          	beqz	a1,11a8c <_fclose_r+0x3c>
   11a60:	00812423          	sw	s0,8(sp)
   11a64:	00912223          	sw	s1,4(sp)
   11a68:	00058413          	mv	s0,a1
   11a6c:	00050493          	mv	s1,a0
   11a70:	00050663          	beqz	a0,11a7c <_fclose_r+0x2c>
   11a74:	03452783          	lw	a5,52(a0)
   11a78:	0c078c63          	beqz	a5,11b50 <_fclose_r+0x100>
   11a7c:	00c41783          	lh	a5,12(s0)
   11a80:	02079263          	bnez	a5,11aa4 <_fclose_r+0x54>
   11a84:	00812403          	lw	s0,8(sp)
   11a88:	00412483          	lw	s1,4(sp)
   11a8c:	00c12083          	lw	ra,12(sp)
   11a90:	00000913          	li	s2,0
   11a94:	00090513          	mv	a0,s2
   11a98:	00012903          	lw	s2,0(sp)
   11a9c:	01010113          	add	sp,sp,16
   11aa0:	00008067          	ret
   11aa4:	00040593          	mv	a1,s0
   11aa8:	00048513          	mv	a0,s1
   11aac:	0b8000ef          	jal	11b64 <__sflush_r>
   11ab0:	02c42783          	lw	a5,44(s0)
   11ab4:	00050913          	mv	s2,a0
   11ab8:	00078a63          	beqz	a5,11acc <_fclose_r+0x7c>
   11abc:	01c42583          	lw	a1,28(s0)
   11ac0:	00048513          	mv	a0,s1
   11ac4:	000780e7          	jalr	a5
   11ac8:	06054463          	bltz	a0,11b30 <_fclose_r+0xe0>
   11acc:	00c45783          	lhu	a5,12(s0)
   11ad0:	0807f793          	and	a5,a5,128
   11ad4:	06079663          	bnez	a5,11b40 <_fclose_r+0xf0>
   11ad8:	03042583          	lw	a1,48(s0)
   11adc:	00058c63          	beqz	a1,11af4 <_fclose_r+0xa4>
   11ae0:	04040793          	add	a5,s0,64
   11ae4:	00f58663          	beq	a1,a5,11af0 <_fclose_r+0xa0>
   11ae8:	00048513          	mv	a0,s1
   11aec:	c9cff0ef          	jal	10f88 <_free_r>
   11af0:	02042823          	sw	zero,48(s0)
   11af4:	04442583          	lw	a1,68(s0)
   11af8:	00058863          	beqz	a1,11b08 <_fclose_r+0xb8>
   11afc:	00048513          	mv	a0,s1
   11b00:	c88ff0ef          	jal	10f88 <_free_r>
   11b04:	04042223          	sw	zero,68(s0)
   11b08:	be1fe0ef          	jal	106e8 <__sfp_lock_acquire>
   11b0c:	00041623          	sh	zero,12(s0)
   11b10:	bddfe0ef          	jal	106ec <__sfp_lock_release>
   11b14:	00c12083          	lw	ra,12(sp)
   11b18:	00812403          	lw	s0,8(sp)
   11b1c:	00412483          	lw	s1,4(sp)
   11b20:	00090513          	mv	a0,s2
   11b24:	00012903          	lw	s2,0(sp)
   11b28:	01010113          	add	sp,sp,16
   11b2c:	00008067          	ret
   11b30:	00c45783          	lhu	a5,12(s0)
   11b34:	fff00913          	li	s2,-1
   11b38:	0807f793          	and	a5,a5,128
   11b3c:	f8078ee3          	beqz	a5,11ad8 <_fclose_r+0x88>
   11b40:	01042583          	lw	a1,16(s0)
   11b44:	00048513          	mv	a0,s1
   11b48:	c40ff0ef          	jal	10f88 <_free_r>
   11b4c:	f8dff06f          	j	11ad8 <_fclose_r+0x88>
   11b50:	b75fe0ef          	jal	106c4 <__sinit>
   11b54:	f29ff06f          	j	11a7c <_fclose_r+0x2c>

00011b58 <fclose>:
   11b58:	00050593          	mv	a1,a0
   11b5c:	d641a503          	lw	a0,-668(gp) # 13714 <_impure_ptr>
   11b60:	ef1ff06f          	j	11a50 <_fclose_r>

00011b64 <__sflush_r>:
   11b64:	00c59703          	lh	a4,12(a1)
   11b68:	fe010113          	add	sp,sp,-32
   11b6c:	00812c23          	sw	s0,24(sp)
   11b70:	01312623          	sw	s3,12(sp)
   11b74:	00112e23          	sw	ra,28(sp)
   11b78:	00877793          	and	a5,a4,8
   11b7c:	00058413          	mv	s0,a1
   11b80:	00050993          	mv	s3,a0
   11b84:	12079063          	bnez	a5,11ca4 <__sflush_r+0x140>
   11b88:	000017b7          	lui	a5,0x1
   11b8c:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   11b90:	0045a683          	lw	a3,4(a1)
   11b94:	00f767b3          	or	a5,a4,a5
   11b98:	00f59623          	sh	a5,12(a1)
   11b9c:	18d05263          	blez	a3,11d20 <__sflush_r+0x1bc>
   11ba0:	02842803          	lw	a6,40(s0)
   11ba4:	0e080463          	beqz	a6,11c8c <__sflush_r+0x128>
   11ba8:	00912a23          	sw	s1,20(sp)
   11bac:	01371693          	sll	a3,a4,0x13
   11bb0:	0009a483          	lw	s1,0(s3)
   11bb4:	0009a023          	sw	zero,0(s3)
   11bb8:	01c42583          	lw	a1,28(s0)
   11bbc:	1606ce63          	bltz	a3,11d38 <__sflush_r+0x1d4>
   11bc0:	00000613          	li	a2,0
   11bc4:	00100693          	li	a3,1
   11bc8:	00098513          	mv	a0,s3
   11bcc:	000800e7          	jalr	a6
   11bd0:	fff00793          	li	a5,-1
   11bd4:	00050613          	mv	a2,a0
   11bd8:	1af50463          	beq	a0,a5,11d80 <__sflush_r+0x21c>
   11bdc:	00c41783          	lh	a5,12(s0)
   11be0:	02842803          	lw	a6,40(s0)
   11be4:	01c42583          	lw	a1,28(s0)
   11be8:	0047f793          	and	a5,a5,4
   11bec:	00078e63          	beqz	a5,11c08 <__sflush_r+0xa4>
   11bf0:	00442703          	lw	a4,4(s0)
   11bf4:	03042783          	lw	a5,48(s0)
   11bf8:	40e60633          	sub	a2,a2,a4
   11bfc:	00078663          	beqz	a5,11c08 <__sflush_r+0xa4>
   11c00:	03c42783          	lw	a5,60(s0)
   11c04:	40f60633          	sub	a2,a2,a5
   11c08:	00000693          	li	a3,0
   11c0c:	00098513          	mv	a0,s3
   11c10:	000800e7          	jalr	a6
   11c14:	fff00793          	li	a5,-1
   11c18:	12f51463          	bne	a0,a5,11d40 <__sflush_r+0x1dc>
   11c1c:	0009a683          	lw	a3,0(s3)
   11c20:	01d00793          	li	a5,29
   11c24:	00c41703          	lh	a4,12(s0)
   11c28:	16d7ea63          	bltu	a5,a3,11d9c <__sflush_r+0x238>
   11c2c:	204007b7          	lui	a5,0x20400
   11c30:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203ec5b9>
   11c34:	00d7d7b3          	srl	a5,a5,a3
   11c38:	0017f793          	and	a5,a5,1
   11c3c:	16078063          	beqz	a5,11d9c <__sflush_r+0x238>
   11c40:	01042603          	lw	a2,16(s0)
   11c44:	fffff7b7          	lui	a5,0xfffff
   11c48:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebdb7>
   11c4c:	00f777b3          	and	a5,a4,a5
   11c50:	00f41623          	sh	a5,12(s0)
   11c54:	00042223          	sw	zero,4(s0)
   11c58:	00c42023          	sw	a2,0(s0)
   11c5c:	01371793          	sll	a5,a4,0x13
   11c60:	0007d463          	bgez	a5,11c68 <__sflush_r+0x104>
   11c64:	10068263          	beqz	a3,11d68 <__sflush_r+0x204>
   11c68:	03042583          	lw	a1,48(s0)
   11c6c:	0099a023          	sw	s1,0(s3)
   11c70:	10058463          	beqz	a1,11d78 <__sflush_r+0x214>
   11c74:	04040793          	add	a5,s0,64
   11c78:	00f58663          	beq	a1,a5,11c84 <__sflush_r+0x120>
   11c7c:	00098513          	mv	a0,s3
   11c80:	b08ff0ef          	jal	10f88 <_free_r>
   11c84:	01412483          	lw	s1,20(sp)
   11c88:	02042823          	sw	zero,48(s0)
   11c8c:	00000513          	li	a0,0
   11c90:	01c12083          	lw	ra,28(sp)
   11c94:	01812403          	lw	s0,24(sp)
   11c98:	00c12983          	lw	s3,12(sp)
   11c9c:	02010113          	add	sp,sp,32
   11ca0:	00008067          	ret
   11ca4:	01212823          	sw	s2,16(sp)
   11ca8:	0105a903          	lw	s2,16(a1)
   11cac:	08090263          	beqz	s2,11d30 <__sflush_r+0x1cc>
   11cb0:	00912a23          	sw	s1,20(sp)
   11cb4:	0005a483          	lw	s1,0(a1)
   11cb8:	00377713          	and	a4,a4,3
   11cbc:	0125a023          	sw	s2,0(a1)
   11cc0:	412484b3          	sub	s1,s1,s2
   11cc4:	00000793          	li	a5,0
   11cc8:	00071463          	bnez	a4,11cd0 <__sflush_r+0x16c>
   11ccc:	0145a783          	lw	a5,20(a1)
   11cd0:	00f42423          	sw	a5,8(s0)
   11cd4:	00904863          	bgtz	s1,11ce4 <__sflush_r+0x180>
   11cd8:	0540006f          	j	11d2c <__sflush_r+0x1c8>
   11cdc:	00a90933          	add	s2,s2,a0
   11ce0:	04905663          	blez	s1,11d2c <__sflush_r+0x1c8>
   11ce4:	02442783          	lw	a5,36(s0)
   11ce8:	01c42583          	lw	a1,28(s0)
   11cec:	00048693          	mv	a3,s1
   11cf0:	00090613          	mv	a2,s2
   11cf4:	00098513          	mv	a0,s3
   11cf8:	000780e7          	jalr	a5
   11cfc:	40a484b3          	sub	s1,s1,a0
   11d00:	fca04ee3          	bgtz	a0,11cdc <__sflush_r+0x178>
   11d04:	00c41703          	lh	a4,12(s0)
   11d08:	01012903          	lw	s2,16(sp)
   11d0c:	04076713          	or	a4,a4,64
   11d10:	01412483          	lw	s1,20(sp)
   11d14:	00e41623          	sh	a4,12(s0)
   11d18:	fff00513          	li	a0,-1
   11d1c:	f75ff06f          	j	11c90 <__sflush_r+0x12c>
   11d20:	03c5a683          	lw	a3,60(a1)
   11d24:	e6d04ee3          	bgtz	a3,11ba0 <__sflush_r+0x3c>
   11d28:	f65ff06f          	j	11c8c <__sflush_r+0x128>
   11d2c:	01412483          	lw	s1,20(sp)
   11d30:	01012903          	lw	s2,16(sp)
   11d34:	f59ff06f          	j	11c8c <__sflush_r+0x128>
   11d38:	05042603          	lw	a2,80(s0)
   11d3c:	eadff06f          	j	11be8 <__sflush_r+0x84>
   11d40:	00c41703          	lh	a4,12(s0)
   11d44:	01042683          	lw	a3,16(s0)
   11d48:	fffff7b7          	lui	a5,0xfffff
   11d4c:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebdb7>
   11d50:	00f777b3          	and	a5,a4,a5
   11d54:	00f41623          	sh	a5,12(s0)
   11d58:	00042223          	sw	zero,4(s0)
   11d5c:	00d42023          	sw	a3,0(s0)
   11d60:	01371793          	sll	a5,a4,0x13
   11d64:	f007d2e3          	bgez	a5,11c68 <__sflush_r+0x104>
   11d68:	03042583          	lw	a1,48(s0)
   11d6c:	04a42823          	sw	a0,80(s0)
   11d70:	0099a023          	sw	s1,0(s3)
   11d74:	f00590e3          	bnez	a1,11c74 <__sflush_r+0x110>
   11d78:	01412483          	lw	s1,20(sp)
   11d7c:	f11ff06f          	j	11c8c <__sflush_r+0x128>
   11d80:	0009a783          	lw	a5,0(s3)
   11d84:	e4078ce3          	beqz	a5,11bdc <__sflush_r+0x78>
   11d88:	01d00713          	li	a4,29
   11d8c:	00e78c63          	beq	a5,a4,11da4 <__sflush_r+0x240>
   11d90:	01600713          	li	a4,22
   11d94:	00e78863          	beq	a5,a4,11da4 <__sflush_r+0x240>
   11d98:	00c41703          	lh	a4,12(s0)
   11d9c:	04076713          	or	a4,a4,64
   11da0:	f71ff06f          	j	11d10 <__sflush_r+0x1ac>
   11da4:	0099a023          	sw	s1,0(s3)
   11da8:	01412483          	lw	s1,20(sp)
   11dac:	ee1ff06f          	j	11c8c <__sflush_r+0x128>

00011db0 <_fflush_r>:
   11db0:	fe010113          	add	sp,sp,-32
   11db4:	00812c23          	sw	s0,24(sp)
   11db8:	00112e23          	sw	ra,28(sp)
   11dbc:	00050413          	mv	s0,a0
   11dc0:	00050663          	beqz	a0,11dcc <_fflush_r+0x1c>
   11dc4:	03452783          	lw	a5,52(a0)
   11dc8:	02078a63          	beqz	a5,11dfc <_fflush_r+0x4c>
   11dcc:	00c59783          	lh	a5,12(a1)
   11dd0:	00079c63          	bnez	a5,11de8 <_fflush_r+0x38>
   11dd4:	01c12083          	lw	ra,28(sp)
   11dd8:	01812403          	lw	s0,24(sp)
   11ddc:	00000513          	li	a0,0
   11de0:	02010113          	add	sp,sp,32
   11de4:	00008067          	ret
   11de8:	00040513          	mv	a0,s0
   11dec:	01812403          	lw	s0,24(sp)
   11df0:	01c12083          	lw	ra,28(sp)
   11df4:	02010113          	add	sp,sp,32
   11df8:	d6dff06f          	j	11b64 <__sflush_r>
   11dfc:	00b12623          	sw	a1,12(sp)
   11e00:	8c5fe0ef          	jal	106c4 <__sinit>
   11e04:	00c12583          	lw	a1,12(sp)
   11e08:	fc5ff06f          	j	11dcc <_fflush_r+0x1c>

00011e0c <fflush>:
   11e0c:	06050063          	beqz	a0,11e6c <fflush+0x60>
   11e10:	00050593          	mv	a1,a0
   11e14:	d641a503          	lw	a0,-668(gp) # 13714 <_impure_ptr>
   11e18:	00050663          	beqz	a0,11e24 <fflush+0x18>
   11e1c:	03452783          	lw	a5,52(a0)
   11e20:	00078c63          	beqz	a5,11e38 <fflush+0x2c>
   11e24:	00c59783          	lh	a5,12(a1)
   11e28:	00079663          	bnez	a5,11e34 <fflush+0x28>
   11e2c:	00000513          	li	a0,0
   11e30:	00008067          	ret
   11e34:	d31ff06f          	j	11b64 <__sflush_r>
   11e38:	fe010113          	add	sp,sp,-32
   11e3c:	00b12623          	sw	a1,12(sp)
   11e40:	00a12423          	sw	a0,8(sp)
   11e44:	00112e23          	sw	ra,28(sp)
   11e48:	87dfe0ef          	jal	106c4 <__sinit>
   11e4c:	00c12583          	lw	a1,12(sp)
   11e50:	00812503          	lw	a0,8(sp)
   11e54:	00c59783          	lh	a5,12(a1)
   11e58:	02079663          	bnez	a5,11e84 <fflush+0x78>
   11e5c:	01c12083          	lw	ra,28(sp)
   11e60:	00000513          	li	a0,0
   11e64:	02010113          	add	sp,sp,32
   11e68:	00008067          	ret
   11e6c:	000125b7          	lui	a1,0x12
   11e70:	00013537          	lui	a0,0x13
   11e74:	82818613          	add	a2,gp,-2008 # 131d8 <__sglue>
   11e78:	db058593          	add	a1,a1,-592 # 11db0 <_fflush_r>
   11e7c:	1e850513          	add	a0,a0,488 # 131e8 <_impure_data>
   11e80:	899fe06f          	j	10718 <_fwalk_sglue>
   11e84:	01c12083          	lw	ra,28(sp)
   11e88:	02010113          	add	sp,sp,32
   11e8c:	cd9ff06f          	j	11b64 <__sflush_r>

00011e90 <_sbrk_r>:
   11e90:	ff010113          	add	sp,sp,-16
   11e94:	00812423          	sw	s0,8(sp)
   11e98:	00912223          	sw	s1,4(sp)
   11e9c:	00050413          	mv	s0,a0
   11ea0:	00058513          	mv	a0,a1
   11ea4:	00112623          	sw	ra,12(sp)
   11ea8:	d601aa23          	sw	zero,-652(gp) # 13724 <errno>
   11eac:	230000ef          	jal	120dc <_sbrk>
   11eb0:	fff00793          	li	a5,-1
   11eb4:	00f50c63          	beq	a0,a5,11ecc <_sbrk_r+0x3c>
   11eb8:	00c12083          	lw	ra,12(sp)
   11ebc:	00812403          	lw	s0,8(sp)
   11ec0:	00412483          	lw	s1,4(sp)
   11ec4:	01010113          	add	sp,sp,16
   11ec8:	00008067          	ret
   11ecc:	d741a783          	lw	a5,-652(gp) # 13724 <errno>
   11ed0:	fe0784e3          	beqz	a5,11eb8 <_sbrk_r+0x28>
   11ed4:	00c12083          	lw	ra,12(sp)
   11ed8:	00f42023          	sw	a5,0(s0)
   11edc:	00812403          	lw	s0,8(sp)
   11ee0:	00412483          	lw	s1,4(sp)
   11ee4:	01010113          	add	sp,sp,16
   11ee8:	00008067          	ret

00011eec <__libc_fini_array>:
   11eec:	ff010113          	add	sp,sp,-16
   11ef0:	00812423          	sw	s0,8(sp)
   11ef4:	000137b7          	lui	a5,0x13
   11ef8:	00013437          	lui	s0,0x13
   11efc:	1ac78793          	add	a5,a5,428 # 131ac <__do_global_dtors_aux_fini_array_entry>
   11f00:	1b040413          	add	s0,s0,432 # 131b0 <result>
   11f04:	40f40433          	sub	s0,s0,a5
   11f08:	00912223          	sw	s1,4(sp)
   11f0c:	00112623          	sw	ra,12(sp)
   11f10:	40245493          	sra	s1,s0,0x2
   11f14:	02048063          	beqz	s1,11f34 <__libc_fini_array+0x48>
   11f18:	ffc40413          	add	s0,s0,-4
   11f1c:	00f40433          	add	s0,s0,a5
   11f20:	00042783          	lw	a5,0(s0)
   11f24:	fff48493          	add	s1,s1,-1
   11f28:	ffc40413          	add	s0,s0,-4
   11f2c:	000780e7          	jalr	a5
   11f30:	fe0498e3          	bnez	s1,11f20 <__libc_fini_array+0x34>
   11f34:	00c12083          	lw	ra,12(sp)
   11f38:	00812403          	lw	s0,8(sp)
   11f3c:	00412483          	lw	s1,4(sp)
   11f40:	01010113          	add	sp,sp,16
   11f44:	00008067          	ret

00011f48 <__register_exitproc>:
   11f48:	d781a783          	lw	a5,-648(gp) # 13728 <__atexit>
   11f4c:	04078c63          	beqz	a5,11fa4 <__register_exitproc+0x5c>
   11f50:	0047a703          	lw	a4,4(a5)
   11f54:	01f00813          	li	a6,31
   11f58:	08e84063          	blt	a6,a4,11fd8 <__register_exitproc+0x90>
   11f5c:	00271813          	sll	a6,a4,0x2
   11f60:	02050663          	beqz	a0,11f8c <__register_exitproc+0x44>
   11f64:	01078333          	add	t1,a5,a6
   11f68:	08c32423          	sw	a2,136(t1)
   11f6c:	1887a883          	lw	a7,392(a5)
   11f70:	00100613          	li	a2,1
   11f74:	00e61633          	sll	a2,a2,a4
   11f78:	00c8e8b3          	or	a7,a7,a2
   11f7c:	1917a423          	sw	a7,392(a5)
   11f80:	10d32423          	sw	a3,264(t1)
   11f84:	00200693          	li	a3,2
   11f88:	02d50663          	beq	a0,a3,11fb4 <__register_exitproc+0x6c>
   11f8c:	00170713          	add	a4,a4,1
   11f90:	00e7a223          	sw	a4,4(a5)
   11f94:	010787b3          	add	a5,a5,a6
   11f98:	00b7a423          	sw	a1,8(a5)
   11f9c:	00000513          	li	a0,0
   11fa0:	00008067          	ret
   11fa4:	f0818813          	add	a6,gp,-248 # 138b8 <__atexit0>
   11fa8:	d701ac23          	sw	a6,-648(gp) # 13728 <__atexit>
   11fac:	f0818793          	add	a5,gp,-248 # 138b8 <__atexit0>
   11fb0:	fa1ff06f          	j	11f50 <__register_exitproc+0x8>
   11fb4:	18c7a683          	lw	a3,396(a5)
   11fb8:	00170713          	add	a4,a4,1
   11fbc:	00e7a223          	sw	a4,4(a5)
   11fc0:	00c6e6b3          	or	a3,a3,a2
   11fc4:	18d7a623          	sw	a3,396(a5)
   11fc8:	010787b3          	add	a5,a5,a6
   11fcc:	00b7a423          	sw	a1,8(a5)
   11fd0:	00000513          	li	a0,0
   11fd4:	00008067          	ret
   11fd8:	fff00513          	li	a0,-1
   11fdc:	00008067          	ret

00011fe0 <_close>:
   11fe0:	ff010113          	add	sp,sp,-16
   11fe4:	00112623          	sw	ra,12(sp)
   11fe8:	00812423          	sw	s0,8(sp)
   11fec:	03900893          	li	a7,57
   11ff0:	00000073          	ecall
   11ff4:	00050413          	mv	s0,a0
   11ff8:	00054c63          	bltz	a0,12010 <_close+0x30>
   11ffc:	00c12083          	lw	ra,12(sp)
   12000:	00040513          	mv	a0,s0
   12004:	00812403          	lw	s0,8(sp)
   12008:	01010113          	add	sp,sp,16
   1200c:	00008067          	ret
   12010:	40800433          	neg	s0,s0
   12014:	184000ef          	jal	12198 <__errno>
   12018:	00852023          	sw	s0,0(a0)
   1201c:	fff00413          	li	s0,-1
   12020:	fddff06f          	j	11ffc <_close+0x1c>

00012024 <_exit>:
   12024:	05d00893          	li	a7,93
   12028:	00000073          	ecall
   1202c:	00054463          	bltz	a0,12034 <_exit+0x10>
   12030:	0000006f          	j	12030 <_exit+0xc>
   12034:	ff010113          	add	sp,sp,-16
   12038:	00812423          	sw	s0,8(sp)
   1203c:	00050413          	mv	s0,a0
   12040:	00112623          	sw	ra,12(sp)
   12044:	40800433          	neg	s0,s0
   12048:	150000ef          	jal	12198 <__errno>
   1204c:	00852023          	sw	s0,0(a0)
   12050:	0000006f          	j	12050 <_exit+0x2c>

00012054 <_lseek>:
   12054:	ff010113          	add	sp,sp,-16
   12058:	00112623          	sw	ra,12(sp)
   1205c:	00812423          	sw	s0,8(sp)
   12060:	03e00893          	li	a7,62
   12064:	00000073          	ecall
   12068:	00050413          	mv	s0,a0
   1206c:	00054c63          	bltz	a0,12084 <_lseek+0x30>
   12070:	00c12083          	lw	ra,12(sp)
   12074:	00040513          	mv	a0,s0
   12078:	00812403          	lw	s0,8(sp)
   1207c:	01010113          	add	sp,sp,16
   12080:	00008067          	ret
   12084:	40800433          	neg	s0,s0
   12088:	110000ef          	jal	12198 <__errno>
   1208c:	00852023          	sw	s0,0(a0)
   12090:	fff00413          	li	s0,-1
   12094:	fddff06f          	j	12070 <_lseek+0x1c>

00012098 <_read>:
   12098:	ff010113          	add	sp,sp,-16
   1209c:	00112623          	sw	ra,12(sp)
   120a0:	00812423          	sw	s0,8(sp)
   120a4:	03f00893          	li	a7,63
   120a8:	00000073          	ecall
   120ac:	00050413          	mv	s0,a0
   120b0:	00054c63          	bltz	a0,120c8 <_read+0x30>
   120b4:	00c12083          	lw	ra,12(sp)
   120b8:	00040513          	mv	a0,s0
   120bc:	00812403          	lw	s0,8(sp)
   120c0:	01010113          	add	sp,sp,16
   120c4:	00008067          	ret
   120c8:	40800433          	neg	s0,s0
   120cc:	0cc000ef          	jal	12198 <__errno>
   120d0:	00852023          	sw	s0,0(a0)
   120d4:	fff00413          	li	s0,-1
   120d8:	fddff06f          	j	120b4 <_read+0x1c>

000120dc <_sbrk>:
   120dc:	d881a703          	lw	a4,-632(gp) # 13738 <heap_end.0>
   120e0:	ff010113          	add	sp,sp,-16
   120e4:	00112623          	sw	ra,12(sp)
   120e8:	00050793          	mv	a5,a0
   120ec:	02071063          	bnez	a4,1210c <_sbrk+0x30>
   120f0:	0d600893          	li	a7,214
   120f4:	00000513          	li	a0,0
   120f8:	00000073          	ecall
   120fc:	fff00613          	li	a2,-1
   12100:	00050713          	mv	a4,a0
   12104:	02c50a63          	beq	a0,a2,12138 <_sbrk+0x5c>
   12108:	d8a1a423          	sw	a0,-632(gp) # 13738 <heap_end.0>
   1210c:	0d600893          	li	a7,214
   12110:	00e78533          	add	a0,a5,a4
   12114:	00000073          	ecall
   12118:	d881a703          	lw	a4,-632(gp) # 13738 <heap_end.0>
   1211c:	00e787b3          	add	a5,a5,a4
   12120:	00f51c63          	bne	a0,a5,12138 <_sbrk+0x5c>
   12124:	00c12083          	lw	ra,12(sp)
   12128:	d8a1a423          	sw	a0,-632(gp) # 13738 <heap_end.0>
   1212c:	00070513          	mv	a0,a4
   12130:	01010113          	add	sp,sp,16
   12134:	00008067          	ret
   12138:	060000ef          	jal	12198 <__errno>
   1213c:	00c12083          	lw	ra,12(sp)
   12140:	00c00793          	li	a5,12
   12144:	00f52023          	sw	a5,0(a0)
   12148:	fff00513          	li	a0,-1
   1214c:	01010113          	add	sp,sp,16
   12150:	00008067          	ret

00012154 <_write>:
   12154:	ff010113          	add	sp,sp,-16
   12158:	00112623          	sw	ra,12(sp)
   1215c:	00812423          	sw	s0,8(sp)
   12160:	04000893          	li	a7,64
   12164:	00000073          	ecall
   12168:	00050413          	mv	s0,a0
   1216c:	00054c63          	bltz	a0,12184 <_write+0x30>
   12170:	00c12083          	lw	ra,12(sp)
   12174:	00040513          	mv	a0,s0
   12178:	00812403          	lw	s0,8(sp)
   1217c:	01010113          	add	sp,sp,16
   12180:	00008067          	ret
   12184:	40800433          	neg	s0,s0
   12188:	010000ef          	jal	12198 <__errno>
   1218c:	00852023          	sw	s0,0(a0)
   12190:	fff00413          	li	s0,-1
   12194:	fddff06f          	j	12170 <_write+0x1c>

00012198 <__errno>:
   12198:	d641a503          	lw	a0,-668(gp) # 13714 <_impure_ptr>
   1219c:	00008067          	ret

Disassembly of section .eh_frame:

000131a0 <__EH_FRAME_BEGIN__>:
   131a0:	0000                	.insn	2, 0x
	...

Disassembly of section .init_array:

000131a4 <__init_array_start>:
   131a4:	00c0                	.insn	2, 0x00c0
   131a6:	0001                	.insn	2, 0x0001

000131a8 <__frame_dummy_init_array_entry>:
   131a8:	0168                	.insn	2, 0x0168
   131aa:	0001                	.insn	2, 0x0001

Disassembly of section .fini_array:

000131ac <__do_global_dtors_aux_fini_array_entry>:
   131ac:	0124                	.insn	2, 0x0124
   131ae:	0001                	.insn	2, 0x0001

Disassembly of section .data:

000131b0 <result>:
   131b0:	0001                	.insn	2, 0x0001
   131b2:	0000                	.insn	2, 0x
   131b4:	0002                	.insn	2, 0x0002
   131b6:	0000                	.insn	2, 0x
   131b8:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   131bc:	0004                	.insn	2, 0x0004
   131be:	0000                	.insn	2, 0x
   131c0:	0005                	.insn	2, 0x0005
   131c2:	0000                	.insn	2, 0x
   131c4:	0006                	.insn	2, 0x0006
   131c6:	0000                	.insn	2, 0x
   131c8:	00000007          	.insn	4, 0x0007
   131cc:	0008                	.insn	2, 0x0008
   131ce:	0000                	.insn	2, 0x
   131d0:	0009                	.insn	2, 0x0009
   131d2:	0000                	.insn	2, 0x
   131d4:	000a                	.insn	2, 0x000a
	...

000131d8 <__sglue>:
   131d8:	0000                	.insn	2, 0x
   131da:	0000                	.insn	2, 0x
   131dc:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   131e0:	3758                	.insn	2, 0x3758
   131e2:	0001                	.insn	2, 0x0001
   131e4:	0000                	.insn	2, 0x
	...

000131e8 <_impure_data>:
   131e8:	0000                	.insn	2, 0x
   131ea:	0000                	.insn	2, 0x
   131ec:	3758                	.insn	2, 0x3758
   131ee:	0001                	.insn	2, 0x0001
   131f0:	37c0                	.insn	2, 0x37c0
   131f2:	0001                	.insn	2, 0x0001
   131f4:	3828                	.insn	2, 0x3828
   131f6:	0001                	.insn	2, 0x0001
	...
   13280:	0001                	.insn	2, 0x0001
   13282:	0000                	.insn	2, 0x
   13284:	0000                	.insn	2, 0x
   13286:	0000                	.insn	2, 0x
   13288:	330e                	.insn	2, 0x330e
   1328a:	abcd                	.insn	2, 0xabcd
   1328c:	1234                	.insn	2, 0x1234
   1328e:	e66d                	.insn	2, 0xe66d
   13290:	deec                	.insn	2, 0xdeec
   13292:	0005                	.insn	2, 0x0005
   13294:	0000000b          	.insn	4, 0x000b
	...

00013308 <__malloc_av_>:
	...
   13310:	3308                	.insn	2, 0x3308
   13312:	0001                	.insn	2, 0x0001
   13314:	3308                	.insn	2, 0x3308
   13316:	0001                	.insn	2, 0x0001
   13318:	3310                	.insn	2, 0x3310
   1331a:	0001                	.insn	2, 0x0001
   1331c:	3310                	.insn	2, 0x3310
   1331e:	0001                	.insn	2, 0x0001
   13320:	3318                	.insn	2, 0x3318
   13322:	0001                	.insn	2, 0x0001
   13324:	3318                	.insn	2, 0x3318
   13326:	0001                	.insn	2, 0x0001
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

Disassembly of section .sdata:

00013710 <__dso_handle>:
   13710:	0000                	.insn	2, 0x
	...

00013714 <_impure_ptr>:
   13714:	31e8                	.insn	2, 0x31e8
   13716:	0001                	.insn	2, 0x0001

00013718 <__malloc_sbrk_base>:
   13718:	ffff                	.insn	2, 0xffff
   1371a:	ffff                	.insn	2, 0xffff

0001371c <__malloc_trim_threshold>:
   1371c:	0000                	.insn	2, 0x
   1371e:	0002                	.insn	2, 0x0002

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
