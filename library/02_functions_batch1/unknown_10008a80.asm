10008a80:	55                   	push   ebp
10008a81:	8b ec                	mov    ebp,esp
10008a83:	6a fe                	push   0xfffffffe
10008a85:	68 68 e5 00 10       	push   0x1000e568
10008a8a:	68 90 58 00 10       	push   0x10005890
10008a8f:	64 a1 00 00 00 00    	mov    eax,fs:0x0
10008a95:	50                   	push   eax
10008a96:	83 ec 08             	sub    esp,0x8
10008a99:	53                   	push   ebx
10008a9a:	56                   	push   esi
10008a9b:	57                   	push   edi
10008a9c:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10008aa1:	31 45 f8             	xor    DWORD PTR [ebp-0x8],eax
10008aa4:	33 c5                	xor    eax,ebp
10008aa6:	50                   	push   eax
10008aa7:	8d 45 f0             	lea    eax,[ebp-0x10]
10008aaa:	64 a3 00 00 00 00    	mov    fs:0x0,eax
10008ab0:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
10008ab3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
10008aba:	68 00 00 00 10       	push   0x10000000
10008abf:	e8 3c ff ff ff       	call   0x10008a00
10008ac4:	83 c4 04             	add    esp,0x4
10008ac7:	85 c0                	test   eax,eax
10008ac9:	74 55                	je     0x10008b20
10008acb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008ace:	2d 00 00 00 10       	sub    eax,0x10000000
10008ad3:	50                   	push   eax
10008ad4:	68 00 00 00 10       	push   0x10000000
10008ad9:	e8 52 ff ff ff       	call   0x10008a30
10008ade:	83 c4 08             	add    esp,0x8
10008ae1:	85 c0                	test   eax,eax
10008ae3:	74 3b                	je     0x10008b20
10008ae5:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
10008ae8:	c1 e8 1f             	shr    eax,0x1f
10008aeb:	f7 d0                	not    eax
10008aed:	83 e0 01             	and    eax,0x1
10008af0:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008af7:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10008afa:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10008b01:	59                   	pop    ecx
10008b02:	5f                   	pop    edi
10008b03:	5e                   	pop    esi
10008b04:	5b                   	pop    ebx
10008b05:	8b e5                	mov    esp,ebp
10008b07:	5d                   	pop    ebp
10008b08:	c3                   	ret    
10008b09:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10008b0c:	8b 08                	mov    ecx,DWORD PTR [eax]
10008b0e:	8b 01                	mov    eax,DWORD PTR [ecx]
10008b10:	33 d2                	xor    edx,edx
10008b12:	3d 05 00 00 c0       	cmp    eax,0xc0000005
10008b17:	0f 94 c2             	sete   dl
10008b1a:	8b c2                	mov    eax,edx
10008b1c:	c3                   	ret    
10008b1d:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10008b20:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008b27:	33 c0                	xor    eax,eax
10008b29:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10008b2c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10008b33:	59                   	pop    ecx
10008b34:	5f                   	pop    edi
10008b35:	5e                   	pop    esi
10008b36:	5b                   	pop    ebx
10008b37:	8b e5                	mov    esp,ebp
10008b39:	5d                   	pop    ebp
10008b3a:	c3                   	ret    
10008b3b:	51                   	push   ecx
10008b3c:	53                   	push   ebx
10008b3d:	55                   	push   ebp
10008b3e:	56                   	push   esi
10008b3f:	57                   	push   edi
10008b40:	ff 35 c8 5d 01 10    	push   DWORD PTR ds:0x10015dc8
10008b46:	e8 c3 d5 ff ff       	call   0x1000610e
10008b4b:	ff 35 c4 5d 01 10    	push   DWORD PTR ds:0x10015dc4
10008b51:	8b f0                	mov    esi,eax
10008b53:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
10008b57:	e8 b2 d5 ff ff       	call   0x1000610e
10008b5c:	8b f8                	mov    edi,eax
10008b5e:	3b fe                	cmp    edi,esi
10008b60:	59                   	pop    ecx
10008b61:	59                   	pop    ecx
10008b62:	0f 82 84 00 00 00    	jb     0x10008bec
10008b68:	8b df                	mov    ebx,edi
10008b6a:	2b de                	sub    ebx,esi
10008b6c:	8d 6b 04             	lea    ebp,[ebx+0x4]
10008b6f:	83 fd 04             	cmp    ebp,0x4
10008b72:	72 78                	jb     0x10008bec
10008b74:	56                   	push   esi
10008b75:	e8 c5 39 00 00       	call   0x1000c53f
10008b7a:	8b f0                	mov    esi,eax
10008b7c:	3b f5                	cmp    esi,ebp
10008b7e:	59                   	pop    ecx
10008b7f:	73 4a                	jae    0x10008bcb
10008b81:	b8 00 08 00 00       	mov    eax,0x800
10008b86:	3b f0                	cmp    esi,eax
10008b88:	73 02                	jae    0x10008b8c
10008b8a:	8b c6                	mov    eax,esi
10008b8c:	03 c6                	add    eax,esi
10008b8e:	3b c6                	cmp    eax,esi
10008b90:	72 10                	jb     0x10008ba2
10008b92:	50                   	push   eax
10008b93:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
10008b97:	e8 3c db ff ff       	call   0x100066d8
10008b9c:	85 c0                	test   eax,eax
10008b9e:	59                   	pop    ecx
10008b9f:	59                   	pop    ecx
10008ba0:	75 17                	jne    0x10008bb9
10008ba2:	8d 46 10             	lea    eax,[esi+0x10]
10008ba5:	3b c6                	cmp    eax,esi
10008ba7:	72 43                	jb     0x10008bec
10008ba9:	50                   	push   eax
10008baa:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
10008bae:	e8 25 db ff ff       	call   0x100066d8
10008bb3:	85 c0                	test   eax,eax
10008bb5:	59                   	pop    ecx
10008bb6:	59                   	pop    ecx
10008bb7:	74 33                	je     0x10008bec
10008bb9:	c1 fb 02             	sar    ebx,0x2
10008bbc:	50                   	push   eax
10008bbd:	8d 3c 98             	lea    edi,[eax+ebx*4]
10008bc0:	e8 d2 d4 ff ff       	call   0x10006097
10008bc5:	59                   	pop    ecx
10008bc6:	a3 c8 5d 01 10       	mov    ds:0x10015dc8,eax
10008bcb:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
10008bcf:	e8 c3 d4 ff ff       	call   0x10006097
10008bd4:	89 07                	mov    DWORD PTR [edi],eax
10008bd6:	83 c7 04             	add    edi,0x4
10008bd9:	57                   	push   edi
10008bda:	e8 b8 d4 ff ff       	call   0x10006097
10008bdf:	59                   	pop    ecx
10008be0:	a3 c4 5d 01 10       	mov    ds:0x10015dc4,eax
10008be5:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
10008be9:	59                   	pop    ecx
10008bea:	eb 02                	jmp    0x10008bee
10008bec:	33 c0                	xor    eax,eax
10008bee:	5f                   	pop    edi
10008bef:	5e                   	pop    esi
10008bf0:	5d                   	pop    ebp
10008bf1:	5b                   	pop    ebx
10008bf2:	59                   	pop    ecx
10008bf3:	c3                   	ret    
10008bf4:	56                   	push   esi
10008bf5:	6a 04                	push   0x4
10008bf7:	6a 20                	push   0x20
10008bf9:	e8 92 da ff ff       	call   0x10006690
10008bfe:	8b f0                	mov    esi,eax
10008c00:	56                   	push   esi
10008c01:	e8 91 d4 ff ff       	call   0x10006097
10008c06:	83 c4 0c             	add    esp,0xc
10008c09:	85 f6                	test   esi,esi
10008c0b:	a3 c8 5d 01 10       	mov    ds:0x10015dc8,eax
10008c10:	a3 c4 5d 01 10       	mov    ds:0x10015dc4,eax
10008c15:	75 05                	jne    0x10008c1c
10008c17:	6a 18                	push   0x18
10008c19:	58                   	pop    eax
10008c1a:	5e                   	pop    esi
10008c1b:	c3                   	ret    
10008c1c:	83 26 00             	and    DWORD PTR [esi],0x0
10008c1f:	33 c0                	xor    eax,eax
10008c21:	5e                   	pop    esi
10008c22:	c3                   	ret    
10008c23:	6a 0c                	push   0xc
10008c25:	68 88 e5 00 10       	push   0x1000e588
10008c2a:	e8 f9 cb ff ff       	call   0x10005828
10008c2f:	e8 51 ce ff ff       	call   0x10005a85
10008c34:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10008c38:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10008c3b:	e8 fb fe ff ff       	call   0x10008b3b
10008c40:	59                   	pop    ecx
10008c41:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10008c44:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008c4b:	e8 09 00 00 00       	call   0x10008c59
10008c50:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10008c53:	e8 15 cc ff ff       	call   0x1000586d
10008c58:	c3                   	ret    
10008c59:	e8 30 ce ff ff       	call   0x10005a8e
10008c5e:	c3                   	ret    
10008c5f:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10008c63:	e8 bb ff ff ff       	call   0x10008c23
10008c68:	f7 d8                	neg    eax
10008c6a:	1b c0                	sbb    eax,eax
10008c6c:	f7 d8                	neg    eax
10008c6e:	59                   	pop    ecx
10008c6f:	48                   	dec    eax
10008c70:	c3                   	ret    
10008c71:	6a 08                	push   0x8
10008c73:	68 a8 e5 00 10       	push   0x1000e5a8
10008c78:	e8 ab cb ff ff       	call   0x10005828
10008c7d:	e8 a8 d6 ff ff       	call   0x1000632a
10008c82:	8b 40 78             	mov    eax,DWORD PTR [eax+0x78]
10008c85:	85 c0                	test   eax,eax
10008c87:	74 16                	je     0x10008c9f
10008c89:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10008c8d:	ff d0                	call   eax
10008c8f:	eb 07                	jmp    0x10008c98
10008c91:	33 c0                	xor    eax,eax
10008c93:	40                   	inc    eax
10008c94:	c3                   	ret    
10008c95:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10008c98:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008c9f:	e8 3e 39 00 00       	call   0x1000c5e2
10008ca4:	e8 c4 cb ff ff       	call   0x1000586d
10008ca9:	c3                   	ret    
10008caa:	68 71 8c 00 10       	push   0x10008c71
10008caf:	e8 e3 d3 ff ff       	call   0x10006097
10008cb4:	59                   	pop    ecx
10008cb5:	a3 a0 5b 01 10       	mov    ds:0x10015ba0,eax
10008cba:	c3                   	ret    
10008cbb:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008cbf:	a3 a4 5b 01 10       	mov    ds:0x10015ba4,eax
10008cc4:	a3 a8 5b 01 10       	mov    ds:0x10015ba8,eax
10008cc9:	a3 ac 5b 01 10       	mov    ds:0x10015bac,eax
10008cce:	a3 b0 5b 01 10       	mov    ds:0x10015bb0,eax
10008cd3:	c3                   	ret    
10008cd4:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008cd8:	8b 0d 64 04 01 10    	mov    ecx,DWORD PTR ds:0x10010464
10008cde:	56                   	push   esi
10008cdf:	39 50 04             	cmp    DWORD PTR [eax+0x4],edx
10008ce2:	74 10                	je     0x10008cf4
10008ce4:	8b f1                	mov    esi,ecx
10008ce6:	6b f6 0c             	imul   esi,esi,0xc
10008ce9:	03 74 24 08          	add    esi,DWORD PTR [esp+0x8]
10008ced:	83 c0 0c             	add    eax,0xc
10008cf0:	3b c6                	cmp    eax,esi
10008cf2:	72 eb                	jb     0x10008cdf
10008cf4:	6b c9 0c             	imul   ecx,ecx,0xc
10008cf7:	03 4c 24 08          	add    ecx,DWORD PTR [esp+0x8]
10008cfb:	5e                   	pop    esi
10008cfc:	3b c1                	cmp    eax,ecx
10008cfe:	73 05                	jae    0x10008d05
10008d00:	39 50 04             	cmp    DWORD PTR [eax+0x4],edx
10008d03:	74 02                	je     0x10008d07
10008d05:	33 c0                	xor    eax,eax
10008d07:	c3                   	ret    
10008d08:	ff 35 ac 5b 01 10    	push   DWORD PTR ds:0x10015bac
10008d0e:	e8 fb d3 ff ff       	call   0x1000610e
10008d13:	59                   	pop    ecx
10008d14:	c3                   	ret    
10008d15:	6a 20                	push   0x20
10008d17:	68 c8 e5 00 10       	push   0x1000e5c8
10008d1c:	e8 07 cb ff ff       	call   0x10005828
10008d21:	33 ff                	xor    edi,edi
10008d23:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
10008d26:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
10008d29:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10008d2c:	83 fb 0b             	cmp    ebx,0xb
10008d2f:	7f 4c                	jg     0x10008d7d
10008d31:	74 15                	je     0x10008d48
10008d33:	8b c3                	mov    eax,ebx
10008d35:	6a 02                	push   0x2
10008d37:	59                   	pop    ecx
10008d38:	2b c1                	sub    eax,ecx
10008d3a:	74 22                	je     0x10008d5e
10008d3c:	2b c1                	sub    eax,ecx
10008d3e:	74 08                	je     0x10008d48
10008d40:	2b c1                	sub    eax,ecx
10008d42:	74 64                	je     0x10008da8
10008d44:	2b c1                	sub    eax,ecx
10008d46:	75 44                	jne    0x10008d8c
10008d48:	e8 66 d5 ff ff       	call   0x100062b3
10008d4d:	8b f8                	mov    edi,eax
10008d4f:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
10008d52:	85 ff                	test   edi,edi
10008d54:	75 14                	jne    0x10008d6a
10008d56:	83 c8 ff             	or     eax,0xffffffff
10008d59:	e9 61 01 00 00       	jmp    0x10008ebf
10008d5e:	be a4 5b 01 10       	mov    esi,0x10015ba4
10008d63:	a1 a4 5b 01 10       	mov    eax,ds:0x10015ba4
10008d68:	eb 60                	jmp    0x10008dca
10008d6a:	ff 77 5c             	push   DWORD PTR [edi+0x5c]
10008d6d:	8b d3                	mov    edx,ebx
10008d6f:	e8 60 ff ff ff       	call   0x10008cd4
10008d74:	8b f0                	mov    esi,eax
10008d76:	83 c6 08             	add    esi,0x8
10008d79:	8b 06                	mov    eax,DWORD PTR [esi]
10008d7b:	eb 5a                	jmp    0x10008dd7
10008d7d:	8b c3                	mov    eax,ebx
10008d7f:	83 e8 0f             	sub    eax,0xf
10008d82:	74 3c                	je     0x10008dc0
10008d84:	83 e8 06             	sub    eax,0x6
10008d87:	74 2b                	je     0x10008db4
10008d89:	48                   	dec    eax
10008d8a:	74 1c                	je     0x10008da8
10008d8c:	e8 b5 bc ff ff       	call   0x10004a46
10008d91:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
10008d97:	33 c0                	xor    eax,eax
10008d99:	50                   	push   eax
10008d9a:	50                   	push   eax
10008d9b:	50                   	push   eax
10008d9c:	50                   	push   eax
10008d9d:	50                   	push   eax
10008d9e:	e8 d3 ed ff ff       	call   0x10007b76
10008da3:	83 c4 14             	add    esp,0x14
10008da6:	eb ae                	jmp    0x10008d56
10008da8:	be ac 5b 01 10       	mov    esi,0x10015bac
10008dad:	a1 ac 5b 01 10       	mov    eax,ds:0x10015bac
10008db2:	eb 16                	jmp    0x10008dca
10008db4:	be a8 5b 01 10       	mov    esi,0x10015ba8
10008db9:	a1 a8 5b 01 10       	mov    eax,ds:0x10015ba8
10008dbe:	eb 0a                	jmp    0x10008dca
10008dc0:	be b0 5b 01 10       	mov    esi,0x10015bb0
10008dc5:	a1 b0 5b 01 10       	mov    eax,ds:0x10015bb0
10008dca:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
10008dd1:	50                   	push   eax
10008dd2:	e8 37 d3 ff ff       	call   0x1000610e
10008dd7:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
10008dda:	59                   	pop    ecx
10008ddb:	33 c0                	xor    eax,eax
10008ddd:	83 7d e0 01          	cmp    DWORD PTR [ebp-0x20],0x1
10008de1:	0f 84 d8 00 00 00    	je     0x10008ebf
10008de7:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
10008dea:	75 07                	jne    0x10008df3
10008dec:	6a 03                	push   0x3
10008dee:	e8 c3 ce ff ff       	call   0x10005cb6
10008df3:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
10008df6:	74 07                	je     0x10008dff
10008df8:	50                   	push   eax
10008df9:	e8 fa be ff ff       	call   0x10004cf8
10008dfe:	59                   	pop    ecx
10008dff:	33 c0                	xor    eax,eax
10008e01:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10008e04:	83 fb 08             	cmp    ebx,0x8
10008e07:	74 0a                	je     0x10008e13
10008e09:	83 fb 0b             	cmp    ebx,0xb
10008e0c:	74 05                	je     0x10008e13
10008e0e:	83 fb 04             	cmp    ebx,0x4
10008e11:	75 1b                	jne    0x10008e2e
10008e13:	8b 4f 60             	mov    ecx,DWORD PTR [edi+0x60]
10008e16:	89 4d d4             	mov    DWORD PTR [ebp-0x2c],ecx
10008e19:	89 47 60             	mov    DWORD PTR [edi+0x60],eax
10008e1c:	83 fb 08             	cmp    ebx,0x8
10008e1f:	75 40                	jne    0x10008e61
10008e21:	8b 4f 64             	mov    ecx,DWORD PTR [edi+0x64]
10008e24:	89 4d d0             	mov    DWORD PTR [ebp-0x30],ecx
10008e27:	c7 47 64 8c 00 00 00 	mov    DWORD PTR [edi+0x64],0x8c
10008e2e:	83 fb 08             	cmp    ebx,0x8
10008e31:	75 2e                	jne    0x10008e61
10008e33:	8b 0d 58 04 01 10    	mov    ecx,DWORD PTR ds:0x10010458
10008e39:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
10008e3c:	8b 0d 5c 04 01 10    	mov    ecx,DWORD PTR ds:0x1001045c
10008e42:	8b 15 58 04 01 10    	mov    edx,DWORD PTR ds:0x10010458
10008e48:	03 ca                	add    ecx,edx
10008e4a:	39 4d dc             	cmp    DWORD PTR [ebp-0x24],ecx
10008e4d:	7d 19                	jge    0x10008e68
10008e4f:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
10008e52:	6b c9 0c             	imul   ecx,ecx,0xc
10008e55:	8b 57 5c             	mov    edx,DWORD PTR [edi+0x5c]
10008e58:	89 44 11 08          	mov    DWORD PTR [ecx+edx*1+0x8],eax
10008e5c:	ff 45 dc             	inc    DWORD PTR [ebp-0x24]
10008e5f:	eb db                	jmp    0x10008e3c
10008e61:	e8 9f d2 ff ff       	call   0x10006105
10008e66:	89 06                	mov    DWORD PTR [esi],eax
10008e68:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008e6f:	e8 15 00 00 00       	call   0x10008e89
10008e74:	83 fb 08             	cmp    ebx,0x8
10008e77:	75 1f                	jne    0x10008e98
10008e79:	ff 77 64             	push   DWORD PTR [edi+0x64]
10008e7c:	53                   	push   ebx
10008e7d:	ff 55 e0             	call   DWORD PTR [ebp-0x20]
10008e80:	59                   	pop    ecx
10008e81:	eb 19                	jmp    0x10008e9c
10008e83:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10008e86:	8b 7d d8             	mov    edi,DWORD PTR [ebp-0x28]
10008e89:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
10008e8d:	74 08                	je     0x10008e97
10008e8f:	6a 00                	push   0x0
10008e91:	e8 8a bd ff ff       	call   0x10004c20
10008e96:	59                   	pop    ecx
10008e97:	c3                   	ret    
10008e98:	53                   	push   ebx
10008e99:	ff 55 e0             	call   DWORD PTR [ebp-0x20]
10008e9c:	59                   	pop    ecx
10008e9d:	83 fb 08             	cmp    ebx,0x8
10008ea0:	74 0a                	je     0x10008eac
10008ea2:	83 fb 0b             	cmp    ebx,0xb
10008ea5:	74 05                	je     0x10008eac
10008ea7:	83 fb 04             	cmp    ebx,0x4
10008eaa:	75 11                	jne    0x10008ebd
10008eac:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
10008eaf:	89 47 60             	mov    DWORD PTR [edi+0x60],eax
10008eb2:	83 fb 08             	cmp    ebx,0x8
10008eb5:	75 06                	jne    0x10008ebd
10008eb7:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
10008eba:	89 47 64             	mov    DWORD PTR [edi+0x64],eax
10008ebd:	33 c0                	xor    eax,eax
10008ebf:	e8 a9 c9 ff ff       	call   0x1000586d
10008ec4:	c3                   	ret    
10008ec5:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008ec9:	a3 b8 5b 01 10       	mov    ds:0x10015bb8,eax
10008ece:	c3                   	ret    
10008ecf:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008ed3:	a3 c4 5b 01 10       	mov    ds:0x10015bc4,eax
10008ed8:	c3                   	ret    
10008ed9:	55                   	push   ebp
10008eda:	8b ec                	mov    ebp,esp
10008edc:	83 ec 20             	sub    esp,0x20
10008edf:	53                   	push   ebx
10008ee0:	56                   	push   esi
10008ee1:	57                   	push   edi
10008ee2:	e8 1e d2 ff ff       	call   0x10006105
10008ee7:	33 db                	xor    ebx,ebx
10008ee9:	39 1d c8 5b 01 10    	cmp    DWORD PTR ds:0x10015bc8,ebx
10008eef:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10008ef2:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
10008ef5:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10008ef8:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
10008efb:	0f 85 ae 00 00 00    	jne    0x10008faf
10008f01:	68 a4 d9 00 10       	push   0x1000d9a4
10008f06:	ff 15 f4 d0 00 10    	call   DWORD PTR ds:0x1000d0f4
10008f0c:	8b f8                	mov    edi,eax
10008f0e:	3b fb                	cmp    edi,ebx
10008f10:	0f 84 79 01 00 00    	je     0x1000908f
10008f16:	8b 35 4c d0 00 10    	mov    esi,DWORD PTR ds:0x1000d04c
10008f1c:	68 98 d9 00 10       	push   0x1000d998
10008f21:	57                   	push   edi
10008f22:	ff d6                	call   esi
10008f24:	3b c3                	cmp    eax,ebx
10008f26:	0f 84 63 01 00 00    	je     0x1000908f
10008f2c:	50                   	push   eax
10008f2d:	e8 65 d1 ff ff       	call   0x10006097
10008f32:	c7 04 24 88 d9 00 10 	mov    DWORD PTR [esp],0x1000d988
10008f39:	57                   	push   edi
10008f3a:	a3 c8 5b 01 10       	mov    ds:0x10015bc8,eax
10008f3f:	ff d6                	call   esi
10008f41:	50                   	push   eax
10008f42:	e8 50 d1 ff ff       	call   0x10006097
10008f47:	c7 04 24 74 d9 00 10 	mov    DWORD PTR [esp],0x1000d974
10008f4e:	57                   	push   edi
10008f4f:	a3 cc 5b 01 10       	mov    ds:0x10015bcc,eax
10008f54:	ff d6                	call   esi
10008f56:	50                   	push   eax
10008f57:	e8 3b d1 ff ff       	call   0x10006097
10008f5c:	a3 d0 5b 01 10       	mov    ds:0x10015bd0,eax
10008f61:	8d 45 f4             	lea    eax,[ebp-0xc]
10008f64:	50                   	push   eax
10008f65:	e8 65 cb ff ff       	call   0x10005acf
10008f6a:	85 c0                	test   eax,eax
10008f6c:	59                   	pop    ecx
10008f6d:	59                   	pop    ecx
10008f6e:	74 0d                	je     0x10008f7d
10008f70:	53                   	push   ebx
10008f71:	53                   	push   ebx
10008f72:	53                   	push   ebx
10008f73:	53                   	push   ebx
10008f74:	53                   	push   ebx
10008f75:	e8 00 eb ff ff       	call   0x10007a7a
10008f7a:	83 c4 14             	add    esp,0x14
10008f7d:	83 7d f4 02          	cmp    DWORD PTR [ebp-0xc],0x2
10008f81:	75 2c                	jne    0x10008faf
10008f83:	68 58 d9 00 10       	push   0x1000d958
10008f88:	57                   	push   edi
10008f89:	ff d6                	call   esi
10008f8b:	50                   	push   eax
10008f8c:	e8 06 d1 ff ff       	call   0x10006097
10008f91:	3b c3                	cmp    eax,ebx
10008f93:	59                   	pop    ecx
10008f94:	a3 d8 5b 01 10       	mov    ds:0x10015bd8,eax
10008f99:	74 14                	je     0x10008faf
10008f9b:	68 40 d9 00 10       	push   0x1000d940
10008fa0:	57                   	push   edi
10008fa1:	ff d6                	call   esi
10008fa3:	50                   	push   eax
10008fa4:	e8 ee d0 ff ff       	call   0x10006097
10008fa9:	59                   	pop    ecx
10008faa:	a3 d4 5b 01 10       	mov    ds:0x10015bd4,eax
10008faf:	a1 d4 5b 01 10       	mov    eax,ds:0x10015bd4
10008fb4:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10008fb7:	3b c1                	cmp    eax,ecx
10008fb9:	74 79                	je     0x10009034
10008fbb:	39 0d d8 5b 01 10    	cmp    DWORD PTR ds:0x10015bd8,ecx
10008fc1:	74 71                	je     0x10009034
10008fc3:	50                   	push   eax
10008fc4:	e8 45 d1 ff ff       	call   0x1000610e
10008fc9:	ff 35 d8 5b 01 10    	push   DWORD PTR ds:0x10015bd8
10008fcf:	8b f0                	mov    esi,eax
10008fd1:	e8 38 d1 ff ff       	call   0x1000610e
10008fd6:	3b f3                	cmp    esi,ebx
10008fd8:	59                   	pop    ecx
10008fd9:	59                   	pop    ecx
10008fda:	8b f8                	mov    edi,eax
10008fdc:	74 56                	je     0x10009034
10008fde:	3b fb                	cmp    edi,ebx
10008fe0:	74 52                	je     0x10009034
10008fe2:	ff d6                	call   esi
10008fe4:	3b c3                	cmp    eax,ebx
10008fe6:	74 19                	je     0x10009001
10008fe8:	8d 4d ec             	lea    ecx,[ebp-0x14]
10008feb:	51                   	push   ecx
10008fec:	6a 0c                	push   0xc
10008fee:	8d 4d e0             	lea    ecx,[ebp-0x20]
10008ff1:	51                   	push   ecx
10008ff2:	6a 01                	push   0x1
10008ff4:	50                   	push   eax
10008ff5:	ff d7                	call   edi
10008ff7:	85 c0                	test   eax,eax
10008ff9:	74 06                	je     0x10009001
10008ffb:	f6 45 e8 01          	test   BYTE PTR [ebp-0x18],0x1
10008fff:	75 33                	jne    0x10009034
10009001:	8d 45 f0             	lea    eax,[ebp-0x10]
10009004:	50                   	push   eax
10009005:	e8 fc ca ff ff       	call   0x10005b06
1000900a:	85 c0                	test   eax,eax
1000900c:	59                   	pop    ecx
1000900d:	74 0d                	je     0x1000901c
1000900f:	53                   	push   ebx
10009010:	53                   	push   ebx
10009011:	53                   	push   ebx
10009012:	53                   	push   ebx
10009013:	53                   	push   ebx
10009014:	e8 61 ea ff ff       	call   0x10007a7a
10009019:	83 c4 14             	add    esp,0x14
1000901c:	83 7d f0 04          	cmp    DWORD PTR [ebp-0x10],0x4
10009020:	72 09                	jb     0x1000902b
10009022:	81 4d 10 00 00 20 00 	or     DWORD PTR [ebp+0x10],0x200000
10009029:	eb 44                	jmp    0x1000906f
1000902b:	81 4d 10 00 00 04 00 	or     DWORD PTR [ebp+0x10],0x40000
10009032:	eb 3b                	jmp    0x1000906f
10009034:	a1 cc 5b 01 10       	mov    eax,ds:0x10015bcc
10009039:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
1000903c:	74 31                	je     0x1000906f
1000903e:	50                   	push   eax
1000903f:	e8 ca d0 ff ff       	call   0x1000610e
10009044:	3b c3                	cmp    eax,ebx
10009046:	59                   	pop    ecx
10009047:	74 26                	je     0x1000906f
10009049:	ff d0                	call   eax
1000904b:	3b c3                	cmp    eax,ebx
1000904d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10009050:	74 1d                	je     0x1000906f
10009052:	a1 d0 5b 01 10       	mov    eax,ds:0x10015bd0
10009057:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
1000905a:	74 13                	je     0x1000906f
1000905c:	50                   	push   eax
1000905d:	e8 ac d0 ff ff       	call   0x1000610e
10009062:	3b c3                	cmp    eax,ebx
10009064:	59                   	pop    ecx
10009065:	74 08                	je     0x1000906f
10009067:	ff 75 fc             	push   DWORD PTR [ebp-0x4]
1000906a:	ff d0                	call   eax
1000906c:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000906f:	ff 35 c8 5b 01 10    	push   DWORD PTR ds:0x10015bc8
10009075:	e8 94 d0 ff ff       	call   0x1000610e
1000907a:	3b c3                	cmp    eax,ebx
1000907c:	59                   	pop    ecx
1000907d:	74 10                	je     0x1000908f
1000907f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009082:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009085:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009088:	ff 75 fc             	push   DWORD PTR [ebp-0x4]
1000908b:	ff d0                	call   eax
1000908d:	eb 02                	jmp    0x10009091
1000908f:	33 c0                	xor    eax,eax
10009091:	5f                   	pop    edi
10009092:	5e                   	pop    esi
10009093:	5b                   	pop    ebx
10009094:	c9                   	leave  
10009095:	c3                   	ret    
10009096:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
1000909a:	53                   	push   ebx
1000909b:	33 db                	xor    ebx,ebx
1000909d:	3b c3                	cmp    eax,ebx
1000909f:	56                   	push   esi
100090a0:	57                   	push   edi
100090a1:	74 08                	je     0x100090ab
100090a3:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
100090a7:	3b fb                	cmp    edi,ebx
100090a9:	77 1b                	ja     0x100090c6
100090ab:	e8 96 b9 ff ff       	call   0x10004a46
100090b0:	6a 16                	push   0x16
100090b2:	5e                   	pop    esi
100090b3:	89 30                	mov    DWORD PTR [eax],esi
100090b5:	53                   	push   ebx
100090b6:	53                   	push   ebx
100090b7:	53                   	push   ebx
100090b8:	53                   	push   ebx
100090b9:	53                   	push   ebx
100090ba:	e8 b7 ea ff ff       	call   0x10007b76
100090bf:	83 c4 14             	add    esp,0x14
100090c2:	8b c6                	mov    eax,esi
100090c4:	eb 3d                	jmp    0x10009103
100090c6:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
100090ca:	3b f3                	cmp    esi,ebx
100090cc:	75 04                	jne    0x100090d2
100090ce:	88 18                	mov    BYTE PTR [eax],bl
100090d0:	eb d9                	jmp    0x100090ab
100090d2:	8b d0                	mov    edx,eax
100090d4:	38 1a                	cmp    BYTE PTR [edx],bl
100090d6:	74 04                	je     0x100090dc
100090d8:	42                   	inc    edx
100090d9:	4f                   	dec    edi
100090da:	75 f8                	jne    0x100090d4
100090dc:	3b fb                	cmp    edi,ebx
100090de:	74 ee                	je     0x100090ce
100090e0:	8a 0e                	mov    cl,BYTE PTR [esi]
100090e2:	88 0a                	mov    BYTE PTR [edx],cl
100090e4:	42                   	inc    edx
100090e5:	46                   	inc    esi
100090e6:	3a cb                	cmp    cl,bl
100090e8:	74 03                	je     0x100090ed
100090ea:	4f                   	dec    edi
100090eb:	75 f3                	jne    0x100090e0
100090ed:	3b fb                	cmp    edi,ebx
100090ef:	75 10                	jne    0x10009101
100090f1:	88 18                	mov    BYTE PTR [eax],bl
100090f3:	e8 4e b9 ff ff       	call   0x10004a46
100090f8:	6a 22                	push   0x22
100090fa:	59                   	pop    ecx
100090fb:	89 08                	mov    DWORD PTR [eax],ecx
100090fd:	8b f1                	mov    esi,ecx
100090ff:	eb b4                	jmp    0x100090b5
10009101:	33 c0                	xor    eax,eax
10009103:	5f                   	pop    edi
10009104:	5e                   	pop    esi
10009105:	5b                   	pop    ebx
10009106:	c3                   	ret    
10009107:	55                   	push   ebp
10009108:	8b ec                	mov    ebp,esp
1000910a:	53                   	push   ebx
1000910b:	56                   	push   esi
1000910c:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000910f:	33 db                	xor    ebx,ebx
10009111:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
10009114:	57                   	push   edi
10009115:	75 10                	jne    0x10009127
10009117:	3b f3                	cmp    esi,ebx
10009119:	75 10                	jne    0x1000912b
1000911b:	39 5d 0c             	cmp    DWORD PTR [ebp+0xc],ebx
1000911e:	75 12                	jne    0x10009132
10009120:	33 c0                	xor    eax,eax
10009122:	5f                   	pop    edi
10009123:	5e                   	pop    esi
10009124:	5b                   	pop    ebx
10009125:	5d                   	pop    ebp
10009126:	c3                   	ret    
10009127:	3b f3                	cmp    esi,ebx
10009129:	74 07                	je     0x10009132
1000912b:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000912e:	3b fb                	cmp    edi,ebx
10009130:	77 1b                	ja     0x1000914d
10009132:	e8 0f b9 ff ff       	call   0x10004a46
10009137:	6a 16                	push   0x16
10009139:	5e                   	pop    esi
1000913a:	89 30                	mov    DWORD PTR [eax],esi
1000913c:	53                   	push   ebx
1000913d:	53                   	push   ebx
1000913e:	53                   	push   ebx
1000913f:	53                   	push   ebx
10009140:	53                   	push   ebx
10009141:	e8 30 ea ff ff       	call   0x10007b76
10009146:	83 c4 14             	add    esp,0x14
10009149:	8b c6                	mov    eax,esi
1000914b:	eb d5                	jmp    0x10009122
1000914d:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
10009150:	75 04                	jne    0x10009156
10009152:	88 1e                	mov    BYTE PTR [esi],bl
10009154:	eb ca                	jmp    0x10009120
10009156:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
10009159:	3b d3                	cmp    edx,ebx
1000915b:	75 04                	jne    0x10009161
1000915d:	88 1e                	mov    BYTE PTR [esi],bl
1000915f:	eb d1                	jmp    0x10009132
10009161:	83 7d 14 ff          	cmp    DWORD PTR [ebp+0x14],0xffffffff
10009165:	8b c6                	mov    eax,esi
10009167:	75 0f                	jne    0x10009178
10009169:	8a 0a                	mov    cl,BYTE PTR [edx]
1000916b:	88 08                	mov    BYTE PTR [eax],cl
1000916d:	40                   	inc    eax
1000916e:	42                   	inc    edx
1000916f:	3a cb                	cmp    cl,bl
10009171:	74 1e                	je     0x10009191
10009173:	4f                   	dec    edi
10009174:	75 f3                	jne    0x10009169
10009176:	eb 19                	jmp    0x10009191
10009178:	8a 0a                	mov    cl,BYTE PTR [edx]
1000917a:	88 08                	mov    BYTE PTR [eax],cl
1000917c:	40                   	inc    eax
1000917d:	42                   	inc    edx
1000917e:	3a cb                	cmp    cl,bl
10009180:	74 08                	je     0x1000918a
10009182:	4f                   	dec    edi
10009183:	74 05                	je     0x1000918a
10009185:	ff 4d 14             	dec    DWORD PTR [ebp+0x14]
10009188:	75 ee                	jne    0x10009178
1000918a:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
1000918d:	75 02                	jne    0x10009191
1000918f:	88 18                	mov    BYTE PTR [eax],bl
10009191:	3b fb                	cmp    edi,ebx
10009193:	75 8b                	jne    0x10009120
10009195:	83 7d 14 ff          	cmp    DWORD PTR [ebp+0x14],0xffffffff
10009199:	75 0f                	jne    0x100091aa
1000919b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
1000919e:	6a 50                	push   0x50
100091a0:	88 5c 06 ff          	mov    BYTE PTR [esi+eax*1-0x1],bl
100091a4:	58                   	pop    eax
100091a5:	e9 78 ff ff ff       	jmp    0x10009122
100091aa:	88 1e                	mov    BYTE PTR [esi],bl
100091ac:	e8 95 b8 ff ff       	call   0x10004a46
100091b1:	6a 22                	push   0x22
100091b3:	59                   	pop    ecx
100091b4:	89 08                	mov    DWORD PTR [eax],ecx
100091b6:	8b f1                	mov    esi,ecx
100091b8:	eb 82                	jmp    0x1000913c
100091ba:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
100091be:	56                   	push   esi
100091bf:	33 f6                	xor    esi,esi
100091c1:	3b ce                	cmp    ecx,esi
100091c3:	7c 1e                	jl     0x100091e3
100091c5:	83 f9 02             	cmp    ecx,0x2
100091c8:	7e 0c                	jle    0x100091d6
100091ca:	83 f9 03             	cmp    ecx,0x3
100091cd:	75 14                	jne    0x100091e3
100091cf:	a1 44 52 01 10       	mov    eax,ds:0x10015244
100091d4:	5e                   	pop    esi
100091d5:	c3                   	ret    
100091d6:	a1 44 52 01 10       	mov    eax,ds:0x10015244
100091db:	89 0d 44 52 01 10    	mov    DWORD PTR ds:0x10015244,ecx
100091e1:	5e                   	pop    esi
100091e2:	c3                   	ret    
100091e3:	e8 5e b8 ff ff       	call   0x10004a46
100091e8:	56                   	push   esi
100091e9:	56                   	push   esi
100091ea:	56                   	push   esi
100091eb:	56                   	push   esi
100091ec:	56                   	push   esi
100091ed:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
100091f3:	e8 7e e9 ff ff       	call   0x10007b76
100091f8:	83 c4 14             	add    esp,0x14
100091fb:	83 c8 ff             	or     eax,0xffffffff
100091fe:	5e                   	pop    esi
100091ff:	c3                   	ret    
10009200:	83 25 a0 5c 01 10 00 	and    DWORD PTR ds:0x10015ca0,0x0
10009207:	c3                   	ret    
10009208:	cc                   	int3   
10009209:	cc                   	int3   
1000920a:	cc                   	int3   
1000920b:	cc                   	int3   
1000920c:	cc                   	int3   
1000920d:	cc                   	int3   
1000920e:	cc                   	int3   
1000920f:	cc                   	int3   
