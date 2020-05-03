10003b1b:	3b 0d 10 00 01 10    	cmp    ecx,DWORD PTR ds:0x10010010
10003b21:	75 02                	jne    0x10003b25
10003b23:	f3 c3                	repz ret 
10003b25:	e9 fd 23 00 00       	jmp    0x10005f27
10003b2a:	55                   	push   ebp
10003b2b:	8b ec                	mov    ebp,esp
10003b2d:	51                   	push   ecx
10003b2e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003b31:	83 f8 01             	cmp    eax,0x1
10003b34:	53                   	push   ebx
10003b35:	56                   	push   esi
10003b36:	57                   	push   edi
10003b37:	0f 85 17 01 00 00    	jne    0x10003c54
10003b3d:	8b 1d 48 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d048
10003b43:	bf 94 00 00 00       	mov    edi,0x94
10003b48:	57                   	push   edi
10003b49:	6a 00                	push   0x0
10003b4b:	ff d3                	call   ebx
10003b4d:	50                   	push   eax
10003b4e:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10003b54:	8b f0                	mov    esi,eax
10003b56:	85 f6                	test   esi,esi
10003b58:	75 07                	jne    0x10003b61
10003b5a:	33 c0                	xor    eax,eax
10003b5c:	e9 9b 01 00 00       	jmp    0x10003cfc
10003b61:	56                   	push   esi
10003b62:	89 3e                	mov    DWORD PTR [esi],edi
10003b64:	ff 15 44 d0 00 10    	call   DWORD PTR ds:0x1000d044
10003b6a:	85 c0                	test   eax,eax
10003b6c:	56                   	push   esi
10003b6d:	6a 00                	push   0x0
10003b6f:	75 0b                	jne    0x10003b7c
10003b71:	ff d3                	call   ebx
10003b73:	50                   	push   eax
10003b74:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10003b7a:	eb de                	jmp    0x10003b5a
10003b7c:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
10003b7f:	8b 7e 0c             	mov    edi,DWORD PTR [esi+0xc]
10003b82:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
10003b85:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
10003b88:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
10003b8b:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10003b8e:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10003b91:	81 e7 ff 7f 00 00    	and    edi,0x7fff
10003b97:	ff d3                	call   ebx
10003b99:	50                   	push   eax
10003b9a:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10003ba0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003ba3:	83 f8 02             	cmp    eax,0x2
10003ba6:	74 06                	je     0x10003bae
10003ba8:	81 cf 00 80 00 00    	or     edi,0x8000
10003bae:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10003bb1:	a3 a8 53 01 10       	mov    ds:0x100153a8,eax
10003bb6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10003bb9:	8b d0                	mov    edx,eax
10003bbb:	c1 e2 08             	shl    edx,0x8
10003bbe:	03 d1                	add    edx,ecx
10003bc0:	6a 01                	push   0x1
10003bc2:	89 15 b0 53 01 10    	mov    DWORD PTR ds:0x100153b0,edx
10003bc8:	a3 b4 53 01 10       	mov    ds:0x100153b4,eax
10003bcd:	89 0d b8 53 01 10    	mov    DWORD PTR ds:0x100153b8,ecx
10003bd3:	89 3d ac 53 01 10    	mov    DWORD PTR ds:0x100153ac,edi
10003bd9:	e8 d6 0e 00 00       	call   0x10004ab4
10003bde:	85 c0                	test   eax,eax
10003be0:	59                   	pop    ecx
10003be1:	0f 84 73 ff ff ff    	je     0x10003b5a
10003be7:	e8 e0 28 00 00       	call   0x100064cc
10003bec:	85 c0                	test   eax,eax
10003bee:	75 0a                	jne    0x10003bfa
10003bf0:	e8 19 0f 00 00       	call   0x10004b0e
10003bf5:	e9 60 ff ff ff       	jmp    0x10003b5a
10003bfa:	e8 25 32 00 00       	call   0x10006e24
10003bff:	ff 15 40 d0 00 10    	call   DWORD PTR ds:0x1000d040
10003c05:	a3 fc 5d 01 10       	mov    ds:0x10015dfc,eax
10003c0a:	e8 e0 30 00 00       	call   0x10006cef
10003c0f:	a3 3c 52 01 10       	mov    ds:0x1001523c,eax
10003c14:	e8 0a 2b 00 00       	call   0x10006723
10003c19:	85 c0                	test   eax,eax
10003c1b:	7d 07                	jge    0x10003c24
10003c1d:	e8 95 25 00 00       	call   0x100061b7
10003c22:	eb cc                	jmp    0x10003bf0
10003c24:	e8 0d 30 00 00       	call   0x10006c36
10003c29:	85 c0                	test   eax,eax
10003c2b:	7c 20                	jl     0x10003c4d
10003c2d:	e8 91 2d 00 00       	call   0x100069c3
10003c32:	85 c0                	test   eax,eax
10003c34:	7c 17                	jl     0x10003c4d
10003c36:	6a 00                	push   0x0
10003c38:	e8 05 1f 00 00       	call   0x10005b42
10003c3d:	85 c0                	test   eax,eax
10003c3f:	59                   	pop    ecx
10003c40:	75 0b                	jne    0x10003c4d
10003c42:	ff 05 38 52 01 10    	inc    DWORD PTR ds:0x10015238
10003c48:	e9 ac 00 00 00       	jmp    0x10003cf9
10003c4d:	e8 25 2d 00 00       	call   0x10006977
10003c52:	eb c9                	jmp    0x10003c1d
10003c54:	33 ff                	xor    edi,edi
10003c56:	3b c7                	cmp    eax,edi
10003c58:	75 35                	jne    0x10003c8f
10003c5a:	39 3d 38 52 01 10    	cmp    DWORD PTR ds:0x10015238,edi
10003c60:	0f 8e f4 fe ff ff    	jle    0x10003b5a
10003c66:	ff 0d 38 52 01 10    	dec    DWORD PTR ds:0x10015238
10003c6c:	39 3d e4 53 01 10    	cmp    DWORD PTR ds:0x100153e4,edi
10003c72:	75 05                	jne    0x10003c79
10003c74:	e8 4e 20 00 00       	call   0x10005cc7
10003c79:	39 7d 10             	cmp    DWORD PTR [ebp+0x10],edi
10003c7c:	75 7b                	jne    0x10003cf9
10003c7e:	e8 f4 2c 00 00       	call   0x10006977
10003c83:	e8 2f 25 00 00       	call   0x100061b7
10003c88:	e8 81 0e 00 00       	call   0x10004b0e
10003c8d:	eb 6a                	jmp    0x10003cf9
10003c8f:	83 f8 02             	cmp    eax,0x2
10003c92:	75 59                	jne    0x10003ced
10003c94:	e8 ec 24 00 00       	call   0x10006185
10003c99:	68 14 02 00 00       	push   0x214
10003c9e:	6a 01                	push   0x1
10003ca0:	e8 eb 29 00 00       	call   0x10006690
10003ca5:	8b f0                	mov    esi,eax
10003ca7:	3b f7                	cmp    esi,edi
10003ca9:	59                   	pop    ecx
10003caa:	59                   	pop    ecx
10003cab:	0f 84 a9 fe ff ff    	je     0x10003b5a
10003cb1:	56                   	push   esi
10003cb2:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
10003cb8:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
10003cbe:	e8 4b 24 00 00       	call   0x1000610e
10003cc3:	59                   	pop    ecx
10003cc4:	ff d0                	call   eax
10003cc6:	85 c0                	test   eax,eax
10003cc8:	74 17                	je     0x10003ce1
10003cca:	57                   	push   edi
10003ccb:	56                   	push   esi
10003ccc:	e8 23 25 00 00       	call   0x100061f4
10003cd1:	59                   	pop    ecx
10003cd2:	59                   	pop    ecx
10003cd3:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
10003cd9:	83 4e 04 ff          	or     DWORD PTR [esi+0x4],0xffffffff
10003cdd:	89 06                	mov    DWORD PTR [esi],eax
10003cdf:	eb 18                	jmp    0x10003cf9
10003ce1:	56                   	push   esi
10003ce2:	e8 94 fc ff ff       	call   0x1000397b
10003ce7:	59                   	pop    ecx
10003ce8:	e9 6d fe ff ff       	jmp    0x10003b5a
10003ced:	83 f8 03             	cmp    eax,0x3
10003cf0:	75 07                	jne    0x10003cf9
10003cf2:	57                   	push   edi
10003cf3:	e8 6b 27 00 00       	call   0x10006463
10003cf8:	59                   	pop    ecx
10003cf9:	33 c0                	xor    eax,eax
10003cfb:	40                   	inc    eax
10003cfc:	5f                   	pop    edi
10003cfd:	5e                   	pop    esi
10003cfe:	5b                   	pop    ebx
