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
