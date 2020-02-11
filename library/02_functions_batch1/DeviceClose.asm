100037c0:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
100037c7:	75 04                	jne    0x100037cd
100037c9:	83 c8 ff             	or     eax,0xffffffff
100037cc:	c3                   	ret    
100037cd:	56                   	push   esi
100037ce:	57                   	push   edi
100037cf:	8b 3d 0c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d00c
100037d5:	be 10 30 01 10       	mov    esi,0x10013010
100037da:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
100037e0:	8b 06                	mov    eax,DWORD PTR [esi]
100037e2:	85 c0                	test   eax,eax
100037e4:	74 09                	je     0x100037ef
100037e6:	50                   	push   eax
100037e7:	ff d7                	call   edi
100037e9:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
100037ef:	83 c6 04             	add    esi,0x4
100037f2:	81 fe 10 34 01 10    	cmp    esi,0x10013410
100037f8:	7c e6                	jl     0x100037e0
100037fa:	a1 00 00 01 10       	mov    eax,ds:0x10010000
100037ff:	50                   	push   eax
10003800:	ff d7                	call   edi
10003802:	c7 05 00 00 01 10 ff 	mov    DWORD PTR ds:0x10010000,0xffffffff
10003809:	ff ff ff 
1000380c:	e8 3f ff ff ff       	call   0x10003750
10003811:	5f                   	pop    edi
10003812:	33 c0                	xor    eax,eax
10003814:	5e                   	pop    esi
10003815:	c3                   	ret    
10003816:	ff 25 28 d1 00 10    	jmp    DWORD PTR ds:0x1000d128
1000381c:	ff 25 24 d1 00 10    	jmp    DWORD PTR ds:0x1000d124
10003822:	ff 25 38 d1 00 10    	jmp    DWORD PTR ds:0x1000d138
10003828:	ff 25 1c d1 00 10    	jmp    DWORD PTR ds:0x1000d11c
1000382e:	ff 25 18 d1 00 10    	jmp    DWORD PTR ds:0x1000d118
10003834:	ff 25 20 d1 00 10    	jmp    DWORD PTR ds:0x1000d120
1000383a:	ff 25 2c d1 00 10    	jmp    DWORD PTR ds:0x1000d12c
10003840:	ff 25 30 d1 00 10    	jmp    DWORD PTR ds:0x1000d130
10003846:	ff 25 34 d1 00 10    	jmp    DWORD PTR ds:0x1000d134
1000384c:	c3                   	ret    
1000384d:	b8 29 49 00 10       	mov    eax,0x10004929
10003852:	a3 18 00 01 10       	mov    ds:0x10010018,eax
10003857:	c7 05 1c 00 01 10 25 	mov    DWORD PTR ds:0x1001001c,0x10004025
1000385e:	40 00 10 
10003861:	c7 05 20 00 01 10 e3 	mov    DWORD PTR ds:0x10010020,0x10003fe3
10003868:	3f 00 10 
1000386b:	c7 05 24 00 01 10 17 	mov    DWORD PTR ds:0x10010024,0x10004017
10003872:	40 00 10 
10003875:	c7 05 28 00 01 10 8d 	mov    DWORD PTR ds:0x10010028,0x10003f8d
1000387c:	3f 00 10 
1000387f:	a3 2c 00 01 10       	mov    ds:0x1001002c,eax
10003884:	c7 05 30 00 01 10 a3 	mov    DWORD PTR ds:0x10010030,0x100048a3
1000388b:	48 00 10 
1000388e:	c7 05 34 00 01 10 a3 	mov    DWORD PTR ds:0x10010034,0x10003fa3
10003895:	3f 00 10 
10003898:	c7 05 38 00 01 10 0d 	mov    DWORD PTR ds:0x10010038,0x10003f0d
1000389f:	3f 00 10 
100038a2:	c7 05 3c 00 01 10 9c 	mov    DWORD PTR ds:0x1001003c,0x10003e9c
100038a9:	3e 00 10 
100038ac:	c3                   	ret    
100038ad:	e8 9b ff ff ff       	call   0x1000384d
100038b2:	e8 17 11 00 00       	call   0x100049ce
100038b7:	83 7c 24 04 00       	cmp    DWORD PTR [esp+0x4],0x0
100038bc:	a3 34 52 01 10       	mov    ds:0x10015234,eax
100038c1:	74 05                	je     0x100038c8
100038c3:	e8 a1 10 00 00       	call   0x10004969
100038c8:	db e2                	fnclex 
100038ca:	c3                   	ret    
100038cb:	cc                   	int3   
100038cc:	cc                   	int3   
100038cd:	cc                   	int3   
100038ce:	cc                   	int3   
100038cf:	cc                   	int3   
