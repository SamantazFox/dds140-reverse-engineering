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
