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
