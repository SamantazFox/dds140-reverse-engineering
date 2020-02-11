10001000 <.text>:
10001000:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10001004:	83 e8 00             	sub    eax,0x0
10001007:	74 46                	je     0x1000104f
10001009:	83 e8 01             	sub    eax,0x1
1000100c:	75 62                	jne    0x10001070
1000100e:	39 05 88 60 01 10    	cmp    DWORD PTR ds:0x10016088,eax
10001014:	75 21                	jne    0x10001037
10001016:	6a 40                	push   0x40
10001018:	68 00 10 00 00       	push   0x1000
1000101d:	68 00 00 40 01       	push   0x1400000
10001022:	50                   	push   eax
10001023:	ff 15 08 d0 00 10    	call   DWORD PTR ds:0x1000d008
10001029:	85 c0                	test   eax,eax
1000102b:	a3 88 60 01 10       	mov    ds:0x10016088,eax
10001030:	75 05                	jne    0x10001037
10001032:	33 c0                	xor    eax,eax
10001034:	c2 0c 00             	ret    0xc
10001037:	80 3d 2c 52 01 10 00 	cmp    BYTE PTR ds:0x1001522c,0x0
1000103e:	75 f2                	jne    0x10001032
10001040:	c6 05 2c 52 01 10 01 	mov    BYTE PTR ds:0x1001522c,0x1
10001047:	b8 01 00 00 00       	mov    eax,0x1
1000104c:	c2 0c 00             	ret    0xc
1000104f:	a1 88 60 01 10       	mov    eax,ds:0x10016088
10001054:	85 c0                	test   eax,eax
10001056:	74 18                	je     0x10001070
10001058:	68 00 80 00 00       	push   0x8000
1000105d:	6a 00                	push   0x0
1000105f:	50                   	push   eax
10001060:	ff 15 04 d0 00 10    	call   DWORD PTR ds:0x1000d004
10001066:	c7 05 88 60 01 10 00 	mov    DWORD PTR ds:0x10016088,0x0
1000106d:	00 00 00 
10001070:	b8 01 00 00 00       	mov    eax,0x1
10001075:	c2 0c 00             	ret    0xc
10001078:	cc                   	int3   
10001079:	cc                   	int3   
1000107a:	cc                   	int3   
1000107b:	cc                   	int3   
1000107c:	cc                   	int3   
1000107d:	cc                   	int3   
1000107e:	cc                   	int3   
1000107f:	cc                   	int3   
10001080:	83 c8 ff             	or     eax,0xffffffff
10001083:	39 05 00 00 01 10    	cmp    DWORD PTR ds:0x10010000,eax
10001089:	74 72                	je     0x100010fd
1000108b:	56                   	push   esi
1000108c:	33 f6                	xor    esi,esi
1000108e:	39 35 9c 60 01 10    	cmp    DWORD PTR ds:0x1001609c,esi
10001094:	74 64                	je     0x100010fa
10001096:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1000109a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000109e:	33 d2                	xor    edx,edx
100010a0:	f7 f1                	div    ecx
100010a2:	3b ce                	cmp    ecx,esi
100010a4:	53                   	push   ebx
100010a5:	8b 1d 88 60 01 10    	mov    ebx,DWORD PTR ds:0x10016088
100010ab:	57                   	push   edi
100010ac:	89 0d 0c 60 01 10    	mov    DWORD PTR ds:0x1001600c,ecx
100010b2:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
100010b6:	8b f8                	mov    edi,eax
100010b8:	7e 3e                	jle    0x100010f8
100010ba:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
100010c0:	8b 04 b5 10 30 01 10 	mov    eax,DWORD PTR [esi*4+0x10013010]
100010c7:	0f b6 15 17 52 01 10 	movzx  edx,BYTE PTR ds:0x10015217
100010ce:	68 18 52 01 10       	push   0x10015218
100010d3:	8d 4c 24 18          	lea    ecx,[esp+0x18]
100010d7:	51                   	push   ecx
100010d8:	57                   	push   edi
100010d9:	53                   	push   ebx
100010da:	a3 28 52 01 10       	mov    ds:0x10015228,eax
100010df:	a1 10 52 01 10       	mov    eax,ds:0x10015210
100010e4:	52                   	push   edx
100010e5:	50                   	push   eax
100010e6:	e8 2b 27 00 00       	call   0x10003816
100010eb:	83 c6 01             	add    esi,0x1
100010ee:	03 df                	add    ebx,edi
100010f0:	3b 35 0c 60 01 10    	cmp    esi,DWORD PTR ds:0x1001600c
100010f6:	7c c8                	jl     0x100010c0
100010f8:	5f                   	pop    edi
100010f9:	5b                   	pop    ebx
100010fa:	33 c0                	xor    eax,eax
100010fc:	5e                   	pop    esi
100010fd:	c2 10 00             	ret    0x10
10001100:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001104:	a3 9c 60 01 10       	mov    ds:0x1001609c,eax
10001109:	c2 04 00             	ret    0x4
1000110c:	cc                   	int3   
1000110d:	cc                   	int3   
1000110e:	cc                   	int3   
1000110f:	cc                   	int3   
10001110:	83 7c 24 04 00       	cmp    DWORD PTR [esp+0x4],0x0
10001115:	0f 95 c0             	setne  al
10001118:	a2 83 60 01 10       	mov    ds:0x10016083,al
1000111d:	c2 04 00             	ret    0x4
10001120:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
10001124:	dd 44 24 04          	fld    QWORD PTR [esp+0x4]
10001128:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1000112c:	dd 1d 90 60 01 10    	fstp   QWORD PTR ds:0x10016090
10001132:	dd 44 24 0c          	fld    QWORD PTR [esp+0xc]
10001136:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
1000113a:	a2 8c 60 01 10       	mov    ds:0x1001608c,al
1000113f:	dd 1d 78 60 01 10    	fstp   QWORD PTR ds:0x10016078
10001145:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
10001149:	89 0d 44 60 01 10    	mov    DWORD PTR ds:0x10016044,ecx
1000114f:	89 15 74 60 01 10    	mov    DWORD PTR ds:0x10016074,edx
10001155:	a3 84 60 01 10       	mov    ds:0x10016084,eax
1000115a:	c2 20 00             	ret    0x20
1000115d:	cc                   	int3   
1000115e:	cc                   	int3   
1000115f:	cc                   	int3   
10001160:	a1 84 60 01 10       	mov    eax,ds:0x10016084
10001165:	c3                   	ret    
10001166:	cc                   	int3   
10001167:	cc                   	int3   
10001168:	cc                   	int3   
10001169:	cc                   	int3   
1000116a:	cc                   	int3   
1000116b:	cc                   	int3   
1000116c:	cc                   	int3   
1000116d:	cc                   	int3   
1000116e:	cc                   	int3   
1000116f:	cc                   	int3   
10001170:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
10001174:	8a 4c 24 08          	mov    cl,BYTE PTR [esp+0x8]
10001178:	8a 54 24 0c          	mov    dl,BYTE PTR [esp+0xc]
1000117c:	a2 80 60 01 10       	mov    ds:0x10016080,al
10001181:	88 0d 81 60 01 10    	mov    BYTE PTR ds:0x10016081,cl
10001187:	88 15 82 60 01 10    	mov    BYTE PTR ds:0x10016082,dl
1000118d:	c2 0c 00             	ret    0xc
10001190:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001194:	83 e8 00             	sub    eax,0x0
10001197:	74 1f                	je     0x100011b8
10001199:	83 e8 01             	sub    eax,0x1
1000119c:	74 12                	je     0x100011b0
1000119e:	83 e8 01             	sub    eax,0x1
100011a1:	74 05                	je     0x100011a8
100011a3:	32 c0                	xor    al,al
100011a5:	c2 04 00             	ret    0x4
100011a8:	a0 82 60 01 10       	mov    al,ds:0x10016082
100011ad:	c2 04 00             	ret    0x4
100011b0:	a0 80 60 01 10       	mov    al,ds:0x10016080
100011b5:	c2 04 00             	ret    0x4
100011b8:	a0 8c 60 01 10       	mov    al,ds:0x1001608c
100011bd:	c2 04 00             	ret    0x4
100011c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100011c4:	83 e8 00             	sub    eax,0x0
100011c7:	74 22                	je     0x100011eb
100011c9:	83 e8 01             	sub    eax,0x1
100011cc:	74 05                	je     0x100011d3
100011ce:	d9 ee                	fldz   
100011d0:	c2 04 00             	ret    0x4
100011d3:	a1 98 60 01 10       	mov    eax,ds:0x10016098
100011d8:	db 05 98 60 01 10    	fild   DWORD PTR ds:0x10016098
100011de:	85 c0                	test   eax,eax
100011e0:	7d 0f                	jge    0x100011f1
100011e2:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100011e8:	c2 04 00             	ret    0x4
100011eb:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
100011f1:	c2 04 00             	ret    0x4
100011f4:	cc                   	int3   
100011f5:	cc                   	int3   
100011f6:	cc                   	int3   
100011f7:	cc                   	int3   
100011f8:	cc                   	int3   
100011f9:	cc                   	int3   
100011fa:	cc                   	int3   
100011fb:	cc                   	int3   
100011fc:	cc                   	int3   
100011fd:	cc                   	int3   
100011fe:	cc                   	int3   
100011ff:	cc                   	int3   
10001200:	83 7c 24 04 00       	cmp    DWORD PTR [esp+0x4],0x0
10001205:	b8 10 10 01 10       	mov    eax,0x10011010
1000120a:	74 05                	je     0x10001211
1000120c:	b8 10 32 01 10       	mov    eax,0x10013210
10001211:	c2 04 00             	ret    0x4
10001214:	cc                   	int3   
10001215:	cc                   	int3   
10001216:	cc                   	int3   
10001217:	cc                   	int3   
10001218:	cc                   	int3   
10001219:	cc                   	int3   
1000121a:	cc                   	int3   
1000121b:	cc                   	int3   
1000121c:	cc                   	int3   
1000121d:	cc                   	int3   
1000121e:	cc                   	int3   
1000121f:	cc                   	int3   
10001220:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001224:	83 ec 08             	sub    esp,0x8
10001227:	85 c0                	test   eax,eax
10001229:	74 10                	je     0x1000123b
1000122b:	83 f8 ff             	cmp    eax,0xffffffff
1000122e:	74 0b                	je     0x1000123b
10001230:	a1 88 60 01 10       	mov    eax,ds:0x10016088
10001235:	83 c4 08             	add    esp,0x8
10001238:	c2 04 00             	ret    0x4
1000123b:	a1 84 60 01 10       	mov    eax,ds:0x10016084
10001240:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
10001246:	dc 0d 88 d1 00 10    	fmul   QWORD PTR ds:0x1000d188
1000124c:	99                   	cdq    
1000124d:	56                   	push   esi
1000124e:	2b c2                	sub    eax,edx
10001250:	8b f0                	mov    esi,eax
10001252:	d9 c0                	fld    st(0)
10001254:	d1 fe                	sar    esi,1
10001256:	e8 75 26 00 00       	call   0x100038d0
1000125b:	3b f0                	cmp    esi,eax
1000125d:	7d 0e                	jge    0x1000126d
1000125f:	a1 88 60 01 10       	mov    eax,ds:0x10016088
10001264:	dd d8                	fstp   st(0)
10001266:	5e                   	pop    esi
10001267:	83 c4 08             	add    esp,0x8
1000126a:	c2 04 00             	ret    0x4
1000126d:	d9 7c 24 10          	fnstcw WORD PTR [esp+0x10]
10001271:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
10001276:	0d 00 0c 00 00       	or     eax,0xc00
1000127b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
1000127f:	8b c6                	mov    eax,esi
10001281:	5e                   	pop    esi
10001282:	d9 2c 24             	fldcw  WORD PTR [esp]
10001285:	df 3c 24             	fistp  QWORD PTR [esp]
10001288:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
1000128b:	2b c1                	sub    eax,ecx
1000128d:	03 05 74 60 01 10    	add    eax,DWORD PTR ds:0x10016074
10001293:	d9 6c 24 0c          	fldcw  WORD PTR [esp+0xc]
10001297:	03 05 88 60 01 10    	add    eax,DWORD PTR ds:0x10016088
1000129d:	83 c4 08             	add    esp,0x8
100012a0:	c2 04 00             	ret    0x4
100012a3:	cc                   	int3   
100012a4:	cc                   	int3   
100012a5:	cc                   	int3   
100012a6:	cc                   	int3   
100012a7:	cc                   	int3   
100012a8:	cc                   	int3   
100012a9:	cc                   	int3   
100012aa:	cc                   	int3   
100012ab:	cc                   	int3   
100012ac:	cc                   	int3   
100012ad:	cc                   	int3   
100012ae:	cc                   	int3   
100012af:	cc                   	int3   
100012b0:	a1 88 60 01 10       	mov    eax,ds:0x10016088
100012b5:	c2 04 00             	ret    0x4
100012b8:	cc                   	int3   
100012b9:	cc                   	int3   
100012ba:	cc                   	int3   
100012bb:	cc                   	int3   
100012bc:	cc                   	int3   
100012bd:	cc                   	int3   
100012be:	cc                   	int3   
100012bf:	cc                   	int3   
100012c0:	c3                   	ret    
100012c1:	cc                   	int3   
100012c2:	cc                   	int3   
100012c3:	cc                   	int3   
100012c4:	cc                   	int3   
100012c5:	cc                   	int3   
100012c6:	cc                   	int3   
100012c7:	cc                   	int3   
100012c8:	cc                   	int3   
100012c9:	cc                   	int3   
100012ca:	cc                   	int3   
100012cb:	cc                   	int3   
100012cc:	cc                   	int3   
100012cd:	cc                   	int3   
100012ce:	cc                   	int3   
100012cf:	cc                   	int3   
100012d0:	83 ec 14             	sub    esp,0x14
100012d3:	56                   	push   esi
100012d4:	be 01 00 00 00       	mov    esi,0x1
100012d9:	39 74 24 1c          	cmp    DWORD PTR [esp+0x1c],esi
100012dd:	75 09                	jne    0x100012e8
100012df:	33 c0                	xor    eax,eax
100012e1:	5e                   	pop    esi
100012e2:	83 c4 14             	add    esp,0x14
100012e5:	c2 0c 00             	ret    0xc
100012e8:	39 74 24 24          	cmp    DWORD PTR [esp+0x24],esi
100012ec:	72 f1                	jb     0x100012df
100012ee:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
100012f4:	dd 05 88 d1 00 10    	fld    QWORD PTR ds:0x1000d188
100012fa:	d8 c9                	fmul   st,st(1)
100012fc:	d9 c0                	fld    st(0)
100012fe:	e8 cd 25 00 00       	call   0x100038d0
10001303:	8b c8                	mov    ecx,eax
10001305:	25 01 00 00 80       	and    eax,0x80000001
1000130a:	79 05                	jns    0x10001311
1000130c:	48                   	dec    eax
1000130d:	83 c8 fe             	or     eax,0xfffffffe
10001310:	40                   	inc    eax
10001311:	74 02                	je     0x10001315
10001313:	03 ce                	add    ecx,esi
10001315:	a1 84 60 01 10       	mov    eax,ds:0x10016084
1000131a:	99                   	cdq    
1000131b:	2b c2                	sub    eax,edx
1000131d:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
10001321:	57                   	push   edi
10001322:	8b f9                	mov    edi,ecx
10001324:	d1 f8                	sar    eax,1
10001326:	2b fa                	sub    edi,edx
10001328:	3b c7                	cmp    eax,edi
1000132a:	7c 07                	jl     0x10001333
1000132c:	8d 3c 11             	lea    edi,[ecx+edx*1]
1000132f:	3b f8                	cmp    edi,eax
10001331:	7e 0e                	jle    0x10001341
10001333:	dd d9                	fstp   st(1)
10001335:	5f                   	pop    edi
10001336:	dd d8                	fstp   st(0)
10001338:	33 c0                	xor    eax,eax
1000133a:	5e                   	pop    esi
1000133b:	83 c4 14             	add    esp,0x14
1000133e:	c2 0c 00             	ret    0xc
10001341:	dd 05 a0 d1 00 10    	fld    QWORD PTR ds:0x1000d1a0
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
10001373:	0f 85 f7 03 00 00    	jne    0x10001770
10001379:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
1000137f:	d8 de                	fcomp  st(6)
10001381:	df e0                	fnstsw ax
10001383:	f6 c4 05             	test   ah,0x5
10001386:	0f 8a 38 03 00 00    	jp     0x100016c4
1000138c:	33 ed                	xor    ebp,ebp
1000138e:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
10001392:	eb 02                	jmp    0x10001396
10001394:	d9 cb                	fxch   st(3)
10001396:	8b c5                	mov    eax,ebp
10001398:	85 c0                	test   eax,eax
1000139a:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
1000139e:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100013a2:	7d 06                	jge    0x100013aa
100013a4:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100013aa:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
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
100013e5:	0f 8a ac 00 00 00    	jp     0x10001497
100013eb:	8b d7                	mov    edx,edi
100013ed:	85 d2                	test   edx,edx
100013ef:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
100013f3:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100013f7:	7d 06                	jge    0x100013ff
100013f9:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100013ff:	d8 c5                	fadd   st,st(5)
10001401:	8b c6                	mov    eax,esi
10001403:	85 c0                	test   eax,eax
10001405:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001409:	d8 e2                	fsub   st,st(2)
1000140b:	d9 c0                	fld    st(0)
1000140d:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001411:	7d 06                	jge    0x10001419
10001413:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001419:	d8 d9                	fcomp  st(1)
1000141b:	df e0                	fnstsw ax
1000141d:	f6 c4 05             	test   ah,0x5
10001420:	0f 8a db 00 00 00    	jp     0x10001501
10001426:	0f b6 14 71          	movzx  edx,BYTE PTR [ecx+esi*2]
1000142a:	0f b6 44 71 fe       	movzx  eax,BYTE PTR [ecx+esi*2-0x2]
1000142f:	2b d0                	sub    edx,eax
10001431:	83 fa 05             	cmp    edx,0x5
10001434:	7e 10                	jle    0x10001446
10001436:	0f b6 14 71          	movzx  edx,BYTE PTR [ecx+esi*2]
1000143a:	0f b6 44 71 02       	movzx  eax,BYTE PTR [ecx+esi*2+0x2]
1000143f:	2b d0                	sub    edx,eax
10001441:	83 fa 05             	cmp    edx,0x5
10001444:	7f 2b                	jg     0x10001471
10001446:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
10001449:	0f b6 7c 71 fe       	movzx  edi,BYTE PTR [ecx+esi*2-0x2]
1000144e:	0f b6 d0             	movzx  edx,al
10001451:	83 c2 05             	add    edx,0x5
10001454:	3b fa                	cmp    edi,edx
10001456:	7e 09                	jle    0x10001461
10001458:	0f b6 7c 71 02       	movzx  edi,BYTE PTR [ecx+esi*2+0x2]
1000145d:	3b fa                	cmp    edi,edx
1000145f:	7f 10                	jg     0x10001471
10001461:	3a c3                	cmp    al,bl
10001463:	76 02                	jbe    0x10001467
10001465:	8a d8                	mov    bl,al
10001467:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
1000146b:	73 04                	jae    0x10001471
1000146d:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
10001471:	83 c6 01             	add    esi,0x1
10001474:	8b d6                	mov    edx,esi
10001476:	85 d2                	test   edx,edx
10001478:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
1000147c:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001480:	7d 06                	jge    0x10001488
10001482:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001488:	d8 d9                	fcomp  st(1)
1000148a:	df e0                	fnstsw ax
1000148c:	f6 c4 05             	test   ah,0x5
1000148f:	7b 95                	jnp    0x10001426
10001491:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
10001495:	eb 6a                	jmp    0x10001501
10001497:	8b c7                	mov    eax,edi
10001499:	85 c0                	test   eax,eax
1000149b:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000149f:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100014a3:	7d 06                	jge    0x100014ab
100014a5:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100014ab:	d8 c5                	fadd   st,st(5)
100014ad:	8b d6                	mov    edx,esi
100014af:	85 d2                	test   edx,edx
100014b1:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
100014b5:	d8 e2                	fsub   st,st(2)
100014b7:	d9 c0                	fld    st(0)
100014b9:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100014bd:	7d 06                	jge    0x100014c5
100014bf:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100014c5:	d8 d9                	fcomp  st(1)
100014c7:	df e0                	fnstsw ax
100014c9:	f6 c4 05             	test   ah,0x5
100014cc:	7a 33                	jp     0x10001501
100014ce:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
100014d1:	3a c3                	cmp    al,bl
100014d3:	76 02                	jbe    0x100014d7
100014d5:	8a d8                	mov    bl,al
100014d7:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
100014db:	73 04                	jae    0x100014e1
100014dd:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
100014e1:	83 c6 01             	add    esi,0x1
100014e4:	8b c6                	mov    eax,esi
100014e6:	85 c0                	test   eax,eax
100014e8:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100014ec:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100014f0:	7d 06                	jge    0x100014f8
100014f2:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100014f8:	d8 d9                	fcomp  st(1)
100014fa:	df e0                	fnstsw ax
100014fc:	f6 c4 05             	test   ah,0x5
100014ff:	7b cd                	jnp    0x100014ce
10001501:	0f b6 44 24 28       	movzx  eax,BYTE PTR [esp+0x28]
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
1000156d:	0f 8a a7 00 00 00    	jp     0x1000161a
10001573:	8d 57 01             	lea    edx,[edi+0x1]
10001576:	8b c2                	mov    eax,edx
10001578:	85 c0                	test   eax,eax
1000157a:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
1000157e:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001582:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
10001586:	7d 06                	jge    0x1000158e
10001588:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
1000158e:	d8 da                	fcomp  st(2)
10001590:	df e0                	fnstsw ax
10001592:	f6 c4 05             	test   ah,0x5
10001595:	0f 8a d8 00 00 00    	jp     0x10001673
1000159b:	8d 74 51 01          	lea    esi,[ecx+edx*2+0x1]
1000159f:	8a 16                	mov    dl,BYTE PTR [esi]
100015a1:	0f b6 7e fe          	movzx  edi,BYTE PTR [esi-0x2]
100015a5:	0f b6 c2             	movzx  eax,dl
100015a8:	8b e8                	mov    ebp,eax
100015aa:	2b ef                	sub    ebp,edi
100015ac:	83 fd 05             	cmp    ebp,0x5
100015af:	7e 17                	jle    0x100015c8
100015b1:	0f b6 5e 02          	movzx  ebx,BYTE PTR [esi+0x2]
100015b5:	8b e8                	mov    ebp,eax
100015b7:	2b eb                	sub    ebp,ebx
100015b9:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]
100015bd:	83 fd 05             	cmp    ebp,0x5
100015c0:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
100015c4:	7f 29                	jg     0x100015ef
100015c6:	eb 04                	jmp    0x100015cc
100015c8:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
100015cc:	83 c0 05             	add    eax,0x5
100015cf:	3b f8                	cmp    edi,eax
100015d1:	7e 08                	jle    0x100015db
100015d3:	0f b6 7e 02          	movzx  edi,BYTE PTR [esi+0x2]
100015d7:	3b f8                	cmp    edi,eax
100015d9:	7f 14                	jg     0x100015ef
100015db:	3a d3                	cmp    dl,bl
100015dd:	76 06                	jbe    0x100015e5
100015df:	8a da                	mov    bl,dl
100015e1:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl
100015e5:	3a 54 24 28          	cmp    dl,BYTE PTR [esp+0x28]
100015e9:	73 04                	jae    0x100015ef
100015eb:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl
100015ef:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100015f3:	83 c0 01             	add    eax,0x1
100015f6:	83 c6 02             	add    esi,0x2
100015f9:	85 c0                	test   eax,eax
100015fb:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
100015ff:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001603:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
10001607:	7d 06                	jge    0x1000160f
10001609:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
1000160f:	d8 da                	fcomp  st(2)
10001611:	df e0                	fnstsw ax
10001613:	f6 c4 05             	test   ah,0x5
10001616:	7b 87                	jnp    0x1000159f
10001618:	eb 59                	jmp    0x10001673
1000161a:	8d 77 01             	lea    esi,[edi+0x1]
1000161d:	8b d6                	mov    edx,esi
1000161f:	85 d2                	test   edx,edx
10001621:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001625:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001629:	7d 06                	jge    0x10001631
1000162b:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001631:	d8 da                	fcomp  st(2)
10001633:	df e0                	fnstsw ax
10001635:	f6 c4 05             	test   ah,0x5
10001638:	7a 39                	jp     0x10001673
1000163a:	8d 7c 71 01          	lea    edi,[ecx+esi*2+0x1]
1000163e:	8a 07                	mov    al,BYTE PTR [edi]
10001640:	3a c3                	cmp    al,bl
10001642:	76 02                	jbe    0x10001646
10001644:	8a d8                	mov    bl,al
10001646:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
1000164a:	73 04                	jae    0x10001650
1000164c:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
10001650:	83 c6 01             	add    esi,0x1
10001653:	8b c6                	mov    eax,esi
10001655:	83 c7 02             	add    edi,0x2
10001658:	85 c0                	test   eax,eax
1000165a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000165e:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001662:	7d 06                	jge    0x1000166a
10001664:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
1000166a:	d8 da                	fcomp  st(2)
1000166c:	df e0                	fnstsw ax
1000166e:	f6 c4 05             	test   ah,0x5
10001671:	7b cb                	jnp    0x1000163e
10001673:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
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
100016b3:	0f 82 db fc ff ff    	jb     0x10001394
100016b9:	8a 1d 8c 60 01 10    	mov    bl,BYTE PTR ds:0x1001608c
100016bf:	e9 aa 00 00 00       	jmp    0x1000176e
100016c4:	dd db                	fstp   st(3)
100016c6:	33 d2                	xor    edx,edx
100016c8:	d9 c3                	fld    st(3)
100016ca:	d8 c9                	fmul   st,st(1)
100016cc:	d9 c0                	fld    st(0)
100016ce:	d8 d4                	fcom   st(4)
100016d0:	df e0                	fnstsw ax
100016d2:	f6 c4 41             	test   ah,0x41
100016d5:	75 34                	jne    0x1000170b
100016d7:	0f b6 04 51          	movzx  eax,BYTE PTR [ecx+edx*2]
100016db:	88 82 10 10 01 10    	mov    BYTE PTR [edx+0x10011010],al
100016e1:	0f b6 44 51 01       	movzx  eax,BYTE PTR [ecx+edx*2+0x1]
100016e6:	88 82 10 32 01 10    	mov    BYTE PTR [edx+0x10013210],al
100016ec:	03 d6                	add    edx,esi
100016ee:	8b c2                	mov    eax,edx
100016f0:	85 c0                	test   eax,eax
100016f2:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
100016f6:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100016fa:	7d 06                	jge    0x10001702
100016fc:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001702:	d8 d9                	fcomp  st(1)
10001704:	df e0                	fnstsw ax
10001706:	f6 c4 05             	test   ah,0x5
10001709:	7b cc                	jnp    0x100016d7
1000170b:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
1000170f:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001714:	dd d8                	fstp   st(0)
10001716:	0d 00 0c 00 00       	or     eax,0xc00
1000171b:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000171f:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001723:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001727:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1000172b:	3d 00 10 00 00       	cmp    eax,0x1000
10001730:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001734:	73 32                	jae    0x10001768
10001736:	8b d0                	mov    edx,eax
10001738:	2b d0                	sub    edx,eax
1000173a:	8d ba 10 32 01 10    	lea    edi,[edx+0x10013210]
10001740:	8d b2 10 10 01 10    	lea    esi,[edx+0x10011010]
10001746:	0f b6 16             	movzx  edx,BYTE PTR [esi]
10001749:	88 90 10 10 01 10    	mov    BYTE PTR [eax+0x10011010],dl
1000174f:	0f b6 17             	movzx  edx,BYTE PTR [edi]
10001752:	88 90 10 32 01 10    	mov    BYTE PTR [eax+0x10013210],dl
10001758:	83 c0 01             	add    eax,0x1
1000175b:	83 c6 01             	add    esi,0x1
1000175e:	83 c7 01             	add    edi,0x1
10001761:	3d 00 10 00 00       	cmp    eax,0x1000
10001766:	72 de                	jb     0x10001746
10001768:	dd 05 a0 d1 00 10    	fld    QWORD PTR ds:0x1000d1a0
1000176e:	d9 cb                	fxch   st(3)
10001770:	84 db                	test   bl,bl
10001772:	0f 89 e9 02 00 00    	jns    0x10001a61
10001778:	dd db                	fstp   st(3)
1000177a:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10001780:	d8 dd                	fcomp  st(5)
10001782:	df e0                	fnstsw ax
10001784:	f6 c4 05             	test   ah,0x5
10001787:	0f 8a ff 01 00 00    	jp     0x1000198c
1000178d:	dd db                	fstp   st(3)
1000178f:	33 ed                	xor    ebp,ebp
10001791:	dd da                	fstp   st(2)
10001793:	dd d8                	fstp   st(0)
10001795:	8b c5                	mov    eax,ebp
10001797:	85 c0                	test   eax,eax
10001799:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
1000179d:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100017a1:	7d 06                	jge    0x100017a9
100017a3:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100017a9:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
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
100017e5:	7d 06                	jge    0x100017ed
100017e7:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100017ed:	d8 c2                	fadd   st,st(2)
100017ef:	8b c7                	mov    eax,edi
100017f1:	85 c0                	test   eax,eax
100017f3:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
100017f7:	d8 e1                	fsub   st,st(1)
100017f9:	d9 c0                	fld    st(0)
100017fb:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
100017ff:	7d 06                	jge    0x10001807
10001801:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001807:	d8 d9                	fcomp  st(1)
10001809:	df e0                	fnstsw ax
1000180b:	f6 c4 05             	test   ah,0x5
1000180e:	7a 33                	jp     0x10001843
10001810:	8a 04 79             	mov    al,BYTE PTR [ecx+edi*2]
10001813:	3a c2                	cmp    al,dl
10001815:	76 02                	jbe    0x10001819
10001817:	8a d0                	mov    dl,al
10001819:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
1000181d:	73 04                	jae    0x10001823
1000181f:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
10001823:	83 c7 01             	add    edi,0x1
10001826:	8b c7                	mov    eax,edi
10001828:	85 c0                	test   eax,eax
1000182a:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
1000182e:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001832:	7d 06                	jge    0x1000183a
10001834:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
1000183a:	d8 d9                	fcomp  st(1)
1000183c:	df e0                	fnstsw ax
1000183e:	f6 c4 05             	test   ah,0x5
10001841:	7b cd                	jnp    0x10001810
10001843:	8a 04 59             	mov    al,BYTE PTR [ecx+ebx*2]
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
100018ae:	7d 06                	jge    0x100018b6
100018b0:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100018b6:	d8 d9                	fcomp  st(1)
100018b8:	df e0                	fnstsw ax
100018ba:	f6 c4 05             	test   ah,0x5
100018bd:	7a 3d                	jp     0x100018fc
100018bf:	8d 7c 71 01          	lea    edi,[ecx+esi*2+0x1]
100018c3:	8a 07                	mov    al,BYTE PTR [edi]
100018c5:	3a 44 24 30          	cmp    al,BYTE PTR [esp+0x30]
100018c9:	76 04                	jbe    0x100018cf
100018cb:	88 44 24 30          	mov    BYTE PTR [esp+0x30],al
100018cf:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
100018d3:	73 04                	jae    0x100018d9
100018d5:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
100018d9:	83 c6 01             	add    esi,0x1
100018dc:	8b d6                	mov    edx,esi
100018de:	83 c7 02             	add    edi,0x2
100018e1:	85 d2                	test   edx,edx
100018e3:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
100018e7:	db 44 24 2c          	fild   DWORD PTR [esp+0x2c]
100018eb:	7d 06                	jge    0x100018f3
100018ed:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100018f3:	d8 d9                	fcomp  st(1)
100018f5:	df e0                	fnstsw ax
100018f7:	f6 c4 05             	test   ah,0x5
100018fa:	7b c7                	jnp    0x100018c3
100018fc:	8a 5c 59 01          	mov    bl,BYTE PTR [ecx+ebx*2+0x1]
10001900:	dd d8                	fstp   st(0)
10001902:	a1 44 60 01 10       	mov    eax,ds:0x10016044
10001907:	0f b6 d3             	movzx  edx,bl
1000190a:	03 d0                	add    edx,eax
1000190c:	79 04                	jns    0x10001912
1000190e:	32 db                	xor    bl,bl
10001910:	eb 02                	jmp    0x10001914
10001912:	02 d8                	add    bl,al
10001914:	0f b6 54 24 30       	movzx  edx,BYTE PTR [esp+0x30]
10001919:	03 d0                	add    edx,eax
1000191b:	88 1c ad 10 32 01 10 	mov    BYTE PTR [ebp*4+0x10013210],bl
10001922:	79 04                	jns    0x10001928
10001924:	32 d2                	xor    dl,dl
10001926:	eb 06                	jmp    0x1000192e
10001928:	8a d0                	mov    dl,al
1000192a:	02 54 24 30          	add    dl,BYTE PTR [esp+0x30]
1000192e:	88 14 ad 11 32 01 10 	mov    BYTE PTR [ebp*4+0x10013211],dl
10001935:	0f b6 54 24 28       	movzx  edx,BYTE PTR [esp+0x28]
1000193a:	03 d0                	add    edx,eax
1000193c:	79 04                	jns    0x10001942
1000193e:	32 d2                	xor    dl,dl
10001940:	eb 06                	jmp    0x10001948
10001942:	8a d0                	mov    dl,al
10001944:	02 54 24 28          	add    dl,BYTE PTR [esp+0x28]
10001948:	88 14 ad 12 32 01 10 	mov    BYTE PTR [ebp*4+0x10013212],dl
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
10001973:	0f 82 1c fe ff ff    	jb     0x10001795
10001979:	5d                   	pop    ebp
1000197a:	dd d9                	fstp   st(1)
1000197c:	5b                   	pop    ebx
1000197d:	dd d8                	fstp   st(0)
1000197f:	5f                   	pop    edi
10001980:	b8 01 00 00 00       	mov    eax,0x1
10001985:	5e                   	pop    esi
10001986:	83 c4 14             	add    esp,0x14
10001989:	c2 0c 00             	ret    0xc
1000198c:	dd dc                	fstp   st(4)
1000198e:	33 d2                	xor    edx,edx
10001990:	dd d8                	fstp   st(0)
10001992:	d9 c9                	fxch   st(1)
10001994:	de ca                	fmulp  st(2),st
10001996:	d9 c1                	fld    st(1)
10001998:	d8 d1                	fcom   st(1)
1000199a:	df e0                	fnstsw ax
1000199c:	dd d9                	fstp   st(1)
1000199e:	f6 c4 41             	test   ah,0x41
100019a1:	75 4a                	jne    0x100019ed
100019a3:	8d 71 01             	lea    esi,[ecx+0x1]
100019a6:	8b 0d 44 60 01 10    	mov    ecx,DWORD PTR ds:0x10016044
100019ac:	8a 46 ff             	mov    al,BYTE PTR [esi-0x1]
100019af:	88 82 10 10 01 10    	mov    BYTE PTR [edx+0x10011010],al
100019b5:	0f b6 06             	movzx  eax,BYTE PTR [esi]
100019b8:	03 c1                	add    eax,ecx
100019ba:	79 04                	jns    0x100019c0
100019bc:	32 c0                	xor    al,al
100019be:	eb 04                	jmp    0x100019c4
100019c0:	8a 06                	mov    al,BYTE PTR [esi]
100019c2:	02 c1                	add    al,cl
100019c4:	88 82 10 32 01 10    	mov    BYTE PTR [edx+0x10013210],al
100019ca:	83 c2 01             	add    edx,0x1
100019cd:	8b c2                	mov    eax,edx
100019cf:	83 c6 02             	add    esi,0x2
100019d2:	85 c0                	test   eax,eax
100019d4:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
100019d8:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
100019dc:	7d 06                	jge    0x100019e4
100019de:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100019e4:	d8 d9                	fcomp  st(1)
100019e6:	df e0                	fnstsw ax
100019e8:	f6 c4 05             	test   ah,0x5
100019eb:	7b bf                	jnp    0x100019ac
100019ed:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
100019f1:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
100019f6:	dd d8                	fstp   st(0)
100019f8:	0d 00 0c 00 00       	or     eax,0xc00
100019fd:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001a01:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001a05:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001a09:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001a0d:	3d 00 10 00 00       	cmp    eax,0x1000
10001a12:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001a16:	0f 83 b4 05 00 00    	jae    0x10001fd0
10001a1c:	8b c8                	mov    ecx,eax
10001a1e:	2b c8                	sub    ecx,eax
10001a20:	8d b1 10 32 01 10    	lea    esi,[ecx+0x10013210]
10001a26:	8d 89 10 10 01 10    	lea    ecx,[ecx+0x10011010]
10001a2c:	8d 64 24 00          	lea    esp,[esp+0x0]
10001a30:	0f b6 11             	movzx  edx,BYTE PTR [ecx]
10001a33:	88 90 10 10 01 10    	mov    BYTE PTR [eax+0x10011010],dl
10001a39:	0f b6 16             	movzx  edx,BYTE PTR [esi]
10001a3c:	88 90 10 32 01 10    	mov    BYTE PTR [eax+0x10013210],dl
10001a42:	83 c0 01             	add    eax,0x1
10001a45:	83 c1 01             	add    ecx,0x1
10001a48:	83 c6 01             	add    esi,0x1
10001a4b:	3d 00 10 00 00       	cmp    eax,0x1000
10001a50:	72 de                	jb     0x10001a30
10001a52:	5d                   	pop    ebp
10001a53:	5b                   	pop    ebx
10001a54:	5f                   	pop    edi
10001a55:	b8 01 00 00 00       	mov    eax,0x1
10001a5a:	5e                   	pop    esi
10001a5b:	83 c4 14             	add    esp,0x14
10001a5e:	c2 0c 00             	ret    0xc
10001a61:	80 fb 10             	cmp    bl,0x10
10001a64:	0f 85 bf 02 00 00    	jne    0x10001d29
10001a6a:	dd 05 90 d1 00 10    	fld    QWORD PTR ds:0x1000d190
10001a70:	d8 de                	fcomp  st(6)
10001a72:	df e0                	fnstsw ax
10001a74:	f6 c4 05             	test   ah,0x5
10001a77:	0f 8a 0a 02 00 00    	jp     0x10001c87
10001a7d:	dd dc                	fstp   st(4)
10001a7f:	33 ed                	xor    ebp,ebp
10001a81:	dd d8                	fstp   st(0)
10001a83:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
10001a87:	dd da                	fstp   st(2)
10001a89:	8b c5                	mov    eax,ebp
10001a8b:	85 c0                	test   eax,eax
10001a8d:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001a91:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001a95:	7d 06                	jge    0x10001a9d
10001a97:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001a9d:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
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
10001ad7:	0f 8a bf 00 00 00    	jp     0x10001b9c
10001add:	85 ff                	test   edi,edi
10001adf:	8d 57 01             	lea    edx,[edi+0x1]
10001ae2:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
10001ae6:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001aea:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
10001aee:	7d 06                	jge    0x10001af6
10001af0:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001af6:	d8 c3                	fadd   st,st(3)
10001af8:	8b c2                	mov    eax,edx
10001afa:	85 c0                	test   eax,eax
10001afc:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10001b00:	d8 e2                	fsub   st,st(2)
10001b02:	d9 c0                	fld    st(0)
10001b04:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001b08:	7d 06                	jge    0x10001b10
10001b0a:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001b10:	d8 d9                	fcomp  st(1)
10001b12:	df e0                	fnstsw ax
10001b14:	f6 c4 05             	test   ah,0x5
10001b17:	0f 8a f0 00 00 00    	jp     0x10001c0d
10001b1d:	8d 74 51 01          	lea    esi,[ecx+edx*2+0x1]
10001b21:	8a 16                	mov    dl,BYTE PTR [esi]
10001b23:	0f b6 7e fe          	movzx  edi,BYTE PTR [esi-0x2]
10001b27:	0f b6 c2             	movzx  eax,dl
10001b2a:	8b d8                	mov    ebx,eax
10001b2c:	2b df                	sub    ebx,edi
10001b2e:	83 fb 05             	cmp    ebx,0x5
10001b31:	7e 17                	jle    0x10001b4a
10001b33:	0f b6 5e 02          	movzx  ebx,BYTE PTR [esi+0x2]
10001b37:	8b e8                	mov    ebp,eax
10001b39:	2b eb                	sub    ebp,ebx
10001b3b:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]
10001b3f:	83 fd 05             	cmp    ebp,0x5
10001b42:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
10001b46:	7f 29                	jg     0x10001b71
10001b48:	eb 04                	jmp    0x10001b4e
10001b4a:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]
10001b4e:	83 c0 05             	add    eax,0x5
10001b51:	3b f8                	cmp    edi,eax
10001b53:	7e 08                	jle    0x10001b5d
10001b55:	0f b6 7e 02          	movzx  edi,BYTE PTR [esi+0x2]
10001b59:	3b f8                	cmp    edi,eax
10001b5b:	7f 14                	jg     0x10001b71
10001b5d:	3a d3                	cmp    dl,bl
10001b5f:	76 06                	jbe    0x10001b67
10001b61:	8a da                	mov    bl,dl
10001b63:	88 5c 24 30          	mov    BYTE PTR [esp+0x30],bl
10001b67:	3a 54 24 28          	cmp    dl,BYTE PTR [esp+0x28]
10001b6b:	73 04                	jae    0x10001b71
10001b6d:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl
10001b71:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10001b75:	83 c0 01             	add    eax,0x1
10001b78:	83 c6 02             	add    esi,0x2
10001b7b:	85 c0                	test   eax,eax
10001b7d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
10001b81:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
10001b85:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
10001b89:	7d 06                	jge    0x10001b91
10001b8b:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001b91:	d8 d9                	fcomp  st(1)
10001b93:	df e0                	fnstsw ax
10001b95:	f6 c4 05             	test   ah,0x5
10001b98:	7b 87                	jnp    0x10001b21
10001b9a:	eb 71                	jmp    0x10001c0d
10001b9c:	85 ff                	test   edi,edi
10001b9e:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
10001ba2:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001ba6:	8d 77 01             	lea    esi,[edi+0x1]
10001ba9:	7d 06                	jge    0x10001bb1
10001bab:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001bb1:	d8 c3                	fadd   st,st(3)
10001bb3:	8b d6                	mov    edx,esi
10001bb5:	85 d2                	test   edx,edx
10001bb7:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001bbb:	d8 e2                	fsub   st,st(2)
10001bbd:	d9 c0                	fld    st(0)
10001bbf:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001bc3:	7d 06                	jge    0x10001bcb
10001bc5:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001bcb:	d8 d9                	fcomp  st(1)
10001bcd:	df e0                	fnstsw ax
10001bcf:	f6 c4 05             	test   ah,0x5
10001bd2:	7a 39                	jp     0x10001c0d
10001bd4:	8d 7c 71 01          	lea    edi,[ecx+esi*2+0x1]
10001bd8:	8a 07                	mov    al,BYTE PTR [edi]
10001bda:	3a c3                	cmp    al,bl
10001bdc:	76 02                	jbe    0x10001be0
10001bde:	8a d8                	mov    bl,al
10001be0:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
10001be4:	73 04                	jae    0x10001bea
10001be6:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
10001bea:	83 c6 01             	add    esi,0x1
10001bed:	8b c6                	mov    eax,esi
10001bef:	83 c7 02             	add    edi,0x2
10001bf2:	85 c0                	test   eax,eax
10001bf4:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001bf8:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001bfc:	7d 06                	jge    0x10001c04
10001bfe:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001c04:	d8 d9                	fcomp  st(1)
10001c06:	df e0                	fnstsw ax
10001c08:	f6 c4 05             	test   ah,0x5
10001c0b:	7b cb                	jnp    0x10001bd8
10001c0d:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
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
10001c61:	88 14 ad 0f 32 01 10 	mov    BYTE PTR [ebp*4+0x1001320f],dl
10001c68:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001c6c:	0f 82 17 fe ff ff    	jb     0x10001a89
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
10001c87:	dd dd                	fstp   st(5)
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
10001cbd:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
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
10001cf5:	0f 83 d5 02 00 00    	jae    0x10001fd0
10001cfb:	8b c8                	mov    ecx,eax
10001cfd:	2b c8                	sub    ecx,eax
10001cff:	81 c1 10 32 01 10    	add    ecx,0x10013210
10001d05:	8a 11                	mov    dl,BYTE PTR [ecx]
10001d07:	88 90 10 32 01 10    	mov    BYTE PTR [eax+0x10013210],dl
10001d0d:	83 c0 01             	add    eax,0x1
10001d10:	83 c1 01             	add    ecx,0x1
10001d13:	3d 00 10 00 00       	cmp    eax,0x1000
10001d18:	72 eb                	jb     0x10001d05
10001d1a:	5d                   	pop    ebp
10001d1b:	5b                   	pop    ebx
10001d1c:	5f                   	pop    edi
10001d1d:	b8 01 00 00 00       	mov    eax,0x1
10001d22:	5e                   	pop    esi
10001d23:	83 c4 14             	add    esp,0x14
10001d26:	c2 0c 00             	ret    0xc
10001d29:	80 fb 01             	cmp    bl,0x1
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
10001d4d:	8b c7                	mov    eax,edi
10001d4f:	85 c0                	test   eax,eax
10001d51:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001d55:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001d59:	7d 06                	jge    0x10001d61
10001d5b:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001d61:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
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
10001d9a:	0f 8a ac 00 00 00    	jp     0x10001e4c
10001da0:	8b d5                	mov    edx,ebp
10001da2:	85 d2                	test   edx,edx
10001da4:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001da8:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001dac:	7d 06                	jge    0x10001db4
10001dae:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001db4:	d8 c3                	fadd   st,st(3)
10001db6:	8b c6                	mov    eax,esi
10001db8:	85 c0                	test   eax,eax
10001dba:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001dbe:	d8 e2                	fsub   st,st(2)
10001dc0:	d9 c0                	fld    st(0)
10001dc2:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001dc6:	7d 06                	jge    0x10001dce
10001dc8:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001dce:	d8 d9                	fcomp  st(1)
10001dd0:	df e0                	fnstsw ax
10001dd2:	f6 c4 05             	test   ah,0x5
10001dd5:	0f 8a db 00 00 00    	jp     0x10001eb6
10001ddb:	0f b6 54 71 fe       	movzx  edx,BYTE PTR [ecx+esi*2-0x2]
10001de0:	0f b6 04 71          	movzx  eax,BYTE PTR [ecx+esi*2]
10001de4:	2b c2                	sub    eax,edx
10001de6:	83 f8 05             	cmp    eax,0x5
10001de9:	7e 10                	jle    0x10001dfb
10001deb:	0f b6 54 71 02       	movzx  edx,BYTE PTR [ecx+esi*2+0x2]
10001df0:	0f b6 04 71          	movzx  eax,BYTE PTR [ecx+esi*2]
10001df4:	2b c2                	sub    eax,edx
10001df6:	83 f8 05             	cmp    eax,0x5
10001df9:	7f 2f                	jg     0x10001e2a
10001dfb:	8a 04 71             	mov    al,BYTE PTR [ecx+esi*2]
10001dfe:	0f b6 6c 71 fe       	movzx  ebp,BYTE PTR [ecx+esi*2-0x2]
10001e03:	0f b6 d0             	movzx  edx,al
10001e06:	83 c2 05             	add    edx,0x5
10001e09:	3b ea                	cmp    ebp,edx
10001e0b:	7e 09                	jle    0x10001e16
10001e0d:	0f b6 6c 71 02       	movzx  ebp,BYTE PTR [ecx+esi*2+0x2]
10001e12:	3b ea                	cmp    ebp,edx
10001e14:	7f 10                	jg     0x10001e26
10001e16:	3a c3                	cmp    al,bl
10001e18:	76 02                	jbe    0x10001e1c
10001e1a:	8a d8                	mov    bl,al
10001e1c:	3a 44 24 28          	cmp    al,BYTE PTR [esp+0x28]
10001e20:	73 04                	jae    0x10001e26
10001e22:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
10001e26:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]
10001e2a:	83 c6 01             	add    esi,0x1
10001e2d:	8b d6                	mov    edx,esi
10001e2f:	85 d2                	test   edx,edx
10001e31:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001e35:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001e39:	7d 06                	jge    0x10001e41
10001e3b:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001e41:	d8 d9                	fcomp  st(1)
10001e43:	df e0                	fnstsw ax
10001e45:	f6 c4 05             	test   ah,0x5
10001e48:	7b 91                	jnp    0x10001ddb
10001e4a:	eb 6a                	jmp    0x10001eb6
10001e4c:	8b c5                	mov    eax,ebp
10001e4e:	85 c0                	test   eax,eax
10001e50:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001e54:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001e58:	7d 06                	jge    0x10001e60
10001e5a:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001e60:	d8 c3                	fadd   st,st(3)
10001e62:	8b d6                	mov    edx,esi
10001e64:	85 d2                	test   edx,edx
10001e66:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
10001e6a:	d8 e2                	fsub   st,st(2)
10001e6c:	d9 c0                	fld    st(0)
10001e6e:	db 44 24 30          	fild   DWORD PTR [esp+0x30]
10001e72:	7d 06                	jge    0x10001e7a
10001e74:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001e7a:	d8 d9                	fcomp  st(1)
10001e7c:	df e0                	fnstsw ax
10001e7e:	f6 c4 05             	test   ah,0x5
10001e81:	7a 33                	jp     0x10001eb6
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
10001ea7:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001ead:	d8 d9                	fcomp  st(1)
10001eaf:	df e0                	fnstsw ax
10001eb1:	f6 c4 05             	test   ah,0x5
10001eb4:	7b cd                	jnp    0x10001e83
10001eb6:	0f b6 44 24 28       	movzx  eax,BYTE PTR [esp+0x28]
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
10001f0b:	0f 82 3c fe ff ff    	jb     0x10001d4d
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
10001f3b:	75 29                	jne    0x10001f66
10001f3d:	8a 04 51             	mov    al,BYTE PTR [ecx+edx*2]
10001f40:	88 82 10 10 01 10    	mov    BYTE PTR [edx+0x10011010],al
10001f46:	83 c2 01             	add    edx,0x1
10001f49:	8b c2                	mov    eax,edx
10001f4b:	85 c0                	test   eax,eax
10001f4d:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
10001f51:	db 44 24 28          	fild   DWORD PTR [esp+0x28]
10001f55:	7d 06                	jge    0x10001f5d
10001f57:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
10001f5d:	d8 da                	fcomp  st(2)
10001f5f:	df e0                	fnstsw ax
10001f61:	f6 c4 05             	test   ah,0x5
10001f64:	7b d7                	jnp    0x10001f3d
10001f66:	d9 7c 24 28          	fnstcw WORD PTR [esp+0x28]
10001f6a:	0f b7 44 24 28       	movzx  eax,WORD PTR [esp+0x28]
10001f6f:	dd d9                	fstp   st(1)
10001f71:	0d 00 0c 00 00       	or     eax,0xc00
10001f76:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
10001f7a:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
10001f7e:	df 7c 24 1c          	fistp  QWORD PTR [esp+0x1c]
10001f82:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10001f86:	3d 00 10 00 00       	cmp    eax,0x1000
10001f8b:	d9 6c 24 28          	fldcw  WORD PTR [esp+0x28]
10001f8f:	73 3f                	jae    0x10001fd0
10001f91:	8b c8                	mov    ecx,eax
10001f93:	2b c8                	sub    ecx,eax
10001f95:	81 c1 10 10 01 10    	add    ecx,0x10011010
10001f9b:	eb 03                	jmp    0x10001fa0
10001f9d:	8d 49 00             	lea    ecx,[ecx+0x0]
10001fa0:	8a 11                	mov    dl,BYTE PTR [ecx]
10001fa2:	88 90 10 10 01 10    	mov    BYTE PTR [eax+0x10011010],dl
10001fa8:	83 c0 01             	add    eax,0x1
10001fab:	83 c1 01             	add    ecx,0x1
10001fae:	3d 00 10 00 00       	cmp    eax,0x1000
10001fb3:	72 eb                	jb     0x10001fa0
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
10001fd0:	5d                   	pop    ebp
10001fd1:	5b                   	pop    ebx
10001fd2:	5f                   	pop    edi
10001fd3:	b8 01 00 00 00       	mov    eax,0x1
10001fd8:	5e                   	pop    esi
10001fd9:	83 c4 14             	add    esp,0x14
10001fdc:	c2 0c 00             	ret    0xc
10001fdf:	cc                   	int3   
10001fe0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001fe4:	d9 ee                	fldz   
10001fe6:	83 f8 13             	cmp    eax,0x13
10001fe9:	0f 87 28 01 00 00    	ja     0x10002117
10001fef:	ff 24 85 1c 21 00 10 	jmp    DWORD PTR [eax*4+0x1000211c]
10001ff6:	dd d8                	fstp   st(0)
10001ff8:	dd 05 38 60 01 10    	fld    QWORD PTR ds:0x10016038
10001ffe:	c2 04 00             	ret    0x4
10002001:	0f b6 05 40 60 01 10 	movzx  eax,BYTE PTR ds:0x10016040
10002008:	dd d8                	fstp   st(0)
1000200a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
1000200e:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002012:	c2 04 00             	ret    0x4
10002015:	0f b6 0d 41 60 01 10 	movzx  ecx,BYTE PTR ds:0x10016041
1000201c:	dd d8                	fstp   st(0)
1000201e:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
10002022:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002026:	c2 04 00             	ret    0x4
10002029:	0f b6 15 42 60 01 10 	movzx  edx,BYTE PTR ds:0x10016042
10002030:	dd d8                	fstp   st(0)
10002032:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
10002036:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
1000203a:	c2 04 00             	ret    0x4
1000203d:	0f b6 05 43 60 01 10 	movzx  eax,BYTE PTR ds:0x10016043
10002044:	dd d8                	fstp   st(0)
10002046:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
1000204a:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
1000204e:	c2 04 00             	ret    0x4
10002051:	dd d8                	fstp   st(0)
10002053:	dd 05 00 60 01 10    	fld    QWORD PTR ds:0x10016000
10002059:	c2 04 00             	ret    0x4
1000205c:	0f b6 0d 08 60 01 10 	movzx  ecx,BYTE PTR ds:0x10016008
10002063:	dd d8                	fstp   st(0)
10002065:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
10002069:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
1000206d:	c2 04 00             	ret    0x4
10002070:	0f b6 15 09 60 01 10 	movzx  edx,BYTE PTR ds:0x10016009
10002077:	dd d8                	fstp   st(0)
10002079:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
1000207d:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002081:	c2 04 00             	ret    0x4
10002084:	0f b6 05 0a 60 01 10 	movzx  eax,BYTE PTR ds:0x1001600a
1000208b:	dd d8                	fstp   st(0)
1000208d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
10002091:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002095:	c2 04 00             	ret    0x4
10002098:	0f b6 0d 0b 60 01 10 	movzx  ecx,BYTE PTR ds:0x1001600b
1000209f:	dd d8                	fstp   st(0)
100020a1:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
100020a5:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
100020a9:	c2 04 00             	ret    0x4
100020ac:	dd d8                	fstp   st(0)
100020ae:	dd 05 50 60 01 10    	fld    QWORD PTR ds:0x10016050
100020b4:	c2 04 00             	ret    0x4
100020b7:	dd d8                	fstp   st(0)
100020b9:	dd 05 48 60 01 10    	fld    QWORD PTR ds:0x10016048
100020bf:	c2 04 00             	ret    0x4
100020c2:	dd d8                	fstp   st(0)
100020c4:	dd 05 58 60 01 10    	fld    QWORD PTR ds:0x10016058
100020ca:	c2 04 00             	ret    0x4
100020cd:	dd d8                	fstp   st(0)
100020cf:	dd 05 60 60 01 10    	fld    QWORD PTR ds:0x10016060
100020d5:	c2 04 00             	ret    0x4
100020d8:	dd d8                	fstp   st(0)
100020da:	dd 05 68 60 01 10    	fld    QWORD PTR ds:0x10016068
100020e0:	c2 04 00             	ret    0x4
100020e3:	dd d8                	fstp   st(0)
100020e5:	dd 05 18 60 01 10    	fld    QWORD PTR ds:0x10016018
100020eb:	c2 04 00             	ret    0x4
100020ee:	dd d8                	fstp   st(0)
100020f0:	dd 05 10 60 01 10    	fld    QWORD PTR ds:0x10016010
100020f6:	c2 04 00             	ret    0x4
100020f9:	dd d8                	fstp   st(0)
100020fb:	dd 05 20 60 01 10    	fld    QWORD PTR ds:0x10016020
10002101:	c2 04 00             	ret    0x4
10002104:	dd d8                	fstp   st(0)
10002106:	dd 05 28 60 01 10    	fld    QWORD PTR ds:0x10016028
1000210c:	c2 04 00             	ret    0x4
1000210f:	dd d8                	fstp   st(0)
10002111:	dd 05 30 60 01 10    	fld    QWORD PTR ds:0x10016030
10002117:	c2 04 00             	ret    0x4
1000211a:	8b ff                	mov    edi,edi
1000211c:	f6 1f                	neg    BYTE PTR [edi]
1000211e:	00 10                	add    BYTE PTR [eax],dl
10002120:	01 20                	add    DWORD PTR [eax],esp
10002122:	00 10                	add    BYTE PTR [eax],dl
10002124:	15 20 00 10 29       	adc    eax,0x29100020
10002129:	20 00                	and    BYTE PTR [eax],al
1000212b:	10 3d 20 00 10 51    	adc    BYTE PTR ds:0x51100020,bh
10002131:	20 00                	and    BYTE PTR [eax],al
10002133:	10 5c 20 00          	adc    BYTE PTR [eax+eiz*1+0x0],bl
10002137:	10 70 20             	adc    BYTE PTR [eax+0x20],dh
1000213a:	00 10                	add    BYTE PTR [eax],dl
1000213c:	84 20                	test   BYTE PTR [eax],ah
1000213e:	00 10                	add    BYTE PTR [eax],dl
10002140:	98                   	cwde   
10002141:	20 00                	and    BYTE PTR [eax],al
10002143:	10 ac 20 00 10 b7 20 	adc    BYTE PTR [eax+eiz*1+0x20b71000],ch
1000214a:	00 10                	add    BYTE PTR [eax],dl
1000214c:	c2 20 00             	ret    0x20
1000214f:	10 cd                	adc    ch,cl
10002151:	20 00                	and    BYTE PTR [eax],al
10002153:	10 d8                	adc    al,bl
10002155:	20 00                	and    BYTE PTR [eax],al
10002157:	10 e3                	adc    bl,ah
10002159:	20 00                	and    BYTE PTR [eax],al
1000215b:	10 ee                	adc    dh,ch
1000215d:	20 00                	and    BYTE PTR [eax],al
1000215f:	10 f9                	adc    cl,bh
10002161:	20 00                	and    BYTE PTR [eax],al
10002163:	10 04 21             	adc    BYTE PTR [ecx+eiz*1],al
10002166:	00 10                	add    BYTE PTR [eax],dl
10002168:	0f 21 00             	mov    eax,db0
1000216b:	10 cc                	adc    ah,cl
1000216d:	cc                   	int3   
1000216e:	cc                   	int3   
1000216f:	cc                   	int3   
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
100033d0:	83 ec 0c             	sub    esp,0xc
100033d3:	33 c0                	xor    eax,eax
100033d5:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
100033dc:	74 49                	je     0x10003427
100033de:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
100033e2:	50                   	push   eax
100033e3:	8d 54 24 14          	lea    edx,[esp+0x14]
100033e7:	52                   	push   edx
100033e8:	66 89 44 24 0e       	mov    WORD PTR [esp+0xe],ax
100033ed:	66 89 44 24 10       	mov    WORD PTR [esp+0x10],ax
100033f2:	6a 01                	push   0x1
100033f4:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
100033f8:	88 4c 24 11          	mov    BYTE PTR [esp+0x11],cl
100033fc:	8d 44 24 0f          	lea    eax,[esp+0xf]
10003400:	50                   	push   eax
10003401:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003406:	66 c7 44 24 1a 01 00 	mov    WORD PTR [esp+0x1a],0x1
1000340d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10003411:	51                   	push   ecx
10003412:	c6 44 24 18 80       	mov    BYTE PTR [esp+0x18],0x80
10003417:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1000341b:	52                   	push   edx
1000341c:	50                   	push   eax
1000341d:	e8 fa 03 00 00       	call   0x1000381c
10003422:	0f b6 44 24 03       	movzx  eax,BYTE PTR [esp+0x3]
10003427:	83 c4 0c             	add    esp,0xc
1000342a:	c2 04 00             	ret    0x4
1000342d:	cc                   	int3   
1000342e:	cc                   	int3   
1000342f:	cc                   	int3   
10003430:	83 ec 0c             	sub    esp,0xc
10003433:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
1000343a:	75 08                	jne    0x10003444
1000343c:	32 c0                	xor    al,al
1000343e:	83 c4 0c             	add    esp,0xc
10003441:	c2 0c 00             	ret    0xc
10003444:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
10003448:	66 8b 54 24 14       	mov    dx,WORD PTR [esp+0x14]
1000344d:	33 c0                	xor    eax,eax
1000344f:	50                   	push   eax
10003450:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
10003455:	88 44 24 07          	mov    BYTE PTR [esp+0x7],al
10003459:	8d 44 24 14          	lea    eax,[esp+0x14]
1000345d:	50                   	push   eax
1000345e:	88 4c 24 0d          	mov    BYTE PTR [esp+0xd],cl
10003462:	6a 01                	push   0x1
10003464:	66 89 54 24 12       	mov    WORD PTR [esp+0x12],dx
10003469:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
1000346d:	51                   	push   ecx
1000346e:	8b 0d 10 52 01 10    	mov    ecx,DWORD PTR ds:0x10015210
10003474:	66 c7 44 24 1a 01 00 	mov    WORD PTR [esp+0x1a],0x1
1000347b:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1000347f:	52                   	push   edx
10003480:	c6 44 24 18 80       	mov    BYTE PTR [esp+0x18],0x80
10003485:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10003489:	50                   	push   eax
1000348a:	51                   	push   ecx
1000348b:	e8 8c 03 00 00       	call   0x1000381c
10003490:	8a 44 24 03          	mov    al,BYTE PTR [esp+0x3]
10003494:	83 c4 0c             	add    esp,0xc
10003497:	c2 0c 00             	ret    0xc
1000349a:	cc                   	int3   
1000349b:	cc                   	int3   
1000349c:	cc                   	int3   
1000349d:	cc                   	int3   
1000349e:	cc                   	int3   
1000349f:	cc                   	int3   
100034a0:	83 c8 ff             	or     eax,0xffffffff
100034a3:	39 05 00 00 01 10    	cmp    DWORD PTR ds:0x10010000,eax
100034a9:	74 42                	je     0x100034ed
100034ab:	53                   	push   ebx
100034ac:	8b 1d 10 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d010
100034b2:	56                   	push   esi
100034b3:	57                   	push   edi
100034b4:	8b 3d 0c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d00c
100034ba:	be 10 30 01 10       	mov    esi,0x10013010
100034bf:	90                   	nop
100034c0:	8b 06                	mov    eax,DWORD PTR [esi]
100034c2:	85 c0                	test   eax,eax
100034c4:	74 0b                	je     0x100034d1
100034c6:	50                   	push   eax
100034c7:	ff d7                	call   edi
100034c9:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
100034cf:	eb 0c                	jmp    0x100034dd
100034d1:	6a 00                	push   0x0
100034d3:	6a 00                	push   0x0
100034d5:	6a 00                	push   0x0
100034d7:	6a 00                	push   0x0
100034d9:	ff d3                	call   ebx
100034db:	89 06                	mov    DWORD PTR [esi],eax
100034dd:	83 c6 04             	add    esi,0x4
100034e0:	81 fe 10 32 01 10    	cmp    esi,0x10013210
100034e6:	7c d8                	jl     0x100034c0
100034e8:	5f                   	pop    edi
100034e9:	5e                   	pop    esi
100034ea:	33 c0                	xor    eax,eax
100034ec:	5b                   	pop    ebx
100034ed:	c3                   	ret    
100034ee:	cc                   	int3   
100034ef:	cc                   	int3   
100034f0:	83 3d 9c 60 01 10 00 	cmp    DWORD PTR ds:0x1001609c,0x0
100034f7:	75 05                	jne    0x100034fe
100034f9:	33 c0                	xor    eax,eax
100034fb:	c2 04 00             	ret    0x4
100034fe:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
10003505:	75 06                	jne    0x1000350d
10003507:	83 c8 ff             	or     eax,0xffffffff
1000350a:	c2 04 00             	ret    0x4
1000350d:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003511:	8b 0d 0c 60 01 10    	mov    ecx,DWORD PTR ds:0x1001600c
10003517:	50                   	push   eax
10003518:	6a 00                	push   0x0
1000351a:	68 10 30 01 10       	push   0x10013010
1000351f:	51                   	push   ecx
10003520:	ff 15 14 d0 00 10    	call   DWORD PTR ds:0x1000d014
10003526:	83 f8 ff             	cmp    eax,0xffffffff
10003529:	74 dc                	je     0x10003507
1000352b:	3d 02 01 00 00       	cmp    eax,0x102
10003530:	75 05                	jne    0x10003537
10003532:	b8 55 05 00 00       	mov    eax,0x555
10003537:	c2 04 00             	ret    0x4
1000353a:	cc                   	int3   
1000353b:	cc                   	int3   
1000353c:	cc                   	int3   
1000353d:	cc                   	int3   
1000353e:	cc                   	int3   
1000353f:	cc                   	int3   
10003540:	83 ec 24             	sub    esp,0x24
10003543:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10003548:	33 c4                	xor    eax,esp
1000354a:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
1000354e:	57                   	push   edi
1000354f:	6a 12                	push   0x12
10003551:	6a 00                	push   0x0
10003553:	6a 00                	push   0x0
10003555:	68 70 d1 00 10       	push   0x1000d170
1000355a:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
10003561:	00 
10003562:	ff 15 0c d1 00 10    	call   DWORD PTR ds:0x1000d10c
10003568:	8b f8                	mov    edi,eax
1000356a:	83 ff ff             	cmp    edi,0xffffffff
1000356d:	0f 84 a7 00 00 00    	je     0x1000361a
10003573:	53                   	push   ebx
10003574:	55                   	push   ebp
10003575:	8b 2d 08 d1 00 10    	mov    ebp,DWORD PTR ds:0x1000d108
1000357b:	56                   	push   esi
1000357c:	c7 44 24 14 1c 00 00 	mov    DWORD PTR [esp+0x14],0x1c
10003583:	00 
10003584:	8d 44 24 14          	lea    eax,[esp+0x14]
10003588:	50                   	push   eax
10003589:	6a 00                	push   0x0
1000358b:	68 70 d1 00 10       	push   0x1000d170
10003590:	6a 00                	push   0x0
10003592:	57                   	push   edi
10003593:	ff 15 10 d1 00 10    	call   DWORD PTR ds:0x1000d110
10003599:	85 c0                	test   eax,eax
1000359b:	74 4a                	je     0x100035e7
1000359d:	6a 00                	push   0x0
1000359f:	8d 4c 24 14          	lea    ecx,[esp+0x14]
100035a3:	51                   	push   ecx
100035a4:	6a 00                	push   0x0
100035a6:	6a 00                	push   0x0
100035a8:	8d 54 24 24          	lea    edx,[esp+0x24]
100035ac:	52                   	push   edx
100035ad:	57                   	push   edi
100035ae:	ff d5                	call   ebp
100035b0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100035b4:	50                   	push   eax
100035b5:	8b d8                	mov    ebx,eax
100035b7:	e8 9c 04 00 00       	call   0x10003a58
100035bc:	83 c4 04             	add    esp,0x4
100035bf:	6a 00                	push   0x0
100035c1:	8b f0                	mov    esi,eax
100035c3:	8d 44 24 14          	lea    eax,[esp+0x14]
100035c7:	50                   	push   eax
100035c8:	53                   	push   ebx
100035c9:	56                   	push   esi
100035ca:	8d 4c 24 24          	lea    ecx,[esp+0x24]
100035ce:	51                   	push   ecx
100035cf:	57                   	push   edi
100035d0:	c7 06 05 00 00 00    	mov    DWORD PTR [esi],0x5
100035d6:	ff d5                	call   ebp
100035d8:	85 c0                	test   eax,eax
100035da:	75 13                	jne    0x100035ef
100035dc:	56                   	push   esi
100035dd:	e8 99 03 00 00       	call   0x1000397b
100035e2:	83 c4 04             	add    esp,0x4
100035e5:	eb 9d                	jmp    0x10003584
100035e7:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100035ed:	eb 21                	jmp    0x10003610
100035ef:	6a 00                	push   0x0
100035f1:	68 00 00 00 40       	push   0x40000000
100035f6:	6a 03                	push   0x3
100035f8:	6a 00                	push   0x0
100035fa:	6a 00                	push   0x0
100035fc:	68 00 00 00 c0       	push   0xc0000000
10003601:	83 c6 04             	add    esi,0x4
10003604:	56                   	push   esi
10003605:	ff 15 18 d0 00 10    	call   DWORD PTR ds:0x1000d018
1000360b:	a3 00 00 01 10       	mov    ds:0x10010000,eax
10003610:	57                   	push   edi
10003611:	ff 15 04 d1 00 10    	call   DWORD PTR ds:0x1000d104
10003617:	5e                   	pop    esi
10003618:	5d                   	pop    ebp
10003619:	5b                   	pop    ebx
1000361a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
1000361e:	a1 00 00 01 10       	mov    eax,ds:0x10010000
10003623:	5f                   	pop    edi
10003624:	33 cc                	xor    ecx,esp
10003626:	e8 f0 04 00 00       	call   0x10003b1b
1000362b:	83 c4 24             	add    esp,0x24
1000362e:	c3                   	ret    
1000362f:	cc                   	int3   
10003630:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003635:	85 c0                	test   eax,eax
10003637:	74 27                	je     0x10003660
10003639:	83 f8 ff             	cmp    eax,0xffffffff
1000363c:	74 22                	je     0x10003660
1000363e:	0f b6 0d 04 10 01 10 	movzx  ecx,BYTE PTR ds:0x10011004
10003645:	51                   	push   ecx
10003646:	50                   	push   eax
10003647:	e8 dc 01 00 00       	call   0x10003828
1000364c:	0f b6 15 04 10 01 10 	movzx  edx,BYTE PTR ds:0x10011004
10003653:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003658:	52                   	push   edx
10003659:	50                   	push   eax
1000365a:	e8 c3 01 00 00       	call   0x10003822
1000365f:	c3                   	ret    
10003660:	33 c0                	xor    eax,eax
10003662:	c3                   	ret    
10003663:	cc                   	int3   
10003664:	cc                   	int3   
10003665:	cc                   	int3   
10003666:	cc                   	int3   
10003667:	cc                   	int3   
10003668:	cc                   	int3   
10003669:	cc                   	int3   
1000366a:	cc                   	int3   
1000366b:	cc                   	int3   
1000366c:	cc                   	int3   
1000366d:	cc                   	int3   
1000366e:	cc                   	int3   
1000366f:	cc                   	int3   
10003670:	8b 0d 00 00 01 10    	mov    ecx,DWORD PTR ds:0x10010000
10003676:	83 ec 18             	sub    esp,0x18
10003679:	8d 44 24 04          	lea    eax,[esp+0x4]
1000367d:	50                   	push   eax
1000367e:	51                   	push   ecx
1000367f:	e8 bc 01 00 00       	call   0x10003840
10003684:	85 c0                	test   eax,eax
10003686:	0f 84 b4 00 00 00    	je     0x10003740
1000368c:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003690:	8d 54 24 03          	lea    edx,[esp+0x3]
10003694:	52                   	push   edx
10003695:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
10003699:	51                   	push   ecx
1000369a:	6a 01                	push   0x1
1000369c:	50                   	push   eax
1000369d:	a3 10 52 01 10       	mov    ds:0x10015210,eax
100036a2:	c7 44 24 18 01 00 00 	mov    DWORD PTR [esp+0x18],0x1
100036a9:	00 
100036aa:	e8 8b 01 00 00       	call   0x1000383a
100036af:	85 c0                	test   eax,eax
100036b1:	0f 84 89 00 00 00    	je     0x10003740
100036b7:	8b 0d 10 52 01 10    	mov    ecx,DWORD PTR ds:0x10015210
100036bd:	8a 54 24 03          	mov    dl,BYTE PTR [esp+0x3]
100036c1:	8d 44 24 0c          	lea    eax,[esp+0xc]
100036c5:	50                   	push   eax
100036c6:	6a 00                	push   0x0
100036c8:	51                   	push   ecx
100036c9:	88 15 14 52 01 10    	mov    BYTE PTR ds:0x10015214,dl
100036cf:	e8 60 01 00 00       	call   0x10003834
100036d4:	85 c0                	test   eax,eax
100036d6:	74 68                	je     0x10003740
100036d8:	56                   	push   esi
100036d9:	33 f6                	xor    esi,esi
100036db:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
100036e0:	76 5d                	jbe    0x1000373f
100036e2:	8b 15 10 52 01 10    	mov    edx,DWORD PTR ds:0x10015210
100036e8:	68 00 10 01 10       	push   0x10011000
100036ed:	56                   	push   esi
100036ee:	6a 00                	push   0x0
100036f0:	52                   	push   edx
100036f1:	e8 38 01 00 00       	call   0x1000382e
100036f6:	8b 0d 00 10 01 10    	mov    ecx,DWORD PTR ds:0x10011000
100036fc:	83 f9 02             	cmp    ecx,0x2
100036ff:	75 1a                	jne    0x1000371b
10003701:	8a 0d 04 10 01 10    	mov    cl,BYTE PTR ds:0x10011004
10003707:	84 c9                	test   cl,cl
10003709:	79 08                	jns    0x10003713
1000370b:	88 0d 15 52 01 10    	mov    BYTE PTR ds:0x10015215,cl
10003711:	eb 19                	jmp    0x1000372c
10003713:	88 0d 16 52 01 10    	mov    BYTE PTR ds:0x10015216,cl
10003719:	eb 11                	jmp    0x1000372c
1000371b:	83 f9 03             	cmp    ecx,0x3
1000371e:	75 1d                	jne    0x1000373d
10003720:	8a 0d 04 10 01 10    	mov    cl,BYTE PTR ds:0x10011004
10003726:	88 0d 17 52 01 10    	mov    BYTE PTR ds:0x10015217,cl
1000372c:	0f b6 54 24 14       	movzx  edx,BYTE PTR [esp+0x14]
10003731:	83 c6 01             	add    esi,0x1
10003734:	3b f2                	cmp    esi,edx
10003736:	7c aa                	jl     0x100036e2
10003738:	5e                   	pop    esi
10003739:	83 c4 18             	add    esp,0x18
1000373c:	c3                   	ret    
1000373d:	33 c0                	xor    eax,eax
1000373f:	5e                   	pop    esi
10003740:	83 c4 18             	add    esp,0x18
10003743:	c3                   	ret    
10003744:	cc                   	int3   
10003745:	cc                   	int3   
10003746:	cc                   	int3   
10003747:	cc                   	int3   
10003748:	cc                   	int3   
10003749:	cc                   	int3   
1000374a:	cc                   	int3   
1000374b:	cc                   	int3   
1000374c:	cc                   	int3   
1000374d:	cc                   	int3   
1000374e:	cc                   	int3   
1000374f:	cc                   	int3   
10003750:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003755:	85 c0                	test   eax,eax
10003757:	74 06                	je     0x1000375f
10003759:	50                   	push   eax
1000375a:	e8 e7 00 00 00       	call   0x10003846
1000375f:	b8 01 00 00 00       	mov    eax,0x1
10003764:	c7 05 10 52 01 10 ff 	mov    DWORD PTR ds:0x10015210,0xffffffff
1000376b:	ff ff ff 
1000376e:	c3                   	ret    
1000376f:	cc                   	int3   
10003770:	e8 cb fd ff ff       	call   0x10003540
10003775:	83 f8 ff             	cmp    eax,0xffffffff
10003778:	a3 00 00 01 10       	mov    ds:0x10010000,eax
1000377d:	74 1f                	je     0x1000379e
1000377f:	e8 ec fe ff ff       	call   0x10003670
10003784:	85 c0                	test   eax,eax
10003786:	75 1a                	jne    0x100037a2
10003788:	a1 00 00 01 10       	mov    eax,ds:0x10010000
1000378d:	50                   	push   eax
1000378e:	ff 15 0c d0 00 10    	call   DWORD PTR ds:0x1000d00c
10003794:	c7 05 00 00 01 10 ff 	mov    DWORD PTR ds:0x10010000,0xffffffff
1000379b:	ff ff ff 
1000379e:	83 c8 ff             	or     eax,0xffffffff
100037a1:	c3                   	ret    
100037a2:	e8 f9 fc ff ff       	call   0x100034a0
100037a7:	85 c0                	test   eax,eax
100037a9:	75 f3                	jne    0x1000379e
100037ab:	a3 20 52 01 10       	mov    ds:0x10015220,eax
100037b0:	a3 24 52 01 10       	mov    ds:0x10015224,eax
100037b5:	c3                   	ret    
100037b6:	cc                   	int3   
100037b7:	cc                   	int3   
100037b8:	cc                   	int3   
100037b9:	cc                   	int3   
100037ba:	cc                   	int3   
100037bb:	cc                   	int3   
100037bc:	cc                   	int3   
100037bd:	cc                   	int3   
100037be:	cc                   	int3   
100037bf:	cc                   	int3   
100037c0:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
100037c7:	75 04                	jne    0x100037cd
100037c9:	83 c8 ff             	or     eax,0xffffffff
100037cc:	c3                   	ret    
100037cd:	56                   	push   esi
100037ce:	57                   	push   edi
100037cf:	8b 3d 0c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d00c
100037d5:	be 10 30 01 10       	mov    esi,0x10013010
100037da:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
100037e0:	8b 06                	mov    eax,DWORD PTR [esi]
100037e2:	85 c0                	test   eax,eax
100037e4:	74 09                	je     0x100037ef
100037e6:	50                   	push   eax
100037e7:	ff d7                	call   edi
100037e9:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
100037ef:	83 c6 04             	add    esi,0x4
100037f2:	81 fe 10 34 01 10    	cmp    esi,0x10013410
100037f8:	7c e6                	jl     0x100037e0
100037fa:	a1 00 00 01 10       	mov    eax,ds:0x10010000
100037ff:	50                   	push   eax
10003800:	ff d7                	call   edi
10003802:	c7 05 00 00 01 10 ff 	mov    DWORD PTR ds:0x10010000,0xffffffff
10003809:	ff ff ff 
1000380c:	e8 3f ff ff ff       	call   0x10003750
10003811:	5f                   	pop    edi
10003812:	33 c0                	xor    eax,eax
10003814:	5e                   	pop    esi
10003815:	c3                   	ret    
10003816:	ff 25 28 d1 00 10    	jmp    DWORD PTR ds:0x1000d128
1000381c:	ff 25 24 d1 00 10    	jmp    DWORD PTR ds:0x1000d124
10003822:	ff 25 38 d1 00 10    	jmp    DWORD PTR ds:0x1000d138
10003828:	ff 25 1c d1 00 10    	jmp    DWORD PTR ds:0x1000d11c
1000382e:	ff 25 18 d1 00 10    	jmp    DWORD PTR ds:0x1000d118
10003834:	ff 25 20 d1 00 10    	jmp    DWORD PTR ds:0x1000d120
1000383a:	ff 25 2c d1 00 10    	jmp    DWORD PTR ds:0x1000d12c
10003840:	ff 25 30 d1 00 10    	jmp    DWORD PTR ds:0x1000d130
10003846:	ff 25 34 d1 00 10    	jmp    DWORD PTR ds:0x1000d134
1000384c:	c3                   	ret    
1000384d:	b8 29 49 00 10       	mov    eax,0x10004929
10003852:	a3 18 00 01 10       	mov    ds:0x10010018,eax
10003857:	c7 05 1c 00 01 10 25 	mov    DWORD PTR ds:0x1001001c,0x10004025
1000385e:	40 00 10 
10003861:	c7 05 20 00 01 10 e3 	mov    DWORD PTR ds:0x10010020,0x10003fe3
10003868:	3f 00 10 
1000386b:	c7 05 24 00 01 10 17 	mov    DWORD PTR ds:0x10010024,0x10004017
10003872:	40 00 10 
10003875:	c7 05 28 00 01 10 8d 	mov    DWORD PTR ds:0x10010028,0x10003f8d
1000387c:	3f 00 10 
1000387f:	a3 2c 00 01 10       	mov    ds:0x1001002c,eax
10003884:	c7 05 30 00 01 10 a3 	mov    DWORD PTR ds:0x10010030,0x100048a3
1000388b:	48 00 10 
1000388e:	c7 05 34 00 01 10 a3 	mov    DWORD PTR ds:0x10010034,0x10003fa3
10003895:	3f 00 10 
10003898:	c7 05 38 00 01 10 0d 	mov    DWORD PTR ds:0x10010038,0x10003f0d
1000389f:	3f 00 10 
100038a2:	c7 05 3c 00 01 10 9c 	mov    DWORD PTR ds:0x1001003c,0x10003e9c
100038a9:	3e 00 10 
100038ac:	c3                   	ret    
100038ad:	e8 9b ff ff ff       	call   0x1000384d
100038b2:	e8 17 11 00 00       	call   0x100049ce
100038b7:	83 7c 24 04 00       	cmp    DWORD PTR [esp+0x4],0x0
100038bc:	a3 34 52 01 10       	mov    ds:0x10015234,eax
100038c1:	74 05                	je     0x100038c8
100038c3:	e8 a1 10 00 00       	call   0x10004969
100038c8:	db e2                	fnclex 
100038ca:	c3                   	ret    
100038cb:	cc                   	int3   
100038cc:	cc                   	int3   
100038cd:	cc                   	int3   
100038ce:	cc                   	int3   
100038cf:	cc                   	int3   
100038d0:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
100038d7:	74 2d                	je     0x10003906
100038d9:	55                   	push   ebp
100038da:	8b ec                	mov    ebp,esp
100038dc:	83 ec 08             	sub    esp,0x8
100038df:	83 e4 f8             	and    esp,0xfffffff8
100038e2:	dd 1c 24             	fstp   QWORD PTR [esp]
100038e5:	f2 0f 2c 04 24       	cvttsd2si eax,QWORD PTR [esp]
100038ea:	c9                   	leave  
100038eb:	c3                   	ret    
100038ec:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
100038f3:	74 11                	je     0x10003906
100038f5:	83 ec 04             	sub    esp,0x4
100038f8:	d9 3c 24             	fnstcw WORD PTR [esp]
100038fb:	58                   	pop    eax
100038fc:	66 83 e0 7f          	and    ax,0x7f
10003900:	66 83 f8 7f          	cmp    ax,0x7f
10003904:	74 d3                	je     0x100038d9
10003906:	55                   	push   ebp
10003907:	8b ec                	mov    ebp,esp
10003909:	83 ec 20             	sub    esp,0x20
1000390c:	83 e4 f0             	and    esp,0xfffffff0
1000390f:	d9 c0                	fld    st(0)
10003911:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
10003915:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
10003919:	df 6c 24 10          	fild   QWORD PTR [esp+0x10]
1000391d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
10003921:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10003925:	85 c0                	test   eax,eax
10003927:	74 3c                	je     0x10003965
10003929:	de e9                	fsubrp st(1),st
1000392b:	85 d2                	test   edx,edx
1000392d:	79 1e                	jns    0x1000394d
1000392f:	d9 1c 24             	fstp   DWORD PTR [esp]
10003932:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
10003935:	81 f1 00 00 00 80    	xor    ecx,0x80000000
1000393b:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
10003941:	83 d0 00             	adc    eax,0x0
10003944:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003948:	83 d2 00             	adc    edx,0x0
1000394b:	eb 2c                	jmp    0x10003979
1000394d:	d9 1c 24             	fstp   DWORD PTR [esp]
10003950:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
10003953:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
10003959:	83 d8 00             	sbb    eax,0x0
1000395c:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003960:	83 da 00             	sbb    edx,0x0
10003963:	eb 14                	jmp    0x10003979
10003965:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003969:	f7 c2 ff ff ff 7f    	test   edx,0x7fffffff
1000396f:	75 b8                	jne    0x10003929
10003971:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
10003975:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
10003979:	c9                   	leave  
1000397a:	c3                   	ret    
1000397b:	6a 0c                	push   0xc
1000397d:	68 c0 e3 00 10       	push   0x1000e3c0
10003982:	e8 a1 1e 00 00       	call   0x10005828
10003987:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000398a:	85 f6                	test   esi,esi
1000398c:	74 75                	je     0x10003a03
1000398e:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
10003995:	75 43                	jne    0x100039da
10003997:	6a 04                	push   0x4
10003999:	e8 5a 13 00 00       	call   0x10004cf8
1000399e:	59                   	pop    ecx
1000399f:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
100039a3:	56                   	push   esi
100039a4:	e8 c8 13 00 00       	call   0x10004d71
100039a9:	59                   	pop    ecx
100039aa:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100039ad:	85 c0                	test   eax,eax
100039af:	74 09                	je     0x100039ba
100039b1:	56                   	push   esi
100039b2:	50                   	push   eax
100039b3:	e8 e4 13 00 00       	call   0x10004d9c
100039b8:	59                   	pop    ecx
100039b9:	59                   	pop    ecx
100039ba:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
100039c1:	e8 0b 00 00 00       	call   0x100039d1
100039c6:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
100039ca:	75 37                	jne    0x10003a03
100039cc:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100039cf:	eb 0a                	jmp    0x100039db
100039d1:	6a 04                	push   0x4
100039d3:	e8 48 12 00 00       	call   0x10004c20
100039d8:	59                   	pop    ecx
100039d9:	c3                   	ret    
100039da:	56                   	push   esi
100039db:	6a 00                	push   0x0
100039dd:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
100039e3:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
100039e9:	85 c0                	test   eax,eax
100039eb:	75 16                	jne    0x10003a03
100039ed:	e8 54 10 00 00       	call   0x10004a46
100039f2:	8b f0                	mov    esi,eax
100039f4:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100039fa:	50                   	push   eax
100039fb:	e8 0b 10 00 00       	call   0x10004a0b
10003a00:	89 06                	mov    DWORD PTR [esi],eax
10003a02:	59                   	pop    ecx
10003a03:	e8 65 1e 00 00       	call   0x1000586d
10003a08:	c3                   	ret    
10003a09:	6a 0c                	push   0xc
10003a0b:	68 e0 e3 00 10       	push   0x1000e3e0
10003a10:	e8 13 1e 00 00       	call   0x10005828
10003a15:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
10003a19:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10003a1c:	3b 35 e0 5d 01 10    	cmp    esi,DWORD PTR ds:0x10015de0
10003a22:	77 22                	ja     0x10003a46
10003a24:	6a 04                	push   0x4
10003a26:	e8 cd 12 00 00       	call   0x10004cf8
10003a2b:	59                   	pop    ecx
10003a2c:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10003a30:	56                   	push   esi
10003a31:	e8 0f 1b 00 00       	call   0x10005545
10003a36:	59                   	pop    ecx
10003a37:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003a3a:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003a41:	e8 09 00 00 00       	call   0x10003a4f
10003a46:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10003a49:	e8 1f 1e 00 00       	call   0x1000586d
10003a4e:	c3                   	ret    
10003a4f:	6a 04                	push   0x4
10003a51:	e8 ca 11 00 00       	call   0x10004c20
10003a56:	59                   	pop    ecx
10003a57:	c3                   	ret    
10003a58:	55                   	push   ebp
10003a59:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
10003a5d:	83 fd e0             	cmp    ebp,0xffffffe0
10003a60:	0f 87 9f 00 00 00    	ja     0x10003b05
10003a66:	53                   	push   ebx
10003a67:	8b 1d 38 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d038
10003a6d:	56                   	push   esi
10003a6e:	57                   	push   edi
10003a6f:	33 f6                	xor    esi,esi
10003a71:	39 35 4c 52 01 10    	cmp    DWORD PTR ds:0x1001524c,esi
10003a77:	8b fd                	mov    edi,ebp
10003a79:	75 18                	jne    0x10003a93
10003a7b:	e8 42 24 00 00       	call   0x10005ec2
10003a80:	6a 1e                	push   0x1e
10003a82:	e8 9b 22 00 00       	call   0x10005d22
10003a87:	68 ff 00 00 00       	push   0xff
10003a8c:	e8 df 1f 00 00       	call   0x10005a70
10003a91:	59                   	pop    ecx
10003a92:	59                   	pop    ecx
10003a93:	a1 f0 5d 01 10       	mov    eax,ds:0x10015df0
10003a98:	83 f8 01             	cmp    eax,0x1
10003a9b:	75 0e                	jne    0x10003aab
10003a9d:	3b ee                	cmp    ebp,esi
10003a9f:	74 04                	je     0x10003aa5
10003aa1:	8b c5                	mov    eax,ebp
10003aa3:	eb 03                	jmp    0x10003aa8
10003aa5:	33 c0                	xor    eax,eax
10003aa7:	40                   	inc    eax
10003aa8:	50                   	push   eax
10003aa9:	eb 1e                	jmp    0x10003ac9
10003aab:	83 f8 03             	cmp    eax,0x3
10003aae:	75 0b                	jne    0x10003abb
10003ab0:	55                   	push   ebp
10003ab1:	e8 53 ff ff ff       	call   0x10003a09
10003ab6:	3b c6                	cmp    eax,esi
10003ab8:	59                   	pop    ecx
10003ab9:	75 17                	jne    0x10003ad2
10003abb:	3b ee                	cmp    ebp,esi
10003abd:	75 03                	jne    0x10003ac2
10003abf:	33 ff                	xor    edi,edi
10003ac1:	47                   	inc    edi
10003ac2:	83 c7 0f             	add    edi,0xf
10003ac5:	83 e7 f0             	and    edi,0xfffffff0
10003ac8:	57                   	push   edi
10003ac9:	56                   	push   esi
10003aca:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10003ad0:	ff d3                	call   ebx
10003ad2:	8b f0                	mov    esi,eax
10003ad4:	85 f6                	test   esi,esi
10003ad6:	75 26                	jne    0x10003afe
10003ad8:	39 05 08 57 01 10    	cmp    DWORD PTR ds:0x10015708,eax
10003ade:	6a 0c                	push   0xc
10003ae0:	5f                   	pop    edi
10003ae1:	74 0d                	je     0x10003af0
10003ae3:	55                   	push   ebp
10003ae4:	e8 1c 24 00 00       	call   0x10005f05
10003ae9:	85 c0                	test   eax,eax
10003aeb:	59                   	pop    ecx
10003aec:	75 81                	jne    0x10003a6f
10003aee:	eb 07                	jmp    0x10003af7
10003af0:	e8 51 0f 00 00       	call   0x10004a46
10003af5:	89 38                	mov    DWORD PTR [eax],edi
10003af7:	e8 4a 0f 00 00       	call   0x10004a46
10003afc:	89 38                	mov    DWORD PTR [eax],edi
10003afe:	5f                   	pop    edi
10003aff:	8b c6                	mov    eax,esi
10003b01:	5e                   	pop    esi
10003b02:	5b                   	pop    ebx
10003b03:	5d                   	pop    ebp
10003b04:	c3                   	ret    
10003b05:	55                   	push   ebp
10003b06:	e8 fa 23 00 00       	call   0x10005f05
10003b0b:	59                   	pop    ecx
10003b0c:	e8 35 0f 00 00       	call   0x10004a46
10003b11:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
10003b17:	33 c0                	xor    eax,eax
10003b19:	5d                   	pop    ebp
10003b1a:	c3                   	ret    
10003b1b:	3b 0d 10 00 01 10    	cmp    ecx,DWORD PTR ds:0x10010010
10003b21:	75 02                	jne    0x10003b25
10003b23:	f3 c3                	repz ret 
10003b25:	e9 fd 23 00 00       	jmp    0x10005f27
10003b2a:	55                   	push   ebp
10003b2b:	8b ec                	mov    ebp,esp
10003b2d:	51                   	push   ecx
10003b2e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003b31:	83 f8 01             	cmp    eax,0x1
10003b34:	53                   	push   ebx
10003b35:	56                   	push   esi
10003b36:	57                   	push   edi
10003b37:	0f 85 17 01 00 00    	jne    0x10003c54
10003b3d:	8b 1d 48 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d048
10003b43:	bf 94 00 00 00       	mov    edi,0x94
10003b48:	57                   	push   edi
10003b49:	6a 00                	push   0x0
10003b4b:	ff d3                	call   ebx
10003b4d:	50                   	push   eax
10003b4e:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10003b54:	8b f0                	mov    esi,eax
10003b56:	85 f6                	test   esi,esi
10003b58:	75 07                	jne    0x10003b61
10003b5a:	33 c0                	xor    eax,eax
10003b5c:	e9 9b 01 00 00       	jmp    0x10003cfc
10003b61:	56                   	push   esi
10003b62:	89 3e                	mov    DWORD PTR [esi],edi
10003b64:	ff 15 44 d0 00 10    	call   DWORD PTR ds:0x1000d044
10003b6a:	85 c0                	test   eax,eax
10003b6c:	56                   	push   esi
10003b6d:	6a 00                	push   0x0
10003b6f:	75 0b                	jne    0x10003b7c
10003b71:	ff d3                	call   ebx
10003b73:	50                   	push   eax
10003b74:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10003b7a:	eb de                	jmp    0x10003b5a
10003b7c:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
10003b7f:	8b 7e 0c             	mov    edi,DWORD PTR [esi+0xc]
10003b82:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
10003b85:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
10003b88:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
10003b8b:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10003b8e:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10003b91:	81 e7 ff 7f 00 00    	and    edi,0x7fff
10003b97:	ff d3                	call   ebx
10003b99:	50                   	push   eax
10003b9a:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10003ba0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003ba3:	83 f8 02             	cmp    eax,0x2
10003ba6:	74 06                	je     0x10003bae
10003ba8:	81 cf 00 80 00 00    	or     edi,0x8000
10003bae:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10003bb1:	a3 a8 53 01 10       	mov    ds:0x100153a8,eax
10003bb6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10003bb9:	8b d0                	mov    edx,eax
10003bbb:	c1 e2 08             	shl    edx,0x8
10003bbe:	03 d1                	add    edx,ecx
10003bc0:	6a 01                	push   0x1
10003bc2:	89 15 b0 53 01 10    	mov    DWORD PTR ds:0x100153b0,edx
10003bc8:	a3 b4 53 01 10       	mov    ds:0x100153b4,eax
10003bcd:	89 0d b8 53 01 10    	mov    DWORD PTR ds:0x100153b8,ecx
10003bd3:	89 3d ac 53 01 10    	mov    DWORD PTR ds:0x100153ac,edi
10003bd9:	e8 d6 0e 00 00       	call   0x10004ab4
10003bde:	85 c0                	test   eax,eax
10003be0:	59                   	pop    ecx
10003be1:	0f 84 73 ff ff ff    	je     0x10003b5a
10003be7:	e8 e0 28 00 00       	call   0x100064cc
10003bec:	85 c0                	test   eax,eax
10003bee:	75 0a                	jne    0x10003bfa
10003bf0:	e8 19 0f 00 00       	call   0x10004b0e
10003bf5:	e9 60 ff ff ff       	jmp    0x10003b5a
10003bfa:	e8 25 32 00 00       	call   0x10006e24
10003bff:	ff 15 40 d0 00 10    	call   DWORD PTR ds:0x1000d040
10003c05:	a3 fc 5d 01 10       	mov    ds:0x10015dfc,eax
10003c0a:	e8 e0 30 00 00       	call   0x10006cef
10003c0f:	a3 3c 52 01 10       	mov    ds:0x1001523c,eax
10003c14:	e8 0a 2b 00 00       	call   0x10006723
10003c19:	85 c0                	test   eax,eax
10003c1b:	7d 07                	jge    0x10003c24
10003c1d:	e8 95 25 00 00       	call   0x100061b7
10003c22:	eb cc                	jmp    0x10003bf0
10003c24:	e8 0d 30 00 00       	call   0x10006c36
10003c29:	85 c0                	test   eax,eax
10003c2b:	7c 20                	jl     0x10003c4d
10003c2d:	e8 91 2d 00 00       	call   0x100069c3
10003c32:	85 c0                	test   eax,eax
10003c34:	7c 17                	jl     0x10003c4d
10003c36:	6a 00                	push   0x0
10003c38:	e8 05 1f 00 00       	call   0x10005b42
10003c3d:	85 c0                	test   eax,eax
10003c3f:	59                   	pop    ecx
10003c40:	75 0b                	jne    0x10003c4d
10003c42:	ff 05 38 52 01 10    	inc    DWORD PTR ds:0x10015238
10003c48:	e9 ac 00 00 00       	jmp    0x10003cf9
10003c4d:	e8 25 2d 00 00       	call   0x10006977
10003c52:	eb c9                	jmp    0x10003c1d
10003c54:	33 ff                	xor    edi,edi
10003c56:	3b c7                	cmp    eax,edi
10003c58:	75 35                	jne    0x10003c8f
10003c5a:	39 3d 38 52 01 10    	cmp    DWORD PTR ds:0x10015238,edi
10003c60:	0f 8e f4 fe ff ff    	jle    0x10003b5a
10003c66:	ff 0d 38 52 01 10    	dec    DWORD PTR ds:0x10015238
10003c6c:	39 3d e4 53 01 10    	cmp    DWORD PTR ds:0x100153e4,edi
10003c72:	75 05                	jne    0x10003c79
10003c74:	e8 4e 20 00 00       	call   0x10005cc7
10003c79:	39 7d 10             	cmp    DWORD PTR [ebp+0x10],edi
10003c7c:	75 7b                	jne    0x10003cf9
10003c7e:	e8 f4 2c 00 00       	call   0x10006977
10003c83:	e8 2f 25 00 00       	call   0x100061b7
10003c88:	e8 81 0e 00 00       	call   0x10004b0e
10003c8d:	eb 6a                	jmp    0x10003cf9
10003c8f:	83 f8 02             	cmp    eax,0x2
10003c92:	75 59                	jne    0x10003ced
10003c94:	e8 ec 24 00 00       	call   0x10006185
10003c99:	68 14 02 00 00       	push   0x214
10003c9e:	6a 01                	push   0x1
10003ca0:	e8 eb 29 00 00       	call   0x10006690
10003ca5:	8b f0                	mov    esi,eax
10003ca7:	3b f7                	cmp    esi,edi
10003ca9:	59                   	pop    ecx
10003caa:	59                   	pop    ecx
10003cab:	0f 84 a9 fe ff ff    	je     0x10003b5a
10003cb1:	56                   	push   esi
10003cb2:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
10003cb8:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
10003cbe:	e8 4b 24 00 00       	call   0x1000610e
10003cc3:	59                   	pop    ecx
10003cc4:	ff d0                	call   eax
10003cc6:	85 c0                	test   eax,eax
10003cc8:	74 17                	je     0x10003ce1
10003cca:	57                   	push   edi
10003ccb:	56                   	push   esi
10003ccc:	e8 23 25 00 00       	call   0x100061f4
10003cd1:	59                   	pop    ecx
10003cd2:	59                   	pop    ecx
10003cd3:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
10003cd9:	83 4e 04 ff          	or     DWORD PTR [esi+0x4],0xffffffff
10003cdd:	89 06                	mov    DWORD PTR [esi],eax
10003cdf:	eb 18                	jmp    0x10003cf9
10003ce1:	56                   	push   esi
10003ce2:	e8 94 fc ff ff       	call   0x1000397b
10003ce7:	59                   	pop    ecx
10003ce8:	e9 6d fe ff ff       	jmp    0x10003b5a
10003ced:	83 f8 03             	cmp    eax,0x3
10003cf0:	75 07                	jne    0x10003cf9
10003cf2:	57                   	push   edi
10003cf3:	e8 6b 27 00 00       	call   0x10006463
10003cf8:	59                   	pop    ecx
10003cf9:	33 c0                	xor    eax,eax
10003cfb:	40                   	inc    eax
10003cfc:	5f                   	pop    edi
10003cfd:	5e                   	pop    esi
10003cfe:	5b                   	pop    ebx
10003cff:	c9                   	leave  
10003d00:	c2 0c 00             	ret    0xc
10003d03:	6a 0c                	push   0xc
10003d05:	68 00 e4 00 10       	push   0x1000e400
10003d0a:	e8 19 1b 00 00       	call   0x10005828
10003d0f:	8b f9                	mov    edi,ecx
10003d11:	8b f2                	mov    esi,edx
10003d13:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10003d16:	33 c0                	xor    eax,eax
10003d18:	40                   	inc    eax
10003d19:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d1c:	85 f6                	test   esi,esi
10003d1e:	75 0c                	jne    0x10003d2c
10003d20:	39 15 38 52 01 10    	cmp    DWORD PTR ds:0x10015238,edx
10003d26:	0f 84 c5 00 00 00    	je     0x10003df1
10003d2c:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10003d30:	3b f0                	cmp    esi,eax
10003d32:	74 05                	je     0x10003d39
10003d34:	83 fe 02             	cmp    esi,0x2
10003d37:	75 2e                	jne    0x10003d67
10003d39:	a1 fc d1 00 10       	mov    eax,ds:0x1000d1fc
10003d3e:	85 c0                	test   eax,eax
10003d40:	74 08                	je     0x10003d4a
10003d42:	57                   	push   edi
10003d43:	56                   	push   esi
10003d44:	53                   	push   ebx
10003d45:	ff d0                	call   eax
10003d47:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d4a:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
10003d4e:	0f 84 96 00 00 00    	je     0x10003dea
10003d54:	57                   	push   edi
10003d55:	56                   	push   esi
10003d56:	53                   	push   ebx
10003d57:	e8 ce fd ff ff       	call   0x10003b2a
10003d5c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d5f:	85 c0                	test   eax,eax
10003d61:	0f 84 83 00 00 00    	je     0x10003dea
10003d67:	57                   	push   edi
10003d68:	56                   	push   esi
10003d69:	53                   	push   ebx
10003d6a:	e8 91 d2 ff ff       	call   0x10001000
10003d6f:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d72:	83 fe 01             	cmp    esi,0x1
10003d75:	75 24                	jne    0x10003d9b
10003d77:	85 c0                	test   eax,eax
10003d79:	75 20                	jne    0x10003d9b
10003d7b:	57                   	push   edi
10003d7c:	50                   	push   eax
10003d7d:	53                   	push   ebx
10003d7e:	e8 7d d2 ff ff       	call   0x10001000
10003d83:	57                   	push   edi
10003d84:	6a 00                	push   0x0
10003d86:	53                   	push   ebx
10003d87:	e8 9e fd ff ff       	call   0x10003b2a
10003d8c:	a1 fc d1 00 10       	mov    eax,ds:0x1000d1fc
10003d91:	85 c0                	test   eax,eax
10003d93:	74 06                	je     0x10003d9b
10003d95:	57                   	push   edi
10003d96:	6a 00                	push   0x0
10003d98:	53                   	push   ebx
10003d99:	ff d0                	call   eax
10003d9b:	85 f6                	test   esi,esi
10003d9d:	74 05                	je     0x10003da4
10003d9f:	83 fe 03             	cmp    esi,0x3
10003da2:	75 26                	jne    0x10003dca
10003da4:	57                   	push   edi
10003da5:	56                   	push   esi
10003da6:	53                   	push   ebx
10003da7:	e8 7e fd ff ff       	call   0x10003b2a
10003dac:	85 c0                	test   eax,eax
10003dae:	75 03                	jne    0x10003db3
10003db0:	21 45 e4             	and    DWORD PTR [ebp-0x1c],eax
10003db3:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
10003db7:	74 11                	je     0x10003dca
10003db9:	a1 fc d1 00 10       	mov    eax,ds:0x1000d1fc
10003dbe:	85 c0                	test   eax,eax
10003dc0:	74 08                	je     0x10003dca
10003dc2:	57                   	push   edi
10003dc3:	56                   	push   esi
10003dc4:	53                   	push   ebx
10003dc5:	ff d0                	call   eax
10003dc7:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003dca:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003dd1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10003dd4:	eb 1d                	jmp    0x10003df3
10003dd6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10003dd9:	8b 08                	mov    ecx,DWORD PTR [eax]
10003ddb:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003ddd:	50                   	push   eax
10003dde:	51                   	push   ecx
10003ddf:	e8 e6 31 00 00       	call   0x10006fca
10003de4:	59                   	pop    ecx
10003de5:	59                   	pop    ecx
10003de6:	c3                   	ret    
10003de7:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10003dea:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003df1:	33 c0                	xor    eax,eax
10003df3:	e8 75 1a 00 00       	call   0x1000586d
10003df8:	c3                   	ret    
10003df9:	83 7c 24 08 01       	cmp    DWORD PTR [esp+0x8],0x1
10003dfe:	75 05                	jne    0x10003e05
10003e00:	e8 e0 31 00 00       	call   0x10006fe5
10003e05:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10003e09:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10003e0d:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10003e11:	e8 ed fe ff ff       	call   0x10003d03
10003e16:	59                   	pop    ecx
10003e17:	c2 0c 00             	ret    0xc
10003e1a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003e1e:	85 c0                	test   eax,eax
10003e20:	56                   	push   esi
10003e21:	8b f1                	mov    esi,ecx
10003e23:	c6 46 0c 00          	mov    BYTE PTR [esi+0xc],0x0
10003e27:	75 63                	jne    0x10003e8c
10003e29:	e8 fc 24 00 00       	call   0x1000632a
10003e2e:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
10003e31:	8b 48 6c             	mov    ecx,DWORD PTR [eax+0x6c]
10003e34:	89 0e                	mov    DWORD PTR [esi],ecx
10003e36:	8b 48 68             	mov    ecx,DWORD PTR [eax+0x68]
10003e39:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
10003e3c:	8b 0e                	mov    ecx,DWORD PTR [esi]
10003e3e:	3b 0d 78 0a 01 10    	cmp    ecx,DWORD PTR ds:0x10010a78
10003e44:	74 12                	je     0x10003e58
10003e46:	8b 0d 94 09 01 10    	mov    ecx,DWORD PTR ds:0x10010994
10003e4c:	85 48 70             	test   DWORD PTR [eax+0x70],ecx
10003e4f:	75 07                	jne    0x10003e58
10003e51:	e8 a4 3b 00 00       	call   0x100079fa
10003e56:	89 06                	mov    DWORD PTR [esi],eax
10003e58:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
10003e5b:	3b 05 98 08 01 10    	cmp    eax,DWORD PTR ds:0x10010898
10003e61:	74 16                	je     0x10003e79
10003e63:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10003e66:	8b 0d 94 09 01 10    	mov    ecx,DWORD PTR ds:0x10010994
10003e6c:	85 48 70             	test   DWORD PTR [eax+0x70],ecx
10003e6f:	75 08                	jne    0x10003e79
10003e71:	e8 45 34 00 00       	call   0x100072bb
10003e76:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
10003e79:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10003e7c:	f6 40 70 02          	test   BYTE PTR [eax+0x70],0x2
10003e80:	75 14                	jne    0x10003e96
10003e82:	83 48 70 02          	or     DWORD PTR [eax+0x70],0x2
10003e86:	c6 46 0c 01          	mov    BYTE PTR [esi+0xc],0x1
10003e8a:	eb 0a                	jmp    0x10003e96
10003e8c:	8b 08                	mov    ecx,DWORD PTR [eax]
10003e8e:	89 0e                	mov    DWORD PTR [esi],ecx
10003e90:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10003e93:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
10003e96:	8b c6                	mov    eax,esi
10003e98:	5e                   	pop    esi
10003e99:	c2 04 00             	ret    0x4
10003e9c:	55                   	push   ebp
10003e9d:	8b ec                	mov    ebp,esp
10003e9f:	83 ec 10             	sub    esp,0x10
10003ea2:	56                   	push   esi
10003ea3:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10003ea6:	8d 4d f0             	lea    ecx,[ebp-0x10]
10003ea9:	e8 6c ff ff ff       	call   0x10003e1a
10003eae:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10003eb1:	0f be 06             	movsx  eax,BYTE PTR [esi]
10003eb4:	50                   	push   eax
10003eb5:	e8 6f 3e 00 00       	call   0x10007d29
10003eba:	83 f8 65             	cmp    eax,0x65
10003ebd:	eb 0c                	jmp    0x10003ecb
10003ebf:	46                   	inc    esi
10003ec0:	0f b6 06             	movzx  eax,BYTE PTR [esi]
10003ec3:	50                   	push   eax
10003ec4:	e8 20 3d 00 00       	call   0x10007be9
10003ec9:	85 c0                	test   eax,eax
10003ecb:	59                   	pop    ecx
10003ecc:	75 f1                	jne    0x10003ebf
10003ece:	0f be 06             	movsx  eax,BYTE PTR [esi]
10003ed1:	50                   	push   eax
10003ed2:	e8 52 3e 00 00       	call   0x10007d29
10003ed7:	83 f8 78             	cmp    eax,0x78
10003eda:	59                   	pop    ecx
10003edb:	75 02                	jne    0x10003edf
10003edd:	46                   	inc    esi
10003ede:	46                   	inc    esi
10003edf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10003ee2:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
10003ee8:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003eea:	8a 06                	mov    al,BYTE PTR [esi]
10003eec:	8a 09                	mov    cl,BYTE PTR [ecx]
10003eee:	88 0e                	mov    BYTE PTR [esi],cl
10003ef0:	46                   	inc    esi
10003ef1:	8a 0e                	mov    cl,BYTE PTR [esi]
10003ef3:	88 06                	mov    BYTE PTR [esi],al
10003ef5:	8a c1                	mov    al,cl
10003ef7:	8a 0e                	mov    cl,BYTE PTR [esi]
10003ef9:	46                   	inc    esi
10003efa:	84 c9                	test   cl,cl
10003efc:	75 f3                	jne    0x10003ef1
10003efe:	38 4d fc             	cmp    BYTE PTR [ebp-0x4],cl
10003f01:	5e                   	pop    esi
10003f02:	74 07                	je     0x10003f0b
10003f04:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10003f07:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10003f0b:	c9                   	leave  
10003f0c:	c3                   	ret    
10003f0d:	55                   	push   ebp
10003f0e:	8b ec                	mov    ebp,esp
10003f10:	83 ec 10             	sub    esp,0x10
10003f13:	56                   	push   esi
10003f14:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10003f17:	8d 4d f0             	lea    ecx,[ebp-0x10]
10003f1a:	e8 fb fe ff ff       	call   0x10003e1a
10003f1f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10003f22:	8a 08                	mov    cl,BYTE PTR [eax]
10003f24:	84 c9                	test   cl,cl
10003f26:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
10003f29:	74 15                	je     0x10003f40
10003f2b:	8b 96 bc 00 00 00    	mov    edx,DWORD PTR [esi+0xbc]
10003f31:	8b 12                	mov    edx,DWORD PTR [edx]
10003f33:	8a 12                	mov    dl,BYTE PTR [edx]
10003f35:	3a ca                	cmp    cl,dl
10003f37:	74 07                	je     0x10003f40
10003f39:	40                   	inc    eax
10003f3a:	8a 08                	mov    cl,BYTE PTR [eax]
10003f3c:	84 c9                	test   cl,cl
10003f3e:	75 f5                	jne    0x10003f35
10003f40:	8a 08                	mov    cl,BYTE PTR [eax]
10003f42:	40                   	inc    eax
10003f43:	84 c9                	test   cl,cl
10003f45:	74 36                	je     0x10003f7d
10003f47:	eb 0b                	jmp    0x10003f54
10003f49:	80 f9 65             	cmp    cl,0x65
10003f4c:	74 0c                	je     0x10003f5a
10003f4e:	80 f9 45             	cmp    cl,0x45
10003f51:	74 07                	je     0x10003f5a
10003f53:	40                   	inc    eax
10003f54:	8a 08                	mov    cl,BYTE PTR [eax]
10003f56:	84 c9                	test   cl,cl
10003f58:	75 ef                	jne    0x10003f49
10003f5a:	8b d0                	mov    edx,eax
10003f5c:	48                   	dec    eax
10003f5d:	80 38 30             	cmp    BYTE PTR [eax],0x30
10003f60:	74 fa                	je     0x10003f5c
10003f62:	8b 8e bc 00 00 00    	mov    ecx,DWORD PTR [esi+0xbc]
10003f68:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003f6a:	53                   	push   ebx
10003f6b:	8a 18                	mov    bl,BYTE PTR [eax]
10003f6d:	3a 19                	cmp    bl,BYTE PTR [ecx]
10003f6f:	5b                   	pop    ebx
10003f70:	75 01                	jne    0x10003f73
10003f72:	48                   	dec    eax
10003f73:	8a 0a                	mov    cl,BYTE PTR [edx]
10003f75:	40                   	inc    eax
10003f76:	42                   	inc    edx
10003f77:	84 c9                	test   cl,cl
10003f79:	88 08                	mov    BYTE PTR [eax],cl
10003f7b:	75 f6                	jne    0x10003f73
10003f7d:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10003f81:	5e                   	pop    esi
10003f82:	74 07                	je     0x10003f8b
10003f84:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10003f87:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10003f8b:	c9                   	leave  
10003f8c:	c3                   	ret    
10003f8d:	d9 ee                	fldz   
10003f8f:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003f93:	dc 18                	fcomp  QWORD PTR [eax]
10003f95:	df e0                	fnstsw ax
10003f97:	f6 c4 41             	test   ah,0x41
10003f9a:	7a 04                	jp     0x10003fa0
10003f9c:	33 c0                	xor    eax,eax
10003f9e:	40                   	inc    eax
10003f9f:	c3                   	ret    
10003fa0:	33 c0                	xor    eax,eax
10003fa2:	c3                   	ret    
10003fa3:	55                   	push   ebp
10003fa4:	8b ec                	mov    ebp,esp
10003fa6:	51                   	push   ecx
10003fa7:	51                   	push   ecx
10003fa8:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
10003fac:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10003faf:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10003fb2:	74 19                	je     0x10003fcd
10003fb4:	8d 45 f8             	lea    eax,[ebp-0x8]
10003fb7:	50                   	push   eax
10003fb8:	e8 93 3d 00 00       	call   0x10007d50
10003fbd:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10003fc0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003fc3:	89 08                	mov    DWORD PTR [eax],ecx
10003fc5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10003fc8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
10003fcb:	eb 11                	jmp    0x10003fde
10003fcd:	8d 45 08             	lea    eax,[ebp+0x8]
10003fd0:	50                   	push   eax
10003fd1:	e8 20 3e 00 00       	call   0x10007df6
10003fd6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003fd9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10003fdc:	89 08                	mov    DWORD PTR [eax],ecx
10003fde:	83 c4 0c             	add    esp,0xc
10003fe1:	c9                   	leave  
10003fe2:	c3                   	ret    
10003fe3:	6a 00                	push   0x0
10003fe5:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003fe9:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003fed:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003ff1:	e8 ad ff ff ff       	call   0x10003fa3
10003ff6:	83 c4 10             	add    esp,0x10
10003ff9:	c3                   	ret    
10003ffa:	85 ff                	test   edi,edi
10003ffc:	56                   	push   esi
10003ffd:	8b f0                	mov    esi,eax
10003fff:	74 14                	je     0x10004015
10004001:	56                   	push   esi
10004002:	e8 09 42 00 00       	call   0x10008210
10004007:	40                   	inc    eax
10004008:	50                   	push   eax
10004009:	56                   	push   esi
1000400a:	03 f7                	add    esi,edi
1000400c:	56                   	push   esi
1000400d:	e8 8e 3e 00 00       	call   0x10007ea0
10004012:	83 c4 10             	add    esp,0x10
10004015:	5e                   	pop    esi
10004016:	c3                   	ret    
10004017:	6a 00                	push   0x0
10004019:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
1000401d:	e8 7a fe ff ff       	call   0x10003e9c
10004022:	59                   	pop    ecx
10004023:	59                   	pop    ecx
10004024:	c3                   	ret    
10004025:	6a 00                	push   0x0
10004027:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
1000402b:	e8 dd fe ff ff       	call   0x10003f0d
10004030:	59                   	pop    ecx
10004031:	59                   	pop    ecx
10004032:	c3                   	ret    
10004033:	55                   	push   ebp
10004034:	8b ec                	mov    ebp,esp
10004036:	83 ec 10             	sub    esp,0x10
10004039:	53                   	push   ebx
1000403a:	56                   	push   esi
1000403b:	57                   	push   edi
1000403c:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000403f:	8d 4d f0             	lea    ecx,[ebp-0x10]
10004042:	8b d8                	mov    ebx,eax
10004044:	e8 d1 fd ff ff       	call   0x10003e1a
10004049:	33 f6                	xor    esi,esi
1000404b:	3b de                	cmp    ebx,esi
1000404d:	75 2b                	jne    0x1000407a
1000404f:	e8 f2 09 00 00       	call   0x10004a46
10004054:	6a 16                	push   0x16
10004056:	5f                   	pop    edi
10004057:	56                   	push   esi
10004058:	56                   	push   esi
10004059:	56                   	push   esi
1000405a:	56                   	push   esi
1000405b:	56                   	push   esi
1000405c:	89 38                	mov    DWORD PTR [eax],edi
1000405e:	e8 13 3b 00 00       	call   0x10007b76
10004063:	83 c4 14             	add    esp,0x14
10004066:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000406a:	74 07                	je     0x10004073
1000406c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000406f:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004073:	8b c7                	mov    eax,edi
10004075:	e9 21 01 00 00       	jmp    0x1000419b
1000407a:	39 75 08             	cmp    DWORD PTR [ebp+0x8],esi
1000407d:	76 d0                	jbe    0x1000404f
1000407f:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
10004082:	7e 05                	jle    0x10004089
10004084:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10004087:	eb 02                	jmp    0x1000408b
10004089:	33 c0                	xor    eax,eax
1000408b:	83 c0 09             	add    eax,0x9
1000408e:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
10004091:	77 09                	ja     0x1000409c
10004093:	e8 ae 09 00 00       	call   0x10004a46
10004098:	6a 22                	push   0x22
1000409a:	eb ba                	jmp    0x10004056
1000409c:	80 7d 18 00          	cmp    BYTE PTR [ebp+0x18],0x0
100040a0:	74 1e                	je     0x100040c0
100040a2:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
100040a5:	33 c0                	xor    eax,eax
100040a7:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
100040aa:	0f 9f c0             	setg   al
100040ad:	33 c9                	xor    ecx,ecx
100040af:	83 3a 2d             	cmp    DWORD PTR [edx],0x2d
100040b2:	0f 94 c1             	sete   cl
100040b5:	8b f8                	mov    edi,eax
100040b7:	03 cb                	add    ecx,ebx
100040b9:	8b c1                	mov    eax,ecx
100040bb:	e8 3a ff ff ff       	call   0x10003ffa
100040c0:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
100040c3:	83 3f 2d             	cmp    DWORD PTR [edi],0x2d
100040c6:	8b f3                	mov    esi,ebx
100040c8:	75 06                	jne    0x100040d0
100040ca:	c6 03 2d             	mov    BYTE PTR [ebx],0x2d
100040cd:	8d 73 01             	lea    esi,[ebx+0x1]
100040d0:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
100040d4:	7e 18                	jle    0x100040ee
100040d6:	8d 46 01             	lea    eax,[esi+0x1]
100040d9:	8a 08                	mov    cl,BYTE PTR [eax]
100040db:	88 0e                	mov    BYTE PTR [esi],cl
100040dd:	8b f0                	mov    esi,eax
100040df:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100040e2:	8b 80 bc 00 00 00    	mov    eax,DWORD PTR [eax+0xbc]
100040e8:	8b 00                	mov    eax,DWORD PTR [eax]
100040ea:	8a 00                	mov    al,BYTE PTR [eax]
100040ec:	88 06                	mov    BYTE PTR [esi],al
100040ee:	33 c0                	xor    eax,eax
100040f0:	38 45 18             	cmp    BYTE PTR [ebp+0x18],al
100040f3:	0f 94 c0             	sete   al
100040f6:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
100040f9:	03 f0                	add    esi,eax
100040fb:	83 7d 08 ff          	cmp    DWORD PTR [ebp+0x8],0xffffffff
100040ff:	75 05                	jne    0x10004106
10004101:	83 cb ff             	or     ebx,0xffffffff
10004104:	eb 05                	jmp    0x1000410b
10004106:	2b de                	sub    ebx,esi
10004108:	03 5d 08             	add    ebx,DWORD PTR [ebp+0x8]
1000410b:	68 00 d2 00 10       	push   0x1000d200
10004110:	53                   	push   ebx
10004111:	56                   	push   esi
10004112:	e8 84 41 00 00       	call   0x1000829b
10004117:	83 c4 0c             	add    esp,0xc
1000411a:	33 db                	xor    ebx,ebx
1000411c:	85 c0                	test   eax,eax
1000411e:	74 0d                	je     0x1000412d
10004120:	53                   	push   ebx
10004121:	53                   	push   ebx
10004122:	53                   	push   ebx
10004123:	53                   	push   ebx
10004124:	53                   	push   ebx
10004125:	e8 50 39 00 00       	call   0x10007a7a
1000412a:	83 c4 14             	add    esp,0x14
1000412d:	39 5d 10             	cmp    DWORD PTR [ebp+0x10],ebx
10004130:	8d 4e 02             	lea    ecx,[esi+0x2]
10004133:	74 03                	je     0x10004138
10004135:	c6 06 45             	mov    BYTE PTR [esi],0x45
10004138:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
1000413b:	46                   	inc    esi
1000413c:	80 38 30             	cmp    BYTE PTR [eax],0x30
1000413f:	74 2e                	je     0x1000416f
10004141:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10004144:	48                   	dec    eax
10004145:	79 05                	jns    0x1000414c
10004147:	f7 d8                	neg    eax
10004149:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
1000414c:	46                   	inc    esi
1000414d:	83 f8 64             	cmp    eax,0x64
10004150:	7c 0a                	jl     0x1000415c
10004152:	99                   	cdq    
10004153:	6a 64                	push   0x64
10004155:	5f                   	pop    edi
10004156:	f7 ff                	idiv   edi
10004158:	00 06                	add    BYTE PTR [esi],al
1000415a:	8b c2                	mov    eax,edx
1000415c:	46                   	inc    esi
1000415d:	83 f8 0a             	cmp    eax,0xa
10004160:	7c 0a                	jl     0x1000416c
10004162:	99                   	cdq    
10004163:	6a 0a                	push   0xa
10004165:	5f                   	pop    edi
10004166:	f7 ff                	idiv   edi
10004168:	00 06                	add    BYTE PTR [esi],al
1000416a:	8b c2                	mov    eax,edx
1000416c:	00 46 01             	add    BYTE PTR [esi+0x1],al
1000416f:	f6 05 98 5b 01 10 01 	test   BYTE PTR ds:0x10015b98,0x1
10004176:	74 14                	je     0x1000418c
10004178:	80 39 30             	cmp    BYTE PTR [ecx],0x30
1000417b:	75 0f                	jne    0x1000418c
1000417d:	6a 03                	push   0x3
1000417f:	8d 41 01             	lea    eax,[ecx+0x1]
10004182:	50                   	push   eax
10004183:	51                   	push   ecx
10004184:	e8 17 3d 00 00       	call   0x10007ea0
10004189:	83 c4 0c             	add    esp,0xc
1000418c:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10004190:	74 07                	je     0x10004199
10004192:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10004195:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004199:	33 c0                	xor    eax,eax
1000419b:	5f                   	pop    edi
1000419c:	5e                   	pop    esi
1000419d:	5b                   	pop    ebx
1000419e:	c9                   	leave  
1000419f:	c3                   	ret    
100041a0:	55                   	push   ebp
100041a1:	8b ec                	mov    ebp,esp
100041a3:	83 ec 2c             	sub    esp,0x2c
100041a6:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100041ab:	33 c5                	xor    eax,ebp
100041ad:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100041b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100041b3:	53                   	push   ebx
100041b4:	56                   	push   esi
100041b5:	57                   	push   edi
100041b6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
100041b9:	6a 16                	push   0x16
100041bb:	5e                   	pop    esi
100041bc:	56                   	push   esi
100041bd:	8d 4d e4             	lea    ecx,[ebp-0x1c]
100041c0:	51                   	push   ecx
100041c1:	8d 4d d4             	lea    ecx,[ebp-0x2c]
100041c4:	51                   	push   ecx
100041c5:	ff 70 04             	push   DWORD PTR [eax+0x4]
100041c8:	ff 30                	push   DWORD PTR [eax]
100041ca:	e8 a9 42 00 00       	call   0x10008478
100041cf:	33 db                	xor    ebx,ebx
100041d1:	83 c4 14             	add    esp,0x14
100041d4:	3b fb                	cmp    edi,ebx
100041d6:	75 18                	jne    0x100041f0
100041d8:	e8 69 08 00 00       	call   0x10004a46
100041dd:	53                   	push   ebx
100041de:	53                   	push   ebx
100041df:	53                   	push   ebx
100041e0:	53                   	push   ebx
100041e1:	53                   	push   ebx
100041e2:	89 30                	mov    DWORD PTR [eax],esi
100041e4:	e8 8d 39 00 00       	call   0x10007b76
100041e9:	83 c4 14             	add    esp,0x14
100041ec:	8b c6                	mov    eax,esi
100041ee:	eb 6f                	jmp    0x1000425f
100041f0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
100041f3:	3b c3                	cmp    eax,ebx
100041f5:	76 e1                	jbe    0x100041d8
100041f7:	83 f8 ff             	cmp    eax,0xffffffff
100041fa:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
100041fd:	75 05                	jne    0x10004204
100041ff:	83 c8 ff             	or     eax,0xffffffff
10004202:	eb 14                	jmp    0x10004218
10004204:	33 c9                	xor    ecx,ecx
10004206:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
1000420a:	0f 94 c1             	sete   cl
1000420d:	2b c1                	sub    eax,ecx
1000420f:	33 c9                	xor    ecx,ecx
10004211:	3b f3                	cmp    esi,ebx
10004213:	0f 9f c1             	setg   cl
10004216:	2b c1                	sub    eax,ecx
10004218:	8d 4d d4             	lea    ecx,[ebp-0x2c]
1000421b:	51                   	push   ecx
1000421c:	8d 4e 01             	lea    ecx,[esi+0x1]
1000421f:	51                   	push   ecx
10004220:	50                   	push   eax
10004221:	33 c0                	xor    eax,eax
10004223:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004227:	0f 94 c0             	sete   al
1000422a:	33 c9                	xor    ecx,ecx
1000422c:	3b f3                	cmp    esi,ebx
1000422e:	0f 9f c1             	setg   cl
10004231:	03 c7                	add    eax,edi
10004233:	03 c8                	add    ecx,eax
10004235:	51                   	push   ecx
10004236:	e8 c5 40 00 00       	call   0x10008300
1000423b:	83 c4 10             	add    esp,0x10
1000423e:	3b c3                	cmp    eax,ebx
10004240:	74 04                	je     0x10004246
10004242:	88 1f                	mov    BYTE PTR [edi],bl
10004244:	eb 19                	jmp    0x1000425f
10004246:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004249:	8d 45 d4             	lea    eax,[ebp-0x2c]
1000424c:	53                   	push   ebx
1000424d:	50                   	push   eax
1000424e:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004251:	8b c7                	mov    eax,edi
10004253:	56                   	push   esi
10004254:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004257:	e8 d7 fd ff ff       	call   0x10004033
1000425c:	83 c4 18             	add    esp,0x18
1000425f:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004262:	5f                   	pop    edi
10004263:	5e                   	pop    esi
10004264:	33 cd                	xor    ecx,ebp
10004266:	5b                   	pop    ebx
10004267:	e8 af f8 ff ff       	call   0x10003b1b
1000426c:	c9                   	leave  
1000426d:	c3                   	ret    
1000426e:	55                   	push   ebp
1000426f:	8b ec                	mov    ebp,esp
10004271:	6a 00                	push   0x0
10004273:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004276:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004279:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000427c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000427f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004282:	e8 19 ff ff ff       	call   0x100041a0
10004287:	83 c4 18             	add    esp,0x18
1000428a:	5d                   	pop    ebp
1000428b:	c3                   	ret    
1000428c:	55                   	push   ebp
1000428d:	8b ec                	mov    ebp,esp
1000428f:	83 ec 24             	sub    esp,0x24
10004292:	56                   	push   esi
10004293:	57                   	push   edi
10004294:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004297:	8d 4d dc             	lea    ecx,[ebp-0x24]
1000429a:	c7 45 ec ff 03 00 00 	mov    DWORD PTR [ebp-0x14],0x3ff
100042a1:	33 ff                	xor    edi,edi
100042a3:	c7 45 fc 30 00 00 00 	mov    DWORD PTR [ebp-0x4],0x30
100042aa:	e8 6b fb ff ff       	call   0x10003e1a
100042af:	39 7d 14             	cmp    DWORD PTR [ebp+0x14],edi
100042b2:	7d 03                	jge    0x100042b7
100042b4:	89 7d 14             	mov    DWORD PTR [ebp+0x14],edi
100042b7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100042ba:	3b f7                	cmp    esi,edi
100042bc:	75 2b                	jne    0x100042e9
100042be:	e8 83 07 00 00       	call   0x10004a46
100042c3:	6a 16                	push   0x16
100042c5:	5e                   	pop    esi
100042c6:	57                   	push   edi
100042c7:	57                   	push   edi
100042c8:	57                   	push   edi
100042c9:	57                   	push   edi
100042ca:	57                   	push   edi
100042cb:	89 30                	mov    DWORD PTR [eax],esi
100042cd:	e8 a4 38 00 00       	call   0x10007b76
100042d2:	83 c4 14             	add    esp,0x14
100042d5:	80 7d e8 00          	cmp    BYTE PTR [ebp-0x18],0x0
100042d9:	74 07                	je     0x100042e2
100042db:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
100042de:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100042e2:	8b c6                	mov    eax,esi
100042e4:	e9 10 03 00 00       	jmp    0x100045f9
100042e9:	39 7d 10             	cmp    DWORD PTR [ebp+0x10],edi
100042ec:	76 d0                	jbe    0x100042be
100042ee:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
100042f1:	83 c0 0b             	add    eax,0xb
100042f4:	39 45 10             	cmp    DWORD PTR [ebp+0x10],eax
100042f7:	c6 06 00             	mov    BYTE PTR [esi],0x0
100042fa:	77 09                	ja     0x10004305
100042fc:	e8 45 07 00 00       	call   0x10004a46
10004301:	6a 22                	push   0x22
10004303:	eb c0                	jmp    0x100042c5
10004305:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10004308:	8b 07                	mov    eax,DWORD PTR [edi]
1000430a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000430d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10004310:	8b c8                	mov    ecx,eax
10004312:	c1 e9 14             	shr    ecx,0x14
10004315:	ba ff 07 00 00       	mov    edx,0x7ff
1000431a:	53                   	push   ebx
1000431b:	23 ca                	and    ecx,edx
1000431d:	33 db                	xor    ebx,ebx
1000431f:	3b ca                	cmp    ecx,edx
10004321:	0f 85 90 00 00 00    	jne    0x100043b7
10004327:	85 db                	test   ebx,ebx
10004329:	0f 85 88 00 00 00    	jne    0x100043b7
1000432f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10004332:	83 f8 ff             	cmp    eax,0xffffffff
10004335:	75 04                	jne    0x1000433b
10004337:	0b c0                	or     eax,eax
10004339:	eb 03                	jmp    0x1000433e
1000433b:	83 c0 fe             	add    eax,0xfffffffe
1000433e:	6a 00                	push   0x0
10004340:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004343:	8d 5e 02             	lea    ebx,[esi+0x2]
10004346:	50                   	push   eax
10004347:	53                   	push   ebx
10004348:	57                   	push   edi
10004349:	e8 20 ff ff ff       	call   0x1000426e
1000434e:	83 c4 14             	add    esp,0x14
10004351:	85 c0                	test   eax,eax
10004353:	74 19                	je     0x1000436e
10004355:	80 7d e8 00          	cmp    BYTE PTR [ebp-0x18],0x0
10004359:	c6 06 00             	mov    BYTE PTR [esi],0x0
1000435c:	0f 84 96 02 00 00    	je     0x100045f8
10004362:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
10004365:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10004369:	e9 8a 02 00 00       	jmp    0x100045f8
1000436e:	80 3b 2d             	cmp    BYTE PTR [ebx],0x2d
10004371:	75 04                	jne    0x10004377
10004373:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
10004376:	46                   	inc    esi
10004377:	c6 06 30             	mov    BYTE PTR [esi],0x30
1000437a:	46                   	inc    esi
1000437b:	83 7d 18 00          	cmp    DWORD PTR [ebp+0x18],0x0
1000437f:	6a 65                	push   0x65
10004381:	0f 94 c0             	sete   al
10004384:	fe c8                	dec    al
10004386:	24 e0                	and    al,0xe0
10004388:	04 78                	add    al,0x78
1000438a:	88 06                	mov    BYTE PTR [esi],al
1000438c:	46                   	inc    esi
1000438d:	56                   	push   esi
1000438e:	e8 ed 2c 00 00       	call   0x10007080
10004393:	85 c0                	test   eax,eax
10004395:	59                   	pop    ecx
10004396:	59                   	pop    ecx
10004397:	0f 84 4c 02 00 00    	je     0x100045e9
1000439d:	83 7d 18 00          	cmp    DWORD PTR [ebp+0x18],0x0
100043a1:	0f 94 c1             	sete   cl
100043a4:	fe c9                	dec    cl
100043a6:	80 e1 e0             	and    cl,0xe0
100043a9:	80 c1 70             	add    cl,0x70
100043ac:	88 08                	mov    BYTE PTR [eax],cl
100043ae:	c6 40 03 00          	mov    BYTE PTR [eax+0x3],0x0
100043b2:	e9 32 02 00 00       	jmp    0x100045e9
100043b7:	25 00 00 00 80       	and    eax,0x80000000
100043bc:	33 c9                	xor    ecx,ecx
100043be:	0b c8                	or     ecx,eax
100043c0:	74 04                	je     0x100043c6
100043c2:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
100043c5:	46                   	inc    esi
100043c6:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
100043c9:	c6 06 30             	mov    BYTE PTR [esi],0x30
100043cc:	46                   	inc    esi
100043cd:	85 db                	test   ebx,ebx
100043cf:	0f 94 c0             	sete   al
100043d2:	fe c8                	dec    al
100043d4:	24 e0                	and    al,0xe0
100043d6:	04 78                	add    al,0x78
100043d8:	88 06                	mov    BYTE PTR [esi],al
100043da:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
100043dd:	46                   	inc    esi
100043de:	f7 db                	neg    ebx
100043e0:	1b db                	sbb    ebx,ebx
100043e2:	83 e3 e0             	and    ebx,0xffffffe0
100043e5:	81 e1 00 00 f0 7f    	and    ecx,0x7ff00000
100043eb:	33 c0                	xor    eax,eax
100043ed:	83 c3 27             	add    ebx,0x27
100043f0:	33 d2                	xor    edx,edx
100043f2:	0b c1                	or     eax,ecx
100043f4:	75 21                	jne    0x10004417
100043f6:	c6 06 30             	mov    BYTE PTR [esi],0x30
100043f9:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
100043fc:	8b 07                	mov    eax,DWORD PTR [edi]
100043fe:	81 e1 ff ff 0f 00    	and    ecx,0xfffff
10004404:	46                   	inc    esi
10004405:	0b c1                	or     eax,ecx
10004407:	75 05                	jne    0x1000440e
10004409:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
1000440c:	eb 0d                	jmp    0x1000441b
1000440e:	c7 45 ec fe 03 00 00 	mov    DWORD PTR [ebp-0x14],0x3fe
10004415:	eb 04                	jmp    0x1000441b
10004417:	c6 06 31             	mov    BYTE PTR [esi],0x31
1000441a:	46                   	inc    esi
1000441b:	8b c6                	mov    eax,esi
1000441d:	46                   	inc    esi
1000441e:	39 55 14             	cmp    DWORD PTR [ebp+0x14],edx
10004421:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
10004424:	75 04                	jne    0x1000442a
10004426:	88 10                	mov    BYTE PTR [eax],dl
10004428:	eb 0f                	jmp    0x10004439
1000442a:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000442d:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
10004433:	8b 09                	mov    ecx,DWORD PTR [ecx]
10004435:	8a 09                	mov    cl,BYTE PTR [ecx]
10004437:	88 08                	mov    BYTE PTR [eax],cl
10004439:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
1000443c:	8b 07                	mov    eax,DWORD PTR [edi]
1000443e:	81 e1 ff ff 0f 00    	and    ecx,0xfffff
10004444:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
10004447:	77 08                	ja     0x10004451
10004449:	3b c2                	cmp    eax,edx
1000444b:	0f 86 b5 00 00 00    	jbe    0x10004506
10004451:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
10004454:	c7 45 f8 00 00 0f 00 	mov    DWORD PTR [ebp-0x8],0xf0000
1000445b:	83 7d 14 00          	cmp    DWORD PTR [ebp+0x14],0x0
1000445f:	7e 4d                	jle    0x100044ae
10004461:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
10004464:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
10004467:	8b 07                	mov    eax,DWORD PTR [edi]
10004469:	0f bf 4d fc          	movsx  ecx,WORD PTR [ebp-0x4]
1000446d:	23 45 f4             	and    eax,DWORD PTR [ebp-0xc]
10004470:	81 e2 ff ff 0f 00    	and    edx,0xfffff
10004476:	e8 f5 41 00 00       	call   0x10008670
1000447b:	66 05 30 00          	add    ax,0x30
1000447f:	0f b7 c0             	movzx  eax,ax
10004482:	66 3d 39 00          	cmp    ax,0x39
10004486:	76 02                	jbe    0x1000448a
10004488:	03 c3                	add    eax,ebx
1000448a:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000448d:	83 6d fc 04          	sub    DWORD PTR [ebp-0x4],0x4
10004491:	88 06                	mov    BYTE PTR [esi],al
10004493:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
10004496:	0f ac c8 04          	shrd   eax,ecx,0x4
1000449a:	c1 e9 04             	shr    ecx,0x4
1000449d:	46                   	inc    esi
1000449e:	ff 4d 14             	dec    DWORD PTR [ebp+0x14]
100044a1:	66 83 7d fc 00       	cmp    WORD PTR [ebp-0x4],0x0
100044a6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
100044a9:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100044ac:	7d ad                	jge    0x1000445b
100044ae:	66 83 7d fc 00       	cmp    WORD PTR [ebp-0x4],0x0
100044b3:	7c 51                	jl     0x10004506
100044b5:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
100044b8:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
100044bb:	8b 07                	mov    eax,DWORD PTR [edi]
100044bd:	0f bf 4d fc          	movsx  ecx,WORD PTR [ebp-0x4]
100044c1:	23 45 f4             	and    eax,DWORD PTR [ebp-0xc]
100044c4:	81 e2 ff ff 0f 00    	and    edx,0xfffff
100044ca:	e8 a1 41 00 00       	call   0x10008670
100044cf:	66 3d 08 00          	cmp    ax,0x8
100044d3:	76 31                	jbe    0x10004506
100044d5:	8d 46 ff             	lea    eax,[esi-0x1]
100044d8:	8a 08                	mov    cl,BYTE PTR [eax]
100044da:	80 f9 66             	cmp    cl,0x66
100044dd:	74 05                	je     0x100044e4
100044df:	80 f9 46             	cmp    cl,0x46
100044e2:	75 06                	jne    0x100044ea
100044e4:	c6 00 30             	mov    BYTE PTR [eax],0x30
100044e7:	48                   	dec    eax
100044e8:	eb ee                	jmp    0x100044d8
100044ea:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
100044ed:	74 14                	je     0x10004503
100044ef:	8a 08                	mov    cl,BYTE PTR [eax]
100044f1:	80 f9 39             	cmp    cl,0x39
100044f4:	75 07                	jne    0x100044fd
100044f6:	80 c3 3a             	add    bl,0x3a
100044f9:	88 18                	mov    BYTE PTR [eax],bl
100044fb:	eb 09                	jmp    0x10004506
100044fd:	fe c1                	inc    cl
100044ff:	88 08                	mov    BYTE PTR [eax],cl
10004501:	eb 03                	jmp    0x10004506
10004503:	fe 40 ff             	inc    BYTE PTR [eax-0x1]
10004506:	83 7d 14 00          	cmp    DWORD PTR [ebp+0x14],0x0
1000450a:	7e 11                	jle    0x1000451d
1000450c:	ff 75 14             	push   DWORD PTR [ebp+0x14]
1000450f:	6a 30                	push   0x30
10004511:	56                   	push   esi
10004512:	e8 d9 40 00 00       	call   0x100085f0
10004517:	83 c4 0c             	add    esp,0xc
1000451a:	03 75 14             	add    esi,DWORD PTR [ebp+0x14]
1000451d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10004520:	80 38 00             	cmp    BYTE PTR [eax],0x0
10004523:	75 02                	jne    0x10004527
10004525:	8b f0                	mov    esi,eax
10004527:	83 7d 18 00          	cmp    DWORD PTR [ebp+0x18],0x0
1000452b:	b1 34                	mov    cl,0x34
1000452d:	0f 94 c0             	sete   al
10004530:	fe c8                	dec    al
10004532:	24 e0                	and    al,0xe0
10004534:	04 70                	add    al,0x70
10004536:	88 06                	mov    BYTE PTR [esi],al
10004538:	8b 07                	mov    eax,DWORD PTR [edi]
1000453a:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
1000453d:	46                   	inc    esi
1000453e:	e8 2d 41 00 00       	call   0x10008670
10004543:	33 db                	xor    ebx,ebx
10004545:	25 ff 07 00 00       	and    eax,0x7ff
1000454a:	23 d3                	and    edx,ebx
1000454c:	2b 45 ec             	sub    eax,DWORD PTR [ebp-0x14]
1000454f:	53                   	push   ebx
10004550:	59                   	pop    ecx
10004551:	1b d1                	sbb    edx,ecx
10004553:	78 0c                	js     0x10004561
10004555:	7f 04                	jg     0x1000455b
10004557:	3b c3                	cmp    eax,ebx
10004559:	72 06                	jb     0x10004561
1000455b:	c6 06 2b             	mov    BYTE PTR [esi],0x2b
1000455e:	46                   	inc    esi
1000455f:	eb 0a                	jmp    0x1000456b
10004561:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
10004564:	46                   	inc    esi
10004565:	f7 d8                	neg    eax
10004567:	13 d3                	adc    edx,ebx
10004569:	f7 da                	neg    edx
1000456b:	3b d3                	cmp    edx,ebx
1000456d:	8b fe                	mov    edi,esi
1000456f:	c6 06 30             	mov    BYTE PTR [esi],0x30
10004572:	7c 24                	jl     0x10004598
10004574:	b9 e8 03 00 00       	mov    ecx,0x3e8
10004579:	7f 04                	jg     0x1000457f
1000457b:	3b c1                	cmp    eax,ecx
1000457d:	72 19                	jb     0x10004598
1000457f:	53                   	push   ebx
10004580:	51                   	push   ecx
10004581:	52                   	push   edx
10004582:	50                   	push   eax
10004583:	e8 88 3f 00 00       	call   0x10008510
10004588:	04 30                	add    al,0x30
1000458a:	88 06                	mov    BYTE PTR [esi],al
1000458c:	46                   	inc    esi
1000458d:	3b f7                	cmp    esi,edi
1000458f:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
10004592:	8b c1                	mov    eax,ecx
10004594:	8b d3                	mov    edx,ebx
10004596:	75 0b                	jne    0x100045a3
10004598:	85 d2                	test   edx,edx
1000459a:	7c 1e                	jl     0x100045ba
1000459c:	7f 05                	jg     0x100045a3
1000459e:	83 f8 64             	cmp    eax,0x64
100045a1:	72 17                	jb     0x100045ba
100045a3:	6a 00                	push   0x0
100045a5:	6a 64                	push   0x64
100045a7:	52                   	push   edx
100045a8:	50                   	push   eax
100045a9:	e8 62 3f 00 00       	call   0x10008510
100045ae:	04 30                	add    al,0x30
100045b0:	88 06                	mov    BYTE PTR [esi],al
100045b2:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
100045b5:	46                   	inc    esi
100045b6:	8b c1                	mov    eax,ecx
100045b8:	8b d3                	mov    edx,ebx
100045ba:	3b f7                	cmp    esi,edi
100045bc:	75 0b                	jne    0x100045c9
100045be:	85 d2                	test   edx,edx
100045c0:	7c 1f                	jl     0x100045e1
100045c2:	7f 05                	jg     0x100045c9
100045c4:	83 f8 0a             	cmp    eax,0xa
100045c7:	72 18                	jb     0x100045e1
100045c9:	6a 00                	push   0x0
100045cb:	6a 0a                	push   0xa
100045cd:	52                   	push   edx
100045ce:	50                   	push   eax
100045cf:	e8 3c 3f 00 00       	call   0x10008510
100045d4:	04 30                	add    al,0x30
100045d6:	88 06                	mov    BYTE PTR [esi],al
100045d8:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
100045db:	46                   	inc    esi
100045dc:	8b c1                	mov    eax,ecx
100045de:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
100045e1:	04 30                	add    al,0x30
100045e3:	88 06                	mov    BYTE PTR [esi],al
100045e5:	c6 46 01 00          	mov    BYTE PTR [esi+0x1],0x0
100045e9:	80 7d e8 00          	cmp    BYTE PTR [ebp-0x18],0x0
100045ed:	74 07                	je     0x100045f6
100045ef:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
100045f2:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100045f6:	33 c0                	xor    eax,eax
100045f8:	5b                   	pop    ebx
100045f9:	5f                   	pop    edi
100045fa:	5e                   	pop    esi
100045fb:	c9                   	leave  
100045fc:	c3                   	ret    
100045fd:	55                   	push   ebp
100045fe:	8b ec                	mov    ebp,esp
10004600:	83 ec 10             	sub    esp,0x10
10004603:	53                   	push   ebx
10004604:	56                   	push   esi
10004605:	57                   	push   edi
10004606:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004609:	8b d8                	mov    ebx,eax
1000460b:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
1000460e:	8b f9                	mov    edi,ecx
10004610:	8d 4d f0             	lea    ecx,[ebp-0x10]
10004613:	4e                   	dec    esi
10004614:	e8 01 f8 ff ff       	call   0x10003e1a
10004619:	85 ff                	test   edi,edi
1000461b:	75 2d                	jne    0x1000464a
1000461d:	e8 24 04 00 00       	call   0x10004a46
10004622:	6a 16                	push   0x16
10004624:	5e                   	pop    esi
10004625:	89 30                	mov    DWORD PTR [eax],esi
10004627:	33 c0                	xor    eax,eax
10004629:	50                   	push   eax
1000462a:	50                   	push   eax
1000462b:	50                   	push   eax
1000462c:	50                   	push   eax
1000462d:	50                   	push   eax
1000462e:	e8 43 35 00 00       	call   0x10007b76
10004633:	83 c4 14             	add    esp,0x14
10004636:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000463a:	74 07                	je     0x10004643
1000463c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000463f:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004643:	8b c6                	mov    eax,esi
10004645:	e9 a3 00 00 00       	jmp    0x100046ed
1000464a:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
1000464e:	76 cd                	jbe    0x1000461d
10004650:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
10004654:	74 18                	je     0x1000466e
10004656:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
10004659:	75 13                	jne    0x1000466e
1000465b:	33 c0                	xor    eax,eax
1000465d:	83 3b 2d             	cmp    DWORD PTR [ebx],0x2d
10004660:	0f 94 c0             	sete   al
10004663:	03 c6                	add    eax,esi
10004665:	03 c7                	add    eax,edi
10004667:	c6 00 30             	mov    BYTE PTR [eax],0x30
1000466a:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
1000466e:	83 3b 2d             	cmp    DWORD PTR [ebx],0x2d
10004671:	8b f7                	mov    esi,edi
10004673:	75 06                	jne    0x1000467b
10004675:	c6 07 2d             	mov    BYTE PTR [edi],0x2d
10004678:	8d 77 01             	lea    esi,[edi+0x1]
1000467b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
1000467e:	33 ff                	xor    edi,edi
10004680:	47                   	inc    edi
10004681:	85 c0                	test   eax,eax
10004683:	7f 0d                	jg     0x10004692
10004685:	8b c6                	mov    eax,esi
10004687:	e8 6e f9 ff ff       	call   0x10003ffa
1000468c:	c6 06 30             	mov    BYTE PTR [esi],0x30
1000468f:	46                   	inc    esi
10004690:	eb 02                	jmp    0x10004694
10004692:	03 f0                	add    esi,eax
10004694:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
10004698:	7e 44                	jle    0x100046de
1000469a:	8b c6                	mov    eax,esi
1000469c:	e8 59 f9 ff ff       	call   0x10003ffa
100046a1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100046a4:	8b 80 bc 00 00 00    	mov    eax,DWORD PTR [eax+0xbc]
100046aa:	8b 00                	mov    eax,DWORD PTR [eax]
100046ac:	8a 00                	mov    al,BYTE PTR [eax]
100046ae:	88 06                	mov    BYTE PTR [esi],al
100046b0:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
100046b3:	46                   	inc    esi
100046b4:	85 db                	test   ebx,ebx
100046b6:	7d 26                	jge    0x100046de
100046b8:	f7 db                	neg    ebx
100046ba:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
100046be:	75 05                	jne    0x100046c5
100046c0:	39 5d 0c             	cmp    DWORD PTR [ebp+0xc],ebx
100046c3:	7c 03                	jl     0x100046c8
100046c5:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
100046c8:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
100046cb:	8b c6                	mov    eax,esi
100046cd:	e8 28 f9 ff ff       	call   0x10003ffa
100046d2:	57                   	push   edi
100046d3:	6a 30                	push   0x30
100046d5:	56                   	push   esi
100046d6:	e8 15 3f 00 00       	call   0x100085f0
100046db:	83 c4 0c             	add    esp,0xc
100046de:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
100046e2:	74 07                	je     0x100046eb
100046e4:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
100046e7:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100046eb:	33 c0                	xor    eax,eax
100046ed:	5f                   	pop    edi
100046ee:	5e                   	pop    esi
100046ef:	5b                   	pop    ebx
100046f0:	c9                   	leave  
100046f1:	c3                   	ret    
100046f2:	55                   	push   ebp
100046f3:	8b ec                	mov    ebp,esp
100046f5:	83 ec 2c             	sub    esp,0x2c
100046f8:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100046fd:	33 c5                	xor    eax,ebp
100046ff:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10004702:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10004705:	53                   	push   ebx
10004706:	56                   	push   esi
10004707:	57                   	push   edi
10004708:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000470b:	6a 16                	push   0x16
1000470d:	5e                   	pop    esi
1000470e:	56                   	push   esi
1000470f:	8d 4d e4             	lea    ecx,[ebp-0x1c]
10004712:	51                   	push   ecx
10004713:	8d 4d d4             	lea    ecx,[ebp-0x2c]
10004716:	51                   	push   ecx
10004717:	ff 70 04             	push   DWORD PTR [eax+0x4]
1000471a:	ff 30                	push   DWORD PTR [eax]
1000471c:	e8 57 3d 00 00       	call   0x10008478
10004721:	33 db                	xor    ebx,ebx
10004723:	83 c4 14             	add    esp,0x14
10004726:	3b fb                	cmp    edi,ebx
10004728:	75 18                	jne    0x10004742
1000472a:	e8 17 03 00 00       	call   0x10004a46
1000472f:	53                   	push   ebx
10004730:	53                   	push   ebx
10004731:	53                   	push   ebx
10004732:	53                   	push   ebx
10004733:	53                   	push   ebx
10004734:	89 30                	mov    DWORD PTR [eax],esi
10004736:	e8 3b 34 00 00       	call   0x10007b76
1000473b:	83 c4 14             	add    esp,0x14
1000473e:	8b c6                	mov    eax,esi
10004740:	eb 5a                	jmp    0x1000479c
10004742:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10004745:	3b c3                	cmp    eax,ebx
10004747:	76 e1                	jbe    0x1000472a
10004749:	83 f8 ff             	cmp    eax,0xffffffff
1000474c:	75 04                	jne    0x10004752
1000474e:	0b c0                	or     eax,eax
10004750:	eb 0b                	jmp    0x1000475d
10004752:	33 c9                	xor    ecx,ecx
10004754:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004758:	0f 94 c1             	sete   cl
1000475b:	2b c1                	sub    eax,ecx
1000475d:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
10004760:	8d 4d d4             	lea    ecx,[ebp-0x2c]
10004763:	51                   	push   ecx
10004764:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
10004767:	03 ce                	add    ecx,esi
10004769:	51                   	push   ecx
1000476a:	50                   	push   eax
1000476b:	33 c0                	xor    eax,eax
1000476d:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004771:	0f 94 c0             	sete   al
10004774:	03 c7                	add    eax,edi
10004776:	50                   	push   eax
10004777:	e8 84 3b 00 00       	call   0x10008300
1000477c:	83 c4 10             	add    esp,0x10
1000477f:	3b c3                	cmp    eax,ebx
10004781:	74 04                	je     0x10004787
10004783:	88 1f                	mov    BYTE PTR [edi],bl
10004785:	eb 15                	jmp    0x1000479c
10004787:	ff 75 18             	push   DWORD PTR [ebp+0x18]
1000478a:	8d 45 d4             	lea    eax,[ebp-0x2c]
1000478d:	53                   	push   ebx
1000478e:	56                   	push   esi
1000478f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004792:	8b cf                	mov    ecx,edi
10004794:	e8 64 fe ff ff       	call   0x100045fd
10004799:	83 c4 10             	add    esp,0x10
1000479c:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000479f:	5f                   	pop    edi
100047a0:	5e                   	pop    esi
100047a1:	33 cd                	xor    ecx,ebp
100047a3:	5b                   	pop    ebx
100047a4:	e8 72 f3 ff ff       	call   0x10003b1b
100047a9:	c9                   	leave  
100047aa:	c3                   	ret    
100047ab:	55                   	push   ebp
100047ac:	8b ec                	mov    ebp,esp
100047ae:	83 ec 30             	sub    esp,0x30
100047b1:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100047b6:	33 c5                	xor    eax,ebp
100047b8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100047bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100047be:	53                   	push   ebx
100047bf:	56                   	push   esi
100047c0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100047c3:	57                   	push   edi
100047c4:	6a 16                	push   0x16
100047c6:	5f                   	pop    edi
100047c7:	57                   	push   edi
100047c8:	8d 4d e4             	lea    ecx,[ebp-0x1c]
100047cb:	51                   	push   ecx
100047cc:	8d 4d d0             	lea    ecx,[ebp-0x30]
100047cf:	51                   	push   ecx
100047d0:	ff 70 04             	push   DWORD PTR [eax+0x4]
100047d3:	ff 30                	push   DWORD PTR [eax]
100047d5:	e8 9e 3c 00 00       	call   0x10008478
100047da:	33 db                	xor    ebx,ebx
100047dc:	83 c4 14             	add    esp,0x14
100047df:	3b f3                	cmp    esi,ebx
100047e1:	75 1b                	jne    0x100047fe
100047e3:	e8 5e 02 00 00       	call   0x10004a46
100047e8:	53                   	push   ebx
100047e9:	53                   	push   ebx
100047ea:	53                   	push   ebx
100047eb:	53                   	push   ebx
100047ec:	53                   	push   ebx
100047ed:	89 38                	mov    DWORD PTR [eax],edi
100047ef:	e8 82 33 00 00       	call   0x10007b76
100047f4:	83 c4 14             	add    esp,0x14
100047f7:	8b c7                	mov    eax,edi
100047f9:	e9 96 00 00 00       	jmp    0x10004894
100047fe:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10004801:	3b cb                	cmp    ecx,ebx
10004803:	76 de                	jbe    0x100047e3
10004805:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
10004808:	48                   	dec    eax
10004809:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000480c:	33 c0                	xor    eax,eax
1000480e:	83 7d d0 2d          	cmp    DWORD PTR [ebp-0x30],0x2d
10004812:	0f 94 c0             	sete   al
10004815:	83 f9 ff             	cmp    ecx,0xffffffff
10004818:	8d 3c 30             	lea    edi,[eax+esi*1]
1000481b:	75 04                	jne    0x10004821
1000481d:	0b c9                	or     ecx,ecx
1000481f:	eb 02                	jmp    0x10004823
10004821:	2b c8                	sub    ecx,eax
10004823:	8d 45 d0             	lea    eax,[ebp-0x30]
10004826:	50                   	push   eax
10004827:	ff 75 14             	push   DWORD PTR [ebp+0x14]
1000482a:	51                   	push   ecx
1000482b:	57                   	push   edi
1000482c:	e8 cf 3a 00 00       	call   0x10008300
10004831:	83 c4 10             	add    esp,0x10
10004834:	3b c3                	cmp    eax,ebx
10004836:	74 04                	je     0x1000483c
10004838:	88 1e                	mov    BYTE PTR [esi],bl
1000483a:	eb 58                	jmp    0x10004894
1000483c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
1000483f:	48                   	dec    eax
10004840:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
10004843:	0f 9c c1             	setl   cl
10004846:	83 f8 fc             	cmp    eax,0xfffffffc
10004849:	7c 2d                	jl     0x10004878
1000484b:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
1000484e:	7d 28                	jge    0x10004878
10004850:	3a cb                	cmp    cl,bl
10004852:	74 0a                	je     0x1000485e
10004854:	8a 07                	mov    al,BYTE PTR [edi]
10004856:	47                   	inc    edi
10004857:	84 c0                	test   al,al
10004859:	75 f9                	jne    0x10004854
1000485b:	88 5f fe             	mov    BYTE PTR [edi-0x2],bl
1000485e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004861:	8d 45 d0             	lea    eax,[ebp-0x30]
10004864:	6a 01                	push   0x1
10004866:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004869:	8b ce                	mov    ecx,esi
1000486b:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000486e:	e8 8a fd ff ff       	call   0x100045fd
10004873:	83 c4 10             	add    esp,0x10
10004876:	eb 1c                	jmp    0x10004894
10004878:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000487b:	8d 45 d0             	lea    eax,[ebp-0x30]
1000487e:	6a 01                	push   0x1
10004880:	50                   	push   eax
10004881:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004884:	8b c6                	mov    eax,esi
10004886:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004889:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000488c:	e8 a2 f7 ff ff       	call   0x10004033
10004891:	83 c4 18             	add    esp,0x18
10004894:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004897:	5f                   	pop    edi
10004898:	5e                   	pop    esi
10004899:	33 cd                	xor    ecx,ebp
1000489b:	5b                   	pop    ebx
1000489c:	e8 7a f2 ff ff       	call   0x10003b1b
100048a1:	c9                   	leave  
100048a2:	c3                   	ret    
100048a3:	55                   	push   ebp
100048a4:	8b ec                	mov    ebp,esp
100048a6:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
100048a9:	83 f8 65             	cmp    eax,0x65
100048ac:	74 5f                	je     0x1000490d
100048ae:	83 f8 45             	cmp    eax,0x45
100048b1:	74 5a                	je     0x1000490d
100048b3:	83 f8 66             	cmp    eax,0x66
100048b6:	75 19                	jne    0x100048d1
100048b8:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048bb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048be:	ff 75 10             	push   DWORD PTR [ebp+0x10]
100048c1:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100048c4:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100048c7:	e8 26 fe ff ff       	call   0x100046f2
100048cc:	83 c4 14             	add    esp,0x14
100048cf:	5d                   	pop    ebp
100048d0:	c3                   	ret    
100048d1:	83 f8 61             	cmp    eax,0x61
100048d4:	74 1e                	je     0x100048f4
100048d6:	83 f8 41             	cmp    eax,0x41
100048d9:	74 19                	je     0x100048f4
100048db:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048de:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
100048e1:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048e4:	ff 75 10             	push   DWORD PTR [ebp+0x10]
100048e7:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100048ea:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100048ed:	e8 b9 fe ff ff       	call   0x100047ab
100048f2:	eb 30                	jmp    0x10004924
100048f4:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048f7:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
100048fa:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048fd:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004900:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10004903:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004906:	e8 81 f9 ff ff       	call   0x1000428c
1000490b:	eb 17                	jmp    0x10004924
1000490d:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10004910:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004913:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004916:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004919:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000491c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000491f:	e8 7c f8 ff ff       	call   0x100041a0
10004924:	83 c4 18             	add    esp,0x18
10004927:	5d                   	pop    ebp
10004928:	c3                   	ret    
10004929:	55                   	push   ebp
1000492a:	8b ec                	mov    ebp,esp
1000492c:	6a 00                	push   0x0
1000492e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004931:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004934:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004937:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000493a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000493d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004940:	e8 5e ff ff ff       	call   0x100048a3
10004945:	83 c4 1c             	add    esp,0x1c
10004948:	5d                   	pop    ebp
10004949:	c3                   	ret    
1000494a:	56                   	push   esi
1000494b:	57                   	push   edi
1000494c:	33 ff                	xor    edi,edi
1000494e:	8d b7 18 00 01 10    	lea    esi,[edi+0x10010018]
10004954:	ff 36                	push   DWORD PTR [esi]
10004956:	e8 3c 17 00 00       	call   0x10006097
1000495b:	83 c7 04             	add    edi,0x4
1000495e:	83 ff 28             	cmp    edi,0x28
10004961:	59                   	pop    ecx
10004962:	89 06                	mov    DWORD PTR [esi],eax
10004964:	72 e8                	jb     0x1000494e
10004966:	5f                   	pop    edi
10004967:	5e                   	pop    esi
10004968:	c3                   	ret    
10004969:	56                   	push   esi
1000496a:	68 00 00 03 00       	push   0x30000
1000496f:	68 00 00 01 00       	push   0x10000
10004974:	33 f6                	xor    esi,esi
10004976:	56                   	push   esi
10004977:	e8 1c 3d 00 00       	call   0x10008698
1000497c:	83 c4 0c             	add    esp,0xc
1000497f:	85 c0                	test   eax,eax
10004981:	74 0d                	je     0x10004990
10004983:	56                   	push   esi
10004984:	56                   	push   esi
10004985:	56                   	push   esi
10004986:	56                   	push   esi
10004987:	56                   	push   esi
10004988:	e8 ed 30 00 00       	call   0x10007a7a
1000498d:	83 c4 14             	add    esp,0x14
10004990:	5e                   	pop    esi
10004991:	c3                   	ret    
10004992:	55                   	push   ebp
10004993:	8b ec                	mov    ebp,esp
10004995:	83 ec 18             	sub    esp,0x18
10004998:	dd 05 10 d2 00 10    	fld    QWORD PTR ds:0x1000d210
1000499e:	dd 5d f0             	fstp   QWORD PTR [ebp-0x10]
100049a1:	dd 05 08 d2 00 10    	fld    QWORD PTR ds:0x1000d208
100049a7:	dd 5d e8             	fstp   QWORD PTR [ebp-0x18]
100049aa:	dd 45 e8             	fld    QWORD PTR [ebp-0x18]
100049ad:	dc 75 f0             	fdiv   QWORD PTR [ebp-0x10]
100049b0:	dc 4d f0             	fmul   QWORD PTR [ebp-0x10]
100049b3:	dc 6d e8             	fsubr  QWORD PTR [ebp-0x18]
100049b6:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
100049b9:	d9 e8                	fld1   
100049bb:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
100049be:	df e0                	fnstsw ax
100049c0:	f6 c4 05             	test   ah,0x5
100049c3:	7a 05                	jp     0x100049ca
100049c5:	33 c0                	xor    eax,eax
100049c7:	40                   	inc    eax
100049c8:	c9                   	leave  
100049c9:	c3                   	ret    
100049ca:	33 c0                	xor    eax,eax
100049cc:	c9                   	leave  
100049cd:	c3                   	ret    
100049ce:	68 34 d2 00 10       	push   0x1000d234
100049d3:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
100049d9:	85 c0                	test   eax,eax
100049db:	74 15                	je     0x100049f2
100049dd:	68 18 d2 00 10       	push   0x1000d218
100049e2:	50                   	push   eax
100049e3:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
100049e9:	85 c0                	test   eax,eax
100049eb:	74 05                	je     0x100049f2
100049ed:	6a 00                	push   0x0
100049ef:	ff d0                	call   eax
100049f1:	c3                   	ret    
100049f2:	e9 9b ff ff ff       	jmp    0x10004992
100049f7:	83 25 f4 5d 01 10 00 	and    DWORD PTR ds:0x10015df4,0x0
100049fe:	e8 4f 3d 00 00       	call   0x10008752
10004a03:	a3 f4 5d 01 10       	mov    ds:0x10015df4,eax
10004a08:	33 c0                	xor    eax,eax
10004a0a:	c3                   	ret    
10004a0b:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10004a0f:	33 c9                	xor    ecx,ecx
10004a11:	3b 04 cd 40 00 01 10 	cmp    eax,DWORD PTR [ecx*8+0x10010040]
10004a18:	74 12                	je     0x10004a2c
10004a1a:	41                   	inc    ecx
10004a1b:	83 f9 2d             	cmp    ecx,0x2d
10004a1e:	72 f1                	jb     0x10004a11
10004a20:	8d 48 ed             	lea    ecx,[eax-0x13]
10004a23:	83 f9 11             	cmp    ecx,0x11
10004a26:	77 0c                	ja     0x10004a34
10004a28:	6a 0d                	push   0xd
10004a2a:	58                   	pop    eax
10004a2b:	c3                   	ret    
10004a2c:	8b 04 cd 44 00 01 10 	mov    eax,DWORD PTR [ecx*8+0x10010044]
10004a33:	c3                   	ret    
10004a34:	05 44 ff ff ff       	add    eax,0xffffff44
10004a39:	6a 0e                	push   0xe
10004a3b:	59                   	pop    ecx
10004a3c:	3b c8                	cmp    ecx,eax
10004a3e:	1b c0                	sbb    eax,eax
10004a40:	23 c1                	and    eax,ecx
10004a42:	83 c0 08             	add    eax,0x8
10004a45:	c3                   	ret    
10004a46:	e8 68 18 00 00       	call   0x100062b3
10004a4b:	85 c0                	test   eax,eax
10004a4d:	75 06                	jne    0x10004a55
10004a4f:	b8 a8 01 01 10       	mov    eax,0x100101a8
10004a54:	c3                   	ret    
10004a55:	83 c0 08             	add    eax,0x8
10004a58:	c3                   	ret    
10004a59:	55                   	push   ebp
10004a5a:	8b ec                	mov    ebp,esp
10004a5c:	51                   	push   ecx
10004a5d:	51                   	push   ecx
10004a5e:	56                   	push   esi
10004a5f:	8d 45 fc             	lea    eax,[ebp-0x4]
10004a62:	33 f6                	xor    esi,esi
10004a64:	50                   	push   eax
10004a65:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
10004a68:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
10004a6b:	e8 5f 10 00 00       	call   0x10005acf
10004a70:	85 c0                	test   eax,eax
10004a72:	59                   	pop    ecx
10004a73:	74 0d                	je     0x10004a82
10004a75:	56                   	push   esi
10004a76:	56                   	push   esi
10004a77:	56                   	push   esi
10004a78:	56                   	push   esi
10004a79:	56                   	push   esi
10004a7a:	e8 fb 2f 00 00       	call   0x10007a7a
10004a7f:	83 c4 14             	add    esp,0x14
10004a82:	8d 45 f8             	lea    eax,[ebp-0x8]
10004a85:	50                   	push   eax
10004a86:	e8 7b 10 00 00       	call   0x10005b06
10004a8b:	85 c0                	test   eax,eax
10004a8d:	59                   	pop    ecx
10004a8e:	74 0d                	je     0x10004a9d
10004a90:	56                   	push   esi
10004a91:	56                   	push   esi
10004a92:	56                   	push   esi
10004a93:	56                   	push   esi
10004a94:	56                   	push   esi
10004a95:	e8 e0 2f 00 00       	call   0x10007a7a
10004a9a:	83 c4 14             	add    esp,0x14
10004a9d:	83 7d fc 02          	cmp    DWORD PTR [ebp-0x4],0x2
10004aa1:	5e                   	pop    esi
10004aa2:	75 0b                	jne    0x10004aaf
10004aa4:	83 7d f8 05          	cmp    DWORD PTR [ebp-0x8],0x5
10004aa8:	72 05                	jb     0x10004aaf
10004aaa:	33 c0                	xor    eax,eax
10004aac:	40                   	inc    eax
10004aad:	c9                   	leave  
10004aae:	c3                   	ret    
10004aaf:	6a 03                	push   0x3
10004ab1:	58                   	pop    eax
10004ab2:	c9                   	leave  
10004ab3:	c3                   	ret    
10004ab4:	33 c0                	xor    eax,eax
10004ab6:	39 44 24 04          	cmp    DWORD PTR [esp+0x4],eax
10004aba:	6a 00                	push   0x0
10004abc:	0f 94 c0             	sete   al
10004abf:	68 00 10 00 00       	push   0x1000
10004ac4:	50                   	push   eax
10004ac5:	ff 15 58 d0 00 10    	call   DWORD PTR ds:0x1000d058
10004acb:	85 c0                	test   eax,eax
10004acd:	a3 4c 52 01 10       	mov    ds:0x1001524c,eax
10004ad2:	75 03                	jne    0x10004ad7
10004ad4:	33 c0                	xor    eax,eax
10004ad6:	c3                   	ret    
10004ad7:	e8 7d ff ff ff       	call   0x10004a59
10004adc:	83 f8 03             	cmp    eax,0x3
10004adf:	a3 f0 5d 01 10       	mov    ds:0x10015df0,eax
10004ae4:	75 24                	jne    0x10004b0a
10004ae6:	68 f8 03 00 00       	push   0x3f8
10004aeb:	e8 39 02 00 00       	call   0x10004d29
10004af0:	85 c0                	test   eax,eax
10004af2:	59                   	pop    ecx
10004af3:	75 15                	jne    0x10004b0a
10004af5:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004afb:	ff 15 54 d0 00 10    	call   DWORD PTR ds:0x1000d054
10004b01:	83 25 4c 52 01 10 00 	and    DWORD PTR ds:0x1001524c,0x0
10004b08:	eb ca                	jmp    0x10004ad4
10004b0a:	33 c0                	xor    eax,eax
10004b0c:	40                   	inc    eax
10004b0d:	c3                   	ret    
10004b0e:	55                   	push   ebp
10004b0f:	33 ed                	xor    ebp,ebp
10004b11:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
10004b18:	75 54                	jne    0x10004b6e
10004b1a:	53                   	push   ebx
10004b1b:	8b 1d 34 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d034
10004b21:	57                   	push   edi
10004b22:	33 ff                	xor    edi,edi
10004b24:	39 2d d8 5d 01 10    	cmp    DWORD PTR ds:0x10015dd8,ebp
10004b2a:	7e 31                	jle    0x10004b5d
10004b2c:	56                   	push   esi
10004b2d:	8b 35 dc 5d 01 10    	mov    esi,DWORD PTR ds:0x10015ddc
10004b33:	83 c6 10             	add    esi,0x10
10004b36:	68 00 80 00 00       	push   0x8000
10004b3b:	55                   	push   ebp
10004b3c:	ff 76 fc             	push   DWORD PTR [esi-0x4]
10004b3f:	ff 15 04 d0 00 10    	call   DWORD PTR ds:0x1000d004
10004b45:	ff 36                	push   DWORD PTR [esi]
10004b47:	55                   	push   ebp
10004b48:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004b4e:	ff d3                	call   ebx
10004b50:	83 c6 14             	add    esi,0x14
10004b53:	47                   	inc    edi
10004b54:	3b 3d d8 5d 01 10    	cmp    edi,DWORD PTR ds:0x10015dd8
10004b5a:	7c da                	jl     0x10004b36
10004b5c:	5e                   	pop    esi
10004b5d:	ff 35 dc 5d 01 10    	push   DWORD PTR ds:0x10015ddc
10004b63:	55                   	push   ebp
10004b64:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004b6a:	ff d3                	call   ebx
10004b6c:	5f                   	pop    edi
10004b6d:	5b                   	pop    ebx
10004b6e:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004b74:	ff 15 54 d0 00 10    	call   DWORD PTR ds:0x1000d054
10004b7a:	89 2d 4c 52 01 10    	mov    DWORD PTR ds:0x1001524c,ebp
10004b80:	5d                   	pop    ebp
10004b81:	c3                   	ret    
10004b82:	56                   	push   esi
10004b83:	57                   	push   edi
10004b84:	33 f6                	xor    esi,esi
10004b86:	bf 50 52 01 10       	mov    edi,0x10015250
10004b8b:	83 3c f5 bc 01 01 10 	cmp    DWORD PTR [esi*8+0x100101bc],0x1
10004b92:	01 
10004b93:	75 1e                	jne    0x10004bb3
10004b95:	8d 04 f5 b8 01 01 10 	lea    eax,[esi*8+0x100101b8]
10004b9c:	89 38                	mov    DWORD PTR [eax],edi
10004b9e:	68 a0 0f 00 00       	push   0xfa0
10004ba3:	ff 30                	push   DWORD PTR [eax]
10004ba5:	83 c7 18             	add    edi,0x18
10004ba8:	e8 2c 3c 00 00       	call   0x100087d9
10004bad:	85 c0                	test   eax,eax
10004baf:	59                   	pop    ecx
10004bb0:	59                   	pop    ecx
10004bb1:	74 0c                	je     0x10004bbf
10004bb3:	46                   	inc    esi
10004bb4:	83 fe 24             	cmp    esi,0x24
10004bb7:	7c d2                	jl     0x10004b8b
10004bb9:	33 c0                	xor    eax,eax
10004bbb:	40                   	inc    eax
10004bbc:	5f                   	pop    edi
10004bbd:	5e                   	pop    esi
10004bbe:	c3                   	ret    
10004bbf:	83 24 f5 b8 01 01 10 	and    DWORD PTR [esi*8+0x100101b8],0x0
10004bc6:	00 
10004bc7:	33 c0                	xor    eax,eax
10004bc9:	eb f1                	jmp    0x10004bbc
10004bcb:	53                   	push   ebx
10004bcc:	8b 1d 5c d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d05c
10004bd2:	56                   	push   esi
10004bd3:	be b8 01 01 10       	mov    esi,0x100101b8
10004bd8:	57                   	push   edi
10004bd9:	8b 3e                	mov    edi,DWORD PTR [esi]
10004bdb:	85 ff                	test   edi,edi
10004bdd:	74 13                	je     0x10004bf2
10004bdf:	83 7e 04 01          	cmp    DWORD PTR [esi+0x4],0x1
10004be3:	74 0d                	je     0x10004bf2
10004be5:	57                   	push   edi
10004be6:	ff d3                	call   ebx
10004be8:	57                   	push   edi
10004be9:	e8 8d ed ff ff       	call   0x1000397b
10004bee:	83 26 00             	and    DWORD PTR [esi],0x0
10004bf1:	59                   	pop    ecx
10004bf2:	83 c6 08             	add    esi,0x8
10004bf5:	81 fe d8 02 01 10    	cmp    esi,0x100102d8
10004bfb:	7c dc                	jl     0x10004bd9
10004bfd:	be b8 01 01 10       	mov    esi,0x100101b8
10004c02:	5f                   	pop    edi
10004c03:	8b 06                	mov    eax,DWORD PTR [esi]
10004c05:	85 c0                	test   eax,eax
10004c07:	74 09                	je     0x10004c12
10004c09:	83 7e 04 01          	cmp    DWORD PTR [esi+0x4],0x1
10004c0d:	75 03                	jne    0x10004c12
10004c0f:	50                   	push   eax
10004c10:	ff d3                	call   ebx
10004c12:	83 c6 08             	add    esi,0x8
10004c15:	81 fe d8 02 01 10    	cmp    esi,0x100102d8
10004c1b:	7c e6                	jl     0x10004c03
10004c1d:	5e                   	pop    esi
10004c1e:	5b                   	pop    ebx
10004c1f:	c3                   	ret    
10004c20:	55                   	push   ebp
10004c21:	8b ec                	mov    ebp,esp
10004c23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10004c26:	ff 34 c5 b8 01 01 10 	push   DWORD PTR [eax*8+0x100101b8]
10004c2d:	ff 15 60 d0 00 10    	call   DWORD PTR ds:0x1000d060
10004c33:	5d                   	pop    ebp
10004c34:	c3                   	ret    
10004c35:	6a 0c                	push   0xc
10004c37:	68 20 e4 00 10       	push   0x1000e420
10004c3c:	e8 e7 0b 00 00       	call   0x10005828
10004c41:	33 ff                	xor    edi,edi
10004c43:	47                   	inc    edi
10004c44:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
10004c47:	33 db                	xor    ebx,ebx
10004c49:	39 1d 4c 52 01 10    	cmp    DWORD PTR ds:0x1001524c,ebx
10004c4f:	75 18                	jne    0x10004c69
10004c51:	e8 6c 12 00 00       	call   0x10005ec2
10004c56:	6a 1e                	push   0x1e
10004c58:	e8 c5 10 00 00       	call   0x10005d22
10004c5d:	68 ff 00 00 00       	push   0xff
10004c62:	e8 09 0e 00 00       	call   0x10005a70
10004c67:	59                   	pop    ecx
10004c68:	59                   	pop    ecx
10004c69:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10004c6c:	8d 34 f5 b8 01 01 10 	lea    esi,[esi*8+0x100101b8]
10004c73:	39 1e                	cmp    DWORD PTR [esi],ebx
10004c75:	74 04                	je     0x10004c7b
10004c77:	8b c7                	mov    eax,edi
10004c79:	eb 6e                	jmp    0x10004ce9
10004c7b:	6a 18                	push   0x18
10004c7d:	e8 ce 19 00 00       	call   0x10006650
10004c82:	59                   	pop    ecx
10004c83:	8b f8                	mov    edi,eax
10004c85:	3b fb                	cmp    edi,ebx
10004c87:	75 0f                	jne    0x10004c98
10004c89:	e8 b8 fd ff ff       	call   0x10004a46
10004c8e:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
10004c94:	33 c0                	xor    eax,eax
10004c96:	eb 51                	jmp    0x10004ce9
10004c98:	6a 0a                	push   0xa
10004c9a:	e8 59 00 00 00       	call   0x10004cf8
10004c9f:	59                   	pop    ecx
10004ca0:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10004ca3:	39 1e                	cmp    DWORD PTR [esi],ebx
10004ca5:	75 2c                	jne    0x10004cd3
10004ca7:	68 a0 0f 00 00       	push   0xfa0
10004cac:	57                   	push   edi
10004cad:	e8 27 3b 00 00       	call   0x100087d9
10004cb2:	59                   	pop    ecx
10004cb3:	59                   	pop    ecx
10004cb4:	85 c0                	test   eax,eax
10004cb6:	75 17                	jne    0x10004ccf
10004cb8:	57                   	push   edi
10004cb9:	e8 bd ec ff ff       	call   0x1000397b
10004cbe:	59                   	pop    ecx
10004cbf:	e8 82 fd ff ff       	call   0x10004a46
10004cc4:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
10004cca:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
10004ccd:	eb 0b                	jmp    0x10004cda
10004ccf:	89 3e                	mov    DWORD PTR [esi],edi
10004cd1:	eb 07                	jmp    0x10004cda
10004cd3:	57                   	push   edi
10004cd4:	e8 a2 ec ff ff       	call   0x1000397b
10004cd9:	59                   	pop    ecx
10004cda:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10004ce1:	e8 09 00 00 00       	call   0x10004cef
10004ce6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10004ce9:	e8 7f 0b 00 00       	call   0x1000586d
10004cee:	c3                   	ret    
10004cef:	6a 0a                	push   0xa
10004cf1:	e8 2a ff ff ff       	call   0x10004c20
10004cf6:	59                   	pop    ecx
10004cf7:	c3                   	ret    
10004cf8:	55                   	push   ebp
10004cf9:	8b ec                	mov    ebp,esp
10004cfb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10004cfe:	56                   	push   esi
10004cff:	8d 34 c5 b8 01 01 10 	lea    esi,[eax*8+0x100101b8]
10004d06:	83 3e 00             	cmp    DWORD PTR [esi],0x0
10004d09:	75 13                	jne    0x10004d1e
10004d0b:	50                   	push   eax
10004d0c:	e8 24 ff ff ff       	call   0x10004c35
10004d11:	85 c0                	test   eax,eax
10004d13:	59                   	pop    ecx
10004d14:	75 08                	jne    0x10004d1e
10004d16:	6a 11                	push   0x11
10004d18:	e8 09 0d 00 00       	call   0x10005a26
10004d1d:	59                   	pop    ecx
10004d1e:	ff 36                	push   DWORD PTR [esi]
10004d20:	ff 15 64 d0 00 10    	call   DWORD PTR ds:0x1000d064
10004d26:	5e                   	pop    esi
10004d27:	5d                   	pop    ebp
10004d28:	c3                   	ret    
10004d29:	68 40 01 00 00       	push   0x140
10004d2e:	6a 00                	push   0x0
10004d30:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004d36:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10004d3c:	85 c0                	test   eax,eax
10004d3e:	a3 dc 5d 01 10       	mov    ds:0x10015ddc,eax
10004d43:	75 01                	jne    0x10004d46
10004d45:	c3                   	ret    
10004d46:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10004d4a:	83 25 a0 53 01 10 00 	and    DWORD PTR ds:0x100153a0,0x0
10004d51:	83 25 d8 5d 01 10 00 	and    DWORD PTR ds:0x10015dd8,0x0
10004d58:	a3 e4 5d 01 10       	mov    ds:0x10015de4,eax
10004d5d:	33 c0                	xor    eax,eax
10004d5f:	89 0d e0 5d 01 10    	mov    DWORD PTR ds:0x10015de0,ecx
10004d65:	c7 05 e8 5d 01 10 10 	mov    DWORD PTR ds:0x10015de8,0x10
10004d6c:	00 00 00 
10004d6f:	40                   	inc    eax
10004d70:	c3                   	ret    
10004d71:	8b 0d d8 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dd8
10004d77:	a1 dc 5d 01 10       	mov    eax,ds:0x10015ddc
10004d7c:	6b c9 14             	imul   ecx,ecx,0x14
10004d7f:	03 c8                	add    ecx,eax
10004d81:	eb 12                	jmp    0x10004d95
10004d83:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10004d87:	2b 50 0c             	sub    edx,DWORD PTR [eax+0xc]
10004d8a:	81 fa 00 00 10 00    	cmp    edx,0x100000
10004d90:	72 09                	jb     0x10004d9b
10004d92:	83 c0 14             	add    eax,0x14
10004d95:	3b c1                	cmp    eax,ecx
10004d97:	72 ea                	jb     0x10004d83
10004d99:	33 c0                	xor    eax,eax
10004d9b:	c3                   	ret    
10004d9c:	55                   	push   ebp
10004d9d:	8b ec                	mov    ebp,esp
10004d9f:	83 ec 10             	sub    esp,0x10
10004da2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004da5:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
10004da8:	56                   	push   esi
10004da9:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10004dac:	57                   	push   edi
10004dad:	8b fe                	mov    edi,esi
10004daf:	2b 79 0c             	sub    edi,DWORD PTR [ecx+0xc]
10004db2:	83 c6 fc             	add    esi,0xfffffffc
10004db5:	c1 ef 0f             	shr    edi,0xf
10004db8:	8b cf                	mov    ecx,edi
10004dba:	69 c9 04 02 00 00    	imul   ecx,ecx,0x204
10004dc0:	8d 8c 01 44 01 00 00 	lea    ecx,[ecx+eax*1+0x144]
10004dc7:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
10004dca:	8b 0e                	mov    ecx,DWORD PTR [esi]
10004dcc:	49                   	dec    ecx
10004dcd:	f6 c1 01             	test   cl,0x1
10004dd0:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
10004dd3:	0f 85 d3 02 00 00    	jne    0x100050ac
10004dd9:	53                   	push   ebx
10004dda:	8d 1c 31             	lea    ebx,[ecx+esi*1]
10004ddd:	8b 13                	mov    edx,DWORD PTR [ebx]
10004ddf:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
10004de2:	8b 56 fc             	mov    edx,DWORD PTR [esi-0x4]
10004de5:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
10004de8:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
10004deb:	f6 c2 01             	test   dl,0x1
10004dee:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
10004df1:	75 74                	jne    0x10004e67
10004df3:	c1 fa 04             	sar    edx,0x4
10004df6:	4a                   	dec    edx
10004df7:	83 fa 3f             	cmp    edx,0x3f
10004dfa:	76 03                	jbe    0x10004dff
10004dfc:	6a 3f                	push   0x3f
10004dfe:	5a                   	pop    edx
10004dff:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
10004e02:	3b 4b 08             	cmp    ecx,DWORD PTR [ebx+0x8]
10004e05:	75 42                	jne    0x10004e49
10004e07:	83 fa 20             	cmp    edx,0x20
10004e0a:	bb 00 00 00 80       	mov    ebx,0x80000000
10004e0f:	73 19                	jae    0x10004e2a
10004e11:	8b ca                	mov    ecx,edx
10004e13:	d3 eb                	shr    ebx,cl
10004e15:	8d 4c 02 04          	lea    ecx,[edx+eax*1+0x4]
10004e19:	f7 d3                	not    ebx
10004e1b:	21 5c b8 44          	and    DWORD PTR [eax+edi*4+0x44],ebx
10004e1f:	fe 09                	dec    BYTE PTR [ecx]
10004e21:	75 23                	jne    0x10004e46
10004e23:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004e26:	21 19                	and    DWORD PTR [ecx],ebx
10004e28:	eb 1c                	jmp    0x10004e46
10004e2a:	8d 4a e0             	lea    ecx,[edx-0x20]
10004e2d:	d3 eb                	shr    ebx,cl
10004e2f:	8d 4c 02 04          	lea    ecx,[edx+eax*1+0x4]
10004e33:	f7 d3                	not    ebx
10004e35:	21 9c b8 c4 00 00 00 	and    DWORD PTR [eax+edi*4+0xc4],ebx
10004e3c:	fe 09                	dec    BYTE PTR [ecx]
10004e3e:	75 06                	jne    0x10004e46
10004e40:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004e43:	21 59 04             	and    DWORD PTR [ecx+0x4],ebx
10004e46:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
10004e49:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
10004e4c:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
10004e4f:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004e52:	03 4d f4             	add    ecx,DWORD PTR [ebp-0xc]
10004e55:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
10004e58:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10004e5b:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
10004e5e:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
10004e61:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
10004e64:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
10004e67:	8b d1                	mov    edx,ecx
10004e69:	c1 fa 04             	sar    edx,0x4
10004e6c:	4a                   	dec    edx
10004e6d:	83 fa 3f             	cmp    edx,0x3f
10004e70:	76 03                	jbe    0x10004e75
10004e72:	6a 3f                	push   0x3f
10004e74:	5a                   	pop    edx
10004e75:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
10004e78:	83 e3 01             	and    ebx,0x1
10004e7b:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10004e7e:	0f 85 8f 00 00 00    	jne    0x10004f13
10004e84:	2b 75 f8             	sub    esi,DWORD PTR [ebp-0x8]
10004e87:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
10004e8a:	c1 fb 04             	sar    ebx,0x4
10004e8d:	6a 3f                	push   0x3f
10004e8f:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
10004e92:	4b                   	dec    ebx
10004e93:	5e                   	pop    esi
10004e94:	3b de                	cmp    ebx,esi
10004e96:	76 02                	jbe    0x10004e9a
10004e98:	8b de                	mov    ebx,esi
10004e9a:	03 4d f8             	add    ecx,DWORD PTR [ebp-0x8]
10004e9d:	8b d1                	mov    edx,ecx
10004e9f:	c1 fa 04             	sar    edx,0x4
10004ea2:	4a                   	dec    edx
10004ea3:	3b d6                	cmp    edx,esi
10004ea5:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
10004ea8:	76 02                	jbe    0x10004eac
10004eaa:	8b d6                	mov    edx,esi
10004eac:	3b da                	cmp    ebx,edx
10004eae:	74 5e                	je     0x10004f0e
10004eb0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10004eb3:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
10004eb6:	3b 71 08             	cmp    esi,DWORD PTR [ecx+0x8]
10004eb9:	75 3b                	jne    0x10004ef6
10004ebb:	83 fb 20             	cmp    ebx,0x20
10004ebe:	be 00 00 00 80       	mov    esi,0x80000000
10004ec3:	73 17                	jae    0x10004edc
10004ec5:	8b cb                	mov    ecx,ebx
10004ec7:	d3 ee                	shr    esi,cl
10004ec9:	f7 d6                	not    esi
10004ecb:	21 74 b8 44          	and    DWORD PTR [eax+edi*4+0x44],esi
10004ecf:	fe 4c 03 04          	dec    BYTE PTR [ebx+eax*1+0x4]
10004ed3:	75 21                	jne    0x10004ef6
10004ed5:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004ed8:	21 31                	and    DWORD PTR [ecx],esi
10004eda:	eb 1a                	jmp    0x10004ef6
10004edc:	8d 4b e0             	lea    ecx,[ebx-0x20]
10004edf:	d3 ee                	shr    esi,cl
10004ee1:	f7 d6                	not    esi
10004ee3:	21 b4 b8 c4 00 00 00 	and    DWORD PTR [eax+edi*4+0xc4],esi
10004eea:	fe 4c 03 04          	dec    BYTE PTR [ebx+eax*1+0x4]
10004eee:	75 06                	jne    0x10004ef6
10004ef0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004ef3:	21 71 04             	and    DWORD PTR [ecx+0x4],esi
10004ef6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10004ef9:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
10004efc:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
10004eff:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
10004f02:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10004f05:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
10004f08:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
10004f0b:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
10004f0e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10004f11:	eb 03                	jmp    0x10004f16
10004f13:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10004f16:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
10004f1a:	75 08                	jne    0x10004f24
10004f1c:	3b da                	cmp    ebx,edx
10004f1e:	0f 84 80 00 00 00    	je     0x10004fa4
10004f24:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10004f27:	8d 0c d1             	lea    ecx,[ecx+edx*8]
10004f2a:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
10004f2d:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
10004f30:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
10004f33:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
10004f36:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
10004f39:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
10004f3c:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
10004f3f:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
10004f42:	75 60                	jne    0x10004fa4
10004f44:	8a 4c 02 04          	mov    cl,BYTE PTR [edx+eax*1+0x4]
10004f48:	88 4d 0f             	mov    BYTE PTR [ebp+0xf],cl
10004f4b:	fe c1                	inc    cl
10004f4d:	83 fa 20             	cmp    edx,0x20
10004f50:	88 4c 02 04          	mov    BYTE PTR [edx+eax*1+0x4],cl
10004f54:	73 25                	jae    0x10004f7b
10004f56:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
10004f5a:	75 0e                	jne    0x10004f6a
10004f5c:	8b ca                	mov    ecx,edx
10004f5e:	bb 00 00 00 80       	mov    ebx,0x80000000
10004f63:	d3 eb                	shr    ebx,cl
10004f65:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004f68:	09 19                	or     DWORD PTR [ecx],ebx
10004f6a:	bb 00 00 00 80       	mov    ebx,0x80000000
10004f6f:	8b ca                	mov    ecx,edx
10004f71:	d3 eb                	shr    ebx,cl
10004f73:	8d 44 b8 44          	lea    eax,[eax+edi*4+0x44]
10004f77:	09 18                	or     DWORD PTR [eax],ebx
10004f79:	eb 29                	jmp    0x10004fa4
10004f7b:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
10004f7f:	75 10                	jne    0x10004f91
10004f81:	8d 4a e0             	lea    ecx,[edx-0x20]
10004f84:	bb 00 00 00 80       	mov    ebx,0x80000000
10004f89:	d3 eb                	shr    ebx,cl
10004f8b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004f8e:	09 59 04             	or     DWORD PTR [ecx+0x4],ebx
10004f91:	8d 4a e0             	lea    ecx,[edx-0x20]
10004f94:	ba 00 00 00 80       	mov    edx,0x80000000
10004f99:	d3 ea                	shr    edx,cl
10004f9b:	8d 84 b8 c4 00 00 00 	lea    eax,[eax+edi*4+0xc4]
10004fa2:	09 10                	or     DWORD PTR [eax],edx
10004fa4:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
10004fa7:	89 06                	mov    DWORD PTR [esi],eax
10004fa9:	89 44 30 fc          	mov    DWORD PTR [eax+esi*1-0x4],eax
10004fad:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10004fb0:	ff 08                	dec    DWORD PTR [eax]
10004fb2:	0f 85 f3 00 00 00    	jne    0x100050ab
10004fb8:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10004fbd:	85 c0                	test   eax,eax
10004fbf:	0f 84 d8 00 00 00    	je     0x1000509d
10004fc5:	8b 0d ec 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dec
10004fcb:	8b 35 04 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d004
10004fd1:	68 00 40 00 00       	push   0x4000
10004fd6:	c1 e1 0f             	shl    ecx,0xf
10004fd9:	03 48 0c             	add    ecx,DWORD PTR [eax+0xc]
10004fdc:	bb 00 80 00 00       	mov    ebx,0x8000
10004fe1:	53                   	push   ebx
10004fe2:	51                   	push   ecx
10004fe3:	ff d6                	call   esi
10004fe5:	8b 0d ec 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dec
10004feb:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10004ff0:	ba 00 00 00 80       	mov    edx,0x80000000
10004ff5:	d3 ea                	shr    edx,cl
10004ff7:	09 50 08             	or     DWORD PTR [eax+0x8],edx
10004ffa:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10004fff:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
10005002:	8b 0d ec 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dec
10005008:	83 a4 88 c4 00 00 00 	and    DWORD PTR [eax+ecx*4+0xc4],0x0
1000500f:	00 
10005010:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005015:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
10005018:	fe 48 43             	dec    BYTE PTR [eax+0x43]
1000501b:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005020:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
10005023:	80 79 43 00          	cmp    BYTE PTR [ecx+0x43],0x0
10005027:	75 09                	jne    0x10005032
10005029:	83 60 04 fe          	and    DWORD PTR [eax+0x4],0xfffffffe
1000502d:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005032:	83 78 08 ff          	cmp    DWORD PTR [eax+0x8],0xffffffff
10005036:	75 65                	jne    0x1000509d
10005038:	53                   	push   ebx
10005039:	6a 00                	push   0x0
1000503b:	ff 70 0c             	push   DWORD PTR [eax+0xc]
1000503e:	ff d6                	call   esi
10005040:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005045:	ff 70 10             	push   DWORD PTR [eax+0x10]
10005048:	6a 00                	push   0x0
1000504a:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10005050:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10005056:	8b 0d d8 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dd8
1000505c:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005061:	6b c9 14             	imul   ecx,ecx,0x14
10005064:	8b 15 dc 5d 01 10    	mov    edx,DWORD PTR ds:0x10015ddc
1000506a:	2b c8                	sub    ecx,eax
1000506c:	8d 4c 11 ec          	lea    ecx,[ecx+edx*1-0x14]
10005070:	51                   	push   ecx
10005071:	8d 48 14             	lea    ecx,[eax+0x14]
10005074:	51                   	push   ecx
10005075:	50                   	push   eax
10005076:	e8 25 2e 00 00       	call   0x10007ea0
1000507b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000507e:	83 c4 0c             	add    esp,0xc
10005081:	ff 0d d8 5d 01 10    	dec    DWORD PTR ds:0x10015dd8
10005087:	3b 05 a0 53 01 10    	cmp    eax,DWORD PTR ds:0x100153a0
1000508d:	76 04                	jbe    0x10005093
1000508f:	83 6d 08 14          	sub    DWORD PTR [ebp+0x8],0x14
10005093:	a1 dc 5d 01 10       	mov    eax,ds:0x10015ddc
10005098:	a3 e4 5d 01 10       	mov    ds:0x10015de4,eax
1000509d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100050a0:	a3 a0 53 01 10       	mov    ds:0x100153a0,eax
100050a5:	89 3d ec 5d 01 10    	mov    DWORD PTR ds:0x10015dec,edi
100050ab:	5b                   	pop    ebx
100050ac:	5f                   	pop    edi
100050ad:	5e                   	pop    esi
100050ae:	c9                   	leave  
100050af:	c3                   	ret    
100050b0:	a1 e8 5d 01 10       	mov    eax,ds:0x10015de8
100050b5:	56                   	push   esi
100050b6:	8b 35 d8 5d 01 10    	mov    esi,DWORD PTR ds:0x10015dd8
100050bc:	57                   	push   edi
100050bd:	33 ff                	xor    edi,edi
100050bf:	3b f0                	cmp    esi,eax
100050c1:	75 34                	jne    0x100050f7
100050c3:	83 c0 10             	add    eax,0x10
100050c6:	6b c0 14             	imul   eax,eax,0x14
100050c9:	50                   	push   eax
100050ca:	ff 35 dc 5d 01 10    	push   DWORD PTR ds:0x10015ddc
100050d0:	57                   	push   edi
100050d1:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
100050d7:	ff 15 68 d0 00 10    	call   DWORD PTR ds:0x1000d068
100050dd:	3b c7                	cmp    eax,edi
100050df:	75 04                	jne    0x100050e5
100050e1:	33 c0                	xor    eax,eax
100050e3:	eb 78                	jmp    0x1000515d
100050e5:	83 05 e8 5d 01 10 10 	add    DWORD PTR ds:0x10015de8,0x10
100050ec:	8b 35 d8 5d 01 10    	mov    esi,DWORD PTR ds:0x10015dd8
100050f2:	a3 dc 5d 01 10       	mov    ds:0x10015ddc,eax
100050f7:	6b f6 14             	imul   esi,esi,0x14
100050fa:	03 35 dc 5d 01 10    	add    esi,DWORD PTR ds:0x10015ddc
10005100:	68 c4 41 00 00       	push   0x41c4
10005105:	6a 08                	push   0x8
10005107:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
1000510d:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10005113:	3b c7                	cmp    eax,edi
10005115:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
10005118:	74 c7                	je     0x100050e1
1000511a:	6a 04                	push   0x4
1000511c:	68 00 20 00 00       	push   0x2000
10005121:	68 00 00 10 00       	push   0x100000
10005126:	57                   	push   edi
10005127:	ff 15 08 d0 00 10    	call   DWORD PTR ds:0x1000d008
1000512d:	3b c7                	cmp    eax,edi
1000512f:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
10005132:	75 12                	jne    0x10005146
10005134:	ff 76 10             	push   DWORD PTR [esi+0x10]
10005137:	57                   	push   edi
10005138:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
1000513e:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10005144:	eb 9b                	jmp    0x100050e1
10005146:	83 4e 08 ff          	or     DWORD PTR [esi+0x8],0xffffffff
1000514a:	89 3e                	mov    DWORD PTR [esi],edi
1000514c:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
1000514f:	ff 05 d8 5d 01 10    	inc    DWORD PTR ds:0x10015dd8
10005155:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
10005158:	83 08 ff             	or     DWORD PTR [eax],0xffffffff
1000515b:	8b c6                	mov    eax,esi
1000515d:	5f                   	pop    edi
1000515e:	5e                   	pop    esi
1000515f:	c3                   	ret    
10005160:	55                   	push   ebp
10005161:	8b ec                	mov    ebp,esp
10005163:	51                   	push   ecx
10005164:	51                   	push   ecx
10005165:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005168:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
1000516b:	53                   	push   ebx
1000516c:	56                   	push   esi
1000516d:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
10005170:	57                   	push   edi
10005171:	33 db                	xor    ebx,ebx
10005173:	eb 03                	jmp    0x10005178
10005175:	03 c0                	add    eax,eax
10005177:	43                   	inc    ebx
10005178:	85 c0                	test   eax,eax
1000517a:	7d f9                	jge    0x10005175
1000517c:	8b c3                	mov    eax,ebx
1000517e:	69 c0 04 02 00 00    	imul   eax,eax,0x204
10005184:	8d 84 30 44 01 00 00 	lea    eax,[eax+esi*1+0x144]
1000518b:	6a 3f                	push   0x3f
1000518d:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10005190:	5a                   	pop    edx
10005191:	89 40 08             	mov    DWORD PTR [eax+0x8],eax
10005194:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
10005197:	83 c0 08             	add    eax,0x8
1000519a:	4a                   	dec    edx
1000519b:	75 f4                	jne    0x10005191
1000519d:	6a 04                	push   0x4
1000519f:	8b fb                	mov    edi,ebx
100051a1:	68 00 10 00 00       	push   0x1000
100051a6:	c1 e7 0f             	shl    edi,0xf
100051a9:	03 79 0c             	add    edi,DWORD PTR [ecx+0xc]
100051ac:	68 00 80 00 00       	push   0x8000
100051b1:	57                   	push   edi
100051b2:	ff 15 08 d0 00 10    	call   DWORD PTR ds:0x1000d008
100051b8:	85 c0                	test   eax,eax
100051ba:	75 08                	jne    0x100051c4
100051bc:	83 c8 ff             	or     eax,0xffffffff
100051bf:	e9 9d 00 00 00       	jmp    0x10005261
100051c4:	8d 97 00 70 00 00    	lea    edx,[edi+0x7000]
100051ca:	3b fa                	cmp    edi,edx
100051cc:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
100051cf:	77 43                	ja     0x10005214
100051d1:	8b ca                	mov    ecx,edx
100051d3:	2b cf                	sub    ecx,edi
100051d5:	c1 e9 0c             	shr    ecx,0xc
100051d8:	8d 47 10             	lea    eax,[edi+0x10]
100051db:	41                   	inc    ecx
100051dc:	83 48 f8 ff          	or     DWORD PTR [eax-0x8],0xffffffff
100051e0:	83 88 ec 0f 00 00 ff 	or     DWORD PTR [eax+0xfec],0xffffffff
100051e7:	8d 90 fc 0f 00 00    	lea    edx,[eax+0xffc]
100051ed:	89 10                	mov    DWORD PTR [eax],edx
100051ef:	8d 90 fc ef ff ff    	lea    edx,[eax-0x1004]
100051f5:	c7 40 fc f0 0f 00 00 	mov    DWORD PTR [eax-0x4],0xff0
100051fc:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
100051ff:	c7 80 e8 0f 00 00 f0 	mov    DWORD PTR [eax+0xfe8],0xff0
10005206:	0f 00 00 
10005209:	05 00 10 00 00       	add    eax,0x1000
1000520e:	49                   	dec    ecx
1000520f:	75 cb                	jne    0x100051dc
10005211:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
10005214:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10005217:	05 f8 01 00 00       	add    eax,0x1f8
1000521c:	8d 4f 0c             	lea    ecx,[edi+0xc]
1000521f:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
10005222:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
10005225:	8d 4a 0c             	lea    ecx,[edx+0xc]
10005228:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000522b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
1000522e:	83 64 9e 44 00       	and    DWORD PTR [esi+ebx*4+0x44],0x0
10005233:	33 ff                	xor    edi,edi
10005235:	47                   	inc    edi
10005236:	89 bc 9e c4 00 00 00 	mov    DWORD PTR [esi+ebx*4+0xc4],edi
1000523d:	8a 46 43             	mov    al,BYTE PTR [esi+0x43]
10005240:	8a c8                	mov    cl,al
10005242:	fe c1                	inc    cl
10005244:	84 c0                	test   al,al
10005246:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10005249:	88 4e 43             	mov    BYTE PTR [esi+0x43],cl
1000524c:	75 03                	jne    0x10005251
1000524e:	09 78 04             	or     DWORD PTR [eax+0x4],edi
10005251:	ba 00 00 00 80       	mov    edx,0x80000000
10005256:	8b cb                	mov    ecx,ebx
10005258:	d3 ea                	shr    edx,cl
1000525a:	f7 d2                	not    edx
1000525c:	21 50 08             	and    DWORD PTR [eax+0x8],edx
1000525f:	8b c3                	mov    eax,ebx
10005261:	5f                   	pop    edi
10005262:	5e                   	pop    esi
10005263:	5b                   	pop    ebx
10005264:	c9                   	leave  
10005265:	c3                   	ret    
10005266:	55                   	push   ebp
10005267:	8b ec                	mov    ebp,esp
10005269:	83 ec 0c             	sub    esp,0xc
1000526c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000526f:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
10005272:	53                   	push   ebx
10005273:	56                   	push   esi
10005274:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
10005277:	57                   	push   edi
10005278:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000527b:	8b d7                	mov    edx,edi
1000527d:	2b 51 0c             	sub    edx,DWORD PTR [ecx+0xc]
10005280:	83 c6 17             	add    esi,0x17
10005283:	c1 ea 0f             	shr    edx,0xf
10005286:	8b ca                	mov    ecx,edx
10005288:	69 c9 04 02 00 00    	imul   ecx,ecx,0x204
1000528e:	8d 8c 01 44 01 00 00 	lea    ecx,[ecx+eax*1+0x144]
10005295:	89 4d f4             	mov    DWORD PTR [ebp-0xc],ecx
10005298:	8b 4f fc             	mov    ecx,DWORD PTR [edi-0x4]
1000529b:	83 e6 f0             	and    esi,0xfffffff0
1000529e:	49                   	dec    ecx
1000529f:	3b f1                	cmp    esi,ecx
100052a1:	8d 7c 39 fc          	lea    edi,[ecx+edi*1-0x4]
100052a5:	8b 1f                	mov    ebx,DWORD PTR [edi]
100052a7:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
100052aa:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
100052ad:	0f 8e 55 01 00 00    	jle    0x10005408
100052b3:	f6 c3 01             	test   bl,0x1
100052b6:	0f 85 45 01 00 00    	jne    0x10005401
100052bc:	03 d9                	add    ebx,ecx
100052be:	3b f3                	cmp    esi,ebx
100052c0:	0f 8f 3b 01 00 00    	jg     0x10005401
100052c6:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100052c9:	c1 f9 04             	sar    ecx,0x4
100052cc:	49                   	dec    ecx
100052cd:	83 f9 3f             	cmp    ecx,0x3f
100052d0:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100052d3:	76 06                	jbe    0x100052db
100052d5:	6a 3f                	push   0x3f
100052d7:	59                   	pop    ecx
100052d8:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100052db:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
100052de:	3b 5f 08             	cmp    ebx,DWORD PTR [edi+0x8]
100052e1:	75 43                	jne    0x10005326
100052e3:	83 f9 20             	cmp    ecx,0x20
100052e6:	bb 00 00 00 80       	mov    ebx,0x80000000
100052eb:	73 1a                	jae    0x10005307
100052ed:	d3 eb                	shr    ebx,cl
100052ef:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
100052f2:	8d 4c 01 04          	lea    ecx,[ecx+eax*1+0x4]
100052f6:	f7 d3                	not    ebx
100052f8:	21 5c 90 44          	and    DWORD PTR [eax+edx*4+0x44],ebx
100052fc:	fe 09                	dec    BYTE PTR [ecx]
100052fe:	75 26                	jne    0x10005326
10005300:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005303:	21 19                	and    DWORD PTR [ecx],ebx
10005305:	eb 1f                	jmp    0x10005326
10005307:	83 c1 e0             	add    ecx,0xffffffe0
1000530a:	d3 eb                	shr    ebx,cl
1000530c:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000530f:	8d 4c 01 04          	lea    ecx,[ecx+eax*1+0x4]
10005313:	f7 d3                	not    ebx
10005315:	21 9c 90 c4 00 00 00 	and    DWORD PTR [eax+edx*4+0xc4],ebx
1000531c:	fe 09                	dec    BYTE PTR [ecx]
1000531e:	75 06                	jne    0x10005326
10005320:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005323:	21 59 04             	and    DWORD PTR [ecx+0x4],ebx
10005326:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
10005329:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
1000532c:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000532f:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
10005332:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
10005335:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
10005338:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000533b:	2b ce                	sub    ecx,esi
1000533d:	01 4d fc             	add    DWORD PTR [ebp-0x4],ecx
10005340:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10005344:	0f 8e a5 00 00 00    	jle    0x100053ef
1000534a:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000534d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10005350:	c1 ff 04             	sar    edi,0x4
10005353:	4f                   	dec    edi
10005354:	83 ff 3f             	cmp    edi,0x3f
10005357:	8d 4c 31 fc          	lea    ecx,[ecx+esi*1-0x4]
1000535b:	76 03                	jbe    0x10005360
1000535d:	6a 3f                	push   0x3f
1000535f:	5f                   	pop    edi
10005360:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
10005363:	8d 1c fb             	lea    ebx,[ebx+edi*8]
10005366:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
10005369:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
1000536c:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000536f:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
10005372:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
10005375:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
10005378:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
1000537b:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
1000537e:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
10005381:	3b 59 08             	cmp    ebx,DWORD PTR [ecx+0x8]
10005384:	75 57                	jne    0x100053dd
10005386:	8a 4c 07 04          	mov    cl,BYTE PTR [edi+eax*1+0x4]
1000538a:	88 4d 13             	mov    BYTE PTR [ebp+0x13],cl
1000538d:	fe c1                	inc    cl
1000538f:	83 ff 20             	cmp    edi,0x20
10005392:	88 4c 07 04          	mov    BYTE PTR [edi+eax*1+0x4],cl
10005396:	73 1c                	jae    0x100053b4
10005398:	80 7d 13 00          	cmp    BYTE PTR [ebp+0x13],0x0
1000539c:	75 0e                	jne    0x100053ac
1000539e:	8b cf                	mov    ecx,edi
100053a0:	bb 00 00 00 80       	mov    ebx,0x80000000
100053a5:	d3 eb                	shr    ebx,cl
100053a7:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
100053aa:	09 19                	or     DWORD PTR [ecx],ebx
100053ac:	8d 44 90 44          	lea    eax,[eax+edx*4+0x44]
100053b0:	8b cf                	mov    ecx,edi
100053b2:	eb 20                	jmp    0x100053d4
100053b4:	80 7d 13 00          	cmp    BYTE PTR [ebp+0x13],0x0
100053b8:	75 10                	jne    0x100053ca
100053ba:	8d 4f e0             	lea    ecx,[edi-0x20]
100053bd:	bb 00 00 00 80       	mov    ebx,0x80000000
100053c2:	d3 eb                	shr    ebx,cl
100053c4:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
100053c7:	09 59 04             	or     DWORD PTR [ecx+0x4],ebx
100053ca:	8d 84 90 c4 00 00 00 	lea    eax,[eax+edx*4+0xc4]
100053d1:	8d 4f e0             	lea    ecx,[edi-0x20]
100053d4:	ba 00 00 00 80       	mov    edx,0x80000000
100053d9:	d3 ea                	shr    edx,cl
100053db:	09 10                	or     DWORD PTR [eax],edx
100053dd:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
100053e0:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100053e3:	8d 44 32 fc          	lea    eax,[edx+esi*1-0x4]
100053e7:	89 08                	mov    DWORD PTR [eax],ecx
100053e9:	89 4c 01 fc          	mov    DWORD PTR [ecx+eax*1-0x4],ecx
100053ed:	eb 03                	jmp    0x100053f2
100053ef:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
100053f2:	8d 46 01             	lea    eax,[esi+0x1]
100053f5:	89 42 fc             	mov    DWORD PTR [edx-0x4],eax
100053f8:	89 44 32 f8          	mov    DWORD PTR [edx+esi*1-0x8],eax
100053fc:	e9 3c 01 00 00       	jmp    0x1000553d
10005401:	33 c0                	xor    eax,eax
10005403:	e9 38 01 00 00       	jmp    0x10005540
10005408:	0f 8d 2f 01 00 00    	jge    0x1000553d
1000540e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
10005411:	29 75 10             	sub    DWORD PTR [ebp+0x10],esi
10005414:	8d 4e 01             	lea    ecx,[esi+0x1]
10005417:	89 4b fc             	mov    DWORD PTR [ebx-0x4],ecx
1000541a:	8d 5c 33 fc          	lea    ebx,[ebx+esi*1-0x4]
1000541e:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
10005421:	c1 fe 04             	sar    esi,0x4
10005424:	4e                   	dec    esi
10005425:	83 fe 3f             	cmp    esi,0x3f
10005428:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
1000542b:	89 4b fc             	mov    DWORD PTR [ebx-0x4],ecx
1000542e:	76 03                	jbe    0x10005433
10005430:	6a 3f                	push   0x3f
10005432:	5e                   	pop    esi
10005433:	f6 45 fc 01          	test   BYTE PTR [ebp-0x4],0x1
10005437:	0f 85 80 00 00 00    	jne    0x100054bd
1000543d:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
10005440:	c1 fe 04             	sar    esi,0x4
10005443:	4e                   	dec    esi
10005444:	83 fe 3f             	cmp    esi,0x3f
10005447:	76 03                	jbe    0x1000544c
10005449:	6a 3f                	push   0x3f
1000544b:	5e                   	pop    esi
1000544c:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
1000544f:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
10005452:	75 42                	jne    0x10005496
10005454:	83 fe 20             	cmp    esi,0x20
10005457:	bb 00 00 00 80       	mov    ebx,0x80000000
1000545c:	73 19                	jae    0x10005477
1000545e:	8b ce                	mov    ecx,esi
10005460:	d3 eb                	shr    ebx,cl
10005462:	8d 74 06 04          	lea    esi,[esi+eax*1+0x4]
10005466:	f7 d3                	not    ebx
10005468:	21 5c 90 44          	and    DWORD PTR [eax+edx*4+0x44],ebx
1000546c:	fe 0e                	dec    BYTE PTR [esi]
1000546e:	75 23                	jne    0x10005493
10005470:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005473:	21 19                	and    DWORD PTR [ecx],ebx
10005475:	eb 1c                	jmp    0x10005493
10005477:	8d 4e e0             	lea    ecx,[esi-0x20]
1000547a:	d3 eb                	shr    ebx,cl
1000547c:	8d 4c 06 04          	lea    ecx,[esi+eax*1+0x4]
10005480:	f7 d3                	not    ebx
10005482:	21 9c 90 c4 00 00 00 	and    DWORD PTR [eax+edx*4+0xc4],ebx
10005489:	fe 09                	dec    BYTE PTR [ecx]
1000548b:	75 06                	jne    0x10005493
1000548d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005490:	21 59 04             	and    DWORD PTR [ecx+0x4],ebx
10005493:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
10005496:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
10005499:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
1000549c:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
1000549f:	8b 77 08             	mov    esi,DWORD PTR [edi+0x8]
100054a2:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
100054a5:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
100054a8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
100054ab:	03 75 fc             	add    esi,DWORD PTR [ebp-0x4]
100054ae:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
100054b1:	c1 fe 04             	sar    esi,0x4
100054b4:	4e                   	dec    esi
100054b5:	83 fe 3f             	cmp    esi,0x3f
100054b8:	76 03                	jbe    0x100054bd
100054ba:	6a 3f                	push   0x3f
100054bc:	5e                   	pop    esi
100054bd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
100054c0:	8d 0c f1             	lea    ecx,[ecx+esi*8]
100054c3:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
100054c6:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
100054c9:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
100054cc:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
100054cf:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
100054d2:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
100054d5:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
100054d8:	3b 4b 08             	cmp    ecx,DWORD PTR [ebx+0x8]
100054db:	75 57                	jne    0x10005534
100054dd:	8a 4c 06 04          	mov    cl,BYTE PTR [esi+eax*1+0x4]
100054e1:	88 4d 0f             	mov    BYTE PTR [ebp+0xf],cl
100054e4:	fe c1                	inc    cl
100054e6:	83 fe 20             	cmp    esi,0x20
100054e9:	88 4c 06 04          	mov    BYTE PTR [esi+eax*1+0x4],cl
100054ed:	73 1c                	jae    0x1000550b
100054ef:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
100054f3:	75 0e                	jne    0x10005503
100054f5:	8b ce                	mov    ecx,esi
100054f7:	bf 00 00 00 80       	mov    edi,0x80000000
100054fc:	d3 ef                	shr    edi,cl
100054fe:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005501:	09 39                	or     DWORD PTR [ecx],edi
10005503:	8d 44 90 44          	lea    eax,[eax+edx*4+0x44]
10005507:	8b ce                	mov    ecx,esi
10005509:	eb 20                	jmp    0x1000552b
1000550b:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
1000550f:	75 10                	jne    0x10005521
10005511:	8d 4e e0             	lea    ecx,[esi-0x20]
10005514:	bf 00 00 00 80       	mov    edi,0x80000000
10005519:	d3 ef                	shr    edi,cl
1000551b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000551e:	09 79 04             	or     DWORD PTR [ecx+0x4],edi
10005521:	8d 84 90 c4 00 00 00 	lea    eax,[eax+edx*4+0xc4]
10005528:	8d 4e e0             	lea    ecx,[esi-0x20]
1000552b:	ba 00 00 00 80       	mov    edx,0x80000000
10005530:	d3 ea                	shr    edx,cl
10005532:	09 10                	or     DWORD PTR [eax],edx
10005534:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10005537:	89 03                	mov    DWORD PTR [ebx],eax
10005539:	89 44 18 fc          	mov    DWORD PTR [eax+ebx*1-0x4],eax
1000553d:	33 c0                	xor    eax,eax
1000553f:	40                   	inc    eax
10005540:	5f                   	pop    edi
10005541:	5e                   	pop    esi
10005542:	5b                   	pop    ebx
10005543:	c9                   	leave  
10005544:	c3                   	ret    
10005545:	55                   	push   ebp
10005546:	8b ec                	mov    ebp,esp
10005548:	83 ec 14             	sub    esp,0x14
1000554b:	a1 d8 5d 01 10       	mov    eax,ds:0x10015dd8
10005550:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005553:	6b c0 14             	imul   eax,eax,0x14
10005556:	03 05 dc 5d 01 10    	add    eax,DWORD PTR ds:0x10015ddc
1000555c:	83 c1 17             	add    ecx,0x17
1000555f:	83 e1 f0             	and    ecx,0xfffffff0
10005562:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
10005565:	c1 f9 04             	sar    ecx,0x4
10005568:	53                   	push   ebx
10005569:	49                   	dec    ecx
1000556a:	83 f9 20             	cmp    ecx,0x20
1000556d:	56                   	push   esi
1000556e:	57                   	push   edi
1000556f:	7d 0b                	jge    0x1000557c
10005571:	83 ce ff             	or     esi,0xffffffff
10005574:	d3 ee                	shr    esi,cl
10005576:	83 4d f8 ff          	or     DWORD PTR [ebp-0x8],0xffffffff
1000557a:	eb 0d                	jmp    0x10005589
1000557c:	83 c1 e0             	add    ecx,0xffffffe0
1000557f:	83 ca ff             	or     edx,0xffffffff
10005582:	33 f6                	xor    esi,esi
10005584:	d3 ea                	shr    edx,cl
10005586:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
10005589:	8b 0d e4 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015de4
1000558f:	8b d9                	mov    ebx,ecx
10005591:	eb 11                	jmp    0x100055a4
10005593:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
10005596:	8b 3b                	mov    edi,DWORD PTR [ebx]
10005598:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
1000559b:	23 fe                	and    edi,esi
1000559d:	0b d7                	or     edx,edi
1000559f:	75 0a                	jne    0x100055ab
100055a1:	83 c3 14             	add    ebx,0x14
100055a4:	3b d8                	cmp    ebx,eax
100055a6:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055a9:	72 e8                	jb     0x10005593
100055ab:	3b d8                	cmp    ebx,eax
100055ad:	75 7f                	jne    0x1000562e
100055af:	8b 1d dc 5d 01 10    	mov    ebx,DWORD PTR ds:0x10015ddc
100055b5:	eb 11                	jmp    0x100055c8
100055b7:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
100055ba:	8b 3b                	mov    edi,DWORD PTR [ebx]
100055bc:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
100055bf:	23 fe                	and    edi,esi
100055c1:	0b d7                	or     edx,edi
100055c3:	75 0a                	jne    0x100055cf
100055c5:	83 c3 14             	add    ebx,0x14
100055c8:	3b d9                	cmp    ebx,ecx
100055ca:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055cd:	72 e8                	jb     0x100055b7
100055cf:	3b d9                	cmp    ebx,ecx
100055d1:	75 5b                	jne    0x1000562e
100055d3:	eb 0c                	jmp    0x100055e1
100055d5:	83 7b 08 00          	cmp    DWORD PTR [ebx+0x8],0x0
100055d9:	75 0a                	jne    0x100055e5
100055db:	83 c3 14             	add    ebx,0x14
100055de:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055e1:	3b d8                	cmp    ebx,eax
100055e3:	72 f0                	jb     0x100055d5
100055e5:	3b d8                	cmp    ebx,eax
100055e7:	75 31                	jne    0x1000561a
100055e9:	8b 1d dc 5d 01 10    	mov    ebx,DWORD PTR ds:0x10015ddc
100055ef:	eb 09                	jmp    0x100055fa
100055f1:	83 7b 08 00          	cmp    DWORD PTR [ebx+0x8],0x0
100055f5:	75 0a                	jne    0x10005601
100055f7:	83 c3 14             	add    ebx,0x14
100055fa:	3b d9                	cmp    ebx,ecx
100055fc:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055ff:	72 f0                	jb     0x100055f1
10005601:	3b d9                	cmp    ebx,ecx
10005603:	75 15                	jne    0x1000561a
10005605:	e8 a6 fa ff ff       	call   0x100050b0
1000560a:	8b d8                	mov    ebx,eax
1000560c:	85 db                	test   ebx,ebx
1000560e:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
10005611:	75 07                	jne    0x1000561a
10005613:	33 c0                	xor    eax,eax
10005615:	e9 09 02 00 00       	jmp    0x10005823
1000561a:	53                   	push   ebx
1000561b:	e8 40 fb ff ff       	call   0x10005160
10005620:	59                   	pop    ecx
10005621:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
10005624:	89 01                	mov    DWORD PTR [ecx],eax
10005626:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
10005629:	83 38 ff             	cmp    DWORD PTR [eax],0xffffffff
1000562c:	74 e5                	je     0x10005613
1000562e:	89 1d e4 5d 01 10    	mov    DWORD PTR ds:0x10015de4,ebx
10005634:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
10005637:	8b 10                	mov    edx,DWORD PTR [eax]
10005639:	83 fa ff             	cmp    edx,0xffffffff
1000563c:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
1000563f:	74 14                	je     0x10005655
10005641:	8b 8c 90 c4 00 00 00 	mov    ecx,DWORD PTR [eax+edx*4+0xc4]
10005648:	8b 7c 90 44          	mov    edi,DWORD PTR [eax+edx*4+0x44]
1000564c:	23 4d f8             	and    ecx,DWORD PTR [ebp-0x8]
1000564f:	23 fe                	and    edi,esi
10005651:	0b cf                	or     ecx,edi
10005653:	75 29                	jne    0x1000567e
10005655:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10005659:	8b 90 c4 00 00 00    	mov    edx,DWORD PTR [eax+0xc4]
1000565f:	8d 48 44             	lea    ecx,[eax+0x44]
10005662:	8b 39                	mov    edi,DWORD PTR [ecx]
10005664:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
10005667:	23 fe                	and    edi,esi
10005669:	0b d7                	or     edx,edi
1000566b:	75 0e                	jne    0x1000567b
1000566d:	ff 45 fc             	inc    DWORD PTR [ebp-0x4]
10005670:	8b 91 84 00 00 00    	mov    edx,DWORD PTR [ecx+0x84]
10005676:	83 c1 04             	add    ecx,0x4
10005679:	eb e7                	jmp    0x10005662
1000567b:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
1000567e:	8b ca                	mov    ecx,edx
10005680:	69 c9 04 02 00 00    	imul   ecx,ecx,0x204
10005686:	8d 8c 01 44 01 00 00 	lea    ecx,[ecx+eax*1+0x144]
1000568d:	89 4d f4             	mov    DWORD PTR [ebp-0xc],ecx
10005690:	8b 4c 90 44          	mov    ecx,DWORD PTR [eax+edx*4+0x44]
10005694:	33 ff                	xor    edi,edi
10005696:	23 ce                	and    ecx,esi
10005698:	75 12                	jne    0x100056ac
1000569a:	8b 8c 90 c4 00 00 00 	mov    ecx,DWORD PTR [eax+edx*4+0xc4]
100056a1:	23 4d f8             	and    ecx,DWORD PTR [ebp-0x8]
100056a4:	6a 20                	push   0x20
100056a6:	5f                   	pop    edi
100056a7:	eb 03                	jmp    0x100056ac
100056a9:	03 c9                	add    ecx,ecx
100056ab:	47                   	inc    edi
100056ac:	85 c9                	test   ecx,ecx
100056ae:	7d f9                	jge    0x100056a9
100056b0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
100056b3:	8b 54 f9 04          	mov    edx,DWORD PTR [ecx+edi*8+0x4]
100056b7:	8b 0a                	mov    ecx,DWORD PTR [edx]
100056b9:	2b 4d f0             	sub    ecx,DWORD PTR [ebp-0x10]
100056bc:	8b f1                	mov    esi,ecx
100056be:	c1 fe 04             	sar    esi,0x4
100056c1:	4e                   	dec    esi
100056c2:	83 fe 3f             	cmp    esi,0x3f
100056c5:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100056c8:	7e 03                	jle    0x100056cd
100056ca:	6a 3f                	push   0x3f
100056cc:	5e                   	pop    esi
100056cd:	3b f7                	cmp    esi,edi
100056cf:	0f 84 01 01 00 00    	je     0x100057d6
100056d5:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
100056d8:	3b 4a 08             	cmp    ecx,DWORD PTR [edx+0x8]
100056db:	75 5c                	jne    0x10005739
100056dd:	83 ff 20             	cmp    edi,0x20
100056e0:	bb 00 00 00 80       	mov    ebx,0x80000000
100056e5:	7d 26                	jge    0x1000570d
100056e7:	8b cf                	mov    ecx,edi
100056e9:	d3 eb                	shr    ebx,cl
100056eb:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100056ee:	8d 7c 38 04          	lea    edi,[eax+edi*1+0x4]
100056f2:	f7 d3                	not    ebx
100056f4:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
100056f7:	23 5c 88 44          	and    ebx,DWORD PTR [eax+ecx*4+0x44]
100056fb:	89 5c 88 44          	mov    DWORD PTR [eax+ecx*4+0x44],ebx
100056ff:	fe 0f                	dec    BYTE PTR [edi]
10005701:	75 33                	jne    0x10005736
10005703:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
10005706:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10005709:	21 0b                	and    DWORD PTR [ebx],ecx
1000570b:	eb 2c                	jmp    0x10005739
1000570d:	8d 4f e0             	lea    ecx,[edi-0x20]
10005710:	d3 eb                	shr    ebx,cl
10005712:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10005715:	8d 8c 88 c4 00 00 00 	lea    ecx,[eax+ecx*4+0xc4]
1000571c:	8d 7c 38 04          	lea    edi,[eax+edi*1+0x4]
10005720:	f7 d3                	not    ebx
10005722:	21 19                	and    DWORD PTR [ecx],ebx
10005724:	fe 0f                	dec    BYTE PTR [edi]
10005726:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
10005729:	75 0b                	jne    0x10005736
1000572b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000572e:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
10005731:	21 4b 04             	and    DWORD PTR [ebx+0x4],ecx
10005734:	eb 03                	jmp    0x10005739
10005736:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10005739:	83 7d f8 00          	cmp    DWORD PTR [ebp-0x8],0x0
1000573d:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
10005740:	8b 7a 04             	mov    edi,DWORD PTR [edx+0x4]
10005743:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
10005746:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
10005749:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
1000574c:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
1000574f:	0f 84 8d 00 00 00    	je     0x100057e2
10005755:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
10005758:	8d 0c f1             	lea    ecx,[ecx+esi*8]
1000575b:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
1000575e:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
10005761:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
10005764:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
10005767:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
1000576a:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
1000576d:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
10005770:	3b 4a 08             	cmp    ecx,DWORD PTR [edx+0x8]
10005773:	75 5e                	jne    0x100057d3
10005775:	8a 4c 06 04          	mov    cl,BYTE PTR [esi+eax*1+0x4]
10005779:	88 4d 0b             	mov    BYTE PTR [ebp+0xb],cl
1000577c:	fe c1                	inc    cl
1000577e:	83 fe 20             	cmp    esi,0x20
10005781:	88 4c 06 04          	mov    BYTE PTR [esi+eax*1+0x4],cl
10005785:	7d 23                	jge    0x100057aa
10005787:	80 7d 0b 00          	cmp    BYTE PTR [ebp+0xb],0x0
1000578b:	75 0b                	jne    0x10005798
1000578d:	bf 00 00 00 80       	mov    edi,0x80000000
10005792:	8b ce                	mov    ecx,esi
10005794:	d3 ef                	shr    edi,cl
10005796:	09 3b                	or     DWORD PTR [ebx],edi
10005798:	8b ce                	mov    ecx,esi
1000579a:	bf 00 00 00 80       	mov    edi,0x80000000
1000579f:	d3 ef                	shr    edi,cl
100057a1:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100057a4:	09 7c 88 44          	or     DWORD PTR [eax+ecx*4+0x44],edi
100057a8:	eb 29                	jmp    0x100057d3
100057aa:	80 7d 0b 00          	cmp    BYTE PTR [ebp+0xb],0x0
100057ae:	75 0d                	jne    0x100057bd
100057b0:	8d 4e e0             	lea    ecx,[esi-0x20]
100057b3:	bf 00 00 00 80       	mov    edi,0x80000000
100057b8:	d3 ef                	shr    edi,cl
100057ba:	09 7b 04             	or     DWORD PTR [ebx+0x4],edi
100057bd:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100057c0:	8d bc 88 c4 00 00 00 	lea    edi,[eax+ecx*4+0xc4]
100057c7:	8d 4e e0             	lea    ecx,[esi-0x20]
100057ca:	be 00 00 00 80       	mov    esi,0x80000000
100057cf:	d3 ee                	shr    esi,cl
100057d1:	09 37                	or     DWORD PTR [edi],esi
100057d3:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
100057d6:	85 c9                	test   ecx,ecx
100057d8:	74 0b                	je     0x100057e5
100057da:	89 0a                	mov    DWORD PTR [edx],ecx
100057dc:	89 4c 11 fc          	mov    DWORD PTR [ecx+edx*1-0x4],ecx
100057e0:	eb 03                	jmp    0x100057e5
100057e2:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
100057e5:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
100057e8:	03 d1                	add    edx,ecx
100057ea:	8d 4e 01             	lea    ecx,[esi+0x1]
100057ed:	89 0a                	mov    DWORD PTR [edx],ecx
100057ef:	89 4c 32 fc          	mov    DWORD PTR [edx+esi*1-0x4],ecx
100057f3:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
100057f6:	8b 0e                	mov    ecx,DWORD PTR [esi]
100057f8:	85 c9                	test   ecx,ecx
100057fa:	8d 79 01             	lea    edi,[ecx+0x1]
100057fd:	89 3e                	mov    DWORD PTR [esi],edi
100057ff:	75 1a                	jne    0x1000581b
10005801:	3b 1d a0 53 01 10    	cmp    ebx,DWORD PTR ds:0x100153a0
10005807:	75 12                	jne    0x1000581b
10005809:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000580c:	3b 0d ec 5d 01 10    	cmp    ecx,DWORD PTR ds:0x10015dec
10005812:	75 07                	jne    0x1000581b
10005814:	83 25 a0 53 01 10 00 	and    DWORD PTR ds:0x100153a0,0x0
1000581b:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000581e:	89 08                	mov    DWORD PTR [eax],ecx
10005820:	8d 42 04             	lea    eax,[edx+0x4]
10005823:	5f                   	pop    edi
10005824:	5e                   	pop    esi
10005825:	5b                   	pop    ebx
10005826:	c9                   	leave  
10005827:	c3                   	ret    
10005828:	68 90 58 00 10       	push   0x10005890
1000582d:	64 ff 35 00 00 00 00 	push   DWORD PTR fs:0x0
10005834:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10005838:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
1000583c:	8d 6c 24 10          	lea    ebp,[esp+0x10]
10005840:	2b e0                	sub    esp,eax
10005842:	53                   	push   ebx
10005843:	56                   	push   esi
10005844:	57                   	push   edi
10005845:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000584a:	31 45 fc             	xor    DWORD PTR [ebp-0x4],eax
1000584d:	33 c5                	xor    eax,ebp
1000584f:	50                   	push   eax
10005850:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
10005853:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10005856:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
10005859:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10005860:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10005863:	8d 45 f0             	lea    eax,[ebp-0x10]
10005866:	64 a3 00 00 00 00    	mov    fs:0x0,eax
1000586c:	c3                   	ret    
1000586d:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10005870:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10005877:	59                   	pop    ecx
10005878:	5f                   	pop    edi
10005879:	5f                   	pop    edi
1000587a:	5e                   	pop    esi
1000587b:	5b                   	pop    ebx
1000587c:	8b e5                	mov    esp,ebp
1000587e:	5d                   	pop    ebp
1000587f:	51                   	push   ecx
10005880:	c3                   	ret    
10005881:	cc                   	int3   
10005882:	cc                   	int3   
10005883:	cc                   	int3   
10005884:	cc                   	int3   
10005885:	cc                   	int3   
10005886:	cc                   	int3   
10005887:	cc                   	int3   
10005888:	cc                   	int3   
10005889:	cc                   	int3   
1000588a:	cc                   	int3   
1000588b:	cc                   	int3   
1000588c:	cc                   	int3   
1000588d:	cc                   	int3   
1000588e:	cc                   	int3   
1000588f:	cc                   	int3   
10005890:	83 ec 14             	sub    esp,0x14
10005893:	53                   	push   ebx
10005894:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
10005898:	55                   	push   ebp
10005899:	56                   	push   esi
1000589a:	8b 73 08             	mov    esi,DWORD PTR [ebx+0x8]
1000589d:	33 35 10 00 01 10    	xor    esi,DWORD PTR ds:0x10010010
100058a3:	57                   	push   edi
100058a4:	8b 06                	mov    eax,DWORD PTR [esi]
100058a6:	83 f8 fe             	cmp    eax,0xfffffffe
100058a9:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
100058ae:	c7 44 24 18 01 00 00 	mov    DWORD PTR [esp+0x18],0x1
100058b5:	00 
100058b6:	8d 7b 10             	lea    edi,[ebx+0x10]
100058b9:	74 0d                	je     0x100058c8
100058bb:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
100058be:	03 cf                	add    ecx,edi
100058c0:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
100058c3:	e8 53 e2 ff ff       	call   0x10003b1b
100058c8:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
100058cb:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
100058ce:	03 cf                	add    ecx,edi
100058d0:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
100058d3:	e8 43 e2 ff ff       	call   0x10003b1b
100058d8:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
100058dc:	f6 40 04 66          	test   BYTE PTR [eax+0x4],0x66
100058e0:	0f 85 1f 01 00 00    	jne    0x10005a05
100058e6:	8b 6b 0c             	mov    ebp,DWORD PTR [ebx+0xc]
100058e9:	83 fd fe             	cmp    ebp,0xfffffffe
100058ec:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
100058f0:	8d 54 24 1c          	lea    edx,[esp+0x1c]
100058f4:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
100058f8:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
100058fc:	89 53 fc             	mov    DWORD PTR [ebx-0x4],edx
100058ff:	74 5e                	je     0x1000595f
10005901:	8d 44 6d 00          	lea    eax,[ebp+ebp*2+0x0]
10005905:	8b 4c 86 14          	mov    ecx,DWORD PTR [esi+eax*4+0x14]
10005909:	85 c9                	test   ecx,ecx
1000590b:	8d 5c 86 10          	lea    ebx,[esi+eax*4+0x10]
1000590f:	8b 03                	mov    eax,DWORD PTR [ebx]
10005911:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
10005915:	74 16                	je     0x1000592d
10005917:	8b d7                	mov    edx,edi
10005919:	e8 74 30 00 00       	call   0x10008992
1000591e:	85 c0                	test   eax,eax
10005920:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
10005925:	7c 44                	jl     0x1000596b
10005927:	7f 4c                	jg     0x10005975
10005929:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000592d:	83 f8 fe             	cmp    eax,0xfffffffe
10005930:	8b e8                	mov    ebp,eax
10005932:	75 cd                	jne    0x10005901
10005934:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
10005939:	74 24                	je     0x1000595f
1000593b:	8b 06                	mov    eax,DWORD PTR [esi]
1000593d:	83 f8 fe             	cmp    eax,0xfffffffe
10005940:	74 0d                	je     0x1000594f
10005942:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
10005945:	03 cf                	add    ecx,edi
10005947:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
1000594a:	e8 cc e1 ff ff       	call   0x10003b1b
1000594f:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
10005952:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10005955:	03 cf                	add    ecx,edi
10005957:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
1000595a:	e8 bc e1 ff ff       	call   0x10003b1b
1000595f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10005963:	5f                   	pop    edi
10005964:	5e                   	pop    esi
10005965:	5d                   	pop    ebp
10005966:	5b                   	pop    ebx
10005967:	83 c4 14             	add    esp,0x14
1000596a:	c3                   	ret    
1000596b:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
10005972:	00 
10005973:	eb c6                	jmp    0x1000593b
10005975:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
10005979:	81 39 63 73 6d e0    	cmp    DWORD PTR [ecx],0xe06d7363
1000597f:	75 2a                	jne    0x100059ab
10005981:	83 3d d4 5d 01 10 00 	cmp    DWORD PTR ds:0x10015dd4,0x0
10005988:	74 21                	je     0x100059ab
1000598a:	68 d4 5d 01 10       	push   0x10015dd4
1000598f:	e8 ec 30 00 00       	call   0x10008a80
10005994:	83 c4 04             	add    esp,0x4
10005997:	85 c0                	test   eax,eax
10005999:	74 10                	je     0x100059ab
1000599b:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
1000599f:	6a 01                	push   0x1
100059a1:	52                   	push   edx
100059a2:	ff 15 d4 5d 01 10    	call   DWORD PTR ds:0x10015dd4
100059a8:	83 c4 08             	add    esp,0x8
100059ab:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
100059af:	e8 0e 30 00 00       	call   0x100089c2
100059b4:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
100059b8:	39 68 0c             	cmp    DWORD PTR [eax+0xc],ebp
100059bb:	74 13                	je     0x100059d0
100059bd:	68 10 00 01 10       	push   0x10010010
100059c2:	57                   	push   edi
100059c3:	8b d5                	mov    edx,ebp
100059c5:	8b c8                	mov    ecx,eax
100059c7:	e8 10 30 00 00       	call   0x100089dc
100059cc:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
100059d0:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100059d4:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
100059d7:	8b 06                	mov    eax,DWORD PTR [esi]
100059d9:	83 f8 fe             	cmp    eax,0xfffffffe
100059dc:	74 0d                	je     0x100059eb
100059de:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
100059e1:	03 cf                	add    ecx,edi
100059e3:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
100059e6:	e8 30 e1 ff ff       	call   0x10003b1b
100059eb:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
100059ee:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
100059f1:	03 cf                	add    ecx,edi
100059f3:	33 0c 3a             	xor    ecx,DWORD PTR [edx+edi*1]
100059f6:	e8 20 e1 ff ff       	call   0x10003b1b
100059fb:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
100059fe:	8b d7                	mov    edx,edi
10005a00:	e9 a4 2f 00 00       	jmp    0x100089a9
10005a05:	83 7b 0c fe          	cmp    DWORD PTR [ebx+0xc],0xfffffffe
10005a09:	0f 84 50 ff ff ff    	je     0x1000595f
10005a0f:	68 10 00 01 10       	push   0x10010010
10005a14:	57                   	push   edi
10005a15:	8b cb                	mov    ecx,ebx
10005a17:	ba fe ff ff ff       	mov    edx,0xfffffffe
10005a1c:	e8 bb 2f 00 00       	call   0x100089dc
10005a21:	e9 15 ff ff ff       	jmp    0x1000593b
10005a26:	e8 97 04 00 00       	call   0x10005ec2
10005a2b:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a2f:	e8 ee 02 00 00       	call   0x10005d22
10005a34:	ff 35 d8 02 01 10    	push   DWORD PTR ds:0x100102d8
10005a3a:	e8 cf 06 00 00       	call   0x1000610e
10005a3f:	68 ff 00 00 00       	push   0xff
10005a44:	ff d0                	call   eax
10005a46:	83 c4 0c             	add    esp,0xc
10005a49:	c3                   	ret    
10005a4a:	68 50 d2 00 10       	push   0x1000d250
10005a4f:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
10005a55:	85 c0                	test   eax,eax
10005a57:	74 16                	je     0x10005a6f
10005a59:	68 40 d2 00 10       	push   0x1000d240
10005a5e:	50                   	push   eax
10005a5f:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
10005a65:	85 c0                	test   eax,eax
10005a67:	74 06                	je     0x10005a6f
10005a69:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a6d:	ff d0                	call   eax
10005a6f:	c3                   	ret    
10005a70:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a74:	e8 d1 ff ff ff       	call   0x10005a4a
10005a79:	59                   	pop    ecx
10005a7a:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a7e:	ff 15 6c d0 00 10    	call   DWORD PTR ds:0x1000d06c
10005a84:	cc                   	int3   
10005a85:	6a 08                	push   0x8
10005a87:	e8 6c f2 ff ff       	call   0x10004cf8
10005a8c:	59                   	pop    ecx
10005a8d:	c3                   	ret    
10005a8e:	6a 08                	push   0x8
10005a90:	e8 8b f1 ff ff       	call   0x10004c20
10005a95:	59                   	pop    ecx
10005a96:	c3                   	ret    
10005a97:	56                   	push   esi
10005a98:	8b f0                	mov    esi,eax
10005a9a:	eb 0b                	jmp    0x10005aa7
10005a9c:	8b 06                	mov    eax,DWORD PTR [esi]
10005a9e:	85 c0                	test   eax,eax
10005aa0:	74 02                	je     0x10005aa4
10005aa2:	ff d0                	call   eax
10005aa4:	83 c6 04             	add    esi,0x4
10005aa7:	3b 74 24 08          	cmp    esi,DWORD PTR [esp+0x8]
10005aab:	72 ef                	jb     0x10005a9c
10005aad:	5e                   	pop    esi
10005aae:	c3                   	ret    
10005aaf:	56                   	push   esi
10005ab0:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
10005ab4:	33 c0                	xor    eax,eax
10005ab6:	eb 0f                	jmp    0x10005ac7
10005ab8:	85 c0                	test   eax,eax
10005aba:	75 11                	jne    0x10005acd
10005abc:	8b 0e                	mov    ecx,DWORD PTR [esi]
10005abe:	85 c9                	test   ecx,ecx
10005ac0:	74 02                	je     0x10005ac4
10005ac2:	ff d1                	call   ecx
10005ac4:	83 c6 04             	add    esi,0x4
10005ac7:	3b 74 24 0c          	cmp    esi,DWORD PTR [esp+0xc]
10005acb:	72 eb                	jb     0x10005ab8
10005acd:	5e                   	pop    esi
10005ace:	c3                   	ret    
10005acf:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10005ad3:	56                   	push   esi
10005ad4:	33 f6                	xor    esi,esi
10005ad6:	3b ce                	cmp    ecx,esi
10005ad8:	75 1d                	jne    0x10005af7
10005ada:	e8 67 ef ff ff       	call   0x10004a46
10005adf:	56                   	push   esi
10005ae0:	56                   	push   esi
10005ae1:	56                   	push   esi
10005ae2:	56                   	push   esi
10005ae3:	56                   	push   esi
10005ae4:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
10005aea:	e8 87 20 00 00       	call   0x10007b76
10005aef:	83 c4 14             	add    esp,0x14
10005af2:	6a 16                	push   0x16
10005af4:	58                   	pop    eax
10005af5:	5e                   	pop    esi
10005af6:	c3                   	ret    
10005af7:	a1 a8 53 01 10       	mov    eax,ds:0x100153a8
10005afc:	3b c6                	cmp    eax,esi
10005afe:	74 da                	je     0x10005ada
10005b00:	89 01                	mov    DWORD PTR [ecx],eax
10005b02:	33 c0                	xor    eax,eax
10005b04:	5e                   	pop    esi
10005b05:	c3                   	ret    
10005b06:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10005b0a:	56                   	push   esi
10005b0b:	33 f6                	xor    esi,esi
10005b0d:	3b c6                	cmp    eax,esi
10005b0f:	75 1d                	jne    0x10005b2e
10005b11:	e8 30 ef ff ff       	call   0x10004a46
10005b16:	56                   	push   esi
10005b17:	56                   	push   esi
10005b18:	56                   	push   esi
10005b19:	56                   	push   esi
10005b1a:	56                   	push   esi
10005b1b:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
10005b21:	e8 50 20 00 00       	call   0x10007b76
10005b26:	83 c4 14             	add    esp,0x14
10005b29:	6a 16                	push   0x16
10005b2b:	58                   	pop    eax
10005b2c:	5e                   	pop    esi
10005b2d:	c3                   	ret    
10005b2e:	39 35 a8 53 01 10    	cmp    DWORD PTR ds:0x100153a8,esi
10005b34:	74 db                	je     0x10005b11
10005b36:	8b 0d b4 53 01 10    	mov    ecx,DWORD PTR ds:0x100153b4
10005b3c:	89 08                	mov    DWORD PTR [eax],ecx
10005b3e:	33 c0                	xor    eax,eax
10005b40:	5e                   	pop    esi
10005b41:	c3                   	ret    
10005b42:	83 3d f0 d1 00 10 00 	cmp    DWORD PTR ds:0x1000d1f0,0x0
10005b49:	74 1a                	je     0x10005b65
10005b4b:	68 f0 d1 00 10       	push   0x1000d1f0
10005b50:	e8 2b 2f 00 00       	call   0x10008a80
10005b55:	85 c0                	test   eax,eax
10005b57:	59                   	pop    ecx
10005b58:	74 0b                	je     0x10005b65
10005b5a:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005b5e:	ff 15 f0 d1 00 10    	call   DWORD PTR ds:0x1000d1f0
10005b64:	59                   	pop    ecx
10005b65:	e8 e0 ed ff ff       	call   0x1000494a
10005b6a:	68 5c d1 00 10       	push   0x1000d15c
10005b6f:	68 48 d1 00 10       	push   0x1000d148
10005b74:	e8 36 ff ff ff       	call   0x10005aaf
10005b79:	85 c0                	test   eax,eax
10005b7b:	59                   	pop    ecx
10005b7c:	59                   	pop    ecx
10005b7d:	75 54                	jne    0x10005bd3
10005b7f:	56                   	push   esi
10005b80:	57                   	push   edi
10005b81:	68 48 6e 00 10       	push   0x10006e48
10005b86:	e8 d4 30 00 00       	call   0x10008c5f
10005b8b:	be 40 d1 00 10       	mov    esi,0x1000d140
10005b90:	8b c6                	mov    eax,esi
10005b92:	bf 44 d1 00 10       	mov    edi,0x1000d144
10005b97:	3b c7                	cmp    eax,edi
10005b99:	59                   	pop    ecx
10005b9a:	73 0f                	jae    0x10005bab
10005b9c:	8b 06                	mov    eax,DWORD PTR [esi]
10005b9e:	85 c0                	test   eax,eax
10005ba0:	74 02                	je     0x10005ba4
10005ba2:	ff d0                	call   eax
10005ba4:	83 c6 04             	add    esi,0x4
10005ba7:	3b f7                	cmp    esi,edi
10005ba9:	72 f1                	jb     0x10005b9c
10005bab:	83 3d d0 5d 01 10 00 	cmp    DWORD PTR ds:0x10015dd0,0x0
10005bb2:	5f                   	pop    edi
10005bb3:	5e                   	pop    esi
10005bb4:	74 1b                	je     0x10005bd1
10005bb6:	68 d0 5d 01 10       	push   0x10015dd0
10005bbb:	e8 c0 2e 00 00       	call   0x10008a80
10005bc0:	85 c0                	test   eax,eax
10005bc2:	59                   	pop    ecx
10005bc3:	74 0c                	je     0x10005bd1
10005bc5:	6a 00                	push   0x0
10005bc7:	6a 02                	push   0x2
10005bc9:	6a 00                	push   0x0
10005bcb:	ff 15 d0 5d 01 10    	call   DWORD PTR ds:0x10015dd0
10005bd1:	33 c0                	xor    eax,eax
10005bd3:	c3                   	ret    
10005bd4:	6a 10                	push   0x10
10005bd6:	68 40 e4 00 10       	push   0x1000e440
10005bdb:	e8 48 fc ff ff       	call   0x10005828
10005be0:	6a 08                	push   0x8
10005be2:	e8 11 f1 ff ff       	call   0x10004cf8
10005be7:	59                   	pop    ecx
10005be8:	33 ff                	xor    edi,edi
10005bea:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10005bed:	33 db                	xor    ebx,ebx
10005bef:	43                   	inc    ebx
10005bf0:	39 1d e8 53 01 10    	cmp    DWORD PTR ds:0x100153e8,ebx
10005bf6:	74 7e                	je     0x10005c76
10005bf8:	89 1d e4 53 01 10    	mov    DWORD PTR ds:0x100153e4,ebx
10005bfe:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
10005c01:	a2 e0 53 01 10       	mov    ds:0x100153e0,al
10005c06:	39 7d 0c             	cmp    DWORD PTR [ebp+0xc],edi
10005c09:	75 5b                	jne    0x10005c66
10005c0b:	ff 35 c8 5d 01 10    	push   DWORD PTR ds:0x10015dc8
10005c11:	e8 f8 04 00 00       	call   0x1000610e
10005c16:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10005c19:	ff 35 c4 5d 01 10    	push   DWORD PTR ds:0x10015dc4
10005c1f:	e8 ea 04 00 00       	call   0x1000610e
10005c24:	59                   	pop    ecx
10005c25:	59                   	pop    ecx
10005c26:	8b f0                	mov    esi,eax
10005c28:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
10005c2b:	39 7d e4             	cmp    DWORD PTR [ebp-0x1c],edi
10005c2e:	74 26                	je     0x10005c56
10005c30:	83 ee 04             	sub    esi,0x4
10005c33:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
10005c36:	3b 75 e4             	cmp    esi,DWORD PTR [ebp-0x1c]
10005c39:	72 1b                	jb     0x10005c56
10005c3b:	83 3e 00             	cmp    DWORD PTR [esi],0x0
10005c3e:	74 f0                	je     0x10005c30
10005c40:	8b 3e                	mov    edi,DWORD PTR [esi]
10005c42:	e8 be 04 00 00       	call   0x10006105
10005c47:	3b f8                	cmp    edi,eax
10005c49:	74 e5                	je     0x10005c30
10005c4b:	57                   	push   edi
10005c4c:	e8 bd 04 00 00       	call   0x1000610e
10005c51:	59                   	pop    ecx
10005c52:	ff d0                	call   eax
10005c54:	eb da                	jmp    0x10005c30
10005c56:	68 64 d1 00 10       	push   0x1000d164
10005c5b:	b8 60 d1 00 10       	mov    eax,0x1000d160
10005c60:	e8 32 fe ff ff       	call   0x10005a97
10005c65:	59                   	pop    ecx
10005c66:	68 6c d1 00 10       	push   0x1000d16c
10005c6b:	b8 68 d1 00 10       	mov    eax,0x1000d168
10005c70:	e8 22 fe ff ff       	call   0x10005a97
10005c75:	59                   	pop    ecx
10005c76:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10005c7d:	e8 1f 00 00 00       	call   0x10005ca1
10005c82:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
10005c86:	75 28                	jne    0x10005cb0
10005c88:	89 1d e8 53 01 10    	mov    DWORD PTR ds:0x100153e8,ebx
10005c8e:	6a 08                	push   0x8
10005c90:	e8 8b ef ff ff       	call   0x10004c20
10005c95:	59                   	pop    ecx
10005c96:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10005c99:	e8 d2 fd ff ff       	call   0x10005a70
10005c9e:	33 db                	xor    ebx,ebx
10005ca0:	43                   	inc    ebx
10005ca1:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
10005ca5:	74 08                	je     0x10005caf
10005ca7:	6a 08                	push   0x8
10005ca9:	e8 72 ef ff ff       	call   0x10004c20
10005cae:	59                   	pop    ecx
10005caf:	c3                   	ret    
10005cb0:	e8 b8 fb ff ff       	call   0x1000586d
10005cb5:	c3                   	ret    
10005cb6:	6a 00                	push   0x0
10005cb8:	6a 01                	push   0x1
10005cba:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
10005cbe:	e8 11 ff ff ff       	call   0x10005bd4
10005cc3:	83 c4 0c             	add    esp,0xc
10005cc6:	c3                   	ret    
10005cc7:	6a 01                	push   0x1
10005cc9:	6a 00                	push   0x0
10005ccb:	6a 00                	push   0x0
10005ccd:	e8 02 ff ff ff       	call   0x10005bd4
10005cd2:	83 c4 0c             	add    esp,0xc
10005cd5:	c3                   	ret    
10005cd6:	56                   	push   esi
10005cd7:	e8 29 04 00 00       	call   0x10006105
10005cdc:	8b f0                	mov    esi,eax
10005cde:	56                   	push   esi
10005cdf:	e8 17 02 00 00       	call   0x10005efb
10005ce4:	56                   	push   esi
10005ce5:	e8 d5 2a 00 00       	call   0x100087bf
10005cea:	56                   	push   esi
10005ceb:	e8 80 1d 00 00       	call   0x10007a70
10005cf0:	56                   	push   esi
10005cf1:	e8 d9 31 00 00       	call   0x10008ecf
10005cf6:	56                   	push   esi
10005cf7:	e8 c9 31 00 00       	call   0x10008ec5
10005cfc:	56                   	push   esi
10005cfd:	e8 b9 2f 00 00       	call   0x10008cbb
10005d02:	56                   	push   esi
10005d03:	e8 44 db ff ff       	call   0x1000384c
10005d08:	56                   	push   esi
10005d09:	e8 9c 2f 00 00       	call   0x10008caa
10005d0e:	68 b6 5c 00 10       	push   0x10005cb6
10005d13:	e8 7f 03 00 00       	call   0x10006097
10005d18:	83 c4 24             	add    esp,0x24
10005d1b:	a3 d8 02 01 10       	mov    ds:0x100102d8,eax
10005d20:	5e                   	pop    esi
10005d21:	c3                   	ret    
10005d22:	51                   	push   ecx
10005d23:	53                   	push   ebx
10005d24:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
10005d28:	56                   	push   esi
10005d29:	57                   	push   edi
10005d2a:	33 f6                	xor    esi,esi
10005d2c:	33 ff                	xor    edi,edi
10005d2e:	3b 1c fd e0 02 01 10 	cmp    ebx,DWORD PTR [edi*8+0x100102e0]
10005d35:	74 06                	je     0x10005d3d
10005d37:	47                   	inc    edi
10005d38:	83 ff 17             	cmp    edi,0x17
10005d3b:	72 f1                	jb     0x10005d2e
10005d3d:	83 ff 17             	cmp    edi,0x17
10005d40:	0f 83 77 01 00 00    	jae    0x10005ebd
10005d46:	55                   	push   ebp
10005d47:	6a 03                	push   0x3
10005d49:	e8 6c 34 00 00       	call   0x100091ba
10005d4e:	83 f8 01             	cmp    eax,0x1
10005d51:	59                   	pop    ecx
10005d52:	0f 84 31 01 00 00    	je     0x10005e89
10005d58:	6a 03                	push   0x3
10005d5a:	e8 5b 34 00 00       	call   0x100091ba
10005d5f:	85 c0                	test   eax,eax
10005d61:	59                   	pop    ecx
10005d62:	75 0d                	jne    0x10005d71
10005d64:	83 3d 48 52 01 10 01 	cmp    DWORD PTR ds:0x10015248,0x1
10005d6b:	0f 84 18 01 00 00    	je     0x10005e89
10005d71:	81 fb fc 00 00 00    	cmp    ebx,0xfc
10005d77:	0f 84 3f 01 00 00    	je     0x10005ebc
10005d7d:	68 00 d8 00 10       	push   0x1000d800
10005d82:	bb 14 03 00 00       	mov    ebx,0x314
10005d87:	53                   	push   ebx
10005d88:	bd f0 53 01 10       	mov    ebp,0x100153f0
10005d8d:	55                   	push   ebp
10005d8e:	e8 08 25 00 00       	call   0x1000829b
10005d93:	83 c4 0c             	add    esp,0xc
10005d96:	85 c0                	test   eax,eax
10005d98:	74 0d                	je     0x10005da7
10005d9a:	56                   	push   esi
10005d9b:	56                   	push   esi
10005d9c:	56                   	push   esi
10005d9d:	56                   	push   esi
10005d9e:	56                   	push   esi
10005d9f:	e8 d6 1c 00 00       	call   0x10007a7a
10005da4:	83 c4 14             	add    esp,0x14
10005da7:	68 04 01 00 00       	push   0x104
10005dac:	be 09 54 01 10       	mov    esi,0x10015409
10005db1:	56                   	push   esi
10005db2:	6a 00                	push   0x0
10005db4:	c6 05 0d 55 01 10 00 	mov    BYTE PTR ds:0x1001550d,0x0
10005dbb:	ff 15 78 d0 00 10    	call   DWORD PTR ds:0x1000d078
10005dc1:	85 c0                	test   eax,eax
10005dc3:	75 26                	jne    0x10005deb
10005dc5:	68 e8 d7 00 10       	push   0x1000d7e8
10005dca:	68 fb 02 00 00       	push   0x2fb
10005dcf:	56                   	push   esi
10005dd0:	e8 c6 24 00 00       	call   0x1000829b
10005dd5:	83 c4 0c             	add    esp,0xc
10005dd8:	85 c0                	test   eax,eax
10005dda:	74 0f                	je     0x10005deb
10005ddc:	33 c0                	xor    eax,eax
10005dde:	50                   	push   eax
10005ddf:	50                   	push   eax
10005de0:	50                   	push   eax
10005de1:	50                   	push   eax
10005de2:	50                   	push   eax
10005de3:	e8 92 1c 00 00       	call   0x10007a7a
10005de8:	83 c4 14             	add    esp,0x14
10005deb:	56                   	push   esi
10005dec:	e8 1f 24 00 00       	call   0x10008210
10005df1:	40                   	inc    eax
10005df2:	83 f8 3c             	cmp    eax,0x3c
10005df5:	59                   	pop    ecx
10005df6:	76 38                	jbe    0x10005e30
10005df8:	56                   	push   esi
10005df9:	e8 12 24 00 00       	call   0x10008210
10005dfe:	83 ee 3b             	sub    esi,0x3b
10005e01:	03 c6                	add    eax,esi
10005e03:	6a 03                	push   0x3
10005e05:	b9 04 57 01 10       	mov    ecx,0x10015704
10005e0a:	68 e4 d7 00 10       	push   0x1000d7e4
10005e0f:	2b c8                	sub    ecx,eax
10005e11:	51                   	push   ecx
10005e12:	50                   	push   eax
10005e13:	e8 ef 32 00 00       	call   0x10009107
10005e18:	83 c4 14             	add    esp,0x14
10005e1b:	85 c0                	test   eax,eax
10005e1d:	74 11                	je     0x10005e30
10005e1f:	33 f6                	xor    esi,esi
10005e21:	56                   	push   esi
10005e22:	56                   	push   esi
10005e23:	56                   	push   esi
10005e24:	56                   	push   esi
10005e25:	56                   	push   esi
10005e26:	e8 4f 1c 00 00       	call   0x10007a7a
10005e2b:	83 c4 14             	add    esp,0x14
10005e2e:	eb 02                	jmp    0x10005e32
10005e30:	33 f6                	xor    esi,esi
10005e32:	68 e0 d7 00 10       	push   0x1000d7e0
10005e37:	53                   	push   ebx
10005e38:	55                   	push   ebp
10005e39:	e8 58 32 00 00       	call   0x10009096
10005e3e:	83 c4 0c             	add    esp,0xc
10005e41:	85 c0                	test   eax,eax
10005e43:	74 0d                	je     0x10005e52
10005e45:	56                   	push   esi
10005e46:	56                   	push   esi
10005e47:	56                   	push   esi
10005e48:	56                   	push   esi
10005e49:	56                   	push   esi
10005e4a:	e8 2b 1c 00 00       	call   0x10007a7a
10005e4f:	83 c4 14             	add    esp,0x14
10005e52:	ff 34 fd e4 02 01 10 	push   DWORD PTR [edi*8+0x100102e4]
10005e59:	53                   	push   ebx
10005e5a:	55                   	push   ebp
10005e5b:	e8 36 32 00 00       	call   0x10009096
10005e60:	83 c4 0c             	add    esp,0xc
10005e63:	85 c0                	test   eax,eax
10005e65:	74 0d                	je     0x10005e74
10005e67:	56                   	push   esi
10005e68:	56                   	push   esi
10005e69:	56                   	push   esi
10005e6a:	56                   	push   esi
10005e6b:	56                   	push   esi
10005e6c:	e8 09 1c 00 00       	call   0x10007a7a
10005e71:	83 c4 14             	add    esp,0x14
10005e74:	68 10 20 01 00       	push   0x12010
10005e79:	68 b8 d7 00 10       	push   0x1000d7b8
10005e7e:	55                   	push   ebp
10005e7f:	e8 55 30 00 00       	call   0x10008ed9
10005e84:	83 c4 0c             	add    esp,0xc
10005e87:	eb 33                	jmp    0x10005ebc
10005e89:	6a f4                	push   0xfffffff4
10005e8b:	ff 15 74 d0 00 10    	call   DWORD PTR ds:0x1000d074
10005e91:	8b e8                	mov    ebp,eax
10005e93:	3b ee                	cmp    ebp,esi
10005e95:	74 25                	je     0x10005ebc
10005e97:	83 fd ff             	cmp    ebp,0xffffffff
10005e9a:	74 20                	je     0x10005ebc
10005e9c:	6a 00                	push   0x0
10005e9e:	8d 44 24 14          	lea    eax,[esp+0x14]
10005ea2:	50                   	push   eax
10005ea3:	8d 34 fd e4 02 01 10 	lea    esi,[edi*8+0x100102e4]
10005eaa:	ff 36                	push   DWORD PTR [esi]
10005eac:	e8 5f 23 00 00       	call   0x10008210
10005eb1:	59                   	pop    ecx
10005eb2:	50                   	push   eax
10005eb3:	ff 36                	push   DWORD PTR [esi]
10005eb5:	55                   	push   ebp
10005eb6:	ff 15 70 d0 00 10    	call   DWORD PTR ds:0x1000d070
10005ebc:	5d                   	pop    ebp
10005ebd:	5f                   	pop    edi
10005ebe:	5e                   	pop    esi
10005ebf:	5b                   	pop    ebx
10005ec0:	59                   	pop    ecx
10005ec1:	c3                   	ret    
10005ec2:	6a 03                	push   0x3
10005ec4:	e8 f1 32 00 00       	call   0x100091ba
10005ec9:	83 f8 01             	cmp    eax,0x1
10005ecc:	59                   	pop    ecx
10005ecd:	74 15                	je     0x10005ee4
10005ecf:	6a 03                	push   0x3
10005ed1:	e8 e4 32 00 00       	call   0x100091ba
10005ed6:	85 c0                	test   eax,eax
10005ed8:	59                   	pop    ecx
10005ed9:	75 1f                	jne    0x10005efa
10005edb:	83 3d 48 52 01 10 01 	cmp    DWORD PTR ds:0x10015248,0x1
10005ee2:	75 16                	jne    0x10005efa
10005ee4:	68 fc 00 00 00       	push   0xfc
10005ee9:	e8 34 fe ff ff       	call   0x10005d22
10005eee:	68 ff 00 00 00       	push   0xff
10005ef3:	e8 2a fe ff ff       	call   0x10005d22
10005ef8:	59                   	pop    ecx
10005ef9:	59                   	pop    ecx
10005efa:	c3                   	ret    
10005efb:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10005eff:	a3 04 57 01 10       	mov    ds:0x10015704,eax
10005f04:	c3                   	ret    
10005f05:	ff 35 04 57 01 10    	push   DWORD PTR ds:0x10015704
10005f0b:	e8 fe 01 00 00       	call   0x1000610e
10005f10:	85 c0                	test   eax,eax
10005f12:	59                   	pop    ecx
10005f13:	74 0f                	je     0x10005f24
10005f15:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005f19:	ff d0                	call   eax
10005f1b:	85 c0                	test   eax,eax
10005f1d:	59                   	pop    ecx
10005f1e:	74 04                	je     0x10005f24
10005f20:	33 c0                	xor    eax,eax
10005f22:	40                   	inc    eax
10005f23:	c3                   	ret    
10005f24:	33 c0                	xor    eax,eax
10005f26:	c3                   	ret    
10005f27:	55                   	push   ebp
10005f28:	8b ec                	mov    ebp,esp
10005f2a:	81 ec 28 03 00 00    	sub    esp,0x328
10005f30:	a3 18 58 01 10       	mov    ds:0x10015818,eax
10005f35:	89 0d 14 58 01 10    	mov    DWORD PTR ds:0x10015814,ecx
10005f3b:	89 15 10 58 01 10    	mov    DWORD PTR ds:0x10015810,edx
10005f41:	89 1d 0c 58 01 10    	mov    DWORD PTR ds:0x1001580c,ebx
10005f47:	89 35 08 58 01 10    	mov    DWORD PTR ds:0x10015808,esi
10005f4d:	89 3d 04 58 01 10    	mov    DWORD PTR ds:0x10015804,edi
10005f53:	66 8c 15 30 58 01 10 	data16 mov WORD PTR ds:0x10015830,ss
10005f5a:	66 8c 0d 24 58 01 10 	data16 mov WORD PTR ds:0x10015824,cs
10005f61:	66 8c 1d 00 58 01 10 	data16 mov WORD PTR ds:0x10015800,ds
10005f68:	66 8c 05 fc 57 01 10 	data16 mov WORD PTR ds:0x100157fc,es
10005f6f:	66 8c 25 f8 57 01 10 	data16 mov WORD PTR ds:0x100157f8,fs
10005f76:	66 8c 2d f4 57 01 10 	data16 mov WORD PTR ds:0x100157f4,gs
10005f7d:	9c                   	pushf  
10005f7e:	8f 05 28 58 01 10    	pop    DWORD PTR ds:0x10015828
10005f84:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
10005f87:	a3 1c 58 01 10       	mov    ds:0x1001581c,eax
10005f8c:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
10005f8f:	a3 20 58 01 10       	mov    ds:0x10015820,eax
10005f94:	8d 45 08             	lea    eax,[ebp+0x8]
10005f97:	a3 2c 58 01 10       	mov    ds:0x1001582c,eax
10005f9c:	8b 85 e0 fc ff ff    	mov    eax,DWORD PTR [ebp-0x320]
10005fa2:	c7 05 68 57 01 10 01 	mov    DWORD PTR ds:0x10015768,0x10001
10005fa9:	00 01 00 
10005fac:	a1 20 58 01 10       	mov    eax,ds:0x10015820
10005fb1:	a3 1c 57 01 10       	mov    ds:0x1001571c,eax
10005fb6:	c7 05 10 57 01 10 09 	mov    DWORD PTR ds:0x10015710,0xc0000409
10005fbd:	04 00 c0 
10005fc0:	c7 05 14 57 01 10 01 	mov    DWORD PTR ds:0x10015714,0x1
10005fc7:	00 00 00 
10005fca:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10005fcf:	89 85 d8 fc ff ff    	mov    DWORD PTR [ebp-0x328],eax
10005fd5:	a1 14 00 01 10       	mov    eax,ds:0x10010014
10005fda:	89 85 dc fc ff ff    	mov    DWORD PTR [ebp-0x324],eax
10005fe0:	ff 15 8c d0 00 10    	call   DWORD PTR ds:0x1000d08c
10005fe6:	a3 60 57 01 10       	mov    ds:0x10015760,eax
10005feb:	6a 01                	push   0x1
10005fed:	e8 0e 32 00 00       	call   0x10009200
10005ff2:	59                   	pop    ecx
10005ff3:	6a 00                	push   0x0
10005ff5:	ff 15 88 d0 00 10    	call   DWORD PTR ds:0x1000d088
10005ffb:	68 1c d8 00 10       	push   0x1000d81c
10006000:	ff 15 84 d0 00 10    	call   DWORD PTR ds:0x1000d084
10006006:	83 3d 60 57 01 10 00 	cmp    DWORD PTR ds:0x10015760,0x0
1000600d:	75 08                	jne    0x10006017
1000600f:	6a 01                	push   0x1
10006011:	e8 ea 31 00 00       	call   0x10009200
10006016:	59                   	pop    ecx
10006017:	68 09 04 00 c0       	push   0xc0000409
1000601c:	ff 15 80 d0 00 10    	call   DWORD PTR ds:0x1000d080
10006022:	50                   	push   eax
10006023:	ff 15 7c d0 00 10    	call   DWORD PTR ds:0x1000d07c
10006029:	c9                   	leave  
1000602a:	c3                   	ret    
1000602b:	55                   	push   ebp
1000602c:	8b ec                	mov    ebp,esp
1000602e:	51                   	push   ecx
1000602f:	51                   	push   ecx
10006030:	53                   	push   ebx
10006031:	56                   	push   esi
10006032:	33 f6                	xor    esi,esi
10006034:	8d 45 fc             	lea    eax,[ebp-0x4]
10006037:	46                   	inc    esi
10006038:	33 db                	xor    ebx,ebx
1000603a:	50                   	push   eax
1000603b:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
1000603e:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10006041:	e8 c0 fa ff ff       	call   0x10005b06
10006046:	83 7d fc 05          	cmp    DWORD PTR [ebp-0x4],0x5
1000604a:	59                   	pop    ecx
1000604b:	7e 04                	jle    0x10006051
1000604d:	8b c6                	mov    eax,esi
1000604f:	eb 42                	jmp    0x10006093
10006051:	57                   	push   edi
10006052:	53                   	push   ebx
10006053:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
10006059:	8b 70 3c             	mov    esi,DWORD PTR [eax+0x3c]
1000605c:	03 f0                	add    esi,eax
1000605e:	66 39 5e 06          	cmp    WORD PTR [esi+0x6],bx
10006062:	0f b7 46 14          	movzx  eax,WORD PTR [esi+0x14]
10006066:	8d 7c 30 18          	lea    edi,[eax+esi*1+0x18]
1000606a:	76 23                	jbe    0x1000608f
1000606c:	57                   	push   edi
1000606d:	68 24 d8 00 10       	push   0x1000d824
10006072:	e8 99 31 00 00       	call   0x10009210
10006077:	85 c0                	test   eax,eax
10006079:	59                   	pop    ecx
1000607a:	59                   	pop    ecx
1000607b:	74 0e                	je     0x1000608b
1000607d:	0f b7 46 06          	movzx  eax,WORD PTR [esi+0x6]
10006081:	43                   	inc    ebx
10006082:	83 c7 28             	add    edi,0x28
10006085:	3b d8                	cmp    ebx,eax
10006087:	72 e3                	jb     0x1000606c
10006089:	eb 04                	jmp    0x1000608f
1000608b:	83 65 f8 00          	and    DWORD PTR [ebp-0x8],0x0
1000608f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006092:	5f                   	pop    edi
10006093:	5e                   	pop    esi
10006094:	5b                   	pop    ebx
10006095:	c9                   	leave  
10006096:	c3                   	ret    
10006097:	56                   	push   esi
10006098:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
1000609e:	8b 35 00 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d000
100060a4:	ff d6                	call   esi
100060a6:	85 c0                	test   eax,eax
100060a8:	74 21                	je     0x100060cb
100060aa:	a1 98 03 01 10       	mov    eax,ds:0x10010398
100060af:	83 f8 ff             	cmp    eax,0xffffffff
100060b2:	74 17                	je     0x100060cb
100060b4:	50                   	push   eax
100060b5:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
100060bb:	ff d6                	call   esi
100060bd:	ff d0                	call   eax
100060bf:	85 c0                	test   eax,eax
100060c1:	74 08                	je     0x100060cb
100060c3:	8b 80 f8 01 00 00    	mov    eax,DWORD PTR [eax+0x1f8]
100060c9:	eb 26                	jmp    0x100060f1
100060cb:	68 3c d8 00 10       	push   0x1000d83c
100060d0:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
100060d6:	8b f0                	mov    esi,eax
100060d8:	85 f6                	test   esi,esi
100060da:	74 23                	je     0x100060ff
100060dc:	e8 4a ff ff ff       	call   0x1000602b
100060e1:	85 c0                	test   eax,eax
100060e3:	74 1a                	je     0x100060ff
100060e5:	68 2c d8 00 10       	push   0x1000d82c
100060ea:	56                   	push   esi
100060eb:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
100060f1:	85 c0                	test   eax,eax
100060f3:	74 0a                	je     0x100060ff
100060f5:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
100060f9:	ff d0                	call   eax
100060fb:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100060ff:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10006103:	5e                   	pop    esi
10006104:	c3                   	ret    
10006105:	6a 00                	push   0x0
10006107:	e8 8b ff ff ff       	call   0x10006097
1000610c:	59                   	pop    ecx
1000610d:	c3                   	ret    
1000610e:	56                   	push   esi
1000610f:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
10006115:	8b 35 00 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d000
1000611b:	ff d6                	call   esi
1000611d:	85 c0                	test   eax,eax
1000611f:	74 21                	je     0x10006142
10006121:	a1 98 03 01 10       	mov    eax,ds:0x10010398
10006126:	83 f8 ff             	cmp    eax,0xffffffff
10006129:	74 17                	je     0x10006142
1000612b:	50                   	push   eax
1000612c:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
10006132:	ff d6                	call   esi
10006134:	ff d0                	call   eax
10006136:	85 c0                	test   eax,eax
10006138:	74 08                	je     0x10006142
1000613a:	8b 80 fc 01 00 00    	mov    eax,DWORD PTR [eax+0x1fc]
10006140:	eb 26                	jmp    0x10006168
10006142:	68 3c d8 00 10       	push   0x1000d83c
10006147:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
1000614d:	8b f0                	mov    esi,eax
1000614f:	85 f6                	test   esi,esi
10006151:	74 23                	je     0x10006176
10006153:	e8 d3 fe ff ff       	call   0x1000602b
10006158:	85 c0                	test   eax,eax
1000615a:	74 1a                	je     0x10006176
1000615c:	68 4c d8 00 10       	push   0x1000d84c
10006161:	56                   	push   esi
10006162:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
10006168:	85 c0                	test   eax,eax
1000616a:	74 0a                	je     0x10006176
1000616c:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10006170:	ff d0                	call   eax
10006172:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
10006176:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000617a:	5e                   	pop    esi
1000617b:	c3                   	ret    
1000617c:	ff 15 90 d0 00 10    	call   DWORD PTR ds:0x1000d090
10006182:	c2 04 00             	ret    0x4
10006185:	56                   	push   esi
10006186:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
1000618c:	ff 15 00 d0 00 10    	call   DWORD PTR ds:0x1000d000
10006192:	8b f0                	mov    esi,eax
10006194:	85 f6                	test   esi,esi
10006196:	75 1b                	jne    0x100061b3
10006198:	ff 35 38 5a 01 10    	push   DWORD PTR ds:0x10015a38
1000619e:	e8 6b ff ff ff       	call   0x1000610e
100061a3:	59                   	pop    ecx
100061a4:	8b f0                	mov    esi,eax
100061a6:	56                   	push   esi
100061a7:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
100061ad:	ff 15 94 d0 00 10    	call   DWORD PTR ds:0x1000d094
100061b3:	8b c6                	mov    eax,esi
100061b5:	5e                   	pop    esi
100061b6:	c3                   	ret    
100061b7:	a1 98 03 01 10       	mov    eax,ds:0x10010398
100061bc:	83 f8 ff             	cmp    eax,0xffffffff
100061bf:	74 16                	je     0x100061d7
100061c1:	50                   	push   eax
100061c2:	ff 35 40 5a 01 10    	push   DWORD PTR ds:0x10015a40
100061c8:	e8 41 ff ff ff       	call   0x1000610e
100061cd:	59                   	pop    ecx
100061ce:	ff d0                	call   eax
100061d0:	83 0d 98 03 01 10 ff 	or     DWORD PTR ds:0x10010398,0xffffffff
100061d7:	a1 9c 03 01 10       	mov    eax,ds:0x1001039c
100061dc:	83 f8 ff             	cmp    eax,0xffffffff
100061df:	74 0e                	je     0x100061ef
100061e1:	50                   	push   eax
100061e2:	ff 15 98 d0 00 10    	call   DWORD PTR ds:0x1000d098
100061e8:	83 0d 9c 03 01 10 ff 	or     DWORD PTR ds:0x1001039c,0xffffffff
100061ef:	e9 d7 e9 ff ff       	jmp    0x10004bcb
100061f4:	6a 0c                	push   0xc
100061f6:	68 60 e4 00 10       	push   0x1000e460
100061fb:	e8 28 f6 ff ff       	call   0x10005828
10006200:	68 3c d8 00 10       	push   0x1000d83c
10006205:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
1000620b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000620e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10006211:	c7 46 5c e0 03 01 10 	mov    DWORD PTR [esi+0x5c],0x100103e0
10006218:	33 ff                	xor    edi,edi
1000621a:	47                   	inc    edi
1000621b:	89 7e 14             	mov    DWORD PTR [esi+0x14],edi
1000621e:	85 c0                	test   eax,eax
10006220:	74 2f                	je     0x10006251
10006222:	e8 04 fe ff ff       	call   0x1000602b
10006227:	85 c0                	test   eax,eax
10006229:	74 26                	je     0x10006251
1000622b:	68 2c d8 00 10       	push   0x1000d82c
10006230:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
10006233:	8b 1d 4c d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d04c
10006239:	ff d3                	call   ebx
1000623b:	89 86 f8 01 00 00    	mov    DWORD PTR [esi+0x1f8],eax
10006241:	68 4c d8 00 10       	push   0x1000d84c
10006246:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
10006249:	ff d3                	call   ebx
1000624b:	89 86 fc 01 00 00    	mov    DWORD PTR [esi+0x1fc],eax
10006251:	89 7e 70             	mov    DWORD PTR [esi+0x70],edi
10006254:	c6 86 c8 00 00 00 43 	mov    BYTE PTR [esi+0xc8],0x43
1000625b:	c6 86 4b 01 00 00 43 	mov    BYTE PTR [esi+0x14b],0x43
10006262:	b8 70 04 01 10       	mov    eax,0x10010470
10006267:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
1000626a:	50                   	push   eax
1000626b:	ff 15 9c d0 00 10    	call   DWORD PTR ds:0x1000d09c
10006271:	6a 0c                	push   0xc
10006273:	e8 80 ea ff ff       	call   0x10004cf8
10006278:	59                   	pop    ecx
10006279:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000627d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10006280:	89 46 6c             	mov    DWORD PTR [esi+0x6c],eax
10006283:	85 c0                	test   eax,eax
10006285:	75 08                	jne    0x1000628f
10006287:	a1 78 0a 01 10       	mov    eax,ds:0x10010a78
1000628c:	89 46 6c             	mov    DWORD PTR [esi+0x6c],eax
1000628f:	ff 76 6c             	push   DWORD PTR [esi+0x6c]
10006292:	e8 13 16 00 00       	call   0x100078aa
10006297:	59                   	pop    ecx
10006298:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000629f:	e8 06 00 00 00       	call   0x100062aa
100062a4:	e8 c4 f5 ff ff       	call   0x1000586d
100062a9:	c3                   	ret    
100062aa:	6a 0c                	push   0xc
100062ac:	e8 6f e9 ff ff       	call   0x10004c20
100062b1:	59                   	pop    ecx
100062b2:	c3                   	ret    
100062b3:	56                   	push   esi
100062b4:	57                   	push   edi
100062b5:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100062bb:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
100062c1:	8b f8                	mov    edi,eax
100062c3:	e8 bd fe ff ff       	call   0x10006185
100062c8:	ff d0                	call   eax
100062ca:	8b f0                	mov    esi,eax
100062cc:	85 f6                	test   esi,esi
100062ce:	75 4e                	jne    0x1000631e
100062d0:	68 14 02 00 00       	push   0x214
100062d5:	6a 01                	push   0x1
100062d7:	e8 b4 03 00 00       	call   0x10006690
100062dc:	8b f0                	mov    esi,eax
100062de:	85 f6                	test   esi,esi
100062e0:	59                   	pop    ecx
100062e1:	59                   	pop    ecx
100062e2:	74 3a                	je     0x1000631e
100062e4:	56                   	push   esi
100062e5:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
100062eb:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
100062f1:	e8 18 fe ff ff       	call   0x1000610e
100062f6:	59                   	pop    ecx
100062f7:	ff d0                	call   eax
100062f9:	85 c0                	test   eax,eax
100062fb:	74 18                	je     0x10006315
100062fd:	6a 00                	push   0x0
100062ff:	56                   	push   esi
10006300:	e8 ef fe ff ff       	call   0x100061f4
10006305:	59                   	pop    ecx
10006306:	59                   	pop    ecx
10006307:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
1000630d:	83 4e 04 ff          	or     DWORD PTR [esi+0x4],0xffffffff
10006311:	89 06                	mov    DWORD PTR [esi],eax
10006313:	eb 09                	jmp    0x1000631e
10006315:	56                   	push   esi
10006316:	e8 60 d6 ff ff       	call   0x1000397b
1000631b:	59                   	pop    ecx
1000631c:	33 f6                	xor    esi,esi
1000631e:	57                   	push   edi
1000631f:	ff 15 a0 d0 00 10    	call   DWORD PTR ds:0x1000d0a0
10006325:	5f                   	pop    edi
10006326:	8b c6                	mov    eax,esi
10006328:	5e                   	pop    esi
10006329:	c3                   	ret    
1000632a:	56                   	push   esi
1000632b:	e8 83 ff ff ff       	call   0x100062b3
10006330:	8b f0                	mov    esi,eax
10006332:	85 f6                	test   esi,esi
10006334:	75 08                	jne    0x1000633e
10006336:	6a 10                	push   0x10
10006338:	e8 e9 f6 ff ff       	call   0x10005a26
1000633d:	59                   	pop    ecx
1000633e:	8b c6                	mov    eax,esi
10006340:	5e                   	pop    esi
10006341:	c3                   	ret    
10006342:	6a 08                	push   0x8
10006344:	68 80 e4 00 10       	push   0x1000e480
10006349:	e8 da f4 ff ff       	call   0x10005828
1000634e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10006351:	85 f6                	test   esi,esi
10006353:	0f 84 ea 00 00 00    	je     0x10006443
10006359:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
1000635c:	85 c0                	test   eax,eax
1000635e:	74 07                	je     0x10006367
10006360:	50                   	push   eax
10006361:	e8 15 d6 ff ff       	call   0x1000397b
10006366:	59                   	pop    ecx
10006367:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
1000636a:	85 c0                	test   eax,eax
1000636c:	74 07                	je     0x10006375
1000636e:	50                   	push   eax
1000636f:	e8 07 d6 ff ff       	call   0x1000397b
10006374:	59                   	pop    ecx
10006375:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
10006378:	85 c0                	test   eax,eax
1000637a:	74 07                	je     0x10006383
1000637c:	50                   	push   eax
1000637d:	e8 f9 d5 ff ff       	call   0x1000397b
10006382:	59                   	pop    ecx
10006383:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
10006386:	85 c0                	test   eax,eax
10006388:	74 07                	je     0x10006391
1000638a:	50                   	push   eax
1000638b:	e8 eb d5 ff ff       	call   0x1000397b
10006390:	59                   	pop    ecx
10006391:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
10006394:	85 c0                	test   eax,eax
10006396:	74 07                	je     0x1000639f
10006398:	50                   	push   eax
10006399:	e8 dd d5 ff ff       	call   0x1000397b
1000639e:	59                   	pop    ecx
1000639f:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
100063a2:	85 c0                	test   eax,eax
100063a4:	74 07                	je     0x100063ad
100063a6:	50                   	push   eax
100063a7:	e8 cf d5 ff ff       	call   0x1000397b
100063ac:	59                   	pop    ecx
100063ad:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
100063b0:	3d e0 03 01 10       	cmp    eax,0x100103e0
100063b5:	74 07                	je     0x100063be
100063b7:	50                   	push   eax
100063b8:	e8 be d5 ff ff       	call   0x1000397b
100063bd:	59                   	pop    ecx
100063be:	6a 0d                	push   0xd
100063c0:	e8 33 e9 ff ff       	call   0x10004cf8
100063c5:	59                   	pop    ecx
100063c6:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
100063ca:	8b 7e 68             	mov    edi,DWORD PTR [esi+0x68]
100063cd:	85 ff                	test   edi,edi
100063cf:	74 1a                	je     0x100063eb
100063d1:	57                   	push   edi
100063d2:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
100063d8:	85 c0                	test   eax,eax
100063da:	75 0f                	jne    0x100063eb
100063dc:	81 ff 70 04 01 10    	cmp    edi,0x10010470
100063e2:	74 07                	je     0x100063eb
100063e4:	57                   	push   edi
100063e5:	e8 91 d5 ff ff       	call   0x1000397b
100063ea:	59                   	pop    ecx
100063eb:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
100063f2:	e8 57 00 00 00       	call   0x1000644e
100063f7:	6a 0c                	push   0xc
100063f9:	e8 fa e8 ff ff       	call   0x10004cf8
100063fe:	59                   	pop    ecx
100063ff:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
10006406:	8b 7e 6c             	mov    edi,DWORD PTR [esi+0x6c]
10006409:	85 ff                	test   edi,edi
1000640b:	74 23                	je     0x10006430
1000640d:	57                   	push   edi
1000640e:	e8 1d 15 00 00       	call   0x10007930
10006413:	59                   	pop    ecx
10006414:	3b 3d 78 0a 01 10    	cmp    edi,DWORD PTR ds:0x10010a78
1000641a:	74 14                	je     0x10006430
1000641c:	81 ff a0 09 01 10    	cmp    edi,0x100109a0
10006422:	74 0c                	je     0x10006430
10006424:	83 3f 00             	cmp    DWORD PTR [edi],0x0
10006427:	75 07                	jne    0x10006430
10006429:	57                   	push   edi
1000642a:	e8 3b 13 00 00       	call   0x1000776a
1000642f:	59                   	pop    ecx
10006430:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10006437:	e8 1e 00 00 00       	call   0x1000645a
1000643c:	56                   	push   esi
1000643d:	e8 39 d5 ff ff       	call   0x1000397b
10006442:	59                   	pop    ecx
10006443:	e8 25 f4 ff ff       	call   0x1000586d
10006448:	c2 04 00             	ret    0x4
1000644b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000644e:	6a 0d                	push   0xd
10006450:	e8 cb e7 ff ff       	call   0x10004c20
10006455:	59                   	pop    ecx
10006456:	c3                   	ret    
10006457:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000645a:	6a 0c                	push   0xc
1000645c:	e8 bf e7 ff ff       	call   0x10004c20
10006461:	59                   	pop    ecx
10006462:	c3                   	ret    
10006463:	83 3d 98 03 01 10 ff 	cmp    DWORD PTR ds:0x10010398,0xffffffff
1000646a:	74 4c                	je     0x100064b8
1000646c:	57                   	push   edi
1000646d:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
10006471:	85 ff                	test   edi,edi
10006473:	75 26                	jne    0x1000649b
10006475:	56                   	push   esi
10006476:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
1000647c:	8b 35 00 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d000
10006482:	ff d6                	call   esi
10006484:	85 c0                	test   eax,eax
10006486:	74 12                	je     0x1000649a
10006488:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
1000648e:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
10006494:	ff d6                	call   esi
10006496:	ff d0                	call   eax
10006498:	8b f8                	mov    edi,eax
1000649a:	5e                   	pop    esi
1000649b:	6a 00                	push   0x0
1000649d:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
100064a3:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
100064a9:	e8 60 fc ff ff       	call   0x1000610e
100064ae:	59                   	pop    ecx
100064af:	ff d0                	call   eax
100064b1:	57                   	push   edi
100064b2:	e8 8b fe ff ff       	call   0x10006342
100064b7:	5f                   	pop    edi
100064b8:	a1 9c 03 01 10       	mov    eax,ds:0x1001039c
100064bd:	83 f8 ff             	cmp    eax,0xffffffff
100064c0:	74 09                	je     0x100064cb
100064c2:	6a 00                	push   0x0
100064c4:	50                   	push   eax
100064c5:	ff 15 94 d0 00 10    	call   DWORD PTR ds:0x1000d094
100064cb:	c3                   	ret    
100064cc:	57                   	push   edi
100064cd:	68 3c d8 00 10       	push   0x1000d83c
100064d2:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
100064d8:	8b f8                	mov    edi,eax
100064da:	85 ff                	test   edi,edi
100064dc:	75 09                	jne    0x100064e7
100064de:	e8 d4 fc ff ff       	call   0x100061b7
100064e3:	33 c0                	xor    eax,eax
100064e5:	5f                   	pop    edi
100064e6:	c3                   	ret    
100064e7:	56                   	push   esi
100064e8:	8b 35 4c d0 00 10    	mov    esi,DWORD PTR ds:0x1000d04c
100064ee:	68 7c d8 00 10       	push   0x1000d87c
100064f3:	57                   	push   edi
100064f4:	ff d6                	call   esi
100064f6:	68 70 d8 00 10       	push   0x1000d870
100064fb:	57                   	push   edi
100064fc:	a3 34 5a 01 10       	mov    ds:0x10015a34,eax
10006501:	ff d6                	call   esi
10006503:	68 64 d8 00 10       	push   0x1000d864
10006508:	57                   	push   edi
10006509:	a3 38 5a 01 10       	mov    ds:0x10015a38,eax
1000650e:	ff d6                	call   esi
10006510:	68 5c d8 00 10       	push   0x1000d85c
10006515:	57                   	push   edi
10006516:	a3 3c 5a 01 10       	mov    ds:0x10015a3c,eax
1000651b:	ff d6                	call   esi
1000651d:	83 3d 34 5a 01 10 00 	cmp    DWORD PTR ds:0x10015a34,0x0
10006524:	8b 35 94 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d094
1000652a:	a3 40 5a 01 10       	mov    ds:0x10015a40,eax
1000652f:	74 16                	je     0x10006547
10006531:	83 3d 38 5a 01 10 00 	cmp    DWORD PTR ds:0x10015a38,0x0
10006538:	74 0d                	je     0x10006547
1000653a:	83 3d 3c 5a 01 10 00 	cmp    DWORD PTR ds:0x10015a3c,0x0
10006541:	74 04                	je     0x10006547
10006543:	85 c0                	test   eax,eax
10006545:	75 24                	jne    0x1000656b
10006547:	a1 00 d0 00 10       	mov    eax,ds:0x1000d000
1000654c:	a3 38 5a 01 10       	mov    ds:0x10015a38,eax
10006551:	a1 98 d0 00 10       	mov    eax,ds:0x1000d098
10006556:	c7 05 34 5a 01 10 7c 	mov    DWORD PTR ds:0x10015a34,0x1000617c
1000655d:	61 00 10 
10006560:	89 35 3c 5a 01 10    	mov    DWORD PTR ds:0x10015a3c,esi
10006566:	a3 40 5a 01 10       	mov    ds:0x10015a40,eax
1000656b:	ff 15 90 d0 00 10    	call   DWORD PTR ds:0x1000d090
10006571:	83 f8 ff             	cmp    eax,0xffffffff
10006574:	a3 9c 03 01 10       	mov    ds:0x1001039c,eax
10006579:	0f 84 cc 00 00 00    	je     0x1000664b
1000657f:	ff 35 38 5a 01 10    	push   DWORD PTR ds:0x10015a38
10006585:	50                   	push   eax
10006586:	ff d6                	call   esi
10006588:	85 c0                	test   eax,eax
1000658a:	0f 84 bb 00 00 00    	je     0x1000664b
10006590:	e8 41 f7 ff ff       	call   0x10005cd6
10006595:	ff 35 34 5a 01 10    	push   DWORD PTR ds:0x10015a34
1000659b:	e8 f7 fa ff ff       	call   0x10006097
100065a0:	ff 35 38 5a 01 10    	push   DWORD PTR ds:0x10015a38
100065a6:	a3 34 5a 01 10       	mov    ds:0x10015a34,eax
100065ab:	e8 e7 fa ff ff       	call   0x10006097
100065b0:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
100065b6:	a3 38 5a 01 10       	mov    ds:0x10015a38,eax
100065bb:	e8 d7 fa ff ff       	call   0x10006097
100065c0:	ff 35 40 5a 01 10    	push   DWORD PTR ds:0x10015a40
100065c6:	a3 3c 5a 01 10       	mov    ds:0x10015a3c,eax
100065cb:	e8 c7 fa ff ff       	call   0x10006097
100065d0:	83 c4 10             	add    esp,0x10
100065d3:	a3 40 5a 01 10       	mov    ds:0x10015a40,eax
100065d8:	e8 a5 e5 ff ff       	call   0x10004b82
100065dd:	85 c0                	test   eax,eax
100065df:	74 65                	je     0x10006646
100065e1:	68 42 63 00 10       	push   0x10006342
100065e6:	ff 35 34 5a 01 10    	push   DWORD PTR ds:0x10015a34
100065ec:	e8 1d fb ff ff       	call   0x1000610e
100065f1:	59                   	pop    ecx
100065f2:	ff d0                	call   eax
100065f4:	83 f8 ff             	cmp    eax,0xffffffff
100065f7:	a3 98 03 01 10       	mov    ds:0x10010398,eax
100065fc:	74 48                	je     0x10006646
100065fe:	68 14 02 00 00       	push   0x214
10006603:	6a 01                	push   0x1
10006605:	e8 86 00 00 00       	call   0x10006690
1000660a:	8b f0                	mov    esi,eax
1000660c:	85 f6                	test   esi,esi
1000660e:	59                   	pop    ecx
1000660f:	59                   	pop    ecx
10006610:	74 34                	je     0x10006646
10006612:	56                   	push   esi
10006613:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
10006619:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
1000661f:	e8 ea fa ff ff       	call   0x1000610e
10006624:	59                   	pop    ecx
10006625:	ff d0                	call   eax
10006627:	85 c0                	test   eax,eax
10006629:	74 1b                	je     0x10006646
1000662b:	6a 00                	push   0x0
1000662d:	56                   	push   esi
1000662e:	e8 c1 fb ff ff       	call   0x100061f4
10006633:	59                   	pop    ecx
10006634:	59                   	pop    ecx
10006635:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
1000663b:	83 4e 04 ff          	or     DWORD PTR [esi+0x4],0xffffffff
1000663f:	89 06                	mov    DWORD PTR [esi],eax
10006641:	33 c0                	xor    eax,eax
10006643:	40                   	inc    eax
10006644:	eb 07                	jmp    0x1000664d
10006646:	e8 6c fb ff ff       	call   0x100061b7
1000664b:	33 c0                	xor    eax,eax
1000664d:	5e                   	pop    esi
1000664e:	5f                   	pop    edi
1000664f:	c3                   	ret    
10006650:	56                   	push   esi
10006651:	57                   	push   edi
10006652:	33 f6                	xor    esi,esi
10006654:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
10006658:	e8 fb d3 ff ff       	call   0x10003a58
1000665d:	8b f8                	mov    edi,eax
1000665f:	85 ff                	test   edi,edi
10006661:	59                   	pop    ecx
10006662:	75 27                	jne    0x1000668b
10006664:	39 05 44 5a 01 10    	cmp    DWORD PTR ds:0x10015a44,eax
1000666a:	76 1f                	jbe    0x1000668b
1000666c:	56                   	push   esi
1000666d:	ff 15 a8 d0 00 10    	call   DWORD PTR ds:0x1000d0a8
10006673:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
10006679:	3b 05 44 5a 01 10    	cmp    eax,DWORD PTR ds:0x10015a44
1000667f:	76 03                	jbe    0x10006684
10006681:	83 c8 ff             	or     eax,0xffffffff
10006684:	83 f8 ff             	cmp    eax,0xffffffff
10006687:	8b f0                	mov    esi,eax
10006689:	75 c9                	jne    0x10006654
1000668b:	8b c7                	mov    eax,edi
1000668d:	5f                   	pop    edi
1000668e:	5e                   	pop    esi
1000668f:	c3                   	ret    
10006690:	56                   	push   esi
10006691:	57                   	push   edi
10006692:	33 f6                	xor    esi,esi
10006694:	6a 00                	push   0x0
10006696:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
1000669a:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
1000669e:	e8 f5 2b 00 00       	call   0x10009298
100066a3:	8b f8                	mov    edi,eax
100066a5:	83 c4 0c             	add    esp,0xc
100066a8:	85 ff                	test   edi,edi
100066aa:	75 27                	jne    0x100066d3
100066ac:	39 05 44 5a 01 10    	cmp    DWORD PTR ds:0x10015a44,eax
100066b2:	76 1f                	jbe    0x100066d3
100066b4:	56                   	push   esi
100066b5:	ff 15 a8 d0 00 10    	call   DWORD PTR ds:0x1000d0a8
100066bb:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
100066c1:	3b 05 44 5a 01 10    	cmp    eax,DWORD PTR ds:0x10015a44
100066c7:	76 03                	jbe    0x100066cc
100066c9:	83 c8 ff             	or     eax,0xffffffff
100066cc:	83 f8 ff             	cmp    eax,0xffffffff
100066cf:	8b f0                	mov    esi,eax
100066d1:	75 c1                	jne    0x10006694
100066d3:	8b c7                	mov    eax,edi
100066d5:	5f                   	pop    edi
100066d6:	5e                   	pop    esi
100066d7:	c3                   	ret    
100066d8:	56                   	push   esi
100066d9:	57                   	push   edi
100066da:	33 f6                	xor    esi,esi
100066dc:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
100066e0:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
100066e4:	e8 cd 2c 00 00       	call   0x100093b6
100066e9:	8b f8                	mov    edi,eax
100066eb:	85 ff                	test   edi,edi
100066ed:	59                   	pop    ecx
100066ee:	59                   	pop    ecx
100066ef:	75 2d                	jne    0x1000671e
100066f1:	39 44 24 10          	cmp    DWORD PTR [esp+0x10],eax
100066f5:	74 27                	je     0x1000671e
100066f7:	39 05 44 5a 01 10    	cmp    DWORD PTR ds:0x10015a44,eax
100066fd:	76 1f                	jbe    0x1000671e
100066ff:	56                   	push   esi
10006700:	ff 15 a8 d0 00 10    	call   DWORD PTR ds:0x1000d0a8
10006706:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
1000670c:	3b 05 44 5a 01 10    	cmp    eax,DWORD PTR ds:0x10015a44
10006712:	76 03                	jbe    0x10006717
10006714:	83 c8 ff             	or     eax,0xffffffff
10006717:	83 f8 ff             	cmp    eax,0xffffffff
1000671a:	8b f0                	mov    esi,eax
1000671c:	75 be                	jne    0x100066dc
1000671e:	8b c7                	mov    eax,edi
10006720:	5f                   	pop    edi
10006721:	5e                   	pop    esi
10006722:	c3                   	ret    
10006723:	6a 54                	push   0x54
10006725:	68 a8 e4 00 10       	push   0x1000e4a8
1000672a:	e8 f9 f0 ff ff       	call   0x10005828
1000672f:	33 ff                	xor    edi,edi
10006731:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10006734:	8d 45 9c             	lea    eax,[ebp-0x64]
10006737:	50                   	push   eax
10006738:	ff 15 b4 d0 00 10    	call   DWORD PTR ds:0x1000d0b4
1000673e:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10006745:	6a 40                	push   0x40
10006747:	6a 20                	push   0x20
10006749:	5e                   	pop    esi
1000674a:	56                   	push   esi
1000674b:	e8 40 ff ff ff       	call   0x10006690
10006750:	59                   	pop    ecx
10006751:	59                   	pop    ecx
10006752:	3b c7                	cmp    eax,edi
10006754:	0f 84 14 02 00 00    	je     0x1000696e
1000675a:	a3 c0 5c 01 10       	mov    ds:0x10015cc0,eax
1000675f:	89 35 a4 5c 01 10    	mov    DWORD PTR ds:0x10015ca4,esi
10006765:	8d 88 00 08 00 00    	lea    ecx,[eax+0x800]
1000676b:	eb 30                	jmp    0x1000679d
1000676d:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
10006771:	83 08 ff             	or     DWORD PTR [eax],0xffffffff
10006774:	c6 40 05 0a          	mov    BYTE PTR [eax+0x5],0xa
10006778:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
1000677b:	c6 40 24 00          	mov    BYTE PTR [eax+0x24],0x0
1000677f:	c6 40 25 0a          	mov    BYTE PTR [eax+0x25],0xa
10006783:	c6 40 26 0a          	mov    BYTE PTR [eax+0x26],0xa
10006787:	89 78 38             	mov    DWORD PTR [eax+0x38],edi
1000678a:	c6 40 34 00          	mov    BYTE PTR [eax+0x34],0x0
1000678e:	83 c0 40             	add    eax,0x40
10006791:	8b 0d c0 5c 01 10    	mov    ecx,DWORD PTR ds:0x10015cc0
10006797:	81 c1 00 08 00 00    	add    ecx,0x800
1000679d:	3b c1                	cmp    eax,ecx
1000679f:	72 cc                	jb     0x1000676d
100067a1:	66 39 7d ce          	cmp    WORD PTR [ebp-0x32],di
100067a5:	0f 84 0a 01 00 00    	je     0x100068b5
100067ab:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
100067ae:	3b c7                	cmp    eax,edi
100067b0:	0f 84 ff 00 00 00    	je     0x100068b5
100067b6:	8b 38                	mov    edi,DWORD PTR [eax]
100067b8:	8d 58 04             	lea    ebx,[eax+0x4]
100067bb:	8d 04 3b             	lea    eax,[ebx+edi*1]
100067be:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100067c1:	be 00 08 00 00       	mov    esi,0x800
100067c6:	3b fe                	cmp    edi,esi
100067c8:	7c 02                	jl     0x100067cc
100067ca:	8b fe                	mov    edi,esi
100067cc:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
100067d3:	eb 5b                	jmp    0x10006830
100067d5:	6a 40                	push   0x40
100067d7:	6a 20                	push   0x20
100067d9:	e8 b2 fe ff ff       	call   0x10006690
100067de:	59                   	pop    ecx
100067df:	59                   	pop    ecx
100067e0:	85 c0                	test   eax,eax
100067e2:	74 56                	je     0x1000683a
100067e4:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
100067e7:	8d 0c 8d c0 5c 01 10 	lea    ecx,[ecx*4+0x10015cc0]
100067ee:	89 01                	mov    DWORD PTR [ecx],eax
100067f0:	83 05 a4 5c 01 10 20 	add    DWORD PTR ds:0x10015ca4,0x20
100067f7:	8d 90 00 08 00 00    	lea    edx,[eax+0x800]
100067fd:	eb 2a                	jmp    0x10006829
100067ff:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
10006803:	83 08 ff             	or     DWORD PTR [eax],0xffffffff
10006806:	c6 40 05 0a          	mov    BYTE PTR [eax+0x5],0xa
1000680a:	83 60 08 00          	and    DWORD PTR [eax+0x8],0x0
1000680e:	80 60 24 80          	and    BYTE PTR [eax+0x24],0x80
10006812:	c6 40 25 0a          	mov    BYTE PTR [eax+0x25],0xa
10006816:	c6 40 26 0a          	mov    BYTE PTR [eax+0x26],0xa
1000681a:	83 60 38 00          	and    DWORD PTR [eax+0x38],0x0
1000681e:	c6 40 34 00          	mov    BYTE PTR [eax+0x34],0x0
10006822:	83 c0 40             	add    eax,0x40
10006825:	8b 11                	mov    edx,DWORD PTR [ecx]
10006827:	03 d6                	add    edx,esi
10006829:	3b c2                	cmp    eax,edx
1000682b:	72 d2                	jb     0x100067ff
1000682d:	ff 45 e0             	inc    DWORD PTR [ebp-0x20]
10006830:	39 3d a4 5c 01 10    	cmp    DWORD PTR ds:0x10015ca4,edi
10006836:	7c 9d                	jl     0x100067d5
10006838:	eb 06                	jmp    0x10006840
1000683a:	8b 3d a4 5c 01 10    	mov    edi,DWORD PTR ds:0x10015ca4
10006840:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
10006844:	85 ff                	test   edi,edi
10006846:	7e 6d                	jle    0x100068b5
10006848:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
1000684b:	8b 08                	mov    ecx,DWORD PTR [eax]
1000684d:	83 f9 ff             	cmp    ecx,0xffffffff
10006850:	74 56                	je     0x100068a8
10006852:	83 f9 fe             	cmp    ecx,0xfffffffe
10006855:	74 51                	je     0x100068a8
10006857:	8a 03                	mov    al,BYTE PTR [ebx]
10006859:	a8 01                	test   al,0x1
1000685b:	74 4b                	je     0x100068a8
1000685d:	a8 08                	test   al,0x8
1000685f:	75 0b                	jne    0x1000686c
10006861:	51                   	push   ecx
10006862:	ff 15 b0 d0 00 10    	call   DWORD PTR ds:0x1000d0b0
10006868:	85 c0                	test   eax,eax
1000686a:	74 3c                	je     0x100068a8
1000686c:	8b 75 e0             	mov    esi,DWORD PTR [ebp-0x20]
1000686f:	8b c6                	mov    eax,esi
10006871:	c1 f8 05             	sar    eax,0x5
10006874:	83 e6 1f             	and    esi,0x1f
10006877:	c1 e6 06             	shl    esi,0x6
1000687a:	03 34 85 c0 5c 01 10 	add    esi,DWORD PTR [eax*4+0x10015cc0]
10006881:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10006884:	8b 00                	mov    eax,DWORD PTR [eax]
10006886:	89 06                	mov    DWORD PTR [esi],eax
10006888:	8a 03                	mov    al,BYTE PTR [ebx]
1000688a:	88 46 04             	mov    BYTE PTR [esi+0x4],al
1000688d:	68 a0 0f 00 00       	push   0xfa0
10006892:	8d 46 0c             	lea    eax,[esi+0xc]
10006895:	50                   	push   eax
10006896:	e8 3e 1f 00 00       	call   0x100087d9
1000689b:	59                   	pop    ecx
1000689c:	59                   	pop    ecx
1000689d:	85 c0                	test   eax,eax
1000689f:	0f 84 c9 00 00 00    	je     0x1000696e
100068a5:	ff 46 08             	inc    DWORD PTR [esi+0x8]
100068a8:	ff 45 e0             	inc    DWORD PTR [ebp-0x20]
100068ab:	43                   	inc    ebx
100068ac:	83 45 e4 04          	add    DWORD PTR [ebp-0x1c],0x4
100068b0:	39 7d e0             	cmp    DWORD PTR [ebp-0x20],edi
100068b3:	7c 93                	jl     0x10006848
100068b5:	33 db                	xor    ebx,ebx
100068b7:	8b f3                	mov    esi,ebx
100068b9:	c1 e6 06             	shl    esi,0x6
100068bc:	03 35 c0 5c 01 10    	add    esi,DWORD PTR ds:0x10015cc0
100068c2:	8b 06                	mov    eax,DWORD PTR [esi]
100068c4:	83 f8 ff             	cmp    eax,0xffffffff
100068c7:	74 0b                	je     0x100068d4
100068c9:	83 f8 fe             	cmp    eax,0xfffffffe
100068cc:	74 06                	je     0x100068d4
100068ce:	80 4e 04 80          	or     BYTE PTR [esi+0x4],0x80
100068d2:	eb 72                	jmp    0x10006946
100068d4:	c6 46 04 81          	mov    BYTE PTR [esi+0x4],0x81
100068d8:	85 db                	test   ebx,ebx
100068da:	75 05                	jne    0x100068e1
100068dc:	6a f6                	push   0xfffffff6
100068de:	58                   	pop    eax
100068df:	eb 0a                	jmp    0x100068eb
100068e1:	8b c3                	mov    eax,ebx
100068e3:	48                   	dec    eax
100068e4:	f7 d8                	neg    eax
100068e6:	1b c0                	sbb    eax,eax
100068e8:	83 c0 f5             	add    eax,0xfffffff5
100068eb:	50                   	push   eax
100068ec:	ff 15 74 d0 00 10    	call   DWORD PTR ds:0x1000d074
100068f2:	8b f8                	mov    edi,eax
100068f4:	83 ff ff             	cmp    edi,0xffffffff
100068f7:	74 43                	je     0x1000693c
100068f9:	85 ff                	test   edi,edi
100068fb:	74 3f                	je     0x1000693c
100068fd:	57                   	push   edi
100068fe:	ff 15 b0 d0 00 10    	call   DWORD PTR ds:0x1000d0b0
10006904:	85 c0                	test   eax,eax
10006906:	74 34                	je     0x1000693c
10006908:	89 3e                	mov    DWORD PTR [esi],edi
1000690a:	25 ff 00 00 00       	and    eax,0xff
1000690f:	83 f8 02             	cmp    eax,0x2
10006912:	75 06                	jne    0x1000691a
10006914:	80 4e 04 40          	or     BYTE PTR [esi+0x4],0x40
10006918:	eb 09                	jmp    0x10006923
1000691a:	83 f8 03             	cmp    eax,0x3
1000691d:	75 04                	jne    0x10006923
1000691f:	80 4e 04 08          	or     BYTE PTR [esi+0x4],0x8
10006923:	68 a0 0f 00 00       	push   0xfa0
10006928:	8d 46 0c             	lea    eax,[esi+0xc]
1000692b:	50                   	push   eax
1000692c:	e8 a8 1e 00 00       	call   0x100087d9
10006931:	59                   	pop    ecx
10006932:	59                   	pop    ecx
10006933:	85 c0                	test   eax,eax
10006935:	74 37                	je     0x1000696e
10006937:	ff 46 08             	inc    DWORD PTR [esi+0x8]
1000693a:	eb 0a                	jmp    0x10006946
1000693c:	80 4e 04 40          	or     BYTE PTR [esi+0x4],0x40
10006940:	c7 06 fe ff ff ff    	mov    DWORD PTR [esi],0xfffffffe
10006946:	43                   	inc    ebx
10006947:	83 fb 03             	cmp    ebx,0x3
1000694a:	0f 8c 67 ff ff ff    	jl     0x100068b7
10006950:	ff 35 a4 5c 01 10    	push   DWORD PTR ds:0x10015ca4
10006956:	ff 15 ac d0 00 10    	call   DWORD PTR ds:0x1000d0ac
1000695c:	33 c0                	xor    eax,eax
1000695e:	eb 11                	jmp    0x10006971
10006960:	33 c0                	xor    eax,eax
10006962:	40                   	inc    eax
10006963:	c3                   	ret    
10006964:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10006967:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000696e:	83 c8 ff             	or     eax,0xffffffff
10006971:	e8 f7 ee ff ff       	call   0x1000586d
10006976:	c3                   	ret    
10006977:	56                   	push   esi
10006978:	57                   	push   edi
10006979:	be c0 5c 01 10       	mov    esi,0x10015cc0
1000697e:	8b 3e                	mov    edi,DWORD PTR [esi]
10006980:	85 ff                	test   edi,edi
10006982:	74 31                	je     0x100069b5
10006984:	8d 87 00 08 00 00    	lea    eax,[edi+0x800]
1000698a:	eb 1a                	jmp    0x100069a6
1000698c:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
10006990:	74 0a                	je     0x1000699c
10006992:	8d 47 0c             	lea    eax,[edi+0xc]
10006995:	50                   	push   eax
10006996:	ff 15 5c d0 00 10    	call   DWORD PTR ds:0x1000d05c
1000699c:	8b 06                	mov    eax,DWORD PTR [esi]
1000699e:	83 c7 40             	add    edi,0x40
100069a1:	05 00 08 00 00       	add    eax,0x800
100069a6:	3b f8                	cmp    edi,eax
100069a8:	72 e2                	jb     0x1000698c
100069aa:	ff 36                	push   DWORD PTR [esi]
100069ac:	e8 ca cf ff ff       	call   0x1000397b
100069b1:	83 26 00             	and    DWORD PTR [esi],0x0
100069b4:	59                   	pop    ecx
100069b5:	83 c6 04             	add    esi,0x4
100069b8:	81 fe c0 5d 01 10    	cmp    esi,0x10015dc0
100069be:	7c be                	jl     0x1000697e
100069c0:	5f                   	pop    edi
100069c1:	5e                   	pop    esi
100069c2:	c3                   	ret    
100069c3:	53                   	push   ebx
100069c4:	33 db                	xor    ebx,ebx
100069c6:	39 1d cc 5d 01 10    	cmp    DWORD PTR ds:0x10015dcc,ebx
100069cc:	56                   	push   esi
100069cd:	57                   	push   edi
100069ce:	75 05                	jne    0x100069d5
100069d0:	e8 77 0d 00 00       	call   0x1000774c
100069d5:	8b 35 3c 52 01 10    	mov    esi,DWORD PTR ds:0x1001523c
100069db:	33 ff                	xor    edi,edi
100069dd:	3b f3                	cmp    esi,ebx
100069df:	75 18                	jne    0x100069f9
100069e1:	83 c8 ff             	or     eax,0xffffffff
100069e4:	e9 9b 00 00 00       	jmp    0x10006a84
100069e9:	3c 3d                	cmp    al,0x3d
100069eb:	74 01                	je     0x100069ee
100069ed:	47                   	inc    edi
100069ee:	56                   	push   esi
100069ef:	e8 1c 18 00 00       	call   0x10008210
100069f4:	59                   	pop    ecx
100069f5:	8d 74 06 01          	lea    esi,[esi+eax*1+0x1]
100069f9:	8a 06                	mov    al,BYTE PTR [esi]
100069fb:	3a c3                	cmp    al,bl
100069fd:	75 ea                	jne    0x100069e9
100069ff:	6a 04                	push   0x4
10006a01:	47                   	inc    edi
10006a02:	57                   	push   edi
10006a03:	e8 88 fc ff ff       	call   0x10006690
10006a08:	8b f8                	mov    edi,eax
10006a0a:	3b fb                	cmp    edi,ebx
10006a0c:	59                   	pop    ecx
10006a0d:	59                   	pop    ecx
10006a0e:	89 3d c8 53 01 10    	mov    DWORD PTR ds:0x100153c8,edi
10006a14:	74 cb                	je     0x100069e1
10006a16:	8b 35 3c 52 01 10    	mov    esi,DWORD PTR ds:0x1001523c
10006a1c:	55                   	push   ebp
10006a1d:	eb 40                	jmp    0x10006a5f
10006a1f:	56                   	push   esi
10006a20:	e8 eb 17 00 00       	call   0x10008210
10006a25:	8b e8                	mov    ebp,eax
10006a27:	45                   	inc    ebp
10006a28:	80 3e 3d             	cmp    BYTE PTR [esi],0x3d
10006a2b:	59                   	pop    ecx
10006a2c:	74 2f                	je     0x10006a5d
10006a2e:	6a 01                	push   0x1
10006a30:	55                   	push   ebp
10006a31:	e8 5a fc ff ff       	call   0x10006690
10006a36:	3b c3                	cmp    eax,ebx
10006a38:	59                   	pop    ecx
10006a39:	59                   	pop    ecx
10006a3a:	89 07                	mov    DWORD PTR [edi],eax
10006a3c:	74 4a                	je     0x10006a88
10006a3e:	56                   	push   esi
10006a3f:	55                   	push   ebp
10006a40:	50                   	push   eax
10006a41:	e8 55 18 00 00       	call   0x1000829b
10006a46:	83 c4 0c             	add    esp,0xc
10006a49:	85 c0                	test   eax,eax
10006a4b:	74 0d                	je     0x10006a5a
10006a4d:	53                   	push   ebx
10006a4e:	53                   	push   ebx
10006a4f:	53                   	push   ebx
10006a50:	53                   	push   ebx
10006a51:	53                   	push   ebx
10006a52:	e8 23 10 00 00       	call   0x10007a7a
10006a57:	83 c4 14             	add    esp,0x14
10006a5a:	83 c7 04             	add    edi,0x4
10006a5d:	03 f5                	add    esi,ebp
10006a5f:	38 1e                	cmp    BYTE PTR [esi],bl
10006a61:	75 bc                	jne    0x10006a1f
10006a63:	ff 35 3c 52 01 10    	push   DWORD PTR ds:0x1001523c
10006a69:	e8 0d cf ff ff       	call   0x1000397b
10006a6e:	89 1d 3c 52 01 10    	mov    DWORD PTR ds:0x1001523c,ebx
10006a74:	89 1f                	mov    DWORD PTR [edi],ebx
10006a76:	c7 05 c0 5d 01 10 01 	mov    DWORD PTR ds:0x10015dc0,0x1
10006a7d:	00 00 00 
10006a80:	33 c0                	xor    eax,eax
10006a82:	59                   	pop    ecx
10006a83:	5d                   	pop    ebp
10006a84:	5f                   	pop    edi
10006a85:	5e                   	pop    esi
10006a86:	5b                   	pop    ebx
10006a87:	c3                   	ret    
10006a88:	ff 35 c8 53 01 10    	push   DWORD PTR ds:0x100153c8
10006a8e:	e8 e8 ce ff ff       	call   0x1000397b
10006a93:	89 1d c8 53 01 10    	mov    DWORD PTR ds:0x100153c8,ebx
10006a99:	83 c8 ff             	or     eax,0xffffffff
10006a9c:	eb e4                	jmp    0x10006a82
10006a9e:	55                   	push   ebp
10006a9f:	8b ec                	mov    ebp,esp
10006aa1:	51                   	push   ecx
10006aa2:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10006aa5:	53                   	push   ebx
10006aa6:	33 c0                	xor    eax,eax
10006aa8:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
10006aab:	56                   	push   esi
10006aac:	89 07                	mov    DWORD PTR [edi],eax
10006aae:	8b f2                	mov    esi,edx
10006ab0:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10006ab3:	c7 01 01 00 00 00    	mov    DWORD PTR [ecx],0x1
10006ab9:	74 09                	je     0x10006ac4
10006abb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10006abe:	83 45 08 04          	add    DWORD PTR [ebp+0x8],0x4
10006ac2:	89 13                	mov    DWORD PTR [ebx],edx
10006ac4:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006ac7:	80 3e 22             	cmp    BYTE PTR [esi],0x22
10006aca:	75 10                	jne    0x10006adc
10006acc:	33 c0                	xor    eax,eax
10006ace:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
10006ad1:	b3 22                	mov    bl,0x22
10006ad3:	0f 94 c0             	sete   al
10006ad6:	46                   	inc    esi
10006ad7:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006ada:	eb 3c                	jmp    0x10006b18
10006adc:	ff 07                	inc    DWORD PTR [edi]
10006ade:	85 d2                	test   edx,edx
10006ae0:	74 08                	je     0x10006aea
10006ae2:	8a 06                	mov    al,BYTE PTR [esi]
10006ae4:	88 02                	mov    BYTE PTR [edx],al
10006ae6:	42                   	inc    edx
10006ae7:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
10006aea:	8a 1e                	mov    bl,BYTE PTR [esi]
10006aec:	0f b6 c3             	movzx  eax,bl
10006aef:	50                   	push   eax
10006af0:	46                   	inc    esi
10006af1:	e8 2c 2b 00 00       	call   0x10009622
10006af6:	85 c0                	test   eax,eax
10006af8:	59                   	pop    ecx
10006af9:	74 13                	je     0x10006b0e
10006afb:	ff 07                	inc    DWORD PTR [edi]
10006afd:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
10006b01:	74 0a                	je     0x10006b0d
10006b03:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006b06:	8a 06                	mov    al,BYTE PTR [esi]
10006b08:	ff 45 0c             	inc    DWORD PTR [ebp+0xc]
10006b0b:	88 01                	mov    BYTE PTR [ecx],al
10006b0d:	46                   	inc    esi
10006b0e:	84 db                	test   bl,bl
10006b10:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10006b13:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10006b16:	74 32                	je     0x10006b4a
10006b18:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10006b1c:	75 a9                	jne    0x10006ac7
10006b1e:	80 fb 20             	cmp    bl,0x20
10006b21:	74 05                	je     0x10006b28
10006b23:	80 fb 09             	cmp    bl,0x9
10006b26:	75 9f                	jne    0x10006ac7
10006b28:	85 d2                	test   edx,edx
10006b2a:	74 04                	je     0x10006b30
10006b2c:	c6 42 ff 00          	mov    BYTE PTR [edx-0x1],0x0
10006b30:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10006b34:	80 3e 00             	cmp    BYTE PTR [esi],0x0
10006b37:	0f 84 e9 00 00 00    	je     0x10006c26
10006b3d:	8a 06                	mov    al,BYTE PTR [esi]
10006b3f:	3c 20                	cmp    al,0x20
10006b41:	74 04                	je     0x10006b47
10006b43:	3c 09                	cmp    al,0x9
10006b45:	75 06                	jne    0x10006b4d
10006b47:	46                   	inc    esi
10006b48:	eb f3                	jmp    0x10006b3d
10006b4a:	4e                   	dec    esi
10006b4b:	eb e3                	jmp    0x10006b30
10006b4d:	80 3e 00             	cmp    BYTE PTR [esi],0x0
10006b50:	0f 84 d0 00 00 00    	je     0x10006c26
10006b56:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
10006b5a:	74 09                	je     0x10006b65
10006b5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10006b5f:	83 45 08 04          	add    DWORD PTR [ebp+0x8],0x4
10006b63:	89 10                	mov    DWORD PTR [eax],edx
10006b65:	ff 01                	inc    DWORD PTR [ecx]
10006b67:	33 db                	xor    ebx,ebx
10006b69:	43                   	inc    ebx
10006b6a:	33 c9                	xor    ecx,ecx
10006b6c:	eb 02                	jmp    0x10006b70
10006b6e:	46                   	inc    esi
10006b6f:	41                   	inc    ecx
10006b70:	80 3e 5c             	cmp    BYTE PTR [esi],0x5c
10006b73:	74 f9                	je     0x10006b6e
10006b75:	80 3e 22             	cmp    BYTE PTR [esi],0x22
10006b78:	75 26                	jne    0x10006ba0
10006b7a:	f6 c1 01             	test   cl,0x1
10006b7d:	75 1f                	jne    0x10006b9e
10006b7f:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10006b83:	74 0c                	je     0x10006b91
10006b85:	8d 46 01             	lea    eax,[esi+0x1]
10006b88:	80 38 22             	cmp    BYTE PTR [eax],0x22
10006b8b:	75 04                	jne    0x10006b91
10006b8d:	8b f0                	mov    esi,eax
10006b8f:	eb 0d                	jmp    0x10006b9e
10006b91:	33 c0                	xor    eax,eax
10006b93:	33 db                	xor    ebx,ebx
10006b95:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
10006b98:	0f 94 c0             	sete   al
10006b9b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006b9e:	d1 e9                	shr    ecx,1
10006ba0:	85 c9                	test   ecx,ecx
10006ba2:	74 12                	je     0x10006bb6
10006ba4:	49                   	dec    ecx
10006ba5:	85 d2                	test   edx,edx
10006ba7:	74 04                	je     0x10006bad
10006ba9:	c6 02 5c             	mov    BYTE PTR [edx],0x5c
10006bac:	42                   	inc    edx
10006bad:	ff 07                	inc    DWORD PTR [edi]
10006baf:	85 c9                	test   ecx,ecx
10006bb1:	75 f1                	jne    0x10006ba4
10006bb3:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
10006bb6:	8a 06                	mov    al,BYTE PTR [esi]
10006bb8:	84 c0                	test   al,al
10006bba:	74 55                	je     0x10006c11
10006bbc:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10006bc0:	75 08                	jne    0x10006bca
10006bc2:	3c 20                	cmp    al,0x20
10006bc4:	74 4b                	je     0x10006c11
10006bc6:	3c 09                	cmp    al,0x9
10006bc8:	74 47                	je     0x10006c11
10006bca:	85 db                	test   ebx,ebx
10006bcc:	74 3d                	je     0x10006c0b
10006bce:	85 d2                	test   edx,edx
10006bd0:	0f be c0             	movsx  eax,al
10006bd3:	50                   	push   eax
10006bd4:	74 23                	je     0x10006bf9
10006bd6:	e8 47 2a 00 00       	call   0x10009622
10006bdb:	85 c0                	test   eax,eax
10006bdd:	59                   	pop    ecx
10006bde:	74 0d                	je     0x10006bed
10006be0:	8a 06                	mov    al,BYTE PTR [esi]
10006be2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006be5:	ff 45 0c             	inc    DWORD PTR [ebp+0xc]
10006be8:	88 01                	mov    BYTE PTR [ecx],al
10006bea:	46                   	inc    esi
10006beb:	ff 07                	inc    DWORD PTR [edi]
10006bed:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006bf0:	8a 06                	mov    al,BYTE PTR [esi]
10006bf2:	ff 45 0c             	inc    DWORD PTR [ebp+0xc]
10006bf5:	88 01                	mov    BYTE PTR [ecx],al
10006bf7:	eb 0d                	jmp    0x10006c06
10006bf9:	e8 24 2a 00 00       	call   0x10009622
10006bfe:	85 c0                	test   eax,eax
10006c00:	59                   	pop    ecx
10006c01:	74 03                	je     0x10006c06
10006c03:	46                   	inc    esi
10006c04:	ff 07                	inc    DWORD PTR [edi]
10006c06:	ff 07                	inc    DWORD PTR [edi]
10006c08:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10006c0b:	46                   	inc    esi
10006c0c:	e9 56 ff ff ff       	jmp    0x10006b67
10006c11:	85 d2                	test   edx,edx
10006c13:	74 07                	je     0x10006c1c
10006c15:	c6 02 00             	mov    BYTE PTR [edx],0x0
10006c18:	42                   	inc    edx
10006c19:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
10006c1c:	ff 07                	inc    DWORD PTR [edi]
10006c1e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10006c21:	e9 0e ff ff ff       	jmp    0x10006b34
10006c26:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10006c29:	85 c0                	test   eax,eax
10006c2b:	5e                   	pop    esi
10006c2c:	5b                   	pop    ebx
10006c2d:	74 03                	je     0x10006c32
10006c2f:	83 20 00             	and    DWORD PTR [eax],0x0
10006c32:	ff 01                	inc    DWORD PTR [ecx]
10006c34:	c9                   	leave  
10006c35:	c3                   	ret    
10006c36:	55                   	push   ebp
10006c37:	8b ec                	mov    ebp,esp
10006c39:	83 ec 0c             	sub    esp,0xc
10006c3c:	53                   	push   ebx
10006c3d:	33 db                	xor    ebx,ebx
10006c3f:	39 1d cc 5d 01 10    	cmp    DWORD PTR ds:0x10015dcc,ebx
10006c45:	56                   	push   esi
10006c46:	57                   	push   edi
10006c47:	75 05                	jne    0x10006c4e
10006c49:	e8 fe 0a 00 00       	call   0x1000774c
10006c4e:	68 04 01 00 00       	push   0x104
10006c53:	be 48 5a 01 10       	mov    esi,0x10015a48
10006c58:	56                   	push   esi
10006c59:	53                   	push   ebx
10006c5a:	88 1d 4c 5b 01 10    	mov    BYTE PTR ds:0x10015b4c,bl
10006c60:	ff 15 78 d0 00 10    	call   DWORD PTR ds:0x1000d078
10006c66:	a1 fc 5d 01 10       	mov    eax,ds:0x10015dfc
10006c6b:	3b c3                	cmp    eax,ebx
10006c6d:	89 35 d8 53 01 10    	mov    DWORD PTR ds:0x100153d8,esi
10006c73:	74 07                	je     0x10006c7c
10006c75:	38 18                	cmp    BYTE PTR [eax],bl
10006c77:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006c7a:	75 03                	jne    0x10006c7f
10006c7c:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
10006c7f:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
10006c82:	8d 45 f8             	lea    eax,[ebp-0x8]
10006c85:	50                   	push   eax
10006c86:	53                   	push   ebx
10006c87:	53                   	push   ebx
10006c88:	8d 7d f4             	lea    edi,[ebp-0xc]
10006c8b:	e8 0e fe ff ff       	call   0x10006a9e
10006c90:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006c93:	83 c4 0c             	add    esp,0xc
10006c96:	3d ff ff ff 3f       	cmp    eax,0x3fffffff
10006c9b:	73 4a                	jae    0x10006ce7
10006c9d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
10006ca0:	83 f9 ff             	cmp    ecx,0xffffffff
10006ca3:	73 42                	jae    0x10006ce7
10006ca5:	8b f8                	mov    edi,eax
10006ca7:	c1 e7 02             	shl    edi,0x2
10006caa:	8d 04 0f             	lea    eax,[edi+ecx*1]
10006cad:	3b c1                	cmp    eax,ecx
10006caf:	72 36                	jb     0x10006ce7
10006cb1:	50                   	push   eax
10006cb2:	e8 99 f9 ff ff       	call   0x10006650
10006cb7:	8b f0                	mov    esi,eax
10006cb9:	3b f3                	cmp    esi,ebx
10006cbb:	59                   	pop    ecx
10006cbc:	74 29                	je     0x10006ce7
10006cbe:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
10006cc1:	8d 45 f8             	lea    eax,[ebp-0x8]
10006cc4:	50                   	push   eax
10006cc5:	03 fe                	add    edi,esi
10006cc7:	57                   	push   edi
10006cc8:	56                   	push   esi
10006cc9:	8d 7d f4             	lea    edi,[ebp-0xc]
10006ccc:	e8 cd fd ff ff       	call   0x10006a9e
10006cd1:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006cd4:	83 c4 0c             	add    esp,0xc
10006cd7:	48                   	dec    eax
10006cd8:	a3 bc 53 01 10       	mov    ds:0x100153bc,eax
10006cdd:	89 35 c0 53 01 10    	mov    DWORD PTR ds:0x100153c0,esi
10006ce3:	33 c0                	xor    eax,eax
10006ce5:	eb 03                	jmp    0x10006cea
10006ce7:	83 c8 ff             	or     eax,0xffffffff
10006cea:	5f                   	pop    edi
10006ceb:	5e                   	pop    esi
10006cec:	5b                   	pop    ebx
10006ced:	c9                   	leave  
10006cee:	c3                   	ret    
10006cef:	51                   	push   ecx
10006cf0:	51                   	push   ecx
10006cf1:	a1 50 5b 01 10       	mov    eax,ds:0x10015b50
10006cf6:	53                   	push   ebx
10006cf7:	55                   	push   ebp
10006cf8:	56                   	push   esi
10006cf9:	57                   	push   edi
10006cfa:	8b 3d c8 d0 00 10    	mov    edi,DWORD PTR ds:0x1000d0c8
10006d00:	33 db                	xor    ebx,ebx
10006d02:	33 f6                	xor    esi,esi
10006d04:	3b c3                	cmp    eax,ebx
10006d06:	6a 02                	push   0x2
10006d08:	5d                   	pop    ebp
10006d09:	75 2d                	jne    0x10006d38
10006d0b:	ff d7                	call   edi
10006d0d:	8b f0                	mov    esi,eax
10006d0f:	3b f3                	cmp    esi,ebx
10006d11:	74 0c                	je     0x10006d1f
10006d13:	c7 05 50 5b 01 10 01 	mov    DWORD PTR ds:0x10015b50,0x1
10006d1a:	00 00 00 
10006d1d:	eb 22                	jmp    0x10006d41
10006d1f:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10006d25:	83 f8 78             	cmp    eax,0x78
10006d28:	75 09                	jne    0x10006d33
10006d2a:	8b c5                	mov    eax,ebp
10006d2c:	a3 50 5b 01 10       	mov    ds:0x10015b50,eax
10006d31:	eb 05                	jmp    0x10006d38
10006d33:	a1 50 5b 01 10       	mov    eax,ds:0x10015b50
10006d38:	83 f8 01             	cmp    eax,0x1
10006d3b:	0f 85 84 00 00 00    	jne    0x10006dc5
10006d41:	3b f3                	cmp    esi,ebx
10006d43:	75 0f                	jne    0x10006d54
10006d45:	ff d7                	call   edi
10006d47:	8b f0                	mov    esi,eax
10006d49:	3b f3                	cmp    esi,ebx
10006d4b:	75 07                	jne    0x10006d54
10006d4d:	33 c0                	xor    eax,eax
10006d4f:	e9 c9 00 00 00       	jmp    0x10006e1d
10006d54:	66 39 1e             	cmp    WORD PTR [esi],bx
10006d57:	8b c6                	mov    eax,esi
10006d59:	74 0e                	je     0x10006d69
10006d5b:	03 c5                	add    eax,ebp
10006d5d:	66 39 18             	cmp    WORD PTR [eax],bx
10006d60:	75 f9                	jne    0x10006d5b
10006d62:	03 c5                	add    eax,ebp
10006d64:	66 39 18             	cmp    WORD PTR [eax],bx
10006d67:	75 f2                	jne    0x10006d5b
10006d69:	8b 3d c4 d0 00 10    	mov    edi,DWORD PTR ds:0x1000d0c4
10006d6f:	53                   	push   ebx
10006d70:	53                   	push   ebx
10006d71:	53                   	push   ebx
10006d72:	2b c6                	sub    eax,esi
10006d74:	53                   	push   ebx
10006d75:	d1 f8                	sar    eax,1
10006d77:	40                   	inc    eax
10006d78:	50                   	push   eax
10006d79:	56                   	push   esi
10006d7a:	53                   	push   ebx
10006d7b:	53                   	push   ebx
10006d7c:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
10006d80:	ff d7                	call   edi
10006d82:	8b e8                	mov    ebp,eax
10006d84:	3b eb                	cmp    ebp,ebx
10006d86:	74 32                	je     0x10006dba
10006d88:	55                   	push   ebp
10006d89:	e8 c2 f8 ff ff       	call   0x10006650
10006d8e:	3b c3                	cmp    eax,ebx
10006d90:	59                   	pop    ecx
10006d91:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10006d95:	74 23                	je     0x10006dba
10006d97:	53                   	push   ebx
10006d98:	53                   	push   ebx
10006d99:	55                   	push   ebp
10006d9a:	50                   	push   eax
10006d9b:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
10006d9f:	56                   	push   esi
10006da0:	53                   	push   ebx
10006da1:	53                   	push   ebx
10006da2:	ff d7                	call   edi
10006da4:	85 c0                	test   eax,eax
10006da6:	75 0e                	jne    0x10006db6
10006da8:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10006dac:	e8 ca cb ff ff       	call   0x1000397b
10006db1:	59                   	pop    ecx
10006db2:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
10006db6:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
10006dba:	56                   	push   esi
10006dbb:	ff 15 c0 d0 00 10    	call   DWORD PTR ds:0x1000d0c0
10006dc1:	8b c3                	mov    eax,ebx
10006dc3:	eb 58                	jmp    0x10006e1d
10006dc5:	3b c5                	cmp    eax,ebp
10006dc7:	74 04                	je     0x10006dcd
10006dc9:	3b c3                	cmp    eax,ebx
10006dcb:	75 80                	jne    0x10006d4d
10006dcd:	ff 15 bc d0 00 10    	call   DWORD PTR ds:0x1000d0bc
10006dd3:	8b f0                	mov    esi,eax
10006dd5:	3b f3                	cmp    esi,ebx
10006dd7:	0f 84 70 ff ff ff    	je     0x10006d4d
10006ddd:	38 1e                	cmp    BYTE PTR [esi],bl
10006ddf:	74 0a                	je     0x10006deb
10006de1:	40                   	inc    eax
10006de2:	38 18                	cmp    BYTE PTR [eax],bl
10006de4:	75 fb                	jne    0x10006de1
10006de6:	40                   	inc    eax
10006de7:	38 18                	cmp    BYTE PTR [eax],bl
10006de9:	75 f6                	jne    0x10006de1
10006deb:	2b c6                	sub    eax,esi
10006ded:	40                   	inc    eax
10006dee:	8b e8                	mov    ebp,eax
10006df0:	55                   	push   ebp
10006df1:	e8 5a f8 ff ff       	call   0x10006650
10006df6:	8b f8                	mov    edi,eax
10006df8:	3b fb                	cmp    edi,ebx
10006dfa:	59                   	pop    ecx
10006dfb:	75 0c                	jne    0x10006e09
10006dfd:	56                   	push   esi
10006dfe:	ff 15 b8 d0 00 10    	call   DWORD PTR ds:0x1000d0b8
10006e04:	e9 44 ff ff ff       	jmp    0x10006d4d
10006e09:	55                   	push   ebp
10006e0a:	56                   	push   esi
10006e0b:	57                   	push   edi
10006e0c:	e8 2f 28 00 00       	call   0x10009640
10006e11:	83 c4 0c             	add    esp,0xc
10006e14:	56                   	push   esi
10006e15:	ff 15 b8 d0 00 10    	call   DWORD PTR ds:0x1000d0b8
10006e1b:	8b c7                	mov    eax,edi
10006e1d:	5f                   	pop    edi
10006e1e:	5e                   	pop    esi
10006e1f:	5d                   	pop    ebp
10006e20:	5b                   	pop    ebx
10006e21:	59                   	pop    ecx
10006e22:	59                   	pop    ecx
10006e23:	c3                   	ret    
10006e24:	56                   	push   esi
10006e25:	57                   	push   edi
10006e26:	b8 b0 e3 00 10       	mov    eax,0x1000e3b0
10006e2b:	bf b0 e3 00 10       	mov    edi,0x1000e3b0
10006e30:	3b c7                	cmp    eax,edi
10006e32:	8b f0                	mov    esi,eax
10006e34:	73 0f                	jae    0x10006e45
10006e36:	8b 06                	mov    eax,DWORD PTR [esi]
10006e38:	85 c0                	test   eax,eax
10006e3a:	74 02                	je     0x10006e3e
10006e3c:	ff d0                	call   eax
10006e3e:	83 c6 04             	add    esi,0x4
10006e41:	3b f7                	cmp    esi,edi
10006e43:	72 f1                	jb     0x10006e36
10006e45:	5f                   	pop    edi
10006e46:	5e                   	pop    esi
10006e47:	c3                   	ret    
10006e48:	56                   	push   esi
10006e49:	57                   	push   edi
10006e4a:	b8 b8 e3 00 10       	mov    eax,0x1000e3b8
10006e4f:	bf b8 e3 00 10       	mov    edi,0x1000e3b8
10006e54:	3b c7                	cmp    eax,edi
10006e56:	8b f0                	mov    esi,eax
10006e58:	73 0f                	jae    0x10006e69
10006e5a:	8b 06                	mov    eax,DWORD PTR [esi]
10006e5c:	85 c0                	test   eax,eax
10006e5e:	74 02                	je     0x10006e62
10006e60:	ff d0                	call   eax
10006e62:	83 c6 04             	add    esi,0x4
10006e65:	3b f7                	cmp    esi,edi
10006e67:	72 f1                	jb     0x10006e5a
10006e69:	5f                   	pop    edi
10006e6a:	5e                   	pop    esi
10006e6b:	c3                   	ret    
10006e6c:	55                   	push   ebp
10006e6d:	8b ec                	mov    ebp,esp
10006e6f:	51                   	push   ecx
10006e70:	51                   	push   ecx
10006e71:	56                   	push   esi
10006e72:	e8 3c f4 ff ff       	call   0x100062b3
10006e77:	8b f0                	mov    esi,eax
10006e79:	85 f6                	test   esi,esi
10006e7b:	0f 84 46 01 00 00    	je     0x10006fc7
10006e81:	8b 56 5c             	mov    edx,DWORD PTR [esi+0x5c]
10006e84:	a1 64 04 01 10       	mov    eax,ds:0x10010464
10006e89:	57                   	push   edi
10006e8a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10006e8d:	8b ca                	mov    ecx,edx
10006e8f:	53                   	push   ebx
10006e90:	39 39                	cmp    DWORD PTR [ecx],edi
10006e92:	74 0e                	je     0x10006ea2
10006e94:	8b d8                	mov    ebx,eax
10006e96:	6b db 0c             	imul   ebx,ebx,0xc
10006e99:	83 c1 0c             	add    ecx,0xc
10006e9c:	03 da                	add    ebx,edx
10006e9e:	3b cb                	cmp    ecx,ebx
10006ea0:	72 ee                	jb     0x10006e90
10006ea2:	6b c0 0c             	imul   eax,eax,0xc
10006ea5:	03 c2                	add    eax,edx
10006ea7:	3b c8                	cmp    ecx,eax
10006ea9:	73 08                	jae    0x10006eb3
10006eab:	39 39                	cmp    DWORD PTR [ecx],edi
10006ead:	75 04                	jne    0x10006eb3
10006eaf:	8b c1                	mov    eax,ecx
10006eb1:	eb 02                	jmp    0x10006eb5
10006eb3:	33 c0                	xor    eax,eax
10006eb5:	85 c0                	test   eax,eax
10006eb7:	74 0a                	je     0x10006ec3
10006eb9:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
10006ebc:	85 db                	test   ebx,ebx
10006ebe:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10006ec1:	75 07                	jne    0x10006eca
10006ec3:	33 c0                	xor    eax,eax
10006ec5:	e9 fb 00 00 00       	jmp    0x10006fc5
10006eca:	83 fb 05             	cmp    ebx,0x5
10006ecd:	75 0c                	jne    0x10006edb
10006ecf:	83 60 08 00          	and    DWORD PTR [eax+0x8],0x0
10006ed3:	33 c0                	xor    eax,eax
10006ed5:	40                   	inc    eax
10006ed6:	e9 ea 00 00 00       	jmp    0x10006fc5
10006edb:	83 fb 01             	cmp    ebx,0x1
10006ede:	0f 84 de 00 00 00    	je     0x10006fc2
10006ee4:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
10006ee7:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
10006eea:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006eed:	89 4e 60             	mov    DWORD PTR [esi+0x60],ecx
10006ef0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
10006ef3:	83 f9 08             	cmp    ecx,0x8
10006ef6:	0f 85 b8 00 00 00    	jne    0x10006fb4
10006efc:	8b 0d 58 04 01 10    	mov    ecx,DWORD PTR ds:0x10010458
10006f02:	8b 3d 5c 04 01 10    	mov    edi,DWORD PTR ds:0x1001045c
10006f08:	8b d1                	mov    edx,ecx
10006f0a:	03 f9                	add    edi,ecx
10006f0c:	3b d7                	cmp    edx,edi
10006f0e:	7d 24                	jge    0x10006f34
10006f10:	6b c9 0c             	imul   ecx,ecx,0xc
10006f13:	8b 7e 5c             	mov    edi,DWORD PTR [esi+0x5c]
10006f16:	83 64 39 08 00       	and    DWORD PTR [ecx+edi*1+0x8],0x0
10006f1b:	8b 3d 58 04 01 10    	mov    edi,DWORD PTR ds:0x10010458
10006f21:	8b 1d 5c 04 01 10    	mov    ebx,DWORD PTR ds:0x1001045c
10006f27:	42                   	inc    edx
10006f28:	03 df                	add    ebx,edi
10006f2a:	83 c1 0c             	add    ecx,0xc
10006f2d:	3b d3                	cmp    edx,ebx
10006f2f:	7c e2                	jl     0x10006f13
10006f31:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
10006f34:	8b 00                	mov    eax,DWORD PTR [eax]
10006f36:	3d 8e 00 00 c0       	cmp    eax,0xc000008e
10006f3b:	8b 7e 64             	mov    edi,DWORD PTR [esi+0x64]
10006f3e:	75 09                	jne    0x10006f49
10006f40:	c7 46 64 83 00 00 00 	mov    DWORD PTR [esi+0x64],0x83
10006f47:	eb 5e                	jmp    0x10006fa7
10006f49:	3d 90 00 00 c0       	cmp    eax,0xc0000090
10006f4e:	75 09                	jne    0x10006f59
10006f50:	c7 46 64 81 00 00 00 	mov    DWORD PTR [esi+0x64],0x81
10006f57:	eb 4e                	jmp    0x10006fa7
10006f59:	3d 91 00 00 c0       	cmp    eax,0xc0000091
10006f5e:	75 09                	jne    0x10006f69
10006f60:	c7 46 64 84 00 00 00 	mov    DWORD PTR [esi+0x64],0x84
10006f67:	eb 3e                	jmp    0x10006fa7
10006f69:	3d 93 00 00 c0       	cmp    eax,0xc0000093
10006f6e:	75 09                	jne    0x10006f79
10006f70:	c7 46 64 85 00 00 00 	mov    DWORD PTR [esi+0x64],0x85
10006f77:	eb 2e                	jmp    0x10006fa7
10006f79:	3d 8d 00 00 c0       	cmp    eax,0xc000008d
10006f7e:	75 09                	jne    0x10006f89
10006f80:	c7 46 64 82 00 00 00 	mov    DWORD PTR [esi+0x64],0x82
10006f87:	eb 1e                	jmp    0x10006fa7
10006f89:	3d 8f 00 00 c0       	cmp    eax,0xc000008f
10006f8e:	75 09                	jne    0x10006f99
10006f90:	c7 46 64 86 00 00 00 	mov    DWORD PTR [esi+0x64],0x86
10006f97:	eb 0e                	jmp    0x10006fa7
10006f99:	3d 92 00 00 c0       	cmp    eax,0xc0000092
10006f9e:	75 07                	jne    0x10006fa7
10006fa0:	c7 46 64 8a 00 00 00 	mov    DWORD PTR [esi+0x64],0x8a
10006fa7:	ff 76 64             	push   DWORD PTR [esi+0x64]
10006faa:	6a 08                	push   0x8
10006fac:	ff d3                	call   ebx
10006fae:	59                   	pop    ecx
10006faf:	89 7e 64             	mov    DWORD PTR [esi+0x64],edi
10006fb2:	eb 07                	jmp    0x10006fbb
10006fb4:	83 60 08 00          	and    DWORD PTR [eax+0x8],0x0
10006fb8:	51                   	push   ecx
10006fb9:	ff d3                	call   ebx
10006fbb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006fbe:	59                   	pop    ecx
10006fbf:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
10006fc2:	83 c8 ff             	or     eax,0xffffffff
10006fc5:	5b                   	pop    ebx
10006fc6:	5f                   	pop    edi
10006fc7:	5e                   	pop    esi
10006fc8:	c9                   	leave  
10006fc9:	c3                   	ret    
10006fca:	b8 63 73 6d e0       	mov    eax,0xe06d7363
10006fcf:	39 44 24 04          	cmp    DWORD PTR [esp+0x4],eax
10006fd3:	75 0d                	jne    0x10006fe2
10006fd5:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10006fd9:	50                   	push   eax
10006fda:	e8 8d fe ff ff       	call   0x10006e6c
10006fdf:	59                   	pop    ecx
10006fe0:	59                   	pop    ecx
10006fe1:	c3                   	ret    
10006fe2:	33 c0                	xor    eax,eax
10006fe4:	c3                   	ret    
10006fe5:	55                   	push   ebp
10006fe6:	8b ec                	mov    ebp,esp
10006fe8:	83 ec 10             	sub    esp,0x10
10006feb:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10006ff0:	83 65 f8 00          	and    DWORD PTR [ebp-0x8],0x0
10006ff4:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10006ff8:	53                   	push   ebx
10006ff9:	57                   	push   edi
10006ffa:	bf 4e e6 40 bb       	mov    edi,0xbb40e64e
10006fff:	3b c7                	cmp    eax,edi
10007001:	bb 00 00 ff ff       	mov    ebx,0xffff0000
10007006:	74 0d                	je     0x10007015
10007008:	85 c3                	test   ebx,eax
1000700a:	74 09                	je     0x10007015
1000700c:	f7 d0                	not    eax
1000700e:	a3 14 00 01 10       	mov    ds:0x10010014,eax
10007013:	eb 60                	jmp    0x10007075
10007015:	56                   	push   esi
10007016:	8d 45 f8             	lea    eax,[ebp-0x8]
10007019:	50                   	push   eax
1000701a:	ff 15 d8 d0 00 10    	call   DWORD PTR ds:0x1000d0d8
10007020:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
10007023:	33 75 f8             	xor    esi,DWORD PTR [ebp-0x8]
10007026:	ff 15 d4 d0 00 10    	call   DWORD PTR ds:0x1000d0d4
1000702c:	33 f0                	xor    esi,eax
1000702e:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
10007034:	33 f0                	xor    esi,eax
10007036:	ff 15 d0 d0 00 10    	call   DWORD PTR ds:0x1000d0d0
1000703c:	33 f0                	xor    esi,eax
1000703e:	8d 45 f0             	lea    eax,[ebp-0x10]
10007041:	50                   	push   eax
10007042:	ff 15 cc d0 00 10    	call   DWORD PTR ds:0x1000d0cc
10007048:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000704b:	33 45 f0             	xor    eax,DWORD PTR [ebp-0x10]
1000704e:	33 f0                	xor    esi,eax
10007050:	3b f7                	cmp    esi,edi
10007052:	75 07                	jne    0x1000705b
10007054:	be 4f e6 40 bb       	mov    esi,0xbb40e64f
10007059:	eb 0b                	jmp    0x10007066
1000705b:	85 f3                	test   ebx,esi
1000705d:	75 07                	jne    0x10007066
1000705f:	8b c6                	mov    eax,esi
10007061:	c1 e0 10             	shl    eax,0x10
10007064:	0b f0                	or     esi,eax
10007066:	89 35 10 00 01 10    	mov    DWORD PTR ds:0x10010010,esi
1000706c:	f7 d6                	not    esi
1000706e:	89 35 14 00 01 10    	mov    DWORD PTR ds:0x10010014,esi
10007074:	5e                   	pop    esi
10007075:	5f                   	pop    edi
10007076:	5b                   	pop    ebx
10007077:	c9                   	leave  
10007078:	c3                   	ret    
10007079:	cc                   	int3   
1000707a:	cc                   	int3   
1000707b:	cc                   	int3   
1000707c:	cc                   	int3   
1000707d:	cc                   	int3   
1000707e:	cc                   	int3   
1000707f:	cc                   	int3   
10007080:	55                   	push   ebp
10007081:	8b ec                	mov    ebp,esp
10007083:	57                   	push   edi
10007084:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10007087:	33 c0                	xor    eax,eax
10007089:	83 c9 ff             	or     ecx,0xffffffff
1000708c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
1000708e:	83 c1 01             	add    ecx,0x1
10007091:	f7 d9                	neg    ecx
10007093:	83 ef 01             	sub    edi,0x1
10007096:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
10007099:	fd                   	std    
1000709a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
1000709c:	83 c7 01             	add    edi,0x1
1000709f:	38 07                	cmp    BYTE PTR [edi],al
100070a1:	74 04                	je     0x100070a7
100070a3:	33 c0                	xor    eax,eax
100070a5:	eb 02                	jmp    0x100070a9
100070a7:	8b c7                	mov    eax,edi
100070a9:	fc                   	cld    
100070aa:	5f                   	pop    edi
100070ab:	c9                   	leave  
100070ac:	c3                   	ret    
100070ad:	2d a4 03 00 00       	sub    eax,0x3a4
100070b2:	74 22                	je     0x100070d6
100070b4:	83 e8 04             	sub    eax,0x4
100070b7:	74 17                	je     0x100070d0
100070b9:	83 e8 0d             	sub    eax,0xd
100070bc:	74 0c                	je     0x100070ca
100070be:	48                   	dec    eax
100070bf:	74 03                	je     0x100070c4
100070c1:	33 c0                	xor    eax,eax
100070c3:	c3                   	ret    
100070c4:	b8 04 04 00 00       	mov    eax,0x404
100070c9:	c3                   	ret    
100070ca:	b8 12 04 00 00       	mov    eax,0x412
100070cf:	c3                   	ret    
100070d0:	b8 04 08 00 00       	mov    eax,0x804
100070d5:	c3                   	ret    
100070d6:	b8 11 04 00 00       	mov    eax,0x411
100070db:	c3                   	ret    
100070dc:	53                   	push   ebx
100070dd:	55                   	push   ebp
100070de:	56                   	push   esi
100070df:	57                   	push   edi
100070e0:	bd 01 01 00 00       	mov    ebp,0x101
100070e5:	8b f0                	mov    esi,eax
100070e7:	55                   	push   ebp
100070e8:	33 ff                	xor    edi,edi
100070ea:	8d 5e 1c             	lea    ebx,[esi+0x1c]
100070ed:	57                   	push   edi
100070ee:	53                   	push   ebx
100070ef:	e8 fc 14 00 00       	call   0x100085f0
100070f4:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
100070f7:	89 7e 08             	mov    DWORD PTR [esi+0x8],edi
100070fa:	89 7e 0c             	mov    DWORD PTR [esi+0xc],edi
100070fd:	33 c0                	xor    eax,eax
100070ff:	8d 7e 10             	lea    edi,[esi+0x10]
10007102:	ab                   	stos   DWORD PTR es:[edi],eax
10007103:	ab                   	stos   DWORD PTR es:[edi],eax
10007104:	ab                   	stos   DWORD PTR es:[edi],eax
10007105:	b8 70 04 01 10       	mov    eax,0x10010470
1000710a:	83 c4 0c             	add    esp,0xc
1000710d:	2b c6                	sub    eax,esi
1000710f:	8a 0c 18             	mov    cl,BYTE PTR [eax+ebx*1]
10007112:	88 0b                	mov    BYTE PTR [ebx],cl
10007114:	43                   	inc    ebx
10007115:	4d                   	dec    ebp
10007116:	75 f7                	jne    0x1000710f
10007118:	8d 8e 1d 01 00 00    	lea    ecx,[esi+0x11d]
1000711e:	be 00 01 00 00       	mov    esi,0x100
10007123:	8a 14 01             	mov    dl,BYTE PTR [ecx+eax*1]
10007126:	88 11                	mov    BYTE PTR [ecx],dl
10007128:	41                   	inc    ecx
10007129:	4e                   	dec    esi
1000712a:	75 f7                	jne    0x10007123
1000712c:	5f                   	pop    edi
1000712d:	5e                   	pop    esi
1000712e:	5d                   	pop    ebp
1000712f:	5b                   	pop    ebx
10007130:	c3                   	ret    
10007131:	55                   	push   ebp
10007132:	8d ac 24 64 fb ff ff 	lea    ebp,[esp-0x49c]
10007139:	81 ec 1c 05 00 00    	sub    esp,0x51c
1000713f:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007144:	33 c5                	xor    eax,ebp
10007146:	89 85 98 04 00 00    	mov    DWORD PTR [ebp+0x498],eax
1000714c:	53                   	push   ebx
1000714d:	57                   	push   edi
1000714e:	8d 45 84             	lea    eax,[ebp-0x7c]
10007151:	50                   	push   eax
10007152:	ff 76 04             	push   DWORD PTR [esi+0x4]
10007155:	ff 15 dc d0 00 10    	call   DWORD PTR ds:0x1000d0dc
1000715b:	85 c0                	test   eax,eax
1000715d:	bf 00 01 00 00       	mov    edi,0x100
10007162:	0f 84 ef 00 00 00    	je     0x10007257
10007168:	33 c0                	xor    eax,eax
1000716a:	88 84 05 98 03 00 00 	mov    BYTE PTR [ebp+eax*1+0x398],al
10007171:	40                   	inc    eax
10007172:	3b c7                	cmp    eax,edi
10007174:	72 f4                	jb     0x1000716a
10007176:	8a 45 8a             	mov    al,BYTE PTR [ebp-0x76]
10007179:	84 c0                	test   al,al
1000717b:	c6 85 98 03 00 00 20 	mov    BYTE PTR [ebp+0x398],0x20
10007182:	74 2b                	je     0x100071af
10007184:	8d 5d 8b             	lea    ebx,[ebp-0x75]
10007187:	0f b6 c8             	movzx  ecx,al
1000718a:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
1000718d:	3b c8                	cmp    ecx,eax
1000718f:	77 16                	ja     0x100071a7
10007191:	2b c1                	sub    eax,ecx
10007193:	40                   	inc    eax
10007194:	50                   	push   eax
10007195:	8d 94 0d 98 03 00 00 	lea    edx,[ebp+ecx*1+0x398]
1000719c:	6a 20                	push   0x20
1000719e:	52                   	push   edx
1000719f:	e8 4c 14 00 00       	call   0x100085f0
100071a4:	83 c4 0c             	add    esp,0xc
100071a7:	43                   	inc    ebx
100071a8:	8a 03                	mov    al,BYTE PTR [ebx]
100071aa:	43                   	inc    ebx
100071ab:	84 c0                	test   al,al
100071ad:	75 d8                	jne    0x10007187
100071af:	6a 00                	push   0x0
100071b1:	ff 76 0c             	push   DWORD PTR [esi+0xc]
100071b4:	8d 45 98             	lea    eax,[ebp-0x68]
100071b7:	ff 76 04             	push   DWORD PTR [esi+0x4]
100071ba:	50                   	push   eax
100071bb:	57                   	push   edi
100071bc:	8d 85 98 03 00 00    	lea    eax,[ebp+0x398]
100071c2:	50                   	push   eax
100071c3:	6a 01                	push   0x1
100071c5:	6a 00                	push   0x0
100071c7:	e8 91 2d 00 00       	call   0x10009f5d
100071cc:	33 db                	xor    ebx,ebx
100071ce:	53                   	push   ebx
100071cf:	ff 76 04             	push   DWORD PTR [esi+0x4]
100071d2:	8d 85 98 02 00 00    	lea    eax,[ebp+0x298]
100071d8:	57                   	push   edi
100071d9:	50                   	push   eax
100071da:	57                   	push   edi
100071db:	8d 85 98 03 00 00    	lea    eax,[ebp+0x398]
100071e1:	50                   	push   eax
100071e2:	57                   	push   edi
100071e3:	ff 76 0c             	push   DWORD PTR [esi+0xc]
100071e6:	53                   	push   ebx
100071e7:	e8 76 2b 00 00       	call   0x10009d62
100071ec:	83 c4 44             	add    esp,0x44
100071ef:	53                   	push   ebx
100071f0:	ff 76 04             	push   DWORD PTR [esi+0x4]
100071f3:	8d 85 98 01 00 00    	lea    eax,[ebp+0x198]
100071f9:	57                   	push   edi
100071fa:	50                   	push   eax
100071fb:	57                   	push   edi
100071fc:	8d 85 98 03 00 00    	lea    eax,[ebp+0x398]
10007202:	50                   	push   eax
10007203:	68 00 02 00 00       	push   0x200
10007208:	ff 76 0c             	push   DWORD PTR [esi+0xc]
1000720b:	53                   	push   ebx
1000720c:	e8 51 2b 00 00       	call   0x10009d62
10007211:	83 c4 24             	add    esp,0x24
10007214:	33 c0                	xor    eax,eax
10007216:	0f b7 4c 45 98       	movzx  ecx,WORD PTR [ebp+eax*2-0x68]
1000721b:	f6 c1 01             	test   cl,0x1
1000721e:	74 0e                	je     0x1000722e
10007220:	80 4c 06 1d 10       	or     BYTE PTR [esi+eax*1+0x1d],0x10
10007225:	8a 8c 05 98 02 00 00 	mov    cl,BYTE PTR [ebp+eax*1+0x298]
1000722c:	eb 11                	jmp    0x1000723f
1000722e:	f6 c1 02             	test   cl,0x2
10007231:	74 15                	je     0x10007248
10007233:	80 4c 06 1d 20       	or     BYTE PTR [esi+eax*1+0x1d],0x20
10007238:	8a 8c 05 98 01 00 00 	mov    cl,BYTE PTR [ebp+eax*1+0x198]
1000723f:	88 8c 06 1d 01 00 00 	mov    BYTE PTR [esi+eax*1+0x11d],cl
10007246:	eb 08                	jmp    0x10007250
10007248:	c6 84 06 1d 01 00 00 	mov    BYTE PTR [esi+eax*1+0x11d],0x0
1000724f:	00 
10007250:	40                   	inc    eax
10007251:	3b c7                	cmp    eax,edi
10007253:	72 c1                	jb     0x10007216
10007255:	eb 4d                	jmp    0x100072a4
10007257:	8d 86 1d 01 00 00    	lea    eax,[esi+0x11d]
1000725d:	c7 45 80 9f ff ff ff 	mov    DWORD PTR [ebp-0x80],0xffffff9f
10007264:	33 c9                	xor    ecx,ecx
10007266:	29 45 80             	sub    DWORD PTR [ebp-0x80],eax
10007269:	8b 55 80             	mov    edx,DWORD PTR [ebp-0x80]
1000726c:	8d 84 0e 1d 01 00 00 	lea    eax,[esi+ecx*1+0x11d]
10007273:	03 d0                	add    edx,eax
10007275:	8d 5a 20             	lea    ebx,[edx+0x20]
10007278:	83 fb 19             	cmp    ebx,0x19
1000727b:	77 0c                	ja     0x10007289
1000727d:	80 4c 0e 1d 10       	or     BYTE PTR [esi+ecx*1+0x1d],0x10
10007282:	8a d1                	mov    dl,cl
10007284:	80 c2 20             	add    dl,0x20
10007287:	eb 0f                	jmp    0x10007298
10007289:	83 fa 19             	cmp    edx,0x19
1000728c:	77 0e                	ja     0x1000729c
1000728e:	80 4c 0e 1d 20       	or     BYTE PTR [esi+ecx*1+0x1d],0x20
10007293:	8a d1                	mov    dl,cl
10007295:	80 ea 20             	sub    dl,0x20
10007298:	88 10                	mov    BYTE PTR [eax],dl
1000729a:	eb 03                	jmp    0x1000729f
1000729c:	c6 00 00             	mov    BYTE PTR [eax],0x0
1000729f:	41                   	inc    ecx
100072a0:	3b cf                	cmp    ecx,edi
100072a2:	72 c5                	jb     0x10007269
100072a4:	8b 8d 98 04 00 00    	mov    ecx,DWORD PTR [ebp+0x498]
100072aa:	5f                   	pop    edi
100072ab:	33 cd                	xor    ecx,ebp
100072ad:	5b                   	pop    ebx
100072ae:	e8 68 c8 ff ff       	call   0x10003b1b
100072b3:	81 c5 9c 04 00 00    	add    ebp,0x49c
100072b9:	c9                   	leave  
100072ba:	c3                   	ret    
100072bb:	6a 0c                	push   0xc
100072bd:	68 c8 e4 00 10       	push   0x1000e4c8
100072c2:	e8 61 e5 ff ff       	call   0x10005828
100072c7:	e8 5e f0 ff ff       	call   0x1000632a
100072cc:	8b f8                	mov    edi,eax
100072ce:	a1 94 09 01 10       	mov    eax,ds:0x10010994
100072d3:	85 47 70             	test   DWORD PTR [edi+0x70],eax
100072d6:	74 1d                	je     0x100072f5
100072d8:	83 7f 6c 00          	cmp    DWORD PTR [edi+0x6c],0x0
100072dc:	74 17                	je     0x100072f5
100072de:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
100072e1:	85 f6                	test   esi,esi
100072e3:	75 08                	jne    0x100072ed
100072e5:	6a 20                	push   0x20
100072e7:	e8 3a e7 ff ff       	call   0x10005a26
100072ec:	59                   	pop    ecx
100072ed:	8b c6                	mov    eax,esi
100072ef:	e8 79 e5 ff ff       	call   0x1000586d
100072f4:	c3                   	ret    
100072f5:	6a 0d                	push   0xd
100072f7:	e8 fc d9 ff ff       	call   0x10004cf8
100072fc:	59                   	pop    ecx
100072fd:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10007301:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
10007304:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
10007307:	3b 35 98 08 01 10    	cmp    esi,DWORD PTR ds:0x10010898
1000730d:	74 36                	je     0x10007345
1000730f:	85 f6                	test   esi,esi
10007311:	74 1a                	je     0x1000732d
10007313:	56                   	push   esi
10007314:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
1000731a:	85 c0                	test   eax,eax
1000731c:	75 0f                	jne    0x1000732d
1000731e:	81 fe 70 04 01 10    	cmp    esi,0x10010470
10007324:	74 07                	je     0x1000732d
10007326:	56                   	push   esi
10007327:	e8 4f c6 ff ff       	call   0x1000397b
1000732c:	59                   	pop    ecx
1000732d:	a1 98 08 01 10       	mov    eax,ds:0x10010898
10007332:	89 47 68             	mov    DWORD PTR [edi+0x68],eax
10007335:	8b 35 98 08 01 10    	mov    esi,DWORD PTR ds:0x10010898
1000733b:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000733e:	56                   	push   esi
1000733f:	ff 15 9c d0 00 10    	call   DWORD PTR ds:0x1000d09c
10007345:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000734c:	e8 05 00 00 00       	call   0x10007356
10007351:	eb 8e                	jmp    0x100072e1
10007353:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
10007356:	6a 0d                	push   0xd
10007358:	e8 c3 d8 ff ff       	call   0x10004c20
1000735d:	59                   	pop    ecx
1000735e:	c3                   	ret    
1000735f:	55                   	push   ebp
10007360:	8b ec                	mov    ebp,esp
10007362:	83 ec 10             	sub    esp,0x10
10007365:	53                   	push   ebx
10007366:	33 db                	xor    ebx,ebx
10007368:	53                   	push   ebx
10007369:	8d 4d f0             	lea    ecx,[ebp-0x10]
1000736c:	e8 a9 ca ff ff       	call   0x10003e1a
10007371:	83 fe fe             	cmp    esi,0xfffffffe
10007374:	89 1d 54 5b 01 10    	mov    DWORD PTR ds:0x10015b54,ebx
1000737a:	75 1e                	jne    0x1000739a
1000737c:	c7 05 54 5b 01 10 01 	mov    DWORD PTR ds:0x10015b54,0x1
10007383:	00 00 00 
10007386:	ff 15 e4 d0 00 10    	call   DWORD PTR ds:0x1000d0e4
1000738c:	38 5d fc             	cmp    BYTE PTR [ebp-0x4],bl
1000738f:	74 45                	je     0x100073d6
10007391:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10007394:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10007398:	eb 3c                	jmp    0x100073d6
1000739a:	83 fe fd             	cmp    esi,0xfffffffd
1000739d:	75 12                	jne    0x100073b1
1000739f:	c7 05 54 5b 01 10 01 	mov    DWORD PTR ds:0x10015b54,0x1
100073a6:	00 00 00 
100073a9:	ff 15 e0 d0 00 10    	call   DWORD PTR ds:0x1000d0e0
100073af:	eb db                	jmp    0x1000738c
100073b1:	83 fe fc             	cmp    esi,0xfffffffc
100073b4:	75 12                	jne    0x100073c8
100073b6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100073b9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
100073bc:	c7 05 54 5b 01 10 01 	mov    DWORD PTR ds:0x10015b54,0x1
100073c3:	00 00 00 
100073c6:	eb c4                	jmp    0x1000738c
100073c8:	38 5d fc             	cmp    BYTE PTR [ebp-0x4],bl
100073cb:	74 07                	je     0x100073d4
100073cd:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
100073d0:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100073d4:	8b c6                	mov    eax,esi
100073d6:	5b                   	pop    ebx
100073d7:	c9                   	leave  
100073d8:	c3                   	ret    
100073d9:	55                   	push   ebp
100073da:	8b ec                	mov    ebp,esp
100073dc:	83 ec 20             	sub    esp,0x20
100073df:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100073e4:	33 c5                	xor    eax,ebp
100073e6:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100073e9:	53                   	push   ebx
100073ea:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
100073ed:	56                   	push   esi
100073ee:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
100073f1:	57                   	push   edi
100073f2:	e8 68 ff ff ff       	call   0x1000735f
100073f7:	8b f8                	mov    edi,eax
100073f9:	33 f6                	xor    esi,esi
100073fb:	3b fe                	cmp    edi,esi
100073fd:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
10007400:	75 0e                	jne    0x10007410
10007402:	8b c3                	mov    eax,ebx
10007404:	e8 d3 fc ff ff       	call   0x100070dc
10007409:	33 c0                	xor    eax,eax
1000740b:	e9 93 01 00 00       	jmp    0x100075a3
10007410:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
10007413:	33 c0                	xor    eax,eax
10007415:	39 b8 a0 08 01 10    	cmp    DWORD PTR [eax+0x100108a0],edi
1000741b:	0f 84 91 00 00 00    	je     0x100074b2
10007421:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
10007424:	83 c0 30             	add    eax,0x30
10007427:	3d f0 00 00 00       	cmp    eax,0xf0
1000742c:	72 e7                	jb     0x10007415
1000742e:	81 ff e8 fd 00 00    	cmp    edi,0xfde8
10007434:	0f 84 66 01 00 00    	je     0x100075a0
1000743a:	81 ff e9 fd 00 00    	cmp    edi,0xfde9
10007440:	0f 84 5a 01 00 00    	je     0x100075a0
10007446:	0f b7 c7             	movzx  eax,di
10007449:	50                   	push   eax
1000744a:	ff 15 e8 d0 00 10    	call   DWORD PTR ds:0x1000d0e8
10007450:	85 c0                	test   eax,eax
10007452:	0f 84 48 01 00 00    	je     0x100075a0
10007458:	8d 45 e8             	lea    eax,[ebp-0x18]
1000745b:	50                   	push   eax
1000745c:	57                   	push   edi
1000745d:	ff 15 dc d0 00 10    	call   DWORD PTR ds:0x1000d0dc
10007463:	85 c0                	test   eax,eax
10007465:	0f 84 29 01 00 00    	je     0x10007594
1000746b:	68 01 01 00 00       	push   0x101
10007470:	8d 43 1c             	lea    eax,[ebx+0x1c]
10007473:	56                   	push   esi
10007474:	50                   	push   eax
10007475:	e8 76 11 00 00       	call   0x100085f0
1000747a:	33 d2                	xor    edx,edx
1000747c:	42                   	inc    edx
1000747d:	83 c4 0c             	add    esp,0xc
10007480:	39 55 e8             	cmp    DWORD PTR [ebp-0x18],edx
10007483:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
10007486:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
10007489:	0f 86 f8 00 00 00    	jbe    0x10007587
1000748f:	80 7d ee 00          	cmp    BYTE PTR [ebp-0x12],0x0
10007493:	0f 84 cf 00 00 00    	je     0x10007568
10007499:	8d 75 ef             	lea    esi,[ebp-0x11]
1000749c:	8a 0e                	mov    cl,BYTE PTR [esi]
1000749e:	84 c9                	test   cl,cl
100074a0:	0f 84 c2 00 00 00    	je     0x10007568
100074a6:	0f b6 46 ff          	movzx  eax,BYTE PTR [esi-0x1]
100074aa:	0f b6 c9             	movzx  ecx,cl
100074ad:	e9 a6 00 00 00       	jmp    0x10007558
100074b2:	68 01 01 00 00       	push   0x101
100074b7:	8d 43 1c             	lea    eax,[ebx+0x1c]
100074ba:	56                   	push   esi
100074bb:	50                   	push   eax
100074bc:	e8 2f 11 00 00       	call   0x100085f0
100074c1:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
100074c4:	83 c4 0c             	add    esp,0xc
100074c7:	6b c9 30             	imul   ecx,ecx,0x30
100074ca:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
100074cd:	8d b1 b0 08 01 10    	lea    esi,[ecx+0x100108b0]
100074d3:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
100074d6:	eb 2a                	jmp    0x10007502
100074d8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100074db:	84 c0                	test   al,al
100074dd:	74 28                	je     0x10007507
100074df:	0f b6 3e             	movzx  edi,BYTE PTR [esi]
100074e2:	0f b6 c0             	movzx  eax,al
100074e5:	eb 12                	jmp    0x100074f9
100074e7:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
100074ea:	8a 80 9c 08 01 10    	mov    al,BYTE PTR [eax+0x1001089c]
100074f0:	08 44 3b 1d          	or     BYTE PTR [ebx+edi*1+0x1d],al
100074f4:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
100074f8:	47                   	inc    edi
100074f9:	3b f8                	cmp    edi,eax
100074fb:	76 ea                	jbe    0x100074e7
100074fd:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10007500:	46                   	inc    esi
10007501:	46                   	inc    esi
10007502:	80 3e 00             	cmp    BYTE PTR [esi],0x0
10007505:	75 d1                	jne    0x100074d8
10007507:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
1000750a:	ff 45 e0             	inc    DWORD PTR [ebp-0x20]
1000750d:	83 c6 08             	add    esi,0x8
10007510:	83 7d e0 04          	cmp    DWORD PTR [ebp-0x20],0x4
10007514:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
10007517:	72 e9                	jb     0x10007502
10007519:	8b c7                	mov    eax,edi
1000751b:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
1000751e:	c7 43 08 01 00 00 00 	mov    DWORD PTR [ebx+0x8],0x1
10007525:	e8 83 fb ff ff       	call   0x100070ad
1000752a:	6a 06                	push   0x6
1000752c:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
1000752f:	8d 43 10             	lea    eax,[ebx+0x10]
10007532:	8d 89 a4 08 01 10    	lea    ecx,[ecx+0x100108a4]
10007538:	5a                   	pop    edx
10007539:	66 8b 31             	mov    si,WORD PTR [ecx]
1000753c:	41                   	inc    ecx
1000753d:	66 89 30             	mov    WORD PTR [eax],si
10007540:	41                   	inc    ecx
10007541:	40                   	inc    eax
10007542:	40                   	inc    eax
10007543:	4a                   	dec    edx
10007544:	75 f3                	jne    0x10007539
10007546:	8b f3                	mov    esi,ebx
10007548:	e8 e4 fb ff ff       	call   0x10007131
1000754d:	e9 b7 fe ff ff       	jmp    0x10007409
10007552:	80 4c 03 1d 04       	or     BYTE PTR [ebx+eax*1+0x1d],0x4
10007557:	40                   	inc    eax
10007558:	3b c1                	cmp    eax,ecx
1000755a:	76 f6                	jbe    0x10007552
1000755c:	46                   	inc    esi
1000755d:	46                   	inc    esi
1000755e:	80 7e ff 00          	cmp    BYTE PTR [esi-0x1],0x0
10007562:	0f 85 34 ff ff ff    	jne    0x1000749c
10007568:	8d 43 1e             	lea    eax,[ebx+0x1e]
1000756b:	b9 fe 00 00 00       	mov    ecx,0xfe
10007570:	80 08 08             	or     BYTE PTR [eax],0x8
10007573:	40                   	inc    eax
10007574:	49                   	dec    ecx
10007575:	75 f9                	jne    0x10007570
10007577:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
1000757a:	e8 2e fb ff ff       	call   0x100070ad
1000757f:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
10007582:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
10007585:	eb 03                	jmp    0x1000758a
10007587:	89 73 08             	mov    DWORD PTR [ebx+0x8],esi
1000758a:	33 c0                	xor    eax,eax
1000758c:	8d 7b 10             	lea    edi,[ebx+0x10]
1000758f:	ab                   	stos   DWORD PTR es:[edi],eax
10007590:	ab                   	stos   DWORD PTR es:[edi],eax
10007591:	ab                   	stos   DWORD PTR es:[edi],eax
10007592:	eb b2                	jmp    0x10007546
10007594:	39 35 54 5b 01 10    	cmp    DWORD PTR ds:0x10015b54,esi
1000759a:	0f 85 62 fe ff ff    	jne    0x10007402
100075a0:	83 c8 ff             	or     eax,0xffffffff
100075a3:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100075a6:	5f                   	pop    edi
100075a7:	5e                   	pop    esi
100075a8:	33 cd                	xor    ecx,ebp
100075aa:	5b                   	pop    ebx
100075ab:	e8 6b c5 ff ff       	call   0x10003b1b
100075b0:	c9                   	leave  
100075b1:	c3                   	ret    
100075b2:	6a 14                	push   0x14
100075b4:	68 e8 e4 00 10       	push   0x1000e4e8
100075b9:	e8 6a e2 ff ff       	call   0x10005828
100075be:	83 4d e0 ff          	or     DWORD PTR [ebp-0x20],0xffffffff
100075c2:	e8 63 ed ff ff       	call   0x1000632a
100075c7:	8b f8                	mov    edi,eax
100075c9:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
100075cc:	e8 ea fc ff ff       	call   0x100072bb
100075d1:	8b 5f 68             	mov    ebx,DWORD PTR [edi+0x68]
100075d4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
100075d7:	e8 83 fd ff ff       	call   0x1000735f
100075dc:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
100075df:	3b 43 04             	cmp    eax,DWORD PTR [ebx+0x4]
100075e2:	0f 84 57 01 00 00    	je     0x1000773f
100075e8:	68 20 02 00 00       	push   0x220
100075ed:	e8 5e f0 ff ff       	call   0x10006650
100075f2:	59                   	pop    ecx
100075f3:	8b d8                	mov    ebx,eax
100075f5:	85 db                	test   ebx,ebx
100075f7:	0f 84 46 01 00 00    	je     0x10007743
100075fd:	b9 88 00 00 00       	mov    ecx,0x88
10007602:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
10007605:	8b fb                	mov    edi,ebx
10007607:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007609:	83 23 00             	and    DWORD PTR [ebx],0x0
1000760c:	53                   	push   ebx
1000760d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10007610:	e8 c4 fd ff ff       	call   0x100073d9
10007615:	59                   	pop    ecx
10007616:	59                   	pop    ecx
10007617:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000761a:	85 c0                	test   eax,eax
1000761c:	0f 85 fc 00 00 00    	jne    0x1000771e
10007622:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
10007625:	ff 76 68             	push   DWORD PTR [esi+0x68]
10007628:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
1000762e:	85 c0                	test   eax,eax
10007630:	75 11                	jne    0x10007643
10007632:	8b 46 68             	mov    eax,DWORD PTR [esi+0x68]
10007635:	3d 70 04 01 10       	cmp    eax,0x10010470
1000763a:	74 07                	je     0x10007643
1000763c:	50                   	push   eax
1000763d:	e8 39 c3 ff ff       	call   0x1000397b
10007642:	59                   	pop    ecx
10007643:	89 5e 68             	mov    DWORD PTR [esi+0x68],ebx
10007646:	53                   	push   ebx
10007647:	8b 3d 9c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d09c
1000764d:	ff d7                	call   edi
1000764f:	f6 46 70 02          	test   BYTE PTR [esi+0x70],0x2
10007653:	0f 85 ea 00 00 00    	jne    0x10007743
10007659:	f6 05 94 09 01 10 01 	test   BYTE PTR ds:0x10010994,0x1
10007660:	0f 85 dd 00 00 00    	jne    0x10007743
10007666:	6a 0d                	push   0xd
10007668:	e8 8b d6 ff ff       	call   0x10004cf8
1000766d:	59                   	pop    ecx
1000766e:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10007672:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
10007675:	a3 64 5b 01 10       	mov    ds:0x10015b64,eax
1000767a:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
1000767d:	a3 68 5b 01 10       	mov    ds:0x10015b68,eax
10007682:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
10007685:	a3 6c 5b 01 10       	mov    ds:0x10015b6c,eax
1000768a:	33 c0                	xor    eax,eax
1000768c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000768f:	83 f8 05             	cmp    eax,0x5
10007692:	7d 10                	jge    0x100076a4
10007694:	66 8b 4c 43 10       	mov    cx,WORD PTR [ebx+eax*2+0x10]
10007699:	66 89 0c 45 58 5b 01 	mov    WORD PTR [eax*2+0x10015b58],cx
100076a0:	10 
100076a1:	40                   	inc    eax
100076a2:	eb e8                	jmp    0x1000768c
100076a4:	33 c0                	xor    eax,eax
100076a6:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100076a9:	3d 01 01 00 00       	cmp    eax,0x101
100076ae:	7d 0d                	jge    0x100076bd
100076b0:	8a 4c 18 1c          	mov    cl,BYTE PTR [eax+ebx*1+0x1c]
100076b4:	88 88 90 06 01 10    	mov    BYTE PTR [eax+0x10010690],cl
100076ba:	40                   	inc    eax
100076bb:	eb e9                	jmp    0x100076a6
100076bd:	33 c0                	xor    eax,eax
100076bf:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100076c2:	3d 00 01 00 00       	cmp    eax,0x100
100076c7:	7d 10                	jge    0x100076d9
100076c9:	8a 8c 18 1d 01 00 00 	mov    cl,BYTE PTR [eax+ebx*1+0x11d]
100076d0:	88 88 98 07 01 10    	mov    BYTE PTR [eax+0x10010798],cl
100076d6:	40                   	inc    eax
100076d7:	eb e6                	jmp    0x100076bf
100076d9:	ff 35 98 08 01 10    	push   DWORD PTR ds:0x10010898
100076df:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
100076e5:	85 c0                	test   eax,eax
100076e7:	75 13                	jne    0x100076fc
100076e9:	a1 98 08 01 10       	mov    eax,ds:0x10010898
100076ee:	3d 70 04 01 10       	cmp    eax,0x10010470
100076f3:	74 07                	je     0x100076fc
100076f5:	50                   	push   eax
100076f6:	e8 80 c2 ff ff       	call   0x1000397b
100076fb:	59                   	pop    ecx
100076fc:	89 1d 98 08 01 10    	mov    DWORD PTR ds:0x10010898,ebx
10007702:	53                   	push   ebx
10007703:	ff d7                	call   edi
10007705:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000770c:	e8 02 00 00 00       	call   0x10007713
10007711:	eb 30                	jmp    0x10007743
10007713:	6a 0d                	push   0xd
10007715:	e8 06 d5 ff ff       	call   0x10004c20
1000771a:	59                   	pop    ecx
1000771b:	c3                   	ret    
1000771c:	eb 25                	jmp    0x10007743
1000771e:	83 f8 ff             	cmp    eax,0xffffffff
10007721:	75 20                	jne    0x10007743
10007723:	81 fb 70 04 01 10    	cmp    ebx,0x10010470
10007729:	74 07                	je     0x10007732
1000772b:	53                   	push   ebx
1000772c:	e8 4a c2 ff ff       	call   0x1000397b
10007731:	59                   	pop    ecx
10007732:	e8 0f d3 ff ff       	call   0x10004a46
10007737:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000773d:	eb 04                	jmp    0x10007743
1000773f:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
10007743:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
10007746:	e8 22 e1 ff ff       	call   0x1000586d
1000774b:	c3                   	ret    
1000774c:	83 3d cc 5d 01 10 00 	cmp    DWORD PTR ds:0x10015dcc,0x0
10007753:	75 12                	jne    0x10007767
10007755:	6a fd                	push   0xfffffffd
10007757:	e8 56 fe ff ff       	call   0x100075b2
1000775c:	59                   	pop    ecx
1000775d:	c7 05 cc 5d 01 10 01 	mov    DWORD PTR ds:0x10015dcc,0x1
10007764:	00 00 00 
10007767:	33 c0                	xor    eax,eax
10007769:	c3                   	ret    
1000776a:	53                   	push   ebx
1000776b:	55                   	push   ebp
1000776c:	56                   	push   esi
1000776d:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
10007771:	8b 86 bc 00 00 00    	mov    eax,DWORD PTR [esi+0xbc]
10007777:	33 ed                	xor    ebp,ebp
10007779:	3b c5                	cmp    eax,ebp
1000777b:	57                   	push   edi
1000777c:	74 6f                	je     0x100077ed
1000777e:	3d 58 0b 01 10       	cmp    eax,0x10010b58
10007783:	74 68                	je     0x100077ed
10007785:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
1000778b:	3b c5                	cmp    eax,ebp
1000778d:	74 5e                	je     0x100077ed
1000778f:	39 28                	cmp    DWORD PTR [eax],ebp
10007791:	75 5a                	jne    0x100077ed
10007793:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
10007799:	3b c5                	cmp    eax,ebp
1000779b:	74 17                	je     0x100077b4
1000779d:	39 28                	cmp    DWORD PTR [eax],ebp
1000779f:	75 13                	jne    0x100077b4
100077a1:	50                   	push   eax
100077a2:	e8 d4 c1 ff ff       	call   0x1000397b
100077a7:	ff b6 bc 00 00 00    	push   DWORD PTR [esi+0xbc]
100077ad:	e8 bb 29 00 00       	call   0x1000a16d
100077b2:	59                   	pop    ecx
100077b3:	59                   	pop    ecx
100077b4:	8b 86 b4 00 00 00    	mov    eax,DWORD PTR [esi+0xb4]
100077ba:	3b c5                	cmp    eax,ebp
100077bc:	74 17                	je     0x100077d5
100077be:	39 28                	cmp    DWORD PTR [eax],ebp
100077c0:	75 13                	jne    0x100077d5
100077c2:	50                   	push   eax
100077c3:	e8 b3 c1 ff ff       	call   0x1000397b
100077c8:	ff b6 bc 00 00 00    	push   DWORD PTR [esi+0xbc]
100077ce:	e8 5a 29 00 00       	call   0x1000a12d
100077d3:	59                   	pop    ecx
100077d4:	59                   	pop    ecx
100077d5:	ff b6 b0 00 00 00    	push   DWORD PTR [esi+0xb0]
100077db:	e8 9b c1 ff ff       	call   0x1000397b
100077e0:	ff b6 bc 00 00 00    	push   DWORD PTR [esi+0xbc]
100077e6:	e8 90 c1 ff ff       	call   0x1000397b
100077eb:	59                   	pop    ecx
100077ec:	59                   	pop    ecx
100077ed:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
100077f3:	3b c5                	cmp    eax,ebp
100077f5:	74 44                	je     0x1000783b
100077f7:	39 28                	cmp    DWORD PTR [eax],ebp
100077f9:	75 40                	jne    0x1000783b
100077fb:	8b 86 c4 00 00 00    	mov    eax,DWORD PTR [esi+0xc4]
10007801:	2d fe 00 00 00       	sub    eax,0xfe
10007806:	50                   	push   eax
10007807:	e8 6f c1 ff ff       	call   0x1000397b
1000780c:	8b 86 cc 00 00 00    	mov    eax,DWORD PTR [esi+0xcc]
10007812:	bf 80 00 00 00       	mov    edi,0x80
10007817:	2b c7                	sub    eax,edi
10007819:	50                   	push   eax
1000781a:	e8 5c c1 ff ff       	call   0x1000397b
1000781f:	8b 86 d0 00 00 00    	mov    eax,DWORD PTR [esi+0xd0]
10007825:	2b c7                	sub    eax,edi
10007827:	50                   	push   eax
10007828:	e8 4e c1 ff ff       	call   0x1000397b
1000782d:	ff b6 c0 00 00 00    	push   DWORD PTR [esi+0xc0]
10007833:	e8 43 c1 ff ff       	call   0x1000397b
10007838:	83 c4 10             	add    esp,0x10
1000783b:	8d be d4 00 00 00    	lea    edi,[esi+0xd4]
10007841:	8b 07                	mov    eax,DWORD PTR [edi]
10007843:	3d 98 0a 01 10       	cmp    eax,0x10010a98
10007848:	74 17                	je     0x10007861
1000784a:	39 a8 b4 00 00 00    	cmp    DWORD PTR [eax+0xb4],ebp
10007850:	75 0f                	jne    0x10007861
10007852:	50                   	push   eax
10007853:	e8 45 27 00 00       	call   0x10009f9d
10007858:	ff 37                	push   DWORD PTR [edi]
1000785a:	e8 1c c1 ff ff       	call   0x1000397b
1000785f:	59                   	pop    ecx
10007860:	59                   	pop    ecx
10007861:	6a 06                	push   0x6
10007863:	8d 7e 50             	lea    edi,[esi+0x50]
10007866:	5b                   	pop    ebx
10007867:	81 7f f8 98 09 01 10 	cmp    DWORD PTR [edi-0x8],0x10010998
1000786e:	74 11                	je     0x10007881
10007870:	8b 07                	mov    eax,DWORD PTR [edi]
10007872:	3b c5                	cmp    eax,ebp
10007874:	74 0b                	je     0x10007881
10007876:	39 28                	cmp    DWORD PTR [eax],ebp
10007878:	75 07                	jne    0x10007881
1000787a:	50                   	push   eax
1000787b:	e8 fb c0 ff ff       	call   0x1000397b
10007880:	59                   	pop    ecx
10007881:	39 6f fc             	cmp    DWORD PTR [edi-0x4],ebp
10007884:	74 12                	je     0x10007898
10007886:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10007889:	3b c5                	cmp    eax,ebp
1000788b:	74 0b                	je     0x10007898
1000788d:	39 28                	cmp    DWORD PTR [eax],ebp
1000788f:	75 07                	jne    0x10007898
10007891:	50                   	push   eax
10007892:	e8 e4 c0 ff ff       	call   0x1000397b
10007897:	59                   	pop    ecx
10007898:	83 c7 10             	add    edi,0x10
1000789b:	4b                   	dec    ebx
1000789c:	75 c9                	jne    0x10007867
1000789e:	56                   	push   esi
1000789f:	e8 d7 c0 ff ff       	call   0x1000397b
100078a4:	59                   	pop    ecx
100078a5:	5f                   	pop    edi
100078a6:	5e                   	pop    esi
100078a7:	5d                   	pop    ebp
100078a8:	5b                   	pop    ebx
100078a9:	c3                   	ret    
100078aa:	53                   	push   ebx
100078ab:	55                   	push   ebp
100078ac:	56                   	push   esi
100078ad:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
100078b1:	57                   	push   edi
100078b2:	8b 3d 9c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d09c
100078b8:	56                   	push   esi
100078b9:	ff d7                	call   edi
100078bb:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
100078c1:	85 c0                	test   eax,eax
100078c3:	74 03                	je     0x100078c8
100078c5:	50                   	push   eax
100078c6:	ff d7                	call   edi
100078c8:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
100078ce:	85 c0                	test   eax,eax
100078d0:	74 03                	je     0x100078d5
100078d2:	50                   	push   eax
100078d3:	ff d7                	call   edi
100078d5:	8b 86 b4 00 00 00    	mov    eax,DWORD PTR [esi+0xb4]
100078db:	85 c0                	test   eax,eax
100078dd:	74 03                	je     0x100078e2
100078df:	50                   	push   eax
100078e0:	ff d7                	call   edi
100078e2:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
100078e8:	85 c0                	test   eax,eax
100078ea:	74 03                	je     0x100078ef
100078ec:	50                   	push   eax
100078ed:	ff d7                	call   edi
100078ef:	6a 06                	push   0x6
100078f1:	8d 5e 50             	lea    ebx,[esi+0x50]
100078f4:	5d                   	pop    ebp
100078f5:	81 7b f8 98 09 01 10 	cmp    DWORD PTR [ebx-0x8],0x10010998
100078fc:	74 09                	je     0x10007907
100078fe:	8b 03                	mov    eax,DWORD PTR [ebx]
10007900:	85 c0                	test   eax,eax
10007902:	74 03                	je     0x10007907
10007904:	50                   	push   eax
10007905:	ff d7                	call   edi
10007907:	83 7b fc 00          	cmp    DWORD PTR [ebx-0x4],0x0
1000790b:	74 0a                	je     0x10007917
1000790d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
10007910:	85 c0                	test   eax,eax
10007912:	74 03                	je     0x10007917
10007914:	50                   	push   eax
10007915:	ff d7                	call   edi
10007917:	83 c3 10             	add    ebx,0x10
1000791a:	4d                   	dec    ebp
1000791b:	75 d8                	jne    0x100078f5
1000791d:	8b 86 d4 00 00 00    	mov    eax,DWORD PTR [esi+0xd4]
10007923:	05 b4 00 00 00       	add    eax,0xb4
10007928:	50                   	push   eax
10007929:	ff d7                	call   edi
1000792b:	5f                   	pop    edi
1000792c:	5e                   	pop    esi
1000792d:	5d                   	pop    ebp
1000792e:	5b                   	pop    ebx
1000792f:	c3                   	ret    
10007930:	56                   	push   esi
10007931:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
10007935:	85 f6                	test   esi,esi
10007937:	74 7f                	je     0x100079b8
10007939:	53                   	push   ebx
1000793a:	55                   	push   ebp
1000793b:	57                   	push   edi
1000793c:	8b 3d a4 d0 00 10    	mov    edi,DWORD PTR ds:0x1000d0a4
10007942:	56                   	push   esi
10007943:	ff d7                	call   edi
10007945:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
1000794b:	85 c0                	test   eax,eax
1000794d:	74 03                	je     0x10007952
1000794f:	50                   	push   eax
10007950:	ff d7                	call   edi
10007952:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
10007958:	85 c0                	test   eax,eax
1000795a:	74 03                	je     0x1000795f
1000795c:	50                   	push   eax
1000795d:	ff d7                	call   edi
1000795f:	8b 86 b4 00 00 00    	mov    eax,DWORD PTR [esi+0xb4]
10007965:	85 c0                	test   eax,eax
10007967:	74 03                	je     0x1000796c
10007969:	50                   	push   eax
1000796a:	ff d7                	call   edi
1000796c:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
10007972:	85 c0                	test   eax,eax
10007974:	74 03                	je     0x10007979
10007976:	50                   	push   eax
10007977:	ff d7                	call   edi
10007979:	6a 06                	push   0x6
1000797b:	8d 5e 50             	lea    ebx,[esi+0x50]
1000797e:	5d                   	pop    ebp
1000797f:	81 7b f8 98 09 01 10 	cmp    DWORD PTR [ebx-0x8],0x10010998
10007986:	74 09                	je     0x10007991
10007988:	8b 03                	mov    eax,DWORD PTR [ebx]
1000798a:	85 c0                	test   eax,eax
1000798c:	74 03                	je     0x10007991
1000798e:	50                   	push   eax
1000798f:	ff d7                	call   edi
10007991:	83 7b fc 00          	cmp    DWORD PTR [ebx-0x4],0x0
10007995:	74 0a                	je     0x100079a1
10007997:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
1000799a:	85 c0                	test   eax,eax
1000799c:	74 03                	je     0x100079a1
1000799e:	50                   	push   eax
1000799f:	ff d7                	call   edi
100079a1:	83 c3 10             	add    ebx,0x10
100079a4:	4d                   	dec    ebp
100079a5:	75 d8                	jne    0x1000797f
100079a7:	8b 86 d4 00 00 00    	mov    eax,DWORD PTR [esi+0xd4]
100079ad:	05 b4 00 00 00       	add    eax,0xb4
100079b2:	50                   	push   eax
100079b3:	ff d7                	call   edi
100079b5:	5f                   	pop    edi
100079b6:	5d                   	pop    ebp
100079b7:	5b                   	pop    ebx
100079b8:	8b c6                	mov    eax,esi
100079ba:	5e                   	pop    esi
100079bb:	c3                   	ret    
100079bc:	85 ff                	test   edi,edi
100079be:	74 37                	je     0x100079f7
100079c0:	85 c0                	test   eax,eax
100079c2:	74 33                	je     0x100079f7
100079c4:	56                   	push   esi
100079c5:	8b 30                	mov    esi,DWORD PTR [eax]
100079c7:	3b f7                	cmp    esi,edi
100079c9:	74 28                	je     0x100079f3
100079cb:	57                   	push   edi
100079cc:	89 38                	mov    DWORD PTR [eax],edi
100079ce:	e8 d7 fe ff ff       	call   0x100078aa
100079d3:	85 f6                	test   esi,esi
100079d5:	59                   	pop    ecx
100079d6:	74 1b                	je     0x100079f3
100079d8:	56                   	push   esi
100079d9:	e8 52 ff ff ff       	call   0x10007930
100079de:	83 3e 00             	cmp    DWORD PTR [esi],0x0
100079e1:	59                   	pop    ecx
100079e2:	75 0f                	jne    0x100079f3
100079e4:	81 fe a0 09 01 10    	cmp    esi,0x100109a0
100079ea:	74 07                	je     0x100079f3
100079ec:	56                   	push   esi
100079ed:	e8 78 fd ff ff       	call   0x1000776a
100079f2:	59                   	pop    ecx
100079f3:	8b c7                	mov    eax,edi
100079f5:	5e                   	pop    esi
100079f6:	c3                   	ret    
100079f7:	33 c0                	xor    eax,eax
100079f9:	c3                   	ret    
100079fa:	6a 0c                	push   0xc
100079fc:	68 08 e5 00 10       	push   0x1000e508
10007a01:	e8 22 de ff ff       	call   0x10005828
10007a06:	e8 1f e9 ff ff       	call   0x1000632a
10007a0b:	8b f0                	mov    esi,eax
10007a0d:	a1 94 09 01 10       	mov    eax,ds:0x10010994
10007a12:	85 46 70             	test   DWORD PTR [esi+0x70],eax
10007a15:	74 22                	je     0x10007a39
10007a17:	83 7e 6c 00          	cmp    DWORD PTR [esi+0x6c],0x0
10007a1b:	74 1c                	je     0x10007a39
10007a1d:	e8 08 e9 ff ff       	call   0x1000632a
10007a22:	8b 70 6c             	mov    esi,DWORD PTR [eax+0x6c]
10007a25:	85 f6                	test   esi,esi
10007a27:	75 08                	jne    0x10007a31
10007a29:	6a 20                	push   0x20
10007a2b:	e8 f6 df ff ff       	call   0x10005a26
10007a30:	59                   	pop    ecx
10007a31:	8b c6                	mov    eax,esi
10007a33:	e8 35 de ff ff       	call   0x1000586d
10007a38:	c3                   	ret    
10007a39:	6a 0c                	push   0xc
10007a3b:	e8 b8 d2 ff ff       	call   0x10004cf8
10007a40:	59                   	pop    ecx
10007a41:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10007a45:	8d 46 6c             	lea    eax,[esi+0x6c]
10007a48:	8b 3d 78 0a 01 10    	mov    edi,DWORD PTR ds:0x10010a78
10007a4e:	e8 69 ff ff ff       	call   0x100079bc
10007a53:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10007a56:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10007a5d:	e8 02 00 00 00       	call   0x10007a64
10007a62:	eb c1                	jmp    0x10007a25
10007a64:	6a 0c                	push   0xc
10007a66:	e8 b5 d1 ff ff       	call   0x10004c20
10007a6b:	59                   	pop    ecx
10007a6c:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
10007a6f:	c3                   	ret    
10007a70:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10007a74:	a3 94 5b 01 10       	mov    ds:0x10015b94,eax
10007a79:	c3                   	ret    
10007a7a:	55                   	push   ebp
10007a7b:	8d ac 24 58 fd ff ff 	lea    ebp,[esp-0x2a8]
10007a82:	81 ec 28 03 00 00    	sub    esp,0x328
10007a88:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007a8d:	33 c5                	xor    eax,ebp
10007a8f:	89 85 a4 02 00 00    	mov    DWORD PTR [ebp+0x2a4],eax
10007a95:	56                   	push   esi
10007a96:	89 85 88 00 00 00    	mov    DWORD PTR [ebp+0x88],eax
10007a9c:	89 8d 84 00 00 00    	mov    DWORD PTR [ebp+0x84],ecx
10007aa2:	89 95 80 00 00 00    	mov    DWORD PTR [ebp+0x80],edx
10007aa8:	89 5d 7c             	mov    DWORD PTR [ebp+0x7c],ebx
10007aab:	89 75 78             	mov    DWORD PTR [ebp+0x78],esi
10007aae:	89 7d 74             	mov    DWORD PTR [ebp+0x74],edi
10007ab1:	66 8c 95 a0 00 00 00 	data16 mov WORD PTR [ebp+0xa0],ss
10007ab8:	66 8c 8d 94 00 00 00 	data16 mov WORD PTR [ebp+0x94],cs
10007abf:	66 8c 5d 70          	data16 mov WORD PTR [ebp+0x70],ds
10007ac3:	66 8c 45 6c          	data16 mov WORD PTR [ebp+0x6c],es
10007ac7:	66 8c 65 68          	data16 mov WORD PTR [ebp+0x68],fs
10007acb:	66 8c 6d 64          	data16 mov WORD PTR [ebp+0x64],gs
10007acf:	9c                   	pushf  
10007ad0:	8f 85 98 00 00 00    	pop    DWORD PTR [ebp+0x98]
10007ad6:	8b b5 ac 02 00 00    	mov    esi,DWORD PTR [ebp+0x2ac]
10007adc:	8d 85 ac 02 00 00    	lea    eax,[ebp+0x2ac]
10007ae2:	89 85 9c 00 00 00    	mov    DWORD PTR [ebp+0x9c],eax
10007ae8:	c7 45 d8 01 00 01 00 	mov    DWORD PTR [ebp-0x28],0x10001
10007aef:	89 b5 90 00 00 00    	mov    DWORD PTR [ebp+0x90],esi
10007af5:	8b 40 fc             	mov    eax,DWORD PTR [eax-0x4]
10007af8:	6a 50                	push   0x50
10007afa:	89 85 8c 00 00 00    	mov    DWORD PTR [ebp+0x8c],eax
10007b00:	8d 45 80             	lea    eax,[ebp-0x80]
10007b03:	6a 00                	push   0x0
10007b05:	50                   	push   eax
10007b06:	e8 e5 0a 00 00       	call   0x100085f0
10007b0b:	8d 45 80             	lea    eax,[ebp-0x80]
10007b0e:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
10007b11:	8d 45 d8             	lea    eax,[ebp-0x28]
10007b14:	83 c4 0c             	add    esp,0xc
10007b17:	c7 45 80 0d 00 00 c0 	mov    DWORD PTR [ebp-0x80],0xc000000d
10007b1e:	89 75 8c             	mov    DWORD PTR [ebp-0x74],esi
10007b21:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
10007b24:	ff 15 8c d0 00 10    	call   DWORD PTR ds:0x1000d08c
10007b2a:	6a 00                	push   0x0
10007b2c:	8b f0                	mov    esi,eax
10007b2e:	ff 15 88 d0 00 10    	call   DWORD PTR ds:0x1000d088
10007b34:	8d 45 d0             	lea    eax,[ebp-0x30]
10007b37:	50                   	push   eax
10007b38:	ff 15 84 d0 00 10    	call   DWORD PTR ds:0x1000d084
10007b3e:	85 c0                	test   eax,eax
10007b40:	75 0c                	jne    0x10007b4e
10007b42:	85 f6                	test   esi,esi
10007b44:	75 08                	jne    0x10007b4e
10007b46:	6a 02                	push   0x2
10007b48:	e8 b3 16 00 00       	call   0x10009200
10007b4d:	59                   	pop    ecx
10007b4e:	68 0d 00 00 c0       	push   0xc000000d
10007b53:	ff 15 80 d0 00 10    	call   DWORD PTR ds:0x1000d080
10007b59:	50                   	push   eax
10007b5a:	ff 15 7c d0 00 10    	call   DWORD PTR ds:0x1000d07c
10007b60:	8b 8d a4 02 00 00    	mov    ecx,DWORD PTR [ebp+0x2a4]
10007b66:	33 cd                	xor    ecx,ebp
10007b68:	5e                   	pop    esi
10007b69:	e8 ad bf ff ff       	call   0x10003b1b
10007b6e:	81 c5 a8 02 00 00    	add    ebp,0x2a8
10007b74:	c9                   	leave  
10007b75:	c3                   	ret    
10007b76:	55                   	push   ebp
10007b77:	8b ec                	mov    ebp,esp
10007b79:	ff 35 94 5b 01 10    	push   DWORD PTR ds:0x10015b94
10007b7f:	e8 8a e5 ff ff       	call   0x1000610e
10007b84:	85 c0                	test   eax,eax
10007b86:	59                   	pop    ecx
10007b87:	74 03                	je     0x10007b8c
10007b89:	5d                   	pop    ebp
10007b8a:	ff e0                	jmp    eax
10007b8c:	6a 02                	push   0x2
10007b8e:	e8 6d 16 00 00       	call   0x10009200
10007b93:	59                   	pop    ecx
10007b94:	5d                   	pop    ebp
10007b95:	e9 e0 fe ff ff       	jmp    0x10007a7a
10007b9a:	55                   	push   ebp
10007b9b:	8b ec                	mov    ebp,esp
10007b9d:	83 ec 10             	sub    esp,0x10
10007ba0:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10007ba3:	8d 4d f0             	lea    ecx,[ebp-0x10]
10007ba6:	e8 6f c2 ff ff       	call   0x10003e1a
10007bab:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10007bae:	83 b8 ac 00 00 00 01 	cmp    DWORD PTR [eax+0xac],0x1
10007bb5:	7e 13                	jle    0x10007bca
10007bb7:	8d 45 f0             	lea    eax,[ebp-0x10]
10007bba:	50                   	push   eax
10007bbb:	6a 04                	push   0x4
10007bbd:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10007bc0:	e8 cb 26 00 00       	call   0x1000a290
10007bc5:	83 c4 0c             	add    esp,0xc
10007bc8:	eb 10                	jmp    0x10007bda
10007bca:	8b 80 c8 00 00 00    	mov    eax,DWORD PTR [eax+0xc8]
10007bd0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10007bd3:	0f b6 04 48          	movzx  eax,BYTE PTR [eax+ecx*2]
10007bd7:	83 e0 04             	and    eax,0x4
10007bda:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10007bde:	74 07                	je     0x10007be7
10007be0:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10007be3:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10007be7:	c9                   	leave  
10007be8:	c3                   	ret    
10007be9:	83 3d 70 5b 01 10 00 	cmp    DWORD PTR ds:0x10015b70,0x0
10007bf0:	75 12                	jne    0x10007c04
10007bf2:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10007bf6:	8b 0d 68 0a 01 10    	mov    ecx,DWORD PTR ds:0x10010a68
10007bfc:	0f b6 04 41          	movzx  eax,BYTE PTR [ecx+eax*2]
10007c00:	83 e0 04             	and    eax,0x4
10007c03:	c3                   	ret    
10007c04:	6a 00                	push   0x0
10007c06:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10007c0a:	e8 8b ff ff ff       	call   0x10007b9a
10007c0f:	59                   	pop    ecx
10007c10:	59                   	pop    ecx
10007c11:	c3                   	ret    
10007c12:	55                   	push   ebp
10007c13:	8b ec                	mov    ebp,esp
10007c15:	83 ec 18             	sub    esp,0x18
10007c18:	53                   	push   ebx
10007c19:	56                   	push   esi
10007c1a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10007c1d:	8d 4d e8             	lea    ecx,[ebp-0x18]
10007c20:	e8 f5 c1 ff ff       	call   0x10003e1a
10007c25:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10007c28:	be 00 01 00 00       	mov    esi,0x100
10007c2d:	3b de                	cmp    ebx,esi
10007c2f:	73 54                	jae    0x10007c85
10007c31:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
10007c34:	83 b9 ac 00 00 00 01 	cmp    DWORD PTR [ecx+0xac],0x1
10007c3b:	7e 14                	jle    0x10007c51
10007c3d:	8d 45 e8             	lea    eax,[ebp-0x18]
10007c40:	50                   	push   eax
10007c41:	6a 01                	push   0x1
10007c43:	53                   	push   ebx
10007c44:	e8 47 26 00 00       	call   0x1000a290
10007c49:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
10007c4c:	83 c4 0c             	add    esp,0xc
10007c4f:	eb 0d                	jmp    0x10007c5e
10007c51:	8b 81 c8 00 00 00    	mov    eax,DWORD PTR [ecx+0xc8]
10007c57:	0f b6 04 58          	movzx  eax,BYTE PTR [eax+ebx*2]
10007c5b:	83 e0 01             	and    eax,0x1
10007c5e:	85 c0                	test   eax,eax
10007c60:	74 0f                	je     0x10007c71
10007c62:	8b 81 cc 00 00 00    	mov    eax,DWORD PTR [ecx+0xcc]
10007c68:	0f b6 04 18          	movzx  eax,BYTE PTR [eax+ebx*1]
10007c6c:	e9 a7 00 00 00       	jmp    0x10007d18
10007c71:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
10007c75:	74 07                	je     0x10007c7e
10007c77:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10007c7a:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007c7e:	8b c3                	mov    eax,ebx
10007c80:	e9 a0 00 00 00       	jmp    0x10007d25
10007c85:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
10007c88:	83 b8 ac 00 00 00 01 	cmp    DWORD PTR [eax+0xac],0x1
10007c8f:	7e 31                	jle    0x10007cc2
10007c91:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
10007c94:	c1 7d 08 08          	sar    DWORD PTR [ebp+0x8],0x8
10007c98:	8d 45 e8             	lea    eax,[ebp-0x18]
10007c9b:	50                   	push   eax
10007c9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10007c9f:	25 ff 00 00 00       	and    eax,0xff
10007ca4:	50                   	push   eax
10007ca5:	e8 9c 26 00 00       	call   0x1000a346
10007caa:	85 c0                	test   eax,eax
10007cac:	59                   	pop    ecx
10007cad:	59                   	pop    ecx
10007cae:	74 12                	je     0x10007cc2
10007cb0:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
10007cb3:	6a 02                	push   0x2
10007cb5:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
10007cb8:	88 5d fd             	mov    BYTE PTR [ebp-0x3],bl
10007cbb:	c6 45 fe 00          	mov    BYTE PTR [ebp-0x2],0x0
10007cbf:	59                   	pop    ecx
10007cc0:	eb 15                	jmp    0x10007cd7
10007cc2:	e8 7f cd ff ff       	call   0x10004a46
10007cc7:	c7 00 2a 00 00 00    	mov    DWORD PTR [eax],0x2a
10007ccd:	33 c9                	xor    ecx,ecx
10007ccf:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
10007cd2:	c6 45 fd 00          	mov    BYTE PTR [ebp-0x3],0x0
10007cd6:	41                   	inc    ecx
10007cd7:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
10007cda:	6a 01                	push   0x1
10007cdc:	ff 70 04             	push   DWORD PTR [eax+0x4]
10007cdf:	8d 55 f8             	lea    edx,[ebp-0x8]
10007ce2:	6a 03                	push   0x3
10007ce4:	52                   	push   edx
10007ce5:	51                   	push   ecx
10007ce6:	8d 4d fc             	lea    ecx,[ebp-0x4]
10007ce9:	51                   	push   ecx
10007cea:	56                   	push   esi
10007ceb:	ff 70 14             	push   DWORD PTR [eax+0x14]
10007cee:	8d 45 e8             	lea    eax,[ebp-0x18]
10007cf1:	50                   	push   eax
10007cf2:	e8 6b 20 00 00       	call   0x10009d62
10007cf7:	83 c4 24             	add    esp,0x24
10007cfa:	85 c0                	test   eax,eax
10007cfc:	0f 84 6f ff ff ff    	je     0x10007c71
10007d02:	83 f8 01             	cmp    eax,0x1
10007d05:	75 06                	jne    0x10007d0d
10007d07:	0f b6 45 f8          	movzx  eax,BYTE PTR [ebp-0x8]
10007d0b:	eb 0b                	jmp    0x10007d18
10007d0d:	0f b6 4d f9          	movzx  ecx,BYTE PTR [ebp-0x7]
10007d11:	33 c0                	xor    eax,eax
10007d13:	8a 65 f8             	mov    ah,BYTE PTR [ebp-0x8]
10007d16:	0b c1                	or     eax,ecx
10007d18:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
10007d1c:	74 07                	je     0x10007d25
10007d1e:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10007d21:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10007d25:	5e                   	pop    esi
10007d26:	5b                   	pop    ebx
10007d27:	c9                   	leave  
10007d28:	c3                   	ret    
10007d29:	83 3d 70 5b 01 10 00 	cmp    DWORD PTR ds:0x10015b70,0x0
10007d30:	75 10                	jne    0x10007d42
10007d32:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10007d36:	8d 48 bf             	lea    ecx,[eax-0x41]
10007d39:	83 f9 19             	cmp    ecx,0x19
10007d3c:	77 11                	ja     0x10007d4f
10007d3e:	83 c0 20             	add    eax,0x20
10007d41:	c3                   	ret    
10007d42:	6a 00                	push   0x0
10007d44:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10007d48:	e8 c5 fe ff ff       	call   0x10007c12
10007d4d:	59                   	pop    ecx
10007d4e:	59                   	pop    ecx
10007d4f:	c3                   	ret    
10007d50:	55                   	push   ebp
10007d51:	8b ec                	mov    ebp,esp
10007d53:	83 ec 28             	sub    esp,0x28
10007d56:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007d5b:	33 c5                	xor    eax,ebp
10007d5d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10007d60:	53                   	push   ebx
10007d61:	56                   	push   esi
10007d62:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10007d65:	57                   	push   edi
10007d66:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10007d69:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
10007d6c:	8d 4d dc             	lea    ecx,[ebp-0x24]
10007d6f:	e8 a6 c0 ff ff       	call   0x10003e1a
10007d74:	8d 45 dc             	lea    eax,[ebp-0x24]
10007d77:	50                   	push   eax
10007d78:	33 db                	xor    ebx,ebx
10007d7a:	53                   	push   ebx
10007d7b:	53                   	push   ebx
10007d7c:	53                   	push   ebx
10007d7d:	53                   	push   ebx
10007d7e:	57                   	push   edi
10007d7f:	8d 45 d8             	lea    eax,[ebp-0x28]
10007d82:	50                   	push   eax
10007d83:	8d 45 f0             	lea    eax,[ebp-0x10]
10007d86:	50                   	push   eax
10007d87:	e8 74 30 00 00       	call   0x1000ae00
10007d8c:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
10007d8f:	8d 45 f0             	lea    eax,[ebp-0x10]
10007d92:	56                   	push   esi
10007d93:	50                   	push   eax
10007d94:	e8 e3 25 00 00       	call   0x1000a37c
10007d99:	83 c4 28             	add    esp,0x28
10007d9c:	f6 45 ec 03          	test   BYTE PTR [ebp-0x14],0x3
10007da0:	75 2b                	jne    0x10007dcd
10007da2:	83 f8 01             	cmp    eax,0x1
10007da5:	75 11                	jne    0x10007db8
10007da7:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007daa:	74 07                	je     0x10007db3
10007dac:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007daf:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007db3:	6a 03                	push   0x3
10007db5:	58                   	pop    eax
10007db6:	eb 2f                	jmp    0x10007de7
10007db8:	83 f8 02             	cmp    eax,0x2
10007dbb:	75 1c                	jne    0x10007dd9
10007dbd:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007dc0:	74 07                	je     0x10007dc9
10007dc2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007dc5:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007dc9:	6a 04                	push   0x4
10007dcb:	eb e8                	jmp    0x10007db5
10007dcd:	f6 45 ec 01          	test   BYTE PTR [ebp-0x14],0x1
10007dd1:	75 ea                	jne    0x10007dbd
10007dd3:	f6 45 ec 02          	test   BYTE PTR [ebp-0x14],0x2
10007dd7:	75 ce                	jne    0x10007da7
10007dd9:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007ddc:	74 07                	je     0x10007de5
10007dde:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007de1:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007de5:	33 c0                	xor    eax,eax
10007de7:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10007dea:	5f                   	pop    edi
10007deb:	5e                   	pop    esi
10007dec:	33 cd                	xor    ecx,ebp
10007dee:	5b                   	pop    ebx
10007def:	e8 27 bd ff ff       	call   0x10003b1b
10007df4:	c9                   	leave  
10007df5:	c3                   	ret    
10007df6:	55                   	push   ebp
10007df7:	8b ec                	mov    ebp,esp
10007df9:	83 ec 28             	sub    esp,0x28
10007dfc:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007e01:	33 c5                	xor    eax,ebp
10007e03:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10007e06:	53                   	push   ebx
10007e07:	56                   	push   esi
10007e08:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10007e0b:	57                   	push   edi
10007e0c:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10007e0f:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
10007e12:	8d 4d dc             	lea    ecx,[ebp-0x24]
10007e15:	e8 00 c0 ff ff       	call   0x10003e1a
10007e1a:	8d 45 dc             	lea    eax,[ebp-0x24]
10007e1d:	50                   	push   eax
10007e1e:	33 db                	xor    ebx,ebx
10007e20:	53                   	push   ebx
10007e21:	53                   	push   ebx
10007e22:	53                   	push   ebx
10007e23:	53                   	push   ebx
10007e24:	57                   	push   edi
10007e25:	8d 45 d8             	lea    eax,[ebp-0x28]
10007e28:	50                   	push   eax
10007e29:	8d 45 f0             	lea    eax,[ebp-0x10]
10007e2c:	50                   	push   eax
10007e2d:	e8 ce 2f 00 00       	call   0x1000ae00
10007e32:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
10007e35:	8d 45 f0             	lea    eax,[ebp-0x10]
10007e38:	56                   	push   esi
10007e39:	50                   	push   eax
10007e3a:	e8 7f 2a 00 00       	call   0x1000a8be
10007e3f:	83 c4 28             	add    esp,0x28
10007e42:	f6 45 ec 03          	test   BYTE PTR [ebp-0x14],0x3
10007e46:	75 2b                	jne    0x10007e73
10007e48:	83 f8 01             	cmp    eax,0x1
10007e4b:	75 11                	jne    0x10007e5e
10007e4d:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007e50:	74 07                	je     0x10007e59
10007e52:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007e55:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007e59:	6a 03                	push   0x3
10007e5b:	58                   	pop    eax
10007e5c:	eb 2f                	jmp    0x10007e8d
10007e5e:	83 f8 02             	cmp    eax,0x2
10007e61:	75 1c                	jne    0x10007e7f
10007e63:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007e66:	74 07                	je     0x10007e6f
10007e68:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007e6b:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007e6f:	6a 04                	push   0x4
10007e71:	eb e8                	jmp    0x10007e5b
10007e73:	f6 45 ec 01          	test   BYTE PTR [ebp-0x14],0x1
10007e77:	75 ea                	jne    0x10007e63
10007e79:	f6 45 ec 02          	test   BYTE PTR [ebp-0x14],0x2
10007e7d:	75 ce                	jne    0x10007e4d
10007e7f:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007e82:	74 07                	je     0x10007e8b
10007e84:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007e87:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007e8b:	33 c0                	xor    eax,eax
10007e8d:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10007e90:	5f                   	pop    edi
10007e91:	5e                   	pop    esi
10007e92:	33 cd                	xor    ecx,ebp
10007e94:	5b                   	pop    ebx
10007e95:	e8 81 bc ff ff       	call   0x10003b1b
10007e9a:	c9                   	leave  
10007e9b:	c3                   	ret    
10007e9c:	cc                   	int3   
10007e9d:	cc                   	int3   
10007e9e:	cc                   	int3   
10007e9f:	cc                   	int3   
10007ea0:	55                   	push   ebp
10007ea1:	8b ec                	mov    ebp,esp
10007ea3:	57                   	push   edi
10007ea4:	56                   	push   esi
10007ea5:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10007ea8:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10007eab:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10007eae:	8b c1                	mov    eax,ecx
10007eb0:	8b d1                	mov    edx,ecx
10007eb2:	03 c6                	add    eax,esi
10007eb4:	3b fe                	cmp    edi,esi
10007eb6:	76 08                	jbe    0x10007ec0
10007eb8:	3b f8                	cmp    edi,eax
10007eba:	0f 82 a4 01 00 00    	jb     0x10008064
10007ec0:	81 f9 00 01 00 00    	cmp    ecx,0x100
10007ec6:	72 1f                	jb     0x10007ee7
10007ec8:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
10007ecf:	74 16                	je     0x10007ee7
10007ed1:	57                   	push   edi
10007ed2:	56                   	push   esi
10007ed3:	83 e7 0f             	and    edi,0xf
10007ed6:	83 e6 0f             	and    esi,0xf
10007ed9:	3b fe                	cmp    edi,esi
10007edb:	5e                   	pop    esi
10007edc:	5f                   	pop    edi
10007edd:	75 08                	jne    0x10007ee7
10007edf:	5e                   	pop    esi
10007ee0:	5f                   	pop    edi
10007ee1:	5d                   	pop    ebp
10007ee2:	e9 60 36 00 00       	jmp    0x1000b547
10007ee7:	f7 c7 03 00 00 00    	test   edi,0x3
10007eed:	75 15                	jne    0x10007f04
10007eef:	c1 e9 02             	shr    ecx,0x2
10007ef2:	83 e2 03             	and    edx,0x3
10007ef5:	83 f9 08             	cmp    ecx,0x8
10007ef8:	72 2a                	jb     0x10007f24
10007efa:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007efc:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007f03:	90                   	nop
10007f04:	8b c7                	mov    eax,edi
10007f06:	ba 03 00 00 00       	mov    edx,0x3
10007f0b:	83 e9 04             	sub    ecx,0x4
10007f0e:	72 0c                	jb     0x10007f1c
10007f10:	83 e0 03             	and    eax,0x3
10007f13:	03 c8                	add    ecx,eax
10007f15:	ff 24 85 28 7f 00 10 	jmp    DWORD PTR [eax*4+0x10007f28]
10007f1c:	ff 24 8d 24 80 00 10 	jmp    DWORD PTR [ecx*4+0x10008024]
10007f23:	90                   	nop
10007f24:	ff 24 8d a8 7f 00 10 	jmp    DWORD PTR [ecx*4+0x10007fa8]
10007f2b:	90                   	nop
10007f2c:	38 7f 00             	cmp    BYTE PTR [edi+0x0],bh
10007f2f:	10 64 7f 00          	adc    BYTE PTR [edi+edi*2+0x0],ah
10007f33:	10 88 7f 00 10 23    	adc    BYTE PTR [eax+0x2310007f],cl
10007f39:	d1 8a 06 88 07 8a    	ror    DWORD PTR [edx-0x75f877fa],1
10007f3f:	46                   	inc    esi
10007f40:	01 88 47 01 8a 46    	add    DWORD PTR [eax+0x468a0147],ecx
10007f46:	02 c1                	add    al,cl
10007f48:	e9 02 88 47 02       	jmp    0x1248074f
10007f4d:	83 c6 03             	add    esi,0x3
10007f50:	83 c7 03             	add    edi,0x3
10007f53:	83 f9 08             	cmp    ecx,0x8
10007f56:	72 cc                	jb     0x10007f24
10007f58:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007f5a:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007f61:	8d 49 00             	lea    ecx,[ecx+0x0]
10007f64:	23 d1                	and    edx,ecx
10007f66:	8a 06                	mov    al,BYTE PTR [esi]
10007f68:	88 07                	mov    BYTE PTR [edi],al
10007f6a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
10007f6d:	c1 e9 02             	shr    ecx,0x2
10007f70:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10007f73:	83 c6 02             	add    esi,0x2
10007f76:	83 c7 02             	add    edi,0x2
10007f79:	83 f9 08             	cmp    ecx,0x8
10007f7c:	72 a6                	jb     0x10007f24
10007f7e:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007f80:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007f87:	90                   	nop
10007f88:	23 d1                	and    edx,ecx
10007f8a:	8a 06                	mov    al,BYTE PTR [esi]
10007f8c:	88 07                	mov    BYTE PTR [edi],al
10007f8e:	83 c6 01             	add    esi,0x1
10007f91:	c1 e9 02             	shr    ecx,0x2
10007f94:	83 c7 01             	add    edi,0x1
10007f97:	83 f9 08             	cmp    ecx,0x8
10007f9a:	72 88                	jb     0x10007f24
10007f9c:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007f9e:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007fa5:	8d 49 00             	lea    ecx,[ecx+0x0]
10007fa8:	0b 80 00 10 f8 7f    	or     eax,DWORD PTR [eax+0x7ff81000]
10007fae:	00 10                	add    BYTE PTR [eax],dl
10007fb0:	f0 7f 00             	lock jg 0x10007fb3
10007fb3:	10 e8                	adc    al,ch
10007fb5:	7f 00                	jg     0x10007fb7
10007fb7:	10 e0                	adc    al,ah
10007fb9:	7f 00                	jg     0x10007fbb
10007fbb:	10 d8                	adc    al,bl
10007fbd:	7f 00                	jg     0x10007fbf
10007fbf:	10 d0                	adc    al,dl
10007fc1:	7f 00                	jg     0x10007fc3
10007fc3:	10 c8                	adc    al,cl
10007fc5:	7f 00                	jg     0x10007fc7
10007fc7:	10 8b 44 8e e4 89    	adc    BYTE PTR [ebx-0x761b71bc],cl
10007fcd:	44                   	inc    esp
10007fce:	8f                   	(bad)  
10007fcf:	e4 8b                	in     al,0x8b
10007fd1:	44                   	inc    esp
10007fd2:	8e e8                	mov    gs,eax
10007fd4:	89 44 8f e8          	mov    DWORD PTR [edi+ecx*4-0x18],eax
10007fd8:	8b 44 8e ec          	mov    eax,DWORD PTR [esi+ecx*4-0x14]
10007fdc:	89 44 8f ec          	mov    DWORD PTR [edi+ecx*4-0x14],eax
10007fe0:	8b 44 8e f0          	mov    eax,DWORD PTR [esi+ecx*4-0x10]
10007fe4:	89 44 8f f0          	mov    DWORD PTR [edi+ecx*4-0x10],eax
10007fe8:	8b 44 8e f4          	mov    eax,DWORD PTR [esi+ecx*4-0xc]
10007fec:	89 44 8f f4          	mov    DWORD PTR [edi+ecx*4-0xc],eax
10007ff0:	8b 44 8e f8          	mov    eax,DWORD PTR [esi+ecx*4-0x8]
10007ff4:	89 44 8f f8          	mov    DWORD PTR [edi+ecx*4-0x8],eax
10007ff8:	8b 44 8e fc          	mov    eax,DWORD PTR [esi+ecx*4-0x4]
10007ffc:	89 44 8f fc          	mov    DWORD PTR [edi+ecx*4-0x4],eax
10008000:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
10008007:	03 f0                	add    esi,eax
10008009:	03 f8                	add    edi,eax
1000800b:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10008012:	8b ff                	mov    edi,edi
10008014:	24 80                	and    al,0x80
10008016:	00 10                	add    BYTE PTR [eax],dl
10008018:	2c 80                	sub    al,0x80
1000801a:	00 10                	add    BYTE PTR [eax],dl
1000801c:	38 80 00 10 4c 80    	cmp    BYTE PTR [eax-0x7fb3f000],al
10008022:	00 10                	add    BYTE PTR [eax],dl
10008024:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008027:	5e                   	pop    esi
10008028:	5f                   	pop    edi
10008029:	c9                   	leave  
1000802a:	c3                   	ret    
1000802b:	90                   	nop
1000802c:	8a 06                	mov    al,BYTE PTR [esi]
1000802e:	88 07                	mov    BYTE PTR [edi],al
10008030:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008033:	5e                   	pop    esi
10008034:	5f                   	pop    edi
10008035:	c9                   	leave  
10008036:	c3                   	ret    
10008037:	90                   	nop
10008038:	8a 06                	mov    al,BYTE PTR [esi]
1000803a:	88 07                	mov    BYTE PTR [edi],al
1000803c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
1000803f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10008042:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008045:	5e                   	pop    esi
10008046:	5f                   	pop    edi
10008047:	c9                   	leave  
10008048:	c3                   	ret    
10008049:	8d 49 00             	lea    ecx,[ecx+0x0]
1000804c:	8a 06                	mov    al,BYTE PTR [esi]
1000804e:	88 07                	mov    BYTE PTR [edi],al
10008050:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
10008053:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10008056:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10008059:	88 47 02             	mov    BYTE PTR [edi+0x2],al
1000805c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000805f:	5e                   	pop    esi
10008060:	5f                   	pop    edi
10008061:	c9                   	leave  
10008062:	c3                   	ret    
10008063:	90                   	nop
10008064:	8d 74 31 fc          	lea    esi,[ecx+esi*1-0x4]
10008068:	8d 7c 39 fc          	lea    edi,[ecx+edi*1-0x4]
1000806c:	f7 c7 03 00 00 00    	test   edi,0x3
10008072:	75 24                	jne    0x10008098
10008074:	c1 e9 02             	shr    ecx,0x2
10008077:	83 e2 03             	and    edx,0x3
1000807a:	83 f9 08             	cmp    ecx,0x8
1000807d:	72 0d                	jb     0x1000808c
1000807f:	fd                   	std    
10008080:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10008082:	fc                   	cld    
10008083:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
1000808a:	8b ff                	mov    edi,edi
1000808c:	f7 d9                	neg    ecx
1000808e:	ff 24 8d 60 81 00 10 	jmp    DWORD PTR [ecx*4+0x10008160]
10008095:	8d 49 00             	lea    ecx,[ecx+0x0]
10008098:	8b c7                	mov    eax,edi
1000809a:	ba 03 00 00 00       	mov    edx,0x3
1000809f:	83 f9 04             	cmp    ecx,0x4
100080a2:	72 0c                	jb     0x100080b0
100080a4:	83 e0 03             	and    eax,0x3
100080a7:	2b c8                	sub    ecx,eax
100080a9:	ff 24 85 b4 80 00 10 	jmp    DWORD PTR [eax*4+0x100080b4]
100080b0:	ff 24 8d b0 81 00 10 	jmp    DWORD PTR [ecx*4+0x100081b0]
100080b7:	90                   	nop
100080b8:	c4 80 00 10 e8 80    	les    eax,FWORD PTR [eax-0x7f17f000]
100080be:	00 10                	add    BYTE PTR [eax],dl
100080c0:	10 81 00 10 8a 46    	adc    BYTE PTR [ecx+0x468a1000],al
100080c6:	03 23                	add    esp,DWORD PTR [ebx]
100080c8:	d1 88 47 03 83 ee    	ror    DWORD PTR [eax-0x117cfcb9],1
100080ce:	01 c1                	add    ecx,eax
100080d0:	e9 02 83 ef 01       	jmp    0x11f003d7
100080d5:	83 f9 08             	cmp    ecx,0x8
100080d8:	72 b2                	jb     0x1000808c
100080da:	fd                   	std    
100080db:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100080dd:	fc                   	cld    
100080de:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
100080e5:	8d 49 00             	lea    ecx,[ecx+0x0]
100080e8:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100080eb:	23 d1                	and    edx,ecx
100080ed:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100080f0:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100080f3:	c1 e9 02             	shr    ecx,0x2
100080f6:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100080f9:	83 ee 02             	sub    esi,0x2
100080fc:	83 ef 02             	sub    edi,0x2
100080ff:	83 f9 08             	cmp    ecx,0x8
10008102:	72 88                	jb     0x1000808c
10008104:	fd                   	std    
10008105:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10008107:	fc                   	cld    
10008108:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
1000810f:	90                   	nop
10008110:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
10008113:	23 d1                	and    edx,ecx
10008115:	88 47 03             	mov    BYTE PTR [edi+0x3],al
10008118:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
1000811b:	88 47 02             	mov    BYTE PTR [edi+0x2],al
1000811e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
10008121:	c1 e9 02             	shr    ecx,0x2
10008124:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10008127:	83 ee 03             	sub    esi,0x3
1000812a:	83 ef 03             	sub    edi,0x3
1000812d:	83 f9 08             	cmp    ecx,0x8
10008130:	0f 82 56 ff ff ff    	jb     0x1000808c
10008136:	fd                   	std    
10008137:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10008139:	fc                   	cld    
1000813a:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
10008141:	8d 49 00             	lea    ecx,[ecx+0x0]
10008144:	64 81 00 10 6c 81 00 	add    DWORD PTR fs:[eax],0x816c10
1000814b:	10 74 81 00          	adc    BYTE PTR [ecx+eax*4+0x0],dh
1000814f:	10 7c 81 00          	adc    BYTE PTR [ecx+eax*4+0x0],bh
10008153:	10 84 81 00 10 8c 81 	adc    BYTE PTR [ecx+eax*4-0x7e73f000],al
1000815a:	00 10                	add    BYTE PTR [eax],dl
1000815c:	94                   	xchg   esp,eax
1000815d:	81 00 10 a7 81 00    	add    DWORD PTR [eax],0x81a710
10008163:	10 8b 44 8e 1c 89    	adc    BYTE PTR [ebx-0x76e371bc],cl
10008169:	44                   	inc    esp
1000816a:	8f                   	(bad)  
1000816b:	1c 8b                	sbb    al,0x8b
1000816d:	44                   	inc    esp
1000816e:	8e 18                	mov    ds,WORD PTR [eax]
10008170:	89 44 8f 18          	mov    DWORD PTR [edi+ecx*4+0x18],eax
10008174:	8b 44 8e 14          	mov    eax,DWORD PTR [esi+ecx*4+0x14]
10008178:	89 44 8f 14          	mov    DWORD PTR [edi+ecx*4+0x14],eax
1000817c:	8b 44 8e 10          	mov    eax,DWORD PTR [esi+ecx*4+0x10]
10008180:	89 44 8f 10          	mov    DWORD PTR [edi+ecx*4+0x10],eax
10008184:	8b 44 8e 0c          	mov    eax,DWORD PTR [esi+ecx*4+0xc]
10008188:	89 44 8f 0c          	mov    DWORD PTR [edi+ecx*4+0xc],eax
1000818c:	8b 44 8e 08          	mov    eax,DWORD PTR [esi+ecx*4+0x8]
10008190:	89 44 8f 08          	mov    DWORD PTR [edi+ecx*4+0x8],eax
10008194:	8b 44 8e 04          	mov    eax,DWORD PTR [esi+ecx*4+0x4]
10008198:	89 44 8f 04          	mov    DWORD PTR [edi+ecx*4+0x4],eax
1000819c:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
100081a3:	03 f0                	add    esi,eax
100081a5:	03 f8                	add    edi,eax
100081a7:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
100081ae:	8b ff                	mov    edi,edi
100081b0:	c0 81 00 10 c8 81 00 	rol    BYTE PTR [ecx-0x7e37f000],0x0
100081b7:	10 d8                	adc    al,bl
100081b9:	81 00 10 ec 81 00    	add    DWORD PTR [eax],0x81ec10
100081bf:	10 8b 45 08 5e 5f    	adc    BYTE PTR [ebx+0x5f5e0845],cl
100081c5:	c9                   	leave  
100081c6:	c3                   	ret    
100081c7:	90                   	nop
100081c8:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100081cb:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100081ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100081d1:	5e                   	pop    esi
100081d2:	5f                   	pop    edi
100081d3:	c9                   	leave  
100081d4:	c3                   	ret    
100081d5:	8d 49 00             	lea    ecx,[ecx+0x0]
100081d8:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100081db:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100081de:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100081e1:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100081e4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100081e7:	5e                   	pop    esi
100081e8:	5f                   	pop    edi
100081e9:	c9                   	leave  
100081ea:	c3                   	ret    
100081eb:	90                   	nop
100081ec:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100081ef:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100081f2:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100081f5:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100081f8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100081fb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100081fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008201:	5e                   	pop    esi
10008202:	5f                   	pop    edi
10008203:	c9                   	leave  
10008204:	c3                   	ret    
10008205:	cc                   	int3   
10008206:	cc                   	int3   
10008207:	cc                   	int3   
10008208:	cc                   	int3   
10008209:	cc                   	int3   
1000820a:	cc                   	int3   
1000820b:	cc                   	int3   
1000820c:	cc                   	int3   
1000820d:	cc                   	int3   
1000820e:	cc                   	int3   
1000820f:	cc                   	int3   
10008210:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008214:	f7 c1 03 00 00 00    	test   ecx,0x3
1000821a:	74 24                	je     0x10008240
1000821c:	8a 01                	mov    al,BYTE PTR [ecx]
1000821e:	83 c1 01             	add    ecx,0x1
10008221:	84 c0                	test   al,al
10008223:	74 4e                	je     0x10008273
10008225:	f7 c1 03 00 00 00    	test   ecx,0x3
1000822b:	75 ef                	jne    0x1000821c
1000822d:	05 00 00 00 00       	add    eax,0x0
10008232:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
10008239:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
10008240:	8b 01                	mov    eax,DWORD PTR [ecx]
10008242:	ba ff fe fe 7e       	mov    edx,0x7efefeff
10008247:	03 d0                	add    edx,eax
10008249:	83 f0 ff             	xor    eax,0xffffffff
1000824c:	33 c2                	xor    eax,edx
1000824e:	83 c1 04             	add    ecx,0x4
10008251:	a9 00 01 01 81       	test   eax,0x81010100
10008256:	74 e8                	je     0x10008240
10008258:	8b 41 fc             	mov    eax,DWORD PTR [ecx-0x4]
1000825b:	84 c0                	test   al,al
1000825d:	74 32                	je     0x10008291
1000825f:	84 e4                	test   ah,ah
10008261:	74 24                	je     0x10008287
10008263:	a9 00 00 ff 00       	test   eax,0xff0000
10008268:	74 13                	je     0x1000827d
1000826a:	a9 00 00 00 ff       	test   eax,0xff000000
1000826f:	74 02                	je     0x10008273
10008271:	eb cd                	jmp    0x10008240
10008273:	8d 41 ff             	lea    eax,[ecx-0x1]
10008276:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
1000827a:	2b c1                	sub    eax,ecx
1000827c:	c3                   	ret    
1000827d:	8d 41 fe             	lea    eax,[ecx-0x2]
10008280:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008284:	2b c1                	sub    eax,ecx
10008286:	c3                   	ret    
10008287:	8d 41 fd             	lea    eax,[ecx-0x3]
1000828a:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
1000828e:	2b c1                	sub    eax,ecx
10008290:	c3                   	ret    
10008291:	8d 41 fc             	lea    eax,[ecx-0x4]
10008294:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008298:	2b c1                	sub    eax,ecx
1000829a:	c3                   	ret    
1000829b:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
1000829f:	53                   	push   ebx
100082a0:	33 db                	xor    ebx,ebx
100082a2:	3b cb                	cmp    ecx,ebx
100082a4:	56                   	push   esi
100082a5:	57                   	push   edi
100082a6:	74 08                	je     0x100082b0
100082a8:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
100082ac:	3b fb                	cmp    edi,ebx
100082ae:	77 1b                	ja     0x100082cb
100082b0:	e8 91 c7 ff ff       	call   0x10004a46
100082b5:	6a 16                	push   0x16
100082b7:	5e                   	pop    esi
100082b8:	89 30                	mov    DWORD PTR [eax],esi
100082ba:	53                   	push   ebx
100082bb:	53                   	push   ebx
100082bc:	53                   	push   ebx
100082bd:	53                   	push   ebx
100082be:	53                   	push   ebx
100082bf:	e8 b2 f8 ff ff       	call   0x10007b76
100082c4:	83 c4 14             	add    esp,0x14
100082c7:	8b c6                	mov    eax,esi
100082c9:	eb 31                	jmp    0x100082fc
100082cb:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
100082cf:	3b f3                	cmp    esi,ebx
100082d1:	75 04                	jne    0x100082d7
100082d3:	88 19                	mov    BYTE PTR [ecx],bl
100082d5:	eb d9                	jmp    0x100082b0
100082d7:	8b d1                	mov    edx,ecx
100082d9:	8a 06                	mov    al,BYTE PTR [esi]
100082db:	88 02                	mov    BYTE PTR [edx],al
100082dd:	42                   	inc    edx
100082de:	46                   	inc    esi
100082df:	3a c3                	cmp    al,bl
100082e1:	74 03                	je     0x100082e6
100082e3:	4f                   	dec    edi
100082e4:	75 f3                	jne    0x100082d9
100082e6:	3b fb                	cmp    edi,ebx
100082e8:	75 10                	jne    0x100082fa
100082ea:	88 19                	mov    BYTE PTR [ecx],bl
100082ec:	e8 55 c7 ff ff       	call   0x10004a46
100082f1:	6a 22                	push   0x22
100082f3:	59                   	pop    ecx
100082f4:	89 08                	mov    DWORD PTR [eax],ecx
100082f6:	8b f1                	mov    esi,ecx
100082f8:	eb c0                	jmp    0x100082ba
100082fa:	33 c0                	xor    eax,eax
100082fc:	5f                   	pop    edi
100082fd:	5e                   	pop    esi
100082fe:	5b                   	pop    ebx
100082ff:	c3                   	ret    
10008300:	55                   	push   ebp
10008301:	8b ec                	mov    ebp,esp
10008303:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
10008306:	53                   	push   ebx
10008307:	56                   	push   esi
10008308:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000830b:	33 db                	xor    ebx,ebx
1000830d:	3b f3                	cmp    esi,ebx
1000830f:	57                   	push   edi
10008310:	8b 79 0c             	mov    edi,DWORD PTR [ecx+0xc]
10008313:	75 1e                	jne    0x10008333
10008315:	e8 2c c7 ff ff       	call   0x10004a46
1000831a:	6a 16                	push   0x16
1000831c:	5e                   	pop    esi
1000831d:	89 30                	mov    DWORD PTR [eax],esi
1000831f:	53                   	push   ebx
10008320:	53                   	push   ebx
10008321:	53                   	push   ebx
10008322:	53                   	push   ebx
10008323:	53                   	push   ebx
10008324:	e8 4d f8 ff ff       	call   0x10007b76
10008329:	83 c4 14             	add    esp,0x14
1000832c:	8b c6                	mov    eax,esi
1000832e:	e9 85 00 00 00       	jmp    0x100083b8
10008333:	39 5d 0c             	cmp    DWORD PTR [ebp+0xc],ebx
10008336:	76 dd                	jbe    0x10008315
10008338:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
1000833b:	3b d3                	cmp    edx,ebx
1000833d:	88 1e                	mov    BYTE PTR [esi],bl
1000833f:	7e 04                	jle    0x10008345
10008341:	8b c2                	mov    eax,edx
10008343:	eb 02                	jmp    0x10008347
10008345:	33 c0                	xor    eax,eax
10008347:	40                   	inc    eax
10008348:	39 45 0c             	cmp    DWORD PTR [ebp+0xc],eax
1000834b:	77 0e                	ja     0x1000835b
1000834d:	e8 f4 c6 ff ff       	call   0x10004a46
10008352:	6a 22                	push   0x22
10008354:	59                   	pop    ecx
10008355:	89 08                	mov    DWORD PTR [eax],ecx
10008357:	8b f1                	mov    esi,ecx
10008359:	eb c4                	jmp    0x1000831f
1000835b:	3b d3                	cmp    edx,ebx
1000835d:	c6 06 30             	mov    BYTE PTR [esi],0x30
10008360:	8d 46 01             	lea    eax,[esi+0x1]
10008363:	7e 1a                	jle    0x1000837f
10008365:	8a 0f                	mov    cl,BYTE PTR [edi]
10008367:	3a cb                	cmp    cl,bl
10008369:	74 06                	je     0x10008371
1000836b:	0f be c9             	movsx  ecx,cl
1000836e:	47                   	inc    edi
1000836f:	eb 03                	jmp    0x10008374
10008371:	6a 30                	push   0x30
10008373:	59                   	pop    ecx
10008374:	88 08                	mov    BYTE PTR [eax],cl
10008376:	40                   	inc    eax
10008377:	4a                   	dec    edx
10008378:	3b d3                	cmp    edx,ebx
1000837a:	7f e9                	jg     0x10008365
1000837c:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
1000837f:	3b d3                	cmp    edx,ebx
10008381:	88 18                	mov    BYTE PTR [eax],bl
10008383:	7c 12                	jl     0x10008397
10008385:	80 3f 35             	cmp    BYTE PTR [edi],0x35
10008388:	7c 0d                	jl     0x10008397
1000838a:	eb 03                	jmp    0x1000838f
1000838c:	c6 00 30             	mov    BYTE PTR [eax],0x30
1000838f:	48                   	dec    eax
10008390:	80 38 39             	cmp    BYTE PTR [eax],0x39
10008393:	74 f7                	je     0x1000838c
10008395:	fe 00                	inc    BYTE PTR [eax]
10008397:	80 3e 31             	cmp    BYTE PTR [esi],0x31
1000839a:	75 05                	jne    0x100083a1
1000839c:	ff 41 04             	inc    DWORD PTR [ecx+0x4]
1000839f:	eb 15                	jmp    0x100083b6
100083a1:	8d 7e 01             	lea    edi,[esi+0x1]
100083a4:	57                   	push   edi
100083a5:	e8 66 fe ff ff       	call   0x10008210
100083aa:	40                   	inc    eax
100083ab:	50                   	push   eax
100083ac:	57                   	push   edi
100083ad:	56                   	push   esi
100083ae:	e8 ed fa ff ff       	call   0x10007ea0
100083b3:	83 c4 10             	add    esp,0x10
100083b6:	33 c0                	xor    eax,eax
100083b8:	5f                   	pop    edi
100083b9:	5e                   	pop    esi
100083ba:	5b                   	pop    ebx
100083bb:	5d                   	pop    ebp
100083bc:	c3                   	ret    
100083bd:	55                   	push   ebp
100083be:	8b ec                	mov    ebp,esp
100083c0:	51                   	push   ecx
100083c1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
100083c4:	0f b7 42 06          	movzx  eax,WORD PTR [edx+0x6]
100083c8:	53                   	push   ebx
100083c9:	8b c8                	mov    ecx,eax
100083cb:	56                   	push   esi
100083cc:	57                   	push   edi
100083cd:	c1 e9 04             	shr    ecx,0x4
100083d0:	25 00 80 00 00       	and    eax,0x8000
100083d5:	bf ff 07 00 00       	mov    edi,0x7ff
100083da:	23 cf                	and    ecx,edi
100083dc:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
100083df:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
100083e2:	8b 12                	mov    edx,DWORD PTR [edx]
100083e4:	0f b7 d9             	movzx  ebx,cx
100083e7:	be 00 00 00 80       	mov    esi,0x80000000
100083ec:	25 ff ff 0f 00       	and    eax,0xfffff
100083f1:	85 db                	test   ebx,ebx
100083f3:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
100083f6:	74 13                	je     0x1000840b
100083f8:	3b df                	cmp    ebx,edi
100083fa:	74 08                	je     0x10008404
100083fc:	81 c1 00 3c 00 00    	add    ecx,0x3c00
10008402:	eb 28                	jmp    0x1000842c
10008404:	bf ff 7f 00 00       	mov    edi,0x7fff
10008409:	eb 24                	jmp    0x1000842f
1000840b:	33 db                	xor    ebx,ebx
1000840d:	3b c3                	cmp    eax,ebx
1000840f:	75 12                	jne    0x10008423
10008411:	3b d3                	cmp    edx,ebx
10008413:	75 0e                	jne    0x10008423
10008415:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008418:	66 8b 4d 0c          	mov    cx,WORD PTR [ebp+0xc]
1000841c:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
1000841f:	89 18                	mov    DWORD PTR [eax],ebx
10008421:	eb 4c                	jmp    0x1000846f
10008423:	81 c1 01 3c 00 00    	add    ecx,0x3c01
10008429:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
1000842c:	0f b7 f9             	movzx  edi,cx
1000842f:	8b ca                	mov    ecx,edx
10008431:	c1 e9 15             	shr    ecx,0x15
10008434:	c1 e0 0b             	shl    eax,0xb
10008437:	0b c8                	or     ecx,eax
10008439:	0b 4d fc             	or     ecx,DWORD PTR [ebp-0x4]
1000843c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000843f:	c1 e2 0b             	shl    edx,0xb
10008442:	85 ce                	test   esi,ecx
10008444:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
10008447:	89 10                	mov    DWORD PTR [eax],edx
10008449:	75 1f                	jne    0x1000846a
1000844b:	8b 08                	mov    ecx,DWORD PTR [eax]
1000844d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
10008450:	8b d9                	mov    ebx,ecx
10008452:	03 d2                	add    edx,edx
10008454:	c1 eb 1f             	shr    ebx,0x1f
10008457:	0b d3                	or     edx,ebx
10008459:	03 c9                	add    ecx,ecx
1000845b:	81 c7 ff ff 00 00    	add    edi,0xffff
10008461:	85 d6                	test   esi,edx
10008463:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
10008466:	89 08                	mov    DWORD PTR [eax],ecx
10008468:	74 e1                	je     0x1000844b
1000846a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000846d:	0b cf                	or     ecx,edi
1000846f:	5f                   	pop    edi
10008470:	5e                   	pop    esi
10008471:	66 89 48 08          	mov    WORD PTR [eax+0x8],cx
10008475:	5b                   	pop    ebx
10008476:	c9                   	leave  
10008477:	c3                   	ret    
10008478:	55                   	push   ebp
10008479:	8b ec                	mov    ebp,esp
1000847b:	83 ec 30             	sub    esp,0x30
1000847e:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10008483:	33 c5                	xor    eax,ebp
10008485:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10008488:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000848b:	53                   	push   ebx
1000848c:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
1000848f:	56                   	push   esi
10008490:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
10008493:	57                   	push   edi
10008494:	8d 45 08             	lea    eax,[ebp+0x8]
10008497:	50                   	push   eax
10008498:	8d 45 f0             	lea    eax,[ebp-0x10]
1000849b:	50                   	push   eax
1000849c:	e8 1c ff ff ff       	call   0x100083bd
100084a1:	59                   	pop    ecx
100084a2:	59                   	pop    ecx
100084a3:	8d 45 d4             	lea    eax,[ebp-0x2c]
100084a6:	50                   	push   eax
100084a7:	6a 00                	push   0x0
100084a9:	6a 11                	push   0x11
100084ab:	83 ec 0c             	sub    esp,0xc
100084ae:	8d 75 f0             	lea    esi,[ebp-0x10]
100084b1:	8b fc                	mov    edi,esp
100084b3:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
100084b4:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
100084b5:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
100084b7:	e8 6e 31 00 00       	call   0x1000b62a
100084bc:	8b 75 d0             	mov    esi,DWORD PTR [ebp-0x30]
100084bf:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
100084c2:	0f be 45 d6          	movsx  eax,BYTE PTR [ebp-0x2a]
100084c6:	89 03                	mov    DWORD PTR [ebx],eax
100084c8:	0f bf 45 d4          	movsx  eax,WORD PTR [ebp-0x2c]
100084cc:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
100084cf:	8d 45 d8             	lea    eax,[ebp-0x28]
100084d2:	50                   	push   eax
100084d3:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100084d6:	56                   	push   esi
100084d7:	e8 bf fd ff ff       	call   0x1000829b
100084dc:	83 c4 24             	add    esp,0x24
100084df:	85 c0                	test   eax,eax
100084e1:	74 0f                	je     0x100084f2
100084e3:	33 c0                	xor    eax,eax
100084e5:	50                   	push   eax
100084e6:	50                   	push   eax
100084e7:	50                   	push   eax
100084e8:	50                   	push   eax
100084e9:	50                   	push   eax
100084ea:	e8 8b f5 ff ff       	call   0x10007a7a
100084ef:	83 c4 14             	add    esp,0x14
100084f2:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100084f5:	5f                   	pop    edi
100084f6:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
100084f9:	5e                   	pop    esi
100084fa:	8b c3                	mov    eax,ebx
100084fc:	33 cd                	xor    ecx,ebp
100084fe:	5b                   	pop    ebx
100084ff:	e8 17 b6 ff ff       	call   0x10003b1b
10008504:	c9                   	leave  
10008505:	c3                   	ret    
10008506:	cc                   	int3   
10008507:	cc                   	int3   
10008508:	cc                   	int3   
10008509:	cc                   	int3   
1000850a:	cc                   	int3   
1000850b:	cc                   	int3   
1000850c:	cc                   	int3   
1000850d:	cc                   	int3   
1000850e:	cc                   	int3   
1000850f:	cc                   	int3   
10008510:	57                   	push   edi
10008511:	56                   	push   esi
10008512:	55                   	push   ebp
10008513:	33 ff                	xor    edi,edi
10008515:	33 ed                	xor    ebp,ebp
10008517:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000851b:	0b c0                	or     eax,eax
1000851d:	7d 15                	jge    0x10008534
1000851f:	47                   	inc    edi
10008520:	45                   	inc    ebp
10008521:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10008525:	f7 d8                	neg    eax
10008527:	f7 da                	neg    edx
10008529:	83 d8 00             	sbb    eax,0x0
1000852c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
10008530:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
10008534:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10008538:	0b c0                	or     eax,eax
1000853a:	7d 14                	jge    0x10008550
1000853c:	47                   	inc    edi
1000853d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
10008541:	f7 d8                	neg    eax
10008543:	f7 da                	neg    edx
10008545:	83 d8 00             	sbb    eax,0x0
10008548:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
1000854c:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
10008550:	0b c0                	or     eax,eax
10008552:	75 28                	jne    0x1000857c
10008554:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10008558:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000855c:	33 d2                	xor    edx,edx
1000855e:	f7 f1                	div    ecx
10008560:	8b d8                	mov    ebx,eax
10008562:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10008566:	f7 f1                	div    ecx
10008568:	8b f0                	mov    esi,eax
1000856a:	8b c3                	mov    eax,ebx
1000856c:	f7 64 24 18          	mul    DWORD PTR [esp+0x18]
10008570:	8b c8                	mov    ecx,eax
10008572:	8b c6                	mov    eax,esi
10008574:	f7 64 24 18          	mul    DWORD PTR [esp+0x18]
10008578:	03 d1                	add    edx,ecx
1000857a:	eb 47                	jmp    0x100085c3
1000857c:	8b d8                	mov    ebx,eax
1000857e:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10008582:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10008586:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1000858a:	d1 eb                	shr    ebx,1
1000858c:	d1 d9                	rcr    ecx,1
1000858e:	d1 ea                	shr    edx,1
10008590:	d1 d8                	rcr    eax,1
10008592:	0b db                	or     ebx,ebx
10008594:	75 f4                	jne    0x1000858a
10008596:	f7 f1                	div    ecx
10008598:	8b f0                	mov    esi,eax
1000859a:	f7 64 24 1c          	mul    DWORD PTR [esp+0x1c]
1000859e:	8b c8                	mov    ecx,eax
100085a0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100085a4:	f7 e6                	mul    esi
100085a6:	03 d1                	add    edx,ecx
100085a8:	72 0e                	jb     0x100085b8
100085aa:	3b 54 24 14          	cmp    edx,DWORD PTR [esp+0x14]
100085ae:	77 08                	ja     0x100085b8
100085b0:	72 0f                	jb     0x100085c1
100085b2:	3b 44 24 10          	cmp    eax,DWORD PTR [esp+0x10]
100085b6:	76 09                	jbe    0x100085c1
100085b8:	4e                   	dec    esi
100085b9:	2b 44 24 18          	sub    eax,DWORD PTR [esp+0x18]
100085bd:	1b 54 24 1c          	sbb    edx,DWORD PTR [esp+0x1c]
100085c1:	33 db                	xor    ebx,ebx
100085c3:	2b 44 24 10          	sub    eax,DWORD PTR [esp+0x10]
100085c7:	1b 54 24 14          	sbb    edx,DWORD PTR [esp+0x14]
100085cb:	4d                   	dec    ebp
100085cc:	79 07                	jns    0x100085d5
100085ce:	f7 da                	neg    edx
100085d0:	f7 d8                	neg    eax
100085d2:	83 da 00             	sbb    edx,0x0
100085d5:	8b ca                	mov    ecx,edx
100085d7:	8b d3                	mov    edx,ebx
100085d9:	8b d9                	mov    ebx,ecx
100085db:	8b c8                	mov    ecx,eax
100085dd:	8b c6                	mov    eax,esi
100085df:	4f                   	dec    edi
100085e0:	75 07                	jne    0x100085e9
100085e2:	f7 da                	neg    edx
100085e4:	f7 d8                	neg    eax
100085e6:	83 da 00             	sbb    edx,0x0
100085e9:	5d                   	pop    ebp
100085ea:	5e                   	pop    esi
100085eb:	5f                   	pop    edi
100085ec:	c2 10 00             	ret    0x10
100085ef:	cc                   	int3   
100085f0:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100085f4:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
100085f8:	85 d2                	test   edx,edx
100085fa:	74 69                	je     0x10008665
100085fc:	33 c0                	xor    eax,eax
100085fe:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
10008602:	84 c0                	test   al,al
10008604:	75 16                	jne    0x1000861c
10008606:	81 fa 00 01 00 00    	cmp    edx,0x100
1000860c:	72 0e                	jb     0x1000861c
1000860e:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
10008615:	74 05                	je     0x1000861c
10008617:	e9 2b 39 00 00       	jmp    0x1000bf47
1000861c:	57                   	push   edi
1000861d:	8b f9                	mov    edi,ecx
1000861f:	83 fa 04             	cmp    edx,0x4
10008622:	72 31                	jb     0x10008655
10008624:	f7 d9                	neg    ecx
10008626:	83 e1 03             	and    ecx,0x3
10008629:	74 0c                	je     0x10008637
1000862b:	2b d1                	sub    edx,ecx
1000862d:	88 07                	mov    BYTE PTR [edi],al
1000862f:	83 c7 01             	add    edi,0x1
10008632:	83 e9 01             	sub    ecx,0x1
10008635:	75 f6                	jne    0x1000862d
10008637:	8b c8                	mov    ecx,eax
10008639:	c1 e0 08             	shl    eax,0x8
1000863c:	03 c1                	add    eax,ecx
1000863e:	8b c8                	mov    ecx,eax
10008640:	c1 e0 10             	shl    eax,0x10
10008643:	03 c1                	add    eax,ecx
10008645:	8b ca                	mov    ecx,edx
10008647:	83 e2 03             	and    edx,0x3
1000864a:	c1 e9 02             	shr    ecx,0x2
1000864d:	74 06                	je     0x10008655
1000864f:	f3 ab                	rep stos DWORD PTR es:[edi],eax
10008651:	85 d2                	test   edx,edx
10008653:	74 0a                	je     0x1000865f
10008655:	88 07                	mov    BYTE PTR [edi],al
10008657:	83 c7 01             	add    edi,0x1
1000865a:	83 ea 01             	sub    edx,0x1
1000865d:	75 f6                	jne    0x10008655
1000865f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10008663:	5f                   	pop    edi
10008664:	c3                   	ret    
10008665:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008669:	c3                   	ret    
1000866a:	cc                   	int3   
1000866b:	cc                   	int3   
1000866c:	cc                   	int3   
1000866d:	cc                   	int3   
1000866e:	cc                   	int3   
1000866f:	cc                   	int3   
10008670:	80 f9 40             	cmp    cl,0x40
10008673:	73 15                	jae    0x1000868a
10008675:	80 f9 20             	cmp    cl,0x20
10008678:	73 06                	jae    0x10008680
1000867a:	0f ad d0             	shrd   eax,edx,cl
1000867d:	d3 ea                	shr    edx,cl
1000867f:	c3                   	ret    
10008680:	8b c2                	mov    eax,edx
10008682:	33 d2                	xor    edx,edx
10008684:	80 e1 1f             	and    cl,0x1f
10008687:	d3 e8                	shr    eax,cl
10008689:	c3                   	ret    
1000868a:	33 c0                	xor    eax,eax
1000868c:	33 d2                	xor    edx,edx
1000868e:	c3                   	ret    
1000868f:	6a 02                	push   0x2
10008691:	e8 90 d3 ff ff       	call   0x10005a26
10008696:	59                   	pop    ecx
10008697:	c3                   	ret    
10008698:	55                   	push   ebp
10008699:	8b ec                	mov    ebp,esp
1000869b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000869e:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
100086a1:	25 ff ff f7 ff       	and    eax,0xfff7ffff
100086a6:	23 c8                	and    ecx,eax
100086a8:	f7 c1 e0 fc f0 fc    	test   ecx,0xfcf0fce0
100086ae:	56                   	push   esi
100086af:	74 31                	je     0x100086e2
100086b1:	57                   	push   edi
100086b2:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
100086b5:	33 f6                	xor    esi,esi
100086b7:	3b fe                	cmp    edi,esi
100086b9:	74 0b                	je     0x100086c6
100086bb:	56                   	push   esi
100086bc:	56                   	push   esi
100086bd:	e8 42 3a 00 00       	call   0x1000c104
100086c2:	59                   	pop    ecx
100086c3:	59                   	pop    ecx
100086c4:	89 07                	mov    DWORD PTR [edi],eax
100086c6:	e8 7b c3 ff ff       	call   0x10004a46
100086cb:	6a 16                	push   0x16
100086cd:	5f                   	pop    edi
100086ce:	56                   	push   esi
100086cf:	56                   	push   esi
100086d0:	56                   	push   esi
100086d1:	56                   	push   esi
100086d2:	56                   	push   esi
100086d3:	89 38                	mov    DWORD PTR [eax],edi
100086d5:	e8 9c f4 ff ff       	call   0x10007b76
100086da:	83 c4 14             	add    esp,0x14
100086dd:	8b c7                	mov    eax,edi
100086df:	5f                   	pop    edi
100086e0:	eb 1d                	jmp    0x100086ff
100086e2:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
100086e5:	85 f6                	test   esi,esi
100086e7:	50                   	push   eax
100086e8:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100086eb:	74 09                	je     0x100086f6
100086ed:	e8 12 3a 00 00       	call   0x1000c104
100086f2:	89 06                	mov    DWORD PTR [esi],eax
100086f4:	eb 05                	jmp    0x100086fb
100086f6:	e8 09 3a 00 00       	call   0x1000c104
100086fb:	59                   	pop    ecx
100086fc:	59                   	pop    ecx
100086fd:	33 c0                	xor    eax,eax
100086ff:	5e                   	pop    esi
10008700:	5d                   	pop    ebp
10008701:	c3                   	ret    
10008702:	6a 0c                	push   0xc
10008704:	68 28 e5 00 10       	push   0x1000e528
10008709:	e8 1a d1 ff ff       	call   0x10005828
1000870e:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10008712:	66 0f 28 c1          	movapd xmm0,xmm1
10008716:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
1000871d:	eb 23                	jmp    0x10008742
1000871f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10008722:	8b 00                	mov    eax,DWORD PTR [eax]
10008724:	8b 00                	mov    eax,DWORD PTR [eax]
10008726:	3d 05 00 00 c0       	cmp    eax,0xc0000005
1000872b:	74 0a                	je     0x10008737
1000872d:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
10008732:	74 03                	je     0x10008737
10008734:	33 c0                	xor    eax,eax
10008736:	c3                   	ret    
10008737:	33 c0                	xor    eax,eax
10008739:	40                   	inc    eax
1000873a:	c3                   	ret    
1000873b:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
1000873e:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
10008742:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008749:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
1000874c:	e8 1c d1 ff ff       	call   0x1000586d
10008751:	c3                   	ret    
10008752:	55                   	push   ebp
10008753:	8b ec                	mov    ebp,esp
10008755:	83 ec 18             	sub    esp,0x18
10008758:	33 c0                	xor    eax,eax
1000875a:	53                   	push   ebx
1000875b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000875e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
10008761:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10008764:	53                   	push   ebx
10008765:	9c                   	pushf  
10008766:	58                   	pop    eax
10008767:	8b c8                	mov    ecx,eax
10008769:	35 00 00 20 00       	xor    eax,0x200000
1000876e:	50                   	push   eax
1000876f:	9d                   	popf   
10008770:	9c                   	pushf  
10008771:	5a                   	pop    edx
10008772:	2b d1                	sub    edx,ecx
10008774:	74 1f                	je     0x10008795
10008776:	51                   	push   ecx
10008777:	9d                   	popf   
10008778:	33 c0                	xor    eax,eax
1000877a:	0f a2                	cpuid  
1000877c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000877f:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
10008782:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
10008785:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
10008788:	b8 01 00 00 00       	mov    eax,0x1
1000878d:	0f a2                	cpuid  
1000878f:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
10008792:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10008795:	5b                   	pop    ebx
10008796:	f7 45 fc 00 00 00 04 	test   DWORD PTR [ebp-0x4],0x4000000
1000879d:	74 0e                	je     0x100087ad
1000879f:	e8 5e ff ff ff       	call   0x10008702
100087a4:	85 c0                	test   eax,eax
100087a6:	74 05                	je     0x100087ad
100087a8:	33 c0                	xor    eax,eax
100087aa:	40                   	inc    eax
100087ab:	eb 02                	jmp    0x100087af
100087ad:	33 c0                	xor    eax,eax
100087af:	5b                   	pop    ebx
100087b0:	c9                   	leave  
100087b1:	c3                   	ret    
100087b2:	e8 9b ff ff ff       	call   0x10008752
100087b7:	a3 f8 5d 01 10       	mov    ds:0x10015df8,eax
100087bc:	33 c0                	xor    eax,eax
100087be:	c3                   	ret    
100087bf:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100087c3:	a3 9c 5b 01 10       	mov    ds:0x10015b9c,eax
100087c8:	c3                   	ret    
100087c9:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
100087cd:	ff 15 ec d0 00 10    	call   DWORD PTR ds:0x1000d0ec
100087d3:	33 c0                	xor    eax,eax
100087d5:	40                   	inc    eax
100087d6:	c2 08 00             	ret    0x8
100087d9:	6a 14                	push   0x14
100087db:	68 48 e5 00 10       	push   0x1000e548
100087e0:	e8 43 d0 ff ff       	call   0x10005828
100087e5:	33 ff                	xor    edi,edi
100087e7:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
100087ea:	ff 35 9c 5b 01 10    	push   DWORD PTR ds:0x10015b9c
100087f0:	e8 19 d9 ff ff       	call   0x1000610e
100087f5:	59                   	pop    ecx
100087f6:	8b f0                	mov    esi,eax
100087f8:	3b f7                	cmp    esi,edi
100087fa:	75 53                	jne    0x1000884f
100087fc:	8d 45 e4             	lea    eax,[ebp-0x1c]
100087ff:	50                   	push   eax
10008800:	e8 ca d2 ff ff       	call   0x10005acf
10008805:	59                   	pop    ecx
10008806:	3b c7                	cmp    eax,edi
10008808:	74 0d                	je     0x10008817
1000880a:	57                   	push   edi
1000880b:	57                   	push   edi
1000880c:	57                   	push   edi
1000880d:	57                   	push   edi
1000880e:	57                   	push   edi
1000880f:	e8 66 f2 ff ff       	call   0x10007a7a
10008814:	83 c4 14             	add    esp,0x14
10008817:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
1000881b:	74 21                	je     0x1000883e
1000881d:	68 30 d9 00 10       	push   0x1000d930
10008822:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
10008828:	3b c7                	cmp    eax,edi
1000882a:	74 12                	je     0x1000883e
1000882c:	68 08 d9 00 10       	push   0x1000d908
10008831:	50                   	push   eax
10008832:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
10008838:	8b f0                	mov    esi,eax
1000883a:	3b f7                	cmp    esi,edi
1000883c:	75 05                	jne    0x10008843
1000883e:	be c9 87 00 10       	mov    esi,0x100087c9
10008843:	56                   	push   esi
10008844:	e8 4e d8 ff ff       	call   0x10006097
10008849:	59                   	pop    ecx
1000884a:	a3 9c 5b 01 10       	mov    ds:0x10015b9c,eax
1000884f:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10008852:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10008855:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10008858:	ff d6                	call   esi
1000885a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000885d:	eb 2f                	jmp    0x1000888e
1000885f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10008862:	8b 00                	mov    eax,DWORD PTR [eax]
10008864:	8b 00                	mov    eax,DWORD PTR [eax]
10008866:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
10008869:	33 c9                	xor    ecx,ecx
1000886b:	3d 17 00 00 c0       	cmp    eax,0xc0000017
10008870:	0f 94 c1             	sete   cl
10008873:	8b c1                	mov    eax,ecx
10008875:	c3                   	ret    
10008876:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10008879:	81 7d dc 17 00 00 c0 	cmp    DWORD PTR [ebp-0x24],0xc0000017
10008880:	75 08                	jne    0x1000888a
10008882:	6a 08                	push   0x8
10008884:	ff 15 a0 d0 00 10    	call   DWORD PTR ds:0x1000d0a0
1000888a:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
1000888e:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008895:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
10008898:	e8 d0 cf ff ff       	call   0x1000586d
1000889d:	c3                   	ret    
1000889e:	cc                   	int3   
1000889f:	cc                   	int3   
100088a0:	53                   	push   ebx
100088a1:	56                   	push   esi
100088a2:	57                   	push   edi
100088a3:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100088a7:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100088ab:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100088af:	55                   	push   ebp
100088b0:	52                   	push   edx
100088b1:	50                   	push   eax
100088b2:	51                   	push   ecx
100088b3:	51                   	push   ecx
100088b4:	68 30 89 00 10       	push   0x10008930
100088b9:	64 ff 35 00 00 00 00 	push   DWORD PTR fs:0x0
100088c0:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100088c5:	33 c4                	xor    eax,esp
100088c7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100088cb:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
100088d2:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
100088d6:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
100088d9:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
100088dd:	33 19                	xor    ebx,DWORD PTR [ecx]
100088df:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
100088e2:	83 fe fe             	cmp    esi,0xfffffffe
100088e5:	74 3b                	je     0x10008922
100088e7:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
100088eb:	83 fa fe             	cmp    edx,0xfffffffe
100088ee:	74 04                	je     0x100088f4
100088f0:	3b f2                	cmp    esi,edx
100088f2:	76 2e                	jbe    0x10008922
100088f4:	8d 34 76             	lea    esi,[esi+esi*2]
100088f7:	8d 5c b3 10          	lea    ebx,[ebx+esi*4+0x10]
100088fb:	8b 0b                	mov    ecx,DWORD PTR [ebx]
100088fd:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
10008900:	83 7b 04 00          	cmp    DWORD PTR [ebx+0x4],0x0
10008904:	75 cc                	jne    0x100088d2
10008906:	68 01 01 00 00       	push   0x101
1000890b:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
1000890e:	e8 0a 3c 00 00       	call   0x1000c51d
10008913:	b9 01 00 00 00       	mov    ecx,0x1
10008918:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
1000891b:	e8 1c 3c 00 00       	call   0x1000c53c
10008920:	eb b0                	jmp    0x100088d2
10008922:	64 8f 05 00 00 00 00 	pop    DWORD PTR fs:0x0
10008929:	83 c4 18             	add    esp,0x18
1000892c:	5f                   	pop    edi
1000892d:	5e                   	pop    esi
1000892e:	5b                   	pop    ebx
1000892f:	c3                   	ret    
10008930:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008934:	f7 41 04 06 00 00 00 	test   DWORD PTR [ecx+0x4],0x6
1000893b:	b8 01 00 00 00       	mov    eax,0x1
10008940:	74 33                	je     0x10008975
10008942:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10008946:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
10008949:	33 c8                	xor    ecx,eax
1000894b:	e8 cb b1 ff ff       	call   0x10003b1b
10008950:	55                   	push   ebp
10008951:	8b 68 18             	mov    ebp,DWORD PTR [eax+0x18]
10008954:	ff 70 0c             	push   DWORD PTR [eax+0xc]
10008957:	ff 70 10             	push   DWORD PTR [eax+0x10]
1000895a:	ff 70 14             	push   DWORD PTR [eax+0x14]
1000895d:	e8 3e ff ff ff       	call   0x100088a0
10008962:	83 c4 0c             	add    esp,0xc
10008965:	5d                   	pop    ebp
10008966:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000896a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1000896e:	89 02                	mov    DWORD PTR [edx],eax
10008970:	b8 03 00 00 00       	mov    eax,0x3
10008975:	c3                   	ret    
10008976:	55                   	push   ebp
10008977:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
1000897b:	8b 29                	mov    ebp,DWORD PTR [ecx]
1000897d:	ff 71 1c             	push   DWORD PTR [ecx+0x1c]
10008980:	ff 71 18             	push   DWORD PTR [ecx+0x18]
10008983:	ff 71 28             	push   DWORD PTR [ecx+0x28]
10008986:	e8 15 ff ff ff       	call   0x100088a0
1000898b:	83 c4 0c             	add    esp,0xc
1000898e:	5d                   	pop    ebp
1000898f:	c2 04 00             	ret    0x4
10008992:	55                   	push   ebp
10008993:	56                   	push   esi
10008994:	57                   	push   edi
10008995:	53                   	push   ebx
10008996:	8b ea                	mov    ebp,edx
10008998:	33 c0                	xor    eax,eax
1000899a:	33 db                	xor    ebx,ebx
1000899c:	33 d2                	xor    edx,edx
1000899e:	33 f6                	xor    esi,esi
100089a0:	33 ff                	xor    edi,edi
100089a2:	ff d1                	call   ecx
100089a4:	5b                   	pop    ebx
100089a5:	5f                   	pop    edi
100089a6:	5e                   	pop    esi
100089a7:	5d                   	pop    ebp
100089a8:	c3                   	ret    
100089a9:	8b ea                	mov    ebp,edx
100089ab:	8b f1                	mov    esi,ecx
100089ad:	8b c1                	mov    eax,ecx
100089af:	6a 01                	push   0x1
100089b1:	e8 67 3b 00 00       	call   0x1000c51d
100089b6:	33 c0                	xor    eax,eax
100089b8:	33 db                	xor    ebx,ebx
100089ba:	33 c9                	xor    ecx,ecx
100089bc:	33 d2                	xor    edx,edx
100089be:	33 ff                	xor    edi,edi
100089c0:	ff e6                	jmp    esi
100089c2:	55                   	push   ebp
100089c3:	8b ec                	mov    ebp,esp
100089c5:	53                   	push   ebx
100089c6:	56                   	push   esi
100089c7:	57                   	push   edi
100089c8:	6a 00                	push   0x0
100089ca:	6a 00                	push   0x0
100089cc:	68 d7 89 00 10       	push   0x100089d7
100089d1:	51                   	push   ecx
100089d2:	e8 17 46 00 00       	call   0x1000cfee
100089d7:	5f                   	pop    edi
100089d8:	5e                   	pop    esi
100089d9:	5b                   	pop    ebx
100089da:	5d                   	pop    ebp
100089db:	c3                   	ret    
100089dc:	55                   	push   ebp
100089dd:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
100089e1:	52                   	push   edx
100089e2:	51                   	push   ecx
100089e3:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
100089e7:	e8 b4 fe ff ff       	call   0x100088a0
100089ec:	83 c4 0c             	add    esp,0xc
100089ef:	5d                   	pop    ebp
100089f0:	c2 08 00             	ret    0x8
100089f3:	cc                   	int3   
100089f4:	cc                   	int3   
100089f5:	cc                   	int3   
100089f6:	cc                   	int3   
100089f7:	cc                   	int3   
100089f8:	cc                   	int3   
100089f9:	cc                   	int3   
100089fa:	cc                   	int3   
100089fb:	cc                   	int3   
100089fc:	cc                   	int3   
100089fd:	cc                   	int3   
100089fe:	cc                   	int3   
100089ff:	cc                   	int3   
10008a00:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008a04:	66 81 39 4d 5a       	cmp    WORD PTR [ecx],0x5a4d
10008a09:	74 03                	je     0x10008a0e
10008a0b:	33 c0                	xor    eax,eax
10008a0d:	c3                   	ret    
10008a0e:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
10008a11:	03 c1                	add    eax,ecx
10008a13:	81 38 50 45 00 00    	cmp    DWORD PTR [eax],0x4550
10008a19:	75 f0                	jne    0x10008a0b
10008a1b:	33 c9                	xor    ecx,ecx
10008a1d:	66 81 78 18 0b 01    	cmp    WORD PTR [eax+0x18],0x10b
10008a23:	0f 94 c1             	sete   cl
10008a26:	8b c1                	mov    eax,ecx
10008a28:	c3                   	ret    
10008a29:	cc                   	int3   
10008a2a:	cc                   	int3   
10008a2b:	cc                   	int3   
10008a2c:	cc                   	int3   
10008a2d:	cc                   	int3   
10008a2e:	cc                   	int3   
10008a2f:	cc                   	int3   
10008a30:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008a34:	8b 48 3c             	mov    ecx,DWORD PTR [eax+0x3c]
10008a37:	03 c8                	add    ecx,eax
10008a39:	0f b7 41 14          	movzx  eax,WORD PTR [ecx+0x14]
10008a3d:	53                   	push   ebx
10008a3e:	56                   	push   esi
10008a3f:	0f b7 71 06          	movzx  esi,WORD PTR [ecx+0x6]
10008a43:	33 d2                	xor    edx,edx
10008a45:	85 f6                	test   esi,esi
10008a47:	57                   	push   edi
10008a48:	8d 44 08 18          	lea    eax,[eax+ecx*1+0x18]
10008a4c:	76 1e                	jbe    0x10008a6c
10008a4e:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
10008a52:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
10008a55:	3b f9                	cmp    edi,ecx
10008a57:	72 09                	jb     0x10008a62
10008a59:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
10008a5c:	03 d9                	add    ebx,ecx
10008a5e:	3b fb                	cmp    edi,ebx
10008a60:	72 0c                	jb     0x10008a6e
10008a62:	83 c2 01             	add    edx,0x1
10008a65:	83 c0 28             	add    eax,0x28
10008a68:	3b d6                	cmp    edx,esi
10008a6a:	72 e6                	jb     0x10008a52
10008a6c:	33 c0                	xor    eax,eax
10008a6e:	5f                   	pop    edi
10008a6f:	5e                   	pop    esi
10008a70:	5b                   	pop    ebx
10008a71:	c3                   	ret    
10008a72:	cc                   	int3   
10008a73:	cc                   	int3   
10008a74:	cc                   	int3   
10008a75:	cc                   	int3   
10008a76:	cc                   	int3   
10008a77:	cc                   	int3   
10008a78:	cc                   	int3   
10008a79:	cc                   	int3   
10008a7a:	cc                   	int3   
10008a7b:	cc                   	int3   
10008a7c:	cc                   	int3   
10008a7d:	cc                   	int3   
10008a7e:	cc                   	int3   
10008a7f:	cc                   	int3   
10008a80:	55                   	push   ebp
10008a81:	8b ec                	mov    ebp,esp
10008a83:	6a fe                	push   0xfffffffe
10008a85:	68 68 e5 00 10       	push   0x1000e568
10008a8a:	68 90 58 00 10       	push   0x10005890
10008a8f:	64 a1 00 00 00 00    	mov    eax,fs:0x0
10008a95:	50                   	push   eax
10008a96:	83 ec 08             	sub    esp,0x8
10008a99:	53                   	push   ebx
10008a9a:	56                   	push   esi
10008a9b:	57                   	push   edi
10008a9c:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10008aa1:	31 45 f8             	xor    DWORD PTR [ebp-0x8],eax
10008aa4:	33 c5                	xor    eax,ebp
10008aa6:	50                   	push   eax
10008aa7:	8d 45 f0             	lea    eax,[ebp-0x10]
10008aaa:	64 a3 00 00 00 00    	mov    fs:0x0,eax
10008ab0:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
10008ab3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
10008aba:	68 00 00 00 10       	push   0x10000000
10008abf:	e8 3c ff ff ff       	call   0x10008a00
10008ac4:	83 c4 04             	add    esp,0x4
10008ac7:	85 c0                	test   eax,eax
10008ac9:	74 55                	je     0x10008b20
10008acb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008ace:	2d 00 00 00 10       	sub    eax,0x10000000
10008ad3:	50                   	push   eax
10008ad4:	68 00 00 00 10       	push   0x10000000
10008ad9:	e8 52 ff ff ff       	call   0x10008a30
10008ade:	83 c4 08             	add    esp,0x8
10008ae1:	85 c0                	test   eax,eax
10008ae3:	74 3b                	je     0x10008b20
10008ae5:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
10008ae8:	c1 e8 1f             	shr    eax,0x1f
10008aeb:	f7 d0                	not    eax
10008aed:	83 e0 01             	and    eax,0x1
10008af0:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008af7:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10008afa:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10008b01:	59                   	pop    ecx
10008b02:	5f                   	pop    edi
10008b03:	5e                   	pop    esi
10008b04:	5b                   	pop    ebx
10008b05:	8b e5                	mov    esp,ebp
10008b07:	5d                   	pop    ebp
10008b08:	c3                   	ret    
10008b09:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10008b0c:	8b 08                	mov    ecx,DWORD PTR [eax]
10008b0e:	8b 01                	mov    eax,DWORD PTR [ecx]
10008b10:	33 d2                	xor    edx,edx
10008b12:	3d 05 00 00 c0       	cmp    eax,0xc0000005
10008b17:	0f 94 c2             	sete   dl
10008b1a:	8b c2                	mov    eax,edx
10008b1c:	c3                   	ret    
10008b1d:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10008b20:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008b27:	33 c0                	xor    eax,eax
10008b29:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10008b2c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10008b33:	59                   	pop    ecx
10008b34:	5f                   	pop    edi
10008b35:	5e                   	pop    esi
10008b36:	5b                   	pop    ebx
10008b37:	8b e5                	mov    esp,ebp
10008b39:	5d                   	pop    ebp
10008b3a:	c3                   	ret    
10008b3b:	51                   	push   ecx
10008b3c:	53                   	push   ebx
10008b3d:	55                   	push   ebp
10008b3e:	56                   	push   esi
10008b3f:	57                   	push   edi
10008b40:	ff 35 c8 5d 01 10    	push   DWORD PTR ds:0x10015dc8
10008b46:	e8 c3 d5 ff ff       	call   0x1000610e
10008b4b:	ff 35 c4 5d 01 10    	push   DWORD PTR ds:0x10015dc4
10008b51:	8b f0                	mov    esi,eax
10008b53:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
10008b57:	e8 b2 d5 ff ff       	call   0x1000610e
10008b5c:	8b f8                	mov    edi,eax
10008b5e:	3b fe                	cmp    edi,esi
10008b60:	59                   	pop    ecx
10008b61:	59                   	pop    ecx
10008b62:	0f 82 84 00 00 00    	jb     0x10008bec
10008b68:	8b df                	mov    ebx,edi
10008b6a:	2b de                	sub    ebx,esi
10008b6c:	8d 6b 04             	lea    ebp,[ebx+0x4]
10008b6f:	83 fd 04             	cmp    ebp,0x4
10008b72:	72 78                	jb     0x10008bec
10008b74:	56                   	push   esi
10008b75:	e8 c5 39 00 00       	call   0x1000c53f
10008b7a:	8b f0                	mov    esi,eax
10008b7c:	3b f5                	cmp    esi,ebp
10008b7e:	59                   	pop    ecx
10008b7f:	73 4a                	jae    0x10008bcb
10008b81:	b8 00 08 00 00       	mov    eax,0x800
10008b86:	3b f0                	cmp    esi,eax
10008b88:	73 02                	jae    0x10008b8c
10008b8a:	8b c6                	mov    eax,esi
10008b8c:	03 c6                	add    eax,esi
10008b8e:	3b c6                	cmp    eax,esi
10008b90:	72 10                	jb     0x10008ba2
10008b92:	50                   	push   eax
10008b93:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
10008b97:	e8 3c db ff ff       	call   0x100066d8
10008b9c:	85 c0                	test   eax,eax
10008b9e:	59                   	pop    ecx
10008b9f:	59                   	pop    ecx
10008ba0:	75 17                	jne    0x10008bb9
10008ba2:	8d 46 10             	lea    eax,[esi+0x10]
10008ba5:	3b c6                	cmp    eax,esi
10008ba7:	72 43                	jb     0x10008bec
10008ba9:	50                   	push   eax
10008baa:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
10008bae:	e8 25 db ff ff       	call   0x100066d8
10008bb3:	85 c0                	test   eax,eax
10008bb5:	59                   	pop    ecx
10008bb6:	59                   	pop    ecx
10008bb7:	74 33                	je     0x10008bec
10008bb9:	c1 fb 02             	sar    ebx,0x2
10008bbc:	50                   	push   eax
10008bbd:	8d 3c 98             	lea    edi,[eax+ebx*4]
10008bc0:	e8 d2 d4 ff ff       	call   0x10006097
10008bc5:	59                   	pop    ecx
10008bc6:	a3 c8 5d 01 10       	mov    ds:0x10015dc8,eax
10008bcb:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
10008bcf:	e8 c3 d4 ff ff       	call   0x10006097
10008bd4:	89 07                	mov    DWORD PTR [edi],eax
10008bd6:	83 c7 04             	add    edi,0x4
10008bd9:	57                   	push   edi
10008bda:	e8 b8 d4 ff ff       	call   0x10006097
10008bdf:	59                   	pop    ecx
10008be0:	a3 c4 5d 01 10       	mov    ds:0x10015dc4,eax
10008be5:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10008be9:	59                   	pop    ecx
10008bea:	eb 02                	jmp    0x10008bee
10008bec:	33 c0                	xor    eax,eax
10008bee:	5f                   	pop    edi
10008bef:	5e                   	pop    esi
10008bf0:	5d                   	pop    ebp
10008bf1:	5b                   	pop    ebx
10008bf2:	59                   	pop    ecx
10008bf3:	c3                   	ret    
10008bf4:	56                   	push   esi
10008bf5:	6a 04                	push   0x4
10008bf7:	6a 20                	push   0x20
10008bf9:	e8 92 da ff ff       	call   0x10006690
10008bfe:	8b f0                	mov    esi,eax
10008c00:	56                   	push   esi
10008c01:	e8 91 d4 ff ff       	call   0x10006097
10008c06:	83 c4 0c             	add    esp,0xc
10008c09:	85 f6                	test   esi,esi
10008c0b:	a3 c8 5d 01 10       	mov    ds:0x10015dc8,eax
10008c10:	a3 c4 5d 01 10       	mov    ds:0x10015dc4,eax
10008c15:	75 05                	jne    0x10008c1c
10008c17:	6a 18                	push   0x18
10008c19:	58                   	pop    eax
10008c1a:	5e                   	pop    esi
10008c1b:	c3                   	ret    
10008c1c:	83 26 00             	and    DWORD PTR [esi],0x0
10008c1f:	33 c0                	xor    eax,eax
10008c21:	5e                   	pop    esi
10008c22:	c3                   	ret    
10008c23:	6a 0c                	push   0xc
10008c25:	68 88 e5 00 10       	push   0x1000e588
10008c2a:	e8 f9 cb ff ff       	call   0x10005828
10008c2f:	e8 51 ce ff ff       	call   0x10005a85
10008c34:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10008c38:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10008c3b:	e8 fb fe ff ff       	call   0x10008b3b
10008c40:	59                   	pop    ecx
10008c41:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10008c44:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008c4b:	e8 09 00 00 00       	call   0x10008c59
10008c50:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10008c53:	e8 15 cc ff ff       	call   0x1000586d
10008c58:	c3                   	ret    
10008c59:	e8 30 ce ff ff       	call   0x10005a8e
10008c5e:	c3                   	ret    
10008c5f:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10008c63:	e8 bb ff ff ff       	call   0x10008c23
10008c68:	f7 d8                	neg    eax
10008c6a:	1b c0                	sbb    eax,eax
10008c6c:	f7 d8                	neg    eax
10008c6e:	59                   	pop    ecx
10008c6f:	48                   	dec    eax
10008c70:	c3                   	ret    
10008c71:	6a 08                	push   0x8
10008c73:	68 a8 e5 00 10       	push   0x1000e5a8
10008c78:	e8 ab cb ff ff       	call   0x10005828
10008c7d:	e8 a8 d6 ff ff       	call   0x1000632a
10008c82:	8b 40 78             	mov    eax,DWORD PTR [eax+0x78]
10008c85:	85 c0                	test   eax,eax
10008c87:	74 16                	je     0x10008c9f
10008c89:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10008c8d:	ff d0                	call   eax
10008c8f:	eb 07                	jmp    0x10008c98
10008c91:	33 c0                	xor    eax,eax
10008c93:	40                   	inc    eax
10008c94:	c3                   	ret    
10008c95:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10008c98:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008c9f:	e8 3e 39 00 00       	call   0x1000c5e2
10008ca4:	e8 c4 cb ff ff       	call   0x1000586d
10008ca9:	c3                   	ret    
10008caa:	68 71 8c 00 10       	push   0x10008c71
10008caf:	e8 e3 d3 ff ff       	call   0x10006097
10008cb4:	59                   	pop    ecx
10008cb5:	a3 a0 5b 01 10       	mov    ds:0x10015ba0,eax
10008cba:	c3                   	ret    
10008cbb:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008cbf:	a3 a4 5b 01 10       	mov    ds:0x10015ba4,eax
10008cc4:	a3 a8 5b 01 10       	mov    ds:0x10015ba8,eax
10008cc9:	a3 ac 5b 01 10       	mov    ds:0x10015bac,eax
10008cce:	a3 b0 5b 01 10       	mov    ds:0x10015bb0,eax
10008cd3:	c3                   	ret    
10008cd4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008cd8:	8b 0d 64 04 01 10    	mov    ecx,DWORD PTR ds:0x10010464
10008cde:	56                   	push   esi
10008cdf:	39 50 04             	cmp    DWORD PTR [eax+0x4],edx
10008ce2:	74 10                	je     0x10008cf4
10008ce4:	8b f1                	mov    esi,ecx
10008ce6:	6b f6 0c             	imul   esi,esi,0xc
10008ce9:	03 74 24 08          	add    esi,DWORD PTR [esp+0x8]
10008ced:	83 c0 0c             	add    eax,0xc
10008cf0:	3b c6                	cmp    eax,esi
10008cf2:	72 eb                	jb     0x10008cdf
10008cf4:	6b c9 0c             	imul   ecx,ecx,0xc
10008cf7:	03 4c 24 08          	add    ecx,DWORD PTR [esp+0x8]
10008cfb:	5e                   	pop    esi
10008cfc:	3b c1                	cmp    eax,ecx
10008cfe:	73 05                	jae    0x10008d05
10008d00:	39 50 04             	cmp    DWORD PTR [eax+0x4],edx
10008d03:	74 02                	je     0x10008d07
10008d05:	33 c0                	xor    eax,eax
10008d07:	c3                   	ret    
10008d08:	ff 35 ac 5b 01 10    	push   DWORD PTR ds:0x10015bac
10008d0e:	e8 fb d3 ff ff       	call   0x1000610e
10008d13:	59                   	pop    ecx
10008d14:	c3                   	ret    
10008d15:	6a 20                	push   0x20
10008d17:	68 c8 e5 00 10       	push   0x1000e5c8
10008d1c:	e8 07 cb ff ff       	call   0x10005828
10008d21:	33 ff                	xor    edi,edi
10008d23:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
10008d26:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
10008d29:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10008d2c:	83 fb 0b             	cmp    ebx,0xb
10008d2f:	7f 4c                	jg     0x10008d7d
10008d31:	74 15                	je     0x10008d48
10008d33:	8b c3                	mov    eax,ebx
10008d35:	6a 02                	push   0x2
10008d37:	59                   	pop    ecx
10008d38:	2b c1                	sub    eax,ecx
10008d3a:	74 22                	je     0x10008d5e
10008d3c:	2b c1                	sub    eax,ecx
10008d3e:	74 08                	je     0x10008d48
10008d40:	2b c1                	sub    eax,ecx
10008d42:	74 64                	je     0x10008da8
10008d44:	2b c1                	sub    eax,ecx
10008d46:	75 44                	jne    0x10008d8c
10008d48:	e8 66 d5 ff ff       	call   0x100062b3
10008d4d:	8b f8                	mov    edi,eax
10008d4f:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
10008d52:	85 ff                	test   edi,edi
10008d54:	75 14                	jne    0x10008d6a
10008d56:	83 c8 ff             	or     eax,0xffffffff
10008d59:	e9 61 01 00 00       	jmp    0x10008ebf
10008d5e:	be a4 5b 01 10       	mov    esi,0x10015ba4
10008d63:	a1 a4 5b 01 10       	mov    eax,ds:0x10015ba4
10008d68:	eb 60                	jmp    0x10008dca
10008d6a:	ff 77 5c             	push   DWORD PTR [edi+0x5c]
10008d6d:	8b d3                	mov    edx,ebx
10008d6f:	e8 60 ff ff ff       	call   0x10008cd4
10008d74:	8b f0                	mov    esi,eax
10008d76:	83 c6 08             	add    esi,0x8
10008d79:	8b 06                	mov    eax,DWORD PTR [esi]
10008d7b:	eb 5a                	jmp    0x10008dd7
10008d7d:	8b c3                	mov    eax,ebx
10008d7f:	83 e8 0f             	sub    eax,0xf
10008d82:	74 3c                	je     0x10008dc0
10008d84:	83 e8 06             	sub    eax,0x6
10008d87:	74 2b                	je     0x10008db4
10008d89:	48                   	dec    eax
10008d8a:	74 1c                	je     0x10008da8
10008d8c:	e8 b5 bc ff ff       	call   0x10004a46
10008d91:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
10008d97:	33 c0                	xor    eax,eax
10008d99:	50                   	push   eax
10008d9a:	50                   	push   eax
10008d9b:	50                   	push   eax
10008d9c:	50                   	push   eax
10008d9d:	50                   	push   eax
10008d9e:	e8 d3 ed ff ff       	call   0x10007b76
10008da3:	83 c4 14             	add    esp,0x14
10008da6:	eb ae                	jmp    0x10008d56
10008da8:	be ac 5b 01 10       	mov    esi,0x10015bac
10008dad:	a1 ac 5b 01 10       	mov    eax,ds:0x10015bac
10008db2:	eb 16                	jmp    0x10008dca
10008db4:	be a8 5b 01 10       	mov    esi,0x10015ba8
10008db9:	a1 a8 5b 01 10       	mov    eax,ds:0x10015ba8
10008dbe:	eb 0a                	jmp    0x10008dca
10008dc0:	be b0 5b 01 10       	mov    esi,0x10015bb0
10008dc5:	a1 b0 5b 01 10       	mov    eax,ds:0x10015bb0
10008dca:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
10008dd1:	50                   	push   eax
10008dd2:	e8 37 d3 ff ff       	call   0x1000610e
10008dd7:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
10008dda:	59                   	pop    ecx
10008ddb:	33 c0                	xor    eax,eax
10008ddd:	83 7d e0 01          	cmp    DWORD PTR [ebp-0x20],0x1
10008de1:	0f 84 d8 00 00 00    	je     0x10008ebf
10008de7:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
10008dea:	75 07                	jne    0x10008df3
10008dec:	6a 03                	push   0x3
10008dee:	e8 c3 ce ff ff       	call   0x10005cb6
10008df3:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
10008df6:	74 07                	je     0x10008dff
10008df8:	50                   	push   eax
10008df9:	e8 fa be ff ff       	call   0x10004cf8
10008dfe:	59                   	pop    ecx
10008dff:	33 c0                	xor    eax,eax
10008e01:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10008e04:	83 fb 08             	cmp    ebx,0x8
10008e07:	74 0a                	je     0x10008e13
10008e09:	83 fb 0b             	cmp    ebx,0xb
10008e0c:	74 05                	je     0x10008e13
10008e0e:	83 fb 04             	cmp    ebx,0x4
10008e11:	75 1b                	jne    0x10008e2e
10008e13:	8b 4f 60             	mov    ecx,DWORD PTR [edi+0x60]
10008e16:	89 4d d4             	mov    DWORD PTR [ebp-0x2c],ecx
10008e19:	89 47 60             	mov    DWORD PTR [edi+0x60],eax
10008e1c:	83 fb 08             	cmp    ebx,0x8
10008e1f:	75 40                	jne    0x10008e61
10008e21:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
10008e24:	89 4d d0             	mov    DWORD PTR [ebp-0x30],ecx
10008e27:	c7 47 64 8c 00 00 00 	mov    DWORD PTR [edi+0x64],0x8c
10008e2e:	83 fb 08             	cmp    ebx,0x8
10008e31:	75 2e                	jne    0x10008e61
10008e33:	8b 0d 58 04 01 10    	mov    ecx,DWORD PTR ds:0x10010458
10008e39:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
10008e3c:	8b 0d 5c 04 01 10    	mov    ecx,DWORD PTR ds:0x1001045c
10008e42:	8b 15 58 04 01 10    	mov    edx,DWORD PTR ds:0x10010458
10008e48:	03 ca                	add    ecx,edx
10008e4a:	39 4d dc             	cmp    DWORD PTR [ebp-0x24],ecx
10008e4d:	7d 19                	jge    0x10008e68
10008e4f:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
10008e52:	6b c9 0c             	imul   ecx,ecx,0xc
10008e55:	8b 57 5c             	mov    edx,DWORD PTR [edi+0x5c]
10008e58:	89 44 11 08          	mov    DWORD PTR [ecx+edx*1+0x8],eax
10008e5c:	ff 45 dc             	inc    DWORD PTR [ebp-0x24]
10008e5f:	eb db                	jmp    0x10008e3c
10008e61:	e8 9f d2 ff ff       	call   0x10006105
10008e66:	89 06                	mov    DWORD PTR [esi],eax
10008e68:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008e6f:	e8 15 00 00 00       	call   0x10008e89
10008e74:	83 fb 08             	cmp    ebx,0x8
10008e77:	75 1f                	jne    0x10008e98
10008e79:	ff 77 64             	push   DWORD PTR [edi+0x64]
10008e7c:	53                   	push   ebx
10008e7d:	ff 55 e0             	call   DWORD PTR [ebp-0x20]
10008e80:	59                   	pop    ecx
10008e81:	eb 19                	jmp    0x10008e9c
10008e83:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10008e86:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
10008e89:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
10008e8d:	74 08                	je     0x10008e97
10008e8f:	6a 00                	push   0x0
10008e91:	e8 8a bd ff ff       	call   0x10004c20
10008e96:	59                   	pop    ecx
10008e97:	c3                   	ret    
10008e98:	53                   	push   ebx
10008e99:	ff 55 e0             	call   DWORD PTR [ebp-0x20]
10008e9c:	59                   	pop    ecx
10008e9d:	83 fb 08             	cmp    ebx,0x8
10008ea0:	74 0a                	je     0x10008eac
10008ea2:	83 fb 0b             	cmp    ebx,0xb
10008ea5:	74 05                	je     0x10008eac
10008ea7:	83 fb 04             	cmp    ebx,0x4
10008eaa:	75 11                	jne    0x10008ebd
10008eac:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
10008eaf:	89 47 60             	mov    DWORD PTR [edi+0x60],eax
10008eb2:	83 fb 08             	cmp    ebx,0x8
10008eb5:	75 06                	jne    0x10008ebd
10008eb7:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
10008eba:	89 47 64             	mov    DWORD PTR [edi+0x64],eax
10008ebd:	33 c0                	xor    eax,eax
10008ebf:	e8 a9 c9 ff ff       	call   0x1000586d
10008ec4:	c3                   	ret    
10008ec5:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008ec9:	a3 b8 5b 01 10       	mov    ds:0x10015bb8,eax
10008ece:	c3                   	ret    
10008ecf:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008ed3:	a3 c4 5b 01 10       	mov    ds:0x10015bc4,eax
10008ed8:	c3                   	ret    
10008ed9:	55                   	push   ebp
10008eda:	8b ec                	mov    ebp,esp
10008edc:	83 ec 20             	sub    esp,0x20
10008edf:	53                   	push   ebx
10008ee0:	56                   	push   esi
10008ee1:	57                   	push   edi
10008ee2:	e8 1e d2 ff ff       	call   0x10006105
10008ee7:	33 db                	xor    ebx,ebx
10008ee9:	39 1d c8 5b 01 10    	cmp    DWORD PTR ds:0x10015bc8,ebx
10008eef:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10008ef2:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10008ef5:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10008ef8:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
10008efb:	0f 85 ae 00 00 00    	jne    0x10008faf
10008f01:	68 a4 d9 00 10       	push   0x1000d9a4
10008f06:	ff 15 f4 d0 00 10    	call   DWORD PTR ds:0x1000d0f4
10008f0c:	8b f8                	mov    edi,eax
10008f0e:	3b fb                	cmp    edi,ebx
10008f10:	0f 84 79 01 00 00    	je     0x1000908f
10008f16:	8b 35 4c d0 00 10    	mov    esi,DWORD PTR ds:0x1000d04c
10008f1c:	68 98 d9 00 10       	push   0x1000d998
10008f21:	57                   	push   edi
10008f22:	ff d6                	call   esi
10008f24:	3b c3                	cmp    eax,ebx
10008f26:	0f 84 63 01 00 00    	je     0x1000908f
10008f2c:	50                   	push   eax
10008f2d:	e8 65 d1 ff ff       	call   0x10006097
10008f32:	c7 04 24 88 d9 00 10 	mov    DWORD PTR [esp],0x1000d988
10008f39:	57                   	push   edi
10008f3a:	a3 c8 5b 01 10       	mov    ds:0x10015bc8,eax
10008f3f:	ff d6                	call   esi
10008f41:	50                   	push   eax
10008f42:	e8 50 d1 ff ff       	call   0x10006097
10008f47:	c7 04 24 74 d9 00 10 	mov    DWORD PTR [esp],0x1000d974
10008f4e:	57                   	push   edi
10008f4f:	a3 cc 5b 01 10       	mov    ds:0x10015bcc,eax
10008f54:	ff d6                	call   esi
10008f56:	50                   	push   eax
10008f57:	e8 3b d1 ff ff       	call   0x10006097
10008f5c:	a3 d0 5b 01 10       	mov    ds:0x10015bd0,eax
10008f61:	8d 45 f4             	lea    eax,[ebp-0xc]
10008f64:	50                   	push   eax
10008f65:	e8 65 cb ff ff       	call   0x10005acf
10008f6a:	85 c0                	test   eax,eax
10008f6c:	59                   	pop    ecx
10008f6d:	59                   	pop    ecx
10008f6e:	74 0d                	je     0x10008f7d
10008f70:	53                   	push   ebx
10008f71:	53                   	push   ebx
10008f72:	53                   	push   ebx
10008f73:	53                   	push   ebx
10008f74:	53                   	push   ebx
10008f75:	e8 00 eb ff ff       	call   0x10007a7a
10008f7a:	83 c4 14             	add    esp,0x14
10008f7d:	83 7d f4 02          	cmp    DWORD PTR [ebp-0xc],0x2
10008f81:	75 2c                	jne    0x10008faf
10008f83:	68 58 d9 00 10       	push   0x1000d958
10008f88:	57                   	push   edi
10008f89:	ff d6                	call   esi
10008f8b:	50                   	push   eax
10008f8c:	e8 06 d1 ff ff       	call   0x10006097
10008f91:	3b c3                	cmp    eax,ebx
10008f93:	59                   	pop    ecx
10008f94:	a3 d8 5b 01 10       	mov    ds:0x10015bd8,eax
10008f99:	74 14                	je     0x10008faf
10008f9b:	68 40 d9 00 10       	push   0x1000d940
10008fa0:	57                   	push   edi
10008fa1:	ff d6                	call   esi
10008fa3:	50                   	push   eax
10008fa4:	e8 ee d0 ff ff       	call   0x10006097
10008fa9:	59                   	pop    ecx
10008faa:	a3 d4 5b 01 10       	mov    ds:0x10015bd4,eax
10008faf:	a1 d4 5b 01 10       	mov    eax,ds:0x10015bd4
10008fb4:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10008fb7:	3b c1                	cmp    eax,ecx
10008fb9:	74 79                	je     0x10009034
10008fbb:	39 0d d8 5b 01 10    	cmp    DWORD PTR ds:0x10015bd8,ecx
10008fc1:	74 71                	je     0x10009034
10008fc3:	50                   	push   eax
10008fc4:	e8 45 d1 ff ff       	call   0x1000610e
10008fc9:	ff 35 d8 5b 01 10    	push   DWORD PTR ds:0x10015bd8
10008fcf:	8b f0                	mov    esi,eax
10008fd1:	e8 38 d1 ff ff       	call   0x1000610e
10008fd6:	3b f3                	cmp    esi,ebx
10008fd8:	59                   	pop    ecx
10008fd9:	59                   	pop    ecx
10008fda:	8b f8                	mov    edi,eax
10008fdc:	74 56                	je     0x10009034
10008fde:	3b fb                	cmp    edi,ebx
10008fe0:	74 52                	je     0x10009034
10008fe2:	ff d6                	call   esi
10008fe4:	3b c3                	cmp    eax,ebx
10008fe6:	74 19                	je     0x10009001
10008fe8:	8d 4d ec             	lea    ecx,[ebp-0x14]
10008feb:	51                   	push   ecx
10008fec:	6a 0c                	push   0xc
10008fee:	8d 4d e0             	lea    ecx,[ebp-0x20]
10008ff1:	51                   	push   ecx
10008ff2:	6a 01                	push   0x1
10008ff4:	50                   	push   eax
10008ff5:	ff d7                	call   edi
10008ff7:	85 c0                	test   eax,eax
10008ff9:	74 06                	je     0x10009001
10008ffb:	f6 45 e8 01          	test   BYTE PTR [ebp-0x18],0x1
10008fff:	75 33                	jne    0x10009034
10009001:	8d 45 f0             	lea    eax,[ebp-0x10]
10009004:	50                   	push   eax
10009005:	e8 fc ca ff ff       	call   0x10005b06
1000900a:	85 c0                	test   eax,eax
1000900c:	59                   	pop    ecx
1000900d:	74 0d                	je     0x1000901c
1000900f:	53                   	push   ebx
10009010:	53                   	push   ebx
10009011:	53                   	push   ebx
10009012:	53                   	push   ebx
10009013:	53                   	push   ebx
10009014:	e8 61 ea ff ff       	call   0x10007a7a
10009019:	83 c4 14             	add    esp,0x14
1000901c:	83 7d f0 04          	cmp    DWORD PTR [ebp-0x10],0x4
10009020:	72 09                	jb     0x1000902b
10009022:	81 4d 10 00 00 20 00 	or     DWORD PTR [ebp+0x10],0x200000
10009029:	eb 44                	jmp    0x1000906f
1000902b:	81 4d 10 00 00 04 00 	or     DWORD PTR [ebp+0x10],0x40000
10009032:	eb 3b                	jmp    0x1000906f
10009034:	a1 cc 5b 01 10       	mov    eax,ds:0x10015bcc
10009039:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
1000903c:	74 31                	je     0x1000906f
1000903e:	50                   	push   eax
1000903f:	e8 ca d0 ff ff       	call   0x1000610e
10009044:	3b c3                	cmp    eax,ebx
10009046:	59                   	pop    ecx
10009047:	74 26                	je     0x1000906f
10009049:	ff d0                	call   eax
1000904b:	3b c3                	cmp    eax,ebx
1000904d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10009050:	74 1d                	je     0x1000906f
10009052:	a1 d0 5b 01 10       	mov    eax,ds:0x10015bd0
10009057:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
1000905a:	74 13                	je     0x1000906f
1000905c:	50                   	push   eax
1000905d:	e8 ac d0 ff ff       	call   0x1000610e
10009062:	3b c3                	cmp    eax,ebx
10009064:	59                   	pop    ecx
10009065:	74 08                	je     0x1000906f
10009067:	ff 75 fc             	push   DWORD PTR [ebp-0x4]
1000906a:	ff d0                	call   eax
1000906c:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000906f:	ff 35 c8 5b 01 10    	push   DWORD PTR ds:0x10015bc8
10009075:	e8 94 d0 ff ff       	call   0x1000610e
1000907a:	3b c3                	cmp    eax,ebx
1000907c:	59                   	pop    ecx
1000907d:	74 10                	je     0x1000908f
1000907f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009082:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009085:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009088:	ff 75 fc             	push   DWORD PTR [ebp-0x4]
1000908b:	ff d0                	call   eax
1000908d:	eb 02                	jmp    0x10009091
1000908f:	33 c0                	xor    eax,eax
10009091:	5f                   	pop    edi
10009092:	5e                   	pop    esi
10009093:	5b                   	pop    ebx
10009094:	c9                   	leave  
10009095:	c3                   	ret    
10009096:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
1000909a:	53                   	push   ebx
1000909b:	33 db                	xor    ebx,ebx
1000909d:	3b c3                	cmp    eax,ebx
1000909f:	56                   	push   esi
100090a0:	57                   	push   edi
100090a1:	74 08                	je     0x100090ab
100090a3:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
100090a7:	3b fb                	cmp    edi,ebx
100090a9:	77 1b                	ja     0x100090c6
100090ab:	e8 96 b9 ff ff       	call   0x10004a46
100090b0:	6a 16                	push   0x16
100090b2:	5e                   	pop    esi
100090b3:	89 30                	mov    DWORD PTR [eax],esi
100090b5:	53                   	push   ebx
100090b6:	53                   	push   ebx
100090b7:	53                   	push   ebx
100090b8:	53                   	push   ebx
100090b9:	53                   	push   ebx
100090ba:	e8 b7 ea ff ff       	call   0x10007b76
100090bf:	83 c4 14             	add    esp,0x14
100090c2:	8b c6                	mov    eax,esi
100090c4:	eb 3d                	jmp    0x10009103
100090c6:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
100090ca:	3b f3                	cmp    esi,ebx
100090cc:	75 04                	jne    0x100090d2
100090ce:	88 18                	mov    BYTE PTR [eax],bl
100090d0:	eb d9                	jmp    0x100090ab
100090d2:	8b d0                	mov    edx,eax
100090d4:	38 1a                	cmp    BYTE PTR [edx],bl
100090d6:	74 04                	je     0x100090dc
100090d8:	42                   	inc    edx
100090d9:	4f                   	dec    edi
100090da:	75 f8                	jne    0x100090d4
100090dc:	3b fb                	cmp    edi,ebx
100090de:	74 ee                	je     0x100090ce
100090e0:	8a 0e                	mov    cl,BYTE PTR [esi]
100090e2:	88 0a                	mov    BYTE PTR [edx],cl
100090e4:	42                   	inc    edx
100090e5:	46                   	inc    esi
100090e6:	3a cb                	cmp    cl,bl
100090e8:	74 03                	je     0x100090ed
100090ea:	4f                   	dec    edi
100090eb:	75 f3                	jne    0x100090e0
100090ed:	3b fb                	cmp    edi,ebx
100090ef:	75 10                	jne    0x10009101
100090f1:	88 18                	mov    BYTE PTR [eax],bl
100090f3:	e8 4e b9 ff ff       	call   0x10004a46
100090f8:	6a 22                	push   0x22
100090fa:	59                   	pop    ecx
100090fb:	89 08                	mov    DWORD PTR [eax],ecx
100090fd:	8b f1                	mov    esi,ecx
100090ff:	eb b4                	jmp    0x100090b5
10009101:	33 c0                	xor    eax,eax
10009103:	5f                   	pop    edi
10009104:	5e                   	pop    esi
10009105:	5b                   	pop    ebx
10009106:	c3                   	ret    
10009107:	55                   	push   ebp
10009108:	8b ec                	mov    ebp,esp
1000910a:	53                   	push   ebx
1000910b:	56                   	push   esi
1000910c:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000910f:	33 db                	xor    ebx,ebx
10009111:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
10009114:	57                   	push   edi
10009115:	75 10                	jne    0x10009127
10009117:	3b f3                	cmp    esi,ebx
10009119:	75 10                	jne    0x1000912b
1000911b:	39 5d 0c             	cmp    DWORD PTR [ebp+0xc],ebx
1000911e:	75 12                	jne    0x10009132
10009120:	33 c0                	xor    eax,eax
10009122:	5f                   	pop    edi
10009123:	5e                   	pop    esi
10009124:	5b                   	pop    ebx
10009125:	5d                   	pop    ebp
10009126:	c3                   	ret    
10009127:	3b f3                	cmp    esi,ebx
10009129:	74 07                	je     0x10009132
1000912b:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000912e:	3b fb                	cmp    edi,ebx
10009130:	77 1b                	ja     0x1000914d
10009132:	e8 0f b9 ff ff       	call   0x10004a46
10009137:	6a 16                	push   0x16
10009139:	5e                   	pop    esi
1000913a:	89 30                	mov    DWORD PTR [eax],esi
1000913c:	53                   	push   ebx
1000913d:	53                   	push   ebx
1000913e:	53                   	push   ebx
1000913f:	53                   	push   ebx
10009140:	53                   	push   ebx
10009141:	e8 30 ea ff ff       	call   0x10007b76
10009146:	83 c4 14             	add    esp,0x14
10009149:	8b c6                	mov    eax,esi
1000914b:	eb d5                	jmp    0x10009122
1000914d:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
10009150:	75 04                	jne    0x10009156
10009152:	88 1e                	mov    BYTE PTR [esi],bl
10009154:	eb ca                	jmp    0x10009120
10009156:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
10009159:	3b d3                	cmp    edx,ebx
1000915b:	75 04                	jne    0x10009161
1000915d:	88 1e                	mov    BYTE PTR [esi],bl
1000915f:	eb d1                	jmp    0x10009132
10009161:	83 7d 14 ff          	cmp    DWORD PTR [ebp+0x14],0xffffffff
10009165:	8b c6                	mov    eax,esi
10009167:	75 0f                	jne    0x10009178
10009169:	8a 0a                	mov    cl,BYTE PTR [edx]
1000916b:	88 08                	mov    BYTE PTR [eax],cl
1000916d:	40                   	inc    eax
1000916e:	42                   	inc    edx
1000916f:	3a cb                	cmp    cl,bl
10009171:	74 1e                	je     0x10009191
10009173:	4f                   	dec    edi
10009174:	75 f3                	jne    0x10009169
10009176:	eb 19                	jmp    0x10009191
10009178:	8a 0a                	mov    cl,BYTE PTR [edx]
1000917a:	88 08                	mov    BYTE PTR [eax],cl
1000917c:	40                   	inc    eax
1000917d:	42                   	inc    edx
1000917e:	3a cb                	cmp    cl,bl
10009180:	74 08                	je     0x1000918a
10009182:	4f                   	dec    edi
10009183:	74 05                	je     0x1000918a
10009185:	ff 4d 14             	dec    DWORD PTR [ebp+0x14]
10009188:	75 ee                	jne    0x10009178
1000918a:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
1000918d:	75 02                	jne    0x10009191
1000918f:	88 18                	mov    BYTE PTR [eax],bl
10009191:	3b fb                	cmp    edi,ebx
10009193:	75 8b                	jne    0x10009120
10009195:	83 7d 14 ff          	cmp    DWORD PTR [ebp+0x14],0xffffffff
10009199:	75 0f                	jne    0x100091aa
1000919b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
1000919e:	6a 50                	push   0x50
100091a0:	88 5c 06 ff          	mov    BYTE PTR [esi+eax*1-0x1],bl
100091a4:	58                   	pop    eax
100091a5:	e9 78 ff ff ff       	jmp    0x10009122
100091aa:	88 1e                	mov    BYTE PTR [esi],bl
100091ac:	e8 95 b8 ff ff       	call   0x10004a46
100091b1:	6a 22                	push   0x22
100091b3:	59                   	pop    ecx
100091b4:	89 08                	mov    DWORD PTR [eax],ecx
100091b6:	8b f1                	mov    esi,ecx
100091b8:	eb 82                	jmp    0x1000913c
100091ba:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
100091be:	56                   	push   esi
100091bf:	33 f6                	xor    esi,esi
100091c1:	3b ce                	cmp    ecx,esi
100091c3:	7c 1e                	jl     0x100091e3
100091c5:	83 f9 02             	cmp    ecx,0x2
100091c8:	7e 0c                	jle    0x100091d6
100091ca:	83 f9 03             	cmp    ecx,0x3
100091cd:	75 14                	jne    0x100091e3
100091cf:	a1 44 52 01 10       	mov    eax,ds:0x10015244
100091d4:	5e                   	pop    esi
100091d5:	c3                   	ret    
100091d6:	a1 44 52 01 10       	mov    eax,ds:0x10015244
100091db:	89 0d 44 52 01 10    	mov    DWORD PTR ds:0x10015244,ecx
100091e1:	5e                   	pop    esi
100091e2:	c3                   	ret    
100091e3:	e8 5e b8 ff ff       	call   0x10004a46
100091e8:	56                   	push   esi
100091e9:	56                   	push   esi
100091ea:	56                   	push   esi
100091eb:	56                   	push   esi
100091ec:	56                   	push   esi
100091ed:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
100091f3:	e8 7e e9 ff ff       	call   0x10007b76
100091f8:	83 c4 14             	add    esp,0x14
100091fb:	83 c8 ff             	or     eax,0xffffffff
100091fe:	5e                   	pop    esi
100091ff:	c3                   	ret    
10009200:	83 25 a0 5c 01 10 00 	and    DWORD PTR ds:0x10015ca0,0x0
10009207:	c3                   	ret    
10009208:	cc                   	int3   
10009209:	cc                   	int3   
1000920a:	cc                   	int3   
1000920b:	cc                   	int3   
1000920c:	cc                   	int3   
1000920d:	cc                   	int3   
1000920e:	cc                   	int3   
1000920f:	cc                   	int3   
10009210:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10009214:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
10009218:	f7 c2 03 00 00 00    	test   edx,0x3
1000921e:	75 3c                	jne    0x1000925c
10009220:	8b 02                	mov    eax,DWORD PTR [edx]
10009222:	3a 01                	cmp    al,BYTE PTR [ecx]
10009224:	75 2e                	jne    0x10009254
10009226:	0a c0                	or     al,al
10009228:	74 26                	je     0x10009250
1000922a:	3a 61 01             	cmp    ah,BYTE PTR [ecx+0x1]
1000922d:	75 25                	jne    0x10009254
1000922f:	0a e4                	or     ah,ah
10009231:	74 1d                	je     0x10009250
10009233:	c1 e8 10             	shr    eax,0x10
10009236:	3a 41 02             	cmp    al,BYTE PTR [ecx+0x2]
10009239:	75 19                	jne    0x10009254
1000923b:	0a c0                	or     al,al
1000923d:	74 11                	je     0x10009250
1000923f:	3a 61 03             	cmp    ah,BYTE PTR [ecx+0x3]
10009242:	75 10                	jne    0x10009254
10009244:	83 c1 04             	add    ecx,0x4
10009247:	83 c2 04             	add    edx,0x4
1000924a:	0a e4                	or     ah,ah
1000924c:	75 d2                	jne    0x10009220
1000924e:	8b ff                	mov    edi,edi
10009250:	33 c0                	xor    eax,eax
10009252:	c3                   	ret    
10009253:	90                   	nop
10009254:	1b c0                	sbb    eax,eax
10009256:	d1 e0                	shl    eax,1
10009258:	83 c0 01             	add    eax,0x1
1000925b:	c3                   	ret    
1000925c:	f7 c2 01 00 00 00    	test   edx,0x1
10009262:	74 18                	je     0x1000927c
10009264:	8a 02                	mov    al,BYTE PTR [edx]
10009266:	83 c2 01             	add    edx,0x1
10009269:	3a 01                	cmp    al,BYTE PTR [ecx]
1000926b:	75 e7                	jne    0x10009254
1000926d:	83 c1 01             	add    ecx,0x1
10009270:	0a c0                	or     al,al
10009272:	74 dc                	je     0x10009250
10009274:	f7 c2 02 00 00 00    	test   edx,0x2
1000927a:	74 a4                	je     0x10009220
1000927c:	66 8b 02             	mov    ax,WORD PTR [edx]
1000927f:	83 c2 02             	add    edx,0x2
10009282:	3a 01                	cmp    al,BYTE PTR [ecx]
10009284:	75 ce                	jne    0x10009254
10009286:	0a c0                	or     al,al
10009288:	74 c6                	je     0x10009250
1000928a:	3a 61 01             	cmp    ah,BYTE PTR [ecx+0x1]
1000928d:	75 c5                	jne    0x10009254
1000928f:	0a e4                	or     ah,ah
10009291:	74 bd                	je     0x10009250
10009293:	83 c1 02             	add    ecx,0x2
10009296:	eb 88                	jmp    0x10009220
10009298:	6a 0c                	push   0xc
1000929a:	68 e8 e5 00 10       	push   0x1000e5e8
1000929f:	e8 84 c5 ff ff       	call   0x10005828
100092a4:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
100092a7:	33 ff                	xor    edi,edi
100092a9:	3b cf                	cmp    ecx,edi
100092ab:	76 2e                	jbe    0x100092db
100092ad:	6a e0                	push   0xffffffe0
100092af:	58                   	pop    eax
100092b0:	33 d2                	xor    edx,edx
100092b2:	f7 f1                	div    ecx
100092b4:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
100092b7:	1b c0                	sbb    eax,eax
100092b9:	40                   	inc    eax
100092ba:	75 1f                	jne    0x100092db
100092bc:	e8 85 b7 ff ff       	call   0x10004a46
100092c1:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
100092c7:	57                   	push   edi
100092c8:	57                   	push   edi
100092c9:	57                   	push   edi
100092ca:	57                   	push   edi
100092cb:	57                   	push   edi
100092cc:	e8 a5 e8 ff ff       	call   0x10007b76
100092d1:	83 c4 14             	add    esp,0x14
100092d4:	33 c0                	xor    eax,eax
100092d6:	e9 d5 00 00 00       	jmp    0x100093b0
100092db:	0f af 4d 0c          	imul   ecx,DWORD PTR [ebp+0xc]
100092df:	8b f1                	mov    esi,ecx
100092e1:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
100092e4:	3b f7                	cmp    esi,edi
100092e6:	75 03                	jne    0x100092eb
100092e8:	33 f6                	xor    esi,esi
100092ea:	46                   	inc    esi
100092eb:	33 db                	xor    ebx,ebx
100092ed:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
100092f0:	83 fe e0             	cmp    esi,0xffffffe0
100092f3:	77 69                	ja     0x1000935e
100092f5:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
100092fc:	75 4b                	jne    0x10009349
100092fe:	83 c6 0f             	add    esi,0xf
10009301:	83 e6 f0             	and    esi,0xfffffff0
10009304:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
10009307:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000930a:	3b 05 e0 5d 01 10    	cmp    eax,DWORD PTR ds:0x10015de0
10009310:	77 37                	ja     0x10009349
10009312:	6a 04                	push   0x4
10009314:	e8 df b9 ff ff       	call   0x10004cf8
10009319:	59                   	pop    ecx
1000931a:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000931d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009320:	e8 20 c2 ff ff       	call   0x10005545
10009325:	59                   	pop    ecx
10009326:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10009329:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10009330:	e8 5f 00 00 00       	call   0x10009394
10009335:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
10009338:	3b df                	cmp    ebx,edi
1000933a:	74 11                	je     0x1000934d
1000933c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000933f:	57                   	push   edi
10009340:	53                   	push   ebx
10009341:	e8 aa f2 ff ff       	call   0x100085f0
10009346:	83 c4 0c             	add    esp,0xc
10009349:	3b df                	cmp    ebx,edi
1000934b:	75 61                	jne    0x100093ae
1000934d:	56                   	push   esi
1000934e:	6a 08                	push   0x8
10009350:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10009356:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
1000935c:	8b d8                	mov    ebx,eax
1000935e:	3b df                	cmp    ebx,edi
10009360:	75 4c                	jne    0x100093ae
10009362:	39 3d 08 57 01 10    	cmp    DWORD PTR ds:0x10015708,edi
10009368:	74 33                	je     0x1000939d
1000936a:	56                   	push   esi
1000936b:	e8 95 cb ff ff       	call   0x10005f05
10009370:	59                   	pop    ecx
10009371:	85 c0                	test   eax,eax
10009373:	0f 85 72 ff ff ff    	jne    0x100092eb
10009379:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000937c:	3b c7                	cmp    eax,edi
1000937e:	0f 84 50 ff ff ff    	je     0x100092d4
10009384:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
1000938a:	e9 45 ff ff ff       	jmp    0x100092d4
1000938f:	33 ff                	xor    edi,edi
10009391:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10009394:	6a 04                	push   0x4
10009396:	e8 85 b8 ff ff       	call   0x10004c20
1000939b:	59                   	pop    ecx
1000939c:	c3                   	ret    
1000939d:	3b df                	cmp    ebx,edi
1000939f:	75 0d                	jne    0x100093ae
100093a1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
100093a4:	3b c7                	cmp    eax,edi
100093a6:	74 06                	je     0x100093ae
100093a8:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
100093ae:	8b c3                	mov    eax,ebx
100093b0:	e8 b8 c4 ff ff       	call   0x1000586d
100093b5:	c3                   	ret    
100093b6:	6a 10                	push   0x10
100093b8:	68 08 e6 00 10       	push   0x1000e608
100093bd:	e8 66 c4 ff ff       	call   0x10005828
100093c2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
100093c5:	85 db                	test   ebx,ebx
100093c7:	75 0e                	jne    0x100093d7
100093c9:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100093cc:	e8 87 a6 ff ff       	call   0x10003a58
100093d1:	59                   	pop    ecx
100093d2:	e9 cc 01 00 00       	jmp    0x100095a3
100093d7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100093da:	85 f6                	test   esi,esi
100093dc:	75 0c                	jne    0x100093ea
100093de:	53                   	push   ebx
100093df:	e8 97 a5 ff ff       	call   0x1000397b
100093e4:	59                   	pop    ecx
100093e5:	e9 b7 01 00 00       	jmp    0x100095a1
100093ea:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
100093f1:	0f 85 93 01 00 00    	jne    0x1000958a
100093f7:	33 ff                	xor    edi,edi
100093f9:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
100093fc:	83 fe e0             	cmp    esi,0xffffffe0
100093ff:	0f 87 8a 01 00 00    	ja     0x1000958f
10009405:	6a 04                	push   0x4
10009407:	e8 ec b8 ff ff       	call   0x10004cf8
1000940c:	59                   	pop    ecx
1000940d:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10009410:	53                   	push   ebx
10009411:	e8 5b b9 ff ff       	call   0x10004d71
10009416:	59                   	pop    ecx
10009417:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000941a:	3b c7                	cmp    eax,edi
1000941c:	0f 84 9e 00 00 00    	je     0x100094c0
10009422:	3b 35 e0 5d 01 10    	cmp    esi,DWORD PTR ds:0x10015de0
10009428:	77 49                	ja     0x10009473
1000942a:	56                   	push   esi
1000942b:	53                   	push   ebx
1000942c:	50                   	push   eax
1000942d:	e8 34 be ff ff       	call   0x10005266
10009432:	83 c4 0c             	add    esp,0xc
10009435:	85 c0                	test   eax,eax
10009437:	74 05                	je     0x1000943e
10009439:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
1000943c:	eb 35                	jmp    0x10009473
1000943e:	56                   	push   esi
1000943f:	e8 01 c1 ff ff       	call   0x10005545
10009444:	59                   	pop    ecx
10009445:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10009448:	3b c7                	cmp    eax,edi
1000944a:	74 27                	je     0x10009473
1000944c:	8b 43 fc             	mov    eax,DWORD PTR [ebx-0x4]
1000944f:	48                   	dec    eax
10009450:	3b c6                	cmp    eax,esi
10009452:	72 02                	jb     0x10009456
10009454:	8b c6                	mov    eax,esi
10009456:	50                   	push   eax
10009457:	53                   	push   ebx
10009458:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000945b:	e8 e0 01 00 00       	call   0x10009640
10009460:	53                   	push   ebx
10009461:	e8 0b b9 ff ff       	call   0x10004d71
10009466:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
10009469:	53                   	push   ebx
1000946a:	50                   	push   eax
1000946b:	e8 2c b9 ff ff       	call   0x10004d9c
10009470:	83 c4 18             	add    esp,0x18
10009473:	39 7d e4             	cmp    DWORD PTR [ebp-0x1c],edi
10009476:	75 48                	jne    0x100094c0
10009478:	3b f7                	cmp    esi,edi
1000947a:	75 06                	jne    0x10009482
1000947c:	33 f6                	xor    esi,esi
1000947e:	46                   	inc    esi
1000947f:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
10009482:	83 c6 0f             	add    esi,0xf
10009485:	83 e6 f0             	and    esi,0xfffffff0
10009488:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
1000948b:	56                   	push   esi
1000948c:	57                   	push   edi
1000948d:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10009493:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10009499:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000949c:	3b c7                	cmp    eax,edi
1000949e:	74 20                	je     0x100094c0
100094a0:	8b 43 fc             	mov    eax,DWORD PTR [ebx-0x4]
100094a3:	48                   	dec    eax
100094a4:	3b c6                	cmp    eax,esi
100094a6:	72 02                	jb     0x100094aa
100094a8:	8b c6                	mov    eax,esi
100094aa:	50                   	push   eax
100094ab:	53                   	push   ebx
100094ac:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
100094af:	e8 8c 01 00 00       	call   0x10009640
100094b4:	53                   	push   ebx
100094b5:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
100094b8:	e8 df b8 ff ff       	call   0x10004d9c
100094bd:	83 c4 14             	add    esp,0x14
100094c0:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
100094c7:	e8 2e 00 00 00       	call   0x100094fa
100094cc:	83 7d e0 00          	cmp    DWORD PTR [ebp-0x20],0x0
100094d0:	75 31                	jne    0x10009503
100094d2:	85 f6                	test   esi,esi
100094d4:	75 01                	jne    0x100094d7
100094d6:	46                   	inc    esi
100094d7:	83 c6 0f             	add    esi,0xf
100094da:	83 e6 f0             	and    esi,0xfffffff0
100094dd:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
100094e0:	56                   	push   esi
100094e1:	53                   	push   ebx
100094e2:	6a 00                	push   0x0
100094e4:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
100094ea:	ff 15 68 d0 00 10    	call   DWORD PTR ds:0x1000d068
100094f0:	8b f8                	mov    edi,eax
100094f2:	eb 12                	jmp    0x10009506
100094f4:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100094f7:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
100094fa:	6a 04                	push   0x4
100094fc:	e8 1f b7 ff ff       	call   0x10004c20
10009501:	59                   	pop    ecx
10009502:	c3                   	ret    
10009503:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
10009506:	85 ff                	test   edi,edi
10009508:	0f 85 bf 00 00 00    	jne    0x100095cd
1000950e:	39 3d 08 57 01 10    	cmp    DWORD PTR ds:0x10015708,edi
10009514:	74 2c                	je     0x10009542
10009516:	56                   	push   esi
10009517:	e8 e9 c9 ff ff       	call   0x10005f05
1000951c:	59                   	pop    ecx
1000951d:	85 c0                	test   eax,eax
1000951f:	0f 85 d2 fe ff ff    	jne    0x100093f7
10009525:	e8 1c b5 ff ff       	call   0x10004a46
1000952a:	39 7d e0             	cmp    DWORD PTR [ebp-0x20],edi
1000952d:	75 6c                	jne    0x1000959b
1000952f:	8b f0                	mov    esi,eax
10009531:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10009537:	50                   	push   eax
10009538:	e8 ce b4 ff ff       	call   0x10004a0b
1000953d:	59                   	pop    ecx
1000953e:	89 06                	mov    DWORD PTR [esi],eax
10009540:	eb 5f                	jmp    0x100095a1
10009542:	85 ff                	test   edi,edi
10009544:	0f 85 83 00 00 00    	jne    0x100095cd
1000954a:	e8 f7 b4 ff ff       	call   0x10004a46
1000954f:	39 7d e0             	cmp    DWORD PTR [ebp-0x20],edi
10009552:	74 68                	je     0x100095bc
10009554:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
1000955a:	eb 71                	jmp    0x100095cd
1000955c:	85 f6                	test   esi,esi
1000955e:	75 01                	jne    0x10009561
10009560:	46                   	inc    esi
10009561:	56                   	push   esi
10009562:	53                   	push   ebx
10009563:	6a 00                	push   0x0
10009565:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
1000956b:	ff 15 68 d0 00 10    	call   DWORD PTR ds:0x1000d068
10009571:	8b f8                	mov    edi,eax
10009573:	85 ff                	test   edi,edi
10009575:	75 56                	jne    0x100095cd
10009577:	39 05 08 57 01 10    	cmp    DWORD PTR ds:0x10015708,eax
1000957d:	74 34                	je     0x100095b3
1000957f:	56                   	push   esi
10009580:	e8 80 c9 ff ff       	call   0x10005f05
10009585:	59                   	pop    ecx
10009586:	85 c0                	test   eax,eax
10009588:	74 1f                	je     0x100095a9
1000958a:	83 fe e0             	cmp    esi,0xffffffe0
1000958d:	76 cd                	jbe    0x1000955c
1000958f:	56                   	push   esi
10009590:	e8 70 c9 ff ff       	call   0x10005f05
10009595:	59                   	pop    ecx
10009596:	e8 ab b4 ff ff       	call   0x10004a46
1000959b:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
100095a1:	33 c0                	xor    eax,eax
100095a3:	e8 c5 c2 ff ff       	call   0x1000586d
100095a8:	c3                   	ret    
100095a9:	e8 98 b4 ff ff       	call   0x10004a46
100095ae:	e9 7c ff ff ff       	jmp    0x1000952f
100095b3:	85 ff                	test   edi,edi
100095b5:	75 16                	jne    0x100095cd
100095b7:	e8 8a b4 ff ff       	call   0x10004a46
100095bc:	8b f0                	mov    esi,eax
100095be:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100095c4:	50                   	push   eax
100095c5:	e8 41 b4 ff ff       	call   0x10004a0b
100095ca:	89 06                	mov    DWORD PTR [esi],eax
100095cc:	59                   	pop    ecx
100095cd:	8b c7                	mov    eax,edi
100095cf:	eb d2                	jmp    0x100095a3
100095d1:	55                   	push   ebp
100095d2:	8b ec                	mov    ebp,esp
100095d4:	83 ec 10             	sub    esp,0x10
100095d7:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100095da:	8d 4d f0             	lea    ecx,[ebp-0x10]
100095dd:	e8 38 a8 ff ff       	call   0x10003e1a
100095e2:	0f b6 45 0c          	movzx  eax,BYTE PTR [ebp+0xc]
100095e6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
100095e9:	8a 55 14             	mov    dl,BYTE PTR [ebp+0x14]
100095ec:	84 54 01 1d          	test   BYTE PTR [ecx+eax*1+0x1d],dl
100095f0:	75 1e                	jne    0x10009610
100095f2:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
100095f6:	74 12                	je     0x1000960a
100095f8:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
100095fb:	8b 89 c8 00 00 00    	mov    ecx,DWORD PTR [ecx+0xc8]
10009601:	0f b7 04 41          	movzx  eax,WORD PTR [ecx+eax*2]
10009605:	23 45 10             	and    eax,DWORD PTR [ebp+0x10]
10009608:	eb 02                	jmp    0x1000960c
1000960a:	33 c0                	xor    eax,eax
1000960c:	85 c0                	test   eax,eax
1000960e:	74 03                	je     0x10009613
10009610:	33 c0                	xor    eax,eax
10009612:	40                   	inc    eax
10009613:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10009617:	74 07                	je     0x10009620
10009619:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000961c:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10009620:	c9                   	leave  
10009621:	c3                   	ret    
10009622:	6a 04                	push   0x4
10009624:	6a 00                	push   0x0
10009626:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
1000962a:	6a 00                	push   0x0
1000962c:	e8 a0 ff ff ff       	call   0x100095d1
10009631:	83 c4 10             	add    esp,0x10
10009634:	c3                   	ret    
10009635:	cc                   	int3   
10009636:	cc                   	int3   
10009637:	cc                   	int3   
10009638:	cc                   	int3   
10009639:	cc                   	int3   
1000963a:	cc                   	int3   
1000963b:	cc                   	int3   
1000963c:	cc                   	int3   
1000963d:	cc                   	int3   
1000963e:	cc                   	int3   
1000963f:	cc                   	int3   
10009640:	55                   	push   ebp
10009641:	8b ec                	mov    ebp,esp
10009643:	57                   	push   edi
10009644:	56                   	push   esi
10009645:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10009648:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000964b:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000964e:	8b c1                	mov    eax,ecx
10009650:	8b d1                	mov    edx,ecx
10009652:	03 c6                	add    eax,esi
10009654:	3b fe                	cmp    edi,esi
10009656:	76 08                	jbe    0x10009660
10009658:	3b f8                	cmp    edi,eax
1000965a:	0f 82 a4 01 00 00    	jb     0x10009804
10009660:	81 f9 00 01 00 00    	cmp    ecx,0x100
10009666:	72 1f                	jb     0x10009687
10009668:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
1000966f:	74 16                	je     0x10009687
10009671:	57                   	push   edi
10009672:	56                   	push   esi
10009673:	83 e7 0f             	and    edi,0xf
10009676:	83 e6 0f             	and    esi,0xf
10009679:	3b fe                	cmp    edi,esi
1000967b:	5e                   	pop    esi
1000967c:	5f                   	pop    edi
1000967d:	75 08                	jne    0x10009687
1000967f:	5e                   	pop    esi
10009680:	5f                   	pop    edi
10009681:	5d                   	pop    ebp
10009682:	e9 c0 1e 00 00       	jmp    0x1000b547
10009687:	f7 c7 03 00 00 00    	test   edi,0x3
1000968d:	75 15                	jne    0x100096a4
1000968f:	c1 e9 02             	shr    ecx,0x2
10009692:	83 e2 03             	and    edx,0x3
10009695:	83 f9 08             	cmp    ecx,0x8
10009698:	72 2a                	jb     0x100096c4
1000969a:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000969c:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
100096a3:	90                   	nop
100096a4:	8b c7                	mov    eax,edi
100096a6:	ba 03 00 00 00       	mov    edx,0x3
100096ab:	83 e9 04             	sub    ecx,0x4
100096ae:	72 0c                	jb     0x100096bc
100096b0:	83 e0 03             	and    eax,0x3
100096b3:	03 c8                	add    ecx,eax
100096b5:	ff 24 85 c8 96 00 10 	jmp    DWORD PTR [eax*4+0x100096c8]
100096bc:	ff 24 8d c4 97 00 10 	jmp    DWORD PTR [ecx*4+0x100097c4]
100096c3:	90                   	nop
100096c4:	ff 24 8d 48 97 00 10 	jmp    DWORD PTR [ecx*4+0x10009748]
100096cb:	90                   	nop
100096cc:	d8 96 00 10 04 97    	fcom   DWORD PTR [esi-0x68fbf000]
100096d2:	00 10                	add    BYTE PTR [eax],dl
100096d4:	28 97 00 10 23 d1    	sub    BYTE PTR [edi-0x2edcf000],dl
100096da:	8a 06                	mov    al,BYTE PTR [esi]
100096dc:	88 07                	mov    BYTE PTR [edi],al
100096de:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100096e1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100096e4:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100096e7:	c1 e9 02             	shr    ecx,0x2
100096ea:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100096ed:	83 c6 03             	add    esi,0x3
100096f0:	83 c7 03             	add    edi,0x3
100096f3:	83 f9 08             	cmp    ecx,0x8
100096f6:	72 cc                	jb     0x100096c4
100096f8:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100096fa:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
10009701:	8d 49 00             	lea    ecx,[ecx+0x0]
10009704:	23 d1                	and    edx,ecx
10009706:	8a 06                	mov    al,BYTE PTR [esi]
10009708:	88 07                	mov    BYTE PTR [edi],al
1000970a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
1000970d:	c1 e9 02             	shr    ecx,0x2
10009710:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10009713:	83 c6 02             	add    esi,0x2
10009716:	83 c7 02             	add    edi,0x2
10009719:	83 f9 08             	cmp    ecx,0x8
1000971c:	72 a6                	jb     0x100096c4
1000971e:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10009720:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
10009727:	90                   	nop
10009728:	23 d1                	and    edx,ecx
1000972a:	8a 06                	mov    al,BYTE PTR [esi]
1000972c:	88 07                	mov    BYTE PTR [edi],al
1000972e:	83 c6 01             	add    esi,0x1
10009731:	c1 e9 02             	shr    ecx,0x2
10009734:	83 c7 01             	add    edi,0x1
10009737:	83 f9 08             	cmp    ecx,0x8
1000973a:	72 88                	jb     0x100096c4
1000973c:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000973e:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
10009745:	8d 49 00             	lea    ecx,[ecx+0x0]
10009748:	ab                   	stos   DWORD PTR es:[edi],eax
10009749:	97                   	xchg   edi,eax
1000974a:	00 10                	add    BYTE PTR [eax],dl
1000974c:	98                   	cwde   
1000974d:	97                   	xchg   edi,eax
1000974e:	00 10                	add    BYTE PTR [eax],dl
10009750:	90                   	nop
10009751:	97                   	xchg   edi,eax
10009752:	00 10                	add    BYTE PTR [eax],dl
10009754:	88 97 00 10 80 97    	mov    BYTE PTR [edi-0x687ff000],dl
1000975a:	00 10                	add    BYTE PTR [eax],dl
1000975c:	78 97                	js     0x100096f5
1000975e:	00 10                	add    BYTE PTR [eax],dl
10009760:	70 97                	jo     0x100096f9
10009762:	00 10                	add    BYTE PTR [eax],dl
10009764:	68 97 00 10 8b       	push   0x8b100097
10009769:	44                   	inc    esp
1000976a:	8e e4                	mov    fs,esp
1000976c:	89 44 8f e4          	mov    DWORD PTR [edi+ecx*4-0x1c],eax
10009770:	8b 44 8e e8          	mov    eax,DWORD PTR [esi+ecx*4-0x18]
10009774:	89 44 8f e8          	mov    DWORD PTR [edi+ecx*4-0x18],eax
10009778:	8b 44 8e ec          	mov    eax,DWORD PTR [esi+ecx*4-0x14]
1000977c:	89 44 8f ec          	mov    DWORD PTR [edi+ecx*4-0x14],eax
10009780:	8b 44 8e f0          	mov    eax,DWORD PTR [esi+ecx*4-0x10]
10009784:	89 44 8f f0          	mov    DWORD PTR [edi+ecx*4-0x10],eax
10009788:	8b 44 8e f4          	mov    eax,DWORD PTR [esi+ecx*4-0xc]
1000978c:	89 44 8f f4          	mov    DWORD PTR [edi+ecx*4-0xc],eax
10009790:	8b 44 8e f8          	mov    eax,DWORD PTR [esi+ecx*4-0x8]
10009794:	89 44 8f f8          	mov    DWORD PTR [edi+ecx*4-0x8],eax
10009798:	8b 44 8e fc          	mov    eax,DWORD PTR [esi+ecx*4-0x4]
1000979c:	89 44 8f fc          	mov    DWORD PTR [edi+ecx*4-0x4],eax
100097a0:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
100097a7:	03 f0                	add    esi,eax
100097a9:	03 f8                	add    edi,eax
100097ab:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
100097b2:	8b ff                	mov    edi,edi
100097b4:	c4 97 00 10 cc 97    	les    edx,FWORD PTR [edi-0x6833f000]
100097ba:	00 10                	add    BYTE PTR [eax],dl
100097bc:	d8 97 00 10 ec 97    	fcom   DWORD PTR [edi-0x6813f000]
100097c2:	00 10                	add    BYTE PTR [eax],dl
100097c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097c7:	5e                   	pop    esi
100097c8:	5f                   	pop    edi
100097c9:	c9                   	leave  
100097ca:	c3                   	ret    
100097cb:	90                   	nop
100097cc:	8a 06                	mov    al,BYTE PTR [esi]
100097ce:	88 07                	mov    BYTE PTR [edi],al
100097d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097d3:	5e                   	pop    esi
100097d4:	5f                   	pop    edi
100097d5:	c9                   	leave  
100097d6:	c3                   	ret    
100097d7:	90                   	nop
100097d8:	8a 06                	mov    al,BYTE PTR [esi]
100097da:	88 07                	mov    BYTE PTR [edi],al
100097dc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100097df:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100097e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097e5:	5e                   	pop    esi
100097e6:	5f                   	pop    edi
100097e7:	c9                   	leave  
100097e8:	c3                   	ret    
100097e9:	8d 49 00             	lea    ecx,[ecx+0x0]
100097ec:	8a 06                	mov    al,BYTE PTR [esi]
100097ee:	88 07                	mov    BYTE PTR [edi],al
100097f0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100097f3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100097f6:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100097f9:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100097fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097ff:	5e                   	pop    esi
10009800:	5f                   	pop    edi
10009801:	c9                   	leave  
10009802:	c3                   	ret    
10009803:	90                   	nop
10009804:	8d 74 31 fc          	lea    esi,[ecx+esi*1-0x4]
10009808:	8d 7c 39 fc          	lea    edi,[ecx+edi*1-0x4]
1000980c:	f7 c7 03 00 00 00    	test   edi,0x3
10009812:	75 24                	jne    0x10009838
10009814:	c1 e9 02             	shr    ecx,0x2
10009817:	83 e2 03             	and    edx,0x3
1000981a:	83 f9 08             	cmp    ecx,0x8
1000981d:	72 0d                	jb     0x1000982c
1000981f:	fd                   	std    
10009820:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10009822:	fc                   	cld    
10009823:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
1000982a:	8b ff                	mov    edi,edi
1000982c:	f7 d9                	neg    ecx
1000982e:	ff 24 8d 00 99 00 10 	jmp    DWORD PTR [ecx*4+0x10009900]
10009835:	8d 49 00             	lea    ecx,[ecx+0x0]
10009838:	8b c7                	mov    eax,edi
1000983a:	ba 03 00 00 00       	mov    edx,0x3
1000983f:	83 f9 04             	cmp    ecx,0x4
10009842:	72 0c                	jb     0x10009850
10009844:	83 e0 03             	and    eax,0x3
10009847:	2b c8                	sub    ecx,eax
10009849:	ff 24 85 54 98 00 10 	jmp    DWORD PTR [eax*4+0x10009854]
10009850:	ff 24 8d 50 99 00 10 	jmp    DWORD PTR [ecx*4+0x10009950]
10009857:	90                   	nop
10009858:	64 98                	fs cwde 
1000985a:	00 10                	add    BYTE PTR [eax],dl
1000985c:	88 98 00 10 b0 98    	mov    BYTE PTR [eax-0x674ff000],bl
10009862:	00 10                	add    BYTE PTR [eax],dl
10009864:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
10009867:	23 d1                	and    edx,ecx
10009869:	88 47 03             	mov    BYTE PTR [edi+0x3],al
1000986c:	83 ee 01             	sub    esi,0x1
1000986f:	c1 e9 02             	shr    ecx,0x2
10009872:	83 ef 01             	sub    edi,0x1
10009875:	83 f9 08             	cmp    ecx,0x8
10009878:	72 b2                	jb     0x1000982c
1000987a:	fd                   	std    
1000987b:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000987d:	fc                   	cld    
1000987e:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
10009885:	8d 49 00             	lea    ecx,[ecx+0x0]
10009888:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000988b:	23 d1                	and    edx,ecx
1000988d:	88 47 03             	mov    BYTE PTR [edi+0x3],al
10009890:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10009893:	c1 e9 02             	shr    ecx,0x2
10009896:	88 47 02             	mov    BYTE PTR [edi+0x2],al
10009899:	83 ee 02             	sub    esi,0x2
1000989c:	83 ef 02             	sub    edi,0x2
1000989f:	83 f9 08             	cmp    ecx,0x8
100098a2:	72 88                	jb     0x1000982c
100098a4:	fd                   	std    
100098a5:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100098a7:	fc                   	cld    
100098a8:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
100098af:	90                   	nop
100098b0:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100098b3:	23 d1                	and    edx,ecx
100098b5:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100098b8:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100098bb:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100098be:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100098c1:	c1 e9 02             	shr    ecx,0x2
100098c4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100098c7:	83 ee 03             	sub    esi,0x3
100098ca:	83 ef 03             	sub    edi,0x3
100098cd:	83 f9 08             	cmp    ecx,0x8
100098d0:	0f 82 56 ff ff ff    	jb     0x1000982c
100098d6:	fd                   	std    
100098d7:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100098d9:	fc                   	cld    
100098da:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
100098e1:	8d 49 00             	lea    ecx,[ecx+0x0]
100098e4:	04 99                	add    al,0x99
100098e6:	00 10                	add    BYTE PTR [eax],dl
100098e8:	0c 99                	or     al,0x99
100098ea:	00 10                	add    BYTE PTR [eax],dl
100098ec:	14 99                	adc    al,0x99
100098ee:	00 10                	add    BYTE PTR [eax],dl
100098f0:	1c 99                	sbb    al,0x99
100098f2:	00 10                	add    BYTE PTR [eax],dl
100098f4:	24 99                	and    al,0x99
100098f6:	00 10                	add    BYTE PTR [eax],dl
100098f8:	2c 99                	sub    al,0x99
100098fa:	00 10                	add    BYTE PTR [eax],dl
100098fc:	34 99                	xor    al,0x99
100098fe:	00 10                	add    BYTE PTR [eax],dl
10009900:	47                   	inc    edi
10009901:	99                   	cdq    
10009902:	00 10                	add    BYTE PTR [eax],dl
10009904:	8b 44 8e 1c          	mov    eax,DWORD PTR [esi+ecx*4+0x1c]
10009908:	89 44 8f 1c          	mov    DWORD PTR [edi+ecx*4+0x1c],eax
1000990c:	8b 44 8e 18          	mov    eax,DWORD PTR [esi+ecx*4+0x18]
10009910:	89 44 8f 18          	mov    DWORD PTR [edi+ecx*4+0x18],eax
10009914:	8b 44 8e 14          	mov    eax,DWORD PTR [esi+ecx*4+0x14]
10009918:	89 44 8f 14          	mov    DWORD PTR [edi+ecx*4+0x14],eax
1000991c:	8b 44 8e 10          	mov    eax,DWORD PTR [esi+ecx*4+0x10]
10009920:	89 44 8f 10          	mov    DWORD PTR [edi+ecx*4+0x10],eax
10009924:	8b 44 8e 0c          	mov    eax,DWORD PTR [esi+ecx*4+0xc]
10009928:	89 44 8f 0c          	mov    DWORD PTR [edi+ecx*4+0xc],eax
1000992c:	8b 44 8e 08          	mov    eax,DWORD PTR [esi+ecx*4+0x8]
10009930:	89 44 8f 08          	mov    DWORD PTR [edi+ecx*4+0x8],eax
10009934:	8b 44 8e 04          	mov    eax,DWORD PTR [esi+ecx*4+0x4]
10009938:	89 44 8f 04          	mov    DWORD PTR [edi+ecx*4+0x4],eax
1000993c:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
10009943:	03 f0                	add    esi,eax
10009945:	03 f8                	add    edi,eax
10009947:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
1000994e:	8b ff                	mov    edi,edi
10009950:	60                   	pusha  
10009951:	99                   	cdq    
10009952:	00 10                	add    BYTE PTR [eax],dl
10009954:	68 99 00 10 78       	push   0x78100099
10009959:	99                   	cdq    
1000995a:	00 10                	add    BYTE PTR [eax],dl
1000995c:	8c 99 00 10 8b 45    	mov    WORD PTR [ecx+0x458b1000],ds
10009962:	08 5e 5f             	or     BYTE PTR [esi+0x5f],bl
10009965:	c9                   	leave  
10009966:	c3                   	ret    
10009967:	90                   	nop
10009968:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000996b:	88 47 03             	mov    BYTE PTR [edi+0x3],al
1000996e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10009971:	5e                   	pop    esi
10009972:	5f                   	pop    edi
10009973:	c9                   	leave  
10009974:	c3                   	ret    
10009975:	8d 49 00             	lea    ecx,[ecx+0x0]
10009978:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000997b:	88 47 03             	mov    BYTE PTR [edi+0x3],al
1000997e:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10009981:	88 47 02             	mov    BYTE PTR [edi+0x2],al
10009984:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10009987:	5e                   	pop    esi
10009988:	5f                   	pop    edi
10009989:	c9                   	leave  
1000998a:	c3                   	ret    
1000998b:	90                   	nop
1000998c:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000998f:	88 47 03             	mov    BYTE PTR [edi+0x3],al
10009992:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10009995:	88 47 02             	mov    BYTE PTR [edi+0x2],al
10009998:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
1000999b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
1000999e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100099a1:	5e                   	pop    esi
100099a2:	5f                   	pop    edi
100099a3:	c9                   	leave  
100099a4:	c3                   	ret    
100099a5:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100099a9:	85 c0                	test   eax,eax
100099ab:	74 12                	je     0x100099bf
100099ad:	83 e8 08             	sub    eax,0x8
100099b0:	81 38 dd dd 00 00    	cmp    DWORD PTR [eax],0xdddd
100099b6:	75 07                	jne    0x100099bf
100099b8:	50                   	push   eax
100099b9:	e8 bd 9f ff ff       	call   0x1000397b
100099be:	59                   	pop    ecx
100099bf:	c3                   	ret    
100099c0:	55                   	push   ebp
100099c1:	8b ec                	mov    ebp,esp
100099c3:	83 ec 14             	sub    esp,0x14
100099c6:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100099cb:	33 c5                	xor    eax,ebp
100099cd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100099d0:	53                   	push   ebx
100099d1:	56                   	push   esi
100099d2:	33 db                	xor    ebx,ebx
100099d4:	39 1d dc 5b 01 10    	cmp    DWORD PTR ds:0x10015bdc,ebx
100099da:	57                   	push   edi
100099db:	8b f1                	mov    esi,ecx
100099dd:	75 38                	jne    0x10009a17
100099df:	53                   	push   ebx
100099e0:	53                   	push   ebx
100099e1:	33 ff                	xor    edi,edi
100099e3:	47                   	inc    edi
100099e4:	57                   	push   edi
100099e5:	68 b0 d9 00 10       	push   0x1000d9b0
100099ea:	68 00 01 00 00       	push   0x100
100099ef:	53                   	push   ebx
100099f0:	ff 15 30 d0 00 10    	call   DWORD PTR ds:0x1000d030
100099f6:	85 c0                	test   eax,eax
100099f8:	74 08                	je     0x10009a02
100099fa:	89 3d dc 5b 01 10    	mov    DWORD PTR ds:0x10015bdc,edi
10009a00:	eb 15                	jmp    0x10009a17
10009a02:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10009a08:	83 f8 78             	cmp    eax,0x78
10009a0b:	75 0a                	jne    0x10009a17
10009a0d:	c7 05 dc 5b 01 10 02 	mov    DWORD PTR ds:0x10015bdc,0x2
10009a14:	00 00 00 
10009a17:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
10009a1a:	7e 22                	jle    0x10009a3e
10009a1c:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
10009a1f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10009a22:	49                   	dec    ecx
10009a23:	38 18                	cmp    BYTE PTR [eax],bl
10009a25:	74 08                	je     0x10009a2f
10009a27:	40                   	inc    eax
10009a28:	3b cb                	cmp    ecx,ebx
10009a2a:	75 f6                	jne    0x10009a22
10009a2c:	83 c9 ff             	or     ecx,0xffffffff
10009a2f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
10009a32:	2b c1                	sub    eax,ecx
10009a34:	48                   	dec    eax
10009a35:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
10009a38:	7d 01                	jge    0x10009a3b
10009a3a:	40                   	inc    eax
10009a3b:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
10009a3e:	a1 dc 5b 01 10       	mov    eax,ds:0x10015bdc
10009a43:	83 f8 02             	cmp    eax,0x2
10009a46:	0f 84 ab 01 00 00    	je     0x10009bf7
10009a4c:	3b c3                	cmp    eax,ebx
10009a4e:	0f 84 a3 01 00 00    	je     0x10009bf7
10009a54:	83 f8 01             	cmp    eax,0x1
10009a57:	0f 85 cb 01 00 00    	jne    0x10009c28
10009a5d:	39 5d 20             	cmp    DWORD PTR [ebp+0x20],ebx
10009a60:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
10009a63:	75 08                	jne    0x10009a6d
10009a65:	8b 06                	mov    eax,DWORD PTR [esi]
10009a67:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009a6a:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
10009a6d:	8b 35 fc d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0fc
10009a73:	33 c0                	xor    eax,eax
10009a75:	39 5d 24             	cmp    DWORD PTR [ebp+0x24],ebx
10009a78:	53                   	push   ebx
10009a79:	53                   	push   ebx
10009a7a:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009a7d:	0f 95 c0             	setne  al
10009a80:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009a83:	8d 04 c5 01 00 00 00 	lea    eax,[eax*8+0x1]
10009a8a:	50                   	push   eax
10009a8b:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009a8e:	ff d6                	call   esi
10009a90:	8b f8                	mov    edi,eax
10009a92:	3b fb                	cmp    edi,ebx
10009a94:	0f 84 8e 01 00 00    	je     0x10009c28
10009a9a:	7e 43                	jle    0x10009adf
10009a9c:	6a e0                	push   0xffffffe0
10009a9e:	33 d2                	xor    edx,edx
10009aa0:	58                   	pop    eax
10009aa1:	f7 f7                	div    edi
10009aa3:	83 f8 02             	cmp    eax,0x2
10009aa6:	72 37                	jb     0x10009adf
10009aa8:	8d 44 3f 08          	lea    eax,[edi+edi*1+0x8]
10009aac:	3d 00 04 00 00       	cmp    eax,0x400
10009ab1:	77 13                	ja     0x10009ac6
10009ab3:	e8 18 2e 00 00       	call   0x1000c8d0
10009ab8:	8b c4                	mov    eax,esp
10009aba:	3b c3                	cmp    eax,ebx
10009abc:	74 1c                	je     0x10009ada
10009abe:	c7 00 cc cc 00 00    	mov    DWORD PTR [eax],0xcccc
10009ac4:	eb 11                	jmp    0x10009ad7
10009ac6:	50                   	push   eax
10009ac7:	e8 8c 9f ff ff       	call   0x10003a58
10009acc:	3b c3                	cmp    eax,ebx
10009ace:	59                   	pop    ecx
10009acf:	74 09                	je     0x10009ada
10009ad1:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009ad7:	83 c0 08             	add    eax,0x8
10009ada:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
10009add:	eb 03                	jmp    0x10009ae2
10009adf:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10009ae2:	39 5d f4             	cmp    DWORD PTR [ebp-0xc],ebx
10009ae5:	0f 84 3d 01 00 00    	je     0x10009c28
10009aeb:	57                   	push   edi
10009aec:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009aef:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009af2:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009af5:	6a 01                	push   0x1
10009af7:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009afa:	ff d6                	call   esi
10009afc:	85 c0                	test   eax,eax
10009afe:	0f 84 e2 00 00 00    	je     0x10009be6
10009b04:	8b 35 30 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d030
10009b0a:	53                   	push   ebx
10009b0b:	53                   	push   ebx
10009b0c:	57                   	push   edi
10009b0d:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009b10:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009b13:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009b16:	ff d6                	call   esi
10009b18:	8b c8                	mov    ecx,eax
10009b1a:	3b cb                	cmp    ecx,ebx
10009b1c:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
10009b1f:	0f 84 c1 00 00 00    	je     0x10009be6
10009b25:	66 f7 45 0c 00 04    	test   WORD PTR [ebp+0xc],0x400
10009b2b:	74 29                	je     0x10009b56
10009b2d:	39 5d 1c             	cmp    DWORD PTR [ebp+0x1c],ebx
10009b30:	0f 84 b0 00 00 00    	je     0x10009be6
10009b36:	3b 4d 1c             	cmp    ecx,DWORD PTR [ebp+0x1c]
10009b39:	0f 8f a7 00 00 00    	jg     0x10009be6
10009b3f:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009b42:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009b45:	57                   	push   edi
10009b46:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009b49:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009b4c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009b4f:	ff d6                	call   esi
10009b51:	e9 90 00 00 00       	jmp    0x10009be6
10009b56:	3b cb                	cmp    ecx,ebx
10009b58:	7e 45                	jle    0x10009b9f
10009b5a:	6a e0                	push   0xffffffe0
10009b5c:	33 d2                	xor    edx,edx
10009b5e:	58                   	pop    eax
10009b5f:	f7 f1                	div    ecx
10009b61:	83 f8 02             	cmp    eax,0x2
10009b64:	72 39                	jb     0x10009b9f
10009b66:	8d 44 09 08          	lea    eax,[ecx+ecx*1+0x8]
10009b6a:	3d 00 04 00 00       	cmp    eax,0x400
10009b6f:	77 16                	ja     0x10009b87
10009b71:	e8 5a 2d 00 00       	call   0x1000c8d0
10009b76:	8b f4                	mov    esi,esp
10009b78:	3b f3                	cmp    esi,ebx
10009b7a:	74 6a                	je     0x10009be6
10009b7c:	c7 06 cc cc 00 00    	mov    DWORD PTR [esi],0xcccc
10009b82:	83 c6 08             	add    esi,0x8
10009b85:	eb 1a                	jmp    0x10009ba1
10009b87:	50                   	push   eax
10009b88:	e8 cb 9e ff ff       	call   0x10003a58
10009b8d:	3b c3                	cmp    eax,ebx
10009b8f:	59                   	pop    ecx
10009b90:	74 09                	je     0x10009b9b
10009b92:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009b98:	83 c0 08             	add    eax,0x8
10009b9b:	8b f0                	mov    esi,eax
10009b9d:	eb 02                	jmp    0x10009ba1
10009b9f:	33 f6                	xor    esi,esi
10009ba1:	3b f3                	cmp    esi,ebx
10009ba3:	74 41                	je     0x10009be6
10009ba5:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009ba8:	56                   	push   esi
10009ba9:	57                   	push   edi
10009baa:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009bad:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009bb0:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009bb3:	ff 15 30 d0 00 10    	call   DWORD PTR ds:0x1000d030
10009bb9:	85 c0                	test   eax,eax
10009bbb:	74 22                	je     0x10009bdf
10009bbd:	39 5d 1c             	cmp    DWORD PTR [ebp+0x1c],ebx
10009bc0:	53                   	push   ebx
10009bc1:	53                   	push   ebx
10009bc2:	75 04                	jne    0x10009bc8
10009bc4:	53                   	push   ebx
10009bc5:	53                   	push   ebx
10009bc6:	eb 06                	jmp    0x10009bce
10009bc8:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009bcb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009bce:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009bd1:	56                   	push   esi
10009bd2:	53                   	push   ebx
10009bd3:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009bd6:	ff 15 c4 d0 00 10    	call   DWORD PTR ds:0x1000d0c4
10009bdc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009bdf:	56                   	push   esi
10009be0:	e8 c0 fd ff ff       	call   0x100099a5
10009be5:	59                   	pop    ecx
10009be6:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009be9:	e8 b7 fd ff ff       	call   0x100099a5
10009bee:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10009bf1:	59                   	pop    ecx
10009bf2:	e9 59 01 00 00       	jmp    0x10009d50
10009bf7:	39 5d 08             	cmp    DWORD PTR [ebp+0x8],ebx
10009bfa:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10009bfd:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
10009c00:	75 08                	jne    0x10009c0a
10009c02:	8b 06                	mov    eax,DWORD PTR [esi]
10009c04:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
10009c07:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
10009c0a:	39 5d 20             	cmp    DWORD PTR [ebp+0x20],ebx
10009c0d:	75 08                	jne    0x10009c17
10009c0f:	8b 06                	mov    eax,DWORD PTR [esi]
10009c11:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009c14:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
10009c17:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009c1a:	e8 b6 2a 00 00       	call   0x1000c6d5
10009c1f:	83 f8 ff             	cmp    eax,0xffffffff
10009c22:	59                   	pop    ecx
10009c23:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
10009c26:	75 07                	jne    0x10009c2f
10009c28:	33 c0                	xor    eax,eax
10009c2a:	e9 21 01 00 00       	jmp    0x10009d50
10009c2f:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
10009c32:	0f 84 db 00 00 00    	je     0x10009d13
10009c38:	53                   	push   ebx
10009c39:	53                   	push   ebx
10009c3a:	8d 4d 14             	lea    ecx,[ebp+0x14]
10009c3d:	51                   	push   ecx
10009c3e:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009c41:	50                   	push   eax
10009c42:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009c45:	e8 d2 2a 00 00       	call   0x1000c71c
10009c4a:	83 c4 18             	add    esp,0x18
10009c4d:	3b c3                	cmp    eax,ebx
10009c4f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
10009c52:	74 d4                	je     0x10009c28
10009c54:	8b 35 f8 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0f8
10009c5a:	53                   	push   ebx
10009c5b:	53                   	push   ebx
10009c5c:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009c5f:	50                   	push   eax
10009c60:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009c63:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009c66:	ff d6                	call   esi
10009c68:	3b c3                	cmp    eax,ebx
10009c6a:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009c6d:	75 07                	jne    0x10009c76
10009c6f:	33 f6                	xor    esi,esi
10009c71:	e9 b7 00 00 00       	jmp    0x10009d2d
10009c76:	7e 3d                	jle    0x10009cb5
10009c78:	83 f8 e0             	cmp    eax,0xffffffe0
10009c7b:	77 38                	ja     0x10009cb5
10009c7d:	83 c0 08             	add    eax,0x8
10009c80:	3d 00 04 00 00       	cmp    eax,0x400
10009c85:	77 16                	ja     0x10009c9d
10009c87:	e8 44 2c 00 00       	call   0x1000c8d0
10009c8c:	8b fc                	mov    edi,esp
10009c8e:	3b fb                	cmp    edi,ebx
10009c90:	74 dd                	je     0x10009c6f
10009c92:	c7 07 cc cc 00 00    	mov    DWORD PTR [edi],0xcccc
10009c98:	83 c7 08             	add    edi,0x8
10009c9b:	eb 1a                	jmp    0x10009cb7
10009c9d:	50                   	push   eax
10009c9e:	e8 b5 9d ff ff       	call   0x10003a58
10009ca3:	3b c3                	cmp    eax,ebx
10009ca5:	59                   	pop    ecx
10009ca6:	74 09                	je     0x10009cb1
10009ca8:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009cae:	83 c0 08             	add    eax,0x8
10009cb1:	8b f8                	mov    edi,eax
10009cb3:	eb 02                	jmp    0x10009cb7
10009cb5:	33 ff                	xor    edi,edi
10009cb7:	3b fb                	cmp    edi,ebx
10009cb9:	74 b4                	je     0x10009c6f
10009cbb:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009cbe:	53                   	push   ebx
10009cbf:	57                   	push   edi
10009cc0:	e8 2b e9 ff ff       	call   0x100085f0
10009cc5:	83 c4 0c             	add    esp,0xc
10009cc8:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009ccb:	57                   	push   edi
10009ccc:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009ccf:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009cd2:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009cd5:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009cd8:	ff d6                	call   esi
10009cda:	3b c3                	cmp    eax,ebx
10009cdc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009cdf:	75 04                	jne    0x10009ce5
10009ce1:	33 f6                	xor    esi,esi
10009ce3:	eb 25                	jmp    0x10009d0a
10009ce5:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009ce8:	8d 45 f8             	lea    eax,[ebp-0x8]
10009ceb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009cee:	50                   	push   eax
10009cef:	57                   	push   edi
10009cf0:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009cf3:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
10009cf6:	e8 21 2a 00 00       	call   0x1000c71c
10009cfb:	8b f0                	mov    esi,eax
10009cfd:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
10009d00:	83 c4 18             	add    esp,0x18
10009d03:	f7 de                	neg    esi
10009d05:	1b f6                	sbb    esi,esi
10009d07:	23 75 f8             	and    esi,DWORD PTR [ebp-0x8]
10009d0a:	57                   	push   edi
10009d0b:	e8 95 fc ff ff       	call   0x100099a5
10009d10:	59                   	pop    ecx
10009d11:	eb 1a                	jmp    0x10009d2d
10009d13:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009d16:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009d19:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009d1c:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009d1f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009d22:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009d25:	ff 15 f8 d0 00 10    	call   DWORD PTR ds:0x1000d0f8
10009d2b:	8b f0                	mov    esi,eax
10009d2d:	39 5d f4             	cmp    DWORD PTR [ebp-0xc],ebx
10009d30:	74 09                	je     0x10009d3b
10009d32:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009d35:	e8 41 9c ff ff       	call   0x1000397b
10009d3a:	59                   	pop    ecx
10009d3b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10009d3e:	3b c3                	cmp    eax,ebx
10009d40:	74 0c                	je     0x10009d4e
10009d42:	39 45 18             	cmp    DWORD PTR [ebp+0x18],eax
10009d45:	74 07                	je     0x10009d4e
10009d47:	50                   	push   eax
10009d48:	e8 2e 9c ff ff       	call   0x1000397b
10009d4d:	59                   	pop    ecx
10009d4e:	8b c6                	mov    eax,esi
10009d50:	8d 65 e0             	lea    esp,[ebp-0x20]
10009d53:	5f                   	pop    edi
10009d54:	5e                   	pop    esi
10009d55:	5b                   	pop    ebx
10009d56:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10009d59:	33 cd                	xor    ecx,ebp
10009d5b:	e8 bb 9d ff ff       	call   0x10003b1b
10009d60:	c9                   	leave  
10009d61:	c3                   	ret    
10009d62:	55                   	push   ebp
10009d63:	8b ec                	mov    ebp,esp
10009d65:	83 ec 10             	sub    esp,0x10
10009d68:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009d6b:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009d6e:	e8 a7 a0 ff ff       	call   0x10003e1a
10009d73:	ff 75 28             	push   DWORD PTR [ebp+0x28]
10009d76:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009d79:	ff 75 24             	push   DWORD PTR [ebp+0x24]
10009d7c:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009d7f:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009d82:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009d85:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009d88:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009d8b:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009d8e:	e8 2d fc ff ff       	call   0x100099c0
10009d93:	83 c4 20             	add    esp,0x20
10009d96:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10009d9a:	74 07                	je     0x10009da3
10009d9c:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10009d9f:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10009da3:	c9                   	leave  
10009da4:	c3                   	ret    
10009da5:	55                   	push   ebp
10009da6:	8b ec                	mov    ebp,esp
10009da8:	51                   	push   ecx
10009da9:	51                   	push   ecx
10009daa:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10009daf:	33 c5                	xor    eax,ebp
10009db1:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10009db4:	a1 e0 5b 01 10       	mov    eax,ds:0x10015be0
10009db9:	53                   	push   ebx
10009dba:	56                   	push   esi
10009dbb:	33 db                	xor    ebx,ebx
10009dbd:	3b c3                	cmp    eax,ebx
10009dbf:	57                   	push   edi
10009dc0:	8b f9                	mov    edi,ecx
10009dc2:	75 3a                	jne    0x10009dfe
10009dc4:	8d 45 f8             	lea    eax,[ebp-0x8]
10009dc7:	50                   	push   eax
10009dc8:	33 f6                	xor    esi,esi
10009dca:	46                   	inc    esi
10009dcb:	56                   	push   esi
10009dcc:	68 b0 d9 00 10       	push   0x1000d9b0
10009dd1:	56                   	push   esi
10009dd2:	ff 15 28 d0 00 10    	call   DWORD PTR ds:0x1000d028
10009dd8:	85 c0                	test   eax,eax
10009dda:	74 08                	je     0x10009de4
10009ddc:	89 35 e0 5b 01 10    	mov    DWORD PTR ds:0x10015be0,esi
10009de2:	eb 34                	jmp    0x10009e18
10009de4:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10009dea:	83 f8 78             	cmp    eax,0x78
10009ded:	75 0a                	jne    0x10009df9
10009def:	6a 02                	push   0x2
10009df1:	58                   	pop    eax
10009df2:	a3 e0 5b 01 10       	mov    ds:0x10015be0,eax
10009df7:	eb 05                	jmp    0x10009dfe
10009df9:	a1 e0 5b 01 10       	mov    eax,ds:0x10015be0
10009dfe:	83 f8 02             	cmp    eax,0x2
10009e01:	0f 84 cf 00 00 00    	je     0x10009ed6
10009e07:	3b c3                	cmp    eax,ebx
10009e09:	0f 84 c7 00 00 00    	je     0x10009ed6
10009e0f:	83 f8 01             	cmp    eax,0x1
10009e12:	0f 85 e8 00 00 00    	jne    0x10009f00
10009e18:	39 5d 18             	cmp    DWORD PTR [ebp+0x18],ebx
10009e1b:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
10009e1e:	75 08                	jne    0x10009e28
10009e20:	8b 07                	mov    eax,DWORD PTR [edi]
10009e22:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009e25:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
10009e28:	8b 35 fc d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0fc
10009e2e:	33 c0                	xor    eax,eax
10009e30:	39 5d 20             	cmp    DWORD PTR [ebp+0x20],ebx
10009e33:	53                   	push   ebx
10009e34:	53                   	push   ebx
10009e35:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009e38:	0f 95 c0             	setne  al
10009e3b:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009e3e:	8d 04 c5 01 00 00 00 	lea    eax,[eax*8+0x1]
10009e45:	50                   	push   eax
10009e46:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009e49:	ff d6                	call   esi
10009e4b:	8b f8                	mov    edi,eax
10009e4d:	3b fb                	cmp    edi,ebx
10009e4f:	0f 84 ab 00 00 00    	je     0x10009f00
10009e55:	7e 3c                	jle    0x10009e93
10009e57:	81 ff f0 ff ff 7f    	cmp    edi,0x7ffffff0
10009e5d:	77 34                	ja     0x10009e93
10009e5f:	8d 44 3f 08          	lea    eax,[edi+edi*1+0x8]
10009e63:	3d 00 04 00 00       	cmp    eax,0x400
10009e68:	77 13                	ja     0x10009e7d
10009e6a:	e8 61 2a 00 00       	call   0x1000c8d0
10009e6f:	8b c4                	mov    eax,esp
10009e71:	3b c3                	cmp    eax,ebx
10009e73:	74 1c                	je     0x10009e91
10009e75:	c7 00 cc cc 00 00    	mov    DWORD PTR [eax],0xcccc
10009e7b:	eb 11                	jmp    0x10009e8e
10009e7d:	50                   	push   eax
10009e7e:	e8 d5 9b ff ff       	call   0x10003a58
10009e83:	3b c3                	cmp    eax,ebx
10009e85:	59                   	pop    ecx
10009e86:	74 09                	je     0x10009e91
10009e88:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009e8e:	83 c0 08             	add    eax,0x8
10009e91:	8b d8                	mov    ebx,eax
10009e93:	85 db                	test   ebx,ebx
10009e95:	74 69                	je     0x10009f00
10009e97:	8d 04 3f             	lea    eax,[edi+edi*1]
10009e9a:	50                   	push   eax
10009e9b:	6a 00                	push   0x0
10009e9d:	53                   	push   ebx
10009e9e:	e8 4d e7 ff ff       	call   0x100085f0
10009ea3:	83 c4 0c             	add    esp,0xc
10009ea6:	57                   	push   edi
10009ea7:	53                   	push   ebx
10009ea8:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009eab:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009eae:	6a 01                	push   0x1
10009eb0:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009eb3:	ff d6                	call   esi
10009eb5:	85 c0                	test   eax,eax
10009eb7:	74 11                	je     0x10009eca
10009eb9:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009ebc:	50                   	push   eax
10009ebd:	53                   	push   ebx
10009ebe:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009ec1:	ff 15 28 d0 00 10    	call   DWORD PTR ds:0x1000d028
10009ec7:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009eca:	53                   	push   ebx
10009ecb:	e8 d5 fa ff ff       	call   0x100099a5
10009ed0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10009ed3:	59                   	pop    ecx
10009ed4:	eb 75                	jmp    0x10009f4b
10009ed6:	33 f6                	xor    esi,esi
10009ed8:	39 5d 1c             	cmp    DWORD PTR [ebp+0x1c],ebx
10009edb:	75 08                	jne    0x10009ee5
10009edd:	8b 07                	mov    eax,DWORD PTR [edi]
10009edf:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
10009ee2:	89 45 1c             	mov    DWORD PTR [ebp+0x1c],eax
10009ee5:	39 5d 18             	cmp    DWORD PTR [ebp+0x18],ebx
10009ee8:	75 08                	jne    0x10009ef2
10009eea:	8b 07                	mov    eax,DWORD PTR [edi]
10009eec:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009eef:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
10009ef2:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009ef5:	e8 db 27 00 00       	call   0x1000c6d5
10009efa:	83 f8 ff             	cmp    eax,0xffffffff
10009efd:	59                   	pop    ecx
10009efe:	75 04                	jne    0x10009f04
10009f00:	33 c0                	xor    eax,eax
10009f02:	eb 47                	jmp    0x10009f4b
10009f04:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
10009f07:	74 1e                	je     0x10009f27
10009f09:	53                   	push   ebx
10009f0a:	53                   	push   ebx
10009f0b:	8d 4d 10             	lea    ecx,[ebp+0x10]
10009f0e:	51                   	push   ecx
10009f0f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009f12:	50                   	push   eax
10009f13:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009f16:	e8 01 28 00 00       	call   0x1000c71c
10009f1b:	8b f0                	mov    esi,eax
10009f1d:	83 c4 18             	add    esp,0x18
10009f20:	3b f3                	cmp    esi,ebx
10009f22:	74 dc                	je     0x10009f00
10009f24:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
10009f27:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009f2a:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009f2d:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009f30:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009f33:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009f36:	ff 15 2c d0 00 10    	call   DWORD PTR ds:0x1000d02c
10009f3c:	3b f3                	cmp    esi,ebx
10009f3e:	8b f8                	mov    edi,eax
10009f40:	74 07                	je     0x10009f49
10009f42:	56                   	push   esi
10009f43:	e8 33 9a ff ff       	call   0x1000397b
10009f48:	59                   	pop    ecx
10009f49:	8b c7                	mov    eax,edi
10009f4b:	8d 65 ec             	lea    esp,[ebp-0x14]
10009f4e:	5f                   	pop    edi
10009f4f:	5e                   	pop    esi
10009f50:	5b                   	pop    ebx
10009f51:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10009f54:	33 cd                	xor    ecx,ebp
10009f56:	e8 c0 9b ff ff       	call   0x10003b1b
10009f5b:	c9                   	leave  
10009f5c:	c3                   	ret    
10009f5d:	55                   	push   ebp
10009f5e:	8b ec                	mov    ebp,esp
10009f60:	83 ec 10             	sub    esp,0x10
10009f63:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009f66:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009f69:	e8 ac 9e ff ff       	call   0x10003e1a
10009f6e:	ff 75 24             	push   DWORD PTR [ebp+0x24]
10009f71:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009f74:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009f77:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009f7a:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009f7d:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009f80:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009f83:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009f86:	e8 1a fe ff ff       	call   0x10009da5
10009f8b:	83 c4 1c             	add    esp,0x1c
10009f8e:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10009f92:	74 07                	je     0x10009f9b
10009f94:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10009f97:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10009f9b:	c9                   	leave  
10009f9c:	c3                   	ret    
10009f9d:	56                   	push   esi
10009f9e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
10009fa2:	85 f6                	test   esi,esi
10009fa4:	0f 84 81 01 00 00    	je     0x1000a12b
10009faa:	ff 76 04             	push   DWORD PTR [esi+0x4]
10009fad:	e8 c9 99 ff ff       	call   0x1000397b
10009fb2:	ff 76 08             	push   DWORD PTR [esi+0x8]
10009fb5:	e8 c1 99 ff ff       	call   0x1000397b
10009fba:	ff 76 0c             	push   DWORD PTR [esi+0xc]
10009fbd:	e8 b9 99 ff ff       	call   0x1000397b
10009fc2:	ff 76 10             	push   DWORD PTR [esi+0x10]
10009fc5:	e8 b1 99 ff ff       	call   0x1000397b
10009fca:	ff 76 14             	push   DWORD PTR [esi+0x14]
10009fcd:	e8 a9 99 ff ff       	call   0x1000397b
10009fd2:	ff 76 18             	push   DWORD PTR [esi+0x18]
10009fd5:	e8 a1 99 ff ff       	call   0x1000397b
10009fda:	ff 36                	push   DWORD PTR [esi]
10009fdc:	e8 9a 99 ff ff       	call   0x1000397b
10009fe1:	ff 76 20             	push   DWORD PTR [esi+0x20]
10009fe4:	e8 92 99 ff ff       	call   0x1000397b
10009fe9:	ff 76 24             	push   DWORD PTR [esi+0x24]
10009fec:	e8 8a 99 ff ff       	call   0x1000397b
10009ff1:	ff 76 28             	push   DWORD PTR [esi+0x28]
10009ff4:	e8 82 99 ff ff       	call   0x1000397b
10009ff9:	ff 76 2c             	push   DWORD PTR [esi+0x2c]
10009ffc:	e8 7a 99 ff ff       	call   0x1000397b
1000a001:	ff 76 30             	push   DWORD PTR [esi+0x30]
1000a004:	e8 72 99 ff ff       	call   0x1000397b
1000a009:	ff 76 34             	push   DWORD PTR [esi+0x34]
1000a00c:	e8 6a 99 ff ff       	call   0x1000397b
1000a011:	ff 76 1c             	push   DWORD PTR [esi+0x1c]
1000a014:	e8 62 99 ff ff       	call   0x1000397b
1000a019:	ff 76 38             	push   DWORD PTR [esi+0x38]
1000a01c:	e8 5a 99 ff ff       	call   0x1000397b
1000a021:	ff 76 3c             	push   DWORD PTR [esi+0x3c]
1000a024:	e8 52 99 ff ff       	call   0x1000397b
1000a029:	83 c4 40             	add    esp,0x40
1000a02c:	ff 76 40             	push   DWORD PTR [esi+0x40]
1000a02f:	e8 47 99 ff ff       	call   0x1000397b
1000a034:	ff 76 44             	push   DWORD PTR [esi+0x44]
1000a037:	e8 3f 99 ff ff       	call   0x1000397b
1000a03c:	ff 76 48             	push   DWORD PTR [esi+0x48]
1000a03f:	e8 37 99 ff ff       	call   0x1000397b
1000a044:	ff 76 4c             	push   DWORD PTR [esi+0x4c]
1000a047:	e8 2f 99 ff ff       	call   0x1000397b
1000a04c:	ff 76 50             	push   DWORD PTR [esi+0x50]
1000a04f:	e8 27 99 ff ff       	call   0x1000397b
1000a054:	ff 76 54             	push   DWORD PTR [esi+0x54]
1000a057:	e8 1f 99 ff ff       	call   0x1000397b
1000a05c:	ff 76 58             	push   DWORD PTR [esi+0x58]
1000a05f:	e8 17 99 ff ff       	call   0x1000397b
1000a064:	ff 76 5c             	push   DWORD PTR [esi+0x5c]
1000a067:	e8 0f 99 ff ff       	call   0x1000397b
1000a06c:	ff 76 60             	push   DWORD PTR [esi+0x60]
1000a06f:	e8 07 99 ff ff       	call   0x1000397b
1000a074:	ff 76 64             	push   DWORD PTR [esi+0x64]
1000a077:	e8 ff 98 ff ff       	call   0x1000397b
1000a07c:	ff 76 68             	push   DWORD PTR [esi+0x68]
1000a07f:	e8 f7 98 ff ff       	call   0x1000397b
1000a084:	ff 76 6c             	push   DWORD PTR [esi+0x6c]
1000a087:	e8 ef 98 ff ff       	call   0x1000397b
1000a08c:	ff 76 70             	push   DWORD PTR [esi+0x70]
1000a08f:	e8 e7 98 ff ff       	call   0x1000397b
1000a094:	ff 76 74             	push   DWORD PTR [esi+0x74]
1000a097:	e8 df 98 ff ff       	call   0x1000397b
1000a09c:	ff 76 78             	push   DWORD PTR [esi+0x78]
1000a09f:	e8 d7 98 ff ff       	call   0x1000397b
1000a0a4:	ff 76 7c             	push   DWORD PTR [esi+0x7c]
1000a0a7:	e8 cf 98 ff ff       	call   0x1000397b
1000a0ac:	83 c4 40             	add    esp,0x40
1000a0af:	ff b6 80 00 00 00    	push   DWORD PTR [esi+0x80]
1000a0b5:	e8 c1 98 ff ff       	call   0x1000397b
1000a0ba:	ff b6 84 00 00 00    	push   DWORD PTR [esi+0x84]
1000a0c0:	e8 b6 98 ff ff       	call   0x1000397b
1000a0c5:	ff b6 88 00 00 00    	push   DWORD PTR [esi+0x88]
1000a0cb:	e8 ab 98 ff ff       	call   0x1000397b
1000a0d0:	ff b6 8c 00 00 00    	push   DWORD PTR [esi+0x8c]
1000a0d6:	e8 a0 98 ff ff       	call   0x1000397b
1000a0db:	ff b6 90 00 00 00    	push   DWORD PTR [esi+0x90]
1000a0e1:	e8 95 98 ff ff       	call   0x1000397b
1000a0e6:	ff b6 94 00 00 00    	push   DWORD PTR [esi+0x94]
1000a0ec:	e8 8a 98 ff ff       	call   0x1000397b
1000a0f1:	ff b6 98 00 00 00    	push   DWORD PTR [esi+0x98]
1000a0f7:	e8 7f 98 ff ff       	call   0x1000397b
1000a0fc:	ff b6 9c 00 00 00    	push   DWORD PTR [esi+0x9c]
1000a102:	e8 74 98 ff ff       	call   0x1000397b
1000a107:	ff b6 a0 00 00 00    	push   DWORD PTR [esi+0xa0]
1000a10d:	e8 69 98 ff ff       	call   0x1000397b
1000a112:	ff b6 a4 00 00 00    	push   DWORD PTR [esi+0xa4]
1000a118:	e8 5e 98 ff ff       	call   0x1000397b
1000a11d:	ff b6 a8 00 00 00    	push   DWORD PTR [esi+0xa8]
1000a123:	e8 53 98 ff ff       	call   0x1000397b
1000a128:	83 c4 2c             	add    esp,0x2c
1000a12b:	5e                   	pop    esi
1000a12c:	c3                   	ret    
1000a12d:	56                   	push   esi
1000a12e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
1000a132:	85 f6                	test   esi,esi
1000a134:	74 35                	je     0x1000a16b
1000a136:	8b 06                	mov    eax,DWORD PTR [esi]
1000a138:	3b 05 58 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b58
1000a13e:	74 07                	je     0x1000a147
1000a140:	50                   	push   eax
1000a141:	e8 35 98 ff ff       	call   0x1000397b
1000a146:	59                   	pop    ecx
1000a147:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
1000a14a:	3b 05 5c 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b5c
1000a150:	74 07                	je     0x1000a159
1000a152:	50                   	push   eax
1000a153:	e8 23 98 ff ff       	call   0x1000397b
1000a158:	59                   	pop    ecx
1000a159:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
1000a15c:	3b 35 60 0b 01 10    	cmp    esi,DWORD PTR ds:0x10010b60
1000a162:	74 07                	je     0x1000a16b
1000a164:	56                   	push   esi
1000a165:	e8 11 98 ff ff       	call   0x1000397b
1000a16a:	59                   	pop    ecx
1000a16b:	5e                   	pop    esi
1000a16c:	c3                   	ret    
1000a16d:	56                   	push   esi
1000a16e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
1000a172:	85 f6                	test   esi,esi
1000a174:	74 7e                	je     0x1000a1f4
1000a176:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
1000a179:	3b 05 64 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b64
1000a17f:	74 07                	je     0x1000a188
1000a181:	50                   	push   eax
1000a182:	e8 f4 97 ff ff       	call   0x1000397b
1000a187:	59                   	pop    ecx
1000a188:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
1000a18b:	3b 05 68 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b68
1000a191:	74 07                	je     0x1000a19a
1000a193:	50                   	push   eax
1000a194:	e8 e2 97 ff ff       	call   0x1000397b
1000a199:	59                   	pop    ecx
1000a19a:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
1000a19d:	3b 05 6c 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b6c
1000a1a3:	74 07                	je     0x1000a1ac
1000a1a5:	50                   	push   eax
1000a1a6:	e8 d0 97 ff ff       	call   0x1000397b
1000a1ab:	59                   	pop    ecx
1000a1ac:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
1000a1af:	3b 05 70 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b70
1000a1b5:	74 07                	je     0x1000a1be
1000a1b7:	50                   	push   eax
1000a1b8:	e8 be 97 ff ff       	call   0x1000397b
1000a1bd:	59                   	pop    ecx
1000a1be:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
1000a1c1:	3b 05 74 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b74
1000a1c7:	74 07                	je     0x1000a1d0
1000a1c9:	50                   	push   eax
1000a1ca:	e8 ac 97 ff ff       	call   0x1000397b
1000a1cf:	59                   	pop    ecx
1000a1d0:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
1000a1d3:	3b 05 78 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b78
1000a1d9:	74 07                	je     0x1000a1e2
1000a1db:	50                   	push   eax
1000a1dc:	e8 9a 97 ff ff       	call   0x1000397b
1000a1e1:	59                   	pop    ecx
1000a1e2:	8b 76 24             	mov    esi,DWORD PTR [esi+0x24]
1000a1e5:	3b 35 7c 0b 01 10    	cmp    esi,DWORD PTR ds:0x10010b7c
1000a1eb:	74 07                	je     0x1000a1f4
1000a1ed:	56                   	push   esi
1000a1ee:	e8 88 97 ff ff       	call   0x1000397b
1000a1f3:	59                   	pop    ecx
1000a1f4:	5e                   	pop    esi
1000a1f5:	c3                   	ret    
1000a1f6:	cc                   	int3   
1000a1f7:	cc                   	int3   
1000a1f8:	cc                   	int3   
1000a1f9:	cc                   	int3   
1000a1fa:	cc                   	int3   
1000a1fb:	cc                   	int3   
1000a1fc:	cc                   	int3   
1000a1fd:	cc                   	int3   
1000a1fe:	cc                   	int3   
1000a1ff:	cc                   	int3   
1000a200:	55                   	push   ebp
1000a201:	8b ec                	mov    ebp,esp
1000a203:	56                   	push   esi
1000a204:	33 c0                	xor    eax,eax
1000a206:	50                   	push   eax
1000a207:	50                   	push   eax
1000a208:	50                   	push   eax
1000a209:	50                   	push   eax
1000a20a:	50                   	push   eax
1000a20b:	50                   	push   eax
1000a20c:	50                   	push   eax
1000a20d:	50                   	push   eax
1000a20e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
1000a211:	8d 49 00             	lea    ecx,[ecx+0x0]
1000a214:	8a 02                	mov    al,BYTE PTR [edx]
1000a216:	0a c0                	or     al,al
1000a218:	74 09                	je     0x1000a223
1000a21a:	83 c2 01             	add    edx,0x1
1000a21d:	0f ab 04 24          	bts    DWORD PTR [esp],eax
1000a221:	eb f1                	jmp    0x1000a214
1000a223:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000a226:	83 c9 ff             	or     ecx,0xffffffff
1000a229:	8d 49 00             	lea    ecx,[ecx+0x0]
1000a22c:	83 c1 01             	add    ecx,0x1
1000a22f:	8a 06                	mov    al,BYTE PTR [esi]
1000a231:	0a c0                	or     al,al
1000a233:	74 09                	je     0x1000a23e
1000a235:	83 c6 01             	add    esi,0x1
1000a238:	0f a3 04 24          	bt     DWORD PTR [esp],eax
1000a23c:	73 ee                	jae    0x1000a22c
1000a23e:	8b c1                	mov    eax,ecx
1000a240:	83 c4 20             	add    esp,0x20
1000a243:	5e                   	pop    esi
1000a244:	c9                   	leave  
1000a245:	c3                   	ret    
1000a246:	cc                   	int3   
1000a247:	cc                   	int3   
1000a248:	cc                   	int3   
1000a249:	cc                   	int3   
1000a24a:	cc                   	int3   
1000a24b:	cc                   	int3   
1000a24c:	cc                   	int3   
1000a24d:	cc                   	int3   
1000a24e:	cc                   	int3   
1000a24f:	cc                   	int3   
1000a250:	55                   	push   ebp
1000a251:	8b ec                	mov    ebp,esp
1000a253:	56                   	push   esi
1000a254:	33 c0                	xor    eax,eax
1000a256:	50                   	push   eax
1000a257:	50                   	push   eax
1000a258:	50                   	push   eax
1000a259:	50                   	push   eax
1000a25a:	50                   	push   eax
1000a25b:	50                   	push   eax
1000a25c:	50                   	push   eax
1000a25d:	50                   	push   eax
1000a25e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
1000a261:	8d 49 00             	lea    ecx,[ecx+0x0]
1000a264:	8a 02                	mov    al,BYTE PTR [edx]
1000a266:	0a c0                	or     al,al
1000a268:	74 09                	je     0x1000a273
1000a26a:	83 c2 01             	add    edx,0x1
1000a26d:	0f ab 04 24          	bts    DWORD PTR [esp],eax
1000a271:	eb f1                	jmp    0x1000a264
1000a273:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000a276:	8b ff                	mov    edi,edi
1000a278:	8a 06                	mov    al,BYTE PTR [esi]
1000a27a:	0a c0                	or     al,al
1000a27c:	74 0c                	je     0x1000a28a
1000a27e:	83 c6 01             	add    esi,0x1
1000a281:	0f a3 04 24          	bt     DWORD PTR [esp],eax
1000a285:	73 f1                	jae    0x1000a278
1000a287:	8d 46 ff             	lea    eax,[esi-0x1]
1000a28a:	83 c4 20             	add    esp,0x20
1000a28d:	5e                   	pop    esi
1000a28e:	c9                   	leave  
1000a28f:	c3                   	ret    
1000a290:	55                   	push   ebp
1000a291:	8b ec                	mov    ebp,esp
1000a293:	83 ec 18             	sub    esp,0x18
1000a296:	53                   	push   ebx
1000a297:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000a29a:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000a29d:	e8 78 9b ff ff       	call   0x10003e1a
1000a2a2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000a2a5:	8d 43 01             	lea    eax,[ebx+0x1]
1000a2a8:	3d 00 01 00 00       	cmp    eax,0x100
1000a2ad:	77 0f                	ja     0x1000a2be
1000a2af:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000a2b2:	8b 80 c8 00 00 00    	mov    eax,DWORD PTR [eax+0xc8]
1000a2b8:	0f b7 04 58          	movzx  eax,WORD PTR [eax+ebx*2]
1000a2bc:	eb 75                	jmp    0x1000a333
1000a2be:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
1000a2c1:	c1 7d 08 08          	sar    DWORD PTR [ebp+0x8],0x8
1000a2c5:	8d 45 e8             	lea    eax,[ebp-0x18]
1000a2c8:	50                   	push   eax
1000a2c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000a2cc:	25 ff 00 00 00       	and    eax,0xff
1000a2d1:	50                   	push   eax
1000a2d2:	e8 6f 00 00 00       	call   0x1000a346
1000a2d7:	85 c0                	test   eax,eax
1000a2d9:	59                   	pop    ecx
1000a2da:	59                   	pop    ecx
1000a2db:	74 12                	je     0x1000a2ef
1000a2dd:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
1000a2e0:	6a 02                	push   0x2
1000a2e2:	88 45 f8             	mov    BYTE PTR [ebp-0x8],al
1000a2e5:	88 5d f9             	mov    BYTE PTR [ebp-0x7],bl
1000a2e8:	c6 45 fa 00          	mov    BYTE PTR [ebp-0x6],0x0
1000a2ec:	59                   	pop    ecx
1000a2ed:	eb 0a                	jmp    0x1000a2f9
1000a2ef:	33 c9                	xor    ecx,ecx
1000a2f1:	88 5d f8             	mov    BYTE PTR [ebp-0x8],bl
1000a2f4:	c6 45 f9 00          	mov    BYTE PTR [ebp-0x7],0x0
1000a2f8:	41                   	inc    ecx
1000a2f9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000a2fc:	6a 01                	push   0x1
1000a2fe:	ff 70 14             	push   DWORD PTR [eax+0x14]
1000a301:	ff 70 04             	push   DWORD PTR [eax+0x4]
1000a304:	8d 45 fc             	lea    eax,[ebp-0x4]
1000a307:	50                   	push   eax
1000a308:	51                   	push   ecx
1000a309:	8d 45 f8             	lea    eax,[ebp-0x8]
1000a30c:	50                   	push   eax
1000a30d:	8d 45 e8             	lea    eax,[ebp-0x18]
1000a310:	6a 01                	push   0x1
1000a312:	50                   	push   eax
1000a313:	e8 45 fc ff ff       	call   0x10009f5d
1000a318:	83 c4 20             	add    esp,0x20
1000a31b:	85 c0                	test   eax,eax
1000a31d:	75 10                	jne    0x1000a32f
1000a31f:	38 45 f4             	cmp    BYTE PTR [ebp-0xc],al
1000a322:	74 07                	je     0x1000a32b
1000a324:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
1000a327:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000a32b:	33 c0                	xor    eax,eax
1000a32d:	eb 14                	jmp    0x1000a343
1000a32f:	0f b7 45 fc          	movzx  eax,WORD PTR [ebp-0x4]
1000a333:	23 45 0c             	and    eax,DWORD PTR [ebp+0xc]
1000a336:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
1000a33a:	74 07                	je     0x1000a343
1000a33c:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000a33f:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
1000a343:	5b                   	pop    ebx
1000a344:	c9                   	leave  
1000a345:	c3                   	ret    
1000a346:	55                   	push   ebp
1000a347:	8b ec                	mov    ebp,esp
1000a349:	83 ec 10             	sub    esp,0x10
1000a34c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000a34f:	8d 4d f0             	lea    ecx,[ebp-0x10]
1000a352:	e8 c3 9a ff ff       	call   0x10003e1a
1000a357:	0f b6 45 08          	movzx  eax,BYTE PTR [ebp+0x8]
1000a35b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000a35e:	8b 89 c8 00 00 00    	mov    ecx,DWORD PTR [ecx+0xc8]
1000a364:	0f b7 04 41          	movzx  eax,WORD PTR [ecx+eax*2]
1000a368:	25 00 80 00 00       	and    eax,0x8000
1000a36d:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000a371:	74 07                	je     0x1000a37a
1000a373:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000a376:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
1000a37a:	c9                   	leave  
1000a37b:	c3                   	ret    
1000a37c:	55                   	push   ebp
1000a37d:	8b ec                	mov    ebp,esp
1000a37f:	83 ec 2c             	sub    esp,0x2c
1000a382:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000a385:	0f b7 48 0a          	movzx  ecx,WORD PTR [eax+0xa]
1000a389:	53                   	push   ebx
1000a38a:	8b d9                	mov    ebx,ecx
1000a38c:	81 e1 00 80 00 00    	and    ecx,0x8000
1000a392:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
1000a395:	8b 48 06             	mov    ecx,DWORD PTR [eax+0x6]
1000a398:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
1000a39b:	8b 48 02             	mov    ecx,DWORD PTR [eax+0x2]
1000a39e:	0f b7 00             	movzx  eax,WORD PTR [eax]
1000a3a1:	81 e3 ff 7f 00 00    	and    ebx,0x7fff
1000a3a7:	81 eb ff 3f 00 00    	sub    ebx,0x3fff
1000a3ad:	c1 e0 10             	shl    eax,0x10
1000a3b0:	81 fb 01 c0 ff ff    	cmp    ebx,0xffffc001
1000a3b6:	57                   	push   edi
1000a3b7:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
1000a3ba:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000a3bd:	75 27                	jne    0x1000a3e6
1000a3bf:	33 db                	xor    ebx,ebx
1000a3c1:	33 c0                	xor    eax,eax
1000a3c3:	39 5c 85 e0          	cmp    DWORD PTR [ebp+eax*4-0x20],ebx
1000a3c7:	75 0d                	jne    0x1000a3d6
1000a3c9:	40                   	inc    eax
1000a3ca:	83 f8 03             	cmp    eax,0x3
1000a3cd:	7c f4                	jl     0x1000a3c3
1000a3cf:	33 c0                	xor    eax,eax
1000a3d1:	e9 a5 04 00 00       	jmp    0x1000a87b
1000a3d6:	33 c0                	xor    eax,eax
1000a3d8:	8d 7d e0             	lea    edi,[ebp-0x20]
1000a3db:	ab                   	stos   DWORD PTR es:[edi],eax
1000a3dc:	ab                   	stos   DWORD PTR es:[edi],eax
1000a3dd:	6a 02                	push   0x2
1000a3df:	ab                   	stos   DWORD PTR es:[edi],eax
1000a3e0:	58                   	pop    eax
1000a3e1:	e9 95 04 00 00       	jmp    0x1000a87b
1000a3e6:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a3ea:	56                   	push   esi
1000a3eb:	8d 75 e0             	lea    esi,[ebp-0x20]
1000a3ee:	8d 7d d4             	lea    edi,[ebp-0x2c]
1000a3f1:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a3f2:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a3f3:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a3f4:	8b 35 a8 0b 01 10    	mov    esi,DWORD PTR ds:0x10010ba8
1000a3fa:	4e                   	dec    esi
1000a3fb:	8d 4e 01             	lea    ecx,[esi+0x1]
1000a3fe:	8b c1                	mov    eax,ecx
1000a400:	99                   	cdq    
1000a401:	83 e2 1f             	and    edx,0x1f
1000a404:	03 c2                	add    eax,edx
1000a406:	c1 f8 05             	sar    eax,0x5
1000a409:	8b d1                	mov    edx,ecx
1000a40b:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a411:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
1000a414:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000a417:	79 05                	jns    0x1000a41e
1000a419:	4a                   	dec    edx
1000a41a:	83 ca e0             	or     edx,0xffffffe0
1000a41d:	42                   	inc    edx
1000a41e:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000a422:	6a 1f                	push   0x1f
1000a424:	33 c0                	xor    eax,eax
1000a426:	59                   	pop    ecx
1000a427:	2b ca                	sub    ecx,edx
1000a429:	40                   	inc    eax
1000a42a:	d3 e0                	shl    eax,cl
1000a42c:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
1000a42f:	85 07                	test   DWORD PTR [edi],eax
1000a431:	0f 84 8d 00 00 00    	je     0x1000a4c4
1000a437:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000a43a:	83 ca ff             	or     edx,0xffffffff
1000a43d:	d3 e2                	shl    edx,cl
1000a43f:	f7 d2                	not    edx
1000a441:	85 54 85 e0          	test   DWORD PTR [ebp+eax*4-0x20],edx
1000a445:	eb 05                	jmp    0x1000a44c
1000a447:	83 7c 85 e0 00       	cmp    DWORD PTR [ebp+eax*4-0x20],0x0
1000a44c:	75 08                	jne    0x1000a456
1000a44e:	40                   	inc    eax
1000a44f:	83 f8 03             	cmp    eax,0x3
1000a452:	7c f3                	jl     0x1000a447
1000a454:	eb 6e                	jmp    0x1000a4c4
1000a456:	8b c6                	mov    eax,esi
1000a458:	99                   	cdq    
1000a459:	6a 1f                	push   0x1f
1000a45b:	59                   	pop    ecx
1000a45c:	23 d1                	and    edx,ecx
1000a45e:	03 c2                	add    eax,edx
1000a460:	c1 f8 05             	sar    eax,0x5
1000a463:	81 e6 1f 00 00 80    	and    esi,0x8000001f
1000a469:	79 05                	jns    0x1000a470
1000a46b:	4e                   	dec    esi
1000a46c:	83 ce e0             	or     esi,0xffffffe0
1000a46f:	46                   	inc    esi
1000a470:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000a474:	2b ce                	sub    ecx,esi
1000a476:	33 d2                	xor    edx,edx
1000a478:	42                   	inc    edx
1000a479:	d3 e2                	shl    edx,cl
1000a47b:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a47f:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a481:	03 f2                	add    esi,edx
1000a483:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
1000a486:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a488:	39 75 08             	cmp    DWORD PTR [ebp+0x8],esi
1000a48b:	72 22                	jb     0x1000a4af
1000a48d:	39 55 08             	cmp    DWORD PTR [ebp+0x8],edx
1000a490:	eb 1b                	jmp    0x1000a4ad
1000a492:	85 c9                	test   ecx,ecx
1000a494:	74 2b                	je     0x1000a4c1
1000a496:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000a49a:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a49e:	8b 11                	mov    edx,DWORD PTR [ecx]
1000a4a0:	8d 72 01             	lea    esi,[edx+0x1]
1000a4a3:	3b f2                	cmp    esi,edx
1000a4a5:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
1000a4a8:	72 05                	jb     0x1000a4af
1000a4aa:	83 fe 01             	cmp    esi,0x1
1000a4ad:	73 07                	jae    0x1000a4b6
1000a4af:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
1000a4b6:	48                   	dec    eax
1000a4b7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
1000a4ba:	89 11                	mov    DWORD PTR [ecx],edx
1000a4bc:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000a4bf:	79 d1                	jns    0x1000a492
1000a4c1:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
1000a4c4:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000a4c7:	83 c8 ff             	or     eax,0xffffffff
1000a4ca:	d3 e0                	shl    eax,cl
1000a4cc:	21 07                	and    DWORD PTR [edi],eax
1000a4ce:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000a4d1:	40                   	inc    eax
1000a4d2:	83 f8 03             	cmp    eax,0x3
1000a4d5:	7d 0d                	jge    0x1000a4e4
1000a4d7:	6a 03                	push   0x3
1000a4d9:	59                   	pop    ecx
1000a4da:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000a4de:	2b c8                	sub    ecx,eax
1000a4e0:	33 c0                	xor    eax,eax
1000a4e2:	f3 ab                	rep stos DWORD PTR es:[edi],eax
1000a4e4:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
1000a4e8:	74 01                	je     0x1000a4eb
1000a4ea:	43                   	inc    ebx
1000a4eb:	a1 a4 0b 01 10       	mov    eax,ds:0x10010ba4
1000a4f0:	8b c8                	mov    ecx,eax
1000a4f2:	2b 0d a8 0b 01 10    	sub    ecx,DWORD PTR ds:0x10010ba8
1000a4f8:	3b d9                	cmp    ebx,ecx
1000a4fa:	7d 0d                	jge    0x1000a509
1000a4fc:	33 c0                	xor    eax,eax
1000a4fe:	8d 7d e0             	lea    edi,[ebp-0x20]
1000a501:	ab                   	stos   DWORD PTR es:[edi],eax
1000a502:	ab                   	stos   DWORD PTR es:[edi],eax
1000a503:	ab                   	stos   DWORD PTR es:[edi],eax
1000a504:	e9 0d 02 00 00       	jmp    0x1000a716
1000a509:	3b d8                	cmp    ebx,eax
1000a50b:	0f 8f 0f 02 00 00    	jg     0x1000a720
1000a511:	2b 45 f0             	sub    eax,DWORD PTR [ebp-0x10]
1000a514:	8d 75 d4             	lea    esi,[ebp-0x2c]
1000a517:	8b c8                	mov    ecx,eax
1000a519:	8d 7d e0             	lea    edi,[ebp-0x20]
1000a51c:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a51d:	99                   	cdq    
1000a51e:	83 e2 1f             	and    edx,0x1f
1000a521:	03 c2                	add    eax,edx
1000a523:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a524:	8b d1                	mov    edx,ecx
1000a526:	c1 f8 05             	sar    eax,0x5
1000a529:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a52f:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a530:	79 05                	jns    0x1000a537
1000a532:	4a                   	dec    edx
1000a533:	83 ca e0             	or     edx,0xffffffe0
1000a536:	42                   	inc    edx
1000a537:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000a53b:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a53f:	83 cf ff             	or     edi,0xffffffff
1000a542:	8b ca                	mov    ecx,edx
1000a544:	d3 e7                	shl    edi,cl
1000a546:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000a54d:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000a550:	f7 d7                	not    edi
1000a552:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000a555:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000a559:	8b 33                	mov    esi,DWORD PTR [ebx]
1000a55b:	8b ce                	mov    ecx,esi
1000a55d:	23 cf                	and    ecx,edi
1000a55f:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000a562:	8b ca                	mov    ecx,edx
1000a564:	d3 ee                	shr    esi,cl
1000a566:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000a569:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000a56c:	89 33                	mov    DWORD PTR [ebx],esi
1000a56e:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000a571:	d3 e6                	shl    esi,cl
1000a573:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000a576:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000a57a:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000a57d:	7c d3                	jl     0x1000a552
1000a57f:	8b f0                	mov    esi,eax
1000a581:	6a 02                	push   0x2
1000a583:	c1 e6 02             	shl    esi,0x2
1000a586:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000a589:	5a                   	pop    edx
1000a58a:	2b ce                	sub    ecx,esi
1000a58c:	3b d0                	cmp    edx,eax
1000a58e:	7c 08                	jl     0x1000a598
1000a590:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a592:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000a596:	eb 05                	jmp    0x1000a59d
1000a598:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000a59d:	4a                   	dec    edx
1000a59e:	83 e9 04             	sub    ecx,0x4
1000a5a1:	85 d2                	test   edx,edx
1000a5a3:	7d e7                	jge    0x1000a58c
1000a5a5:	8b 35 a8 0b 01 10    	mov    esi,DWORD PTR ds:0x10010ba8
1000a5ab:	4e                   	dec    esi
1000a5ac:	8d 4e 01             	lea    ecx,[esi+0x1]
1000a5af:	8b c1                	mov    eax,ecx
1000a5b1:	99                   	cdq    
1000a5b2:	83 e2 1f             	and    edx,0x1f
1000a5b5:	03 c2                	add    eax,edx
1000a5b7:	c1 f8 05             	sar    eax,0x5
1000a5ba:	8b d1                	mov    edx,ecx
1000a5bc:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a5c2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000a5c5:	79 05                	jns    0x1000a5cc
1000a5c7:	4a                   	dec    edx
1000a5c8:	83 ca e0             	or     edx,0xffffffe0
1000a5cb:	42                   	inc    edx
1000a5cc:	6a 1f                	push   0x1f
1000a5ce:	59                   	pop    ecx
1000a5cf:	2b ca                	sub    ecx,edx
1000a5d1:	33 d2                	xor    edx,edx
1000a5d3:	42                   	inc    edx
1000a5d4:	d3 e2                	shl    edx,cl
1000a5d6:	8d 5c 85 e0          	lea    ebx,[ebp+eax*4-0x20]
1000a5da:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000a5dd:	85 13                	test   DWORD PTR [ebx],edx
1000a5df:	0f 84 82 00 00 00    	je     0x1000a667
1000a5e5:	83 ca ff             	or     edx,0xffffffff
1000a5e8:	d3 e2                	shl    edx,cl
1000a5ea:	f7 d2                	not    edx
1000a5ec:	85 54 85 e0          	test   DWORD PTR [ebp+eax*4-0x20],edx
1000a5f0:	eb 05                	jmp    0x1000a5f7
1000a5f2:	83 7c 85 e0 00       	cmp    DWORD PTR [ebp+eax*4-0x20],0x0
1000a5f7:	75 08                	jne    0x1000a601
1000a5f9:	40                   	inc    eax
1000a5fa:	83 f8 03             	cmp    eax,0x3
1000a5fd:	7c f3                	jl     0x1000a5f2
1000a5ff:	eb 66                	jmp    0x1000a667
1000a601:	8b c6                	mov    eax,esi
1000a603:	99                   	cdq    
1000a604:	6a 1f                	push   0x1f
1000a606:	59                   	pop    ecx
1000a607:	23 d1                	and    edx,ecx
1000a609:	03 c2                	add    eax,edx
1000a60b:	c1 f8 05             	sar    eax,0x5
1000a60e:	81 e6 1f 00 00 80    	and    esi,0x8000001f
1000a614:	79 05                	jns    0x1000a61b
1000a616:	4e                   	dec    esi
1000a617:	83 ce e0             	or     esi,0xffffffe0
1000a61a:	46                   	inc    esi
1000a61b:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a61f:	33 d2                	xor    edx,edx
1000a621:	2b ce                	sub    ecx,esi
1000a623:	42                   	inc    edx
1000a624:	d3 e2                	shl    edx,cl
1000a626:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a62a:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a62c:	8d 3c 16             	lea    edi,[esi+edx*1]
1000a62f:	3b fe                	cmp    edi,esi
1000a631:	72 04                	jb     0x1000a637
1000a633:	3b fa                	cmp    edi,edx
1000a635:	73 07                	jae    0x1000a63e
1000a637:	c7 45 08 01 00 00 00 	mov    DWORD PTR [ebp+0x8],0x1
1000a63e:	89 39                	mov    DWORD PTR [ecx],edi
1000a640:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000a643:	eb 1f                	jmp    0x1000a664
1000a645:	85 c9                	test   ecx,ecx
1000a647:	74 1e                	je     0x1000a667
1000a649:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a64d:	8b 11                	mov    edx,DWORD PTR [ecx]
1000a64f:	8d 72 01             	lea    esi,[edx+0x1]
1000a652:	33 ff                	xor    edi,edi
1000a654:	3b f2                	cmp    esi,edx
1000a656:	72 05                	jb     0x1000a65d
1000a658:	83 fe 01             	cmp    esi,0x1
1000a65b:	73 03                	jae    0x1000a660
1000a65d:	33 ff                	xor    edi,edi
1000a65f:	47                   	inc    edi
1000a660:	89 31                	mov    DWORD PTR [ecx],esi
1000a662:	8b cf                	mov    ecx,edi
1000a664:	48                   	dec    eax
1000a665:	79 de                	jns    0x1000a645
1000a667:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000a66a:	83 c8 ff             	or     eax,0xffffffff
1000a66d:	d3 e0                	shl    eax,cl
1000a66f:	21 03                	and    DWORD PTR [ebx],eax
1000a671:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000a674:	40                   	inc    eax
1000a675:	83 f8 03             	cmp    eax,0x3
1000a678:	7d 0d                	jge    0x1000a687
1000a67a:	6a 03                	push   0x3
1000a67c:	59                   	pop    ecx
1000a67d:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000a681:	2b c8                	sub    ecx,eax
1000a683:	33 c0                	xor    eax,eax
1000a685:	f3 ab                	rep stos DWORD PTR es:[edi],eax
1000a687:	8b 0d ac 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bac
1000a68d:	41                   	inc    ecx
1000a68e:	8b c1                	mov    eax,ecx
1000a690:	99                   	cdq    
1000a691:	83 e2 1f             	and    edx,0x1f
1000a694:	03 c2                	add    eax,edx
1000a696:	8b d1                	mov    edx,ecx
1000a698:	c1 f8 05             	sar    eax,0x5
1000a69b:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a6a1:	79 05                	jns    0x1000a6a8
1000a6a3:	4a                   	dec    edx
1000a6a4:	83 ca e0             	or     edx,0xffffffe0
1000a6a7:	42                   	inc    edx
1000a6a8:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000a6ac:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a6b0:	83 cf ff             	or     edi,0xffffffff
1000a6b3:	8b ca                	mov    ecx,edx
1000a6b5:	d3 e7                	shl    edi,cl
1000a6b7:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000a6be:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000a6c1:	f7 d7                	not    edi
1000a6c3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000a6c6:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000a6ca:	8b 33                	mov    esi,DWORD PTR [ebx]
1000a6cc:	8b ce                	mov    ecx,esi
1000a6ce:	23 cf                	and    ecx,edi
1000a6d0:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000a6d3:	8b ca                	mov    ecx,edx
1000a6d5:	d3 ee                	shr    esi,cl
1000a6d7:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000a6da:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000a6dd:	89 33                	mov    DWORD PTR [ebx],esi
1000a6df:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000a6e2:	d3 e6                	shl    esi,cl
1000a6e4:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000a6e7:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000a6eb:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000a6ee:	7c d3                	jl     0x1000a6c3
1000a6f0:	8b f0                	mov    esi,eax
1000a6f2:	6a 02                	push   0x2
1000a6f4:	c1 e6 02             	shl    esi,0x2
1000a6f7:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000a6fa:	5a                   	pop    edx
1000a6fb:	2b ce                	sub    ecx,esi
1000a6fd:	3b d0                	cmp    edx,eax
1000a6ff:	7c 08                	jl     0x1000a709
1000a701:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a703:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000a707:	eb 05                	jmp    0x1000a70e
1000a709:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000a70e:	4a                   	dec    edx
1000a70f:	83 e9 04             	sub    ecx,0x4
1000a712:	85 d2                	test   edx,edx
1000a714:	7d e7                	jge    0x1000a6fd
1000a716:	6a 02                	push   0x2
1000a718:	33 db                	xor    ebx,ebx
1000a71a:	58                   	pop    eax
1000a71b:	e9 5a 01 00 00       	jmp    0x1000a87a
1000a720:	3b 1d a0 0b 01 10    	cmp    ebx,DWORD PTR ds:0x10010ba0
1000a726:	8b 0d ac 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bac
1000a72c:	0f 8c ad 00 00 00    	jl     0x1000a7df
1000a732:	33 c0                	xor    eax,eax
1000a734:	8d 7d e0             	lea    edi,[ebp-0x20]
1000a737:	ab                   	stos   DWORD PTR es:[edi],eax
1000a738:	ab                   	stos   DWORD PTR es:[edi],eax
1000a739:	ab                   	stos   DWORD PTR es:[edi],eax
1000a73a:	81 4d e0 00 00 00 80 	or     DWORD PTR [ebp-0x20],0x80000000
1000a741:	8b c1                	mov    eax,ecx
1000a743:	99                   	cdq    
1000a744:	83 e2 1f             	and    edx,0x1f
1000a747:	03 c2                	add    eax,edx
1000a749:	8b d1                	mov    edx,ecx
1000a74b:	c1 f8 05             	sar    eax,0x5
1000a74e:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a754:	79 05                	jns    0x1000a75b
1000a756:	4a                   	dec    edx
1000a757:	83 ca e0             	or     edx,0xffffffe0
1000a75a:	42                   	inc    edx
1000a75b:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000a75f:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a763:	83 cf ff             	or     edi,0xffffffff
1000a766:	8b ca                	mov    ecx,edx
1000a768:	d3 e7                	shl    edi,cl
1000a76a:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000a771:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000a774:	f7 d7                	not    edi
1000a776:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000a779:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000a77d:	8b 33                	mov    esi,DWORD PTR [ebx]
1000a77f:	8b ce                	mov    ecx,esi
1000a781:	23 cf                	and    ecx,edi
1000a783:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000a786:	8b ca                	mov    ecx,edx
1000a788:	d3 ee                	shr    esi,cl
1000a78a:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000a78d:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000a790:	89 33                	mov    DWORD PTR [ebx],esi
1000a792:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000a795:	d3 e6                	shl    esi,cl
1000a797:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000a79a:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000a79e:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000a7a1:	7c d3                	jl     0x1000a776
1000a7a3:	8b f0                	mov    esi,eax
1000a7a5:	6a 02                	push   0x2
1000a7a7:	c1 e6 02             	shl    esi,0x2
1000a7aa:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000a7ad:	5a                   	pop    edx
1000a7ae:	2b ce                	sub    ecx,esi
1000a7b0:	3b d0                	cmp    edx,eax
1000a7b2:	7c 08                	jl     0x1000a7bc
1000a7b4:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a7b6:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000a7ba:	eb 05                	jmp    0x1000a7c1
1000a7bc:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000a7c1:	4a                   	dec    edx
1000a7c2:	83 e9 04             	sub    ecx,0x4
1000a7c5:	85 d2                	test   edx,edx
1000a7c7:	7d e7                	jge    0x1000a7b0
1000a7c9:	a1 a0 0b 01 10       	mov    eax,ds:0x10010ba0
1000a7ce:	8b 0d b4 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bb4
1000a7d4:	8d 1c 01             	lea    ebx,[ecx+eax*1]
1000a7d7:	33 c0                	xor    eax,eax
1000a7d9:	40                   	inc    eax
1000a7da:	e9 9b 00 00 00       	jmp    0x1000a87a
1000a7df:	a1 b4 0b 01 10       	mov    eax,ds:0x10010bb4
1000a7e4:	81 65 e0 ff ff ff 7f 	and    DWORD PTR [ebp-0x20],0x7fffffff
1000a7eb:	03 d8                	add    ebx,eax
1000a7ed:	8b c1                	mov    eax,ecx
1000a7ef:	99                   	cdq    
1000a7f0:	83 e2 1f             	and    edx,0x1f
1000a7f3:	03 c2                	add    eax,edx
1000a7f5:	8b d1                	mov    edx,ecx
1000a7f7:	c1 f8 05             	sar    eax,0x5
1000a7fa:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a800:	79 05                	jns    0x1000a807
1000a802:	4a                   	dec    edx
1000a803:	83 ca e0             	or     edx,0xffffffe0
1000a806:	42                   	inc    edx
1000a807:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000a80b:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a80f:	83 ce ff             	or     esi,0xffffffff
1000a812:	8b ca                	mov    ecx,edx
1000a814:	d3 e6                	shl    esi,cl
1000a816:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000a81d:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000a820:	f7 d6                	not    esi
1000a822:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000a825:	8b 7c 8d e0          	mov    edi,DWORD PTR [ebp+ecx*4-0x20]
1000a829:	8b cf                	mov    ecx,edi
1000a82b:	23 ce                	and    ecx,esi
1000a82d:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000a830:	8b ca                	mov    ecx,edx
1000a832:	d3 ef                	shr    edi,cl
1000a834:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000a837:	0b 7d f4             	or     edi,DWORD PTR [ebp-0xc]
1000a83a:	89 7c 8d e0          	mov    DWORD PTR [ebp+ecx*4-0x20],edi
1000a83e:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
1000a841:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000a844:	d3 e7                	shl    edi,cl
1000a846:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000a849:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000a84d:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000a850:	7c d0                	jl     0x1000a822
1000a852:	8b f0                	mov    esi,eax
1000a854:	6a 02                	push   0x2
1000a856:	c1 e6 02             	shl    esi,0x2
1000a859:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000a85c:	5a                   	pop    edx
1000a85d:	2b ce                	sub    ecx,esi
1000a85f:	3b d0                	cmp    edx,eax
1000a861:	7c 08                	jl     0x1000a86b
1000a863:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a865:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000a869:	eb 05                	jmp    0x1000a870
1000a86b:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000a870:	4a                   	dec    edx
1000a871:	83 e9 04             	sub    ecx,0x4
1000a874:	85 d2                	test   edx,edx
1000a876:	7d e7                	jge    0x1000a85f
1000a878:	33 c0                	xor    eax,eax
1000a87a:	5e                   	pop    esi
1000a87b:	6a 1f                	push   0x1f
1000a87d:	59                   	pop    ecx
1000a87e:	2b 0d ac 0b 01 10    	sub    ecx,DWORD PTR ds:0x10010bac
1000a884:	d3 e3                	shl    ebx,cl
1000a886:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000a889:	f7 d9                	neg    ecx
1000a88b:	1b c9                	sbb    ecx,ecx
1000a88d:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000a893:	0b d9                	or     ebx,ecx
1000a895:	8b 0d b0 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bb0
1000a89b:	0b 5d e0             	or     ebx,DWORD PTR [ebp-0x20]
1000a89e:	83 f9 40             	cmp    ecx,0x40
1000a8a1:	75 0d                	jne    0x1000a8b0
1000a8a3:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000a8a6:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
1000a8a9:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000a8ac:	89 11                	mov    DWORD PTR [ecx],edx
1000a8ae:	eb 0a                	jmp    0x1000a8ba
1000a8b0:	83 f9 20             	cmp    ecx,0x20
1000a8b3:	75 05                	jne    0x1000a8ba
1000a8b5:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000a8b8:	89 19                	mov    DWORD PTR [ecx],ebx
1000a8ba:	5f                   	pop    edi
1000a8bb:	5b                   	pop    ebx
1000a8bc:	c9                   	leave  
1000a8bd:	c3                   	ret    
1000a8be:	55                   	push   ebp
1000a8bf:	8b ec                	mov    ebp,esp
1000a8c1:	83 ec 2c             	sub    esp,0x2c
1000a8c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000a8c7:	0f b7 48 0a          	movzx  ecx,WORD PTR [eax+0xa]
1000a8cb:	53                   	push   ebx
1000a8cc:	8b d9                	mov    ebx,ecx
1000a8ce:	81 e1 00 80 00 00    	and    ecx,0x8000
1000a8d4:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
1000a8d7:	8b 48 06             	mov    ecx,DWORD PTR [eax+0x6]
1000a8da:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
1000a8dd:	8b 48 02             	mov    ecx,DWORD PTR [eax+0x2]
1000a8e0:	0f b7 00             	movzx  eax,WORD PTR [eax]
1000a8e3:	81 e3 ff 7f 00 00    	and    ebx,0x7fff
1000a8e9:	81 eb ff 3f 00 00    	sub    ebx,0x3fff
1000a8ef:	c1 e0 10             	shl    eax,0x10
1000a8f2:	81 fb 01 c0 ff ff    	cmp    ebx,0xffffc001
1000a8f8:	57                   	push   edi
1000a8f9:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
1000a8fc:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000a8ff:	75 27                	jne    0x1000a928
1000a901:	33 db                	xor    ebx,ebx
1000a903:	33 c0                	xor    eax,eax
1000a905:	39 5c 85 e0          	cmp    DWORD PTR [ebp+eax*4-0x20],ebx
1000a909:	75 0d                	jne    0x1000a918
1000a90b:	40                   	inc    eax
1000a90c:	83 f8 03             	cmp    eax,0x3
1000a90f:	7c f4                	jl     0x1000a905
1000a911:	33 c0                	xor    eax,eax
1000a913:	e9 a5 04 00 00       	jmp    0x1000adbd
1000a918:	33 c0                	xor    eax,eax
1000a91a:	8d 7d e0             	lea    edi,[ebp-0x20]
1000a91d:	ab                   	stos   DWORD PTR es:[edi],eax
1000a91e:	ab                   	stos   DWORD PTR es:[edi],eax
1000a91f:	6a 02                	push   0x2
1000a921:	ab                   	stos   DWORD PTR es:[edi],eax
1000a922:	58                   	pop    eax
1000a923:	e9 95 04 00 00       	jmp    0x1000adbd
1000a928:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a92c:	56                   	push   esi
1000a92d:	8d 75 e0             	lea    esi,[ebp-0x20]
1000a930:	8d 7d d4             	lea    edi,[ebp-0x2c]
1000a933:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a934:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a935:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a936:	8b 35 c0 0b 01 10    	mov    esi,DWORD PTR ds:0x10010bc0
1000a93c:	4e                   	dec    esi
1000a93d:	8d 4e 01             	lea    ecx,[esi+0x1]
1000a940:	8b c1                	mov    eax,ecx
1000a942:	99                   	cdq    
1000a943:	83 e2 1f             	and    edx,0x1f
1000a946:	03 c2                	add    eax,edx
1000a948:	c1 f8 05             	sar    eax,0x5
1000a94b:	8b d1                	mov    edx,ecx
1000a94d:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a953:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
1000a956:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000a959:	79 05                	jns    0x1000a960
1000a95b:	4a                   	dec    edx
1000a95c:	83 ca e0             	or     edx,0xffffffe0
1000a95f:	42                   	inc    edx
1000a960:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000a964:	6a 1f                	push   0x1f
1000a966:	33 c0                	xor    eax,eax
1000a968:	59                   	pop    ecx
1000a969:	2b ca                	sub    ecx,edx
1000a96b:	40                   	inc    eax
1000a96c:	d3 e0                	shl    eax,cl
1000a96e:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
1000a971:	85 07                	test   DWORD PTR [edi],eax
1000a973:	0f 84 8d 00 00 00    	je     0x1000aa06
1000a979:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000a97c:	83 ca ff             	or     edx,0xffffffff
1000a97f:	d3 e2                	shl    edx,cl
1000a981:	f7 d2                	not    edx
1000a983:	85 54 85 e0          	test   DWORD PTR [ebp+eax*4-0x20],edx
1000a987:	eb 05                	jmp    0x1000a98e
1000a989:	83 7c 85 e0 00       	cmp    DWORD PTR [ebp+eax*4-0x20],0x0
1000a98e:	75 08                	jne    0x1000a998
1000a990:	40                   	inc    eax
1000a991:	83 f8 03             	cmp    eax,0x3
1000a994:	7c f3                	jl     0x1000a989
1000a996:	eb 6e                	jmp    0x1000aa06
1000a998:	8b c6                	mov    eax,esi
1000a99a:	99                   	cdq    
1000a99b:	6a 1f                	push   0x1f
1000a99d:	59                   	pop    ecx
1000a99e:	23 d1                	and    edx,ecx
1000a9a0:	03 c2                	add    eax,edx
1000a9a2:	c1 f8 05             	sar    eax,0x5
1000a9a5:	81 e6 1f 00 00 80    	and    esi,0x8000001f
1000a9ab:	79 05                	jns    0x1000a9b2
1000a9ad:	4e                   	dec    esi
1000a9ae:	83 ce e0             	or     esi,0xffffffe0
1000a9b1:	46                   	inc    esi
1000a9b2:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000a9b6:	2b ce                	sub    ecx,esi
1000a9b8:	33 d2                	xor    edx,edx
1000a9ba:	42                   	inc    edx
1000a9bb:	d3 e2                	shl    edx,cl
1000a9bd:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a9c1:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a9c3:	03 f2                	add    esi,edx
1000a9c5:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
1000a9c8:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a9ca:	39 75 08             	cmp    DWORD PTR [ebp+0x8],esi
1000a9cd:	72 22                	jb     0x1000a9f1
1000a9cf:	39 55 08             	cmp    DWORD PTR [ebp+0x8],edx
1000a9d2:	eb 1b                	jmp    0x1000a9ef
1000a9d4:	85 c9                	test   ecx,ecx
1000a9d6:	74 2b                	je     0x1000aa03
1000a9d8:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000a9dc:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a9e0:	8b 11                	mov    edx,DWORD PTR [ecx]
1000a9e2:	8d 72 01             	lea    esi,[edx+0x1]
1000a9e5:	3b f2                	cmp    esi,edx
1000a9e7:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
1000a9ea:	72 05                	jb     0x1000a9f1
1000a9ec:	83 fe 01             	cmp    esi,0x1
1000a9ef:	73 07                	jae    0x1000a9f8
1000a9f1:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
1000a9f8:	48                   	dec    eax
1000a9f9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
1000a9fc:	89 11                	mov    DWORD PTR [ecx],edx
1000a9fe:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000aa01:	79 d1                	jns    0x1000a9d4
1000aa03:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
1000aa06:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000aa09:	83 c8 ff             	or     eax,0xffffffff
1000aa0c:	d3 e0                	shl    eax,cl
1000aa0e:	21 07                	and    DWORD PTR [edi],eax
1000aa10:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000aa13:	40                   	inc    eax
1000aa14:	83 f8 03             	cmp    eax,0x3
1000aa17:	7d 0d                	jge    0x1000aa26
1000aa19:	6a 03                	push   0x3
1000aa1b:	59                   	pop    ecx
1000aa1c:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000aa20:	2b c8                	sub    ecx,eax
1000aa22:	33 c0                	xor    eax,eax
1000aa24:	f3 ab                	rep stos DWORD PTR es:[edi],eax
1000aa26:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
1000aa2a:	74 01                	je     0x1000aa2d
1000aa2c:	43                   	inc    ebx
1000aa2d:	a1 bc 0b 01 10       	mov    eax,ds:0x10010bbc
1000aa32:	8b c8                	mov    ecx,eax
1000aa34:	2b 0d c0 0b 01 10    	sub    ecx,DWORD PTR ds:0x10010bc0
1000aa3a:	3b d9                	cmp    ebx,ecx
1000aa3c:	7d 0d                	jge    0x1000aa4b
1000aa3e:	33 c0                	xor    eax,eax
1000aa40:	8d 7d e0             	lea    edi,[ebp-0x20]
1000aa43:	ab                   	stos   DWORD PTR es:[edi],eax
1000aa44:	ab                   	stos   DWORD PTR es:[edi],eax
1000aa45:	ab                   	stos   DWORD PTR es:[edi],eax
1000aa46:	e9 0d 02 00 00       	jmp    0x1000ac58
1000aa4b:	3b d8                	cmp    ebx,eax
1000aa4d:	0f 8f 0f 02 00 00    	jg     0x1000ac62
1000aa53:	2b 45 f0             	sub    eax,DWORD PTR [ebp-0x10]
1000aa56:	8d 75 d4             	lea    esi,[ebp-0x2c]
1000aa59:	8b c8                	mov    ecx,eax
1000aa5b:	8d 7d e0             	lea    edi,[ebp-0x20]
1000aa5e:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000aa5f:	99                   	cdq    
1000aa60:	83 e2 1f             	and    edx,0x1f
1000aa63:	03 c2                	add    eax,edx
1000aa65:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000aa66:	8b d1                	mov    edx,ecx
1000aa68:	c1 f8 05             	sar    eax,0x5
1000aa6b:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000aa71:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000aa72:	79 05                	jns    0x1000aa79
1000aa74:	4a                   	dec    edx
1000aa75:	83 ca e0             	or     edx,0xffffffe0
1000aa78:	42                   	inc    edx
1000aa79:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000aa7d:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000aa81:	83 cf ff             	or     edi,0xffffffff
1000aa84:	8b ca                	mov    ecx,edx
1000aa86:	d3 e7                	shl    edi,cl
1000aa88:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000aa8f:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000aa92:	f7 d7                	not    edi
1000aa94:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000aa97:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000aa9b:	8b 33                	mov    esi,DWORD PTR [ebx]
1000aa9d:	8b ce                	mov    ecx,esi
1000aa9f:	23 cf                	and    ecx,edi
1000aaa1:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000aaa4:	8b ca                	mov    ecx,edx
1000aaa6:	d3 ee                	shr    esi,cl
1000aaa8:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000aaab:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000aaae:	89 33                	mov    DWORD PTR [ebx],esi
1000aab0:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000aab3:	d3 e6                	shl    esi,cl
1000aab5:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000aab8:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000aabc:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000aabf:	7c d3                	jl     0x1000aa94
1000aac1:	8b f0                	mov    esi,eax
1000aac3:	6a 02                	push   0x2
1000aac5:	c1 e6 02             	shl    esi,0x2
1000aac8:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000aacb:	5a                   	pop    edx
1000aacc:	2b ce                	sub    ecx,esi
1000aace:	3b d0                	cmp    edx,eax
1000aad0:	7c 08                	jl     0x1000aada
1000aad2:	8b 31                	mov    esi,DWORD PTR [ecx]
1000aad4:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000aad8:	eb 05                	jmp    0x1000aadf
1000aada:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000aadf:	4a                   	dec    edx
1000aae0:	83 e9 04             	sub    ecx,0x4
1000aae3:	85 d2                	test   edx,edx
1000aae5:	7d e7                	jge    0x1000aace
1000aae7:	8b 35 c0 0b 01 10    	mov    esi,DWORD PTR ds:0x10010bc0
1000aaed:	4e                   	dec    esi
1000aaee:	8d 4e 01             	lea    ecx,[esi+0x1]
1000aaf1:	8b c1                	mov    eax,ecx
1000aaf3:	99                   	cdq    
1000aaf4:	83 e2 1f             	and    edx,0x1f
1000aaf7:	03 c2                	add    eax,edx
1000aaf9:	c1 f8 05             	sar    eax,0x5
1000aafc:	8b d1                	mov    edx,ecx
1000aafe:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000ab04:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000ab07:	79 05                	jns    0x1000ab0e
1000ab09:	4a                   	dec    edx
1000ab0a:	83 ca e0             	or     edx,0xffffffe0
1000ab0d:	42                   	inc    edx
1000ab0e:	6a 1f                	push   0x1f
1000ab10:	59                   	pop    ecx
1000ab11:	2b ca                	sub    ecx,edx
1000ab13:	33 d2                	xor    edx,edx
1000ab15:	42                   	inc    edx
1000ab16:	d3 e2                	shl    edx,cl
1000ab18:	8d 5c 85 e0          	lea    ebx,[ebp+eax*4-0x20]
1000ab1c:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000ab1f:	85 13                	test   DWORD PTR [ebx],edx
1000ab21:	0f 84 82 00 00 00    	je     0x1000aba9
1000ab27:	83 ca ff             	or     edx,0xffffffff
1000ab2a:	d3 e2                	shl    edx,cl
1000ab2c:	f7 d2                	not    edx
1000ab2e:	85 54 85 e0          	test   DWORD PTR [ebp+eax*4-0x20],edx
1000ab32:	eb 05                	jmp    0x1000ab39
1000ab34:	83 7c 85 e0 00       	cmp    DWORD PTR [ebp+eax*4-0x20],0x0
1000ab39:	75 08                	jne    0x1000ab43
1000ab3b:	40                   	inc    eax
1000ab3c:	83 f8 03             	cmp    eax,0x3
1000ab3f:	7c f3                	jl     0x1000ab34
1000ab41:	eb 66                	jmp    0x1000aba9
1000ab43:	8b c6                	mov    eax,esi
1000ab45:	99                   	cdq    
1000ab46:	6a 1f                	push   0x1f
1000ab48:	59                   	pop    ecx
1000ab49:	23 d1                	and    edx,ecx
1000ab4b:	03 c2                	add    eax,edx
1000ab4d:	c1 f8 05             	sar    eax,0x5
1000ab50:	81 e6 1f 00 00 80    	and    esi,0x8000001f
1000ab56:	79 05                	jns    0x1000ab5d
1000ab58:	4e                   	dec    esi
1000ab59:	83 ce e0             	or     esi,0xffffffe0
1000ab5c:	46                   	inc    esi
1000ab5d:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000ab61:	33 d2                	xor    edx,edx
1000ab63:	2b ce                	sub    ecx,esi
1000ab65:	42                   	inc    edx
1000ab66:	d3 e2                	shl    edx,cl
1000ab68:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000ab6c:	8b 31                	mov    esi,DWORD PTR [ecx]
1000ab6e:	8d 3c 16             	lea    edi,[esi+edx*1]
1000ab71:	3b fe                	cmp    edi,esi
1000ab73:	72 04                	jb     0x1000ab79
1000ab75:	3b fa                	cmp    edi,edx
1000ab77:	73 07                	jae    0x1000ab80
1000ab79:	c7 45 08 01 00 00 00 	mov    DWORD PTR [ebp+0x8],0x1
1000ab80:	89 39                	mov    DWORD PTR [ecx],edi
1000ab82:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000ab85:	eb 1f                	jmp    0x1000aba6
1000ab87:	85 c9                	test   ecx,ecx
1000ab89:	74 1e                	je     0x1000aba9
1000ab8b:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000ab8f:	8b 11                	mov    edx,DWORD PTR [ecx]
1000ab91:	8d 72 01             	lea    esi,[edx+0x1]
1000ab94:	33 ff                	xor    edi,edi
1000ab96:	3b f2                	cmp    esi,edx
1000ab98:	72 05                	jb     0x1000ab9f
1000ab9a:	83 fe 01             	cmp    esi,0x1
1000ab9d:	73 03                	jae    0x1000aba2
1000ab9f:	33 ff                	xor    edi,edi
1000aba1:	47                   	inc    edi
1000aba2:	89 31                	mov    DWORD PTR [ecx],esi
1000aba4:	8b cf                	mov    ecx,edi
1000aba6:	48                   	dec    eax
1000aba7:	79 de                	jns    0x1000ab87
1000aba9:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000abac:	83 c8 ff             	or     eax,0xffffffff
1000abaf:	d3 e0                	shl    eax,cl
1000abb1:	21 03                	and    DWORD PTR [ebx],eax
1000abb3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000abb6:	40                   	inc    eax
1000abb7:	83 f8 03             	cmp    eax,0x3
1000abba:	7d 0d                	jge    0x1000abc9
1000abbc:	6a 03                	push   0x3
1000abbe:	59                   	pop    ecx
1000abbf:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000abc3:	2b c8                	sub    ecx,eax
1000abc5:	33 c0                	xor    eax,eax
1000abc7:	f3 ab                	rep stos DWORD PTR es:[edi],eax
1000abc9:	8b 0d c4 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bc4
1000abcf:	41                   	inc    ecx
1000abd0:	8b c1                	mov    eax,ecx
1000abd2:	99                   	cdq    
1000abd3:	83 e2 1f             	and    edx,0x1f
1000abd6:	03 c2                	add    eax,edx
1000abd8:	8b d1                	mov    edx,ecx
1000abda:	c1 f8 05             	sar    eax,0x5
1000abdd:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000abe3:	79 05                	jns    0x1000abea
1000abe5:	4a                   	dec    edx
1000abe6:	83 ca e0             	or     edx,0xffffffe0
1000abe9:	42                   	inc    edx
1000abea:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000abee:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000abf2:	83 cf ff             	or     edi,0xffffffff
1000abf5:	8b ca                	mov    ecx,edx
1000abf7:	d3 e7                	shl    edi,cl
1000abf9:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000ac00:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000ac03:	f7 d7                	not    edi
1000ac05:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000ac08:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000ac0c:	8b 33                	mov    esi,DWORD PTR [ebx]
1000ac0e:	8b ce                	mov    ecx,esi
1000ac10:	23 cf                	and    ecx,edi
1000ac12:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000ac15:	8b ca                	mov    ecx,edx
1000ac17:	d3 ee                	shr    esi,cl
1000ac19:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000ac1c:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000ac1f:	89 33                	mov    DWORD PTR [ebx],esi
1000ac21:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000ac24:	d3 e6                	shl    esi,cl
1000ac26:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000ac29:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000ac2d:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000ac30:	7c d3                	jl     0x1000ac05
1000ac32:	8b f0                	mov    esi,eax
1000ac34:	6a 02                	push   0x2
1000ac36:	c1 e6 02             	shl    esi,0x2
1000ac39:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000ac3c:	5a                   	pop    edx
1000ac3d:	2b ce                	sub    ecx,esi
1000ac3f:	3b d0                	cmp    edx,eax
1000ac41:	7c 08                	jl     0x1000ac4b
1000ac43:	8b 31                	mov    esi,DWORD PTR [ecx]
1000ac45:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000ac49:	eb 05                	jmp    0x1000ac50
1000ac4b:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000ac50:	4a                   	dec    edx
1000ac51:	83 e9 04             	sub    ecx,0x4
1000ac54:	85 d2                	test   edx,edx
1000ac56:	7d e7                	jge    0x1000ac3f
1000ac58:	6a 02                	push   0x2
1000ac5a:	33 db                	xor    ebx,ebx
1000ac5c:	58                   	pop    eax
1000ac5d:	e9 5a 01 00 00       	jmp    0x1000adbc
1000ac62:	3b 1d b8 0b 01 10    	cmp    ebx,DWORD PTR ds:0x10010bb8
1000ac68:	8b 0d c4 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bc4
1000ac6e:	0f 8c ad 00 00 00    	jl     0x1000ad21
1000ac74:	33 c0                	xor    eax,eax
1000ac76:	8d 7d e0             	lea    edi,[ebp-0x20]
1000ac79:	ab                   	stos   DWORD PTR es:[edi],eax
1000ac7a:	ab                   	stos   DWORD PTR es:[edi],eax
1000ac7b:	ab                   	stos   DWORD PTR es:[edi],eax
1000ac7c:	81 4d e0 00 00 00 80 	or     DWORD PTR [ebp-0x20],0x80000000
1000ac83:	8b c1                	mov    eax,ecx
1000ac85:	99                   	cdq    
1000ac86:	83 e2 1f             	and    edx,0x1f
1000ac89:	03 c2                	add    eax,edx
1000ac8b:	8b d1                	mov    edx,ecx
1000ac8d:	c1 f8 05             	sar    eax,0x5
1000ac90:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000ac96:	79 05                	jns    0x1000ac9d
1000ac98:	4a                   	dec    edx
1000ac99:	83 ca e0             	or     edx,0xffffffe0
1000ac9c:	42                   	inc    edx
1000ac9d:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000aca1:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000aca5:	83 cf ff             	or     edi,0xffffffff
1000aca8:	8b ca                	mov    ecx,edx
1000acaa:	d3 e7                	shl    edi,cl
1000acac:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000acb3:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000acb6:	f7 d7                	not    edi
1000acb8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000acbb:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000acbf:	8b 33                	mov    esi,DWORD PTR [ebx]
1000acc1:	8b ce                	mov    ecx,esi
1000acc3:	23 cf                	and    ecx,edi
1000acc5:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000acc8:	8b ca                	mov    ecx,edx
1000acca:	d3 ee                	shr    esi,cl
1000accc:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000accf:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000acd2:	89 33                	mov    DWORD PTR [ebx],esi
1000acd4:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000acd7:	d3 e6                	shl    esi,cl
1000acd9:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000acdc:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000ace0:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000ace3:	7c d3                	jl     0x1000acb8
1000ace5:	8b f0                	mov    esi,eax
1000ace7:	6a 02                	push   0x2
1000ace9:	c1 e6 02             	shl    esi,0x2
1000acec:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000acef:	5a                   	pop    edx
1000acf0:	2b ce                	sub    ecx,esi
1000acf2:	3b d0                	cmp    edx,eax
1000acf4:	7c 08                	jl     0x1000acfe
1000acf6:	8b 31                	mov    esi,DWORD PTR [ecx]
1000acf8:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000acfc:	eb 05                	jmp    0x1000ad03
1000acfe:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000ad03:	4a                   	dec    edx
1000ad04:	83 e9 04             	sub    ecx,0x4
1000ad07:	85 d2                	test   edx,edx
1000ad09:	7d e7                	jge    0x1000acf2
1000ad0b:	a1 b8 0b 01 10       	mov    eax,ds:0x10010bb8
1000ad10:	8b 0d cc 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bcc
1000ad16:	8d 1c 01             	lea    ebx,[ecx+eax*1]
1000ad19:	33 c0                	xor    eax,eax
1000ad1b:	40                   	inc    eax
1000ad1c:	e9 9b 00 00 00       	jmp    0x1000adbc
1000ad21:	a1 cc 0b 01 10       	mov    eax,ds:0x10010bcc
1000ad26:	81 65 e0 ff ff ff 7f 	and    DWORD PTR [ebp-0x20],0x7fffffff
1000ad2d:	03 d8                	add    ebx,eax
1000ad2f:	8b c1                	mov    eax,ecx
1000ad31:	99                   	cdq    
1000ad32:	83 e2 1f             	and    edx,0x1f
1000ad35:	03 c2                	add    eax,edx
1000ad37:	8b d1                	mov    edx,ecx
1000ad39:	c1 f8 05             	sar    eax,0x5
1000ad3c:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000ad42:	79 05                	jns    0x1000ad49
1000ad44:	4a                   	dec    edx
1000ad45:	83 ca e0             	or     edx,0xffffffe0
1000ad48:	42                   	inc    edx
1000ad49:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000ad4d:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000ad51:	83 ce ff             	or     esi,0xffffffff
1000ad54:	8b ca                	mov    ecx,edx
1000ad56:	d3 e6                	shl    esi,cl
1000ad58:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000ad5f:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000ad62:	f7 d6                	not    esi
1000ad64:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000ad67:	8b 7c 8d e0          	mov    edi,DWORD PTR [ebp+ecx*4-0x20]
1000ad6b:	8b cf                	mov    ecx,edi
1000ad6d:	23 ce                	and    ecx,esi
1000ad6f:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000ad72:	8b ca                	mov    ecx,edx
1000ad74:	d3 ef                	shr    edi,cl
1000ad76:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000ad79:	0b 7d f4             	or     edi,DWORD PTR [ebp-0xc]
1000ad7c:	89 7c 8d e0          	mov    DWORD PTR [ebp+ecx*4-0x20],edi
1000ad80:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
1000ad83:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000ad86:	d3 e7                	shl    edi,cl
1000ad88:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000ad8b:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000ad8f:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000ad92:	7c d0                	jl     0x1000ad64
1000ad94:	8b f0                	mov    esi,eax
1000ad96:	6a 02                	push   0x2
1000ad98:	c1 e6 02             	shl    esi,0x2
1000ad9b:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000ad9e:	5a                   	pop    edx
1000ad9f:	2b ce                	sub    ecx,esi
1000ada1:	3b d0                	cmp    edx,eax
1000ada3:	7c 08                	jl     0x1000adad
1000ada5:	8b 31                	mov    esi,DWORD PTR [ecx]
1000ada7:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000adab:	eb 05                	jmp    0x1000adb2
1000adad:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000adb2:	4a                   	dec    edx
1000adb3:	83 e9 04             	sub    ecx,0x4
1000adb6:	85 d2                	test   edx,edx
1000adb8:	7d e7                	jge    0x1000ada1
1000adba:	33 c0                	xor    eax,eax
1000adbc:	5e                   	pop    esi
1000adbd:	6a 1f                	push   0x1f
1000adbf:	59                   	pop    ecx
1000adc0:	2b 0d c4 0b 01 10    	sub    ecx,DWORD PTR ds:0x10010bc4
1000adc6:	d3 e3                	shl    ebx,cl
1000adc8:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000adcb:	f7 d9                	neg    ecx
1000adcd:	1b c9                	sbb    ecx,ecx
1000adcf:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000add5:	0b d9                	or     ebx,ecx
1000add7:	8b 0d c8 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bc8
1000addd:	0b 5d e0             	or     ebx,DWORD PTR [ebp-0x20]
1000ade0:	83 f9 40             	cmp    ecx,0x40
1000ade3:	75 0d                	jne    0x1000adf2
1000ade5:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000ade8:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
1000adeb:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000adee:	89 11                	mov    DWORD PTR [ecx],edx
1000adf0:	eb 0a                	jmp    0x1000adfc
1000adf2:	83 f9 20             	cmp    ecx,0x20
1000adf5:	75 05                	jne    0x1000adfc
1000adf7:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000adfa:	89 19                	mov    DWORD PTR [ecx],ebx
1000adfc:	5f                   	pop    edi
1000adfd:	5b                   	pop    ebx
1000adfe:	c9                   	leave  
1000adff:	c3                   	ret    
1000ae00:	55                   	push   ebp
1000ae01:	8b ec                	mov    ebp,esp
1000ae03:	83 ec 7c             	sub    esp,0x7c
1000ae06:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000ae0b:	33 c5                	xor    eax,ebp
1000ae0d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000ae10:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000ae13:	53                   	push   ebx
1000ae14:	33 db                	xor    ebx,ebx
1000ae16:	56                   	push   esi
1000ae17:	33 f6                	xor    esi,esi
1000ae19:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
1000ae1c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
1000ae1f:	46                   	inc    esi
1000ae20:	33 c9                	xor    ecx,ecx
1000ae22:	39 5d 24             	cmp    DWORD PTR [ebp+0x24],ebx
1000ae25:	57                   	push   edi
1000ae26:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
1000ae29:	8d 7d e0             	lea    edi,[ebp-0x20]
1000ae2c:	89 5d 8c             	mov    DWORD PTR [ebp-0x74],ebx
1000ae2f:	89 75 98             	mov    DWORD PTR [ebp-0x68],esi
1000ae32:	89 5d b4             	mov    DWORD PTR [ebp-0x4c],ebx
1000ae35:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
1000ae38:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
1000ae3b:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
1000ae3e:	89 5d 9c             	mov    DWORD PTR [ebp-0x64],ebx
1000ae41:	89 5d b0             	mov    DWORD PTR [ebp-0x50],ebx
1000ae44:	89 5d 94             	mov    DWORD PTR [ebp-0x6c],ebx
1000ae47:	75 1f                	jne    0x1000ae68
1000ae49:	e8 f8 9b ff ff       	call   0x10004a46
1000ae4e:	53                   	push   ebx
1000ae4f:	53                   	push   ebx
1000ae50:	53                   	push   ebx
1000ae51:	53                   	push   ebx
1000ae52:	53                   	push   ebx
1000ae53:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000ae59:	e8 18 cd ff ff       	call   0x10007b76
1000ae5e:	83 c4 14             	add    esp,0x14
1000ae61:	33 c0                	xor    eax,eax
1000ae63:	e9 19 06 00 00       	jmp    0x1000b481
1000ae68:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
1000ae6b:	89 55 ac             	mov    DWORD PTR [ebp-0x54],edx
1000ae6e:	8a 02                	mov    al,BYTE PTR [edx]
1000ae70:	3c 20                	cmp    al,0x20
1000ae72:	74 0c                	je     0x1000ae80
1000ae74:	3c 09                	cmp    al,0x9
1000ae76:	74 08                	je     0x1000ae80
1000ae78:	3c 0a                	cmp    al,0xa
1000ae7a:	74 04                	je     0x1000ae80
1000ae7c:	3c 0d                	cmp    al,0xd
1000ae7e:	75 03                	jne    0x1000ae83
1000ae80:	42                   	inc    edx
1000ae81:	eb eb                	jmp    0x1000ae6e
1000ae83:	b3 30                	mov    bl,0x30
1000ae85:	8a 02                	mov    al,BYTE PTR [edx]
1000ae87:	42                   	inc    edx
1000ae88:	83 f9 0b             	cmp    ecx,0xb
1000ae8b:	0f 87 2f 02 00 00    	ja     0x1000b0c0
1000ae91:	ff 24 8d 90 b4 00 10 	jmp    DWORD PTR [ecx*4+0x1000b490]
1000ae98:	8a c8                	mov    cl,al
1000ae9a:	80 e9 31             	sub    cl,0x31
1000ae9d:	80 f9 08             	cmp    cl,0x8
1000aea0:	77 06                	ja     0x1000aea8
1000aea2:	6a 03                	push   0x3
1000aea4:	59                   	pop    ecx
1000aea5:	4a                   	dec    edx
1000aea6:	eb dd                	jmp    0x1000ae85
1000aea8:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000aeab:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000aead:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000aeb3:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000aeb5:	3a 01                	cmp    al,BYTE PTR [ecx]
1000aeb7:	75 05                	jne    0x1000aebe
1000aeb9:	6a 05                	push   0x5
1000aebb:	59                   	pop    ecx
1000aebc:	eb c7                	jmp    0x1000ae85
1000aebe:	0f be c0             	movsx  eax,al
1000aec1:	83 e8 2b             	sub    eax,0x2b
1000aec4:	74 1d                	je     0x1000aee3
1000aec6:	48                   	dec    eax
1000aec7:	48                   	dec    eax
1000aec8:	74 0d                	je     0x1000aed7
1000aeca:	83 e8 03             	sub    eax,0x3
1000aecd:	0f 85 8b 01 00 00    	jne    0x1000b05e
1000aed3:	8b ce                	mov    ecx,esi
1000aed5:	eb ae                	jmp    0x1000ae85
1000aed7:	6a 02                	push   0x2
1000aed9:	59                   	pop    ecx
1000aeda:	c7 45 8c 00 80 00 00 	mov    DWORD PTR [ebp-0x74],0x8000
1000aee1:	eb a2                	jmp    0x1000ae85
1000aee3:	83 65 8c 00          	and    DWORD PTR [ebp-0x74],0x0
1000aee7:	6a 02                	push   0x2
1000aee9:	59                   	pop    ecx
1000aeea:	eb 99                	jmp    0x1000ae85
1000aeec:	8a c8                	mov    cl,al
1000aeee:	80 e9 31             	sub    cl,0x31
1000aef1:	80 f9 08             	cmp    cl,0x8
1000aef4:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
1000aef7:	76 a9                	jbe    0x1000aea2
1000aef9:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000aefc:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000aefe:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000af04:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af06:	3a 01                	cmp    al,BYTE PTR [ecx]
1000af08:	75 04                	jne    0x1000af0e
1000af0a:	6a 04                	push   0x4
1000af0c:	eb ad                	jmp    0x1000aebb
1000af0e:	3c 2b                	cmp    al,0x2b
1000af10:	74 28                	je     0x1000af3a
1000af12:	3c 2d                	cmp    al,0x2d
1000af14:	74 24                	je     0x1000af3a
1000af16:	3a c3                	cmp    al,bl
1000af18:	74 b9                	je     0x1000aed3
1000af1a:	3c 43                	cmp    al,0x43
1000af1c:	0f 8e 3c 01 00 00    	jle    0x1000b05e
1000af22:	3c 45                	cmp    al,0x45
1000af24:	7e 10                	jle    0x1000af36
1000af26:	3c 63                	cmp    al,0x63
1000af28:	0f 8e 30 01 00 00    	jle    0x1000b05e
1000af2e:	3c 65                	cmp    al,0x65
1000af30:	0f 8f 28 01 00 00    	jg     0x1000b05e
1000af36:	6a 06                	push   0x6
1000af38:	eb 81                	jmp    0x1000aebb
1000af3a:	4a                   	dec    edx
1000af3b:	6a 0b                	push   0xb
1000af3d:	e9 79 ff ff ff       	jmp    0x1000aebb
1000af42:	8a c8                	mov    cl,al
1000af44:	80 e9 31             	sub    cl,0x31
1000af47:	80 f9 08             	cmp    cl,0x8
1000af4a:	0f 86 52 ff ff ff    	jbe    0x1000aea2
1000af50:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000af53:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af55:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000af5b:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af5d:	3a 01                	cmp    al,BYTE PTR [ecx]
1000af5f:	0f 84 54 ff ff ff    	je     0x1000aeb9
1000af65:	3a c3                	cmp    al,bl
1000af67:	0f 84 66 ff ff ff    	je     0x1000aed3
1000af6d:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
1000af70:	e9 14 01 00 00       	jmp    0x1000b089
1000af75:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
1000af78:	eb 1a                	jmp    0x1000af94
1000af7a:	3c 39                	cmp    al,0x39
1000af7c:	7f 1a                	jg     0x1000af98
1000af7e:	83 7d b4 19          	cmp    DWORD PTR [ebp-0x4c],0x19
1000af82:	73 0a                	jae    0x1000af8e
1000af84:	ff 45 b4             	inc    DWORD PTR [ebp-0x4c]
1000af87:	2a c3                	sub    al,bl
1000af89:	88 07                	mov    BYTE PTR [edi],al
1000af8b:	47                   	inc    edi
1000af8c:	eb 03                	jmp    0x1000af91
1000af8e:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000af91:	8a 02                	mov    al,BYTE PTR [edx]
1000af93:	42                   	inc    edx
1000af94:	3a c3                	cmp    al,bl
1000af96:	7d e2                	jge    0x1000af7a
1000af98:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000af9b:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af9d:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000afa3:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000afa5:	3a 01                	cmp    al,BYTE PTR [ecx]
1000afa7:	0f 84 5d ff ff ff    	je     0x1000af0a
1000afad:	3c 2b                	cmp    al,0x2b
1000afaf:	74 89                	je     0x1000af3a
1000afb1:	3c 2d                	cmp    al,0x2d
1000afb3:	74 85                	je     0x1000af3a
1000afb5:	e9 60 ff ff ff       	jmp    0x1000af1a
1000afba:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
1000afbe:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
1000afc1:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000afc4:	75 26                	jne    0x1000afec
1000afc6:	eb 06                	jmp    0x1000afce
1000afc8:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000afcb:	8a 02                	mov    al,BYTE PTR [edx]
1000afcd:	42                   	inc    edx
1000afce:	3a c3                	cmp    al,bl
1000afd0:	74 f6                	je     0x1000afc8
1000afd2:	eb 18                	jmp    0x1000afec
1000afd4:	3c 39                	cmp    al,0x39
1000afd6:	7f d5                	jg     0x1000afad
1000afd8:	83 7d b4 19          	cmp    DWORD PTR [ebp-0x4c],0x19
1000afdc:	73 0b                	jae    0x1000afe9
1000afde:	ff 45 b4             	inc    DWORD PTR [ebp-0x4c]
1000afe1:	2a c3                	sub    al,bl
1000afe3:	88 07                	mov    BYTE PTR [edi],al
1000afe5:	47                   	inc    edi
1000afe6:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000afe9:	8a 02                	mov    al,BYTE PTR [edx]
1000afeb:	42                   	inc    edx
1000afec:	3a c3                	cmp    al,bl
1000afee:	7d e4                	jge    0x1000afd4
1000aff0:	eb bb                	jmp    0x1000afad
1000aff2:	2a c3                	sub    al,bl
1000aff4:	3c 09                	cmp    al,0x9
1000aff6:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000aff9:	0f 87 6e ff ff ff    	ja     0x1000af6d
1000afff:	6a 04                	push   0x4
1000b001:	e9 9e fe ff ff       	jmp    0x1000aea4
1000b006:	8d 4a fe             	lea    ecx,[edx-0x2]
1000b009:	89 4d ac             	mov    DWORD PTR [ebp-0x54],ecx
1000b00c:	8a c8                	mov    cl,al
1000b00e:	80 e9 31             	sub    cl,0x31
1000b011:	80 f9 08             	cmp    cl,0x8
1000b014:	77 07                	ja     0x1000b01d
1000b016:	6a 09                	push   0x9
1000b018:	e9 87 fe ff ff       	jmp    0x1000aea4
1000b01d:	0f be c0             	movsx  eax,al
1000b020:	83 e8 2b             	sub    eax,0x2b
1000b023:	74 20                	je     0x1000b045
1000b025:	48                   	dec    eax
1000b026:	48                   	dec    eax
1000b027:	74 10                	je     0x1000b039
1000b029:	83 e8 03             	sub    eax,0x3
1000b02c:	0f 85 3b ff ff ff    	jne    0x1000af6d
1000b032:	6a 08                	push   0x8
1000b034:	e9 82 fe ff ff       	jmp    0x1000aebb
1000b039:	83 4d 98 ff          	or     DWORD PTR [ebp-0x68],0xffffffff
1000b03d:	6a 07                	push   0x7
1000b03f:	59                   	pop    ecx
1000b040:	e9 40 fe ff ff       	jmp    0x1000ae85
1000b045:	6a 07                	push   0x7
1000b047:	e9 6f fe ff ff       	jmp    0x1000aebb
1000b04c:	89 75 a0             	mov    DWORD PTR [ebp-0x60],esi
1000b04f:	eb 03                	jmp    0x1000b054
1000b051:	8a 02                	mov    al,BYTE PTR [edx]
1000b053:	42                   	inc    edx
1000b054:	3a c3                	cmp    al,bl
1000b056:	74 f9                	je     0x1000b051
1000b058:	2c 31                	sub    al,0x31
1000b05a:	3c 08                	cmp    al,0x8
1000b05c:	76 b8                	jbe    0x1000b016
1000b05e:	4a                   	dec    edx
1000b05f:	eb 28                	jmp    0x1000b089
1000b061:	8a c8                	mov    cl,al
1000b063:	80 e9 31             	sub    cl,0x31
1000b066:	80 f9 08             	cmp    cl,0x8
1000b069:	76 ab                	jbe    0x1000b016
1000b06b:	3a c3                	cmp    al,bl
1000b06d:	eb bd                	jmp    0x1000b02c
1000b06f:	83 7d 20 00          	cmp    DWORD PTR [ebp+0x20],0x0
1000b073:	74 47                	je     0x1000b0bc
1000b075:	0f be c0             	movsx  eax,al
1000b078:	83 e8 2b             	sub    eax,0x2b
1000b07b:	8d 4a ff             	lea    ecx,[edx-0x1]
1000b07e:	89 4d ac             	mov    DWORD PTR [ebp-0x54],ecx
1000b081:	74 c2                	je     0x1000b045
1000b083:	48                   	dec    eax
1000b084:	48                   	dec    eax
1000b085:	74 b2                	je     0x1000b039
1000b087:	8b d1                	mov    edx,ecx
1000b089:	83 7d a8 00          	cmp    DWORD PTR [ebp-0x58],0x0
1000b08d:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
1000b090:	89 10                	mov    DWORD PTR [eax],edx
1000b092:	0f 84 a4 03 00 00    	je     0x1000b43c
1000b098:	6a 18                	push   0x18
1000b09a:	58                   	pop    eax
1000b09b:	39 45 b4             	cmp    DWORD PTR [ebp-0x4c],eax
1000b09e:	76 10                	jbe    0x1000b0b0
1000b0a0:	80 7d f7 05          	cmp    BYTE PTR [ebp-0x9],0x5
1000b0a4:	7c 03                	jl     0x1000b0a9
1000b0a6:	fe 45 f7             	inc    BYTE PTR [ebp-0x9]
1000b0a9:	4f                   	dec    edi
1000b0aa:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000b0ad:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
1000b0b0:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
1000b0b4:	0f 86 a9 03 00 00    	jbe    0x1000b463
1000b0ba:	eb 59                	jmp    0x1000b115
1000b0bc:	6a 0a                	push   0xa
1000b0be:	59                   	pop    ecx
1000b0bf:	4a                   	dec    edx
1000b0c0:	83 f9 0a             	cmp    ecx,0xa
1000b0c3:	0f 85 bc fd ff ff    	jne    0x1000ae85
1000b0c9:	eb be                	jmp    0x1000b089
1000b0cb:	89 75 a0             	mov    DWORD PTR [ebp-0x60],esi
1000b0ce:	33 c9                	xor    ecx,ecx
1000b0d0:	eb 19                	jmp    0x1000b0eb
1000b0d2:	3c 39                	cmp    al,0x39
1000b0d4:	7f 20                	jg     0x1000b0f6
1000b0d6:	6b c9 0a             	imul   ecx,ecx,0xa
1000b0d9:	0f be f0             	movsx  esi,al
1000b0dc:	8d 4c 31 d0          	lea    ecx,[ecx+esi*1-0x30]
1000b0e0:	81 f9 50 14 00 00    	cmp    ecx,0x1450
1000b0e6:	7f 09                	jg     0x1000b0f1
1000b0e8:	8a 02                	mov    al,BYTE PTR [edx]
1000b0ea:	42                   	inc    edx
1000b0eb:	3a c3                	cmp    al,bl
1000b0ed:	7d e3                	jge    0x1000b0d2
1000b0ef:	eb 05                	jmp    0x1000b0f6
1000b0f1:	b9 51 14 00 00       	mov    ecx,0x1451
1000b0f6:	89 4d 9c             	mov    DWORD PTR [ebp-0x64],ecx
1000b0f9:	eb 0b                	jmp    0x1000b106
1000b0fb:	3c 39                	cmp    al,0x39
1000b0fd:	0f 8f 5b ff ff ff    	jg     0x1000b05e
1000b103:	8a 02                	mov    al,BYTE PTR [edx]
1000b105:	42                   	inc    edx
1000b106:	3a c3                	cmp    al,bl
1000b108:	7d f1                	jge    0x1000b0fb
1000b10a:	e9 4f ff ff ff       	jmp    0x1000b05e
1000b10f:	ff 4d b4             	dec    DWORD PTR [ebp-0x4c]
1000b112:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000b115:	4f                   	dec    edi
1000b116:	80 3f 00             	cmp    BYTE PTR [edi],0x0
1000b119:	74 f4                	je     0x1000b10f
1000b11b:	8d 45 c4             	lea    eax,[ebp-0x3c]
1000b11e:	50                   	push   eax
1000b11f:	ff 75 b4             	push   DWORD PTR [ebp-0x4c]
1000b122:	8d 45 e0             	lea    eax,[ebp-0x20]
1000b125:	50                   	push   eax
1000b126:	e8 e2 17 00 00       	call   0x1000c90d
1000b12b:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
1000b12e:	33 c9                	xor    ecx,ecx
1000b130:	83 c4 0c             	add    esp,0xc
1000b133:	39 4d 98             	cmp    DWORD PTR [ebp-0x68],ecx
1000b136:	7d 02                	jge    0x1000b13a
1000b138:	f7 d8                	neg    eax
1000b13a:	03 45 b0             	add    eax,DWORD PTR [ebp-0x50]
1000b13d:	39 4d a0             	cmp    DWORD PTR [ebp-0x60],ecx
1000b140:	75 03                	jne    0x1000b145
1000b142:	03 45 18             	add    eax,DWORD PTR [ebp+0x18]
1000b145:	39 4d a4             	cmp    DWORD PTR [ebp-0x5c],ecx
1000b148:	75 03                	jne    0x1000b14d
1000b14a:	2b 45 1c             	sub    eax,DWORD PTR [ebp+0x1c]
1000b14d:	3d 50 14 00 00       	cmp    eax,0x1450
1000b152:	0f 8f ed 02 00 00    	jg     0x1000b445
1000b158:	3d b0 eb ff ff       	cmp    eax,0xffffebb0
1000b15d:	0f 8c f9 02 00 00    	jl     0x1000b45c
1000b163:	be a0 0c 01 10       	mov    esi,0x10010ca0
1000b168:	83 ee 60             	sub    esi,0x60
1000b16b:	3b c1                	cmp    eax,ecx
1000b16d:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
1000b170:	0f 84 b4 02 00 00    	je     0x1000b42a
1000b176:	7d 0d                	jge    0x1000b185
1000b178:	f7 d8                	neg    eax
1000b17a:	be 00 0e 01 10       	mov    esi,0x10010e00
1000b17f:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
1000b182:	83 ee 60             	sub    esi,0x60
1000b185:	39 4d 14             	cmp    DWORD PTR [ebp+0x14],ecx
1000b188:	75 04                	jne    0x1000b18e
1000b18a:	66 89 4d c4          	mov    WORD PTR [ebp-0x3c],cx
1000b18e:	39 4d ac             	cmp    DWORD PTR [ebp-0x54],ecx
1000b191:	0f 84 93 02 00 00    	je     0x1000b42a
1000b197:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
1000b19a:	c1 7d ac 03          	sar    DWORD PTR [ebp-0x54],0x3
1000b19e:	83 c6 54             	add    esi,0x54
1000b1a1:	83 e0 07             	and    eax,0x7
1000b1a4:	85 c0                	test   eax,eax
1000b1a6:	89 75 b4             	mov    DWORD PTR [ebp-0x4c],esi
1000b1a9:	0f 84 71 02 00 00    	je     0x1000b420
1000b1af:	6b c0 0c             	imul   eax,eax,0xc
1000b1b2:	03 c6                	add    eax,esi
1000b1b4:	8b d8                	mov    ebx,eax
1000b1b6:	66 81 3b 00 80       	cmp    WORD PTR [ebx],0x8000
1000b1bb:	89 5d 90             	mov    DWORD PTR [ebp-0x70],ebx
1000b1be:	72 14                	jb     0x1000b1d4
1000b1c0:	8b f3                	mov    esi,ebx
1000b1c2:	8d 7d b8             	lea    edi,[ebp-0x48]
1000b1c5:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b1c6:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b1c7:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b1c8:	ff 4d ba             	dec    DWORD PTR [ebp-0x46]
1000b1cb:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
1000b1ce:	8d 5d b8             	lea    ebx,[ebp-0x48]
1000b1d1:	89 5d 90             	mov    DWORD PTR [ebp-0x70],ebx
1000b1d4:	0f b7 53 0a          	movzx  edx,WORD PTR [ebx+0xa]
1000b1d8:	8b 4d ce             	mov    ecx,DWORD PTR [ebp-0x32]
1000b1db:	33 c0                	xor    eax,eax
1000b1dd:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
1000b1e0:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
1000b1e3:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
1000b1e6:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
1000b1e9:	8b c2                	mov    eax,edx
1000b1eb:	bf ff 7f 00 00       	mov    edi,0x7fff
1000b1f0:	33 c1                	xor    eax,ecx
1000b1f2:	23 cf                	and    ecx,edi
1000b1f4:	23 d7                	and    edx,edi
1000b1f6:	25 00 80 00 00       	and    eax,0x8000
1000b1fb:	66 81 f9 ff 7f       	cmp    cx,0x7fff
1000b200:	8d 3c 0a             	lea    edi,[edx+ecx*1]
1000b203:	0f b7 ff             	movzx  edi,di
1000b206:	0f 83 fa 01 00 00    	jae    0x1000b406
1000b20c:	66 81 fa ff 7f       	cmp    dx,0x7fff
1000b211:	0f 83 ef 01 00 00    	jae    0x1000b406
1000b217:	66 81 ff fd bf       	cmp    di,0xbffd
1000b21c:	0f 87 e4 01 00 00    	ja     0x1000b406
1000b222:	66 81 ff bf 3f       	cmp    di,0x3fbf
1000b227:	77 0d                	ja     0x1000b236
1000b229:	33 c0                	xor    eax,eax
1000b22b:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
1000b22e:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
1000b231:	e9 e7 01 00 00       	jmp    0x1000b41d
1000b236:	66 85 c9             	test   cx,cx
1000b239:	75 1f                	jne    0x1000b25a
1000b23b:	47                   	inc    edi
1000b23c:	f7 45 cc ff ff ff 7f 	test   DWORD PTR [ebp-0x34],0x7fffffff
1000b243:	75 15                	jne    0x1000b25a
1000b245:	83 7d c8 00          	cmp    DWORD PTR [ebp-0x38],0x0
1000b249:	75 0f                	jne    0x1000b25a
1000b24b:	83 7d c4 00          	cmp    DWORD PTR [ebp-0x3c],0x0
1000b24f:	75 09                	jne    0x1000b25a
1000b251:	66 21 4d ce          	and    WORD PTR [ebp-0x32],cx
1000b255:	e9 c6 01 00 00       	jmp    0x1000b420
1000b25a:	33 c9                	xor    ecx,ecx
1000b25c:	66 3b d1             	cmp    dx,cx
1000b25f:	75 21                	jne    0x1000b282
1000b261:	47                   	inc    edi
1000b262:	f7 43 08 ff ff ff 7f 	test   DWORD PTR [ebx+0x8],0x7fffffff
1000b269:	75 17                	jne    0x1000b282
1000b26b:	39 4b 04             	cmp    DWORD PTR [ebx+0x4],ecx
1000b26e:	75 12                	jne    0x1000b282
1000b270:	39 0b                	cmp    DWORD PTR [ebx],ecx
1000b272:	75 0e                	jne    0x1000b282
1000b274:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
1000b277:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
1000b27a:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
1000b27d:	e9 9e 01 00 00       	jmp    0x1000b420
1000b282:	21 4d 98             	and    DWORD PTR [ebp-0x68],ecx
1000b285:	8d 75 d8             	lea    esi,[ebp-0x28]
1000b288:	c7 45 a8 05 00 00 00 	mov    DWORD PTR [ebp-0x58],0x5
1000b28f:	8b 4d 98             	mov    ecx,DWORD PTR [ebp-0x68]
1000b292:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
1000b295:	03 c9                	add    ecx,ecx
1000b297:	85 d2                	test   edx,edx
1000b299:	89 55 9c             	mov    DWORD PTR [ebp-0x64],edx
1000b29c:	7e 55                	jle    0x1000b2f3
1000b29e:	8d 4c 0d c4          	lea    ecx,[ebp+ecx*1-0x3c]
1000b2a2:	83 c3 08             	add    ebx,0x8
1000b2a5:	89 4d a4             	mov    DWORD PTR [ebp-0x5c],ecx
1000b2a8:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
1000b2ab:	8b 4d a0             	mov    ecx,DWORD PTR [ebp-0x60]
1000b2ae:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
1000b2b1:	0f b7 12             	movzx  edx,WORD PTR [edx]
1000b2b4:	0f b7 09             	movzx  ecx,WORD PTR [ecx]
1000b2b7:	83 65 88 00          	and    DWORD PTR [ebp-0x78],0x0
1000b2bb:	0f af ca             	imul   ecx,edx
1000b2be:	8b 56 fc             	mov    edx,DWORD PTR [esi-0x4]
1000b2c1:	8d 1c 0a             	lea    ebx,[edx+ecx*1]
1000b2c4:	3b da                	cmp    ebx,edx
1000b2c6:	72 04                	jb     0x1000b2cc
1000b2c8:	3b d9                	cmp    ebx,ecx
1000b2ca:	73 07                	jae    0x1000b2d3
1000b2cc:	c7 45 88 01 00 00 00 	mov    DWORD PTR [ebp-0x78],0x1
1000b2d3:	83 7d 88 00          	cmp    DWORD PTR [ebp-0x78],0x0
1000b2d7:	89 5e fc             	mov    DWORD PTR [esi-0x4],ebx
1000b2da:	74 03                	je     0x1000b2df
1000b2dc:	66 ff 06             	inc    WORD PTR [esi]
1000b2df:	83 45 a4 02          	add    DWORD PTR [ebp-0x5c],0x2
1000b2e3:	83 6d a0 02          	sub    DWORD PTR [ebp-0x60],0x2
1000b2e7:	ff 4d 9c             	dec    DWORD PTR [ebp-0x64]
1000b2ea:	83 7d 9c 00          	cmp    DWORD PTR [ebp-0x64],0x0
1000b2ee:	7f bb                	jg     0x1000b2ab
1000b2f0:	8b 5d 90             	mov    ebx,DWORD PTR [ebp-0x70]
1000b2f3:	46                   	inc    esi
1000b2f4:	46                   	inc    esi
1000b2f5:	ff 45 98             	inc    DWORD PTR [ebp-0x68]
1000b2f8:	ff 4d a8             	dec    DWORD PTR [ebp-0x58]
1000b2fb:	83 7d a8 00          	cmp    DWORD PTR [ebp-0x58],0x0
1000b2ff:	7f 8e                	jg     0x1000b28f
1000b301:	81 c7 02 c0 00 00    	add    edi,0xc002
1000b307:	66 85 ff             	test   di,di
1000b30a:	7e 3b                	jle    0x1000b347
1000b30c:	f7 45 dc 00 00 00 80 	test   DWORD PTR [ebp-0x24],0x80000000
1000b313:	75 2d                	jne    0x1000b342
1000b315:	8b 75 d8             	mov    esi,DWORD PTR [ebp-0x28]
1000b318:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
1000b31b:	d1 65 d4             	shl    DWORD PTR [ebp-0x2c],1
1000b31e:	c1 e9 1f             	shr    ecx,0x1f
1000b321:	8b d6                	mov    edx,esi
1000b323:	03 f6                	add    esi,esi
1000b325:	0b f1                	or     esi,ecx
1000b327:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000b32a:	c1 ea 1f             	shr    edx,0x1f
1000b32d:	03 c9                	add    ecx,ecx
1000b32f:	0b ca                	or     ecx,edx
1000b331:	81 c7 ff ff 00 00    	add    edi,0xffff
1000b337:	66 85 ff             	test   di,di
1000b33a:	89 75 d8             	mov    DWORD PTR [ebp-0x28],esi
1000b33d:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
1000b340:	7f ca                	jg     0x1000b30c
1000b342:	66 85 ff             	test   di,di
1000b345:	7f 4d                	jg     0x1000b394
1000b347:	81 c7 ff ff 00 00    	add    edi,0xffff
1000b34d:	66 85 ff             	test   di,di
1000b350:	7d 42                	jge    0x1000b394
1000b352:	8b cf                	mov    ecx,edi
1000b354:	f7 d9                	neg    ecx
1000b356:	0f b7 f1             	movzx  esi,cx
1000b359:	03 fe                	add    edi,esi
1000b35b:	f6 45 d4 01          	test   BYTE PTR [ebp-0x2c],0x1
1000b35f:	74 03                	je     0x1000b364
1000b361:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000b364:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000b367:	8b 5d d8             	mov    ebx,DWORD PTR [ebp-0x28]
1000b36a:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
1000b36d:	d1 6d dc             	shr    DWORD PTR [ebp-0x24],1
1000b370:	c1 e1 1f             	shl    ecx,0x1f
1000b373:	d1 eb                	shr    ebx,1
1000b375:	0b d9                	or     ebx,ecx
1000b377:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
1000b37a:	c1 e2 1f             	shl    edx,0x1f
1000b37d:	d1 e9                	shr    ecx,1
1000b37f:	0b ca                	or     ecx,edx
1000b381:	4e                   	dec    esi
1000b382:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
1000b385:	89 4d d4             	mov    DWORD PTR [ebp-0x2c],ecx
1000b388:	75 d1                	jne    0x1000b35b
1000b38a:	39 75 b0             	cmp    DWORD PTR [ebp-0x50],esi
1000b38d:	74 05                	je     0x1000b394
1000b38f:	66 83 4d d4 01       	or     WORD PTR [ebp-0x2c],0x1
1000b394:	66 81 7d d4 00 80    	cmp    WORD PTR [ebp-0x2c],0x8000
1000b39a:	77 11                	ja     0x1000b3ad
1000b39c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
1000b39f:	81 e1 ff ff 01 00    	and    ecx,0x1ffff
1000b3a5:	81 f9 00 80 01 00    	cmp    ecx,0x18000
1000b3ab:	75 33                	jne    0x1000b3e0
1000b3ad:	83 7d d6 ff          	cmp    DWORD PTR [ebp-0x2a],0xffffffff
1000b3b1:	75 2a                	jne    0x1000b3dd
1000b3b3:	83 65 d6 00          	and    DWORD PTR [ebp-0x2a],0x0
1000b3b7:	83 7d da ff          	cmp    DWORD PTR [ebp-0x26],0xffffffff
1000b3bb:	75 1b                	jne    0x1000b3d8
1000b3bd:	83 65 da 00          	and    DWORD PTR [ebp-0x26],0x0
1000b3c1:	66 81 7d de ff ff    	cmp    WORD PTR [ebp-0x22],0xffff
1000b3c7:	75 09                	jne    0x1000b3d2
1000b3c9:	66 c7 45 de 00 80    	mov    WORD PTR [ebp-0x22],0x8000
1000b3cf:	47                   	inc    edi
1000b3d0:	eb 0e                	jmp    0x1000b3e0
1000b3d2:	66 ff 45 de          	inc    WORD PTR [ebp-0x22]
1000b3d6:	eb 08                	jmp    0x1000b3e0
1000b3d8:	ff 45 da             	inc    DWORD PTR [ebp-0x26]
1000b3db:	eb 03                	jmp    0x1000b3e0
1000b3dd:	ff 45 d6             	inc    DWORD PTR [ebp-0x2a]
1000b3e0:	66 81 ff ff 7f       	cmp    di,0x7fff
1000b3e5:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
1000b3e8:	73 1c                	jae    0x1000b406
1000b3ea:	66 8b 4d d6          	mov    cx,WORD PTR [ebp-0x2a]
1000b3ee:	66 89 4d c4          	mov    WORD PTR [ebp-0x3c],cx
1000b3f2:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
1000b3f5:	89 4d c6             	mov    DWORD PTR [ebp-0x3a],ecx
1000b3f8:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000b3fb:	0b f8                	or     edi,eax
1000b3fd:	89 4d ca             	mov    DWORD PTR [ebp-0x36],ecx
1000b400:	66 89 7d ce          	mov    WORD PTR [ebp-0x32],di
1000b404:	eb 1a                	jmp    0x1000b420
1000b406:	66 f7 d8             	neg    ax
1000b409:	1b c0                	sbb    eax,eax
1000b40b:	83 65 c8 00          	and    DWORD PTR [ebp-0x38],0x0
1000b40f:	25 00 00 00 80       	and    eax,0x80000000
1000b414:	05 00 80 ff 7f       	add    eax,0x7fff8000
1000b419:	83 65 c4 00          	and    DWORD PTR [ebp-0x3c],0x0
1000b41d:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
1000b420:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
1000b424:	0f 85 6d fd ff ff    	jne    0x1000b197
1000b42a:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
1000b42d:	0f b7 4d c4          	movzx  ecx,WORD PTR [ebp-0x3c]
1000b431:	8b 75 c6             	mov    esi,DWORD PTR [ebp-0x3a]
1000b434:	8b 55 ca             	mov    edx,DWORD PTR [ebp-0x36]
1000b437:	c1 e8 10             	shr    eax,0x10
1000b43a:	eb 2f                	jmp    0x1000b46b
1000b43c:	c7 45 94 04 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x4
1000b443:	eb 1e                	jmp    0x1000b463
1000b445:	33 f6                	xor    esi,esi
1000b447:	b8 ff 7f 00 00       	mov    eax,0x7fff
1000b44c:	ba 00 00 00 80       	mov    edx,0x80000000
1000b451:	33 c9                	xor    ecx,ecx
1000b453:	c7 45 94 02 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x2
1000b45a:	eb 0f                	jmp    0x1000b46b
1000b45c:	c7 45 94 01 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x1
1000b463:	33 c9                	xor    ecx,ecx
1000b465:	33 c0                	xor    eax,eax
1000b467:	33 d2                	xor    edx,edx
1000b469:	33 f6                	xor    esi,esi
1000b46b:	8b 7d 84             	mov    edi,DWORD PTR [ebp-0x7c]
1000b46e:	0b 45 8c             	or     eax,DWORD PTR [ebp-0x74]
1000b471:	66 89 0f             	mov    WORD PTR [edi],cx
1000b474:	66 89 47 0a          	mov    WORD PTR [edi+0xa],ax
1000b478:	8b 45 94             	mov    eax,DWORD PTR [ebp-0x6c]
1000b47b:	89 77 02             	mov    DWORD PTR [edi+0x2],esi
1000b47e:	89 57 06             	mov    DWORD PTR [edi+0x6],edx
1000b481:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000b484:	5f                   	pop    edi
1000b485:	5e                   	pop    esi
1000b486:	33 cd                	xor    ecx,ebp
1000b488:	5b                   	pop    ebx
1000b489:	e8 8d 86 ff ff       	call   0x10003b1b
1000b48e:	c9                   	leave  
1000b48f:	c3                   	ret    
1000b490:	98                   	cwde   
1000b491:	ae                   	scas   al,BYTE PTR es:[edi]
1000b492:	00 10                	add    BYTE PTR [eax],dl
1000b494:	ec                   	in     al,dx
1000b495:	ae                   	scas   al,BYTE PTR es:[edi]
1000b496:	00 10                	add    BYTE PTR [eax],dl
1000b498:	42                   	inc    edx
1000b499:	af                   	scas   eax,DWORD PTR es:[edi]
1000b49a:	00 10                	add    BYTE PTR [eax],dl
1000b49c:	75 af                	jne    0x1000b44d
1000b49e:	00 10                	add    BYTE PTR [eax],dl
1000b4a0:	ba af 00 10 f2       	mov    edx,0xf21000af
1000b4a5:	af                   	scas   eax,DWORD PTR es:[edi]
1000b4a6:	00 10                	add    BYTE PTR [eax],dl
1000b4a8:	06                   	push   es
1000b4a9:	b0 00                	mov    al,0x0
1000b4ab:	10 61 b0             	adc    BYTE PTR [ecx-0x50],ah
1000b4ae:	00 10                	add    BYTE PTR [eax],dl
1000b4b0:	4c                   	dec    esp
1000b4b1:	b0 00                	mov    al,0x0
1000b4b3:	10 cb                	adc    bl,cl
1000b4b5:	b0 00                	mov    al,0x0
1000b4b7:	10 c0                	adc    al,al
1000b4b9:	b0 00                	mov    al,0x0
1000b4bb:	10 6f b0             	adc    BYTE PTR [edi-0x50],ch
1000b4be:	00 10                	add    BYTE PTR [eax],dl
1000b4c0:	55                   	push   ebp
1000b4c1:	8b ec                	mov    ebp,esp
1000b4c3:	83 ec 08             	sub    esp,0x8
1000b4c6:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000b4c9:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
1000b4cc:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
1000b4cf:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000b4d2:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000b4d5:	c1 e9 07             	shr    ecx,0x7
1000b4d8:	eb 06                	jmp    0x1000b4e0
1000b4da:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
1000b4e0:	66 0f 6f 06          	movdqa xmm0,XMMWORD PTR [esi]
1000b4e4:	66 0f 6f 4e 10       	movdqa xmm1,XMMWORD PTR [esi+0x10]
1000b4e9:	66 0f 6f 56 20       	movdqa xmm2,XMMWORD PTR [esi+0x20]
1000b4ee:	66 0f 6f 5e 30       	movdqa xmm3,XMMWORD PTR [esi+0x30]
1000b4f3:	66 0f 7f 07          	movdqa XMMWORD PTR [edi],xmm0
1000b4f7:	66 0f 7f 4f 10       	movdqa XMMWORD PTR [edi+0x10],xmm1
1000b4fc:	66 0f 7f 57 20       	movdqa XMMWORD PTR [edi+0x20],xmm2
1000b501:	66 0f 7f 5f 30       	movdqa XMMWORD PTR [edi+0x30],xmm3
1000b506:	66 0f 6f 66 40       	movdqa xmm4,XMMWORD PTR [esi+0x40]
1000b50b:	66 0f 6f 6e 50       	movdqa xmm5,XMMWORD PTR [esi+0x50]
1000b510:	66 0f 6f 76 60       	movdqa xmm6,XMMWORD PTR [esi+0x60]
1000b515:	66 0f 6f 7e 70       	movdqa xmm7,XMMWORD PTR [esi+0x70]
1000b51a:	66 0f 7f 67 40       	movdqa XMMWORD PTR [edi+0x40],xmm4
1000b51f:	66 0f 7f 6f 50       	movdqa XMMWORD PTR [edi+0x50],xmm5
1000b524:	66 0f 7f 77 60       	movdqa XMMWORD PTR [edi+0x60],xmm6
1000b529:	66 0f 7f 7f 70       	movdqa XMMWORD PTR [edi+0x70],xmm7
1000b52e:	8d b6 80 00 00 00    	lea    esi,[esi+0x80]
1000b534:	8d bf 80 00 00 00    	lea    edi,[edi+0x80]
1000b53a:	49                   	dec    ecx
1000b53b:	75 a3                	jne    0x1000b4e0
1000b53d:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
1000b540:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000b543:	8b e5                	mov    esp,ebp
1000b545:	5d                   	pop    ebp
1000b546:	c3                   	ret    
1000b547:	55                   	push   ebp
1000b548:	8b ec                	mov    ebp,esp
1000b54a:	83 ec 1c             	sub    esp,0x1c
1000b54d:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000b550:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
1000b553:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
1000b556:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
1000b559:	8b c3                	mov    eax,ebx
1000b55b:	99                   	cdq    
1000b55c:	8b c8                	mov    ecx,eax
1000b55e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000b561:	33 ca                	xor    ecx,edx
1000b563:	2b ca                	sub    ecx,edx
1000b565:	83 e1 0f             	and    ecx,0xf
1000b568:	33 ca                	xor    ecx,edx
1000b56a:	2b ca                	sub    ecx,edx
1000b56c:	99                   	cdq    
1000b56d:	8b f8                	mov    edi,eax
1000b56f:	33 fa                	xor    edi,edx
1000b571:	2b fa                	sub    edi,edx
1000b573:	83 e7 0f             	and    edi,0xf
1000b576:	33 fa                	xor    edi,edx
1000b578:	2b fa                	sub    edi,edx
1000b57a:	8b d1                	mov    edx,ecx
1000b57c:	0b d7                	or     edx,edi
1000b57e:	75 4a                	jne    0x1000b5ca
1000b580:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
1000b583:	8b ce                	mov    ecx,esi
1000b585:	83 e1 7f             	and    ecx,0x7f
1000b588:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000b58b:	3b f1                	cmp    esi,ecx
1000b58d:	74 13                	je     0x1000b5a2
1000b58f:	2b f1                	sub    esi,ecx
1000b591:	56                   	push   esi
1000b592:	53                   	push   ebx
1000b593:	50                   	push   eax
1000b594:	e8 27 ff ff ff       	call   0x1000b4c0
1000b599:	83 c4 0c             	add    esp,0xc
1000b59c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000b59f:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
1000b5a2:	85 c9                	test   ecx,ecx
1000b5a4:	74 77                	je     0x1000b61d
1000b5a6:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
1000b5a9:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
1000b5ac:	03 d3                	add    edx,ebx
1000b5ae:	2b d1                	sub    edx,ecx
1000b5b0:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
1000b5b3:	03 d8                	add    ebx,eax
1000b5b5:	2b d9                	sub    ebx,ecx
1000b5b7:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
1000b5ba:	8b 75 ec             	mov    esi,DWORD PTR [ebp-0x14]
1000b5bd:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
1000b5c0:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
1000b5c3:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
1000b5c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000b5c8:	eb 53                	jmp    0x1000b61d
1000b5ca:	3b cf                	cmp    ecx,edi
1000b5cc:	75 35                	jne    0x1000b603
1000b5ce:	f7 d9                	neg    ecx
1000b5d0:	83 c1 10             	add    ecx,0x10
1000b5d3:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
1000b5d6:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
1000b5d9:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000b5dc:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
1000b5df:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
1000b5e1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000b5e4:	03 4d e4             	add    ecx,DWORD PTR [ebp-0x1c]
1000b5e7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
1000b5ea:	03 55 e4             	add    edx,DWORD PTR [ebp-0x1c]
1000b5ed:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000b5f0:	2b 45 e4             	sub    eax,DWORD PTR [ebp-0x1c]
1000b5f3:	50                   	push   eax
1000b5f4:	52                   	push   edx
1000b5f5:	51                   	push   ecx
1000b5f6:	e8 4c ff ff ff       	call   0x1000b547
1000b5fb:	83 c4 0c             	add    esp,0xc
1000b5fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000b601:	eb 1a                	jmp    0x1000b61d
1000b603:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
1000b606:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000b609:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000b60c:	8b d1                	mov    edx,ecx
1000b60e:	c1 e9 02             	shr    ecx,0x2
1000b611:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b613:	8b ca                	mov    ecx,edx
1000b615:	83 e1 03             	and    ecx,0x3
1000b618:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
1000b61a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000b61d:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
1000b620:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
1000b623:	8b 7d f4             	mov    edi,DWORD PTR [ebp-0xc]
1000b626:	8b e5                	mov    esp,ebp
1000b628:	5d                   	pop    ebp
1000b629:	c3                   	ret    
1000b62a:	55                   	push   ebp
1000b62b:	8b ec                	mov    ebp,esp
1000b62d:	83 ec 74             	sub    esp,0x74
1000b630:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000b635:	33 c5                	xor    eax,ebp
1000b637:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000b63a:	53                   	push   ebx
1000b63b:	8b 5d 1c             	mov    ebx,DWORD PTR [ebp+0x1c]
1000b63e:	56                   	push   esi
1000b63f:	57                   	push   edi
1000b640:	8d 75 08             	lea    esi,[ebp+0x8]
1000b643:	8d 7d f0             	lea    edi,[ebp-0x10]
1000b646:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b647:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b648:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
1000b64a:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000b64d:	8b ca                	mov    ecx,edx
1000b64f:	b8 00 80 00 00       	mov    eax,0x8000
1000b654:	23 c8                	and    ecx,eax
1000b656:	81 e2 ff 7f 00 00    	and    edx,0x7fff
1000b65c:	66 85 c9             	test   cx,cx
1000b65f:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
1000b662:	c6 45 d0 cc          	mov    BYTE PTR [ebp-0x30],0xcc
1000b666:	c6 45 d1 cc          	mov    BYTE PTR [ebp-0x2f],0xcc
1000b66a:	c6 45 d2 cc          	mov    BYTE PTR [ebp-0x2e],0xcc
1000b66e:	c6 45 d3 cc          	mov    BYTE PTR [ebp-0x2d],0xcc
1000b672:	c6 45 d4 cc          	mov    BYTE PTR [ebp-0x2c],0xcc
1000b676:	c6 45 d5 cc          	mov    BYTE PTR [ebp-0x2b],0xcc
1000b67a:	c6 45 d6 cc          	mov    BYTE PTR [ebp-0x2a],0xcc
1000b67e:	c6 45 d7 cc          	mov    BYTE PTR [ebp-0x29],0xcc
1000b682:	c6 45 d8 cc          	mov    BYTE PTR [ebp-0x28],0xcc
1000b686:	c6 45 d9 cc          	mov    BYTE PTR [ebp-0x27],0xcc
1000b68a:	c6 45 da fb          	mov    BYTE PTR [ebp-0x26],0xfb
1000b68e:	c6 45 db 3f          	mov    BYTE PTR [ebp-0x25],0x3f
1000b692:	c7 45 8c 01 00 00 00 	mov    DWORD PTR [ebp-0x74],0x1
1000b699:	89 4d 94             	mov    DWORD PTR [ebp-0x6c],ecx
1000b69c:	74 06                	je     0x1000b6a4
1000b69e:	c6 43 02 2d          	mov    BYTE PTR [ebx+0x2],0x2d
1000b6a2:	eb 04                	jmp    0x1000b6a8
1000b6a4:	c6 43 02 20          	mov    BYTE PTR [ebx+0x2],0x20
1000b6a8:	66 85 d2             	test   dx,dx
1000b6ab:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000b6ae:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
1000b6b1:	75 2e                	jne    0x1000b6e1
1000b6b3:	85 f6                	test   esi,esi
1000b6b5:	75 2a                	jne    0x1000b6e1
1000b6b7:	85 ff                	test   edi,edi
1000b6b9:	75 26                	jne    0x1000b6e1
1000b6bb:	66 21 3b             	and    WORD PTR [ebx],di
1000b6be:	66 3b c8             	cmp    cx,ax
1000b6c1:	0f 95 c0             	setne  al
1000b6c4:	fe c8                	dec    al
1000b6c6:	24 0d                	and    al,0xd
1000b6c8:	04 20                	add    al,0x20
1000b6ca:	88 43 02             	mov    BYTE PTR [ebx+0x2],al
1000b6cd:	c6 43 03 01          	mov    BYTE PTR [ebx+0x3],0x1
1000b6d1:	c6 43 04 30          	mov    BYTE PTR [ebx+0x4],0x30
1000b6d5:	c6 43 05 00          	mov    BYTE PTR [ebx+0x5],0x0
1000b6d9:	33 c0                	xor    eax,eax
1000b6db:	40                   	inc    eax
1000b6dc:	e9 c7 07 00 00       	jmp    0x1000bea8
1000b6e1:	66 81 fa ff 7f       	cmp    dx,0x7fff
1000b6e6:	0f 85 9e 00 00 00    	jne    0x1000b78a
1000b6ec:	b8 00 00 00 80       	mov    eax,0x80000000
1000b6f1:	3b f0                	cmp    esi,eax
1000b6f3:	66 c7 03 01 00       	mov    WORD PTR [ebx],0x1
1000b6f8:	75 04                	jne    0x1000b6fe
1000b6fa:	85 ff                	test   edi,edi
1000b6fc:	74 0f                	je     0x1000b70d
1000b6fe:	f7 c6 00 00 00 40    	test   esi,0x40000000
1000b704:	75 07                	jne    0x1000b70d
1000b706:	68 04 e3 00 10       	push   0x1000e304
1000b70b:	eb 51                	jmp    0x1000b75e
1000b70d:	66 85 c9             	test   cx,cx
1000b710:	74 13                	je     0x1000b725
1000b712:	81 fe 00 00 00 c0    	cmp    esi,0xc0000000
1000b718:	75 0b                	jne    0x1000b725
1000b71a:	85 ff                	test   edi,edi
1000b71c:	75 3b                	jne    0x1000b759
1000b71e:	68 fc e2 00 10       	push   0x1000e2fc
1000b723:	eb 0d                	jmp    0x1000b732
1000b725:	3b f0                	cmp    esi,eax
1000b727:	75 30                	jne    0x1000b759
1000b729:	85 ff                	test   edi,edi
1000b72b:	75 2c                	jne    0x1000b759
1000b72d:	68 f4 e2 00 10       	push   0x1000e2f4
1000b732:	8d 43 04             	lea    eax,[ebx+0x4]
1000b735:	6a 16                	push   0x16
1000b737:	50                   	push   eax
1000b738:	e8 5e cb ff ff       	call   0x1000829b
1000b73d:	83 c4 0c             	add    esp,0xc
1000b740:	33 f6                	xor    esi,esi
1000b742:	85 c0                	test   eax,eax
1000b744:	74 0d                	je     0x1000b753
1000b746:	56                   	push   esi
1000b747:	56                   	push   esi
1000b748:	56                   	push   esi
1000b749:	56                   	push   esi
1000b74a:	56                   	push   esi
1000b74b:	e8 2a c3 ff ff       	call   0x10007a7a
1000b750:	83 c4 14             	add    esp,0x14
1000b753:	c6 43 03 05          	mov    BYTE PTR [ebx+0x3],0x5
1000b757:	eb 2a                	jmp    0x1000b783
1000b759:	68 ec e2 00 10       	push   0x1000e2ec
1000b75e:	8d 43 04             	lea    eax,[ebx+0x4]
1000b761:	6a 16                	push   0x16
1000b763:	50                   	push   eax
1000b764:	e8 32 cb ff ff       	call   0x1000829b
1000b769:	83 c4 0c             	add    esp,0xc
1000b76c:	33 f6                	xor    esi,esi
1000b76e:	85 c0                	test   eax,eax
1000b770:	74 0d                	je     0x1000b77f
1000b772:	56                   	push   esi
1000b773:	56                   	push   esi
1000b774:	56                   	push   esi
1000b775:	56                   	push   esi
1000b776:	56                   	push   esi
1000b777:	e8 fe c2 ff ff       	call   0x10007a7a
1000b77c:	83 c4 14             	add    esp,0x14
1000b77f:	c6 43 03 06          	mov    BYTE PTR [ebx+0x3],0x6
1000b783:	33 c0                	xor    eax,eax
1000b785:	e9 1e 07 00 00       	jmp    0x1000bea8
1000b78a:	0f b7 ca             	movzx  ecx,dx
1000b78d:	8b d9                	mov    ebx,ecx
1000b78f:	69 c9 10 4d 00 00    	imul   ecx,ecx,0x4d10
1000b795:	c1 eb 08             	shr    ebx,0x8
1000b798:	8b c6                	mov    eax,esi
1000b79a:	c1 e8 18             	shr    eax,0x18
1000b79d:	8d 04 43             	lea    eax,[ebx+eax*2]
1000b7a0:	6b c0 4d             	imul   eax,eax,0x4d
1000b7a3:	8d 84 08 0c ed bc ec 	lea    eax,[eax+ecx*1-0x134312f4]
1000b7aa:	c1 f8 10             	sar    eax,0x10
1000b7ad:	0f b7 c8             	movzx  ecx,ax
1000b7b0:	0f bf d9             	movsx  ebx,cx
1000b7b3:	89 4d b4             	mov    DWORD PTR [ebp-0x4c],ecx
1000b7b6:	33 c0                	xor    eax,eax
1000b7b8:	b9 a0 0c 01 10       	mov    ecx,0x10010ca0
1000b7bd:	f7 db                	neg    ebx
1000b7bf:	83 e9 60             	sub    ecx,0x60
1000b7c2:	3b d8                	cmp    ebx,eax
1000b7c4:	66 89 55 ea          	mov    WORD PTR [ebp-0x16],dx
1000b7c8:	89 75 e6             	mov    DWORD PTR [ebp-0x1a],esi
1000b7cb:	89 7d e2             	mov    DWORD PTR [ebp-0x1e],edi
1000b7ce:	66 89 45 e0          	mov    WORD PTR [ebp-0x20],ax
1000b7d2:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
1000b7d5:	0f 84 ae 02 00 00    	je     0x1000ba89
1000b7db:	7d 0d                	jge    0x1000b7ea
1000b7dd:	b9 00 0e 01 10       	mov    ecx,0x10010e00
1000b7e2:	f7 db                	neg    ebx
1000b7e4:	83 e9 60             	sub    ecx,0x60
1000b7e7:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
1000b7ea:	3b d8                	cmp    ebx,eax
1000b7ec:	0f 84 97 02 00 00    	je     0x1000ba89
1000b7f2:	83 45 98 54          	add    DWORD PTR [ebp-0x68],0x54
1000b7f6:	8b cb                	mov    ecx,ebx
1000b7f8:	83 e1 07             	and    ecx,0x7
1000b7fb:	c1 fb 03             	sar    ebx,0x3
1000b7fe:	85 c9                	test   ecx,ecx
1000b800:	0f 84 79 02 00 00    	je     0x1000ba7f
1000b806:	6b c9 0c             	imul   ecx,ecx,0xc
1000b809:	03 4d 98             	add    ecx,DWORD PTR [ebp-0x68]
1000b80c:	66 81 39 00 80       	cmp    WORD PTR [ecx],0x8000
1000b811:	89 4d 9c             	mov    DWORD PTR [ebp-0x64],ecx
1000b814:	72 13                	jb     0x1000b829
1000b816:	8b f1                	mov    esi,ecx
1000b818:	8d 7d c4             	lea    edi,[ebp-0x3c]
1000b81b:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b81c:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b81d:	8d 45 c4             	lea    eax,[ebp-0x3c]
1000b820:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b821:	ff 4d c6             	dec    DWORD PTR [ebp-0x3a]
1000b824:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
1000b827:	8b c8                	mov    ecx,eax
1000b829:	0f b7 79 0a          	movzx  edi,WORD PTR [ecx+0xa]
1000b82d:	8b 55 ea             	mov    edx,DWORD PTR [ebp-0x16]
1000b830:	33 c0                	xor    eax,eax
1000b832:	8b cf                	mov    ecx,edi
1000b834:	be ff 7f 00 00       	mov    esi,0x7fff
1000b839:	33 ca                	xor    ecx,edx
1000b83b:	23 d6                	and    edx,esi
1000b83d:	23 fe                	and    edi,esi
1000b83f:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
1000b842:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
1000b845:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000b848:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
1000b84b:	81 e1 00 80 00 00    	and    ecx,0x8000
1000b851:	66 3b d6             	cmp    dx,si
1000b854:	8d 04 17             	lea    eax,[edi+edx*1]
1000b857:	0f b7 c0             	movzx  eax,ax
1000b85a:	0f 83 03 02 00 00    	jae    0x1000ba63
1000b860:	66 3b fe             	cmp    di,si
1000b863:	0f 83 fa 01 00 00    	jae    0x1000ba63
1000b869:	66 3d fd bf          	cmp    ax,0xbffd
1000b86d:	0f 87 f0 01 00 00    	ja     0x1000ba63
1000b873:	66 3d bf 3f          	cmp    ax,0x3fbf
1000b877:	77 10                	ja     0x1000b889
1000b879:	33 c0                	xor    eax,eax
1000b87b:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000b87e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000b881:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000b884:	e9 f6 01 00 00       	jmp    0x1000ba7f
1000b889:	33 f6                	xor    esi,esi
1000b88b:	66 3b d6             	cmp    dx,si
1000b88e:	75 1d                	jne    0x1000b8ad
1000b890:	40                   	inc    eax
1000b891:	f7 45 e8 ff ff ff 7f 	test   DWORD PTR [ebp-0x18],0x7fffffff
1000b898:	75 13                	jne    0x1000b8ad
1000b89a:	39 75 e4             	cmp    DWORD PTR [ebp-0x1c],esi
1000b89d:	75 0e                	jne    0x1000b8ad
1000b89f:	39 75 e0             	cmp    DWORD PTR [ebp-0x20],esi
1000b8a2:	75 09                	jne    0x1000b8ad
1000b8a4:	66 89 75 ea          	mov    WORD PTR [ebp-0x16],si
1000b8a8:	e9 d2 01 00 00       	jmp    0x1000ba7f
1000b8ad:	66 3b fe             	cmp    di,si
1000b8b0:	75 24                	jne    0x1000b8d6
1000b8b2:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
1000b8b5:	40                   	inc    eax
1000b8b6:	f7 42 08 ff ff ff 7f 	test   DWORD PTR [edx+0x8],0x7fffffff
1000b8bd:	75 17                	jne    0x1000b8d6
1000b8bf:	39 72 04             	cmp    DWORD PTR [edx+0x4],esi
1000b8c2:	75 12                	jne    0x1000b8d6
1000b8c4:	39 32                	cmp    DWORD PTR [edx],esi
1000b8c6:	75 0e                	jne    0x1000b8d6
1000b8c8:	89 75 e8             	mov    DWORD PTR [ebp-0x18],esi
1000b8cb:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000b8ce:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
1000b8d1:	e9 a9 01 00 00       	jmp    0x1000ba7f
1000b8d6:	8d 7d f4             	lea    edi,[ebp-0xc]
1000b8d9:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000b8dc:	89 7d bc             	mov    DWORD PTR [ebp-0x44],edi
1000b8df:	c7 45 c0 05 00 00 00 	mov    DWORD PTR [ebp-0x40],0x5
1000b8e6:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
1000b8e9:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
1000b8ec:	03 d2                	add    edx,edx
1000b8ee:	85 f6                	test   esi,esi
1000b8f0:	89 75 b0             	mov    DWORD PTR [ebp-0x50],esi
1000b8f3:	7e 58                	jle    0x1000b94d
1000b8f5:	8d 54 15 e0          	lea    edx,[ebp+edx*1-0x20]
1000b8f9:	89 55 a8             	mov    DWORD PTR [ebp-0x58],edx
1000b8fc:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
1000b8ff:	83 c2 08             	add    edx,0x8
1000b902:	89 55 ac             	mov    DWORD PTR [ebp-0x54],edx
1000b905:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
1000b908:	8b 75 ac             	mov    esi,DWORD PTR [ebp-0x54]
1000b90b:	0f b7 36             	movzx  esi,WORD PTR [esi]
1000b90e:	0f b7 12             	movzx  edx,WORD PTR [edx]
1000b911:	8b 7f fc             	mov    edi,DWORD PTR [edi-0x4]
1000b914:	0f af d6             	imul   edx,esi
1000b917:	83 65 90 00          	and    DWORD PTR [ebp-0x70],0x0
1000b91b:	8d 34 17             	lea    esi,[edi+edx*1]
1000b91e:	3b f7                	cmp    esi,edi
1000b920:	72 04                	jb     0x1000b926
1000b922:	3b f2                	cmp    esi,edx
1000b924:	73 07                	jae    0x1000b92d
1000b926:	c7 45 90 01 00 00 00 	mov    DWORD PTR [ebp-0x70],0x1
1000b92d:	83 7d 90 00          	cmp    DWORD PTR [ebp-0x70],0x0
1000b931:	8b 7d bc             	mov    edi,DWORD PTR [ebp-0x44]
1000b934:	89 77 fc             	mov    DWORD PTR [edi-0x4],esi
1000b937:	74 03                	je     0x1000b93c
1000b939:	66 ff 07             	inc    WORD PTR [edi]
1000b93c:	83 45 a8 02          	add    DWORD PTR [ebp-0x58],0x2
1000b940:	83 6d ac 02          	sub    DWORD PTR [ebp-0x54],0x2
1000b944:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000b947:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
1000b94b:	7f b8                	jg     0x1000b905
1000b94d:	47                   	inc    edi
1000b94e:	47                   	inc    edi
1000b94f:	ff 45 a4             	inc    DWORD PTR [ebp-0x5c]
1000b952:	ff 4d c0             	dec    DWORD PTR [ebp-0x40]
1000b955:	83 7d c0 00          	cmp    DWORD PTR [ebp-0x40],0x0
1000b959:	89 7d bc             	mov    DWORD PTR [ebp-0x44],edi
1000b95c:	7f 88                	jg     0x1000b8e6
1000b95e:	05 02 c0 00 00       	add    eax,0xc002
1000b963:	66 85 c0             	test   ax,ax
1000b966:	7e 3b                	jle    0x1000b9a3
1000b968:	f7 45 f8 00 00 00 80 	test   DWORD PTR [ebp-0x8],0x80000000
1000b96f:	75 2d                	jne    0x1000b99e
1000b971:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000b974:	8b 7d f4             	mov    edi,DWORD PTR [ebp-0xc]
1000b977:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000b97a:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
1000b97d:	c1 ea 1f             	shr    edx,0x1f
1000b980:	03 ff                	add    edi,edi
1000b982:	0b fa                	or     edi,edx
1000b984:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000b987:	c1 ee 1f             	shr    esi,0x1f
1000b98a:	03 d2                	add    edx,edx
1000b98c:	0b d6                	or     edx,esi
1000b98e:	05 ff ff 00 00       	add    eax,0xffff
1000b993:	66 85 c0             	test   ax,ax
1000b996:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000b999:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
1000b99c:	7f ca                	jg     0x1000b968
1000b99e:	66 85 c0             	test   ax,ax
1000b9a1:	7f 52                	jg     0x1000b9f5
1000b9a3:	05 ff ff 00 00       	add    eax,0xffff
1000b9a8:	66 85 c0             	test   ax,ax
1000b9ab:	7d 48                	jge    0x1000b9f5
1000b9ad:	8b d0                	mov    edx,eax
1000b9af:	f7 da                	neg    edx
1000b9b1:	0f b7 d2             	movzx  edx,dx
1000b9b4:	89 55 bc             	mov    DWORD PTR [ebp-0x44],edx
1000b9b7:	03 c2                	add    eax,edx
1000b9b9:	f6 45 f0 01          	test   BYTE PTR [ebp-0x10],0x1
1000b9bd:	74 03                	je     0x1000b9c2
1000b9bf:	ff 45 b8             	inc    DWORD PTR [ebp-0x48]
1000b9c2:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000b9c5:	8b 7d f4             	mov    edi,DWORD PTR [ebp-0xc]
1000b9c8:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000b9cb:	d1 6d f8             	shr    DWORD PTR [ebp-0x8],1
1000b9ce:	c1 e2 1f             	shl    edx,0x1f
1000b9d1:	d1 ef                	shr    edi,1
1000b9d3:	0b fa                	or     edi,edx
1000b9d5:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000b9d8:	c1 e6 1f             	shl    esi,0x1f
1000b9db:	d1 ea                	shr    edx,1
1000b9dd:	0b d6                	or     edx,esi
1000b9df:	ff 4d bc             	dec    DWORD PTR [ebp-0x44]
1000b9e2:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000b9e5:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
1000b9e8:	75 cf                	jne    0x1000b9b9
1000b9ea:	83 7d b8 00          	cmp    DWORD PTR [ebp-0x48],0x0
1000b9ee:	74 05                	je     0x1000b9f5
1000b9f0:	66 83 4d f0 01       	or     WORD PTR [ebp-0x10],0x1
1000b9f5:	66 81 7d f0 00 80    	cmp    WORD PTR [ebp-0x10],0x8000
1000b9fb:	77 11                	ja     0x1000ba0e
1000b9fd:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000ba00:	81 e2 ff ff 01 00    	and    edx,0x1ffff
1000ba06:	81 fa 00 80 01 00    	cmp    edx,0x18000
1000ba0c:	75 33                	jne    0x1000ba41
1000ba0e:	83 7d f2 ff          	cmp    DWORD PTR [ebp-0xe],0xffffffff
1000ba12:	75 2a                	jne    0x1000ba3e
1000ba14:	83 65 f2 00          	and    DWORD PTR [ebp-0xe],0x0
1000ba18:	83 7d f6 ff          	cmp    DWORD PTR [ebp-0xa],0xffffffff
1000ba1c:	75 1b                	jne    0x1000ba39
1000ba1e:	83 65 f6 00          	and    DWORD PTR [ebp-0xa],0x0
1000ba22:	66 81 7d fa ff ff    	cmp    WORD PTR [ebp-0x6],0xffff
1000ba28:	75 09                	jne    0x1000ba33
1000ba2a:	66 c7 45 fa 00 80    	mov    WORD PTR [ebp-0x6],0x8000
1000ba30:	40                   	inc    eax
1000ba31:	eb 0e                	jmp    0x1000ba41
1000ba33:	66 ff 45 fa          	inc    WORD PTR [ebp-0x6]
1000ba37:	eb 08                	jmp    0x1000ba41
1000ba39:	ff 45 f6             	inc    DWORD PTR [ebp-0xa]
1000ba3c:	eb 03                	jmp    0x1000ba41
1000ba3e:	ff 45 f2             	inc    DWORD PTR [ebp-0xe]
1000ba41:	66 3d ff 7f          	cmp    ax,0x7fff
1000ba45:	73 1c                	jae    0x1000ba63
1000ba47:	66 8b 55 f2          	mov    dx,WORD PTR [ebp-0xe]
1000ba4b:	66 89 55 e0          	mov    WORD PTR [ebp-0x20],dx
1000ba4f:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
1000ba52:	89 55 e2             	mov    DWORD PTR [ebp-0x1e],edx
1000ba55:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000ba58:	0b c1                	or     eax,ecx
1000ba5a:	89 55 e6             	mov    DWORD PTR [ebp-0x1a],edx
1000ba5d:	66 89 45 ea          	mov    WORD PTR [ebp-0x16],ax
1000ba61:	eb 1c                	jmp    0x1000ba7f
1000ba63:	66 f7 d9             	neg    cx
1000ba66:	1b c9                	sbb    ecx,ecx
1000ba68:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
1000ba6c:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000ba72:	81 c1 00 80 ff 7f    	add    ecx,0x7fff8000
1000ba78:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
1000ba7c:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000ba7f:	85 db                	test   ebx,ebx
1000ba81:	0f 85 6b fd ff ff    	jne    0x1000b7f2
1000ba87:	33 c0                	xor    eax,eax
1000ba89:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
1000ba8c:	c1 e9 10             	shr    ecx,0x10
1000ba8f:	66 81 f9 ff 3f       	cmp    cx,0x3fff
1000ba94:	bb ff 7f 00 00       	mov    ebx,0x7fff
1000ba99:	0f 82 48 02 00 00    	jb     0x1000bce7
1000ba9f:	8b 75 da             	mov    esi,DWORD PTR [ebp-0x26]
1000baa2:	ff 45 b4             	inc    DWORD PTR [ebp-0x4c]
1000baa5:	0f b7 d1             	movzx  edx,cx
1000baa8:	8b ce                	mov    ecx,esi
1000baaa:	33 ca                	xor    ecx,edx
1000baac:	23 d3                	and    edx,ebx
1000baae:	23 f3                	and    esi,ebx
1000bab0:	81 e1 00 80 00 00    	and    ecx,0x8000
1000bab6:	66 3b d3             	cmp    dx,bx
1000bab9:	8d 3c 16             	lea    edi,[esi+edx*1]
1000babc:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
1000babf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
1000bac2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000bac5:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
1000bac8:	0f b7 ff             	movzx  edi,di
1000bacb:	0f 83 fc 01 00 00    	jae    0x1000bccd
1000bad1:	66 3b f3             	cmp    si,bx
1000bad4:	0f 83 f3 01 00 00    	jae    0x1000bccd
1000bada:	66 81 ff fd bf       	cmp    di,0xbffd
1000badf:	0f 87 e8 01 00 00    	ja     0x1000bccd
1000bae5:	66 81 ff bf 3f       	cmp    di,0x3fbf
1000baea:	77 08                	ja     0x1000baf4
1000baec:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000baef:	e9 ed 01 00 00       	jmp    0x1000bce1
1000baf4:	66 3b d0             	cmp    dx,ax
1000baf7:	75 1d                	jne    0x1000bb16
1000baf9:	47                   	inc    edi
1000bafa:	f7 45 e8 ff ff ff 7f 	test   DWORD PTR [ebp-0x18],0x7fffffff
1000bb01:	75 13                	jne    0x1000bb16
1000bb03:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
1000bb06:	75 0e                	jne    0x1000bb16
1000bb08:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
1000bb0b:	75 09                	jne    0x1000bb16
1000bb0d:	66 89 45 ea          	mov    WORD PTR [ebp-0x16],ax
1000bb11:	e9 d1 01 00 00       	jmp    0x1000bce7
1000bb16:	66 3b f0             	cmp    si,ax
1000bb19:	75 14                	jne    0x1000bb2f
1000bb1b:	47                   	inc    edi
1000bb1c:	f7 45 d8 ff ff ff 7f 	test   DWORD PTR [ebp-0x28],0x7fffffff
1000bb23:	75 0a                	jne    0x1000bb2f
1000bb25:	39 45 d4             	cmp    DWORD PTR [ebp-0x2c],eax
1000bb28:	75 05                	jne    0x1000bb2f
1000bb2a:	39 45 d0             	cmp    DWORD PTR [ebp-0x30],eax
1000bb2d:	74 bd                	je     0x1000baec
1000bb2f:	83 65 ac 00          	and    DWORD PTR [ebp-0x54],0x0
1000bb33:	8d 45 f4             	lea    eax,[ebp-0xc]
1000bb36:	c7 45 c0 05 00 00 00 	mov    DWORD PTR [ebp-0x40],0x5
1000bb3d:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
1000bb40:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
1000bb43:	03 d2                	add    edx,edx
1000bb45:	85 f6                	test   esi,esi
1000bb47:	89 75 b0             	mov    DWORD PTR [ebp-0x50],esi
1000bb4a:	7e 52                	jle    0x1000bb9e
1000bb4c:	8d 75 d8             	lea    esi,[ebp-0x28]
1000bb4f:	8d 54 15 e0          	lea    edx,[ebp+edx*1-0x20]
1000bb53:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000bb56:	89 55 b8             	mov    DWORD PTR [ebp-0x48],edx
1000bb59:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
1000bb5c:	8b 75 b8             	mov    esi,DWORD PTR [ebp-0x48]
1000bb5f:	0f b7 36             	movzx  esi,WORD PTR [esi]
1000bb62:	0f b7 12             	movzx  edx,WORD PTR [edx]
1000bb65:	83 65 bc 00          	and    DWORD PTR [ebp-0x44],0x0
1000bb69:	0f af d6             	imul   edx,esi
1000bb6c:	8b 70 fc             	mov    esi,DWORD PTR [eax-0x4]
1000bb6f:	8d 1c 16             	lea    ebx,[esi+edx*1]
1000bb72:	3b de                	cmp    ebx,esi
1000bb74:	72 04                	jb     0x1000bb7a
1000bb76:	3b da                	cmp    ebx,edx
1000bb78:	73 07                	jae    0x1000bb81
1000bb7a:	c7 45 bc 01 00 00 00 	mov    DWORD PTR [ebp-0x44],0x1
1000bb81:	83 7d bc 00          	cmp    DWORD PTR [ebp-0x44],0x0
1000bb85:	89 58 fc             	mov    DWORD PTR [eax-0x4],ebx
1000bb88:	74 03                	je     0x1000bb8d
1000bb8a:	66 ff 00             	inc    WORD PTR [eax]
1000bb8d:	83 45 b8 02          	add    DWORD PTR [ebp-0x48],0x2
1000bb91:	83 6d a4 02          	sub    DWORD PTR [ebp-0x5c],0x2
1000bb95:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000bb98:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
1000bb9c:	7f bb                	jg     0x1000bb59
1000bb9e:	40                   	inc    eax
1000bb9f:	40                   	inc    eax
1000bba0:	ff 45 ac             	inc    DWORD PTR [ebp-0x54]
1000bba3:	ff 4d c0             	dec    DWORD PTR [ebp-0x40]
1000bba6:	83 7d c0 00          	cmp    DWORD PTR [ebp-0x40],0x0
1000bbaa:	7f 91                	jg     0x1000bb3d
1000bbac:	81 c7 02 c0 00 00    	add    edi,0xc002
1000bbb2:	33 c0                	xor    eax,eax
1000bbb4:	66 3b f8             	cmp    di,ax
1000bbb7:	7e 3c                	jle    0x1000bbf5
1000bbb9:	f7 45 f8 00 00 00 80 	test   DWORD PTR [ebp-0x8],0x80000000
1000bbc0:	75 2e                	jne    0x1000bbf0
1000bbc2:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000bbc5:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
1000bbc8:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000bbcb:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
1000bbce:	c1 ea 1f             	shr    edx,0x1f
1000bbd1:	03 db                	add    ebx,ebx
1000bbd3:	0b da                	or     ebx,edx
1000bbd5:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000bbd8:	c1 ee 1f             	shr    esi,0x1f
1000bbdb:	03 d2                	add    edx,edx
1000bbdd:	0b d6                	or     edx,esi
1000bbdf:	81 c7 ff ff 00 00    	add    edi,0xffff
1000bbe5:	66 3b f8             	cmp    di,ax
1000bbe8:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
1000bbeb:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
1000bbee:	7f c9                	jg     0x1000bbb9
1000bbf0:	66 3b f8             	cmp    di,ax
1000bbf3:	7f 4d                	jg     0x1000bc42
1000bbf5:	81 c7 ff ff 00 00    	add    edi,0xffff
1000bbfb:	66 3b f8             	cmp    di,ax
1000bbfe:	7d 42                	jge    0x1000bc42
1000bc00:	8b c7                	mov    eax,edi
1000bc02:	f7 d8                	neg    eax
1000bc04:	0f b7 c0             	movzx  eax,ax
1000bc07:	03 f8                	add    edi,eax
1000bc09:	f6 45 f0 01          	test   BYTE PTR [ebp-0x10],0x1
1000bc0d:	74 03                	je     0x1000bc12
1000bc0f:	ff 45 a8             	inc    DWORD PTR [ebp-0x58]
1000bc12:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000bc15:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
1000bc18:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000bc1b:	d1 6d f8             	shr    DWORD PTR [ebp-0x8],1
1000bc1e:	c1 e2 1f             	shl    edx,0x1f
1000bc21:	d1 eb                	shr    ebx,1
1000bc23:	0b da                	or     ebx,edx
1000bc25:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000bc28:	c1 e6 1f             	shl    esi,0x1f
1000bc2b:	d1 ea                	shr    edx,1
1000bc2d:	0b d6                	or     edx,esi
1000bc2f:	48                   	dec    eax
1000bc30:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
1000bc33:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
1000bc36:	75 d1                	jne    0x1000bc09
1000bc38:	39 45 a8             	cmp    DWORD PTR [ebp-0x58],eax
1000bc3b:	74 05                	je     0x1000bc42
1000bc3d:	66 83 4d f0 01       	or     WORD PTR [ebp-0x10],0x1
1000bc42:	66 81 7d f0 00 80    	cmp    WORD PTR [ebp-0x10],0x8000
1000bc48:	77 11                	ja     0x1000bc5b
1000bc4a:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000bc4d:	81 e2 ff ff 01 00    	and    edx,0x1ffff
1000bc53:	81 fa 00 80 01 00    	cmp    edx,0x18000
1000bc59:	75 31                	jne    0x1000bc8c
1000bc5b:	83 7d f2 ff          	cmp    DWORD PTR [ebp-0xe],0xffffffff
1000bc5f:	75 28                	jne    0x1000bc89
1000bc61:	83 7d f6 ff          	cmp    DWORD PTR [ebp-0xa],0xffffffff
1000bc65:	89 45 f2             	mov    DWORD PTR [ebp-0xe],eax
1000bc68:	75 1a                	jne    0x1000bc84
1000bc6a:	66 81 7d fa ff ff    	cmp    WORD PTR [ebp-0x6],0xffff
1000bc70:	89 45 f6             	mov    DWORD PTR [ebp-0xa],eax
1000bc73:	75 09                	jne    0x1000bc7e
1000bc75:	66 c7 45 fa 00 80    	mov    WORD PTR [ebp-0x6],0x8000
1000bc7b:	47                   	inc    edi
1000bc7c:	eb 0e                	jmp    0x1000bc8c
1000bc7e:	66 ff 45 fa          	inc    WORD PTR [ebp-0x6]
1000bc82:	eb 08                	jmp    0x1000bc8c
1000bc84:	ff 45 f6             	inc    DWORD PTR [ebp-0xa]
1000bc87:	eb 03                	jmp    0x1000bc8c
1000bc89:	ff 45 f2             	inc    DWORD PTR [ebp-0xe]
1000bc8c:	66 81 ff ff 7f       	cmp    di,0x7fff
1000bc91:	72 1e                	jb     0x1000bcb1
1000bc93:	66 f7 d9             	neg    cx
1000bc96:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000bc99:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000bc9c:	1b c9                	sbb    ecx,ecx
1000bc9e:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000bca4:	81 c1 00 80 ff 7f    	add    ecx,0x7fff8000
1000bcaa:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000bcad:	33 c0                	xor    eax,eax
1000bcaf:	eb 36                	jmp    0x1000bce7
1000bcb1:	66 8b 45 f2          	mov    ax,WORD PTR [ebp-0xe]
1000bcb5:	66 89 45 e0          	mov    WORD PTR [ebp-0x20],ax
1000bcb9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000bcbc:	89 45 e2             	mov    DWORD PTR [ebp-0x1e],eax
1000bcbf:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000bcc2:	0b f9                	or     edi,ecx
1000bcc4:	89 45 e6             	mov    DWORD PTR [ebp-0x1a],eax
1000bcc7:	66 89 7d ea          	mov    WORD PTR [ebp-0x16],di
1000bccb:	eb e0                	jmp    0x1000bcad
1000bccd:	66 f7 d9             	neg    cx
1000bcd0:	1b c9                	sbb    ecx,ecx
1000bcd2:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000bcd8:	81 c1 00 80 ff 7f    	add    ecx,0x7fff8000
1000bcde:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000bce1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000bce4:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000bce7:	f6 45 18 01          	test   BYTE PTR [ebp+0x18],0x1
1000bceb:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
1000bcee:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
1000bcf1:	66 89 0a             	mov    WORD PTR [edx],cx
1000bcf4:	74 32                	je     0x1000bd28
1000bcf6:	0f bf c9             	movsx  ecx,cx
1000bcf9:	01 4d 14             	add    DWORD PTR [ebp+0x14],ecx
1000bcfc:	39 45 14             	cmp    DWORD PTR [ebp+0x14],eax
1000bcff:	7f 27                	jg     0x1000bd28
1000bd01:	66 83 22 00          	and    WORD PTR [edx],0x0
1000bd05:	66 81 7d 94 00 80    	cmp    WORD PTR [ebp-0x6c],0x8000
1000bd0b:	c6 42 03 01          	mov    BYTE PTR [edx+0x3],0x1
1000bd0f:	0f 95 c0             	setne  al
1000bd12:	fe c8                	dec    al
1000bd14:	24 0d                	and    al,0xd
1000bd16:	04 20                	add    al,0x20
1000bd18:	88 42 02             	mov    BYTE PTR [edx+0x2],al
1000bd1b:	c6 42 04 30          	mov    BYTE PTR [edx+0x4],0x30
1000bd1f:	c6 42 05 00          	mov    BYTE PTR [edx+0x5],0x0
1000bd23:	e9 b1 f9 ff ff       	jmp    0x1000b6d9
1000bd28:	6a 15                	push   0x15
1000bd2a:	59                   	pop    ecx
1000bd2b:	39 4d 14             	cmp    DWORD PTR [ebp+0x14],ecx
1000bd2e:	7e 03                	jle    0x1000bd33
1000bd30:	89 4d 14             	mov    DWORD PTR [ebp+0x14],ecx
1000bd33:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
1000bd36:	c1 ee 10             	shr    esi,0x10
1000bd39:	6a 08                	push   0x8
1000bd3b:	81 ee fe 3f 00 00    	sub    esi,0x3ffe
1000bd41:	66 89 45 ea          	mov    WORD PTR [ebp-0x16],ax
1000bd45:	5b                   	pop    ebx
1000bd46:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000bd49:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
1000bd4c:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
1000bd4f:	d1 65 e0             	shl    DWORD PTR [ebp-0x20],1
1000bd52:	c1 e8 1f             	shr    eax,0x1f
1000bd55:	03 ff                	add    edi,edi
1000bd57:	0b f8                	or     edi,eax
1000bd59:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000bd5c:	c1 e9 1f             	shr    ecx,0x1f
1000bd5f:	03 c0                	add    eax,eax
1000bd61:	0b c1                	or     eax,ecx
1000bd63:	4b                   	dec    ebx
1000bd64:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
1000bd67:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000bd6a:	75 da                	jne    0x1000bd46
1000bd6c:	85 f6                	test   esi,esi
1000bd6e:	7d 32                	jge    0x1000bda2
1000bd70:	f7 de                	neg    esi
1000bd72:	81 e6 ff 00 00 00    	and    esi,0xff
1000bd78:	7e 28                	jle    0x1000bda2
1000bd7a:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000bd7d:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
1000bd80:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
1000bd83:	d1 6d e8             	shr    DWORD PTR [ebp-0x18],1
1000bd86:	c1 e0 1f             	shl    eax,0x1f
1000bd89:	d1 ef                	shr    edi,1
1000bd8b:	0b f8                	or     edi,eax
1000bd8d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000bd90:	c1 e1 1f             	shl    ecx,0x1f
1000bd93:	d1 e8                	shr    eax,1
1000bd95:	0b c1                	or     eax,ecx
1000bd97:	4e                   	dec    esi
1000bd98:	85 f6                	test   esi,esi
1000bd9a:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
1000bd9d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000bda0:	7f d8                	jg     0x1000bd7a
1000bda2:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000bda5:	40                   	inc    eax
1000bda6:	85 c0                	test   eax,eax
1000bda8:	8d 5a 04             	lea    ebx,[edx+0x4]
1000bdab:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
1000bdae:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
1000bdb1:	0f 8e b5 00 00 00    	jle    0x1000be6c
1000bdb7:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
1000bdba:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
1000bdbd:	8d 75 e0             	lea    esi,[ebp-0x20]
1000bdc0:	8d 7d c4             	lea    edi,[ebp-0x3c]
1000bdc3:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000bdc4:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000bdc5:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000bdc6:	d1 65 e0             	shl    DWORD PTR [ebp-0x20],1
1000bdc9:	8b 7d e0             	mov    edi,DWORD PTR [ebp-0x20]
1000bdcc:	d1 65 e0             	shl    DWORD PTR [ebp-0x20],1
1000bdcf:	c1 ea 1f             	shr    edx,0x1f
1000bdd2:	8d 0c 00             	lea    ecx,[eax+eax*1]
1000bdd5:	0b ca                	or     ecx,edx
1000bdd7:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
1000bdda:	8b f0                	mov    esi,eax
1000bddc:	c1 ee 1f             	shr    esi,0x1f
1000bddf:	03 d2                	add    edx,edx
1000bde1:	0b d6                	or     edx,esi
1000bde3:	8b c1                	mov    eax,ecx
1000bde5:	8d 34 09             	lea    esi,[ecx+ecx*1]
1000bde8:	c1 e8 1f             	shr    eax,0x1f
1000bdeb:	8d 0c 12             	lea    ecx,[edx+edx*1]
1000bdee:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
1000bdf1:	c1 ef 1f             	shr    edi,0x1f
1000bdf4:	0b c8                	or     ecx,eax
1000bdf6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000bdf9:	0b f7                	or     esi,edi
1000bdfb:	8d 3c 02             	lea    edi,[edx+eax*1]
1000bdfe:	3b f8                	cmp    edi,eax
1000be00:	72 04                	jb     0x1000be06
1000be02:	3b fa                	cmp    edi,edx
1000be04:	73 18                	jae    0x1000be1e
1000be06:	8d 46 01             	lea    eax,[esi+0x1]
1000be09:	33 d2                	xor    edx,edx
1000be0b:	3b c6                	cmp    eax,esi
1000be0d:	72 05                	jb     0x1000be14
1000be0f:	83 f8 01             	cmp    eax,0x1
1000be12:	73 03                	jae    0x1000be17
1000be14:	33 d2                	xor    edx,edx
1000be16:	42                   	inc    edx
1000be17:	85 d2                	test   edx,edx
1000be19:	8b f0                	mov    esi,eax
1000be1b:	74 01                	je     0x1000be1e
1000be1d:	41                   	inc    ecx
1000be1e:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
1000be21:	8d 14 30             	lea    edx,[eax+esi*1]
1000be24:	3b d6                	cmp    edx,esi
1000be26:	89 55 bc             	mov    DWORD PTR [ebp-0x44],edx
1000be29:	72 04                	jb     0x1000be2f
1000be2b:	3b d0                	cmp    edx,eax
1000be2d:	73 01                	jae    0x1000be30
1000be2f:	41                   	inc    ecx
1000be30:	03 4d cc             	add    ecx,DWORD PTR [ebp-0x34]
1000be33:	c1 ea 1f             	shr    edx,0x1f
1000be36:	03 c9                	add    ecx,ecx
1000be38:	0b ca                	or     ecx,edx
1000be3a:	8d 34 3f             	lea    esi,[edi+edi*1]
1000be3d:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
1000be40:	8b 75 bc             	mov    esi,DWORD PTR [ebp-0x44]
1000be43:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000be46:	c1 e9 18             	shr    ecx,0x18
1000be49:	03 f6                	add    esi,esi
1000be4b:	80 c1 30             	add    cl,0x30
1000be4e:	8b c7                	mov    eax,edi
1000be50:	c1 e8 1f             	shr    eax,0x1f
1000be53:	0b f0                	or     esi,eax
1000be55:	88 0b                	mov    BYTE PTR [ebx],cl
1000be57:	43                   	inc    ebx
1000be58:	ff 4d b4             	dec    DWORD PTR [ebp-0x4c]
1000be5b:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
1000be5f:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000be62:	c6 45 eb 00          	mov    BYTE PTR [ebp-0x15],0x0
1000be66:	0f 8f 4b ff ff ff    	jg     0x1000bdb7
1000be6c:	4b                   	dec    ebx
1000be6d:	8a 03                	mov    al,BYTE PTR [ebx]
1000be6f:	4b                   	dec    ebx
1000be70:	3c 35                	cmp    al,0x35
1000be72:	7d 0e                	jge    0x1000be82
1000be74:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
1000be77:	eb 44                	jmp    0x1000bebd
1000be79:	80 3b 39             	cmp    BYTE PTR [ebx],0x39
1000be7c:	75 09                	jne    0x1000be87
1000be7e:	c6 03 30             	mov    BYTE PTR [ebx],0x30
1000be81:	4b                   	dec    ebx
1000be82:	3b 5d c0             	cmp    ebx,DWORD PTR [ebp-0x40]
1000be85:	73 f2                	jae    0x1000be79
1000be87:	3b 5d c0             	cmp    ebx,DWORD PTR [ebp-0x40]
1000be8a:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
1000be8d:	73 04                	jae    0x1000be93
1000be8f:	43                   	inc    ebx
1000be90:	66 ff 00             	inc    WORD PTR [eax]
1000be93:	fe 03                	inc    BYTE PTR [ebx]
1000be95:	2a d8                	sub    bl,al
1000be97:	80 eb 03             	sub    bl,0x3
1000be9a:	0f be cb             	movsx  ecx,bl
1000be9d:	88 58 03             	mov    BYTE PTR [eax+0x3],bl
1000bea0:	c6 44 01 04 00       	mov    BYTE PTR [ecx+eax*1+0x4],0x0
1000bea5:	8b 45 8c             	mov    eax,DWORD PTR [ebp-0x74]
1000bea8:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000beab:	5f                   	pop    edi
1000beac:	5e                   	pop    esi
1000bead:	33 cd                	xor    ecx,ebp
1000beaf:	5b                   	pop    ebx
1000beb0:	e8 66 7c ff ff       	call   0x10003b1b
1000beb5:	c9                   	leave  
1000beb6:	c3                   	ret    
1000beb7:	80 3b 30             	cmp    BYTE PTR [ebx],0x30
1000beba:	75 05                	jne    0x1000bec1
1000bebc:	4b                   	dec    ebx
1000bebd:	3b d9                	cmp    ebx,ecx
1000bebf:	73 f6                	jae    0x1000beb7
1000bec1:	3b d9                	cmp    ebx,ecx
1000bec3:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
1000bec6:	73 cd                	jae    0x1000be95
1000bec8:	66 83 20 00          	and    WORD PTR [eax],0x0
1000becc:	66 81 7d 94 00 80    	cmp    WORD PTR [ebp-0x6c],0x8000
1000bed2:	c6 40 03 01          	mov    BYTE PTR [eax+0x3],0x1
1000bed6:	0f 95 c2             	setne  dl
1000bed9:	fe ca                	dec    dl
1000bedb:	80 e2 0d             	and    dl,0xd
1000bede:	80 c2 20             	add    dl,0x20
1000bee1:	88 50 02             	mov    BYTE PTR [eax+0x2],dl
1000bee4:	c6 01 30             	mov    BYTE PTR [ecx],0x30
1000bee7:	c6 40 05 00          	mov    BYTE PTR [eax+0x5],0x0
1000beeb:	e9 e9 f7 ff ff       	jmp    0x1000b6d9
1000bef0:	55                   	push   ebp
1000bef1:	8b ec                	mov    ebp,esp
1000bef3:	83 ec 04             	sub    esp,0x4
1000bef6:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000bef9:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000befc:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000beff:	c1 e9 07             	shr    ecx,0x7
1000bf02:	66 0f ef c0          	pxor   xmm0,xmm0
1000bf06:	eb 08                	jmp    0x1000bf10
1000bf08:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
1000bf0f:	90                   	nop
1000bf10:	66 0f 7f 07          	movdqa XMMWORD PTR [edi],xmm0
1000bf14:	66 0f 7f 47 10       	movdqa XMMWORD PTR [edi+0x10],xmm0
1000bf19:	66 0f 7f 47 20       	movdqa XMMWORD PTR [edi+0x20],xmm0
1000bf1e:	66 0f 7f 47 30       	movdqa XMMWORD PTR [edi+0x30],xmm0
1000bf23:	66 0f 7f 47 40       	movdqa XMMWORD PTR [edi+0x40],xmm0
1000bf28:	66 0f 7f 47 50       	movdqa XMMWORD PTR [edi+0x50],xmm0
1000bf2d:	66 0f 7f 47 60       	movdqa XMMWORD PTR [edi+0x60],xmm0
1000bf32:	66 0f 7f 47 70       	movdqa XMMWORD PTR [edi+0x70],xmm0
1000bf37:	8d bf 80 00 00 00    	lea    edi,[edi+0x80]
1000bf3d:	49                   	dec    ecx
1000bf3e:	75 d0                	jne    0x1000bf10
1000bf40:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000bf43:	8b e5                	mov    esp,ebp
1000bf45:	5d                   	pop    ebp
1000bf46:	c3                   	ret    
1000bf47:	55                   	push   ebp
1000bf48:	8b ec                	mov    ebp,esp
1000bf4a:	83 ec 10             	sub    esp,0x10
1000bf4d:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000bf50:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bf53:	99                   	cdq    
1000bf54:	8b f8                	mov    edi,eax
1000bf56:	33 fa                	xor    edi,edx
1000bf58:	2b fa                	sub    edi,edx
1000bf5a:	83 e7 0f             	and    edi,0xf
1000bf5d:	33 fa                	xor    edi,edx
1000bf5f:	2b fa                	sub    edi,edx
1000bf61:	85 ff                	test   edi,edi
1000bf63:	75 3c                	jne    0x1000bfa1
1000bf65:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000bf68:	8b d1                	mov    edx,ecx
1000bf6a:	83 e2 7f             	and    edx,0x7f
1000bf6d:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
1000bf70:	3b ca                	cmp    ecx,edx
1000bf72:	74 12                	je     0x1000bf86
1000bf74:	2b ca                	sub    ecx,edx
1000bf76:	51                   	push   ecx
1000bf77:	50                   	push   eax
1000bf78:	e8 73 ff ff ff       	call   0x1000bef0
1000bf7d:	83 c4 08             	add    esp,0x8
1000bf80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bf83:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
1000bf86:	85 d2                	test   edx,edx
1000bf88:	74 45                	je     0x1000bfcf
1000bf8a:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
1000bf8d:	2b c2                	sub    eax,edx
1000bf8f:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
1000bf92:	33 c0                	xor    eax,eax
1000bf94:	8b 7d f8             	mov    edi,DWORD PTR [ebp-0x8]
1000bf97:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
1000bf9a:	f3 aa                	rep stos BYTE PTR es:[edi],al
1000bf9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bf9f:	eb 2e                	jmp    0x1000bfcf
1000bfa1:	f7 df                	neg    edi
1000bfa3:	83 c7 10             	add    edi,0x10
1000bfa6:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
1000bfa9:	33 c0                	xor    eax,eax
1000bfab:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000bfae:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000bfb1:	f3 aa                	rep stos BYTE PTR es:[edi],al
1000bfb3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
1000bfb6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000bfb9:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
1000bfbc:	03 c8                	add    ecx,eax
1000bfbe:	2b d0                	sub    edx,eax
1000bfc0:	52                   	push   edx
1000bfc1:	6a 00                	push   0x0
1000bfc3:	51                   	push   ecx
1000bfc4:	e8 7e ff ff ff       	call   0x1000bf47
1000bfc9:	83 c4 0c             	add    esp,0xc
1000bfcc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bfcf:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000bfd2:	8b e5                	mov    esp,ebp
1000bfd4:	5d                   	pop    ebp
1000bfd5:	c3                   	ret    
1000bfd6:	33 c0                	xor    eax,eax
1000bfd8:	f6 c3 10             	test   bl,0x10
1000bfdb:	74 01                	je     0x1000bfde
1000bfdd:	40                   	inc    eax
1000bfde:	f6 c3 08             	test   bl,0x8
1000bfe1:	74 03                	je     0x1000bfe6
1000bfe3:	83 c8 04             	or     eax,0x4
1000bfe6:	f6 c3 04             	test   bl,0x4
1000bfe9:	74 03                	je     0x1000bfee
1000bfeb:	83 c8 08             	or     eax,0x8
1000bfee:	f6 c3 02             	test   bl,0x2
1000bff1:	74 03                	je     0x1000bff6
1000bff3:	83 c8 10             	or     eax,0x10
1000bff6:	f6 c3 01             	test   bl,0x1
1000bff9:	74 03                	je     0x1000bffe
1000bffb:	83 c8 20             	or     eax,0x20
1000bffe:	f7 c3 00 00 08 00    	test   ebx,0x80000
1000c004:	74 03                	je     0x1000c009
1000c006:	83 c8 02             	or     eax,0x2
1000c009:	8b cb                	mov    ecx,ebx
1000c00b:	ba 00 03 00 00       	mov    edx,0x300
1000c010:	23 ca                	and    ecx,edx
1000c012:	56                   	push   esi
1000c013:	be 00 02 00 00       	mov    esi,0x200
1000c018:	74 23                	je     0x1000c03d
1000c01a:	81 f9 00 01 00 00    	cmp    ecx,0x100
1000c020:	74 16                	je     0x1000c038
1000c022:	3b ce                	cmp    ecx,esi
1000c024:	74 0b                	je     0x1000c031
1000c026:	3b ca                	cmp    ecx,edx
1000c028:	75 13                	jne    0x1000c03d
1000c02a:	0d 00 0c 00 00       	or     eax,0xc00
1000c02f:	eb 0c                	jmp    0x1000c03d
1000c031:	0d 00 08 00 00       	or     eax,0x800
1000c036:	eb 05                	jmp    0x1000c03d
1000c038:	0d 00 04 00 00       	or     eax,0x400
1000c03d:	8b cb                	mov    ecx,ebx
1000c03f:	81 e1 00 00 03 00    	and    ecx,0x30000
1000c045:	74 0c                	je     0x1000c053
1000c047:	81 f9 00 00 01 00    	cmp    ecx,0x10000
1000c04d:	75 06                	jne    0x1000c055
1000c04f:	0b c6                	or     eax,esi
1000c051:	eb 02                	jmp    0x1000c055
1000c053:	0b c2                	or     eax,edx
1000c055:	f7 c3 00 00 04 00    	test   ebx,0x40000
1000c05b:	5e                   	pop    esi
1000c05c:	74 05                	je     0x1000c063
1000c05e:	0d 00 10 00 00       	or     eax,0x1000
1000c063:	c3                   	ret    
1000c064:	33 c0                	xor    eax,eax
1000c066:	f6 c2 10             	test   dl,0x10
1000c069:	74 05                	je     0x1000c070
1000c06b:	b8 80 00 00 00       	mov    eax,0x80
1000c070:	f6 c2 08             	test   dl,0x8
1000c073:	53                   	push   ebx
1000c074:	56                   	push   esi
1000c075:	57                   	push   edi
1000c076:	bb 00 02 00 00       	mov    ebx,0x200
1000c07b:	74 02                	je     0x1000c07f
1000c07d:	0b c3                	or     eax,ebx
1000c07f:	f6 c2 04             	test   dl,0x4
1000c082:	74 05                	je     0x1000c089
1000c084:	0d 00 04 00 00       	or     eax,0x400
1000c089:	f6 c2 02             	test   dl,0x2
1000c08c:	74 05                	je     0x1000c093
1000c08e:	0d 00 08 00 00       	or     eax,0x800
1000c093:	f6 c2 01             	test   dl,0x1
1000c096:	74 05                	je     0x1000c09d
1000c098:	0d 00 10 00 00       	or     eax,0x1000
1000c09d:	f7 c2 00 00 08 00    	test   edx,0x80000
1000c0a3:	bf 00 01 00 00       	mov    edi,0x100
1000c0a8:	74 02                	je     0x1000c0ac
1000c0aa:	0b c7                	or     eax,edi
1000c0ac:	8b ca                	mov    ecx,edx
1000c0ae:	be 00 03 00 00       	mov    esi,0x300
1000c0b3:	23 ce                	and    ecx,esi
1000c0b5:	74 1f                	je     0x1000c0d6
1000c0b7:	3b cf                	cmp    ecx,edi
1000c0b9:	74 16                	je     0x1000c0d1
1000c0bb:	3b cb                	cmp    ecx,ebx
1000c0bd:	74 0b                	je     0x1000c0ca
1000c0bf:	3b ce                	cmp    ecx,esi
1000c0c1:	75 13                	jne    0x1000c0d6
1000c0c3:	0d 00 60 00 00       	or     eax,0x6000
1000c0c8:	eb 0c                	jmp    0x1000c0d6
1000c0ca:	0d 00 40 00 00       	or     eax,0x4000
1000c0cf:	eb 05                	jmp    0x1000c0d6
1000c0d1:	0d 00 20 00 00       	or     eax,0x2000
1000c0d6:	b9 00 00 00 03       	mov    ecx,0x3000000
1000c0db:	5f                   	pop    edi
1000c0dc:	23 d1                	and    edx,ecx
1000c0de:	81 fa 00 00 00 01    	cmp    edx,0x1000000
1000c0e4:	5e                   	pop    esi
1000c0e5:	5b                   	pop    ebx
1000c0e6:	74 16                	je     0x1000c0fe
1000c0e8:	81 fa 00 00 00 02    	cmp    edx,0x2000000
1000c0ee:	74 0a                	je     0x1000c0fa
1000c0f0:	3b d1                	cmp    edx,ecx
1000c0f2:	75 0f                	jne    0x1000c103
1000c0f4:	0d 00 80 00 00       	or     eax,0x8000
1000c0f9:	c3                   	ret    
1000c0fa:	83 c8 40             	or     eax,0x40
1000c0fd:	c3                   	ret    
1000c0fe:	0d 40 80 00 00       	or     eax,0x8040
1000c103:	c3                   	ret    
1000c104:	83 ec 10             	sub    esp,0x10
1000c107:	53                   	push   ebx
1000c108:	55                   	push   ebp
1000c109:	56                   	push   esi
1000c10a:	57                   	push   edi
1000c10b:	9b d9 7c 24 14       	fstcw  WORD PTR [esp+0x14]
1000c110:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
1000c114:	33 d2                	xor    edx,edx
1000c116:	f6 c3 01             	test   bl,0x1
1000c119:	74 03                	je     0x1000c11e
1000c11b:	6a 10                	push   0x10
1000c11d:	5a                   	pop    edx
1000c11e:	f6 c3 04             	test   bl,0x4
1000c121:	74 03                	je     0x1000c126
1000c123:	83 ca 08             	or     edx,0x8
1000c126:	f6 c3 08             	test   bl,0x8
1000c129:	74 03                	je     0x1000c12e
1000c12b:	83 ca 04             	or     edx,0x4
1000c12e:	f6 c3 10             	test   bl,0x10
1000c131:	74 03                	je     0x1000c136
1000c133:	83 ca 02             	or     edx,0x2
1000c136:	f6 c3 20             	test   bl,0x20
1000c139:	74 03                	je     0x1000c13e
1000c13b:	83 ca 01             	or     edx,0x1
1000c13e:	f6 c3 02             	test   bl,0x2
1000c141:	74 06                	je     0x1000c149
1000c143:	81 ca 00 00 08 00    	or     edx,0x80000
1000c149:	0f b7 cb             	movzx  ecx,bx
1000c14c:	8b c1                	mov    eax,ecx
1000c14e:	bf 00 0c 00 00       	mov    edi,0xc00
1000c153:	23 c7                	and    eax,edi
1000c155:	bd 00 03 00 00       	mov    ebp,0x300
1000c15a:	be 00 02 00 00       	mov    esi,0x200
1000c15f:	74 20                	je     0x1000c181
1000c161:	3d 00 04 00 00       	cmp    eax,0x400
1000c166:	74 13                	je     0x1000c17b
1000c168:	3d 00 08 00 00       	cmp    eax,0x800
1000c16d:	74 08                	je     0x1000c177
1000c16f:	3b c7                	cmp    eax,edi
1000c171:	75 0e                	jne    0x1000c181
1000c173:	0b d5                	or     edx,ebp
1000c175:	eb 0a                	jmp    0x1000c181
1000c177:	0b d6                	or     edx,esi
1000c179:	eb 06                	jmp    0x1000c181
1000c17b:	81 ca 00 01 00 00    	or     edx,0x100
1000c181:	23 cd                	and    ecx,ebp
1000c183:	74 0c                	je     0x1000c191
1000c185:	3b ce                	cmp    ecx,esi
1000c187:	75 0e                	jne    0x1000c197
1000c189:	81 ca 00 00 01 00    	or     edx,0x10000
1000c18f:	eb 06                	jmp    0x1000c197
1000c191:	81 ca 00 00 02 00    	or     edx,0x20000
1000c197:	66 f7 c3 00 10       	test   bx,0x1000
1000c19c:	74 06                	je     0x1000c1a4
1000c19e:	81 ca 00 00 04 00    	or     edx,0x40000
1000c1a4:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
1000c1a8:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
1000c1ac:	8b c6                	mov    eax,esi
1000c1ae:	f7 d0                	not    eax
1000c1b0:	23 c2                	and    eax,edx
1000c1b2:	23 ce                	and    ecx,esi
1000c1b4:	0b c1                	or     eax,ecx
1000c1b6:	3b c2                	cmp    eax,edx
1000c1b8:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
1000c1bc:	0f 84 aa 00 00 00    	je     0x1000c26c
1000c1c2:	8b d8                	mov    ebx,eax
1000c1c4:	e8 0d fe ff ff       	call   0x1000bfd6
1000c1c9:	0f b7 c0             	movzx  eax,ax
1000c1cc:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
1000c1d0:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
1000c1d4:	9b d9 7c 24 10       	fstcw  WORD PTR [esp+0x10]
1000c1d9:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
1000c1dd:	33 d2                	xor    edx,edx
1000c1df:	f6 c3 01             	test   bl,0x1
1000c1e2:	74 03                	je     0x1000c1e7
1000c1e4:	6a 10                	push   0x10
1000c1e6:	5a                   	pop    edx
1000c1e7:	f6 c3 04             	test   bl,0x4
1000c1ea:	74 03                	je     0x1000c1ef
1000c1ec:	83 ca 08             	or     edx,0x8
1000c1ef:	f6 c3 08             	test   bl,0x8
1000c1f2:	74 03                	je     0x1000c1f7
1000c1f4:	83 ca 04             	or     edx,0x4
1000c1f7:	f6 c3 10             	test   bl,0x10
1000c1fa:	74 03                	je     0x1000c1ff
1000c1fc:	83 ca 02             	or     edx,0x2
1000c1ff:	f6 c3 20             	test   bl,0x20
1000c202:	74 03                	je     0x1000c207
1000c204:	83 ca 01             	or     edx,0x1
1000c207:	f6 c3 02             	test   bl,0x2
1000c20a:	74 06                	je     0x1000c212
1000c20c:	81 ca 00 00 08 00    	or     edx,0x80000
1000c212:	0f b7 cb             	movzx  ecx,bx
1000c215:	8b c1                	mov    eax,ecx
1000c217:	23 c7                	and    eax,edi
1000c219:	74 24                	je     0x1000c23f
1000c21b:	3d 00 04 00 00       	cmp    eax,0x400
1000c220:	74 17                	je     0x1000c239
1000c222:	3d 00 08 00 00       	cmp    eax,0x800
1000c227:	74 08                	je     0x1000c231
1000c229:	3b c7                	cmp    eax,edi
1000c22b:	75 12                	jne    0x1000c23f
1000c22d:	0b d5                	or     edx,ebp
1000c22f:	eb 0e                	jmp    0x1000c23f
1000c231:	81 ca 00 02 00 00    	or     edx,0x200
1000c237:	eb 06                	jmp    0x1000c23f
1000c239:	81 ca 00 01 00 00    	or     edx,0x100
1000c23f:	23 cd                	and    ecx,ebp
1000c241:	74 10                	je     0x1000c253
1000c243:	81 f9 00 02 00 00    	cmp    ecx,0x200
1000c249:	75 0e                	jne    0x1000c259
1000c24b:	81 ca 00 00 01 00    	or     edx,0x10000
1000c251:	eb 06                	jmp    0x1000c259
1000c253:	81 ca 00 00 02 00    	or     edx,0x20000
1000c259:	66 f7 c3 00 10       	test   bx,0x1000
1000c25e:	74 06                	je     0x1000c266
1000c260:	81 ca 00 00 04 00    	or     edx,0x40000
1000c266:	8b c2                	mov    eax,edx
1000c268:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
1000c26c:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
1000c273:	0f 84 86 01 00 00    	je     0x1000c3ff
1000c279:	81 e6 1f 03 08 03    	and    esi,0x308031f
1000c27f:	8b fe                	mov    edi,esi
1000c281:	0f ae 5c 24 18       	stmxcsr DWORD PTR [esp+0x18]
1000c286:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1000c28a:	33 f6                	xor    esi,esi
1000c28c:	84 c0                	test   al,al
1000c28e:	79 03                	jns    0x1000c293
1000c290:	6a 10                	push   0x10
1000c292:	5e                   	pop    esi
1000c293:	66 a9 00 02          	test   ax,0x200
1000c297:	74 03                	je     0x1000c29c
1000c299:	83 ce 08             	or     esi,0x8
1000c29c:	66 a9 00 04          	test   ax,0x400
1000c2a0:	74 03                	je     0x1000c2a5
1000c2a2:	83 ce 04             	or     esi,0x4
1000c2a5:	66 a9 00 08          	test   ax,0x800
1000c2a9:	74 03                	je     0x1000c2ae
1000c2ab:	83 ce 02             	or     esi,0x2
1000c2ae:	66 a9 00 10          	test   ax,0x1000
1000c2b2:	74 03                	je     0x1000c2b7
1000c2b4:	83 ce 01             	or     esi,0x1
1000c2b7:	66 a9 00 01          	test   ax,0x100
1000c2bb:	74 06                	je     0x1000c2c3
1000c2bd:	81 ce 00 00 08 00    	or     esi,0x80000
1000c2c3:	8b c8                	mov    ecx,eax
1000c2c5:	bd 00 60 00 00       	mov    ebp,0x6000
1000c2ca:	23 cd                	and    ecx,ebp
1000c2cc:	74 2a                	je     0x1000c2f8
1000c2ce:	81 f9 00 20 00 00    	cmp    ecx,0x2000
1000c2d4:	74 1c                	je     0x1000c2f2
1000c2d6:	81 f9 00 40 00 00    	cmp    ecx,0x4000
1000c2dc:	74 0c                	je     0x1000c2ea
1000c2de:	3b cd                	cmp    ecx,ebp
1000c2e0:	75 16                	jne    0x1000c2f8
1000c2e2:	81 ce 00 03 00 00    	or     esi,0x300
1000c2e8:	eb 0e                	jmp    0x1000c2f8
1000c2ea:	81 ce 00 02 00 00    	or     esi,0x200
1000c2f0:	eb 06                	jmp    0x1000c2f8
1000c2f2:	81 ce 00 01 00 00    	or     esi,0x100
1000c2f8:	bb 40 80 00 00       	mov    ebx,0x8040
1000c2fd:	23 c3                	and    eax,ebx
1000c2ff:	83 e8 40             	sub    eax,0x40
1000c302:	74 1c                	je     0x1000c320
1000c304:	2d c0 7f 00 00       	sub    eax,0x7fc0
1000c309:	74 0d                	je     0x1000c318
1000c30b:	83 e8 40             	sub    eax,0x40
1000c30e:	75 16                	jne    0x1000c326
1000c310:	81 ce 00 00 00 01    	or     esi,0x1000000
1000c316:	eb 0e                	jmp    0x1000c326
1000c318:	81 ce 00 00 00 03    	or     esi,0x3000000
1000c31e:	eb 06                	jmp    0x1000c326
1000c320:	81 ce 00 00 00 02    	or     esi,0x2000000
1000c326:	8b d7                	mov    edx,edi
1000c328:	23 7c 24 24          	and    edi,DWORD PTR [esp+0x24]
1000c32c:	f7 d2                	not    edx
1000c32e:	23 d6                	and    edx,esi
1000c330:	0b d7                	or     edx,edi
1000c332:	3b d6                	cmp    edx,esi
1000c334:	75 07                	jne    0x1000c33d
1000c336:	8b c6                	mov    eax,esi
1000c338:	e9 ab 00 00 00       	jmp    0x1000c3e8
1000c33d:	e8 22 fd ff ff       	call   0x1000c064
1000c342:	50                   	push   eax
1000c343:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
1000c347:	e8 8d 07 00 00       	call   0x1000cad9
1000c34c:	59                   	pop    ecx
1000c34d:	0f ae 5c 24 28       	stmxcsr DWORD PTR [esp+0x28]
1000c352:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
1000c356:	33 d2                	xor    edx,edx
1000c358:	84 c0                	test   al,al
1000c35a:	79 03                	jns    0x1000c35f
1000c35c:	6a 10                	push   0x10
1000c35e:	5a                   	pop    edx
1000c35f:	bf 00 02 00 00       	mov    edi,0x200
1000c364:	85 c7                	test   edi,eax
1000c366:	74 03                	je     0x1000c36b
1000c368:	83 ca 08             	or     edx,0x8
1000c36b:	66 a9 00 04          	test   ax,0x400
1000c36f:	74 03                	je     0x1000c374
1000c371:	83 ca 04             	or     edx,0x4
1000c374:	66 a9 00 08          	test   ax,0x800
1000c378:	74 03                	je     0x1000c37d
1000c37a:	83 ca 02             	or     edx,0x2
1000c37d:	66 a9 00 10          	test   ax,0x1000
1000c381:	74 03                	je     0x1000c386
1000c383:	83 ca 01             	or     edx,0x1
1000c386:	be 00 01 00 00       	mov    esi,0x100
1000c38b:	85 c6                	test   esi,eax
1000c38d:	74 06                	je     0x1000c395
1000c38f:	81 ca 00 00 08 00    	or     edx,0x80000
1000c395:	8b c8                	mov    ecx,eax
1000c397:	23 cd                	and    ecx,ebp
1000c399:	74 22                	je     0x1000c3bd
1000c39b:	81 f9 00 20 00 00    	cmp    ecx,0x2000
1000c3a1:	74 18                	je     0x1000c3bb
1000c3a3:	81 f9 00 40 00 00    	cmp    ecx,0x4000
1000c3a9:	74 0c                	je     0x1000c3b7
1000c3ab:	3b cd                	cmp    ecx,ebp
1000c3ad:	75 0e                	jne    0x1000c3bd
1000c3af:	81 ca 00 03 00 00    	or     edx,0x300
1000c3b5:	eb 06                	jmp    0x1000c3bd
1000c3b7:	0b d7                	or     edx,edi
1000c3b9:	eb 02                	jmp    0x1000c3bd
1000c3bb:	0b d6                	or     edx,esi
1000c3bd:	23 c3                	and    eax,ebx
1000c3bf:	83 e8 40             	sub    eax,0x40
1000c3c2:	74 1c                	je     0x1000c3e0
1000c3c4:	2d c0 7f 00 00       	sub    eax,0x7fc0
1000c3c9:	74 0d                	je     0x1000c3d8
1000c3cb:	83 e8 40             	sub    eax,0x40
1000c3ce:	75 16                	jne    0x1000c3e6
1000c3d0:	81 ca 00 00 00 01    	or     edx,0x1000000
1000c3d6:	eb 0e                	jmp    0x1000c3e6
1000c3d8:	81 ca 00 00 00 03    	or     edx,0x3000000
1000c3de:	eb 06                	jmp    0x1000c3e6
1000c3e0:	81 ca 00 00 00 02    	or     edx,0x2000000
1000c3e6:	8b c2                	mov    eax,edx
1000c3e8:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
1000c3ec:	8b d0                	mov    edx,eax
1000c3ee:	33 d1                	xor    edx,ecx
1000c3f0:	0b c1                	or     eax,ecx
1000c3f2:	f7 c2 1f 03 08 00    	test   edx,0x8031f
1000c3f8:	74 05                	je     0x1000c3ff
1000c3fa:	0d 00 00 00 80       	or     eax,0x80000000
1000c3ff:	5f                   	pop    edi
1000c400:	5e                   	pop    esi
1000c401:	5d                   	pop    ebp
1000c402:	5b                   	pop    ebx
1000c403:	83 c4 10             	add    esp,0x10
1000c406:	c3                   	ret    
1000c407:	cc                   	int3   
1000c408:	55                   	push   ebp
1000c409:	8b ec                	mov    ebp,esp
1000c40b:	53                   	push   ebx
1000c40c:	56                   	push   esi
1000c40d:	57                   	push   edi
1000c40e:	55                   	push   ebp
1000c40f:	6a 00                	push   0x0
1000c411:	6a 00                	push   0x0
1000c413:	68 20 c4 00 10       	push   0x1000c420
1000c418:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c41b:	e8 ce 0b 00 00       	call   0x1000cfee
1000c420:	5d                   	pop    ebp
1000c421:	5f                   	pop    edi
1000c422:	5e                   	pop    esi
1000c423:	5b                   	pop    ebx
1000c424:	8b e5                	mov    esp,ebp
1000c426:	5d                   	pop    ebp
1000c427:	c3                   	ret    
1000c428:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
1000c42c:	f7 41 04 06 00 00 00 	test   DWORD PTR [ecx+0x4],0x6
1000c433:	b8 01 00 00 00       	mov    eax,0x1
1000c438:	74 32                	je     0x1000c46c
1000c43a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000c43e:	8b 48 fc             	mov    ecx,DWORD PTR [eax-0x4]
1000c441:	33 c8                	xor    ecx,eax
1000c443:	e8 d3 76 ff ff       	call   0x10003b1b
1000c448:	55                   	push   ebp
1000c449:	8b 68 10             	mov    ebp,DWORD PTR [eax+0x10]
1000c44c:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
1000c44f:	52                   	push   edx
1000c450:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
1000c453:	52                   	push   edx
1000c454:	e8 14 00 00 00       	call   0x1000c46d
1000c459:	83 c4 08             	add    esp,0x8
1000c45c:	5d                   	pop    ebp
1000c45d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000c461:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1000c465:	89 02                	mov    DWORD PTR [edx],eax
1000c467:	b8 03 00 00 00       	mov    eax,0x3
1000c46c:	c3                   	ret    
1000c46d:	53                   	push   ebx
1000c46e:	56                   	push   esi
1000c46f:	57                   	push   edi
1000c470:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1000c474:	55                   	push   ebp
1000c475:	50                   	push   eax
1000c476:	6a fe                	push   0xfffffffe
1000c478:	68 28 c4 00 10       	push   0x1000c428
1000c47d:	64 ff 35 00 00 00 00 	push   DWORD PTR fs:0x0
1000c484:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c489:	33 c4                	xor    eax,esp
1000c48b:	50                   	push   eax
1000c48c:	8d 44 24 04          	lea    eax,[esp+0x4]
1000c490:	64 a3 00 00 00 00    	mov    fs:0x0,eax
1000c496:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
1000c49a:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
1000c49d:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
1000c4a0:	83 fe ff             	cmp    esi,0xffffffff
1000c4a3:	74 3a                	je     0x1000c4df
1000c4a5:	83 7c 24 2c ff       	cmp    DWORD PTR [esp+0x2c],0xffffffff
1000c4aa:	74 06                	je     0x1000c4b2
1000c4ac:	3b 74 24 2c          	cmp    esi,DWORD PTR [esp+0x2c]
1000c4b0:	76 2d                	jbe    0x1000c4df
1000c4b2:	8d 34 76             	lea    esi,[esi+esi*2]
1000c4b5:	8b 0c b3             	mov    ecx,DWORD PTR [ebx+esi*4]
1000c4b8:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
1000c4bc:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
1000c4bf:	83 7c b3 04 00       	cmp    DWORD PTR [ebx+esi*4+0x4],0x0
1000c4c4:	75 17                	jne    0x1000c4dd
1000c4c6:	68 01 01 00 00       	push   0x101
1000c4cb:	8b 44 b3 08          	mov    eax,DWORD PTR [ebx+esi*4+0x8]
1000c4cf:	e8 49 00 00 00       	call   0x1000c51d
1000c4d4:	8b 44 b3 08          	mov    eax,DWORD PTR [ebx+esi*4+0x8]
1000c4d8:	e8 5f 00 00 00       	call   0x1000c53c
1000c4dd:	eb b7                	jmp    0x1000c496
1000c4df:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
1000c4e3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
1000c4ea:	83 c4 18             	add    esp,0x18
1000c4ed:	5f                   	pop    edi
1000c4ee:	5e                   	pop    esi
1000c4ef:	5b                   	pop    ebx
1000c4f0:	c3                   	ret    
1000c4f1:	33 c0                	xor    eax,eax
1000c4f3:	64 8b 0d 00 00 00 00 	mov    ecx,DWORD PTR fs:0x0
1000c4fa:	81 79 04 28 c4 00 10 	cmp    DWORD PTR [ecx+0x4],0x1000c428
1000c501:	75 10                	jne    0x1000c513
1000c503:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
1000c506:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
1000c509:	39 51 08             	cmp    DWORD PTR [ecx+0x8],edx
1000c50c:	75 05                	jne    0x1000c513
1000c50e:	b8 01 00 00 00       	mov    eax,0x1
1000c513:	c3                   	ret    
1000c514:	53                   	push   ebx
1000c515:	51                   	push   ecx
1000c516:	bb d0 0b 01 10       	mov    ebx,0x10010bd0
1000c51b:	eb 0b                	jmp    0x1000c528
1000c51d:	53                   	push   ebx
1000c51e:	51                   	push   ecx
1000c51f:	bb d0 0b 01 10       	mov    ebx,0x10010bd0
1000c524:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1000c528:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
1000c52b:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
1000c52e:	89 6b 0c             	mov    DWORD PTR [ebx+0xc],ebp
1000c531:	55                   	push   ebp
1000c532:	51                   	push   ecx
1000c533:	50                   	push   eax
1000c534:	58                   	pop    eax
1000c535:	59                   	pop    ecx
1000c536:	5d                   	pop    ebp
1000c537:	59                   	pop    ecx
1000c538:	5b                   	pop    ebx
1000c539:	c2 04 00             	ret    0x4
1000c53c:	ff d0                	call   eax
1000c53e:	c3                   	ret    
1000c53f:	6a 10                	push   0x10
1000c541:	68 28 e6 00 10       	push   0x1000e628
1000c546:	e8 dd 92 ff ff       	call   0x10005828
1000c54b:	33 c0                	xor    eax,eax
1000c54d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000c550:	33 ff                	xor    edi,edi
1000c552:	3b df                	cmp    ebx,edi
1000c554:	0f 95 c0             	setne  al
1000c557:	3b c7                	cmp    eax,edi
1000c559:	75 1d                	jne    0x1000c578
1000c55b:	e8 e6 84 ff ff       	call   0x10004a46
1000c560:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000c566:	57                   	push   edi
1000c567:	57                   	push   edi
1000c568:	57                   	push   edi
1000c569:	57                   	push   edi
1000c56a:	57                   	push   edi
1000c56b:	e8 06 b6 ff ff       	call   0x10007b76
1000c570:	83 c4 14             	add    esp,0x14
1000c573:	83 c8 ff             	or     eax,0xffffffff
1000c576:	eb 53                	jmp    0x1000c5cb
1000c578:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
1000c57f:	75 38                	jne    0x1000c5b9
1000c581:	6a 04                	push   0x4
1000c583:	e8 70 87 ff ff       	call   0x10004cf8
1000c588:	59                   	pop    ecx
1000c589:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000c58c:	53                   	push   ebx
1000c58d:	e8 df 87 ff ff       	call   0x10004d71
1000c592:	59                   	pop    ecx
1000c593:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000c596:	3b c7                	cmp    eax,edi
1000c598:	74 0b                	je     0x1000c5a5
1000c59a:	8b 73 fc             	mov    esi,DWORD PTR [ebx-0x4]
1000c59d:	83 ee 09             	sub    esi,0x9
1000c5a0:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000c5a3:	eb 03                	jmp    0x1000c5a8
1000c5a5:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
1000c5a8:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000c5af:	e8 25 00 00 00       	call   0x1000c5d9
1000c5b4:	39 7d e0             	cmp    DWORD PTR [ebp-0x20],edi
1000c5b7:	75 10                	jne    0x1000c5c9
1000c5b9:	53                   	push   ebx
1000c5ba:	57                   	push   edi
1000c5bb:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
1000c5c1:	ff 15 20 d0 00 10    	call   DWORD PTR ds:0x1000d020
1000c5c7:	8b f0                	mov    esi,eax
1000c5c9:	8b c6                	mov    eax,esi
1000c5cb:	e8 9d 92 ff ff       	call   0x1000586d
1000c5d0:	c3                   	ret    
1000c5d1:	33 ff                	xor    edi,edi
1000c5d3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000c5d6:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
1000c5d9:	6a 04                	push   0x4
1000c5db:	e8 40 86 ff ff       	call   0x10004c20
1000c5e0:	59                   	pop    ecx
1000c5e1:	c3                   	ret    
1000c5e2:	55                   	push   ebp
1000c5e3:	8d ac 24 58 fd ff ff 	lea    ebp,[esp-0x2a8]
1000c5ea:	81 ec 28 03 00 00    	sub    esp,0x328
1000c5f0:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c5f5:	33 c5                	xor    eax,ebp
1000c5f7:	89 85 a4 02 00 00    	mov    DWORD PTR [ebp+0x2a4],eax
1000c5fd:	f6 05 e0 0b 01 10 01 	test   BYTE PTR ds:0x10010be0,0x1
1000c604:	56                   	push   esi
1000c605:	74 08                	je     0x1000c60f
1000c607:	6a 0a                	push   0xa
1000c609:	e8 14 97 ff ff       	call   0x10005d22
1000c60e:	59                   	pop    ecx
1000c60f:	e8 f4 c6 ff ff       	call   0x10008d08
1000c614:	85 c0                	test   eax,eax
1000c616:	74 08                	je     0x1000c620
1000c618:	6a 16                	push   0x16
1000c61a:	e8 f6 c6 ff ff       	call   0x10008d15
1000c61f:	59                   	pop    ecx
1000c620:	f6 05 e0 0b 01 10 02 	test   BYTE PTR ds:0x10010be0,0x2
1000c627:	0f 84 a0 00 00 00    	je     0x1000c6cd
1000c62d:	89 85 88 00 00 00    	mov    DWORD PTR [ebp+0x88],eax
1000c633:	89 8d 84 00 00 00    	mov    DWORD PTR [ebp+0x84],ecx
1000c639:	89 95 80 00 00 00    	mov    DWORD PTR [ebp+0x80],edx
1000c63f:	89 5d 7c             	mov    DWORD PTR [ebp+0x7c],ebx
1000c642:	89 75 78             	mov    DWORD PTR [ebp+0x78],esi
1000c645:	89 7d 74             	mov    DWORD PTR [ebp+0x74],edi
1000c648:	66 8c 95 a0 00 00 00 	data16 mov WORD PTR [ebp+0xa0],ss
1000c64f:	66 8c 8d 94 00 00 00 	data16 mov WORD PTR [ebp+0x94],cs
1000c656:	66 8c 5d 70          	data16 mov WORD PTR [ebp+0x70],ds
1000c65a:	66 8c 45 6c          	data16 mov WORD PTR [ebp+0x6c],es
1000c65e:	66 8c 65 68          	data16 mov WORD PTR [ebp+0x68],fs
1000c662:	66 8c 6d 64          	data16 mov WORD PTR [ebp+0x64],gs
1000c666:	9c                   	pushf  
1000c667:	8f 85 98 00 00 00    	pop    DWORD PTR [ebp+0x98]
1000c66d:	8b b5 ac 02 00 00    	mov    esi,DWORD PTR [ebp+0x2ac]
1000c673:	8d 85 ac 02 00 00    	lea    eax,[ebp+0x2ac]
1000c679:	89 85 9c 00 00 00    	mov    DWORD PTR [ebp+0x9c],eax
1000c67f:	c7 45 d8 01 00 01 00 	mov    DWORD PTR [ebp-0x28],0x10001
1000c686:	89 b5 90 00 00 00    	mov    DWORD PTR [ebp+0x90],esi
1000c68c:	8b 40 fc             	mov    eax,DWORD PTR [eax-0x4]
1000c68f:	6a 50                	push   0x50
1000c691:	89 85 8c 00 00 00    	mov    DWORD PTR [ebp+0x8c],eax
1000c697:	8d 45 80             	lea    eax,[ebp-0x80]
1000c69a:	6a 00                	push   0x0
1000c69c:	50                   	push   eax
1000c69d:	e8 4e bf ff ff       	call   0x100085f0
1000c6a2:	8d 45 80             	lea    eax,[ebp-0x80]
1000c6a5:	83 c4 0c             	add    esp,0xc
1000c6a8:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
1000c6ab:	8d 45 d8             	lea    eax,[ebp-0x28]
1000c6ae:	6a 00                	push   0x0
1000c6b0:	c7 45 80 15 00 00 40 	mov    DWORD PTR [ebp-0x80],0x40000015
1000c6b7:	89 75 8c             	mov    DWORD PTR [ebp-0x74],esi
1000c6ba:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
1000c6bd:	ff 15 88 d0 00 10    	call   DWORD PTR ds:0x1000d088
1000c6c3:	8d 45 d0             	lea    eax,[ebp-0x30]
1000c6c6:	50                   	push   eax
1000c6c7:	ff 15 84 d0 00 10    	call   DWORD PTR ds:0x1000d084
1000c6cd:	6a 03                	push   0x3
1000c6cf:	e8 e2 95 ff ff       	call   0x10005cb6
1000c6d4:	cc                   	int3   
1000c6d5:	55                   	push   ebp
1000c6d6:	8b ec                	mov    ebp,esp
1000c6d8:	83 ec 0c             	sub    esp,0xc
1000c6db:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c6e0:	33 c5                	xor    eax,ebp
1000c6e2:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000c6e5:	6a 06                	push   0x6
1000c6e7:	8d 45 f4             	lea    eax,[ebp-0xc]
1000c6ea:	50                   	push   eax
1000c6eb:	68 04 10 00 00       	push   0x1004
1000c6f0:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c6f3:	c6 45 fa 00          	mov    BYTE PTR [ebp-0x6],0x0
1000c6f7:	ff 15 24 d0 00 10    	call   DWORD PTR ds:0x1000d024
1000c6fd:	85 c0                	test   eax,eax
1000c6ff:	75 05                	jne    0x1000c706
1000c701:	83 c8 ff             	or     eax,0xffffffff
1000c704:	eb 0a                	jmp    0x1000c710
1000c706:	8d 45 f4             	lea    eax,[ebp-0xc]
1000c709:	50                   	push   eax
1000c70a:	e8 ed 01 00 00       	call   0x1000c8fc
1000c70f:	59                   	pop    ecx
1000c710:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000c713:	33 cd                	xor    ecx,ebp
1000c715:	e8 01 74 ff ff       	call   0x10003b1b
1000c71a:	c9                   	leave  
1000c71b:	c3                   	ret    
1000c71c:	55                   	push   ebp
1000c71d:	8b ec                	mov    ebp,esp
1000c71f:	83 ec 34             	sub    esp,0x34
1000c722:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c727:	33 c5                	xor    eax,ebp
1000c729:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000c72c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000c72f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
1000c732:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
1000c735:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000c738:	53                   	push   ebx
1000c739:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
1000c73c:	8b 00                	mov    eax,DWORD PTR [eax]
1000c73e:	56                   	push   esi
1000c73f:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
1000c742:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000c745:	57                   	push   edi
1000c746:	33 ff                	xor    edi,edi
1000c748:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
1000c74b:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
1000c74e:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
1000c751:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
1000c754:	0f 84 5f 01 00 00    	je     0x1000c8b9
1000c75a:	8b 35 dc d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0dc
1000c760:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000c763:	51                   	push   ecx
1000c764:	50                   	push   eax
1000c765:	ff d6                	call   esi
1000c767:	85 c0                	test   eax,eax
1000c769:	8b 1d fc d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d0fc
1000c76f:	74 5e                	je     0x1000c7cf
1000c771:	83 7d e8 01          	cmp    DWORD PTR [ebp-0x18],0x1
1000c775:	75 58                	jne    0x1000c7cf
1000c777:	8d 45 e8             	lea    eax,[ebp-0x18]
1000c77a:	50                   	push   eax
1000c77b:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c77e:	ff d6                	call   esi
1000c780:	85 c0                	test   eax,eax
1000c782:	74 4b                	je     0x1000c7cf
1000c784:	83 7d e8 01          	cmp    DWORD PTR [ebp-0x18],0x1
1000c788:	75 45                	jne    0x1000c7cf
1000c78a:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
1000c78d:	83 fe ff             	cmp    esi,0xffffffff
1000c790:	c7 45 d4 01 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x1
1000c797:	75 0c                	jne    0x1000c7a5
1000c799:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
1000c79c:	e8 6f ba ff ff       	call   0x10008210
1000c7a1:	8b f0                	mov    esi,eax
1000c7a3:	59                   	pop    ecx
1000c7a4:	46                   	inc    esi
1000c7a5:	3b f7                	cmp    esi,edi
1000c7a7:	7e 5b                	jle    0x1000c804
1000c7a9:	81 fe f0 ff ff 7f    	cmp    esi,0x7ffffff0
1000c7af:	77 53                	ja     0x1000c804
1000c7b1:	8d 44 36 08          	lea    eax,[esi+esi*1+0x8]
1000c7b5:	3d 00 04 00 00       	cmp    eax,0x400
1000c7ba:	77 2f                	ja     0x1000c7eb
1000c7bc:	e8 0f 01 00 00       	call   0x1000c8d0
1000c7c1:	8b c4                	mov    eax,esp
1000c7c3:	3b c7                	cmp    eax,edi
1000c7c5:	74 38                	je     0x1000c7ff
1000c7c7:	c7 00 cc cc 00 00    	mov    DWORD PTR [eax],0xcccc
1000c7cd:	eb 2d                	jmp    0x1000c7fc
1000c7cf:	57                   	push   edi
1000c7d0:	57                   	push   edi
1000c7d1:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
1000c7d4:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
1000c7d7:	6a 01                	push   0x1
1000c7d9:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c7dc:	ff d3                	call   ebx
1000c7de:	8b f0                	mov    esi,eax
1000c7e0:	3b f7                	cmp    esi,edi
1000c7e2:	75 c3                	jne    0x1000c7a7
1000c7e4:	33 c0                	xor    eax,eax
1000c7e6:	e9 d1 00 00 00       	jmp    0x1000c8bc
1000c7eb:	50                   	push   eax
1000c7ec:	e8 67 72 ff ff       	call   0x10003a58
1000c7f1:	3b c7                	cmp    eax,edi
1000c7f3:	59                   	pop    ecx
1000c7f4:	74 09                	je     0x1000c7ff
1000c7f6:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
1000c7fc:	83 c0 08             	add    eax,0x8
1000c7ff:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000c802:	eb 03                	jmp    0x1000c807
1000c804:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
1000c807:	39 7d e4             	cmp    DWORD PTR [ebp-0x1c],edi
1000c80a:	74 d8                	je     0x1000c7e4
1000c80c:	8d 04 36             	lea    eax,[esi+esi*1]
1000c80f:	50                   	push   eax
1000c810:	57                   	push   edi
1000c811:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c814:	e8 d7 bd ff ff       	call   0x100085f0
1000c819:	83 c4 0c             	add    esp,0xc
1000c81c:	56                   	push   esi
1000c81d:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c820:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
1000c823:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
1000c826:	6a 01                	push   0x1
1000c828:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c82b:	ff d3                	call   ebx
1000c82d:	85 c0                	test   eax,eax
1000c82f:	74 7f                	je     0x1000c8b0
1000c831:	8b 5d cc             	mov    ebx,DWORD PTR [ebp-0x34]
1000c834:	3b df                	cmp    ebx,edi
1000c836:	74 1d                	je     0x1000c855
1000c838:	57                   	push   edi
1000c839:	57                   	push   edi
1000c83a:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000c83d:	53                   	push   ebx
1000c83e:	56                   	push   esi
1000c83f:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c842:	57                   	push   edi
1000c843:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c846:	ff 15 c4 d0 00 10    	call   DWORD PTR ds:0x1000d0c4
1000c84c:	85 c0                	test   eax,eax
1000c84e:	74 60                	je     0x1000c8b0
1000c850:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
1000c853:	eb 5b                	jmp    0x1000c8b0
1000c855:	39 7d d4             	cmp    DWORD PTR [ebp-0x2c],edi
1000c858:	8b 1d c4 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d0c4
1000c85e:	75 14                	jne    0x1000c874
1000c860:	57                   	push   edi
1000c861:	57                   	push   edi
1000c862:	57                   	push   edi
1000c863:	57                   	push   edi
1000c864:	56                   	push   esi
1000c865:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c868:	57                   	push   edi
1000c869:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c86c:	ff d3                	call   ebx
1000c86e:	8b f0                	mov    esi,eax
1000c870:	3b f7                	cmp    esi,edi
1000c872:	74 3c                	je     0x1000c8b0
1000c874:	56                   	push   esi
1000c875:	6a 01                	push   0x1
1000c877:	e8 14 9e ff ff       	call   0x10006690
1000c87c:	3b c7                	cmp    eax,edi
1000c87e:	59                   	pop    ecx
1000c87f:	59                   	pop    ecx
1000c880:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000c883:	74 2b                	je     0x1000c8b0
1000c885:	57                   	push   edi
1000c886:	57                   	push   edi
1000c887:	56                   	push   esi
1000c888:	50                   	push   eax
1000c889:	56                   	push   esi
1000c88a:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c88d:	57                   	push   edi
1000c88e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c891:	ff d3                	call   ebx
1000c893:	3b c7                	cmp    eax,edi
1000c895:	75 0e                	jne    0x1000c8a5
1000c897:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
1000c89a:	e8 dc 70 ff ff       	call   0x1000397b
1000c89f:	59                   	pop    ecx
1000c8a0:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
1000c8a3:	eb 0b                	jmp    0x1000c8b0
1000c8a5:	83 7d dc ff          	cmp    DWORD PTR [ebp-0x24],0xffffffff
1000c8a9:	74 05                	je     0x1000c8b0
1000c8ab:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
1000c8ae:	89 01                	mov    DWORD PTR [ecx],eax
1000c8b0:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c8b3:	e8 ed d0 ff ff       	call   0x100099a5
1000c8b8:	59                   	pop    ecx
1000c8b9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000c8bc:	8d 65 c0             	lea    esp,[ebp-0x40]
1000c8bf:	5f                   	pop    edi
1000c8c0:	5e                   	pop    esi
1000c8c1:	5b                   	pop    ebx
1000c8c2:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000c8c5:	33 cd                	xor    ecx,ebp
1000c8c7:	e8 4f 72 ff ff       	call   0x10003b1b
1000c8cc:	c9                   	leave  
1000c8cd:	c3                   	ret    
1000c8ce:	cc                   	int3   
1000c8cf:	cc                   	int3   
1000c8d0:	51                   	push   ecx
1000c8d1:	8d 4c 24 08          	lea    ecx,[esp+0x8]
1000c8d5:	2b c8                	sub    ecx,eax
1000c8d7:	83 e1 0f             	and    ecx,0xf
1000c8da:	03 c1                	add    eax,ecx
1000c8dc:	1b c9                	sbb    ecx,ecx
1000c8de:	0b c1                	or     eax,ecx
1000c8e0:	59                   	pop    ecx
1000c8e1:	e9 6a 02 00 00       	jmp    0x1000cb50
1000c8e6:	51                   	push   ecx
1000c8e7:	8d 4c 24 08          	lea    ecx,[esp+0x8]
1000c8eb:	2b c8                	sub    ecx,eax
1000c8ed:	83 e1 07             	and    ecx,0x7
1000c8f0:	03 c1                	add    eax,ecx
1000c8f2:	1b c9                	sbb    ecx,ecx
1000c8f4:	0b c1                	or     eax,ecx
1000c8f6:	59                   	pop    ecx
1000c8f7:	e9 54 02 00 00       	jmp    0x1000cb50
1000c8fc:	6a 0a                	push   0xa
1000c8fe:	6a 00                	push   0x0
1000c900:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
1000c904:	e8 9d 04 00 00       	call   0x1000cda6
1000c909:	83 c4 0c             	add    esp,0xc
1000c90c:	c3                   	ret    
1000c90d:	55                   	push   ebp
1000c90e:	8b ec                	mov    ebp,esp
1000c910:	83 ec 18             	sub    esp,0x18
1000c913:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c918:	33 c5                	xor    eax,ebp
1000c91a:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000c91d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000c920:	53                   	push   ebx
1000c921:	56                   	push   esi
1000c922:	33 f6                	xor    esi,esi
1000c924:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
1000c927:	57                   	push   edi
1000c928:	c7 45 e8 4e 40 00 00 	mov    DWORD PTR [ebp-0x18],0x404e
1000c92f:	89 30                	mov    DWORD PTR [eax],esi
1000c931:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
1000c934:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
1000c937:	0f 86 46 01 00 00    	jbe    0x1000ca83
1000c93d:	8b 10                	mov    edx,DWORD PTR [eax]
1000c93f:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
1000c942:	8b f0                	mov    esi,eax
1000c944:	8d 7d f0             	lea    edi,[ebp-0x10]
1000c947:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000c948:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000c949:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000c94a:	8b ca                	mov    ecx,edx
1000c94c:	c1 e9 1f             	shr    ecx,0x1f
1000c94f:	8d 3c 12             	lea    edi,[edx+edx*1]
1000c952:	8d 14 1b             	lea    edx,[ebx+ebx*1]
1000c955:	0b d1                	or     edx,ecx
1000c957:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
1000c95a:	8b f3                	mov    esi,ebx
1000c95c:	c1 ee 1f             	shr    esi,0x1f
1000c95f:	03 c9                	add    ecx,ecx
1000c961:	0b ce                	or     ecx,esi
1000c963:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
1000c966:	8b f7                	mov    esi,edi
1000c968:	83 65 ec 00          	and    DWORD PTR [ebp-0x14],0x0
1000c96c:	8b da                	mov    ebx,edx
1000c96e:	c1 eb 1f             	shr    ebx,0x1f
1000c971:	03 c9                	add    ecx,ecx
1000c973:	c1 ef 1f             	shr    edi,0x1f
1000c976:	0b cb                	or     ecx,ebx
1000c978:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
1000c97b:	03 f6                	add    esi,esi
1000c97d:	03 d2                	add    edx,edx
1000c97f:	0b d7                	or     edx,edi
1000c981:	8d 3c 1e             	lea    edi,[esi+ebx*1]
1000c984:	3b fe                	cmp    edi,esi
1000c986:	89 30                	mov    DWORD PTR [eax],esi
1000c988:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
1000c98b:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000c98e:	72 04                	jb     0x1000c994
1000c990:	3b fb                	cmp    edi,ebx
1000c992:	73 07                	jae    0x1000c99b
1000c994:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
1000c99b:	33 db                	xor    ebx,ebx
1000c99d:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
1000c9a0:	89 38                	mov    DWORD PTR [eax],edi
1000c9a2:	74 1a                	je     0x1000c9be
1000c9a4:	8d 72 01             	lea    esi,[edx+0x1]
1000c9a7:	3b f2                	cmp    esi,edx
1000c9a9:	72 05                	jb     0x1000c9b0
1000c9ab:	83 fe 01             	cmp    esi,0x1
1000c9ae:	73 03                	jae    0x1000c9b3
1000c9b0:	33 db                	xor    ebx,ebx
1000c9b2:	43                   	inc    ebx
1000c9b3:	85 db                	test   ebx,ebx
1000c9b5:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
1000c9b8:	74 04                	je     0x1000c9be
1000c9ba:	41                   	inc    ecx
1000c9bb:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000c9be:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
1000c9c1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
1000c9c4:	8d 1c 11             	lea    ebx,[ecx+edx*1]
1000c9c7:	33 f6                	xor    esi,esi
1000c9c9:	3b d9                	cmp    ebx,ecx
1000c9cb:	72 04                	jb     0x1000c9d1
1000c9cd:	3b da                	cmp    ebx,edx
1000c9cf:	73 03                	jae    0x1000c9d4
1000c9d1:	33 f6                	xor    esi,esi
1000c9d3:	46                   	inc    esi
1000c9d4:	85 f6                	test   esi,esi
1000c9d6:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
1000c9d9:	74 03                	je     0x1000c9de
1000c9db:	ff 40 08             	inc    DWORD PTR [eax+0x8]
1000c9de:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000c9e1:	01 48 08             	add    DWORD PTR [eax+0x8],ecx
1000c9e4:	83 65 ec 00          	and    DWORD PTR [ebp-0x14],0x0
1000c9e8:	8d 0c 3f             	lea    ecx,[edi+edi*1]
1000c9eb:	8b d7                	mov    edx,edi
1000c9ed:	c1 ea 1f             	shr    edx,0x1f
1000c9f0:	8d 3c 1b             	lea    edi,[ebx+ebx*1]
1000c9f3:	0b fa                	or     edi,edx
1000c9f5:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
1000c9f8:	8b f3                	mov    esi,ebx
1000c9fa:	c1 ee 1f             	shr    esi,0x1f
1000c9fd:	8d 1c 12             	lea    ebx,[edx+edx*1]
1000ca00:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
1000ca03:	0b de                	or     ebx,esi
1000ca05:	89 08                	mov    DWORD PTR [eax],ecx
1000ca07:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
1000ca0a:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
1000ca0d:	0f be 12             	movsx  edx,BYTE PTR [edx]
1000ca10:	8d 34 11             	lea    esi,[ecx+edx*1]
1000ca13:	3b f1                	cmp    esi,ecx
1000ca15:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
1000ca18:	72 04                	jb     0x1000ca1e
1000ca1a:	3b f2                	cmp    esi,edx
1000ca1c:	73 07                	jae    0x1000ca25
1000ca1e:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
1000ca25:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
1000ca29:	89 30                	mov    DWORD PTR [eax],esi
1000ca2b:	74 1c                	je     0x1000ca49
1000ca2d:	8d 4f 01             	lea    ecx,[edi+0x1]
1000ca30:	33 d2                	xor    edx,edx
1000ca32:	3b cf                	cmp    ecx,edi
1000ca34:	72 05                	jb     0x1000ca3b
1000ca36:	83 f9 01             	cmp    ecx,0x1
1000ca39:	73 03                	jae    0x1000ca3e
1000ca3b:	33 d2                	xor    edx,edx
1000ca3d:	42                   	inc    edx
1000ca3e:	85 d2                	test   edx,edx
1000ca40:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
1000ca43:	74 04                	je     0x1000ca49
1000ca45:	43                   	inc    ebx
1000ca46:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
1000ca49:	ff 4d 0c             	dec    DWORD PTR [ebp+0xc]
1000ca4c:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000ca4f:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
1000ca53:	0f 87 e4 fe ff ff    	ja     0x1000c93d
1000ca59:	33 f6                	xor    esi,esi
1000ca5b:	eb 26                	jmp    0x1000ca83
1000ca5d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
1000ca60:	8b d1                	mov    edx,ecx
1000ca62:	c1 ea 10             	shr    edx,0x10
1000ca65:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
1000ca68:	8b 10                	mov    edx,DWORD PTR [eax]
1000ca6a:	8b fa                	mov    edi,edx
1000ca6c:	c1 e1 10             	shl    ecx,0x10
1000ca6f:	c1 ef 10             	shr    edi,0x10
1000ca72:	0b cf                	or     ecx,edi
1000ca74:	c1 e2 10             	shl    edx,0x10
1000ca77:	81 45 e8 f0 ff 00 00 	add    DWORD PTR [ebp-0x18],0xfff0
1000ca7e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
1000ca81:	89 10                	mov    DWORD PTR [eax],edx
1000ca83:	39 70 08             	cmp    DWORD PTR [eax+0x8],esi
1000ca86:	74 d5                	je     0x1000ca5d
1000ca88:	bb 00 80 00 00       	mov    ebx,0x8000
1000ca8d:	85 58 08             	test   DWORD PTR [eax+0x8],ebx
1000ca90:	75 30                	jne    0x1000cac2
1000ca92:	8b 30                	mov    esi,DWORD PTR [eax]
1000ca94:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
1000ca97:	81 45 e8 ff ff 00 00 	add    DWORD PTR [ebp-0x18],0xffff
1000ca9e:	8b ce                	mov    ecx,esi
1000caa0:	03 f6                	add    esi,esi
1000caa2:	c1 e9 1f             	shr    ecx,0x1f
1000caa5:	89 30                	mov    DWORD PTR [eax],esi
1000caa7:	8d 34 3f             	lea    esi,[edi+edi*1]
1000caaa:	0b f1                	or     esi,ecx
1000caac:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
1000caaf:	8b d7                	mov    edx,edi
1000cab1:	c1 ea 1f             	shr    edx,0x1f
1000cab4:	03 c9                	add    ecx,ecx
1000cab6:	0b ca                	or     ecx,edx
1000cab8:	85 cb                	test   ebx,ecx
1000caba:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
1000cabd:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000cac0:	74 d0                	je     0x1000ca92
1000cac2:	66 8b 4d e8          	mov    cx,WORD PTR [ebp-0x18]
1000cac6:	66 89 48 0a          	mov    WORD PTR [eax+0xa],cx
1000caca:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000cacd:	5f                   	pop    edi
1000cace:	5e                   	pop    esi
1000cacf:	33 cd                	xor    ecx,ebp
1000cad1:	5b                   	pop    ebx
1000cad2:	e8 44 70 ff ff       	call   0x10003b1b
1000cad7:	c9                   	leave  
1000cad8:	c3                   	ret    
1000cad9:	6a 08                	push   0x8
1000cadb:	68 48 e6 00 10       	push   0x1000e648
1000cae0:	e8 43 8d ff ff       	call   0x10005828
1000cae5:	33 c0                	xor    eax,eax
1000cae7:	39 05 f8 5d 01 10    	cmp    DWORD PTR ds:0x10015df8,eax
1000caed:	74 56                	je     0x1000cb45
1000caef:	f6 45 08 40          	test   BYTE PTR [ebp+0x8],0x40
1000caf3:	74 48                	je     0x1000cb3d
1000caf5:	39 05 74 0f 01 10    	cmp    DWORD PTR ds:0x10010f74,eax
1000cafb:	74 40                	je     0x1000cb3d
1000cafd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000cb00:	0f ae 55 08          	ldmxcsr DWORD PTR [ebp+0x8]
1000cb04:	eb 2e                	jmp    0x1000cb34
1000cb06:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
1000cb09:	8b 00                	mov    eax,DWORD PTR [eax]
1000cb0b:	8b 00                	mov    eax,DWORD PTR [eax]
1000cb0d:	3d 05 00 00 c0       	cmp    eax,0xc0000005
1000cb12:	74 0a                	je     0x1000cb1e
1000cb14:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
1000cb19:	74 03                	je     0x1000cb1e
1000cb1b:	33 c0                	xor    eax,eax
1000cb1d:	c3                   	ret    
1000cb1e:	33 c0                	xor    eax,eax
1000cb20:	40                   	inc    eax
1000cb21:	c3                   	ret    
1000cb22:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
1000cb25:	83 25 74 0f 01 10 00 	and    DWORD PTR ds:0x10010f74,0x0
1000cb2c:	83 65 08 bf          	and    DWORD PTR [ebp+0x8],0xffffffbf
1000cb30:	0f ae 55 08          	ldmxcsr DWORD PTR [ebp+0x8]
1000cb34:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000cb3b:	eb 08                	jmp    0x1000cb45
1000cb3d:	83 65 08 bf          	and    DWORD PTR [ebp+0x8],0xffffffbf
1000cb41:	0f ae 55 08          	ldmxcsr DWORD PTR [ebp+0x8]
1000cb45:	e8 23 8d ff ff       	call   0x1000586d
1000cb4a:	c3                   	ret    
1000cb4b:	cc                   	int3   
1000cb4c:	cc                   	int3   
1000cb4d:	cc                   	int3   
1000cb4e:	cc                   	int3   
1000cb4f:	cc                   	int3   
1000cb50:	51                   	push   ecx
1000cb51:	8d 4c 24 04          	lea    ecx,[esp+0x4]
1000cb55:	2b c8                	sub    ecx,eax
1000cb57:	1b c0                	sbb    eax,eax
1000cb59:	f7 d0                	not    eax
1000cb5b:	23 c8                	and    ecx,eax
1000cb5d:	8b c4                	mov    eax,esp
1000cb5f:	25 00 f0 ff ff       	and    eax,0xfffff000
1000cb64:	3b c8                	cmp    ecx,eax
1000cb66:	72 0a                	jb     0x1000cb72
1000cb68:	8b c1                	mov    eax,ecx
1000cb6a:	59                   	pop    ecx
1000cb6b:	94                   	xchg   esp,eax
1000cb6c:	8b 00                	mov    eax,DWORD PTR [eax]
1000cb6e:	89 04 24             	mov    DWORD PTR [esp],eax
1000cb71:	c3                   	ret    
1000cb72:	2d 00 10 00 00       	sub    eax,0x1000
1000cb77:	85 00                	test   DWORD PTR [eax],eax
1000cb79:	eb e9                	jmp    0x1000cb64
1000cb7b:	55                   	push   ebp
1000cb7c:	8b ec                	mov    ebp,esp
1000cb7e:	83 ec 14             	sub    esp,0x14
1000cb81:	56                   	push   esi
1000cb82:	57                   	push   edi
1000cb83:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000cb86:	8d 4d ec             	lea    ecx,[ebp-0x14]
1000cb89:	e8 8c 72 ff ff       	call   0x10003e1a
1000cb8e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000cb91:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
1000cb94:	33 ff                	xor    edi,edi
1000cb96:	3b c7                	cmp    eax,edi
1000cb98:	74 02                	je     0x1000cb9c
1000cb9a:	89 30                	mov    DWORD PTR [eax],esi
1000cb9c:	3b f7                	cmp    esi,edi
1000cb9e:	75 2c                	jne    0x1000cbcc
1000cba0:	e8 a1 7e ff ff       	call   0x10004a46
1000cba5:	57                   	push   edi
1000cba6:	57                   	push   edi
1000cba7:	57                   	push   edi
1000cba8:	57                   	push   edi
1000cba9:	57                   	push   edi
1000cbaa:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000cbb0:	e8 c1 af ff ff       	call   0x10007b76
1000cbb5:	83 c4 14             	add    esp,0x14
1000cbb8:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
1000cbbc:	74 07                	je     0x1000cbc5
1000cbbe:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000cbc1:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000cbc5:	33 c0                	xor    eax,eax
1000cbc7:	e9 d6 01 00 00       	jmp    0x1000cda2
1000cbcc:	39 7d 14             	cmp    DWORD PTR [ebp+0x14],edi
1000cbcf:	74 0c                	je     0x1000cbdd
1000cbd1:	83 7d 14 02          	cmp    DWORD PTR [ebp+0x14],0x2
1000cbd5:	7c c9                	jl     0x1000cba0
1000cbd7:	83 7d 14 24          	cmp    DWORD PTR [ebp+0x14],0x24
1000cbdb:	7f c3                	jg     0x1000cba0
1000cbdd:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000cbe0:	53                   	push   ebx
1000cbe1:	8a 1e                	mov    bl,BYTE PTR [esi]
1000cbe3:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000cbe6:	8d 7e 01             	lea    edi,[esi+0x1]
1000cbe9:	83 b9 ac 00 00 00 01 	cmp    DWORD PTR [ecx+0xac],0x1
1000cbf0:	7e 17                	jle    0x1000cc09
1000cbf2:	8d 45 ec             	lea    eax,[ebp-0x14]
1000cbf5:	50                   	push   eax
1000cbf6:	0f b6 c3             	movzx  eax,bl
1000cbf9:	6a 08                	push   0x8
1000cbfb:	50                   	push   eax
1000cbfc:	e8 8f d6 ff ff       	call   0x1000a290
1000cc01:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000cc04:	83 c4 0c             	add    esp,0xc
1000cc07:	eb 10                	jmp    0x1000cc19
1000cc09:	8b 91 c8 00 00 00    	mov    edx,DWORD PTR [ecx+0xc8]
1000cc0f:	0f b6 c3             	movzx  eax,bl
1000cc12:	0f b6 04 42          	movzx  eax,BYTE PTR [edx+eax*2]
1000cc16:	83 e0 08             	and    eax,0x8
1000cc19:	85 c0                	test   eax,eax
1000cc1b:	74 05                	je     0x1000cc22
1000cc1d:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cc1f:	47                   	inc    edi
1000cc20:	eb c7                	jmp    0x1000cbe9
1000cc22:	80 fb 2d             	cmp    bl,0x2d
1000cc25:	75 06                	jne    0x1000cc2d
1000cc27:	83 4d 18 02          	or     DWORD PTR [ebp+0x18],0x2
1000cc2b:	eb 05                	jmp    0x1000cc32
1000cc2d:	80 fb 2b             	cmp    bl,0x2b
1000cc30:	75 03                	jne    0x1000cc35
1000cc32:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cc34:	47                   	inc    edi
1000cc35:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000cc38:	85 c0                	test   eax,eax
1000cc3a:	0f 8c 49 01 00 00    	jl     0x1000cd89
1000cc40:	83 f8 01             	cmp    eax,0x1
1000cc43:	0f 84 40 01 00 00    	je     0x1000cd89
1000cc49:	83 f8 24             	cmp    eax,0x24
1000cc4c:	0f 8f 37 01 00 00    	jg     0x1000cd89
1000cc52:	85 c0                	test   eax,eax
1000cc54:	75 2a                	jne    0x1000cc80
1000cc56:	80 fb 30             	cmp    bl,0x30
1000cc59:	74 09                	je     0x1000cc64
1000cc5b:	c7 45 14 0a 00 00 00 	mov    DWORD PTR [ebp+0x14],0xa
1000cc62:	eb 34                	jmp    0x1000cc98
1000cc64:	8a 07                	mov    al,BYTE PTR [edi]
1000cc66:	3c 78                	cmp    al,0x78
1000cc68:	74 0d                	je     0x1000cc77
1000cc6a:	3c 58                	cmp    al,0x58
1000cc6c:	74 09                	je     0x1000cc77
1000cc6e:	c7 45 14 08 00 00 00 	mov    DWORD PTR [ebp+0x14],0x8
1000cc75:	eb 21                	jmp    0x1000cc98
1000cc77:	c7 45 14 10 00 00 00 	mov    DWORD PTR [ebp+0x14],0x10
1000cc7e:	eb 0a                	jmp    0x1000cc8a
1000cc80:	83 f8 10             	cmp    eax,0x10
1000cc83:	75 13                	jne    0x1000cc98
1000cc85:	80 fb 30             	cmp    bl,0x30
1000cc88:	75 0e                	jne    0x1000cc98
1000cc8a:	8a 07                	mov    al,BYTE PTR [edi]
1000cc8c:	3c 78                	cmp    al,0x78
1000cc8e:	74 04                	je     0x1000cc94
1000cc90:	3c 58                	cmp    al,0x58
1000cc92:	75 04                	jne    0x1000cc98
1000cc94:	47                   	inc    edi
1000cc95:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cc97:	47                   	inc    edi
1000cc98:	8b b1 c8 00 00 00    	mov    esi,DWORD PTR [ecx+0xc8]
1000cc9e:	83 c8 ff             	or     eax,0xffffffff
1000cca1:	33 d2                	xor    edx,edx
1000cca3:	f7 75 14             	div    DWORD PTR [ebp+0x14]
1000cca6:	0f b6 cb             	movzx  ecx,bl
1000cca9:	0f b7 0c 4e          	movzx  ecx,WORD PTR [esi+ecx*2]
1000ccad:	f6 c1 04             	test   cl,0x4
1000ccb0:	74 08                	je     0x1000ccba
1000ccb2:	0f be cb             	movsx  ecx,bl
1000ccb5:	83 e9 30             	sub    ecx,0x30
1000ccb8:	eb 1a                	jmp    0x1000ccd4
1000ccba:	66 f7 c1 03 01       	test   cx,0x103
1000ccbf:	74 31                	je     0x1000ccf2
1000ccc1:	8a cb                	mov    cl,bl
1000ccc3:	80 e9 61             	sub    cl,0x61
1000ccc6:	80 f9 19             	cmp    cl,0x19
1000ccc9:	0f be cb             	movsx  ecx,bl
1000cccc:	77 03                	ja     0x1000ccd1
1000ccce:	83 e9 20             	sub    ecx,0x20
1000ccd1:	83 c1 c9             	add    ecx,0xffffffc9
1000ccd4:	3b 4d 14             	cmp    ecx,DWORD PTR [ebp+0x14]
1000ccd7:	73 19                	jae    0x1000ccf2
1000ccd9:	83 4d 18 08          	or     DWORD PTR [ebp+0x18],0x8
1000ccdd:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
1000cce0:	72 27                	jb     0x1000cd09
1000cce2:	75 04                	jne    0x1000cce8
1000cce4:	3b ca                	cmp    ecx,edx
1000cce6:	76 21                	jbe    0x1000cd09
1000cce8:	83 4d 18 04          	or     DWORD PTR [ebp+0x18],0x4
1000ccec:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
1000ccf0:	75 23                	jne    0x1000cd15
1000ccf2:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
1000ccf5:	4f                   	dec    edi
1000ccf6:	a8 08                	test   al,0x8
1000ccf8:	75 20                	jne    0x1000cd1a
1000ccfa:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
1000ccfe:	74 03                	je     0x1000cd03
1000cd00:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000cd03:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000cd07:	eb 5c                	jmp    0x1000cd65
1000cd09:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
1000cd0c:	0f af 5d 14          	imul   ebx,DWORD PTR [ebp+0x14]
1000cd10:	03 d9                	add    ebx,ecx
1000cd12:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
1000cd15:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cd17:	47                   	inc    edi
1000cd18:	eb 8c                	jmp    0x1000cca6
1000cd1a:	a8 04                	test   al,0x4
1000cd1c:	be ff ff ff 7f       	mov    esi,0x7fffffff
1000cd21:	75 1b                	jne    0x1000cd3e
1000cd23:	a8 01                	test   al,0x1
1000cd25:	75 3e                	jne    0x1000cd65
1000cd27:	83 e0 02             	and    eax,0x2
1000cd2a:	74 09                	je     0x1000cd35
1000cd2c:	81 7d fc 00 00 00 80 	cmp    DWORD PTR [ebp-0x4],0x80000000
1000cd33:	77 09                	ja     0x1000cd3e
1000cd35:	85 c0                	test   eax,eax
1000cd37:	75 2c                	jne    0x1000cd65
1000cd39:	39 75 fc             	cmp    DWORD PTR [ebp-0x4],esi
1000cd3c:	76 27                	jbe    0x1000cd65
1000cd3e:	e8 03 7d ff ff       	call   0x10004a46
1000cd43:	f6 45 18 01          	test   BYTE PTR [ebp+0x18],0x1
1000cd47:	c7 00 22 00 00 00    	mov    DWORD PTR [eax],0x22
1000cd4d:	74 06                	je     0x1000cd55
1000cd4f:	83 4d fc ff          	or     DWORD PTR [ebp-0x4],0xffffffff
1000cd53:	eb 10                	jmp    0x1000cd65
1000cd55:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
1000cd58:	24 02                	and    al,0x2
1000cd5a:	f6 d8                	neg    al
1000cd5c:	1b c0                	sbb    eax,eax
1000cd5e:	f7 d8                	neg    eax
1000cd60:	03 c6                	add    eax,esi
1000cd62:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000cd65:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000cd68:	85 c0                	test   eax,eax
1000cd6a:	74 02                	je     0x1000cd6e
1000cd6c:	89 38                	mov    DWORD PTR [eax],edi
1000cd6e:	f6 45 18 02          	test   BYTE PTR [ebp+0x18],0x2
1000cd72:	74 03                	je     0x1000cd77
1000cd74:	f7 5d fc             	neg    DWORD PTR [ebp-0x4]
1000cd77:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
1000cd7b:	74 07                	je     0x1000cd84
1000cd7d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000cd80:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000cd84:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
1000cd87:	eb 18                	jmp    0x1000cda1
1000cd89:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000cd8c:	85 c0                	test   eax,eax
1000cd8e:	74 02                	je     0x1000cd92
1000cd90:	89 30                	mov    DWORD PTR [eax],esi
1000cd92:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
1000cd96:	74 07                	je     0x1000cd9f
1000cd98:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000cd9b:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000cd9f:	33 c0                	xor    eax,eax
1000cda1:	5b                   	pop    ebx
1000cda2:	5f                   	pop    edi
1000cda3:	5e                   	pop    esi
1000cda4:	c9                   	leave  
1000cda5:	c3                   	ret    
1000cda6:	55                   	push   ebp
1000cda7:	8b ec                	mov    ebp,esp
1000cda9:	33 c0                	xor    eax,eax
1000cdab:	39 05 70 5b 01 10    	cmp    DWORD PTR ds:0x10015b70,eax
1000cdb1:	50                   	push   eax
1000cdb2:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000cdb5:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000cdb8:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000cdbb:	75 07                	jne    0x1000cdc4
1000cdbd:	68 80 0a 01 10       	push   0x10010a80
1000cdc2:	eb 01                	jmp    0x1000cdc5
1000cdc4:	50                   	push   eax
1000cdc5:	e8 b1 fd ff ff       	call   0x1000cb7b
1000cdca:	83 c4 14             	add    esp,0x14
1000cdcd:	5d                   	pop    ebp
1000cdce:	c3                   	ret    
1000cdcf:	cc                   	int3   
1000cdd0:	55                   	push   ebp
1000cdd1:	8b ec                	mov    ebp,esp
1000cdd3:	57                   	push   edi
1000cdd4:	56                   	push   esi
1000cdd5:	53                   	push   ebx
1000cdd6:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000cdd9:	0b c9                	or     ecx,ecx
1000cddb:	74 4d                	je     0x1000ce2a
1000cddd:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000cde0:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000cde3:	b7 41                	mov    bh,0x41
1000cde5:	b3 5a                	mov    bl,0x5a
1000cde7:	b6 20                	mov    dh,0x20
1000cde9:	8d 49 00             	lea    ecx,[ecx+0x0]
1000cdec:	8a 26                	mov    ah,BYTE PTR [esi]
1000cdee:	0a e4                	or     ah,ah
1000cdf0:	8a 07                	mov    al,BYTE PTR [edi]
1000cdf2:	74 27                	je     0x1000ce1b
1000cdf4:	0a c0                	or     al,al
1000cdf6:	74 23                	je     0x1000ce1b
1000cdf8:	83 c6 01             	add    esi,0x1
1000cdfb:	83 c7 01             	add    edi,0x1
1000cdfe:	3a e7                	cmp    ah,bh
1000ce00:	72 06                	jb     0x1000ce08
1000ce02:	3a e3                	cmp    ah,bl
1000ce04:	77 02                	ja     0x1000ce08
1000ce06:	02 e6                	add    ah,dh
1000ce08:	3a c7                	cmp    al,bh
1000ce0a:	72 06                	jb     0x1000ce12
1000ce0c:	3a c3                	cmp    al,bl
1000ce0e:	77 02                	ja     0x1000ce12
1000ce10:	02 c6                	add    al,dh
1000ce12:	3a e0                	cmp    ah,al
1000ce14:	75 0b                	jne    0x1000ce21
1000ce16:	83 e9 01             	sub    ecx,0x1
1000ce19:	75 d1                	jne    0x1000cdec
1000ce1b:	33 c9                	xor    ecx,ecx
1000ce1d:	3a e0                	cmp    ah,al
1000ce1f:	74 09                	je     0x1000ce2a
1000ce21:	b9 ff ff ff ff       	mov    ecx,0xffffffff
1000ce26:	72 02                	jb     0x1000ce2a
1000ce28:	f7 d9                	neg    ecx
1000ce2a:	8b c1                	mov    eax,ecx
1000ce2c:	5b                   	pop    ebx
1000ce2d:	5e                   	pop    esi
1000ce2e:	5f                   	pop    edi
1000ce2f:	c9                   	leave  
1000ce30:	c3                   	ret    
1000ce31:	cc                   	int3   
1000ce32:	cc                   	int3   
1000ce33:	cc                   	int3   
1000ce34:	cc                   	int3   
1000ce35:	cc                   	int3   
1000ce36:	cc                   	int3   
1000ce37:	cc                   	int3   
1000ce38:	cc                   	int3   
1000ce39:	cc                   	int3   
1000ce3a:	cc                   	int3   
1000ce3b:	cc                   	int3   
1000ce3c:	cc                   	int3   
1000ce3d:	cc                   	int3   
1000ce3e:	cc                   	int3   
1000ce3f:	cc                   	int3   
1000ce40:	56                   	push   esi
1000ce41:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000ce45:	0b c0                	or     eax,eax
1000ce47:	75 28                	jne    0x1000ce71
1000ce49:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1000ce4d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1000ce51:	33 d2                	xor    edx,edx
1000ce53:	f7 f1                	div    ecx
1000ce55:	8b d8                	mov    ebx,eax
1000ce57:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000ce5b:	f7 f1                	div    ecx
1000ce5d:	8b f0                	mov    esi,eax
1000ce5f:	8b c3                	mov    eax,ebx
1000ce61:	f7 64 24 10          	mul    DWORD PTR [esp+0x10]
1000ce65:	8b c8                	mov    ecx,eax
1000ce67:	8b c6                	mov    eax,esi
1000ce69:	f7 64 24 10          	mul    DWORD PTR [esp+0x10]
1000ce6d:	03 d1                	add    edx,ecx
1000ce6f:	eb 47                	jmp    0x1000ceb8
1000ce71:	8b c8                	mov    ecx,eax
1000ce73:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
1000ce77:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1000ce7b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000ce7f:	d1 e9                	shr    ecx,1
1000ce81:	d1 db                	rcr    ebx,1
1000ce83:	d1 ea                	shr    edx,1
1000ce85:	d1 d8                	rcr    eax,1
1000ce87:	0b c9                	or     ecx,ecx
1000ce89:	75 f4                	jne    0x1000ce7f
1000ce8b:	f7 f3                	div    ebx
1000ce8d:	8b f0                	mov    esi,eax
1000ce8f:	f7 64 24 14          	mul    DWORD PTR [esp+0x14]
1000ce93:	8b c8                	mov    ecx,eax
1000ce95:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1000ce99:	f7 e6                	mul    esi
1000ce9b:	03 d1                	add    edx,ecx
1000ce9d:	72 0e                	jb     0x1000cead
1000ce9f:	3b 54 24 0c          	cmp    edx,DWORD PTR [esp+0xc]
1000cea3:	77 08                	ja     0x1000cead
1000cea5:	72 0f                	jb     0x1000ceb6
1000cea7:	3b 44 24 08          	cmp    eax,DWORD PTR [esp+0x8]
1000ceab:	76 09                	jbe    0x1000ceb6
1000cead:	4e                   	dec    esi
1000ceae:	2b 44 24 10          	sub    eax,DWORD PTR [esp+0x10]
1000ceb2:	1b 54 24 14          	sbb    edx,DWORD PTR [esp+0x14]
1000ceb6:	33 db                	xor    ebx,ebx
1000ceb8:	2b 44 24 08          	sub    eax,DWORD PTR [esp+0x8]
1000cebc:	1b 54 24 0c          	sbb    edx,DWORD PTR [esp+0xc]
1000cec0:	f7 da                	neg    edx
1000cec2:	f7 d8                	neg    eax
1000cec4:	83 da 00             	sbb    edx,0x0
1000cec7:	8b ca                	mov    ecx,edx
1000cec9:	8b d3                	mov    edx,ebx
1000cecb:	8b d9                	mov    ebx,ecx
1000cecd:	8b c8                	mov    ecx,eax
1000cecf:	8b c6                	mov    eax,esi
1000ced1:	5e                   	pop    esi
1000ced2:	c2 10 00             	ret    0x10
1000ced5:	cc                   	int3   
1000ced6:	cc                   	int3   
1000ced7:	cc                   	int3   
1000ced8:	cc                   	int3   
1000ced9:	cc                   	int3   
1000ceda:	cc                   	int3   
1000cedb:	cc                   	int3   
1000cedc:	cc                   	int3   
1000cedd:	cc                   	int3   
1000cede:	cc                   	int3   
1000cedf:	cc                   	int3   
1000cee0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000cee4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1000cee8:	0b c8                	or     ecx,eax
1000ceea:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1000ceee:	75 09                	jne    0x1000cef9
1000cef0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
1000cef4:	f7 e1                	mul    ecx
1000cef6:	c2 10 00             	ret    0x10
1000cef9:	53                   	push   ebx
1000cefa:	f7 e1                	mul    ecx
1000cefc:	8b d8                	mov    ebx,eax
1000cefe:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000cf02:	f7 64 24 14          	mul    DWORD PTR [esp+0x14]
1000cf06:	03 d8                	add    ebx,eax
1000cf08:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000cf0c:	f7 e1                	mul    ecx
1000cf0e:	03 d3                	add    edx,ebx
1000cf10:	5b                   	pop    ebx
1000cf11:	c2 10 00             	ret    0x10
1000cf14:	cc                   	int3   
1000cf15:	cc                   	int3   
1000cf16:	cc                   	int3   
1000cf17:	cc                   	int3   
1000cf18:	cc                   	int3   
1000cf19:	cc                   	int3   
1000cf1a:	cc                   	int3   
1000cf1b:	cc                   	int3   
1000cf1c:	cc                   	int3   
1000cf1d:	cc                   	int3   
1000cf1e:	cc                   	int3   
1000cf1f:	cc                   	int3   
1000cf20:	8d 42 ff             	lea    eax,[edx-0x1]
1000cf23:	5b                   	pop    ebx
1000cf24:	c3                   	ret    
1000cf25:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
1000cf2c:	8d 64 24 00          	lea    esp,[esp+0x0]
1000cf30:	33 c0                	xor    eax,eax
1000cf32:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
1000cf36:	53                   	push   ebx
1000cf37:	8b d8                	mov    ebx,eax
1000cf39:	c1 e0 08             	shl    eax,0x8
1000cf3c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
1000cf40:	f7 c2 03 00 00 00    	test   edx,0x3
1000cf46:	74 15                	je     0x1000cf5d
1000cf48:	8a 0a                	mov    cl,BYTE PTR [edx]
1000cf4a:	83 c2 01             	add    edx,0x1
1000cf4d:	3a cb                	cmp    cl,bl
1000cf4f:	74 cf                	je     0x1000cf20
1000cf51:	84 c9                	test   cl,cl
1000cf53:	74 51                	je     0x1000cfa6
1000cf55:	f7 c2 03 00 00 00    	test   edx,0x3
1000cf5b:	75 eb                	jne    0x1000cf48
1000cf5d:	0b d8                	or     ebx,eax
1000cf5f:	57                   	push   edi
1000cf60:	8b c3                	mov    eax,ebx
1000cf62:	c1 e3 10             	shl    ebx,0x10
1000cf65:	56                   	push   esi
1000cf66:	0b d8                	or     ebx,eax
1000cf68:	8b 0a                	mov    ecx,DWORD PTR [edx]
1000cf6a:	bf ff fe fe 7e       	mov    edi,0x7efefeff
1000cf6f:	8b c1                	mov    eax,ecx
1000cf71:	8b f7                	mov    esi,edi
1000cf73:	33 cb                	xor    ecx,ebx
1000cf75:	03 f0                	add    esi,eax
1000cf77:	03 f9                	add    edi,ecx
1000cf79:	83 f1 ff             	xor    ecx,0xffffffff
1000cf7c:	83 f0 ff             	xor    eax,0xffffffff
1000cf7f:	33 cf                	xor    ecx,edi
1000cf81:	33 c6                	xor    eax,esi
1000cf83:	83 c2 04             	add    edx,0x4
1000cf86:	81 e1 00 01 01 81    	and    ecx,0x81010100
1000cf8c:	75 1c                	jne    0x1000cfaa
1000cf8e:	25 00 01 01 81       	and    eax,0x81010100
1000cf93:	74 d3                	je     0x1000cf68
1000cf95:	25 00 01 01 01       	and    eax,0x1010100
1000cf9a:	75 08                	jne    0x1000cfa4
1000cf9c:	81 e6 00 00 00 80    	and    esi,0x80000000
1000cfa2:	75 c4                	jne    0x1000cf68
1000cfa4:	5e                   	pop    esi
1000cfa5:	5f                   	pop    edi
1000cfa6:	5b                   	pop    ebx
1000cfa7:	33 c0                	xor    eax,eax
1000cfa9:	c3                   	ret    
1000cfaa:	8b 42 fc             	mov    eax,DWORD PTR [edx-0x4]
1000cfad:	3a c3                	cmp    al,bl
1000cfaf:	74 36                	je     0x1000cfe7
1000cfb1:	84 c0                	test   al,al
1000cfb3:	74 ef                	je     0x1000cfa4
1000cfb5:	3a e3                	cmp    ah,bl
1000cfb7:	74 27                	je     0x1000cfe0
1000cfb9:	84 e4                	test   ah,ah
1000cfbb:	74 e7                	je     0x1000cfa4
1000cfbd:	c1 e8 10             	shr    eax,0x10
1000cfc0:	3a c3                	cmp    al,bl
1000cfc2:	74 15                	je     0x1000cfd9
1000cfc4:	84 c0                	test   al,al
1000cfc6:	74 dc                	je     0x1000cfa4
1000cfc8:	3a e3                	cmp    ah,bl
1000cfca:	74 06                	je     0x1000cfd2
1000cfcc:	84 e4                	test   ah,ah
1000cfce:	74 d4                	je     0x1000cfa4
1000cfd0:	eb 96                	jmp    0x1000cf68
1000cfd2:	5e                   	pop    esi
1000cfd3:	5f                   	pop    edi
1000cfd4:	8d 42 ff             	lea    eax,[edx-0x1]
1000cfd7:	5b                   	pop    ebx
1000cfd8:	c3                   	ret    
1000cfd9:	8d 42 fe             	lea    eax,[edx-0x2]
1000cfdc:	5e                   	pop    esi
1000cfdd:	5f                   	pop    edi
1000cfde:	5b                   	pop    ebx
1000cfdf:	c3                   	ret    
1000cfe0:	8d 42 fd             	lea    eax,[edx-0x3]
1000cfe3:	5e                   	pop    esi
1000cfe4:	5f                   	pop    edi
1000cfe5:	5b                   	pop    ebx
1000cfe6:	c3                   	ret    
1000cfe7:	8d 42 fc             	lea    eax,[edx-0x4]
1000cfea:	5e                   	pop    esi
1000cfeb:	5f                   	pop    edi
1000cfec:	5b                   	pop    ebx
1000cfed:	c3                   	ret    
1000cfee:	ff 25 f0 d0 00 10    	jmp    DWORD PTR ds:0x1000d0f0
