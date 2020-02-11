1000408e:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
10004091:	77 09                	ja     0x1000409c
10004093:	e8 ae 09 00 00       	call   0x10004a46
100038d0:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
100038d7:	74 2d                	je     0x10003906
100038d9:	55                   	push   ebp
100038da:	8b ec                	mov    ebp,esp
100038dc:	83 ec 08             	sub    esp,0x8
100038df:	83 e4 f8             	and    esp,0xfffffff8
100038e2:	dd 1c 24             	fstp   QWORD PTR [esp]
100038e5:	f2 0f 2c 04 24       	cvttsd2si eax,QWORD PTR [esp]
100038ea:	c9                   	leave  
100038eb:	c3                   	ret    
100038ec:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
100038f3:	74 11                	je     0x10003906
100038f5:	83 ec 04             	sub    esp,0x4
100038f8:	d9 3c 24             	fnstcw WORD PTR [esp]
100038fb:	58                   	pop    eax
100038fc:	66 83 e0 7f          	and    ax,0x7f
10003900:	66 83 f8 7f          	cmp    ax,0x7f
10003904:	74 d3                	je     0x100038d9
10003906:	55                   	push   ebp
10003907:	8b ec                	mov    ebp,esp
10003909:	83 ec 20             	sub    esp,0x20
1000390c:	83 e4 f0             	and    esp,0xfffffff0
1000390f:	d9 c0                	fld    st(0)
10003911:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
10003915:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
10003919:	df 6c 24 10          	fild   QWORD PTR [esp+0x10]
1000391d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
10003921:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10003925:	85 c0                	test   eax,eax
10003927:	74 3c                	je     0x10003965
10003929:	de e9                	fsubrp st(1),st
1000392b:	85 d2                	test   edx,edx
1000392d:	79 1e                	jns    0x1000394d
1000392f:	d9 1c 24             	fstp   DWORD PTR [esp]
10003932:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
10003935:	81 f1 00 00 00 80    	xor    ecx,0x80000000
1000393b:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
10003941:	83 d0 00             	adc    eax,0x0
10003944:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003948:	83 d2 00             	adc    edx,0x0
1000394b:	eb 2c                	jmp    0x10003979
1000394d:	d9 1c 24             	fstp   DWORD PTR [esp]
10003950:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
10003953:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
10003959:	83 d8 00             	sbb    eax,0x0
1000395c:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003960:	83 da 00             	sbb    edx,0x0
10003963:	eb 14                	jmp    0x10003979
10003965:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003969:	f7 c2 ff ff ff 7f    	test   edx,0x7fffffff
1000396f:	75 b8                	jne    0x10003929
10003971:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
10003975:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
10003979:	c9                   	leave  
1000397a:	c3                   	ret    
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
10003a09:	6a 0c                	push   0xc
10003a0b:	68 e0 e3 00 10       	push   0x1000e3e0
10003a10:	e8 13 1e 00 00       	call   0x10005828
10003a15:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
10003a19:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10003a1c:	3b 35 e0 5d 01 10    	cmp    esi,DWORD PTR ds:0x10015de0
10003a22:	77 22                	ja     0x10003a46
10003a24:	6a 04                	push   0x4
10003a26:	e8 cd 12 00 00       	call   0x10004cf8
10003a2b:	59                   	pop    ecx
10003a2c:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10003a30:	56                   	push   esi
10003a31:	e8 0f 1b 00 00       	call   0x10005545
10003a36:	59                   	pop    ecx
10003a37:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003a3a:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003a41:	e8 09 00 00 00       	call   0x10003a4f
10003a46:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10003a49:	e8 1f 1e 00 00       	call   0x1000586d
10003a4e:	c3                   	ret    
10003a4f:	6a 04                	push   0x4
10003a51:	e8 ca 11 00 00       	call   0x10004c20
10003a56:	59                   	pop    ecx
10003a57:	c3                   	ret    
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
10003cff:	c9                   	leave  
10003d00:	c2 0c 00             	ret    0xc
10003d03:	6a 0c                	push   0xc
10003d05:	68 00 e4 00 10       	push   0x1000e400
10003d0a:	e8 19 1b 00 00       	call   0x10005828
10003d0f:	8b f9                	mov    edi,ecx
10003d11:	8b f2                	mov    esi,edx
10003d13:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10003d16:	33 c0                	xor    eax,eax
10003d18:	40                   	inc    eax
10003d19:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d1c:	85 f6                	test   esi,esi
10003d1e:	75 0c                	jne    0x10003d2c
10003d20:	39 15 38 52 01 10    	cmp    DWORD PTR ds:0x10015238,edx
10003d26:	0f 84 c5 00 00 00    	je     0x10003df1
10003d2c:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10003d30:	3b f0                	cmp    esi,eax
10003d32:	74 05                	je     0x10003d39
10003d34:	83 fe 02             	cmp    esi,0x2
10003d37:	75 2e                	jne    0x10003d67
10003d39:	a1 fc d1 00 10       	mov    eax,ds:0x1000d1fc
10003d3e:	85 c0                	test   eax,eax
10003d40:	74 08                	je     0x10003d4a
10003d42:	57                   	push   edi
10003d43:	56                   	push   esi
10003d44:	53                   	push   ebx
10003d45:	ff d0                	call   eax
10003d47:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d4a:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
10003d4e:	0f 84 96 00 00 00    	je     0x10003dea
10003d54:	57                   	push   edi
10003d55:	56                   	push   esi
10003d56:	53                   	push   ebx
10003d57:	e8 ce fd ff ff       	call   0x10003b2a
10003d5c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d5f:	85 c0                	test   eax,eax
10003d61:	0f 84 83 00 00 00    	je     0x10003dea
10003d67:	57                   	push   edi
10003d68:	56                   	push   esi
10003d69:	53                   	push   ebx
10003d6a:	e8 91 d2 ff ff       	call   0x10001000
10003d6f:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003d72:	83 fe 01             	cmp    esi,0x1
10003d75:	75 24                	jne    0x10003d9b
10003d77:	85 c0                	test   eax,eax
10003d79:	75 20                	jne    0x10003d9b
10003d7b:	57                   	push   edi
10003d7c:	50                   	push   eax
10003d7d:	53                   	push   ebx
10003d7e:	e8 7d d2 ff ff       	call   0x10001000
10003d83:	57                   	push   edi
10003d84:	6a 00                	push   0x0
10003d86:	53                   	push   ebx
10003d87:	e8 9e fd ff ff       	call   0x10003b2a
10003d8c:	a1 fc d1 00 10       	mov    eax,ds:0x1000d1fc
10003d91:	85 c0                	test   eax,eax
10003d93:	74 06                	je     0x10003d9b
10003d95:	57                   	push   edi
10003d96:	6a 00                	push   0x0
10003d98:	53                   	push   ebx
10003d99:	ff d0                	call   eax
10003d9b:	85 f6                	test   esi,esi
10003d9d:	74 05                	je     0x10003da4
10003d9f:	83 fe 03             	cmp    esi,0x3
10003da2:	75 26                	jne    0x10003dca
10003da4:	57                   	push   edi
10003da5:	56                   	push   esi
10003da6:	53                   	push   ebx
10003da7:	e8 7e fd ff ff       	call   0x10003b2a
10003dac:	85 c0                	test   eax,eax
10003dae:	75 03                	jne    0x10003db3
10003db0:	21 45 e4             	and    DWORD PTR [ebp-0x1c],eax
10003db3:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
10003db7:	74 11                	je     0x10003dca
10003db9:	a1 fc d1 00 10       	mov    eax,ds:0x1000d1fc
10003dbe:	85 c0                	test   eax,eax
10003dc0:	74 08                	je     0x10003dca
10003dc2:	57                   	push   edi
10003dc3:	56                   	push   esi
10003dc4:	53                   	push   ebx
10003dc5:	ff d0                	call   eax
10003dc7:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003dca:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003dd1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10003dd4:	eb 1d                	jmp    0x10003df3
10003dd6:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10003dd9:	8b 08                	mov    ecx,DWORD PTR [eax]
10003ddb:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003ddd:	50                   	push   eax
10003dde:	51                   	push   ecx
10003ddf:	e8 e6 31 00 00       	call   0x10006fca
10003de4:	59                   	pop    ecx
10003de5:	59                   	pop    ecx
10003de6:	c3                   	ret    
10003de7:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10003dea:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003df1:	33 c0                	xor    eax,eax
10003df3:	e8 75 1a 00 00       	call   0x1000586d
10003df8:	c3                   	ret    
10003df9:	83 7c 24 08 01       	cmp    DWORD PTR [esp+0x8],0x1
10003dfe:	75 05                	jne    0x10003e05
10003e00:	e8 e0 31 00 00       	call   0x10006fe5
10003e05:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10003e09:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10003e0d:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10003e11:	e8 ed fe ff ff       	call   0x10003d03
10003e16:	59                   	pop    ecx
10003e17:	c2 0c 00             	ret    0xc
10003e1a:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003e1e:	85 c0                	test   eax,eax
10003e20:	56                   	push   esi
10003e21:	8b f1                	mov    esi,ecx
10003e23:	c6 46 0c 00          	mov    BYTE PTR [esi+0xc],0x0
10003e27:	75 63                	jne    0x10003e8c
10003e29:	e8 fc 24 00 00       	call   0x1000632a
10003e2e:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
10003e31:	8b 48 6c             	mov    ecx,DWORD PTR [eax+0x6c]
10003e34:	89 0e                	mov    DWORD PTR [esi],ecx
10003e36:	8b 48 68             	mov    ecx,DWORD PTR [eax+0x68]
10003e39:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
10003e3c:	8b 0e                	mov    ecx,DWORD PTR [esi]
10003e3e:	3b 0d 78 0a 01 10    	cmp    ecx,DWORD PTR ds:0x10010a78
10003e44:	74 12                	je     0x10003e58
10003e46:	8b 0d 94 09 01 10    	mov    ecx,DWORD PTR ds:0x10010994
10003e4c:	85 48 70             	test   DWORD PTR [eax+0x70],ecx
10003e4f:	75 07                	jne    0x10003e58
10003e51:	e8 a4 3b 00 00       	call   0x100079fa
10003e56:	89 06                	mov    DWORD PTR [esi],eax
10003e58:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
10003e5b:	3b 05 98 08 01 10    	cmp    eax,DWORD PTR ds:0x10010898
10003e61:	74 16                	je     0x10003e79
10003e63:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10003e66:	8b 0d 94 09 01 10    	mov    ecx,DWORD PTR ds:0x10010994
10003e6c:	85 48 70             	test   DWORD PTR [eax+0x70],ecx
10003e6f:	75 08                	jne    0x10003e79
10003e71:	e8 45 34 00 00       	call   0x100072bb
10003e76:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
10003e79:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10003e7c:	f6 40 70 02          	test   BYTE PTR [eax+0x70],0x2
10003e80:	75 14                	jne    0x10003e96
10003e82:	83 48 70 02          	or     DWORD PTR [eax+0x70],0x2
10003e86:	c6 46 0c 01          	mov    BYTE PTR [esi+0xc],0x1
10003e8a:	eb 0a                	jmp    0x10003e96
10003e8c:	8b 08                	mov    ecx,DWORD PTR [eax]
10003e8e:	89 0e                	mov    DWORD PTR [esi],ecx
10003e90:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10003e93:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
10003e96:	8b c6                	mov    eax,esi
10003e98:	5e                   	pop    esi
10003e99:	c2 04 00             	ret    0x4
10003e9c:	55                   	push   ebp
10003e9d:	8b ec                	mov    ebp,esp
10003e9f:	83 ec 10             	sub    esp,0x10
10003ea2:	56                   	push   esi
10003ea3:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10003ea6:	8d 4d f0             	lea    ecx,[ebp-0x10]
10003ea9:	e8 6c ff ff ff       	call   0x10003e1a
10003eae:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10003eb1:	0f be 06             	movsx  eax,BYTE PTR [esi]
10003eb4:	50                   	push   eax
10003eb5:	e8 6f 3e 00 00       	call   0x10007d29
10003eba:	83 f8 65             	cmp    eax,0x65
10003ebd:	eb 0c                	jmp    0x10003ecb
10003ebf:	46                   	inc    esi
10003ec0:	0f b6 06             	movzx  eax,BYTE PTR [esi]
10003ec3:	50                   	push   eax
10003ec4:	e8 20 3d 00 00       	call   0x10007be9
10003ec9:	85 c0                	test   eax,eax
10003ecb:	59                   	pop    ecx
10003ecc:	75 f1                	jne    0x10003ebf
10003ece:	0f be 06             	movsx  eax,BYTE PTR [esi]
10003ed1:	50                   	push   eax
10003ed2:	e8 52 3e 00 00       	call   0x10007d29
10003ed7:	83 f8 78             	cmp    eax,0x78
10003eda:	59                   	pop    ecx
10003edb:	75 02                	jne    0x10003edf
10003edd:	46                   	inc    esi
10003ede:	46                   	inc    esi
10003edf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10003ee2:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
10003ee8:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003eea:	8a 06                	mov    al,BYTE PTR [esi]
10003eec:	8a 09                	mov    cl,BYTE PTR [ecx]
10003eee:	88 0e                	mov    BYTE PTR [esi],cl
10003ef0:	46                   	inc    esi
10003ef1:	8a 0e                	mov    cl,BYTE PTR [esi]
10003ef3:	88 06                	mov    BYTE PTR [esi],al
10003ef5:	8a c1                	mov    al,cl
10003ef7:	8a 0e                	mov    cl,BYTE PTR [esi]
10003ef9:	46                   	inc    esi
10003efa:	84 c9                	test   cl,cl
10003efc:	75 f3                	jne    0x10003ef1
10003efe:	38 4d fc             	cmp    BYTE PTR [ebp-0x4],cl
10003f01:	5e                   	pop    esi
10003f02:	74 07                	je     0x10003f0b
10003f04:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10003f07:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10003f0b:	c9                   	leave  
10003f0c:	c3                   	ret    
10003f0d:	55                   	push   ebp
10003f0e:	8b ec                	mov    ebp,esp
10003f10:	83 ec 10             	sub    esp,0x10
10003f13:	56                   	push   esi
10003f14:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10003f17:	8d 4d f0             	lea    ecx,[ebp-0x10]
10003f1a:	e8 fb fe ff ff       	call   0x10003e1a
10003f1f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10003f22:	8a 08                	mov    cl,BYTE PTR [eax]
10003f24:	84 c9                	test   cl,cl
10003f26:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
10003f29:	74 15                	je     0x10003f40
10003f2b:	8b 96 bc 00 00 00    	mov    edx,DWORD PTR [esi+0xbc]
10003f31:	8b 12                	mov    edx,DWORD PTR [edx]
10003f33:	8a 12                	mov    dl,BYTE PTR [edx]
10003f35:	3a ca                	cmp    cl,dl
10003f37:	74 07                	je     0x10003f40
10003f39:	40                   	inc    eax
10003f3a:	8a 08                	mov    cl,BYTE PTR [eax]
10003f3c:	84 c9                	test   cl,cl
10003f3e:	75 f5                	jne    0x10003f35
10003f40:	8a 08                	mov    cl,BYTE PTR [eax]
10003f42:	40                   	inc    eax
10003f43:	84 c9                	test   cl,cl
10003f45:	74 36                	je     0x10003f7d
10003f47:	eb 0b                	jmp    0x10003f54
10003f49:	80 f9 65             	cmp    cl,0x65
10003f4c:	74 0c                	je     0x10003f5a
10003f4e:	80 f9 45             	cmp    cl,0x45
10003f51:	74 07                	je     0x10003f5a
10003f53:	40                   	inc    eax
10003f54:	8a 08                	mov    cl,BYTE PTR [eax]
10003f56:	84 c9                	test   cl,cl
10003f58:	75 ef                	jne    0x10003f49
10003f5a:	8b d0                	mov    edx,eax
10003f5c:	48                   	dec    eax
10003f5d:	80 38 30             	cmp    BYTE PTR [eax],0x30
10003f60:	74 fa                	je     0x10003f5c
10003f62:	8b 8e bc 00 00 00    	mov    ecx,DWORD PTR [esi+0xbc]
10003f68:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003f6a:	53                   	push   ebx
10003f6b:	8a 18                	mov    bl,BYTE PTR [eax]
10003f6d:	3a 19                	cmp    bl,BYTE PTR [ecx]
10003f6f:	5b                   	pop    ebx
10003f70:	75 01                	jne    0x10003f73
10003f72:	48                   	dec    eax
10003f73:	8a 0a                	mov    cl,BYTE PTR [edx]
10003f75:	40                   	inc    eax
10003f76:	42                   	inc    edx
10003f77:	84 c9                	test   cl,cl
10003f79:	88 08                	mov    BYTE PTR [eax],cl
10003f7b:	75 f6                	jne    0x10003f73
10003f7d:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10003f81:	5e                   	pop    esi
10003f82:	74 07                	je     0x10003f8b
10003f84:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10003f87:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10003f8b:	c9                   	leave  
10003f8c:	c3                   	ret    
10003f8d:	d9 ee                	fldz   
10003f8f:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003f93:	dc 18                	fcomp  QWORD PTR [eax]
10003f95:	df e0                	fnstsw ax
10003f97:	f6 c4 41             	test   ah,0x41
10003f9a:	7a 04                	jp     0x10003fa0
10003f9c:	33 c0                	xor    eax,eax
10003f9e:	40                   	inc    eax
10003f9f:	c3                   	ret    
10003fa0:	33 c0                	xor    eax,eax
10003fa2:	c3                   	ret    
10003fa3:	55                   	push   ebp
10003fa4:	8b ec                	mov    ebp,esp
10003fa6:	51                   	push   ecx
10003fa7:	51                   	push   ecx
10003fa8:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
10003fac:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10003faf:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10003fb2:	74 19                	je     0x10003fcd
10003fb4:	8d 45 f8             	lea    eax,[ebp-0x8]
10003fb7:	50                   	push   eax
10003fb8:	e8 93 3d 00 00       	call   0x10007d50
10003fbd:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10003fc0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003fc3:	89 08                	mov    DWORD PTR [eax],ecx
10003fc5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10003fc8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
10003fcb:	eb 11                	jmp    0x10003fde
10003fcd:	8d 45 08             	lea    eax,[ebp+0x8]
10003fd0:	50                   	push   eax
10003fd1:	e8 20 3e 00 00       	call   0x10007df6
10003fd6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003fd9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10003fdc:	89 08                	mov    DWORD PTR [eax],ecx
10003fde:	83 c4 0c             	add    esp,0xc
10003fe1:	c9                   	leave  
10003fe2:	c3                   	ret    
10003fe3:	6a 00                	push   0x0
10003fe5:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003fe9:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003fed:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003ff1:	e8 ad ff ff ff       	call   0x10003fa3
10003ff6:	83 c4 10             	add    esp,0x10
10003ff9:	c3                   	ret    
10003ffa:	85 ff                	test   edi,edi
10003ffc:	56                   	push   esi
10003ffd:	8b f0                	mov    esi,eax
10003fff:	74 14                	je     0x10004015
10004001:	56                   	push   esi
10004002:	e8 09 42 00 00       	call   0x10008210
10004007:	40                   	inc    eax
10004008:	50                   	push   eax
10004009:	56                   	push   esi
1000400a:	03 f7                	add    esi,edi
1000400c:	56                   	push   esi
1000400d:	e8 8e 3e 00 00       	call   0x10007ea0
10004012:	83 c4 10             	add    esp,0x10
10004015:	5e                   	pop    esi
10004016:	c3                   	ret    
10004017:	6a 00                	push   0x0
10004019:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
1000401d:	e8 7a fe ff ff       	call   0x10003e9c
10004022:	59                   	pop    ecx
10004023:	59                   	pop    ecx
10004024:	c3                   	ret    
10004025:	6a 00                	push   0x0
10004027:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
1000402b:	e8 dd fe ff ff       	call   0x10003f0d
10004030:	59                   	pop    ecx
10004031:	59                   	pop    ecx
10004032:	c3                   	ret    
10004033:	55                   	push   ebp
10004034:	8b ec                	mov    ebp,esp
10004036:	83 ec 10             	sub    esp,0x10
10004039:	53                   	push   ebx
1000403a:	56                   	push   esi
1000403b:	57                   	push   edi
1000403c:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000403f:	8d 4d f0             	lea    ecx,[ebp-0x10]
10004042:	8b d8                	mov    ebx,eax
10004044:	e8 d1 fd ff ff       	call   0x10003e1a
10004049:	33 f6                	xor    esi,esi
1000404b:	3b de                	cmp    ebx,esi
1000404d:	75 2b                	jne    0x1000407a
1000404f:	e8 f2 09 00 00       	call   0x10004a46
10004054:	6a 16                	push   0x16
10004056:	5f                   	pop    edi
10004057:	56                   	push   esi
10004058:	56                   	push   esi
10004059:	56                   	push   esi
1000405a:	56                   	push   esi
1000405b:	56                   	push   esi
1000405c:	89 38                	mov    DWORD PTR [eax],edi
1000405e:	e8 13 3b 00 00       	call   0x10007b76
10004063:	83 c4 14             	add    esp,0x14
10004066:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000406a:	74 07                	je     0x10004073
1000406c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000406f:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004073:	8b c7                	mov    eax,edi
10004075:	e9 21 01 00 00       	jmp    0x1000419b
1000407a:	39 75 08             	cmp    DWORD PTR [ebp+0x8],esi
1000407d:	76 d0                	jbe    0x1000404f
1000407f:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
10004082:	7e 05                	jle    0x10004089
10004084:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10004087:	eb 02                	jmp    0x1000408b
10004089:	33 c0                	xor    eax,eax
1000408b:	83 c0 09             	add    eax,0x9
10004098:	6a 22                	push   0x22
1000409a:	eb ba                	jmp    0x10004056
1000409c:	80 7d 18 00          	cmp    BYTE PTR [ebp+0x18],0x0
100040a0:	74 1e                	je     0x100040c0
100040a2:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
100040a5:	33 c0                	xor    eax,eax
100040a7:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
100040aa:	0f 9f c0             	setg   al
100040ad:	33 c9                	xor    ecx,ecx
100040af:	83 3a 2d             	cmp    DWORD PTR [edx],0x2d
100040b2:	0f 94 c1             	sete   cl
100040b5:	8b f8                	mov    edi,eax
100040b7:	03 cb                	add    ecx,ebx
100040b9:	8b c1                	mov    eax,ecx
100040bb:	e8 3a ff ff ff       	call   0x10003ffa
100040c0:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
100040c3:	83 3f 2d             	cmp    DWORD PTR [edi],0x2d
100040c6:	8b f3                	mov    esi,ebx
100040c8:	75 06                	jne    0x100040d0
100040ca:	c6 03 2d             	mov    BYTE PTR [ebx],0x2d
100040cd:	8d 73 01             	lea    esi,[ebx+0x1]
100040d0:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
100040d4:	7e 18                	jle    0x100040ee
100040d6:	8d 46 01             	lea    eax,[esi+0x1]
100040d9:	8a 08                	mov    cl,BYTE PTR [eax]
100040db:	88 0e                	mov    BYTE PTR [esi],cl
100040dd:	8b f0                	mov    esi,eax
100040df:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100040e2:	8b 80 bc 00 00 00    	mov    eax,DWORD PTR [eax+0xbc]
100040e8:	8b 00                	mov    eax,DWORD PTR [eax]
100040ea:	8a 00                	mov    al,BYTE PTR [eax]
100040ec:	88 06                	mov    BYTE PTR [esi],al
100040ee:	33 c0                	xor    eax,eax
100040f0:	38 45 18             	cmp    BYTE PTR [ebp+0x18],al
100040f3:	0f 94 c0             	sete   al
100040f6:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
100040f9:	03 f0                	add    esi,eax
100040fb:	83 7d 08 ff          	cmp    DWORD PTR [ebp+0x8],0xffffffff
100040ff:	75 05                	jne    0x10004106
10004101:	83 cb ff             	or     ebx,0xffffffff
10004104:	eb 05                	jmp    0x1000410b
10004106:	2b de                	sub    ebx,esi
10004108:	03 5d 08             	add    ebx,DWORD PTR [ebp+0x8]
1000410b:	68 00 d2 00 10       	push   0x1000d200
10004110:	53                   	push   ebx
10004111:	56                   	push   esi
10004112:	e8 84 41 00 00       	call   0x1000829b
10004117:	83 c4 0c             	add    esp,0xc
1000411a:	33 db                	xor    ebx,ebx
1000411c:	85 c0                	test   eax,eax
1000411e:	74 0d                	je     0x1000412d
10004120:	53                   	push   ebx
10004121:	53                   	push   ebx
10004122:	53                   	push   ebx
10004123:	53                   	push   ebx
10004124:	53                   	push   ebx
10004125:	e8 50 39 00 00       	call   0x10007a7a
1000412a:	83 c4 14             	add    esp,0x14
1000412d:	39 5d 10             	cmp    DWORD PTR [ebp+0x10],ebx
10004130:	8d 4e 02             	lea    ecx,[esi+0x2]
10004133:	74 03                	je     0x10004138
10004135:	c6 06 45             	mov    BYTE PTR [esi],0x45
10004138:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
1000413b:	46                   	inc    esi
1000413c:	80 38 30             	cmp    BYTE PTR [eax],0x30
1000413f:	74 2e                	je     0x1000416f
10004141:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10004144:	48                   	dec    eax
10004145:	79 05                	jns    0x1000414c
10004147:	f7 d8                	neg    eax
10004149:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
1000414c:	46                   	inc    esi
1000414d:	83 f8 64             	cmp    eax,0x64
10004150:	7c 0a                	jl     0x1000415c
10004152:	99                   	cdq    
10004153:	6a 64                	push   0x64
10004155:	5f                   	pop    edi
10004156:	f7 ff                	idiv   edi
10004158:	00 06                	add    BYTE PTR [esi],al
1000415a:	8b c2                	mov    eax,edx
1000415c:	46                   	inc    esi
1000415d:	83 f8 0a             	cmp    eax,0xa
10004160:	7c 0a                	jl     0x1000416c
10004162:	99                   	cdq    
10004163:	6a 0a                	push   0xa
10004165:	5f                   	pop    edi
10004166:	f7 ff                	idiv   edi
10004168:	00 06                	add    BYTE PTR [esi],al
1000416a:	8b c2                	mov    eax,edx
1000416c:	00 46 01             	add    BYTE PTR [esi+0x1],al
1000416f:	f6 05 98 5b 01 10 01 	test   BYTE PTR ds:0x10015b98,0x1
10004176:	74 14                	je     0x1000418c
10004178:	80 39 30             	cmp    BYTE PTR [ecx],0x30
1000417b:	75 0f                	jne    0x1000418c
1000417d:	6a 03                	push   0x3
1000417f:	8d 41 01             	lea    eax,[ecx+0x1]
10004182:	50                   	push   eax
10004183:	51                   	push   ecx
10004184:	e8 17 3d 00 00       	call   0x10007ea0
10004189:	83 c4 0c             	add    esp,0xc
1000418c:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10004190:	74 07                	je     0x10004199
10004192:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10004195:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004199:	33 c0                	xor    eax,eax
1000419b:	5f                   	pop    edi
1000419c:	5e                   	pop    esi
1000419d:	5b                   	pop    ebx
1000419e:	c9                   	leave  
1000419f:	c3                   	ret    
100041a0:	55                   	push   ebp
100041a1:	8b ec                	mov    ebp,esp
100041a3:	83 ec 2c             	sub    esp,0x2c
100041a6:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100041ab:	33 c5                	xor    eax,ebp
100041ad:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100041b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100041b3:	53                   	push   ebx
100041b4:	56                   	push   esi
100041b5:	57                   	push   edi
100041b6:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
100041b9:	6a 16                	push   0x16
100041bb:	5e                   	pop    esi
100041bc:	56                   	push   esi
100041bd:	8d 4d e4             	lea    ecx,[ebp-0x1c]
100041c0:	51                   	push   ecx
100041c1:	8d 4d d4             	lea    ecx,[ebp-0x2c]
100041c4:	51                   	push   ecx
100041c5:	ff 70 04             	push   DWORD PTR [eax+0x4]
100041c8:	ff 30                	push   DWORD PTR [eax]
100041ca:	e8 a9 42 00 00       	call   0x10008478
100041cf:	33 db                	xor    ebx,ebx
100041d1:	83 c4 14             	add    esp,0x14
100041d4:	3b fb                	cmp    edi,ebx
100041d6:	75 18                	jne    0x100041f0
100041d8:	e8 69 08 00 00       	call   0x10004a46
100041dd:	53                   	push   ebx
100041de:	53                   	push   ebx
100041df:	53                   	push   ebx
100041e0:	53                   	push   ebx
100041e1:	53                   	push   ebx
100041e2:	89 30                	mov    DWORD PTR [eax],esi
100041e4:	e8 8d 39 00 00       	call   0x10007b76
100041e9:	83 c4 14             	add    esp,0x14
100041ec:	8b c6                	mov    eax,esi
100041ee:	eb 6f                	jmp    0x1000425f
100041f0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
100041f3:	3b c3                	cmp    eax,ebx
100041f5:	76 e1                	jbe    0x100041d8
100041f7:	83 f8 ff             	cmp    eax,0xffffffff
100041fa:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
100041fd:	75 05                	jne    0x10004204
100041ff:	83 c8 ff             	or     eax,0xffffffff
10004202:	eb 14                	jmp    0x10004218
10004204:	33 c9                	xor    ecx,ecx
10004206:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
1000420a:	0f 94 c1             	sete   cl
1000420d:	2b c1                	sub    eax,ecx
1000420f:	33 c9                	xor    ecx,ecx
10004211:	3b f3                	cmp    esi,ebx
10004213:	0f 9f c1             	setg   cl
10004216:	2b c1                	sub    eax,ecx
10004218:	8d 4d d4             	lea    ecx,[ebp-0x2c]
1000421b:	51                   	push   ecx
1000421c:	8d 4e 01             	lea    ecx,[esi+0x1]
1000421f:	51                   	push   ecx
10004220:	50                   	push   eax
10004221:	33 c0                	xor    eax,eax
10004223:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004227:	0f 94 c0             	sete   al
1000422a:	33 c9                	xor    ecx,ecx
1000422c:	3b f3                	cmp    esi,ebx
1000422e:	0f 9f c1             	setg   cl
10004231:	03 c7                	add    eax,edi
10004233:	03 c8                	add    ecx,eax
10004235:	51                   	push   ecx
10004236:	e8 c5 40 00 00       	call   0x10008300
1000423b:	83 c4 10             	add    esp,0x10
1000423e:	3b c3                	cmp    eax,ebx
10004240:	74 04                	je     0x10004246
10004242:	88 1f                	mov    BYTE PTR [edi],bl
10004244:	eb 19                	jmp    0x1000425f
10004246:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004249:	8d 45 d4             	lea    eax,[ebp-0x2c]
1000424c:	53                   	push   ebx
1000424d:	50                   	push   eax
1000424e:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004251:	8b c7                	mov    eax,edi
10004253:	56                   	push   esi
10004254:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004257:	e8 d7 fd ff ff       	call   0x10004033
1000425c:	83 c4 18             	add    esp,0x18
1000425f:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004262:	5f                   	pop    edi
10004263:	5e                   	pop    esi
10004264:	33 cd                	xor    ecx,ebp
10004266:	5b                   	pop    ebx
10004267:	e8 af f8 ff ff       	call   0x10003b1b
1000426c:	c9                   	leave  
1000426d:	c3                   	ret    
1000426e:	55                   	push   ebp
1000426f:	8b ec                	mov    ebp,esp
10004271:	6a 00                	push   0x0
10004273:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004276:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004279:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000427c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000427f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004282:	e8 19 ff ff ff       	call   0x100041a0
10004287:	83 c4 18             	add    esp,0x18
1000428a:	5d                   	pop    ebp
1000428b:	c3                   	ret    
1000428c:	55                   	push   ebp
1000428d:	8b ec                	mov    ebp,esp
1000428f:	83 ec 24             	sub    esp,0x24
10004292:	56                   	push   esi
10004293:	57                   	push   edi
10004294:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004297:	8d 4d dc             	lea    ecx,[ebp-0x24]
1000429a:	c7 45 ec ff 03 00 00 	mov    DWORD PTR [ebp-0x14],0x3ff
100042a1:	33 ff                	xor    edi,edi
100042a3:	c7 45 fc 30 00 00 00 	mov    DWORD PTR [ebp-0x4],0x30
100042aa:	e8 6b fb ff ff       	call   0x10003e1a
100042af:	39 7d 14             	cmp    DWORD PTR [ebp+0x14],edi
100042b2:	7d 03                	jge    0x100042b7
100042b4:	89 7d 14             	mov    DWORD PTR [ebp+0x14],edi
100042b7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100042ba:	3b f7                	cmp    esi,edi
100042bc:	75 2b                	jne    0x100042e9
100042be:	e8 83 07 00 00       	call   0x10004a46
100042c3:	6a 16                	push   0x16
100042c5:	5e                   	pop    esi
100042c6:	57                   	push   edi
100042c7:	57                   	push   edi
100042c8:	57                   	push   edi
100042c9:	57                   	push   edi
100042ca:	57                   	push   edi
100042cb:	89 30                	mov    DWORD PTR [eax],esi
100042cd:	e8 a4 38 00 00       	call   0x10007b76
100042d2:	83 c4 14             	add    esp,0x14
100042d5:	80 7d e8 00          	cmp    BYTE PTR [ebp-0x18],0x0
100042d9:	74 07                	je     0x100042e2
100042db:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
100042de:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100042e2:	8b c6                	mov    eax,esi
100042e4:	e9 10 03 00 00       	jmp    0x100045f9
100042e9:	39 7d 10             	cmp    DWORD PTR [ebp+0x10],edi
100042ec:	76 d0                	jbe    0x100042be
100042ee:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
100042f1:	83 c0 0b             	add    eax,0xb
100042f4:	39 45 10             	cmp    DWORD PTR [ebp+0x10],eax
100042f7:	c6 06 00             	mov    BYTE PTR [esi],0x0
100042fa:	77 09                	ja     0x10004305
100042fc:	e8 45 07 00 00       	call   0x10004a46
10004301:	6a 22                	push   0x22
10004303:	eb c0                	jmp    0x100042c5
10004305:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10004308:	8b 07                	mov    eax,DWORD PTR [edi]
1000430a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000430d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10004310:	8b c8                	mov    ecx,eax
10004312:	c1 e9 14             	shr    ecx,0x14
10004315:	ba ff 07 00 00       	mov    edx,0x7ff
1000431a:	53                   	push   ebx
1000431b:	23 ca                	and    ecx,edx
1000431d:	33 db                	xor    ebx,ebx
1000431f:	3b ca                	cmp    ecx,edx
10004321:	0f 85 90 00 00 00    	jne    0x100043b7
10004327:	85 db                	test   ebx,ebx
10004329:	0f 85 88 00 00 00    	jne    0x100043b7
1000432f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10004332:	83 f8 ff             	cmp    eax,0xffffffff
10004335:	75 04                	jne    0x1000433b
10004337:	0b c0                	or     eax,eax
10004339:	eb 03                	jmp    0x1000433e
1000433b:	83 c0 fe             	add    eax,0xfffffffe
1000433e:	6a 00                	push   0x0
10004340:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004343:	8d 5e 02             	lea    ebx,[esi+0x2]
10004346:	50                   	push   eax
10004347:	53                   	push   ebx
10004348:	57                   	push   edi
10004349:	e8 20 ff ff ff       	call   0x1000426e
1000434e:	83 c4 14             	add    esp,0x14
10004351:	85 c0                	test   eax,eax
10004353:	74 19                	je     0x1000436e
10004355:	80 7d e8 00          	cmp    BYTE PTR [ebp-0x18],0x0
10004359:	c6 06 00             	mov    BYTE PTR [esi],0x0
1000435c:	0f 84 96 02 00 00    	je     0x100045f8
10004362:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
10004365:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10004369:	e9 8a 02 00 00       	jmp    0x100045f8
1000436e:	80 3b 2d             	cmp    BYTE PTR [ebx],0x2d
10004371:	75 04                	jne    0x10004377
10004373:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
10004376:	46                   	inc    esi
10004377:	c6 06 30             	mov    BYTE PTR [esi],0x30
1000437a:	46                   	inc    esi
1000437b:	83 7d 18 00          	cmp    DWORD PTR [ebp+0x18],0x0
1000437f:	6a 65                	push   0x65
10004381:	0f 94 c0             	sete   al
10004384:	fe c8                	dec    al
10004386:	24 e0                	and    al,0xe0
10004388:	04 78                	add    al,0x78
1000438a:	88 06                	mov    BYTE PTR [esi],al
1000438c:	46                   	inc    esi
1000438d:	56                   	push   esi
1000438e:	e8 ed 2c 00 00       	call   0x10007080
10004393:	85 c0                	test   eax,eax
10004395:	59                   	pop    ecx
10004396:	59                   	pop    ecx
10004397:	0f 84 4c 02 00 00    	je     0x100045e9
1000439d:	83 7d 18 00          	cmp    DWORD PTR [ebp+0x18],0x0
100043a1:	0f 94 c1             	sete   cl
100043a4:	fe c9                	dec    cl
100043a6:	80 e1 e0             	and    cl,0xe0
100043a9:	80 c1 70             	add    cl,0x70
100043ac:	88 08                	mov    BYTE PTR [eax],cl
100043ae:	c6 40 03 00          	mov    BYTE PTR [eax+0x3],0x0
100043b2:	e9 32 02 00 00       	jmp    0x100045e9
100043b7:	25 00 00 00 80       	and    eax,0x80000000
100043bc:	33 c9                	xor    ecx,ecx
100043be:	0b c8                	or     ecx,eax
100043c0:	74 04                	je     0x100043c6
100043c2:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
100043c5:	46                   	inc    esi
100043c6:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
100043c9:	c6 06 30             	mov    BYTE PTR [esi],0x30
100043cc:	46                   	inc    esi
100043cd:	85 db                	test   ebx,ebx
100043cf:	0f 94 c0             	sete   al
100043d2:	fe c8                	dec    al
100043d4:	24 e0                	and    al,0xe0
100043d6:	04 78                	add    al,0x78
100043d8:	88 06                	mov    BYTE PTR [esi],al
100043da:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
100043dd:	46                   	inc    esi
100043de:	f7 db                	neg    ebx
100043e0:	1b db                	sbb    ebx,ebx
100043e2:	83 e3 e0             	and    ebx,0xffffffe0
100043e5:	81 e1 00 00 f0 7f    	and    ecx,0x7ff00000
100043eb:	33 c0                	xor    eax,eax
100043ed:	83 c3 27             	add    ebx,0x27
100043f0:	33 d2                	xor    edx,edx
100043f2:	0b c1                	or     eax,ecx
100043f4:	75 21                	jne    0x10004417
100043f6:	c6 06 30             	mov    BYTE PTR [esi],0x30
100043f9:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
100043fc:	8b 07                	mov    eax,DWORD PTR [edi]
100043fe:	81 e1 ff ff 0f 00    	and    ecx,0xfffff
10004404:	46                   	inc    esi
10004405:	0b c1                	or     eax,ecx
10004407:	75 05                	jne    0x1000440e
10004409:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
1000440c:	eb 0d                	jmp    0x1000441b
1000440e:	c7 45 ec fe 03 00 00 	mov    DWORD PTR [ebp-0x14],0x3fe
10004415:	eb 04                	jmp    0x1000441b
10004417:	c6 06 31             	mov    BYTE PTR [esi],0x31
1000441a:	46                   	inc    esi
1000441b:	8b c6                	mov    eax,esi
1000441d:	46                   	inc    esi
1000441e:	39 55 14             	cmp    DWORD PTR [ebp+0x14],edx
10004421:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
10004424:	75 04                	jne    0x1000442a
10004426:	88 10                	mov    BYTE PTR [eax],dl
10004428:	eb 0f                	jmp    0x10004439
1000442a:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000442d:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
10004433:	8b 09                	mov    ecx,DWORD PTR [ecx]
10004435:	8a 09                	mov    cl,BYTE PTR [ecx]
10004437:	88 08                	mov    BYTE PTR [eax],cl
10004439:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
1000443c:	8b 07                	mov    eax,DWORD PTR [edi]
1000443e:	81 e1 ff ff 0f 00    	and    ecx,0xfffff
10004444:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
10004447:	77 08                	ja     0x10004451
10004449:	3b c2                	cmp    eax,edx
1000444b:	0f 86 b5 00 00 00    	jbe    0x10004506
10004451:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
10004454:	c7 45 f8 00 00 0f 00 	mov    DWORD PTR [ebp-0x8],0xf0000
1000445b:	83 7d 14 00          	cmp    DWORD PTR [ebp+0x14],0x0
1000445f:	7e 4d                	jle    0x100044ae
10004461:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
10004464:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
10004467:	8b 07                	mov    eax,DWORD PTR [edi]
10004469:	0f bf 4d fc          	movsx  ecx,WORD PTR [ebp-0x4]
1000446d:	23 45 f4             	and    eax,DWORD PTR [ebp-0xc]
10004470:	81 e2 ff ff 0f 00    	and    edx,0xfffff
10004476:	e8 f5 41 00 00       	call   0x10008670
1000447b:	66 05 30 00          	add    ax,0x30
1000447f:	0f b7 c0             	movzx  eax,ax
10004482:	66 3d 39 00          	cmp    ax,0x39
10004486:	76 02                	jbe    0x1000448a
10004488:	03 c3                	add    eax,ebx
1000448a:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000448d:	83 6d fc 04          	sub    DWORD PTR [ebp-0x4],0x4
10004491:	88 06                	mov    BYTE PTR [esi],al
10004493:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
10004496:	0f ac c8 04          	shrd   eax,ecx,0x4
1000449a:	c1 e9 04             	shr    ecx,0x4
1000449d:	46                   	inc    esi
1000449e:	ff 4d 14             	dec    DWORD PTR [ebp+0x14]
100044a1:	66 83 7d fc 00       	cmp    WORD PTR [ebp-0x4],0x0
100044a6:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
100044a9:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100044ac:	7d ad                	jge    0x1000445b
100044ae:	66 83 7d fc 00       	cmp    WORD PTR [ebp-0x4],0x0
100044b3:	7c 51                	jl     0x10004506
100044b5:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
100044b8:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
100044bb:	8b 07                	mov    eax,DWORD PTR [edi]
100044bd:	0f bf 4d fc          	movsx  ecx,WORD PTR [ebp-0x4]
100044c1:	23 45 f4             	and    eax,DWORD PTR [ebp-0xc]
100044c4:	81 e2 ff ff 0f 00    	and    edx,0xfffff
100044ca:	e8 a1 41 00 00       	call   0x10008670
100044cf:	66 3d 08 00          	cmp    ax,0x8
100044d3:	76 31                	jbe    0x10004506
100044d5:	8d 46 ff             	lea    eax,[esi-0x1]
100044d8:	8a 08                	mov    cl,BYTE PTR [eax]
100044da:	80 f9 66             	cmp    cl,0x66
100044dd:	74 05                	je     0x100044e4
100044df:	80 f9 46             	cmp    cl,0x46
100044e2:	75 06                	jne    0x100044ea
100044e4:	c6 00 30             	mov    BYTE PTR [eax],0x30
100044e7:	48                   	dec    eax
100044e8:	eb ee                	jmp    0x100044d8
100044ea:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
100044ed:	74 14                	je     0x10004503
100044ef:	8a 08                	mov    cl,BYTE PTR [eax]
100044f1:	80 f9 39             	cmp    cl,0x39
100044f4:	75 07                	jne    0x100044fd
100044f6:	80 c3 3a             	add    bl,0x3a
100044f9:	88 18                	mov    BYTE PTR [eax],bl
100044fb:	eb 09                	jmp    0x10004506
100044fd:	fe c1                	inc    cl
100044ff:	88 08                	mov    BYTE PTR [eax],cl
10004501:	eb 03                	jmp    0x10004506
10004503:	fe 40 ff             	inc    BYTE PTR [eax-0x1]
10004506:	83 7d 14 00          	cmp    DWORD PTR [ebp+0x14],0x0
1000450a:	7e 11                	jle    0x1000451d
1000450c:	ff 75 14             	push   DWORD PTR [ebp+0x14]
1000450f:	6a 30                	push   0x30
10004511:	56                   	push   esi
10004512:	e8 d9 40 00 00       	call   0x100085f0
10004517:	83 c4 0c             	add    esp,0xc
1000451a:	03 75 14             	add    esi,DWORD PTR [ebp+0x14]
1000451d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10004520:	80 38 00             	cmp    BYTE PTR [eax],0x0
10004523:	75 02                	jne    0x10004527
10004525:	8b f0                	mov    esi,eax
10004527:	83 7d 18 00          	cmp    DWORD PTR [ebp+0x18],0x0
1000452b:	b1 34                	mov    cl,0x34
1000452d:	0f 94 c0             	sete   al
10004530:	fe c8                	dec    al
10004532:	24 e0                	and    al,0xe0
10004534:	04 70                	add    al,0x70
10004536:	88 06                	mov    BYTE PTR [esi],al
10004538:	8b 07                	mov    eax,DWORD PTR [edi]
1000453a:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
1000453d:	46                   	inc    esi
1000453e:	e8 2d 41 00 00       	call   0x10008670
10004543:	33 db                	xor    ebx,ebx
10004545:	25 ff 07 00 00       	and    eax,0x7ff
1000454a:	23 d3                	and    edx,ebx
1000454c:	2b 45 ec             	sub    eax,DWORD PTR [ebp-0x14]
1000454f:	53                   	push   ebx
10004550:	59                   	pop    ecx
10004551:	1b d1                	sbb    edx,ecx
10004553:	78 0c                	js     0x10004561
10004555:	7f 04                	jg     0x1000455b
10004557:	3b c3                	cmp    eax,ebx
10004559:	72 06                	jb     0x10004561
1000455b:	c6 06 2b             	mov    BYTE PTR [esi],0x2b
1000455e:	46                   	inc    esi
1000455f:	eb 0a                	jmp    0x1000456b
10004561:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
10004564:	46                   	inc    esi
10004565:	f7 d8                	neg    eax
10004567:	13 d3                	adc    edx,ebx
10004569:	f7 da                	neg    edx
1000456b:	3b d3                	cmp    edx,ebx
1000456d:	8b fe                	mov    edi,esi
1000456f:	c6 06 30             	mov    BYTE PTR [esi],0x30
10004572:	7c 24                	jl     0x10004598
10004574:	b9 e8 03 00 00       	mov    ecx,0x3e8
10004579:	7f 04                	jg     0x1000457f
1000457b:	3b c1                	cmp    eax,ecx
1000457d:	72 19                	jb     0x10004598
1000457f:	53                   	push   ebx
10004580:	51                   	push   ecx
10004581:	52                   	push   edx
10004582:	50                   	push   eax
10004583:	e8 88 3f 00 00       	call   0x10008510
10004588:	04 30                	add    al,0x30
1000458a:	88 06                	mov    BYTE PTR [esi],al
1000458c:	46                   	inc    esi
1000458d:	3b f7                	cmp    esi,edi
1000458f:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
10004592:	8b c1                	mov    eax,ecx
10004594:	8b d3                	mov    edx,ebx
10004596:	75 0b                	jne    0x100045a3
10004598:	85 d2                	test   edx,edx
1000459a:	7c 1e                	jl     0x100045ba
1000459c:	7f 05                	jg     0x100045a3
1000459e:	83 f8 64             	cmp    eax,0x64
100045a1:	72 17                	jb     0x100045ba
100045a3:	6a 00                	push   0x0
100045a5:	6a 64                	push   0x64
100045a7:	52                   	push   edx
100045a8:	50                   	push   eax
100045a9:	e8 62 3f 00 00       	call   0x10008510
100045ae:	04 30                	add    al,0x30
100045b0:	88 06                	mov    BYTE PTR [esi],al
100045b2:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
100045b5:	46                   	inc    esi
100045b6:	8b c1                	mov    eax,ecx
100045b8:	8b d3                	mov    edx,ebx
100045ba:	3b f7                	cmp    esi,edi
100045bc:	75 0b                	jne    0x100045c9
100045be:	85 d2                	test   edx,edx
100045c0:	7c 1f                	jl     0x100045e1
100045c2:	7f 05                	jg     0x100045c9
100045c4:	83 f8 0a             	cmp    eax,0xa
100045c7:	72 18                	jb     0x100045e1
100045c9:	6a 00                	push   0x0
100045cb:	6a 0a                	push   0xa
100045cd:	52                   	push   edx
100045ce:	50                   	push   eax
100045cf:	e8 3c 3f 00 00       	call   0x10008510
100045d4:	04 30                	add    al,0x30
100045d6:	88 06                	mov    BYTE PTR [esi],al
100045d8:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
100045db:	46                   	inc    esi
100045dc:	8b c1                	mov    eax,ecx
100045de:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
100045e1:	04 30                	add    al,0x30
100045e3:	88 06                	mov    BYTE PTR [esi],al
100045e5:	c6 46 01 00          	mov    BYTE PTR [esi+0x1],0x0
100045e9:	80 7d e8 00          	cmp    BYTE PTR [ebp-0x18],0x0
100045ed:	74 07                	je     0x100045f6
100045ef:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
100045f2:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100045f6:	33 c0                	xor    eax,eax
100045f8:	5b                   	pop    ebx
100045f9:	5f                   	pop    edi
100045fa:	5e                   	pop    esi
100045fb:	c9                   	leave  
100045fc:	c3                   	ret    
100045fd:	55                   	push   ebp
100045fe:	8b ec                	mov    ebp,esp
10004600:	83 ec 10             	sub    esp,0x10
10004603:	53                   	push   ebx
10004604:	56                   	push   esi
10004605:	57                   	push   edi
10004606:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004609:	8b d8                	mov    ebx,eax
1000460b:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
1000460e:	8b f9                	mov    edi,ecx
10004610:	8d 4d f0             	lea    ecx,[ebp-0x10]
10004613:	4e                   	dec    esi
10004614:	e8 01 f8 ff ff       	call   0x10003e1a
10004619:	85 ff                	test   edi,edi
1000461b:	75 2d                	jne    0x1000464a
1000461d:	e8 24 04 00 00       	call   0x10004a46
10004622:	6a 16                	push   0x16
10004624:	5e                   	pop    esi
10004625:	89 30                	mov    DWORD PTR [eax],esi
10004627:	33 c0                	xor    eax,eax
10004629:	50                   	push   eax
1000462a:	50                   	push   eax
1000462b:	50                   	push   eax
1000462c:	50                   	push   eax
1000462d:	50                   	push   eax
1000462e:	e8 43 35 00 00       	call   0x10007b76
10004633:	83 c4 14             	add    esp,0x14
10004636:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000463a:	74 07                	je     0x10004643
1000463c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000463f:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004643:	8b c6                	mov    eax,esi
10004645:	e9 a3 00 00 00       	jmp    0x100046ed
1000464a:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
1000464e:	76 cd                	jbe    0x1000461d
10004650:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
10004654:	74 18                	je     0x1000466e
10004656:	3b 75 0c             	cmp    esi,DWORD PTR [ebp+0xc]
10004659:	75 13                	jne    0x1000466e
1000465b:	33 c0                	xor    eax,eax
1000465d:	83 3b 2d             	cmp    DWORD PTR [ebx],0x2d
10004660:	0f 94 c0             	sete   al
10004663:	03 c6                	add    eax,esi
10004665:	03 c7                	add    eax,edi
10004667:	c6 00 30             	mov    BYTE PTR [eax],0x30
1000466a:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
1000466e:	83 3b 2d             	cmp    DWORD PTR [ebx],0x2d
10004671:	8b f7                	mov    esi,edi
10004673:	75 06                	jne    0x1000467b
10004675:	c6 07 2d             	mov    BYTE PTR [edi],0x2d
10004678:	8d 77 01             	lea    esi,[edi+0x1]
1000467b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
1000467e:	33 ff                	xor    edi,edi
10004680:	47                   	inc    edi
10004681:	85 c0                	test   eax,eax
10004683:	7f 0d                	jg     0x10004692
10004685:	8b c6                	mov    eax,esi
10004687:	e8 6e f9 ff ff       	call   0x10003ffa
1000468c:	c6 06 30             	mov    BYTE PTR [esi],0x30
1000468f:	46                   	inc    esi
10004690:	eb 02                	jmp    0x10004694
10004692:	03 f0                	add    esi,eax
10004694:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
10004698:	7e 44                	jle    0x100046de
1000469a:	8b c6                	mov    eax,esi
1000469c:	e8 59 f9 ff ff       	call   0x10003ffa
100046a1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100046a4:	8b 80 bc 00 00 00    	mov    eax,DWORD PTR [eax+0xbc]
100046aa:	8b 00                	mov    eax,DWORD PTR [eax]
100046ac:	8a 00                	mov    al,BYTE PTR [eax]
100046ae:	88 06                	mov    BYTE PTR [esi],al
100046b0:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
100046b3:	46                   	inc    esi
100046b4:	85 db                	test   ebx,ebx
100046b6:	7d 26                	jge    0x100046de
100046b8:	f7 db                	neg    ebx
100046ba:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
100046be:	75 05                	jne    0x100046c5
100046c0:	39 5d 0c             	cmp    DWORD PTR [ebp+0xc],ebx
100046c3:	7c 03                	jl     0x100046c8
100046c5:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
100046c8:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
100046cb:	8b c6                	mov    eax,esi
100046cd:	e8 28 f9 ff ff       	call   0x10003ffa
100046d2:	57                   	push   edi
100046d3:	6a 30                	push   0x30
100046d5:	56                   	push   esi
100046d6:	e8 15 3f 00 00       	call   0x100085f0
100046db:	83 c4 0c             	add    esp,0xc
100046de:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
100046e2:	74 07                	je     0x100046eb
100046e4:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
100046e7:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100046eb:	33 c0                	xor    eax,eax
100046ed:	5f                   	pop    edi
100046ee:	5e                   	pop    esi
100046ef:	5b                   	pop    ebx
100046f0:	c9                   	leave  
100046f1:	c3                   	ret    
100046f2:	55                   	push   ebp
100046f3:	8b ec                	mov    ebp,esp
100046f5:	83 ec 2c             	sub    esp,0x2c
100046f8:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100046fd:	33 c5                	xor    eax,ebp
100046ff:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10004702:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10004705:	53                   	push   ebx
10004706:	56                   	push   esi
10004707:	57                   	push   edi
10004708:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000470b:	6a 16                	push   0x16
1000470d:	5e                   	pop    esi
1000470e:	56                   	push   esi
1000470f:	8d 4d e4             	lea    ecx,[ebp-0x1c]
10004712:	51                   	push   ecx
10004713:	8d 4d d4             	lea    ecx,[ebp-0x2c]
10004716:	51                   	push   ecx
10004717:	ff 70 04             	push   DWORD PTR [eax+0x4]
1000471a:	ff 30                	push   DWORD PTR [eax]
1000471c:	e8 57 3d 00 00       	call   0x10008478
10004721:	33 db                	xor    ebx,ebx
10004723:	83 c4 14             	add    esp,0x14
10004726:	3b fb                	cmp    edi,ebx
10004728:	75 18                	jne    0x10004742
1000472a:	e8 17 03 00 00       	call   0x10004a46
1000472f:	53                   	push   ebx
10004730:	53                   	push   ebx
10004731:	53                   	push   ebx
10004732:	53                   	push   ebx
10004733:	53                   	push   ebx
10004734:	89 30                	mov    DWORD PTR [eax],esi
10004736:	e8 3b 34 00 00       	call   0x10007b76
1000473b:	83 c4 14             	add    esp,0x14
1000473e:	8b c6                	mov    eax,esi
10004740:	eb 5a                	jmp    0x1000479c
10004742:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10004745:	3b c3                	cmp    eax,ebx
10004747:	76 e1                	jbe    0x1000472a
10004749:	83 f8 ff             	cmp    eax,0xffffffff
1000474c:	75 04                	jne    0x10004752
1000474e:	0b c0                	or     eax,eax
10004750:	eb 0b                	jmp    0x1000475d
10004752:	33 c9                	xor    ecx,ecx
10004754:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004758:	0f 94 c1             	sete   cl
1000475b:	2b c1                	sub    eax,ecx
1000475d:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
10004760:	8d 4d d4             	lea    ecx,[ebp-0x2c]
10004763:	51                   	push   ecx
10004764:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
10004767:	03 ce                	add    ecx,esi
10004769:	51                   	push   ecx
1000476a:	50                   	push   eax
1000476b:	33 c0                	xor    eax,eax
1000476d:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004771:	0f 94 c0             	sete   al
10004774:	03 c7                	add    eax,edi
10004776:	50                   	push   eax
10004777:	e8 84 3b 00 00       	call   0x10008300
1000477c:	83 c4 10             	add    esp,0x10
1000477f:	3b c3                	cmp    eax,ebx
10004781:	74 04                	je     0x10004787
10004783:	88 1f                	mov    BYTE PTR [edi],bl
10004785:	eb 15                	jmp    0x1000479c
10004787:	ff 75 18             	push   DWORD PTR [ebp+0x18]
1000478a:	8d 45 d4             	lea    eax,[ebp-0x2c]
1000478d:	53                   	push   ebx
1000478e:	56                   	push   esi
1000478f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004792:	8b cf                	mov    ecx,edi
10004794:	e8 64 fe ff ff       	call   0x100045fd
10004799:	83 c4 10             	add    esp,0x10
1000479c:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000479f:	5f                   	pop    edi
100047a0:	5e                   	pop    esi
100047a1:	33 cd                	xor    ecx,ebp
100047a3:	5b                   	pop    ebx
100047a4:	e8 72 f3 ff ff       	call   0x10003b1b
100047a9:	c9                   	leave  
100047aa:	c3                   	ret    
100047ab:	55                   	push   ebp
100047ac:	8b ec                	mov    ebp,esp
100047ae:	83 ec 30             	sub    esp,0x30
100047b1:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100047b6:	33 c5                	xor    eax,ebp
100047b8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100047bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100047be:	53                   	push   ebx
100047bf:	56                   	push   esi
100047c0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100047c3:	57                   	push   edi
100047c4:	6a 16                	push   0x16
100047c6:	5f                   	pop    edi
100047c7:	57                   	push   edi
100047c8:	8d 4d e4             	lea    ecx,[ebp-0x1c]
100047cb:	51                   	push   ecx
100047cc:	8d 4d d0             	lea    ecx,[ebp-0x30]
100047cf:	51                   	push   ecx
100047d0:	ff 70 04             	push   DWORD PTR [eax+0x4]
100047d3:	ff 30                	push   DWORD PTR [eax]
100047d5:	e8 9e 3c 00 00       	call   0x10008478
100047da:	33 db                	xor    ebx,ebx
100047dc:	83 c4 14             	add    esp,0x14
100047df:	3b f3                	cmp    esi,ebx
100047e1:	75 1b                	jne    0x100047fe
100047e3:	e8 5e 02 00 00       	call   0x10004a46
100047e8:	53                   	push   ebx
100047e9:	53                   	push   ebx
100047ea:	53                   	push   ebx
100047eb:	53                   	push   ebx
100047ec:	53                   	push   ebx
100047ed:	89 38                	mov    DWORD PTR [eax],edi
100047ef:	e8 82 33 00 00       	call   0x10007b76
100047f4:	83 c4 14             	add    esp,0x14
100047f7:	8b c7                	mov    eax,edi
100047f9:	e9 96 00 00 00       	jmp    0x10004894
100047fe:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10004801:	3b cb                	cmp    ecx,ebx
10004803:	76 de                	jbe    0x100047e3
10004805:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
10004808:	48                   	dec    eax
10004809:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000480c:	33 c0                	xor    eax,eax
1000480e:	83 7d d0 2d          	cmp    DWORD PTR [ebp-0x30],0x2d
10004812:	0f 94 c0             	sete   al
10004815:	83 f9 ff             	cmp    ecx,0xffffffff
10004818:	8d 3c 30             	lea    edi,[eax+esi*1]
1000481b:	75 04                	jne    0x10004821
1000481d:	0b c9                	or     ecx,ecx
1000481f:	eb 02                	jmp    0x10004823
10004821:	2b c8                	sub    ecx,eax
10004823:	8d 45 d0             	lea    eax,[ebp-0x30]
10004826:	50                   	push   eax
10004827:	ff 75 14             	push   DWORD PTR [ebp+0x14]
1000482a:	51                   	push   ecx
1000482b:	57                   	push   edi
1000482c:	e8 cf 3a 00 00       	call   0x10008300
10004831:	83 c4 10             	add    esp,0x10
10004834:	3b c3                	cmp    eax,ebx
10004836:	74 04                	je     0x1000483c
10004838:	88 1e                	mov    BYTE PTR [esi],bl
1000483a:	eb 58                	jmp    0x10004894
1000483c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
1000483f:	48                   	dec    eax
10004840:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
10004843:	0f 9c c1             	setl   cl
10004846:	83 f8 fc             	cmp    eax,0xfffffffc
10004849:	7c 2d                	jl     0x10004878
1000484b:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
1000484e:	7d 28                	jge    0x10004878
10004850:	3a cb                	cmp    cl,bl
10004852:	74 0a                	je     0x1000485e
10004854:	8a 07                	mov    al,BYTE PTR [edi]
10004856:	47                   	inc    edi
10004857:	84 c0                	test   al,al
10004859:	75 f9                	jne    0x10004854
1000485b:	88 5f fe             	mov    BYTE PTR [edi-0x2],bl
1000485e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004861:	8d 45 d0             	lea    eax,[ebp-0x30]
10004864:	6a 01                	push   0x1
10004866:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004869:	8b ce                	mov    ecx,esi
1000486b:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000486e:	e8 8a fd ff ff       	call   0x100045fd
10004873:	83 c4 10             	add    esp,0x10
10004876:	eb 1c                	jmp    0x10004894
10004878:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000487b:	8d 45 d0             	lea    eax,[ebp-0x30]
1000487e:	6a 01                	push   0x1
10004880:	50                   	push   eax
10004881:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004884:	8b c6                	mov    eax,esi
10004886:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004889:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000488c:	e8 a2 f7 ff ff       	call   0x10004033
10004891:	83 c4 18             	add    esp,0x18
10004894:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004897:	5f                   	pop    edi
10004898:	5e                   	pop    esi
10004899:	33 cd                	xor    ecx,ebp
1000489b:	5b                   	pop    ebx
1000489c:	e8 7a f2 ff ff       	call   0x10003b1b
100048a1:	c9                   	leave  
100048a2:	c3                   	ret    
100048a3:	55                   	push   ebp
100048a4:	8b ec                	mov    ebp,esp
100048a6:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
100048a9:	83 f8 65             	cmp    eax,0x65
100048ac:	74 5f                	je     0x1000490d
100048ae:	83 f8 45             	cmp    eax,0x45
100048b1:	74 5a                	je     0x1000490d
100048b3:	83 f8 66             	cmp    eax,0x66
100048b6:	75 19                	jne    0x100048d1
100048b8:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048bb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048be:	ff 75 10             	push   DWORD PTR [ebp+0x10]
100048c1:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100048c4:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100048c7:	e8 26 fe ff ff       	call   0x100046f2
100048cc:	83 c4 14             	add    esp,0x14
100048cf:	5d                   	pop    ebp
100048d0:	c3                   	ret    
100048d1:	83 f8 61             	cmp    eax,0x61
100048d4:	74 1e                	je     0x100048f4
100048d6:	83 f8 41             	cmp    eax,0x41
100048d9:	74 19                	je     0x100048f4
100048db:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048de:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
100048e1:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048e4:	ff 75 10             	push   DWORD PTR [ebp+0x10]
100048e7:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100048ea:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100048ed:	e8 b9 fe ff ff       	call   0x100047ab
100048f2:	eb 30                	jmp    0x10004924
100048f4:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048f7:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
100048fa:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048fd:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004900:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10004903:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004906:	e8 81 f9 ff ff       	call   0x1000428c
1000490b:	eb 17                	jmp    0x10004924
1000490d:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10004910:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004913:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004916:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004919:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000491c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000491f:	e8 7c f8 ff ff       	call   0x100041a0
10004924:	83 c4 18             	add    esp,0x18
10004927:	5d                   	pop    ebp
10004928:	c3                   	ret    
10004929:	55                   	push   ebp
1000492a:	8b ec                	mov    ebp,esp
1000492c:	6a 00                	push   0x0
1000492e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004931:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004934:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004937:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000493a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000493d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004940:	e8 5e ff ff ff       	call   0x100048a3
10004945:	83 c4 1c             	add    esp,0x1c
10004948:	5d                   	pop    ebp
10004949:	c3                   	ret    
1000494a:	56                   	push   esi
1000494b:	57                   	push   edi
1000494c:	33 ff                	xor    edi,edi
1000494e:	8d b7 18 00 01 10    	lea    esi,[edi+0x10010018]
10004954:	ff 36                	push   DWORD PTR [esi]
10004956:	e8 3c 17 00 00       	call   0x10006097
1000495b:	83 c7 04             	add    edi,0x4
1000495e:	83 ff 28             	cmp    edi,0x28
10004961:	59                   	pop    ecx
10004962:	89 06                	mov    DWORD PTR [esi],eax
10004964:	72 e8                	jb     0x1000494e
10004966:	5f                   	pop    edi
10004967:	5e                   	pop    esi
10004968:	c3                   	ret    
10004969:	56                   	push   esi
1000496a:	68 00 00 03 00       	push   0x30000
1000496f:	68 00 00 01 00       	push   0x10000
10004974:	33 f6                	xor    esi,esi
10004976:	56                   	push   esi
10004977:	e8 1c 3d 00 00       	call   0x10008698
1000497c:	83 c4 0c             	add    esp,0xc
1000497f:	85 c0                	test   eax,eax
10004981:	74 0d                	je     0x10004990
10004983:	56                   	push   esi
10004984:	56                   	push   esi
10004985:	56                   	push   esi
10004986:	56                   	push   esi
10004987:	56                   	push   esi
10004988:	e8 ed 30 00 00       	call   0x10007a7a
1000498d:	83 c4 14             	add    esp,0x14
10004990:	5e                   	pop    esi
10004991:	c3                   	ret    
10004992:	55                   	push   ebp
10004993:	8b ec                	mov    ebp,esp
10004995:	83 ec 18             	sub    esp,0x18
10004998:	dd 05 10 d2 00 10    	fld    QWORD PTR ds:0x1000d210
1000499e:	dd 5d f0             	fstp   QWORD PTR [ebp-0x10]
100049a1:	dd 05 08 d2 00 10    	fld    QWORD PTR ds:0x1000d208
100049a7:	dd 5d e8             	fstp   QWORD PTR [ebp-0x18]
100049aa:	dd 45 e8             	fld    QWORD PTR [ebp-0x18]
100049ad:	dc 75 f0             	fdiv   QWORD PTR [ebp-0x10]
100049b0:	dc 4d f0             	fmul   QWORD PTR [ebp-0x10]
100049b3:	dc 6d e8             	fsubr  QWORD PTR [ebp-0x18]
100049b6:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
100049b9:	d9 e8                	fld1   
100049bb:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
100049be:	df e0                	fnstsw ax
100049c0:	f6 c4 05             	test   ah,0x5
100049c3:	7a 05                	jp     0x100049ca
100049c5:	33 c0                	xor    eax,eax
100049c7:	40                   	inc    eax
100049c8:	c9                   	leave  
100049c9:	c3                   	ret    
100049ca:	33 c0                	xor    eax,eax
100049cc:	c9                   	leave  
100049cd:	c3                   	ret    
100049ce:	68 34 d2 00 10       	push   0x1000d234
100049d3:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
100049d9:	85 c0                	test   eax,eax
100049db:	74 15                	je     0x100049f2
100049dd:	68 18 d2 00 10       	push   0x1000d218
100049e2:	50                   	push   eax
100049e3:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
100049e9:	85 c0                	test   eax,eax
100049eb:	74 05                	je     0x100049f2
100049ed:	6a 00                	push   0x0
100049ef:	ff d0                	call   eax
100049f1:	c3                   	ret    
100049f2:	e9 9b ff ff ff       	jmp    0x10004992
100049f7:	83 25 f4 5d 01 10 00 	and    DWORD PTR ds:0x10015df4,0x0
100049fe:	e8 4f 3d 00 00       	call   0x10008752
10004a03:	a3 f4 5d 01 10       	mov    ds:0x10015df4,eax
10004a08:	33 c0                	xor    eax,eax
10004a0a:	c3                   	ret    
10004a0b:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10004a0f:	33 c9                	xor    ecx,ecx
10004a11:	3b 04 cd 40 00 01 10 	cmp    eax,DWORD PTR [ecx*8+0x10010040]
10004a18:	74 12                	je     0x10004a2c
10004a1a:	41                   	inc    ecx
10004a1b:	83 f9 2d             	cmp    ecx,0x2d
10004a1e:	72 f1                	jb     0x10004a11
10004a20:	8d 48 ed             	lea    ecx,[eax-0x13]
10004a23:	83 f9 11             	cmp    ecx,0x11
10004a26:	77 0c                	ja     0x10004a34
10004a28:	6a 0d                	push   0xd
10004a2a:	58                   	pop    eax
10004a2b:	c3                   	ret    
10004a2c:	8b 04 cd 44 00 01 10 	mov    eax,DWORD PTR [ecx*8+0x10010044]
10004a33:	c3                   	ret    
10004a34:	05 44 ff ff ff       	add    eax,0xffffff44
10004a39:	6a 0e                	push   0xe
10004a3b:	59                   	pop    ecx
10004a3c:	3b c8                	cmp    ecx,eax
10004a3e:	1b c0                	sbb    eax,eax
10004a40:	23 c1                	and    eax,ecx
10004a42:	83 c0 08             	add    eax,0x8
10004a45:	c3                   	ret    
10004a46:	e8 68 18 00 00       	call   0x100062b3
10004a4b:	85 c0                	test   eax,eax
10004a4d:	75 06                	jne    0x10004a55
10004a4f:	b8 a8 01 01 10       	mov    eax,0x100101a8
10004a54:	c3                   	ret    
10004a55:	83 c0 08             	add    eax,0x8
10004a58:	c3                   	ret    
10004a59:	55                   	push   ebp
10004a5a:	8b ec                	mov    ebp,esp
10004a5c:	51                   	push   ecx
10004a5d:	51                   	push   ecx
10004a5e:	56                   	push   esi
10004a5f:	8d 45 fc             	lea    eax,[ebp-0x4]
10004a62:	33 f6                	xor    esi,esi
10004a64:	50                   	push   eax
10004a65:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
10004a68:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
10004a6b:	e8 5f 10 00 00       	call   0x10005acf
10004a70:	85 c0                	test   eax,eax
10004a72:	59                   	pop    ecx
10004a73:	74 0d                	je     0x10004a82
10004a75:	56                   	push   esi
10004a76:	56                   	push   esi
10004a77:	56                   	push   esi
10004a78:	56                   	push   esi
10004a79:	56                   	push   esi
10004a7a:	e8 fb 2f 00 00       	call   0x10007a7a
10004a7f:	83 c4 14             	add    esp,0x14
10004a82:	8d 45 f8             	lea    eax,[ebp-0x8]
10004a85:	50                   	push   eax
10004a86:	e8 7b 10 00 00       	call   0x10005b06
10004a8b:	85 c0                	test   eax,eax
10004a8d:	59                   	pop    ecx
10004a8e:	74 0d                	je     0x10004a9d
10004a90:	56                   	push   esi
10004a91:	56                   	push   esi
10004a92:	56                   	push   esi
10004a93:	56                   	push   esi
10004a94:	56                   	push   esi
10004a95:	e8 e0 2f 00 00       	call   0x10007a7a
10004a9a:	83 c4 14             	add    esp,0x14
10004a9d:	83 7d fc 02          	cmp    DWORD PTR [ebp-0x4],0x2
10004aa1:	5e                   	pop    esi
10004aa2:	75 0b                	jne    0x10004aaf
10004aa4:	83 7d f8 05          	cmp    DWORD PTR [ebp-0x8],0x5
10004aa8:	72 05                	jb     0x10004aaf
10004aaa:	33 c0                	xor    eax,eax
10004aac:	40                   	inc    eax
10004aad:	c9                   	leave  
10004aae:	c3                   	ret    
10004aaf:	6a 03                	push   0x3
10004ab1:	58                   	pop    eax
10004ab2:	c9                   	leave  
10004ab3:	c3                   	ret    
10004ab4:	33 c0                	xor    eax,eax
10004ab6:	39 44 24 04          	cmp    DWORD PTR [esp+0x4],eax
10004aba:	6a 00                	push   0x0
10004abc:	0f 94 c0             	sete   al
10004abf:	68 00 10 00 00       	push   0x1000
10004ac4:	50                   	push   eax
10004ac5:	ff 15 58 d0 00 10    	call   DWORD PTR ds:0x1000d058
10004acb:	85 c0                	test   eax,eax
10004acd:	a3 4c 52 01 10       	mov    ds:0x1001524c,eax
10004ad2:	75 03                	jne    0x10004ad7
10004ad4:	33 c0                	xor    eax,eax
10004ad6:	c3                   	ret    
10004ad7:	e8 7d ff ff ff       	call   0x10004a59
10004adc:	83 f8 03             	cmp    eax,0x3
10004adf:	a3 f0 5d 01 10       	mov    ds:0x10015df0,eax
10004ae4:	75 24                	jne    0x10004b0a
10004ae6:	68 f8 03 00 00       	push   0x3f8
10004aeb:	e8 39 02 00 00       	call   0x10004d29
10004af0:	85 c0                	test   eax,eax
10004af2:	59                   	pop    ecx
10004af3:	75 15                	jne    0x10004b0a
10004af5:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004afb:	ff 15 54 d0 00 10    	call   DWORD PTR ds:0x1000d054
10004b01:	83 25 4c 52 01 10 00 	and    DWORD PTR ds:0x1001524c,0x0
10004b08:	eb ca                	jmp    0x10004ad4
10004b0a:	33 c0                	xor    eax,eax
10004b0c:	40                   	inc    eax
10004b0d:	c3                   	ret    
10004b0e:	55                   	push   ebp
10004b0f:	33 ed                	xor    ebp,ebp
10004b11:	83 3d f0 5d 01 10 03 	cmp    DWORD PTR ds:0x10015df0,0x3
10004b18:	75 54                	jne    0x10004b6e
10004b1a:	53                   	push   ebx
10004b1b:	8b 1d 34 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d034
10004b21:	57                   	push   edi
10004b22:	33 ff                	xor    edi,edi
10004b24:	39 2d d8 5d 01 10    	cmp    DWORD PTR ds:0x10015dd8,ebp
10004b2a:	7e 31                	jle    0x10004b5d
10004b2c:	56                   	push   esi
10004b2d:	8b 35 dc 5d 01 10    	mov    esi,DWORD PTR ds:0x10015ddc
10004b33:	83 c6 10             	add    esi,0x10
10004b36:	68 00 80 00 00       	push   0x8000
10004b3b:	55                   	push   ebp
10004b3c:	ff 76 fc             	push   DWORD PTR [esi-0x4]
10004b3f:	ff 15 04 d0 00 10    	call   DWORD PTR ds:0x1000d004
10004b45:	ff 36                	push   DWORD PTR [esi]
10004b47:	55                   	push   ebp
10004b48:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004b4e:	ff d3                	call   ebx
10004b50:	83 c6 14             	add    esi,0x14
10004b53:	47                   	inc    edi
10004b54:	3b 3d d8 5d 01 10    	cmp    edi,DWORD PTR ds:0x10015dd8
10004b5a:	7c da                	jl     0x10004b36
10004b5c:	5e                   	pop    esi
10004b5d:	ff 35 dc 5d 01 10    	push   DWORD PTR ds:0x10015ddc
10004b63:	55                   	push   ebp
10004b64:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004b6a:	ff d3                	call   ebx
10004b6c:	5f                   	pop    edi
10004b6d:	5b                   	pop    ebx
10004b6e:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004b74:	ff 15 54 d0 00 10    	call   DWORD PTR ds:0x1000d054
10004b7a:	89 2d 4c 52 01 10    	mov    DWORD PTR ds:0x1001524c,ebp
10004b80:	5d                   	pop    ebp
10004b81:	c3                   	ret    
10004b82:	56                   	push   esi
10004b83:	57                   	push   edi
10004b84:	33 f6                	xor    esi,esi
10004b86:	bf 50 52 01 10       	mov    edi,0x10015250
10004b8b:	83 3c f5 bc 01 01 10 	cmp    DWORD PTR [esi*8+0x100101bc],0x1
10004b92:	01 
10004b93:	75 1e                	jne    0x10004bb3
10004b95:	8d 04 f5 b8 01 01 10 	lea    eax,[esi*8+0x100101b8]
10004b9c:	89 38                	mov    DWORD PTR [eax],edi
10004b9e:	68 a0 0f 00 00       	push   0xfa0
10004ba3:	ff 30                	push   DWORD PTR [eax]
10004ba5:	83 c7 18             	add    edi,0x18
10004ba8:	e8 2c 3c 00 00       	call   0x100087d9
10004bad:	85 c0                	test   eax,eax
10004baf:	59                   	pop    ecx
10004bb0:	59                   	pop    ecx
10004bb1:	74 0c                	je     0x10004bbf
10004bb3:	46                   	inc    esi
10004bb4:	83 fe 24             	cmp    esi,0x24
10004bb7:	7c d2                	jl     0x10004b8b
10004bb9:	33 c0                	xor    eax,eax
10004bbb:	40                   	inc    eax
10004bbc:	5f                   	pop    edi
10004bbd:	5e                   	pop    esi
10004bbe:	c3                   	ret    
10004bbf:	83 24 f5 b8 01 01 10 	and    DWORD PTR [esi*8+0x100101b8],0x0
10004bc6:	00 
10004bc7:	33 c0                	xor    eax,eax
10004bc9:	eb f1                	jmp    0x10004bbc
10004bcb:	53                   	push   ebx
10004bcc:	8b 1d 5c d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d05c
10004bd2:	56                   	push   esi
10004bd3:	be b8 01 01 10       	mov    esi,0x100101b8
10004bd8:	57                   	push   edi
10004bd9:	8b 3e                	mov    edi,DWORD PTR [esi]
10004bdb:	85 ff                	test   edi,edi
10004bdd:	74 13                	je     0x10004bf2
10004bdf:	83 7e 04 01          	cmp    DWORD PTR [esi+0x4],0x1
10004be3:	74 0d                	je     0x10004bf2
10004be5:	57                   	push   edi
10004be6:	ff d3                	call   ebx
10004be8:	57                   	push   edi
10004be9:	e8 8d ed ff ff       	call   0x1000397b
10004bee:	83 26 00             	and    DWORD PTR [esi],0x0
10004bf1:	59                   	pop    ecx
10004bf2:	83 c6 08             	add    esi,0x8
10004bf5:	81 fe d8 02 01 10    	cmp    esi,0x100102d8
10004bfb:	7c dc                	jl     0x10004bd9
10004bfd:	be b8 01 01 10       	mov    esi,0x100101b8
10004c02:	5f                   	pop    edi
10004c03:	8b 06                	mov    eax,DWORD PTR [esi]
10004c05:	85 c0                	test   eax,eax
10004c07:	74 09                	je     0x10004c12
10004c09:	83 7e 04 01          	cmp    DWORD PTR [esi+0x4],0x1
10004c0d:	75 03                	jne    0x10004c12
10004c0f:	50                   	push   eax
10004c10:	ff d3                	call   ebx
10004c12:	83 c6 08             	add    esi,0x8
10004c15:	81 fe d8 02 01 10    	cmp    esi,0x100102d8
10004c1b:	7c e6                	jl     0x10004c03
10004c1d:	5e                   	pop    esi
10004c1e:	5b                   	pop    ebx
10004c1f:	c3                   	ret    
10004c20:	55                   	push   ebp
10004c21:	8b ec                	mov    ebp,esp
10004c23:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10004c26:	ff 34 c5 b8 01 01 10 	push   DWORD PTR [eax*8+0x100101b8]
10004c2d:	ff 15 60 d0 00 10    	call   DWORD PTR ds:0x1000d060
10004c33:	5d                   	pop    ebp
10004c34:	c3                   	ret    
10004c35:	6a 0c                	push   0xc
10004c37:	68 20 e4 00 10       	push   0x1000e420
10004c3c:	e8 e7 0b 00 00       	call   0x10005828
10004c41:	33 ff                	xor    edi,edi
10004c43:	47                   	inc    edi
10004c44:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
10004c47:	33 db                	xor    ebx,ebx
10004c49:	39 1d 4c 52 01 10    	cmp    DWORD PTR ds:0x1001524c,ebx
10004c4f:	75 18                	jne    0x10004c69
10004c51:	e8 6c 12 00 00       	call   0x10005ec2
10004c56:	6a 1e                	push   0x1e
10004c58:	e8 c5 10 00 00       	call   0x10005d22
10004c5d:	68 ff 00 00 00       	push   0xff
10004c62:	e8 09 0e 00 00       	call   0x10005a70
10004c67:	59                   	pop    ecx
10004c68:	59                   	pop    ecx
10004c69:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10004c6c:	8d 34 f5 b8 01 01 10 	lea    esi,[esi*8+0x100101b8]
10004c73:	39 1e                	cmp    DWORD PTR [esi],ebx
10004c75:	74 04                	je     0x10004c7b
10004c77:	8b c7                	mov    eax,edi
10004c79:	eb 6e                	jmp    0x10004ce9
10004c7b:	6a 18                	push   0x18
10004c7d:	e8 ce 19 00 00       	call   0x10006650
10004c82:	59                   	pop    ecx
10004c83:	8b f8                	mov    edi,eax
10004c85:	3b fb                	cmp    edi,ebx
10004c87:	75 0f                	jne    0x10004c98
10004c89:	e8 b8 fd ff ff       	call   0x10004a46
10004c8e:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
10004c94:	33 c0                	xor    eax,eax
10004c96:	eb 51                	jmp    0x10004ce9
10004c98:	6a 0a                	push   0xa
10004c9a:	e8 59 00 00 00       	call   0x10004cf8
10004c9f:	59                   	pop    ecx
10004ca0:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10004ca3:	39 1e                	cmp    DWORD PTR [esi],ebx
10004ca5:	75 2c                	jne    0x10004cd3
10004ca7:	68 a0 0f 00 00       	push   0xfa0
10004cac:	57                   	push   edi
10004cad:	e8 27 3b 00 00       	call   0x100087d9
10004cb2:	59                   	pop    ecx
10004cb3:	59                   	pop    ecx
10004cb4:	85 c0                	test   eax,eax
10004cb6:	75 17                	jne    0x10004ccf
10004cb8:	57                   	push   edi
10004cb9:	e8 bd ec ff ff       	call   0x1000397b
10004cbe:	59                   	pop    ecx
10004cbf:	e8 82 fd ff ff       	call   0x10004a46
10004cc4:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
10004cca:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
10004ccd:	eb 0b                	jmp    0x10004cda
10004ccf:	89 3e                	mov    DWORD PTR [esi],edi
10004cd1:	eb 07                	jmp    0x10004cda
10004cd3:	57                   	push   edi
10004cd4:	e8 a2 ec ff ff       	call   0x1000397b
10004cd9:	59                   	pop    ecx
10004cda:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10004ce1:	e8 09 00 00 00       	call   0x10004cef
10004ce6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10004ce9:	e8 7f 0b 00 00       	call   0x1000586d
10004cee:	c3                   	ret    
10004cef:	6a 0a                	push   0xa
10004cf1:	e8 2a ff ff ff       	call   0x10004c20
10004cf6:	59                   	pop    ecx
10004cf7:	c3                   	ret    
10004cf8:	55                   	push   ebp
10004cf9:	8b ec                	mov    ebp,esp
10004cfb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10004cfe:	56                   	push   esi
10004cff:	8d 34 c5 b8 01 01 10 	lea    esi,[eax*8+0x100101b8]
10004d06:	83 3e 00             	cmp    DWORD PTR [esi],0x0
10004d09:	75 13                	jne    0x10004d1e
10004d0b:	50                   	push   eax
10004d0c:	e8 24 ff ff ff       	call   0x10004c35
10004d11:	85 c0                	test   eax,eax
10004d13:	59                   	pop    ecx
10004d14:	75 08                	jne    0x10004d1e
10004d16:	6a 11                	push   0x11
10004d18:	e8 09 0d 00 00       	call   0x10005a26
10004d1d:	59                   	pop    ecx
10004d1e:	ff 36                	push   DWORD PTR [esi]
10004d20:	ff 15 64 d0 00 10    	call   DWORD PTR ds:0x1000d064
10004d26:	5e                   	pop    esi
10004d27:	5d                   	pop    ebp
10004d28:	c3                   	ret    
10004d29:	68 40 01 00 00       	push   0x140
10004d2e:	6a 00                	push   0x0
10004d30:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10004d36:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10004d3c:	85 c0                	test   eax,eax
10004d3e:	a3 dc 5d 01 10       	mov    ds:0x10015ddc,eax
10004d43:	75 01                	jne    0x10004d46
10004d45:	c3                   	ret    
10004d46:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10004d4a:	83 25 a0 53 01 10 00 	and    DWORD PTR ds:0x100153a0,0x0
10004d51:	83 25 d8 5d 01 10 00 	and    DWORD PTR ds:0x10015dd8,0x0
10004d58:	a3 e4 5d 01 10       	mov    ds:0x10015de4,eax
10004d5d:	33 c0                	xor    eax,eax
10004d5f:	89 0d e0 5d 01 10    	mov    DWORD PTR ds:0x10015de0,ecx
10004d65:	c7 05 e8 5d 01 10 10 	mov    DWORD PTR ds:0x10015de8,0x10
10004d6c:	00 00 00 
10004d6f:	40                   	inc    eax
10004d70:	c3                   	ret    
10004d71:	8b 0d d8 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dd8
10004d77:	a1 dc 5d 01 10       	mov    eax,ds:0x10015ddc
10004d7c:	6b c9 14             	imul   ecx,ecx,0x14
10004d7f:	03 c8                	add    ecx,eax
10004d81:	eb 12                	jmp    0x10004d95
10004d83:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
10004d87:	2b 50 0c             	sub    edx,DWORD PTR [eax+0xc]
10004d8a:	81 fa 00 00 10 00    	cmp    edx,0x100000
10004d90:	72 09                	jb     0x10004d9b
10004d92:	83 c0 14             	add    eax,0x14
10004d95:	3b c1                	cmp    eax,ecx
10004d97:	72 ea                	jb     0x10004d83
10004d99:	33 c0                	xor    eax,eax
10004d9b:	c3                   	ret    
10004d9c:	55                   	push   ebp
10004d9d:	8b ec                	mov    ebp,esp
10004d9f:	83 ec 10             	sub    esp,0x10
10004da2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004da5:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
10004da8:	56                   	push   esi
10004da9:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10004dac:	57                   	push   edi
10004dad:	8b fe                	mov    edi,esi
10004daf:	2b 79 0c             	sub    edi,DWORD PTR [ecx+0xc]
10004db2:	83 c6 fc             	add    esi,0xfffffffc
10004db5:	c1 ef 0f             	shr    edi,0xf
10004db8:	8b cf                	mov    ecx,edi
10004dba:	69 c9 04 02 00 00    	imul   ecx,ecx,0x204
10004dc0:	8d 8c 01 44 01 00 00 	lea    ecx,[ecx+eax*1+0x144]
10004dc7:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
10004dca:	8b 0e                	mov    ecx,DWORD PTR [esi]
10004dcc:	49                   	dec    ecx
10004dcd:	f6 c1 01             	test   cl,0x1
10004dd0:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
10004dd3:	0f 85 d3 02 00 00    	jne    0x100050ac
10004dd9:	53                   	push   ebx
10004dda:	8d 1c 31             	lea    ebx,[ecx+esi*1]
10004ddd:	8b 13                	mov    edx,DWORD PTR [ebx]
10004ddf:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
10004de2:	8b 56 fc             	mov    edx,DWORD PTR [esi-0x4]
10004de5:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
10004de8:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
10004deb:	f6 c2 01             	test   dl,0x1
10004dee:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
10004df1:	75 74                	jne    0x10004e67
10004df3:	c1 fa 04             	sar    edx,0x4
10004df6:	4a                   	dec    edx
10004df7:	83 fa 3f             	cmp    edx,0x3f
10004dfa:	76 03                	jbe    0x10004dff
10004dfc:	6a 3f                	push   0x3f
10004dfe:	5a                   	pop    edx
10004dff:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
10004e02:	3b 4b 08             	cmp    ecx,DWORD PTR [ebx+0x8]
10004e05:	75 42                	jne    0x10004e49
10004e07:	83 fa 20             	cmp    edx,0x20
10004e0a:	bb 00 00 00 80       	mov    ebx,0x80000000
10004e0f:	73 19                	jae    0x10004e2a
10004e11:	8b ca                	mov    ecx,edx
10004e13:	d3 eb                	shr    ebx,cl
10004e15:	8d 4c 02 04          	lea    ecx,[edx+eax*1+0x4]
10004e19:	f7 d3                	not    ebx
10004e1b:	21 5c b8 44          	and    DWORD PTR [eax+edi*4+0x44],ebx
10004e1f:	fe 09                	dec    BYTE PTR [ecx]
10004e21:	75 23                	jne    0x10004e46
10004e23:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004e26:	21 19                	and    DWORD PTR [ecx],ebx
10004e28:	eb 1c                	jmp    0x10004e46
10004e2a:	8d 4a e0             	lea    ecx,[edx-0x20]
10004e2d:	d3 eb                	shr    ebx,cl
10004e2f:	8d 4c 02 04          	lea    ecx,[edx+eax*1+0x4]
10004e33:	f7 d3                	not    ebx
10004e35:	21 9c b8 c4 00 00 00 	and    DWORD PTR [eax+edi*4+0xc4],ebx
10004e3c:	fe 09                	dec    BYTE PTR [ecx]
10004e3e:	75 06                	jne    0x10004e46
10004e40:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004e43:	21 59 04             	and    DWORD PTR [ecx+0x4],ebx
10004e46:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
10004e49:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
10004e4c:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
10004e4f:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004e52:	03 4d f4             	add    ecx,DWORD PTR [ebp-0xc]
10004e55:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
10004e58:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10004e5b:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
10004e5e:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
10004e61:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
10004e64:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
10004e67:	8b d1                	mov    edx,ecx
10004e69:	c1 fa 04             	sar    edx,0x4
10004e6c:	4a                   	dec    edx
10004e6d:	83 fa 3f             	cmp    edx,0x3f
10004e70:	76 03                	jbe    0x10004e75
10004e72:	6a 3f                	push   0x3f
10004e74:	5a                   	pop    edx
10004e75:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
10004e78:	83 e3 01             	and    ebx,0x1
10004e7b:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10004e7e:	0f 85 8f 00 00 00    	jne    0x10004f13
10004e84:	2b 75 f8             	sub    esi,DWORD PTR [ebp-0x8]
10004e87:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
10004e8a:	c1 fb 04             	sar    ebx,0x4
10004e8d:	6a 3f                	push   0x3f
10004e8f:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
10004e92:	4b                   	dec    ebx
10004e93:	5e                   	pop    esi
10004e94:	3b de                	cmp    ebx,esi
10004e96:	76 02                	jbe    0x10004e9a
10004e98:	8b de                	mov    ebx,esi
10004e9a:	03 4d f8             	add    ecx,DWORD PTR [ebp-0x8]
10004e9d:	8b d1                	mov    edx,ecx
10004e9f:	c1 fa 04             	sar    edx,0x4
10004ea2:	4a                   	dec    edx
10004ea3:	3b d6                	cmp    edx,esi
10004ea5:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
10004ea8:	76 02                	jbe    0x10004eac
10004eaa:	8b d6                	mov    edx,esi
10004eac:	3b da                	cmp    ebx,edx
10004eae:	74 5e                	je     0x10004f0e
10004eb0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10004eb3:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
10004eb6:	3b 71 08             	cmp    esi,DWORD PTR [ecx+0x8]
10004eb9:	75 3b                	jne    0x10004ef6
10004ebb:	83 fb 20             	cmp    ebx,0x20
10004ebe:	be 00 00 00 80       	mov    esi,0x80000000
10004ec3:	73 17                	jae    0x10004edc
10004ec5:	8b cb                	mov    ecx,ebx
10004ec7:	d3 ee                	shr    esi,cl
10004ec9:	f7 d6                	not    esi
10004ecb:	21 74 b8 44          	and    DWORD PTR [eax+edi*4+0x44],esi
10004ecf:	fe 4c 03 04          	dec    BYTE PTR [ebx+eax*1+0x4]
10004ed3:	75 21                	jne    0x10004ef6
10004ed5:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004ed8:	21 31                	and    DWORD PTR [ecx],esi
10004eda:	eb 1a                	jmp    0x10004ef6
10004edc:	8d 4b e0             	lea    ecx,[ebx-0x20]
10004edf:	d3 ee                	shr    esi,cl
10004ee1:	f7 d6                	not    esi
10004ee3:	21 b4 b8 c4 00 00 00 	and    DWORD PTR [eax+edi*4+0xc4],esi
10004eea:	fe 4c 03 04          	dec    BYTE PTR [ebx+eax*1+0x4]
10004eee:	75 06                	jne    0x10004ef6
10004ef0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004ef3:	21 71 04             	and    DWORD PTR [ecx+0x4],esi
10004ef6:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10004ef9:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
10004efc:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
10004eff:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
10004f02:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10004f05:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
10004f08:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
10004f0b:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
10004f0e:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10004f11:	eb 03                	jmp    0x10004f16
10004f13:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10004f16:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
10004f1a:	75 08                	jne    0x10004f24
10004f1c:	3b da                	cmp    ebx,edx
10004f1e:	0f 84 80 00 00 00    	je     0x10004fa4
10004f24:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10004f27:	8d 0c d1             	lea    ecx,[ecx+edx*8]
10004f2a:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
10004f2d:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
10004f30:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
10004f33:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
10004f36:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
10004f39:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
10004f3c:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
10004f3f:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
10004f42:	75 60                	jne    0x10004fa4
10004f44:	8a 4c 02 04          	mov    cl,BYTE PTR [edx+eax*1+0x4]
10004f48:	88 4d 0f             	mov    BYTE PTR [ebp+0xf],cl
10004f4b:	fe c1                	inc    cl
10004f4d:	83 fa 20             	cmp    edx,0x20
10004f50:	88 4c 02 04          	mov    BYTE PTR [edx+eax*1+0x4],cl
10004f54:	73 25                	jae    0x10004f7b
10004f56:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
10004f5a:	75 0e                	jne    0x10004f6a
10004f5c:	8b ca                	mov    ecx,edx
10004f5e:	bb 00 00 00 80       	mov    ebx,0x80000000
10004f63:	d3 eb                	shr    ebx,cl
10004f65:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004f68:	09 19                	or     DWORD PTR [ecx],ebx
10004f6a:	bb 00 00 00 80       	mov    ebx,0x80000000
10004f6f:	8b ca                	mov    ecx,edx
10004f71:	d3 eb                	shr    ebx,cl
10004f73:	8d 44 b8 44          	lea    eax,[eax+edi*4+0x44]
10004f77:	09 18                	or     DWORD PTR [eax],ebx
10004f79:	eb 29                	jmp    0x10004fa4
10004f7b:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
10004f7f:	75 10                	jne    0x10004f91
10004f81:	8d 4a e0             	lea    ecx,[edx-0x20]
10004f84:	bb 00 00 00 80       	mov    ebx,0x80000000
10004f89:	d3 eb                	shr    ebx,cl
10004f8b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10004f8e:	09 59 04             	or     DWORD PTR [ecx+0x4],ebx
10004f91:	8d 4a e0             	lea    ecx,[edx-0x20]
10004f94:	ba 00 00 00 80       	mov    edx,0x80000000
10004f99:	d3 ea                	shr    edx,cl
10004f9b:	8d 84 b8 c4 00 00 00 	lea    eax,[eax+edi*4+0xc4]
10004fa2:	09 10                	or     DWORD PTR [eax],edx
10004fa4:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
10004fa7:	89 06                	mov    DWORD PTR [esi],eax
10004fa9:	89 44 30 fc          	mov    DWORD PTR [eax+esi*1-0x4],eax
10004fad:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10004fb0:	ff 08                	dec    DWORD PTR [eax]
10004fb2:	0f 85 f3 00 00 00    	jne    0x100050ab
10004fb8:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10004fbd:	85 c0                	test   eax,eax
10004fbf:	0f 84 d8 00 00 00    	je     0x1000509d
10004fc5:	8b 0d ec 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dec
10004fcb:	8b 35 04 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d004
10004fd1:	68 00 40 00 00       	push   0x4000
10004fd6:	c1 e1 0f             	shl    ecx,0xf
10004fd9:	03 48 0c             	add    ecx,DWORD PTR [eax+0xc]
10004fdc:	bb 00 80 00 00       	mov    ebx,0x8000
10004fe1:	53                   	push   ebx
10004fe2:	51                   	push   ecx
10004fe3:	ff d6                	call   esi
10004fe5:	8b 0d ec 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dec
10004feb:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10004ff0:	ba 00 00 00 80       	mov    edx,0x80000000
10004ff5:	d3 ea                	shr    edx,cl
10004ff7:	09 50 08             	or     DWORD PTR [eax+0x8],edx
10004ffa:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10004fff:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
10005002:	8b 0d ec 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dec
10005008:	83 a4 88 c4 00 00 00 	and    DWORD PTR [eax+ecx*4+0xc4],0x0
1000500f:	00 
10005010:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005015:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
10005018:	fe 48 43             	dec    BYTE PTR [eax+0x43]
1000501b:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005020:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
10005023:	80 79 43 00          	cmp    BYTE PTR [ecx+0x43],0x0
10005027:	75 09                	jne    0x10005032
10005029:	83 60 04 fe          	and    DWORD PTR [eax+0x4],0xfffffffe
1000502d:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005032:	83 78 08 ff          	cmp    DWORD PTR [eax+0x8],0xffffffff
10005036:	75 65                	jne    0x1000509d
10005038:	53                   	push   ebx
10005039:	6a 00                	push   0x0
1000503b:	ff 70 0c             	push   DWORD PTR [eax+0xc]
1000503e:	ff d6                	call   esi
10005040:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005045:	ff 70 10             	push   DWORD PTR [eax+0x10]
10005048:	6a 00                	push   0x0
1000504a:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
10005050:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10005056:	8b 0d d8 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015dd8
1000505c:	a1 a0 53 01 10       	mov    eax,ds:0x100153a0
10005061:	6b c9 14             	imul   ecx,ecx,0x14
10005064:	8b 15 dc 5d 01 10    	mov    edx,DWORD PTR ds:0x10015ddc
1000506a:	2b c8                	sub    ecx,eax
1000506c:	8d 4c 11 ec          	lea    ecx,[ecx+edx*1-0x14]
10005070:	51                   	push   ecx
10005071:	8d 48 14             	lea    ecx,[eax+0x14]
10005074:	51                   	push   ecx
10005075:	50                   	push   eax
10005076:	e8 25 2e 00 00       	call   0x10007ea0
1000507b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000507e:	83 c4 0c             	add    esp,0xc
10005081:	ff 0d d8 5d 01 10    	dec    DWORD PTR ds:0x10015dd8
10005087:	3b 05 a0 53 01 10    	cmp    eax,DWORD PTR ds:0x100153a0
1000508d:	76 04                	jbe    0x10005093
1000508f:	83 6d 08 14          	sub    DWORD PTR [ebp+0x8],0x14
10005093:	a1 dc 5d 01 10       	mov    eax,ds:0x10015ddc
10005098:	a3 e4 5d 01 10       	mov    ds:0x10015de4,eax
1000509d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100050a0:	a3 a0 53 01 10       	mov    ds:0x100153a0,eax
100050a5:	89 3d ec 5d 01 10    	mov    DWORD PTR ds:0x10015dec,edi
100050ab:	5b                   	pop    ebx
100050ac:	5f                   	pop    edi
100050ad:	5e                   	pop    esi
100050ae:	c9                   	leave  
100050af:	c3                   	ret    
100050b0:	a1 e8 5d 01 10       	mov    eax,ds:0x10015de8
100050b5:	56                   	push   esi
100050b6:	8b 35 d8 5d 01 10    	mov    esi,DWORD PTR ds:0x10015dd8
100050bc:	57                   	push   edi
100050bd:	33 ff                	xor    edi,edi
100050bf:	3b f0                	cmp    esi,eax
100050c1:	75 34                	jne    0x100050f7
100050c3:	83 c0 10             	add    eax,0x10
100050c6:	6b c0 14             	imul   eax,eax,0x14
100050c9:	50                   	push   eax
100050ca:	ff 35 dc 5d 01 10    	push   DWORD PTR ds:0x10015ddc
100050d0:	57                   	push   edi
100050d1:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
100050d7:	ff 15 68 d0 00 10    	call   DWORD PTR ds:0x1000d068
100050dd:	3b c7                	cmp    eax,edi
100050df:	75 04                	jne    0x100050e5
100050e1:	33 c0                	xor    eax,eax
100050e3:	eb 78                	jmp    0x1000515d
100050e5:	83 05 e8 5d 01 10 10 	add    DWORD PTR ds:0x10015de8,0x10
100050ec:	8b 35 d8 5d 01 10    	mov    esi,DWORD PTR ds:0x10015dd8
100050f2:	a3 dc 5d 01 10       	mov    ds:0x10015ddc,eax
100050f7:	6b f6 14             	imul   esi,esi,0x14
100050fa:	03 35 dc 5d 01 10    	add    esi,DWORD PTR ds:0x10015ddc
10005100:	68 c4 41 00 00       	push   0x41c4
10005105:	6a 08                	push   0x8
10005107:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
1000510d:	ff 15 38 d0 00 10    	call   DWORD PTR ds:0x1000d038
10005113:	3b c7                	cmp    eax,edi
10005115:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
10005118:	74 c7                	je     0x100050e1
1000511a:	6a 04                	push   0x4
1000511c:	68 00 20 00 00       	push   0x2000
10005121:	68 00 00 10 00       	push   0x100000
10005126:	57                   	push   edi
10005127:	ff 15 08 d0 00 10    	call   DWORD PTR ds:0x1000d008
1000512d:	3b c7                	cmp    eax,edi
1000512f:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
10005132:	75 12                	jne    0x10005146
10005134:	ff 76 10             	push   DWORD PTR [esi+0x10]
10005137:	57                   	push   edi
10005138:	ff 35 4c 52 01 10    	push   DWORD PTR ds:0x1001524c
1000513e:	ff 15 34 d0 00 10    	call   DWORD PTR ds:0x1000d034
10005144:	eb 9b                	jmp    0x100050e1
10005146:	83 4e 08 ff          	or     DWORD PTR [esi+0x8],0xffffffff
1000514a:	89 3e                	mov    DWORD PTR [esi],edi
1000514c:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
1000514f:	ff 05 d8 5d 01 10    	inc    DWORD PTR ds:0x10015dd8
10005155:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
10005158:	83 08 ff             	or     DWORD PTR [eax],0xffffffff
1000515b:	8b c6                	mov    eax,esi
1000515d:	5f                   	pop    edi
1000515e:	5e                   	pop    esi
1000515f:	c3                   	ret    
10005160:	55                   	push   ebp
10005161:	8b ec                	mov    ebp,esp
10005163:	51                   	push   ecx
10005164:	51                   	push   ecx
10005165:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005168:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
1000516b:	53                   	push   ebx
1000516c:	56                   	push   esi
1000516d:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
10005170:	57                   	push   edi
10005171:	33 db                	xor    ebx,ebx
10005173:	eb 03                	jmp    0x10005178
10005175:	03 c0                	add    eax,eax
10005177:	43                   	inc    ebx
10005178:	85 c0                	test   eax,eax
1000517a:	7d f9                	jge    0x10005175
1000517c:	8b c3                	mov    eax,ebx
1000517e:	69 c0 04 02 00 00    	imul   eax,eax,0x204
10005184:	8d 84 30 44 01 00 00 	lea    eax,[eax+esi*1+0x144]
1000518b:	6a 3f                	push   0x3f
1000518d:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10005190:	5a                   	pop    edx
10005191:	89 40 08             	mov    DWORD PTR [eax+0x8],eax
10005194:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
10005197:	83 c0 08             	add    eax,0x8
1000519a:	4a                   	dec    edx
1000519b:	75 f4                	jne    0x10005191
1000519d:	6a 04                	push   0x4
1000519f:	8b fb                	mov    edi,ebx
100051a1:	68 00 10 00 00       	push   0x1000
100051a6:	c1 e7 0f             	shl    edi,0xf
100051a9:	03 79 0c             	add    edi,DWORD PTR [ecx+0xc]
100051ac:	68 00 80 00 00       	push   0x8000
100051b1:	57                   	push   edi
100051b2:	ff 15 08 d0 00 10    	call   DWORD PTR ds:0x1000d008
100051b8:	85 c0                	test   eax,eax
100051ba:	75 08                	jne    0x100051c4
100051bc:	83 c8 ff             	or     eax,0xffffffff
100051bf:	e9 9d 00 00 00       	jmp    0x10005261
100051c4:	8d 97 00 70 00 00    	lea    edx,[edi+0x7000]
100051ca:	3b fa                	cmp    edi,edx
100051cc:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
100051cf:	77 43                	ja     0x10005214
100051d1:	8b ca                	mov    ecx,edx
100051d3:	2b cf                	sub    ecx,edi
100051d5:	c1 e9 0c             	shr    ecx,0xc
100051d8:	8d 47 10             	lea    eax,[edi+0x10]
100051db:	41                   	inc    ecx
100051dc:	83 48 f8 ff          	or     DWORD PTR [eax-0x8],0xffffffff
100051e0:	83 88 ec 0f 00 00 ff 	or     DWORD PTR [eax+0xfec],0xffffffff
100051e7:	8d 90 fc 0f 00 00    	lea    edx,[eax+0xffc]
100051ed:	89 10                	mov    DWORD PTR [eax],edx
100051ef:	8d 90 fc ef ff ff    	lea    edx,[eax-0x1004]
100051f5:	c7 40 fc f0 0f 00 00 	mov    DWORD PTR [eax-0x4],0xff0
100051fc:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
100051ff:	c7 80 e8 0f 00 00 f0 	mov    DWORD PTR [eax+0xfe8],0xff0
10005206:	0f 00 00 
10005209:	05 00 10 00 00       	add    eax,0x1000
1000520e:	49                   	dec    ecx
1000520f:	75 cb                	jne    0x100051dc
10005211:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
10005214:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10005217:	05 f8 01 00 00       	add    eax,0x1f8
1000521c:	8d 4f 0c             	lea    ecx,[edi+0xc]
1000521f:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
10005222:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
10005225:	8d 4a 0c             	lea    ecx,[edx+0xc]
10005228:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000522b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
1000522e:	83 64 9e 44 00       	and    DWORD PTR [esi+ebx*4+0x44],0x0
10005233:	33 ff                	xor    edi,edi
10005235:	47                   	inc    edi
10005236:	89 bc 9e c4 00 00 00 	mov    DWORD PTR [esi+ebx*4+0xc4],edi
1000523d:	8a 46 43             	mov    al,BYTE PTR [esi+0x43]
10005240:	8a c8                	mov    cl,al
10005242:	fe c1                	inc    cl
10005244:	84 c0                	test   al,al
10005246:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10005249:	88 4e 43             	mov    BYTE PTR [esi+0x43],cl
1000524c:	75 03                	jne    0x10005251
1000524e:	09 78 04             	or     DWORD PTR [eax+0x4],edi
10005251:	ba 00 00 00 80       	mov    edx,0x80000000
10005256:	8b cb                	mov    ecx,ebx
10005258:	d3 ea                	shr    edx,cl
1000525a:	f7 d2                	not    edx
1000525c:	21 50 08             	and    DWORD PTR [eax+0x8],edx
1000525f:	8b c3                	mov    eax,ebx
10005261:	5f                   	pop    edi
10005262:	5e                   	pop    esi
10005263:	5b                   	pop    ebx
10005264:	c9                   	leave  
10005265:	c3                   	ret    
10005266:	55                   	push   ebp
10005267:	8b ec                	mov    ebp,esp
10005269:	83 ec 0c             	sub    esp,0xc
1000526c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000526f:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
10005272:	53                   	push   ebx
10005273:	56                   	push   esi
10005274:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
10005277:	57                   	push   edi
10005278:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000527b:	8b d7                	mov    edx,edi
1000527d:	2b 51 0c             	sub    edx,DWORD PTR [ecx+0xc]
10005280:	83 c6 17             	add    esi,0x17
10005283:	c1 ea 0f             	shr    edx,0xf
10005286:	8b ca                	mov    ecx,edx
10005288:	69 c9 04 02 00 00    	imul   ecx,ecx,0x204
1000528e:	8d 8c 01 44 01 00 00 	lea    ecx,[ecx+eax*1+0x144]
10005295:	89 4d f4             	mov    DWORD PTR [ebp-0xc],ecx
10005298:	8b 4f fc             	mov    ecx,DWORD PTR [edi-0x4]
1000529b:	83 e6 f0             	and    esi,0xfffffff0
1000529e:	49                   	dec    ecx
1000529f:	3b f1                	cmp    esi,ecx
100052a1:	8d 7c 39 fc          	lea    edi,[ecx+edi*1-0x4]
100052a5:	8b 1f                	mov    ebx,DWORD PTR [edi]
100052a7:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
100052aa:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
100052ad:	0f 8e 55 01 00 00    	jle    0x10005408
100052b3:	f6 c3 01             	test   bl,0x1
100052b6:	0f 85 45 01 00 00    	jne    0x10005401
100052bc:	03 d9                	add    ebx,ecx
100052be:	3b f3                	cmp    esi,ebx
100052c0:	0f 8f 3b 01 00 00    	jg     0x10005401
100052c6:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100052c9:	c1 f9 04             	sar    ecx,0x4
100052cc:	49                   	dec    ecx
100052cd:	83 f9 3f             	cmp    ecx,0x3f
100052d0:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100052d3:	76 06                	jbe    0x100052db
100052d5:	6a 3f                	push   0x3f
100052d7:	59                   	pop    ecx
100052d8:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100052db:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
100052de:	3b 5f 08             	cmp    ebx,DWORD PTR [edi+0x8]
100052e1:	75 43                	jne    0x10005326
100052e3:	83 f9 20             	cmp    ecx,0x20
100052e6:	bb 00 00 00 80       	mov    ebx,0x80000000
100052eb:	73 1a                	jae    0x10005307
100052ed:	d3 eb                	shr    ebx,cl
100052ef:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
100052f2:	8d 4c 01 04          	lea    ecx,[ecx+eax*1+0x4]
100052f6:	f7 d3                	not    ebx
100052f8:	21 5c 90 44          	and    DWORD PTR [eax+edx*4+0x44],ebx
100052fc:	fe 09                	dec    BYTE PTR [ecx]
100052fe:	75 26                	jne    0x10005326
10005300:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005303:	21 19                	and    DWORD PTR [ecx],ebx
10005305:	eb 1f                	jmp    0x10005326
10005307:	83 c1 e0             	add    ecx,0xffffffe0
1000530a:	d3 eb                	shr    ebx,cl
1000530c:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000530f:	8d 4c 01 04          	lea    ecx,[ecx+eax*1+0x4]
10005313:	f7 d3                	not    ebx
10005315:	21 9c 90 c4 00 00 00 	and    DWORD PTR [eax+edx*4+0xc4],ebx
1000531c:	fe 09                	dec    BYTE PTR [ecx]
1000531e:	75 06                	jne    0x10005326
10005320:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005323:	21 59 04             	and    DWORD PTR [ecx+0x4],ebx
10005326:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
10005329:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
1000532c:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000532f:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
10005332:	8b 7f 08             	mov    edi,DWORD PTR [edi+0x8]
10005335:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
10005338:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000533b:	2b ce                	sub    ecx,esi
1000533d:	01 4d fc             	add    DWORD PTR [ebp-0x4],ecx
10005340:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10005344:	0f 8e a5 00 00 00    	jle    0x100053ef
1000534a:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000534d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10005350:	c1 ff 04             	sar    edi,0x4
10005353:	4f                   	dec    edi
10005354:	83 ff 3f             	cmp    edi,0x3f
10005357:	8d 4c 31 fc          	lea    ecx,[ecx+esi*1-0x4]
1000535b:	76 03                	jbe    0x10005360
1000535d:	6a 3f                	push   0x3f
1000535f:	5f                   	pop    edi
10005360:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
10005363:	8d 1c fb             	lea    ebx,[ebx+edi*8]
10005366:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
10005369:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
1000536c:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000536f:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
10005372:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
10005375:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
10005378:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
1000537b:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
1000537e:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
10005381:	3b 59 08             	cmp    ebx,DWORD PTR [ecx+0x8]
10005384:	75 57                	jne    0x100053dd
10005386:	8a 4c 07 04          	mov    cl,BYTE PTR [edi+eax*1+0x4]
1000538a:	88 4d 13             	mov    BYTE PTR [ebp+0x13],cl
1000538d:	fe c1                	inc    cl
1000538f:	83 ff 20             	cmp    edi,0x20
10005392:	88 4c 07 04          	mov    BYTE PTR [edi+eax*1+0x4],cl
10005396:	73 1c                	jae    0x100053b4
10005398:	80 7d 13 00          	cmp    BYTE PTR [ebp+0x13],0x0
1000539c:	75 0e                	jne    0x100053ac
1000539e:	8b cf                	mov    ecx,edi
100053a0:	bb 00 00 00 80       	mov    ebx,0x80000000
100053a5:	d3 eb                	shr    ebx,cl
100053a7:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
100053aa:	09 19                	or     DWORD PTR [ecx],ebx
100053ac:	8d 44 90 44          	lea    eax,[eax+edx*4+0x44]
100053b0:	8b cf                	mov    ecx,edi
100053b2:	eb 20                	jmp    0x100053d4
100053b4:	80 7d 13 00          	cmp    BYTE PTR [ebp+0x13],0x0
100053b8:	75 10                	jne    0x100053ca
100053ba:	8d 4f e0             	lea    ecx,[edi-0x20]
100053bd:	bb 00 00 00 80       	mov    ebx,0x80000000
100053c2:	d3 eb                	shr    ebx,cl
100053c4:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
100053c7:	09 59 04             	or     DWORD PTR [ecx+0x4],ebx
100053ca:	8d 84 90 c4 00 00 00 	lea    eax,[eax+edx*4+0xc4]
100053d1:	8d 4f e0             	lea    ecx,[edi-0x20]
100053d4:	ba 00 00 00 80       	mov    edx,0x80000000
100053d9:	d3 ea                	shr    edx,cl
100053db:	09 10                	or     DWORD PTR [eax],edx
100053dd:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
100053e0:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100053e3:	8d 44 32 fc          	lea    eax,[edx+esi*1-0x4]
100053e7:	89 08                	mov    DWORD PTR [eax],ecx
100053e9:	89 4c 01 fc          	mov    DWORD PTR [ecx+eax*1-0x4],ecx
100053ed:	eb 03                	jmp    0x100053f2
100053ef:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
100053f2:	8d 46 01             	lea    eax,[esi+0x1]
100053f5:	89 42 fc             	mov    DWORD PTR [edx-0x4],eax
100053f8:	89 44 32 f8          	mov    DWORD PTR [edx+esi*1-0x8],eax
100053fc:	e9 3c 01 00 00       	jmp    0x1000553d
10005401:	33 c0                	xor    eax,eax
10005403:	e9 38 01 00 00       	jmp    0x10005540
10005408:	0f 8d 2f 01 00 00    	jge    0x1000553d
1000540e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
10005411:	29 75 10             	sub    DWORD PTR [ebp+0x10],esi
10005414:	8d 4e 01             	lea    ecx,[esi+0x1]
10005417:	89 4b fc             	mov    DWORD PTR [ebx-0x4],ecx
1000541a:	8d 5c 33 fc          	lea    ebx,[ebx+esi*1-0x4]
1000541e:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
10005421:	c1 fe 04             	sar    esi,0x4
10005424:	4e                   	dec    esi
10005425:	83 fe 3f             	cmp    esi,0x3f
10005428:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
1000542b:	89 4b fc             	mov    DWORD PTR [ebx-0x4],ecx
1000542e:	76 03                	jbe    0x10005433
10005430:	6a 3f                	push   0x3f
10005432:	5e                   	pop    esi
10005433:	f6 45 fc 01          	test   BYTE PTR [ebp-0x4],0x1
10005437:	0f 85 80 00 00 00    	jne    0x100054bd
1000543d:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
10005440:	c1 fe 04             	sar    esi,0x4
10005443:	4e                   	dec    esi
10005444:	83 fe 3f             	cmp    esi,0x3f
10005447:	76 03                	jbe    0x1000544c
10005449:	6a 3f                	push   0x3f
1000544b:	5e                   	pop    esi
1000544c:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
1000544f:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
10005452:	75 42                	jne    0x10005496
10005454:	83 fe 20             	cmp    esi,0x20
10005457:	bb 00 00 00 80       	mov    ebx,0x80000000
1000545c:	73 19                	jae    0x10005477
1000545e:	8b ce                	mov    ecx,esi
10005460:	d3 eb                	shr    ebx,cl
10005462:	8d 74 06 04          	lea    esi,[esi+eax*1+0x4]
10005466:	f7 d3                	not    ebx
10005468:	21 5c 90 44          	and    DWORD PTR [eax+edx*4+0x44],ebx
1000546c:	fe 0e                	dec    BYTE PTR [esi]
1000546e:	75 23                	jne    0x10005493
10005470:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005473:	21 19                	and    DWORD PTR [ecx],ebx
10005475:	eb 1c                	jmp    0x10005493
10005477:	8d 4e e0             	lea    ecx,[esi-0x20]
1000547a:	d3 eb                	shr    ebx,cl
1000547c:	8d 4c 06 04          	lea    ecx,[esi+eax*1+0x4]
10005480:	f7 d3                	not    ebx
10005482:	21 9c 90 c4 00 00 00 	and    DWORD PTR [eax+edx*4+0xc4],ebx
10005489:	fe 09                	dec    BYTE PTR [ecx]
1000548b:	75 06                	jne    0x10005493
1000548d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005490:	21 59 04             	and    DWORD PTR [ecx+0x4],ebx
10005493:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
10005496:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
10005499:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
1000549c:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
1000549f:	8b 77 08             	mov    esi,DWORD PTR [edi+0x8]
100054a2:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
100054a5:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
100054a8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
100054ab:	03 75 fc             	add    esi,DWORD PTR [ebp-0x4]
100054ae:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
100054b1:	c1 fe 04             	sar    esi,0x4
100054b4:	4e                   	dec    esi
100054b5:	83 fe 3f             	cmp    esi,0x3f
100054b8:	76 03                	jbe    0x100054bd
100054ba:	6a 3f                	push   0x3f
100054bc:	5e                   	pop    esi
100054bd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
100054c0:	8d 0c f1             	lea    ecx,[ecx+esi*8]
100054c3:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
100054c6:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
100054c9:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
100054cc:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
100054cf:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
100054d2:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
100054d5:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
100054d8:	3b 4b 08             	cmp    ecx,DWORD PTR [ebx+0x8]
100054db:	75 57                	jne    0x10005534
100054dd:	8a 4c 06 04          	mov    cl,BYTE PTR [esi+eax*1+0x4]
100054e1:	88 4d 0f             	mov    BYTE PTR [ebp+0xf],cl
100054e4:	fe c1                	inc    cl
100054e6:	83 fe 20             	cmp    esi,0x20
100054e9:	88 4c 06 04          	mov    BYTE PTR [esi+eax*1+0x4],cl
100054ed:	73 1c                	jae    0x1000550b
100054ef:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
100054f3:	75 0e                	jne    0x10005503
100054f5:	8b ce                	mov    ecx,esi
100054f7:	bf 00 00 00 80       	mov    edi,0x80000000
100054fc:	d3 ef                	shr    edi,cl
100054fe:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005501:	09 39                	or     DWORD PTR [ecx],edi
10005503:	8d 44 90 44          	lea    eax,[eax+edx*4+0x44]
10005507:	8b ce                	mov    ecx,esi
10005509:	eb 20                	jmp    0x1000552b
1000550b:	80 7d 0f 00          	cmp    BYTE PTR [ebp+0xf],0x0
1000550f:	75 10                	jne    0x10005521
10005511:	8d 4e e0             	lea    ecx,[esi-0x20]
10005514:	bf 00 00 00 80       	mov    edi,0x80000000
10005519:	d3 ef                	shr    edi,cl
1000551b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000551e:	09 79 04             	or     DWORD PTR [ecx+0x4],edi
10005521:	8d 84 90 c4 00 00 00 	lea    eax,[eax+edx*4+0xc4]
10005528:	8d 4e e0             	lea    ecx,[esi-0x20]
1000552b:	ba 00 00 00 80       	mov    edx,0x80000000
10005530:	d3 ea                	shr    edx,cl
10005532:	09 10                	or     DWORD PTR [eax],edx
10005534:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10005537:	89 03                	mov    DWORD PTR [ebx],eax
10005539:	89 44 18 fc          	mov    DWORD PTR [eax+ebx*1-0x4],eax
1000553d:	33 c0                	xor    eax,eax
1000553f:	40                   	inc    eax
10005540:	5f                   	pop    edi
10005541:	5e                   	pop    esi
10005542:	5b                   	pop    ebx
10005543:	c9                   	leave  
10005544:	c3                   	ret    
10005545:	55                   	push   ebp
10005546:	8b ec                	mov    ebp,esp
10005548:	83 ec 14             	sub    esp,0x14
1000554b:	a1 d8 5d 01 10       	mov    eax,ds:0x10015dd8
10005550:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10005553:	6b c0 14             	imul   eax,eax,0x14
10005556:	03 05 dc 5d 01 10    	add    eax,DWORD PTR ds:0x10015ddc
1000555c:	83 c1 17             	add    ecx,0x17
1000555f:	83 e1 f0             	and    ecx,0xfffffff0
10005562:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
10005565:	c1 f9 04             	sar    ecx,0x4
10005568:	53                   	push   ebx
10005569:	49                   	dec    ecx
1000556a:	83 f9 20             	cmp    ecx,0x20
1000556d:	56                   	push   esi
1000556e:	57                   	push   edi
1000556f:	7d 0b                	jge    0x1000557c
10005571:	83 ce ff             	or     esi,0xffffffff
10005574:	d3 ee                	shr    esi,cl
10005576:	83 4d f8 ff          	or     DWORD PTR [ebp-0x8],0xffffffff
1000557a:	eb 0d                	jmp    0x10005589
1000557c:	83 c1 e0             	add    ecx,0xffffffe0
1000557f:	83 ca ff             	or     edx,0xffffffff
10005582:	33 f6                	xor    esi,esi
10005584:	d3 ea                	shr    edx,cl
10005586:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
10005589:	8b 0d e4 5d 01 10    	mov    ecx,DWORD PTR ds:0x10015de4
1000558f:	8b d9                	mov    ebx,ecx
10005591:	eb 11                	jmp    0x100055a4
10005593:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
10005596:	8b 3b                	mov    edi,DWORD PTR [ebx]
10005598:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
1000559b:	23 fe                	and    edi,esi
1000559d:	0b d7                	or     edx,edi
1000559f:	75 0a                	jne    0x100055ab
100055a1:	83 c3 14             	add    ebx,0x14
100055a4:	3b d8                	cmp    ebx,eax
100055a6:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055a9:	72 e8                	jb     0x10005593
100055ab:	3b d8                	cmp    ebx,eax
100055ad:	75 7f                	jne    0x1000562e
100055af:	8b 1d dc 5d 01 10    	mov    ebx,DWORD PTR ds:0x10015ddc
100055b5:	eb 11                	jmp    0x100055c8
100055b7:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
100055ba:	8b 3b                	mov    edi,DWORD PTR [ebx]
100055bc:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
100055bf:	23 fe                	and    edi,esi
100055c1:	0b d7                	or     edx,edi
100055c3:	75 0a                	jne    0x100055cf
100055c5:	83 c3 14             	add    ebx,0x14
100055c8:	3b d9                	cmp    ebx,ecx
100055ca:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055cd:	72 e8                	jb     0x100055b7
100055cf:	3b d9                	cmp    ebx,ecx
100055d1:	75 5b                	jne    0x1000562e
100055d3:	eb 0c                	jmp    0x100055e1
100055d5:	83 7b 08 00          	cmp    DWORD PTR [ebx+0x8],0x0
100055d9:	75 0a                	jne    0x100055e5
100055db:	83 c3 14             	add    ebx,0x14
100055de:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055e1:	3b d8                	cmp    ebx,eax
100055e3:	72 f0                	jb     0x100055d5
100055e5:	3b d8                	cmp    ebx,eax
100055e7:	75 31                	jne    0x1000561a
100055e9:	8b 1d dc 5d 01 10    	mov    ebx,DWORD PTR ds:0x10015ddc
100055ef:	eb 09                	jmp    0x100055fa
100055f1:	83 7b 08 00          	cmp    DWORD PTR [ebx+0x8],0x0
100055f5:	75 0a                	jne    0x10005601
100055f7:	83 c3 14             	add    ebx,0x14
100055fa:	3b d9                	cmp    ebx,ecx
100055fc:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
100055ff:	72 f0                	jb     0x100055f1
10005601:	3b d9                	cmp    ebx,ecx
10005603:	75 15                	jne    0x1000561a
10005605:	e8 a6 fa ff ff       	call   0x100050b0
1000560a:	8b d8                	mov    ebx,eax
1000560c:	85 db                	test   ebx,ebx
1000560e:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
10005611:	75 07                	jne    0x1000561a
10005613:	33 c0                	xor    eax,eax
10005615:	e9 09 02 00 00       	jmp    0x10005823
1000561a:	53                   	push   ebx
1000561b:	e8 40 fb ff ff       	call   0x10005160
10005620:	59                   	pop    ecx
10005621:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
10005624:	89 01                	mov    DWORD PTR [ecx],eax
10005626:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
10005629:	83 38 ff             	cmp    DWORD PTR [eax],0xffffffff
1000562c:	74 e5                	je     0x10005613
1000562e:	89 1d e4 5d 01 10    	mov    DWORD PTR ds:0x10015de4,ebx
10005634:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
10005637:	8b 10                	mov    edx,DWORD PTR [eax]
10005639:	83 fa ff             	cmp    edx,0xffffffff
1000563c:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
1000563f:	74 14                	je     0x10005655
10005641:	8b 8c 90 c4 00 00 00 	mov    ecx,DWORD PTR [eax+edx*4+0xc4]
10005648:	8b 7c 90 44          	mov    edi,DWORD PTR [eax+edx*4+0x44]
1000564c:	23 4d f8             	and    ecx,DWORD PTR [ebp-0x8]
1000564f:	23 fe                	and    edi,esi
10005651:	0b cf                	or     ecx,edi
10005653:	75 29                	jne    0x1000567e
10005655:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10005659:	8b 90 c4 00 00 00    	mov    edx,DWORD PTR [eax+0xc4]
1000565f:	8d 48 44             	lea    ecx,[eax+0x44]
10005662:	8b 39                	mov    edi,DWORD PTR [ecx]
10005664:	23 55 f8             	and    edx,DWORD PTR [ebp-0x8]
10005667:	23 fe                	and    edi,esi
10005669:	0b d7                	or     edx,edi
1000566b:	75 0e                	jne    0x1000567b
1000566d:	ff 45 fc             	inc    DWORD PTR [ebp-0x4]
10005670:	8b 91 84 00 00 00    	mov    edx,DWORD PTR [ecx+0x84]
10005676:	83 c1 04             	add    ecx,0x4
10005679:	eb e7                	jmp    0x10005662
1000567b:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
1000567e:	8b ca                	mov    ecx,edx
10005680:	69 c9 04 02 00 00    	imul   ecx,ecx,0x204
10005686:	8d 8c 01 44 01 00 00 	lea    ecx,[ecx+eax*1+0x144]
1000568d:	89 4d f4             	mov    DWORD PTR [ebp-0xc],ecx
10005690:	8b 4c 90 44          	mov    ecx,DWORD PTR [eax+edx*4+0x44]
10005694:	33 ff                	xor    edi,edi
10005696:	23 ce                	and    ecx,esi
10005698:	75 12                	jne    0x100056ac
1000569a:	8b 8c 90 c4 00 00 00 	mov    ecx,DWORD PTR [eax+edx*4+0xc4]
100056a1:	23 4d f8             	and    ecx,DWORD PTR [ebp-0x8]
100056a4:	6a 20                	push   0x20
100056a6:	5f                   	pop    edi
100056a7:	eb 03                	jmp    0x100056ac
100056a9:	03 c9                	add    ecx,ecx
100056ab:	47                   	inc    edi
100056ac:	85 c9                	test   ecx,ecx
100056ae:	7d f9                	jge    0x100056a9
100056b0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
100056b3:	8b 54 f9 04          	mov    edx,DWORD PTR [ecx+edi*8+0x4]
100056b7:	8b 0a                	mov    ecx,DWORD PTR [edx]
100056b9:	2b 4d f0             	sub    ecx,DWORD PTR [ebp-0x10]
100056bc:	8b f1                	mov    esi,ecx
100056be:	c1 fe 04             	sar    esi,0x4
100056c1:	4e                   	dec    esi
100056c2:	83 fe 3f             	cmp    esi,0x3f
100056c5:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
100056c8:	7e 03                	jle    0x100056cd
100056ca:	6a 3f                	push   0x3f
100056cc:	5e                   	pop    esi
100056cd:	3b f7                	cmp    esi,edi
100056cf:	0f 84 01 01 00 00    	je     0x100057d6
100056d5:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
100056d8:	3b 4a 08             	cmp    ecx,DWORD PTR [edx+0x8]
100056db:	75 5c                	jne    0x10005739
100056dd:	83 ff 20             	cmp    edi,0x20
100056e0:	bb 00 00 00 80       	mov    ebx,0x80000000
100056e5:	7d 26                	jge    0x1000570d
100056e7:	8b cf                	mov    ecx,edi
100056e9:	d3 eb                	shr    ebx,cl
100056eb:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100056ee:	8d 7c 38 04          	lea    edi,[eax+edi*1+0x4]
100056f2:	f7 d3                	not    ebx
100056f4:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
100056f7:	23 5c 88 44          	and    ebx,DWORD PTR [eax+ecx*4+0x44]
100056fb:	89 5c 88 44          	mov    DWORD PTR [eax+ecx*4+0x44],ebx
100056ff:	fe 0f                	dec    BYTE PTR [edi]
10005701:	75 33                	jne    0x10005736
10005703:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
10005706:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10005709:	21 0b                	and    DWORD PTR [ebx],ecx
1000570b:	eb 2c                	jmp    0x10005739
1000570d:	8d 4f e0             	lea    ecx,[edi-0x20]
10005710:	d3 eb                	shr    ebx,cl
10005712:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10005715:	8d 8c 88 c4 00 00 00 	lea    ecx,[eax+ecx*4+0xc4]
1000571c:	8d 7c 38 04          	lea    edi,[eax+edi*1+0x4]
10005720:	f7 d3                	not    ebx
10005722:	21 19                	and    DWORD PTR [ecx],ebx
10005724:	fe 0f                	dec    BYTE PTR [edi]
10005726:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
10005729:	75 0b                	jne    0x10005736
1000572b:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000572e:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
10005731:	21 4b 04             	and    DWORD PTR [ebx+0x4],ecx
10005734:	eb 03                	jmp    0x10005739
10005736:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10005739:	83 7d f8 00          	cmp    DWORD PTR [ebp-0x8],0x0
1000573d:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
10005740:	8b 7a 04             	mov    edi,DWORD PTR [edx+0x4]
10005743:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
10005746:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
10005749:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
1000574c:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
1000574f:	0f 84 8d 00 00 00    	je     0x100057e2
10005755:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
10005758:	8d 0c f1             	lea    ecx,[ecx+esi*8]
1000575b:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
1000575e:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
10005761:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
10005764:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
10005767:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
1000576a:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
1000576d:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
10005770:	3b 4a 08             	cmp    ecx,DWORD PTR [edx+0x8]
10005773:	75 5e                	jne    0x100057d3
10005775:	8a 4c 06 04          	mov    cl,BYTE PTR [esi+eax*1+0x4]
10005779:	88 4d 0b             	mov    BYTE PTR [ebp+0xb],cl
1000577c:	fe c1                	inc    cl
1000577e:	83 fe 20             	cmp    esi,0x20
10005781:	88 4c 06 04          	mov    BYTE PTR [esi+eax*1+0x4],cl
10005785:	7d 23                	jge    0x100057aa
10005787:	80 7d 0b 00          	cmp    BYTE PTR [ebp+0xb],0x0
1000578b:	75 0b                	jne    0x10005798
1000578d:	bf 00 00 00 80       	mov    edi,0x80000000
10005792:	8b ce                	mov    ecx,esi
10005794:	d3 ef                	shr    edi,cl
10005796:	09 3b                	or     DWORD PTR [ebx],edi
10005798:	8b ce                	mov    ecx,esi
1000579a:	bf 00 00 00 80       	mov    edi,0x80000000
1000579f:	d3 ef                	shr    edi,cl
100057a1:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100057a4:	09 7c 88 44          	or     DWORD PTR [eax+ecx*4+0x44],edi
100057a8:	eb 29                	jmp    0x100057d3
100057aa:	80 7d 0b 00          	cmp    BYTE PTR [ebp+0xb],0x0
100057ae:	75 0d                	jne    0x100057bd
100057b0:	8d 4e e0             	lea    ecx,[esi-0x20]
100057b3:	bf 00 00 00 80       	mov    edi,0x80000000
100057b8:	d3 ef                	shr    edi,cl
100057ba:	09 7b 04             	or     DWORD PTR [ebx+0x4],edi
100057bd:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100057c0:	8d bc 88 c4 00 00 00 	lea    edi,[eax+ecx*4+0xc4]
100057c7:	8d 4e e0             	lea    ecx,[esi-0x20]
100057ca:	be 00 00 00 80       	mov    esi,0x80000000
100057cf:	d3 ee                	shr    esi,cl
100057d1:	09 37                	or     DWORD PTR [edi],esi
100057d3:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
100057d6:	85 c9                	test   ecx,ecx
100057d8:	74 0b                	je     0x100057e5
100057da:	89 0a                	mov    DWORD PTR [edx],ecx
100057dc:	89 4c 11 fc          	mov    DWORD PTR [ecx+edx*1-0x4],ecx
100057e0:	eb 03                	jmp    0x100057e5
100057e2:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
100057e5:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
100057e8:	03 d1                	add    edx,ecx
100057ea:	8d 4e 01             	lea    ecx,[esi+0x1]
100057ed:	89 0a                	mov    DWORD PTR [edx],ecx
100057ef:	89 4c 32 fc          	mov    DWORD PTR [edx+esi*1-0x4],ecx
100057f3:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
100057f6:	8b 0e                	mov    ecx,DWORD PTR [esi]
100057f8:	85 c9                	test   ecx,ecx
100057fa:	8d 79 01             	lea    edi,[ecx+0x1]
100057fd:	89 3e                	mov    DWORD PTR [esi],edi
100057ff:	75 1a                	jne    0x1000581b
10005801:	3b 1d a0 53 01 10    	cmp    ebx,DWORD PTR ds:0x100153a0
10005807:	75 12                	jne    0x1000581b
10005809:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000580c:	3b 0d ec 5d 01 10    	cmp    ecx,DWORD PTR ds:0x10015dec
10005812:	75 07                	jne    0x1000581b
10005814:	83 25 a0 53 01 10 00 	and    DWORD PTR ds:0x100153a0,0x0
1000581b:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000581e:	89 08                	mov    DWORD PTR [eax],ecx
10005820:	8d 42 04             	lea    eax,[edx+0x4]
10005823:	5f                   	pop    edi
10005824:	5e                   	pop    esi
10005825:	5b                   	pop    ebx
10005826:	c9                   	leave  
10005827:	c3                   	ret    
10005828:	68 90 58 00 10       	push   0x10005890
1000582d:	64 ff 35 00 00 00 00 	push   DWORD PTR fs:0x0
10005834:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10005838:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
1000583c:	8d 6c 24 10          	lea    ebp,[esp+0x10]
10005840:	2b e0                	sub    esp,eax
10005842:	53                   	push   ebx
10005843:	56                   	push   esi
10005844:	57                   	push   edi
10005845:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000584a:	31 45 fc             	xor    DWORD PTR [ebp-0x4],eax
1000584d:	33 c5                	xor    eax,ebp
1000584f:	50                   	push   eax
10005850:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
10005853:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10005856:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
10005859:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10005860:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10005863:	8d 45 f0             	lea    eax,[ebp-0x10]
10005866:	64 a3 00 00 00 00    	mov    fs:0x0,eax
1000586c:	c3                   	ret    
1000586d:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10005870:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10005877:	59                   	pop    ecx
10005878:	5f                   	pop    edi
10005879:	5f                   	pop    edi
1000587a:	5e                   	pop    esi
1000587b:	5b                   	pop    ebx
1000587c:	8b e5                	mov    esp,ebp
1000587e:	5d                   	pop    ebp
1000587f:	51                   	push   ecx
10005880:	c3                   	ret    
10005881:	cc                   	int3   
10005882:	cc                   	int3   
10005883:	cc                   	int3   
10005884:	cc                   	int3   
10005885:	cc                   	int3   
10005886:	cc                   	int3   
10005887:	cc                   	int3   
10005888:	cc                   	int3   
10005889:	cc                   	int3   
1000588a:	cc                   	int3   
1000588b:	cc                   	int3   
1000588c:	cc                   	int3   
1000588d:	cc                   	int3   
1000588e:	cc                   	int3   
1000588f:	cc                   	int3   
