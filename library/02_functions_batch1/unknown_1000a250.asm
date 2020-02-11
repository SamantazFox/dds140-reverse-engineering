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
