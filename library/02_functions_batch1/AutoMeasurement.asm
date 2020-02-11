10002340:	55                   	push   ebp
10002341:	8b ec                	mov    ebp,esp
10002343:	83 e4 f8             	and    esp,0xfffffff8
10002346:	81 ec 28 04 00 00    	sub    esp,0x428
1000234c:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10002352:	53                   	push   ebx
10002353:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
10002359:	55                   	push   ebp
1000235a:	d8 d1                	fcom   st(1)
1000235c:	56                   	push   esi
1000235d:	be f4 01 00 00       	mov    esi,0x1f4
10002362:	57                   	push   edi
10002363:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
10002367:	df e0                	fnstsw ax
10002369:	dd d9                	fstp   st(1)
1000236b:	f6 c4 01             	test   ah,0x1
1000236e:	d9 e8                	fld1   
10002370:	75 0b                	jne    0x1000237d
10002372:	bb 04 00 00 00       	mov    ebx,0x4
10002377:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
1000237b:	eb 32                	jmp    0x100023af
1000237d:	d8 d1                	fcom   st(1)
1000237f:	df e0                	fnstsw ax
10002381:	d9 c1                	fld    st(1)
10002383:	f6 c4 41             	test   ah,0x41
10002386:	7a 0d                	jp     0x10002395
10002388:	e8 43 15 00 00       	call   0x100038d0
1000238d:	8b d8                	mov    ebx,eax
1000238f:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
10002393:	eb 1a                	jmp    0x100023af
10002395:	dc 0d d0 d1 00 10    	fmul   QWORD PTR ds:0x1000d1d0
1000239b:	bb 01 00 00 00       	mov    ebx,0x1
100023a0:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
100023a4:	e8 27 15 00 00       	call   0x100038d0
100023a9:	8b f0                	mov    esi,eax
100023ab:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
100023af:	d9 c9                	fxch   st(1)
100023b1:	dd 54 24 30          	fst    QWORD PTR [esp+0x30]
100023b5:	d8 d1                	fcom   st(1)
100023b7:	df e0                	fnstsw ax
100023b9:	f6 c4 05             	test   ah,0x5
100023bc:	7a 08                	jp     0x100023c6
100023be:	dd d8                	fstp   st(0)
100023c0:	dd 54 24 30          	fst    QWORD PTR [esp+0x30]
100023c4:	eb 02                	jmp    0x100023c8
100023c6:	dd d9                	fstp   st(1)
100023c8:	db 44 24 20          	fild   DWORD PTR [esp+0x20]
100023cc:	dd 05 c8 d1 00 10    	fld    QWORD PTR ds:0x1000d1c8
100023d2:	d8 c9                	fmul   st,st(1)
100023d4:	e8 f7 14 00 00       	call   0x100038d0
100023d9:	d9 ee                	fldz   
100023db:	f6 05 8c 60 01 10 81 	test   BYTE PTR ds:0x1001608c,0x81
100023e2:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
100023e6:	0f 84 fb 05 00 00    	je     0x100029e7
100023ec:	33 c0                	xor    eax,eax
100023ee:	d9 c0                	fld    st(0)
100023f0:	b9 00 01 00 00       	mov    ecx,0x100
100023f5:	8d 7c 24 38          	lea    edi,[esp+0x38]
100023f9:	32 d2                	xor    dl,dl
100023fb:	f3 ab                	rep stos DWORD PTR es:[edi],eax
100023fd:	33 c9                	xor    ecx,ecx
100023ff:	83 fe 04             	cmp    esi,0x4
10002402:	88 15 08 60 01 10    	mov    BYTE PTR ds:0x10016008,dl
10002408:	c6 05 09 60 01 10 ff 	mov    BYTE PTR ds:0x10016009,0xff
1000240f:	c6 44 24 16 ff       	mov    BYTE PTR [esp+0x16],0xff
10002414:	88 54 24 15          	mov    BYTE PTR [esp+0x15],dl
10002418:	0f 8c 05 01 00 00    	jl     0x10002523
1000241e:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
10002422:	83 c6 fc             	add    esi,0xfffffffc
10002425:	8d 84 5b 10 10 01 10 	lea    eax,[ebx+ebx*2+0x10011010]
1000242c:	c1 ee 02             	shr    esi,0x2
1000242f:	83 c6 01             	add    esi,0x1
10002432:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10002436:	8d 0c 5d 10 10 01 10 	lea    ecx,[ebx*2+0x10011010]
1000243d:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
10002444:	8d 3c 9d 00 00 00 00 	lea    edi,[ebx*4+0x0]
1000244b:	bd 10 10 01 10       	mov    ebp,0x10011010
10002450:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
10002454:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002458:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
1000245b:	3a d0                	cmp    dl,al
1000245d:	73 02                	jae    0x10002461
1000245f:	8a d0                	mov    dl,al
10002461:	38 05 09 60 01 10    	cmp    BYTE PTR ds:0x10016009,al
10002467:	76 05                	jbe    0x1000246e
10002469:	a2 09 60 01 10       	mov    ds:0x10016009,al
1000246e:	0f b6 c0             	movzx  eax,al
10002471:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
10002476:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
1000247a:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
1000247e:	8a 04 2b             	mov    al,BYTE PTR [ebx+ebp*1]
10002481:	3a d0                	cmp    dl,al
10002483:	da 44 24 2c          	fiadd  DWORD PTR [esp+0x2c]
10002487:	73 02                	jae    0x1000248b
10002489:	8a d0                	mov    dl,al
1000248b:	38 05 09 60 01 10    	cmp    BYTE PTR ds:0x10016009,al
10002491:	76 05                	jbe    0x10002498
10002493:	a2 09 60 01 10       	mov    ds:0x10016009,al
10002498:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1000249c:	0f b6 c0             	movzx  eax,al
1000249f:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
100024a4:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
100024a8:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
100024ac:	8a 01                	mov    al,BYTE PTR [ecx]
100024ae:	3a d0                	cmp    dl,al
100024b0:	da 44 24 2c          	fiadd  DWORD PTR [esp+0x2c]
100024b4:	73 02                	jae    0x100024b8
100024b6:	8a d0                	mov    dl,al
100024b8:	38 05 09 60 01 10    	cmp    BYTE PTR ds:0x10016009,al
100024be:	76 05                	jbe    0x100024c5
100024c0:	a2 09 60 01 10       	mov    ds:0x10016009,al
100024c5:	0f b6 c0             	movzx  eax,al
100024c8:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
100024cd:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
100024d1:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
100024d5:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
100024d9:	8a 00                	mov    al,BYTE PTR [eax]
100024db:	da 44 24 2c          	fiadd  DWORD PTR [esp+0x2c]
100024df:	3a d0                	cmp    dl,al
100024e1:	73 02                	jae    0x100024e5
100024e3:	8a d0                	mov    dl,al
100024e5:	38 05 09 60 01 10    	cmp    BYTE PTR ds:0x10016009,al
100024eb:	76 05                	jbe    0x100024f2
100024ed:	a2 09 60 01 10       	mov    ds:0x10016009,al
100024f2:	01 7c 24 18          	add    DWORD PTR [esp+0x18],edi
100024f6:	01 7c 24 1c          	add    DWORD PTR [esp+0x1c],edi
100024fa:	0f b6 c0             	movzx  eax,al
100024fd:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
10002502:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
10002506:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
1000250a:	03 ef                	add    ebp,edi
1000250c:	83 ee 01             	sub    esi,0x1
1000250f:	da 44 24 2c          	fiadd  DWORD PTR [esp+0x2c]
10002513:	0f 85 3f ff ff ff    	jne    0x10002458
10002519:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1000251d:	88 15 08 60 01 10    	mov    BYTE PTR ds:0x10016008,dl
10002523:	3b 4c 24 20          	cmp    ecx,DWORD PTR [esp+0x20]
10002527:	7d 4b                	jge    0x10002574
10002529:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
1000252d:	8b c1                	mov    eax,ecx
1000252f:	0f af 44 24 24       	imul   eax,DWORD PTR [esp+0x24]
10002534:	05 10 10 01 10       	add    eax,0x10011010
10002539:	2b f1                	sub    esi,ecx
1000253b:	8a 08                	mov    cl,BYTE PTR [eax]
1000253d:	3a d1                	cmp    dl,cl
1000253f:	73 02                	jae    0x10002543
10002541:	8a d1                	mov    dl,cl
10002543:	38 0d 09 60 01 10    	cmp    BYTE PTR ds:0x10016009,cl
10002549:	76 06                	jbe    0x10002551
1000254b:	88 0d 09 60 01 10    	mov    BYTE PTR ds:0x10016009,cl
10002551:	03 44 24 24          	add    eax,DWORD PTR [esp+0x24]
10002555:	0f b6 c9             	movzx  ecx,cl
10002558:	83 44 8c 38 01       	add    DWORD PTR [esp+ecx*4+0x38],0x1
1000255d:	83 ee 01             	sub    esi,0x1
10002560:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
10002564:	8d 4c 8c 38          	lea    ecx,[esp+ecx*4+0x38]
10002568:	da 44 24 10          	fiadd  DWORD PTR [esp+0x10]
1000256c:	75 cd                	jne    0x1000253b
1000256e:	88 15 08 60 01 10    	mov    BYTE PTR ds:0x10016008,dl
10002574:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
10002578:	8a 5c 24 16          	mov    bl,BYTE PTR [esp+0x16]
1000257c:	8a 4c 24 15          	mov    cl,BYTE PTR [esp+0x15]
10002580:	33 ed                	xor    ebp,ebp
10002582:	33 c0                	xor    eax,eax
10002584:	39 74 84 38          	cmp    DWORD PTR [esp+eax*4+0x38],esi
10002588:	7c 12                	jl     0x1000259c
1000258a:	0f b6 f9             	movzx  edi,cl
1000258d:	3b f8                	cmp    edi,eax
1000258f:	7d 02                	jge    0x10002593
10002591:	8a c8                	mov    cl,al
10002593:	0f b6 fb             	movzx  edi,bl
10002596:	3b f8                	cmp    edi,eax
10002598:	7e 02                	jle    0x1000259c
1000259a:	8a d8                	mov    bl,al
1000259c:	83 c0 01             	add    eax,0x1
1000259f:	3d 00 01 00 00       	cmp    eax,0x100
100025a4:	7c de                	jl     0x10002584
100025a6:	0f b6 c3             	movzx  eax,bl
100025a9:	0f b6 f1             	movzx  esi,cl
100025ac:	83 c0 14             	add    eax,0x14
100025af:	3b f0                	cmp    esi,eax
100025b1:	7f 08                	jg     0x100025bb
100025b3:	8a 1d 09 60 01 10    	mov    bl,BYTE PTR ds:0x10016009
100025b9:	8a ca                	mov    cl,dl
100025bb:	d8 f2                	fdiv   st,st(2)
100025bd:	83 cf ff             	or     edi,0xffffffff
100025c0:	33 f6                	xor    esi,esi
100025c2:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
100025c6:	d9 7c 24 16          	fnstcw WORD PTR [esp+0x16]
100025ca:	0f b7 44 24 16       	movzx  eax,WORD PTR [esp+0x16]
100025cf:	0d 00 0c 00 00       	or     eax,0xc00
100025d4:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
100025d8:	0f b6 c1             	movzx  eax,cl
100025db:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
100025df:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
100025e3:	8a 54 24 10          	mov    dl,BYTE PTR [esp+0x10]
100025e7:	88 15 0b 60 01 10    	mov    BYTE PTR ds:0x1001600b,dl
100025ed:	8a d1                	mov    dl,cl
100025ef:	d9 6c 24 16          	fldcw  WORD PTR [esp+0x16]
100025f3:	0f b6 cb             	movzx  ecx,bl
100025f6:	03 c1                	add    eax,ecx
100025f8:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
100025fc:	2a d3                	sub    dl,bl
100025fe:	0f b6 c2             	movzx  eax,dl
10002601:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002605:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002609:	d9 7c 24 16          	fnstcw WORD PTR [esp+0x16]
1000260d:	88 15 0a 60 01 10    	mov    BYTE PTR ds:0x1001600a,dl
10002613:	0f b7 44 24 16       	movzx  eax,WORD PTR [esp+0x16]
10002618:	dc 0d c0 d1 00 10    	fmul   QWORD PTR ds:0x1000d1c0
1000261e:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002622:	dd 05 b8 d1 00 10    	fld    QWORD PTR ds:0x1000d1b8
10002628:	0d 00 0c 00 00       	or     eax,0xc00
1000262d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002631:	d8 c9                	fmul   st,st(1)
10002633:	d9 c0                	fld    st(0)
10002635:	d8 c3                	fadd   st,st(3)
10002637:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
1000263b:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
1000263f:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
10002643:	88 4c 24 15          	mov    BYTE PTR [esp+0x15],cl
10002647:	32 c9                	xor    cl,cl
10002649:	d9 6c 24 16          	fldcw  WORD PTR [esp+0x16]
1000264d:	89 2d 70 60 01 10    	mov    DWORD PTR ds:0x10016070,ebp
10002653:	d9 7c 24 16          	fnstcw WORD PTR [esp+0x16]
10002657:	d8 ea                	fsubr  st,st(2)
10002659:	0f b7 44 24 16       	movzx  eax,WORD PTR [esp+0x16]
1000265e:	0d 00 0c 00 00       	or     eax,0xc00
10002663:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002667:	33 c0                	xor    eax,eax
10002669:	39 6c 24 20          	cmp    DWORD PTR [esp+0x20],ebp
1000266d:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002671:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002675:	8a 5c 24 10          	mov    bl,BYTE PTR [esp+0x10]
10002679:	d9 6c 24 16          	fldcw  WORD PTR [esp+0x16]
1000267d:	88 5c 24 16          	mov    BYTE PTR [esp+0x16],bl
10002681:	0f 8e 81 00 00 00    	jle    0x10002708
10002687:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
1000268b:	eb 04                	jmp    0x10002691
1000268d:	8a 5c 24 16          	mov    bl,BYTE PTR [esp+0x16]
10002691:	84 c9                	test   cl,cl
10002693:	75 30                	jne    0x100026c5
10002695:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
10002699:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
1000269d:	8a 44 24 15          	mov    al,BYTE PTR [esp+0x15]
100026a1:	3a 83 10 10 01 10    	cmp    al,BYTE PTR [ebx+0x10011010]
100026a7:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100026ab:	73 42                	jae    0x100026ef
100026ad:	83 3d 70 60 01 10 00 	cmp    DWORD PTR ds:0x10016070,0x0
100026b4:	b1 01                	mov    cl,0x1
100026b6:	75 37                	jne    0x100026ef
100026b8:	83 f8 ff             	cmp    eax,0xffffffff
100026bb:	74 32                	je     0x100026ef
100026bd:	89 1d 70 60 01 10    	mov    DWORD PTR ds:0x10016070,ebx
100026c3:	eb 2a                	jmp    0x100026ef
100026c5:	83 7c 24 1c ff       	cmp    DWORD PTR [esp+0x1c],0xffffffff
100026ca:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
100026ce:	75 10                	jne    0x100026e0
100026d0:	3a 9d 10 10 01 10    	cmp    bl,BYTE PTR [ebp+0x10011010]
100026d6:	76 17                	jbe    0x100026ef
100026d8:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
100026dc:	33 f6                	xor    esi,esi
100026de:	eb 0d                	jmp    0x100026ed
100026e0:	3a 9d 10 10 01 10    	cmp    bl,BYTE PTR [ebp+0x10011010]
100026e6:	76 07                	jbe    0x100026ef
100026e8:	8b f8                	mov    edi,eax
100026ea:	83 c6 01             	add    esi,0x1
100026ed:	32 c9                	xor    cl,cl
100026ef:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
100026f3:	01 5c 24 18          	add    DWORD PTR [esp+0x18],ebx
100026f7:	83 c0 01             	add    eax,0x1
100026fa:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
100026fe:	7c 8d                	jl     0x1000268d
10002700:	85 f6                	test   esi,esi
10002702:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
10002706:	75 1f                	jne    0x10002727
10002708:	d9 ca                	fxch   st(2)
1000270a:	c7 05 70 60 01 10 00 	mov    DWORD PTR ds:0x10016070,0x0
10002711:	00 00 00 
10002714:	dd 15 10 60 01 10    	fst    QWORD PTR ds:0x10016010
1000271a:	d9 c0                	fld    st(0)
1000271c:	dd 15 00 60 01 10    	fst    QWORD PTR ds:0x10016000
10002722:	e9 14 02 00 00       	jmp    0x1000293b
10002727:	83 fe 01             	cmp    esi,0x1
1000272a:	7d 18                	jge    0x10002744
1000272c:	dd 05 10 60 01 10    	fld    QWORD PTR ds:0x10016010
10002732:	c7 05 70 60 01 10 00 	mov    DWORD PTR ds:0x10016070,0x0
10002739:	00 00 00 
1000273c:	dd 05 00 60 01 10    	fld    QWORD PTR ds:0x10016000
10002742:	eb 4a                	jmp    0x1000278e
10002744:	83 fe 50             	cmp    esi,0x50
10002747:	7e 15                	jle    0x1000275e
10002749:	d9 ca                	fxch   st(2)
1000274b:	dd 15 10 60 01 10    	fst    QWORD PTR ds:0x10016010
10002751:	d9 c0                	fld    st(0)
10002753:	dd 15 00 60 01 10    	fst    QWORD PTR ds:0x10016000
10002759:	e9 dd 01 00 00       	jmp    0x1000293b
1000275e:	80 fa 05             	cmp    dl,0x5
10002761:	72 e6                	jb     0x10002749
10002763:	2b 7c 24 1c          	sub    edi,DWORD PTR [esp+0x1c]
10002767:	83 c7 01             	add    edi,0x1
1000276a:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
1000276e:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002772:	d8 cd                	fmul   st,st(5)
10002774:	da 74 24 18          	fidiv  DWORD PTR [esp+0x18]
10002778:	dc 35 78 60 01 10    	fdiv   QWORD PTR ds:0x10016078
1000277e:	dd 15 10 60 01 10    	fst    QWORD PTR ds:0x10016010
10002784:	d9 e8                	fld1   
10002786:	d8 f1                	fdiv   st,st(1)
10002788:	dd 15 00 60 01 10    	fst    QWORD PTR ds:0x10016000
1000278e:	d9 c4                	fld    st(4)
10002790:	dd e9                	fucomp st(1)
10002792:	df e0                	fnstsw ax
10002794:	f6 c4 44             	test   ah,0x44
10002797:	0f 8b 96 01 00 00    	jnp    0x10002933
1000279d:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
100027a1:	33 d2                	xor    edx,edx
100027a3:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
100027a8:	d9 c3                	fld    st(3)
100027aa:	0d 00 0c 00 00       	or     eax,0xc00
100027af:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
100027b3:	83 cf ff             	or     edi,0xffffffff
100027b6:	33 ed                	xor    ebp,ebp
100027b8:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
100027bc:	33 c0                	xor    eax,eax
100027be:	be 10 10 01 10       	mov    esi,0x10011010
100027c3:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
100027c7:	8a 5c 24 10          	mov    bl,BYTE PTR [esp+0x10]
100027cb:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
100027cf:	d9 c4                	fld    st(4)
100027d1:	8b ca                	mov    ecx,edx
100027d3:	81 e1 03 00 00 80    	and    ecx,0x80000003
100027d9:	79 05                	jns    0x100027e0
100027db:	49                   	dec    ecx
100027dc:	83 c9 fc             	or     ecx,0xfffffffc
100027df:	41                   	inc    ecx
100027e0:	75 0d                	jne    0x100027ef
100027e2:	8a 4c 24 15          	mov    cl,BYTE PTR [esp+0x15]
100027e6:	3a 0e                	cmp    cl,BYTE PTR [esi]
100027e8:	73 4b                	jae    0x10002835
100027ea:	83 c2 01             	add    edx,0x1
100027ed:	eb 46                	jmp    0x10002835
100027ef:	83 f9 01             	cmp    ecx,0x1
100027f2:	75 0a                	jne    0x100027fe
100027f4:	3a 1e                	cmp    bl,BYTE PTR [esi]
100027f6:	76 3d                	jbe    0x10002835
100027f8:	8b f8                	mov    edi,eax
100027fa:	03 d1                	add    edx,ecx
100027fc:	eb 37                	jmp    0x10002835
100027fe:	83 f9 02             	cmp    ecx,0x2
10002801:	75 0d                	jne    0x10002810
10002803:	8a 4c 24 16          	mov    cl,BYTE PTR [esp+0x16]
10002807:	3a 0e                	cmp    cl,BYTE PTR [esi]
10002809:	76 2a                	jbe    0x10002835
1000280b:	83 c2 01             	add    edx,0x1
1000280e:	eb 25                	jmp    0x10002835
10002810:	83 f9 03             	cmp    ecx,0x3
10002813:	75 20                	jne    0x10002835
10002815:	3a 1e                	cmp    bl,BYTE PTR [esi]
10002817:	73 1c                	jae    0x10002835
10002819:	8b c8                	mov    ecx,eax
1000281b:	dd df                	fstp   st(7)
1000281d:	2b cf                	sub    ecx,edi
1000281f:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
10002823:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002827:	83 c2 01             	add    edx,0x1
1000282a:	83 c5 01             	add    ebp,0x1
1000282d:	de c7                	faddp  st(7),st
1000282f:	dd 44 24 30          	fld    QWORD PTR [esp+0x30]
10002833:	d9 cf                	fxch   st(7)
10002835:	03 74 24 24          	add    esi,DWORD PTR [esp+0x24]
10002839:	83 c0 01             	add    eax,0x1
1000283c:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
10002840:	7c 8f                	jl     0x100027d1
10002842:	85 ed                	test   ebp,ebp
10002844:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
10002848:	75 20                	jne    0x1000286a
1000284a:	dd d8                	fstp   st(0)
1000284c:	dd d9                	fstp   st(1)
1000284e:	d9 cb                	fxch   st(3)
10002850:	dd 15 20 60 01 10    	fst    QWORD PTR ds:0x10016020
10002856:	dd 15 28 60 01 10    	fst    QWORD PTR ds:0x10016028
1000285c:	dd 15 30 60 01 10    	fst    QWORD PTR ds:0x10016030
10002862:	d9 c9                	fxch   st(1)
10002864:	d9 cb                	fxch   st(3)
10002866:	d9 c9                	fxch   st(1)
10002868:	eb 36                	jmp    0x100028a0
1000286a:	de cf                	fmulp  st(7),st
1000286c:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10002870:	de ff                	fdivrp st(7),st
10002872:	d9 ce                	fxch   st(6)
10002874:	dc 35 78 60 01 10    	fdiv   QWORD PTR ds:0x10016078
1000287a:	dd 15 28 60 01 10    	fst    QWORD PTR ds:0x10016028
10002880:	d8 e9                	fsubr  st,st(1)
10002882:	dd 15 20 60 01 10    	fst    QWORD PTR ds:0x10016020
10002888:	dc 0d b0 d1 00 10    	fmul   QWORD PTR ds:0x1000d1b0
1000288e:	de f1                	fdivp  st(1),st
10002890:	dd 1d 30 60 01 10    	fstp   QWORD PTR ds:0x10016030
10002896:	dd 44 24 30          	fld    QWORD PTR [esp+0x30]
1000289a:	d9 cd                	fxch   st(5)
1000289c:	d9 c9                	fxch   st(1)
1000289e:	d9 cb                	fxch   st(3)
100028a0:	d9 c0                	fld    st(0)
100028a2:	dd ea                	fucomp st(2)
100028a4:	df e0                	fnstsw ax
100028a6:	dd d9                	fstp   st(1)
100028a8:	f6 c4 44             	test   ah,0x44
100028ab:	0f 8b 1a 01 00 00    	jnp    0x100029cb
100028b1:	d9 c0                	fld    st(0)
100028b3:	33 d2                	xor    edx,edx
100028b5:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
100028b9:	83 cf ff             	or     edi,0xffffffff
100028bc:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
100028c1:	d9 cb                	fxch   st(3)
100028c3:	dc 0d a8 d1 00 10    	fmul   QWORD PTR ds:0x1000d1a8
100028c9:	0d 00 0c 00 00       	or     eax,0xc00
100028ce:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
100028d2:	33 ed                	xor    ebp,ebp
100028d4:	be 10 10 01 10       	mov    esi,0x10011010
100028d9:	d9 c0                	fld    st(0)
100028db:	d8 c3                	fadd   st,st(3)
100028dd:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
100028e1:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
100028e5:	8a 5c 24 10          	mov    bl,BYTE PTR [esp+0x10]
100028e9:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
100028ed:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
100028f1:	de ea                	fsubrp st(2),st
100028f3:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
100028f8:	d9 c9                	fxch   st(1)
100028fa:	0d 00 0c 00 00       	or     eax,0xc00
100028ff:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002903:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002907:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
1000290b:	8a 44 24 10          	mov    al,BYTE PTR [esp+0x10]
1000290f:	88 44 24 16          	mov    BYTE PTR [esp+0x16],al
10002913:	33 c0                	xor    eax,eax
10002915:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002919:	8b ca                	mov    ecx,edx
1000291b:	81 e1 03 00 00 80    	and    ecx,0x80000003
10002921:	79 05                	jns    0x10002928
10002923:	49                   	dec    ecx
10002924:	83 c9 fc             	or     ecx,0xfffffffc
10002927:	41                   	inc    ecx
10002928:	75 2a                	jne    0x10002954
1000292a:	3a 1e                	cmp    bl,BYTE PTR [esi]
1000292c:	73 69                	jae    0x10002997
1000292e:	83 c2 01             	add    edx,0x1
10002931:	eb 64                	jmp    0x10002997
10002933:	dd d9                	fstp   st(1)
10002935:	d9 c9                	fxch   st(1)
10002937:	d9 cb                	fxch   st(3)
10002939:	d9 c9                	fxch   st(1)
1000293b:	d9 c9                	fxch   st(1)
1000293d:	dd 15 30 60 01 10    	fst    QWORD PTR ds:0x10016030
10002943:	dd 15 20 60 01 10    	fst    QWORD PTR ds:0x10016020
10002949:	dd 15 28 60 01 10    	fst    QWORD PTR ds:0x10016028
1000294f:	e9 4c ff ff ff       	jmp    0x100028a0
10002954:	83 f9 01             	cmp    ecx,0x1
10002957:	75 0d                	jne    0x10002966
10002959:	8a 4c 24 16          	mov    cl,BYTE PTR [esp+0x16]
1000295d:	3a 0e                	cmp    cl,BYTE PTR [esi]
1000295f:	76 36                	jbe    0x10002997
10002961:	83 c2 01             	add    edx,0x1
10002964:	eb 31                	jmp    0x10002997
10002966:	83 f9 02             	cmp    ecx,0x2
10002969:	75 0f                	jne    0x1000297a
1000296b:	8a 4c 24 16          	mov    cl,BYTE PTR [esp+0x16]
1000296f:	3a 0e                	cmp    cl,BYTE PTR [esi]
10002971:	73 24                	jae    0x10002997
10002973:	8b f8                	mov    edi,eax
10002975:	83 c2 01             	add    edx,0x1
10002978:	eb 1d                	jmp    0x10002997
1000297a:	83 f9 03             	cmp    ecx,0x3
1000297d:	75 18                	jne    0x10002997
1000297f:	3a 1e                	cmp    bl,BYTE PTR [esi]
10002981:	73 14                	jae    0x10002997
10002983:	8b c8                	mov    ecx,eax
10002985:	2b cf                	sub    ecx,edi
10002987:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
1000298b:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
1000298f:	83 c2 01             	add    edx,0x1
10002992:	83 c5 01             	add    ebp,0x1
10002995:	de c2                	faddp  st(2),st
10002997:	03 74 24 24          	add    esi,DWORD PTR [esp+0x24]
1000299b:	83 c0 01             	add    eax,0x1
1000299e:	3d f4 01 00 00       	cmp    eax,0x1f4
100029a3:	0f 8c 70 ff ff ff    	jl     0x10002919
100029a9:	85 ed                	test   ebp,ebp
100029ab:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
100029af:	75 04                	jne    0x100029b5
100029b1:	dd d9                	fstp   st(1)
100029b3:	eb 2c                	jmp    0x100029e1
100029b5:	d9 c9                	fxch   st(1)
100029b7:	d8 cb                	fmul   st,st(3)
100029b9:	da 74 24 1c          	fidiv  DWORD PTR [esp+0x1c]
100029bd:	dc 35 78 60 01 10    	fdiv   QWORD PTR ds:0x10016078
100029c3:	dd 1d 18 60 01 10    	fstp   QWORD PTR ds:0x10016018
100029c9:	eb 1c                	jmp    0x100029e7
100029cb:	dd d9                	fstp   st(1)
100029cd:	dd d9                	fstp   st(1)
100029cf:	dd 15 30 60 01 10    	fst    QWORD PTR ds:0x10016030
100029d5:	dd 15 20 60 01 10    	fst    QWORD PTR ds:0x10016020
100029db:	dd 15 28 60 01 10    	fst    QWORD PTR ds:0x10016028
100029e1:	dd 15 18 60 01 10    	fst    QWORD PTR ds:0x10016018
100029e7:	f6 05 8c 60 01 10 10 	test   BYTE PTR ds:0x1001608c,0x10
100029ee:	0f 84 ba 05 00 00    	je     0x10002fae
100029f4:	33 c0                	xor    eax,eax
100029f6:	d9 c0                	fld    st(0)
100029f8:	b9 00 01 00 00       	mov    ecx,0x100
100029fd:	8d 7c 24 38          	lea    edi,[esp+0x38]
10002a01:	32 d2                	xor    dl,dl
10002a03:	32 db                	xor    bl,bl
10002a05:	f3 ab                	rep stos DWORD PTR es:[edi],eax
10002a07:	33 c9                	xor    ecx,ecx
10002a09:	83 7c 24 20 04       	cmp    DWORD PTR [esp+0x20],0x4
10002a0e:	88 15 40 60 01 10    	mov    BYTE PTR ds:0x10016040,dl
10002a14:	c6 05 41 60 01 10 ff 	mov    BYTE PTR ds:0x10016041,0xff
10002a1b:	c6 44 24 15 ff       	mov    BYTE PTR [esp+0x15],0xff
10002a20:	88 5c 24 16          	mov    BYTE PTR [esp+0x16],bl
10002a24:	0f 8c 0d 01 00 00    	jl     0x10002b37
10002a2a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
10002a2e:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
10002a32:	8d 84 49 10 32 01 10 	lea    eax,[ecx+ecx*2+0x10013210]
10002a39:	83 c6 fc             	add    esi,0xfffffffc
10002a3c:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
10002a40:	8d 04 4d 10 32 01 10 	lea    eax,[ecx*2+0x10013210]
10002a47:	c1 ee 02             	shr    esi,0x2
10002a4a:	83 c6 01             	add    esi,0x1
10002a4d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10002a51:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
10002a58:	8d 3c 8d 00 00 00 00 	lea    edi,[ecx*4+0x0]
10002a5f:	bd 10 32 01 10       	mov    ebp,0x10013210
10002a64:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
10002a68:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
10002a6b:	3a d0                	cmp    dl,al
10002a6d:	73 02                	jae    0x10002a71
10002a6f:	8a d0                	mov    dl,al
10002a71:	38 05 41 60 01 10    	cmp    BYTE PTR ds:0x10016041,al
10002a77:	76 05                	jbe    0x10002a7e
10002a79:	a2 41 60 01 10       	mov    ds:0x10016041,al
10002a7e:	0f b6 c0             	movzx  eax,al
10002a81:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
10002a86:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002a8a:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
10002a8e:	8a 04 29             	mov    al,BYTE PTR [ecx+ebp*1]
10002a91:	3a d0                	cmp    dl,al
10002a93:	da 44 24 10          	fiadd  DWORD PTR [esp+0x10]
10002a97:	73 02                	jae    0x10002a9b
10002a99:	8a d0                	mov    dl,al
10002a9b:	38 05 41 60 01 10    	cmp    BYTE PTR ds:0x10016041,al
10002aa1:	76 05                	jbe    0x10002aa8
10002aa3:	a2 41 60 01 10       	mov    ds:0x10016041,al
10002aa8:	0f b6 c0             	movzx  eax,al
10002aab:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
10002ab0:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002ab4:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
10002ab8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10002abc:	8a 00                	mov    al,BYTE PTR [eax]
10002abe:	da 44 24 10          	fiadd  DWORD PTR [esp+0x10]
10002ac2:	3a d0                	cmp    dl,al
10002ac4:	73 02                	jae    0x10002ac8
10002ac6:	8a d0                	mov    dl,al
10002ac8:	38 05 41 60 01 10    	cmp    BYTE PTR ds:0x10016041,al
10002ace:	76 05                	jbe    0x10002ad5
10002ad0:	a2 41 60 01 10       	mov    ds:0x10016041,al
10002ad5:	0f b6 c0             	movzx  eax,al
10002ad8:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
10002add:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002ae1:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
10002ae5:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10002ae9:	8a 00                	mov    al,BYTE PTR [eax]
10002aeb:	da 44 24 10          	fiadd  DWORD PTR [esp+0x10]
10002aef:	3a d0                	cmp    dl,al
10002af1:	73 02                	jae    0x10002af5
10002af3:	8a d0                	mov    dl,al
10002af5:	38 05 41 60 01 10    	cmp    BYTE PTR ds:0x10016041,al
10002afb:	76 05                	jbe    0x10002b02
10002afd:	a2 41 60 01 10       	mov    ds:0x10016041,al
10002b02:	01 7c 24 1c          	add    DWORD PTR [esp+0x1c],edi
10002b06:	01 7c 24 18          	add    DWORD PTR [esp+0x18],edi
10002b0a:	0f b6 c0             	movzx  eax,al
10002b0d:	83 44 84 38 01       	add    DWORD PTR [esp+eax*4+0x38],0x1
10002b12:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002b16:	8d 44 84 38          	lea    eax,[esp+eax*4+0x38]
10002b1a:	03 ef                	add    ebp,edi
10002b1c:	83 ee 01             	sub    esi,0x1
10002b1f:	da 44 24 10          	fiadd  DWORD PTR [esp+0x10]
10002b23:	0f 85 3f ff ff ff    	jne    0x10002a68
10002b29:	8a 5c 24 16          	mov    bl,BYTE PTR [esp+0x16]
10002b2d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
10002b31:	88 15 40 60 01 10    	mov    BYTE PTR ds:0x10016040,dl
10002b37:	3b 4c 24 20          	cmp    ecx,DWORD PTR [esp+0x20]
10002b3b:	7d 4f                	jge    0x10002b8c
10002b3d:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
10002b41:	8b c1                	mov    eax,ecx
10002b43:	0f af 44 24 24       	imul   eax,DWORD PTR [esp+0x24]
10002b48:	05 10 32 01 10       	add    eax,0x10013210
10002b4d:	2b f1                	sub    esi,ecx
10002b4f:	8a 08                	mov    cl,BYTE PTR [eax]
10002b51:	3a d1                	cmp    dl,cl
10002b53:	73 02                	jae    0x10002b57
10002b55:	8a d1                	mov    dl,cl
10002b57:	38 0d 41 60 01 10    	cmp    BYTE PTR ds:0x10016041,cl
10002b5d:	76 06                	jbe    0x10002b65
10002b5f:	88 0d 41 60 01 10    	mov    BYTE PTR ds:0x10016041,cl
10002b65:	03 44 24 24          	add    eax,DWORD PTR [esp+0x24]
10002b69:	0f b6 c9             	movzx  ecx,cl
10002b6c:	83 44 8c 38 01       	add    DWORD PTR [esp+ecx*4+0x38],0x1
10002b71:	83 ee 01             	sub    esi,0x1
10002b74:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
10002b78:	8d 4c 8c 38          	lea    ecx,[esp+ecx*4+0x38]
10002b7c:	da 44 24 10          	fiadd  DWORD PTR [esp+0x10]
10002b80:	75 cd                	jne    0x10002b4f
10002b82:	8a 5c 24 16          	mov    bl,BYTE PTR [esp+0x16]
10002b86:	88 15 40 60 01 10    	mov    BYTE PTR ds:0x10016040,dl
10002b8c:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
10002b90:	33 c0                	xor    eax,eax
10002b92:	39 74 84 38          	cmp    DWORD PTR [esp+eax*4+0x38],esi
10002b96:	7c 16                	jl     0x10002bae
10002b98:	0f b6 cb             	movzx  ecx,bl
10002b9b:	3b c8                	cmp    ecx,eax
10002b9d:	7d 02                	jge    0x10002ba1
10002b9f:	8a d8                	mov    bl,al
10002ba1:	0f b6 4c 24 15       	movzx  ecx,BYTE PTR [esp+0x15]
10002ba6:	3b c8                	cmp    ecx,eax
10002ba8:	7e 04                	jle    0x10002bae
10002baa:	88 44 24 15          	mov    BYTE PTR [esp+0x15],al
10002bae:	83 c0 01             	add    eax,0x1
10002bb1:	3d 00 01 00 00       	cmp    eax,0x100
10002bb6:	7c da                	jl     0x10002b92
10002bb8:	8a 4c 24 15          	mov    cl,BYTE PTR [esp+0x15]
10002bbc:	0f b6 c1             	movzx  eax,cl
10002bbf:	0f b6 f3             	movzx  esi,bl
10002bc2:	83 c0 14             	add    eax,0x14
10002bc5:	3b f0                	cmp    esi,eax
10002bc7:	7f 09                	jg     0x10002bd2
10002bc9:	0f b6 0d 41 60 01 10 	movzx  ecx,BYTE PTR ds:0x10016041
10002bd0:	8a da                	mov    bl,dl
10002bd2:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
10002bd6:	83 cf ff             	or     edi,0xffffffff
10002bd9:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
10002bde:	de f2                	fdivp  st(2),st
10002be0:	0d 00 0c 00 00       	or     eax,0xc00
10002be5:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002be9:	0f b6 c3             	movzx  eax,bl
10002bec:	33 f6                	xor    esi,esi
10002bee:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
10002bf2:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002bf6:	d9 c9                	fxch   st(1)
10002bf8:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002bfc:	8a 54 24 10          	mov    dl,BYTE PTR [esp+0x10]
10002c00:	88 15 43 60 01 10    	mov    BYTE PTR ds:0x10016043,dl
10002c06:	8a d3                	mov    dl,bl
10002c08:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002c0c:	2a d1                	sub    dl,cl
10002c0e:	0f b6 c9             	movzx  ecx,cl
10002c11:	03 c1                	add    eax,ecx
10002c13:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002c17:	0f b6 c2             	movzx  eax,dl
10002c1a:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002c1e:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002c22:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
10002c26:	88 15 42 60 01 10    	mov    BYTE PTR ds:0x10016042,dl
10002c2c:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
10002c31:	dc 0d c0 d1 00 10    	fmul   QWORD PTR ds:0x1000d1c0
10002c37:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002c3b:	dd 05 b8 d1 00 10    	fld    QWORD PTR ds:0x1000d1b8
10002c41:	0d 00 0c 00 00       	or     eax,0xc00
10002c46:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002c4a:	d8 c9                	fmul   st,st(1)
10002c4c:	d9 c0                	fld    st(0)
10002c4e:	d8 c3                	fadd   st,st(3)
10002c50:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002c54:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002c58:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
10002c5c:	88 4c 24 16          	mov    BYTE PTR [esp+0x16],cl
10002c60:	32 c9                	xor    cl,cl
10002c62:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002c66:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
10002c6a:	d8 ea                	fsubr  st,st(2)
10002c6c:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
10002c71:	0d 00 0c 00 00       	or     eax,0xc00
10002c76:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002c7a:	33 c0                	xor    eax,eax
10002c7c:	39 44 24 20          	cmp    DWORD PTR [esp+0x20],eax
10002c80:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002c84:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002c88:	8a 5c 24 10          	mov    bl,BYTE PTR [esp+0x10]
10002c8c:	88 5c 24 15          	mov    BYTE PTR [esp+0x15],bl
10002c90:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002c94:	7e 6c                	jle    0x10002d02
10002c96:	c7 44 24 18 10 32 01 	mov    DWORD PTR [esp+0x18],0x10013210
10002c9d:	10 
10002c9e:	eb 04                	jmp    0x10002ca4
10002ca0:	8a 5c 24 15          	mov    bl,BYTE PTR [esp+0x15]
10002ca4:	84 c9                	test   cl,cl
10002ca6:	75 18                	jne    0x10002cc0
10002ca8:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
10002cac:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002cb0:	8a 44 24 16          	mov    al,BYTE PTR [esp+0x16]
10002cb4:	3a 03                	cmp    al,BYTE PTR [ebx]
10002cb6:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10002cba:	73 28                	jae    0x10002ce4
10002cbc:	b1 01                	mov    cl,0x1
10002cbe:	eb 24                	jmp    0x10002ce4
10002cc0:	83 7c 24 1c ff       	cmp    DWORD PTR [esp+0x1c],0xffffffff
10002cc5:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
10002cc9:	75 0d                	jne    0x10002cd8
10002ccb:	3a 5d 00             	cmp    bl,BYTE PTR [ebp+0x0]
10002cce:	76 14                	jbe    0x10002ce4
10002cd0:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10002cd4:	33 f6                	xor    esi,esi
10002cd6:	eb 0a                	jmp    0x10002ce2
10002cd8:	3a 5d 00             	cmp    bl,BYTE PTR [ebp+0x0]
10002cdb:	76 07                	jbe    0x10002ce4
10002cdd:	8b f8                	mov    edi,eax
10002cdf:	83 c6 01             	add    esi,0x1
10002ce2:	32 c9                	xor    cl,cl
10002ce4:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
10002ce8:	01 5c 24 18          	add    DWORD PTR [esp+0x18],ebx
10002cec:	83 c0 01             	add    eax,0x1
10002cef:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
10002cf3:	7c ab                	jl     0x10002ca0
10002cf5:	85 f6                	test   esi,esi
10002cf7:	89 74 24 28          	mov    DWORD PTR [esp+0x28],esi
10002cfb:	74 05                	je     0x10002d02
10002cfd:	83 fe 50             	cmp    esi,0x50
10002d00:	7e 15                	jle    0x10002d17
10002d02:	d9 ca                	fxch   st(2)
10002d04:	dd 15 48 60 01 10    	fst    QWORD PTR ds:0x10016048
10002d0a:	d9 c0                	fld    st(0)
10002d0c:	dd 15 38 60 01 10    	fst    QWORD PTR ds:0x10016038
10002d12:	e9 cd 01 00 00       	jmp    0x10002ee4
10002d17:	80 fa 05             	cmp    dl,0x5
10002d1a:	72 e6                	jb     0x10002d02
10002d1c:	2b 7c 24 1c          	sub    edi,DWORD PTR [esp+0x1c]
10002d20:	83 c7 01             	add    edi,0x1
10002d23:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
10002d27:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002d2b:	d8 cc                	fmul   st,st(4)
10002d2d:	da 74 24 28          	fidiv  DWORD PTR [esp+0x28]
10002d31:	dc 35 78 60 01 10    	fdiv   QWORD PTR ds:0x10016078
10002d37:	dd 15 48 60 01 10    	fst    QWORD PTR ds:0x10016048
10002d3d:	d9 e8                	fld1   
10002d3f:	d8 f1                	fdiv   st,st(1)
10002d41:	dd 15 38 60 01 10    	fst    QWORD PTR ds:0x10016038
10002d47:	d9 c4                	fld    st(4)
10002d49:	dd e9                	fucomp st(1)
10002d4b:	df e0                	fnstsw ax
10002d4d:	f6 c4 44             	test   ah,0x44
10002d50:	0f 8b 86 01 00 00    	jnp    0x10002edc
10002d56:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
10002d5a:	33 d2                	xor    edx,edx
10002d5c:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
10002d61:	d9 c3                	fld    st(3)
10002d63:	0d 00 0c 00 00       	or     eax,0xc00
10002d68:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002d6c:	83 cf ff             	or     edi,0xffffffff
10002d6f:	33 ed                	xor    ebp,ebp
10002d71:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002d75:	33 c0                	xor    eax,eax
10002d77:	be 10 32 01 10       	mov    esi,0x10013210
10002d7c:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002d80:	8a 5c 24 10          	mov    bl,BYTE PTR [esp+0x10]
10002d84:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002d88:	d9 c4                	fld    st(4)
10002d8a:	8b ca                	mov    ecx,edx
10002d8c:	81 e1 03 00 00 80    	and    ecx,0x80000003
10002d92:	79 05                	jns    0x10002d99
10002d94:	49                   	dec    ecx
10002d95:	83 c9 fc             	or     ecx,0xfffffffc
10002d98:	41                   	inc    ecx
10002d99:	75 0d                	jne    0x10002da8
10002d9b:	8a 4c 24 16          	mov    cl,BYTE PTR [esp+0x16]
10002d9f:	3a 0e                	cmp    cl,BYTE PTR [esi]
10002da1:	73 43                	jae    0x10002de6
10002da3:	83 c2 01             	add    edx,0x1
10002da6:	eb 3e                	jmp    0x10002de6
10002da8:	83 f9 01             	cmp    ecx,0x1
10002dab:	75 0a                	jne    0x10002db7
10002dad:	3a 1e                	cmp    bl,BYTE PTR [esi]
10002daf:	76 35                	jbe    0x10002de6
10002db1:	8b f8                	mov    edi,eax
10002db3:	03 d1                	add    edx,ecx
10002db5:	eb 2f                	jmp    0x10002de6
10002db7:	83 f9 02             	cmp    ecx,0x2
10002dba:	75 0d                	jne    0x10002dc9
10002dbc:	8a 4c 24 15          	mov    cl,BYTE PTR [esp+0x15]
10002dc0:	3a 0e                	cmp    cl,BYTE PTR [esi]
10002dc2:	76 22                	jbe    0x10002de6
10002dc4:	83 c2 01             	add    edx,0x1
10002dc7:	eb 1d                	jmp    0x10002de6
10002dc9:	83 f9 03             	cmp    ecx,0x3
10002dcc:	75 18                	jne    0x10002de6
10002dce:	3a 1e                	cmp    bl,BYTE PTR [esi]
10002dd0:	73 14                	jae    0x10002de6
10002dd2:	8b c8                	mov    ecx,eax
10002dd4:	2b cf                	sub    ecx,edi
10002dd6:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
10002dda:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002dde:	83 c2 01             	add    edx,0x1
10002de1:	83 c5 01             	add    ebp,0x1
10002de4:	de c1                	faddp  st(1),st
10002de6:	03 74 24 24          	add    esi,DWORD PTR [esp+0x24]
10002dea:	83 c0 01             	add    eax,0x1
10002ded:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
10002df1:	7c 97                	jl     0x10002d8a
10002df3:	85 ed                	test   ebp,ebp
10002df5:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
10002df9:	75 20                	jne    0x10002e1b
10002dfb:	dd d8                	fstp   st(0)
10002dfd:	dd d9                	fstp   st(1)
10002dff:	d9 cb                	fxch   st(3)
10002e01:	dd 15 58 60 01 10    	fst    QWORD PTR ds:0x10016058
10002e07:	dd 15 60 60 01 10    	fst    QWORD PTR ds:0x10016060
10002e0d:	dd 15 68 60 01 10    	fst    QWORD PTR ds:0x10016068
10002e13:	d9 c9                	fxch   st(1)
10002e15:	d9 cb                	fxch   st(3)
10002e17:	d9 c9                	fxch   st(1)
10002e19:	eb 2e                	jmp    0x10002e49
10002e1b:	d8 ce                	fmul   st,st(6)
10002e1d:	da 74 24 28          	fidiv  DWORD PTR [esp+0x28]
10002e21:	dc 35 78 60 01 10    	fdiv   QWORD PTR ds:0x10016078
10002e27:	dd 15 60 60 01 10    	fst    QWORD PTR ds:0x10016060
10002e2d:	d8 ea                	fsubr  st,st(2)
10002e2f:	dd 15 58 60 01 10    	fst    QWORD PTR ds:0x10016058
10002e35:	dc 0d b0 d1 00 10    	fmul   QWORD PTR ds:0x1000d1b0
10002e3b:	de f2                	fdivp  st(2),st
10002e3d:	d9 c9                	fxch   st(1)
10002e3f:	dd 1d 68 60 01 10    	fstp   QWORD PTR ds:0x10016068
10002e45:	d9 c9                	fxch   st(1)
10002e47:	d9 cb                	fxch   st(3)
10002e49:	d9 c0                	fld    st(0)
10002e4b:	dd ea                	fucomp st(2)
10002e4d:	df e0                	fnstsw ax
10002e4f:	dd d9                	fstp   st(1)
10002e51:	f6 c4 44             	test   ah,0x44
10002e54:	0f 8b 2e 01 00 00    	jnp    0x10002f88
10002e5a:	d9 c0                	fld    st(0)
10002e5c:	33 d2                	xor    edx,edx
10002e5e:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
10002e62:	83 cf ff             	or     edi,0xffffffff
10002e65:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
10002e6a:	d9 cb                	fxch   st(3)
10002e6c:	dc 0d a8 d1 00 10    	fmul   QWORD PTR ds:0x1000d1a8
10002e72:	0d 00 0c 00 00       	or     eax,0xc00
10002e77:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002e7b:	33 ed                	xor    ebp,ebp
10002e7d:	be 10 32 01 10       	mov    esi,0x10013210
10002e82:	d9 c0                	fld    st(0)
10002e84:	d8 c3                	fadd   st,st(3)
10002e86:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002e8a:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002e8e:	8a 5c 24 10          	mov    bl,BYTE PTR [esp+0x10]
10002e92:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002e96:	d9 7c 24 18          	fnstcw WORD PTR [esp+0x18]
10002e9a:	de ea                	fsubrp st(2),st
10002e9c:	0f b7 44 24 18       	movzx  eax,WORD PTR [esp+0x18]
10002ea1:	d9 c9                	fxch   st(1)
10002ea3:	0d 00 0c 00 00       	or     eax,0xc00
10002ea8:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10002eac:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10002eb0:	db 5c 24 10          	fistp  DWORD PTR [esp+0x10]
10002eb4:	8a 44 24 10          	mov    al,BYTE PTR [esp+0x10]
10002eb8:	88 44 24 16          	mov    BYTE PTR [esp+0x16],al
10002ebc:	33 c0                	xor    eax,eax
10002ebe:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
10002ec2:	8b ca                	mov    ecx,edx
10002ec4:	81 e1 03 00 00 80    	and    ecx,0x80000003
10002eca:	79 05                	jns    0x10002ed1
10002ecc:	49                   	dec    ecx
10002ecd:	83 c9 fc             	or     ecx,0xfffffffc
10002ed0:	41                   	inc    ecx
10002ed1:	75 2a                	jne    0x10002efd
10002ed3:	3a 1e                	cmp    bl,BYTE PTR [esi]
10002ed5:	73 69                	jae    0x10002f40
10002ed7:	83 c2 01             	add    edx,0x1
10002eda:	eb 64                	jmp    0x10002f40
10002edc:	dd d9                	fstp   st(1)
10002ede:	d9 c9                	fxch   st(1)
10002ee0:	d9 cb                	fxch   st(3)
10002ee2:	d9 c9                	fxch   st(1)
10002ee4:	d9 c9                	fxch   st(1)
10002ee6:	dd 15 68 60 01 10    	fst    QWORD PTR ds:0x10016068
10002eec:	dd 15 58 60 01 10    	fst    QWORD PTR ds:0x10016058
10002ef2:	dd 15 60 60 01 10    	fst    QWORD PTR ds:0x10016060
10002ef8:	e9 4c ff ff ff       	jmp    0x10002e49
10002efd:	83 f9 01             	cmp    ecx,0x1
10002f00:	75 0d                	jne    0x10002f0f
10002f02:	8a 4c 24 16          	mov    cl,BYTE PTR [esp+0x16]
10002f06:	3a 0e                	cmp    cl,BYTE PTR [esi]
10002f08:	76 36                	jbe    0x10002f40
10002f0a:	83 c2 01             	add    edx,0x1
10002f0d:	eb 31                	jmp    0x10002f40
10002f0f:	83 f9 02             	cmp    ecx,0x2
10002f12:	75 0f                	jne    0x10002f23
10002f14:	8a 4c 24 16          	mov    cl,BYTE PTR [esp+0x16]
10002f18:	3a 0e                	cmp    cl,BYTE PTR [esi]
10002f1a:	73 24                	jae    0x10002f40
10002f1c:	8b f8                	mov    edi,eax
10002f1e:	83 c2 01             	add    edx,0x1
10002f21:	eb 1d                	jmp    0x10002f40
10002f23:	83 f9 03             	cmp    ecx,0x3
10002f26:	75 18                	jne    0x10002f40
10002f28:	3a 1e                	cmp    bl,BYTE PTR [esi]
10002f2a:	73 14                	jae    0x10002f40
10002f2c:	8b c8                	mov    ecx,eax
10002f2e:	2b cf                	sub    ecx,edi
10002f30:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
10002f34:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10002f38:	83 c2 01             	add    edx,0x1
10002f3b:	83 c5 01             	add    ebp,0x1
10002f3e:	de c2                	faddp  st(2),st
10002f40:	03 74 24 24          	add    esi,DWORD PTR [esp+0x24]
10002f44:	83 c0 01             	add    eax,0x1
10002f47:	3d f4 01 00 00       	cmp    eax,0x1f4
10002f4c:	0f 8c 70 ff ff ff    	jl     0x10002ec2
10002f52:	85 ed                	test   ebp,ebp
10002f54:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
10002f58:	75 12                	jne    0x10002f6c
10002f5a:	dd d9                	fstp   st(1)
10002f5c:	dd d9                	fstp   st(1)
10002f5e:	dd 1d 50 60 01 10    	fstp   QWORD PTR ds:0x10016050
10002f64:	5f                   	pop    edi
10002f65:	5e                   	pop    esi
10002f66:	5d                   	pop    ebp
10002f67:	5b                   	pop    ebx
10002f68:	8b e5                	mov    esp,ebp
10002f6a:	5d                   	pop    ebp
10002f6b:	c3                   	ret    
10002f6c:	dd d8                	fstp   st(0)
10002f6e:	de c9                	fmulp  st(1),st
10002f70:	da 74 24 28          	fidiv  DWORD PTR [esp+0x28]
10002f74:	dc 35 78 60 01 10    	fdiv   QWORD PTR ds:0x10016078
10002f7a:	dd 1d 50 60 01 10    	fstp   QWORD PTR ds:0x10016050
10002f80:	5f                   	pop    edi
10002f81:	5e                   	pop    esi
10002f82:	5d                   	pop    ebp
10002f83:	5b                   	pop    ebx
10002f84:	8b e5                	mov    esp,ebp
10002f86:	5d                   	pop    ebp
10002f87:	c3                   	ret    
10002f88:	dd d9                	fstp   st(1)
10002f8a:	dd d9                	fstp   st(1)
10002f8c:	dd d9                	fstp   st(1)
10002f8e:	dd 15 68 60 01 10    	fst    QWORD PTR ds:0x10016068
10002f94:	dd 15 58 60 01 10    	fst    QWORD PTR ds:0x10016058
10002f9a:	dd 15 60 60 01 10    	fst    QWORD PTR ds:0x10016060
10002fa0:	dd 1d 50 60 01 10    	fstp   QWORD PTR ds:0x10016050
10002fa6:	5f                   	pop    edi
10002fa7:	5e                   	pop    esi
10002fa8:	5d                   	pop    ebp
10002fa9:	5b                   	pop    ebx
10002faa:	8b e5                	mov    esp,ebp
10002fac:	5d                   	pop    ebp
10002fad:	c3                   	ret    
10002fae:	dd d8                	fstp   st(0)
10002fb0:	5f                   	pop    edi
10002fb1:	dd d8                	fstp   st(0)
10002fb3:	5e                   	pop    esi
10002fb4:	dd d8                	fstp   st(0)
10002fb6:	5d                   	pop    ebp
10002fb7:	5b                   	pop    ebx
10002fb8:	8b e5                	mov    esp,ebp
10002fba:	5d                   	pop    ebp
10002fbb:	c3                   	ret    
10002fbc:	cc                   	int3   
10002fbd:	cc                   	int3   
10002fbe:	cc                   	int3   
10002fbf:	cc                   	int3   
