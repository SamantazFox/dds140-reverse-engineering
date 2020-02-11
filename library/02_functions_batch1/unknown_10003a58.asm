10003a58:	55                   	push   ebp
10003a59:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
10003a5d:	83 fd e0             	cmp    ebp,0xffffffe0
10003a60:	0f 87 9f 00 00 00    	ja     0x10003b05
10003a66:	53                   	push   ebx
10003a67:	8b 1d 38 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d038
10003a6d:	56                   	push   esi
10003a6e:	57                   	push   edi
10003a6f:	33 f6                	xor    esi,esi
10003a71:	39 35 4c 52 01 10    	cmp    DWORD PTR ds:0x1001524c,esi
10003a77:	8b fd                	mov    edi,ebp
10003a79:	75 18                	jne    0x10003a93
10003a7b:	e8 42 24 00 00       	call   0x10005ec2
10003a80:	6a 1e                	push   0x1e
10003a82:	e8 9b 22 00 00       	call   0x10005d22
10003a87:	68 ff 00 00 00       	push   0xff
10003a8c:	e8 df 1f 00 00       	call   0x10005a70
10003a91:	59                   	pop    ecx
10003a92:	59                   	pop    ecx
10003a93:	a1 f0 5d 01 10       	mov    eax,ds:0x10015df0
10003a98:	83 f8 01             	cmp    eax,0x1
10003a9b:	75 0e                	jne    0x10003aab
10003a9d:	3b ee                	cmp    ebp,esi
10003a9f:	74 04                	je     0x10003aa5
10003aa1:	8b c5                	mov    eax,ebp
10003aa3:	eb 03                	jmp    0x10003aa8
10003aa5:	33 c0                	xor    eax,eax
10003aa7:	40                   	inc    eax
10003aa8:	50                   	push   eax
10003aa9:	eb 1e                	jmp    0x10003ac9
10003aab:	83 f8 03             	cmp    eax,0x3
10003aae:	75 0b                	jne    0x10003abb
10003ab0:	55                   	push   ebp
10003ab1:	e8 53 ff ff ff       	call   0x10003a09
10003ab6:	3b c6                	cmp    eax,esi
10003ab8:	59                   	pop    ecx
10003ab9:	75 17                	jne    0x10003ad2
10003abb:	3b ee                	cmp    ebp,esi
10003abd:	75 03                	jne    0x10003ac2
10003abf:	33 ff                	xor    edi,edi
10003ac1:	47                   	inc    edi
10003ac2:	83 c7 0f             	add    edi,0xf
10003ac5:	83 e7 f0             	and    edi,0xfffffff0
10003ac8:	57                   	push   edi
10003ac9:	56                   	push   esi
10003aca:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10003ad0:	ff d3                	call   ebx
10003ad2:	8b f0                	mov    esi,eax
10003ad4:	85 f6                	test   esi,esi
10003ad6:	75 26                	jne    0x10003afe
10003ad8:	39 05 08 57 01 10    	cmp    DWORD PTR ds:0x10015708,eax
10003ade:	6a 0c                	push   0xc
10003ae0:	5f                   	pop    edi
10003ae1:	74 0d                	je     0x10003af0
10003ae3:	55                   	push   ebp
10003ae4:	e8 1c 24 00 00       	call   0x10005f05
10003ae9:	85 c0                	test   eax,eax
10003aeb:	59                   	pop    ecx
10003aec:	75 81                	jne    0x10003a6f
10003aee:	eb 07                	jmp    0x10003af7
10003af0:	e8 51 0f 00 00       	call   0x10004a46
10003af5:	89 38                	mov    DWORD PTR [eax],edi
10003af7:	e8 4a 0f 00 00       	call   0x10004a46
10003afc:	89 38                	mov    DWORD PTR [eax],edi
10003afe:	5f                   	pop    edi
10003aff:	8b c6                	mov    eax,esi
10003b01:	5e                   	pop    esi
10003b02:	5b                   	pop    ebx
10003b03:	5d                   	pop    ebp
10003b04:	c3                   	ret    
10003b05:	55                   	push   ebp
10003b06:	e8 fa 23 00 00       	call   0x10005f05
10003b0b:	59                   	pop    ecx
10003b0c:	e8 35 0f 00 00       	call   0x10004a46
10003b11:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
10003b17:	33 c0                	xor    eax,eax
10003b19:	5d                   	pop    ebp
10003b1a:	c3                   	ret    
