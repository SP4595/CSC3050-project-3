
n!.riscv:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	419000ef          	jal	10cc0 <__call_exitprocs>
   100ac:	d4c1a783          	lw	a5,-692(gp) # 136bc <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	725010ef          	jal	11fe0 <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00012537          	lui	a0,0x12
   100cc:	ea850513          	add	a0,a0,-344 # 11ea8 <__libc_fini_array>
   100d0:	5250006f          	j	10df4 <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00004197          	auipc	gp,0x4 # 65752
   100dc:	89818193          	add	gp,gp,-1896 # 13970 <__global_pointer$>
   100e0:	d4818513          	add	a0,gp,-696 # 136b8 <result>
   100e4:	07418613          	add	a2,gp,116 # 139e4 <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	2f5000ef          	jal	10be4 <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	d0050513          	add	a0,a0,-768 # 10df4 <atexit>
   100fc:	00050863          	beqz	a0,1010c <_start+0x34>
   10100:	00002517          	auipc	a0,0x2
   10104:	da850513          	add	a0,a0,-600 # 11ea8 <__libc_fini_array>
   10108:	4ed000ef          	jal	10df4 <atexit>
   1010c:	23d000ef          	jal	10b48 <__libc_init_array>
   10110:	00012503          	lw	a0,0(sp)
   10114:	00410593          	add	a1,sp,4
   10118:	00000613          	li	a2,0
   1011c:	0cc000ef          	jal	101e8 <main> #65820
   10120:	f75ff06f          	j	10094 <exit>

00010124 <__do_global_dtors_aux>:
   10124:	ff010113          	add	sp,sp,-16
   10128:	00812423          	sw	s0,8(sp)
   1012c:	d681c783          	lbu	a5,-664(gp) # 136d8 <completed.1>
   10130:	00112623          	sw	ra,12(sp)
   10134:	02079263          	bnez	a5,10158 <__do_global_dtors_aux+0x34>
   10138:	00000793          	li	a5,0
   1013c:	00078a63          	beqz	a5,10150 <__do_global_dtors_aux+0x2c>
   10140:	00013537          	lui	a0,0x13
   10144:	15c50513          	add	a0,a0,348 # 1315c <__EH_FRAME_BEGIN__>
   10148:	00000097          	auipc	ra,0x0
   1014c:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10150:	00100793          	li	a5,1
   10154:	d6f18423          	sb	a5,-664(gp) # 136d8 <completed.1>
   10158:	00c12083          	lw	ra,12(sp)
   1015c:	00812403          	lw	s0,8(sp)
   10160:	01010113          	add	sp,sp,16
   10164:	00008067          	ret

00010168 <frame_dummy>:
   10168:	00000793          	li	a5,0
   1016c:	00078c63          	beqz	a5,10184 <frame_dummy+0x1c>
   10170:	00013537          	lui	a0,0x13
   10174:	d6c18593          	add	a1,gp,-660 # 136dc <object.0>
   10178:	15c50513          	add	a0,a0,348 # 1315c <__EH_FRAME_BEGIN__>
   1017c:	00000317          	auipc	t1,0x0
   10180:	00000067          	jr	zero # 0 <exit-0x10094>
   10184:	00008067          	ret

00010188 <cal_n>:
   10188:	fe010113          	addi	sp,sp,-32 # 65928
   1018c:	00112e23          	sw	ra,28(sp) # sp + 28 存 66048 (ra)
   10190:	00812c23          	sw	s0,24(sp) # sp + 24 存 s0
   10194:	02010413          	addi	s0,sp,32 # s0 = sp + 32
   10198:	fea42623          	sw	a0,-20(s0) # sp sp + 32 - 20 存 a0
   1019c:	fec42703          	lw	a4,-20(s0) # a4 = a0 (10)
   101a0:	00100793          	li	a5,1 # a5 = 1 # 65952
   101a4:	00f71663          	bne	a4,a5,101b0 <cal_n+0x28> # a4 != 1
   101a8:	fec42783          	lw	a5,-20(s0) # a5 = a4
   101ac:	0280006f          	j	101d4 <cal_n+0x4c>
   101b0:	fec42783          	lw	a5,-20(s0) # a5 = a4
   101b4:	fff78793          	add	a5,a5,-1
   101b8:	00078513          	mv	a0,a5 
   101bc:	fcdff0ef          	jal	10188 <cal_n> # 
   101c0:	00050793          	mv	a5,a0
   101c4:	fec42583          	lw	a1,-20(s0) # i
   101c8:	00078513          	mv	a0,a5 # a0 = i - 1
   101cc:	178000ef          	jal	10344 <__mulsi3>
   101d0:	00050793          	mv	a5,a0 
   101d4:	00078513          	mv	a0,a5 # a0 = a5 (a5 是输出)
   101d8:	01c12083          	lw	ra,28(sp)
   101dc:	01812403          	lw	s0,24(sp)
   101e0:	02010113          	add	sp,sp,32
   101e4:	00008067          	ret

000101e8 <main>:
   101e8:	ff010113          	add	sp,sp,-16
   101ec:	00112623          	sw	ra,12(sp) # 66024
   101f0:	00812423          	sw	s0,8(sp)
   101f4:	01010413          	add	s0,sp,16
   101f8:	00a00513          	li	a0,10
   101fc:	f8dff0ef          	jal	10188 <cal_n>
   10200:	00050713          	mv	a4,a0
   10204:	d4e1a423          	sw	a4,-696(gp) # 136b8 <result>
   10208:	d481a783          	lw	a5,-696(gp) # 136b8 <result>
   1020c:	00078513          	mv	a0,a5
   10210:	028000ef          	jal	10238 <print_d>
   10214:	00a00513          	li	a0,10
   10218:	070000ef          	jal	10288 <print_c>
   1021c:	098000ef          	jal	102b4 <exit_proc>
   10220:	00000793          	li	a5,0
   10224:	00078513          	mv	a0,a5
   10228:	00c12083          	lw	ra,12(sp)
   1022c:	00812403          	lw	s0,8(sp)
   10230:	01010113          	add	sp,sp,16
   10234:	00008067          	ret

00010238 <print_d>:
   10238:	fe010113          	add	sp,sp,-32
   1023c:	00812e23          	sw	s0,28(sp)
   10240:	02010413          	add	s0,sp,32
   10244:	fea42623          	sw	a0,-20(s0)
   10248:	00200893          	li	a7,2
   1024c:	00000073          	ecall
   10250:	00000013          	nop
   10254:	01c12403          	lw	s0,28(sp)
   10258:	02010113          	add	sp,sp,32
   1025c:	00008067          	ret

00010260 <print_s>:
   10260:	fe010113          	add	sp,sp,-32
   10264:	00812e23          	sw	s0,28(sp)
   10268:	02010413          	add	s0,sp,32
   1026c:	fea42623          	sw	a0,-20(s0)
   10270:	00000893          	li	a7,0
   10274:	00000073          	ecall
   10278:	00000013          	nop
   1027c:	01c12403          	lw	s0,28(sp)
   10280:	02010113          	add	sp,sp,32
   10284:	00008067          	ret

00010288 <print_c>:
   10288:	fe010113          	add	sp,sp,-32
   1028c:	00812e23          	sw	s0,28(sp)
   10290:	02010413          	add	s0,sp,32
   10294:	00050793          	mv	a5,a0
   10298:	fef407a3          	sb	a5,-17(s0)
   1029c:	00100893          	li	a7,1
   102a0:	00000073          	ecall
   102a4:	00000013          	nop
   102a8:	01c12403          	lw	s0,28(sp)
   102ac:	02010113          	add	sp,sp,32
   102b0:	00008067          	ret

000102b4 <exit_proc>:
   102b4:	ff010113          	add	sp,sp,-16
   102b8:	00812623          	sw	s0,12(sp)
   102bc:	01010413          	add	s0,sp,16
   102c0:	00300893          	li	a7,3
   102c4:	00000073          	ecall
   102c8:	00000013          	nop
   102cc:	00c12403          	lw	s0,12(sp)
   102d0:	01010113          	add	sp,sp,16
   102d4:	00008067          	ret

000102d8 <read_char>:
   102d8:	fe010113          	add	sp,sp,-32
   102dc:	00812e23          	sw	s0,28(sp)
   102e0:	02010413          	add	s0,sp,32
   102e4:	00400893          	li	a7,4
   102e8:	00000073          	ecall
   102ec:	00050793          	mv	a5,a0
   102f0:	fef407a3          	sb	a5,-17(s0)
   102f4:	fef44783          	lbu	a5,-17(s0)
   102f8:	00078513          	mv	a0,a5
   102fc:	01c12403          	lw	s0,28(sp)
   10300:	02010113          	add	sp,sp,32
   10304:	00008067          	ret

00010308 <read_num>:
   10308:	fe010113          	add	sp,sp,-32
   1030c:	00812e23          	sw	s0,28(sp)
   10310:	02010413          	add	s0,sp,32
   10314:	00500893          	li	a7,5
   10318:	00000073          	ecall
   1031c:	00050713          	mv	a4,a0
   10320:	fee42423          	sw	a4,-24(s0)
   10324:	fef42623          	sw	a5,-20(s0)
   10328:	fe842703          	lw	a4,-24(s0)
   1032c:	fec42783          	lw	a5,-20(s0)
   10330:	00070513          	mv	a0,a4
   10334:	00078593          	mv	a1,a5
   10338:	01c12403          	lw	s0,28(sp)
   1033c:	02010113          	add	sp,sp,32
   10340:	00008067          	ret

00010344 <__mulsi3>:
   10344:	00050613          	mv	a2,a0
   10348:	00000513          	li	a0,0
   1034c:	0015f693          	and	a3,a1,1
   10350:	00068463          	beqz	a3,10358 <__mulsi3+0x14>
   10354:	00c50533          	add	a0,a0,a2
   10358:	0015d593          	srl	a1,a1,0x1
   1035c:	00161613          	sll	a2,a2,0x1
   10360:	fe0596e3          	bnez	a1,1034c <__mulsi3+0x8>
   10364:	00008067          	ret

00010368 <__fp_lock>:
   10368:	00000513          	li	a0,0
   1036c:	00008067          	ret

00010370 <stdio_exit_handler>:
   10370:	00013637          	lui	a2,0x13
   10374:	000125b7          	lui	a1,0x12
   10378:	00013537          	lui	a0,0x13
   1037c:	17060613          	add	a2,a2,368 # 13170 <__sglue>
   10380:	a0858593          	add	a1,a1,-1528 # 11a08 <_fclose_r>
   10384:	18050513          	add	a0,a0,384 # 13180 <_impure_data>
   10388:	3480006f          	j	106d0 <_fwalk_sglue>

0001038c <cleanup_stdio>:
   1038c:	00452583          	lw	a1,4(a0)
   10390:	ff010113          	add	sp,sp,-16
   10394:	00812423          	sw	s0,8(sp)
   10398:	00112623          	sw	ra,12(sp)
   1039c:	d8418793          	add	a5,gp,-636 # 136f4 <__sf>
   103a0:	00050413          	mv	s0,a0
   103a4:	00f58463          	beq	a1,a5,103ac <cleanup_stdio+0x20>
   103a8:	660010ef          	jal	11a08 <_fclose_r>
   103ac:	00842583          	lw	a1,8(s0)
   103b0:	dec18793          	add	a5,gp,-532 # 1375c <__sf+0x68>
   103b4:	00f58663          	beq	a1,a5,103c0 <cleanup_stdio+0x34>
   103b8:	00040513          	mv	a0,s0
   103bc:	64c010ef          	jal	11a08 <_fclose_r>
   103c0:	00c42583          	lw	a1,12(s0)
   103c4:	e5418793          	add	a5,gp,-428 # 137c4 <__sf+0xd0>
   103c8:	00f58c63          	beq	a1,a5,103e0 <cleanup_stdio+0x54>
   103cc:	00040513          	mv	a0,s0
   103d0:	00812403          	lw	s0,8(sp)
   103d4:	00c12083          	lw	ra,12(sp)
   103d8:	01010113          	add	sp,sp,16
   103dc:	62c0106f          	j	11a08 <_fclose_r>
   103e0:	00c12083          	lw	ra,12(sp)
   103e4:	00812403          	lw	s0,8(sp)
   103e8:	01010113          	add	sp,sp,16
   103ec:	00008067          	ret

000103f0 <__fp_unlock>:
   103f0:	00000513          	li	a0,0
   103f4:	00008067          	ret

000103f8 <global_stdio_init.part.0>:
   103f8:	fe010113          	add	sp,sp,-32
   103fc:	000107b7          	lui	a5,0x10
   10400:	00812c23          	sw	s0,24(sp)
   10404:	37078793          	add	a5,a5,880 # 10370 <stdio_exit_handler>
   10408:	d8418413          	add	s0,gp,-636 # 136f4 <__sf>
   1040c:	00112e23          	sw	ra,28(sp)
   10410:	00912a23          	sw	s1,20(sp)
   10414:	01212823          	sw	s2,16(sp)
   10418:	01312623          	sw	s3,12(sp)
   1041c:	01412423          	sw	s4,8(sp)
   10420:	d4f1a623          	sw	a5,-692(gp) # 136bc <__stdio_exit_handler>
   10424:	00800613          	li	a2,8
   10428:	00400793          	li	a5,4
   1042c:	00000593          	li	a1,0
   10430:	de018513          	add	a0,gp,-544 # 13750 <__sf+0x5c>
   10434:	00f42623          	sw	a5,12(s0)
   10438:	00042023          	sw	zero,0(s0)
   1043c:	00042223          	sw	zero,4(s0)
   10440:	00042423          	sw	zero,8(s0)
   10444:	06042223          	sw	zero,100(s0)
   10448:	00042823          	sw	zero,16(s0)
   1044c:	00042a23          	sw	zero,20(s0)
   10450:	00042c23          	sw	zero,24(s0)
   10454:	790000ef          	jal	10be4 <memset>
   10458:	000107b7          	lui	a5,0x10
   1045c:	00010a37          	lui	s4,0x10
   10460:	000109b7          	lui	s3,0x10
   10464:	00011937          	lui	s2,0x11
   10468:	000114b7          	lui	s1,0x11
   1046c:	784a0a13          	add	s4,s4,1924 # 10784 <__sread>
   10470:	7e898993          	add	s3,s3,2024 # 107e8 <__swrite>
   10474:	87090913          	add	s2,s2,-1936 # 10870 <__sseek>
   10478:	8e848493          	add	s1,s1,-1816 # 108e8 <__sclose>
   1047c:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   10480:	00800613          	li	a2,8
   10484:	00000593          	li	a1,0
   10488:	e4818513          	add	a0,gp,-440 # 137b8 <__sf+0xc4>
   1048c:	03442023          	sw	s4,32(s0)
   10490:	03342223          	sw	s3,36(s0)
   10494:	03242423          	sw	s2,40(s0)
   10498:	02942623          	sw	s1,44(s0)
   1049c:	06f42a23          	sw	a5,116(s0)
   104a0:	00842e23          	sw	s0,28(s0)
   104a4:	06042423          	sw	zero,104(s0)
   104a8:	06042623          	sw	zero,108(s0)
   104ac:	06042823          	sw	zero,112(s0)
   104b0:	0c042623          	sw	zero,204(s0)
   104b4:	06042c23          	sw	zero,120(s0)
   104b8:	06042e23          	sw	zero,124(s0)
   104bc:	08042023          	sw	zero,128(s0)
   104c0:	724000ef          	jal	10be4 <memset>
   104c4:	000207b7          	lui	a5,0x20
   104c8:	01278793          	add	a5,a5,18 # 20012 <__BSS_END__+0xc62e>
   104cc:	dec18713          	add	a4,gp,-532 # 1375c <__sf+0x68>
   104d0:	00800613          	li	a2,8
   104d4:	00000593          	li	a1,0
   104d8:	eb018513          	add	a0,gp,-336 # 13820 <__sf+0x12c>
   104dc:	09442423          	sw	s4,136(s0)
   104e0:	09342623          	sw	s3,140(s0)
   104e4:	09242823          	sw	s2,144(s0)
   104e8:	08942a23          	sw	s1,148(s0)
   104ec:	0cf42e23          	sw	a5,220(s0)
   104f0:	08e42223          	sw	a4,132(s0)
   104f4:	0c042823          	sw	zero,208(s0)
   104f8:	0c042a23          	sw	zero,212(s0)
   104fc:	0c042c23          	sw	zero,216(s0)
   10500:	12042a23          	sw	zero,308(s0)
   10504:	0e042023          	sw	zero,224(s0)
   10508:	0e042223          	sw	zero,228(s0)
   1050c:	0e042423          	sw	zero,232(s0)
   10510:	6d4000ef          	jal	10be4 <memset>
   10514:	e5418793          	add	a5,gp,-428 # 137c4 <__sf+0xd0>
   10518:	0f442823          	sw	s4,240(s0)
   1051c:	0f342a23          	sw	s3,244(s0)
   10520:	0f242c23          	sw	s2,248(s0)
   10524:	0e942e23          	sw	s1,252(s0)
   10528:	01c12083          	lw	ra,28(sp)
   1052c:	0ef42623          	sw	a5,236(s0)
   10530:	01812403          	lw	s0,24(sp)
   10534:	01412483          	lw	s1,20(sp)
   10538:	01012903          	lw	s2,16(sp)
   1053c:	00c12983          	lw	s3,12(sp)
   10540:	00812a03          	lw	s4,8(sp)
   10544:	02010113          	add	sp,sp,32
   10548:	00008067          	ret

0001054c <__sfp>:
   1054c:	d4c1a783          	lw	a5,-692(gp) # 136bc <__stdio_exit_handler>
   10550:	fe010113          	add	sp,sp,-32
   10554:	01312623          	sw	s3,12(sp)
   10558:	00112e23          	sw	ra,28(sp)
   1055c:	00812c23          	sw	s0,24(sp)
   10560:	00912a23          	sw	s1,20(sp)
   10564:	01212823          	sw	s2,16(sp)
   10568:	00050993          	mv	s3,a0
   1056c:	0e078863          	beqz	a5,1065c <__sfp+0x110>
   10570:	00013937          	lui	s2,0x13
   10574:	17090913          	add	s2,s2,368 # 13170 <__sglue>
   10578:	fff00493          	li	s1,-1
   1057c:	00492783          	lw	a5,4(s2)
   10580:	00892403          	lw	s0,8(s2)
   10584:	fff78793          	add	a5,a5,-1
   10588:	0007d863          	bgez	a5,10598 <__sfp+0x4c>
   1058c:	0800006f          	j	1060c <__sfp+0xc0>
   10590:	06840413          	add	s0,s0,104
   10594:	06978c63          	beq	a5,s1,1060c <__sfp+0xc0>
   10598:	00c41703          	lh	a4,12(s0)
   1059c:	fff78793          	add	a5,a5,-1
   105a0:	fe0718e3          	bnez	a4,10590 <__sfp+0x44>
   105a4:	ffff07b7          	lui	a5,0xffff0
   105a8:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc61d>
   105ac:	00f42623          	sw	a5,12(s0)
   105b0:	06042223          	sw	zero,100(s0)
   105b4:	00042023          	sw	zero,0(s0)
   105b8:	00042423          	sw	zero,8(s0)
   105bc:	00042223          	sw	zero,4(s0)
   105c0:	00042823          	sw	zero,16(s0)
   105c4:	00042a23          	sw	zero,20(s0)
   105c8:	00042c23          	sw	zero,24(s0)
   105cc:	00800613          	li	a2,8
   105d0:	00000593          	li	a1,0
   105d4:	05c40513          	add	a0,s0,92
   105d8:	60c000ef          	jal	10be4 <memset>
   105dc:	02042823          	sw	zero,48(s0)
   105e0:	02042a23          	sw	zero,52(s0)
   105e4:	04042223          	sw	zero,68(s0)
   105e8:	04042423          	sw	zero,72(s0)
   105ec:	01c12083          	lw	ra,28(sp)
   105f0:	00040513          	mv	a0,s0
   105f4:	01812403          	lw	s0,24(sp)
   105f8:	01412483          	lw	s1,20(sp)
   105fc:	01012903          	lw	s2,16(sp)
   10600:	00c12983          	lw	s3,12(sp)
   10604:	02010113          	add	sp,sp,32
   10608:	00008067          	ret
   1060c:	00092403          	lw	s0,0(s2)
   10610:	00040663          	beqz	s0,1061c <__sfp+0xd0>
   10614:	00040913          	mv	s2,s0
   10618:	f65ff06f          	j	1057c <__sfp+0x30>
   1061c:	1ac00593          	li	a1,428
   10620:	00098513          	mv	a0,s3
   10624:	421000ef          	jal	11244 <_malloc_r>
   10628:	00050413          	mv	s0,a0
   1062c:	02050c63          	beqz	a0,10664 <__sfp+0x118>
   10630:	00c50513          	add	a0,a0,12
   10634:	00400793          	li	a5,4
   10638:	00042023          	sw	zero,0(s0)
   1063c:	00f42223          	sw	a5,4(s0)
   10640:	00a42423          	sw	a0,8(s0)
   10644:	1a000613          	li	a2,416
   10648:	00000593          	li	a1,0
   1064c:	598000ef          	jal	10be4 <memset>
   10650:	00892023          	sw	s0,0(s2)
   10654:	00040913          	mv	s2,s0
   10658:	f25ff06f          	j	1057c <__sfp+0x30>
   1065c:	d9dff0ef          	jal	103f8 <global_stdio_init.part.0>
   10660:	f11ff06f          	j	10570 <__sfp+0x24>
   10664:	00092023          	sw	zero,0(s2)
   10668:	00c00793          	li	a5,12
   1066c:	00f9a023          	sw	a5,0(s3)
   10670:	f7dff06f          	j	105ec <__sfp+0xa0>

00010674 <__sinit>:
   10674:	03452783          	lw	a5,52(a0)
   10678:	00078463          	beqz	a5,10680 <__sinit+0xc>
   1067c:	00008067          	ret
   10680:	d4c1a703          	lw	a4,-692(gp) # 136bc <__stdio_exit_handler>
   10684:	000107b7          	lui	a5,0x10
   10688:	38c78793          	add	a5,a5,908 # 1038c <cleanup_stdio>
   1068c:	02f52a23          	sw	a5,52(a0)
   10690:	fe0716e3          	bnez	a4,1067c <__sinit+0x8>
   10694:	d65ff06f          	j	103f8 <global_stdio_init.part.0>

00010698 <__sfp_lock_acquire>:
   10698:	00008067          	ret

0001069c <__sfp_lock_release>:
   1069c:	00008067          	ret

000106a0 <__fp_lock_all>:
   106a0:	00013637          	lui	a2,0x13
   106a4:	000105b7          	lui	a1,0x10
   106a8:	17060613          	add	a2,a2,368 # 13170 <__sglue>
   106ac:	36858593          	add	a1,a1,872 # 10368 <__fp_lock>
   106b0:	00000513          	li	a0,0
   106b4:	01c0006f          	j	106d0 <_fwalk_sglue>

000106b8 <__fp_unlock_all>:
   106b8:	00013637          	lui	a2,0x13
   106bc:	000105b7          	lui	a1,0x10
   106c0:	17060613          	add	a2,a2,368 # 13170 <__sglue>
   106c4:	3f058593          	add	a1,a1,1008 # 103f0 <__fp_unlock>
   106c8:	00000513          	li	a0,0
   106cc:	0040006f          	j	106d0 <_fwalk_sglue>

000106d0 <_fwalk_sglue>:
   106d0:	fd010113          	add	sp,sp,-48
   106d4:	03212023          	sw	s2,32(sp)
   106d8:	01312e23          	sw	s3,28(sp)
   106dc:	01412c23          	sw	s4,24(sp)
   106e0:	01512a23          	sw	s5,20(sp)
   106e4:	01612823          	sw	s6,16(sp)
   106e8:	01712623          	sw	s7,12(sp)
   106ec:	02112623          	sw	ra,44(sp)
   106f0:	02812423          	sw	s0,40(sp)
   106f4:	02912223          	sw	s1,36(sp)
   106f8:	00050b13          	mv	s6,a0
   106fc:	00058b93          	mv	s7,a1
   10700:	00060a93          	mv	s5,a2
   10704:	00000a13          	li	s4,0
   10708:	00100993          	li	s3,1
   1070c:	fff00913          	li	s2,-1
   10710:	004aa483          	lw	s1,4(s5)
   10714:	008aa403          	lw	s0,8(s5)
   10718:	fff48493          	add	s1,s1,-1
   1071c:	0204c863          	bltz	s1,1074c <_fwalk_sglue+0x7c>
   10720:	00c45783          	lhu	a5,12(s0)
   10724:	00f9fe63          	bgeu	s3,a5,10740 <_fwalk_sglue+0x70>
   10728:	00e41783          	lh	a5,14(s0)
   1072c:	00040593          	mv	a1,s0
   10730:	000b0513          	mv	a0,s6
   10734:	01278663          	beq	a5,s2,10740 <_fwalk_sglue+0x70>
   10738:	000b80e7          	jalr	s7
   1073c:	00aa6a33          	or	s4,s4,a0
   10740:	fff48493          	add	s1,s1,-1
   10744:	06840413          	add	s0,s0,104
   10748:	fd249ce3          	bne	s1,s2,10720 <_fwalk_sglue+0x50>
   1074c:	000aaa83          	lw	s5,0(s5)
   10750:	fc0a90e3          	bnez	s5,10710 <_fwalk_sglue+0x40>
   10754:	02c12083          	lw	ra,44(sp)
   10758:	02812403          	lw	s0,40(sp)
   1075c:	02412483          	lw	s1,36(sp)
   10760:	02012903          	lw	s2,32(sp)
   10764:	01c12983          	lw	s3,28(sp)
   10768:	01412a83          	lw	s5,20(sp)
   1076c:	01012b03          	lw	s6,16(sp)
   10770:	00c12b83          	lw	s7,12(sp)
   10774:	000a0513          	mv	a0,s4
   10778:	01812a03          	lw	s4,24(sp)
   1077c:	03010113          	add	sp,sp,48
   10780:	00008067          	ret

00010784 <__sread>:
   10784:	ff010113          	add	sp,sp,-16
   10788:	00812423          	sw	s0,8(sp)
   1078c:	00058413          	mv	s0,a1
   10790:	00e59583          	lh	a1,14(a1)
   10794:	00112623          	sw	ra,12(sp)
   10798:	2e0000ef          	jal	10a78 <_read_r>
   1079c:	02054063          	bltz	a0,107bc <__sread+0x38>
   107a0:	05042783          	lw	a5,80(s0)
   107a4:	00c12083          	lw	ra,12(sp)
   107a8:	00a787b3          	add	a5,a5,a0
   107ac:	04f42823          	sw	a5,80(s0)
   107b0:	00812403          	lw	s0,8(sp)
   107b4:	01010113          	add	sp,sp,16
   107b8:	00008067          	ret
   107bc:	00c45783          	lhu	a5,12(s0)
   107c0:	fffff737          	lui	a4,0xfffff
   107c4:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb61b>
   107c8:	00e7f7b3          	and	a5,a5,a4
   107cc:	00c12083          	lw	ra,12(sp)
   107d0:	00f41623          	sh	a5,12(s0)
   107d4:	00812403          	lw	s0,8(sp)
   107d8:	01010113          	add	sp,sp,16
   107dc:	00008067          	ret

000107e0 <__seofread>:
   107e0:	00000513          	li	a0,0
   107e4:	00008067          	ret

000107e8 <__swrite>:
   107e8:	00c59783          	lh	a5,12(a1)
   107ec:	fe010113          	add	sp,sp,-32
   107f0:	00812c23          	sw	s0,24(sp)
   107f4:	00912a23          	sw	s1,20(sp)
   107f8:	01212823          	sw	s2,16(sp)
   107fc:	01312623          	sw	s3,12(sp)
   10800:	00112e23          	sw	ra,28(sp)
   10804:	1007f713          	and	a4,a5,256
   10808:	00058413          	mv	s0,a1
   1080c:	00050493          	mv	s1,a0
   10810:	00060913          	mv	s2,a2
   10814:	00068993          	mv	s3,a3
   10818:	04071063          	bnez	a4,10858 <__swrite+0x70>
   1081c:	fffff737          	lui	a4,0xfffff
   10820:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb61b>
   10824:	00e7f7b3          	and	a5,a5,a4
   10828:	00e41583          	lh	a1,14(s0)
   1082c:	00f41623          	sh	a5,12(s0)
   10830:	01812403          	lw	s0,24(sp)
   10834:	01c12083          	lw	ra,28(sp)
   10838:	00098693          	mv	a3,s3
   1083c:	00090613          	mv	a2,s2
   10840:	00c12983          	lw	s3,12(sp)
   10844:	01012903          	lw	s2,16(sp)
   10848:	00048513          	mv	a0,s1
   1084c:	01412483          	lw	s1,20(sp)
   10850:	02010113          	add	sp,sp,32
   10854:	28c0006f          	j	10ae0 <_write_r>
   10858:	00e59583          	lh	a1,14(a1)
   1085c:	00200693          	li	a3,2
   10860:	00000613          	li	a2,0
   10864:	1ac000ef          	jal	10a10 <_lseek_r>
   10868:	00c41783          	lh	a5,12(s0)
   1086c:	fb1ff06f          	j	1081c <__swrite+0x34>

00010870 <__sseek>:
   10870:	ff010113          	add	sp,sp,-16
   10874:	00812423          	sw	s0,8(sp)
   10878:	00058413          	mv	s0,a1
   1087c:	00e59583          	lh	a1,14(a1)
   10880:	00112623          	sw	ra,12(sp)
   10884:	18c000ef          	jal	10a10 <_lseek_r>
   10888:	fff00793          	li	a5,-1
   1088c:	02f50863          	beq	a0,a5,108bc <__sseek+0x4c>
   10890:	00c45783          	lhu	a5,12(s0)
   10894:	00001737          	lui	a4,0x1
   10898:	00c12083          	lw	ra,12(sp)
   1089c:	00e7e7b3          	or	a5,a5,a4
   108a0:	01079793          	sll	a5,a5,0x10
   108a4:	4107d793          	sra	a5,a5,0x10
   108a8:	04a42823          	sw	a0,80(s0)
   108ac:	00f41623          	sh	a5,12(s0)
   108b0:	00812403          	lw	s0,8(sp)
   108b4:	01010113          	add	sp,sp,16
   108b8:	00008067          	ret
   108bc:	00c45783          	lhu	a5,12(s0)
   108c0:	fffff737          	lui	a4,0xfffff
   108c4:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb61b>
   108c8:	00e7f7b3          	and	a5,a5,a4
   108cc:	01079793          	sll	a5,a5,0x10
   108d0:	4107d793          	sra	a5,a5,0x10
   108d4:	00c12083          	lw	ra,12(sp)
   108d8:	00f41623          	sh	a5,12(s0)
   108dc:	00812403          	lw	s0,8(sp)
   108e0:	01010113          	add	sp,sp,16
   108e4:	00008067          	ret

000108e8 <__sclose>:
   108e8:	00e59583          	lh	a1,14(a1)
   108ec:	0040006f          	j	108f0 <_close_r>

000108f0 <_close_r>:
   108f0:	ff010113          	add	sp,sp,-16
   108f4:	00812423          	sw	s0,8(sp)
   108f8:	00912223          	sw	s1,4(sp)
   108fc:	00050413          	mv	s0,a0
   10900:	00058513          	mv	a0,a1
   10904:	00112623          	sw	ra,12(sp)
   10908:	d401a823          	sw	zero,-688(gp) # 136c0 <errno>
   1090c:	690010ef          	jal	11f9c <_close>
   10910:	fff00793          	li	a5,-1
   10914:	00f50c63          	beq	a0,a5,1092c <_close_r+0x3c>
   10918:	00c12083          	lw	ra,12(sp)
   1091c:	00812403          	lw	s0,8(sp)
   10920:	00412483          	lw	s1,4(sp)
   10924:	01010113          	add	sp,sp,16
   10928:	00008067          	ret
   1092c:	d501a783          	lw	a5,-688(gp) # 136c0 <errno>
   10930:	fe0784e3          	beqz	a5,10918 <_close_r+0x28>
   10934:	00c12083          	lw	ra,12(sp)
   10938:	00f42023          	sw	a5,0(s0)
   1093c:	00812403          	lw	s0,8(sp)
   10940:	00412483          	lw	s1,4(sp)
   10944:	01010113          	add	sp,sp,16
   10948:	00008067          	ret

0001094c <_reclaim_reent>:
   1094c:	d3c1a783          	lw	a5,-708(gp) # 136ac <_impure_ptr>
   10950:	0aa78e63          	beq	a5,a0,10a0c <_reclaim_reent+0xc0>
   10954:	04452583          	lw	a1,68(a0)
   10958:	fe010113          	add	sp,sp,-32
   1095c:	00912a23          	sw	s1,20(sp)
   10960:	00112e23          	sw	ra,28(sp)
   10964:	00050493          	mv	s1,a0
   10968:	04058c63          	beqz	a1,109c0 <_reclaim_reent+0x74>
   1096c:	01212823          	sw	s2,16(sp)
   10970:	01312623          	sw	s3,12(sp)
   10974:	00812c23          	sw	s0,24(sp)
   10978:	00000913          	li	s2,0
   1097c:	08000993          	li	s3,128
   10980:	012587b3          	add	a5,a1,s2
   10984:	0007a403          	lw	s0,0(a5)
   10988:	00040e63          	beqz	s0,109a4 <_reclaim_reent+0x58>
   1098c:	00040593          	mv	a1,s0
   10990:	00042403          	lw	s0,0(s0)
   10994:	00048513          	mv	a0,s1
   10998:	5a8000ef          	jal	10f40 <_free_r>
   1099c:	fe0418e3          	bnez	s0,1098c <_reclaim_reent+0x40>
   109a0:	0444a583          	lw	a1,68(s1)
   109a4:	00490913          	add	s2,s2,4
   109a8:	fd391ce3          	bne	s2,s3,10980 <_reclaim_reent+0x34>
   109ac:	00048513          	mv	a0,s1
   109b0:	590000ef          	jal	10f40 <_free_r>
   109b4:	01812403          	lw	s0,24(sp)
   109b8:	01012903          	lw	s2,16(sp)
   109bc:	00c12983          	lw	s3,12(sp)
   109c0:	0384a583          	lw	a1,56(s1)
   109c4:	00058663          	beqz	a1,109d0 <_reclaim_reent+0x84>
   109c8:	00048513          	mv	a0,s1
   109cc:	574000ef          	jal	10f40 <_free_r>
   109d0:	04c4a583          	lw	a1,76(s1)
   109d4:	00058663          	beqz	a1,109e0 <_reclaim_reent+0x94>
   109d8:	00048513          	mv	a0,s1
   109dc:	564000ef          	jal	10f40 <_free_r>
   109e0:	0344a783          	lw	a5,52(s1)
   109e4:	00078c63          	beqz	a5,109fc <_reclaim_reent+0xb0>
   109e8:	01c12083          	lw	ra,28(sp)
   109ec:	00048513          	mv	a0,s1
   109f0:	01412483          	lw	s1,20(sp)
   109f4:	02010113          	add	sp,sp,32
   109f8:	00078067          	jr	a5
   109fc:	01c12083          	lw	ra,28(sp)
   10a00:	01412483          	lw	s1,20(sp)
   10a04:	02010113          	add	sp,sp,32
   10a08:	00008067          	ret
   10a0c:	00008067          	ret

00010a10 <_lseek_r>:
   10a10:	ff010113          	add	sp,sp,-16
   10a14:	00058713          	mv	a4,a1
   10a18:	00812423          	sw	s0,8(sp)
   10a1c:	00912223          	sw	s1,4(sp)
   10a20:	00060593          	mv	a1,a2
   10a24:	00050413          	mv	s0,a0
   10a28:	00068613          	mv	a2,a3
   10a2c:	00070513          	mv	a0,a4
   10a30:	00112623          	sw	ra,12(sp)
   10a34:	d401a823          	sw	zero,-688(gp) # 136c0 <errno>
   10a38:	5d8010ef          	jal	12010 <_lseek>
   10a3c:	fff00793          	li	a5,-1
   10a40:	00f50c63          	beq	a0,a5,10a58 <_lseek_r+0x48>
   10a44:	00c12083          	lw	ra,12(sp)
   10a48:	00812403          	lw	s0,8(sp)
   10a4c:	00412483          	lw	s1,4(sp)
   10a50:	01010113          	add	sp,sp,16
   10a54:	00008067          	ret
   10a58:	d501a783          	lw	a5,-688(gp) # 136c0 <errno>
   10a5c:	fe0784e3          	beqz	a5,10a44 <_lseek_r+0x34>
   10a60:	00c12083          	lw	ra,12(sp)
   10a64:	00f42023          	sw	a5,0(s0)
   10a68:	00812403          	lw	s0,8(sp)
   10a6c:	00412483          	lw	s1,4(sp)
   10a70:	01010113          	add	sp,sp,16
   10a74:	00008067          	ret

00010a78 <_read_r>:
   10a78:	ff010113          	add	sp,sp,-16
   10a7c:	00058713          	mv	a4,a1
   10a80:	00812423          	sw	s0,8(sp)
   10a84:	00912223          	sw	s1,4(sp)
   10a88:	00060593          	mv	a1,a2
   10a8c:	00050413          	mv	s0,a0
   10a90:	00068613          	mv	a2,a3
   10a94:	00070513          	mv	a0,a4
   10a98:	00112623          	sw	ra,12(sp)
   10a9c:	d401a823          	sw	zero,-688(gp) # 136c0 <errno>
   10aa0:	5b4010ef          	jal	12054 <_read>
   10aa4:	fff00793          	li	a5,-1
   10aa8:	00f50c63          	beq	a0,a5,10ac0 <_read_r+0x48>
   10aac:	00c12083          	lw	ra,12(sp)
   10ab0:	00812403          	lw	s0,8(sp)
   10ab4:	00412483          	lw	s1,4(sp)
   10ab8:	01010113          	add	sp,sp,16
   10abc:	00008067          	ret
   10ac0:	d501a783          	lw	a5,-688(gp) # 136c0 <errno>
   10ac4:	fe0784e3          	beqz	a5,10aac <_read_r+0x34>
   10ac8:	00c12083          	lw	ra,12(sp)
   10acc:	00f42023          	sw	a5,0(s0)
   10ad0:	00812403          	lw	s0,8(sp)
   10ad4:	00412483          	lw	s1,4(sp)
   10ad8:	01010113          	add	sp,sp,16
   10adc:	00008067          	ret

00010ae0 <_write_r>:
   10ae0:	ff010113          	add	sp,sp,-16
   10ae4:	00058713          	mv	a4,a1
   10ae8:	00812423          	sw	s0,8(sp)
   10aec:	00912223          	sw	s1,4(sp)
   10af0:	00060593          	mv	a1,a2
   10af4:	00050413          	mv	s0,a0
   10af8:	00068613          	mv	a2,a3
   10afc:	00070513          	mv	a0,a4
   10b00:	00112623          	sw	ra,12(sp)
   10b04:	d401a823          	sw	zero,-688(gp) # 136c0 <errno>
   10b08:	608010ef          	jal	12110 <_write>
   10b0c:	fff00793          	li	a5,-1
   10b10:	00f50c63          	beq	a0,a5,10b28 <_write_r+0x48>
   10b14:	00c12083          	lw	ra,12(sp)
   10b18:	00812403          	lw	s0,8(sp)
   10b1c:	00412483          	lw	s1,4(sp)
   10b20:	01010113          	add	sp,sp,16
   10b24:	00008067          	ret
   10b28:	d501a783          	lw	a5,-688(gp) # 136c0 <errno>
   10b2c:	fe0784e3          	beqz	a5,10b14 <_write_r+0x34>
   10b30:	00c12083          	lw	ra,12(sp)
   10b34:	00f42023          	sw	a5,0(s0)
   10b38:	00812403          	lw	s0,8(sp)
   10b3c:	00412483          	lw	s1,4(sp)
   10b40:	01010113          	add	sp,sp,16
   10b44:	00008067          	ret

00010b48 <__libc_init_array>:
   10b48:	ff010113          	add	sp,sp,-16
   10b4c:	00812423          	sw	s0,8(sp)
   10b50:	000137b7          	lui	a5,0x13
   10b54:	00013437          	lui	s0,0x13
   10b58:	01212023          	sw	s2,0(sp)
   10b5c:	16078793          	add	a5,a5,352 # 13160 <__init_array_start>
   10b60:	16040713          	add	a4,s0,352 # 13160 <__init_array_start>
   10b64:	00112623          	sw	ra,12(sp)
   10b68:	00912223          	sw	s1,4(sp)
   10b6c:	40e78933          	sub	s2,a5,a4
   10b70:	02e78263          	beq	a5,a4,10b94 <__libc_init_array+0x4c>
   10b74:	40295913          	sra	s2,s2,0x2
   10b78:	16040413          	add	s0,s0,352
   10b7c:	00000493          	li	s1,0
   10b80:	00042783          	lw	a5,0(s0)
   10b84:	00148493          	add	s1,s1,1
   10b88:	00440413          	add	s0,s0,4
   10b8c:	000780e7          	jalr	a5
   10b90:	ff24e8e3          	bltu	s1,s2,10b80 <__libc_init_array+0x38>
   10b94:	00013437          	lui	s0,0x13
   10b98:	000137b7          	lui	a5,0x13
   10b9c:	16878793          	add	a5,a5,360 # 13168 <__do_global_dtors_aux_fini_array_entry>
   10ba0:	16040713          	add	a4,s0,352 # 13160 <__init_array_start>
   10ba4:	40e78933          	sub	s2,a5,a4
   10ba8:	40295913          	sra	s2,s2,0x2
   10bac:	02e78063          	beq	a5,a4,10bcc <__libc_init_array+0x84>
   10bb0:	16040413          	add	s0,s0,352
   10bb4:	00000493          	li	s1,0
   10bb8:	00042783          	lw	a5,0(s0)
   10bbc:	00148493          	add	s1,s1,1
   10bc0:	00440413          	add	s0,s0,4
   10bc4:	000780e7          	jalr	a5
   10bc8:	ff24e8e3          	bltu	s1,s2,10bb8 <__libc_init_array+0x70>
   10bcc:	00c12083          	lw	ra,12(sp)
   10bd0:	00812403          	lw	s0,8(sp)
   10bd4:	00412483          	lw	s1,4(sp)
   10bd8:	00012903          	lw	s2,0(sp)
   10bdc:	01010113          	add	sp,sp,16
   10be0:	00008067          	ret

00010be4 <memset>:
   10be4:	00f00313          	li	t1,15
   10be8:	00050713          	mv	a4,a0
   10bec:	02c37e63          	bgeu	t1,a2,10c28 <memset+0x44>
   10bf0:	00f77793          	and	a5,a4,15
   10bf4:	0a079063          	bnez	a5,10c94 <memset+0xb0>
   10bf8:	08059263          	bnez	a1,10c7c <memset+0x98>
   10bfc:	ff067693          	and	a3,a2,-16
   10c00:	00f67613          	and	a2,a2,15
   10c04:	00e686b3          	add	a3,a3,a4
   10c08:	00b72023          	sw	a1,0(a4)
   10c0c:	00b72223          	sw	a1,4(a4)
   10c10:	00b72423          	sw	a1,8(a4)
   10c14:	00b72623          	sw	a1,12(a4)
   10c18:	01070713          	add	a4,a4,16
   10c1c:	fed766e3          	bltu	a4,a3,10c08 <memset+0x24>
   10c20:	00061463          	bnez	a2,10c28 <memset+0x44>
   10c24:	00008067          	ret
   10c28:	40c306b3          	sub	a3,t1,a2
   10c2c:	00269693          	sll	a3,a3,0x2
   10c30:	00000297          	auipc	t0,0x0
   10c34:	005686b3          	add	a3,a3,t0
   10c38:	00c68067          	jr	12(a3)
   10c3c:	00b70723          	sb	a1,14(a4)
   10c40:	00b706a3          	sb	a1,13(a4)
   10c44:	00b70623          	sb	a1,12(a4)
   10c48:	00b705a3          	sb	a1,11(a4)
   10c4c:	00b70523          	sb	a1,10(a4)
   10c50:	00b704a3          	sb	a1,9(a4)
   10c54:	00b70423          	sb	a1,8(a4)
   10c58:	00b703a3          	sb	a1,7(a4)
   10c5c:	00b70323          	sb	a1,6(a4)
   10c60:	00b702a3          	sb	a1,5(a4)
   10c64:	00b70223          	sb	a1,4(a4)
   10c68:	00b701a3          	sb	a1,3(a4)
   10c6c:	00b70123          	sb	a1,2(a4)
   10c70:	00b700a3          	sb	a1,1(a4)
   10c74:	00b70023          	sb	a1,0(a4)
   10c78:	00008067          	ret
   10c7c:	0ff5f593          	zext.b	a1,a1
   10c80:	00859693          	sll	a3,a1,0x8
   10c84:	00d5e5b3          	or	a1,a1,a3
   10c88:	01059693          	sll	a3,a1,0x10
   10c8c:	00d5e5b3          	or	a1,a1,a3
   10c90:	f6dff06f          	j	10bfc <memset+0x18>
   10c94:	00279693          	sll	a3,a5,0x2
   10c98:	00000297          	auipc	t0,0x0
   10c9c:	005686b3          	add	a3,a3,t0
   10ca0:	00008293          	mv	t0,ra
   10ca4:	fa0680e7          	jalr	-96(a3)
   10ca8:	00028093          	mv	ra,t0
   10cac:	ff078793          	add	a5,a5,-16
   10cb0:	40f70733          	sub	a4,a4,a5
   10cb4:	00f60633          	add	a2,a2,a5
   10cb8:	f6c378e3          	bgeu	t1,a2,10c28 <memset+0x44>
   10cbc:	f3dff06f          	j	10bf8 <memset+0x14>

00010cc0 <__call_exitprocs>:
   10cc0:	fd010113          	add	sp,sp,-48
   10cc4:	01412c23          	sw	s4,24(sp)
   10cc8:	03212023          	sw	s2,32(sp)
   10ccc:	d541a903          	lw	s2,-684(gp) # 136c4 <__atexit>
   10cd0:	02112623          	sw	ra,44(sp)
   10cd4:	0a090863          	beqz	s2,10d84 <__call_exitprocs+0xc4>
   10cd8:	01312e23          	sw	s3,28(sp)
   10cdc:	01512a23          	sw	s5,20(sp)
   10ce0:	01612823          	sw	s6,16(sp)
   10ce4:	01712623          	sw	s7,12(sp)
   10ce8:	02812423          	sw	s0,40(sp)
   10cec:	02912223          	sw	s1,36(sp)
   10cf0:	01812423          	sw	s8,8(sp)
   10cf4:	00050b13          	mv	s6,a0
   10cf8:	00058b93          	mv	s7,a1
   10cfc:	fff00993          	li	s3,-1
   10d00:	00100a93          	li	s5,1
   10d04:	00492483          	lw	s1,4(s2)
   10d08:	fff48413          	add	s0,s1,-1
   10d0c:	04044e63          	bltz	s0,10d68 <__call_exitprocs+0xa8>
   10d10:	00249493          	sll	s1,s1,0x2
   10d14:	009904b3          	add	s1,s2,s1
   10d18:	080b9063          	bnez	s7,10d98 <__call_exitprocs+0xd8>
   10d1c:	00492783          	lw	a5,4(s2)
   10d20:	0044a683          	lw	a3,4(s1)
   10d24:	fff78793          	add	a5,a5,-1
   10d28:	0a878c63          	beq	a5,s0,10de0 <__call_exitprocs+0x120>
   10d2c:	0004a223          	sw	zero,4(s1)
   10d30:	02068663          	beqz	a3,10d5c <__call_exitprocs+0x9c>
   10d34:	18892783          	lw	a5,392(s2)
   10d38:	008a9733          	sll	a4,s5,s0
   10d3c:	00492c03          	lw	s8,4(s2)
   10d40:	00f777b3          	and	a5,a4,a5
   10d44:	06079663          	bnez	a5,10db0 <__call_exitprocs+0xf0>
   10d48:	000680e7          	jalr	a3
   10d4c:	00492703          	lw	a4,4(s2)
   10d50:	d541a783          	lw	a5,-684(gp) # 136c4 <__atexit>
   10d54:	09871063          	bne	a4,s8,10dd4 <__call_exitprocs+0x114>
   10d58:	07279e63          	bne	a5,s2,10dd4 <__call_exitprocs+0x114>
   10d5c:	fff40413          	add	s0,s0,-1
   10d60:	ffc48493          	add	s1,s1,-4
   10d64:	fb341ae3          	bne	s0,s3,10d18 <__call_exitprocs+0x58>
   10d68:	02812403          	lw	s0,40(sp)
   10d6c:	02412483          	lw	s1,36(sp)
   10d70:	01c12983          	lw	s3,28(sp)
   10d74:	01412a83          	lw	s5,20(sp)
   10d78:	01012b03          	lw	s6,16(sp)
   10d7c:	00c12b83          	lw	s7,12(sp)
   10d80:	00812c03          	lw	s8,8(sp)
   10d84:	02c12083          	lw	ra,44(sp)
   10d88:	02012903          	lw	s2,32(sp)
   10d8c:	01812a03          	lw	s4,24(sp)
   10d90:	03010113          	add	sp,sp,48
   10d94:	00008067          	ret
   10d98:	1044a783          	lw	a5,260(s1)
   10d9c:	f97780e3          	beq	a5,s7,10d1c <__call_exitprocs+0x5c>
   10da0:	fff40413          	add	s0,s0,-1
   10da4:	ffc48493          	add	s1,s1,-4
   10da8:	ff3418e3          	bne	s0,s3,10d98 <__call_exitprocs+0xd8>
   10dac:	fbdff06f          	j	10d68 <__call_exitprocs+0xa8>
   10db0:	18c92783          	lw	a5,396(s2)
   10db4:	0844a583          	lw	a1,132(s1)
   10db8:	00f77733          	and	a4,a4,a5
   10dbc:	02071663          	bnez	a4,10de8 <__call_exitprocs+0x128>
   10dc0:	000b0513          	mv	a0,s6
   10dc4:	000680e7          	jalr	a3
   10dc8:	00492703          	lw	a4,4(s2)
   10dcc:	d541a783          	lw	a5,-684(gp) # 136c4 <__atexit>
   10dd0:	f98704e3          	beq	a4,s8,10d58 <__call_exitprocs+0x98>
   10dd4:	f8078ae3          	beqz	a5,10d68 <__call_exitprocs+0xa8>
   10dd8:	00078913          	mv	s2,a5
   10ddc:	f29ff06f          	j	10d04 <__call_exitprocs+0x44>
   10de0:	00892223          	sw	s0,4(s2)
   10de4:	f4dff06f          	j	10d30 <__call_exitprocs+0x70>
   10de8:	00058513          	mv	a0,a1
   10dec:	000680e7          	jalr	a3
   10df0:	f5dff06f          	j	10d4c <__call_exitprocs+0x8c>

00010df4 <atexit>:
   10df4:	00050593          	mv	a1,a0
   10df8:	00000693          	li	a3,0
   10dfc:	00000613          	li	a2,0
   10e00:	00000513          	li	a0,0
   10e04:	1000106f          	j	11f04 <__register_exitproc>

00010e08 <_malloc_trim_r>:
   10e08:	fe010113          	add	sp,sp,-32
   10e0c:	01312623          	sw	s3,12(sp)
   10e10:	000139b7          	lui	s3,0x13
   10e14:	00812c23          	sw	s0,24(sp)
   10e18:	00912a23          	sw	s1,20(sp)
   10e1c:	01212823          	sw	s2,16(sp)
   10e20:	01412423          	sw	s4,8(sp)
   10e24:	00112e23          	sw	ra,28(sp)
   10e28:	00058a13          	mv	s4,a1
   10e2c:	00050913          	mv	s2,a0
   10e30:	2a098993          	add	s3,s3,672 # 132a0 <__malloc_av_>
   10e34:	3cd000ef          	jal	11a00 <__malloc_lock>
   10e38:	0089a703          	lw	a4,8(s3)
   10e3c:	000017b7          	lui	a5,0x1
   10e40:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   10e44:	00472483          	lw	s1,4(a4)
   10e48:	00001737          	lui	a4,0x1
   10e4c:	ffc4f493          	and	s1,s1,-4
   10e50:	00f48433          	add	s0,s1,a5
   10e54:	41440433          	sub	s0,s0,s4
   10e58:	00c45413          	srl	s0,s0,0xc
   10e5c:	fff40413          	add	s0,s0,-1
   10e60:	00c41413          	sll	s0,s0,0xc
   10e64:	00e44e63          	blt	s0,a4,10e80 <_malloc_trim_r+0x78>
   10e68:	00000593          	li	a1,0
   10e6c:	00090513          	mv	a0,s2
   10e70:	7dd000ef          	jal	11e4c <_sbrk_r>
   10e74:	0089a783          	lw	a5,8(s3)
   10e78:	009787b3          	add	a5,a5,s1
   10e7c:	02f50863          	beq	a0,a5,10eac <_malloc_trim_r+0xa4>
   10e80:	00090513          	mv	a0,s2
   10e84:	381000ef          	jal	11a04 <__malloc_unlock>
   10e88:	01c12083          	lw	ra,28(sp)
   10e8c:	01812403          	lw	s0,24(sp)
   10e90:	01412483          	lw	s1,20(sp)
   10e94:	01012903          	lw	s2,16(sp)
   10e98:	00c12983          	lw	s3,12(sp)
   10e9c:	00812a03          	lw	s4,8(sp)
   10ea0:	00000513          	li	a0,0
   10ea4:	02010113          	add	sp,sp,32
   10ea8:	00008067          	ret
   10eac:	408005b3          	neg	a1,s0
   10eb0:	00090513          	mv	a0,s2
   10eb4:	799000ef          	jal	11e4c <_sbrk_r>
   10eb8:	fff00793          	li	a5,-1
   10ebc:	04f50863          	beq	a0,a5,10f0c <_malloc_trim_r+0x104>
   10ec0:	ebc18793          	add	a5,gp,-324 # 1382c <__malloc_current_mallinfo>
   10ec4:	0007a703          	lw	a4,0(a5)
   10ec8:	0089a683          	lw	a3,8(s3)
   10ecc:	408484b3          	sub	s1,s1,s0
   10ed0:	0014e493          	or	s1,s1,1
   10ed4:	40870733          	sub	a4,a4,s0
   10ed8:	00090513          	mv	a0,s2
   10edc:	0096a223          	sw	s1,4(a3)
   10ee0:	00e7a023          	sw	a4,0(a5)
   10ee4:	321000ef          	jal	11a04 <__malloc_unlock>
   10ee8:	01c12083          	lw	ra,28(sp)
   10eec:	01812403          	lw	s0,24(sp)
   10ef0:	01412483          	lw	s1,20(sp)
   10ef4:	01012903          	lw	s2,16(sp)
   10ef8:	00c12983          	lw	s3,12(sp)
   10efc:	00812a03          	lw	s4,8(sp)
   10f00:	00100513          	li	a0,1
   10f04:	02010113          	add	sp,sp,32
   10f08:	00008067          	ret
   10f0c:	00000593          	li	a1,0
   10f10:	00090513          	mv	a0,s2
   10f14:	739000ef          	jal	11e4c <_sbrk_r>
   10f18:	0089a703          	lw	a4,8(s3)
   10f1c:	00f00693          	li	a3,15
   10f20:	40e507b3          	sub	a5,a0,a4
   10f24:	f4f6dee3          	bge	a3,a5,10e80 <_malloc_trim_r+0x78>
   10f28:	d401a683          	lw	a3,-704(gp) # 136b0 <__malloc_sbrk_base>
   10f2c:	0017e793          	or	a5,a5,1
   10f30:	00f72223          	sw	a5,4(a4) # 1004 <exit-0xf090>
   10f34:	40d50533          	sub	a0,a0,a3
   10f38:	eaa1ae23          	sw	a0,-324(gp) # 1382c <__malloc_current_mallinfo>
   10f3c:	f45ff06f          	j	10e80 <_malloc_trim_r+0x78>

00010f40 <_free_r>:
   10f40:	18058263          	beqz	a1,110c4 <_free_r+0x184>
   10f44:	ff010113          	add	sp,sp,-16
   10f48:	00812423          	sw	s0,8(sp)
   10f4c:	00912223          	sw	s1,4(sp)
   10f50:	00058413          	mv	s0,a1
   10f54:	00050493          	mv	s1,a0
   10f58:	00112623          	sw	ra,12(sp)
   10f5c:	2a5000ef          	jal	11a00 <__malloc_lock>
   10f60:	ffc42503          	lw	a0,-4(s0)
   10f64:	ff840713          	add	a4,s0,-8
   10f68:	000135b7          	lui	a1,0x13
   10f6c:	ffe57793          	and	a5,a0,-2
   10f70:	00f70633          	add	a2,a4,a5
   10f74:	2a058593          	add	a1,a1,672 # 132a0 <__malloc_av_>
   10f78:	00462683          	lw	a3,4(a2)
   10f7c:	0085a803          	lw	a6,8(a1)
   10f80:	ffc6f693          	and	a3,a3,-4
   10f84:	1ac80263          	beq	a6,a2,11128 <_free_r+0x1e8>
   10f88:	00d62223          	sw	a3,4(a2)
   10f8c:	00157513          	and	a0,a0,1
   10f90:	00d60833          	add	a6,a2,a3
   10f94:	0a051063          	bnez	a0,11034 <_free_r+0xf4>
   10f98:	ff842303          	lw	t1,-8(s0)
   10f9c:	00482803          	lw	a6,4(a6)
   10fa0:	00013537          	lui	a0,0x13
   10fa4:	40670733          	sub	a4,a4,t1
   10fa8:	00872883          	lw	a7,8(a4)
   10fac:	2a850513          	add	a0,a0,680 # 132a8 <__malloc_av_+0x8>
   10fb0:	006787b3          	add	a5,a5,t1
   10fb4:	00187813          	and	a6,a6,1
   10fb8:	14a88263          	beq	a7,a0,110fc <_free_r+0x1bc>
   10fbc:	00c72303          	lw	t1,12(a4)
   10fc0:	0068a623          	sw	t1,12(a7)
   10fc4:	01132423          	sw	a7,8(t1) # 10184 <frame_dummy+0x1c>
   10fc8:	1a080663          	beqz	a6,11174 <_free_r+0x234>
   10fcc:	0017e693          	or	a3,a5,1
   10fd0:	00d72223          	sw	a3,4(a4)
   10fd4:	00f62023          	sw	a5,0(a2)
   10fd8:	1ff00693          	li	a3,511
   10fdc:	06f6ec63          	bltu	a3,a5,11054 <_free_r+0x114>
   10fe0:	ff87f693          	and	a3,a5,-8
   10fe4:	00868693          	add	a3,a3,8
   10fe8:	0045a503          	lw	a0,4(a1)
   10fec:	00d586b3          	add	a3,a1,a3
   10ff0:	0006a603          	lw	a2,0(a3)
   10ff4:	0057d813          	srl	a6,a5,0x5
   10ff8:	00100793          	li	a5,1
   10ffc:	010797b3          	sll	a5,a5,a6
   11000:	00a7e7b3          	or	a5,a5,a0
   11004:	ff868513          	add	a0,a3,-8
   11008:	00a72623          	sw	a0,12(a4)
   1100c:	00c72423          	sw	a2,8(a4)
   11010:	00f5a223          	sw	a5,4(a1)
   11014:	00e6a023          	sw	a4,0(a3)
   11018:	00e62623          	sw	a4,12(a2)
   1101c:	00812403          	lw	s0,8(sp)
   11020:	00c12083          	lw	ra,12(sp)
   11024:	00048513          	mv	a0,s1
   11028:	00412483          	lw	s1,4(sp)
   1102c:	01010113          	add	sp,sp,16
   11030:	1d50006f          	j	11a04 <__malloc_unlock>
   11034:	00482503          	lw	a0,4(a6)
   11038:	00157513          	and	a0,a0,1
   1103c:	08050663          	beqz	a0,110c8 <_free_r+0x188>
   11040:	0017e693          	or	a3,a5,1
   11044:	fed42e23          	sw	a3,-4(s0)
   11048:	00f62023          	sw	a5,0(a2)
   1104c:	1ff00693          	li	a3,511
   11050:	f8f6f8e3          	bgeu	a3,a5,10fe0 <_free_r+0xa0>
   11054:	0097d693          	srl	a3,a5,0x9
   11058:	00400613          	li	a2,4
   1105c:	12d66063          	bltu	a2,a3,1117c <_free_r+0x23c>
   11060:	0067d693          	srl	a3,a5,0x6
   11064:	03968513          	add	a0,a3,57
   11068:	03868613          	add	a2,a3,56
   1106c:	00351513          	sll	a0,a0,0x3
   11070:	00a58533          	add	a0,a1,a0
   11074:	00052683          	lw	a3,0(a0)
   11078:	ff850513          	add	a0,a0,-8
   1107c:	00d51863          	bne	a0,a3,1108c <_free_r+0x14c>
   11080:	1540006f          	j	111d4 <_free_r+0x294>
   11084:	0086a683          	lw	a3,8(a3)
   11088:	00d50863          	beq	a0,a3,11098 <_free_r+0x158>
   1108c:	0046a603          	lw	a2,4(a3)
   11090:	ffc67613          	and	a2,a2,-4
   11094:	fec7e8e3          	bltu	a5,a2,11084 <_free_r+0x144>
   11098:	00c6a503          	lw	a0,12(a3)
   1109c:	00a72623          	sw	a0,12(a4)
   110a0:	00d72423          	sw	a3,8(a4)
   110a4:	00812403          	lw	s0,8(sp)
   110a8:	00e52423          	sw	a4,8(a0)
   110ac:	00c12083          	lw	ra,12(sp)
   110b0:	00048513          	mv	a0,s1
   110b4:	00412483          	lw	s1,4(sp)
   110b8:	00e6a623          	sw	a4,12(a3)
   110bc:	01010113          	add	sp,sp,16
   110c0:	1450006f          	j	11a04 <__malloc_unlock>
   110c4:	00008067          	ret
   110c8:	00013537          	lui	a0,0x13
   110cc:	00d787b3          	add	a5,a5,a3
   110d0:	2a850513          	add	a0,a0,680 # 132a8 <__malloc_av_+0x8>
   110d4:	00862683          	lw	a3,8(a2)
   110d8:	0ca68c63          	beq	a3,a0,111b0 <_free_r+0x270>
   110dc:	00c62803          	lw	a6,12(a2)
   110e0:	0017e513          	or	a0,a5,1
   110e4:	00f70633          	add	a2,a4,a5
   110e8:	0106a623          	sw	a6,12(a3)
   110ec:	00d82423          	sw	a3,8(a6)
   110f0:	00a72223          	sw	a0,4(a4)
   110f4:	00f62023          	sw	a5,0(a2)
   110f8:	ee1ff06f          	j	10fd8 <_free_r+0x98>
   110fc:	12081c63          	bnez	a6,11234 <_free_r+0x2f4>
   11100:	00862583          	lw	a1,8(a2)
   11104:	00c62603          	lw	a2,12(a2)
   11108:	00f686b3          	add	a3,a3,a5
   1110c:	0016e793          	or	a5,a3,1
   11110:	00c5a623          	sw	a2,12(a1)
   11114:	00b62423          	sw	a1,8(a2)
   11118:	00f72223          	sw	a5,4(a4)
   1111c:	00d70733          	add	a4,a4,a3
   11120:	00d72023          	sw	a3,0(a4)
   11124:	ef9ff06f          	j	1101c <_free_r+0xdc>
   11128:	00157513          	and	a0,a0,1
   1112c:	00d786b3          	add	a3,a5,a3
   11130:	02051063          	bnez	a0,11150 <_free_r+0x210>
   11134:	ff842503          	lw	a0,-8(s0)
   11138:	40a70733          	sub	a4,a4,a0
   1113c:	00c72783          	lw	a5,12(a4)
   11140:	00872603          	lw	a2,8(a4)
   11144:	00a686b3          	add	a3,a3,a0
   11148:	00f62623          	sw	a5,12(a2)
   1114c:	00c7a423          	sw	a2,8(a5)
   11150:	0016e613          	or	a2,a3,1
   11154:	d441a783          	lw	a5,-700(gp) # 136b4 <__malloc_trim_threshold>
   11158:	00c72223          	sw	a2,4(a4)
   1115c:	00e5a423          	sw	a4,8(a1)
   11160:	eaf6eee3          	bltu	a3,a5,1101c <_free_r+0xdc>
   11164:	d601a583          	lw	a1,-672(gp) # 136d0 <__malloc_top_pad>
   11168:	00048513          	mv	a0,s1
   1116c:	c9dff0ef          	jal	10e08 <_malloc_trim_r>
   11170:	eadff06f          	j	1101c <_free_r+0xdc>
   11174:	00d787b3          	add	a5,a5,a3
   11178:	f5dff06f          	j	110d4 <_free_r+0x194>
   1117c:	01400613          	li	a2,20
   11180:	02d67063          	bgeu	a2,a3,111a0 <_free_r+0x260>
   11184:	05400613          	li	a2,84
   11188:	06d66463          	bltu	a2,a3,111f0 <_free_r+0x2b0>
   1118c:	00c7d693          	srl	a3,a5,0xc
   11190:	06f68513          	add	a0,a3,111
   11194:	06e68613          	add	a2,a3,110
   11198:	00351513          	sll	a0,a0,0x3
   1119c:	ed5ff06f          	j	11070 <_free_r+0x130>
   111a0:	05c68513          	add	a0,a3,92
   111a4:	05b68613          	add	a2,a3,91
   111a8:	00351513          	sll	a0,a0,0x3
   111ac:	ec5ff06f          	j	11070 <_free_r+0x130>
   111b0:	00e5aa23          	sw	a4,20(a1)
   111b4:	00e5a823          	sw	a4,16(a1)
   111b8:	0017e693          	or	a3,a5,1
   111bc:	00a72623          	sw	a0,12(a4)
   111c0:	00a72423          	sw	a0,8(a4)
   111c4:	00d72223          	sw	a3,4(a4)
   111c8:	00f70733          	add	a4,a4,a5
   111cc:	00f72023          	sw	a5,0(a4)
   111d0:	e4dff06f          	j	1101c <_free_r+0xdc>
   111d4:	0045a803          	lw	a6,4(a1)
   111d8:	40265613          	sra	a2,a2,0x2
   111dc:	00100793          	li	a5,1
   111e0:	00c797b3          	sll	a5,a5,a2
   111e4:	0107e7b3          	or	a5,a5,a6
   111e8:	00f5a223          	sw	a5,4(a1)
   111ec:	eb1ff06f          	j	1109c <_free_r+0x15c>
   111f0:	15400613          	li	a2,340
   111f4:	00d66c63          	bltu	a2,a3,1120c <_free_r+0x2cc>
   111f8:	00f7d693          	srl	a3,a5,0xf
   111fc:	07868513          	add	a0,a3,120
   11200:	07768613          	add	a2,a3,119
   11204:	00351513          	sll	a0,a0,0x3
   11208:	e69ff06f          	j	11070 <_free_r+0x130>
   1120c:	55400613          	li	a2,1364
   11210:	00d66c63          	bltu	a2,a3,11228 <_free_r+0x2e8>
   11214:	0127d693          	srl	a3,a5,0x12
   11218:	07d68513          	add	a0,a3,125
   1121c:	07c68613          	add	a2,a3,124
   11220:	00351513          	sll	a0,a0,0x3
   11224:	e4dff06f          	j	11070 <_free_r+0x130>
   11228:	3f800513          	li	a0,1016
   1122c:	07e00613          	li	a2,126
   11230:	e41ff06f          	j	11070 <_free_r+0x130>
   11234:	0017e693          	or	a3,a5,1
   11238:	00d72223          	sw	a3,4(a4)
   1123c:	00f62023          	sw	a5,0(a2)
   11240:	dddff06f          	j	1101c <_free_r+0xdc>

00011244 <_malloc_r>:
   11244:	fd010113          	add	sp,sp,-48
   11248:	01312e23          	sw	s3,28(sp)
   1124c:	02112623          	sw	ra,44(sp)
   11250:	02812423          	sw	s0,40(sp)
   11254:	02912223          	sw	s1,36(sp)
   11258:	03212023          	sw	s2,32(sp)
   1125c:	00b58793          	add	a5,a1,11
   11260:	01600713          	li	a4,22
   11264:	00050993          	mv	s3,a0
   11268:	08f76263          	bltu	a4,a5,112ec <_malloc_r+0xa8>
   1126c:	01000793          	li	a5,16
   11270:	20b7e663          	bltu	a5,a1,1147c <_malloc_r+0x238>
   11274:	78c000ef          	jal	11a00 <__malloc_lock>
   11278:	01800793          	li	a5,24
   1127c:	00200593          	li	a1,2
   11280:	01000493          	li	s1,16
   11284:	00013937          	lui	s2,0x13
   11288:	2a090913          	add	s2,s2,672 # 132a0 <__malloc_av_>
   1128c:	00f907b3          	add	a5,s2,a5
   11290:	0047a403          	lw	s0,4(a5)
   11294:	ff878713          	add	a4,a5,-8
   11298:	34e40463          	beq	s0,a4,115e0 <_malloc_r+0x39c>
   1129c:	00442783          	lw	a5,4(s0)
   112a0:	00c42683          	lw	a3,12(s0)
   112a4:	00842603          	lw	a2,8(s0)
   112a8:	ffc7f793          	and	a5,a5,-4
   112ac:	00f407b3          	add	a5,s0,a5
   112b0:	0047a703          	lw	a4,4(a5)
   112b4:	00d62623          	sw	a3,12(a2)
   112b8:	00c6a423          	sw	a2,8(a3)
   112bc:	00176713          	or	a4,a4,1
   112c0:	00098513          	mv	a0,s3
   112c4:	00e7a223          	sw	a4,4(a5)
   112c8:	73c000ef          	jal	11a04 <__malloc_unlock>
   112cc:	00840513          	add	a0,s0,8
   112d0:	02c12083          	lw	ra,44(sp)
   112d4:	02812403          	lw	s0,40(sp)
   112d8:	02412483          	lw	s1,36(sp)
   112dc:	02012903          	lw	s2,32(sp)
   112e0:	01c12983          	lw	s3,28(sp)
   112e4:	03010113          	add	sp,sp,48
   112e8:	00008067          	ret
   112ec:	ff87f493          	and	s1,a5,-8
   112f0:	1807c663          	bltz	a5,1147c <_malloc_r+0x238>
   112f4:	18b4e463          	bltu	s1,a1,1147c <_malloc_r+0x238>
   112f8:	708000ef          	jal	11a00 <__malloc_lock>
   112fc:	1f700793          	li	a5,503
   11300:	3e97fa63          	bgeu	a5,s1,116f4 <_malloc_r+0x4b0>
   11304:	0094d793          	srl	a5,s1,0x9
   11308:	18078263          	beqz	a5,1148c <_malloc_r+0x248>
   1130c:	00400713          	li	a4,4
   11310:	34f76063          	bltu	a4,a5,11650 <_malloc_r+0x40c>
   11314:	0064d793          	srl	a5,s1,0x6
   11318:	03978593          	add	a1,a5,57
   1131c:	03878813          	add	a6,a5,56
   11320:	00359613          	sll	a2,a1,0x3
   11324:	00013937          	lui	s2,0x13
   11328:	2a090913          	add	s2,s2,672 # 132a0 <__malloc_av_>
   1132c:	00c90633          	add	a2,s2,a2
   11330:	00462403          	lw	s0,4(a2)
   11334:	ff860613          	add	a2,a2,-8
   11338:	02860863          	beq	a2,s0,11368 <_malloc_r+0x124>
   1133c:	00f00513          	li	a0,15
   11340:	0140006f          	j	11354 <_malloc_r+0x110>
   11344:	00c42683          	lw	a3,12(s0)
   11348:	28075863          	bgez	a4,115d8 <_malloc_r+0x394>
   1134c:	00d60e63          	beq	a2,a3,11368 <_malloc_r+0x124>
   11350:	00068413          	mv	s0,a3
   11354:	00442783          	lw	a5,4(s0)
   11358:	ffc7f793          	and	a5,a5,-4
   1135c:	40978733          	sub	a4,a5,s1
   11360:	fee552e3          	bge	a0,a4,11344 <_malloc_r+0x100>
   11364:	00080593          	mv	a1,a6
   11368:	01092403          	lw	s0,16(s2)
   1136c:	00013837          	lui	a6,0x13
   11370:	2a880813          	add	a6,a6,680 # 132a8 <__malloc_av_+0x8>
   11374:	25040e63          	beq	s0,a6,115d0 <_malloc_r+0x38c>
   11378:	00442783          	lw	a5,4(s0)
   1137c:	00f00693          	li	a3,15
   11380:	ffc7f793          	and	a5,a5,-4
   11384:	40978733          	sub	a4,a5,s1
   11388:	36e6cc63          	blt	a3,a4,11700 <_malloc_r+0x4bc>
   1138c:	01092a23          	sw	a6,20(s2)
   11390:	01092823          	sw	a6,16(s2)
   11394:	34075063          	bgez	a4,116d4 <_malloc_r+0x490>
   11398:	1ff00713          	li	a4,511
   1139c:	00492503          	lw	a0,4(s2)
   113a0:	24f76863          	bltu	a4,a5,115f0 <_malloc_r+0x3ac>
   113a4:	ff87f713          	and	a4,a5,-8
   113a8:	00870713          	add	a4,a4,8
   113ac:	00e90733          	add	a4,s2,a4
   113b0:	00072683          	lw	a3,0(a4)
   113b4:	0057d613          	srl	a2,a5,0x5
   113b8:	00100793          	li	a5,1
   113bc:	00c797b3          	sll	a5,a5,a2
   113c0:	00f56533          	or	a0,a0,a5
   113c4:	ff870793          	add	a5,a4,-8
   113c8:	00f42623          	sw	a5,12(s0)
   113cc:	00d42423          	sw	a3,8(s0)
   113d0:	00a92223          	sw	a0,4(s2)
   113d4:	00872023          	sw	s0,0(a4)
   113d8:	0086a623          	sw	s0,12(a3)
   113dc:	4025d793          	sra	a5,a1,0x2
   113e0:	00100613          	li	a2,1
   113e4:	00f61633          	sll	a2,a2,a5
   113e8:	0ac56a63          	bltu	a0,a2,1149c <_malloc_r+0x258>
   113ec:	00a677b3          	and	a5,a2,a0
   113f0:	02079463          	bnez	a5,11418 <_malloc_r+0x1d4>
   113f4:	00161613          	sll	a2,a2,0x1
   113f8:	ffc5f593          	and	a1,a1,-4
   113fc:	00a677b3          	and	a5,a2,a0
   11400:	00458593          	add	a1,a1,4
   11404:	00079a63          	bnez	a5,11418 <_malloc_r+0x1d4>
   11408:	00161613          	sll	a2,a2,0x1
   1140c:	00a677b3          	and	a5,a2,a0
   11410:	00458593          	add	a1,a1,4
   11414:	fe078ae3          	beqz	a5,11408 <_malloc_r+0x1c4>
   11418:	00f00893          	li	a7,15
   1141c:	00359313          	sll	t1,a1,0x3
   11420:	00690333          	add	t1,s2,t1
   11424:	00030513          	mv	a0,t1
   11428:	00c52783          	lw	a5,12(a0)
   1142c:	00058e13          	mv	t3,a1
   11430:	24f50263          	beq	a0,a5,11674 <_malloc_r+0x430>
   11434:	0047a703          	lw	a4,4(a5)
   11438:	00078413          	mv	s0,a5
   1143c:	00c7a783          	lw	a5,12(a5)
   11440:	ffc77713          	and	a4,a4,-4
   11444:	409706b3          	sub	a3,a4,s1
   11448:	24d8c263          	blt	a7,a3,1168c <_malloc_r+0x448>
   1144c:	fe06c2e3          	bltz	a3,11430 <_malloc_r+0x1ec>
   11450:	00e40733          	add	a4,s0,a4
   11454:	00472683          	lw	a3,4(a4)
   11458:	00842603          	lw	a2,8(s0)
   1145c:	00098513          	mv	a0,s3
   11460:	0016e693          	or	a3,a3,1
   11464:	00d72223          	sw	a3,4(a4)
   11468:	00f62623          	sw	a5,12(a2)
   1146c:	00c7a423          	sw	a2,8(a5)
   11470:	594000ef          	jal	11a04 <__malloc_unlock>
   11474:	00840513          	add	a0,s0,8
   11478:	e59ff06f          	j	112d0 <_malloc_r+0x8c>
   1147c:	00c00793          	li	a5,12
   11480:	00f9a023          	sw	a5,0(s3)
   11484:	00000513          	li	a0,0
   11488:	e49ff06f          	j	112d0 <_malloc_r+0x8c>
   1148c:	20000613          	li	a2,512
   11490:	04000593          	li	a1,64
   11494:	03f00813          	li	a6,63
   11498:	e8dff06f          	j	11324 <_malloc_r+0xe0>
   1149c:	00892403          	lw	s0,8(s2)
   114a0:	01612823          	sw	s6,16(sp)
   114a4:	00442783          	lw	a5,4(s0)
   114a8:	ffc7fb13          	and	s6,a5,-4
   114ac:	009b6863          	bltu	s6,s1,114bc <_malloc_r+0x278>
   114b0:	409b0733          	sub	a4,s6,s1
   114b4:	00f00793          	li	a5,15
   114b8:	0ce7ca63          	blt	a5,a4,1158c <_malloc_r+0x348>
   114bc:	01912223          	sw	s9,4(sp)
   114c0:	01512a23          	sw	s5,20(sp)
   114c4:	d401a703          	lw	a4,-704(gp) # 136b0 <__malloc_sbrk_base>
   114c8:	d601aa83          	lw	s5,-672(gp) # 136d0 <__malloc_top_pad>
   114cc:	01412c23          	sw	s4,24(sp)
   114d0:	01712623          	sw	s7,12(sp)
   114d4:	fff00793          	li	a5,-1
   114d8:	01640a33          	add	s4,s0,s6
   114dc:	01548ab3          	add	s5,s1,s5
   114e0:	3cf70663          	beq	a4,a5,118ac <_malloc_r+0x668>
   114e4:	000017b7          	lui	a5,0x1
   114e8:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   114ec:	00fa8ab3          	add	s5,s5,a5
   114f0:	fffff7b7          	lui	a5,0xfffff
   114f4:	00fafab3          	and	s5,s5,a5
   114f8:	000a8593          	mv	a1,s5
   114fc:	00098513          	mv	a0,s3
   11500:	14d000ef          	jal	11e4c <_sbrk_r>
   11504:	fff00793          	li	a5,-1
   11508:	00050b93          	mv	s7,a0
   1150c:	44f50a63          	beq	a0,a5,11960 <_malloc_r+0x71c>
   11510:	01812423          	sw	s8,8(sp)
   11514:	23456e63          	bltu	a0,s4,11750 <_malloc_r+0x50c>
   11518:	ebc18c13          	add	s8,gp,-324 # 1382c <__malloc_current_mallinfo>
   1151c:	000c2583          	lw	a1,0(s8)
   11520:	00ba85b3          	add	a1,s5,a1
   11524:	00bc2023          	sw	a1,0(s8)
   11528:	00058713          	mv	a4,a1
   1152c:	2aaa1663          	bne	s4,a0,117d8 <_malloc_r+0x594>
   11530:	01451793          	sll	a5,a0,0x14
   11534:	2a079263          	bnez	a5,117d8 <_malloc_r+0x594>
   11538:	00892b83          	lw	s7,8(s2)
   1153c:	015b07b3          	add	a5,s6,s5
   11540:	0017e793          	or	a5,a5,1
   11544:	00fba223          	sw	a5,4(s7)
   11548:	d5c1a683          	lw	a3,-676(gp) # 136cc <__malloc_max_sbrked_mem>
   1154c:	00b6f463          	bgeu	a3,a1,11554 <_malloc_r+0x310>
   11550:	d4b1ae23          	sw	a1,-676(gp) # 136cc <__malloc_max_sbrked_mem>
   11554:	d581a683          	lw	a3,-680(gp) # 136c8 <__malloc_max_total_mem>
   11558:	00b6f463          	bgeu	a3,a1,11560 <_malloc_r+0x31c>
   1155c:	d4b1ac23          	sw	a1,-680(gp) # 136c8 <__malloc_max_total_mem>
   11560:	00812c03          	lw	s8,8(sp)
   11564:	000b8413          	mv	s0,s7
   11568:	ffc7f793          	and	a5,a5,-4
   1156c:	40978733          	sub	a4,a5,s1
   11570:	3897ea63          	bltu	a5,s1,11904 <_malloc_r+0x6c0>
   11574:	00f00793          	li	a5,15
   11578:	38e7d663          	bge	a5,a4,11904 <_malloc_r+0x6c0>
   1157c:	01812a03          	lw	s4,24(sp)
   11580:	01412a83          	lw	s5,20(sp)
   11584:	00c12b83          	lw	s7,12(sp)
   11588:	00412c83          	lw	s9,4(sp)
   1158c:	0014e793          	or	a5,s1,1
   11590:	00f42223          	sw	a5,4(s0)
   11594:	009404b3          	add	s1,s0,s1
   11598:	00992423          	sw	s1,8(s2)
   1159c:	00176713          	or	a4,a4,1
   115a0:	00098513          	mv	a0,s3
   115a4:	00e4a223          	sw	a4,4(s1)
   115a8:	45c000ef          	jal	11a04 <__malloc_unlock>
   115ac:	02c12083          	lw	ra,44(sp)
   115b0:	00840513          	add	a0,s0,8
   115b4:	02812403          	lw	s0,40(sp)
   115b8:	01012b03          	lw	s6,16(sp)
   115bc:	02412483          	lw	s1,36(sp)
   115c0:	02012903          	lw	s2,32(sp)
   115c4:	01c12983          	lw	s3,28(sp)
   115c8:	03010113          	add	sp,sp,48
   115cc:	00008067          	ret
   115d0:	00492503          	lw	a0,4(s2)
   115d4:	e09ff06f          	j	113dc <_malloc_r+0x198>
   115d8:	00842603          	lw	a2,8(s0)
   115dc:	cd1ff06f          	j	112ac <_malloc_r+0x68>
   115e0:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffeb628>
   115e4:	00258593          	add	a1,a1,2
   115e8:	d88780e3          	beq	a5,s0,11368 <_malloc_r+0x124>
   115ec:	cb1ff06f          	j	1129c <_malloc_r+0x58>
   115f0:	0097d713          	srl	a4,a5,0x9
   115f4:	00400693          	li	a3,4
   115f8:	14e6f263          	bgeu	a3,a4,1173c <_malloc_r+0x4f8>
   115fc:	01400693          	li	a3,20
   11600:	32e6e463          	bltu	a3,a4,11928 <_malloc_r+0x6e4>
   11604:	05c70613          	add	a2,a4,92
   11608:	05b70693          	add	a3,a4,91
   1160c:	00361613          	sll	a2,a2,0x3
   11610:	00c90633          	add	a2,s2,a2
   11614:	00062703          	lw	a4,0(a2)
   11618:	ff860613          	add	a2,a2,-8
   1161c:	00e61863          	bne	a2,a4,1162c <_malloc_r+0x3e8>
   11620:	2940006f          	j	118b4 <_malloc_r+0x670>
   11624:	00872703          	lw	a4,8(a4)
   11628:	00e60863          	beq	a2,a4,11638 <_malloc_r+0x3f4>
   1162c:	00472683          	lw	a3,4(a4)
   11630:	ffc6f693          	and	a3,a3,-4
   11634:	fed7e8e3          	bltu	a5,a3,11624 <_malloc_r+0x3e0>
   11638:	00c72603          	lw	a2,12(a4)
   1163c:	00c42623          	sw	a2,12(s0)
   11640:	00e42423          	sw	a4,8(s0)
   11644:	00862423          	sw	s0,8(a2)
   11648:	00872623          	sw	s0,12(a4)
   1164c:	d91ff06f          	j	113dc <_malloc_r+0x198>
   11650:	01400713          	li	a4,20
   11654:	10f77863          	bgeu	a4,a5,11764 <_malloc_r+0x520>
   11658:	05400713          	li	a4,84
   1165c:	2ef76463          	bltu	a4,a5,11944 <_malloc_r+0x700>
   11660:	00c4d793          	srl	a5,s1,0xc
   11664:	06f78593          	add	a1,a5,111
   11668:	06e78813          	add	a6,a5,110
   1166c:	00359613          	sll	a2,a1,0x3
   11670:	cb5ff06f          	j	11324 <_malloc_r+0xe0>
   11674:	001e0e13          	add	t3,t3,1
   11678:	003e7793          	and	a5,t3,3
   1167c:	00850513          	add	a0,a0,8
   11680:	10078063          	beqz	a5,11780 <_malloc_r+0x53c>
   11684:	00c52783          	lw	a5,12(a0)
   11688:	da9ff06f          	j	11430 <_malloc_r+0x1ec>
   1168c:	00842603          	lw	a2,8(s0)
   11690:	0014e593          	or	a1,s1,1
   11694:	00b42223          	sw	a1,4(s0)
   11698:	00f62623          	sw	a5,12(a2)
   1169c:	00c7a423          	sw	a2,8(a5)
   116a0:	009404b3          	add	s1,s0,s1
   116a4:	00992a23          	sw	s1,20(s2)
   116a8:	00992823          	sw	s1,16(s2)
   116ac:	0016e793          	or	a5,a3,1
   116b0:	0104a623          	sw	a6,12(s1)
   116b4:	0104a423          	sw	a6,8(s1)
   116b8:	00f4a223          	sw	a5,4(s1)
   116bc:	00e40733          	add	a4,s0,a4
   116c0:	00098513          	mv	a0,s3
   116c4:	00d72023          	sw	a3,0(a4)
   116c8:	33c000ef          	jal	11a04 <__malloc_unlock>
   116cc:	00840513          	add	a0,s0,8
   116d0:	c01ff06f          	j	112d0 <_malloc_r+0x8c>
   116d4:	00f407b3          	add	a5,s0,a5
   116d8:	0047a703          	lw	a4,4(a5)
   116dc:	00098513          	mv	a0,s3
   116e0:	00176713          	or	a4,a4,1
   116e4:	00e7a223          	sw	a4,4(a5)
   116e8:	31c000ef          	jal	11a04 <__malloc_unlock>
   116ec:	00840513          	add	a0,s0,8
   116f0:	be1ff06f          	j	112d0 <_malloc_r+0x8c>
   116f4:	0034d593          	srl	a1,s1,0x3
   116f8:	00848793          	add	a5,s1,8
   116fc:	b89ff06f          	j	11284 <_malloc_r+0x40>
   11700:	0014e693          	or	a3,s1,1
   11704:	00d42223          	sw	a3,4(s0)
   11708:	009404b3          	add	s1,s0,s1
   1170c:	00992a23          	sw	s1,20(s2)
   11710:	00992823          	sw	s1,16(s2)
   11714:	00176693          	or	a3,a4,1
   11718:	0104a623          	sw	a6,12(s1)
   1171c:	0104a423          	sw	a6,8(s1)
   11720:	00d4a223          	sw	a3,4(s1)
   11724:	00f407b3          	add	a5,s0,a5
   11728:	00098513          	mv	a0,s3
   1172c:	00e7a023          	sw	a4,0(a5)
   11730:	2d4000ef          	jal	11a04 <__malloc_unlock>
   11734:	00840513          	add	a0,s0,8
   11738:	b99ff06f          	j	112d0 <_malloc_r+0x8c>
   1173c:	0067d713          	srl	a4,a5,0x6
   11740:	03970613          	add	a2,a4,57
   11744:	03870693          	add	a3,a4,56
   11748:	00361613          	sll	a2,a2,0x3
   1174c:	ec5ff06f          	j	11610 <_malloc_r+0x3cc>
   11750:	07240c63          	beq	s0,s2,117c8 <_malloc_r+0x584>
   11754:	00892403          	lw	s0,8(s2)
   11758:	00812c03          	lw	s8,8(sp)
   1175c:	00442783          	lw	a5,4(s0)
   11760:	e09ff06f          	j	11568 <_malloc_r+0x324>
   11764:	05c78593          	add	a1,a5,92
   11768:	05b78813          	add	a6,a5,91
   1176c:	00359613          	sll	a2,a1,0x3
   11770:	bb5ff06f          	j	11324 <_malloc_r+0xe0>
   11774:	00832783          	lw	a5,8(t1)
   11778:	fff58593          	add	a1,a1,-1
   1177c:	26679e63          	bne	a5,t1,119f8 <_malloc_r+0x7b4>
   11780:	0035f793          	and	a5,a1,3
   11784:	ff830313          	add	t1,t1,-8
   11788:	fe0796e3          	bnez	a5,11774 <_malloc_r+0x530>
   1178c:	00492703          	lw	a4,4(s2)
   11790:	fff64793          	not	a5,a2
   11794:	00e7f7b3          	and	a5,a5,a4
   11798:	00f92223          	sw	a5,4(s2)
   1179c:	00161613          	sll	a2,a2,0x1
   117a0:	cec7eee3          	bltu	a5,a2,1149c <_malloc_r+0x258>
   117a4:	ce060ce3          	beqz	a2,1149c <_malloc_r+0x258>
   117a8:	00f67733          	and	a4,a2,a5
   117ac:	00071a63          	bnez	a4,117c0 <_malloc_r+0x57c>
   117b0:	00161613          	sll	a2,a2,0x1
   117b4:	00f67733          	and	a4,a2,a5
   117b8:	004e0e13          	add	t3,t3,4
   117bc:	fe070ae3          	beqz	a4,117b0 <_malloc_r+0x56c>
   117c0:	000e0593          	mv	a1,t3
   117c4:	c59ff06f          	j	1141c <_malloc_r+0x1d8>
   117c8:	ebc18c13          	add	s8,gp,-324 # 1382c <__malloc_current_mallinfo>
   117cc:	000c2703          	lw	a4,0(s8)
   117d0:	00ea8733          	add	a4,s5,a4
   117d4:	00ec2023          	sw	a4,0(s8)
   117d8:	d401a683          	lw	a3,-704(gp) # 136b0 <__malloc_sbrk_base>
   117dc:	fff00793          	li	a5,-1
   117e0:	18f68663          	beq	a3,a5,1196c <_malloc_r+0x728>
   117e4:	414b87b3          	sub	a5,s7,s4
   117e8:	00e787b3          	add	a5,a5,a4
   117ec:	00fc2023          	sw	a5,0(s8)
   117f0:	007bfc93          	and	s9,s7,7
   117f4:	0c0c8c63          	beqz	s9,118cc <_malloc_r+0x688>
   117f8:	419b8bb3          	sub	s7,s7,s9
   117fc:	000017b7          	lui	a5,0x1
   11800:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   11804:	008b8b93          	add	s7,s7,8
   11808:	419785b3          	sub	a1,a5,s9
   1180c:	015b8ab3          	add	s5,s7,s5
   11810:	415585b3          	sub	a1,a1,s5
   11814:	01459593          	sll	a1,a1,0x14
   11818:	0145da13          	srl	s4,a1,0x14
   1181c:	000a0593          	mv	a1,s4
   11820:	00098513          	mv	a0,s3
   11824:	628000ef          	jal	11e4c <_sbrk_r>
   11828:	fff00793          	li	a5,-1
   1182c:	18f50063          	beq	a0,a5,119ac <_malloc_r+0x768>
   11830:	41750533          	sub	a0,a0,s7
   11834:	01450ab3          	add	s5,a0,s4
   11838:	000c2703          	lw	a4,0(s8)
   1183c:	01792423          	sw	s7,8(s2)
   11840:	001ae793          	or	a5,s5,1
   11844:	00ea05b3          	add	a1,s4,a4
   11848:	00bc2023          	sw	a1,0(s8)
   1184c:	00fba223          	sw	a5,4(s7)
   11850:	cf240ce3          	beq	s0,s2,11548 <_malloc_r+0x304>
   11854:	00f00693          	li	a3,15
   11858:	0b66f063          	bgeu	a3,s6,118f8 <_malloc_r+0x6b4>
   1185c:	00442703          	lw	a4,4(s0)
   11860:	ff4b0793          	add	a5,s6,-12
   11864:	ff87f793          	and	a5,a5,-8
   11868:	00177713          	and	a4,a4,1
   1186c:	00f76733          	or	a4,a4,a5
   11870:	00e42223          	sw	a4,4(s0)
   11874:	00500613          	li	a2,5
   11878:	00f40733          	add	a4,s0,a5
   1187c:	00c72223          	sw	a2,4(a4)
   11880:	00c72423          	sw	a2,8(a4)
   11884:	00f6e663          	bltu	a3,a5,11890 <_malloc_r+0x64c>
   11888:	004ba783          	lw	a5,4(s7)
   1188c:	cbdff06f          	j	11548 <_malloc_r+0x304>
   11890:	00840593          	add	a1,s0,8
   11894:	00098513          	mv	a0,s3
   11898:	ea8ff0ef          	jal	10f40 <_free_r>
   1189c:	00892b83          	lw	s7,8(s2)
   118a0:	000c2583          	lw	a1,0(s8)
   118a4:	004ba783          	lw	a5,4(s7)
   118a8:	ca1ff06f          	j	11548 <_malloc_r+0x304>
   118ac:	010a8a93          	add	s5,s5,16
   118b0:	c49ff06f          	j	114f8 <_malloc_r+0x2b4>
   118b4:	4026d693          	sra	a3,a3,0x2
   118b8:	00100793          	li	a5,1
   118bc:	00d797b3          	sll	a5,a5,a3
   118c0:	00f56533          	or	a0,a0,a5
   118c4:	00a92223          	sw	a0,4(s2)
   118c8:	d75ff06f          	j	1163c <_malloc_r+0x3f8>
   118cc:	015b85b3          	add	a1,s7,s5
   118d0:	40b005b3          	neg	a1,a1
   118d4:	01459593          	sll	a1,a1,0x14
   118d8:	0145da13          	srl	s4,a1,0x14
   118dc:	000a0593          	mv	a1,s4
   118e0:	00098513          	mv	a0,s3
   118e4:	568000ef          	jal	11e4c <_sbrk_r>
   118e8:	fff00793          	li	a5,-1
   118ec:	f4f512e3          	bne	a0,a5,11830 <_malloc_r+0x5ec>
   118f0:	00000a13          	li	s4,0
   118f4:	f45ff06f          	j	11838 <_malloc_r+0x5f4>
   118f8:	00812c03          	lw	s8,8(sp)
   118fc:	00100793          	li	a5,1
   11900:	00fba223          	sw	a5,4(s7)
   11904:	00098513          	mv	a0,s3
   11908:	0fc000ef          	jal	11a04 <__malloc_unlock>
   1190c:	00000513          	li	a0,0
   11910:	01812a03          	lw	s4,24(sp)
   11914:	01412a83          	lw	s5,20(sp)
   11918:	01012b03          	lw	s6,16(sp)
   1191c:	00c12b83          	lw	s7,12(sp)
   11920:	00412c83          	lw	s9,4(sp)
   11924:	9adff06f          	j	112d0 <_malloc_r+0x8c>
   11928:	05400693          	li	a3,84
   1192c:	04e6e463          	bltu	a3,a4,11974 <_malloc_r+0x730>
   11930:	00c7d713          	srl	a4,a5,0xc
   11934:	06f70613          	add	a2,a4,111
   11938:	06e70693          	add	a3,a4,110
   1193c:	00361613          	sll	a2,a2,0x3
   11940:	cd1ff06f          	j	11610 <_malloc_r+0x3cc>
   11944:	15400713          	li	a4,340
   11948:	04f76463          	bltu	a4,a5,11990 <_malloc_r+0x74c>
   1194c:	00f4d793          	srl	a5,s1,0xf
   11950:	07878593          	add	a1,a5,120
   11954:	07778813          	add	a6,a5,119
   11958:	00359613          	sll	a2,a1,0x3
   1195c:	9c9ff06f          	j	11324 <_malloc_r+0xe0>
   11960:	00892403          	lw	s0,8(s2)
   11964:	00442783          	lw	a5,4(s0)
   11968:	c01ff06f          	j	11568 <_malloc_r+0x324>
   1196c:	d571a023          	sw	s7,-704(gp) # 136b0 <__malloc_sbrk_base>
   11970:	e81ff06f          	j	117f0 <_malloc_r+0x5ac>
   11974:	15400693          	li	a3,340
   11978:	04e6e463          	bltu	a3,a4,119c0 <_malloc_r+0x77c>
   1197c:	00f7d713          	srl	a4,a5,0xf
   11980:	07870613          	add	a2,a4,120
   11984:	07770693          	add	a3,a4,119
   11988:	00361613          	sll	a2,a2,0x3
   1198c:	c85ff06f          	j	11610 <_malloc_r+0x3cc>
   11990:	55400713          	li	a4,1364
   11994:	04f76463          	bltu	a4,a5,119dc <_malloc_r+0x798>
   11998:	0124d793          	srl	a5,s1,0x12
   1199c:	07d78593          	add	a1,a5,125
   119a0:	07c78813          	add	a6,a5,124
   119a4:	00359613          	sll	a2,a1,0x3
   119a8:	97dff06f          	j	11324 <_malloc_r+0xe0>
   119ac:	ff8c8c93          	add	s9,s9,-8
   119b0:	019a8ab3          	add	s5,s5,s9
   119b4:	417a8ab3          	sub	s5,s5,s7
   119b8:	00000a13          	li	s4,0
   119bc:	e7dff06f          	j	11838 <_malloc_r+0x5f4>
   119c0:	55400693          	li	a3,1364
   119c4:	02e6e463          	bltu	a3,a4,119ec <_malloc_r+0x7a8>
   119c8:	0127d713          	srl	a4,a5,0x12
   119cc:	07d70613          	add	a2,a4,125
   119d0:	07c70693          	add	a3,a4,124
   119d4:	00361613          	sll	a2,a2,0x3
   119d8:	c39ff06f          	j	11610 <_malloc_r+0x3cc>
   119dc:	3f800613          	li	a2,1016
   119e0:	07f00593          	li	a1,127
   119e4:	07e00813          	li	a6,126
   119e8:	93dff06f          	j	11324 <_malloc_r+0xe0>
   119ec:	3f800613          	li	a2,1016
   119f0:	07e00693          	li	a3,126
   119f4:	c1dff06f          	j	11610 <_malloc_r+0x3cc>
   119f8:	00492783          	lw	a5,4(s2)
   119fc:	da1ff06f          	j	1179c <_malloc_r+0x558>

00011a00 <__malloc_lock>:
   11a00:	00008067          	ret

00011a04 <__malloc_unlock>:
   11a04:	00008067          	ret

00011a08 <_fclose_r>:
   11a08:	ff010113          	add	sp,sp,-16
   11a0c:	00112623          	sw	ra,12(sp)
   11a10:	01212023          	sw	s2,0(sp)
   11a14:	02058863          	beqz	a1,11a44 <_fclose_r+0x3c>
   11a18:	00812423          	sw	s0,8(sp)
   11a1c:	00912223          	sw	s1,4(sp)
   11a20:	00058413          	mv	s0,a1
   11a24:	00050493          	mv	s1,a0
   11a28:	00050663          	beqz	a0,11a34 <_fclose_r+0x2c>
   11a2c:	03452783          	lw	a5,52(a0)
   11a30:	0c078c63          	beqz	a5,11b08 <_fclose_r+0x100>
   11a34:	00c41783          	lh	a5,12(s0)
   11a38:	02079263          	bnez	a5,11a5c <_fclose_r+0x54>
   11a3c:	00812403          	lw	s0,8(sp)
   11a40:	00412483          	lw	s1,4(sp)
   11a44:	00c12083          	lw	ra,12(sp)
   11a48:	00000913          	li	s2,0
   11a4c:	00090513          	mv	a0,s2
   11a50:	00012903          	lw	s2,0(sp)
   11a54:	01010113          	add	sp,sp,16
   11a58:	00008067          	ret
   11a5c:	00040593          	mv	a1,s0
   11a60:	00048513          	mv	a0,s1
   11a64:	0b8000ef          	jal	11b1c <__sflush_r>
   11a68:	02c42783          	lw	a5,44(s0)
   11a6c:	00050913          	mv	s2,a0
   11a70:	00078a63          	beqz	a5,11a84 <_fclose_r+0x7c>
   11a74:	01c42583          	lw	a1,28(s0)
   11a78:	00048513          	mv	a0,s1
   11a7c:	000780e7          	jalr	a5
   11a80:	06054463          	bltz	a0,11ae8 <_fclose_r+0xe0>
   11a84:	00c45783          	lhu	a5,12(s0)
   11a88:	0807f793          	and	a5,a5,128
   11a8c:	06079663          	bnez	a5,11af8 <_fclose_r+0xf0>
   11a90:	03042583          	lw	a1,48(s0)
   11a94:	00058c63          	beqz	a1,11aac <_fclose_r+0xa4>
   11a98:	04040793          	add	a5,s0,64
   11a9c:	00f58663          	beq	a1,a5,11aa8 <_fclose_r+0xa0>
   11aa0:	00048513          	mv	a0,s1
   11aa4:	c9cff0ef          	jal	10f40 <_free_r>
   11aa8:	02042823          	sw	zero,48(s0)
   11aac:	04442583          	lw	a1,68(s0)
   11ab0:	00058863          	beqz	a1,11ac0 <_fclose_r+0xb8>
   11ab4:	00048513          	mv	a0,s1
   11ab8:	c88ff0ef          	jal	10f40 <_free_r>
   11abc:	04042223          	sw	zero,68(s0)
   11ac0:	bd9fe0ef          	jal	10698 <__sfp_lock_acquire>
   11ac4:	00041623          	sh	zero,12(s0)
   11ac8:	bd5fe0ef          	jal	1069c <__sfp_lock_release>
   11acc:	00c12083          	lw	ra,12(sp)
   11ad0:	00812403          	lw	s0,8(sp)
   11ad4:	00412483          	lw	s1,4(sp)
   11ad8:	00090513          	mv	a0,s2
   11adc:	00012903          	lw	s2,0(sp)
   11ae0:	01010113          	add	sp,sp,16
   11ae4:	00008067          	ret
   11ae8:	00c45783          	lhu	a5,12(s0)
   11aec:	fff00913          	li	s2,-1
   11af0:	0807f793          	and	a5,a5,128
   11af4:	f8078ee3          	beqz	a5,11a90 <_fclose_r+0x88>
   11af8:	01042583          	lw	a1,16(s0)
   11afc:	00048513          	mv	a0,s1
   11b00:	c40ff0ef          	jal	10f40 <_free_r>
   11b04:	f8dff06f          	j	11a90 <_fclose_r+0x88>
   11b08:	b6dfe0ef          	jal	10674 <__sinit>
   11b0c:	f29ff06f          	j	11a34 <_fclose_r+0x2c>

00011b10 <fclose>:
   11b10:	00050593          	mv	a1,a0
   11b14:	d3c1a503          	lw	a0,-708(gp) # 136ac <_impure_ptr>
   11b18:	ef1ff06f          	j	11a08 <_fclose_r>

00011b1c <__sflush_r>:
   11b1c:	00c59703          	lh	a4,12(a1)
   11b20:	fe010113          	add	sp,sp,-32
   11b24:	00812c23          	sw	s0,24(sp)
   11b28:	01312623          	sw	s3,12(sp)
   11b2c:	00112e23          	sw	ra,28(sp)
   11b30:	00877793          	and	a5,a4,8
   11b34:	00058413          	mv	s0,a1
   11b38:	00050993          	mv	s3,a0
   11b3c:	12079063          	bnez	a5,11c5c <__sflush_r+0x140>
   11b40:	000017b7          	lui	a5,0x1
   11b44:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   11b48:	0045a683          	lw	a3,4(a1)
   11b4c:	00f767b3          	or	a5,a4,a5
   11b50:	00f59623          	sh	a5,12(a1)
   11b54:	18d05263          	blez	a3,11cd8 <__sflush_r+0x1bc>
   11b58:	02842803          	lw	a6,40(s0)
   11b5c:	0e080463          	beqz	a6,11c44 <__sflush_r+0x128>
   11b60:	00912a23          	sw	s1,20(sp)
   11b64:	01371693          	sll	a3,a4,0x13
   11b68:	0009a483          	lw	s1,0(s3)
   11b6c:	0009a023          	sw	zero,0(s3)
   11b70:	01c42583          	lw	a1,28(s0)
   11b74:	1606ce63          	bltz	a3,11cf0 <__sflush_r+0x1d4>
   11b78:	00000613          	li	a2,0
   11b7c:	00100693          	li	a3,1
   11b80:	00098513          	mv	a0,s3
   11b84:	000800e7          	jalr	a6
   11b88:	fff00793          	li	a5,-1
   11b8c:	00050613          	mv	a2,a0
   11b90:	1af50463          	beq	a0,a5,11d38 <__sflush_r+0x21c>
   11b94:	00c41783          	lh	a5,12(s0)
   11b98:	02842803          	lw	a6,40(s0)
   11b9c:	01c42583          	lw	a1,28(s0)
   11ba0:	0047f793          	and	a5,a5,4
   11ba4:	00078e63          	beqz	a5,11bc0 <__sflush_r+0xa4>
   11ba8:	00442703          	lw	a4,4(s0)
   11bac:	03042783          	lw	a5,48(s0)
   11bb0:	40e60633          	sub	a2,a2,a4
   11bb4:	00078663          	beqz	a5,11bc0 <__sflush_r+0xa4>
   11bb8:	03c42783          	lw	a5,60(s0)
   11bbc:	40f60633          	sub	a2,a2,a5
   11bc0:	00000693          	li	a3,0
   11bc4:	00098513          	mv	a0,s3
   11bc8:	000800e7          	jalr	a6
   11bcc:	fff00793          	li	a5,-1
   11bd0:	12f51463          	bne	a0,a5,11cf8 <__sflush_r+0x1dc>
   11bd4:	0009a683          	lw	a3,0(s3)
   11bd8:	01d00793          	li	a5,29
   11bdc:	00c41703          	lh	a4,12(s0)
   11be0:	16d7ea63          	bltu	a5,a3,11d54 <__sflush_r+0x238>
   11be4:	204007b7          	lui	a5,0x20400
   11be8:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203ec61d>
   11bec:	00d7d7b3          	srl	a5,a5,a3
   11bf0:	0017f793          	and	a5,a5,1
   11bf4:	16078063          	beqz	a5,11d54 <__sflush_r+0x238>
   11bf8:	01042603          	lw	a2,16(s0)
   11bfc:	fffff7b7          	lui	a5,0xfffff
   11c00:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebe1b>
   11c04:	00f777b3          	and	a5,a4,a5
   11c08:	00f41623          	sh	a5,12(s0)
   11c0c:	00042223          	sw	zero,4(s0)
   11c10:	00c42023          	sw	a2,0(s0)
   11c14:	01371793          	sll	a5,a4,0x13
   11c18:	0007d463          	bgez	a5,11c20 <__sflush_r+0x104>
   11c1c:	10068263          	beqz	a3,11d20 <__sflush_r+0x204>
   11c20:	03042583          	lw	a1,48(s0)
   11c24:	0099a023          	sw	s1,0(s3)
   11c28:	10058463          	beqz	a1,11d30 <__sflush_r+0x214>
   11c2c:	04040793          	add	a5,s0,64
   11c30:	00f58663          	beq	a1,a5,11c3c <__sflush_r+0x120>
   11c34:	00098513          	mv	a0,s3
   11c38:	b08ff0ef          	jal	10f40 <_free_r>
   11c3c:	01412483          	lw	s1,20(sp)
   11c40:	02042823          	sw	zero,48(s0)
   11c44:	00000513          	li	a0,0
   11c48:	01c12083          	lw	ra,28(sp)
   11c4c:	01812403          	lw	s0,24(sp)
   11c50:	00c12983          	lw	s3,12(sp)
   11c54:	02010113          	add	sp,sp,32
   11c58:	00008067          	ret
   11c5c:	01212823          	sw	s2,16(sp)
   11c60:	0105a903          	lw	s2,16(a1)
   11c64:	08090263          	beqz	s2,11ce8 <__sflush_r+0x1cc>
   11c68:	00912a23          	sw	s1,20(sp)
   11c6c:	0005a483          	lw	s1,0(a1)
   11c70:	00377713          	and	a4,a4,3
   11c74:	0125a023          	sw	s2,0(a1)
   11c78:	412484b3          	sub	s1,s1,s2
   11c7c:	00000793          	li	a5,0
   11c80:	00071463          	bnez	a4,11c88 <__sflush_r+0x16c>
   11c84:	0145a783          	lw	a5,20(a1)
   11c88:	00f42423          	sw	a5,8(s0)
   11c8c:	00904863          	bgtz	s1,11c9c <__sflush_r+0x180>
   11c90:	0540006f          	j	11ce4 <__sflush_r+0x1c8>
   11c94:	00a90933          	add	s2,s2,a0
   11c98:	04905663          	blez	s1,11ce4 <__sflush_r+0x1c8>
   11c9c:	02442783          	lw	a5,36(s0)
   11ca0:	01c42583          	lw	a1,28(s0)
   11ca4:	00048693          	mv	a3,s1
   11ca8:	00090613          	mv	a2,s2
   11cac:	00098513          	mv	a0,s3
   11cb0:	000780e7          	jalr	a5
   11cb4:	40a484b3          	sub	s1,s1,a0
   11cb8:	fca04ee3          	bgtz	a0,11c94 <__sflush_r+0x178>
   11cbc:	00c41703          	lh	a4,12(s0)
   11cc0:	01012903          	lw	s2,16(sp)
   11cc4:	04076713          	or	a4,a4,64
   11cc8:	01412483          	lw	s1,20(sp)
   11ccc:	00e41623          	sh	a4,12(s0)
   11cd0:	fff00513          	li	a0,-1
   11cd4:	f75ff06f          	j	11c48 <__sflush_r+0x12c>
   11cd8:	03c5a683          	lw	a3,60(a1)
   11cdc:	e6d04ee3          	bgtz	a3,11b58 <__sflush_r+0x3c>
   11ce0:	f65ff06f          	j	11c44 <__sflush_r+0x128>
   11ce4:	01412483          	lw	s1,20(sp)
   11ce8:	01012903          	lw	s2,16(sp)
   11cec:	f59ff06f          	j	11c44 <__sflush_r+0x128>
   11cf0:	05042603          	lw	a2,80(s0)
   11cf4:	eadff06f          	j	11ba0 <__sflush_r+0x84>
   11cf8:	00c41703          	lh	a4,12(s0)
   11cfc:	01042683          	lw	a3,16(s0)
   11d00:	fffff7b7          	lui	a5,0xfffff
   11d04:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebe1b>
   11d08:	00f777b3          	and	a5,a4,a5
   11d0c:	00f41623          	sh	a5,12(s0)
   11d10:	00042223          	sw	zero,4(s0)
   11d14:	00d42023          	sw	a3,0(s0)
   11d18:	01371793          	sll	a5,a4,0x13
   11d1c:	f007d2e3          	bgez	a5,11c20 <__sflush_r+0x104>
   11d20:	03042583          	lw	a1,48(s0)
   11d24:	04a42823          	sw	a0,80(s0)
   11d28:	0099a023          	sw	s1,0(s3)
   11d2c:	f00590e3          	bnez	a1,11c2c <__sflush_r+0x110>
   11d30:	01412483          	lw	s1,20(sp)
   11d34:	f11ff06f          	j	11c44 <__sflush_r+0x128>
   11d38:	0009a783          	lw	a5,0(s3)
   11d3c:	e4078ce3          	beqz	a5,11b94 <__sflush_r+0x78>
   11d40:	01d00713          	li	a4,29
   11d44:	00e78c63          	beq	a5,a4,11d5c <__sflush_r+0x240>
   11d48:	01600713          	li	a4,22
   11d4c:	00e78863          	beq	a5,a4,11d5c <__sflush_r+0x240>
   11d50:	00c41703          	lh	a4,12(s0)
   11d54:	04076713          	or	a4,a4,64
   11d58:	f71ff06f          	j	11cc8 <__sflush_r+0x1ac>
   11d5c:	0099a023          	sw	s1,0(s3)
   11d60:	01412483          	lw	s1,20(sp)
   11d64:	ee1ff06f          	j	11c44 <__sflush_r+0x128>

00011d68 <_fflush_r>:
   11d68:	fe010113          	add	sp,sp,-32
   11d6c:	00812c23          	sw	s0,24(sp)
   11d70:	00112e23          	sw	ra,28(sp)
   11d74:	00050413          	mv	s0,a0
   11d78:	00050663          	beqz	a0,11d84 <_fflush_r+0x1c>
   11d7c:	03452783          	lw	a5,52(a0)
   11d80:	02078a63          	beqz	a5,11db4 <_fflush_r+0x4c>
   11d84:	00c59783          	lh	a5,12(a1)
   11d88:	00079c63          	bnez	a5,11da0 <_fflush_r+0x38>
   11d8c:	01c12083          	lw	ra,28(sp)
   11d90:	01812403          	lw	s0,24(sp)
   11d94:	00000513          	li	a0,0
   11d98:	02010113          	add	sp,sp,32
   11d9c:	00008067          	ret
   11da0:	00040513          	mv	a0,s0
   11da4:	01812403          	lw	s0,24(sp)
   11da8:	01c12083          	lw	ra,28(sp)
   11dac:	02010113          	add	sp,sp,32
   11db0:	d6dff06f          	j	11b1c <__sflush_r>
   11db4:	00b12623          	sw	a1,12(sp)
   11db8:	8bdfe0ef          	jal	10674 <__sinit>
   11dbc:	00c12583          	lw	a1,12(sp)
   11dc0:	fc5ff06f          	j	11d84 <_fflush_r+0x1c>

00011dc4 <fflush>:
   11dc4:	06050063          	beqz	a0,11e24 <fflush+0x60>
   11dc8:	00050593          	mv	a1,a0
   11dcc:	d3c1a503          	lw	a0,-708(gp) # 136ac <_impure_ptr>
   11dd0:	00050663          	beqz	a0,11ddc <fflush+0x18>
   11dd4:	03452783          	lw	a5,52(a0)
   11dd8:	00078c63          	beqz	a5,11df0 <fflush+0x2c>
   11ddc:	00c59783          	lh	a5,12(a1)
   11de0:	00079663          	bnez	a5,11dec <fflush+0x28>
   11de4:	00000513          	li	a0,0
   11de8:	00008067          	ret
   11dec:	d31ff06f          	j	11b1c <__sflush_r>
   11df0:	fe010113          	add	sp,sp,-32
   11df4:	00b12623          	sw	a1,12(sp)
   11df8:	00a12423          	sw	a0,8(sp)
   11dfc:	00112e23          	sw	ra,28(sp)
   11e00:	875fe0ef          	jal	10674 <__sinit>
   11e04:	00c12583          	lw	a1,12(sp)
   11e08:	00812503          	lw	a0,8(sp)
   11e0c:	00c59783          	lh	a5,12(a1)
   11e10:	02079863          	bnez	a5,11e40 <fflush+0x7c>
   11e14:	01c12083          	lw	ra,28(sp)
   11e18:	00000513          	li	a0,0
   11e1c:	02010113          	add	sp,sp,32
   11e20:	00008067          	ret
   11e24:	00013637          	lui	a2,0x13
   11e28:	000125b7          	lui	a1,0x12
   11e2c:	00013537          	lui	a0,0x13
   11e30:	17060613          	add	a2,a2,368 # 13170 <__sglue>
   11e34:	d6858593          	add	a1,a1,-664 # 11d68 <_fflush_r>
   11e38:	18050513          	add	a0,a0,384 # 13180 <_impure_data>
   11e3c:	895fe06f          	j	106d0 <_fwalk_sglue>
   11e40:	01c12083          	lw	ra,28(sp)
   11e44:	02010113          	add	sp,sp,32
   11e48:	cd5ff06f          	j	11b1c <__sflush_r>

00011e4c <_sbrk_r>:
   11e4c:	ff010113          	add	sp,sp,-16
   11e50:	00812423          	sw	s0,8(sp)
   11e54:	00912223          	sw	s1,4(sp)
   11e58:	00050413          	mv	s0,a0
   11e5c:	00058513          	mv	a0,a1
   11e60:	00112623          	sw	ra,12(sp)
   11e64:	d401a823          	sw	zero,-688(gp) # 136c0 <errno>
   11e68:	230000ef          	jal	12098 <_sbrk>
   11e6c:	fff00793          	li	a5,-1
   11e70:	00f50c63          	beq	a0,a5,11e88 <_sbrk_r+0x3c>
   11e74:	00c12083          	lw	ra,12(sp)
   11e78:	00812403          	lw	s0,8(sp)
   11e7c:	00412483          	lw	s1,4(sp)
   11e80:	01010113          	add	sp,sp,16
   11e84:	00008067          	ret
   11e88:	d501a783          	lw	a5,-688(gp) # 136c0 <errno>
   11e8c:	fe0784e3          	beqz	a5,11e74 <_sbrk_r+0x28>
   11e90:	00c12083          	lw	ra,12(sp)
   11e94:	00f42023          	sw	a5,0(s0)
   11e98:	00812403          	lw	s0,8(sp)
   11e9c:	00412483          	lw	s1,4(sp)
   11ea0:	01010113          	add	sp,sp,16
   11ea4:	00008067          	ret

00011ea8 <__libc_fini_array>:
   11ea8:	ff010113          	add	sp,sp,-16
   11eac:	00812423          	sw	s0,8(sp)
   11eb0:	000137b7          	lui	a5,0x13
   11eb4:	00013437          	lui	s0,0x13
   11eb8:	16878793          	add	a5,a5,360 # 13168 <__do_global_dtors_aux_fini_array_entry>
   11ebc:	16c40413          	add	s0,s0,364 # 1316c <__fini_array_end>
   11ec0:	40f40433          	sub	s0,s0,a5
   11ec4:	00912223          	sw	s1,4(sp)
   11ec8:	00112623          	sw	ra,12(sp)
   11ecc:	40245493          	sra	s1,s0,0x2
   11ed0:	02048063          	beqz	s1,11ef0 <__libc_fini_array+0x48>
   11ed4:	ffc40413          	add	s0,s0,-4
   11ed8:	00f40433          	add	s0,s0,a5
   11edc:	00042783          	lw	a5,0(s0)
   11ee0:	fff48493          	add	s1,s1,-1
   11ee4:	ffc40413          	add	s0,s0,-4
   11ee8:	000780e7          	jalr	a5
   11eec:	fe0498e3          	bnez	s1,11edc <__libc_fini_array+0x34>
   11ef0:	00c12083          	lw	ra,12(sp)
   11ef4:	00812403          	lw	s0,8(sp)
   11ef8:	00412483          	lw	s1,4(sp)
   11efc:	01010113          	add	sp,sp,16
   11f00:	00008067          	ret

00011f04 <__register_exitproc>:
   11f04:	d541a783          	lw	a5,-684(gp) # 136c4 <__atexit>
   11f08:	04078c63          	beqz	a5,11f60 <__register_exitproc+0x5c>
   11f0c:	0047a703          	lw	a4,4(a5)
   11f10:	01f00813          	li	a6,31
   11f14:	08e84063          	blt	a6,a4,11f94 <__register_exitproc+0x90>
   11f18:	00271813          	sll	a6,a4,0x2
   11f1c:	02050663          	beqz	a0,11f48 <__register_exitproc+0x44>
   11f20:	01078333          	add	t1,a5,a6
   11f24:	08c32423          	sw	a2,136(t1)
   11f28:	1887a883          	lw	a7,392(a5)
   11f2c:	00100613          	li	a2,1
   11f30:	00e61633          	sll	a2,a2,a4
   11f34:	00c8e8b3          	or	a7,a7,a2
   11f38:	1917a423          	sw	a7,392(a5)
   11f3c:	10d32423          	sw	a3,264(t1)
   11f40:	00200693          	li	a3,2
   11f44:	02d50663          	beq	a0,a3,11f70 <__register_exitproc+0x6c>
   11f48:	00170713          	add	a4,a4,1
   11f4c:	00e7a223          	sw	a4,4(a5)
   11f50:	010787b3          	add	a5,a5,a6
   11f54:	00b7a423          	sw	a1,8(a5)
   11f58:	00000513          	li	a0,0
   11f5c:	00008067          	ret
   11f60:	ee418813          	add	a6,gp,-284 # 13854 <__atexit0>
   11f64:	d501aa23          	sw	a6,-684(gp) # 136c4 <__atexit>
   11f68:	ee418793          	add	a5,gp,-284 # 13854 <__atexit0>
   11f6c:	fa1ff06f          	j	11f0c <__register_exitproc+0x8>
   11f70:	18c7a683          	lw	a3,396(a5)
   11f74:	00170713          	add	a4,a4,1
   11f78:	00e7a223          	sw	a4,4(a5)
   11f7c:	00c6e6b3          	or	a3,a3,a2
   11f80:	18d7a623          	sw	a3,396(a5)
   11f84:	010787b3          	add	a5,a5,a6
   11f88:	00b7a423          	sw	a1,8(a5)
   11f8c:	00000513          	li	a0,0
   11f90:	00008067          	ret
   11f94:	fff00513          	li	a0,-1
   11f98:	00008067          	ret

00011f9c <_close>:
   11f9c:	ff010113          	add	sp,sp,-16
   11fa0:	00112623          	sw	ra,12(sp)
   11fa4:	00812423          	sw	s0,8(sp)
   11fa8:	03900893          	li	a7,57
   11fac:	00000073          	ecall
   11fb0:	00050413          	mv	s0,a0
   11fb4:	00054c63          	bltz	a0,11fcc <_close+0x30>
   11fb8:	00c12083          	lw	ra,12(sp)
   11fbc:	00040513          	mv	a0,s0
   11fc0:	00812403          	lw	s0,8(sp)
   11fc4:	01010113          	add	sp,sp,16
   11fc8:	00008067          	ret
   11fcc:	40800433          	neg	s0,s0
   11fd0:	184000ef          	jal	12154 <__errno>
   11fd4:	00852023          	sw	s0,0(a0)
   11fd8:	fff00413          	li	s0,-1
   11fdc:	fddff06f          	j	11fb8 <_close+0x1c>

00011fe0 <_exit>:
   11fe0:	05d00893          	li	a7,93
   11fe4:	00000073          	ecall
   11fe8:	00054463          	bltz	a0,11ff0 <_exit+0x10>
   11fec:	0000006f          	j	11fec <_exit+0xc>
   11ff0:	ff010113          	add	sp,sp,-16
   11ff4:	00812423          	sw	s0,8(sp)
   11ff8:	00050413          	mv	s0,a0
   11ffc:	00112623          	sw	ra,12(sp)
   12000:	40800433          	neg	s0,s0
   12004:	150000ef          	jal	12154 <__errno>
   12008:	00852023          	sw	s0,0(a0)
   1200c:	0000006f          	j	1200c <_exit+0x2c>

00012010 <_lseek>:
   12010:	ff010113          	add	sp,sp,-16
   12014:	00112623          	sw	ra,12(sp)
   12018:	00812423          	sw	s0,8(sp)
   1201c:	03e00893          	li	a7,62
   12020:	00000073          	ecall
   12024:	00050413          	mv	s0,a0
   12028:	00054c63          	bltz	a0,12040 <_lseek+0x30>
   1202c:	00c12083          	lw	ra,12(sp)
   12030:	00040513          	mv	a0,s0
   12034:	00812403          	lw	s0,8(sp)
   12038:	01010113          	add	sp,sp,16
   1203c:	00008067          	ret
   12040:	40800433          	neg	s0,s0
   12044:	110000ef          	jal	12154 <__errno>
   12048:	00852023          	sw	s0,0(a0)
   1204c:	fff00413          	li	s0,-1
   12050:	fddff06f          	j	1202c <_lseek+0x1c>

00012054 <_read>:
   12054:	ff010113          	add	sp,sp,-16
   12058:	00112623          	sw	ra,12(sp)
   1205c:	00812423          	sw	s0,8(sp)
   12060:	03f00893          	li	a7,63
   12064:	00000073          	ecall
   12068:	00050413          	mv	s0,a0
   1206c:	00054c63          	bltz	a0,12084 <_read+0x30>
   12070:	00c12083          	lw	ra,12(sp)
   12074:	00040513          	mv	a0,s0
   12078:	00812403          	lw	s0,8(sp)
   1207c:	01010113          	add	sp,sp,16
   12080:	00008067          	ret
   12084:	40800433          	neg	s0,s0
   12088:	0cc000ef          	jal	12154 <__errno>
   1208c:	00852023          	sw	s0,0(a0)
   12090:	fff00413          	li	s0,-1
   12094:	fddff06f          	j	12070 <_read+0x1c>

00012098 <_sbrk>:
   12098:	d641a703          	lw	a4,-668(gp) # 136d4 <heap_end.0>
   1209c:	ff010113          	add	sp,sp,-16
   120a0:	00112623          	sw	ra,12(sp)
   120a4:	00050793          	mv	a5,a0
   120a8:	02071063          	bnez	a4,120c8 <_sbrk+0x30>
   120ac:	0d600893          	li	a7,214
   120b0:	00000513          	li	a0,0
   120b4:	00000073          	ecall
   120b8:	fff00613          	li	a2,-1
   120bc:	00050713          	mv	a4,a0
   120c0:	02c50a63          	beq	a0,a2,120f4 <_sbrk+0x5c>
   120c4:	d6a1a223          	sw	a0,-668(gp) # 136d4 <heap_end.0>
   120c8:	0d600893          	li	a7,214
   120cc:	00e78533          	add	a0,a5,a4
   120d0:	00000073          	ecall
   120d4:	d641a703          	lw	a4,-668(gp) # 136d4 <heap_end.0>
   120d8:	00e787b3          	add	a5,a5,a4
   120dc:	00f51c63          	bne	a0,a5,120f4 <_sbrk+0x5c>
   120e0:	00c12083          	lw	ra,12(sp)
   120e4:	d6a1a223          	sw	a0,-668(gp) # 136d4 <heap_end.0>
   120e8:	00070513          	mv	a0,a4
   120ec:	01010113          	add	sp,sp,16
   120f0:	00008067          	ret
   120f4:	060000ef          	jal	12154 <__errno>
   120f8:	00c12083          	lw	ra,12(sp)
   120fc:	00c00793          	li	a5,12
   12100:	00f52023          	sw	a5,0(a0)
   12104:	fff00513          	li	a0,-1
   12108:	01010113          	add	sp,sp,16
   1210c:	00008067          	ret

00012110 <_write>:
   12110:	ff010113          	add	sp,sp,-16
   12114:	00112623          	sw	ra,12(sp)
   12118:	00812423          	sw	s0,8(sp)
   1211c:	04000893          	li	a7,64
   12120:	00000073          	ecall
   12124:	00050413          	mv	s0,a0
   12128:	00054c63          	bltz	a0,12140 <_write+0x30>
   1212c:	00c12083          	lw	ra,12(sp)
   12130:	00040513          	mv	a0,s0
   12134:	00812403          	lw	s0,8(sp)
   12138:	01010113          	add	sp,sp,16
   1213c:	00008067          	ret
   12140:	40800433          	neg	s0,s0
   12144:	010000ef          	jal	12154 <__errno>
   12148:	00852023          	sw	s0,0(a0)
   1214c:	fff00413          	li	s0,-1
   12150:	fddff06f          	j	1212c <_write+0x1c>

00012154 <__errno>:
   12154:	d3c1a503          	lw	a0,-708(gp) # 136ac <_impure_ptr>
   12158:	00008067          	ret

Disassembly of section .eh_frame:

0001315c <__EH_FRAME_BEGIN__>:
   1315c:	0000                	.insn	2, 0x
	...

Disassembly of section .init_array:

00013160 <__init_array_start>:
   13160:	00c0                	.insn	2, 0x00c0
   13162:	0001                	.insn	2, 0x0001

00013164 <__frame_dummy_init_array_entry>:
   13164:	0168                	.insn	2, 0x0168
   13166:	0001                	.insn	2, 0x0001

Disassembly of section .fini_array:

00013168 <__do_global_dtors_aux_fini_array_entry>:
   13168:	0124                	.insn	2, 0x0124
   1316a:	0001                	.insn	2, 0x0001

Disassembly of section .data:

00013170 <__sglue>:
   13170:	0000                	.insn	2, 0x
   13172:	0000                	.insn	2, 0x
   13174:	00000003          	lb	zero,0(zero) # 0 <exit-0x10094>
   13178:	36f4                	.insn	2, 0x36f4
   1317a:	0001                	.insn	2, 0x0001
   1317c:	0000                	.insn	2, 0x
	...

00013180 <_impure_data>:
   13180:	0000                	.insn	2, 0x
   13182:	0000                	.insn	2, 0x
   13184:	36f4                	.insn	2, 0x36f4
   13186:	0001                	.insn	2, 0x0001
   13188:	375c                	.insn	2, 0x375c
   1318a:	0001                	.insn	2, 0x0001
   1318c:	37c4                	.insn	2, 0x37c4
   1318e:	0001                	.insn	2, 0x0001
	...
   13218:	0001                	.insn	2, 0x0001
   1321a:	0000                	.insn	2, 0x
   1321c:	0000                	.insn	2, 0x
   1321e:	0000                	.insn	2, 0x
   13220:	330e                	.insn	2, 0x330e
   13222:	abcd                	.insn	2, 0xabcd
   13224:	1234                	.insn	2, 0x1234
   13226:	e66d                	.insn	2, 0xe66d
   13228:	deec                	.insn	2, 0xdeec
   1322a:	0005                	.insn	2, 0x0005
   1322c:	0000000b          	.insn	4, 0x000b
	...

000132a0 <__malloc_av_>:
	...
   132a8:	32a0                	.insn	2, 0x32a0
   132aa:	0001                	.insn	2, 0x0001
   132ac:	32a0                	.insn	2, 0x32a0
   132ae:	0001                	.insn	2, 0x0001
   132b0:	32a8                	.insn	2, 0x32a8
   132b2:	0001                	.insn	2, 0x0001
   132b4:	32a8                	.insn	2, 0x32a8
   132b6:	0001                	.insn	2, 0x0001
   132b8:	32b0                	.insn	2, 0x32b0
   132ba:	0001                	.insn	2, 0x0001
   132bc:	32b0                	.insn	2, 0x32b0
   132be:	0001                	.insn	2, 0x0001
   132c0:	32b8                	.insn	2, 0x32b8
   132c2:	0001                	.insn	2, 0x0001
   132c4:	32b8                	.insn	2, 0x32b8
   132c6:	0001                	.insn	2, 0x0001
   132c8:	32c0                	.insn	2, 0x32c0
   132ca:	0001                	.insn	2, 0x0001
   132cc:	32c0                	.insn	2, 0x32c0
   132ce:	0001                	.insn	2, 0x0001
   132d0:	32c8                	.insn	2, 0x32c8
   132d2:	0001                	.insn	2, 0x0001
   132d4:	32c8                	.insn	2, 0x32c8
   132d6:	0001                	.insn	2, 0x0001
   132d8:	32d0                	.insn	2, 0x32d0
   132da:	0001                	.insn	2, 0x0001
   132dc:	32d0                	.insn	2, 0x32d0
   132de:	0001                	.insn	2, 0x0001
   132e0:	32d8                	.insn	2, 0x32d8
   132e2:	0001                	.insn	2, 0x0001
   132e4:	32d8                	.insn	2, 0x32d8
   132e6:	0001                	.insn	2, 0x0001
   132e8:	32e0                	.insn	2, 0x32e0
   132ea:	0001                	.insn	2, 0x0001
   132ec:	32e0                	.insn	2, 0x32e0
   132ee:	0001                	.insn	2, 0x0001
   132f0:	32e8                	.insn	2, 0x32e8
   132f2:	0001                	.insn	2, 0x0001
   132f4:	32e8                	.insn	2, 0x32e8
   132f6:	0001                	.insn	2, 0x0001
   132f8:	32f0                	.insn	2, 0x32f0
   132fa:	0001                	.insn	2, 0x0001
   132fc:	32f0                	.insn	2, 0x32f0
   132fe:	0001                	.insn	2, 0x0001
   13300:	32f8                	.insn	2, 0x32f8
   13302:	0001                	.insn	2, 0x0001
   13304:	32f8                	.insn	2, 0x32f8
   13306:	0001                	.insn	2, 0x0001
   13308:	3300                	.insn	2, 0x3300
   1330a:	0001                	.insn	2, 0x0001
   1330c:	3300                	.insn	2, 0x3300
   1330e:	0001                	.insn	2, 0x0001
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

Disassembly of section .sdata:

000136a8 <__dso_handle>:
   136a8:	0000                	.insn	2, 0x
	...

000136ac <_impure_ptr>:
   136ac:	3180                	.insn	2, 0x3180
   136ae:	0001                	.insn	2, 0x0001

000136b0 <__malloc_sbrk_base>:
   136b0:	ffff                	.insn	2, 0xffff
   136b2:	ffff                	.insn	2, 0xffff

000136b4 <__malloc_trim_threshold>:
   136b4:	0000                	.insn	2, 0x
   136b6:	0002                	.insn	2, 0x0002

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

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	001c                	.insn	2, 0x001c
   2:	0000                	.insn	2, 0x
   4:	0002                	.insn	2, 0x0002
   6:	0000                	.insn	2, 0x
   8:	0000                	.insn	2, 0x
   a:	0004                	.insn	2, 0x0004
   c:	0000                	.insn	2, 0x
   e:	0000                	.insn	2, 0x
  10:	0344                	.insn	2, 0x0344
  12:	0001                	.insn	2, 0x0001
  14:	0024                	.insn	2, 0x0024
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	002d                	.insn	2, 0x002d
   2:	0000                	.insn	2, 0x
   4:	0005                	.insn	2, 0x0005
   6:	0401                	.insn	2, 0x0401
   8:	0000                	.insn	2, 0x
   a:	0000                	.insn	2, 0x
   c:	0001                	.insn	2, 0x0001
   e:	0000                	.insn	2, 0x
  10:	4400                	.insn	2, 0x4400
  12:	24000103          	lb	sp,576(zero) # 240 <exit-0xfe54>
  16:	0000                	.insn	2, 0x
  18:	0000                	.insn	2, 0x
  1a:	002d                	.insn	2, 0x002d
  1c:	0000                	.insn	2, 0x
  1e:	0000008b          	.insn	4, 0x008b
  22:	8001                	.insn	2, 0x8001
  24:	9702                	.insn	2, 0x9702
  26:	0000                	.insn	2, 0x
  28:	2f00                	.insn	2, 0x2f00
  2a:	0344                	.insn	2, 0x0344
  2c:	0001                	.insn	2, 0x0001
  2e:	0324                	.insn	2, 0x0324
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	1101                	.insn	2, 0x1101
   2:	1001                	.insn	2, 0x1001
   4:	12011117          	auipc	sp,0x12011
   8:	1b0e030f          	.insn	4, 0x1b0e030f
   c:	250e                	.insn	2, 0x250e
   e:	130e                	.insn	2, 0x130e
  10:	0005                	.insn	2, 0x0005
  12:	0200                	.insn	2, 0x0200
  14:	002e                	.insn	2, 0x002e
  16:	193f0e03          	lb	t3,403(t5)
  1a:	1549                	.insn	2, 0x1549
  1c:	0111                	.insn	2, 0x0111
  1e:	0f12                	.insn	2, 0x0f12
  20:	0000                	.insn	2, 0x
  22:	00003b03          	.insn	4, 0x3b03
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0076                	.insn	2, 0x0076
   2:	0000                	.insn	2, 0x
   4:	0005                	.insn	2, 0x0005
   6:	0004                	.insn	2, 0x0004
   8:	002e                	.insn	2, 0x002e
   a:	0000                	.insn	2, 0x
   c:	0101                	.insn	2, 0x0101
   e:	fb01                	.insn	2, 0xfb01
  10:	0d0e                	.insn	2, 0x0d0e
  12:	0100                	.insn	2, 0x0100
  14:	0101                	.insn	2, 0x0101
  16:	0001                	.insn	2, 0x0001
  18:	0000                	.insn	2, 0x
  1a:	0001                	.insn	2, 0x0001
  1c:	0100                	.insn	2, 0x0100
  1e:	0101                	.insn	2, 0x0101
  20:	021f 0000 0000      	.insn	6, 0x021f
  26:	005e                	.insn	2, 0x005e
  28:	0000                	.insn	2, 0x
  2a:	0102                	.insn	2, 0x0102
  2c:	021f 020f 0082      	.insn	6, 0x0082020f021f
  32:	0000                	.insn	2, 0x
  34:	8201                	.insn	2, 0x8201
  36:	0000                	.insn	2, 0x
  38:	0100                	.insn	2, 0x0100
  3a:	0500                	.insn	2, 0x0500
  3c:	4402                	.insn	2, 0x4402
  3e:	03000103          	lb	sp,48(zero) # 30 <exit-0x10064>
  42:	0124                	.insn	2, 0x0124
  44:	04090103          	lb	sp,64(s2)
  48:	0100                	.insn	2, 0x0100
  4a:	04090203          	lb	tp,64(s2)
  4e:	0100                	.insn	2, 0x0100
  50:	04090103          	lb	sp,64(s2)
  54:	0100                	.insn	2, 0x0100
  56:	04090103          	lb	sp,64(s2)
  5a:	0100                	.insn	2, 0x0100
  5c:	04090203          	lb	tp,64(s2)
  60:	0100                	.insn	2, 0x0100
  62:	04090103          	lb	sp,64(s2)
  66:	0100                	.insn	2, 0x0100
  68:	04090103          	lb	sp,64(s2)
  6c:	0100                	.insn	2, 0x0100
  6e:	04090103          	lb	sp,64(s2)
  72:	0100                	.insn	2, 0x0100
  74:	0409                	.insn	2, 0x0409
  76:	0000                	.insn	2, 0x
  78:	0101                	.insn	2, 0x0101

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	2e2e                	.insn	2, 0x2e2e
   2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   6:	2e2e                	.insn	2, 0x2e2e
   8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   c:	2f636367          	.insn	4, 0x2f636367
  10:	696c                	.insn	2, 0x696c
  12:	6762                	.insn	2, 0x6762
  14:	632f6363          	bltu	t5,s2,63a <exit-0xfa5a>
  18:	69666e6f          	jal	t3,666ae <__BSS_END__+0x52cca>
  1c:	69722f67          	.insn	4, 0x69722f67
  20:	2f766373          	.insn	4, 0x2f766373
  24:	756d                	.insn	2, 0x756d
  26:	646c                	.insn	2, 0x646c
  28:	3369                	.insn	2, 0x3369
  2a:	532e                	.insn	2, 0x532e
  2c:	2f00                	.insn	2, 0x2f00
  2e:	6f68                	.insn	2, 0x6f68
  30:	656d                	.insn	2, 0x656d
  32:	63756c2f          	.insn	4, 0x63756c2f
  36:	432f796b          	.insn	4, 0x432f796b
  3a:	2f65646f          	jal	s0,56330 <__BSS_END__+0x4294c>
  3e:	6972                	.insn	2, 0x6972
  40:	2d766373          	.insn	4, 0x2d766373
  44:	2d756e67          	.insn	4, 0x2d756e67
  48:	6f74                	.insn	2, 0x6f74
  4a:	68636c6f          	jal	s8,366d0 <__BSS_END__+0x22cec>
  4e:	6961                	.insn	2, 0x6961
  50:	2f6e                	.insn	2, 0x2f6e
  52:	7562                	.insn	2, 0x7562
  54:	6c69                	.insn	2, 0x6c69
  56:	2f64                	.insn	2, 0x2f64
  58:	7562                	.insn	2, 0x7562
  5a:	6c69                	.insn	2, 0x6c69
  5c:	2d64                	.insn	2, 0x2d64
  5e:	2d636367          	.insn	4, 0x2d636367
  62:	656e                	.insn	2, 0x656e
  64:	62696c77          	.insn	4, 0x62696c77
  68:	732d                	.insn	2, 0x732d
  6a:	6174                	.insn	2, 0x6174
  6c:	2f326567          	.insn	4, 0x2f326567
  70:	6972                	.insn	2, 0x6972
  72:	33766373          	.insn	4, 0x33766373
  76:	2d32                	.insn	2, 0x2d32
  78:	6e75                	.insn	2, 0x6e75
  7a:	776f6e6b          	.insn	4, 0x776f6e6b
  7e:	2d6e                	.insn	2, 0x2d6e
  80:	6c65                	.insn	2, 0x6c65
  82:	2f66                	.insn	2, 0x2f66
  84:	696c                	.insn	2, 0x696c
  86:	6762                	.insn	2, 0x6762
  88:	47006363          	bltu	zero,a6,4ee <exit-0xfba6>
  8c:	554e                	.insn	2, 0x554e
  8e:	4120                	.insn	2, 0x4120
  90:	2e322053          	.insn	4, 0x2e322053
  94:	3134                	.insn	2, 0x3134
  96:	5f00                	.insn	2, 0x5f00
  98:	6d5f 6c75 6973      	.insn	6, 0x69736c756d5f
  9e:	Address 0x9e is out of bounds.


Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	6d6f682f          	.insn	4, 0x6d6f682f
   4:	2f65                	.insn	2, 0x2f65
   6:	756c                	.insn	2, 0x756c
   8:	2f796b63          	bltu	s2,s7,2fe <exit-0xfd96>
   c:	65646f43          	.insn	4, 0x65646f43
  10:	7369722f          	.insn	4, 0x7369722f
  14:	672d7663          	bgeu	s10,s2,680 <exit-0xfa14>
  18:	756e                	.insn	2, 0x756e
  1a:	742d                	.insn	2, 0x742d
  1c:	636c6f6f          	jal	t5,c6652 <__BSS_END__+0xb2c6e>
  20:	6168                	.insn	2, 0x6168
  22:	6e69                	.insn	2, 0x6e69
  24:	6975622f          	.insn	4, 0x6975622f
  28:	646c                	.insn	2, 0x646c
  2a:	6975622f          	.insn	4, 0x6975622f
  2e:	646c                	.insn	2, 0x646c
  30:	672d                	.insn	2, 0x672d
  32:	6e2d6363          	bltu	s10,sp,718 <exit-0xf97c>
  36:	7765                	.insn	2, 0x7765
  38:	696c                	.insn	2, 0x696c
  3a:	2d62                	.insn	2, 0x2d62
  3c:	67617473          	.insn	4, 0x67617473
  40:	3265                	.insn	2, 0x3265
  42:	7369722f          	.insn	4, 0x7369722f
  46:	32337663          	bgeu	t1,gp,372 <exit-0xfd22>
  4a:	752d                	.insn	2, 0x752d
  4c:	6b6e                	.insn	2, 0x6b6e
  4e:	6f6e                	.insn	2, 0x6f6e
  50:	652d6e77          	.insn	4, 0x652d6e77
  54:	666c                	.insn	2, 0x666c
  56:	62696c2f          	.insn	4, 0x62696c2f
  5a:	00636367          	.insn	4, 0x00636367
  5e:	2e2e                	.insn	2, 0x2e2e
  60:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  64:	2e2e                	.insn	2, 0x2e2e
  66:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  6a:	2f636367          	.insn	4, 0x2f636367
  6e:	696c                	.insn	2, 0x696c
  70:	6762                	.insn	2, 0x6762
  72:	632f6363          	bltu	t5,s2,698 <exit-0xf9fc>
  76:	69666e6f          	jal	t3,6670c <__BSS_END__+0x52d28>
  7a:	69722f67          	.insn	4, 0x69722f67
  7e:	00766373          	.insn	4, 0x00766373
  82:	756d                	.insn	2, 0x756d
  84:	646c                	.insn	2, 0x646c
  86:	3369                	.insn	2, 0x3369
  88:	532e                	.insn	2, 0x532e
	...
