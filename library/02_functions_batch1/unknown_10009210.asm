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
