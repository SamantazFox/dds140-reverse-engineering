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
