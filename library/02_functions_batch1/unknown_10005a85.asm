10005a85:	6a 08                	push   0x8
10005a87:	e8 6c f2 ff ff       	call   0x10004cf8
10005a8c:	59                   	pop    ecx
10005a8d:	c3                   	ret    
10005a8e:	6a 08                	push   0x8
10005a90:	e8 8b f1 ff ff       	call   0x10004c20
10005a95:	59                   	pop    ecx
10005a96:	c3                   	ret    
10005a97:	56                   	push   esi
10005a98:	8b f0                	mov    esi,eax
10005a9a:	eb 0b                	jmp    0x10005aa7
10005a9c:	8b 06                	mov    eax,DWORD PTR [esi]
10005a9e:	85 c0                	test   eax,eax
10005aa0:	74 02                	je     0x10005aa4
10005aa2:	ff d0                	call   eax
10005aa4:	83 c6 04             	add    esi,0x4
10005aa7:	3b 74 24 08          	cmp    esi,DWORD PTR [esp+0x8]
10005aab:	72 ef                	jb     0x10005a9c
10005aad:	5e                   	pop    esi
10005aae:	c3                   	ret    
10005aaf:	56                   	push   esi
10005ab0:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
10005ab4:	33 c0                	xor    eax,eax
10005ab6:	eb 0f                	jmp    0x10005ac7
10005ab8:	85 c0                	test   eax,eax
10005aba:	75 11                	jne    0x10005acd
10005abc:	8b 0e                	mov    ecx,DWORD PTR [esi]
10005abe:	85 c9                	test   ecx,ecx
10005ac0:	74 02                	je     0x10005ac4
10005ac2:	ff d1                	call   ecx
10005ac4:	83 c6 04             	add    esi,0x4
10005ac7:	3b 74 24 0c          	cmp    esi,DWORD PTR [esp+0xc]
10005acb:	72 eb                	jb     0x10005ab8
10005acd:	5e                   	pop    esi
10005ace:	c3                   	ret    
10005acf:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10005ad3:	56                   	push   esi
10005ad4:	33 f6                	xor    esi,esi
10005ad6:	3b ce                	cmp    ecx,esi
10005ad8:	75 1d                	jne    0x10005af7
10005ada:	e8 67 ef ff ff       	call   0x10004a46
10005adf:	56                   	push   esi
10005ae0:	56                   	push   esi
10005ae1:	56                   	push   esi
10005ae2:	56                   	push   esi
10005ae3:	56                   	push   esi
10005ae4:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
10005aea:	e8 87 20 00 00       	call   0x10007b76
10005aef:	83 c4 14             	add    esp,0x14
10005af2:	6a 16                	push   0x16
10005af4:	58                   	pop    eax
10005af5:	5e                   	pop    esi
10005af6:	c3                   	ret    
10005af7:	a1 a8 53 01 10       	mov    eax,ds:0x100153a8
10005afc:	3b c6                	cmp    eax,esi
10005afe:	74 da                	je     0x10005ada
10005b00:	89 01                	mov    DWORD PTR [ecx],eax
10005b02:	33 c0                	xor    eax,eax
10005b04:	5e                   	pop    esi
10005b05:	c3                   	ret    
10005b06:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10005b0a:	56                   	push   esi
10005b0b:	33 f6                	xor    esi,esi
10005b0d:	3b c6                	cmp    eax,esi
10005b0f:	75 1d                	jne    0x10005b2e
10005b11:	e8 30 ef ff ff       	call   0x10004a46
10005b16:	56                   	push   esi
10005b17:	56                   	push   esi
10005b18:	56                   	push   esi
10005b19:	56                   	push   esi
10005b1a:	56                   	push   esi
10005b1b:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
10005b21:	e8 50 20 00 00       	call   0x10007b76
10005b26:	83 c4 14             	add    esp,0x14
10005b29:	6a 16                	push   0x16
10005b2b:	58                   	pop    eax
10005b2c:	5e                   	pop    esi
10005b2d:	c3                   	ret    
10005b2e:	39 35 a8 53 01 10    	cmp    DWORD PTR ds:0x100153a8,esi
10005b34:	74 db                	je     0x10005b11
10005b36:	8b 0d b4 53 01 10    	mov    ecx,DWORD PTR ds:0x100153b4
10005b3c:	89 08                	mov    DWORD PTR [eax],ecx
10005b3e:	33 c0                	xor    eax,eax
10005b40:	5e                   	pop    esi
10005b41:	c3                   	ret    
10005b42:	83 3d f0 d1 00 10 00 	cmp    DWORD PTR ds:0x1000d1f0,0x0
10005b49:	74 1a                	je     0x10005b65
10005b4b:	68 f0 d1 00 10       	push   0x1000d1f0
10005b50:	e8 2b 2f 00 00       	call   0x10008a80
10005b55:	85 c0                	test   eax,eax
10005b57:	59                   	pop    ecx
10005b58:	74 0b                	je     0x10005b65
10005b5a:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005b5e:	ff 15 f0 d1 00 10    	call   DWORD PTR ds:0x1000d1f0
10005b64:	59                   	pop    ecx
10005b65:	e8 e0 ed ff ff       	call   0x1000494a
10005b6a:	68 5c d1 00 10       	push   0x1000d15c
10005b6f:	68 48 d1 00 10       	push   0x1000d148
10005b74:	e8 36 ff ff ff       	call   0x10005aaf
10005b79:	85 c0                	test   eax,eax
10005b7b:	59                   	pop    ecx
10005b7c:	59                   	pop    ecx
10005b7d:	75 54                	jne    0x10005bd3
10005b7f:	56                   	push   esi
10005b80:	57                   	push   edi
10005b81:	68 48 6e 00 10       	push   0x10006e48
10005b86:	e8 d4 30 00 00       	call   0x10008c5f
10005b8b:	be 40 d1 00 10       	mov    esi,0x1000d140
10005b90:	8b c6                	mov    eax,esi
10005b92:	bf 44 d1 00 10       	mov    edi,0x1000d144
10005b97:	3b c7                	cmp    eax,edi
10005b99:	59                   	pop    ecx
10005b9a:	73 0f                	jae    0x10005bab
10005b9c:	8b 06                	mov    eax,DWORD PTR [esi]
10005b9e:	85 c0                	test   eax,eax
10005ba0:	74 02                	je     0x10005ba4
10005ba2:	ff d0                	call   eax
10005ba4:	83 c6 04             	add    esi,0x4
10005ba7:	3b f7                	cmp    esi,edi
10005ba9:	72 f1                	jb     0x10005b9c
10005bab:	83 3d d0 5d 01 10 00 	cmp    DWORD PTR ds:0x10015dd0,0x0
10005bb2:	5f                   	pop    edi
10005bb3:	5e                   	pop    esi
10005bb4:	74 1b                	je     0x10005bd1
10005bb6:	68 d0 5d 01 10       	push   0x10015dd0
10005bbb:	e8 c0 2e 00 00       	call   0x10008a80
10005bc0:	85 c0                	test   eax,eax
10005bc2:	59                   	pop    ecx
10005bc3:	74 0c                	je     0x10005bd1
10005bc5:	6a 00                	push   0x0
10005bc7:	6a 02                	push   0x2
10005bc9:	6a 00                	push   0x0
10005bcb:	ff 15 d0 5d 01 10    	call   DWORD PTR ds:0x10015dd0
10005bd1:	33 c0                	xor    eax,eax
10005bd3:	c3                   	ret    
10005bd4:	6a 10                	push   0x10
10005bd6:	68 40 e4 00 10       	push   0x1000e440
10005bdb:	e8 48 fc ff ff       	call   0x10005828
10005be0:	6a 08                	push   0x8
10005be2:	e8 11 f1 ff ff       	call   0x10004cf8
10005be7:	59                   	pop    ecx
10005be8:	33 ff                	xor    edi,edi
10005bea:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10005bed:	33 db                	xor    ebx,ebx
10005bef:	43                   	inc    ebx
10005bf0:	39 1d e8 53 01 10    	cmp    DWORD PTR ds:0x100153e8,ebx
10005bf6:	74 7e                	je     0x10005c76
10005bf8:	89 1d e4 53 01 10    	mov    DWORD PTR ds:0x100153e4,ebx
10005bfe:	8a 45 10             	mov    al,BYTE PTR [ebp+0x10]
10005c01:	a2 e0 53 01 10       	mov    ds:0x100153e0,al
10005c06:	39 7d 0c             	cmp    DWORD PTR [ebp+0xc],edi
10005c09:	75 5b                	jne    0x10005c66
10005c0b:	ff 35 c8 5d 01 10    	push   DWORD PTR ds:0x10015dc8
10005c11:	e8 f8 04 00 00       	call   0x1000610e
10005c16:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10005c19:	ff 35 c4 5d 01 10    	push   DWORD PTR ds:0x10015dc4
10005c1f:	e8 ea 04 00 00       	call   0x1000610e
10005c24:	59                   	pop    ecx
10005c25:	59                   	pop    ecx
10005c26:	8b f0                	mov    esi,eax
10005c28:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
10005c2b:	39 7d e4             	cmp    DWORD PTR [ebp-0x1c],edi
10005c2e:	74 26                	je     0x10005c56
10005c30:	83 ee 04             	sub    esi,0x4
10005c33:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
10005c36:	3b 75 e4             	cmp    esi,DWORD PTR [ebp-0x1c]
10005c39:	72 1b                	jb     0x10005c56
10005c3b:	83 3e 00             	cmp    DWORD PTR [esi],0x0
10005c3e:	74 f0                	je     0x10005c30
10005c40:	8b 3e                	mov    edi,DWORD PTR [esi]
10005c42:	e8 be 04 00 00       	call   0x10006105
10005c47:	3b f8                	cmp    edi,eax
10005c49:	74 e5                	je     0x10005c30
10005c4b:	57                   	push   edi
10005c4c:	e8 bd 04 00 00       	call   0x1000610e
10005c51:	59                   	pop    ecx
10005c52:	ff d0                	call   eax
10005c54:	eb da                	jmp    0x10005c30
10005c56:	68 64 d1 00 10       	push   0x1000d164
10005c5b:	b8 60 d1 00 10       	mov    eax,0x1000d160
10005c60:	e8 32 fe ff ff       	call   0x10005a97
10005c65:	59                   	pop    ecx
10005c66:	68 6c d1 00 10       	push   0x1000d16c
10005c6b:	b8 68 d1 00 10       	mov    eax,0x1000d168
10005c70:	e8 22 fe ff ff       	call   0x10005a97
10005c75:	59                   	pop    ecx
10005c76:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10005c7d:	e8 1f 00 00 00       	call   0x10005ca1
10005c82:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
10005c86:	75 28                	jne    0x10005cb0
10005c88:	89 1d e8 53 01 10    	mov    DWORD PTR ds:0x100153e8,ebx
10005c8e:	6a 08                	push   0x8
10005c90:	e8 8b ef ff ff       	call   0x10004c20
10005c95:	59                   	pop    ecx
10005c96:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10005c99:	e8 d2 fd ff ff       	call   0x10005a70
10005c9e:	33 db                	xor    ebx,ebx
10005ca0:	43                   	inc    ebx
10005ca1:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
10005ca5:	74 08                	je     0x10005caf
10005ca7:	6a 08                	push   0x8
10005ca9:	e8 72 ef ff ff       	call   0x10004c20
10005cae:	59                   	pop    ecx
10005caf:	c3                   	ret    
10005cb0:	e8 b8 fb ff ff       	call   0x1000586d
10005cb5:	c3                   	ret    
10005cb6:	6a 00                	push   0x0
10005cb8:	6a 01                	push   0x1
10005cba:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
10005cbe:	e8 11 ff ff ff       	call   0x10005bd4
10005cc3:	83 c4 0c             	add    esp,0xc
10005cc6:	c3                   	ret    
10005cc7:	6a 01                	push   0x1
10005cc9:	6a 00                	push   0x0
10005ccb:	6a 00                	push   0x0
10005ccd:	e8 02 ff ff ff       	call   0x10005bd4
10005cd2:	83 c4 0c             	add    esp,0xc
10005cd5:	c3                   	ret    
10005cd6:	56                   	push   esi
10005cd7:	e8 29 04 00 00       	call   0x10006105
10005cdc:	8b f0                	mov    esi,eax
10005cde:	56                   	push   esi
10005cdf:	e8 17 02 00 00       	call   0x10005efb
10005ce4:	56                   	push   esi
10005ce5:	e8 d5 2a 00 00       	call   0x100087bf
10005cea:	56                   	push   esi
10005ceb:	e8 80 1d 00 00       	call   0x10007a70
10005cf0:	56                   	push   esi
10005cf1:	e8 d9 31 00 00       	call   0x10008ecf
10005cf6:	56                   	push   esi
10005cf7:	e8 c9 31 00 00       	call   0x10008ec5
10005cfc:	56                   	push   esi
10005cfd:	e8 b9 2f 00 00       	call   0x10008cbb
10005d02:	56                   	push   esi
10005d03:	e8 44 db ff ff       	call   0x1000384c
10005d08:	56                   	push   esi
10005d09:	e8 9c 2f 00 00       	call   0x10008caa
10005d0e:	68 b6 5c 00 10       	push   0x10005cb6
10005d13:	e8 7f 03 00 00       	call   0x10006097
10005d18:	83 c4 24             	add    esp,0x24
10005d1b:	a3 d8 02 01 10       	mov    ds:0x100102d8,eax
10005d20:	5e                   	pop    esi
10005d21:	c3                   	ret    
10005d22:	51                   	push   ecx
10005d23:	53                   	push   ebx
10005d24:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
10005d28:	56                   	push   esi
10005d29:	57                   	push   edi
10005d2a:	33 f6                	xor    esi,esi
10005d2c:	33 ff                	xor    edi,edi
10005d2e:	3b 1c fd e0 02 01 10 	cmp    ebx,DWORD PTR [edi*8+0x100102e0]
10005d35:	74 06                	je     0x10005d3d
10005d37:	47                   	inc    edi
10005d38:	83 ff 17             	cmp    edi,0x17
10005d3b:	72 f1                	jb     0x10005d2e
10005d3d:	83 ff 17             	cmp    edi,0x17
10005d40:	0f 83 77 01 00 00    	jae    0x10005ebd
10005d46:	55                   	push   ebp
10005d47:	6a 03                	push   0x3
10005d49:	e8 6c 34 00 00       	call   0x100091ba
10005d4e:	83 f8 01             	cmp    eax,0x1
10005d51:	59                   	pop    ecx
10005d52:	0f 84 31 01 00 00    	je     0x10005e89
10005d58:	6a 03                	push   0x3
10005d5a:	e8 5b 34 00 00       	call   0x100091ba
10005d5f:	85 c0                	test   eax,eax
10005d61:	59                   	pop    ecx
10005d62:	75 0d                	jne    0x10005d71
10005d64:	83 3d 48 52 01 10 01 	cmp    DWORD PTR ds:0x10015248,0x1
10005d6b:	0f 84 18 01 00 00    	je     0x10005e89
10005d71:	81 fb fc 00 00 00    	cmp    ebx,0xfc
10005d77:	0f 84 3f 01 00 00    	je     0x10005ebc
10005d7d:	68 00 d8 00 10       	push   0x1000d800
10005d82:	bb 14 03 00 00       	mov    ebx,0x314
10005d87:	53                   	push   ebx
10005d88:	bd f0 53 01 10       	mov    ebp,0x100153f0
10005d8d:	55                   	push   ebp
10005d8e:	e8 08 25 00 00       	call   0x1000829b
10005d93:	83 c4 0c             	add    esp,0xc
10005d96:	85 c0                	test   eax,eax
10005d98:	74 0d                	je     0x10005da7
10005d9a:	56                   	push   esi
10005d9b:	56                   	push   esi
10005d9c:	56                   	push   esi
10005d9d:	56                   	push   esi
10005d9e:	56                   	push   esi
10005d9f:	e8 d6 1c 00 00       	call   0x10007a7a
10005da4:	83 c4 14             	add    esp,0x14
10005da7:	68 04 01 00 00       	push   0x104
10005dac:	be 09 54 01 10       	mov    esi,0x10015409
10005db1:	56                   	push   esi
10005db2:	6a 00                	push   0x0
10005db4:	c6 05 0d 55 01 10 00 	mov    BYTE PTR ds:0x1001550d,0x0
10005dbb:	ff 15 78 d0 00 10    	call   DWORD PTR ds:0x1000d078
10005dc1:	85 c0                	test   eax,eax
10005dc3:	75 26                	jne    0x10005deb
10005dc5:	68 e8 d7 00 10       	push   0x1000d7e8
10005dca:	68 fb 02 00 00       	push   0x2fb
10005dcf:	56                   	push   esi
10005dd0:	e8 c6 24 00 00       	call   0x1000829b
10005dd5:	83 c4 0c             	add    esp,0xc
10005dd8:	85 c0                	test   eax,eax
10005dda:	74 0f                	je     0x10005deb
10005ddc:	33 c0                	xor    eax,eax
10005dde:	50                   	push   eax
10005ddf:	50                   	push   eax
10005de0:	50                   	push   eax
10005de1:	50                   	push   eax
10005de2:	50                   	push   eax
10005de3:	e8 92 1c 00 00       	call   0x10007a7a
10005de8:	83 c4 14             	add    esp,0x14
10005deb:	56                   	push   esi
10005dec:	e8 1f 24 00 00       	call   0x10008210
10005df1:	40                   	inc    eax
10005df2:	83 f8 3c             	cmp    eax,0x3c
10005df5:	59                   	pop    ecx
10005df6:	76 38                	jbe    0x10005e30
10005df8:	56                   	push   esi
10005df9:	e8 12 24 00 00       	call   0x10008210
10005dfe:	83 ee 3b             	sub    esi,0x3b
10005e01:	03 c6                	add    eax,esi
10005e03:	6a 03                	push   0x3
10005e05:	b9 04 57 01 10       	mov    ecx,0x10015704
10005e0a:	68 e4 d7 00 10       	push   0x1000d7e4
10005e0f:	2b c8                	sub    ecx,eax
10005e11:	51                   	push   ecx
10005e12:	50                   	push   eax
10005e13:	e8 ef 32 00 00       	call   0x10009107
10005e18:	83 c4 14             	add    esp,0x14
10005e1b:	85 c0                	test   eax,eax
10005e1d:	74 11                	je     0x10005e30
10005e1f:	33 f6                	xor    esi,esi
10005e21:	56                   	push   esi
10005e22:	56                   	push   esi
10005e23:	56                   	push   esi
10005e24:	56                   	push   esi
10005e25:	56                   	push   esi
10005e26:	e8 4f 1c 00 00       	call   0x10007a7a
10005e2b:	83 c4 14             	add    esp,0x14
10005e2e:	eb 02                	jmp    0x10005e32
10005e30:	33 f6                	xor    esi,esi
10005e32:	68 e0 d7 00 10       	push   0x1000d7e0
10005e37:	53                   	push   ebx
10005e38:	55                   	push   ebp
10005e39:	e8 58 32 00 00       	call   0x10009096
10005e3e:	83 c4 0c             	add    esp,0xc
10005e41:	85 c0                	test   eax,eax
10005e43:	74 0d                	je     0x10005e52
10005e45:	56                   	push   esi
10005e46:	56                   	push   esi
10005e47:	56                   	push   esi
10005e48:	56                   	push   esi
10005e49:	56                   	push   esi
10005e4a:	e8 2b 1c 00 00       	call   0x10007a7a
10005e4f:	83 c4 14             	add    esp,0x14
10005e52:	ff 34 fd e4 02 01 10 	push   DWORD PTR [edi*8+0x100102e4]
10005e59:	53                   	push   ebx
10005e5a:	55                   	push   ebp
10005e5b:	e8 36 32 00 00       	call   0x10009096
10005e60:	83 c4 0c             	add    esp,0xc
10005e63:	85 c0                	test   eax,eax
10005e65:	74 0d                	je     0x10005e74
10005e67:	56                   	push   esi
10005e68:	56                   	push   esi
10005e69:	56                   	push   esi
10005e6a:	56                   	push   esi
10005e6b:	56                   	push   esi
10005e6c:	e8 09 1c 00 00       	call   0x10007a7a
10005e71:	83 c4 14             	add    esp,0x14
10005e74:	68 10 20 01 00       	push   0x12010
10005e79:	68 b8 d7 00 10       	push   0x1000d7b8
10005e7e:	55                   	push   ebp
10005e7f:	e8 55 30 00 00       	call   0x10008ed9
10005e84:	83 c4 0c             	add    esp,0xc
10005e87:	eb 33                	jmp    0x10005ebc
10005e89:	6a f4                	push   0xfffffff4
10005e8b:	ff 15 74 d0 00 10    	call   DWORD PTR ds:0x1000d074
10005e91:	8b e8                	mov    ebp,eax
10005e93:	3b ee                	cmp    ebp,esi
10005e95:	74 25                	je     0x10005ebc
10005e97:	83 fd ff             	cmp    ebp,0xffffffff
10005e9a:	74 20                	je     0x10005ebc
10005e9c:	6a 00                	push   0x0
10005e9e:	8d 44 24 14          	lea    eax,[esp+0x14]
10005ea2:	50                   	push   eax
10005ea3:	8d 34 fd e4 02 01 10 	lea    esi,[edi*8+0x100102e4]
10005eaa:	ff 36                	push   DWORD PTR [esi]
10005eac:	e8 5f 23 00 00       	call   0x10008210
10005eb1:	59                   	pop    ecx
10005eb2:	50                   	push   eax
10005eb3:	ff 36                	push   DWORD PTR [esi]
10005eb5:	55                   	push   ebp
10005eb6:	ff 15 70 d0 00 10    	call   DWORD PTR ds:0x1000d070
10005ebc:	5d                   	pop    ebp
10005ebd:	5f                   	pop    edi
10005ebe:	5e                   	pop    esi
10005ebf:	5b                   	pop    ebx
10005ec0:	59                   	pop    ecx
10005ec1:	c3                   	ret    
10005ec2:	6a 03                	push   0x3
10005ec4:	e8 f1 32 00 00       	call   0x100091ba
10005ec9:	83 f8 01             	cmp    eax,0x1
10005ecc:	59                   	pop    ecx
10005ecd:	74 15                	je     0x10005ee4
10005ecf:	6a 03                	push   0x3
10005ed1:	e8 e4 32 00 00       	call   0x100091ba
10005ed6:	85 c0                	test   eax,eax
10005ed8:	59                   	pop    ecx
10005ed9:	75 1f                	jne    0x10005efa
10005edb:	83 3d 48 52 01 10 01 	cmp    DWORD PTR ds:0x10015248,0x1
10005ee2:	75 16                	jne    0x10005efa
10005ee4:	68 fc 00 00 00       	push   0xfc
10005ee9:	e8 34 fe ff ff       	call   0x10005d22
10005eee:	68 ff 00 00 00       	push   0xff
10005ef3:	e8 2a fe ff ff       	call   0x10005d22
10005ef8:	59                   	pop    ecx
10005ef9:	59                   	pop    ecx
10005efa:	c3                   	ret    
10005efb:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10005eff:	a3 04 57 01 10       	mov    ds:0x10015704,eax
10005f04:	c3                   	ret    
10005f05:	ff 35 04 57 01 10    	push   DWORD PTR ds:0x10015704
10005f0b:	e8 fe 01 00 00       	call   0x1000610e
10005f10:	85 c0                	test   eax,eax
10005f12:	59                   	pop    ecx
10005f13:	74 0f                	je     0x10005f24
10005f15:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005f19:	ff d0                	call   eax
10005f1b:	85 c0                	test   eax,eax
10005f1d:	59                   	pop    ecx
10005f1e:	74 04                	je     0x10005f24
10005f20:	33 c0                	xor    eax,eax
10005f22:	40                   	inc    eax
10005f23:	c3                   	ret    
10005f24:	33 c0                	xor    eax,eax
10005f26:	c3                   	ret    
10005f27:	55                   	push   ebp
10005f28:	8b ec                	mov    ebp,esp
10005f2a:	81 ec 28 03 00 00    	sub    esp,0x328
10005f30:	a3 18 58 01 10       	mov    ds:0x10015818,eax
10005f35:	89 0d 14 58 01 10    	mov    DWORD PTR ds:0x10015814,ecx
10005f3b:	89 15 10 58 01 10    	mov    DWORD PTR ds:0x10015810,edx
10005f41:	89 1d 0c 58 01 10    	mov    DWORD PTR ds:0x1001580c,ebx
10005f47:	89 35 08 58 01 10    	mov    DWORD PTR ds:0x10015808,esi
10005f4d:	89 3d 04 58 01 10    	mov    DWORD PTR ds:0x10015804,edi
10005f53:	66 8c 15 30 58 01 10 	data16 mov WORD PTR ds:0x10015830,ss
10005f5a:	66 8c 0d 24 58 01 10 	data16 mov WORD PTR ds:0x10015824,cs
10005f61:	66 8c 1d 00 58 01 10 	data16 mov WORD PTR ds:0x10015800,ds
10005f68:	66 8c 05 fc 57 01 10 	data16 mov WORD PTR ds:0x100157fc,es
10005f6f:	66 8c 25 f8 57 01 10 	data16 mov WORD PTR ds:0x100157f8,fs
10005f76:	66 8c 2d f4 57 01 10 	data16 mov WORD PTR ds:0x100157f4,gs
10005f7d:	9c                   	pushf  
10005f7e:	8f 05 28 58 01 10    	pop    DWORD PTR ds:0x10015828
10005f84:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
10005f87:	a3 1c 58 01 10       	mov    ds:0x1001581c,eax
10005f8c:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
10005f8f:	a3 20 58 01 10       	mov    ds:0x10015820,eax
10005f94:	8d 45 08             	lea    eax,[ebp+0x8]
10005f97:	a3 2c 58 01 10       	mov    ds:0x1001582c,eax
10005f9c:	8b 85 e0 fc ff ff    	mov    eax,DWORD PTR [ebp-0x320]
10005fa2:	c7 05 68 57 01 10 01 	mov    DWORD PTR ds:0x10015768,0x10001
10005fa9:	00 01 00 
10005fac:	a1 20 58 01 10       	mov    eax,ds:0x10015820
10005fb1:	a3 1c 57 01 10       	mov    ds:0x1001571c,eax
10005fb6:	c7 05 10 57 01 10 09 	mov    DWORD PTR ds:0x10015710,0xc0000409
10005fbd:	04 00 c0 
10005fc0:	c7 05 14 57 01 10 01 	mov    DWORD PTR ds:0x10015714,0x1
10005fc7:	00 00 00 
10005fca:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10005fcf:	89 85 d8 fc ff ff    	mov    DWORD PTR [ebp-0x328],eax
10005fd5:	a1 14 00 01 10       	mov    eax,ds:0x10010014
10005fda:	89 85 dc fc ff ff    	mov    DWORD PTR [ebp-0x324],eax
10005fe0:	ff 15 8c d0 00 10    	call   DWORD PTR ds:0x1000d08c
10005fe6:	a3 60 57 01 10       	mov    ds:0x10015760,eax
10005feb:	6a 01                	push   0x1
10005fed:	e8 0e 32 00 00       	call   0x10009200
10005ff2:	59                   	pop    ecx
10005ff3:	6a 00                	push   0x0
10005ff5:	ff 15 88 d0 00 10    	call   DWORD PTR ds:0x1000d088
10005ffb:	68 1c d8 00 10       	push   0x1000d81c
10006000:	ff 15 84 d0 00 10    	call   DWORD PTR ds:0x1000d084
10006006:	83 3d 60 57 01 10 00 	cmp    DWORD PTR ds:0x10015760,0x0
1000600d:	75 08                	jne    0x10006017
1000600f:	6a 01                	push   0x1
10006011:	e8 ea 31 00 00       	call   0x10009200
10006016:	59                   	pop    ecx
10006017:	68 09 04 00 c0       	push   0xc0000409
1000601c:	ff 15 80 d0 00 10    	call   DWORD PTR ds:0x1000d080
10006022:	50                   	push   eax
10006023:	ff 15 7c d0 00 10    	call   DWORD PTR ds:0x1000d07c
10006029:	c9                   	leave  
1000602a:	c3                   	ret    
1000602b:	55                   	push   ebp
1000602c:	8b ec                	mov    ebp,esp
1000602e:	51                   	push   ecx
1000602f:	51                   	push   ecx
10006030:	53                   	push   ebx
10006031:	56                   	push   esi
10006032:	33 f6                	xor    esi,esi
10006034:	8d 45 fc             	lea    eax,[ebp-0x4]
10006037:	46                   	inc    esi
10006038:	33 db                	xor    ebx,ebx
1000603a:	50                   	push   eax
1000603b:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
1000603e:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10006041:	e8 c0 fa ff ff       	call   0x10005b06
10006046:	83 7d fc 05          	cmp    DWORD PTR [ebp-0x4],0x5
1000604a:	59                   	pop    ecx
1000604b:	7e 04                	jle    0x10006051
1000604d:	8b c6                	mov    eax,esi
1000604f:	eb 42                	jmp    0x10006093
10006051:	57                   	push   edi
10006052:	53                   	push   ebx
10006053:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
10006059:	8b 70 3c             	mov    esi,DWORD PTR [eax+0x3c]
1000605c:	03 f0                	add    esi,eax
1000605e:	66 39 5e 06          	cmp    WORD PTR [esi+0x6],bx
10006062:	0f b7 46 14          	movzx  eax,WORD PTR [esi+0x14]
10006066:	8d 7c 30 18          	lea    edi,[eax+esi*1+0x18]
1000606a:	76 23                	jbe    0x1000608f
1000606c:	57                   	push   edi
1000606d:	68 24 d8 00 10       	push   0x1000d824
10006072:	e8 99 31 00 00       	call   0x10009210
10006077:	85 c0                	test   eax,eax
10006079:	59                   	pop    ecx
1000607a:	59                   	pop    ecx
1000607b:	74 0e                	je     0x1000608b
1000607d:	0f b7 46 06          	movzx  eax,WORD PTR [esi+0x6]
10006081:	43                   	inc    ebx
10006082:	83 c7 28             	add    edi,0x28
10006085:	3b d8                	cmp    ebx,eax
10006087:	72 e3                	jb     0x1000606c
10006089:	eb 04                	jmp    0x1000608f
1000608b:	83 65 f8 00          	and    DWORD PTR [ebp-0x8],0x0
1000608f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006092:	5f                   	pop    edi
10006093:	5e                   	pop    esi
10006094:	5b                   	pop    ebx
10006095:	c9                   	leave  
10006096:	c3                   	ret    
10006097:	56                   	push   esi
10006098:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
1000609e:	8b 35 00 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d000
100060a4:	ff d6                	call   esi
100060a6:	85 c0                	test   eax,eax
100060a8:	74 21                	je     0x100060cb
100060aa:	a1 98 03 01 10       	mov    eax,ds:0x10010398
100060af:	83 f8 ff             	cmp    eax,0xffffffff
100060b2:	74 17                	je     0x100060cb
100060b4:	50                   	push   eax
100060b5:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
100060bb:	ff d6                	call   esi
100060bd:	ff d0                	call   eax
100060bf:	85 c0                	test   eax,eax
100060c1:	74 08                	je     0x100060cb
100060c3:	8b 80 f8 01 00 00    	mov    eax,DWORD PTR [eax+0x1f8]
100060c9:	eb 26                	jmp    0x100060f1
100060cb:	68 3c d8 00 10       	push   0x1000d83c
100060d0:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
100060d6:	8b f0                	mov    esi,eax
100060d8:	85 f6                	test   esi,esi
100060da:	74 23                	je     0x100060ff
100060dc:	e8 4a ff ff ff       	call   0x1000602b
100060e1:	85 c0                	test   eax,eax
100060e3:	74 1a                	je     0x100060ff
100060e5:	68 2c d8 00 10       	push   0x1000d82c
100060ea:	56                   	push   esi
100060eb:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
100060f1:	85 c0                	test   eax,eax
100060f3:	74 0a                	je     0x100060ff
100060f5:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
100060f9:	ff d0                	call   eax
100060fb:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100060ff:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10006103:	5e                   	pop    esi
10006104:	c3                   	ret    
10006105:	6a 00                	push   0x0
10006107:	e8 8b ff ff ff       	call   0x10006097
1000610c:	59                   	pop    ecx
1000610d:	c3                   	ret    
1000610e:	56                   	push   esi
1000610f:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
10006115:	8b 35 00 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d000
1000611b:	ff d6                	call   esi
1000611d:	85 c0                	test   eax,eax
1000611f:	74 21                	je     0x10006142
10006121:	a1 98 03 01 10       	mov    eax,ds:0x10010398
10006126:	83 f8 ff             	cmp    eax,0xffffffff
10006129:	74 17                	je     0x10006142
1000612b:	50                   	push   eax
1000612c:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
10006132:	ff d6                	call   esi
10006134:	ff d0                	call   eax
10006136:	85 c0                	test   eax,eax
10006138:	74 08                	je     0x10006142
1000613a:	8b 80 fc 01 00 00    	mov    eax,DWORD PTR [eax+0x1fc]
10006140:	eb 26                	jmp    0x10006168
10006142:	68 3c d8 00 10       	push   0x1000d83c
10006147:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
1000614d:	8b f0                	mov    esi,eax
1000614f:	85 f6                	test   esi,esi
10006151:	74 23                	je     0x10006176
10006153:	e8 d3 fe ff ff       	call   0x1000602b
10006158:	85 c0                	test   eax,eax
1000615a:	74 1a                	je     0x10006176
1000615c:	68 4c d8 00 10       	push   0x1000d84c
10006161:	56                   	push   esi
10006162:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
10006168:	85 c0                	test   eax,eax
1000616a:	74 0a                	je     0x10006176
1000616c:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10006170:	ff d0                	call   eax
10006172:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
10006176:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000617a:	5e                   	pop    esi
1000617b:	c3                   	ret    
1000617c:	ff 15 90 d0 00 10    	call   DWORD PTR ds:0x1000d090
10006182:	c2 04 00             	ret    0x4
10006185:	56                   	push   esi
10006186:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
1000618c:	ff 15 00 d0 00 10    	call   DWORD PTR ds:0x1000d000
10006192:	8b f0                	mov    esi,eax
10006194:	85 f6                	test   esi,esi
10006196:	75 1b                	jne    0x100061b3
10006198:	ff 35 38 5a 01 10    	push   DWORD PTR ds:0x10015a38
1000619e:	e8 6b ff ff ff       	call   0x1000610e
100061a3:	59                   	pop    ecx
100061a4:	8b f0                	mov    esi,eax
100061a6:	56                   	push   esi
100061a7:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
100061ad:	ff 15 94 d0 00 10    	call   DWORD PTR ds:0x1000d094
100061b3:	8b c6                	mov    eax,esi
100061b5:	5e                   	pop    esi
100061b6:	c3                   	ret    
100061b7:	a1 98 03 01 10       	mov    eax,ds:0x10010398
100061bc:	83 f8 ff             	cmp    eax,0xffffffff
100061bf:	74 16                	je     0x100061d7
100061c1:	50                   	push   eax
100061c2:	ff 35 40 5a 01 10    	push   DWORD PTR ds:0x10015a40
100061c8:	e8 41 ff ff ff       	call   0x1000610e
100061cd:	59                   	pop    ecx
100061ce:	ff d0                	call   eax
100061d0:	83 0d 98 03 01 10 ff 	or     DWORD PTR ds:0x10010398,0xffffffff
100061d7:	a1 9c 03 01 10       	mov    eax,ds:0x1001039c
100061dc:	83 f8 ff             	cmp    eax,0xffffffff
100061df:	74 0e                	je     0x100061ef
100061e1:	50                   	push   eax
100061e2:	ff 15 98 d0 00 10    	call   DWORD PTR ds:0x1000d098
100061e8:	83 0d 9c 03 01 10 ff 	or     DWORD PTR ds:0x1001039c,0xffffffff
100061ef:	e9 d7 e9 ff ff       	jmp    0x10004bcb
100061f4:	6a 0c                	push   0xc
100061f6:	68 60 e4 00 10       	push   0x1000e460
100061fb:	e8 28 f6 ff ff       	call   0x10005828
10006200:	68 3c d8 00 10       	push   0x1000d83c
10006205:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
1000620b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000620e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10006211:	c7 46 5c e0 03 01 10 	mov    DWORD PTR [esi+0x5c],0x100103e0
10006218:	33 ff                	xor    edi,edi
1000621a:	47                   	inc    edi
1000621b:	89 7e 14             	mov    DWORD PTR [esi+0x14],edi
1000621e:	85 c0                	test   eax,eax
10006220:	74 2f                	je     0x10006251
10006222:	e8 04 fe ff ff       	call   0x1000602b
10006227:	85 c0                	test   eax,eax
10006229:	74 26                	je     0x10006251
1000622b:	68 2c d8 00 10       	push   0x1000d82c
10006230:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
10006233:	8b 1d 4c d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d04c
10006239:	ff d3                	call   ebx
1000623b:	89 86 f8 01 00 00    	mov    DWORD PTR [esi+0x1f8],eax
10006241:	68 4c d8 00 10       	push   0x1000d84c
10006246:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
10006249:	ff d3                	call   ebx
1000624b:	89 86 fc 01 00 00    	mov    DWORD PTR [esi+0x1fc],eax
10006251:	89 7e 70             	mov    DWORD PTR [esi+0x70],edi
10006254:	c6 86 c8 00 00 00 43 	mov    BYTE PTR [esi+0xc8],0x43
1000625b:	c6 86 4b 01 00 00 43 	mov    BYTE PTR [esi+0x14b],0x43
10006262:	b8 70 04 01 10       	mov    eax,0x10010470
10006267:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
1000626a:	50                   	push   eax
1000626b:	ff 15 9c d0 00 10    	call   DWORD PTR ds:0x1000d09c
10006271:	6a 0c                	push   0xc
10006273:	e8 80 ea ff ff       	call   0x10004cf8
10006278:	59                   	pop    ecx
10006279:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000627d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10006280:	89 46 6c             	mov    DWORD PTR [esi+0x6c],eax
10006283:	85 c0                	test   eax,eax
10006285:	75 08                	jne    0x1000628f
10006287:	a1 78 0a 01 10       	mov    eax,ds:0x10010a78
1000628c:	89 46 6c             	mov    DWORD PTR [esi+0x6c],eax
1000628f:	ff 76 6c             	push   DWORD PTR [esi+0x6c]
10006292:	e8 13 16 00 00       	call   0x100078aa
10006297:	59                   	pop    ecx
10006298:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000629f:	e8 06 00 00 00       	call   0x100062aa
100062a4:	e8 c4 f5 ff ff       	call   0x1000586d
100062a9:	c3                   	ret    
100062aa:	6a 0c                	push   0xc
100062ac:	e8 6f e9 ff ff       	call   0x10004c20
100062b1:	59                   	pop    ecx
100062b2:	c3                   	ret    
100062b3:	56                   	push   esi
100062b4:	57                   	push   edi
100062b5:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100062bb:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
100062c1:	8b f8                	mov    edi,eax
100062c3:	e8 bd fe ff ff       	call   0x10006185
100062c8:	ff d0                	call   eax
100062ca:	8b f0                	mov    esi,eax
100062cc:	85 f6                	test   esi,esi
100062ce:	75 4e                	jne    0x1000631e
100062d0:	68 14 02 00 00       	push   0x214
100062d5:	6a 01                	push   0x1
100062d7:	e8 b4 03 00 00       	call   0x10006690
100062dc:	8b f0                	mov    esi,eax
100062de:	85 f6                	test   esi,esi
100062e0:	59                   	pop    ecx
100062e1:	59                   	pop    ecx
100062e2:	74 3a                	je     0x1000631e
100062e4:	56                   	push   esi
100062e5:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
100062eb:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
100062f1:	e8 18 fe ff ff       	call   0x1000610e
100062f6:	59                   	pop    ecx
100062f7:	ff d0                	call   eax
100062f9:	85 c0                	test   eax,eax
100062fb:	74 18                	je     0x10006315
100062fd:	6a 00                	push   0x0
100062ff:	56                   	push   esi
10006300:	e8 ef fe ff ff       	call   0x100061f4
10006305:	59                   	pop    ecx
10006306:	59                   	pop    ecx
10006307:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
1000630d:	83 4e 04 ff          	or     DWORD PTR [esi+0x4],0xffffffff
10006311:	89 06                	mov    DWORD PTR [esi],eax
10006313:	eb 09                	jmp    0x1000631e
10006315:	56                   	push   esi
10006316:	e8 60 d6 ff ff       	call   0x1000397b
1000631b:	59                   	pop    ecx
1000631c:	33 f6                	xor    esi,esi
1000631e:	57                   	push   edi
1000631f:	ff 15 a0 d0 00 10    	call   DWORD PTR ds:0x1000d0a0
10006325:	5f                   	pop    edi
10006326:	8b c6                	mov    eax,esi
10006328:	5e                   	pop    esi
10006329:	c3                   	ret    
1000632a:	56                   	push   esi
1000632b:	e8 83 ff ff ff       	call   0x100062b3
10006330:	8b f0                	mov    esi,eax
10006332:	85 f6                	test   esi,esi
10006334:	75 08                	jne    0x1000633e
10006336:	6a 10                	push   0x10
10006338:	e8 e9 f6 ff ff       	call   0x10005a26
1000633d:	59                   	pop    ecx
1000633e:	8b c6                	mov    eax,esi
10006340:	5e                   	pop    esi
10006341:	c3                   	ret    
10006342:	6a 08                	push   0x8
10006344:	68 80 e4 00 10       	push   0x1000e480
10006349:	e8 da f4 ff ff       	call   0x10005828
1000634e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10006351:	85 f6                	test   esi,esi
10006353:	0f 84 ea 00 00 00    	je     0x10006443
10006359:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
1000635c:	85 c0                	test   eax,eax
1000635e:	74 07                	je     0x10006367
10006360:	50                   	push   eax
10006361:	e8 15 d6 ff ff       	call   0x1000397b
10006366:	59                   	pop    ecx
10006367:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
1000636a:	85 c0                	test   eax,eax
1000636c:	74 07                	je     0x10006375
1000636e:	50                   	push   eax
1000636f:	e8 07 d6 ff ff       	call   0x1000397b
10006374:	59                   	pop    ecx
10006375:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
10006378:	85 c0                	test   eax,eax
1000637a:	74 07                	je     0x10006383
1000637c:	50                   	push   eax
1000637d:	e8 f9 d5 ff ff       	call   0x1000397b
10006382:	59                   	pop    ecx
10006383:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
10006386:	85 c0                	test   eax,eax
10006388:	74 07                	je     0x10006391
1000638a:	50                   	push   eax
1000638b:	e8 eb d5 ff ff       	call   0x1000397b
10006390:	59                   	pop    ecx
10006391:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
10006394:	85 c0                	test   eax,eax
10006396:	74 07                	je     0x1000639f
10006398:	50                   	push   eax
10006399:	e8 dd d5 ff ff       	call   0x1000397b
1000639e:	59                   	pop    ecx
1000639f:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
100063a2:	85 c0                	test   eax,eax
100063a4:	74 07                	je     0x100063ad
100063a6:	50                   	push   eax
100063a7:	e8 cf d5 ff ff       	call   0x1000397b
100063ac:	59                   	pop    ecx
100063ad:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
100063b0:	3d e0 03 01 10       	cmp    eax,0x100103e0
100063b5:	74 07                	je     0x100063be
100063b7:	50                   	push   eax
100063b8:	e8 be d5 ff ff       	call   0x1000397b
100063bd:	59                   	pop    ecx
100063be:	6a 0d                	push   0xd
100063c0:	e8 33 e9 ff ff       	call   0x10004cf8
100063c5:	59                   	pop    ecx
100063c6:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
100063ca:	8b 7e 68             	mov    edi,DWORD PTR [esi+0x68]
100063cd:	85 ff                	test   edi,edi
100063cf:	74 1a                	je     0x100063eb
100063d1:	57                   	push   edi
100063d2:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
100063d8:	85 c0                	test   eax,eax
100063da:	75 0f                	jne    0x100063eb
100063dc:	81 ff 70 04 01 10    	cmp    edi,0x10010470
100063e2:	74 07                	je     0x100063eb
100063e4:	57                   	push   edi
100063e5:	e8 91 d5 ff ff       	call   0x1000397b
100063ea:	59                   	pop    ecx
100063eb:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
100063f2:	e8 57 00 00 00       	call   0x1000644e
100063f7:	6a 0c                	push   0xc
100063f9:	e8 fa e8 ff ff       	call   0x10004cf8
100063fe:	59                   	pop    ecx
100063ff:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
10006406:	8b 7e 6c             	mov    edi,DWORD PTR [esi+0x6c]
10006409:	85 ff                	test   edi,edi
1000640b:	74 23                	je     0x10006430
1000640d:	57                   	push   edi
1000640e:	e8 1d 15 00 00       	call   0x10007930
10006413:	59                   	pop    ecx
10006414:	3b 3d 78 0a 01 10    	cmp    edi,DWORD PTR ds:0x10010a78
1000641a:	74 14                	je     0x10006430
1000641c:	81 ff a0 09 01 10    	cmp    edi,0x100109a0
10006422:	74 0c                	je     0x10006430
10006424:	83 3f 00             	cmp    DWORD PTR [edi],0x0
10006427:	75 07                	jne    0x10006430
10006429:	57                   	push   edi
1000642a:	e8 3b 13 00 00       	call   0x1000776a
1000642f:	59                   	pop    ecx
10006430:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10006437:	e8 1e 00 00 00       	call   0x1000645a
1000643c:	56                   	push   esi
1000643d:	e8 39 d5 ff ff       	call   0x1000397b
10006442:	59                   	pop    ecx
10006443:	e8 25 f4 ff ff       	call   0x1000586d
10006448:	c2 04 00             	ret    0x4
1000644b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000644e:	6a 0d                	push   0xd
10006450:	e8 cb e7 ff ff       	call   0x10004c20
10006455:	59                   	pop    ecx
10006456:	c3                   	ret    
10006457:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000645a:	6a 0c                	push   0xc
1000645c:	e8 bf e7 ff ff       	call   0x10004c20
10006461:	59                   	pop    ecx
10006462:	c3                   	ret    
10006463:	83 3d 98 03 01 10 ff 	cmp    DWORD PTR ds:0x10010398,0xffffffff
1000646a:	74 4c                	je     0x100064b8
1000646c:	57                   	push   edi
1000646d:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
10006471:	85 ff                	test   edi,edi
10006473:	75 26                	jne    0x1000649b
10006475:	56                   	push   esi
10006476:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
1000647c:	8b 35 00 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d000
10006482:	ff d6                	call   esi
10006484:	85 c0                	test   eax,eax
10006486:	74 12                	je     0x1000649a
10006488:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
1000648e:	ff 35 9c 03 01 10    	push   DWORD PTR ds:0x1001039c
10006494:	ff d6                	call   esi
10006496:	ff d0                	call   eax
10006498:	8b f8                	mov    edi,eax
1000649a:	5e                   	pop    esi
1000649b:	6a 00                	push   0x0
1000649d:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
100064a3:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
100064a9:	e8 60 fc ff ff       	call   0x1000610e
100064ae:	59                   	pop    ecx
100064af:	ff d0                	call   eax
100064b1:	57                   	push   edi
100064b2:	e8 8b fe ff ff       	call   0x10006342
100064b7:	5f                   	pop    edi
100064b8:	a1 9c 03 01 10       	mov    eax,ds:0x1001039c
100064bd:	83 f8 ff             	cmp    eax,0xffffffff
100064c0:	74 09                	je     0x100064cb
100064c2:	6a 00                	push   0x0
100064c4:	50                   	push   eax
100064c5:	ff 15 94 d0 00 10    	call   DWORD PTR ds:0x1000d094
100064cb:	c3                   	ret    
100064cc:	57                   	push   edi
100064cd:	68 3c d8 00 10       	push   0x1000d83c
100064d2:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
100064d8:	8b f8                	mov    edi,eax
100064da:	85 ff                	test   edi,edi
100064dc:	75 09                	jne    0x100064e7
100064de:	e8 d4 fc ff ff       	call   0x100061b7
100064e3:	33 c0                	xor    eax,eax
100064e5:	5f                   	pop    edi
100064e6:	c3                   	ret    
100064e7:	56                   	push   esi
100064e8:	8b 35 4c d0 00 10    	mov    esi,DWORD PTR ds:0x1000d04c
100064ee:	68 7c d8 00 10       	push   0x1000d87c
100064f3:	57                   	push   edi
100064f4:	ff d6                	call   esi
100064f6:	68 70 d8 00 10       	push   0x1000d870
100064fb:	57                   	push   edi
100064fc:	a3 34 5a 01 10       	mov    ds:0x10015a34,eax
10006501:	ff d6                	call   esi
10006503:	68 64 d8 00 10       	push   0x1000d864
10006508:	57                   	push   edi
10006509:	a3 38 5a 01 10       	mov    ds:0x10015a38,eax
1000650e:	ff d6                	call   esi
10006510:	68 5c d8 00 10       	push   0x1000d85c
10006515:	57                   	push   edi
10006516:	a3 3c 5a 01 10       	mov    ds:0x10015a3c,eax
1000651b:	ff d6                	call   esi
1000651d:	83 3d 34 5a 01 10 00 	cmp    DWORD PTR ds:0x10015a34,0x0
10006524:	8b 35 94 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d094
1000652a:	a3 40 5a 01 10       	mov    ds:0x10015a40,eax
1000652f:	74 16                	je     0x10006547
10006531:	83 3d 38 5a 01 10 00 	cmp    DWORD PTR ds:0x10015a38,0x0
10006538:	74 0d                	je     0x10006547
1000653a:	83 3d 3c 5a 01 10 00 	cmp    DWORD PTR ds:0x10015a3c,0x0
10006541:	74 04                	je     0x10006547
10006543:	85 c0                	test   eax,eax
10006545:	75 24                	jne    0x1000656b
10006547:	a1 00 d0 00 10       	mov    eax,ds:0x1000d000
1000654c:	a3 38 5a 01 10       	mov    ds:0x10015a38,eax
10006551:	a1 98 d0 00 10       	mov    eax,ds:0x1000d098
10006556:	c7 05 34 5a 01 10 7c 	mov    DWORD PTR ds:0x10015a34,0x1000617c
1000655d:	61 00 10 
10006560:	89 35 3c 5a 01 10    	mov    DWORD PTR ds:0x10015a3c,esi
10006566:	a3 40 5a 01 10       	mov    ds:0x10015a40,eax
1000656b:	ff 15 90 d0 00 10    	call   DWORD PTR ds:0x1000d090
10006571:	83 f8 ff             	cmp    eax,0xffffffff
10006574:	a3 9c 03 01 10       	mov    ds:0x1001039c,eax
10006579:	0f 84 cc 00 00 00    	je     0x1000664b
1000657f:	ff 35 38 5a 01 10    	push   DWORD PTR ds:0x10015a38
10006585:	50                   	push   eax
10006586:	ff d6                	call   esi
10006588:	85 c0                	test   eax,eax
1000658a:	0f 84 bb 00 00 00    	je     0x1000664b
10006590:	e8 41 f7 ff ff       	call   0x10005cd6
10006595:	ff 35 34 5a 01 10    	push   DWORD PTR ds:0x10015a34
1000659b:	e8 f7 fa ff ff       	call   0x10006097
100065a0:	ff 35 38 5a 01 10    	push   DWORD PTR ds:0x10015a38
100065a6:	a3 34 5a 01 10       	mov    ds:0x10015a34,eax
100065ab:	e8 e7 fa ff ff       	call   0x10006097
100065b0:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
100065b6:	a3 38 5a 01 10       	mov    ds:0x10015a38,eax
100065bb:	e8 d7 fa ff ff       	call   0x10006097
100065c0:	ff 35 40 5a 01 10    	push   DWORD PTR ds:0x10015a40
100065c6:	a3 3c 5a 01 10       	mov    ds:0x10015a3c,eax
100065cb:	e8 c7 fa ff ff       	call   0x10006097
100065d0:	83 c4 10             	add    esp,0x10
100065d3:	a3 40 5a 01 10       	mov    ds:0x10015a40,eax
100065d8:	e8 a5 e5 ff ff       	call   0x10004b82
100065dd:	85 c0                	test   eax,eax
100065df:	74 65                	je     0x10006646
100065e1:	68 42 63 00 10       	push   0x10006342
100065e6:	ff 35 34 5a 01 10    	push   DWORD PTR ds:0x10015a34
100065ec:	e8 1d fb ff ff       	call   0x1000610e
100065f1:	59                   	pop    ecx
100065f2:	ff d0                	call   eax
100065f4:	83 f8 ff             	cmp    eax,0xffffffff
100065f7:	a3 98 03 01 10       	mov    ds:0x10010398,eax
100065fc:	74 48                	je     0x10006646
100065fe:	68 14 02 00 00       	push   0x214
10006603:	6a 01                	push   0x1
10006605:	e8 86 00 00 00       	call   0x10006690
1000660a:	8b f0                	mov    esi,eax
1000660c:	85 f6                	test   esi,esi
1000660e:	59                   	pop    ecx
1000660f:	59                   	pop    ecx
10006610:	74 34                	je     0x10006646
10006612:	56                   	push   esi
10006613:	ff 35 98 03 01 10    	push   DWORD PTR ds:0x10010398
10006619:	ff 35 3c 5a 01 10    	push   DWORD PTR ds:0x10015a3c
1000661f:	e8 ea fa ff ff       	call   0x1000610e
10006624:	59                   	pop    ecx
10006625:	ff d0                	call   eax
10006627:	85 c0                	test   eax,eax
10006629:	74 1b                	je     0x10006646
1000662b:	6a 00                	push   0x0
1000662d:	56                   	push   esi
1000662e:	e8 c1 fb ff ff       	call   0x100061f4
10006633:	59                   	pop    ecx
10006634:	59                   	pop    ecx
10006635:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
1000663b:	83 4e 04 ff          	or     DWORD PTR [esi+0x4],0xffffffff
1000663f:	89 06                	mov    DWORD PTR [esi],eax
10006641:	33 c0                	xor    eax,eax
10006643:	40                   	inc    eax
10006644:	eb 07                	jmp    0x1000664d
10006646:	e8 6c fb ff ff       	call   0x100061b7
1000664b:	33 c0                	xor    eax,eax
1000664d:	5e                   	pop    esi
1000664e:	5f                   	pop    edi
1000664f:	c3                   	ret    
10006650:	56                   	push   esi
10006651:	57                   	push   edi
10006652:	33 f6                	xor    esi,esi
10006654:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
10006658:	e8 fb d3 ff ff       	call   0x10003a58
1000665d:	8b f8                	mov    edi,eax
1000665f:	85 ff                	test   edi,edi
10006661:	59                   	pop    ecx
10006662:	75 27                	jne    0x1000668b
10006664:	39 05 44 5a 01 10    	cmp    DWORD PTR ds:0x10015a44,eax
1000666a:	76 1f                	jbe    0x1000668b
1000666c:	56                   	push   esi
1000666d:	ff 15 a8 d0 00 10    	call   DWORD PTR ds:0x1000d0a8
10006673:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
10006679:	3b 05 44 5a 01 10    	cmp    eax,DWORD PTR ds:0x10015a44
1000667f:	76 03                	jbe    0x10006684
10006681:	83 c8 ff             	or     eax,0xffffffff
10006684:	83 f8 ff             	cmp    eax,0xffffffff
10006687:	8b f0                	mov    esi,eax
10006689:	75 c9                	jne    0x10006654
1000668b:	8b c7                	mov    eax,edi
1000668d:	5f                   	pop    edi
1000668e:	5e                   	pop    esi
1000668f:	c3                   	ret    
10006690:	56                   	push   esi
10006691:	57                   	push   edi
10006692:	33 f6                	xor    esi,esi
10006694:	6a 00                	push   0x0
10006696:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
1000669a:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
1000669e:	e8 f5 2b 00 00       	call   0x10009298
100066a3:	8b f8                	mov    edi,eax
100066a5:	83 c4 0c             	add    esp,0xc
100066a8:	85 ff                	test   edi,edi
100066aa:	75 27                	jne    0x100066d3
100066ac:	39 05 44 5a 01 10    	cmp    DWORD PTR ds:0x10015a44,eax
100066b2:	76 1f                	jbe    0x100066d3
100066b4:	56                   	push   esi
100066b5:	ff 15 a8 d0 00 10    	call   DWORD PTR ds:0x1000d0a8
100066bb:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
100066c1:	3b 05 44 5a 01 10    	cmp    eax,DWORD PTR ds:0x10015a44
100066c7:	76 03                	jbe    0x100066cc
100066c9:	83 c8 ff             	or     eax,0xffffffff
100066cc:	83 f8 ff             	cmp    eax,0xffffffff
100066cf:	8b f0                	mov    esi,eax
100066d1:	75 c1                	jne    0x10006694
100066d3:	8b c7                	mov    eax,edi
100066d5:	5f                   	pop    edi
100066d6:	5e                   	pop    esi
100066d7:	c3                   	ret    
100066d8:	56                   	push   esi
100066d9:	57                   	push   edi
100066da:	33 f6                	xor    esi,esi
100066dc:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
100066e0:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
100066e4:	e8 cd 2c 00 00       	call   0x100093b6
100066e9:	8b f8                	mov    edi,eax
100066eb:	85 ff                	test   edi,edi
100066ed:	59                   	pop    ecx
100066ee:	59                   	pop    ecx
100066ef:	75 2d                	jne    0x1000671e
100066f1:	39 44 24 10          	cmp    DWORD PTR [esp+0x10],eax
100066f5:	74 27                	je     0x1000671e
100066f7:	39 05 44 5a 01 10    	cmp    DWORD PTR ds:0x10015a44,eax
100066fd:	76 1f                	jbe    0x1000671e
100066ff:	56                   	push   esi
10006700:	ff 15 a8 d0 00 10    	call   DWORD PTR ds:0x1000d0a8
10006706:	8d 86 e8 03 00 00    	lea    eax,[esi+0x3e8]
1000670c:	3b 05 44 5a 01 10    	cmp    eax,DWORD PTR ds:0x10015a44
10006712:	76 03                	jbe    0x10006717
10006714:	83 c8 ff             	or     eax,0xffffffff
10006717:	83 f8 ff             	cmp    eax,0xffffffff
1000671a:	8b f0                	mov    esi,eax
1000671c:	75 be                	jne    0x100066dc
1000671e:	8b c7                	mov    eax,edi
10006720:	5f                   	pop    edi
10006721:	5e                   	pop    esi
10006722:	c3                   	ret    
10006723:	6a 54                	push   0x54
10006725:	68 a8 e4 00 10       	push   0x1000e4a8
1000672a:	e8 f9 f0 ff ff       	call   0x10005828
1000672f:	33 ff                	xor    edi,edi
10006731:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10006734:	8d 45 9c             	lea    eax,[ebp-0x64]
10006737:	50                   	push   eax
10006738:	ff 15 b4 d0 00 10    	call   DWORD PTR ds:0x1000d0b4
1000673e:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10006745:	6a 40                	push   0x40
10006747:	6a 20                	push   0x20
10006749:	5e                   	pop    esi
1000674a:	56                   	push   esi
1000674b:	e8 40 ff ff ff       	call   0x10006690
10006750:	59                   	pop    ecx
10006751:	59                   	pop    ecx
10006752:	3b c7                	cmp    eax,edi
10006754:	0f 84 14 02 00 00    	je     0x1000696e
1000675a:	a3 c0 5c 01 10       	mov    ds:0x10015cc0,eax
1000675f:	89 35 a4 5c 01 10    	mov    DWORD PTR ds:0x10015ca4,esi
10006765:	8d 88 00 08 00 00    	lea    ecx,[eax+0x800]
1000676b:	eb 30                	jmp    0x1000679d
1000676d:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
10006771:	83 08 ff             	or     DWORD PTR [eax],0xffffffff
10006774:	c6 40 05 0a          	mov    BYTE PTR [eax+0x5],0xa
10006778:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
1000677b:	c6 40 24 00          	mov    BYTE PTR [eax+0x24],0x0
1000677f:	c6 40 25 0a          	mov    BYTE PTR [eax+0x25],0xa
10006783:	c6 40 26 0a          	mov    BYTE PTR [eax+0x26],0xa
10006787:	89 78 38             	mov    DWORD PTR [eax+0x38],edi
1000678a:	c6 40 34 00          	mov    BYTE PTR [eax+0x34],0x0
1000678e:	83 c0 40             	add    eax,0x40
10006791:	8b 0d c0 5c 01 10    	mov    ecx,DWORD PTR ds:0x10015cc0
10006797:	81 c1 00 08 00 00    	add    ecx,0x800
1000679d:	3b c1                	cmp    eax,ecx
1000679f:	72 cc                	jb     0x1000676d
100067a1:	66 39 7d ce          	cmp    WORD PTR [ebp-0x32],di
100067a5:	0f 84 0a 01 00 00    	je     0x100068b5
100067ab:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
100067ae:	3b c7                	cmp    eax,edi
100067b0:	0f 84 ff 00 00 00    	je     0x100068b5
100067b6:	8b 38                	mov    edi,DWORD PTR [eax]
100067b8:	8d 58 04             	lea    ebx,[eax+0x4]
100067bb:	8d 04 3b             	lea    eax,[ebx+edi*1]
100067be:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100067c1:	be 00 08 00 00       	mov    esi,0x800
100067c6:	3b fe                	cmp    edi,esi
100067c8:	7c 02                	jl     0x100067cc
100067ca:	8b fe                	mov    edi,esi
100067cc:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
100067d3:	eb 5b                	jmp    0x10006830
100067d5:	6a 40                	push   0x40
100067d7:	6a 20                	push   0x20
100067d9:	e8 b2 fe ff ff       	call   0x10006690
100067de:	59                   	pop    ecx
100067df:	59                   	pop    ecx
100067e0:	85 c0                	test   eax,eax
100067e2:	74 56                	je     0x1000683a
100067e4:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
100067e7:	8d 0c 8d c0 5c 01 10 	lea    ecx,[ecx*4+0x10015cc0]
100067ee:	89 01                	mov    DWORD PTR [ecx],eax
100067f0:	83 05 a4 5c 01 10 20 	add    DWORD PTR ds:0x10015ca4,0x20
100067f7:	8d 90 00 08 00 00    	lea    edx,[eax+0x800]
100067fd:	eb 2a                	jmp    0x10006829
100067ff:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
10006803:	83 08 ff             	or     DWORD PTR [eax],0xffffffff
10006806:	c6 40 05 0a          	mov    BYTE PTR [eax+0x5],0xa
1000680a:	83 60 08 00          	and    DWORD PTR [eax+0x8],0x0
1000680e:	80 60 24 80          	and    BYTE PTR [eax+0x24],0x80
10006812:	c6 40 25 0a          	mov    BYTE PTR [eax+0x25],0xa
10006816:	c6 40 26 0a          	mov    BYTE PTR [eax+0x26],0xa
1000681a:	83 60 38 00          	and    DWORD PTR [eax+0x38],0x0
1000681e:	c6 40 34 00          	mov    BYTE PTR [eax+0x34],0x0
10006822:	83 c0 40             	add    eax,0x40
10006825:	8b 11                	mov    edx,DWORD PTR [ecx]
10006827:	03 d6                	add    edx,esi
10006829:	3b c2                	cmp    eax,edx
1000682b:	72 d2                	jb     0x100067ff
1000682d:	ff 45 e0             	inc    DWORD PTR [ebp-0x20]
10006830:	39 3d a4 5c 01 10    	cmp    DWORD PTR ds:0x10015ca4,edi
10006836:	7c 9d                	jl     0x100067d5
10006838:	eb 06                	jmp    0x10006840
1000683a:	8b 3d a4 5c 01 10    	mov    edi,DWORD PTR ds:0x10015ca4
10006840:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
10006844:	85 ff                	test   edi,edi
10006846:	7e 6d                	jle    0x100068b5
10006848:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
1000684b:	8b 08                	mov    ecx,DWORD PTR [eax]
1000684d:	83 f9 ff             	cmp    ecx,0xffffffff
10006850:	74 56                	je     0x100068a8
10006852:	83 f9 fe             	cmp    ecx,0xfffffffe
10006855:	74 51                	je     0x100068a8
10006857:	8a 03                	mov    al,BYTE PTR [ebx]
10006859:	a8 01                	test   al,0x1
1000685b:	74 4b                	je     0x100068a8
1000685d:	a8 08                	test   al,0x8
1000685f:	75 0b                	jne    0x1000686c
10006861:	51                   	push   ecx
10006862:	ff 15 b0 d0 00 10    	call   DWORD PTR ds:0x1000d0b0
10006868:	85 c0                	test   eax,eax
1000686a:	74 3c                	je     0x100068a8
1000686c:	8b 75 e0             	mov    esi,DWORD PTR [ebp-0x20]
1000686f:	8b c6                	mov    eax,esi
10006871:	c1 f8 05             	sar    eax,0x5
10006874:	83 e6 1f             	and    esi,0x1f
10006877:	c1 e6 06             	shl    esi,0x6
1000687a:	03 34 85 c0 5c 01 10 	add    esi,DWORD PTR [eax*4+0x10015cc0]
10006881:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10006884:	8b 00                	mov    eax,DWORD PTR [eax]
10006886:	89 06                	mov    DWORD PTR [esi],eax
10006888:	8a 03                	mov    al,BYTE PTR [ebx]
1000688a:	88 46 04             	mov    BYTE PTR [esi+0x4],al
1000688d:	68 a0 0f 00 00       	push   0xfa0
10006892:	8d 46 0c             	lea    eax,[esi+0xc]
10006895:	50                   	push   eax
10006896:	e8 3e 1f 00 00       	call   0x100087d9
1000689b:	59                   	pop    ecx
1000689c:	59                   	pop    ecx
1000689d:	85 c0                	test   eax,eax
1000689f:	0f 84 c9 00 00 00    	je     0x1000696e
100068a5:	ff 46 08             	inc    DWORD PTR [esi+0x8]
100068a8:	ff 45 e0             	inc    DWORD PTR [ebp-0x20]
100068ab:	43                   	inc    ebx
100068ac:	83 45 e4 04          	add    DWORD PTR [ebp-0x1c],0x4
100068b0:	39 7d e0             	cmp    DWORD PTR [ebp-0x20],edi
100068b3:	7c 93                	jl     0x10006848
100068b5:	33 db                	xor    ebx,ebx
100068b7:	8b f3                	mov    esi,ebx
100068b9:	c1 e6 06             	shl    esi,0x6
100068bc:	03 35 c0 5c 01 10    	add    esi,DWORD PTR ds:0x10015cc0
100068c2:	8b 06                	mov    eax,DWORD PTR [esi]
100068c4:	83 f8 ff             	cmp    eax,0xffffffff
100068c7:	74 0b                	je     0x100068d4
100068c9:	83 f8 fe             	cmp    eax,0xfffffffe
100068cc:	74 06                	je     0x100068d4
100068ce:	80 4e 04 80          	or     BYTE PTR [esi+0x4],0x80
100068d2:	eb 72                	jmp    0x10006946
100068d4:	c6 46 04 81          	mov    BYTE PTR [esi+0x4],0x81
100068d8:	85 db                	test   ebx,ebx
100068da:	75 05                	jne    0x100068e1
100068dc:	6a f6                	push   0xfffffff6
100068de:	58                   	pop    eax
100068df:	eb 0a                	jmp    0x100068eb
100068e1:	8b c3                	mov    eax,ebx
100068e3:	48                   	dec    eax
100068e4:	f7 d8                	neg    eax
100068e6:	1b c0                	sbb    eax,eax
100068e8:	83 c0 f5             	add    eax,0xfffffff5
100068eb:	50                   	push   eax
100068ec:	ff 15 74 d0 00 10    	call   DWORD PTR ds:0x1000d074
100068f2:	8b f8                	mov    edi,eax
100068f4:	83 ff ff             	cmp    edi,0xffffffff
100068f7:	74 43                	je     0x1000693c
100068f9:	85 ff                	test   edi,edi
100068fb:	74 3f                	je     0x1000693c
100068fd:	57                   	push   edi
100068fe:	ff 15 b0 d0 00 10    	call   DWORD PTR ds:0x1000d0b0
10006904:	85 c0                	test   eax,eax
10006906:	74 34                	je     0x1000693c
10006908:	89 3e                	mov    DWORD PTR [esi],edi
1000690a:	25 ff 00 00 00       	and    eax,0xff
1000690f:	83 f8 02             	cmp    eax,0x2
10006912:	75 06                	jne    0x1000691a
10006914:	80 4e 04 40          	or     BYTE PTR [esi+0x4],0x40
10006918:	eb 09                	jmp    0x10006923
1000691a:	83 f8 03             	cmp    eax,0x3
1000691d:	75 04                	jne    0x10006923
1000691f:	80 4e 04 08          	or     BYTE PTR [esi+0x4],0x8
10006923:	68 a0 0f 00 00       	push   0xfa0
10006928:	8d 46 0c             	lea    eax,[esi+0xc]
1000692b:	50                   	push   eax
1000692c:	e8 a8 1e 00 00       	call   0x100087d9
10006931:	59                   	pop    ecx
10006932:	59                   	pop    ecx
10006933:	85 c0                	test   eax,eax
10006935:	74 37                	je     0x1000696e
10006937:	ff 46 08             	inc    DWORD PTR [esi+0x8]
1000693a:	eb 0a                	jmp    0x10006946
1000693c:	80 4e 04 40          	or     BYTE PTR [esi+0x4],0x40
10006940:	c7 06 fe ff ff ff    	mov    DWORD PTR [esi],0xfffffffe
10006946:	43                   	inc    ebx
10006947:	83 fb 03             	cmp    ebx,0x3
1000694a:	0f 8c 67 ff ff ff    	jl     0x100068b7
10006950:	ff 35 a4 5c 01 10    	push   DWORD PTR ds:0x10015ca4
10006956:	ff 15 ac d0 00 10    	call   DWORD PTR ds:0x1000d0ac
1000695c:	33 c0                	xor    eax,eax
1000695e:	eb 11                	jmp    0x10006971
10006960:	33 c0                	xor    eax,eax
10006962:	40                   	inc    eax
10006963:	c3                   	ret    
10006964:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10006967:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000696e:	83 c8 ff             	or     eax,0xffffffff
10006971:	e8 f7 ee ff ff       	call   0x1000586d
10006976:	c3                   	ret    
10006977:	56                   	push   esi
10006978:	57                   	push   edi
10006979:	be c0 5c 01 10       	mov    esi,0x10015cc0
1000697e:	8b 3e                	mov    edi,DWORD PTR [esi]
10006980:	85 ff                	test   edi,edi
10006982:	74 31                	je     0x100069b5
10006984:	8d 87 00 08 00 00    	lea    eax,[edi+0x800]
1000698a:	eb 1a                	jmp    0x100069a6
1000698c:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
10006990:	74 0a                	je     0x1000699c
10006992:	8d 47 0c             	lea    eax,[edi+0xc]
10006995:	50                   	push   eax
10006996:	ff 15 5c d0 00 10    	call   DWORD PTR ds:0x1000d05c
1000699c:	8b 06                	mov    eax,DWORD PTR [esi]
1000699e:	83 c7 40             	add    edi,0x40
100069a1:	05 00 08 00 00       	add    eax,0x800
100069a6:	3b f8                	cmp    edi,eax
100069a8:	72 e2                	jb     0x1000698c
100069aa:	ff 36                	push   DWORD PTR [esi]
100069ac:	e8 ca cf ff ff       	call   0x1000397b
100069b1:	83 26 00             	and    DWORD PTR [esi],0x0
100069b4:	59                   	pop    ecx
100069b5:	83 c6 04             	add    esi,0x4
100069b8:	81 fe c0 5d 01 10    	cmp    esi,0x10015dc0
100069be:	7c be                	jl     0x1000697e
100069c0:	5f                   	pop    edi
100069c1:	5e                   	pop    esi
100069c2:	c3                   	ret    
100069c3:	53                   	push   ebx
100069c4:	33 db                	xor    ebx,ebx
100069c6:	39 1d cc 5d 01 10    	cmp    DWORD PTR ds:0x10015dcc,ebx
100069cc:	56                   	push   esi
100069cd:	57                   	push   edi
100069ce:	75 05                	jne    0x100069d5
100069d0:	e8 77 0d 00 00       	call   0x1000774c
100069d5:	8b 35 3c 52 01 10    	mov    esi,DWORD PTR ds:0x1001523c
100069db:	33 ff                	xor    edi,edi
100069dd:	3b f3                	cmp    esi,ebx
100069df:	75 18                	jne    0x100069f9
100069e1:	83 c8 ff             	or     eax,0xffffffff
100069e4:	e9 9b 00 00 00       	jmp    0x10006a84
100069e9:	3c 3d                	cmp    al,0x3d
100069eb:	74 01                	je     0x100069ee
100069ed:	47                   	inc    edi
100069ee:	56                   	push   esi
100069ef:	e8 1c 18 00 00       	call   0x10008210
100069f4:	59                   	pop    ecx
100069f5:	8d 74 06 01          	lea    esi,[esi+eax*1+0x1]
100069f9:	8a 06                	mov    al,BYTE PTR [esi]
100069fb:	3a c3                	cmp    al,bl
100069fd:	75 ea                	jne    0x100069e9
100069ff:	6a 04                	push   0x4
10006a01:	47                   	inc    edi
10006a02:	57                   	push   edi
10006a03:	e8 88 fc ff ff       	call   0x10006690
10006a08:	8b f8                	mov    edi,eax
10006a0a:	3b fb                	cmp    edi,ebx
10006a0c:	59                   	pop    ecx
10006a0d:	59                   	pop    ecx
10006a0e:	89 3d c8 53 01 10    	mov    DWORD PTR ds:0x100153c8,edi
10006a14:	74 cb                	je     0x100069e1
10006a16:	8b 35 3c 52 01 10    	mov    esi,DWORD PTR ds:0x1001523c
10006a1c:	55                   	push   ebp
10006a1d:	eb 40                	jmp    0x10006a5f
10006a1f:	56                   	push   esi
10006a20:	e8 eb 17 00 00       	call   0x10008210
10006a25:	8b e8                	mov    ebp,eax
10006a27:	45                   	inc    ebp
10006a28:	80 3e 3d             	cmp    BYTE PTR [esi],0x3d
10006a2b:	59                   	pop    ecx
10006a2c:	74 2f                	je     0x10006a5d
10006a2e:	6a 01                	push   0x1
10006a30:	55                   	push   ebp
10006a31:	e8 5a fc ff ff       	call   0x10006690
10006a36:	3b c3                	cmp    eax,ebx
10006a38:	59                   	pop    ecx
10006a39:	59                   	pop    ecx
10006a3a:	89 07                	mov    DWORD PTR [edi],eax
10006a3c:	74 4a                	je     0x10006a88
10006a3e:	56                   	push   esi
10006a3f:	55                   	push   ebp
10006a40:	50                   	push   eax
10006a41:	e8 55 18 00 00       	call   0x1000829b
10006a46:	83 c4 0c             	add    esp,0xc
10006a49:	85 c0                	test   eax,eax
10006a4b:	74 0d                	je     0x10006a5a
10006a4d:	53                   	push   ebx
10006a4e:	53                   	push   ebx
10006a4f:	53                   	push   ebx
10006a50:	53                   	push   ebx
10006a51:	53                   	push   ebx
10006a52:	e8 23 10 00 00       	call   0x10007a7a
10006a57:	83 c4 14             	add    esp,0x14
10006a5a:	83 c7 04             	add    edi,0x4
10006a5d:	03 f5                	add    esi,ebp
10006a5f:	38 1e                	cmp    BYTE PTR [esi],bl
10006a61:	75 bc                	jne    0x10006a1f
10006a63:	ff 35 3c 52 01 10    	push   DWORD PTR ds:0x1001523c
10006a69:	e8 0d cf ff ff       	call   0x1000397b
10006a6e:	89 1d 3c 52 01 10    	mov    DWORD PTR ds:0x1001523c,ebx
10006a74:	89 1f                	mov    DWORD PTR [edi],ebx
10006a76:	c7 05 c0 5d 01 10 01 	mov    DWORD PTR ds:0x10015dc0,0x1
10006a7d:	00 00 00 
10006a80:	33 c0                	xor    eax,eax
10006a82:	59                   	pop    ecx
10006a83:	5d                   	pop    ebp
10006a84:	5f                   	pop    edi
10006a85:	5e                   	pop    esi
10006a86:	5b                   	pop    ebx
10006a87:	c3                   	ret    
10006a88:	ff 35 c8 53 01 10    	push   DWORD PTR ds:0x100153c8
10006a8e:	e8 e8 ce ff ff       	call   0x1000397b
10006a93:	89 1d c8 53 01 10    	mov    DWORD PTR ds:0x100153c8,ebx
10006a99:	83 c8 ff             	or     eax,0xffffffff
10006a9c:	eb e4                	jmp    0x10006a82
10006a9e:	55                   	push   ebp
10006a9f:	8b ec                	mov    ebp,esp
10006aa1:	51                   	push   ecx
10006aa2:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10006aa5:	53                   	push   ebx
10006aa6:	33 c0                	xor    eax,eax
10006aa8:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
10006aab:	56                   	push   esi
10006aac:	89 07                	mov    DWORD PTR [edi],eax
10006aae:	8b f2                	mov    esi,edx
10006ab0:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10006ab3:	c7 01 01 00 00 00    	mov    DWORD PTR [ecx],0x1
10006ab9:	74 09                	je     0x10006ac4
10006abb:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10006abe:	83 45 08 04          	add    DWORD PTR [ebp+0x8],0x4
10006ac2:	89 13                	mov    DWORD PTR [ebx],edx
10006ac4:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006ac7:	80 3e 22             	cmp    BYTE PTR [esi],0x22
10006aca:	75 10                	jne    0x10006adc
10006acc:	33 c0                	xor    eax,eax
10006ace:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
10006ad1:	b3 22                	mov    bl,0x22
10006ad3:	0f 94 c0             	sete   al
10006ad6:	46                   	inc    esi
10006ad7:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006ada:	eb 3c                	jmp    0x10006b18
10006adc:	ff 07                	inc    DWORD PTR [edi]
10006ade:	85 d2                	test   edx,edx
10006ae0:	74 08                	je     0x10006aea
10006ae2:	8a 06                	mov    al,BYTE PTR [esi]
10006ae4:	88 02                	mov    BYTE PTR [edx],al
10006ae6:	42                   	inc    edx
10006ae7:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
10006aea:	8a 1e                	mov    bl,BYTE PTR [esi]
10006aec:	0f b6 c3             	movzx  eax,bl
10006aef:	50                   	push   eax
10006af0:	46                   	inc    esi
10006af1:	e8 2c 2b 00 00       	call   0x10009622
10006af6:	85 c0                	test   eax,eax
10006af8:	59                   	pop    ecx
10006af9:	74 13                	je     0x10006b0e
10006afb:	ff 07                	inc    DWORD PTR [edi]
10006afd:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
10006b01:	74 0a                	je     0x10006b0d
10006b03:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006b06:	8a 06                	mov    al,BYTE PTR [esi]
10006b08:	ff 45 0c             	inc    DWORD PTR [ebp+0xc]
10006b0b:	88 01                	mov    BYTE PTR [ecx],al
10006b0d:	46                   	inc    esi
10006b0e:	84 db                	test   bl,bl
10006b10:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10006b13:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10006b16:	74 32                	je     0x10006b4a
10006b18:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10006b1c:	75 a9                	jne    0x10006ac7
10006b1e:	80 fb 20             	cmp    bl,0x20
10006b21:	74 05                	je     0x10006b28
10006b23:	80 fb 09             	cmp    bl,0x9
10006b26:	75 9f                	jne    0x10006ac7
10006b28:	85 d2                	test   edx,edx
10006b2a:	74 04                	je     0x10006b30
10006b2c:	c6 42 ff 00          	mov    BYTE PTR [edx-0x1],0x0
10006b30:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10006b34:	80 3e 00             	cmp    BYTE PTR [esi],0x0
10006b37:	0f 84 e9 00 00 00    	je     0x10006c26
10006b3d:	8a 06                	mov    al,BYTE PTR [esi]
10006b3f:	3c 20                	cmp    al,0x20
10006b41:	74 04                	je     0x10006b47
10006b43:	3c 09                	cmp    al,0x9
10006b45:	75 06                	jne    0x10006b4d
10006b47:	46                   	inc    esi
10006b48:	eb f3                	jmp    0x10006b3d
10006b4a:	4e                   	dec    esi
10006b4b:	eb e3                	jmp    0x10006b30
10006b4d:	80 3e 00             	cmp    BYTE PTR [esi],0x0
10006b50:	0f 84 d0 00 00 00    	je     0x10006c26
10006b56:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
10006b5a:	74 09                	je     0x10006b65
10006b5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10006b5f:	83 45 08 04          	add    DWORD PTR [ebp+0x8],0x4
10006b63:	89 10                	mov    DWORD PTR [eax],edx
10006b65:	ff 01                	inc    DWORD PTR [ecx]
10006b67:	33 db                	xor    ebx,ebx
10006b69:	43                   	inc    ebx
10006b6a:	33 c9                	xor    ecx,ecx
10006b6c:	eb 02                	jmp    0x10006b70
10006b6e:	46                   	inc    esi
10006b6f:	41                   	inc    ecx
10006b70:	80 3e 5c             	cmp    BYTE PTR [esi],0x5c
10006b73:	74 f9                	je     0x10006b6e
10006b75:	80 3e 22             	cmp    BYTE PTR [esi],0x22
10006b78:	75 26                	jne    0x10006ba0
10006b7a:	f6 c1 01             	test   cl,0x1
10006b7d:	75 1f                	jne    0x10006b9e
10006b7f:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10006b83:	74 0c                	je     0x10006b91
10006b85:	8d 46 01             	lea    eax,[esi+0x1]
10006b88:	80 38 22             	cmp    BYTE PTR [eax],0x22
10006b8b:	75 04                	jne    0x10006b91
10006b8d:	8b f0                	mov    esi,eax
10006b8f:	eb 0d                	jmp    0x10006b9e
10006b91:	33 c0                	xor    eax,eax
10006b93:	33 db                	xor    ebx,ebx
10006b95:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
10006b98:	0f 94 c0             	sete   al
10006b9b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006b9e:	d1 e9                	shr    ecx,1
10006ba0:	85 c9                	test   ecx,ecx
10006ba2:	74 12                	je     0x10006bb6
10006ba4:	49                   	dec    ecx
10006ba5:	85 d2                	test   edx,edx
10006ba7:	74 04                	je     0x10006bad
10006ba9:	c6 02 5c             	mov    BYTE PTR [edx],0x5c
10006bac:	42                   	inc    edx
10006bad:	ff 07                	inc    DWORD PTR [edi]
10006baf:	85 c9                	test   ecx,ecx
10006bb1:	75 f1                	jne    0x10006ba4
10006bb3:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
10006bb6:	8a 06                	mov    al,BYTE PTR [esi]
10006bb8:	84 c0                	test   al,al
10006bba:	74 55                	je     0x10006c11
10006bbc:	83 7d fc 00          	cmp    DWORD PTR [ebp-0x4],0x0
10006bc0:	75 08                	jne    0x10006bca
10006bc2:	3c 20                	cmp    al,0x20
10006bc4:	74 4b                	je     0x10006c11
10006bc6:	3c 09                	cmp    al,0x9
10006bc8:	74 47                	je     0x10006c11
10006bca:	85 db                	test   ebx,ebx
10006bcc:	74 3d                	je     0x10006c0b
10006bce:	85 d2                	test   edx,edx
10006bd0:	0f be c0             	movsx  eax,al
10006bd3:	50                   	push   eax
10006bd4:	74 23                	je     0x10006bf9
10006bd6:	e8 47 2a 00 00       	call   0x10009622
10006bdb:	85 c0                	test   eax,eax
10006bdd:	59                   	pop    ecx
10006bde:	74 0d                	je     0x10006bed
10006be0:	8a 06                	mov    al,BYTE PTR [esi]
10006be2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006be5:	ff 45 0c             	inc    DWORD PTR [ebp+0xc]
10006be8:	88 01                	mov    BYTE PTR [ecx],al
10006bea:	46                   	inc    esi
10006beb:	ff 07                	inc    DWORD PTR [edi]
10006bed:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006bf0:	8a 06                	mov    al,BYTE PTR [esi]
10006bf2:	ff 45 0c             	inc    DWORD PTR [ebp+0xc]
10006bf5:	88 01                	mov    BYTE PTR [ecx],al
10006bf7:	eb 0d                	jmp    0x10006c06
10006bf9:	e8 24 2a 00 00       	call   0x10009622
10006bfe:	85 c0                	test   eax,eax
10006c00:	59                   	pop    ecx
10006c01:	74 03                	je     0x10006c06
10006c03:	46                   	inc    esi
10006c04:	ff 07                	inc    DWORD PTR [edi]
10006c06:	ff 07                	inc    DWORD PTR [edi]
10006c08:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
10006c0b:	46                   	inc    esi
10006c0c:	e9 56 ff ff ff       	jmp    0x10006b67
10006c11:	85 d2                	test   edx,edx
10006c13:	74 07                	je     0x10006c1c
10006c15:	c6 02 00             	mov    BYTE PTR [edx],0x0
10006c18:	42                   	inc    edx
10006c19:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
10006c1c:	ff 07                	inc    DWORD PTR [edi]
10006c1e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10006c21:	e9 0e ff ff ff       	jmp    0x10006b34
10006c26:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10006c29:	85 c0                	test   eax,eax
10006c2b:	5e                   	pop    esi
10006c2c:	5b                   	pop    ebx
10006c2d:	74 03                	je     0x10006c32
10006c2f:	83 20 00             	and    DWORD PTR [eax],0x0
10006c32:	ff 01                	inc    DWORD PTR [ecx]
10006c34:	c9                   	leave  
10006c35:	c3                   	ret    
10006c36:	55                   	push   ebp
10006c37:	8b ec                	mov    ebp,esp
10006c39:	83 ec 0c             	sub    esp,0xc
10006c3c:	53                   	push   ebx
10006c3d:	33 db                	xor    ebx,ebx
10006c3f:	39 1d cc 5d 01 10    	cmp    DWORD PTR ds:0x10015dcc,ebx
10006c45:	56                   	push   esi
10006c46:	57                   	push   edi
10006c47:	75 05                	jne    0x10006c4e
10006c49:	e8 fe 0a 00 00       	call   0x1000774c
10006c4e:	68 04 01 00 00       	push   0x104
10006c53:	be 48 5a 01 10       	mov    esi,0x10015a48
10006c58:	56                   	push   esi
10006c59:	53                   	push   ebx
10006c5a:	88 1d 4c 5b 01 10    	mov    BYTE PTR ds:0x10015b4c,bl
10006c60:	ff 15 78 d0 00 10    	call   DWORD PTR ds:0x1000d078
10006c66:	a1 fc 5d 01 10       	mov    eax,ds:0x10015dfc
10006c6b:	3b c3                	cmp    eax,ebx
10006c6d:	89 35 d8 53 01 10    	mov    DWORD PTR ds:0x100153d8,esi
10006c73:	74 07                	je     0x10006c7c
10006c75:	38 18                	cmp    BYTE PTR [eax],bl
10006c77:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10006c7a:	75 03                	jne    0x10006c7f
10006c7c:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
10006c7f:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
10006c82:	8d 45 f8             	lea    eax,[ebp-0x8]
10006c85:	50                   	push   eax
10006c86:	53                   	push   ebx
10006c87:	53                   	push   ebx
10006c88:	8d 7d f4             	lea    edi,[ebp-0xc]
10006c8b:	e8 0e fe ff ff       	call   0x10006a9e
10006c90:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006c93:	83 c4 0c             	add    esp,0xc
10006c96:	3d ff ff ff 3f       	cmp    eax,0x3fffffff
10006c9b:	73 4a                	jae    0x10006ce7
10006c9d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
10006ca0:	83 f9 ff             	cmp    ecx,0xffffffff
10006ca3:	73 42                	jae    0x10006ce7
10006ca5:	8b f8                	mov    edi,eax
10006ca7:	c1 e7 02             	shl    edi,0x2
10006caa:	8d 04 0f             	lea    eax,[edi+ecx*1]
10006cad:	3b c1                	cmp    eax,ecx
10006caf:	72 36                	jb     0x10006ce7
10006cb1:	50                   	push   eax
10006cb2:	e8 99 f9 ff ff       	call   0x10006650
10006cb7:	8b f0                	mov    esi,eax
10006cb9:	3b f3                	cmp    esi,ebx
10006cbb:	59                   	pop    ecx
10006cbc:	74 29                	je     0x10006ce7
10006cbe:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
10006cc1:	8d 45 f8             	lea    eax,[ebp-0x8]
10006cc4:	50                   	push   eax
10006cc5:	03 fe                	add    edi,esi
10006cc7:	57                   	push   edi
10006cc8:	56                   	push   esi
10006cc9:	8d 7d f4             	lea    edi,[ebp-0xc]
10006ccc:	e8 cd fd ff ff       	call   0x10006a9e
10006cd1:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006cd4:	83 c4 0c             	add    esp,0xc
10006cd7:	48                   	dec    eax
10006cd8:	a3 bc 53 01 10       	mov    ds:0x100153bc,eax
10006cdd:	89 35 c0 53 01 10    	mov    DWORD PTR ds:0x100153c0,esi
10006ce3:	33 c0                	xor    eax,eax
10006ce5:	eb 03                	jmp    0x10006cea
10006ce7:	83 c8 ff             	or     eax,0xffffffff
10006cea:	5f                   	pop    edi
10006ceb:	5e                   	pop    esi
10006cec:	5b                   	pop    ebx
10006ced:	c9                   	leave  
10006cee:	c3                   	ret    
10006cef:	51                   	push   ecx
10006cf0:	51                   	push   ecx
10006cf1:	a1 50 5b 01 10       	mov    eax,ds:0x10015b50
10006cf6:	53                   	push   ebx
10006cf7:	55                   	push   ebp
10006cf8:	56                   	push   esi
10006cf9:	57                   	push   edi
10006cfa:	8b 3d c8 d0 00 10    	mov    edi,DWORD PTR ds:0x1000d0c8
10006d00:	33 db                	xor    ebx,ebx
10006d02:	33 f6                	xor    esi,esi
10006d04:	3b c3                	cmp    eax,ebx
10006d06:	6a 02                	push   0x2
10006d08:	5d                   	pop    ebp
10006d09:	75 2d                	jne    0x10006d38
10006d0b:	ff d7                	call   edi
10006d0d:	8b f0                	mov    esi,eax
10006d0f:	3b f3                	cmp    esi,ebx
10006d11:	74 0c                	je     0x10006d1f
10006d13:	c7 05 50 5b 01 10 01 	mov    DWORD PTR ds:0x10015b50,0x1
10006d1a:	00 00 00 
10006d1d:	eb 22                	jmp    0x10006d41
10006d1f:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10006d25:	83 f8 78             	cmp    eax,0x78
10006d28:	75 09                	jne    0x10006d33
10006d2a:	8b c5                	mov    eax,ebp
10006d2c:	a3 50 5b 01 10       	mov    ds:0x10015b50,eax
10006d31:	eb 05                	jmp    0x10006d38
10006d33:	a1 50 5b 01 10       	mov    eax,ds:0x10015b50
10006d38:	83 f8 01             	cmp    eax,0x1
10006d3b:	0f 85 84 00 00 00    	jne    0x10006dc5
10006d41:	3b f3                	cmp    esi,ebx
10006d43:	75 0f                	jne    0x10006d54
10006d45:	ff d7                	call   edi
10006d47:	8b f0                	mov    esi,eax
10006d49:	3b f3                	cmp    esi,ebx
10006d4b:	75 07                	jne    0x10006d54
10006d4d:	33 c0                	xor    eax,eax
10006d4f:	e9 c9 00 00 00       	jmp    0x10006e1d
10006d54:	66 39 1e             	cmp    WORD PTR [esi],bx
10006d57:	8b c6                	mov    eax,esi
10006d59:	74 0e                	je     0x10006d69
10006d5b:	03 c5                	add    eax,ebp
10006d5d:	66 39 18             	cmp    WORD PTR [eax],bx
10006d60:	75 f9                	jne    0x10006d5b
10006d62:	03 c5                	add    eax,ebp
10006d64:	66 39 18             	cmp    WORD PTR [eax],bx
10006d67:	75 f2                	jne    0x10006d5b
10006d69:	8b 3d c4 d0 00 10    	mov    edi,DWORD PTR ds:0x1000d0c4
10006d6f:	53                   	push   ebx
10006d70:	53                   	push   ebx
10006d71:	53                   	push   ebx
10006d72:	2b c6                	sub    eax,esi
10006d74:	53                   	push   ebx
10006d75:	d1 f8                	sar    eax,1
10006d77:	40                   	inc    eax
10006d78:	50                   	push   eax
10006d79:	56                   	push   esi
10006d7a:	53                   	push   ebx
10006d7b:	53                   	push   ebx
10006d7c:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
10006d80:	ff d7                	call   edi
10006d82:	8b e8                	mov    ebp,eax
10006d84:	3b eb                	cmp    ebp,ebx
10006d86:	74 32                	je     0x10006dba
10006d88:	55                   	push   ebp
10006d89:	e8 c2 f8 ff ff       	call   0x10006650
10006d8e:	3b c3                	cmp    eax,ebx
10006d90:	59                   	pop    ecx
10006d91:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
10006d95:	74 23                	je     0x10006dba
10006d97:	53                   	push   ebx
10006d98:	53                   	push   ebx
10006d99:	55                   	push   ebp
10006d9a:	50                   	push   eax
10006d9b:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
10006d9f:	56                   	push   esi
10006da0:	53                   	push   ebx
10006da1:	53                   	push   ebx
10006da2:	ff d7                	call   edi
10006da4:	85 c0                	test   eax,eax
10006da6:	75 0e                	jne    0x10006db6
10006da8:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10006dac:	e8 ca cb ff ff       	call   0x1000397b
10006db1:	59                   	pop    ecx
10006db2:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
10006db6:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
10006dba:	56                   	push   esi
10006dbb:	ff 15 c0 d0 00 10    	call   DWORD PTR ds:0x1000d0c0
10006dc1:	8b c3                	mov    eax,ebx
10006dc3:	eb 58                	jmp    0x10006e1d
10006dc5:	3b c5                	cmp    eax,ebp
10006dc7:	74 04                	je     0x10006dcd
10006dc9:	3b c3                	cmp    eax,ebx
10006dcb:	75 80                	jne    0x10006d4d
10006dcd:	ff 15 bc d0 00 10    	call   DWORD PTR ds:0x1000d0bc
10006dd3:	8b f0                	mov    esi,eax
10006dd5:	3b f3                	cmp    esi,ebx
10006dd7:	0f 84 70 ff ff ff    	je     0x10006d4d
10006ddd:	38 1e                	cmp    BYTE PTR [esi],bl
10006ddf:	74 0a                	je     0x10006deb
10006de1:	40                   	inc    eax
10006de2:	38 18                	cmp    BYTE PTR [eax],bl
10006de4:	75 fb                	jne    0x10006de1
10006de6:	40                   	inc    eax
10006de7:	38 18                	cmp    BYTE PTR [eax],bl
10006de9:	75 f6                	jne    0x10006de1
10006deb:	2b c6                	sub    eax,esi
10006ded:	40                   	inc    eax
10006dee:	8b e8                	mov    ebp,eax
10006df0:	55                   	push   ebp
10006df1:	e8 5a f8 ff ff       	call   0x10006650
10006df6:	8b f8                	mov    edi,eax
10006df8:	3b fb                	cmp    edi,ebx
10006dfa:	59                   	pop    ecx
10006dfb:	75 0c                	jne    0x10006e09
10006dfd:	56                   	push   esi
10006dfe:	ff 15 b8 d0 00 10    	call   DWORD PTR ds:0x1000d0b8
10006e04:	e9 44 ff ff ff       	jmp    0x10006d4d
10006e09:	55                   	push   ebp
10006e0a:	56                   	push   esi
10006e0b:	57                   	push   edi
10006e0c:	e8 2f 28 00 00       	call   0x10009640
10006e11:	83 c4 0c             	add    esp,0xc
10006e14:	56                   	push   esi
10006e15:	ff 15 b8 d0 00 10    	call   DWORD PTR ds:0x1000d0b8
10006e1b:	8b c7                	mov    eax,edi
10006e1d:	5f                   	pop    edi
10006e1e:	5e                   	pop    esi
10006e1f:	5d                   	pop    ebp
10006e20:	5b                   	pop    ebx
10006e21:	59                   	pop    ecx
10006e22:	59                   	pop    ecx
10006e23:	c3                   	ret    
10006e24:	56                   	push   esi
10006e25:	57                   	push   edi
10006e26:	b8 b0 e3 00 10       	mov    eax,0x1000e3b0
10006e2b:	bf b0 e3 00 10       	mov    edi,0x1000e3b0
10006e30:	3b c7                	cmp    eax,edi
10006e32:	8b f0                	mov    esi,eax
10006e34:	73 0f                	jae    0x10006e45
10006e36:	8b 06                	mov    eax,DWORD PTR [esi]
10006e38:	85 c0                	test   eax,eax
10006e3a:	74 02                	je     0x10006e3e
10006e3c:	ff d0                	call   eax
10006e3e:	83 c6 04             	add    esi,0x4
10006e41:	3b f7                	cmp    esi,edi
10006e43:	72 f1                	jb     0x10006e36
10006e45:	5f                   	pop    edi
10006e46:	5e                   	pop    esi
10006e47:	c3                   	ret    
10006e48:	56                   	push   esi
10006e49:	57                   	push   edi
10006e4a:	b8 b8 e3 00 10       	mov    eax,0x1000e3b8
10006e4f:	bf b8 e3 00 10       	mov    edi,0x1000e3b8
10006e54:	3b c7                	cmp    eax,edi
10006e56:	8b f0                	mov    esi,eax
10006e58:	73 0f                	jae    0x10006e69
10006e5a:	8b 06                	mov    eax,DWORD PTR [esi]
10006e5c:	85 c0                	test   eax,eax
10006e5e:	74 02                	je     0x10006e62
10006e60:	ff d0                	call   eax
10006e62:	83 c6 04             	add    esi,0x4
10006e65:	3b f7                	cmp    esi,edi
10006e67:	72 f1                	jb     0x10006e5a
10006e69:	5f                   	pop    edi
10006e6a:	5e                   	pop    esi
10006e6b:	c3                   	ret    
10006e6c:	55                   	push   ebp
10006e6d:	8b ec                	mov    ebp,esp
10006e6f:	51                   	push   ecx
10006e70:	51                   	push   ecx
10006e71:	56                   	push   esi
10006e72:	e8 3c f4 ff ff       	call   0x100062b3
10006e77:	8b f0                	mov    esi,eax
10006e79:	85 f6                	test   esi,esi
10006e7b:	0f 84 46 01 00 00    	je     0x10006fc7
10006e81:	8b 56 5c             	mov    edx,DWORD PTR [esi+0x5c]
10006e84:	a1 64 04 01 10       	mov    eax,ds:0x10010464
10006e89:	57                   	push   edi
10006e8a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10006e8d:	8b ca                	mov    ecx,edx
10006e8f:	53                   	push   ebx
10006e90:	39 39                	cmp    DWORD PTR [ecx],edi
10006e92:	74 0e                	je     0x10006ea2
10006e94:	8b d8                	mov    ebx,eax
10006e96:	6b db 0c             	imul   ebx,ebx,0xc
10006e99:	83 c1 0c             	add    ecx,0xc
10006e9c:	03 da                	add    ebx,edx
10006e9e:	3b cb                	cmp    ecx,ebx
10006ea0:	72 ee                	jb     0x10006e90
10006ea2:	6b c0 0c             	imul   eax,eax,0xc
10006ea5:	03 c2                	add    eax,edx
10006ea7:	3b c8                	cmp    ecx,eax
10006ea9:	73 08                	jae    0x10006eb3
10006eab:	39 39                	cmp    DWORD PTR [ecx],edi
10006ead:	75 04                	jne    0x10006eb3
10006eaf:	8b c1                	mov    eax,ecx
10006eb1:	eb 02                	jmp    0x10006eb5
10006eb3:	33 c0                	xor    eax,eax
10006eb5:	85 c0                	test   eax,eax
10006eb7:	74 0a                	je     0x10006ec3
10006eb9:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
10006ebc:	85 db                	test   ebx,ebx
10006ebe:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10006ec1:	75 07                	jne    0x10006eca
10006ec3:	33 c0                	xor    eax,eax
10006ec5:	e9 fb 00 00 00       	jmp    0x10006fc5
10006eca:	83 fb 05             	cmp    ebx,0x5
10006ecd:	75 0c                	jne    0x10006edb
10006ecf:	83 60 08 00          	and    DWORD PTR [eax+0x8],0x0
10006ed3:	33 c0                	xor    eax,eax
10006ed5:	40                   	inc    eax
10006ed6:	e9 ea 00 00 00       	jmp    0x10006fc5
10006edb:	83 fb 01             	cmp    ebx,0x1
10006ede:	0f 84 de 00 00 00    	je     0x10006fc2
10006ee4:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
10006ee7:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
10006eea:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
10006eed:	89 4e 60             	mov    DWORD PTR [esi+0x60],ecx
10006ef0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
10006ef3:	83 f9 08             	cmp    ecx,0x8
10006ef6:	0f 85 b8 00 00 00    	jne    0x10006fb4
10006efc:	8b 0d 58 04 01 10    	mov    ecx,DWORD PTR ds:0x10010458
10006f02:	8b 3d 5c 04 01 10    	mov    edi,DWORD PTR ds:0x1001045c
10006f08:	8b d1                	mov    edx,ecx
10006f0a:	03 f9                	add    edi,ecx
10006f0c:	3b d7                	cmp    edx,edi
10006f0e:	7d 24                	jge    0x10006f34
10006f10:	6b c9 0c             	imul   ecx,ecx,0xc
10006f13:	8b 7e 5c             	mov    edi,DWORD PTR [esi+0x5c]
10006f16:	83 64 39 08 00       	and    DWORD PTR [ecx+edi*1+0x8],0x0
10006f1b:	8b 3d 58 04 01 10    	mov    edi,DWORD PTR ds:0x10010458
10006f21:	8b 1d 5c 04 01 10    	mov    ebx,DWORD PTR ds:0x1001045c
10006f27:	42                   	inc    edx
10006f28:	03 df                	add    ebx,edi
10006f2a:	83 c1 0c             	add    ecx,0xc
10006f2d:	3b d3                	cmp    edx,ebx
10006f2f:	7c e2                	jl     0x10006f13
10006f31:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
10006f34:	8b 00                	mov    eax,DWORD PTR [eax]
10006f36:	3d 8e 00 00 c0       	cmp    eax,0xc000008e
10006f3b:	8b 7e 64             	mov    edi,DWORD PTR [esi+0x64]
10006f3e:	75 09                	jne    0x10006f49
10006f40:	c7 46 64 83 00 00 00 	mov    DWORD PTR [esi+0x64],0x83
10006f47:	eb 5e                	jmp    0x10006fa7
10006f49:	3d 90 00 00 c0       	cmp    eax,0xc0000090
10006f4e:	75 09                	jne    0x10006f59
10006f50:	c7 46 64 81 00 00 00 	mov    DWORD PTR [esi+0x64],0x81
10006f57:	eb 4e                	jmp    0x10006fa7
10006f59:	3d 91 00 00 c0       	cmp    eax,0xc0000091
10006f5e:	75 09                	jne    0x10006f69
10006f60:	c7 46 64 84 00 00 00 	mov    DWORD PTR [esi+0x64],0x84
10006f67:	eb 3e                	jmp    0x10006fa7
10006f69:	3d 93 00 00 c0       	cmp    eax,0xc0000093
10006f6e:	75 09                	jne    0x10006f79
10006f70:	c7 46 64 85 00 00 00 	mov    DWORD PTR [esi+0x64],0x85
10006f77:	eb 2e                	jmp    0x10006fa7
10006f79:	3d 8d 00 00 c0       	cmp    eax,0xc000008d
10006f7e:	75 09                	jne    0x10006f89
10006f80:	c7 46 64 82 00 00 00 	mov    DWORD PTR [esi+0x64],0x82
10006f87:	eb 1e                	jmp    0x10006fa7
10006f89:	3d 8f 00 00 c0       	cmp    eax,0xc000008f
10006f8e:	75 09                	jne    0x10006f99
10006f90:	c7 46 64 86 00 00 00 	mov    DWORD PTR [esi+0x64],0x86
10006f97:	eb 0e                	jmp    0x10006fa7
10006f99:	3d 92 00 00 c0       	cmp    eax,0xc0000092
10006f9e:	75 07                	jne    0x10006fa7
10006fa0:	c7 46 64 8a 00 00 00 	mov    DWORD PTR [esi+0x64],0x8a
10006fa7:	ff 76 64             	push   DWORD PTR [esi+0x64]
10006faa:	6a 08                	push   0x8
10006fac:	ff d3                	call   ebx
10006fae:	59                   	pop    ecx
10006faf:	89 7e 64             	mov    DWORD PTR [esi+0x64],edi
10006fb2:	eb 07                	jmp    0x10006fbb
10006fb4:	83 60 08 00          	and    DWORD PTR [eax+0x8],0x0
10006fb8:	51                   	push   ecx
10006fb9:	ff d3                	call   ebx
10006fbb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10006fbe:	59                   	pop    ecx
10006fbf:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
10006fc2:	83 c8 ff             	or     eax,0xffffffff
10006fc5:	5b                   	pop    ebx
10006fc6:	5f                   	pop    edi
10006fc7:	5e                   	pop    esi
10006fc8:	c9                   	leave  
10006fc9:	c3                   	ret    
10006fca:	b8 63 73 6d e0       	mov    eax,0xe06d7363
10006fcf:	39 44 24 04          	cmp    DWORD PTR [esp+0x4],eax
10006fd3:	75 0d                	jne    0x10006fe2
10006fd5:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10006fd9:	50                   	push   eax
10006fda:	e8 8d fe ff ff       	call   0x10006e6c
10006fdf:	59                   	pop    ecx
10006fe0:	59                   	pop    ecx
10006fe1:	c3                   	ret    
10006fe2:	33 c0                	xor    eax,eax
10006fe4:	c3                   	ret    
10006fe5:	55                   	push   ebp
10006fe6:	8b ec                	mov    ebp,esp
10006fe8:	83 ec 10             	sub    esp,0x10
10006feb:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10006ff0:	83 65 f8 00          	and    DWORD PTR [ebp-0x8],0x0
10006ff4:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10006ff8:	53                   	push   ebx
10006ff9:	57                   	push   edi
10006ffa:	bf 4e e6 40 bb       	mov    edi,0xbb40e64e
10006fff:	3b c7                	cmp    eax,edi
10007001:	bb 00 00 ff ff       	mov    ebx,0xffff0000
10007006:	74 0d                	je     0x10007015
10007008:	85 c3                	test   ebx,eax
1000700a:	74 09                	je     0x10007015
1000700c:	f7 d0                	not    eax
1000700e:	a3 14 00 01 10       	mov    ds:0x10010014,eax
10007013:	eb 60                	jmp    0x10007075
10007015:	56                   	push   esi
10007016:	8d 45 f8             	lea    eax,[ebp-0x8]
10007019:	50                   	push   eax
1000701a:	ff 15 d8 d0 00 10    	call   DWORD PTR ds:0x1000d0d8
10007020:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
10007023:	33 75 f8             	xor    esi,DWORD PTR [ebp-0x8]
10007026:	ff 15 d4 d0 00 10    	call   DWORD PTR ds:0x1000d0d4
1000702c:	33 f0                	xor    esi,eax
1000702e:	ff 15 3c d0 00 10    	call   DWORD PTR ds:0x1000d03c
10007034:	33 f0                	xor    esi,eax
10007036:	ff 15 d0 d0 00 10    	call   DWORD PTR ds:0x1000d0d0
1000703c:	33 f0                	xor    esi,eax
1000703e:	8d 45 f0             	lea    eax,[ebp-0x10]
10007041:	50                   	push   eax
10007042:	ff 15 cc d0 00 10    	call   DWORD PTR ds:0x1000d0cc
10007048:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000704b:	33 45 f0             	xor    eax,DWORD PTR [ebp-0x10]
1000704e:	33 f0                	xor    esi,eax
10007050:	3b f7                	cmp    esi,edi
10007052:	75 07                	jne    0x1000705b
10007054:	be 4f e6 40 bb       	mov    esi,0xbb40e64f
10007059:	eb 0b                	jmp    0x10007066
1000705b:	85 f3                	test   ebx,esi
1000705d:	75 07                	jne    0x10007066
1000705f:	8b c6                	mov    eax,esi
10007061:	c1 e0 10             	shl    eax,0x10
10007064:	0b f0                	or     esi,eax
10007066:	89 35 10 00 01 10    	mov    DWORD PTR ds:0x10010010,esi
1000706c:	f7 d6                	not    esi
1000706e:	89 35 14 00 01 10    	mov    DWORD PTR ds:0x10010014,esi
10007074:	5e                   	pop    esi
10007075:	5f                   	pop    edi
10007076:	5b                   	pop    ebx
10007077:	c9                   	leave  
10007078:	c3                   	ret    
10007079:	cc                   	int3
1000707a:	cc                   	int3
1000707b:	cc                   	int3
1000707c:	cc                   	int3
1000707d:	cc                   	int3
1000707e:	cc                   	int3
1000707f:	cc                   	int3
