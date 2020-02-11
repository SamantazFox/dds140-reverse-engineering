10001080:	83 c8 ff             	or     eax,0xffffffff
10001083:	39 05 00 00 01 10    	cmp    DWORD PTR ds:0x10010000,eax
10001089:	74 72                	je     0x100010fd
1000108b:	56                   	push   esi
1000108c:	33 f6                	xor    esi,esi
1000108e:	39 35 9c 60 01 10    	cmp    DWORD PTR ds:0x1001609c,esi
10001094:	74 64                	je     0x100010fa
10001096:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1000109a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000109e:	33 d2                	xor    edx,edx
100010a0:	f7 f1                	div    ecx
100010a2:	3b ce                	cmp    ecx,esi
100010a4:	53                   	push   ebx
100010a5:	8b 1d 88 60 01 10    	mov    ebx,DWORD PTR ds:0x10016088
100010ab:	57                   	push   edi
100010ac:	89 0d 0c 60 01 10    	mov    DWORD PTR ds:0x1001600c,ecx
100010b2:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
100010b6:	8b f8                	mov    edi,eax
100010b8:	7e 3e                	jle    0x100010f8
100010ba:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
100010c0:	8b 04 b5 10 30 01 10 	mov    eax,DWORD PTR [esi*4+0x10013010]
100010c7:	0f b6 15 17 52 01 10 	movzx  edx,BYTE PTR ds:0x10015217
100010ce:	68 18 52 01 10       	push   0x10015218
100010d3:	8d 4c 24 18          	lea    ecx,[esp+0x18]
100010d7:	51                   	push   ecx
100010d8:	57                   	push   edi
100010d9:	53                   	push   ebx
100010da:	a3 28 52 01 10       	mov    ds:0x10015228,eax
100010df:	a1 10 52 01 10       	mov    eax,ds:0x10015210
100010e4:	52                   	push   edx
100010e5:	50                   	push   eax
100010e6:	e8 2b 27 00 00       	call   0x10003816
100010eb:	83 c6 01             	add    esi,0x1
100010ee:	03 df                	add    ebx,edi
100010f0:	3b 35 0c 60 01 10    	cmp    esi,DWORD PTR ds:0x1001600c
100010f6:	7c c8                	jl     0x100010c0
100010f8:	5f                   	pop    edi
100010f9:	5b                   	pop    ebx
100010fa:	33 c0                	xor    eax,eax
100010fc:	5e                   	pop    esi
100010fd:	c2 10 00             	ret    0x10
