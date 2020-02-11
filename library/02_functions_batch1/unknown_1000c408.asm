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
