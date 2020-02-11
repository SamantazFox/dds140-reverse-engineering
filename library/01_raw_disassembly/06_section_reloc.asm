10018000 <.reloc>:
10018000:	00 10                	add    BYTE PTR [eax],dl
10018002:	00 00                	add    BYTE PTR [eax],al
10018004:	28 01                	sub    BYTE PTR [ecx],al
10018006:	00 00                	add    BYTE PTR [eax],al
10018008:	10 30                	adc    BYTE PTR [eax],dh
1001800a:	25 30 2c 30 39       	and    eax,0x39302c30
1001800f:	30 42 30             	xor    BYTE PTR [edx+0x30],al
10018012:	50                   	push   eax
10018013:	30 62 30             	xor    BYTE PTR [edx+0x30],ah
10018016:	68 30 85 30 90       	push   0x90308530
1001801b:	30 a7 30 ae 30 c3    	xor    BYTE PTR [edi-0x3ccf51d0],ah
10018021:	30 ca                	xor    dl,cl
10018023:	30 cf                	xor    bh,cl
10018025:	30 db                	xor    bl,bl
10018027:	30 e0                	xor    al,ah
10018029:	30 f2                	xor    dl,dh
1001802b:	30 05 31 19 31 2e    	xor    BYTE PTR ds:0x2e311931,al
10018031:	31 3b                	xor    DWORD PTR [ebx],edi
10018033:	31 41 31             	xor    DWORD PTR [ecx+0x31],eax
10018036:	4b                   	dec    ebx
10018037:	31 51 31             	xor    DWORD PTR [ecx+0x31],edx
1001803a:	56                   	push   esi
1001803b:	31 61 31             	xor    DWORD PTR [ecx+0x31],esp
1001803e:	7d 31                	jge    0x10018071
10018040:	83 31 89             	xor    DWORD PTR [ecx],0xffffff89
10018043:	31 a9 31 b1 31 b9    	xor    DWORD PTR [ecx-0x46ce4ecf],ebp
10018049:	31 d4                	xor    esp,edx
1001804b:	31 da                	xor    edx,ebx
1001804d:	31 e4                	xor    esp,esp
1001804f:	31 ed                	xor    ebp,ebp
10018051:	31 06                	xor    DWORD PTR [esi],eax
10018053:	32 0d 32 31 32 3c    	xor    cl,BYTE PTR ds:0x3c323132
10018059:	32 42 32             	xor    al,BYTE PTR [edx+0x32]
1001805c:	48                   	dec    eax
1001805d:	32 60 32             	xor    ah,BYTE PTR [eax+0x32]
10018060:	8f                   	(bad)  
10018061:	32 99 32 b1 32 f0    	xor    bl,BYTE PTR [ecx-0xfcd4ece]
10018067:	32 f6                	xor    dh,dh
10018069:	32 16                	xor    dl,BYTE PTR [esi]
1001806b:	33 43 33             	xor    eax,DWORD PTR [ebx+0x33]
1001806e:	4b                   	dec    ebx
1001806f:	33 53 33             	xor    edx,DWORD PTR [ebx+0x33]
10018072:	5a                   	pop    edx
10018073:	33 62 33             	xor    esp,DWORD PTR [edx+0x33]
10018076:	7b 33                	jnp    0x100180ab
10018078:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
10018079:	33 fb                	xor    edi,ebx
1001807b:	33 15 34 84 34 a7    	xor    edx,DWORD PTR ds:0xa7348434
10018081:	34 c1                	xor    al,0xc1
10018083:	34 f4                	xor    al,0xf4
10018085:	34 12                	xor    al,0x12
10018087:	35 29 35 30 35       	xor    eax,0x35303529
1001808c:	57                   	push   edi
1001808d:	35 62 35 8a 35       	xor    eax,0x358a3562
10018092:	0b 36                	or     esi,DWORD PTR [esi]
10018094:	2d 36 66 36 85       	sub    eax,0x85366636
10018099:	36 90                	ss nop
1001809b:	36 97                	ss xchg edi,eax
1001809d:	36 a2 36 bb 36 dd    	mov    ss:0xdd36bb36,al
100180a3:	36 e8 36 fe 36 3c    	ss call 0x4c387edf
100180a9:	37                   	aaa    
100180aa:	42                   	inc    edx
100180ab:	37                   	aaa    
100180ac:	4b                   	dec    ebx
100180ad:	37                   	aaa    
100180ae:	54                   	push   esp
100180af:	37                   	aaa    
100180b0:	6a 37                	push   0x37
100180b2:	7c 37                	jl     0x100180eb
100180b4:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
100180b5:	37                   	aaa    
100180b6:	e9 37 03 38 36       	jmp    0x463983f2
100180bb:	38 4b 38             	cmp    BYTE PTR [ebx+0x38],cl
100180be:	54                   	push   esp
100180bf:	38 72 38             	cmp    BYTE PTR [edx+0x38],dh
100180c2:	a1 38 b2 38 ef       	mov    eax,ds:0xef38b238
100180c7:	38 03                	cmp    BYTE PTR [ebx],al
100180c9:	39 1e                	cmp    DWORD PTR [esi],ebx
100180cb:	39 31                	cmp    DWORD PTR [ecx],esi
100180cd:	39 4b 39             	cmp    DWORD PTR [ebx+0x39],ecx
100180d0:	6f                   	outs   dx,DWORD PTR ds:[esi]
100180d1:	39 a8 39 b1 39 c6    	cmp    DWORD PTR [eax-0x39c64ec7],ebp
100180d7:	39 e0                	cmp    eax,esp
100180d9:	39 22                	cmp    DWORD PTR [edx],esp
100180db:	3a 28                	cmp    ch,BYTE PTR [eax]
100180dd:	3a 35 3a 3e 3a 6c    	cmp    dh,BYTE PTR ds:0x6c3a3e3a
100180e3:	3a 99 3a f2 3a 0c    	cmp    bl,BYTE PTR [ecx+0xc3af23a]
100180e9:	3b 8d 3b ad 3b c7    	cmp    ecx,DWORD PTR [ebp-0x38c452c5]
100180ef:	3b 00                	cmp    eax,DWORD PTR [eax]
100180f1:	3c 23                	cmp    al,0x23
100180f3:	3c 38                	cmp    al,0x38
100180f5:	3c 3f                	cmp    al,0x3f
100180f7:	3c 64                	cmp    al,0x64
100180f9:	3c a5                	cmp    al,0xa5
100180fb:	3c bf                	cmp    al,0xbf
100180fd:	3c 01                	cmp    al,0x1
100180ff:	3d 09 3d 34 3d       	cmp    eax,0x3d343d09
10018104:	5d                   	pop    ebp
10018105:	3d b0 3d ca 3d       	cmp    eax,0x3dca3db0
1001810a:	3d 3e 5c 3e 76       	cmp    eax,0x763e5c3e
1001810f:	3e a9 3e c7 3e dc    	ds test eax,0xdc3ec73e
10018115:	3e e3 3e             	ds jecxz 0x10018156
10018118:	03 3f                	add    edi,DWORD PTR [edi]
1001811a:	42                   	inc    edx
1001811b:	3f                   	aas    
1001811c:	59                   	pop    ecx
1001811d:	3f                   	aas    
1001811e:	97                   	xchg   edi,eax
1001811f:	3f                   	aas    
10018120:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
10018121:	3f                   	aas    
10018122:	f2 3f                	repnz aas 
10018124:	fa                   	cli    
10018125:	3f                   	aas    
10018126:	00 00                	add    BYTE PTR [eax],al
10018128:	00 20                	add    BYTE PTR [eax],ah
1001812a:	00 00                	add    BYTE PTR [eax],al
1001812c:	74 01                	je     0x1001812f
1001812e:	00 00                	add    BYTE PTR [eax],al
10018130:	04 30                	add    al,0x30
10018132:	18 30                	sbb    BYTE PTR [eax],dh
10018134:	2c 30                	sub    al,0x30
10018136:	40                   	inc    eax
10018137:	30 55 30             	xor    BYTE PTR [ebp+0x30],dl
1001813a:	5f                   	pop    edi
1001813b:	30 73 30             	xor    BYTE PTR [ebx+0x30],dh
1001813e:	87 30                	xchg   DWORD PTR [eax],esi
10018140:	9b                   	fwait
10018141:	30 b0 30 bb 30 c6    	xor    BYTE PTR [eax-0x39cf44d0],dh
10018147:	30 d1                	xor    cl,dl
10018149:	30 dc                	xor    ah,bl
1001814b:	30 e7                	xor    bh,ah
1001814d:	30 f2                	xor    dl,dh
1001814f:	30 fd                	xor    ch,bh
10018151:	30 08                	xor    BYTE PTR [eax],cl
10018153:	31 13                	xor    DWORD PTR [ebx],edx
10018155:	31 1c 31             	xor    DWORD PTR [ecx+esi*1],ebx
10018158:	20 31                	and    BYTE PTR [ecx],dh
1001815a:	24 31                	and    al,0x31
1001815c:	28 31                	sub    BYTE PTR [ecx],dh
1001815e:	2c 31                	sub    al,0x31
10018160:	30 31                	xor    BYTE PTR [ecx],dh
10018162:	34 31                	xor    al,0x31
10018164:	38 31                	cmp    BYTE PTR [ecx],dh
10018166:	3c 31                	cmp    al,0x31
10018168:	40                   	inc    eax
10018169:	31 44 31 48          	xor    DWORD PTR [ecx+esi*1+0x48],eax
1001816d:	31 4c 31 50          	xor    DWORD PTR [ecx+esi*1+0x50],ecx
10018171:	31 54 31 58          	xor    DWORD PTR [ecx+esi*1+0x58],edx
10018175:	31 5c 31 60          	xor    DWORD PTR [ecx+esi*1+0x60],ebx
10018179:	31 64 31 68          	xor    DWORD PTR [ecx+esi*1+0x68],esp
1001817d:	31 80 31 8a 31 b4    	xor    DWORD PTR [eax-0x4bce75cf],eax
10018183:	31 e3                	xor    ebx,esp
10018185:	31 12                	xor    DWORD PTR [edx],edx
10018187:	32 40 32             	xor    al,BYTE PTR [eax+0x32]
1001818a:	51                   	push   ecx
1001818b:	32 7c 32 ab          	xor    bh,BYTE PTR [edx+esi*1-0x55]
1001818f:	32 d9                	xor    bl,cl
10018191:	32 08                	xor    cl,BYTE PTR [eax]
10018193:	33 14 33             	xor    edx,DWORD PTR [ebx+esi*1]
10018196:	18 33                	sbb    BYTE PTR [ebx],dh
10018198:	1c 33                	sbb    al,0x33
1001819a:	20 33                	and    BYTE PTR [ebx],dh
1001819c:	24 33                	and    al,0x33
1001819e:	28 33                	sub    BYTE PTR [ebx],dh
100181a0:	2c 33                	sub    al,0x33
100181a2:	30 33                	xor    BYTE PTR [ebx],dh
100181a4:	34 33                	xor    al,0x33
100181a6:	38 33                	cmp    BYTE PTR [ebx],dh
100181a8:	4e                   	dec    esi
100181a9:	33 55 33             	xor    edx,DWORD PTR [ebp+0x33]
100181ac:	97                   	xchg   edi,eax
100181ad:	33 ce                	xor    ecx,esi
100181af:	33 dd                	xor    ebx,ebp
100181b1:	33 04 34             	xor    eax,DWORD PTR [esp+esi*1]
100181b4:	0a 34 28             	or     dh,BYTE PTR [eax+ebp*1]
100181b7:	34 39                	xor    al,0x39
100181b9:	34 4c                	xor    al,0x4c
100181bb:	34 63                	xor    al,0x63
100181bd:	34 6a                	xor    al,0x6a
100181bf:	34 8d                	xor    al,0x8d
100181c1:	34 94                	xor    al,0x94
100181c3:	34 ba                	xor    al,0xba
100181c5:	34 c1                	xor    al,0xc1
100181c7:	34 e7                	xor    al,0xe7
100181c9:	34 ee                	xor    al,0xee
100181cb:	34 1f                	xor    al,0x1f
100181cd:	35 35 35 45 35       	xor    eax,0x35453535
100181d2:	4d                   	dec    ebp
100181d3:	35 70 35 b5 35       	xor    eax,0x35b53570
100181d8:	e9 35 0f 36 1a       	jmp    0x2a379112
100181dd:	36 24 36             	ss and al,0x36
100181e0:	4f                   	dec    edi
100181e1:	36 a3 36 af 36 bf    	mov    ss:0xbf36af36,eax
100181e7:	36 d2 36             	shl    BYTE PTR ss:[esi],cl
100181ea:	e2 36                	loop   0x10018222
100181ec:	0c 37                	or     al,0x37
100181ee:	16                   	push   ss
100181ef:	37                   	aaa    
100181f0:	1e                   	push   ds
100181f1:	37                   	aaa    
100181f2:	2e 37                	cs aaa 
100181f4:	34 37                	xor    al,0x37
100181f6:	3e 37                	ds aaa 
100181f8:	4d                   	dec    ebp
100181f9:	37                   	aaa    
100181fa:	55                   	push   ebp
100181fb:	37                   	aaa    
100181fc:	7a 37                	jp     0x10018235
100181fe:	80 37 8a             	xor    BYTE PTR [edi],0x8a
10018201:	37                   	aaa    
10018202:	bf 37 52 38 58       	mov    edi,0x58385237
10018207:	38 5e 38             	cmp    BYTE PTR [esi+0x38],bl
1001820a:	76 38                	jbe    0x10018244
1001820c:	7c 38                	jl     0x10018246
1001820e:	84 38                	test   BYTE PTR [eax],bh
10018210:	8a 38                	mov    bh,BYTE PTR [eax]
10018212:	92                   	xchg   edx,eax
10018213:	38 c5                	cmp    ch,al
10018215:	38 d5                	cmp    ch,dl
10018217:	38 3f                	cmp    BYTE PTR [edi],bh
10018219:	39 45 39             	cmp    DWORD PTR [ebp+0x39],eax
1001821c:	4b                   	dec    ebx
1001821d:	39 bf 39 c5 39 d1    	cmp    DWORD PTR [edi-0x2ec63ac7],edi
10018223:	39 d7                	cmp    edi,edx
10018225:	39 dd                	cmp    ebp,ebx
10018227:	39 e3                	cmp    ebx,esp
10018229:	39 e9                	cmp    ecx,ebp
1001822b:	39 10                	cmp    DWORD PTR [eax],edx
1001822d:	3a 16                	cmp    dl,BYTE PTR [esi]
1001822f:	3a 35 3a 43 3a 60    	cmp    dh,BYTE PTR ds:0x603a433a
10018235:	3a 73 3a             	cmp    dh,BYTE PTR [ebx+0x3a]
10018238:	7a 3a                	jp     0x10018274
1001823a:	9d                   	popf   
1001823b:	3a a4 3a ca 3a d1 3a 	cmp    ah,BYTE PTR [edx+edi*1+0x3ad13aca]
10018242:	f7 3a                	idiv   DWORD PTR [edx]
10018244:	fe                   	(bad)  
10018245:	3a 33                	cmp    dh,BYTE PTR [ebx]
10018247:	3b 49 3b             	cmp    ecx,DWORD PTR [ecx+0x3b]
1001824a:	59                   	pop    ecx
1001824b:	3b 61 3b             	cmp    esp,DWORD PTR [ecx+0x3b]
1001824e:	88 3b                	mov    BYTE PTR [ebx],bh
10018250:	cc                   	int3   
10018251:	3b 02                	cmp    eax,DWORD PTR [edx]
10018253:	3c 28                	cmp    al,0x28
10018255:	3c 33                	cmp    al,0x33
10018257:	3c 3d                	cmp    al,0x3d
10018259:	3c 9a                	cmp    al,0x9a
1001825b:	3c 06                	cmp    al,0x6
1001825d:	3d 0e 3d 33 3d       	cmp    eax,0x3d333d0e
10018262:	39 3d 43 3d 78 3d    	cmp    DWORD PTR ds:0x3d783d43,edi
10018268:	03 3e                	add    edi,DWORD PTR [esi]
1001826a:	09 3e                	or     DWORD PTR [esi],edi
1001826c:	0f 3e                	(bad)  
1001826e:	23 3e                	and    edi,DWORD PTR [esi]
10018270:	29 3e                	sub    DWORD PTR [esi],edi
10018272:	31 3e                	xor    DWORD PTR [esi],edi
10018274:	37                   	aaa    
10018275:	3e 41                	ds inc ecx
10018277:	3e 6e                	outs   dx,BYTE PTR ds:[esi]
10018279:	3e 7e 3e             	ds jle 0x100182ba
1001827c:	e8 3e ee 3e f4       	call   0x44070bf
10018281:	3e 60                	ds pusha 
10018283:	3f                   	aas    
10018284:	76 3f                	jbe    0x100182c5
10018286:	7c 3f                	jl     0x100182c7
10018288:	90                   	nop
10018289:	3f                   	aas    
1001828a:	96                   	xchg   esi,eax
1001828b:	3f                   	aas    
1001828c:	9c                   	pushf  
1001828d:	3f                   	aas    
1001828e:	a2 3f c2 3f cd       	mov    ds:0xcd3fc23f,al
10018293:	3f                   	aas    
10018294:	e2 3f                	loop   0x100182d5
10018296:	ef                   	out    dx,eax
10018297:	3f                   	aas    
10018298:	f8                   	clc    
10018299:	3f                   	aas    
1001829a:	00 00                	add    BYTE PTR [eax],al
1001829c:	00 30                	add    BYTE PTR [eax],dh
1001829e:	00 00                	add    BYTE PTR [eax],al
100182a0:	38 01                	cmp    BYTE PTR [ecx],al
100182a2:	00 00                	add    BYTE PTR [eax],al
100182a4:	46                   	inc    esi
100182a5:	30 50 30             	xor    BYTE PTR [eax+0x30],dl
100182a8:	60                   	pusha  
100182a9:	30 79 30             	xor    BYTE PTR [ecx+0x30],bh
100182ac:	88 30                	mov    BYTE PTR [eax],dh
100182ae:	95                   	xchg   ebp,eax
100182af:	30 a8 30 b4 30 c2    	xor    BYTE PTR [eax-0x3dcf4bd0],ch
100182b5:	30 ce                	xor    dh,cl
100182b7:	30 e4                	xor    ah,ah
100182b9:	30 ec                	xor    ah,ch
100182bb:	30 fd                	xor    ch,bh
100182bd:	30 a6 31 ae 31 45    	xor    BYTE PTR [esi+0x4531ae31],ah
100182c3:	32 5e 32             	xor    bl,BYTE PTR [esi+0x32]
100182c6:	78 32                	js     0x100182fa
100182c8:	80 32 23             	xor    BYTE PTR [edx],0x23
100182cb:	33 2b                	xor    ebp,DWORD PTR [ebx]
100182cd:	33 b3 33 bd 33 d7    	xor    esi,DWORD PTR [ebx-0x28cc42cd]
100182d3:	33 02                	xor    eax,DWORD PTR [edx]
100182d5:	34 35                	xor    al,0x35
100182d7:	34 70                	xor    al,0x70
100182d9:	34 a5                	xor    al,0xa5
100182db:	34 ae                	xor    al,0xae
100182dd:	34 b6                	xor    al,0xb6
100182df:	34 bb                	xor    al,0xbb
100182e1:	34 e2                	xor    al,0xe2
100182e3:	34 f2                	xor    al,0xf2
100182e5:	34 00                	xor    al,0x0
100182e7:	35 13 35 1b 35       	xor    eax,0x351b3513
100182ec:	22 35 44 35 56 35    	and    dh,BYTE PTR ds:0x35563544
100182f2:	64 35 77 35 8c 35    	fs xor eax,0x358c3577
100182f8:	95                   	xchg   ebp,eax
100182f9:	35 e9 35 07 36       	xor    eax,0x360735e9
100182fe:	0c 36                	or     al,0x36
10018300:	13 36                	adc    esi,DWORD PTR [esi]
10018302:	1f                   	pop    ds
10018303:	36 31 36             	xor    DWORD PTR ss:[esi],esi
10018306:	41                   	inc    ecx
10018307:	36 4f                	ss dec edi
10018309:	36 54                	ss push esp
1001830b:	36 72 36             	ss jb  0x10018344
1001830e:	9e                   	sahf   
1001830f:	36 b9 36 cb 36 e4    	ss mov ecx,0xe436cb36
10018315:	36 e9 36 f8 36 03    	ss jmp 0x13387b51
1001831b:	37                   	aaa    
1001831c:	0d 37 15 37 22       	or     eax,0x22371537
10018321:	37                   	aaa    
10018322:	28 37                	sub    BYTE PTR [edi],dh
10018324:	51                   	push   ecx
10018325:	37                   	aaa    
10018326:	66 37                	data16 aaa 
10018328:	79 37                	jns    0x10018361
1001832a:	89 37                	mov    DWORD PTR [edi],esi
1001832c:	90                   	nop
1001832d:	37                   	aaa    
1001832e:	96                   	xchg   esi,eax
1001832f:	37                   	aaa    
10018330:	ac                   	lods   al,BYTE PTR ds:[esi]
10018331:	37                   	aaa    
10018332:	b1 37                	mov    cl,0x37
10018334:	c2 37 d1             	ret    0xd137
10018337:	37                   	aaa    
10018338:	d6                   	(bad)  
10018339:	37                   	aaa    
1001833a:	f4                   	hlt    
1001833b:	37                   	aaa    
1001833c:	fb                   	sti    
1001833d:	37                   	aaa    
1001833e:	04 38                	add    al,0x38
10018340:	18 38                	sbb    BYTE PTR [eax],bh
10018342:	1e                   	push   ds
10018343:	38 24 38             	cmp    BYTE PTR [eax+edi*1],ah
10018346:	2a 38                	sub    bh,BYTE PTR [eax]
10018348:	30 38                	xor    BYTE PTR [eax],bh
1001834a:	36 38 3c 38          	cmp    BYTE PTR ss:[eax+edi*1],bh
1001834e:	42                   	inc    edx
1001834f:	38 48 38             	cmp    BYTE PTR [eax+0x38],cl
10018352:	4e                   	dec    esi
10018353:	38 53 38             	cmp    BYTE PTR [ebx+0x38],dl
10018356:	59                   	pop    ecx
10018357:	38 5d 38             	cmp    BYTE PTR [ebp+0x38],bl
1001835a:	63 38                	arpl   WORD PTR [eax],di
1001835c:	67 38 6d 38          	cmp    BYTE PTR [di+0x38],ch
10018360:	71 38                	jno    0x1001839a
10018362:	77 38                	ja     0x1001839c
10018364:	7b 38                	jnp    0x1001839e
10018366:	80 38 86             	cmp    BYTE PTR [eax],0x86
10018369:	38 8a 38 90 38 94    	cmp    BYTE PTR [edx-0x6bc76fc8],cl
1001836f:	38 9a 38 9e 38 a4    	cmp    BYTE PTR [edx-0x5bc761c8],bl
10018375:	38 a8 38 bd 38 d2    	cmp    BYTE PTR [eax-0x2dc742c8],ch
1001837b:	38 ee                	cmp    dh,ch
1001837d:	38 7e 39             	cmp    BYTE PTR [esi+0x39],bh
10018380:	90                   	nop
10018381:	39 df                	cmp    edi,ebx
10018383:	39 e5                	cmp    ebp,esp
10018385:	39 f6                	cmp    esi,esi
10018387:	39 0c 3a             	cmp    DWORD PTR [edx+edi*1],ecx
1001838a:	1e                   	push   ds
1001838b:	3a 69 3a             	cmp    ch,BYTE PTR [ecx+0x3a]
1001838e:	73 3a                	jae    0x100183ca
10018390:	94                   	xchg   esp,eax
10018391:	3a cc                	cmp    cl,ah
10018393:	3a da                	cmp    bl,dl
10018395:	3a 1d 3b 3f 3b 50    	cmp    bl,BYTE PTR ds:0x503b3f3b
1001839b:	3b 66 3b             	cmp    esp,DWORD PTR [esi+0x3b]
1001839e:	76 3b                	jbe    0x100183db
100183a0:	9c                   	pushf  
100183a1:	3b b2 3b c4 3b c9    	cmp    esi,DWORD PTR [edx-0x36c43bc5]
100183a7:	3b cf                	cmp    ecx,edi
100183a9:	3b d5                	cmp    edx,ebp
100183ab:	3b 01                	cmp    eax,DWORD PTR [ecx]
100183ad:	3c 06                	cmp    al,0x6
100183af:	3c 10                	cmp    al,0x10
100183b1:	3c 44                	cmp    al,0x44
100183b3:	3c 5c                	cmp    al,0x5c
100183b5:	3c 68                	cmp    al,0x68
100183b7:	3c 6e                	cmp    al,0x6e
100183b9:	3c b4                	cmp    al,0xb4
100183bb:	3c ba                	cmp    al,0xba
100183bd:	3c d5                	cmp    al,0xd5
100183bf:	3c 06                	cmp    al,0x6
100183c1:	3d 22 3d 3a 3d       	cmp    eax,0x3d3a3d22
100183c6:	8d 3d ba 3d 40 3e    	lea    edi,ds:0x3e403dba
100183cc:	48                   	dec    eax
100183cd:	3e 5d                	ds pop ebp
100183cf:	3e 68 3e 00 00 00    	ds push 0x3e
100183d5:	40                   	inc    eax
100183d6:	00 00                	add    BYTE PTR [eax],al
100183d8:	90                   	nop
100183d9:	00 00                	add    BYTE PTR [eax],al
100183db:	00 0c 31             	add    BYTE PTR [ecx+esi*1],cl
100183de:	71 31                	jno    0x10018411
100183e0:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
100183e1:	31 f9                	xor    ecx,edi
100183e3:	36 b2 37             	ss mov dl,0x37
100183e6:	50                   	push   eax
100183e7:	39 9a 39 a3 39 cf    	cmp    DWORD PTR [edx-0x30c65cc7],ebx
100183ed:	39 d5                	cmp    ebp,edx
100183ef:	39 de                	cmp    esi,ebx
100183f1:	39 e5                	cmp    ebp,esp
100183f3:	39 f9                	cmp    ecx,edi
100183f5:	39 04 3a             	cmp    DWORD PTR [edx+edi*1],eax
100183f8:	14 3a                	adc    al,0x3a
100183fa:	2f                   	das    
100183fb:	3a 50 3a             	cmp    dl,BYTE PTR [eax+0x3a]
100183fe:	c7                   	(bad)  
100183ff:	3a ce                	cmp    cl,dh
10018401:	3a e0                	cmp    ah,al
10018403:	3a f7                	cmp    dh,bh
10018405:	3a fd                	cmp    bh,ch
10018407:	3a 03                	cmp    al,BYTE PTR [ebx]
10018409:	3b 13                	cmp    edx,DWORD PTR [ebx]
1001840b:	3b 1d 3b 26 3b 2f    	cmp    ebx,DWORD PTR ds:0x2f3b263b
10018411:	3b 41 3b             	cmp    eax,DWORD PTR [ecx+0x3b]
10018414:	4a                   	dec    edx
10018415:	3b 56 3b             	cmp    edx,DWORD PTR [esi+0x3b]
10018418:	5f                   	pop    edi
10018419:	3b 66 3b             	cmp    esp,DWORD PTR [esi+0x3b]
1001841c:	70 3b                	jo     0x10018459
1001841e:	76 3b                	jbe    0x1001845b
10018420:	7c 3b                	jl     0x1001845d
10018422:	87 3b                	xchg   DWORD PTR [ebx],edi
10018424:	8e 3b                	mov    ?,WORD PTR [ebx]
10018426:	98                   	cwde   
10018427:	3b c2                	cmp    eax,edx
10018429:	3b ce                	cmp    ecx,esi
1001842b:	3b d4                	cmp    edx,esp
1001842d:	3b f7                	cmp    esi,edi
1001842f:	3b fe                	cmp    edi,esi
10018431:	3b 17                	cmp    edx,DWORD PTR [edi]
10018433:	3c 29                	cmp    al,0x29
10018435:	3c 2f                	cmp    al,0x2f
10018437:	3c 38                	cmp    al,0x38
10018439:	3c 4b                	cmp    al,0x4b
1001843b:	3c 6f                	cmp    al,0x6f
1001843d:	3c 02                	cmp    al,0x2
1001843f:	3d 22 3d 32 3d       	cmp    eax,0x3d323d22
10018444:	38 3d 3f 3d 4c 3d    	cmp    BYTE PTR ds:0x3d4c3d3f,bh
1001844a:	53                   	push   ebx
1001844b:	3d 59 3d 61 3d       	cmp    eax,0x3d613d59
10018450:	67 3d 73 3d 78 3d    	addr16 cmp eax,0x3d783d73
10018456:	b9 3f c7 3f cd       	mov    ecx,0xcd3fc73f
1001845b:	3f                   	aas    
1001845c:	e7 3f                	out    0x3f,eax
1001845e:	ec                   	in     al,dx
1001845f:	3f                   	aas    
10018460:	fb                   	sti    
10018461:	3f                   	aas    
10018462:	00 00                	add    BYTE PTR [eax],al
10018464:	00 50 00             	add    BYTE PTR [eax+0x0],dl
10018467:	00 08                	add    BYTE PTR [eax],cl
10018469:	01 00                	add    DWORD PTR [eax],eax
1001846b:	00 04 30             	add    BYTE PTR [eax+esi*1],al
1001846e:	11 30                	adc    DWORD PTR [eax],esi
10018470:	1c 30                	sbb    al,0x30
10018472:	2e 30 41 30          	xor    BYTE PTR cs:[ecx+0x30],al
10018476:	4c                   	dec    esp
10018477:	30 52 30             	xor    BYTE PTR [edx+0x30],dl
1001847a:	58                   	pop    eax
1001847b:	30 5d 30             	xor    BYTE PTR [ebp+0x30],bl
1001847e:	66 30 83 30 89 30 94 	data16 xor BYTE PTR [ebx-0x6bcf76d0],al
10018485:	30 99 30 a1 30 a7    	xor    BYTE PTR [ecx-0x58cf5ed0],bl
1001848b:	30 b1 30 b8 30 cc    	xor    BYTE PTR [ecx-0x33cf47d0],dh
10018491:	30 d3                	xor    bl,dl
10018493:	30 d9                	xor    cl,bl
10018495:	30 e7                	xor    bh,ah
10018497:	30 ee                	xor    dh,ch
10018499:	30 f3                	xor    bl,dh
1001849b:	30 fc                	xor    ah,bh
1001849d:	30 09                	xor    BYTE PTR [ecx],cl
1001849f:	31 0f                	xor    DWORD PTR [edi],ecx
100184a1:	31 29                	xor    DWORD PTR [ecx],ebp
100184a3:	31 3a                	xor    DWORD PTR [edx],edi
100184a5:	31 40 31             	xor    DWORD PTR [eax+0x31],eax
100184a8:	51                   	push   ecx
100184a9:	31 b4 31 4c 35 58 35 	xor    DWORD PTR [ecx+esi*1+0x3558354c],esi
100184b0:	8b 35 b1 35 eb 35    	mov    esi,DWORD PTR ds:0x35eb35b1
100184b6:	30 36                	xor    BYTE PTR [esi],dh
100184b8:	03 38                	add    edi,DWORD PTR [eax]
100184ba:	0e                   	push   cs
100184bb:	38 16                	cmp    BYTE PTR [esi],dl
100184bd:	38 29                	cmp    BYTE PTR [ecx],ch
100184bf:	38 46 38             	cmp    BYTE PTR [esi+0x38],al
100184c2:	9f                   	lahf   
100184c3:	38 83 39 8b 39 a4    	cmp    BYTE PTR [ebx-0x5bc674c7],al
100184c9:	39 be 39 10 3a 36    	cmp    DWORD PTR [esi+0x363a1039],edi
100184cf:	3a 4b 3a             	cmp    cl,BYTE PTR [ebx+0x3a]
100184d2:	51                   	push   ecx
100184d3:	3a 5a 3a             	cmp    bl,BYTE PTR [edx+0x3a]
100184d6:	61                   	popa   
100184d7:	3a 80 3a f8 3a 30    	cmp    al,BYTE PTR [eax+0x303af83a]
100184dd:	3b 38                	cmp    edi,DWORD PTR [eax]
100184df:	3b 44 3b 4c          	cmp    eax,DWORD PTR [ebx+edi*1+0x4c]
100184e3:	3b 60 3b             	cmp    esp,DWORD PTR [eax+0x3b]
100184e6:	6b 3b 70             	imul   edi,DWORD PTR [ebx],0x70
100184e9:	3b 82 3b 8c 3b 93    	cmp    eax,DWORD PTR [edx-0x6cc473c5]
100184ef:	3b ad 3b b7 3b cd    	cmp    ebp,DWORD PTR [ebp-0x32c448c5]
100184f5:	3b d7                	cmp    edx,edi
100184f7:	3b f2                	cmp    esi,edx
100184f9:	3b fa                	cmp    edi,edx
100184fb:	3b 02                	cmp    eax,DWORD PTR [edx]
100184fd:	3c 0d                	cmp    al,0xd
100184ff:	3c 1b                	cmp    al,0x1b
10018501:	3c 57                	cmp    al,0x57
10018503:	3c 5c                	cmp    al,0x5c
10018505:	3c 67                	cmp    al,0x67
10018507:	3c 6c                	cmp    al,0x6c
10018509:	3c 8a                	cmp    al,0x8a
1001850b:	3c 0f                	cmp    al,0xf
1001850d:	3d 1c 3d 31 3d       	cmp    eax,0x3d313d1c
10018512:	66 3d 7e 3d          	cmp    ax,0x3d7e
10018516:	89 3d ad 3d b6 3d    	mov    DWORD PTR ds:0x3db63dad,edi
1001851c:	bd 3d c6 3d 06       	mov    ebp,0x63dc63d
10018521:	3e 0b 3e             	or     edi,DWORD PTR ds:[esi]
10018524:	33 3e                	xor    edi,DWORD PTR [esi]
10018526:	55                   	push   ebp
10018527:	3e 7a 3e             	ds jp  0x10018568
1001852a:	8d 3e                	lea    edi,[esi]
1001852c:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
1001852d:	3e b8 3e dd 3e 00    	ds mov eax,0x3edd3e
10018533:	3f                   	aas    
10018534:	07                   	pop    es
10018535:	3f                   	aas    
10018536:	31 3f                	xor    DWORD PTR [edi],edi
10018538:	37                   	aaa    
10018539:	3f                   	aas    
1001853a:	3d 3f 43 3f 49       	cmp    eax,0x493f433f
1001853f:	3f                   	aas    
10018540:	4f                   	dec    edi
10018541:	3f                   	aas    
10018542:	56                   	push   esi
10018543:	3f                   	aas    
10018544:	5d                   	pop    ebp
10018545:	3f                   	aas    
10018546:	64 3f                	fs aas 
10018548:	6b 3f 72             	imul   edi,DWORD PTR [edi],0x72
1001854b:	3f                   	aas    
1001854c:	79 3f                	jns    0x1001858d
1001854e:	80 3f 88             	cmp    BYTE PTR [edi],0x88
10018551:	3f                   	aas    
10018552:	90                   	nop
10018553:	3f                   	aas    
10018554:	98                   	cwde   
10018555:	3f                   	aas    
10018556:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
10018557:	3f                   	aas    
10018558:	ad                   	lods   eax,DWORD PTR ds:[esi]
10018559:	3f                   	aas    
1001855a:	b2 3f                	mov    dl,0x3f
1001855c:	b8 3f c2 3f cb       	mov    eax,0xcb3fc23f
10018561:	3f                   	aas    
10018562:	d6                   	(bad)  
10018563:	3f                   	aas    
10018564:	e2 3f                	loop   0x100185a5
10018566:	e7 3f                	out    0x3f,eax
10018568:	f7 3f                	idiv   DWORD PTR [edi]
1001856a:	fc                   	cld    
1001856b:	3f                   	aas    
1001856c:	00 60 00             	add    BYTE PTR [eax+0x0],ah
1001856f:	00 5c 01 00          	add    BYTE PTR [ecx+eax*1+0x0],bl
10018573:	00 02                	add    BYTE PTR [edx],al
10018575:	30 08                	xor    BYTE PTR [eax],cl
10018577:	30 1e                	xor    BYTE PTR [esi],bl
10018579:	30 25 30 55 30 6e    	xor    BYTE PTR ds:0x6e305530,ah
1001857f:	30 9a 30 a0 30 ab    	xor    BYTE PTR [edx-0x54cf5fd0],bl
10018585:	30 b7 30 cc 30 d2    	xor    BYTE PTR [edi-0x2dcf33d0],dh
1001858b:	30 e6                	xor    dh,ah
1001858d:	30 ed                	xor    ch,ch
1001858f:	30 11                	xor    BYTE PTR [ecx],dl
10018591:	31 17                	xor    DWORD PTR [edi],edx
10018593:	31 22                	xor    DWORD PTR [edx],esp
10018595:	31 2e                	xor    DWORD PTR [esi],ebp
10018597:	31 43 31             	xor    DWORD PTR [ebx+0x31],eax
1001859a:	49                   	dec    ecx
1001859b:	31 5d 31             	xor    DWORD PTR [ebp+0x31],ebx
1001859e:	64 31 7e 31          	xor    DWORD PTR fs:[esi+0x31],edi
100185a2:	88 31                	mov    BYTE PTR [ecx],dh
100185a4:	8e 31                	mov    ?,WORD PTR [ecx]
100185a6:	9a 31 a9 31 af 31 b8 	call   0xb831:0xaf31a931
100185ad:	31 c4                	xor    esp,eax
100185af:	31 d2                	xor    edx,edx
100185b1:	31 d8                	xor    eax,ebx
100185b3:	31 e4                	xor    esp,esp
100185b5:	31 ea                	xor    edx,ebp
100185b7:	31 f7                	xor    edi,esi
100185b9:	31 01                	xor    DWORD PTR [ecx],eax
100185bb:	32 07                	xor    al,BYTE PTR [edi]
100185bd:	32 14 32             	xor    dl,BYTE PTR [edx+esi*1]
100185c0:	2c 32                	sub    al,0x32
100185c2:	35 32 42 32 63       	xor    eax,0x63324232
100185c7:	32 6d 32             	xor    ch,BYTE PTR [ebp+0x32]
100185ca:	88 32                	mov    BYTE PTR [edx],dh
100185cc:	b7 32                	mov    bh,0x32
100185ce:	bd 32 e7 32 ed       	mov    ebp,0xed32e732
100185d3:	32 09                	xor    cl,BYTE PTR [ecx]
100185d5:	33 21                	xor    esp,DWORD PTR [ecx]
100185d7:	33 45 33             	xor    eax,DWORD PTR [ebp+0x33]
100185da:	b1 33                	mov    cl,0x33
100185dc:	d4 33                	aam    0x33
100185de:	de 33                	fidiv  WORD PTR [ebx]
100185e0:	16                   	push   ss
100185e1:	34 1e                	xor    al,0x1e
100185e3:	34 65                	xor    al,0x65
100185e5:	34 78                	xor    al,0x78
100185e7:	34 7e                	xor    al,0x7e
100185e9:	34 8a                	xor    al,0x8a
100185eb:	34 90                	xor    al,0x90
100185ed:	34 9f                	xor    al,0x9f
100185ef:	34 a5                	xor    al,0xa5
100185f1:	34 b9                	xor    al,0xb9
100185f3:	34 c7                	xor    al,0xc7
100185f5:	34 ce                	xor    al,0xce
100185f7:	34 d4                	xor    al,0xd4
100185f9:	34 ea                	xor    al,0xea
100185fb:	34 ef                	xor    al,0xef
100185fd:	34 f7                	xor    al,0xf7
100185ff:	34 fd                	xor    al,0xfd
10018601:	34 04                	xor    al,0x4
10018603:	35 0a 35 11 35       	xor    eax,0x3511350a
10018608:	17                   	pop    ss
10018609:	35 1f 35 26 35       	xor    eax,0x3526351f
1001860e:	2b 35 33 35 3c 35    	sub    esi,DWORD PTR ds:0x353c3533
10018614:	48                   	dec    eax
10018615:	35 4d 35 52 35       	xor    eax,0x3552354d
1001861a:	58                   	pop    eax
1001861b:	35 5c 35 62 35       	xor    eax,0x3562355c
10018620:	67 35 6d 35 75 35    	addr16 xor eax,0x3575356d
10018626:	81 35 97 35 a2 35 a7 	xor    DWORD PTR ds:0x35a23597,0x35b235a7
1001862d:	35 b2 35 
10018630:	b7 35                	mov    bh,0x35
10018632:	c2 35 c7             	ret    0xc735
10018635:	35 d4 35 e2 35       	xor    eax,0x35e235d4
1001863a:	e8 35 f8 35 15       	call   0x25377e74
1001863f:	36 1b 36             	sbb    esi,DWORD PTR ss:[esi]
10018642:	37                   	aaa    
10018643:	36 66 36 6f          	ss outs dx,WORD PTR ss:[esi]
10018647:	36 7b 36             	ss jnp 0x10018680
1001864a:	ae                   	scas   al,BYTE PTR es:[edi]
1001864b:	36 b7 36             	ss mov bh,0x36
1001864e:	c3                   	ret    
1001864f:	36 f9                	ss stc 
10018651:	36 02 37             	add    dh,BYTE PTR ss:[edi]
10018654:	0e                   	push   cs
10018655:	37                   	aaa    
10018656:	26 37                	es aaa 
10018658:	3a 37                	cmp    dh,BYTE PTR [edi]
1001865a:	5b                   	pop    ebx
1001865b:	37                   	aaa    
1001865c:	61                   	popa   
1001865d:	37                   	aaa    
1001865e:	93                   	xchg   ebx,eax
1001865f:	37                   	aaa    
10018660:	ea 37 f2 37 32 38 3c 	jmp    0x3c38:0x3237f237
10018667:	38 64 38 7d          	cmp    BYTE PTR [eax+edi*1+0x7d],ah
1001866b:	38 be 38 ee 38 00    	cmp    BYTE PTR [esi+0x38ee38],bh
10018671:	39 52 39             	cmp    DWORD PTR [edx+0x39],edx
10018674:	58                   	pop    eax
10018675:	39 7a 39             	cmp    DWORD PTR [edx+0x39],edi
10018678:	98                   	cwde   
10018679:	39 ba 39 c8 39 d7    	cmp    DWORD PTR [edx-0x28c637c7],edi
1001867f:	39 10                	cmp    DWORD PTR [eax],edx
10018681:	3a 18                	cmp    bl,BYTE PTR [eax]
10018683:	3a 65 3a             	cmp    ah,BYTE PTR [ebp+0x3a]
10018686:	70 3a                	jo     0x100186c2
10018688:	78 3a                	js     0x100186c4
1001868a:	8a 3a                	mov    bh,BYTE PTR [edx]
1001868c:	95                   	xchg   ebp,eax
1001868d:	3a 41 3c             	cmp    al,BYTE PTR [ecx+0x3c]
10018690:	54                   	push   esp
10018691:	3c 5c                	cmp    al,0x5c
10018693:	3c 62                	cmp    al,0x62
10018695:	3c 67                	cmp    al,0x67
10018697:	3c 6f                	cmp    al,0x6f
10018699:	3c d9                	cmp    al,0xd9
1001869b:	3c df                	cmp    al,0xdf
1001869d:	3c f2                	cmp    al,0xf2
1001869f:	3c fc                	cmp    al,0xfc
100186a1:	3c 15                	cmp    al,0x15
100186a3:	3d 21 3d 2d 3d       	cmp    eax,0x3d2d3d21
100186a8:	34 3d                	xor    al,0x3d
100186aa:	6b 3d bd 3d cf 3d 00 	imul   edi,DWORD PTR ds:0x3dcf3dbd,0x0
100186b1:	3e 17                	ds pop ss
100186b3:	3e 27                	ds daa 
100186b5:	3e 2c 3e             	ds sub al,0x3e
100186b8:	4b                   	dec    ebx
100186b9:	3e 50                	ds push eax
100186bb:	3e 85 3e             	test   DWORD PTR ds:[esi],edi
100186be:	fe                   	(bad)  
100186bf:	3e 04 3f             	ds add al,0x3f
100186c2:	1d 3f 23 3f ec       	sbb    eax,0xec3f233f
100186c7:	3f                   	aas    
100186c8:	00 70 00             	add    BYTE PTR [eax+0x0],dh
100186cb:	00 c8                	add    al,cl
100186cd:	00 00                	add    BYTE PTR [eax],al
100186cf:	00 0f                	add    BYTE PTR [edi],cl
100186d1:	30 1c 30             	xor    BYTE PTR [eax+esi*1],bl
100186d4:	28 30                	sub    BYTE PTR [eax],dh
100186d6:	30 30                	xor    BYTE PTR [eax],dh
100186d8:	38 30                	cmp    BYTE PTR [eax],dh
100186da:	44                   	inc    esp
100186db:	30 68 30             	xor    BYTE PTR [eax+0x30],ch
100186de:	70 30                	jo     0x10018710
100186e0:	06                   	push   es
100186e1:	31 40 31             	xor    DWORD PTR [eax+0x31],eax
100186e4:	57                   	push   edi
100186e5:	31 be 32 cf 32 09    	xor    DWORD PTR [esi+0x932cf32],edi
100186eb:	33 16                	xor    edx,DWORD PTR [esi]
100186ed:	33 20                	xor    esp,DWORD PTR [eax]
100186ef:	33 2e                	xor    ebp,DWORD PTR [esi]
100186f1:	33 37                	xor    esi,DWORD PTR [edi]
100186f3:	33 41 33             	xor    eax,DWORD PTR [ecx+0x33]
100186f6:	76 33                	jbe    0x1001872b
100186f8:	7e 33                	jle    0x1001872d
100186fa:	88 33                	mov    BYTE PTR [ebx],dh
100186fc:	a1 33 ab 33 be       	mov    eax,ds:0xbe33ab33
10018701:	33 e0                	xor    esp,eax
10018703:	33 17                	xor    edx,DWORD PTR [edi]
10018705:	34 4c                	xor    al,0x4c
10018707:	34 5f                	xor    al,0x5f
10018709:	34 cf                	xor    al,0xcf
1001870b:	34 ec                	xor    al,0xec
1001870d:	34 34                	xor    al,0x34
1001870f:	35 96 35 b5 35       	xor    eax,0x35b53596
10018714:	2a 36                	sub    dh,BYTE PTR [esi]
10018716:	36 36 49             	ss ss dec ecx
10018719:	36 5b                	ss pop ebx
1001871b:	36 76 36             	ss jbe 0x10018754
1001871e:	7e 36                	jle    0x10018756
10018720:	86 36                	xchg   BYTE PTR [esi],dh
10018722:	9d                   	popf   
10018723:	36 b6 36             	ss mov dh,0x36
10018726:	d2 36                	shl    BYTE PTR [esi],cl
10018728:	db 36                	(bad)  [esi]
1001872a:	e1 36                	loope  0x10018762
1001872c:	ea 36 ef 36 fe 36 25 	jmp    0x2536:0xfe36ef36
10018733:	37                   	aaa    
10018734:	4e                   	dec    esi
10018735:	37                   	aaa    
10018736:	5f                   	pop    edi
10018737:	37                   	aaa    
10018738:	7f 37                	jg     0x10018771
1001873a:	44                   	inc    esp
1001873b:	38 6a 38             	cmp    BYTE PTR [edx+0x38],ch
1001873e:	b4 38                	mov    ah,0x38
10018740:	f8                   	clc    
10018741:	38 3e                	cmp    BYTE PTR [esi],bh
10018743:	39 82 39 e6 39 fd    	cmp    DWORD PTR [edx-0x2c619c7],eax
10018749:	39 0e                	cmp    DWORD PTR [esi],ecx
1001874b:	3a 4a 3a             	cmp    cl,BYTE PTR [edx+0x3a]
1001874e:	75 3a                	jne    0x1001878a
10018750:	89 3a                	mov    DWORD PTR [edx],edi
10018752:	26 3b 30             	cmp    esi,DWORD PTR es:[eax]
10018755:	3b 3a                	cmp    edi,DWORD PTR [edx]
10018757:	3b 55 3b             	cmp    edx,DWORD PTR [ebp+0x3b]
1001875a:	5c                   	pop    esp
1001875b:	3b 7b 3b             	cmp    edi,DWORD PTR [ebx+0x3b]
1001875e:	eb 3b                	jmp    0x1001879b
10018760:	f8                   	clc    
10018761:	3b 2b                	cmp    ebp,DWORD PTR [ebx]
10018763:	3d 57 3d fd 3d       	cmp    eax,0x3dfd3d57
10018768:	ca 3e ff             	retf   0xff3e
1001876b:	3e 18 3f             	sbb    BYTE PTR ds:[edi],bh
1001876e:	1f                   	pop    ds
1001876f:	3f                   	aas    
10018770:	27                   	daa    
10018771:	3f                   	aas    
10018772:	2c 3f                	sub    al,0x3f
10018774:	30 3f                	xor    BYTE PTR [edi],bh
10018776:	34 3f                	xor    al,0x3f
10018778:	5d                   	pop    ebp
10018779:	3f                   	aas    
1001877a:	83 3f a1             	cmp    DWORD PTR [edi],0xffffffa1
1001877d:	3f                   	aas    
1001877e:	a8 3f                	test   al,0x3f
10018780:	ac                   	lods   al,BYTE PTR ds:[esi]
10018781:	3f                   	aas    
10018782:	b0 3f                	mov    al,0x3f
10018784:	b4 3f                	mov    ah,0x3f
10018786:	b8 3f bc 3f c0       	mov    eax,0xc03fbc3f
1001878b:	3f                   	aas    
1001878c:	c4 3f                	les    edi,FWORD PTR [edi]
1001878e:	00 00                	add    BYTE PTR [eax],al
10018790:	00 80 00 00 d0 00    	add    BYTE PTR [eax+0xd00000],al
10018796:	00 00                	add    BYTE PTR [eax],al
10018798:	0e                   	push   cs
10018799:	30 14 30             	xor    BYTE PTR [eax+esi*1],dl
1001879c:	18 30                	sbb    BYTE PTR [eax],dh
1001879e:	1c 30                	sbb    al,0x30
100187a0:	20 30                	and    BYTE PTR [eax],dh
100187a2:	86 30                	xchg   BYTE PTR [eax],dh
100187a4:	91                   	xchg   ecx,eax
100187a5:	30 ac 30 b3 30 b8 30 	xor    BYTE PTR [eax+esi*1+0x30b830b3],ch
100187ac:	bc 30 c0 30 e1       	mov    esp,0xe130c030
100187b1:	30 0b                	xor    BYTE PTR [ebx],cl
100187b3:	31 3d 31 44 31 48    	xor    DWORD PTR ds:0x48314431,edi
100187b9:	31 4c 31 50          	xor    DWORD PTR [ecx+esi*1+0x50],ecx
100187bd:	31 54 31 58          	xor    DWORD PTR [ecx+esi*1+0x58],edx
100187c1:	31 5c 31 60          	xor    DWORD PTR [ecx+esi*1+0x60],ebx
100187c5:	31 aa 31 b0 31 b4    	xor    DWORD PTR [edx-0x4bce4fcf],ebp
100187cb:	31 b8 31 bc 31 7f    	xor    DWORD PTR [eax+0x7f31bc31],edi
100187d1:	34 10                	xor    al,0x10
100187d3:	36 05 37 b8 37 c4    	ss add eax,0xc437b837
100187d9:	37                   	aaa    
100187da:	cf                   	iret   
100187db:	37                   	aaa    
100187dc:	dc 37                	fdiv   QWORD PTR [edi]
100187de:	ec                   	in     al,dx
100187df:	37                   	aaa    
100187e0:	1e                   	push   ds
100187e1:	38 24 38             	cmp    BYTE PTR [eax+edi*1],ah
100187e4:	2d 38 34 38 3f       	sub    eax,0x3f383438
100187e9:	38 4b 38             	cmp    BYTE PTR [ebx+0x38],cl
100187ec:	86 38                	xchg   BYTE PTR [eax],bh
100187ee:	b5 38                	mov    ch,0x38
100187f0:	c1 38 cd             	sar    DWORD PTR [eax],0xcd
100187f3:	39 86 3a 8b 3a 9d    	cmp    DWORD PTR [esi-0x62c574c6],eax
100187f9:	3a bb 3a cf 3a d5    	cmp    bh,BYTE PTR [ebx-0x2ac530c6]
100187ff:	3a 42 3b             	cmp    al,BYTE PTR [edx+0x3b]
10018802:	4d                   	dec    ebp
10018803:	3b c7                	cmp    eax,edi
10018805:	3b e1                	cmp    esp,ecx
10018807:	3b 0c 3c             	cmp    ecx,DWORD PTR [esp+edi*1]
1001880a:	11 3c 26             	adc    DWORD PTR [esi+eiz*1],edi
1001880d:	3c 74                	cmp    al,0x74
1001880f:	3c ab                	cmp    al,0xab
10018811:	3c b6                	cmp    al,0xb6
10018813:	3c c0                	cmp    al,0xc0
10018815:	3c c5                	cmp    al,0xc5
10018817:	3c ca                	cmp    al,0xca
10018819:	3c cf                	cmp    al,0xcf
1001881b:	3c da                	cmp    al,0xda
1001881d:	3c 0a                	cmp    al,0xa
1001881f:	3d 18 3d 5f 3d       	cmp    eax,0x3d5f3d18
10018824:	64 3d a9 3d ae 3d    	fs cmp eax,0x3dae3da9
1001882a:	b5 3d                	mov    ch,0x3d
1001882c:	ba 3d c1 3d c6       	mov    edx,0xc63dc13d
10018831:	3d 35 3e 3e 3e       	cmp    eax,0x3e3e3e35
10018836:	44                   	inc    esp
10018837:	3e ca 3e d4          	ds retf 0xd43e
1001883b:	3e eb 3e             	ds jmp 0x1001887c
1001883e:	02 3f                	add    bh,BYTE PTR [edi]
10018840:	08 3f                	or     BYTE PTR [edi],bh
10018842:	18 3f                	sbb    BYTE PTR [edi],bh
10018844:	1d 3f 35 3f 3b       	sbb    eax,0x3b3f353f
10018849:	3f                   	aas    
1001884a:	4a                   	dec    edx
1001884b:	3f                   	aas    
1001884c:	50                   	push   eax
1001884d:	3f                   	aas    
1001884e:	5d                   	pop    ebp
1001884f:	3f                   	aas    
10018850:	84 3f                	test   BYTE PTR [edi],bh
10018852:	95                   	xchg   ebp,eax
10018853:	3f                   	aas    
10018854:	9c                   	pushf  
10018855:	3f                   	aas    
10018856:	ab                   	stos   DWORD PTR es:[edi],eax
10018857:	3f                   	aas    
10018858:	b0 3f                	mov    al,0x3f
1001885a:	bd 3f cb 3f 00       	mov    ebp,0x3fcb3f
1001885f:	00 00                	add    BYTE PTR [eax],al
10018861:	90                   	nop
10018862:	00 00                	add    BYTE PTR [eax],al
10018864:	cc                   	int3   
10018865:	00 00                	add    BYTE PTR [eax],al
10018867:	00 35 30 53 30 71    	add    BYTE PTR ds:0x71305330,dh
1001886d:	30 d0                	xor    al,dl
1001886f:	31 d7                	xor    edi,edx
10018871:	31 dd                	xor    ebp,ebx
10018873:	31 02                	xor    DWORD PTR [edx],eax
10018875:	32 9b 32 f7 32 0c    	xor    bl,BYTE PTR [ebx+0xc32f732]
1001887b:	33 52 33             	xor    edx,DWORD PTR [edx+0x33]
1001887e:	58                   	pop    eax
1001887f:	33 64 33 b9          	xor    esp,DWORD PTR [ebx+esi*1-0x47]
10018883:	33 ec                	xor    ebp,esp
10018885:	33 24 34             	xor    esp,DWORD PTR [esp+esi*1]
10018888:	8f                   	(bad)  
10018889:	34 95                	xor    al,0x95
1001888b:	34 e6                	xor    al,0xe6
1001888d:	34 ec                	xor    al,0xec
1001888f:	34 10                	xor    al,0x10
10018891:	35 33 35 67 35       	xor    eax,0x35673533
10018896:	6d                   	ins    DWORD PTR es:[edi],dx
10018897:	35 79 35 c0 35       	xor    eax,0x35c03579
1001889c:	6a 36                	push   0x36
1001889e:	9f                   	lahf   
1001889f:	36 b8 36 bf 36 c7    	ss mov eax,0xc736bf36
100188a5:	36 cc                	ss int3 
100188a7:	36 d0 36             	shl    BYTE PTR ss:[esi],1
100188aa:	d4 36                	aam    0x36
100188ac:	fd                   	std    
100188ad:	36 23 37             	and    esi,DWORD PTR ss:[edi]
100188b0:	41                   	inc    ecx
100188b1:	37                   	aaa    
100188b2:	48                   	dec    eax
100188b3:	37                   	aaa    
100188b4:	4c                   	dec    esp
100188b5:	37                   	aaa    
100188b6:	50                   	push   eax
100188b7:	37                   	aaa    
100188b8:	54                   	push   esp
100188b9:	37                   	aaa    
100188ba:	58                   	pop    eax
100188bb:	37                   	aaa    
100188bc:	5c                   	pop    esp
100188bd:	37                   	aaa    
100188be:	60                   	pusha  
100188bf:	37                   	aaa    
100188c0:	64 37                	fs aaa 
100188c2:	ae                   	scas   al,BYTE PTR es:[edi]
100188c3:	37                   	aaa    
100188c4:	b4 37                	mov    ah,0x37
100188c6:	b8 37 bc 37 c0       	mov    eax,0xc037bc37
100188cb:	37                   	aaa    
100188cc:	26 38 31             	cmp    BYTE PTR es:[ecx],dh
100188cf:	38 4c 38 53          	cmp    BYTE PTR [eax+edi*1+0x53],cl
100188d3:	38 58 38             	cmp    BYTE PTR [eax+0x38],bl
100188d6:	5c                   	pop    esp
100188d7:	38 60 38             	cmp    BYTE PTR [eax+0x38],ah
100188da:	81 38 ab 38 dd 38    	cmp    DWORD PTR [eax],0x38dd38ab
100188e0:	e4 38                	in     al,0x38
100188e2:	e8 38 ec 38 f0       	call   0x3a751f
100188e7:	38 f4                	cmp    ah,dh
100188e9:	38 f8                	cmp    al,bh
100188eb:	38 fc                	cmp    ah,bh
100188ed:	38 00                	cmp    BYTE PTR [eax],al
100188ef:	39 4a 39             	cmp    DWORD PTR [edx+0x39],ecx
100188f2:	50                   	push   eax
100188f3:	39 54 39 58          	cmp    DWORD PTR [ecx+edi*1+0x58],edx
100188f7:	39 5c 39 c7          	cmp    DWORD PTR [ecx+edi*1-0x39],ebx
100188fb:	39 d6                	cmp    esi,edx
100188fd:	39 e6                	cmp    esi,esp
100188ff:	39 f2                	cmp    edx,esi
10018901:	39 fc                	cmp    esp,edi
10018903:	39 04 3a             	cmp    DWORD PTR [edx+edi*1],eax
10018906:	0f 3a 3f             	(bad)  
10018909:	3a 6f 3a             	cmp    ch,BYTE PTR [edi+0x3a]
1001890c:	06                   	push   es
1001890d:	3b b5 3b d8 3b 56    	cmp    esi,DWORD PTR [ebp+0x563bd83b]
10018913:	3c 27                	cmp    al,0x27
10018915:	3d ab 3d b5 3d       	cmp    eax,0x3db53dab
1001891a:	cd 3d                	int    0x3d
1001891c:	d4 3d                	aam    0x3d
1001891e:	de 3d e6 3d f3 3d    	fidivr WORD PTR ds:0x3df33de6
10018924:	fa                   	cli    
10018925:	3d 2a 3e c3 3e       	cmp    eax,0x3ec33e2a
1001892a:	38 3f                	cmp    BYTE PTR [edi],bh
1001892c:	00 a0 00 00 50 00    	add    BYTE PTR [eax+0x500000],ah
10018932:	00 00                	add    BYTE PTR [eax],al
10018934:	3a 31                	cmp    dh,BYTE PTR [ecx]
10018936:	4c                   	dec    esp
10018937:	31 5e 31             	xor    DWORD PTR [esi+0x31],ebx
1001893a:	7b 31                	jnp    0x1001896d
1001893c:	8d 31                	lea    esi,[ecx]
1001893e:	9f                   	lahf   
1001893f:	31 b1 31 c3 31 d5    	xor    DWORD PTR [ecx-0x2ace3ccf],esi
10018945:	31 e7                	xor    edi,esp
10018947:	31 f6                	xor    esi,esi
10018949:	33 ec                	xor    ebp,esp
1001894b:	34 f4                	xor    al,0xf4
1001894d:	34 a7                	xor    al,0xa7
1001894f:	35 89 36 22 37       	xor    eax,0x37223689
10018954:	28 37                	sub    BYTE PTR [edi],dh
10018956:	ca 37 d0             	retf   0xd037
10018959:	37                   	aaa    
1001895a:	e0 37                	loopne 0x10018993
1001895c:	80 38 97             	cmp    BYTE PTR [eax],0x97
1001895f:	38 38                	cmp    BYTE PTR [eax],bh
10018961:	39 2e                	cmp    DWORD PTR [esi],ebp
10018963:	3a 36                	cmp    dh,BYTE PTR [esi]
10018965:	3a e9                	cmp    ch,cl
10018967:	3a cb                	cmp    cl,bl
10018969:	3b 64 3c 6a          	cmp    esp,DWORD PTR [esp+edi*1+0x6a]
1001896d:	3c 0c                	cmp    al,0xc
1001896f:	3d 12 3d 22 3d       	cmp    eax,0x3d223d12
10018974:	c2 3d d9             	ret    0xd93d
10018977:	3d 07 3e 94 3e       	cmp    eax,0x3e943e07
1001897c:	00 b0 00 00 34 00    	add    BYTE PTR [eax+0x340000],dh
10018982:	00 00                	add    BYTE PTR [eax],al
10018984:	64 31 7b 31          	xor    DWORD PTR fs:[ebx+0x31],edi
10018988:	90                   	nop
10018989:	34 94                	xor    al,0x94
1001898b:	34 98                	xor    al,0x98
1001898d:	34 9c                	xor    al,0x9c
1001898f:	34 a0                	xor    al,0xa0
10018991:	34 a4                	xor    al,0xa4
10018993:	34 a8                	xor    al,0xa8
10018995:	34 ac                	xor    al,0xac
10018997:	34 b0                	xor    al,0xb0
10018999:	34 b4                	xor    al,0xb4
1001899b:	34 b8                	xor    al,0xb8
1001899d:	34 bc                	xor    al,0xbc
1001899f:	34 31                	xor    al,0x31
100189a1:	36 07                	ss pop es
100189a3:	37                   	aaa    
100189a4:	1f                   	pop    ds
100189a5:	37                   	aaa    
100189a6:	2e 37                	cs aaa 
100189a8:	5a                   	pop    edx
100189a9:	37                   	aaa    
100189aa:	b9 37 de 37 00       	mov    ecx,0x37de37
100189af:	00 00                	add    BYTE PTR [eax],al
100189b1:	c0 00 00             	rol    BYTE PTR [eax],0x0
100189b4:	48                   	dec    eax
100189b5:	00 00                	add    BYTE PTR [eax],al
100189b7:	00 6e 32             	add    BYTE PTR [esi+0x32],ch
100189ba:	14 34                	adc    al,0x34
100189bc:	79 34                	jns    0x100189f2
100189be:	85 34 fd 34 17 35 20 	test   DWORD PTR [edi*8+0x20351734],esi
100189c5:	35 42 35 7a 35       	xor    eax,0x357a3542
100189ca:	bd 35 c3 35 f1       	mov    ebp,0xf135c335
100189cf:	35 ff 35 22 36       	xor    eax,0x362235ff
100189d4:	bf 36 c9 36 dc       	mov    edi,0xdc36c936
100189d9:	36 f9                	ss stc 
100189db:	36 23 37             	and    esi,DWORD PTR ss:[edi]
100189de:	5c                   	pop    esp
100189df:	37                   	aaa    
100189e0:	6b 37 48             	imul   esi,DWORD PTR [edi],0x48
100189e3:	38 5a 38             	cmp    BYTE PTR [edx+0x38],bl
100189e6:	14 39                	adc    al,0x39
100189e8:	dc 3a                	fdivr  QWORD PTR [edx]
100189ea:	e9 3a f7 3a 27       	jmp    0x373c8129
100189ef:	3b ad 3d be 3d f0    	cmp    ebp,DWORD PTR [ebp-0xfc241c3]
100189f5:	3f                   	aas    
100189f6:	00 00                	add    BYTE PTR [eax],al
100189f8:	00 d0                	add    al,dl
100189fa:	00 00                	add    BYTE PTR [eax],al
100189fc:	1c 00                	sbb    al,0x0
100189fe:	00 00                	add    BYTE PTR [eax],al
10018a00:	4c                   	dec    esp
10018a01:	31 50 31             	xor    DWORD PTR [eax+0x31],edx
10018a04:	54                   	push   esp
10018a05:	31 58 31             	xor    DWORD PTR [eax+0x31],ebx
10018a08:	f0 31 f4             	lock xor esp,esi
10018a0b:	31 f8                	xor    eax,edi
10018a0d:	31 1c 38             	xor    DWORD PTR [eax+edi*1],ebx
10018a10:	20 38                	and    BYTE PTR [eax],bh
10018a12:	00 00                	add    BYTE PTR [eax],al
10018a14:	00 e0                	add    al,ah
10018a16:	00 00                	add    BYTE PTR [eax],al
10018a18:	48                   	dec    eax
10018a19:	00 00                	add    BYTE PTR [eax],al
10018a1b:	00 8c 33 90 33 d8 33 	add    BYTE PTR [ebx+esi*1+0x33d83390],cl
10018a22:	f8                   	clc    
10018a23:	33 14 34             	xor    edx,DWORD PTR [esp+esi*1]
10018a26:	18 34 38             	sbb    BYTE PTR [eax+edi*1],dh
10018a29:	34 58                	xor    al,0x58
10018a2b:	34 78                	xor    al,0x78
10018a2d:	34 98                	xor    al,0x98
10018a2f:	34 a4                	xor    al,0xa4
10018a31:	34 bc                	xor    al,0xbc
10018a33:	34 c0                	xor    al,0xc0
10018a35:	34 e0                	xor    al,0xe0
10018a37:	34 00                	xor    al,0x0
10018a39:	35 20 35 3c 35       	xor    eax,0x353c3520
10018a3e:	40                   	inc    eax
10018a3f:	35 5c 35 60 35       	xor    eax,0x3560355c
10018a44:	7c 35                	jl     0x10018a7b
10018a46:	80 35 a0 35 bc 35 c0 	xor    BYTE PTR ds:0x35bc35a0,0xc0
10018a4d:	35 e0 35 00 36       	xor    eax,0x360035e0
10018a52:	20 36                	and    BYTE PTR [esi],dh
10018a54:	40                   	inc    eax
10018a55:	36 5c                	ss pop esp
10018a57:	36 60                	ss pusha 
10018a59:	36 00 00             	add    BYTE PTR ss:[eax],al
10018a5c:	00 00                	add    BYTE PTR [eax],al
10018a5e:	01 00                	add    DWORD PTR [eax],eax
10018a60:	e0 00                	loopne 0x10018a62
10018a62:	00 00                	add    BYTE PTR [eax],al
10018a64:	18 30                	sbb    BYTE PTR [eax],dh
10018a66:	1c 30                	sbb    al,0x30
10018a68:	20 30                	and    BYTE PTR [eax],dh
10018a6a:	24 30                	and    al,0x30
10018a6c:	28 30                	sub    BYTE PTR [eax],dh
10018a6e:	2c 30                	sub    al,0x30
10018a70:	30 30                	xor    BYTE PTR [eax],dh
10018a72:	34 30                	xor    al,0x30
10018a74:	38 30                	cmp    BYTE PTR [eax],dh
10018a76:	3c 30                	cmp    al,0x30
10018a78:	d8 32                	fdiv   DWORD PTR [edx]
10018a7a:	e4 32                	in     al,0x32
10018a7c:	ec                   	in     al,dx
10018a7d:	32 f4                	xor    dh,ah
10018a7f:	32 fc                	xor    bh,ah
10018a81:	32 04 33             	xor    al,BYTE PTR [ebx+esi*1]
10018a84:	0c 33                	or     al,0x33
10018a86:	14 33                	adc    al,0x33
10018a88:	1c 33                	sbb    al,0x33
10018a8a:	24 33                	and    al,0x33
10018a8c:	2c 33                	sub    al,0x33
10018a8e:	34 33                	xor    al,0x33
10018a90:	3c 33                	cmp    al,0x33
10018a92:	44                   	inc    esp
10018a93:	33 4c 33 54          	xor    ecx,DWORD PTR [ebx+esi*1+0x54]
10018a97:	33 5c 33 64          	xor    ebx,DWORD PTR [ebx+esi*1+0x64]
10018a9b:	33 6c 33 74          	xor    ebp,DWORD PTR [ebx+esi*1+0x74]
10018a9f:	33 7c 33 84          	xor    edi,DWORD PTR [ebx+esi*1-0x7c]
10018aa3:	33 8c 33 94 33 98 38 	xor    ecx,DWORD PTR [ebx+esi*1+0x38983394]
10018aaa:	90                   	nop
10018aab:	39 f8                	cmp    eax,edi
10018aad:	39 08                	cmp    DWORD PTR [eax],ecx
10018aaf:	3a 18                	cmp    bl,BYTE PTR [eax]
10018ab1:	3a 28                	cmp    ch,BYTE PTR [eax]
10018ab3:	3a 38                	cmp    bh,BYTE PTR [eax]
10018ab5:	3a 5c 3a 68          	cmp    bl,BYTE PTR [edx+edi*1+0x68]
10018ab9:	3a 6c 3a 70          	cmp    ch,BYTE PTR [edx+edi*1+0x70]
10018abd:	3a 74 3a 78          	cmp    dh,BYTE PTR [edx+edi*1+0x78]
10018ac1:	3a 80 3a 84 3a 90    	cmp    al,BYTE PTR [eax-0x6fc57bc6]
10018ac7:	3a 94 3a 98 3a 9c 3a 	cmp    dl,BYTE PTR [edx+edi*1+0x3a9c3a98]
10018ace:	a0 3a a4 3a a8       	mov    al,ds:0xa83aa43a
10018ad3:	3a ac 3a b0 3a b4 3a 	cmp    ch,BYTE PTR [edx+edi*1+0x3ab43ab0]
10018ada:	b8 3a bc 3a c0       	mov    eax,0xc03abc3a
10018adf:	3a c4                	cmp    al,ah
10018ae1:	3a c8                	cmp    cl,al
10018ae3:	3a cc                	cmp    cl,ah
10018ae5:	3a d0                	cmp    dl,al
10018ae7:	3a d4                	cmp    dl,ah
10018ae9:	3a d8                	cmp    bl,al
10018aeb:	3a dc                	cmp    bl,ah
10018aed:	3a e0                	cmp    ah,al
10018aef:	3a e4                	cmp    ah,ah
10018af1:	3a e8                	cmp    ch,al
10018af3:	3a ec                	cmp    ch,ah
10018af5:	3a f0                	cmp    dh,al
10018af7:	3a f4                	cmp    dh,ah
10018af9:	3a f8                	cmp    bh,al
10018afb:	3a fc                	cmp    bh,ah
10018afd:	3a 00                	cmp    al,BYTE PTR [eax]
10018aff:	3b 04 3b             	cmp    eax,DWORD PTR [ebx+edi*1]
10018b02:	08 3b                	or     BYTE PTR [ebx],bh
10018b04:	0c 3b                	or     al,0x3b
10018b06:	10 3b                	adc    BYTE PTR [ebx],bh
10018b08:	14 3b                	adc    al,0x3b
10018b0a:	18 3b                	sbb    BYTE PTR [ebx],bh
10018b0c:	1c 3b                	sbb    al,0x3b
10018b0e:	20 3b                	and    BYTE PTR [ebx],bh
10018b10:	24 3b                	and    al,0x3b
10018b12:	28 3b                	sub    BYTE PTR [ebx],bh
10018b14:	2c 3b                	sub    al,0x3b
10018b16:	30 3b                	xor    BYTE PTR [ebx],bh
10018b18:	34 3b                	xor    al,0x3b
10018b1a:	38 3b                	cmp    BYTE PTR [ebx],bh
10018b1c:	3c 3b                	cmp    al,0x3b
10018b1e:	40                   	inc    eax
10018b1f:	3b 50 3b             	cmp    edx,DWORD PTR [eax+0x3b]
10018b22:	58                   	pop    eax
10018b23:	3b 5c 3b 60          	cmp    ebx,DWORD PTR [ebx+edi*1+0x60]
10018b27:	3b 64 3b 68          	cmp    esp,DWORD PTR [ebx+edi*1+0x68]
10018b2b:	3b 6c 3b 70          	cmp    ebp,DWORD PTR [ebx+edi*1+0x70]
10018b2f:	3b 74 3b 78          	cmp    esi,DWORD PTR [ebx+edi*1+0x78]
10018b33:	3b 7c 3b 88          	cmp    edi,DWORD PTR [ebx+edi*1-0x78]
10018b37:	3b 80 3c 84 3c 00    	cmp    eax,DWORD PTR [eax+0x3c843c]
	...
