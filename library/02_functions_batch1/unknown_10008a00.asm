10008a00:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008a04:	66 81 39 4d 5a       	cmp    WORD PTR [ecx],0x5a4d
10008a09:	74 03                	je     0x10008a0e
10008a0b:	33 c0                	xor    eax,eax
10008a0d:	c3                   	ret    
10008a0e:	8b 41 3c             	mov    eax,DWORD PTR [ecx+0x3c]
10008a11:	03 c1                	add    eax,ecx
10008a13:	81 38 50 45 00 00    	cmp    DWORD PTR [eax],0x4550
10008a19:	75 f0                	jne    0x10008a0b
10008a1b:	33 c9                	xor    ecx,ecx
10008a1d:	66 81 78 18 0b 01    	cmp    WORD PTR [eax+0x18],0x10b
10008a23:	0f 94 c1             	sete   cl
10008a26:	8b c1                	mov    eax,ecx
10008a28:	c3                   	ret    
10008a29:	cc                   	int3   
10008a2a:	cc                   	int3   
10008a2b:	cc                   	int3   
10008a2c:	cc                   	int3   
10008a2d:	cc                   	int3   
10008a2e:	cc                   	int3   
10008a2f:	cc                   	int3   
