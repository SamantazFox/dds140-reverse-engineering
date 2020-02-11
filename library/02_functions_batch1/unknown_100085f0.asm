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
