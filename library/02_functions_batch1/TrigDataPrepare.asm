10002fc0:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
10002fc6:	83 ec 08             	sub    esp,0x8
10002fc9:	d9 c0                	fld    st(0)
10002fcb:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10002fd1:	d8 d2                	fcom   st(2)
10002fd3:	df e0                	fnstsw ax
10002fd5:	f6 c4 41             	test   ah,0x41
10002fd8:	7a 06                	jp     0x10002fe0
10002fda:	dd d9                	fstp   st(1)
10002fdc:	d9 c0                	fld    st(0)
10002fde:	d9 c9                	fxch   st(1)
10002fe0:	80 3d 81 60 01 10 00 	cmp    BYTE PTR ds:0x10016081,0x0
10002fe7:	0f 85 87 00 00 00    	jne    0x10003074
10002fed:	80 3d 83 60 01 10 01 	cmp    BYTE PTR ds:0x10016083,0x1
10002ff4:	75 66                	jne    0x1000305c
10002ff6:	8b 0d 70 60 01 10    	mov    ecx,DWORD PTR ds:0x10016070
10002ffc:	de d9                	fcompp 
10002ffe:	df e0                	fnstsw ax
10003000:	f6 c4 41             	test   ah,0x41
10003003:	75 07                	jne    0x1000300c
10003005:	dd d8                	fstp   st(0)
10003007:	8d 04 09             	lea    eax,[ecx+ecx*1]
1000300a:	eb 37                	jmp    0x10003043
1000300c:	8b c1                	mov    eax,ecx
1000300e:	99                   	cdq    
1000300f:	83 e2 03             	and    edx,0x3
10003012:	03 c2                	add    eax,edx
10003014:	c1 f8 02             	sar    eax,0x2
10003017:	03 c0                	add    eax,eax
10003019:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
1000301d:	db 44 24 0c          	fild   DWORD PTR [esp+0xc]
10003021:	d9 7c 24 0c          	fnstcw WORD PTR [esp+0xc]
10003025:	0f b7 44 24 0c       	movzx  eax,WORD PTR [esp+0xc]
1000302a:	de c9                	fmulp  st(1),st
1000302c:	0d 00 0c 00 00       	or     eax,0xc00
10003031:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10003035:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10003039:	df 3c 24             	fistp  QWORD PTR [esp]
1000303c:	8b 04 24             	mov    eax,DWORD PTR [esp]
1000303f:	d9 6c 24 0c          	fldcw  WORD PTR [esp+0xc]
10003043:	a8 01                	test   al,0x1
10003045:	a3 98 60 01 10       	mov    ds:0x10016098,eax
1000304a:	74 08                	je     0x10003054
1000304c:	83 c0 01             	add    eax,0x1
1000304f:	a3 98 60 01 10       	mov    ds:0x10016098,eax
10003054:	8b c1                	mov    eax,ecx
10003056:	83 c4 08             	add    esp,0x8
10003059:	c2 08 00             	ret    0x8
1000305c:	dd d9                	fstp   st(1)
1000305e:	c7 05 98 60 01 10 00 	mov    DWORD PTR ds:0x10016098,0x0
10003065:	00 00 00 
10003068:	dd d8                	fstp   st(0)
1000306a:	33 c0                	xor    eax,eax
1000306c:	dd d8                	fstp   st(0)
1000306e:	83 c4 08             	add    esp,0x8
10003071:	c2 08 00             	ret    0x8
10003074:	d9 c1                	fld    st(1)
10003076:	56                   	push   esi
10003077:	dc 0d e8 d1 00 10    	fmul   QWORD PTR ds:0x1000d1e8
1000307d:	d9 c0                	fld    st(0)
1000307f:	e8 4c 08 00 00       	call   0x100038d0
10003084:	d9 c2                	fld    st(2)
10003086:	dc 0d e0 d1 00 10    	fmul   QWORD PTR ds:0x1000d1e0
1000308c:	8b f0                	mov    esi,eax
1000308e:	e8 3d 08 00 00       	call   0x100038d0
10003093:	dd 05 b0 d1 00 10    	fld    QWORD PTR ds:0x1000d1b0
10003099:	d8 dc                	fcomp  st(4)
1000309b:	8b c8                	mov    ecx,eax
1000309d:	df e0                	fnstsw ax
1000309f:	f6 c4 05             	test   ah,0x5
100030a2:	7a 0f                	jp     0x100030b3
100030a4:	d9 c2                	fld    st(2)
100030a6:	dc 0d d8 d1 00 10    	fmul   QWORD PTR ds:0x1000d1d8
100030ac:	e8 1f 08 00 00       	call   0x100038d0
100030b1:	8b c8                	mov    ecx,eax
100030b3:	a0 80 60 01 10       	mov    al,ds:0x10016080
100030b8:	84 c0                	test   al,al
100030ba:	0f 85 7b 01 00 00    	jne    0x1000323b
100030c0:	f6 05 8c 60 01 10 01 	test   BYTE PTR ds:0x1001608c,0x1
100030c7:	0f 84 7f 01 00 00    	je     0x1000324c
100030cd:	a0 82 60 01 10       	mov    al,ds:0x10016082
100030d2:	3c 01                	cmp    al,0x1
100030d4:	0f 85 b6 00 00 00    	jne    0x10003190
100030da:	3b f1                	cmp    esi,ecx
100030dc:	7d 1b                	jge    0x100030f9
100030de:	8a 44 24 10          	mov    al,BYTE PTR [esp+0x10]
100030e2:	38 86 0e 10 01 10    	cmp    BYTE PTR [esi+0x1001100e],al
100030e8:	73 08                	jae    0x100030f2
100030ea:	38 86 12 10 01 10    	cmp    BYTE PTR [esi+0x10011012],al
100030f0:	77 23                	ja     0x10003115
100030f2:	83 c6 01             	add    esi,0x1
100030f5:	3b f1                	cmp    esi,ecx
100030f7:	7c e9                	jl     0x100030e2
100030f9:	dd da                	fstp   st(2)
100030fb:	c7 05 98 60 01 10 00 	mov    DWORD PTR ds:0x10016098,0x0
10003102:	00 00 00 
10003105:	dd d9                	fstp   st(1)
10003107:	83 c8 ff             	or     eax,0xffffffff
1000310a:	dd d8                	fstp   st(0)
1000310c:	5e                   	pop    esi
1000310d:	dd d8                	fstp   st(0)
1000310f:	83 c4 08             	add    esp,0x8
10003112:	c2 08 00             	ret    0x8
10003115:	d9 e8                	fld1   
10003117:	d8 db                	fcomp  st(3)
10003119:	df e0                	fnstsw ax
1000311b:	f6 c4 41             	test   ah,0x41
1000311e:	7a 10                	jp     0x10003130
10003120:	d9 c2                	fld    st(2)
10003122:	e8 a9 07 00 00       	call   0x100038d0
10003127:	8b c8                	mov    ecx,eax
10003129:	8b c6                	mov    eax,esi
1000312b:	99                   	cdq    
1000312c:	f7 f9                	idiv   ecx
1000312e:	2b f2                	sub    esi,edx
10003130:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
10003134:	da 6c 24 10          	fisubr DWORD PTR [esp+0x10]
10003138:	e8 93 07 00 00       	call   0x100038d0
1000313d:	de d9                	fcompp 
1000313f:	8b c8                	mov    ecx,eax
10003141:	df e0                	fnstsw ax
10003143:	f6 c4 41             	test   ah,0x41
10003146:	75 0a                	jne    0x10003152
10003148:	dd d8                	fstp   st(0)
1000314a:	8d 04 09             	lea    eax,[ecx+ecx*1]
1000314d:	e9 5e 02 00 00       	jmp    0x100033b0
10003152:	8b c1                	mov    eax,ecx
10003154:	99                   	cdq    
10003155:	83 e2 03             	and    edx,0x3
10003158:	03 c2                	add    eax,edx
1000315a:	c1 f8 02             	sar    eax,0x2
1000315d:	03 c0                	add    eax,eax
1000315f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10003163:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10003167:	d9 7c 24 10          	fnstcw WORD PTR [esp+0x10]
1000316b:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
10003170:	de c9                	fmulp  st(1),st
10003172:	0d 00 0c 00 00       	or     eax,0xc00
10003177:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
1000317b:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
1000317f:	df 7c 24 04          	fistp  QWORD PTR [esp+0x4]
10003183:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003187:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
1000318b:	e9 20 02 00 00       	jmp    0x100033b0
10003190:	3c 02                	cmp    al,0x2
10003192:	0f 85 61 ff ff ff    	jne    0x100030f9
10003198:	3b f1                	cmp    esi,ecx
1000319a:	0f 8d 59 ff ff ff    	jge    0x100030f9
100031a0:	8a 44 24 10          	mov    al,BYTE PTR [esp+0x10]
100031a4:	38 86 0e 10 01 10    	cmp    BYTE PTR [esi+0x1001100e],al
100031aa:	76 08                	jbe    0x100031b4
100031ac:	38 86 12 10 01 10    	cmp    BYTE PTR [esi+0x10011012],al
100031b2:	72 0c                	jb     0x100031c0
100031b4:	83 c6 01             	add    esi,0x1
100031b7:	3b f1                	cmp    esi,ecx
100031b9:	7c e9                	jl     0x100031a4
100031bb:	e9 39 ff ff ff       	jmp    0x100030f9
100031c0:	d9 e8                	fld1   
100031c2:	d8 db                	fcomp  st(3)
100031c4:	df e0                	fnstsw ax
100031c6:	f6 c4 41             	test   ah,0x41
100031c9:	7a 10                	jp     0x100031db
100031cb:	d9 c2                	fld    st(2)
100031cd:	e8 fe 06 00 00       	call   0x100038d0
100031d2:	8b c8                	mov    ecx,eax
100031d4:	8b c6                	mov    eax,esi
100031d6:	99                   	cdq    
100031d7:	f7 f9                	idiv   ecx
100031d9:	2b f2                	sub    esi,edx
100031db:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
100031df:	da 6c 24 10          	fisubr DWORD PTR [esp+0x10]
100031e3:	e8 e8 06 00 00       	call   0x100038d0
100031e8:	de d9                	fcompp 
100031ea:	8b c8                	mov    ecx,eax
100031ec:	df e0                	fnstsw ax
100031ee:	f6 c4 41             	test   ah,0x41
100031f1:	75 0a                	jne    0x100031fd
100031f3:	dd d8                	fstp   st(0)
100031f5:	8d 04 09             	lea    eax,[ecx+ecx*1]
100031f8:	e9 b3 01 00 00       	jmp    0x100033b0
100031fd:	8b c1                	mov    eax,ecx
100031ff:	99                   	cdq    
10003200:	83 e2 03             	and    edx,0x3
10003203:	03 c2                	add    eax,edx
10003205:	c1 f8 02             	sar    eax,0x2
10003208:	03 c0                	add    eax,eax
1000320a:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
1000320e:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
10003212:	d9 7c 24 10          	fnstcw WORD PTR [esp+0x10]
10003216:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
1000321b:	de c9                	fmulp  st(1),st
1000321d:	0d 00 0c 00 00       	or     eax,0xc00
10003222:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
10003226:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
1000322a:	df 7c 24 04          	fistp  QWORD PTR [esp+0x4]
1000322e:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003232:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10003236:	e9 75 01 00 00       	jmp    0x100033b0
1000323b:	3c 01                	cmp    al,0x1
1000323d:	0f 85 b6 fe ff ff    	jne    0x100030f9
10003243:	f6 05 8c 60 01 10 10 	test   BYTE PTR ds:0x1001608c,0x10
1000324a:	75 11                	jne    0x1000325d
1000324c:	dd da                	fstp   st(2)
1000324e:	33 c0                	xor    eax,eax
10003250:	dd d9                	fstp   st(1)
10003252:	5e                   	pop    esi
10003253:	dd d8                	fstp   st(0)
10003255:	dd d8                	fstp   st(0)
10003257:	83 c4 08             	add    esp,0x8
1000325a:	c2 08 00             	ret    0x8
1000325d:	a0 82 60 01 10       	mov    al,ds:0x10016082
10003262:	3c 01                	cmp    al,0x1
10003264:	0f 85 a3 00 00 00    	jne    0x1000330d
1000326a:	3b f1                	cmp    esi,ecx
1000326c:	0f 8d 87 fe ff ff    	jge    0x100030f9
10003272:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
10003276:	38 86 0e 32 01 10    	cmp    BYTE PTR [esi+0x1001320e],al
1000327c:	73 08                	jae    0x10003286
1000327e:	38 86 12 32 01 10    	cmp    BYTE PTR [esi+0x10013212],al
10003284:	77 0c                	ja     0x10003292
10003286:	83 c6 01             	add    esi,0x1
10003289:	3b f1                	cmp    esi,ecx
1000328b:	7c e9                	jl     0x10003276
1000328d:	e9 67 fe ff ff       	jmp    0x100030f9
10003292:	d9 e8                	fld1   
10003294:	d8 db                	fcomp  st(3)
10003296:	df e0                	fnstsw ax
10003298:	f6 c4 41             	test   ah,0x41
1000329b:	7a 10                	jp     0x100032ad
1000329d:	d9 c2                	fld    st(2)
1000329f:	e8 2c 06 00 00       	call   0x100038d0
100032a4:	8b c8                	mov    ecx,eax
100032a6:	8b c6                	mov    eax,esi
100032a8:	99                   	cdq    
100032a9:	f7 f9                	idiv   ecx
100032ab:	2b f2                	sub    esi,edx
100032ad:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
100032b1:	da 6c 24 10          	fisubr DWORD PTR [esp+0x10]
100032b5:	e8 16 06 00 00       	call   0x100038d0
100032ba:	de d9                	fcompp 
100032bc:	8b c8                	mov    ecx,eax
100032be:	df e0                	fnstsw ax
100032c0:	f6 c4 41             	test   ah,0x41
100032c3:	75 0a                	jne    0x100032cf
100032c5:	dd d8                	fstp   st(0)
100032c7:	8d 04 09             	lea    eax,[ecx+ecx*1]
100032ca:	e9 e1 00 00 00       	jmp    0x100033b0
100032cf:	8b c1                	mov    eax,ecx
100032d1:	99                   	cdq    
100032d2:	83 e2 03             	and    edx,0x3
100032d5:	03 c2                	add    eax,edx
100032d7:	c1 f8 02             	sar    eax,0x2
100032da:	03 c0                	add    eax,eax
100032dc:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
100032e0:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
100032e4:	d9 7c 24 10          	fnstcw WORD PTR [esp+0x10]
100032e8:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
100032ed:	de c9                	fmulp  st(1),st
100032ef:	0d 00 0c 00 00       	or     eax,0xc00
100032f4:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
100032f8:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
100032fc:	df 7c 24 04          	fistp  QWORD PTR [esp+0x4]
10003300:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003304:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
10003308:	e9 a3 00 00 00       	jmp    0x100033b0
1000330d:	3c 02                	cmp    al,0x2
1000330f:	0f 85 e4 fd ff ff    	jne    0x100030f9
10003315:	3b f1                	cmp    esi,ecx
10003317:	0f 8d dc fd ff ff    	jge    0x100030f9
1000331d:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
10003321:	38 86 0e 32 01 10    	cmp    BYTE PTR [esi+0x1001320e],al
10003327:	76 08                	jbe    0x10003331
10003329:	38 86 12 32 01 10    	cmp    BYTE PTR [esi+0x10013212],al
1000332f:	72 0c                	jb     0x1000333d
10003331:	83 c6 01             	add    esi,0x1
10003334:	3b f1                	cmp    esi,ecx
10003336:	7c e9                	jl     0x10003321
10003338:	e9 bc fd ff ff       	jmp    0x100030f9
1000333d:	d9 e8                	fld1   
1000333f:	d8 db                	fcomp  st(3)
10003341:	df e0                	fnstsw ax
10003343:	f6 c4 41             	test   ah,0x41
10003346:	7a 10                	jp     0x10003358
10003348:	d9 c2                	fld    st(2)
1000334a:	e8 81 05 00 00       	call   0x100038d0
1000334f:	8b c8                	mov    ecx,eax
10003351:	8b c6                	mov    eax,esi
10003353:	99                   	cdq    
10003354:	f7 f9                	idiv   ecx
10003356:	2b f2                	sub    esi,edx
10003358:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
1000335c:	da 6c 24 10          	fisubr DWORD PTR [esp+0x10]
10003360:	e8 6b 05 00 00       	call   0x100038d0
10003365:	de d9                	fcompp 
10003367:	8b c8                	mov    ecx,eax
10003369:	df e0                	fnstsw ax
1000336b:	f6 c4 41             	test   ah,0x41
1000336e:	75 07                	jne    0x10003377
10003370:	dd d8                	fstp   st(0)
10003372:	8d 04 09             	lea    eax,[ecx+ecx*1]
10003375:	eb 39                	jmp    0x100033b0
10003377:	8b c1                	mov    eax,ecx
10003379:	99                   	cdq    
1000337a:	83 e2 03             	and    edx,0x3
1000337d:	03 c2                	add    eax,edx
1000337f:	c1 f8 02             	sar    eax,0x2
10003382:	03 c0                	add    eax,eax
10003384:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10003388:	db 44 24 10          	fild   DWORD PTR [esp+0x10]
1000338c:	d9 7c 24 10          	fnstcw WORD PTR [esp+0x10]
10003390:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
10003395:	de c9                	fmulp  st(1),st
10003397:	0d 00 0c 00 00       	or     eax,0xc00
1000339c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
100033a0:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
100033a4:	df 7c 24 04          	fistp  QWORD PTR [esp+0x4]
100033a8:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100033ac:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
100033b0:	a8 01                	test   al,0x1
100033b2:	a3 98 60 01 10       	mov    ds:0x10016098,eax
100033b7:	74 08                	je     0x100033c1
100033b9:	83 c0 01             	add    eax,0x1
100033bc:	a3 98 60 01 10       	mov    ds:0x10016098,eax
100033c1:	8b c1                	mov    eax,ecx
100033c3:	5e                   	pop    esi
100033c4:	83 c4 08             	add    esp,0x8
100033c7:	c2 08 00             	ret    0x8
100033ca:	cc                   	int3   
100033cb:	cc                   	int3   
100033cc:	cc                   	int3   
100033cd:	cc                   	int3   
100033ce:	cc                   	int3   
100033cf:	cc                   	int3   
