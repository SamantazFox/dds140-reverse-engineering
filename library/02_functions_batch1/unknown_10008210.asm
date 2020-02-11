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
