1000d000 <.rdata>:
1000d000:	84 eb 00 00
1000d004:	7c e8 00 00
1000d008:	8a e8 00 00
1000d00c:	9a e8 00 00
1000d010:	a8 e8 00 00
1000d014:	b8 e8 00 00
1000d018:	d2 e8 00 00
1000d01c:	e0 e8 00 00
1000d020:	de ed 00 00
1000d024:	cc ed 00 00
1000d028:	ba ed 00 00
1000d02c:	a8 ed 00 00
1000d030:	98 ed 00 00
1000d034:	d4 e9 00 00
1000d038:	e0 e9 00 00
1000d03c:	ec e9 00 00
1000d040:	02 ea 00 00
1000d044:	14 ea 00 00
1000d048:	24 ea 00 00
1000d04c:	36 ea 00 00
1000d050:	48 ea 00 00
1000d054:	5c ea 00 00
1000d058:	6a ea 00 00
1000d05c:	78 ea 00 00
1000d060:	90 ea 00 00
1000d064:	a8 ea 00 00
1000d068:	c0 ea 00 00
1000d06c:	ce ea 00 00
1000d070:	dc ea 00 00
1000d074:	e8 ea 00 00
1000d078:	f8 ea 00 00
1000d07c:	0e eb 00 00
1000d080:	22 eb 00 00
1000d084:	36 eb 00 00
1000d088:	52 eb 00 00
1000d08c:	70 eb 00 00
1000d090:	92 eb 00 00
1000d094:	9e eb 00 00
1000d098:	ac eb 00 00
1000d09c:	b6 eb 00 00
1000d0a0:	ce eb 00 00
1000d0a4:	de eb 00 00
1000d0a8:	f6 eb 00 00
1000d0ac:	fe eb 00 00
1000d0b0:	10 ec 00 00
1000d0b4:	1e ec 00 00
1000d0b8:	30 ec 00 00
1000d0bc:	4a ec 00 00
1000d0c0:	62 ec 00 00
1000d0c4:	7c ec 00 00
1000d0c8:	92 ec 00 00
1000d0cc:	ac ec 00 00
1000d0d0:	c6 ec 00 00
1000d0d4:	d6 ec 00 00
1000d0d8:	ec ec 00 00
1000d0dc:	06 ed 00 00
1000d0e0:	12 ed 00 00
1000d0e4:	1c ed 00 00
1000d0e8:	28 ed 00 00
1000d0ec:	3a ed 00 00
1000d0f0:	56 ed 00 00
1000d0f4:	62 ed 00 00
1000d0f8:	72 ed 00 00
1000d0fc:	82 ed 00 00

1000d100:	00 00 00 00
1000d104:	f4 e7 00 00
1000d108:	32 e8 00 00
1000d10c:	56 e8 00 00
1000d110:	14 e8 00 00

1000d114:	00 00 00 00

1000d118:	52 e9 00 00
1000d11c:	3e e9 00 00
1000d120:	66 e9 00 00
1000d124:	10 e9 00 00
1000d128:	fe e8 00 00
1000d12c:	86 e9 00 00
1000d130:	a6 e9 00 00
1000d134:	ba e9 00 00
1000d138:	2a e9 00 00
	...
1000d14a:	00 00                	add    BYTE PTR [eax],al
1000d14c:	f7 49 00 10 4c 77 00 	test   DWORD PTR [ecx+0x0],0x774c10
1000d153:	10 b2 87 00 10 f4    	adc    BYTE PTR [edx-0xbefff79],dh
1000d159:	8b 00                	mov    eax,DWORD PTR [eax]
1000d15b:	10 00                	adc    BYTE PTR [eax],al
	...
1000d16d:	00 00                	add    BYTE PTR [eax],al
1000d16f:	00 19                	add    BYTE PTR [ecx],bl
1000d171:	4e                   	dec    esi
1000d172:	5d                   	pop    ebp
1000d173:	dc e4                	fsub   st(4),st
1000d175:	d8 e9                	fsubr  st,st(1)
1000d177:	4b                   	dec    ebx
1000d178:	9d                   	popf   
1000d179:	cd 71                	int    0x71
1000d17b:	a0 5d 36 fa cd       	mov    al,ds:0xcdfa365d
1000d180:	00 00 00 00 00 00 f0 41
1000d188:	00 00 00 00 00 00 80 40
1000d190:	00 00 00 00 00 00 10 40
1000d198:	00 00 00 00 00 00 00 40
1000d1a0:	00 00 00 00 00 00 79 40
1000d1a8:	cd cc                	int    0xcc
1000d1aa:	cc                   	int3   
1000d1ab:	cc                   	int3   
1000d1ac:	cc                   	int3   
1000d1ad:	cc                   	int3   
1000d1ae:	dc 3f                	fdivr  QWORD PTR [edi]
1000d1b0:	00 00                	add    BYTE PTR [eax],al
1000d1b2:	00 00                	add    BYTE PTR [eax],al
1000d1b4:	00 00                	add    BYTE PTR [eax],al
1000d1b6:	59                   	pop    ecx
1000d1b7:	40                   	inc    eax
1000d1b8:	9a 99 99 99 99 99 a9 	call   0xa999:0x99999999
1000d1bf:	3f                   	aas    
1000d1c0:	00 00                	add    BYTE PTR [eax],al
1000d1c2:	00 00                	add    BYTE PTR [eax],al
1000d1c4:	00 00                	add    BYTE PTR [eax],al
1000d1c6:	e0 3f                	loopne 0x1000d207
1000d1c8:	00 00                	add    BYTE PTR [eax],al
1000d1ca:	00 00                	add    BYTE PTR [eax],al
1000d1cc:	00 00                	add    BYTE PTR [eax],al
1000d1ce:	d0 3f                	sar    BYTE PTR [edi],1
1000d1d0:	00 00                	add    BYTE PTR [eax],al
1000d1d2:	00 00                	add    BYTE PTR [eax],al
1000d1d4:	00 40 7f             	add    BYTE PTR [eax+0x7f],al
1000d1d7:	40                   	inc    eax
1000d1d8:	00 00                	add    BYTE PTR [eax],al
1000d1da:	00 00                	add    BYTE PTR [eax],al
1000d1dc:	00 58 80             	add    BYTE PTR [eax-0x80],bl
1000d1df:	40                   	inc    eax
1000d1e0:	00 00                	add    BYTE PTR [eax],al
1000d1e2:	00 00                	add    BYTE PTR [eax],al
1000d1e4:	00 28                	add    BYTE PTR [eax],ch
1000d1e6:	88 40 00             	mov    BYTE PTR [eax+0x0],al
1000d1e9:	00 00                	add    BYTE PTR [eax],al
1000d1eb:	00 00                	add    BYTE PTR [eax],al
1000d1ed:	40                   	inc    eax
1000d1ee:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d1ef:	40                   	inc    eax
1000d1f0:	ad                   	lods   eax,DWORD PTR ds:[esi]
1000d1f1:	38 00                	cmp    BYTE PTR [eax],al
1000d1f3:	10 4c 38 00          	adc    BYTE PTR [eax+edi*1+0x0],cl
1000d1f7:	10 4c 38 00          	adc    BYTE PTR [eax+edi*1+0x0],cl
1000d1fb:	10 00                	adc    BYTE PTR [eax],al
1000d1fd:	00 00                	add    BYTE PTR [eax],al
1000d1ff:	00 65 2b             	add    BYTE PTR [ebp+0x2b],ah
1000d202:	30 30                	xor    BYTE PTR [eax],dh
1000d204:	30 00                	xor    BYTE PTR [eax],al
1000d206:	00 00                	add    BYTE PTR [eax],al
1000d208:	00 00                	add    BYTE PTR [eax],al
1000d20a:	00 c0                	add    al,al
1000d20c:	7e 01                	jle    0x1000d20f
1000d20e:	50                   	push   eax
1000d20f:	41                   	inc    ecx
1000d210:	00 00                	add    BYTE PTR [eax],al
1000d212:	00 80 ff ff 47 41    	add    BYTE PTR [eax+0x4147ffff],al
1000d218:	49                   	dec    ecx
1000d219:	73 50                	jae    0x1000d26b
1000d21b:	72 6f                	jb     0x1000d28c
1000d21d:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000d220:	73 6f                	jae    0x1000d291
1000d222:	72 46                	jb     0x1000d26a
1000d224:	65 61                	gs popa 
1000d226:	74 75                	je     0x1000d29d
1000d228:	72 65                	jb     0x1000d28f
1000d22a:	50                   	push   eax
1000d22b:	72 65                	jb     0x1000d292
1000d22d:	73 65                	jae    0x1000d294
1000d22f:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d230:	74 00                	je     0x1000d232
1000d232:	00 00                	add    BYTE PTR [eax],al
1000d234:	4b                   	dec    ebx
1000d235:	45                   	inc    ebp
1000d236:	52                   	push   edx
1000d237:	4e                   	dec    esi
1000d238:	45                   	inc    ebp
1000d239:	4c                   	dec    esp
1000d23a:	33 32                	xor    esi,DWORD PTR [edx]
1000d23c:	00 00                	add    BYTE PTR [eax],al
1000d23e:	00 00                	add    BYTE PTR [eax],al
1000d240:	43                   	inc    ebx
1000d241:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d242:	72 45                	jb     0x1000d289
1000d244:	78 69                	js     0x1000d2af
1000d246:	74 50                	je     0x1000d298
1000d248:	72 6f                	jb     0x1000d2b9
1000d24a:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000d24d:	73 00                	jae    0x1000d24f
1000d24f:	00 6d 73             	add    BYTE PTR [ebp+0x73],ch
1000d252:	63 6f 72             	arpl   WORD PTR [edi+0x72],bp
1000d255:	65 65 2e 64 6c       	gs gs cs fs ins BYTE PTR es:[edi],dx
1000d25a:	6c                   	ins    BYTE PTR es:[edi],dx
1000d25b:	00 72 75             	add    BYTE PTR [edx+0x75],dh
1000d25e:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d25f:	74 69                	je     0x1000d2ca
1000d261:	6d                   	ins    DWORD PTR es:[edi],dx
1000d262:	65 20 65 72          	and    BYTE PTR gs:[ebp+0x72],ah
1000d266:	72 6f                	jb     0x1000d2d7
1000d268:	72 20                	jb     0x1000d28a
1000d26a:	00 00                	add    BYTE PTR [eax],al
1000d26c:	0d 0a 00 00 54       	or     eax,0x5400000a
1000d271:	4c                   	dec    esp
1000d272:	4f                   	dec    edi
1000d273:	53                   	push   ebx
1000d274:	53                   	push   ebx
1000d275:	20 65 72             	and    BYTE PTR [ebp+0x72],ah
1000d278:	72 6f                	jb     0x1000d2e9
1000d27a:	72 0d                	jb     0x1000d289
1000d27c:	0a 00                	or     al,BYTE PTR [eax]
1000d27e:	00 00                	add    BYTE PTR [eax],al
1000d280:	53                   	push   ebx
1000d281:	49                   	dec    ecx
1000d282:	4e                   	dec    esi
1000d283:	47                   	inc    edi
1000d284:	20 65 72             	and    BYTE PTR [ebp+0x72],ah
1000d287:	72 6f                	jb     0x1000d2f8
1000d289:	72 0d                	jb     0x1000d298
1000d28b:	0a 00                	or     al,BYTE PTR [eax]
1000d28d:	00 00                	add    BYTE PTR [eax],al
1000d28f:	00 44 4f 4d          	add    BYTE PTR [edi+ecx*2+0x4d],al
1000d293:	41                   	inc    ecx
1000d294:	49                   	dec    ecx
1000d295:	4e                   	dec    esi
1000d296:	20 65 72             	and    BYTE PTR [ebp+0x72],ah
1000d299:	72 6f                	jb     0x1000d30a
1000d29b:	72 0d                	jb     0x1000d2aa
1000d29d:	0a 00                	or     al,BYTE PTR [eax]
1000d29f:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d2a2:	30 33                	xor    BYTE PTR [ebx],dh
1000d2a4:	34 0d                	xor    al,0xd
1000d2a6:	0a 41 6e             	or     al,BYTE PTR [ecx+0x6e]
1000d2a9:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
1000d2ac:	70 6c                	jo     0x1000d31a
1000d2ae:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
1000d2b5:	20 68 61             	and    BYTE PTR [eax+0x61],ch
1000d2b8:	73 20                	jae    0x1000d2da
1000d2ba:	6d                   	ins    DWORD PTR es:[edi],dx
1000d2bb:	61                   	popa   
1000d2bc:	64 65 20 61 6e       	fs and BYTE PTR gs:[ecx+0x6e],ah
1000d2c1:	20 61 74             	and    BYTE PTR [ecx+0x74],ah
1000d2c4:	74 65                	je     0x1000d32b
1000d2c6:	6d                   	ins    DWORD PTR es:[edi],dx
1000d2c7:	70 74                	jo     0x1000d33d
1000d2c9:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
1000d2cd:	6c                   	ins    BYTE PTR es:[edi],dx
1000d2ce:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d2cf:	61                   	popa   
1000d2d0:	64 20 74 68 65       	and    BYTE PTR fs:[eax+ebp*2+0x65],dh
1000d2d5:	20 43 20             	and    BYTE PTR [ebx+0x20],al
1000d2d8:	72 75                	jb     0x1000d34f
1000d2da:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d2db:	74 69                	je     0x1000d346
1000d2dd:	6d                   	ins    DWORD PTR es:[edi],dx
1000d2de:	65 20 6c 69 62       	and    BYTE PTR gs:[ecx+ebp*2+0x62],ch
1000d2e3:	72 61                	jb     0x1000d346
1000d2e5:	72 79                	jb     0x1000d360
1000d2e7:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
1000d2ea:	63 6f 72             	arpl   WORD PTR [edi+0x72],bp
1000d2ed:	72 65                	jb     0x1000d354
1000d2ef:	63 74 6c 79          	arpl   WORD PTR [esp+ebp*2+0x79],si
1000d2f3:	2e 0a 50 6c          	or     dl,BYTE PTR cs:[eax+0x6c]
1000d2f7:	65 61                	gs popa 
1000d2f9:	73 65                	jae    0x1000d360
1000d2fb:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
1000d2fe:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d2ff:	74 61                	je     0x1000d362
1000d301:	63 74 20 74          	arpl   WORD PTR [eax+eiz*1+0x74],si
1000d305:	68 65 20 61 70       	push   0x70612065
1000d30a:	70 6c                	jo     0x1000d378
1000d30c:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
1000d313:	27                   	daa    
1000d314:	73 20                	jae    0x1000d336
1000d316:	73 75                	jae    0x1000d38d
1000d318:	70 70                	jo     0x1000d38a
1000d31a:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d31b:	72 74                	jb     0x1000d391
1000d31d:	20 74 65 61          	and    BYTE PTR [ebp+eiz*2+0x61],dh
1000d321:	6d                   	ins    DWORD PTR es:[edi],dx
1000d322:	20 66 6f             	and    BYTE PTR [esi+0x6f],ah
1000d325:	72 20                	jb     0x1000d347
1000d327:	6d                   	ins    DWORD PTR es:[edi],dx
1000d328:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d329:	72 65                	jb     0x1000d390
1000d32b:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
1000d32e:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d330:	72 6d                	jb     0x1000d39f
1000d332:	61                   	popa   
1000d333:	74 69                	je     0x1000d39e
1000d335:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d336:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d337:	2e 0d 0a 00 00 00    	cs or  eax,0xa
1000d33d:	00 00                	add    BYTE PTR [eax],al
1000d33f:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d342:	30 33                	xor    BYTE PTR [ebx],dh
1000d344:	33 0d 0a 2d 20 41    	xor    ecx,DWORD PTR ds:0x41202d0a
1000d34a:	74 74                	je     0x1000d3c0
1000d34c:	65 6d                	gs ins DWORD PTR es:[edi],dx
1000d34e:	70 74                	jo     0x1000d3c4
1000d350:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
1000d354:	75 73                	jne    0x1000d3c9
1000d356:	65 20 4d 53          	and    BYTE PTR gs:[ebp+0x53],cl
1000d35a:	49                   	dec    ecx
1000d35b:	4c                   	dec    esp
1000d35c:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
1000d35f:	64 65 20 66 72       	fs and BYTE PTR gs:[esi+0x72],ah
1000d364:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d365:	6d                   	ins    DWORD PTR es:[edi],dx
1000d366:	20 74 68 69          	and    BYTE PTR [eax+ebp*2+0x69],dh
1000d36a:	73 20                	jae    0x1000d38c
1000d36c:	61                   	popa   
1000d36d:	73 73                	jae    0x1000d3e2
1000d36f:	65 6d                	gs ins DWORD PTR es:[edi],dx
1000d371:	62 6c 79 20          	bound  ebp,QWORD PTR [ecx+edi*2+0x20]
1000d375:	64 75 72             	fs jne 0x1000d3ea
1000d378:	69 6e 67 20 6e 61 74 	imul   ebp,DWORD PTR [esi+0x67],0x74616e20
1000d37f:	69 76 65 20 63 6f 64 	imul   esi,DWORD PTR [esi+0x65],0x646f6320
1000d386:	65 20 69 6e          	and    BYTE PTR gs:[ecx+0x6e],ch
1000d38a:	69 74 69 61 6c 69 7a 	imul   esi,DWORD PTR [ecx+ebp*2+0x61],0x617a696c
1000d391:	61 
1000d392:	74 69                	je     0x1000d3fd
1000d394:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d395:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d396:	0a 54 68 69          	or     dl,BYTE PTR [eax+ebp*2+0x69]
1000d39a:	73 20                	jae    0x1000d3bc
1000d39c:	69 6e 64 69 63 61 74 	imul   ebp,DWORD PTR [esi+0x64],0x74616369
1000d3a3:	65 73 20             	gs jae 0x1000d3c6
1000d3a6:	61                   	popa   
1000d3a7:	20 62 75             	and    BYTE PTR [edx+0x75],ah
1000d3aa:	67 20 69 6e          	and    BYTE PTR [bx+di+0x6e],ch
1000d3ae:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
1000d3b1:	75 72                	jne    0x1000d425
1000d3b3:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
1000d3b6:	70 6c                	jo     0x1000d424
1000d3b8:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
1000d3bf:	2e 20 49 74          	and    BYTE PTR cs:[ecx+0x74],cl
1000d3c3:	20 69 73             	and    BYTE PTR [ecx+0x73],ch
1000d3c6:	20 6d 6f             	and    BYTE PTR [ebp+0x6f],ch
1000d3c9:	73 74                	jae    0x1000d43f
1000d3cb:	20 6c 69 6b          	and    BYTE PTR [ecx+ebp*2+0x6b],ch
1000d3cf:	65 6c                	gs ins BYTE PTR es:[edi],dx
1000d3d1:	79 20                	jns    0x1000d3f3
1000d3d3:	74 68                	je     0x1000d43d
1000d3d5:	65 20 72 65          	and    BYTE PTR gs:[edx+0x65],dh
1000d3d9:	73 75                	jae    0x1000d450
1000d3db:	6c                   	ins    BYTE PTR es:[edi],dx
1000d3dc:	74 20                	je     0x1000d3fe
1000d3de:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d3df:	66 20 63 61          	data16 and BYTE PTR [ebx+0x61],ah
1000d3e3:	6c                   	ins    BYTE PTR es:[edi],dx
1000d3e4:	6c                   	ins    BYTE PTR es:[edi],dx
1000d3e5:	69 6e 67 20 61 6e 20 	imul   ebp,DWORD PTR [esi+0x67],0x206e6120
1000d3ec:	4d                   	dec    ebp
1000d3ed:	53                   	push   ebx
1000d3ee:	49                   	dec    ecx
1000d3ef:	4c                   	dec    esp
1000d3f0:	2d 63 6f 6d 70       	sub    eax,0x706d6f63
1000d3f5:	69 6c 65 64 20 28 2f 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x632f2820
1000d3fc:	63 
1000d3fd:	6c                   	ins    BYTE PTR es:[edi],dx
1000d3fe:	72 29                	jb     0x1000d429
1000d400:	20 66 75             	and    BYTE PTR [esi+0x75],ah
1000d403:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d404:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
1000d408:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d409:	20 66 72             	and    BYTE PTR [esi+0x72],ah
1000d40c:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d40d:	6d                   	ins    DWORD PTR es:[edi],dx
1000d40e:	20 61 20             	and    BYTE PTR [ecx+0x20],ah
1000d411:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d412:	61                   	popa   
1000d413:	74 69                	je     0x1000d47e
1000d415:	76 65                	jbe    0x1000d47c
1000d417:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
1000d41a:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d41b:	73 74                	jae    0x1000d491
1000d41d:	72 75                	jb     0x1000d494
1000d41f:	63 74 6f 72          	arpl   WORD PTR [edi+ebp*2+0x72],si
1000d423:	20 6f 72             	and    BYTE PTR [edi+0x72],ch
1000d426:	20 66 72             	and    BYTE PTR [esi+0x72],ah
1000d429:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d42a:	6d                   	ins    DWORD PTR es:[edi],dx
1000d42b:	20 44 6c 6c          	and    BYTE PTR [esp+ebp*2+0x6c],al
1000d42f:	4d                   	dec    ebp
1000d430:	61                   	popa   
1000d431:	69 6e 2e 0d 0a 00 00 	imul   ebp,DWORD PTR [esi+0x2e],0xa0d
1000d438:	52                   	push   edx
1000d439:	36 30 33             	xor    BYTE PTR ss:[ebx],dh
1000d43c:	32 0d 0a 2d 20 6e    	xor    cl,BYTE PTR ds:0x6e202d0a
1000d442:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d443:	74 20                	je     0x1000d465
1000d445:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d447:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d448:	75 67                	jne    0x1000d4b1
1000d44a:	68 20 73 70 61       	push   0x61707320
1000d44f:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d452:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d454:	72 20                	jb     0x1000d476
1000d456:	6c                   	ins    BYTE PTR es:[edi],dx
1000d457:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d458:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000d45b:	65 20 69 6e          	and    BYTE PTR gs:[ecx+0x6e],ch
1000d45f:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d461:	72 6d                	jb     0x1000d4d0
1000d463:	61                   	popa   
1000d464:	74 69                	je     0x1000d4cf
1000d466:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d467:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d468:	0d 0a 00 00 00       	or     eax,0xa
1000d46d:	00 00                	add    BYTE PTR [eax],al
1000d46f:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d472:	30 33                	xor    BYTE PTR [ebx],dh
1000d474:	31 0d 0a 2d 20 41    	xor    DWORD PTR ds:0x41202d0a,ecx
1000d47a:	74 74                	je     0x1000d4f0
1000d47c:	65 6d                	gs ins DWORD PTR es:[edi],dx
1000d47e:	70 74                	jo     0x1000d4f4
1000d480:	20 74 6f 20          	and    BYTE PTR [edi+ebp*2+0x20],dh
1000d484:	69 6e 69 74 69 61 6c 	imul   ebp,DWORD PTR [esi+0x69],0x6c616974
1000d48b:	69 7a 65 20 74 68 65 	imul   edi,DWORD PTR [edx+0x65],0x65687420
1000d492:	20 43 52             	and    BYTE PTR [ebx+0x52],al
1000d495:	54                   	push   esp
1000d496:	20 6d 6f             	and    BYTE PTR [ebp+0x6f],ch
1000d499:	72 65                	jb     0x1000d500
1000d49b:	20 74 68 61          	and    BYTE PTR [eax+ebp*2+0x61],dh
1000d49f:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d4a0:	20 6f 6e             	and    BYTE PTR [edi+0x6e],ch
1000d4a3:	63 65 2e             	arpl   WORD PTR [ebp+0x2e],sp
1000d4a6:	0a 54 68 69          	or     dl,BYTE PTR [eax+ebp*2+0x69]
1000d4aa:	73 20                	jae    0x1000d4cc
1000d4ac:	69 6e 64 69 63 61 74 	imul   ebp,DWORD PTR [esi+0x64],0x74616369
1000d4b3:	65 73 20             	gs jae 0x1000d4d6
1000d4b6:	61                   	popa   
1000d4b7:	20 62 75             	and    BYTE PTR [edx+0x75],ah
1000d4ba:	67 20 69 6e          	and    BYTE PTR [bx+di+0x6e],ch
1000d4be:	20 79 6f             	and    BYTE PTR [ecx+0x6f],bh
1000d4c1:	75 72                	jne    0x1000d535
1000d4c3:	20 61 70             	and    BYTE PTR [ecx+0x70],ah
1000d4c6:	70 6c                	jo     0x1000d534
1000d4c8:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
1000d4cf:	2e 0d 0a 00 00 52    	cs or  eax,0x5200000a
1000d4d5:	36 30 33             	xor    BYTE PTR ss:[ebx],dh
1000d4d8:	30 0d 0a 2d 20 43    	xor    BYTE PTR ds:0x43202d0a,cl
1000d4de:	52                   	push   edx
1000d4df:	54                   	push   esp
1000d4e0:	20 6e 6f             	and    BYTE PTR [esi+0x6f],ch
1000d4e3:	74 20                	je     0x1000d505
1000d4e5:	69 6e 69 74 69 61 6c 	imul   ebp,DWORD PTR [esi+0x69],0x6c616974
1000d4ec:	69 7a 65 64 0d 0a 00 	imul   edi,DWORD PTR [edx+0x65],0xa0d64
1000d4f3:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d4f6:	30 32                	xor    BYTE PTR [edx],dh
1000d4f8:	38 0d 0a 2d 20 75    	cmp    BYTE PTR ds:0x75202d0a,cl
1000d4fe:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d4ff:	61                   	popa   
1000d500:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
1000d504:	74 6f                	je     0x1000d575
1000d506:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
1000d509:	69 74 69 61 6c 69 7a 	imul   esi,DWORD PTR [ecx+ebp*2+0x61],0x657a696c
1000d510:	65 
1000d511:	20 68 65             	and    BYTE PTR [eax+0x65],ch
1000d514:	61                   	popa   
1000d515:	70 0d                	jo     0x1000d524
1000d517:	0a 00                	or     al,BYTE PTR [eax]
1000d519:	00 00                	add    BYTE PTR [eax],al
1000d51b:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d51e:	30 32                	xor    BYTE PTR [edx],dh
1000d520:	37                   	aaa    
1000d521:	0d 0a 2d 20 6e       	or     eax,0x6e202d0a
1000d526:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d527:	74 20                	je     0x1000d549
1000d529:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d52b:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d52c:	75 67                	jne    0x1000d595
1000d52e:	68 20 73 70 61       	push   0x61707320
1000d533:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d536:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d538:	72 20                	jb     0x1000d55a
1000d53a:	6c                   	ins    BYTE PTR es:[edi],dx
1000d53b:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d53c:	77 69                	ja     0x1000d5a7
1000d53e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d53f:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
1000d542:	69 74 69 61 6c 69 7a 	imul   esi,DWORD PTR [ecx+ebp*2+0x61],0x617a696c
1000d549:	61 
1000d54a:	74 69                	je     0x1000d5b5
1000d54c:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d54d:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d54e:	0d 0a 00 00 00       	or     eax,0xa
1000d553:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d556:	30 32                	xor    BYTE PTR [edx],dh
1000d558:	36 0d 0a 2d 20 6e    	ss or  eax,0x6e202d0a
1000d55e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d55f:	74 20                	je     0x1000d581
1000d561:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d563:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d564:	75 67                	jne    0x1000d5cd
1000d566:	68 20 73 70 61       	push   0x61707320
1000d56b:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d56e:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d570:	72 20                	jb     0x1000d592
1000d572:	73 74                	jae    0x1000d5e8
1000d574:	64 69 6f 20 69 6e 69 	imul   ebp,DWORD PTR fs:[edi+0x20],0x74696e69
1000d57b:	74 
1000d57c:	69 61 6c 69 7a 61 74 	imul   esp,DWORD PTR [ecx+0x6c],0x74617a69
1000d583:	69 6f 6e 0d 0a 00 00 	imul   ebp,DWORD PTR [edi+0x6e],0xa0d
1000d58a:	00 00                	add    BYTE PTR [eax],al
1000d58c:	52                   	push   edx
1000d58d:	36 30 32             	xor    BYTE PTR ss:[edx],dh
1000d590:	35 0d 0a 2d 20       	xor    eax,0x202d0a0d
1000d595:	70 75                	jo     0x1000d60c
1000d597:	72 65                	jb     0x1000d5fe
1000d599:	20 76 69             	and    BYTE PTR [esi+0x69],dh
1000d59c:	72 74                	jb     0x1000d612
1000d59e:	75 61                	jne    0x1000d601
1000d5a0:	6c                   	ins    BYTE PTR es:[edi],dx
1000d5a1:	20 66 75             	and    BYTE PTR [esi+0x75],ah
1000d5a4:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d5a5:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],si
1000d5a9:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d5aa:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
1000d5ad:	6c                   	ins    BYTE PTR es:[edi],dx
1000d5ae:	6c                   	ins    BYTE PTR es:[edi],dx
1000d5af:	0d 0a 00 00 00       	or     eax,0xa
1000d5b4:	52                   	push   edx
1000d5b5:	36 30 32             	xor    BYTE PTR ss:[edx],dh
1000d5b8:	34 0d                	xor    al,0xd
1000d5ba:	0a 2d 20 6e 6f 74    	or     ch,BYTE PTR ds:0x746f6e20
1000d5c0:	20 65 6e             	and    BYTE PTR [ebp+0x6e],ah
1000d5c3:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d5c4:	75 67                	jne    0x1000d62d
1000d5c6:	68 20 73 70 61       	push   0x61707320
1000d5cb:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d5ce:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d5d0:	72 20                	jb     0x1000d5f2
1000d5d2:	5f                   	pop    edi
1000d5d3:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d5d4:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d5d5:	65 78 69             	gs js  0x1000d641
1000d5d8:	74 2f                	je     0x1000d609
1000d5da:	61                   	popa   
1000d5db:	74 65                	je     0x1000d642
1000d5dd:	78 69                	js     0x1000d648
1000d5df:	74 20                	je     0x1000d601
1000d5e1:	74 61                	je     0x1000d644
1000d5e3:	62 6c 65 0d          	bound  ebp,QWORD PTR [ebp+eiz*2+0xd]
1000d5e7:	0a 00                	or     al,BYTE PTR [eax]
1000d5e9:	00 00                	add    BYTE PTR [eax],al
1000d5eb:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d5ee:	30 31                	xor    BYTE PTR [ecx],dh
1000d5f0:	39 0d 0a 2d 20 75    	cmp    DWORD PTR ds:0x75202d0a,ecx
1000d5f6:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d5f7:	61                   	popa   
1000d5f8:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
1000d5fc:	74 6f                	je     0x1000d66d
1000d5fe:	20 6f 70             	and    BYTE PTR [edi+0x70],ch
1000d601:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d603:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
1000d606:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d607:	73 6f                	jae    0x1000d678
1000d609:	6c                   	ins    BYTE PTR es:[edi],dx
1000d60a:	65 20 64 65 76       	and    BYTE PTR gs:[ebp+eiz*2+0x76],ah
1000d60f:	69 63 65 0d 0a 00 00 	imul   esp,DWORD PTR [ebx+0x65],0xa0d
1000d616:	00 00                	add    BYTE PTR [eax],al
1000d618:	52                   	push   edx
1000d619:	36 30 31             	xor    BYTE PTR ss:[ecx],dh
1000d61c:	38 0d 0a 2d 20 75    	cmp    BYTE PTR ds:0x75202d0a,cl
1000d622:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d623:	65 78 70             	gs js  0x1000d696
1000d626:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
1000d62b:	20 68 65             	and    BYTE PTR [eax+0x65],ch
1000d62e:	61                   	popa   
1000d62f:	70 20                	jo     0x1000d651
1000d631:	65 72 72             	gs jb  0x1000d6a6
1000d634:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d635:	72 0d                	jb     0x1000d644
1000d637:	0a 00                	or     al,BYTE PTR [eax]
1000d639:	00 00                	add    BYTE PTR [eax],al
1000d63b:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d63e:	30 31                	xor    BYTE PTR [ecx],dh
1000d640:	37                   	aaa    
1000d641:	0d 0a 2d 20 75       	or     eax,0x75202d0a
1000d646:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d647:	65 78 70             	gs js  0x1000d6ba
1000d64a:	65 63 74 65 64       	arpl   WORD PTR gs:[ebp+eiz*2+0x64],si
1000d64f:	20 6d 75             	and    BYTE PTR [ebp+0x75],ch
1000d652:	6c                   	ins    BYTE PTR es:[edi],dx
1000d653:	74 69                	je     0x1000d6be
1000d655:	74 68                	je     0x1000d6bf
1000d657:	72 65                	jb     0x1000d6be
1000d659:	61                   	popa   
1000d65a:	64 20 6c 6f 63       	and    BYTE PTR fs:[edi+ebp*2+0x63],ch
1000d65f:	6b 20 65             	imul   esp,DWORD PTR [eax],0x65
1000d662:	72 72                	jb     0x1000d6d6
1000d664:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d665:	72 0d                	jb     0x1000d674
1000d667:	0a 00                	or     al,BYTE PTR [eax]
1000d669:	00 00                	add    BYTE PTR [eax],al
1000d66b:	00 52 36             	add    BYTE PTR [edx+0x36],dl
1000d66e:	30 31                	xor    BYTE PTR [ecx],dh
1000d670:	36 0d 0a 2d 20 6e    	ss or  eax,0x6e202d0a
1000d676:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d677:	74 20                	je     0x1000d699
1000d679:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d67b:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d67c:	75 67                	jne    0x1000d6e5
1000d67e:	68 20 73 70 61       	push   0x61707320
1000d683:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d686:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d688:	72 20                	jb     0x1000d6aa
1000d68a:	74 68                	je     0x1000d6f4
1000d68c:	72 65                	jb     0x1000d6f3
1000d68e:	61                   	popa   
1000d68f:	64 20 64 61 74       	and    BYTE PTR fs:[ecx+eiz*2+0x74],ah
1000d694:	61                   	popa   
1000d695:	0d 0a 00 0d 0a       	or     eax,0xa0d000a
1000d69a:	54                   	push   esp
1000d69b:	68 69 73 20 61       	push   0x61207369
1000d6a0:	70 70                	jo     0x1000d712
1000d6a2:	6c                   	ins    BYTE PTR es:[edi],dx
1000d6a3:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
1000d6aa:	20 68 61             	and    BYTE PTR [eax+0x61],ch
1000d6ad:	73 20                	jae    0x1000d6cf
1000d6af:	72 65                	jb     0x1000d716
1000d6b1:	71 75                	jno    0x1000d728
1000d6b3:	65 73 74             	gs jae 0x1000d72a
1000d6b6:	65 64 20 74 68 65    	gs and BYTE PTR fs:[eax+ebp*2+0x65],dh
1000d6bc:	20 52 75             	and    BYTE PTR [edx+0x75],dl
1000d6bf:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d6c0:	74 69                	je     0x1000d72b
1000d6c2:	6d                   	ins    DWORD PTR es:[edi],dx
1000d6c3:	65 20 74 6f 20       	and    BYTE PTR gs:[edi+ebp*2+0x20],dh
1000d6c8:	74 65                	je     0x1000d72f
1000d6ca:	72 6d                	jb     0x1000d739
1000d6cc:	69 6e 61 74 65 20 69 	imul   ebp,DWORD PTR [esi+0x61],0x69206574
1000d6d3:	74 20                	je     0x1000d6f5
1000d6d5:	69 6e 20 61 6e 20 75 	imul   ebp,DWORD PTR [esi+0x20],0x75206e61
1000d6dc:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d6dd:	75 73                	jne    0x1000d752
1000d6df:	75 61                	jne    0x1000d742
1000d6e1:	6c                   	ins    BYTE PTR es:[edi],dx
1000d6e2:	20 77 61             	and    BYTE PTR [edi+0x61],dh
1000d6e5:	79 2e                	jns    0x1000d715
1000d6e7:	0a 50 6c             	or     dl,BYTE PTR [eax+0x6c]
1000d6ea:	65 61                	gs popa 
1000d6ec:	73 65                	jae    0x1000d753
1000d6ee:	20 63 6f             	and    BYTE PTR [ebx+0x6f],ah
1000d6f1:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d6f2:	74 61                	je     0x1000d755
1000d6f4:	63 74 20 74          	arpl   WORD PTR [eax+eiz*1+0x74],si
1000d6f8:	68 65 20 61 70       	push   0x70612065
1000d6fd:	70 6c                	jo     0x1000d76b
1000d6ff:	69 63 61 74 69 6f 6e 	imul   esp,DWORD PTR [ebx+0x61],0x6e6f6974
1000d706:	27                   	daa    
1000d707:	73 20                	jae    0x1000d729
1000d709:	73 75                	jae    0x1000d780
1000d70b:	70 70                	jo     0x1000d77d
1000d70d:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d70e:	72 74                	jb     0x1000d784
1000d710:	20 74 65 61          	and    BYTE PTR [ebp+eiz*2+0x61],dh
1000d714:	6d                   	ins    DWORD PTR es:[edi],dx
1000d715:	20 66 6f             	and    BYTE PTR [esi+0x6f],ah
1000d718:	72 20                	jb     0x1000d73a
1000d71a:	6d                   	ins    DWORD PTR es:[edi],dx
1000d71b:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d71c:	72 65                	jb     0x1000d783
1000d71e:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
1000d721:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d723:	72 6d                	jb     0x1000d792
1000d725:	61                   	popa   
1000d726:	74 69                	je     0x1000d791
1000d728:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d729:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d72a:	2e 0d 0a 00 00 00    	cs or  eax,0xa
1000d730:	52                   	push   edx
1000d731:	36 30 30             	xor    BYTE PTR ss:[eax],dh
1000d734:	39 0d 0a 2d 20 6e    	cmp    DWORD PTR ds:0x6e202d0a,ecx
1000d73a:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d73b:	74 20                	je     0x1000d75d
1000d73d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d73f:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d740:	75 67                	jne    0x1000d7a9
1000d742:	68 20 73 70 61       	push   0x61707320
1000d747:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d74a:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d74c:	72 20                	jb     0x1000d76e
1000d74e:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d750:	76 69                	jbe    0x1000d7bb
1000d752:	72 6f                	jb     0x1000d7c3
1000d754:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d755:	6d                   	ins    DWORD PTR es:[edi],dx
1000d756:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d758:	74 0d                	je     0x1000d767
1000d75a:	0a 00                	or     al,BYTE PTR [eax]
1000d75c:	52                   	push   edx
1000d75d:	36 30 30             	xor    BYTE PTR ss:[eax],dh
1000d760:	38 0d 0a 2d 20 6e    	cmp    BYTE PTR ds:0x6e202d0a,cl
1000d766:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d767:	74 20                	je     0x1000d789
1000d769:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d76b:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d76c:	75 67                	jne    0x1000d7d5
1000d76e:	68 20 73 70 61       	push   0x61707320
1000d773:	63 65 20             	arpl   WORD PTR [ebp+0x20],sp
1000d776:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d778:	72 20                	jb     0x1000d79a
1000d77a:	61                   	popa   
1000d77b:	72 67                	jb     0x1000d7e4
1000d77d:	75 6d                	jne    0x1000d7ec
1000d77f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000d781:	74 73                	je     0x1000d7f6
1000d783:	0d 0a 00 00 00       	or     eax,0xa
1000d788:	52                   	push   edx
1000d789:	36 30 30             	xor    BYTE PTR ss:[eax],dh
1000d78c:	32 0d 0a 2d 20 66    	xor    cl,BYTE PTR ds:0x66202d0a
1000d792:	6c                   	ins    BYTE PTR es:[edi],dx
1000d793:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d794:	61                   	popa   
1000d795:	74 69                	je     0x1000d800
1000d797:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d798:	67 20 70 6f          	and    BYTE PTR [bx+si+0x6f],dh
1000d79c:	69 6e 74 20 73 75 70 	imul   ebp,DWORD PTR [esi+0x74],0x70757320
1000d7a3:	70 6f                	jo     0x1000d814
1000d7a5:	72 74                	jb     0x1000d81b
1000d7a7:	20 6e 6f             	and    BYTE PTR [esi+0x6f],ch
1000d7aa:	74 20                	je     0x1000d7cc
1000d7ac:	6c                   	ins    BYTE PTR es:[edi],dx
1000d7ad:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d7ae:	61                   	popa   
1000d7af:	64 65 64 0d 0a 00 00 	fs gs fs or eax,0xa
1000d7b6:	00 
1000d7b7:	00 4d 69             	add    BYTE PTR [ebp+0x69],cl
1000d7ba:	63 72 6f             	arpl   WORD PTR [edx+0x6f],si
1000d7bd:	73 6f                	jae    0x1000d82e
1000d7bf:	66 74 20             	data16 je 0x1000d7e2
1000d7c2:	56                   	push   esi
1000d7c3:	69 73 75 61 6c 20 43 	imul   esi,DWORD PTR [ebx+0x75],0x43206c61
1000d7ca:	2b 2b                	sub    ebp,DWORD PTR [ebx]
1000d7cc:	20 52 75             	and    BYTE PTR [edx+0x75],dl
1000d7cf:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d7d0:	74 69                	je     0x1000d83b
1000d7d2:	6d                   	ins    DWORD PTR es:[edi],dx
1000d7d3:	65 20 4c 69 62       	and    BYTE PTR gs:[ecx+ebp*2+0x62],cl
1000d7d8:	72 61                	jb     0x1000d83b
1000d7da:	72 79                	jb     0x1000d855
1000d7dc:	00 00                	add    BYTE PTR [eax],al
1000d7de:	00 00                	add    BYTE PTR [eax],al
1000d7e0:	0a 0a                	or     cl,BYTE PTR [edx]
1000d7e2:	00 00                	add    BYTE PTR [eax],al
1000d7e4:	2e 2e 2e 00 3c 70    	cs cs add BYTE PTR cs:[eax+esi*2],bh
1000d7ea:	72 6f                	jb     0x1000d85b
1000d7ec:	67 72 61             	addr16 jb 0x1000d850
1000d7ef:	6d                   	ins    DWORD PTR es:[edi],dx
1000d7f0:	20 6e 61             	and    BYTE PTR [esi+0x61],ch
1000d7f3:	6d                   	ins    DWORD PTR es:[edi],dx
1000d7f4:	65 20 75 6e          	and    BYTE PTR gs:[ebp+0x6e],dh
1000d7f8:	6b 6e 6f 77          	imul   ebp,DWORD PTR [esi+0x6f],0x77
1000d7fc:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d7fd:	3e 00 00             	add    BYTE PTR ds:[eax],al
1000d800:	52                   	push   edx
1000d801:	75 6e                	jne    0x1000d871
1000d803:	74 69                	je     0x1000d86e
1000d805:	6d                   	ins    DWORD PTR es:[edi],dx
1000d806:	65 20 45 72          	and    BYTE PTR gs:[ebp+0x72],al
1000d80a:	72 6f                	jb     0x1000d87b
1000d80c:	72 21                	jb     0x1000d82f
1000d80e:	0a 0a                	or     cl,BYTE PTR [edx]
1000d810:	50                   	push   eax
1000d811:	72 6f                	jb     0x1000d882
1000d813:	67 72 61             	addr16 jb 0x1000d877
1000d816:	6d                   	ins    DWORD PTR es:[edi],dx
1000d817:	3a 20                	cmp    ah,BYTE PTR [eax]
1000d819:	00 00                	add    BYTE PTR [eax],al
1000d81b:	00 10                	add    BYTE PTR [eax],dl
1000d81d:	57                   	push   edi
1000d81e:	01 10                	add    DWORD PTR [eax],edx
1000d820:	68 57 01 10 2e       	push   0x2e100157
1000d825:	6d                   	ins    DWORD PTR es:[edi],dx
1000d826:	69 78 63 72 74 00 45 	imul   edi,DWORD PTR [eax+0x63],0x45007472
1000d82d:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d82e:	63 6f 64             	arpl   WORD PTR [edi+0x64],bp
1000d831:	65 50                	gs push eax
1000d833:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d834:	69 6e 74 65 72 00 00 	imul   ebp,DWORD PTR [esi+0x74],0x7265
1000d83b:	00 4b 45             	add    BYTE PTR [ebx+0x45],cl
1000d83e:	52                   	push   edx
1000d83f:	4e                   	dec    esi
1000d840:	45                   	inc    ebp
1000d841:	4c                   	dec    esp
1000d842:	33 32                	xor    esi,DWORD PTR [edx]
1000d844:	2e 44                	cs inc esp
1000d846:	4c                   	dec    esp
1000d847:	4c                   	dec    esp
1000d848:	00 00                	add    BYTE PTR [eax],al
1000d84a:	00 00                	add    BYTE PTR [eax],al
1000d84c:	44                   	inc    esp
1000d84d:	65 63 6f 64          	arpl   WORD PTR gs:[edi+0x64],bp
1000d851:	65 50                	gs push eax
1000d853:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d854:	69 6e 74 65 72 00 00 	imul   ebp,DWORD PTR [esi+0x74],0x7265
1000d85b:	00 46 6c             	add    BYTE PTR [esi+0x6c],al
1000d85e:	73 46                	jae    0x1000d8a6
1000d860:	72 65                	jb     0x1000d8c7
1000d862:	65 00 46 6c          	add    BYTE PTR gs:[esi+0x6c],al
1000d866:	73 53                	jae    0x1000d8bb
1000d868:	65 74 56             	gs je  0x1000d8c1
1000d86b:	61                   	popa   
1000d86c:	6c                   	ins    BYTE PTR es:[edi],dx
1000d86d:	75 65                	jne    0x1000d8d4
1000d86f:	00 46 6c             	add    BYTE PTR [esi+0x6c],al
1000d872:	73 47                	jae    0x1000d8bb
1000d874:	65 74 56             	gs je  0x1000d8cd
1000d877:	61                   	popa   
1000d878:	6c                   	ins    BYTE PTR es:[edi],dx
1000d879:	75 65                	jne    0x1000d8e0
1000d87b:	00 46 6c             	add    BYTE PTR [esi+0x6c],al
1000d87e:	73 41
1000d880:	6c   
1000d881:	6c   
1000d882:	6f   
1000d883:	63 00
1000d885:	00 00
1000d887:	00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f
1000d897:	10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f
1000d8a7:	20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f
1000d8b7:	30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f
1000d8c7:	40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f
1000d8d7:	50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f
1000d8e7:	60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
1000d8f7:	70 71 72 73 74 75 76 77 78 79 7a 7b 7c 7d 7e 7f
1000d907:	00 49 6e
1000d90a:	69 74 69 61 6c 69 7a
1000d911:	65 
1000d912:	43                   	inc    ebx
1000d913:	72 69                	jb     0x1000d97e
1000d915:	74 69                	je     0x1000d980
1000d917:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000d91a:	53                   	push   ebx
1000d91b:	65 63 74 69 6f       	arpl   WORD PTR gs:[ecx+ebp*2+0x6f],si
1000d920:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d921:	41                   	inc    ecx
1000d922:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d923:	64 53                	fs push ebx
1000d925:	70 69                	jo     0x1000d990
1000d927:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d928:	43                   	inc    ebx
1000d929:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d92a:	75 6e                	jne    0x1000d99a
1000d92c:	74 00                	je     0x1000d92e
1000d92e:	00 00                	add    BYTE PTR [eax],al
1000d930:	6b 65 72 6e          	imul   esp,DWORD PTR [ebp+0x72],0x6e
1000d934:	65 6c                	gs ins BYTE PTR es:[edi],dx
1000d936:	33 32                	xor    esi,DWORD PTR [edx]
1000d938:	2e 64 6c             	cs fs ins BYTE PTR es:[edi],dx
1000d93b:	6c                   	ins    BYTE PTR es:[edi],dx
1000d93c:	00 00                	add    BYTE PTR [eax],al
1000d93e:	00 00                	add    BYTE PTR [eax],al
1000d940:	47                   	inc    edi
1000d941:	65 74 50             	gs je  0x1000d994
1000d944:	72 6f                	jb     0x1000d9b5
1000d946:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000d949:	73 57                	jae    0x1000d9a2
1000d94b:	69 6e 64 6f 77 53 74 	imul   ebp,DWORD PTR [esi+0x64],0x7453776f
1000d952:	61                   	popa   
1000d953:	74 69                	je     0x1000d9be
1000d955:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d956:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d957:	00 47 65             	add    BYTE PTR [edi+0x65],al
1000d95a:	74 55                	je     0x1000d9b1
1000d95c:	73 65                	jae    0x1000d9c3
1000d95e:	72 4f                	jb     0x1000d9af
1000d960:	62 6a 65             	bound  ebp,QWORD PTR [edx+0x65]
1000d963:	63 74 49 6e          	arpl   WORD PTR [ecx+ecx*2+0x6e],si
1000d967:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000d969:	72 6d                	jb     0x1000d9d8
1000d96b:	61                   	popa   
1000d96c:	74 69                	je     0x1000d9d7
1000d96e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d96f:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000d970:	41                   	inc    ecx
1000d971:	00 00                	add    BYTE PTR [eax],al
1000d973:	00 47 65             	add    BYTE PTR [edi+0x65],al
1000d976:	74 4c                	je     0x1000d9c4
1000d978:	61                   	popa   
1000d979:	73 74                	jae    0x1000d9ef
1000d97b:	41                   	inc    ecx
1000d97c:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
1000d980:	65 50                	gs push eax
1000d982:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d983:	70 75                	jo     0x1000d9fa
1000d985:	70 00                	jo     0x1000d987
1000d987:	00 47 65             	add    BYTE PTR [edi+0x65],al
1000d98a:	74 41                	je     0x1000d9cd
1000d98c:	63 74 69 76          	arpl   WORD PTR [ecx+ebp*2+0x76],si
1000d990:	65 57                	gs push edi
1000d992:	69 6e 64 6f 77 00 4d 	imul   ebp,DWORD PTR [esi+0x64],0x4d00776f
1000d999:	65 73 73             	gs jae 0x1000da0f
1000d99c:	61                   	popa   
1000d99d:	67 65 42             	addr16 gs inc edx
1000d9a0:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000d9a1:	78 41                	js     0x1000d9e4
1000d9a3:	00 55 53             	add    BYTE PTR [ebp+0x53],dl
1000d9a6:	45                   	inc    ebp
1000d9a7:	52                   	push   edx
1000d9a8:	33 32                	xor    esi,DWORD PTR [edx]
1000d9aa:	2e 44                	cs inc esp
1000d9ac:	4c                   	dec    esp
1000d9ad:	4c                   	dec    esp
	...
1000dab6:	00 00                	add    BYTE PTR [eax],al
1000dab8:	20 00                	and    BYTE PTR [eax],al
1000daba:	20 00                	and    BYTE PTR [eax],al
1000dabc:	20 00                	and    BYTE PTR [eax],al
1000dabe:	20 00                	and    BYTE PTR [eax],al
1000dac0:	20 00                	and    BYTE PTR [eax],al
1000dac2:	20 00                	and    BYTE PTR [eax],al
1000dac4:	20 00                	and    BYTE PTR [eax],al
1000dac6:	20 00                	and    BYTE PTR [eax],al
1000dac8:	20 00                	and    BYTE PTR [eax],al
1000daca:	28 00                	sub    BYTE PTR [eax],al
1000dacc:	28 00                	sub    BYTE PTR [eax],al
1000dace:	28 00                	sub    BYTE PTR [eax],al
1000dad0:	28 00                	sub    BYTE PTR [eax],al
1000dad2:	28 00                	sub    BYTE PTR [eax],al
1000dad4:	20 00                	and    BYTE PTR [eax],al
1000dad6:	20 00                	and    BYTE PTR [eax],al
1000dad8:	20 00                	and    BYTE PTR [eax],al
1000dada:	20 00                	and    BYTE PTR [eax],al
1000dadc:	20 00                	and    BYTE PTR [eax],al
1000dade:	20 00                	and    BYTE PTR [eax],al
1000dae0:	20 00                	and    BYTE PTR [eax],al
1000dae2:	20 00                	and    BYTE PTR [eax],al
1000dae4:	20 00                	and    BYTE PTR [eax],al
1000dae6:	20 00                	and    BYTE PTR [eax],al
1000dae8:	20 00                	and    BYTE PTR [eax],al
1000daea:	20 00                	and    BYTE PTR [eax],al
1000daec:	20 00                	and    BYTE PTR [eax],al
1000daee:	20 00                	and    BYTE PTR [eax],al
1000daf0:	20 00                	and    BYTE PTR [eax],al
1000daf2:	20 00                	and    BYTE PTR [eax],al
1000daf4:	20 00                	and    BYTE PTR [eax],al
1000daf6:	20 00                	and    BYTE PTR [eax],al
1000daf8:	48                   	dec    eax
1000daf9:	00 10                	add    BYTE PTR [eax],dl
1000dafb:	00 10                	add    BYTE PTR [eax],dl
1000dafd:	00 10                	add    BYTE PTR [eax],dl
1000daff:	00 10                	add    BYTE PTR [eax],dl
1000db01:	00 10                	add    BYTE PTR [eax],dl
1000db03:	00 10                	add    BYTE PTR [eax],dl
1000db05:	00 10                	add    BYTE PTR [eax],dl
1000db07:	00 10                	add    BYTE PTR [eax],dl
1000db09:	00 10                	add    BYTE PTR [eax],dl
1000db0b:	00 10                	add    BYTE PTR [eax],dl
1000db0d:	00 10                	add    BYTE PTR [eax],dl
1000db0f:	00 10                	add    BYTE PTR [eax],dl
1000db11:	00 10                	add    BYTE PTR [eax],dl
1000db13:	00 10                	add    BYTE PTR [eax],dl
1000db15:	00 10                	add    BYTE PTR [eax],dl
1000db17:	00 84 00 84 00 84 00 	add    BYTE PTR [eax+eax*1+0x840084],al
1000db1e:	84 00                	test   BYTE PTR [eax],al
1000db20:	84 00                	test   BYTE PTR [eax],al
1000db22:	84 00                	test   BYTE PTR [eax],al
1000db24:	84 00                	test   BYTE PTR [eax],al
1000db26:	84 00                	test   BYTE PTR [eax],al
1000db28:	84 00                	test   BYTE PTR [eax],al
1000db2a:	84 00                	test   BYTE PTR [eax],al
1000db2c:	10 00                	adc    BYTE PTR [eax],al
1000db2e:	10 00                	adc    BYTE PTR [eax],al
1000db30:	10 00                	adc    BYTE PTR [eax],al
1000db32:	10 00                	adc    BYTE PTR [eax],al
1000db34:	10 00                	adc    BYTE PTR [eax],al
1000db36:	10 00                	adc    BYTE PTR [eax],al
1000db38:	10 00                	adc    BYTE PTR [eax],al
1000db3a:	81 00 81 00 81 00    	add    DWORD PTR [eax],0x810081
1000db40:	81 00 81 00 81 00    	add    DWORD PTR [eax],0x810081
1000db46:	01 00                	add    DWORD PTR [eax],eax
1000db48:	01 00                	add    DWORD PTR [eax],eax
1000db4a:	01 00                	add    DWORD PTR [eax],eax
1000db4c:	01 00                	add    DWORD PTR [eax],eax
1000db4e:	01 00                	add    DWORD PTR [eax],eax
1000db50:	01 00                	add    DWORD PTR [eax],eax
1000db52:	01 00                	add    DWORD PTR [eax],eax
1000db54:	01 00                	add    DWORD PTR [eax],eax
1000db56:	01 00                	add    DWORD PTR [eax],eax
1000db58:	01 00                	add    DWORD PTR [eax],eax
1000db5a:	01 00                	add    DWORD PTR [eax],eax
1000db5c:	01 00                	add    DWORD PTR [eax],eax
1000db5e:	01 00                	add    DWORD PTR [eax],eax
1000db60:	01 00                	add    DWORD PTR [eax],eax
1000db62:	01 00                	add    DWORD PTR [eax],eax
1000db64:	01 00                	add    DWORD PTR [eax],eax
1000db66:	01 00                	add    DWORD PTR [eax],eax
1000db68:	01 00                	add    DWORD PTR [eax],eax
1000db6a:	01 00                	add    DWORD PTR [eax],eax
1000db6c:	01 00                	add    DWORD PTR [eax],eax
1000db6e:	10 00                	adc    BYTE PTR [eax],al
1000db70:	10 00                	adc    BYTE PTR [eax],al
1000db72:	10 00                	adc    BYTE PTR [eax],al
1000db74:	10 00                	adc    BYTE PTR [eax],al
1000db76:	10 00                	adc    BYTE PTR [eax],al
1000db78:	10 00                	adc    BYTE PTR [eax],al
1000db7a:	82 00 82             	add    BYTE PTR [eax],0x82
1000db7d:	00 82 00 82 00 82    	add    BYTE PTR [edx-0x7dff7e00],al
1000db83:	00 82 00 02 00 02    	add    BYTE PTR [edx+0x2000200],al
1000db89:	00 02                	add    BYTE PTR [edx],al
1000db8b:	00 02                	add    BYTE PTR [edx],al
1000db8d:	00 02                	add    BYTE PTR [edx],al
1000db8f:	00 02                	add    BYTE PTR [edx],al
1000db91:	00 02                	add    BYTE PTR [edx],al
1000db93:	00 02                	add    BYTE PTR [edx],al
1000db95:	00 02                	add    BYTE PTR [edx],al
1000db97:	00 02                	add    BYTE PTR [edx],al
1000db99:	00 02                	add    BYTE PTR [edx],al
1000db9b:	00 02                	add    BYTE PTR [edx],al
1000db9d:	00 02                	add    BYTE PTR [edx],al
1000db9f:	00 02                	add    BYTE PTR [edx],al
1000dba1:	00 02                	add    BYTE PTR [edx],al
1000dba3:	00 02                	add    BYTE PTR [edx],al
1000dba5:	00 02                	add    BYTE PTR [edx],al
1000dba7:	00 02                	add    BYTE PTR [edx],al
1000dba9:	00 02                	add    BYTE PTR [edx],al
1000dbab:	00 02                	add    BYTE PTR [edx],al
1000dbad:	00 10                	add    BYTE PTR [eax],dl
1000dbaf:	00 10                	add    BYTE PTR [eax],dl
1000dbb1:	00 10                	add    BYTE PTR [eax],dl
1000dbb3:	00 10                	add    BYTE PTR [eax],dl
1000dbb5:	00 20                	add    BYTE PTR [eax],ah
	...
1000dcb7:	00 00                	add    BYTE PTR [eax],al
1000dcb9:	00 20                	add    BYTE PTR [eax],ah
1000dcbb:	00 20                	add    BYTE PTR [eax],ah
1000dcbd:	00 20                	add    BYTE PTR [eax],ah
1000dcbf:	00 20                	add    BYTE PTR [eax],ah
1000dcc1:	00 20                	add    BYTE PTR [eax],ah
1000dcc3:	00 20                	add    BYTE PTR [eax],ah
1000dcc5:	00 20                	add    BYTE PTR [eax],ah
1000dcc7:	00 20                	add    BYTE PTR [eax],ah
1000dcc9:	00 20                	add    BYTE PTR [eax],ah
1000dccb:	00 68 00             	add    BYTE PTR [eax+0x0],ch
1000dcce:	28 00                	sub    BYTE PTR [eax],al
1000dcd0:	28 00                	sub    BYTE PTR [eax],al
1000dcd2:	28 00                	sub    BYTE PTR [eax],al
1000dcd4:	28 00                	sub    BYTE PTR [eax],al
1000dcd6:	20 00                	and    BYTE PTR [eax],al
1000dcd8:	20 00                	and    BYTE PTR [eax],al
1000dcda:	20 00                	and    BYTE PTR [eax],al
1000dcdc:	20 00                	and    BYTE PTR [eax],al
1000dcde:	20 00                	and    BYTE PTR [eax],al
1000dce0:	20 00                	and    BYTE PTR [eax],al
1000dce2:	20 00                	and    BYTE PTR [eax],al
1000dce4:	20 00                	and    BYTE PTR [eax],al
1000dce6:	20 00                	and    BYTE PTR [eax],al
1000dce8:	20 00                	and    BYTE PTR [eax],al
1000dcea:	20 00                	and    BYTE PTR [eax],al
1000dcec:	20 00                	and    BYTE PTR [eax],al
1000dcee:	20 00                	and    BYTE PTR [eax],al
1000dcf0:	20 00                	and    BYTE PTR [eax],al
1000dcf2:	20 00                	and    BYTE PTR [eax],al
1000dcf4:	20 00                	and    BYTE PTR [eax],al
1000dcf6:	20 00                	and    BYTE PTR [eax],al
1000dcf8:	20 00                	and    BYTE PTR [eax],al
1000dcfa:	48                   	dec    eax
1000dcfb:	00 10                	add    BYTE PTR [eax],dl
1000dcfd:	00 10                	add    BYTE PTR [eax],dl
1000dcff:	00 10                	add    BYTE PTR [eax],dl
1000dd01:	00 10                	add    BYTE PTR [eax],dl
1000dd03:	00 10                	add    BYTE PTR [eax],dl
1000dd05:	00 10                	add    BYTE PTR [eax],dl
1000dd07:	00 10                	add    BYTE PTR [eax],dl
1000dd09:	00 10                	add    BYTE PTR [eax],dl
1000dd0b:	00 10                	add    BYTE PTR [eax],dl
1000dd0d:	00 10                	add    BYTE PTR [eax],dl
1000dd0f:	00 10                	add    BYTE PTR [eax],dl
1000dd11:	00 10                	add    BYTE PTR [eax],dl
1000dd13:	00 10                	add    BYTE PTR [eax],dl
1000dd15:	00 10                	add    BYTE PTR [eax],dl
1000dd17:	00 10                	add    BYTE PTR [eax],dl
1000dd19:	00 84 00 84 00 84 00 	add    BYTE PTR [eax+eax*1+0x840084],al
1000dd20:	84 00                	test   BYTE PTR [eax],al
1000dd22:	84 00                	test   BYTE PTR [eax],al
1000dd24:	84 00                	test   BYTE PTR [eax],al
1000dd26:	84 00                	test   BYTE PTR [eax],al
1000dd28:	84 00                	test   BYTE PTR [eax],al
1000dd2a:	84 00                	test   BYTE PTR [eax],al
1000dd2c:	84 00                	test   BYTE PTR [eax],al
1000dd2e:	10 00                	adc    BYTE PTR [eax],al
1000dd30:	10 00                	adc    BYTE PTR [eax],al
1000dd32:	10 00                	adc    BYTE PTR [eax],al
1000dd34:	10 00                	adc    BYTE PTR [eax],al
1000dd36:	10 00                	adc    BYTE PTR [eax],al
1000dd38:	10 00                	adc    BYTE PTR [eax],al
1000dd3a:	10 00                	adc    BYTE PTR [eax],al
1000dd3c:	81 01 81 01 81 01    	add    DWORD PTR [ecx],0x1810181
1000dd42:	81 01 81 01 81 01    	add    DWORD PTR [ecx],0x1810181
1000dd48:	01 01                	add    DWORD PTR [ecx],eax
1000dd4a:	01 01                	add    DWORD PTR [ecx],eax
1000dd4c:	01 01                	add    DWORD PTR [ecx],eax
1000dd4e:	01 01                	add    DWORD PTR [ecx],eax
1000dd50:	01 01                	add    DWORD PTR [ecx],eax
1000dd52:	01 01                	add    DWORD PTR [ecx],eax
1000dd54:	01 01                	add    DWORD PTR [ecx],eax
1000dd56:	01 01                	add    DWORD PTR [ecx],eax
1000dd58:	01 01                	add    DWORD PTR [ecx],eax
1000dd5a:	01 01                	add    DWORD PTR [ecx],eax
1000dd5c:	01 01                	add    DWORD PTR [ecx],eax
1000dd5e:	01 01                	add    DWORD PTR [ecx],eax
1000dd60:	01 01                	add    DWORD PTR [ecx],eax
1000dd62:	01 01                	add    DWORD PTR [ecx],eax
1000dd64:	01 01                	add    DWORD PTR [ecx],eax
1000dd66:	01 01                	add    DWORD PTR [ecx],eax
1000dd68:	01 01                	add    DWORD PTR [ecx],eax
1000dd6a:	01 01                	add    DWORD PTR [ecx],eax
1000dd6c:	01 01                	add    DWORD PTR [ecx],eax
1000dd6e:	01 01                	add    DWORD PTR [ecx],eax
1000dd70:	10 00                	adc    BYTE PTR [eax],al
1000dd72:	10 00                	adc    BYTE PTR [eax],al
1000dd74:	10 00                	adc    BYTE PTR [eax],al
1000dd76:	10 00                	adc    BYTE PTR [eax],al
1000dd78:	10 00                	adc    BYTE PTR [eax],al
1000dd7a:	10 00                	adc    BYTE PTR [eax],al
1000dd7c:	82 01 82             	add    BYTE PTR [ecx],0x82
1000dd7f:	01 82 01 82 01 82    	add    DWORD PTR [edx-0x7dfe7dff],eax
1000dd85:	01 82 01 02 01 02    	add    DWORD PTR [edx+0x2010201],eax
1000dd8b:	01 02                	add    DWORD PTR [edx],eax
1000dd8d:	01 02                	add    DWORD PTR [edx],eax
1000dd8f:	01 02                	add    DWORD PTR [edx],eax
1000dd91:	01 02                	add    DWORD PTR [edx],eax
1000dd93:	01 02                	add    DWORD PTR [edx],eax
1000dd95:	01 02                	add    DWORD PTR [edx],eax
1000dd97:	01 02                	add    DWORD PTR [edx],eax
1000dd99:	01 02                	add    DWORD PTR [edx],eax
1000dd9b:	01 02                	add    DWORD PTR [edx],eax
1000dd9d:	01 02                	add    DWORD PTR [edx],eax
1000dd9f:	01 02                	add    DWORD PTR [edx],eax
1000dda1:	01 02                	add    DWORD PTR [edx],eax
1000dda3:	01 02                	add    DWORD PTR [edx],eax
1000dda5:	01 02                	add    DWORD PTR [edx],eax
1000dda7:	01 02                	add    DWORD PTR [edx],eax
1000dda9:	01 02                	add    DWORD PTR [edx],eax
1000ddab:	01 02                	add    DWORD PTR [edx],eax
1000ddad:	01 02                	add    DWORD PTR [edx],eax
1000ddaf:	01 10                	add    DWORD PTR [eax],edx
1000ddb1:	00 10                	add    BYTE PTR [eax],dl
1000ddb3:	00 10                	add    BYTE PTR [eax],dl
1000ddb5:	00 10                	add    BYTE PTR [eax],dl
1000ddb7:	00 20                	add    BYTE PTR [eax],ah
1000ddb9:	00 20                	add    BYTE PTR [eax],ah
1000ddbb:	00 20                	add    BYTE PTR [eax],ah
1000ddbd:	00 20                	add    BYTE PTR [eax],ah
1000ddbf:	00 20                	add    BYTE PTR [eax],ah
1000ddc1:	00 20                	add    BYTE PTR [eax],ah
1000ddc3:	00 20                	add    BYTE PTR [eax],ah
1000ddc5:	00 20                	add    BYTE PTR [eax],ah
1000ddc7:	00 20                	add    BYTE PTR [eax],ah
1000ddc9:	00 20                	add    BYTE PTR [eax],ah
1000ddcb:	00 20                	add    BYTE PTR [eax],ah
1000ddcd:	00 20                	add    BYTE PTR [eax],ah
1000ddcf:	00 20                	add    BYTE PTR [eax],ah
1000ddd1:	00 20                	add    BYTE PTR [eax],ah
1000ddd3:	00 20                	add    BYTE PTR [eax],ah
1000ddd5:	00 20                	add    BYTE PTR [eax],ah
1000ddd7:	00 20                	add    BYTE PTR [eax],ah
1000ddd9:	00 20                	add    BYTE PTR [eax],ah
1000dddb:	00 20                	add    BYTE PTR [eax],ah
1000dddd:	00 20                	add    BYTE PTR [eax],ah
1000dddf:	00 20                	add    BYTE PTR [eax],ah
1000dde1:	00 20                	add    BYTE PTR [eax],ah
1000dde3:	00 20                	add    BYTE PTR [eax],ah
1000dde5:	00 20                	add    BYTE PTR [eax],ah
1000dde7:	00 20                	add    BYTE PTR [eax],ah
1000dde9:	00 20                	add    BYTE PTR [eax],ah
1000ddeb:	00 20                	add    BYTE PTR [eax],ah
1000dded:	00 20                	add    BYTE PTR [eax],ah
1000ddef:	00 20                	add    BYTE PTR [eax],ah
1000ddf1:	00 20                	add    BYTE PTR [eax],ah
1000ddf3:	00 20                	add    BYTE PTR [eax],ah
1000ddf5:	00 20                	add    BYTE PTR [eax],ah
1000ddf7:	00 20                	add    BYTE PTR [eax],ah
1000ddf9:	00 48 00             	add    BYTE PTR [eax+0x0],cl
1000ddfc:	10 00                	adc    BYTE PTR [eax],al
1000ddfe:	10 00                	adc    BYTE PTR [eax],al
1000de00:	10 00                	adc    BYTE PTR [eax],al
1000de02:	10 00                	adc    BYTE PTR [eax],al
1000de04:	10 00                	adc    BYTE PTR [eax],al
1000de06:	10 00                	adc    BYTE PTR [eax],al
1000de08:	10 00                	adc    BYTE PTR [eax],al
1000de0a:	10 00                	adc    BYTE PTR [eax],al
1000de0c:	10 00                	adc    BYTE PTR [eax],al
1000de0e:	10 00                	adc    BYTE PTR [eax],al
1000de10:	10 00                	adc    BYTE PTR [eax],al
1000de12:	10 00                	adc    BYTE PTR [eax],al
1000de14:	10 00                	adc    BYTE PTR [eax],al
1000de16:	10 00                	adc    BYTE PTR [eax],al
1000de18:	10 00                	adc    BYTE PTR [eax],al
1000de1a:	10 00                	adc    BYTE PTR [eax],al
1000de1c:	10 00                	adc    BYTE PTR [eax],al
1000de1e:	14 00                	adc    al,0x0
1000de20:	14 00                	adc    al,0x0
1000de22:	10 00                	adc    BYTE PTR [eax],al
1000de24:	10 00                	adc    BYTE PTR [eax],al
1000de26:	10 00                	adc    BYTE PTR [eax],al
1000de28:	10 00                	adc    BYTE PTR [eax],al
1000de2a:	10 00                	adc    BYTE PTR [eax],al
1000de2c:	14 00                	adc    al,0x0
1000de2e:	10 00                	adc    BYTE PTR [eax],al
1000de30:	10 00                	adc    BYTE PTR [eax],al
1000de32:	10 00                	adc    BYTE PTR [eax],al
1000de34:	10 00                	adc    BYTE PTR [eax],al
1000de36:	10 00                	adc    BYTE PTR [eax],al
1000de38:	10 00                	adc    BYTE PTR [eax],al
1000de3a:	01 01                	add    DWORD PTR [ecx],eax
1000de3c:	01 01                	add    DWORD PTR [ecx],eax
1000de3e:	01 01                	add    DWORD PTR [ecx],eax
1000de40:	01 01                	add    DWORD PTR [ecx],eax
1000de42:	01 01                	add    DWORD PTR [ecx],eax
1000de44:	01 01                	add    DWORD PTR [ecx],eax
1000de46:	01 01                	add    DWORD PTR [ecx],eax
1000de48:	01 01                	add    DWORD PTR [ecx],eax
1000de4a:	01 01                	add    DWORD PTR [ecx],eax
1000de4c:	01 01                	add    DWORD PTR [ecx],eax
1000de4e:	01 01                	add    DWORD PTR [ecx],eax
1000de50:	01 01                	add    DWORD PTR [ecx],eax
1000de52:	01 01                	add    DWORD PTR [ecx],eax
1000de54:	01 01                	add    DWORD PTR [ecx],eax
1000de56:	01 01                	add    DWORD PTR [ecx],eax
1000de58:	01 01                	add    DWORD PTR [ecx],eax
1000de5a:	01 01                	add    DWORD PTR [ecx],eax
1000de5c:	01 01                	add    DWORD PTR [ecx],eax
1000de5e:	01 01                	add    DWORD PTR [ecx],eax
1000de60:	01 01                	add    DWORD PTR [ecx],eax
1000de62:	01 01                	add    DWORD PTR [ecx],eax
1000de64:	01 01                	add    DWORD PTR [ecx],eax
1000de66:	01 01                	add    DWORD PTR [ecx],eax
1000de68:	10 00                	adc    BYTE PTR [eax],al
1000de6a:	01 01                	add    DWORD PTR [ecx],eax
1000de6c:	01 01                	add    DWORD PTR [ecx],eax
1000de6e:	01 01                	add    DWORD PTR [ecx],eax
1000de70:	01 01                	add    DWORD PTR [ecx],eax
1000de72:	01 01                	add    DWORD PTR [ecx],eax
1000de74:	01 01                	add    DWORD PTR [ecx],eax
1000de76:	01 01                	add    DWORD PTR [ecx],eax
1000de78:	02 01                	add    al,BYTE PTR [ecx]
1000de7a:	02 01                	add    al,BYTE PTR [ecx]
1000de7c:	02 01                	add    al,BYTE PTR [ecx]
1000de7e:	02 01                	add    al,BYTE PTR [ecx]
1000de80:	02 01                	add    al,BYTE PTR [ecx]
1000de82:	02 01                	add    al,BYTE PTR [ecx]
1000de84:	02 01                	add    al,BYTE PTR [ecx]
1000de86:	02 01                	add    al,BYTE PTR [ecx]
1000de88:	02 01                	add    al,BYTE PTR [ecx]
1000de8a:	02 01                	add    al,BYTE PTR [ecx]
1000de8c:	02 01                	add    al,BYTE PTR [ecx]
1000de8e:	02 01                	add    al,BYTE PTR [ecx]
1000de90:	02 01                	add    al,BYTE PTR [ecx]
1000de92:	02 01                	add    al,BYTE PTR [ecx]
1000de94:	02 01                	add    al,BYTE PTR [ecx]
1000de96:	02 01                	add    al,BYTE PTR [ecx]
1000de98:	02 01                	add    al,BYTE PTR [ecx]
1000de9a:	02 01                	add    al,BYTE PTR [ecx]
1000de9c:	02 01                	add    al,BYTE PTR [ecx]
1000de9e:	02 01                	add    al,BYTE PTR [ecx]
1000dea0:	02 01                	add    al,BYTE PTR [ecx]
1000dea2:	02 01                	add    al,BYTE PTR [ecx]
1000dea4:	02 01                	add    al,BYTE PTR [ecx]
1000dea6:	02 01                	add    al,BYTE PTR [ecx]
1000dea8:	10 00                	adc    BYTE PTR [eax],al
1000deaa:	02 01                	add    al,BYTE PTR [ecx]
1000deac:	02 01                	add    al,BYTE PTR [ecx]
1000deae:	02 01                	add    al,BYTE PTR [ecx]
1000deb0:	02 01                	add    al,BYTE PTR [ecx]
1000deb2:	02 01                	add    al,BYTE PTR [ecx]
1000deb4:	02 01                	add    al,BYTE PTR [ecx]
1000deb6:	02 01                	add    al,BYTE PTR [ecx]
1000deb8:	02 01                	add    al,BYTE PTR [ecx]
1000deba:	01 01                	add    DWORD PTR [ecx],eax
1000debc:	00 00                	add    BYTE PTR [eax],al
1000debe:	00 00                	add    BYTE PTR [eax],al
1000dec0:	80 81 82 83 84 85 86 	add    BYTE PTR [ecx-0x7a7b7c7e],0x86
1000dec7:	87 88 89 8a 8b 8c    	xchg   DWORD PTR [eax-0x73747577],ecx
1000decd:	8d 8e 8f 90 91 92    	lea    ecx,[esi-0x6d6e6f71]
1000ded3:	93                   	xchg   ebx,eax
1000ded4:	94                   	xchg   esp,eax
1000ded5:	95                   	xchg   ebp,eax
1000ded6:	96                   	xchg   esi,eax
1000ded7:	97                   	xchg   edi,eax
1000ded8:	98                   	cwde   
1000ded9:	99                   	cdq    
1000deda:	9a 9b 9c 9d 9e 9f a0 	call   0xa09f:0x9e9d9c9b
1000dee1:	a1 a2 a3 a4 a5       	mov    eax,ds:0xa5a4a3a2
1000dee6:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
1000dee7:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
1000dee8:	a8 a9                	test   al,0xa9
1000deea:	aa                   	stos   BYTE PTR es:[edi],al
1000deeb:	ab                   	stos   DWORD PTR es:[edi],eax
1000deec:	ac                   	lods   al,BYTE PTR ds:[esi]
1000deed:	ad                   	lods   eax,DWORD PTR ds:[esi]
1000deee:	ae                   	scas   al,BYTE PTR es:[edi]
1000deef:	af                   	scas   eax,DWORD PTR es:[edi]
1000def0:	b0 b1                	mov    al,0xb1
1000def2:	b2 b3                	mov    dl,0xb3
1000def4:	b4 b5                	mov    ah,0xb5
1000def6:	b6 b7                	mov    dh,0xb7
1000def8:	b8 b9 ba bb bc       	mov    eax,0xbcbbbab9
1000defd:	bd be bf c0 c1       	mov    ebp,0xc1c0bfbe
1000df02:	c2 c3 c4             	ret    0xc4c3
1000df05:	c5 c6 c7             	(bad)  
1000df08:	c8 c9 ca cb          	enter  0xcac9,0xcb
1000df0c:	cc                   	int3   
1000df0d:	cd ce                	int    0xce
1000df0f:	cf                   	iret   
1000df10:	d0 d1                	rcl    cl,1
1000df12:	d2 d3                	rcl    bl,cl
1000df14:	d4 d5                	aam    0xd5
1000df16:	d6                   	(bad)  
1000df17:	d7                   	xlat   BYTE PTR ds:[ebx]
1000df18:	d8 d9                	fcomp  st(1)
1000df1a:	da db                	fcmovu st,st(3)
1000df1c:	dc dd                	(bad)  
1000df1e:	de df                	(bad)  
1000df20:	e0 e1                	loopne 0x1000df03
1000df22:	e2 e3                	loop   0x1000df07
1000df24:	e4 e5                	in     al,0xe5
1000df26:	e6 e7                	out    0xe7,al
1000df28:	e8 e9 ea eb ec       	call   0xfcecca16
1000df2d:	ed                   	in     eax,dx
1000df2e:	ee                   	out    dx,al
1000df2f:	ef                   	out    dx,eax
1000df30:	f0 f1                	lock icebp 
1000df32:	f2 f3 f4             	repnz repz hlt 
1000df35:	f5                   	cmc    
1000df36:	f6 f7                	div    bh
1000df38:	f8                   	clc    
1000df39:	f9                   	stc    
1000df3a:	fa                   	cli    
1000df3b:	fb                   	sti    
1000df3c:	fc                   	cld    
1000df3d:	fd                   	std    
1000df3e:	fe                   	(bad)  
1000df3f:	ff 00                	inc    DWORD PTR [eax]
1000df41:	01 02                	add    DWORD PTR [edx],eax
1000df43:	03 04 05 06 07 08 09 	add    eax,DWORD PTR [eax*1+0x9080706]
1000df4a:	0a 0b                	or     cl,BYTE PTR [ebx]
1000df4c:	0c 0d                	or     al,0xd
1000df4e:	0e                   	push   cs
1000df4f:	0f 10 11             	movups xmm2,XMMWORD PTR [ecx]
1000df52:	12 13                	adc    dl,BYTE PTR [ebx]
1000df54:	14 15                	adc    al,0x15
1000df56:	16                   	push   ss
1000df57:	17                   	pop    ss
1000df58:	18 19                	sbb    BYTE PTR [ecx],bl
1000df5a:	1a 1b                	sbb    bl,BYTE PTR [ebx]
1000df5c:	1c 1d                	sbb    al,0x1d
1000df5e:	1e                   	push   ds
1000df5f:	1f                   	pop    ds
1000df60:	20 21                	and    BYTE PTR [ecx],ah
1000df62:	22 23                	and    ah,BYTE PTR [ebx]
1000df64:	24 25                	and    al,0x25
1000df66:	26 27                	es daa 
1000df68:	28 29                	sub    BYTE PTR [ecx],ch
1000df6a:	2a 2b                	sub    ch,BYTE PTR [ebx]
1000df6c:	2c 2d                	sub    al,0x2d
1000df6e:	2e 2f                	cs das 
1000df70:	30 31                	xor    BYTE PTR [ecx],dh
1000df72:	32 33                	xor    dh,BYTE PTR [ebx]
1000df74:	34 35                	xor    al,0x35
1000df76:	36 37                	ss aaa 
1000df78:	38 39                	cmp    BYTE PTR [ecx],bh
1000df7a:	3a 3b                	cmp    bh,BYTE PTR [ebx]
1000df7c:	3c 3d                	cmp    al,0x3d
1000df7e:	3e 3f                	ds aas 
1000df80:	40                   	inc    eax
1000df81:	61                   	popa   
1000df82:	62 63 64             	bound  esp,QWORD PTR [ebx+0x64]
1000df85:	65 66 67 68 69 6a    	gs addr16 pushw 0x6a69
1000df8b:	6b 6c 6d 6e 6f       	imul   ebp,DWORD PTR [ebp+ebp*2+0x6e],0x6f
1000df90:	70 71                	jo     0x1000e003
1000df92:	72 73                	jb     0x1000e007
1000df94:	74 75                	je     0x1000e00b
1000df96:	76 77                	jbe    0x1000e00f
1000df98:	78 79                	js     0x1000e013
1000df9a:	7a 5b                	jp     0x1000dff7
1000df9c:	5c                   	pop    esp
1000df9d:	5d                   	pop    ebp
1000df9e:	5e                   	pop    esi
1000df9f:	5f                   	pop    edi
1000dfa0:	60                   	pusha  
1000dfa1:	61                   	popa   
1000dfa2:	62 63 64             	bound  esp,QWORD PTR [ebx+0x64]
1000dfa5:	65 66 67 68 69 6a    	gs addr16 pushw 0x6a69
1000dfab:	6b 6c 6d 6e 6f       	imul   ebp,DWORD PTR [ebp+ebp*2+0x6e],0x6f
1000dfb0:	70 71                	jo     0x1000e023
1000dfb2:	72 73                	jb     0x1000e027
1000dfb4:	74 75                	je     0x1000e02b
1000dfb6:	76 77                	jbe    0x1000e02f
1000dfb8:	78 79                	js     0x1000e033
1000dfba:	7a 7b                	jp     0x1000e037
1000dfbc:	7c 7d                	jl     0x1000e03b
1000dfbe:	7e 7f                	jle    0x1000e03f
1000dfc0:	80 81 82 83 84 85 86 	add    BYTE PTR [ecx-0x7a7b7c7e],0x86
1000dfc7:	87 88 89 8a 8b 8c    	xchg   DWORD PTR [eax-0x73747577],ecx
1000dfcd:	8d 8e 8f 90 91 92    	lea    ecx,[esi-0x6d6e6f71]
1000dfd3:	93                   	xchg   ebx,eax
1000dfd4:	94                   	xchg   esp,eax
1000dfd5:	95                   	xchg   ebp,eax
1000dfd6:	96                   	xchg   esi,eax
1000dfd7:	97                   	xchg   edi,eax
1000dfd8:	98                   	cwde   
1000dfd9:	99                   	cdq    
1000dfda:	9a 9b 9c 9d 9e 9f a0 	call   0xa09f:0x9e9d9c9b
1000dfe1:	a1 a2 a3 a4 a5       	mov    eax,ds:0xa5a4a3a2
1000dfe6:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
1000dfe7:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
1000dfe8:	a8 a9                	test   al,0xa9
1000dfea:	aa                   	stos   BYTE PTR es:[edi],al
1000dfeb:	ab                   	stos   DWORD PTR es:[edi],eax
1000dfec:	ac                   	lods   al,BYTE PTR ds:[esi]
1000dfed:	ad                   	lods   eax,DWORD PTR ds:[esi]
1000dfee:	ae                   	scas   al,BYTE PTR es:[edi]
1000dfef:	af                   	scas   eax,DWORD PTR es:[edi]
1000dff0:	b0 b1                	mov    al,0xb1
1000dff2:	b2 b3                	mov    dl,0xb3
1000dff4:	b4 b5                	mov    ah,0xb5
1000dff6:	b6 b7                	mov    dh,0xb7
1000dff8:	b8 b9 ba bb bc       	mov    eax,0xbcbbbab9
1000dffd:	bd be bf c0 c1       	mov    ebp,0xc1c0bfbe
1000e002:	c2 c3 c4             	ret    0xc4c3
1000e005:	c5 c6 c7             	(bad)  
1000e008:	c8 c9 ca cb          	enter  0xcac9,0xcb
1000e00c:	cc                   	int3   
1000e00d:	cd ce                	int    0xce
1000e00f:	cf                   	iret   
1000e010:	d0 d1                	rcl    cl,1
1000e012:	d2 d3                	rcl    bl,cl
1000e014:	d4 d5                	aam    0xd5
1000e016:	d6                   	(bad)  
1000e017:	d7                   	xlat   BYTE PTR ds:[ebx]
1000e018:	d8 d9                	fcomp  st(1)
1000e01a:	da db                	fcmovu st,st(3)
1000e01c:	dc dd                	(bad)  
1000e01e:	de df                	(bad)  
1000e020:	e0 e1                	loopne 0x1000e003
1000e022:	e2 e3                	loop   0x1000e007
1000e024:	e4 e5                	in     al,0xe5
1000e026:	e6 e7                	out    0xe7,al
1000e028:	e8 e9 ea eb ec       	call   0xfceccb16
1000e02d:	ed                   	in     eax,dx
1000e02e:	ee                   	out    dx,al
1000e02f:	ef                   	out    dx,eax
1000e030:	f0 f1                	lock icebp 
1000e032:	f2 f3 f4             	repnz repz hlt 
1000e035:	f5                   	cmc    
1000e036:	f6 f7                	div    bh
1000e038:	f8                   	clc    
1000e039:	f9                   	stc    
1000e03a:	fa                   	cli    
1000e03b:	fb                   	sti    
1000e03c:	fc                   	cld    
1000e03d:	fd                   	std    
1000e03e:	fe                   	(bad)  
1000e03f:	ff 80 81 82 83 84    	inc    DWORD PTR [eax-0x7b7c7d7f]
1000e045:	85 86 87 88 89 8a    	test   DWORD PTR [esi-0x75767779],eax
1000e04b:	8b 8c 8d 8e 8f 90 91 	mov    ecx,DWORD PTR [ebp+ecx*4-0x6e6f7072]
1000e052:	92                   	xchg   edx,eax
1000e053:	93                   	xchg   ebx,eax
1000e054:	94                   	xchg   esp,eax
1000e055:	95                   	xchg   ebp,eax
1000e056:	96                   	xchg   esi,eax
1000e057:	97                   	xchg   edi,eax
1000e058:	98                   	cwde   
1000e059:	99                   	cdq    
1000e05a:	9a 9b 9c 9d 9e 9f a0 	call   0xa09f:0x9e9d9c9b
1000e061:	a1 a2 a3 a4 a5       	mov    eax,ds:0xa5a4a3a2
1000e066:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
1000e067:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
1000e068:	a8 a9                	test   al,0xa9
1000e06a:	aa                   	stos   BYTE PTR es:[edi],al
1000e06b:	ab                   	stos   DWORD PTR es:[edi],eax
1000e06c:	ac                   	lods   al,BYTE PTR ds:[esi]
1000e06d:	ad                   	lods   eax,DWORD PTR ds:[esi]
1000e06e:	ae                   	scas   al,BYTE PTR es:[edi]
1000e06f:	af                   	scas   eax,DWORD PTR es:[edi]
1000e070:	b0 b1                	mov    al,0xb1
1000e072:	b2 b3                	mov    dl,0xb3
1000e074:	b4 b5                	mov    ah,0xb5
1000e076:	b6 b7                	mov    dh,0xb7
1000e078:	b8 b9 ba bb bc       	mov    eax,0xbcbbbab9
1000e07d:	bd be bf c0 c1       	mov    ebp,0xc1c0bfbe
1000e082:	c2 c3 c4             	ret    0xc4c3
1000e085:	c5 c6 c7             	(bad)  
1000e088:	c8 c9 ca cb          	enter  0xcac9,0xcb
1000e08c:	cc                   	int3   
1000e08d:	cd ce                	int    0xce
1000e08f:	cf                   	iret   
1000e090:	d0 d1                	rcl    cl,1
1000e092:	d2 d3                	rcl    bl,cl
1000e094:	d4 d5                	aam    0xd5
1000e096:	d6                   	(bad)  
1000e097:	d7                   	xlat   BYTE PTR ds:[ebx]
1000e098:	d8 d9                	fcomp  st(1)
1000e09a:	da db                	fcmovu st,st(3)
1000e09c:	dc dd                	(bad)  
1000e09e:	de df                	(bad)  
1000e0a0:	e0 e1                	loopne 0x1000e083
1000e0a2:	e2 e3                	loop   0x1000e087
1000e0a4:	e4 e5                	in     al,0xe5
1000e0a6:	e6 e7                	out    0xe7,al
1000e0a8:	e8 e9 ea eb ec       	call   0xfceccb96
1000e0ad:	ed                   	in     eax,dx
1000e0ae:	ee                   	out    dx,al
1000e0af:	ef                   	out    dx,eax
1000e0b0:	f0 f1                	lock icebp 
1000e0b2:	f2 f3 f4             	repnz repz hlt 
1000e0b5:	f5                   	cmc    
1000e0b6:	f6 f7                	div    bh
1000e0b8:	f8                   	clc    
1000e0b9:	f9                   	stc    
1000e0ba:	fa                   	cli    
1000e0bb:	fb                   	sti    
1000e0bc:	fc                   	cld    
1000e0bd:	fd                   	std    
1000e0be:	fe                   	(bad)  
1000e0bf:	ff 00                	inc    DWORD PTR [eax]
1000e0c1:	01 02                	add    DWORD PTR [edx],eax
1000e0c3:	03 04 05 06 07 08 09 	add    eax,DWORD PTR [eax*1+0x9080706]
1000e0ca:	0a 0b                	or     cl,BYTE PTR [ebx]
1000e0cc:	0c 0d                	or     al,0xd
1000e0ce:	0e                   	push   cs
1000e0cf:	0f 10 11             	movups xmm2,XMMWORD PTR [ecx]
1000e0d2:	12 13                	adc    dl,BYTE PTR [ebx]
1000e0d4:	14 15                	adc    al,0x15
1000e0d6:	16                   	push   ss
1000e0d7:	17                   	pop    ss
1000e0d8:	18 19                	sbb    BYTE PTR [ecx],bl
1000e0da:	1a 1b                	sbb    bl,BYTE PTR [ebx]
1000e0dc:	1c 1d                	sbb    al,0x1d
1000e0de:	1e                   	push   ds
1000e0df:	1f                   	pop    ds
1000e0e0:	20 21                	and    BYTE PTR [ecx],ah
1000e0e2:	22 23                	and    ah,BYTE PTR [ebx]
1000e0e4:	24 25                	and    al,0x25
1000e0e6:	26 27                	es daa 
1000e0e8:	28 29                	sub    BYTE PTR [ecx],ch
1000e0ea:	2a 2b                	sub    ch,BYTE PTR [ebx]
1000e0ec:	2c 2d                	sub    al,0x2d
1000e0ee:	2e 2f                	cs das 
1000e0f0:	30 31                	xor    BYTE PTR [ecx],dh
1000e0f2:	32 33                	xor    dh,BYTE PTR [ebx]
1000e0f4:	34 35                	xor    al,0x35
1000e0f6:	36 37                	ss aaa 
1000e0f8:	38 39                	cmp    BYTE PTR [ecx],bh
1000e0fa:	3a 3b                	cmp    bh,BYTE PTR [ebx]
1000e0fc:	3c 3d                	cmp    al,0x3d
1000e0fe:	3e 3f                	ds aas 
1000e100:	40                   	inc    eax
1000e101:	41                   	inc    ecx
1000e102:	42                   	inc    edx
1000e103:	43                   	inc    ebx
1000e104:	44                   	inc    esp
1000e105:	45                   	inc    ebp
1000e106:	46                   	inc    esi
1000e107:	47                   	inc    edi
1000e108:	48                   	dec    eax
1000e109:	49                   	dec    ecx
1000e10a:	4a                   	dec    edx
1000e10b:	4b                   	dec    ebx
1000e10c:	4c                   	dec    esp
1000e10d:	4d                   	dec    ebp
1000e10e:	4e                   	dec    esi
1000e10f:	4f                   	dec    edi
1000e110:	50                   	push   eax
1000e111:	51                   	push   ecx
1000e112:	52                   	push   edx
1000e113:	53                   	push   ebx
1000e114:	54                   	push   esp
1000e115:	55                   	push   ebp
1000e116:	56                   	push   esi
1000e117:	57                   	push   edi
1000e118:	58                   	pop    eax
1000e119:	59                   	pop    ecx
1000e11a:	5a                   	pop    edx
1000e11b:	5b                   	pop    ebx
1000e11c:	5c                   	pop    esp
1000e11d:	5d                   	pop    ebp
1000e11e:	5e                   	pop    esi
1000e11f:	5f                   	pop    edi
1000e120:	60                   	pusha  
1000e121:	41                   	inc    ecx
1000e122:	42                   	inc    edx
1000e123:	43                   	inc    ebx
1000e124:	44                   	inc    esp
1000e125:	45                   	inc    ebp
1000e126:	46                   	inc    esi
1000e127:	47                   	inc    edi
1000e128:	48                   	dec    eax
1000e129:	49                   	dec    ecx
1000e12a:	4a                   	dec    edx
1000e12b:	4b                   	dec    ebx
1000e12c:	4c                   	dec    esp
1000e12d:	4d                   	dec    ebp
1000e12e:	4e                   	dec    esi
1000e12f:	4f                   	dec    edi
1000e130:	50                   	push   eax
1000e131:	51                   	push   ecx
1000e132:	52                   	push   edx
1000e133:	53                   	push   ebx
1000e134:	54                   	push   esp
1000e135:	55                   	push   ebp
1000e136:	56                   	push   esi
1000e137:	57                   	push   edi
1000e138:	58                   	pop    eax
1000e139:	59                   	pop    ecx
1000e13a:	5a                   	pop    edx
1000e13b:	7b 7c                	jnp    0x1000e1b9
1000e13d:	7d 7e                	jge    0x1000e1bd
1000e13f:	7f 80                	jg     0x1000e0c1
1000e141:	81 82 83 84 85 86 87 	add    DWORD PTR [edx-0x797a7b7d],0x8a898887
1000e148:	88 89 8a 
1000e14b:	8b 8c 8d 8e 8f 90 91 	mov    ecx,DWORD PTR [ebp+ecx*4-0x6e6f7072]
1000e152:	92                   	xchg   edx,eax
1000e153:	93                   	xchg   ebx,eax
1000e154:	94                   	xchg   esp,eax
1000e155:	95                   	xchg   ebp,eax
1000e156:	96                   	xchg   esi,eax
1000e157:	97                   	xchg   edi,eax
1000e158:	98                   	cwde   
1000e159:	99                   	cdq    
1000e15a:	9a 9b 9c 9d 9e 9f a0 	call   0xa09f:0x9e9d9c9b
1000e161:	a1 a2 a3 a4 a5       	mov    eax,ds:0xa5a4a3a2
1000e166:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
1000e167:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
1000e168:	a8 a9                	test   al,0xa9
1000e16a:	aa                   	stos   BYTE PTR es:[edi],al
1000e16b:	ab                   	stos   DWORD PTR es:[edi],eax
1000e16c:	ac                   	lods   al,BYTE PTR ds:[esi]
1000e16d:	ad                   	lods   eax,DWORD PTR ds:[esi]
1000e16e:	ae                   	scas   al,BYTE PTR es:[edi]
1000e16f:	af                   	scas   eax,DWORD PTR es:[edi]
1000e170:	b0 b1                	mov    al,0xb1
1000e172:	b2 b3                	mov    dl,0xb3
1000e174:	b4 b5                	mov    ah,0xb5
1000e176:	b6 b7                	mov    dh,0xb7
1000e178:	b8 b9 ba bb bc       	mov    eax,0xbcbbbab9
1000e17d:	bd be bf c0 c1       	mov    ebp,0xc1c0bfbe
1000e182:	c2 c3 c4             	ret    0xc4c3
1000e185:	c5 c6 c7             	(bad)  
1000e188:	c8 c9 ca cb          	enter  0xcac9,0xcb
1000e18c:	cc                   	int3   
1000e18d:	cd ce                	int    0xce
1000e18f:	cf                   	iret   
1000e190:	d0 d1                	rcl    cl,1
1000e192:	d2 d3                	rcl    bl,cl
1000e194:	d4 d5                	aam    0xd5
1000e196:	d6                   	(bad)  
1000e197:	d7                   	xlat   BYTE PTR ds:[ebx]
1000e198:	d8 d9                	fcomp  st(1)
1000e19a:	da db                	fcmovu st,st(3)
1000e19c:	dc dd                	(bad)  
1000e19e:	de df                	(bad)  
1000e1a0:	e0 e1                	loopne 0x1000e183
1000e1a2:	e2 e3                	loop   0x1000e187
1000e1a4:	e4 e5                	in     al,0xe5
1000e1a6:	e6 e7                	out    0xe7,al
1000e1a8:	e8 e9 ea eb ec       	call   0xfceccc96
1000e1ad:	ed                   	in     eax,dx
1000e1ae:	ee                   	out    dx,al
1000e1af:	ef                   	out    dx,eax
1000e1b0:	f0 f1                	lock icebp 
1000e1b2:	f2 f3 f4             	repnz repz hlt 
1000e1b5:	f5                   	cmc    
1000e1b6:	f6 f7                	div    bh
1000e1b8:	f8                   	clc    
1000e1b9:	f9                   	stc    
1000e1ba:	fa                   	cli    
1000e1bb:	fb                   	sti    
1000e1bc:	fc                   	cld    
1000e1bd:	fd                   	std    
1000e1be:	fe                   	(bad)  
1000e1bf:	ff 48 48             	dec    DWORD PTR [eax+0x48]
1000e1c2:	3a 6d 6d             	cmp    ch,BYTE PTR [ebp+0x6d]
1000e1c5:	3a 73 73             	cmp    dh,BYTE PTR [ebx+0x73]
1000e1c8:	00 00                	add    BYTE PTR [eax],al
1000e1ca:	00 00                	add    BYTE PTR [eax],al
1000e1cc:	64 64 64 64 2c 20    	fs fs fs fs sub al,0x20
1000e1d2:	4d                   	dec    ebp
1000e1d3:	4d                   	dec    ebp
1000e1d4:	4d                   	dec    ebp
1000e1d5:	4d                   	dec    ebp
1000e1d6:	20 64 64 2c          	and    BYTE PTR [esp+eiz*2+0x2c],ah
1000e1da:	20 79 79             	and    BYTE PTR [ecx+0x79],bh
1000e1dd:	79 79                	jns    0x1000e258
1000e1df:	00 4d 4d             	add    BYTE PTR [ebp+0x4d],cl
1000e1e2:	2f                   	das    
1000e1e3:	64 64 2f             	fs fs das 
1000e1e6:	79 79                	jns    0x1000e261
1000e1e8:	00 00                	add    BYTE PTR [eax],al
1000e1ea:	00 00                	add    BYTE PTR [eax],al
1000e1ec:	50                   	push   eax
1000e1ed:	4d                   	dec    ebp
1000e1ee:	00 00                	add    BYTE PTR [eax],al
1000e1f0:	41                   	inc    ecx
1000e1f1:	4d                   	dec    ebp
1000e1f2:	00 00                	add    BYTE PTR [eax],al
1000e1f4:	44                   	inc    esp
1000e1f5:	65 63 65 6d          	arpl   WORD PTR gs:[ebp+0x6d],sp
1000e1f9:	62 65 72             	bound  esp,QWORD PTR [ebp+0x72]
1000e1fc:	00 00                	add    BYTE PTR [eax],al
1000e1fe:	00 00                	add    BYTE PTR [eax],al
1000e200:	4e                   	dec    esi
1000e201:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e202:	76 65                	jbe    0x1000e269
1000e204:	6d                   	ins    DWORD PTR es:[edi],dx
1000e205:	62 65 72             	bound  esp,QWORD PTR [ebp+0x72]
1000e208:	00 00                	add    BYTE PTR [eax],al
1000e20a:	00 00                	add    BYTE PTR [eax],al
1000e20c:	4f                   	dec    edi
1000e20d:	63 74 6f 62          	arpl   WORD PTR [edi+ebp*2+0x62],si
1000e211:	65 72 00             	gs jb  0x1000e214
1000e214:	53                   	push   ebx
1000e215:	65 70 74             	gs jo  0x1000e28c
1000e218:	65 6d                	gs ins DWORD PTR es:[edi],dx
1000e21a:	62 65 72             	bound  esp,QWORD PTR [ebp+0x72]
1000e21d:	00 00                	add    BYTE PTR [eax],al
1000e21f:	00 41 75             	add    BYTE PTR [ecx+0x75],al
1000e222:	67 75 73             	addr16 jne 0x1000e298
1000e225:	74 00                	je     0x1000e227
1000e227:	00 4a 75             	add    BYTE PTR [edx+0x75],cl
1000e22a:	6c                   	ins    BYTE PTR es:[edi],dx
1000e22b:	79 00                	jns    0x1000e22d
1000e22d:	00 00                	add    BYTE PTR [eax],al
1000e22f:	00 4a 75             	add    BYTE PTR [edx+0x75],cl
1000e232:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e233:	65 00 00             	add    BYTE PTR gs:[eax],al
1000e236:	00 00                	add    BYTE PTR [eax],al
1000e238:	41                   	inc    ecx
1000e239:	70 72                	jo     0x1000e2ad
1000e23b:	69 6c 00 00 00 4d 61 	imul   ebp,DWORD PTR [eax+eax*1+0x0],0x72614d00
1000e242:	72 
1000e243:	63 68 00             	arpl   WORD PTR [eax+0x0],bp
1000e246:	00 00                	add    BYTE PTR [eax],al
1000e248:	46                   	inc    esi
1000e249:	65 62 72 75          	bound  esi,QWORD PTR gs:[edx+0x75]
1000e24d:	61                   	popa   
1000e24e:	72 79                	jb     0x1000e2c9
1000e250:	00 00                	add    BYTE PTR [eax],al
1000e252:	00 00                	add    BYTE PTR [eax],al
1000e254:	4a                   	dec    edx
1000e255:	61                   	popa   
1000e256:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e257:	75 61                	jne    0x1000e2ba
1000e259:	72 79                	jb     0x1000e2d4
1000e25b:	00 44 65 63          	add    BYTE PTR [ebp+eiz*2+0x63],al
1000e25f:	00 4e 6f             	add    BYTE PTR [esi+0x6f],cl
1000e262:	76 00                	jbe    0x1000e264
1000e264:	4f                   	dec    edi
1000e265:	63 74 00 53          	arpl   WORD PTR [eax+eax*1+0x53],si
1000e269:	65 70 00             	gs jo  0x1000e26c
1000e26c:	41                   	inc    ecx
1000e26d:	75 67                	jne    0x1000e2d6
1000e26f:	00 4a 75             	add    BYTE PTR [edx+0x75],cl
1000e272:	6c                   	ins    BYTE PTR es:[edi],dx
1000e273:	00 4a 75             	add    BYTE PTR [edx+0x75],cl
1000e276:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e277:	00 4d 61             	add    BYTE PTR [ebp+0x61],cl
1000e27a:	79 00                	jns    0x1000e27c
1000e27c:	41                   	inc    ecx
1000e27d:	70 72                	jo     0x1000e2f1
1000e27f:	00 4d 61             	add    BYTE PTR [ebp+0x61],cl
1000e282:	72 00                	jb     0x1000e284
1000e284:	46                   	inc    esi
1000e285:	65 62 00             	bound  eax,QWORD PTR gs:[eax]
1000e288:	4a                   	dec    edx
1000e289:	61                   	popa   
1000e28a:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e28b:	00 53 61             	add    BYTE PTR [ebx+0x61],dl
1000e28e:	74 75                	je     0x1000e305
1000e290:	72 64                	jb     0x1000e2f6
1000e292:	61                   	popa   
1000e293:	79 00                	jns    0x1000e295
1000e295:	00 00                	add    BYTE PTR [eax],al
1000e297:	00 46 72             	add    BYTE PTR [esi+0x72],al
1000e29a:	69 64 61 79 00 00 54 	imul   esp,DWORD PTR [ecx+eiz*2+0x79],0x68540000
1000e2a1:	68 
1000e2a2:	75 72                	jne    0x1000e316
1000e2a4:	73 64                	jae    0x1000e30a
1000e2a6:	61                   	popa   
1000e2a7:	79 00                	jns    0x1000e2a9
1000e2a9:	00 00                	add    BYTE PTR [eax],al
1000e2ab:	00 57 65             	add    BYTE PTR [edi+0x65],dl
1000e2ae:	64 6e                	outs   dx,BYTE PTR fs:[esi]
1000e2b0:	65 73 64             	gs jae 0x1000e317
1000e2b3:	61                   	popa   
1000e2b4:	79 00                	jns    0x1000e2b6
1000e2b6:	00 00                	add    BYTE PTR [eax],al
1000e2b8:	54                   	push   esp
1000e2b9:	75 65                	jne    0x1000e320
1000e2bb:	73 64                	jae    0x1000e321
1000e2bd:	61                   	popa   
1000e2be:	79 00                	jns    0x1000e2c0
1000e2c0:	4d                   	dec    ebp
1000e2c1:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e2c2:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e2c3:	64 61                	fs popa 
1000e2c5:	79 00                	jns    0x1000e2c7
1000e2c7:	00 53 75             	add    BYTE PTR [ebx+0x75],dl
1000e2ca:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e2cb:	64 61                	fs popa 
1000e2cd:	79 00                	jns    0x1000e2cf
1000e2cf:	00 53 61             	add    BYTE PTR [ebx+0x61],dl
1000e2d2:	74 00                	je     0x1000e2d4
1000e2d4:	46                   	inc    esi
1000e2d5:	72 69                	jb     0x1000e340
1000e2d7:	00 54 68 75          	add    BYTE PTR [eax+ebp*2+0x75],dl
1000e2db:	00 57 65             	add    BYTE PTR [edi+0x65],dl
1000e2de:	64 00 54 75 65       	add    BYTE PTR fs:[ebp+esi*2+0x65],dl
1000e2e3:	00 4d 6f             	add    BYTE PTR [ebp+0x6f],cl
1000e2e6:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e2e7:	00 53 75             	add    BYTE PTR [ebx+0x75],dl
1000e2ea:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e2eb:	00 31                	add    BYTE PTR [ecx],dh
1000e2ed:	23 51 4e             	and    edx,DWORD PTR [ecx+0x4e]
1000e2f0:	41                   	inc    ecx
1000e2f1:	4e                   	dec    esi
1000e2f2:	00 00                	add    BYTE PTR [eax],al
1000e2f4:	31 23                	xor    DWORD PTR [ebx],esp
1000e2f6:	49                   	dec    ecx
1000e2f7:	4e                   	dec    esi
1000e2f8:	46                   	inc    esi
1000e2f9:	00 00                	add    BYTE PTR [eax],al
1000e2fb:	00 31                	add    BYTE PTR [ecx],dh
1000e2fd:	23 49 4e             	and    ecx,DWORD PTR [ecx+0x4e]
1000e300:	44                   	inc    esp
1000e301:	00 00                	add    BYTE PTR [eax],al
1000e303:	00 31                	add    BYTE PTR [ecx],dh
1000e305:	23 53 4e             	and    edx,DWORD PTR [ebx+0x4e]
1000e308:	41                   	inc    ecx
1000e309:	4e                   	dec    esi
1000e30a:	00 00                	add    BYTE PTR [eax],al
1000e30c:	53                   	push   ebx
1000e30d:	75 6e                	jne    0x1000e37d
1000e30f:	4d                   	dec    ebp
1000e310:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e311:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e312:	54                   	push   esp
1000e313:	75 65                	jne    0x1000e37a
1000e315:	57                   	push   edi
1000e316:	65 64 54             	gs fs push esp
1000e319:	68 75 46 72 69       	push   0x69724675
1000e31e:	53                   	push   ebx
1000e31f:	61                   	popa   
1000e320:	74 00                	je     0x1000e322
1000e322:	00 00                	add    BYTE PTR [eax],al
1000e324:	4a                   	dec    edx
1000e325:	61                   	popa   
1000e326:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e327:	46                   	inc    esi
1000e328:	65 62 4d 61          	bound  ecx,QWORD PTR gs:[ebp+0x61]
1000e32c:	72 41                	jb     0x1000e36f
1000e32e:	70 72                	jo     0x1000e3a2
1000e330:	4d                   	dec    ebp
1000e331:	61                   	popa   
1000e332:	79 4a                	jns    0x1000e37e
1000e334:	75 6e                	jne    0x1000e3a4
1000e336:	4a                   	dec    edx
1000e337:	75 6c                	jne    0x1000e3a5
1000e339:	41                   	inc    ecx
1000e33a:	75 67                	jne    0x1000e3a3
1000e33c:	53                   	push   ebx
1000e33d:	65 70 4f             	gs jo  0x1000e38f
1000e340:	63 74 4e 6f          	arpl   WORD PTR [esi+ecx*2+0x6f],si
1000e344:	76 44                	jbe    0x1000e38a
1000e346:	65 63 00             	arpl   WORD PTR gs:[eax],ax
1000e349:	00 00                	add    BYTE PTR [eax],al
1000e34b:	00 00                	add    BYTE PTR [eax],al
1000e34d:	00 00                	add    BYTE PTR [eax],al
1000e34f:	00 48 00             	add    BYTE PTR [eax+0x0],cl
	...
1000e38a:	00 00                	add    BYTE PTR [eax],al
1000e38c:	10 00                	adc    BYTE PTR [eax],al
1000e38e:	01 10                	add    DWORD PTR [eax],edx
1000e390:	a0 e3 00 10 03       	mov    al,ds:0x31000e3
	...
1000e39d:	00 00                	add    BYTE PTR [eax],al
1000e39f:	00 90 58 00 00 30    	add    BYTE PTR [eax+0x30000058],dl
1000e3a5:	89 00                	mov    DWORD PTR [eax],eax
1000e3a7:	00 28                	add    BYTE PTR [eax],ch
1000e3a9:	c4 00                	les    eax,FWORD PTR [eax]
	...
1000e3bf:	00 fe                	add    dh,bh
1000e3c1:	ff                   	(bad)  
1000e3c2:	ff                   	(bad)  
1000e3c3:	ff 00                	inc    DWORD PTR [eax]
1000e3c5:	00 00                	add    BYTE PTR [eax],al
1000e3c7:	00 d4                	add    ah,dl
1000e3c9:	ff                   	(bad)  
1000e3ca:	ff                   	(bad)  
1000e3cb:	ff 00                	inc    DWORD PTR [eax]
1000e3cd:	00 00                	add    BYTE PTR [eax],al
1000e3cf:	00 fe                	add    dh,bh
1000e3d1:	ff                   	(bad)  
1000e3d2:	ff                   	(bad)  
1000e3d3:	ff 00                	inc    DWORD PTR [eax]
1000e3d5:	00 00                	add    BYTE PTR [eax],al
1000e3d7:	00 d1                	add    cl,dl
1000e3d9:	39 00                	cmp    DWORD PTR [eax],eax
1000e3db:	10 00                	adc    BYTE PTR [eax],al
1000e3dd:	00 00                	add    BYTE PTR [eax],al
1000e3df:	00 fe                	add    dh,bh
1000e3e1:	ff                   	(bad)  
1000e3e2:	ff                   	(bad)  
1000e3e3:	ff 00                	inc    DWORD PTR [eax]
1000e3e5:	00 00                	add    BYTE PTR [eax],al
1000e3e7:	00 d4                	add    ah,dl
1000e3e9:	ff                   	(bad)  
1000e3ea:	ff                   	(bad)  
1000e3eb:	ff 00                	inc    DWORD PTR [eax]
1000e3ed:	00 00                	add    BYTE PTR [eax],al
1000e3ef:	00 fe                	add    dh,bh
1000e3f1:	ff                   	(bad)  
1000e3f2:	ff                   	(bad)  
1000e3f3:	ff 00                	inc    DWORD PTR [eax]
1000e3f5:	00 00                	add    BYTE PTR [eax],al
1000e3f7:	00 4f 3a             	add    BYTE PTR [edi+0x3a],cl
1000e3fa:	00 10                	add    BYTE PTR [eax],dl
1000e3fc:	00 00                	add    BYTE PTR [eax],al
1000e3fe:	00 00                	add    BYTE PTR [eax],al
1000e400:	fe                   	(bad)  
1000e401:	ff                   	(bad)  
1000e402:	ff                   	(bad)  
1000e403:	ff 00                	inc    DWORD PTR [eax]
1000e405:	00 00                	add    BYTE PTR [eax],al
1000e407:	00 d4                	add    ah,dl
1000e409:	ff                   	(bad)  
1000e40a:	ff                   	(bad)  
1000e40b:	ff 00                	inc    DWORD PTR [eax]
1000e40d:	00 00                	add    BYTE PTR [eax],al
1000e40f:	00 fe                	add    dh,bh
1000e411:	ff                   	(bad)  
1000e412:	ff                   	(bad)  
1000e413:	ff d6                	call   esi
1000e415:	3d 00 10 e7 3d       	cmp    eax,0x3de71000
1000e41a:	00 10                	add    BYTE PTR [eax],dl
1000e41c:	00 00                	add    BYTE PTR [eax],al
1000e41e:	00 00                	add    BYTE PTR [eax],al
1000e420:	fe                   	(bad)  
1000e421:	ff                   	(bad)  
1000e422:	ff                   	(bad)  
1000e423:	ff 00                	inc    DWORD PTR [eax]
1000e425:	00 00                	add    BYTE PTR [eax],al
1000e427:	00 d4                	add    ah,dl
1000e429:	ff                   	(bad)  
1000e42a:	ff                   	(bad)  
1000e42b:	ff 00                	inc    DWORD PTR [eax]
1000e42d:	00 00                	add    BYTE PTR [eax],al
1000e42f:	00 fe                	add    dh,bh
1000e431:	ff                   	(bad)  
1000e432:	ff                   	(bad)  
1000e433:	ff 00                	inc    DWORD PTR [eax]
1000e435:	00 00                	add    BYTE PTR [eax],al
1000e437:	00 ef                	add    bh,ch
1000e439:	4c                   	dec    esp
1000e43a:	00 10                	add    BYTE PTR [eax],dl
1000e43c:	00 00                	add    BYTE PTR [eax],al
1000e43e:	00 00                	add    BYTE PTR [eax],al
1000e440:	fe                   	(bad)  
1000e441:	ff                   	(bad)  
1000e442:	ff                   	(bad)  
1000e443:	ff 00                	inc    DWORD PTR [eax]
1000e445:	00 00                	add    BYTE PTR [eax],al
1000e447:	00 d0                	add    al,dl
1000e449:	ff                   	(bad)  
1000e44a:	ff                   	(bad)  
1000e44b:	ff 00                	inc    DWORD PTR [eax]
1000e44d:	00 00                	add    BYTE PTR [eax],al
1000e44f:	00 fe                	add    dh,bh
1000e451:	ff                   	(bad)  
1000e452:	ff                   	(bad)  
1000e453:	ff 00                	inc    DWORD PTR [eax]
1000e455:	00 00                	add    BYTE PTR [eax],al
1000e457:	00 9e 5c 00 10 00    	add    BYTE PTR [esi+0x10005c],bl
1000e45d:	00 00                	add    BYTE PTR [eax],al
1000e45f:	00 fe                	add    dh,bh
1000e461:	ff                   	(bad)  
1000e462:	ff                   	(bad)  
1000e463:	ff 00                	inc    DWORD PTR [eax]
1000e465:	00 00                	add    BYTE PTR [eax],al
1000e467:	00 d4                	add    ah,dl
1000e469:	ff                   	(bad)  
1000e46a:	ff                   	(bad)  
1000e46b:	ff 00                	inc    DWORD PTR [eax]
1000e46d:	00 00                	add    BYTE PTR [eax],al
1000e46f:	00 fe                	add    dh,bh
1000e471:	ff                   	(bad)  
1000e472:	ff                   	(bad)  
1000e473:	ff 00                	inc    DWORD PTR [eax]
1000e475:	00 00                	add    BYTE PTR [eax],al
1000e477:	00 aa 62 00 10 00    	add    BYTE PTR [edx+0x100062],ch
1000e47d:	00 00                	add    BYTE PTR [eax],al
1000e47f:	00 fe                	add    dh,bh
1000e481:	ff                   	(bad)  
1000e482:	ff                   	(bad)  
1000e483:	ff 00                	inc    DWORD PTR [eax]
1000e485:	00 00                	add    BYTE PTR [eax],al
1000e487:	00 d8                	add    al,bl
1000e489:	ff                   	(bad)  
1000e48a:	ff                   	(bad)  
1000e48b:	ff 00                	inc    DWORD PTR [eax]
1000e48d:	00 00                	add    BYTE PTR [eax],al
1000e48f:	00 fe                	add    dh,bh
1000e491:	ff                   	(bad)  
1000e492:	ff                   	(bad)  
1000e493:	ff 00                	inc    DWORD PTR [eax]
1000e495:	00 00                	add    BYTE PTR [eax],al
1000e497:	00 4b 64             	add    BYTE PTR [ebx+0x64],cl
1000e49a:	00 10                	add    BYTE PTR [eax],dl
1000e49c:	fe                   	(bad)  
1000e49d:	ff                   	(bad)  
1000e49e:	ff                   	(bad)  
1000e49f:	ff 00                	inc    DWORD PTR [eax]
1000e4a1:	00 00                	add    BYTE PTR [eax],al
1000e4a3:	00 57 64             	add    BYTE PTR [edi+0x64],dl
1000e4a6:	00 10                	add    BYTE PTR [eax],dl
1000e4a8:	fe                   	(bad)  
1000e4a9:	ff                   	(bad)  
1000e4aa:	ff                   	(bad)  
1000e4ab:	ff 00                	inc    DWORD PTR [eax]
1000e4ad:	00 00                	add    BYTE PTR [eax],al
1000e4af:	00 8c ff ff ff 00 00 	add    BYTE PTR [edi+edi*8+0xffff],cl
1000e4b6:	00 00                	add    BYTE PTR [eax],al
1000e4b8:	fe                   	(bad)  
1000e4b9:	ff                   	(bad)  
1000e4ba:	ff                   	(bad)  
1000e4bb:	ff 60 69             	jmp    DWORD PTR [eax+0x69]
1000e4be:	00 10                	add    BYTE PTR [eax],dl
1000e4c0:	64 69 00 10 00 00 00 	imul   eax,DWORD PTR fs:[eax],0x10
1000e4c7:	00 fe                	add    dh,bh
1000e4c9:	ff                   	(bad)  
1000e4ca:	ff                   	(bad)  
1000e4cb:	ff 00                	inc    DWORD PTR [eax]
1000e4cd:	00 00                	add    BYTE PTR [eax],al
1000e4cf:	00 d4                	add    ah,dl
1000e4d1:	ff                   	(bad)  
1000e4d2:	ff                   	(bad)  
1000e4d3:	ff 00                	inc    DWORD PTR [eax]
1000e4d5:	00 00                	add    BYTE PTR [eax],al
1000e4d7:	00 fe                	add    dh,bh
1000e4d9:	ff                   	(bad)  
1000e4da:	ff                   	(bad)  
1000e4db:	ff 00                	inc    DWORD PTR [eax]
1000e4dd:	00 00                	add    BYTE PTR [eax],al
1000e4df:	00 53 73             	add    BYTE PTR [ebx+0x73],dl
1000e4e2:	00 10                	add    BYTE PTR [eax],dl
1000e4e4:	00 00                	add    BYTE PTR [eax],al
1000e4e6:	00 00                	add    BYTE PTR [eax],al
1000e4e8:	fe                   	(bad)  
1000e4e9:	ff                   	(bad)  
1000e4ea:	ff                   	(bad)  
1000e4eb:	ff 00                	inc    DWORD PTR [eax]
1000e4ed:	00 00                	add    BYTE PTR [eax],al
1000e4ef:	00 cc                	add    ah,cl
1000e4f1:	ff                   	(bad)  
1000e4f2:	ff                   	(bad)  
1000e4f3:	ff 00                	inc    DWORD PTR [eax]
1000e4f5:	00 00                	add    BYTE PTR [eax],al
1000e4f7:	00 fe                	add    dh,bh
1000e4f9:	ff                   	(bad)  
1000e4fa:	ff                   	(bad)  
1000e4fb:	ff 00                	inc    DWORD PTR [eax]
1000e4fd:	00 00                	add    BYTE PTR [eax],al
1000e4ff:	00 13                	add    BYTE PTR [ebx],dl
1000e501:	77 00                	ja     0x1000e503
1000e503:	10 00                	adc    BYTE PTR [eax],al
1000e505:	00 00                	add    BYTE PTR [eax],al
1000e507:	00 fe                	add    dh,bh
1000e509:	ff                   	(bad)  
1000e50a:	ff                   	(bad)  
1000e50b:	ff 00                	inc    DWORD PTR [eax]
1000e50d:	00 00                	add    BYTE PTR [eax],al
1000e50f:	00 d4                	add    ah,dl
1000e511:	ff                   	(bad)  
1000e512:	ff                   	(bad)  
1000e513:	ff 00                	inc    DWORD PTR [eax]
1000e515:	00 00                	add    BYTE PTR [eax],al
1000e517:	00 fe                	add    dh,bh
1000e519:	ff                   	(bad)  
1000e51a:	ff                   	(bad)  
1000e51b:	ff 00                	inc    DWORD PTR [eax]
1000e51d:	00 00                	add    BYTE PTR [eax],al
1000e51f:	00 64 7a 00          	add    BYTE PTR [edx+edi*2+0x0],ah
1000e523:	10 00                	adc    BYTE PTR [eax],al
1000e525:	00 00                	add    BYTE PTR [eax],al
1000e527:	00 fe                	add    dh,bh
1000e529:	ff                   	(bad)  
1000e52a:	ff                   	(bad)  
1000e52b:	ff 00                	inc    DWORD PTR [eax]
1000e52d:	00 00                	add    BYTE PTR [eax],al
1000e52f:	00 d4                	add    ah,dl
1000e531:	ff                   	(bad)  
1000e532:	ff                   	(bad)  
1000e533:	ff 00                	inc    DWORD PTR [eax]
1000e535:	00 00                	add    BYTE PTR [eax],al
1000e537:	00 fe                	add    dh,bh
1000e539:	ff                   	(bad)  
1000e53a:	ff                   	(bad)  
1000e53b:	ff 1f                	call   FWORD PTR [edi]
1000e53d:	87 00                	xchg   DWORD PTR [eax],eax
1000e53f:	10 3b                	adc    BYTE PTR [ebx],bh
1000e541:	87 00                	xchg   DWORD PTR [eax],eax
1000e543:	10 00                	adc    BYTE PTR [eax],al
1000e545:	00 00                	add    BYTE PTR [eax],al
1000e547:	00 fe                	add    dh,bh
1000e549:	ff                   	(bad)  
1000e54a:	ff                   	(bad)  
1000e54b:	ff 00                	inc    DWORD PTR [eax]
1000e54d:	00 00                	add    BYTE PTR [eax],al
1000e54f:	00 cc                	add    ah,cl
1000e551:	ff                   	(bad)  
1000e552:	ff                   	(bad)  
1000e553:	ff 00                	inc    DWORD PTR [eax]
1000e555:	00 00                	add    BYTE PTR [eax],al
1000e557:	00 fe                	add    dh,bh
1000e559:	ff                   	(bad)  
1000e55a:	ff                   	(bad)  
1000e55b:	ff 5f 88             	call   FWORD PTR [edi-0x78]
1000e55e:	00 10                	add    BYTE PTR [eax],dl
1000e560:	76 88                	jbe    0x1000e4ea
1000e562:	00 10                	add    BYTE PTR [eax],dl
1000e564:	00 00                	add    BYTE PTR [eax],al
1000e566:	00 00                	add    BYTE PTR [eax],al
1000e568:	fe                   	(bad)  
1000e569:	ff                   	(bad)  
1000e56a:	ff                   	(bad)  
1000e56b:	ff 00                	inc    DWORD PTR [eax]
1000e56d:	00 00                	add    BYTE PTR [eax],al
1000e56f:	00 d8                	add    al,bl
1000e571:	ff                   	(bad)  
1000e572:	ff                   	(bad)  
1000e573:	ff 00                	inc    DWORD PTR [eax]
1000e575:	00 00                	add    BYTE PTR [eax],al
1000e577:	00 fe                	add    dh,bh
1000e579:	ff                   	(bad)  
1000e57a:	ff                   	(bad)  
1000e57b:	ff 09                	dec    DWORD PTR [ecx]
1000e57d:	8b 00                	mov    eax,DWORD PTR [eax]
1000e57f:	10 1d 8b 00 10 00    	adc    BYTE PTR ds:0x10008b,bl
1000e585:	00 00                	add    BYTE PTR [eax],al
1000e587:	00 fe                	add    dh,bh
1000e589:	ff                   	(bad)  
1000e58a:	ff                   	(bad)  
1000e58b:	ff 00                	inc    DWORD PTR [eax]
1000e58d:	00 00                	add    BYTE PTR [eax],al
1000e58f:	00 d4                	add    ah,dl
1000e591:	ff                   	(bad)  
1000e592:	ff                   	(bad)  
1000e593:	ff 00                	inc    DWORD PTR [eax]
1000e595:	00 00                	add    BYTE PTR [eax],al
1000e597:	00 fe                	add    dh,bh
1000e599:	ff                   	(bad)  
1000e59a:	ff                   	(bad)  
1000e59b:	ff 00                	inc    DWORD PTR [eax]
1000e59d:	00 00                	add    BYTE PTR [eax],al
1000e59f:	00 59 8c             	add    BYTE PTR [ecx-0x74],bl
1000e5a2:	00 10                	add    BYTE PTR [eax],dl
1000e5a4:	00 00                	add    BYTE PTR [eax],al
1000e5a6:	00 00                	add    BYTE PTR [eax],al
1000e5a8:	fe                   	(bad)  
1000e5a9:	ff                   	(bad)  
1000e5aa:	ff                   	(bad)  
1000e5ab:	ff 00                	inc    DWORD PTR [eax]
1000e5ad:	00 00                	add    BYTE PTR [eax],al
1000e5af:	00 d8                	add    al,bl
1000e5b1:	ff                   	(bad)  
1000e5b2:	ff                   	(bad)  
1000e5b3:	ff 00                	inc    DWORD PTR [eax]
1000e5b5:	00 00                	add    BYTE PTR [eax],al
1000e5b7:	00 fe                	add    dh,bh
1000e5b9:	ff                   	(bad)  
1000e5ba:	ff                   	(bad)  
1000e5bb:	ff 91 8c 00 10 95    	call   DWORD PTR [ecx-0x6aefff74]
1000e5c1:	8c 00                	mov    WORD PTR [eax],es
1000e5c3:	10 00                	adc    BYTE PTR [eax],al
1000e5c5:	00 00                	add    BYTE PTR [eax],al
1000e5c7:	00 fe                	add    dh,bh
1000e5c9:	ff                   	(bad)  
1000e5ca:	ff                   	(bad)  
1000e5cb:	ff 00                	inc    DWORD PTR [eax]
1000e5cd:	00 00                	add    BYTE PTR [eax],al
1000e5cf:	00 c0                	add    al,al
1000e5d1:	ff                   	(bad)  
1000e5d2:	ff                   	(bad)  
1000e5d3:	ff 00                	inc    DWORD PTR [eax]
1000e5d5:	00 00                	add    BYTE PTR [eax],al
1000e5d7:	00 fe                	add    dh,bh
1000e5d9:	ff                   	(bad)  
1000e5da:	ff                   	(bad)  
1000e5db:	ff 00                	inc    DWORD PTR [eax]
1000e5dd:	00 00                	add    BYTE PTR [eax],al
1000e5df:	00 83 8e 00 10 00    	add    BYTE PTR [ebx+0x10008e],al
1000e5e5:	00 00                	add    BYTE PTR [eax],al
1000e5e7:	00 fe                	add    dh,bh
1000e5e9:	ff                   	(bad)  
1000e5ea:	ff                   	(bad)  
1000e5eb:	ff 00                	inc    DWORD PTR [eax]
1000e5ed:	00 00                	add    BYTE PTR [eax],al
1000e5ef:	00 d4                	add    ah,dl
1000e5f1:	ff                   	(bad)  
1000e5f2:	ff                   	(bad)  
1000e5f3:	ff 00                	inc    DWORD PTR [eax]
1000e5f5:	00 00                	add    BYTE PTR [eax],al
1000e5f7:	00 fe                	add    dh,bh
1000e5f9:	ff                   	(bad)  
1000e5fa:	ff                   	(bad)  
1000e5fb:	ff 00                	inc    DWORD PTR [eax]
1000e5fd:	00 00                	add    BYTE PTR [eax],al
1000e5ff:	00 8f 93 00 10 00    	add    BYTE PTR [edi+0x100093],cl
1000e605:	00 00                	add    BYTE PTR [eax],al
1000e607:	00 fe                	add    dh,bh
1000e609:	ff                   	(bad)  
1000e60a:	ff                   	(bad)  
1000e60b:	ff 00                	inc    DWORD PTR [eax]
1000e60d:	00 00                	add    BYTE PTR [eax],al
1000e60f:	00 d0                	add    al,dl
1000e611:	ff                   	(bad)  
1000e612:	ff                   	(bad)  
1000e613:	ff 00                	inc    DWORD PTR [eax]
1000e615:	00 00                	add    BYTE PTR [eax],al
1000e617:	00 fe                	add    dh,bh
1000e619:	ff                   	(bad)  
1000e61a:	ff                   	(bad)  
1000e61b:	ff 00                	inc    DWORD PTR [eax]
1000e61d:	00 00                	add    BYTE PTR [eax],al
1000e61f:	00 f4                	add    ah,dh
1000e621:	94                   	xchg   esp,eax
1000e622:	00 10                	add    BYTE PTR [eax],dl
1000e624:	00 00                	add    BYTE PTR [eax],al
1000e626:	00 00                	add    BYTE PTR [eax],al
1000e628:	fe                   	(bad)  
1000e629:	ff                   	(bad)  
1000e62a:	ff                   	(bad)  
1000e62b:	ff 00                	inc    DWORD PTR [eax]
1000e62d:	00 00                	add    BYTE PTR [eax],al
1000e62f:	00 d0                	add    al,dl
1000e631:	ff                   	(bad)  
1000e632:	ff                   	(bad)  
1000e633:	ff 00                	inc    DWORD PTR [eax]
1000e635:	00 00                	add    BYTE PTR [eax],al
1000e637:	00 fe                	add    dh,bh
1000e639:	ff                   	(bad)  
1000e63a:	ff                   	(bad)  
1000e63b:	ff 00                	inc    DWORD PTR [eax]
1000e63d:	00 00                	add    BYTE PTR [eax],al
1000e63f:	00 d1                	add    cl,dl
1000e641:	c5 00                	lds    eax,FWORD PTR [eax]
1000e643:	10 00                	adc    BYTE PTR [eax],al
1000e645:	00 00                	add    BYTE PTR [eax],al
1000e647:	00 fe                	add    dh,bh
1000e649:	ff                   	(bad)  
1000e64a:	ff                   	(bad)  
1000e64b:	ff 00                	inc    DWORD PTR [eax]
1000e64d:	00 00                	add    BYTE PTR [eax],al
1000e64f:	00 d8                	add    al,bl
1000e651:	ff                   	(bad)  
1000e652:	ff                   	(bad)  
1000e653:	ff 00                	inc    DWORD PTR [eax]
1000e655:	00 00                	add    BYTE PTR [eax],al
1000e657:	00 fe                	add    dh,bh
1000e659:	ff                   	(bad)  
1000e65a:	ff                   	(bad)  
1000e65b:	ff 06                	inc    DWORD PTR [esi]
1000e65d:	cb                   	retf   
1000e65e:	00 10                	add    BYTE PTR [eax],dl
1000e660:	22 cb                	and    cl,bl
1000e662:	00 10                	add    BYTE PTR [eax],dl
1000e664:	b8 e7 00 00 00       	mov    eax,0xe7
1000e669:	00 00                	add    BYTE PTR [eax],al
1000e66b:	00 00                	add    BYTE PTR [eax],al
1000e66d:	00 00                	add    BYTE PTR [eax],al
1000e66f:	00 6e e8             	add    BYTE PTR [esi-0x18],ch
1000e672:	00 00                	add    BYTE PTR [eax],al
1000e674:	04 d1                	add    al,0xd1
1000e676:	00 00                	add    BYTE PTR [eax],al
1000e678:	b4 e6                	mov    ah,0xe6
	...
1000e682:	00 00                	add    BYTE PTR [eax],al
1000e684:	f0 e8 00 00 00 d0    	lock call 0xe000e68a
1000e68a:	00 00                	add    BYTE PTR [eax],al
1000e68c:	cc                   	int3   
1000e68d:	e7 00                	out    0x0,eax
	...
1000e697:	00 c8                	add    al,cl
1000e699:	e9 00 00 18 d1       	jmp    0xe118e69e
	...
1000e6b2:	00 00                	add    BYTE PTR [eax],al
1000e6b4:	84 eb                	test   bl,ch
1000e6b6:	00 00                	add    BYTE PTR [eax],al
1000e6b8:	7c e8                	jl     0x1000e6a2
1000e6ba:	00 00                	add    BYTE PTR [eax],al
1000e6bc:	8a e8                	mov    ch,al
1000e6be:	00 00                	add    BYTE PTR [eax],al
1000e6c0:	9a e8 00 00 a8 e8 00 	call   0xe8:0xa80000e8
1000e6c7:	00 b8 e8 00 00 d2    	add    BYTE PTR [eax-0x2dffff18],bh
1000e6cd:	e8 00 00 e0 e8       	call   0xf8e0e6d2
1000e6d2:	00 00                	add    BYTE PTR [eax],al
1000e6d4:	de ed                	fsubrp st(5),st
1000e6d6:	00 00                	add    BYTE PTR [eax],al
1000e6d8:	cc                   	int3   
1000e6d9:	ed                   	in     eax,dx
1000e6da:	00 00                	add    BYTE PTR [eax],al
1000e6dc:	ba ed 00 00 a8       	mov    edx,0xa80000ed
1000e6e1:	ed                   	in     eax,dx
1000e6e2:	00 00                	add    BYTE PTR [eax],al
1000e6e4:	98                   	cwde   
1000e6e5:	ed                   	in     eax,dx
1000e6e6:	00 00                	add    BYTE PTR [eax],al
1000e6e8:	d4 e9                	aam    0xe9
1000e6ea:	00 00                	add    BYTE PTR [eax],al
1000e6ec:	e0 e9                	loopne 0x1000e6d7
1000e6ee:	00 00                	add    BYTE PTR [eax],al
1000e6f0:	ec                   	in     al,dx
1000e6f1:	e9 00 00 02 ea       	jmp    0xfa02e6f6
1000e6f6:	00 00                	add    BYTE PTR [eax],al
1000e6f8:	14 ea                	adc    al,0xea
1000e6fa:	00 00                	add    BYTE PTR [eax],al
1000e6fc:	24 ea                	and    al,0xea
1000e6fe:	00 00                	add    BYTE PTR [eax],al
1000e700:	36 ea 00 00 48 ea 00 	ss jmp 0x0:0xea480000
1000e707:	00 
1000e708:	5c                   	pop    esp
1000e709:	ea 00 00 6a ea 00 00 	jmp    0x0:0xea6a0000
1000e710:	78 ea                	js     0x1000e6fc
1000e712:	00 00                	add    BYTE PTR [eax],al
1000e714:	90                   	nop
1000e715:	ea 00 00 a8 ea 00 00 	jmp    0x0:0xeaa80000
1000e71c:	c0 ea 00             	shr    dl,0x0
1000e71f:	00 ce                	add    dh,cl
1000e721:	ea 00 00 dc ea 00 00 	jmp    0x0:0xeadc0000
1000e728:	e8 ea 00 00 f8       	call   0x800e817
1000e72d:	ea 00 00 0e eb 00 00 	jmp    0x0:0xeb0e0000
1000e734:	22 eb                	and    ch,bl
1000e736:	00 00                	add    BYTE PTR [eax],al
1000e738:	36 eb 00             	ss jmp 0x1000e73b
1000e73b:	00 52 eb             	add    BYTE PTR [edx-0x15],dl
1000e73e:	00 00                	add    BYTE PTR [eax],al
1000e740:	70 eb                	jo     0x1000e72d
1000e742:	00 00                	add    BYTE PTR [eax],al
1000e744:	92                   	xchg   edx,eax
1000e745:	eb 00                	jmp    0x1000e747
1000e747:	00 9e eb 00 00 ac    	add    BYTE PTR [esi-0x53ffff15],bl
1000e74d:	eb 00                	jmp    0x1000e74f
1000e74f:	00 b6 eb 00 00 ce    	add    BYTE PTR [esi-0x31ffff15],dh
1000e755:	eb 00                	jmp    0x1000e757
1000e757:	00 de                	add    dh,bl
1000e759:	eb 00                	jmp    0x1000e75b
1000e75b:	00 f6                	add    dh,dh
1000e75d:	eb 00                	jmp    0x1000e75f
1000e75f:	00 fe                	add    dh,bh
1000e761:	eb 00                	jmp    0x1000e763
1000e763:	00 10                	add    BYTE PTR [eax],dl
1000e765:	ec                   	in     al,dx
1000e766:	00 00                	add    BYTE PTR [eax],al
1000e768:	1e                   	push   ds
1000e769:	ec                   	in     al,dx
1000e76a:	00 00                	add    BYTE PTR [eax],al
1000e76c:	30 ec                	xor    ah,ch
1000e76e:	00 00                	add    BYTE PTR [eax],al
1000e770:	4a                   	dec    edx
1000e771:	ec                   	in     al,dx
1000e772:	00 00                	add    BYTE PTR [eax],al
1000e774:	62                   	(bad)  
1000e775:	ec                   	in     al,dx
1000e776:	00 00                	add    BYTE PTR [eax],al
1000e778:	7c ec                	jl     0x1000e766
1000e77a:	00 00                	add    BYTE PTR [eax],al
1000e77c:	92                   	xchg   edx,eax
1000e77d:	ec                   	in     al,dx
1000e77e:	00 00                	add    BYTE PTR [eax],al
1000e780:	ac                   	lods   al,BYTE PTR ds:[esi]
1000e781:	ec                   	in     al,dx
1000e782:	00 00                	add    BYTE PTR [eax],al
1000e784:	c6                   	(bad)  
1000e785:	ec                   	in     al,dx
1000e786:	00 00                	add    BYTE PTR [eax],al
1000e788:	d6                   	(bad)  
1000e789:	ec                   	in     al,dx
1000e78a:	00 00                	add    BYTE PTR [eax],al
1000e78c:	ec                   	in     al,dx
1000e78d:	ec                   	in     al,dx
1000e78e:	00 00                	add    BYTE PTR [eax],al
1000e790:	06                   	push   es
1000e791:	ed                   	in     eax,dx
1000e792:	00 00                	add    BYTE PTR [eax],al
1000e794:	12 ed                	adc    ch,ch
1000e796:	00 00                	add    BYTE PTR [eax],al
1000e798:	1c ed                	sbb    al,0xed
1000e79a:	00 00                	add    BYTE PTR [eax],al
1000e79c:	28 ed                	sub    ch,ch
1000e79e:	00 00                	add    BYTE PTR [eax],al
1000e7a0:	3a ed                	cmp    ch,ch
1000e7a2:	00 00                	add    BYTE PTR [eax],al
1000e7a4:	56                   	push   esi
1000e7a5:	ed                   	in     eax,dx
1000e7a6:	00 00                	add    BYTE PTR [eax],al
1000e7a8:	62                   	(bad)  
1000e7a9:	ed                   	in     eax,dx
1000e7aa:	00 00                	add    BYTE PTR [eax],al
1000e7ac:	72 ed                	jb     0x1000e79b
1000e7ae:	00 00                	add    BYTE PTR [eax],al
1000e7b0:	82 ed 00             	sub    ch,0x0
1000e7b3:	00 00                	add    BYTE PTR [eax],al
1000e7b5:	00 00                	add    BYTE PTR [eax],al
1000e7b7:	00 f4                	add    ah,dh
1000e7b9:	e7 00                	out    0x0,eax
1000e7bb:	00 32                	add    BYTE PTR [edx],dh
1000e7bd:	e8 00 00 56 e8       	call   0xf856e7c2
1000e7c2:	00 00                	add    BYTE PTR [eax],al
1000e7c4:	14 e8                	adc    al,0xe8
1000e7c6:	00 00                	add    BYTE PTR [eax],al
1000e7c8:	00 00                	add    BYTE PTR [eax],al
1000e7ca:	00 00                	add    BYTE PTR [eax],al
1000e7cc:	52                   	push   edx
1000e7cd:	e9 00 00 3e e9       	jmp    0xf93ee7d2
1000e7d2:	00 00                	add    BYTE PTR [eax],al
1000e7d4:	66 e9 00 00          	jmpw   0xe7d8
1000e7d8:	10 e9                	adc    cl,ch
1000e7da:	00 00                	add    BYTE PTR [eax],al
1000e7dc:	fe                   	(bad)  
1000e7dd:	e8 00 00 86 e9       	call   0xf986e7e2
1000e7e2:	00 00                	add    BYTE PTR [eax],al
1000e7e4:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
1000e7e5:	e9 00 00 ba e9       	jmp    0xf9bae7ea
1000e7ea:	00 00                	add    BYTE PTR [eax],al
1000e7ec:	2a e9                	sub    ch,cl
1000e7ee:	00 00                	add    BYTE PTR [eax],al
1000e7f0:	00 00                	add    BYTE PTR [eax],al
1000e7f2:	00 00                	add    BYTE PTR [eax],al
1000e7f4:	1b 01                	sbb    eax,DWORD PTR [ecx]
1000e7f6:	53                   	push   ebx
1000e7f7:	65 74 75             	gs je  0x1000e86f
1000e7fa:	70 44                	jo     0x1000e840
1000e7fc:	69 44 65 73 74 72 6f 	imul   eax,DWORD PTR [ebp+eiz*2+0x73],0x796f7274
1000e803:	79 
1000e804:	44                   	inc    esp
1000e805:	65 76 69             	gs jbe 0x1000e871
1000e808:	63 65 49             	arpl   WORD PTR [ebp+0x49],sp
1000e80b:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e80c:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000e80e:	4c                   	dec    esp
1000e80f:	69 73 74 00 00 1f 01 	imul   esi,DWORD PTR [ebx+0x74],0x11f0000
1000e816:	53                   	push   ebx
1000e817:	65 74 75             	gs je  0x1000e88f
1000e81a:	70 44                	jo     0x1000e860
1000e81c:	69 45 6e 75 6d 44 65 	imul   eax,DWORD PTR [ebp+0x6e],0x65446d75
1000e823:	76 69                	jbe    0x1000e88e
1000e825:	63 65 49             	arpl   WORD PTR [ebp+0x49],sp
1000e828:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e829:	74 65                	je     0x1000e890
1000e82b:	72 66                	jb     0x1000e893
1000e82d:	61                   	popa   
1000e82e:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000e831:	00 43 01             	add    BYTE PTR [ebx+0x1],al
1000e834:	53                   	push   ebx
1000e835:	65 74 75             	gs je  0x1000e8ad
1000e838:	70 44                	jo     0x1000e87e
1000e83a:	69 47 65 74 44 65 76 	imul   eax,DWORD PTR [edi+0x65],0x76654474
1000e841:	69 63 65 49 6e 74 65 	imul   esp,DWORD PTR [ebx+0x65],0x65746e49
1000e848:	72 66                	jb     0x1000e8b0
1000e84a:	61                   	popa   
1000e84b:	63 65 44             	arpl   WORD PTR [ebp+0x44],sp
1000e84e:	65 74 61             	gs je  0x1000e8b2
1000e851:	69 6c 41 00 00 2d 01 	imul   ebp,DWORD PTR [ecx+eax*2+0x0],0x53012d00
1000e858:	53 
1000e859:	65 74 75             	gs je  0x1000e8d1
1000e85c:	70 44                	jo     0x1000e8a2
1000e85e:	69 47 65 74 43 6c 61 	imul   eax,DWORD PTR [edi+0x65],0x616c4374
1000e865:	73 73                	jae    0x1000e8da
1000e867:	44                   	inc    esp
1000e868:	65 76 73             	gs jbe 0x1000e8de
1000e86b:	41                   	inc    ecx
1000e86c:	00 00                	add    BYTE PTR [eax],al
1000e86e:	53                   	push   ebx
1000e86f:	45                   	inc    ebp
1000e870:	54                   	push   esp
1000e871:	55                   	push   ebp
1000e872:	50                   	push   eax
1000e873:	41                   	inc    ecx
1000e874:	50                   	push   eax
1000e875:	49                   	dec    ecx
1000e876:	2e 64 6c             	cs fs ins BYTE PTR es:[edi],dx
1000e879:	6c                   	ins    BYTE PTR es:[edi],dx
1000e87a:	00 00                	add    BYTE PTR [eax],al
1000e87c:	71 03                	jno    0x1000e881
1000e87e:	56                   	push   esi
1000e87f:	69 72 74 75 61 6c 46 	imul   esi,DWORD PTR [edx+0x74],0x466c6175
1000e886:	72 65                	jb     0x1000e8ed
1000e888:	65 00 6e 03          	add    BYTE PTR gs:[esi+0x3],ch
1000e88c:	56                   	push   esi
1000e88d:	69 72 74 75 61 6c 41 	imul   esi,DWORD PTR [edx+0x74],0x416c6175
1000e894:	6c                   	ins    BYTE PTR es:[edi],dx
1000e895:	6c                   	ins    BYTE PTR es:[edi],dx
1000e896:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e897:	63 00                	arpl   WORD PTR [eax],ax
1000e899:	00 31                	add    BYTE PTR [ecx],dh
1000e89b:	00 43 6c             	add    BYTE PTR [ebx+0x6c],al
1000e89e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e89f:	73 65                	jae    0x1000e906
1000e8a1:	48                   	dec    eax
1000e8a2:	61                   	popa   
1000e8a3:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e8a4:	64 6c                	fs ins BYTE PTR es:[edi],dx
1000e8a6:	65 00 4b 00          	add    BYTE PTR gs:[ebx+0x0],cl
1000e8aa:	43                   	inc    ebx
1000e8ab:	72 65                	jb     0x1000e912
1000e8ad:	61                   	popa   
1000e8ae:	74 65                	je     0x1000e915
1000e8b0:	45                   	inc    ebp
1000e8b1:	76 65                	jbe    0x1000e918
1000e8b3:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e8b4:	74 41                	je     0x1000e8f7
1000e8b6:	00 00                	add    BYTE PTR [eax],al
1000e8b8:	7c 03                	jl     0x1000e8bd
1000e8ba:	57                   	push   edi
1000e8bb:	61                   	popa   
1000e8bc:	69 74 46 6f 72 4d 75 	imul   esi,DWORD PTR [esi+eax*2+0x6f],0x6c754d72
1000e8c3:	6c 
1000e8c4:	74 69                	je     0x1000e92f
1000e8c6:	70 6c                	jo     0x1000e934
1000e8c8:	65 4f                	gs dec edi
1000e8ca:	62 6a 65             	bound  ebp,QWORD PTR [edx+0x65]
1000e8cd:	63 74 73 00          	arpl   WORD PTR [ebx+esi*2+0x0],si
1000e8d1:	00 4f 00             	add    BYTE PTR [edi+0x0],cl
1000e8d4:	43                   	inc    ebx
1000e8d5:	72 65                	jb     0x1000e93c
1000e8d7:	61                   	popa   
1000e8d8:	74 65                	je     0x1000e93f
1000e8da:	46                   	inc    esi
1000e8db:	69 6c 65 41 00 68 01 	imul   ebp,DWORD PTR [ebp+eiz*2+0x41],0x47016800
1000e8e2:	47 
1000e8e3:	65 74 4c             	gs je  0x1000e932
1000e8e6:	61                   	popa   
1000e8e7:	73 74                	jae    0x1000e95d
1000e8e9:	45                   	inc    ebp
1000e8ea:	72 72                	jb     0x1000e95e
1000e8ec:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e8ed:	72 00                	jb     0x1000e8ef
1000e8ef:	00 4b 45             	add    BYTE PTR [ebx+0x45],cl
1000e8f2:	52                   	push   edx
1000e8f3:	4e                   	dec    esi
1000e8f4:	45                   	inc    ebp
1000e8f5:	4c                   	dec    esp
1000e8f6:	33 32                	xor    esi,DWORD PTR [edx]
1000e8f8:	2e 64 6c             	cs fs ins BYTE PTR es:[edi],dx
1000e8fb:	6c                   	ins    BYTE PTR es:[edi],dx
1000e8fc:	00 00                	add    BYTE PTR [eax],al
1000e8fe:	10 00                	adc    BYTE PTR [eax],al
1000e900:	57                   	push   edi
1000e901:	69 6e 55 73 62 5f 52 	imul   ebp,DWORD PTR [esi+0x55],0x525f6273
1000e908:	65 61                	gs popa 
1000e90a:	64 50                	fs push eax
1000e90c:	69 70 65 00 01 00 57 	imul   esi,DWORD PTR [eax+0x65],0x57000100
1000e913:	69 6e 55 73 62 5f 43 	imul   ebp,DWORD PTR [esi+0x55],0x435f6273
1000e91a:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e91b:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e91c:	74 72                	je     0x1000e990
1000e91e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e91f:	6c                   	ins    BYTE PTR es:[edi],dx
1000e920:	54                   	push   esp
1000e921:	72 61                	jb     0x1000e984
1000e923:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e924:	73 66                	jae    0x1000e98c
1000e926:	65 72 00             	gs jb  0x1000e929
1000e929:	00 11                	add    BYTE PTR [ecx],dl
1000e92b:	00 57 69             	add    BYTE PTR [edi+0x69],dl
1000e92e:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e92f:	55                   	push   ebp
1000e930:	73 62                	jae    0x1000e994
1000e932:	5f                   	pop    edi
1000e933:	52                   	push   edx
1000e934:	65 73 65             	gs jae 0x1000e99c
1000e937:	74 50                	je     0x1000e989
1000e939:	69 70 65 00 00 00 00 	imul   esi,DWORD PTR [eax+0x65],0x0
1000e940:	57                   	push   edi
1000e941:	69 6e 55 73 62 5f 41 	imul   ebp,DWORD PTR [esi+0x55],0x415f6273
1000e948:	62 6f 72             	bound  ebp,QWORD PTR [edi+0x72]
1000e94b:	74 50                	je     0x1000e99d
1000e94d:	69 70 65 00 00 0f 00 	imul   esi,DWORD PTR [eax+0x65],0xf0000
1000e954:	57                   	push   edi
1000e955:	69 6e 55 73 62 5f 51 	imul   ebp,DWORD PTR [esi+0x55],0x515f6273
1000e95c:	75 65                	jne    0x1000e9c3
1000e95e:	72 79                	jb     0x1000e9d9
1000e960:	50                   	push   eax
1000e961:	69 70 65 00 00 0e 00 	imul   esi,DWORD PTR [eax+0x65],0xe0000
1000e968:	57                   	push   edi
1000e969:	69 6e 55 73 62 5f 51 	imul   ebp,DWORD PTR [esi+0x55],0x515f6273
1000e970:	75 65                	jne    0x1000e9d7
1000e972:	72 79                	jb     0x1000e9ed
1000e974:	49                   	dec    ecx
1000e975:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e976:	74 65                	je     0x1000e9dd
1000e978:	72 66                	jb     0x1000e9e0
1000e97a:	61                   	popa   
1000e97b:	63 65 53             	arpl   WORD PTR [ebp+0x53],sp
1000e97e:	65 74 74             	gs je  0x1000e9f5
1000e981:	69 6e 67 73 00 0d 00 	imul   ebp,DWORD PTR [esi+0x67],0xd0073
1000e988:	57                   	push   edi
1000e989:	69 6e 55 73 62 5f 51 	imul   ebp,DWORD PTR [esi+0x55],0x515f6273
1000e990:	75 65                	jne    0x1000e9f7
1000e992:	72 79                	jb     0x1000ea0d
1000e994:	44                   	inc    esp
1000e995:	65 76 69             	gs jbe 0x1000ea01
1000e998:	63 65 49             	arpl   WORD PTR [ebp+0x49],sp
1000e99b:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e99c:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000e99e:	72 6d                	jb     0x1000ea0d
1000e9a0:	61                   	popa   
1000e9a1:	74 69                	je     0x1000ea0c
1000e9a3:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e9a4:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e9a5:	00 0a                	add    BYTE PTR [edx],cl
1000e9a7:	00 57 69             	add    BYTE PTR [edi+0x69],dl
1000e9aa:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e9ab:	55                   	push   ebp
1000e9ac:	73 62                	jae    0x1000ea10
1000e9ae:	5f                   	pop    edi
1000e9af:	49                   	dec    ecx
1000e9b0:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e9b1:	69 74 69 61 6c 69 7a 	imul   esi,DWORD PTR [ecx+ebp*2+0x61],0x657a696c
1000e9b8:	65 
1000e9b9:	00 03                	add    BYTE PTR [ebx],al
1000e9bb:	00 57 69             	add    BYTE PTR [edi+0x69],dl
1000e9be:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e9bf:	55                   	push   ebp
1000e9c0:	73 62                	jae    0x1000ea24
1000e9c2:	5f                   	pop    edi
1000e9c3:	46                   	inc    esi
1000e9c4:	72 65                	jb     0x1000ea2b
1000e9c6:	65 00 57 49          	add    BYTE PTR gs:[edi+0x49],dl
1000e9ca:	4e                   	dec    esi
1000e9cb:	55                   	push   ebp
1000e9cc:	53                   	push   ebx
1000e9cd:	42                   	inc    edx
1000e9ce:	2e 44                	cs inc esp
1000e9d0:	4c                   	dec    esp
1000e9d1:	4c                   	dec    esp
1000e9d2:	00 00                	add    BYTE PTR [eax],al
1000e9d4:	0b 02                	or     eax,DWORD PTR [edx]
1000e9d6:	48                   	dec    eax
1000e9d7:	65 61                	gs popa 
1000e9d9:	70 46                	jo     0x1000ea21
1000e9db:	72 65                	jb     0x1000ea42
1000e9dd:	65 00 00             	add    BYTE PTR gs:[eax],al
1000e9e0:	05 02 48 65 61       	add    eax,0x61654802
1000e9e5:	70 41                	jo     0x1000ea28
1000e9e7:	6c                   	ins    BYTE PTR es:[edi],dx
1000e9e8:	6c                   	ins    BYTE PTR es:[edi],dx
1000e9e9:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000e9ea:	63 00                	arpl   WORD PTR [eax],ax
1000e9ec:	3e 01 47 65          	add    DWORD PTR ds:[edi+0x65],eax
1000e9f0:	74 43                	je     0x1000ea35
1000e9f2:	75 72                	jne    0x1000ea66
1000e9f4:	72 65                	jb     0x1000ea5b
1000e9f6:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000e9f7:	74 54                	je     0x1000ea4d
1000e9f9:	68 72 65 61 64       	push   0x64616572
1000e9fe:	49                   	dec    ecx
1000e9ff:	64 00 00             	add    BYTE PTR fs:[eax],al
1000ea02:	09 01                	or     DWORD PTR [ecx],eax
1000ea04:	47                   	inc    edi
1000ea05:	65 74 43             	gs je  0x1000ea4b
1000ea08:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ea09:	6d                   	ins    DWORD PTR es:[edi],dx
1000ea0a:	6d                   	ins    DWORD PTR es:[edi],dx
1000ea0b:	61                   	popa   
1000ea0c:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ea0d:	64 4c                	fs dec esp
1000ea0f:	69 6e 65 41 00 de 01 	imul   ebp,DWORD PTR [esi+0x65],0x1de0041
1000ea16:	47                   	inc    edi
1000ea17:	65 74 56             	gs je  0x1000ea70
1000ea1a:	65 72 73             	gs jb  0x1000ea90
1000ea1d:	69 6f 6e 45 78 41 00 	imul   ebp,DWORD PTR [edi+0x6e],0x417845
1000ea24:	9c                   	pushf  
1000ea25:	01 47 65             	add    DWORD PTR [edi+0x65],eax
1000ea28:	74 50                	je     0x1000ea7a
1000ea2a:	72 6f                	jb     0x1000ea9b
1000ea2c:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000ea2f:	73 48                	jae    0x1000ea79
1000ea31:	65 61                	gs popa 
1000ea33:	70 00                	jo     0x1000ea35
1000ea35:	00 98 01 47 65 74    	add    BYTE PTR [eax+0x74654701],bl
1000ea3b:	50                   	push   eax
1000ea3c:	72 6f                	jb     0x1000eaad
1000ea3e:	63 41 64             	arpl   WORD PTR [ecx+0x64],ax
1000ea41:	64 72 65             	fs jb  0x1000eaa9
1000ea44:	73 73                	jae    0x1000eab9
1000ea46:	00 00                	add    BYTE PTR [eax],al
1000ea48:	76 01                	jbe    0x1000ea4b
1000ea4a:	47                   	inc    edi
1000ea4b:	65 74 4d             	gs je  0x1000ea9b
1000ea4e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ea4f:	64 75 6c             	fs jne 0x1000eabe
1000ea52:	65 48                	gs dec eax
1000ea54:	61                   	popa   
1000ea55:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ea56:	64 6c                	fs ins BYTE PTR es:[edi],dx
1000ea58:	65 41                	gs inc ecx
1000ea5a:	00 00                	add    BYTE PTR [eax],al
1000ea5c:	09 02                	or     DWORD PTR [edx],eax
1000ea5e:	48                   	dec    eax
1000ea5f:	65 61                	gs popa 
1000ea61:	70 44                	jo     0x1000eaa7
1000ea63:	65 73 74             	gs jae 0x1000eada
1000ea66:	72 6f                	jb     0x1000ead7
1000ea68:	79 00                	jns    0x1000ea6a
1000ea6a:	07                   	pop    es
1000ea6b:	02 48 65             	add    cl,BYTE PTR [eax+0x65]
1000ea6e:	61                   	popa   
1000ea6f:	70 43                	jo     0x1000eab4
1000ea71:	72 65                	jb     0x1000ead8
1000ea73:	61                   	popa   
1000ea74:	74 65                	je     0x1000eadb
1000ea76:	00 00                	add    BYTE PTR [eax],al
1000ea78:	7f 00                	jg     0x1000ea7a
1000ea7a:	44                   	inc    esp
1000ea7b:	65 6c                	gs ins BYTE PTR es:[edi],dx
1000ea7d:	65 74 65             	gs je  0x1000eae5
1000ea80:	43                   	inc    ebx
1000ea81:	72 69                	jb     0x1000eaec
1000ea83:	74 69                	je     0x1000eaee
1000ea85:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000ea88:	53                   	push   ebx
1000ea89:	65 63 74 69 6f       	arpl   WORD PTR gs:[ecx+ebp*2+0x6f],si
1000ea8e:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ea8f:	00 43 02             	add    BYTE PTR [ebx+0x2],al
1000ea92:	4c                   	dec    esp
1000ea93:	65 61                	gs popa 
1000ea95:	76 65                	jbe    0x1000eafc
1000ea97:	43                   	inc    ebx
1000ea98:	72 69                	jb     0x1000eb03
1000ea9a:	74 69                	je     0x1000eb05
1000ea9c:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000ea9f:	53                   	push   ebx
1000eaa0:	65 63 74 69 6f       	arpl   WORD PTR gs:[ecx+ebp*2+0x6f],si
1000eaa5:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eaa6:	00 00                	add    BYTE PTR [eax],al
1000eaa8:	96                   	xchg   esi,eax
1000eaa9:	00 45 6e             	add    BYTE PTR [ebp+0x6e],al
1000eaac:	74 65                	je     0x1000eb13
1000eaae:	72 43                	jb     0x1000eaf3
1000eab0:	72 69                	jb     0x1000eb1b
1000eab2:	74 69                	je     0x1000eb1d
1000eab4:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000eab7:	53                   	push   ebx
1000eab8:	65 63 74 69 6f       	arpl   WORD PTR gs:[ecx+ebp*2+0x6f],si
1000eabd:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eabe:	00 00                	add    BYTE PTR [eax],al
1000eac0:	0f 02 48 65          	lar    ecx,WORD PTR [eax+0x65]
1000eac4:	61                   	popa   
1000eac5:	70 52                	jo     0x1000eb19
1000eac7:	65 41                	gs inc ecx
1000eac9:	6c                   	ins    BYTE PTR es:[edi],dx
1000eaca:	6c                   	ins    BYTE PTR es:[edi],dx
1000eacb:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000eacc:	63 00                	arpl   WORD PTR [eax],ax
1000eace:	b6 00                	mov    dh,0x0
1000ead0:	45                   	inc    ebp
1000ead1:	78 69                	js     0x1000eb3c
1000ead3:	74 50                	je     0x1000eb25
1000ead5:	72 6f                	jb     0x1000eb46
1000ead7:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000eada:	73 00                	jae    0x1000eadc
1000eadc:	8f 03                	pop    DWORD PTR [ebx]
1000eade:	57                   	push   edi
1000eadf:	72 69                	jb     0x1000eb4a
1000eae1:	74 65                	je     0x1000eb48
1000eae3:	46                   	inc    esi
1000eae4:	69 6c 65 00 b0 01 47 	imul   ebp,DWORD PTR [ebp+eiz*2+0x0],0x654701b0
1000eaeb:	65 
1000eaec:	74 53                	je     0x1000eb41
1000eaee:	74 64                	je     0x1000eb54
1000eaf0:	48                   	dec    eax
1000eaf1:	61                   	popa   
1000eaf2:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eaf3:	64 6c                	fs ins BYTE PTR es:[edi],dx
1000eaf5:	65 00 00             	add    BYTE PTR gs:[eax],al
1000eaf8:	74 01                	je     0x1000eafb
1000eafa:	47                   	inc    edi
1000eafb:	65 74 4d             	gs je  0x1000eb4b
1000eafe:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000eaff:	64 75 6c             	fs jne 0x1000eb6e
1000eb02:	65 46                	gs inc esi
1000eb04:	69 6c 65 4e 61 6d 65 	imul   ebp,DWORD PTR [ebp+eiz*2+0x4e],0x41656d61
1000eb0b:	41 
1000eb0c:	00 00                	add    BYTE PTR [eax],al
1000eb0e:	4a                   	dec    edx
1000eb0f:	03 54 65 72          	add    edx,DWORD PTR [ebp+eiz*2+0x72]
1000eb13:	6d                   	ins    DWORD PTR es:[edi],dx
1000eb14:	69 6e 61 74 65 50 72 	imul   ebp,DWORD PTR [esi+0x61],0x72506574
1000eb1b:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000eb1c:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000eb1f:	73 00                	jae    0x1000eb21
1000eb21:	00 3b                	add    BYTE PTR [ebx],bh
1000eb23:	01 47 65             	add    DWORD PTR [edi+0x65],eax
1000eb26:	74 43                	je     0x1000eb6b
1000eb28:	75 72                	jne    0x1000eb9c
1000eb2a:	72 65                	jb     0x1000eb91
1000eb2c:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eb2d:	74 50                	je     0x1000eb7f
1000eb2f:	72 6f                	jb     0x1000eba0
1000eb31:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000eb34:	73 00                	jae    0x1000eb36
1000eb36:	5b                   	pop    ebx
1000eb37:	03 55 6e             	add    edx,DWORD PTR [ebp+0x6e]
1000eb3a:	68 61 6e 64 6c       	push   0x6c646e61
1000eb3f:	65 64 45             	gs fs inc ebp
1000eb42:	78 63                	js     0x1000eba7
1000eb44:	65 70 74             	gs jo  0x1000ebbb
1000eb47:	69 6f 6e 46 69 6c 74 	imul   ebp,DWORD PTR [edi+0x6e],0x746c6946
1000eb4e:	65 72 00             	gs jb  0x1000eb51
1000eb51:	00 36                	add    BYTE PTR [esi],dh
1000eb53:	03 53 65             	add    edx,DWORD PTR [ebx+0x65]
1000eb56:	74 55                	je     0x1000ebad
1000eb58:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eb59:	68 61 6e 64 6c       	push   0x6c646e61
1000eb5e:	65 64 45             	gs fs inc ebp
1000eb61:	78 63                	js     0x1000ebc6
1000eb63:	65 70 74             	gs jo  0x1000ebda
1000eb66:	69 6f 6e 46 69 6c 74 	imul   ebp,DWORD PTR [edi+0x6e],0x746c6946
1000eb6d:	65 72 00             	gs jb  0x1000eb70
1000eb70:	2d 02 49 73 44       	sub    eax,0x44734902
1000eb75:	65 62 75 67          	bound  esi,QWORD PTR gs:[ebp+0x67]
1000eb79:	67 65 72 50          	addr16 gs jb 0x1000ebcd
1000eb7d:	72 65                	jb     0x1000ebe4
1000eb7f:	73 65                	jae    0x1000ebe6
1000eb81:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eb82:	74 00                	je     0x1000eb84
1000eb84:	51                   	push   ecx
1000eb85:	03 54 6c 73          	add    edx,DWORD PTR [esp+ebp*2+0x73]
1000eb89:	47                   	inc    edi
1000eb8a:	65 74 56             	gs je  0x1000ebe3
1000eb8d:	61                   	popa   
1000eb8e:	6c                   	ins    BYTE PTR es:[edi],dx
1000eb8f:	75 65                	jne    0x1000ebf6
1000eb91:	00 4f 03             	add    BYTE PTR [edi+0x3],cl
1000eb94:	54                   	push   esp
1000eb95:	6c                   	ins    BYTE PTR es:[edi],dx
1000eb96:	73 41                	jae    0x1000ebd9
1000eb98:	6c                   	ins    BYTE PTR es:[edi],dx
1000eb99:	6c                   	ins    BYTE PTR es:[edi],dx
1000eb9a:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000eb9b:	63 00                	arpl   WORD PTR [eax],ax
1000eb9d:	00 52 03             	add    BYTE PTR [edx+0x3],dl
1000eba0:	54                   	push   esp
1000eba1:	6c                   	ins    BYTE PTR es:[edi],dx
1000eba2:	73 53                	jae    0x1000ebf7
1000eba4:	65 74 56             	gs je  0x1000ebfd
1000eba7:	61                   	popa   
1000eba8:	6c                   	ins    BYTE PTR es:[edi],dx
1000eba9:	75 65                	jne    0x1000ec10
1000ebab:	00 50 03             	add    BYTE PTR [eax+0x3],dl
1000ebae:	54                   	push   esp
1000ebaf:	6c                   	ins    BYTE PTR es:[edi],dx
1000ebb0:	73 46                	jae    0x1000ebf8
1000ebb2:	72 65                	jb     0x1000ec19
1000ebb4:	65 00 20             	add    BYTE PTR gs:[eax],ah
1000ebb7:	02 49 6e             	add    cl,BYTE PTR [ecx+0x6e]
1000ebba:	74 65                	je     0x1000ec21
1000ebbc:	72 6c                	jb     0x1000ec2a
1000ebbe:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ebbf:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
1000ebc2:	64 49                	fs dec ecx
1000ebc4:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ebc5:	63 72 65             	arpl   WORD PTR [edx+0x65],si
1000ebc8:	6d                   	ins    DWORD PTR es:[edi],dx
1000ebc9:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ebcb:	74 00                	je     0x1000ebcd
1000ebcd:	00 16                	add    BYTE PTR [esi],dl
1000ebcf:	03 53 65             	add    edx,DWORD PTR [ebx+0x65]
1000ebd2:	74 4c                	je     0x1000ec20
1000ebd4:	61                   	popa   
1000ebd5:	73 74                	jae    0x1000ec4b
1000ebd7:	45                   	inc    ebp
1000ebd8:	72 72                	jb     0x1000ec4c
1000ebda:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ebdb:	72 00                	jb     0x1000ebdd
1000ebdd:	00 1c 02             	add    BYTE PTR [edx+eax*1],bl
1000ebe0:	49                   	dec    ecx
1000ebe1:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ebe2:	74 65                	je     0x1000ec49
1000ebe4:	72 6c                	jb     0x1000ec52
1000ebe6:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ebe7:	63 6b 65             	arpl   WORD PTR [ebx+0x65],bp
1000ebea:	64 44                	fs inc esp
1000ebec:	65 63 72 65          	arpl   WORD PTR gs:[edx+0x65],si
1000ebf0:	6d                   	ins    DWORD PTR es:[edi],dx
1000ebf1:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ebf3:	74 00                	je     0x1000ebf5
1000ebf5:	00 42 03             	add    BYTE PTR [edx+0x3],al
1000ebf8:	53                   	push   ebx
1000ebf9:	6c                   	ins    BYTE PTR es:[edi],dx
1000ebfa:	65 65 70 00          	gs gs jo 0x1000ebfe
1000ebfe:	12 03                	adc    al,BYTE PTR [ebx]
1000ec00:	53                   	push   ebx
1000ec01:	65 74 48             	gs je  0x1000ec4c
1000ec04:	61                   	popa   
1000ec05:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec06:	64 6c                	fs ins BYTE PTR es:[edi],dx
1000ec08:	65 43                	gs inc ebx
1000ec0a:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ec0b:	75 6e                	jne    0x1000ec7b
1000ec0d:	74 00                	je     0x1000ec0f
1000ec0f:	00 5e 01             	add    BYTE PTR [esi+0x1],bl
1000ec12:	47                   	inc    edi
1000ec13:	65 74 46             	gs je  0x1000ec5c
1000ec16:	69 6c 65 54 79 70 65 	imul   ebp,DWORD PTR [ebp+eiz*2+0x54],0x657079
1000ec1d:	00 
1000ec1e:	ae                   	scas   al,BYTE PTR es:[edi]
1000ec1f:	01 47 65             	add    DWORD PTR [edi+0x65],eax
1000ec22:	74 53                	je     0x1000ec77
1000ec24:	74 61                	je     0x1000ec87
1000ec26:	72 74                	jb     0x1000ec9c
1000ec28:	75 70                	jne    0x1000ec9a
1000ec2a:	49                   	dec    ecx
1000ec2b:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec2c:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000ec2e:	41                   	inc    ecx
1000ec2f:	00 ee                	add    dh,ch
1000ec31:	00 46 72             	add    BYTE PTR [esi+0x72],al
1000ec34:	65 65 45             	gs gs inc ebp
1000ec37:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec38:	76 69                	jbe    0x1000eca3
1000ec3a:	72 6f                	jb     0x1000ecab
1000ec3c:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec3d:	6d                   	ins    DWORD PTR es:[edi],dx
1000ec3e:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ec40:	74 53                	je     0x1000ec95
1000ec42:	74 72                	je     0x1000ecb6
1000ec44:	69 6e 67 73 41 00 4d 	imul   ebp,DWORD PTR [esi+0x67],0x4d004173
1000ec4b:	01 47 65             	add    DWORD PTR [edi+0x65],eax
1000ec4e:	74 45                	je     0x1000ec95
1000ec50:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec51:	76 69                	jbe    0x1000ecbc
1000ec53:	72 6f                	jb     0x1000ecc4
1000ec55:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec56:	6d                   	ins    DWORD PTR es:[edi],dx
1000ec57:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ec59:	74 53                	je     0x1000ecae
1000ec5b:	74 72                	je     0x1000eccf
1000ec5d:	69 6e 67 73 00 ef 00 	imul   ebp,DWORD PTR [esi+0x67],0xef0073
1000ec64:	46                   	inc    esi
1000ec65:	72 65                	jb     0x1000eccc
1000ec67:	65 45                	gs inc ebp
1000ec69:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec6a:	76 69                	jbe    0x1000ecd5
1000ec6c:	72 6f                	jb     0x1000ecdd
1000ec6e:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec6f:	6d                   	ins    DWORD PTR es:[edi],dx
1000ec70:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ec72:	74 53                	je     0x1000ecc7
1000ec74:	74 72                	je     0x1000ece8
1000ec76:	69 6e 67 73 57 00 82 	imul   ebp,DWORD PTR [esi+0x67],0x82005773
1000ec7d:	03 57 69             	add    edx,DWORD PTR [edi+0x69]
1000ec80:	64 65 43             	fs gs inc ebx
1000ec83:	68 61 72 54 6f       	push   0x6f547261
1000ec88:	4d                   	dec    ebp
1000ec89:	75 6c                	jne    0x1000ecf7
1000ec8b:	74 69                	je     0x1000ecf6
1000ec8d:	42                   	inc    edx
1000ec8e:	79 74                	jns    0x1000ed04
1000ec90:	65 00 4f 01          	add    BYTE PTR gs:[edi+0x1],cl
1000ec94:	47                   	inc    edi
1000ec95:	65 74 45             	gs je  0x1000ecdd
1000ec98:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec99:	76 69                	jbe    0x1000ed04
1000ec9b:	72 6f                	jb     0x1000ed0c
1000ec9d:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ec9e:	6d                   	ins    DWORD PTR es:[edi],dx
1000ec9f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000eca1:	74 53                	je     0x1000ecf6
1000eca3:	74 72                	je     0x1000ed17
1000eca5:	69 6e 67 73 57 00 00 	imul   ebp,DWORD PTR [esi+0x67],0x5773
1000ecac:	94                   	xchg   esp,eax
1000ecad:	02 51 75             	add    dl,BYTE PTR [ecx+0x75]
1000ecb0:	65 72 79             	gs jb  0x1000ed2c
1000ecb3:	50                   	push   eax
1000ecb4:	65 72 66             	gs jb  0x1000ed1d
1000ecb7:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ecb8:	72 6d                	jb     0x1000ed27
1000ecba:	61                   	popa   
1000ecbb:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ecbc:	63 65 43             	arpl   WORD PTR [ebp+0x43],sp
1000ecbf:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ecc0:	75 6e                	jne    0x1000ed30
1000ecc2:	74 65                	je     0x1000ed29
1000ecc4:	72 00                	jb     0x1000ecc6
1000ecc6:	d4 01                	aam    0x1
1000ecc8:	47                   	inc    edi
1000ecc9:	65 74 54             	gs je  0x1000ed20
1000eccc:	69 63 6b 43 6f 75 6e 	imul   esp,DWORD PTR [ebx+0x6b],0x6e756f43
1000ecd3:	74 00                	je     0x1000ecd5
1000ecd5:	00 3c 01             	add    BYTE PTR [ecx+eax*1],bh
1000ecd8:	47                   	inc    edi
1000ecd9:	65 74 43             	gs je  0x1000ed1f
1000ecdc:	75 72                	jne    0x1000ed50
1000ecde:	72 65                	jb     0x1000ed45
1000ece0:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ece1:	74 50                	je     0x1000ed33
1000ece3:	72 6f                	jb     0x1000ed54
1000ece5:	63 65 73             	arpl   WORD PTR [ebp+0x73],sp
1000ece8:	73 49                	jae    0x1000ed33
1000ecea:	64 00 c0             	fs add al,al
1000eced:	01 47 65             	add    DWORD PTR [edi+0x65],eax
1000ecf0:	74 53                	je     0x1000ed45
1000ecf2:	79 73                	jns    0x1000ed67
1000ecf4:	74 65                	je     0x1000ed5b
1000ecf6:	6d                   	ins    DWORD PTR es:[edi],dx
1000ecf7:	54                   	push   esp
1000ecf8:	69 6d 65 41 73 46 69 	imul   ebp,DWORD PTR [ebp+0x65],0x69467341
1000ecff:	6c                   	ins    BYTE PTR es:[edi],dx
1000ed00:	65 54                	gs push esp
1000ed02:	69 6d 65 00 fd 00 47 	imul   ebp,DWORD PTR [ebp+0x65],0x4700fd00
1000ed09:	65 74 43             	gs je  0x1000ed4f
1000ed0c:	50                   	push   eax
1000ed0d:	49                   	dec    ecx
1000ed0e:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ed0f:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000ed11:	00 f6                	add    dh,dh
1000ed13:	00 47 65             	add    BYTE PTR [edi+0x65],al
1000ed16:	74 41                	je     0x1000ed59
1000ed18:	43                   	inc    ebx
1000ed19:	50                   	push   eax
1000ed1a:	00 00                	add    BYTE PTR [eax],al
1000ed1c:	8b 01                	mov    eax,DWORD PTR [ecx]
1000ed1e:	47                   	inc    edi
1000ed1f:	65 74 4f             	gs je  0x1000ed71
1000ed22:	45                   	inc    ebp
1000ed23:	4d                   	dec    ebp
1000ed24:	43                   	inc    ebx
1000ed25:	50                   	push   eax
1000ed26:	00 00                	add    BYTE PTR [eax],al
1000ed28:	31 02                	xor    DWORD PTR [edx],eax
1000ed2a:	49                   	dec    ecx
1000ed2b:	73 56                	jae    0x1000ed83
1000ed2d:	61                   	popa   
1000ed2e:	6c                   	ins    BYTE PTR es:[edi],dx
1000ed2f:	69 64 43 6f 64 65 50 	imul   esp,DWORD PTR [ebx+eax*2+0x6f],0x61506564
1000ed36:	61 
1000ed37:	67 65 00 18          	add    BYTE PTR gs:[bx+si],bl
1000ed3b:	02 49 6e             	add    cl,BYTE PTR [ecx+0x6e]
1000ed3e:	69 74 69 61 6c 69 7a 	imul   esi,DWORD PTR [ecx+ebp*2+0x61],0x657a696c
1000ed45:	65 
1000ed46:	43                   	inc    ebx
1000ed47:	72 69                	jb     0x1000edb2
1000ed49:	74 69                	je     0x1000edb4
1000ed4b:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000ed4e:	53                   	push   ebx
1000ed4f:	65 63 74 69 6f       	arpl   WORD PTR gs:[ecx+ebp*2+0x6f],si
1000ed54:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ed55:	00 c7                	add    bh,al
1000ed57:	02 52 74             	add    dl,BYTE PTR [edx+0x74]
1000ed5a:	6c                   	ins    BYTE PTR es:[edi],dx
1000ed5b:	55                   	push   ebp
1000ed5c:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ed5d:	77 69                	ja     0x1000edc8
1000ed5f:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ed60:	64 00 44 02 4c       	add    BYTE PTR fs:[edx+eax*1+0x4c],al
1000ed65:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ed66:	61                   	popa   
1000ed67:	64 4c                	fs dec esp
1000ed69:	69 62 72 61 72 79 41 	imul   esp,DWORD PTR [edx+0x72],0x41797261
1000ed70:	00 00                	add    BYTE PTR [eax],al
1000ed72:	36 02 4c 43 4d       	add    cl,BYTE PTR ss:[ebx+eax*2+0x4d]
1000ed77:	61                   	popa   
1000ed78:	70 53                	jo     0x1000edcd
1000ed7a:	74 72                	je     0x1000edee
1000ed7c:	69 6e 67 41 00 00 67 	imul   ebp,DWORD PTR [esi+0x67],0x67000041
1000ed83:	02 4d 75             	add    cl,BYTE PTR [ebp+0x75]
1000ed86:	6c                   	ins    BYTE PTR es:[edi],dx
1000ed87:	74 69                	je     0x1000edf2
1000ed89:	42                   	inc    edx
1000ed8a:	79 74                	jns    0x1000ee00
1000ed8c:	65 54                	gs push esp
1000ed8e:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000ed8f:	57                   	push   edi
1000ed90:	69 64 65 43 68 61 72 	imul   esp,DWORD PTR [ebp+eiz*2+0x43],0x726168
1000ed97:	00 
1000ed98:	37                   	aaa    
1000ed99:	02 4c 43 4d          	add    cl,BYTE PTR [ebx+eax*2+0x4d]
1000ed9d:	61                   	popa   
1000ed9e:	70 53                	jo     0x1000edf3
1000eda0:	74 72                	je     0x1000ee14
1000eda2:	69 6e 67 57 00 00 b1 	imul   ebp,DWORD PTR [esi+0x67],0xb1000057
1000eda9:	01 47 65             	add    DWORD PTR [edi+0x65],eax
1000edac:	74 53                	je     0x1000ee01
1000edae:	74 72                	je     0x1000ee22
1000edb0:	69 6e 67 54 79 70 65 	imul   ebp,DWORD PTR [esi+0x67],0x65707954
1000edb7:	41                   	inc    ecx
1000edb8:	00 00                	add    BYTE PTR [eax],al
1000edba:	b4 01                	mov    ah,0x1
1000edbc:	47                   	inc    edi
1000edbd:	65 74 53             	gs je  0x1000ee13
1000edc0:	74 72                	je     0x1000ee34
1000edc2:	69 6e 67 54 79 70 65 	imul   ebp,DWORD PTR [esi+0x67],0x65707954
1000edc9:	57                   	push   edi
1000edca:	00 00                	add    BYTE PTR [eax],al
1000edcc:	6b 01 47             	imul   eax,DWORD PTR [ecx],0x47
1000edcf:	65 74 4c             	gs je  0x1000ee1e
1000edd2:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000edd3:	63 61 6c             	arpl   WORD PTR [ecx+0x6c],sp
1000edd6:	65 49                	gs dec ecx
1000edd8:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000edd9:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000eddb:	41                   	inc    ecx
1000eddc:	00 00                	add    BYTE PTR [eax],al
1000edde:	11 02                	adc    DWORD PTR [edx],eax
1000ede0:	48                   	dec    eax
1000ede1:	65 61                	gs popa 
1000ede3:	70 53                	jo     0x1000ee38
1000ede5:	69 7a 65 00 00 00 00 	imul   edi,DWORD PTR [edx+0x65],0x0
	...
1000edf4:	bb 71 7d 53 00       	mov    ebx,0x537d71
1000edf9:	00 00                	add    BYTE PTR [eax],al
1000edfb:	00 08                	add    BYTE PTR [eax],cl
1000edfd:	ef                   	out    dx,eax
1000edfe:	00 00                	add    BYTE PTR [eax],al
1000ee00:	01 00                	add    DWORD PTR [eax],eax
1000ee02:	00 00                	add    BYTE PTR [eax],al
1000ee04:	18 00                	sbb    BYTE PTR [eax],al
1000ee06:	00 00                	add    BYTE PTR [eax],al
1000ee08:	18 00                	sbb    BYTE PTR [eax],al
1000ee0a:	00 00                	add    BYTE PTR [eax],al
1000ee0c:	18 ee                	sbb    dh,ch
1000ee0e:	00 00                	add    BYTE PTR [eax],al
1000ee10:	78 ee                	js     0x1000ee00
1000ee12:	00 00                	add    BYTE PTR [eax],al
1000ee14:	d8 ee                	fsubr  st,st(6)
1000ee16:	00 00                	add    BYTE PTR [eax],al
1000ee18:	80 10 00             	adc    BYTE PTR [eax],0x0
1000ee1b:	00 40 23             	add    BYTE PTR [eax+0x23],al
1000ee1e:	00 00                	add    BYTE PTR [eax],al
1000ee20:	c0 12 00             	rcl    BYTE PTR [edx],0x0
1000ee23:	00 d0                	add    al,dl
1000ee25:	12 00                	adc    al,BYTE PTR [eax]
1000ee27:	00 c0                	add    al,al
1000ee29:	37                   	aaa    
1000ee2a:	00 00                	add    BYTE PTR [eax],al
1000ee2c:	70 37                	jo     0x1000ee65
1000ee2e:	00 00                	add    BYTE PTR [eax],al
1000ee30:	f0 34 00             	lock xor al,0x0
1000ee33:	00 20                	add    BYTE PTR [eax],ah
1000ee35:	12 00                	adc    al,BYTE PTR [eax]
1000ee37:	00 b0 12 00 00 e0    	add    BYTE PTR [eax-0x1fffffee],dh
1000ee3d:	1f                   	pop    ds
1000ee3e:	00 00                	add    BYTE PTR [eax],al
1000ee40:	60                   	pusha  
1000ee41:	11 00                	adc    DWORD PTR [eax],eax
1000ee43:	00 90 11 00 00 c0    	add    BYTE PTR [eax-0x3fffffef],dl
1000ee49:	11 00                	adc    DWORD PTR [eax],eax
1000ee4b:	00 00                	add    BYTE PTR [eax],al
1000ee4d:	12 00                	adc    al,BYTE PTR [eax]
1000ee4f:	00 30                	add    BYTE PTR [eax],dh
1000ee51:	36 00 00             	add    BYTE PTR ss:[eax],al
1000ee54:	70 21                	jo     0x1000ee77
1000ee56:	00 00                	add    BYTE PTR [eax],al
1000ee58:	20 11                	and    BYTE PTR [ecx],dl
1000ee5a:	00 00                	add    BYTE PTR [eax],al
1000ee5c:	00 11                	add    BYTE PTR [ecx],dl
1000ee5e:	00 00                	add    BYTE PTR [eax],al
1000ee60:	10 11                	adc    BYTE PTR [ecx],dl
1000ee62:	00 00                	add    BYTE PTR [eax],al
1000ee64:	70 11                	jo     0x1000ee77
1000ee66:	00 00                	add    BYTE PTR [eax],al
1000ee68:	c0 2f 00             	shr    BYTE PTR [edi],0x0
1000ee6b:	00 30                	add    BYTE PTR [eax],dh
1000ee6d:	34 00                	xor    al,0x0
1000ee6f:	00 d0                	add    al,dl
1000ee71:	33 00                	xor    eax,DWORD PTR [eax]
1000ee73:	00 00                	add    BYTE PTR [eax],al
1000ee75:	10 00                	adc    BYTE PTR [eax],al
1000ee77:	00 19                	add    BYTE PTR [ecx],bl
1000ee79:	ef                   	out    dx,eax
1000ee7a:	00 00                	add    BYTE PTR [eax],al
1000ee7c:	28 ef                	sub    bh,ch
1000ee7e:	00 00                	add    BYTE PTR [eax],al
1000ee80:	38 ef                	cmp    bh,ch
1000ee82:	00 00                	add    BYTE PTR [eax],al
1000ee84:	43                   	inc    ebx
1000ee85:	ef                   	out    dx,eax
1000ee86:	00 00                	add    BYTE PTR [eax],al
1000ee88:	53                   	push   ebx
1000ee89:	ef                   	out    dx,eax
1000ee8a:	00 00                	add    BYTE PTR [eax],al
1000ee8c:	5f                   	pop    edi
1000ee8d:	ef                   	out    dx,eax
1000ee8e:	00 00                	add    BYTE PTR [eax],al
1000ee90:	51                   	push   ecx
1000ee91:	f0 00 00             	lock add BYTE PTR [eax],al
1000ee94:	6a ef                	push   0xffffffef
1000ee96:	00 00                	add    BYTE PTR [eax],al
1000ee98:	75 ef                	jne    0x1000ee89
1000ee9a:	00 00                	add    BYTE PTR [eax],al
1000ee9c:	84 ef                	test   bh,ch
1000ee9e:	00 00                	add    BYTE PTR [eax],al
1000eea0:	91                   	xchg   ecx,eax
1000eea1:	ef                   	out    dx,eax
1000eea2:	00 00                	add    BYTE PTR [eax],al
1000eea4:	99                   	cdq    
1000eea5:	ef                   	out    dx,eax
1000eea6:	00 00                	add    BYTE PTR [eax],al
1000eea8:	a9 ef 00 00 b5       	test   eax,0xb50000ef
1000eead:	ef                   	out    dx,eax
1000eeae:	00 00                	add    BYTE PTR [eax],al
1000eeb0:	c3                   	ret    
1000eeb1:	ef                   	out    dx,eax
1000eeb2:	00 00                	add    BYTE PTR [eax],al
1000eeb4:	d3 ef                	shr    edi,cl
1000eeb6:	00 00                	add    BYTE PTR [eax],al
1000eeb8:	dd ef                	fucomp st(7)
1000eeba:	00 00                	add    BYTE PTR [eax],al
1000eebc:	e5 ef                	in     eax,0xef
1000eebe:	00 00                	add    BYTE PTR [eax],al
1000eec0:	ed                   	in     eax,dx
1000eec1:	ef                   	out    dx,eax
1000eec2:	00 00                	add    BYTE PTR [eax],al
1000eec4:	00 f0                	add    al,dh
1000eec6:	00 00                	add    BYTE PTR [eax],al
1000eec8:	15 f0 00 00 21       	adc    eax,0x210000f0
1000eecd:	f0 00 00             	lock add BYTE PTR [eax],al
1000eed0:	31 f0                	xor    eax,esi
1000eed2:	00 00                	add    BYTE PTR [eax],al
1000eed4:	3e f0 00 00          	lock add BYTE PTR ds:[eax],al
1000eed8:	00 00                	add    BYTE PTR [eax],al
1000eeda:	01 00                	add    DWORD PTR [eax],eax
1000eedc:	02 00                	add    al,BYTE PTR [eax]
1000eede:	03 00                	add    eax,DWORD PTR [eax]
1000eee0:	04 00                	add    al,0x0
1000eee2:	05 00 17 00 06       	add    eax,0x6001700
1000eee7:	00 07                	add    BYTE PTR [edi],al
1000eee9:	00 08                	add    BYTE PTR [eax],cl
1000eeeb:	00 09                	add    BYTE PTR [ecx],cl
1000eeed:	00 0a                	add    BYTE PTR [edx],cl
1000eeef:	00 0b                	add    BYTE PTR [ebx],cl
1000eef1:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
1000eef4:	0d 00 0e 00 0f       	or     eax,0xf000e00
1000eef9:	00 10                	add    BYTE PTR [eax],dl
1000eefb:	00 11                	add    BYTE PTR [ecx],dl
1000eefd:	00 12                	add    BYTE PTR [edx],dl
1000eeff:	00 13                	add    BYTE PTR [ebx],dl
1000ef01:	00 14 00             	add    BYTE PTR [eax+eax*1],dl
1000ef04:	15 00 16 00 55       	adc    eax,0x55001600
1000ef09:	53                   	push   ebx
1000ef0a:	42                   	inc    edx
1000ef0b:	49                   	dec    ecx
1000ef0c:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ef0d:	74 65                	je     0x1000ef74
1000ef0f:	72 46                	jb     0x1000ef57
1000ef11:	61                   	popa   
1000ef12:	63 65 2e             	arpl   WORD PTR [ebp+0x2e],sp
1000ef15:	64 6c                	fs ins BYTE PTR es:[edi],dx
1000ef17:	6c                   	ins    BYTE PTR es:[edi],dx
1000ef18:	00 41 69             	add    BYTE PTR [ecx+0x69],al
1000ef1b:	52                   	push   edx
1000ef1c:	65 61                	gs popa 
1000ef1e:	64 42                	fs inc edx
1000ef20:	75 6c                	jne    0x1000ef8e
1000ef22:	6b 44 61 74 61       	imul   eax,DWORD PTR [ecx+eiz*2+0x74],0x61
1000ef27:	00 41 75             	add    BYTE PTR [ecx+0x75],al
1000ef2a:	74 6f                	je     0x1000ef9b
1000ef2c:	4d                   	dec    ebp
1000ef2d:	65 61                	gs popa 
1000ef2f:	73 75                	jae    0x1000efa6
1000ef31:	72 65                	jb     0x1000ef98
1000ef33:	6d                   	ins    DWORD PTR es:[edi],dx
1000ef34:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ef36:	74 00                	je     0x1000ef38
1000ef38:	42                   	inc    edx
1000ef39:	75 66                	jne    0x1000efa1
1000ef3b:	66 65 72 49          	data16 gs jb 0x1000ef88
1000ef3f:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000ef40:	69 74 00 44 61 74 61 	imul   esi,DWORD PTR [eax+eax*1+0x44],0x50617461
1000ef47:	50 
1000ef48:	72 65                	jb     0x1000efaf
1000ef4a:	44                   	inc    esp
1000ef4b:	69 73 70 6f 73 61 6c 	imul   esi,DWORD PTR [ebx+0x70],0x6c61736f
1000ef52:	00 44 65 76          	add    BYTE PTR [ebp+eiz*2+0x76],al
1000ef56:	69 63 65 43 6c 6f 73 	imul   esp,DWORD PTR [ebx+0x65],0x736f6c43
1000ef5d:	65 00 44 65 76       	add    BYTE PTR gs:[ebp+eiz*2+0x76],al
1000ef62:	69 63 65 4f 70 65 6e 	imul   esp,DWORD PTR [ebx+0x65],0x6e65704f
1000ef69:	00 45 76             	add    BYTE PTR [ebp+0x76],al
1000ef6c:	65 6e                	outs   dx,BYTE PTR gs:[esi]
1000ef6e:	74 43                	je     0x1000efb3
1000ef70:	68 65 63 6b 00       	push   0x6b6365
1000ef75:	47                   	inc    edi
1000ef76:	65 74 42             	gs je  0x1000efbb
1000ef79:	75 66                	jne    0x1000efe1
1000ef7b:	66 65 72 34          	data16 gs jb 0x1000efb3
1000ef7f:	52                   	push   edx
1000ef80:	65 61                	gs popa 
1000ef82:	64 00 47 65          	add    BYTE PTR fs:[edi+0x65],al
1000ef86:	74 42                	je     0x1000efca
1000ef88:	75 66                	jne    0x1000eff0
1000ef8a:	66 65 72 34          	data16 gs jb 0x1000efc2
1000ef8e:	57                   	push   edi
1000ef8f:	72 00                	jb     0x1000ef91
1000ef91:	47                   	inc    edi
1000ef92:	65 74 44             	gs je  0x1000efd9
1000ef95:	61                   	popa   
1000ef96:	74 61                	je     0x1000eff9
1000ef98:	00 47 65             	add    BYTE PTR [edi+0x65],al
1000ef9b:	74 48                	je     0x1000efe5
1000ef9d:	57                   	push   edi
1000ef9e:	62 75 66             	bound  esi,QWORD PTR [ebp+0x66]
1000efa1:	66 65 72 53          	data16 gs jb 0x1000eff8
1000efa5:	69 7a 65 00 47 65 74 	imul   edi,DWORD PTR [edx+0x65],0x74654700
1000efac:	49                   	dec    ecx
1000efad:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000efae:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000efb0:	42                   	inc    edx
1000efb1:	79 74                	jns    0x1000f027
1000efb3:	65 00 47 65          	add    BYTE PTR gs:[edi+0x65],al
1000efb7:	74 49                	je     0x1000f002
1000efb9:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000efba:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000efbc:	64 6f                	outs   dx,DWORD PTR fs:[esi]
1000efbe:	75 62                	jne    0x1000f022
1000efc0:	6c                   	ins    BYTE PTR es:[edi],dx
1000efc1:	65 00 47 65          	add    BYTE PTR gs:[edi+0x65],al
1000efc5:	74 52                	je     0x1000f019
1000efc7:	61                   	popa   
1000efc8:	77 44                	ja     0x1000f00e
1000efca:	61                   	popa   
1000efcb:	74 61                	je     0x1000f02e
1000efcd:	34 52                	xor    al,0x52
1000efcf:	65 61                	gs popa 
1000efd1:	64 00 52 65          	add    BYTE PTR fs:[edx+0x65],dl
1000efd5:	73 65                	jae    0x1000f03c
1000efd7:	74 50                	je     0x1000f029
1000efd9:	69 70 65 00 53 65 74 	imul   esi,DWORD PTR [eax+0x65],0x74655300
1000efe0:	44                   	inc    esp
1000efe1:	61                   	popa   
1000efe2:	74 61                	je     0x1000f045
1000efe4:	00 53 65             	add    BYTE PTR [ebx+0x65],dl
1000efe7:	74 49                	je     0x1000f032
1000efe9:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000efea:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000efec:	00 53 65             	add    BYTE PTR [ebx+0x65],dl
1000efef:	74 52                	je     0x1000f043
1000eff1:	65 61                	gs popa 
1000eff3:	64 45                	fs inc ebp
1000eff5:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000eff6:	61                   	popa   
1000eff7:	62 6c 65 4f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x4f]
1000effb:	72 4e                	jb     0x1000f04b
1000effd:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000effe:	74 00                	je     0x1000f000
1000f000:	53                   	push   ebx
1000f001:	65 74 53             	gs je  0x1000f057
1000f004:	74 61                	je     0x1000f067
1000f006:	62 6c 65 45          	bound  ebp,QWORD PTR [ebp+eiz*2+0x45]
1000f00a:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000f00b:	61                   	popa   
1000f00c:	62 6c 65 4f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x4f]
1000f010:	72 4e                	jb     0x1000f060
1000f012:	6f                   	outs   dx,DWORD PTR ds:[esi]
1000f013:	74 00                	je     0x1000f015
1000f015:	53                   	push   ebx
1000f016:	65 74 54             	gs je  0x1000f06d
1000f019:	72 69                	jb     0x1000f084
1000f01b:	67 49                	addr16 dec ecx
1000f01d:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000f01e:	66 6f                	outs   dx,WORD PTR ds:[esi]
1000f020:	00 54 72 69          	add    BYTE PTR [edx+esi*2+0x69],dl
1000f024:	67 44                	addr16 inc esp
1000f026:	61                   	popa   
1000f027:	74 61                	je     0x1000f08a
1000f029:	50                   	push   eax
1000f02a:	72 65                	jb     0x1000f091
1000f02c:	70 61                	jo     0x1000f08f
1000f02e:	72 65                	jb     0x1000f095
1000f030:	00 55 53             	add    BYTE PTR [ebp+0x53],dl
1000f033:	42                   	inc    edx
1000f034:	43                   	inc    ebx
1000f035:	74 72                	je     0x1000f0a9
1000f037:	6c                   	ins    BYTE PTR es:[edi],dx
1000f038:	54                   	push   esp
1000f039:	72 61                	jb     0x1000f09c
1000f03b:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000f03c:	73 00                	jae    0x1000f03e
1000f03e:	55                   	push   ebp
1000f03f:	53                   	push   ebx
1000f040:	42                   	inc    edx
1000f041:	43                   	inc    ebx
1000f042:	74 72                	je     0x1000f0b6
1000f044:	6c                   	ins    BYTE PTR es:[edi],dx
1000f045:	54                   	push   esp
1000f046:	72 61                	jb     0x1000f0a9
1000f048:	6e                   	outs   dx,BYTE PTR ds:[esi]
1000f049:	73 53                	jae    0x1000f09e
1000f04b:	69 6d 70 6c 65 00 44 	imul   ebp,DWORD PTR [ebp+0x70],0x4400656c
1000f052:	6c                   	ins    BYTE PTR es:[edi],dx
1000f053:	6c                   	ins    BYTE PTR es:[edi],dx
1000f054:	4d                   	dec    ebp
1000f055:	61                   	popa   
1000f056:	69                   	.byte 0x69
1000f057:	6e                   	outs   dx,BYTE PTR ds:[esi]
	...
