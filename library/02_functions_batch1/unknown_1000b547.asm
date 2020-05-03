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
