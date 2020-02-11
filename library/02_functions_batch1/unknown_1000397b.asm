1000397b:	6a 0c                	push   0xc
1000397d:	68 c0 e3 00 10       	push   0x1000e3c0
10003982:	e8 a1 1e 00 00       	call   0x10005828
10003987:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000398a:	85 f6                	test   esi,esi
1000398c:	74 75                	je     0x10003a03
1000398e:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
10003995:	75 43                	jne    0x100039da
10003997:	6a 04                	push   0x4
10003999:	e8 5a 13 00 00       	call   0x10004cf8
1000399e:	59                   	pop    ecx
1000399f:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
100039a3:	56                   	push   esi
100039a4:	e8 c8 13 00 00       	call   0x10004d71
100039a9:	59                   	pop    ecx
100039aa:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100039ad:	85 c0                	test   eax,eax
100039af:	74 09                	je     0x100039ba
100039b1:	56                   	push   esi
100039b2:	50                   	push   eax
100039b3:	e8 e4 13 00 00       	call   0x10004d9c
100039b8:	59                   	pop    ecx
100039b9:	59                   	pop    ecx
100039ba:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
100039c1:	e8 0b 00 00 00       	call   0x100039d1
100039c6:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
100039ca:	75 37                	jne    0x10003a03
100039cc:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100039cf:	eb 0a                	jmp    0x100039db
100039d1:	6a 04                	push   0x4
100039d3:	e8 48 12 00 00       	call   0x10004c20
100039d8:	59                   	pop    ecx
100039d9:	c3                   	ret    
100039da:	56                   	push   esi
100039db:	6a 00                	push   0x0
100039dd:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
100039e3:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
100039e9:	85 c0                	test   eax,eax
100039eb:	75 16                	jne    0x10003a03
100039ed:	e8 54 10 00 00       	call   0x10004a46
100039f2:	8b f0                	mov    esi,eax
100039f4:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100039fa:	50                   	push   eax
100039fb:	e8 0b 10 00 00       	call   0x10004a0b
10003a00:	89 06                	mov    DWORD PTR [esi],eax
10003a02:	59                   	pop    ecx
10003a03:	e8 65 1e 00 00       	call   0x1000586d
10003a08:	c3                   	ret    
