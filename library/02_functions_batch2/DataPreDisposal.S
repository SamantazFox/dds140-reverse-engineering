; DataPreDisposal
;
; int
; DataPreDisposal(
;     uint type,
;     int  start,
;     uint count
; );
;

_entry_100012d0:
	sub    esp,0x14                         ; Allocate 20 bytes of local variables
	push   esi                              ; save esi

	mov    esi,0x1                          ; esi = 1
	cmp    DWORD PTR [esp+0x1c],esi         ; if type != esi
	jne    _100012e8                        ; jump

; type == 1 | count < 1
_100012df:
	xor    eax,eax                          ; eax = 0
	pop    esi                              ; Restore esi
	add    esp,0x14                         ; Deallocate local variables
	ret    0xc                              ; return (eax)

; type != 1
_100012e8:
	cmp    DWORD PTR [esp+0x24],esi   ; if count < 1
	jb     _100012df ; jump


100012ee:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
100012f4:	dd 05 88 d1 00 10    	fld    QWORD PTR ds:0x1000d188
100012fa:	d8 c9                	fmul   st,st(1)
100012fc:	d9 c0                	fld    st(0)
100012fe:	e8 cd 25 00 00       	call   <unknown_100038d0()> ; 0x100038d0

10001303:	8b c8                	mov    ecx,eax
10001305:	25 01 00 00 80       	and    eax,0x80000001
1000130a:	79 05                	jns    _10001311

1000130c:	48                   	dec    eax
1000130d:	83 c8 fe             	or     eax,0xfffffffe
10001310:	40                   	inc    eax

_10001311:	74 02                	je     _10001315

10001313:	03 ce                	add    ecx,esi

_10001315:	a1 84 60 01 10       	mov    eax,ds:0x10016084
1000131a:	99                   	cdq    
1000131b:	2b c2                	sub    eax,edx
1000131d:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
10001321:	57                   	push   edi
10001322:	8b f9                	mov    edi,ecx
10001324:	d1 f8                	sar    eax,1
10001326:	2b fa                	sub    edi,edx
10001328:	3b c7                	cmp    eax,edi
1000132a:	7c 07                	jl     _10001333

1000132c:	8d 3c 11             	lea    edi,[ecx+edx*1]
1000132f:	3b f8                	cmp    edi,eax
10001331:	7e 0e                	jle    _10001341

_10001333:
	fstp   st(1)
	pop    edi
	fstp   st(0)
	xor    eax,eax
	pop    esi
	add    esp,0x14
	ret    0xc

_10001341:	dd 05 a0 d1 00 10    	fld    QWORD PTR ds:0x1000d1a0
10001347:	2b c1                	sub    eax,ecx
10001349:	03 05 74 60 01 10    	add    eax,DWORD PTR ds:0x10016074
1000134f:	d9 e8                	fld1   
10001351:	dd 05 98 d1 00 10    	fld    QWORD PTR ds:0x1000d198
10001357:	53                   	push   ebx
10001358:	03 05 88 60 01 10    	add    eax,DWORD PTR ds:0x10016088
1000135e:	d9 ee                	fldz   
10001360:	8a 1d 8c 60 01 10    	mov    bl,BYTE PTR ds:0x1001608c
10001366:	03 c2                	add    eax,edx
10001368:	8a d3                	mov    dl,bl
1000136a:	80 e2 11             	and    dl,0x11
1000136d:	80 fa 11             	cmp    dl,0x11
10001370:	55                   	push   ebp
10001371:	8b c8                	mov    ecx,eax
10001373:	0f 85 f7 03 00 00    	jne    _10001770

10001379:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
1000137f:	d8 de                	fcomp  st(6)
10001381:	df e0                	fnstsw ax
10001383:	f6 c4 05             	test   ah,0x5
10001386:	0f 8a 38 03 00 00    	jp     _100016c4

1000138c:	33 ed                	xor    ebp,ebp
1000138e:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
10001392:	eb 02                	jmp    _10001396

_10001394:	d9 cb                	fxch   st(3)

_10001396:	8b c5                	mov    eax,ebp
10001398:	85 c0                	test   eax,eax
1000139a:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
1000139e:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100013a2:	7d 06                	jge    _100013aa

100013a4:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100013aa:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
100013ae:	32 db                	xor    bl,bl
100013b0:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
100013b5:	d8 ce                	fmul   st,st(6)
100013b7:	0d 00 0c 00 00       	or     eax,0xc00
100013bc:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100013c0:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
100013c4:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
100013c8:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
100013cc:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
100013d0:	8d 77 01             	lea    esi,[edi+0x1]
100013d3:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
100013d7:	c6 44 24 28 ff       	mov    BYTE PTR [esp+0x28],0xff
100013dc:	d9 cb                	fxch   st(3)
100013de:	d8 dd                	fcomp  st(5)
100013e0:	df e0                	fnstsw ax
100013e2:	f6 c4 05             	test   ah,0x5
100013e5:	0f 8a ac 00 00 00    	jp     _10001497

100013eb:	8b d7                	mov    edx,edi
100013ed:	85 d2                	test   edx,edx
100013ef:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
100013f3:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100013f7:	7d 06                	jge    _100013ff

100013f9:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100013ff:	d8 c5                	fadd   st,st(5)
10001401:	8b c6                	mov    eax,esi
10001403:	85 c0                	test   eax,eax
10001405:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001409:	d8 e2                	fsub   st,st(2)
1000140b:	d9 c0                	fld    st(0)
1000140d:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001411:	7d 06                	jge    _10001419

10001413:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001419:	d8 d9                	fcomp  st(1)
1000141b:	df e0                	fnstsw ax
1000141d:	f6 c4 05             	test   ah,0x5
10001420:	0f 8a db 00 00 00    	jp     _10001501

_10001426:	0f b6 14 71          	movzx  edx,BYTE PTR [ecx+esi*2]
1000142a:	0f b6 44 71 fe       	movzx  eax,BYTE PTR [ecx+esi*2-0x2]
1000142f:	2b d0                	sub    edx,eax
10001431:	83 fa 05             	cmp    edx,0x5
10001434:	7e 10                	jle    _10001446

10001436:	0f b6 14 71          	movzx  edx,BYTE PTR [ecx+esi*2]
1000143a:	0f b6 44 71 02       	movzx  eax,BYTE PTR [ecx+esi*2+0x2]
1000143f:	2b d0                	sub    edx,eax
10001441:	83 fa 05             	cmp    edx,0x5
10001444:	7f 2b                	jg     _10001471

_10001446:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
10001449:	0f b6 7c 71 fe       	movzx  edi,BYTE PTR [ecx+esi*2-0x2]
1000144e:	0f b6 d0             	movzx  edx,al
10001451:	83 c2 05             	add    edx,0x5
10001454:	3b fa                	cmp    edi,edx
10001456:	7e 09                	jle    _10001461

10001458:	0f b6 7c 71 02       	movzx  edi,BYTE PTR [ecx+esi*2+0x2]
1000145d:	3b fa                	cmp    edi,edx
1000145f:	7f 10                	jg     _10001471

_10001461:	3a c3                	cmp    al,bl
10001463:	76 02                	jbe    _10001467
10001465:	8a d8                	mov    bl,al

_10001467:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
1000146b:	73 04                	jae    _10001471
1000146d:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_10001471:	83 c6 01             	add    esi,0x1
10001474:	8b d6                	mov    edx,esi
10001476:	85 d2                	test   edx,edx
10001478:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
1000147c:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001480:	7d 06                	jge    _10001488

10001482:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001488:	d8 d9                	fcomp  st(1)
1000148a:	df e0                	fnstsw ax
1000148c:	f6 c4 05             	test   ah,0x5
1000148f:	7b 95                	jnp    _10001426
10001491:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
10001495:	eb 6a                	jmp    _10001501

_10001497:	8b c7                	mov    eax,edi
10001499:	85 c0                	test   eax,eax
1000149b:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000149f:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100014a3:	7d 06                	jge    _100014ab

100014a5:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100014ab:	d8 c5                	fadd   st,st(5)
100014ad:	8b d6                	mov    edx,esi
100014af:	85 d2                	test   edx,edx
100014b1:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
100014b5:	d8 e2                	fsub   st,st(2)
100014b7:	d9 c0                	fld    st(0)
100014b9:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100014bd:	7d 06                	jge    _100014c5

100014bf:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100014c5:	d8 d9                	fcomp  st(1)
100014c7:	df e0                	fnstsw ax
100014c9:	f6 c4 05             	test   ah,0x5
100014cc:	7a 33                	jp     _10001501

_100014ce:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
100014d1:	3a c3                	cmp    al,bl
100014d3:	76 02                	jbe    _100014d7

100014d5:	8a d8                	mov    bl,al

_100014d7:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
100014db:	73 04                	jae    _100014e1

100014dd:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_100014e1:	83 c6 01             	add    esi,0x1
100014e4:	8b c6                	mov    eax,esi
100014e6:	85 c0                	test   eax,eax
100014e8:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100014ec:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100014f0:	7d 06                	jge    _100014f8

100014f2:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100014f8:	d8 d9                	fcomp  st(1)
100014fa:	df e0                	fnstsw ax
100014fc:	f6 c4 05             	test   ah,0x5
100014ff:	7b cd                	jnp    _100014ce

_10001501:	0f b6 44 24 28       	movzx  eax,BYTE PTR [esp+0x28]
10001506:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
1000150a:	8a 14 79             	mov    dl,BYTE PTR [ecx+edi*2]
1000150d:	dd d8                	fstp   st(0)
1000150f:	88 04 ad 12 10 01 10 	mov    BYTE PTR [ebp*4+0x10011012],al
10001516:	d9 c0                	fld    st(0)
10001518:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
1000151d:	0d 00 0c 00 00       	or     eax,0xc00
10001522:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001526:	88 14 ad 10 10 01 10 	mov    BYTE PTR [ebp*4+0x10011010],dl
1000152d:	88 1c ad 11 10 01 10 	mov    BYTE PTR [ebp*4+0x10011011],bl
10001534:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001538:	32 db                	xor    bl,bl
1000153a:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl
1000153e:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001542:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
10001546:	8d 04 51             	lea    eax,[ecx+edx*2]
10001549:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
1000154d:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001551:	0f b6 00             	movzx  eax,BYTE PTR [eax]
10001554:	88 04 ad 13 10 01 10 	mov    BYTE PTR [ebp*4+0x10011013],al
1000155b:	c6 44 24 28 ff       	mov    BYTE PTR [esp+0x28],0xff
10001560:	dd 05 a0 d1 00 10    	fld    QWORD PTR ds:0x1000d1a0
10001566:	d8 d6                	fcom   st(6)
10001568:	df e0                	fnstsw ax
1000156a:	f6 c4 05             	test   ah,0x5
1000156d:	0f 8a a7 00 00 00    	jp     _1000161a

10001573:	8d 57 01             	lea    edx,[edi+0x1]
10001576:	8b c2                	mov    eax,edx
10001578:	85 c0                	test   eax,eax
1000157a:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
1000157e:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001582:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
10001586:	7d 06                	jge    _1000158e

10001588:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_1000158e:	d8 da                	fcomp  st(2)
10001590:	df e0                	fnstsw ax
10001592:	f6 c4 05             	test   ah,0x5
10001595:	0f 8a d8 00 00 00    	jp     _10001673

1000159b:	8d 74 51 01          	lea    esi,[ecx+edx*2+0x1]

_1000159f:	8a 16                	mov    dl,BYTE PTR [esi]
100015a1:	0f b6 7e fe          	movzx  edi,BYTE PTR [esi-0x2]
100015a5:	0f b6 c2             	movzx  eax,dl
100015a8:	8b e8                	mov    ebp,eax
100015aa:	2b ef                	sub    ebp,edi
100015ac:	83 fd 05             	cmp    ebp,0x5
100015af:	7e 17                	jle    _100015c8

100015b1:	0f b6 5e 02          	movzx  ebx,BYTE PTR [esi+0x2]
100015b5:	8b e8                	mov    ebp,eax
100015b7:	2b eb                	sub    ebp,ebx
100015b9:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]
100015bd:	83 fd 05             	cmp    ebp,0x5
100015c0:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
100015c4:	7f 29                	jg     _100015ef
100015c6:	eb 04                	jmp    _100015cc

_100015c8:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]

_100015cc:	83 c0 05             	add    eax,0x5
100015cf:	3b f8                	cmp    edi,eax
100015d1:	7e 08                	jle    _100015db

100015d3:	0f b6 7e 02          	movzx  edi,BYTE PTR [esi+0x2]
100015d7:	3b f8                	cmp    edi,eax
100015d9:	7f 14                	jg     _100015ef

_100015db:	3a d3                	cmp    dl,bl
100015dd:	76 06                	jbe    _100015e5

100015df:	8a da                	mov    bl,dl
100015e1:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl

_100015e5:	3a 54 24 28          	cmp    dl,BYTE PTR [esp+0x28]
100015e9:	73 04                	jae    _100015ef

100015eb:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl

_100015ef:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100015f3:	83 c0 01             	add    eax,0x1
100015f6:	83 c6 02             	add    esi,0x2
100015f9:	85 c0                	test   eax,eax
100015fb:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
100015ff:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001603:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
10001607:	7d 06                	jge    _1000160f

10001609:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_1000160f:	d8 da                	fcomp  st(2)
10001611:	df e0                	fnstsw ax
10001613:	f6 c4 05             	test   ah,0x5
10001616:	7b 87                	jnp    _1000159f
10001618:	eb 59                	jmp    _10001673

_1000161a:	8d 77 01             	lea    esi,[edi+0x1]
1000161d:	8b d6                	mov    edx,esi
1000161f:	85 d2                	test   edx,edx
10001621:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001625:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001629:	7d 06                	jge    _10001631

1000162b:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001631:	d8 da                	fcomp  st(2)
10001633:	df e0                	fnstsw ax
10001635:	f6 c4 05             	test   ah,0x5
10001638:	7a 39                	jp     _10001673
1000163a:	8d 7c 71 01          	lea    edi,[ecx+esi*2+0x1]

_1000163e:	8a 07                	mov    al,BYTE PTR [edi]
10001640:	3a c3                	cmp    al,bl
10001642:	76 02                	jbe    _10001646
10001644:	8a d8                	mov    bl,al

_10001646:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
1000164a:	73 04                	jae    _10001650

1000164c:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_10001650:	83 c6 01             	add    esi,0x1
10001653:	8b c6                	mov    eax,esi
10001655:	83 c7 02             	add    edi,0x2
10001658:	85 c0                	test   eax,eax
1000165a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000165e:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001662:	7d 06                	jge    _1000166a

10001664:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_1000166a:	d8 da                	fcomp  st(2)
1000166c:	df e0                	fnstsw ax
1000166e:	f6 c4 05             	test   ah,0x5
10001671:	7b cb                	jnp    _1000163e

_10001673:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
10001677:	dd d9                	fstp   st(1)
10001679:	8a 44 51 01          	mov    al,BYTE PTR [ecx+edx*2+0x1]
1000167d:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
10001682:	88 04 ad 10 32 01 10 	mov    BYTE PTR [ebp*4+0x10013210],al
10001689:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000168d:	88 1c ad 11 32 01 10 	mov    BYTE PTR [ebp*4+0x10013211],bl
10001694:	88 14 ad 12 32 01 10 	mov    BYTE PTR [ebp*4+0x10013212],dl
1000169b:	0f b6 50 01          	movzx  edx,BYTE PTR [eax+0x1]
1000169f:	88 14 ad 13 32 01 10 	mov    BYTE PTR [ebp*4+0x10013213],dl
100016a6:	83 c5 01             	add    ebp,0x1
100016a9:	81 fd 00 04 00 00    	cmp    ebp,0x400
100016af:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
100016b3:	0f 82 db fc ff ff    	jb     _10001394

100016b9:	8a 1d 8c 60 01 10    	mov    bl,BYTE PTR ds:0x1001608c
100016bf:	e9 aa 00 00 00       	jmp    _1000176e

_100016c4:	dd db                	fstp   st(3)
100016c6:	33 d2                	xor    edx,edx
100016c8:	d9 c3                	fld    st(3)
100016ca:	d8 c9                	fmul   st,st(1)
100016cc:	d9 c0                	fld    st(0)
100016ce:	d8 d4                	fcom   st(4)
100016d0:	df e0                	fnstsw ax
100016d2:	f6 c4 41             	test   ah,0x41
100016d5:	75 34                	jne    _1000170b

_100016d7:	0f b6 04 51          	movzx  eax,BYTE PTR [ecx+edx*2]
100016db:	88 82 10 10 01 10    	mov    BYTE PTR [edx+0x10011010],al
100016e1:	0f b6 44 51 01       	movzx  eax,BYTE PTR [ecx+edx*2+0x1]
100016e6:	88 82 10 32 01 10    	mov    BYTE PTR [edx+0x10013210],al
100016ec:	03 d6                	add    edx,esi
100016ee:	8b c2                	mov    eax,edx
100016f0:	85 c0                	test   eax,eax
100016f2:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
100016f6:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100016fa:	7d 06                	jge    _10001702

100016fc:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001702:	d8 d9                	fcomp  st(1)
10001704:	df e0                	fnstsw ax
10001706:	f6 c4 05             	test   ah,0x5
10001709:	7b cc                	jnp    _100016d7

_1000170b:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
1000170f:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001714:	dd d8                	fstp   st(0)
10001716:	0d 00 0c 00 00       	or     eax,0xc00
1000171b:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000171f:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001723:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001727:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1000172b:	3d 00 10 00 00       	cmp    eax,0x1000
10001730:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001734:	73 32                	jae    _10001768

10001736:	8b d0                	mov    edx,eax
10001738:	2b d0                	sub    edx,eax
1000173a:	8d ba 10 32 01 10    	lea    edi,[edx+0x10013210]
10001740:	8d b2 10 10 01 10    	lea    esi,[edx+0x10011010]

_10001746:	0f b6 16             	movzx  edx,BYTE PTR [esi]
10001749:	88 90 10 10 01 10    	mov    BYTE PTR [eax+0x10011010],dl
1000174f:	0f b6 17             	movzx  edx,BYTE PTR [edi]
10001752:	88 90 10 32 01 10    	mov    BYTE PTR [eax+0x10013210],dl
10001758:	83 c0 01             	add    eax,0x1
1000175b:	83 c6 01             	add    esi,0x1
1000175e:	83 c7 01             	add    edi,0x1
10001761:	3d 00 10 00 00       	cmp    eax,0x1000
10001766:	72 de                	jb     _10001746

_10001768:	dd 05 a0 d1 00 10    	fld    QWORD PTR ds:0x1000d1a0
_1000176e:	d9 cb                	fxch   st(3)

_10001770:	84 db                	test   bl,bl
10001772:	0f 89 e9 02 00 00    	jns    _10001a61

10001778:	dd db                	fstp   st(3)
1000177a:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10001780:	d8 dd                	fcomp  st(5)
10001782:	df e0                	fnstsw ax
10001784:	f6 c4 05             	test   ah,0x5
10001787:	0f 8a ff 01 00 00    	jp     _1000198c

1000178d:	dd db                	fstp   st(3)
1000178f:	33 ed                	xor    ebp,ebp
10001791:	dd da                	fstp   st(2)
10001793:	dd d8                	fstp   st(0)

_10001795:	8b c5                	mov    eax,ebp
10001797:	85 c0                	test   eax,eax
10001799:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
1000179d:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100017a1:	7d 06                	jge    _100017a9

100017a3:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100017a9:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
100017ad:	32 d2                	xor    dl,dl
100017af:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
100017b4:	d8 ca                	fmul   st,st(2)
100017b6:	0d 00 0c 00 00       	or     eax,0xc00
100017bb:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100017bf:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
100017c3:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
100017c7:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
100017cb:	8b c3                	mov    eax,ebx
100017cd:	85 c0                	test   eax,eax
100017cf:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
100017d3:	8d 73 01             	lea    esi,[ebx+0x1]
100017d6:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100017da:	c6 44 24 28 ff       	mov    BYTE PTR [esp+0x28],0xff
100017df:	8b fe                	mov    edi,esi
100017e1:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100017e5:	7d 06                	jge    _100017ed

100017e7:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100017ed:	d8 c2                	fadd   st,st(2)
100017ef:	8b c7                	mov    eax,edi
100017f1:	85 c0                	test   eax,eax
100017f3:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100017f7:	d8 e1                	fsub   st,st(1)
100017f9:	d9 c0                	fld    st(0)
100017fb:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100017ff:	7d 06                	jge    _10001807

10001801:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001807:	d8 d9                	fcomp  st(1)
10001809:	df e0                	fnstsw ax
1000180b:	f6 c4 05             	test   ah,0x5
1000180e:	7a 33                	jp     _10001843

_10001810:	8a 04 79             	mov    al,BYTE PTR [ecx+edi*2]
10001813:	3a c2                	cmp    al,dl
10001815:	76 02                	jbe    _10001819

10001817:	8a d0                	mov    dl,al

_10001819:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
1000181d:	73 04                	jae    _10001823

1000181f:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_10001823:	83 c7 01             	add    edi,0x1
10001826:	8b c7                	mov    eax,edi
10001828:	85 c0                	test   eax,eax
1000182a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000182e:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001832:	7d 06                	jge    _1000183a

10001834:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_1000183a:	d8 d9                	fcomp  st(1)
1000183c:	df e0                	fnstsw ax
1000183e:	f6 c4 05             	test   ah,0x5
10001841:	7b cd                	jnp    _10001810

_10001843:	8a 04 59             	mov    al,BYTE PTR [ecx+ebx*2]
10001846:	dd d8                	fstp   st(0)
10001848:	88 04 ad 10 10 01 10 	mov    BYTE PTR [ebp*4+0x10011010],al
1000184f:	d9 c0                	fld    st(0)
10001851:	88 14 ad 11 10 01 10 	mov    BYTE PTR [ebp*4+0x10011011],dl
10001858:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
1000185d:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001861:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001866:	0d 00 0c 00 00       	or     eax,0xc00
1000186b:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000186f:	88 14 ad 12 10 01 10 	mov    BYTE PTR [ebp*4+0x10011012],dl
10001876:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
1000187a:	c6 44 24 30 00       	mov    BYTE PTR [esp+0x30],0x0
1000187f:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001883:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001887:	0f b6 14 41          	movzx  edx,BYTE PTR [ecx+eax*2]
1000188b:	8d 3c 41             	lea    edi,[ecx+eax*2]
1000188e:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001892:	8b c6                	mov    eax,esi
10001894:	85 c0                	test   eax,eax
10001896:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
1000189a:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
1000189e:	88 14 ad 13 10 01 10 	mov    BYTE PTR [ebp*4+0x10011013],dl
100018a5:	c6 44 24 28 ff       	mov    BYTE PTR [esp+0x28],0xff
100018aa:	db 44 24 2c          	fild   DWORD PTR [esp+0x2c]
100018ae:	7d 06                	jge    _100018b6

100018b0:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100018b6:	d8 d9                	fcomp  st(1)
100018b8:	df e0                	fnstsw ax
100018ba:	f6 c4 05             	test   ah,0x5
100018bd:	7a 3d                	jp     _100018fc

100018bf:	8d 7c 71 01          	lea    edi,[ecx+esi*2+0x1]

_100018c3:	8a 07                	mov    al,BYTE PTR [edi]
100018c5:	3a 44 24 30          	cmp    al,BYTE PTR [esp+0x30]
100018c9:	76 04                	jbe    _100018cf

100018cb:	88 44 24 30          	mov    BYTE PTR [esp+0x30],al

_100018cf:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
100018d3:	73 04                	jae    _100018d9

100018d5:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_100018d9:	83 c6 01             	add    esi,0x1
100018dc:	8b d6                	mov    edx,esi
100018de:	83 c7 02             	add    edi,0x2
100018e1:	85 d2                	test   edx,edx
100018e3:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
100018e7:	db 44 24 2c          	fild   DWORD PTR [esp+0x2c]
100018eb:	7d 06                	jge    _100018f3

100018ed:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100018f3:	d8 d9                	fcomp  st(1)
100018f5:	df e0                	fnstsw ax
100018f7:	f6 c4 05             	test   ah,0x5
100018fa:	7b c7                	jnp    _100018c3

_100018fc:	8a 5c 59 01          	mov    bl,BYTE PTR [ecx+ebx*2+0x1]
10001900:	dd d8                	fstp   st(0)
10001902:	a1 44 60 01 10       	mov    eax,ds:0x10016044
10001907:	0f b6 d3             	movzx  edx,bl
1000190a:	03 d0                	add    edx,eax
1000190c:	79 04                	jns    _10001912

1000190e:	32 db                	xor    bl,bl
10001910:	eb 02                	jmp    _10001914

_10001912:	02 d8                	add    bl,al

_10001914:	0f b6 54 24 30       	movzx  edx,BYTE PTR [esp+0x30]
10001919:	03 d0                	add    edx,eax
1000191b:	88 1c ad 10 32 01 10 	mov    BYTE PTR [ebp*4+0x10013210],bl
10001922:	79 04                	jns    _10001928

10001924:	32 d2                	xor    dl,dl
10001926:	eb 06                	jmp    _1000192e

_10001928:	8a d0                	mov    dl,al
1000192a:	02 54 24 30          	add    dl,BYTE PTR [esp+0x30]

_1000192e:	88 14 ad 11 32 01 10 	mov    BYTE PTR [ebp*4+0x10013211],dl
10001935:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
1000193a:	03 d0                	add    edx,eax
1000193c:	79 04                	jns    _10001942

1000193e:	32 d2                	xor    dl,dl
10001940:	eb 06                	jmp    _10001948

_10001942:	8a d0                	mov    dl,al
10001944:	02 54 24 28          	add    dl,BYTE PTR [esp+0x28]

_10001948:	88 14 ad 12 32 01 10 	mov    BYTE PTR [ebp*4+0x10013212],dl
1000194f:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10001953:	0f b6 52 01          	movzx  edx,BYTE PTR [edx+0x1]
10001957:	0f b6 f2             	movzx  esi,dl
1000195a:	03 f0                	add    esi,eax
1000195c:	0f 98 c0             	sets   al
1000195f:	2c 01                	sub    al,0x1
10001961:	83 c5 01             	add    ebp,0x1
10001964:	23 c2                	and    eax,edx
10001966:	81 fd 00 04 00 00    	cmp    ebp,0x400
1000196c:	88 04 ad 0f 32 01 10 	mov    BYTE PTR [ebp*4+0x1001320f],al
10001973:	0f 82 1c fe ff ff    	jb     _10001795

10001979:	5d                   	pop    ebp
1000197a:	dd d9                	fstp   st(1)
1000197c:	5b                   	pop    ebx
1000197d:	dd d8                	fstp   st(0)
1000197f:	5f                   	pop    edi
10001980:	b8 01 00 00 00       	mov    eax,0x1
10001985:	5e                   	pop    esi
10001986:	83 c4 14             	add    esp,0x14
10001989:	c2 0c 00             	ret    0xc

_1000198c:	dd dc                	fstp   st(4)
1000198e:	33 d2                	xor    edx,edx
10001990:	dd d8                	fstp   st(0)
10001992:	d9 c9                	fxch   st(1)
10001994:	de ca                	fmulp  st(2),st
10001996:	d9 c1                	fld    st(1)
10001998:	d8 d1                	fcom   st(1)
1000199a:	df e0                	fnstsw ax
1000199c:	dd d9                	fstp   st(1)
1000199e:	f6 c4 41             	test   ah,0x41
100019a1:	75 4a                	jne    _100019ed

100019a3:	8d 71 01             	lea    esi,[ecx+0x1]
100019a6:	8b 0d 44 60 01 10    	mov    ecx,DWORD PTR ds:0x10016044

_100019ac:	8a 46 ff             	mov    al,BYTE PTR [esi-0x1]
100019af:	88 82 10 10 01 10    	mov    BYTE PTR [edx+0x10011010],al
100019b5:	0f b6 06             	movzx  eax,BYTE PTR [esi]
100019b8:	03 c1                	add    eax,ecx
100019ba:	79 04                	jns    _100019c0

100019bc:	32 c0                	xor    al,al
100019be:	eb 04                	jmp    _100019c4

_100019c0:	8a 06                	mov    al,BYTE PTR [esi]
100019c2:	02 c1                	add    al,cl

_100019c4:	88 82 10 32 01 10    	mov    BYTE PTR [edx+0x10013210],al
100019ca:	83 c2 01             	add    edx,0x1
100019cd:	8b c2                	mov    eax,edx
100019cf:	83 c6 02             	add    esi,0x2
100019d2:	85 c0                	test   eax,eax
100019d4:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
100019d8:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100019dc:	7d 06                	jge    _100019e4

100019de:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_100019e4:	d8 d9                	fcomp  st(1)
100019e6:	df e0                	fnstsw ax
100019e8:	f6 c4 05             	test   ah,0x5
100019eb:	7b bf                	jnp    _100019ac

_100019ed:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
100019f1:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
100019f6:	dd d8                	fstp   st(0)
100019f8:	0d 00 0c 00 00       	or     eax,0xc00
100019fd:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001a01:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001a05:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001a09:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001a0d:	3d 00 10 00 00       	cmp    eax,0x1000
10001a12:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001a16:	0f 83 b4 05 00 00    	jae    _10001fd0

10001a1c:	8b c8                	mov    ecx,eax
10001a1e:	2b c8                	sub    ecx,eax
10001a20:	8d b1 10 32 01 10    	lea    esi,[ecx+0x10013210]
10001a26:	8d 89 10 10 01 10    	lea    ecx,[ecx+0x10011010]
10001a2c:	8d 64 24 00          	lea    esp,[esp+0x0]

_10001a30:	0f b6 11             	movzx  edx,BYTE PTR [ecx]
10001a33:	88 90 10 10 01 10    	mov    BYTE PTR [eax+0x10011010],dl
10001a39:	0f b6 16             	movzx  edx,BYTE PTR [esi]
10001a3c:	88 90 10 32 01 10    	mov    BYTE PTR [eax+0x10013210],dl
10001a42:	83 c0 01             	add    eax,0x1
10001a45:	83 c1 01             	add    ecx,0x1
10001a48:	83 c6 01             	add    esi,0x1
10001a4b:	3d 00 10 00 00       	cmp    eax,0x1000
10001a50:	72 de                	jb     _10001a30

10001a52:	5d                   	pop    ebp
10001a53:	5b                   	pop    ebx
10001a54:	5f                   	pop    edi
10001a55:	b8 01 00 00 00       	mov    eax,0x1
10001a5a:	5e                   	pop    esi
10001a5b:	83 c4 14             	add    esp,0x14
10001a5e:	c2 0c 00             	ret    0xc

_10001a61:	80 fb 10             	cmp    bl,0x10
10001a64:	0f 85 bf 02 00 00    	jne    _10001d29

10001a6a:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10001a70:	d8 de                	fcomp  st(6)
10001a72:	df e0                	fnstsw ax
10001a74:	f6 c4 05             	test   ah,0x5
10001a77:	0f 8a 0a 02 00 00    	jp     _10001c87

10001a7d:	dd dc                	fstp   st(4)
10001a7f:	33 ed                	xor    ebp,ebp
10001a81:	dd d8                	fstp   st(0)
10001a83:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
10001a87:	dd da                	fstp   st(2)

_10001a89:	8b c5                	mov    eax,ebp
10001a8b:	85 c0                	test   eax,eax
10001a8d:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001a91:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001a95:	7d 06                	jge    _10001a9d

10001a97:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001a9d:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001aa1:	32 db                	xor    bl,bl
10001aa3:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001aa8:	d8 cb                	fmul   st,st(3)
10001aaa:	0d 00 0c 00 00       	or     eax,0xc00
10001aaf:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001ab3:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001ab7:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl
10001abb:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001abf:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
10001ac3:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
10001ac7:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001acb:	c6 44 24 28 ff       	mov    BYTE PTR [esp+0x28],0xff
10001ad0:	d8 d2                	fcom   st(2)
10001ad2:	df e0                	fnstsw ax
10001ad4:	f6 c4 05             	test   ah,0x5
10001ad7:	0f 8a bf 00 00 00    	jp     _10001b9c

10001add:	85 ff                	test   edi,edi
10001adf:	8d 57 01             	lea    edx,[edi+0x1]
10001ae2:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
10001ae6:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001aea:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
10001aee:	7d 06                	jge    _10001af6

10001af0:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001af6:	d8 c3                	fadd   st,st(3)
10001af8:	8b c2                	mov    eax,edx
10001afa:	85 c0                	test   eax,eax
10001afc:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10001b00:	d8 e2                	fsub   st,st(2)
10001b02:	d9 c0                	fld    st(0)
10001b04:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001b08:	7d 06                	jge    _10001b10

10001b0a:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001b10:	d8 d9                	fcomp  st(1)
10001b12:	df e0                	fnstsw ax
10001b14:	f6 c4 05             	test   ah,0x5
10001b17:	0f 8a f0 00 00 00    	jp     _10001c0d

10001b1d:	8d 74 51 01          	lea    esi,[ecx+edx*2+0x1]

_10001b21:	8a 16                	mov    dl,BYTE PTR [esi]
10001b23:	0f b6 7e fe          	movzx  edi,BYTE PTR [esi-0x2]
10001b27:	0f b6 c2             	movzx  eax,dl
10001b2a:	8b d8                	mov    ebx,eax
10001b2c:	2b df                	sub    ebx,edi
10001b2e:	83 fb 05             	cmp    ebx,0x5
10001b31:	7e 17                	jle    _10001b4a

10001b33:	0f b6 5e 02          	movzx  ebx,BYTE PTR [esi+0x2]
10001b37:	8b e8                	mov    ebp,eax
10001b39:	2b eb                	sub    ebp,ebx
10001b3b:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]
10001b3f:	83 fd 05             	cmp    ebp,0x5
10001b42:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
10001b46:	7f 29                	jg     _10001b71
10001b48:	eb 04                	jmp    _10001b4e

_10001b4a:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]

_10001b4e:	83 c0 05             	add    eax,0x5
10001b51:	3b f8                	cmp    edi,eax
10001b53:	7e 08                	jle    _10001b5d

10001b55:	0f b6 7e 02          	movzx  edi,BYTE PTR [esi+0x2]
10001b59:	3b f8                	cmp    edi,eax
10001b5b:	7f 14                	jg     _10001b71

_10001b5d:	3a d3                	cmp    dl,bl
10001b5f:	76 06                	jbe    _10001b67

10001b61:	8a da                	mov    bl,dl
10001b63:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl

_10001b67:	3a 54 24 28          	cmp    dl,BYTE PTR [esp+0x28]
10001b6b:	73 04                	jae    _10001b71

10001b6d:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl

_10001b71:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10001b75:	83 c0 01             	add    eax,0x1
10001b78:	83 c6 02             	add    esi,0x2
10001b7b:	85 c0                	test   eax,eax
10001b7d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10001b81:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001b85:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
10001b89:	7d 06                	jge    _10001b91

10001b8b:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001b91:	d8 d9                	fcomp  st(1)
10001b93:	df e0                	fnstsw ax
10001b95:	f6 c4 05             	test   ah,0x5
10001b98:	7b 87                	jnp    _10001b21
10001b9a:	eb 71                	jmp    _10001c0d

_10001b9c:	85 ff                	test   edi,edi
10001b9e:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
10001ba2:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001ba6:	8d 77 01             	lea    esi,[edi+0x1]
10001ba9:	7d 06                	jge    _10001bb1

10001bab:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001bb1:	d8 c3                	fadd   st,st(3)
10001bb3:	8b d6                	mov    edx,esi
10001bb5:	85 d2                	test   edx,edx
10001bb7:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001bbb:	d8 e2                	fsub   st,st(2)
10001bbd:	d9 c0                	fld    st(0)
10001bbf:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001bc3:	7d 06                	jge    _10001bcb

10001bc5:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001bcb:	d8 d9                	fcomp  st(1)
10001bcd:	df e0                	fnstsw ax
10001bcf:	f6 c4 05             	test   ah,0x5
10001bd2:	7a 39                	jp     _10001c0d

10001bd4:	8d 7c 71 01          	lea    edi,[ecx+esi*2+0x1]

_10001bd8:	8a 07                	mov    al,BYTE PTR [edi]
10001bda:	3a c3                	cmp    al,bl
10001bdc:	76 02                	jbe    _10001be0

10001bde:	8a d8                	mov    bl,al

_10001be0:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
10001be4:	73 04                	jae    _10001bea

10001be6:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_10001bea:	83 c6 01             	add    esi,0x1
10001bed:	8b c6                	mov    eax,esi
10001bef:	83 c7 02             	add    edi,0x2
10001bf2:	85 c0                	test   eax,eax
10001bf4:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001bf8:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001bfc:	7d 06                	jge    _10001c04

10001bfe:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001c04:	d8 d9                	fcomp  st(1)
10001c06:	df e0                	fnstsw ax                       ; ax = x87 FPU's status word
10001c08:	f6 c4 05             	test   ah,0x5                   ; if (ah - 5) is odd
10001c0b:	7b cb                	jnp    _10001bd8                ; jump

_10001c0d:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
10001c11:	dd d8                	fstp   st(0)
10001c13:	8a 44 51 01          	mov    al,BYTE PTR [ecx+edx*2+0x1]
10001c17:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
10001c1c:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001c20:	88 04 ad 10 32 01 10 	mov    BYTE PTR [ebp*4+0x10013210],al
10001c27:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001c2c:	0d 00 0c 00 00       	or     eax,0xc00
10001c31:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001c35:	88 1c ad 11 32 01 10 	mov    BYTE PTR [ebp*4+0x10013211],bl
10001c3c:	88 14 ad 12 32 01 10 	mov    BYTE PTR [ebp*4+0x10013212],dl
10001c43:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001c47:	83 c5 01             	add    ebp,0x1
10001c4a:	81 fd 00 04 00 00    	cmp    ebp,0x400
10001c50:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
10001c54:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001c58:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001c5c:	0f b6 54 41 01       	movzx  edx,BYTE PTR [ecx+eax*2+0x1]
10001c61:	88 14 ad 0f 32 01 10 	mov    BYTE PTR [ebp*4+0x1001320f],dl ; 
10001c68:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]            ; x87 FPU's control word = [address]
10001c6c:	0f 82 17 fe ff ff    	jb     _10001a89

10001c72:	5d                   	pop    ebp
10001c73:	dd da                	fstp   st(2)
10001c75:	5b                   	pop    ebx
10001c76:	dd d8                	fstp   st(0)
10001c78:	5f                   	pop    edi
10001c79:	dd d8                	fstp   st(0)
10001c7b:	b8 01 00 00 00       	mov    eax,0x1
10001c80:	5e                   	pop    esi
10001c81:	83 c4 14             	add    esp,0x14
10001c84:	c2 0c 00             	ret    0xc

_10001c87:	dd dd                	fstp   st(5)
10001c89:	33 d2                	xor    edx,edx
10001c8b:	dd d9                	fstp   st(1)
10001c8d:	dd d9                	fstp   st(1)
10001c8f:	de c9                	fmulp  st(1),st
10001c91:	d9 c0                	fld    st(0)
10001c93:	d8 d2                	fcom   st(2)
10001c95:	df e0                	fnstsw ax
10001c97:	dd da                	fstp   st(2)
10001c99:	f6 c4 41             	test   ah,0x41
10001c9c:	75 2e                	jne    0x10001ccc
10001c9e:	83 c1 01             	add    ecx,0x1
10001ca1:	8a 01                	mov    al,BYTE PTR [ecx]
10001ca3:	88 82 10 32 01 10    	mov    BYTE PTR [edx+0x10013210],al
10001ca9:	83 c2 01             	add    edx,0x1
10001cac:	8b c2                	mov    eax,edx
10001cae:	83 c1 02             	add    ecx,0x2
10001cb1:	85 c0                	test   eax,eax
10001cb3:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001cb7:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001cbb:	7d 06                	jge    0x10001cc3
10001cbd:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001cc3:	d8 da                	fcomp  st(2)
10001cc5:	df e0                	fnstsw ax
10001cc7:	f6 c4 05             	test   ah,0x5
10001cca:	7b d5                	jnp    0x10001ca1
10001ccc:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001cd0:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001cd5:	dd d9                	fstp   st(1)
10001cd7:	0d 00 0c 00 00       	or     eax,0xc00
10001cdc:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001ce0:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001ce4:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001ce8:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001cec:	3d 00 10 00 00       	cmp    eax,0x1000
10001cf1:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001cf5:	0f 83 d5 02 00 00    	jae    _10001fd0

10001cfb:	8b c8                	mov    ecx,eax
10001cfd:	2b c8                	sub    ecx,eax
10001cff:	81 c1 10 32 01 10    	add    ecx,0x10013210

_10001d05:	8a 11                	mov    dl,BYTE PTR [ecx]
10001d07:	88 90 10 32 01 10    	mov    BYTE PTR [eax+0x10013210],dl
10001d0d:	83 c0 01             	add    eax,0x1
10001d10:	83 c1 01             	add    ecx,0x1
10001d13:	3d 00 10 00 00       	cmp    eax,0x1000
10001d18:	72 eb                	jb     _10001d05

10001d1a:	5d                   	pop    ebp                 ; Restore all registers
10001d1b:	5b                   	pop    ebx
10001d1c:	5f                   	pop    edi
10001d1d:	b8 01 00 00 00       	mov    eax,0x1             ; eax = 1
10001d22:	5e                   	pop    esi
10001d23:	83 c4 14             	add    esp,0x14
10001d26:	c2 0c 00             	ret    0xc                 ; return eax

_10001d29:	80 fb 01             	cmp    bl,0x1
10001d2c:	0f 85 92 02 00 00    	jne    0x10001fc4
10001d32:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10001d38:	d8 de                	fcomp  st(6)
10001d3a:	df e0                	fnstsw ax
10001d3c:	f6 c4 05             	test   ah,0x5
10001d3f:	0f 8a e1 01 00 00    	jp     0x10001f26
10001d45:	dd dc                	fstp   st(4)
10001d47:	33 ff                	xor    edi,edi
10001d49:	dd d8                	fstp   st(0)
10001d4b:	dd da                	fstp   st(2)

;
; FOR LOOP START
;

_10001d4d:	8b c7                	mov    eax,edi
10001d4f:	85 c0                	test   eax,eax
10001d51:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001d55:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001d59:	7d 06                	jge    _10001d61
10001d5b:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001d61:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001d65:	32 db                	xor    bl,bl
10001d67:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001d6c:	d8 cb                	fmul   st,st(3)
10001d6e:	0d 00 0c 00 00       	or     eax,0xc00
10001d73:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001d77:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001d7b:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001d7f:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
10001d83:	89 6c 24 2c          	mov    DWORD PTR [esp+0x2c],ebp
10001d87:	8d 75 01             	lea    esi,[ebp+0x1]
10001d8a:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001d8e:	c6 44 24 28 ff       	mov    BYTE PTR [esp+0x28],0xff
10001d93:	d8 d2                	fcom   st(2)
10001d95:	df e0                	fnstsw ax
10001d97:	f6 c4 05             	test   ah,0x5
10001d9a:	0f 8a ac 00 00 00    	jp     _10001e4c
10001da0:	8b d5                	mov    edx,ebp
10001da2:	85 d2                	test   edx,edx
10001da4:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001da8:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001dac:	7d 06                	jge    0x10001db4
10001dae:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001db4:	d8 c3                	fadd   st,st(3)
10001db6:	8b c6                	mov    eax,esi
10001db8:	85 c0                	test   eax,eax
10001dba:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001dbe:	d8 e2                	fsub   st,st(2)
10001dc0:	d9 c0                	fld    st(0)
10001dc2:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001dc6:	7d 06                	jge    0x10001dce
10001dc8:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001dce:	d8 d9                	fcomp  st(1)
10001dd0:	df e0                	fnstsw ax
10001dd2:	f6 c4 05             	test   ah,0x5
10001dd5:	0f 8a db 00 00 00    	jp     _10001eb6

_10001ddb:	0f b6 54 71 fe       	movzx  edx,BYTE PTR [ecx+esi*2-0x2]
10001de0:	0f b6 04 71          	movzx  eax,BYTE PTR [ecx+esi*2]
10001de4:	2b c2                	sub    eax,edx
10001de6:	83 f8 05             	cmp    eax,0x5
10001de9:	7e 10                	jle    _10001dfb

10001deb:	0f b6 54 71 02       	movzx  edx,BYTE PTR [ecx+esi*2+0x2]
10001df0:	0f b6 04 71          	movzx  eax,BYTE PTR [ecx+esi*2]
10001df4:	2b c2                	sub    eax,edx
10001df6:	83 f8 05             	cmp    eax,0x5
10001df9:	7f 2f                	jg     _10001e2a

_10001dfb:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
10001dfe:	0f b6 6c 71 fe       	movzx  ebp,BYTE PTR [ecx+esi*2-0x2]
10001e03:	0f b6 d0             	movzx  edx,al
10001e06:	83 c2 05             	add    edx,0x5
10001e09:	3b ea                	cmp    ebp,edx
10001e0b:	7e 09                	jle    0x10001e16
10001e0d:	0f b6 6c 71 02       	movzx  ebp,BYTE PTR [ecx+esi*2+0x2]
10001e12:	3b ea                	cmp    ebp,edx
10001e14:	7f 10                	jg     _10001e26

10001e16:	3a c3                	cmp    al,bl
10001e18:	76 02                	jbe    _10001e1c

10001e1a:	8a d8                	mov    bl,al

_10001e1c:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
10001e20:	73 04                	jae    _10001e26

10001e22:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al

_10001e26:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]

_10001e2a:	83 c6 01             	add    esi,0x1
10001e2d:	8b d6                	mov    edx,esi
10001e2f:	85 d2                	test   edx,edx
10001e31:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001e35:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001e39:	7d 06                	jge    0x10001e41
10001e3b:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001e41:	d8 d9                	fcomp  st(1)
10001e43:	df e0                	fnstsw ax
10001e45:	f6 c4 05             	test   ah,0x5
10001e48:	7b 91                	jnp    _10001ddb
10001e4a:	eb 6a                	jmp    _10001eb6

_10001e4c:	8b c5                	mov    eax,ebp
10001e4e:	85 c0                	test   eax,eax
10001e50:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001e54:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001e58:	7d 06                	jge    0x10001e60
10001e5a:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001e60:	d8 c3                	fadd   st,st(3)
10001e62:	8b d6                	mov    edx,esi
10001e64:	85 d2                	test   edx,edx
10001e66:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001e6a:	d8 e2                	fsub   st,st(2)
10001e6c:	d9 c0                	fld    st(0)
10001e6e:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001e72:	7d 06                	jge    0x10001e7a
10001e74:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001e7a:	d8 d9                	fcomp  st(1)
10001e7c:	df e0                	fnstsw ax
10001e7e:	f6 c4 05             	test   ah,0x5
10001e81:	7a 33                	jp     _10001eb6
10001e83:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
10001e86:	3a c3                	cmp    al,bl
10001e88:	76 02                	jbe    0x10001e8c
10001e8a:	8a d8                	mov    bl,al
10001e8c:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
10001e90:	73 04                	jae    0x10001e96
10001e92:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
10001e96:	83 c6 01             	add    esi,0x1
10001e99:	8b c6                	mov    eax,esi
10001e9b:	85 c0                	test   eax,eax
10001e9d:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001ea1:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001ea5:	7d 06                	jge    0x10001ead
10001ea7:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180
10001ead:	d8 d9                	fcomp  st(1)
10001eaf:	df e0                	fnstsw ax
10001eb1:	f6 c4 05             	test   ah,0x5
10001eb4:	7b cd                	jnp    0x10001e83

_10001eb6:	0f b6 44 24 28       	movzx  eax,BYTE PTR [esp+0x28]
10001ebb:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001ebf:	8a 14 69             	mov    dl,BYTE PTR [ecx+ebp*2]
10001ec2:	dd d8                	fstp   st(0)
10001ec4:	88 04 bd 12 10 01 10 	mov    BYTE PTR [edi*4+0x10011012],al
10001ecb:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001ed0:	0d 00 0c 00 00       	or     eax,0xc00
10001ed5:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001ed9:	88 14 bd 10 10 01 10 	mov    BYTE PTR [edi*4+0x10011010],dl
10001ee0:	88 1c bd 11 10 01 10 	mov    BYTE PTR [edi*4+0x10011011],bl
10001ee7:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001eeb:	83 c7 01             	add    edi,0x1
10001eee:	81 ff 00 04 00 00    	cmp    edi,0x400
10001ef4:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001ef8:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
10001efc:	0f b6 04 51          	movzx  eax,BYTE PTR [ecx+edx*2]
10001f00:	88 04 bd 0f 10 01 10 	mov    BYTE PTR [edi*4+0x1001100f],al
10001f07:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001f0b:	0f 82 3c fe ff ff    	jb     10001d4d

;
; FOR LOOP END
;

10001f11:	5d                   	pop    ebp
10001f12:	dd da                	fstp   st(2)
10001f14:	5b                   	pop    ebx
10001f15:	dd d8                	fstp   st(0)
10001f17:	5f                   	pop    edi
10001f18:	dd d8                	fstp   st(0)
10001f1a:	b8 01 00 00 00       	mov    eax,0x1
10001f1f:	5e                   	pop    esi
10001f20:	83 c4 14             	add    esp,0x14
10001f23:	c2 0c 00             	ret    0xc
10001f26:	dd dd                	fstp   st(5)
10001f28:	33 d2                	xor    edx,edx
10001f2a:	dd d9                	fstp   st(1)
10001f2c:	dd d9                	fstp   st(1)
10001f2e:	de c9                	fmulp  st(1),st
10001f30:	d9 c0                	fld    st(0)
10001f32:	d8 d2                	fcom   st(2)
10001f34:	df e0                	fnstsw ax
10001f36:	dd da                	fstp   st(2)
10001f38:	f6 c4 41             	test   ah,0x41
10001f3b:	75 29                	jne    _10001f66

_10001f3d:	8a 04 51             	mov    al,BYTE PTR [ecx+edx*2]
10001f40:	88 82 10 10 01 10    	mov    BYTE PTR [edx+0x10011010],al
10001f46:	83 c2 01             	add    edx,0x1
10001f49:	8b c2                	mov    eax,edx
10001f4b:	85 c0                	test   eax,eax
10001f4d:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001f51:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001f55:	7d 06                	jge    _10001f5d

10001f57:	dc 05 80 d1 00 10    	fadd   pow2(32)  ; QWORD* ds:0x1000d180

_10001f5d:	d8 da                	fcomp  st(2)
10001f5f:	df e0                	fnstsw ax
10001f61:	f6 c4 05             	test   ah,0x5
10001f64:	7b d7                	jnp    _10001f3d

_10001f66:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001f6a:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001f6f:	dd d9                	fstp   st(1)
10001f71:	0d 00 0c 00 00       	or     eax,0xc00
10001f76:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001f7a:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001f7e:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001f82:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001f86:	3d 00 10 00 00       	cmp    eax,0x1000
10001f8b:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001f8f:	73 3f                	jae    _10001fd0

10001f91:	8b c8                	mov    ecx,eax
10001f93:	2b c8                	sub    ecx,eax
10001f95:	81 c1 10 10 01 10    	add    ecx,0x10011010
10001f9b:	eb 03                	jmp    _10001fa0

10001f9d:	8d 49 00             	lea    ecx,[ecx+0x0]

_10001fa0:	8a 11                	mov    dl,BYTE PTR [ecx]
10001fa2:	88 90 10 10 01 10    	mov    BYTE PTR [eax+0x10011010],dl
10001fa8:	83 c0 01             	add    eax,0x1
10001fab:	83 c1 01             	add    ecx,0x1
10001fae:	3d 00 10 00 00       	cmp    eax,0x1000
10001fb3:	72 eb                	jb     _10001fa0

10001fb5:	5d                   	pop    ebp
10001fb6:	5b                   	pop    ebx
10001fb7:	5f                   	pop    edi
10001fb8:	b8 01 00 00 00       	mov    eax,0x1
10001fbd:	5e                   	pop    esi
10001fbe:	83 c4 14             	add    esp,0x14
10001fc1:	c2 0c 00             	ret    0xc
10001fc4:	dd dd                	fstp   st(5)
10001fc6:	dd d9                	fstp   st(1)
10001fc8:	dd da                	fstp   st(2)
10001fca:	dd d9                	fstp   st(1)
10001fcc:	dd d9                	fstp   st(1)
10001fce:	dd d8                	fstp   st(0)

_10001fd0:	5d                   	pop    ebp
10001fd1:	5b                   	pop    ebx
10001fd2:	5f                   	pop    edi
10001fd3:	b8 01 00 00 00       	mov    eax,0x1
10001fd8:	5e                   	pop    esi
10001fd9:	83 c4 14             	add    esp,0x14
10001fdc:	c2 0c 00             	ret    0xc
