10002170:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10002174:	83 f8 09             	cmp    eax,0x9
10002177:	0f 87 93 01 00 00    	ja     0x10002310
1000217d:	ff 24 85 14 23 00 10 	jmp    DWORD PTR [eax*4+0x10002314]
10002184:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
10002188:	dd 1d 38 60 01 10    	fstp   QWORD PTR ds:0x10016038
1000218e:	c2 0c 00             	ret    0xc
10002191:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
10002195:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
10002199:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
1000219e:	0d 00 0c 00 00       	or     eax,0xc00
100021a3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100021a7:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
100021ab:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
100021af:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
100021b3:	a2 40 60 01 10       	mov    ds:0x10016040,al
100021b8:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
100021bc:	c2 0c 00             	ret    0xc
100021bf:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
100021c3:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
100021c7:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
100021cc:	0d 00 0c 00 00       	or     eax,0xc00
100021d1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100021d5:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
100021d9:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
100021dd:	8a 4c 24 08          	mov    cl,BYTE PTR [esp+0x8]
100021e1:	88 0d 41 60 01 10    	mov    BYTE PTR ds:0x10016041,cl
100021e7:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
100021eb:	c2 0c 00             	ret    0xc
100021ee:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
100021f2:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
100021f6:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
100021fb:	0d 00 0c 00 00       	or     eax,0xc00
10002200:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
10002204:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
10002208:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
1000220c:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
10002210:	88 15 42 60 01 10    	mov    BYTE PTR ds:0x10016042,dl
10002216:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
1000221a:	c2 0c 00             	ret    0xc
1000221d:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
10002221:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
10002225:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
1000222a:	0d 00 0c 00 00       	or     eax,0xc00
1000222f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
10002233:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
10002237:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
1000223b:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
1000223f:	a2 43 60 01 10       	mov    ds:0x10016043,al
10002244:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
10002248:	c2 0c 00             	ret    0xc
1000224b:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
1000224f:	dd 1d 00 60 01 10    	fstp   QWORD PTR ds:0x10016000
10002255:	c2 0c 00             	ret    0xc
10002258:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
1000225c:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
10002260:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
10002265:	0d 00 0c 00 00       	or     eax,0xc00
1000226a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
1000226e:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
10002272:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
10002276:	8a 4c 24 08          	mov    cl,BYTE PTR [esp+0x8]
1000227a:	88 0d 08 60 01 10    	mov    BYTE PTR ds:0x10016008,cl
10002280:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
10002284:	c2 0c 00             	ret    0xc
10002287:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
1000228b:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
1000228f:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
10002294:	0d 00 0c 00 00       	or     eax,0xc00
10002299:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
1000229d:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
100022a1:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
100022a5:	8a 54 24 08          	mov    dl,BYTE PTR [esp+0x8]
100022a9:	88 15 09 60 01 10    	mov    BYTE PTR ds:0x10016009,dl
100022af:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
100022b3:	c2 0c 00             	ret    0xc
100022b6:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
100022ba:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
100022be:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
100022c3:	0d 00 0c 00 00       	or     eax,0xc00
100022c8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100022cc:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
100022d0:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
100022d4:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
100022d8:	a2 0a 60 01 10       	mov    ds:0x1001600a,al
100022dd:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
100022e1:	c2 0c 00             	ret    0xc
100022e4:	dd 44 24 08          	fld    QWORD PTR [esp+0x8]
100022e8:	d9 7c 24 04          	fnstcw WORD PTR [esp+0x4]
100022ec:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
100022f1:	0d 00 0c 00 00       	or     eax,0xc00
100022f6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100022fa:	d9 6c 24 08          	fldcw  WORD PTR [esp+0x8]
100022fe:	db 5c 24 08          	fistp  DWORD PTR [esp+0x8]
10002302:	8a 4c 24 08          	mov    cl,BYTE PTR [esp+0x8]
10002306:	88 0d 0b 60 01 10    	mov    BYTE PTR ds:0x1001600b,cl
1000230c:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
10002310:	c2 0c 00             	ret    0xc
10002313:	90                   	nop
10002314:	84 21                	test   BYTE PTR [ecx],ah
10002316:	00 10                	add    BYTE PTR [eax],dl
10002318:	91                   	xchg   ecx,eax
10002319:	21 00                	and    DWORD PTR [eax],eax
1000231b:	10 bf 21 00 10 ee    	adc    BYTE PTR [edi-0x11efffdf],bh
10002321:	21 00                	and    DWORD PTR [eax],eax
10002323:	10 1d 22 00 10 4b    	adc    BYTE PTR ds:0x4b100022,bl
10002329:	22 00                	and    al,BYTE PTR [eax]
1000232b:	10 58 22             	adc    BYTE PTR [eax+0x22],bl
1000232e:	00 10                	add    BYTE PTR [eax],dl
10002330:	87 22                	xchg   DWORD PTR [edx],esp
10002332:	00 10                	add    BYTE PTR [eax],dl
10002334:	b6 22                	mov    dh,0x22
10002336:	00 10                	add    BYTE PTR [eax],dl
10002338:	e4 22                	in     al,0x22
1000233a:	00 10                	add    BYTE PTR [eax],dl
1000233c:	cc                   	int3
1000233d:	cc                   	int3
1000233e:	cc                   	int3
1000233f:	cc                   	int3
