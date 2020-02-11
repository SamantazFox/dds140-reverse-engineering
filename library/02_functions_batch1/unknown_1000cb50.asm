1000cb50:	51                   	push   ecx
1000cb51:	8d 4c 24 04          	lea    ecx,[esp+0x4]
1000cb55:	2b c8                	sub    ecx,eax
1000cb57:	1b c0                	sbb    eax,eax
1000cb59:	f7 d0                	not    eax
1000cb5b:	23 c8                	and    ecx,eax
1000cb5d:	8b c4                	mov    eax,esp
1000cb5f:	25 00 f0 ff ff       	and    eax,0xfffff000
1000cb64:	3b c8                	cmp    ecx,eax
1000cb66:	72 0a                	jb     0x1000cb72
1000cb68:	8b c1                	mov    eax,ecx
1000cb6a:	59                   	pop    ecx
1000cb6b:	94                   	xchg   esp,eax
1000cb6c:	8b 00                	mov    eax,DWORD PTR [eax]
1000cb6e:	89 04 24             	mov    DWORD PTR [esp],eax
1000cb71:	c3                   	ret    
1000cb72:	2d 00 10 00 00       	sub    eax,0x1000
1000cb77:	85 00                	test   DWORD PTR [eax],eax
1000cb79:	eb e9                	jmp    0x1000cb64
1000cb7b:	55                   	push   ebp
1000cb7c:	8b ec                	mov    ebp,esp
1000cb7e:	83 ec 14             	sub    esp,0x14
1000cb81:	56                   	push   esi
1000cb82:	57                   	push   edi
1000cb83:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000cb86:	8d 4d ec             	lea    ecx,[ebp-0x14]
1000cb89:	e8 8c 72 ff ff       	call   0x10003e1a
1000cb8e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000cb91:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
1000cb94:	33 ff                	xor    edi,edi
1000cb96:	3b c7                	cmp    eax,edi
1000cb98:	74 02                	je     0x1000cb9c
1000cb9a:	89 30                	mov    DWORD PTR [eax],esi
1000cb9c:	3b f7                	cmp    esi,edi
1000cb9e:	75 2c                	jne    0x1000cbcc
1000cba0:	e8 a1 7e ff ff       	call   0x10004a46
1000cba5:	57                   	push   edi
1000cba6:	57                   	push   edi
1000cba7:	57                   	push   edi
1000cba8:	57                   	push   edi
1000cba9:	57                   	push   edi
1000cbaa:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000cbb0:	e8 c1 af ff ff       	call   0x10007b76
1000cbb5:	83 c4 14             	add    esp,0x14
1000cbb8:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
1000cbbc:	74 07                	je     0x1000cbc5
1000cbbe:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000cbc1:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000cbc5:	33 c0                	xor    eax,eax
1000cbc7:	e9 d6 01 00 00       	jmp    0x1000cda2
1000cbcc:	39 7d 14             	cmp    DWORD PTR [ebp+0x14],edi
1000cbcf:	74 0c                	je     0x1000cbdd
1000cbd1:	83 7d 14 02          	cmp    DWORD PTR [ebp+0x14],0x2
1000cbd5:	7c c9                	jl     0x1000cba0
1000cbd7:	83 7d 14 24          	cmp    DWORD PTR [ebp+0x14],0x24
1000cbdb:	7f c3                	jg     0x1000cba0
1000cbdd:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000cbe0:	53                   	push   ebx
1000cbe1:	8a 1e                	mov    bl,BYTE PTR [esi]
1000cbe3:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000cbe6:	8d 7e 01             	lea    edi,[esi+0x1]
1000cbe9:	83 b9 ac 00 00 00 01 	cmp    DWORD PTR [ecx+0xac],0x1
1000cbf0:	7e 17                	jle    0x1000cc09
1000cbf2:	8d 45 ec             	lea    eax,[ebp-0x14]
1000cbf5:	50                   	push   eax
1000cbf6:	0f b6 c3             	movzx  eax,bl
1000cbf9:	6a 08                	push   0x8
1000cbfb:	50                   	push   eax
1000cbfc:	e8 8f d6 ff ff       	call   0x1000a290
1000cc01:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000cc04:	83 c4 0c             	add    esp,0xc
1000cc07:	eb 10                	jmp    0x1000cc19
1000cc09:	8b 91 c8 00 00 00    	mov    edx,DWORD PTR [ecx+0xc8]
1000cc0f:	0f b6 c3             	movzx  eax,bl
1000cc12:	0f b6 04 42          	movzx  eax,BYTE PTR [edx+eax*2]
1000cc16:	83 e0 08             	and    eax,0x8
1000cc19:	85 c0                	test   eax,eax
1000cc1b:	74 05                	je     0x1000cc22
1000cc1d:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cc1f:	47                   	inc    edi
1000cc20:	eb c7                	jmp    0x1000cbe9
1000cc22:	80 fb 2d             	cmp    bl,0x2d
1000cc25:	75 06                	jne    0x1000cc2d
1000cc27:	83 4d 18 02          	or     DWORD PTR [ebp+0x18],0x2
1000cc2b:	eb 05                	jmp    0x1000cc32
1000cc2d:	80 fb 2b             	cmp    bl,0x2b
1000cc30:	75 03                	jne    0x1000cc35
1000cc32:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cc34:	47                   	inc    edi
1000cc35:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000cc38:	85 c0                	test   eax,eax
1000cc3a:	0f 8c 49 01 00 00    	jl     0x1000cd89
1000cc40:	83 f8 01             	cmp    eax,0x1
1000cc43:	0f 84 40 01 00 00    	je     0x1000cd89
1000cc49:	83 f8 24             	cmp    eax,0x24
1000cc4c:	0f 8f 37 01 00 00    	jg     0x1000cd89
1000cc52:	85 c0                	test   eax,eax
1000cc54:	75 2a                	jne    0x1000cc80
1000cc56:	80 fb 30             	cmp    bl,0x30
1000cc59:	74 09                	je     0x1000cc64
1000cc5b:	c7 45 14 0a 00 00 00 	mov    DWORD PTR [ebp+0x14],0xa
1000cc62:	eb 34                	jmp    0x1000cc98
1000cc64:	8a 07                	mov    al,BYTE PTR [edi]
1000cc66:	3c 78                	cmp    al,0x78
1000cc68:	74 0d                	je     0x1000cc77
1000cc6a:	3c 58                	cmp    al,0x58
1000cc6c:	74 09                	je     0x1000cc77
1000cc6e:	c7 45 14 08 00 00 00 	mov    DWORD PTR [ebp+0x14],0x8
1000cc75:	eb 21                	jmp    0x1000cc98
1000cc77:	c7 45 14 10 00 00 00 	mov    DWORD PTR [ebp+0x14],0x10
1000cc7e:	eb 0a                	jmp    0x1000cc8a
1000cc80:	83 f8 10             	cmp    eax,0x10
1000cc83:	75 13                	jne    0x1000cc98
1000cc85:	80 fb 30             	cmp    bl,0x30
1000cc88:	75 0e                	jne    0x1000cc98
1000cc8a:	8a 07                	mov    al,BYTE PTR [edi]
1000cc8c:	3c 78                	cmp    al,0x78
1000cc8e:	74 04                	je     0x1000cc94
1000cc90:	3c 58                	cmp    al,0x58
1000cc92:	75 04                	jne    0x1000cc98
1000cc94:	47                   	inc    edi
1000cc95:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cc97:	47                   	inc    edi
1000cc98:	8b b1 c8 00 00 00    	mov    esi,DWORD PTR [ecx+0xc8]
1000cc9e:	83 c8 ff             	or     eax,0xffffffff
1000cca1:	33 d2                	xor    edx,edx
1000cca3:	f7 75 14             	div    DWORD PTR [ebp+0x14]
1000cca6:	0f b6 cb             	movzx  ecx,bl
1000cca9:	0f b7 0c 4e          	movzx  ecx,WORD PTR [esi+ecx*2]
1000ccad:	f6 c1 04             	test   cl,0x4
1000ccb0:	74 08                	je     0x1000ccba
1000ccb2:	0f be cb             	movsx  ecx,bl
1000ccb5:	83 e9 30             	sub    ecx,0x30
1000ccb8:	eb 1a                	jmp    0x1000ccd4
1000ccba:	66 f7 c1 03 01       	test   cx,0x103
1000ccbf:	74 31                	je     0x1000ccf2
1000ccc1:	8a cb                	mov    cl,bl
1000ccc3:	80 e9 61             	sub    cl,0x61
1000ccc6:	80 f9 19             	cmp    cl,0x19
1000ccc9:	0f be cb             	movsx  ecx,bl
1000cccc:	77 03                	ja     0x1000ccd1
1000ccce:	83 e9 20             	sub    ecx,0x20
1000ccd1:	83 c1 c9             	add    ecx,0xffffffc9
1000ccd4:	3b 4d 14             	cmp    ecx,DWORD PTR [ebp+0x14]
1000ccd7:	73 19                	jae    0x1000ccf2
1000ccd9:	83 4d 18 08          	or     DWORD PTR [ebp+0x18],0x8
1000ccdd:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
1000cce0:	72 27                	jb     0x1000cd09
1000cce2:	75 04                	jne    0x1000cce8
1000cce4:	3b ca                	cmp    ecx,edx
1000cce6:	76 21                	jbe    0x1000cd09
1000cce8:	83 4d 18 04          	or     DWORD PTR [ebp+0x18],0x4
1000ccec:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
1000ccf0:	75 23                	jne    0x1000cd15
1000ccf2:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
1000ccf5:	4f                   	dec    edi
1000ccf6:	a8 08                	test   al,0x8
1000ccf8:	75 20                	jne    0x1000cd1a
1000ccfa:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
1000ccfe:	74 03                	je     0x1000cd03
1000cd00:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000cd03:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000cd07:	eb 5c                	jmp    0x1000cd65
1000cd09:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
1000cd0c:	0f af 5d 14          	imul   ebx,DWORD PTR [ebp+0x14]
1000cd10:	03 d9                	add    ebx,ecx
1000cd12:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
1000cd15:	8a 1f                	mov    bl,BYTE PTR [edi]
1000cd17:	47                   	inc    edi
1000cd18:	eb 8c                	jmp    0x1000cca6
1000cd1a:	a8 04                	test   al,0x4
1000cd1c:	be ff ff ff 7f       	mov    esi,0x7fffffff
1000cd21:	75 1b                	jne    0x1000cd3e
1000cd23:	a8 01                	test   al,0x1
1000cd25:	75 3e                	jne    0x1000cd65
1000cd27:	83 e0 02             	and    eax,0x2
1000cd2a:	74 09                	je     0x1000cd35
1000cd2c:	81 7d fc 00 00 00 80 	cmp    DWORD PTR [ebp-0x4],0x80000000
1000cd33:	77 09                	ja     0x1000cd3e
1000cd35:	85 c0                	test   eax,eax
1000cd37:	75 2c                	jne    0x1000cd65
1000cd39:	39 75 fc             	cmp    DWORD PTR [ebp-0x4],esi
1000cd3c:	76 27                	jbe    0x1000cd65
1000cd3e:	e8 03 7d ff ff       	call   0x10004a46
1000cd43:	f6 45 18 01          	test   BYTE PTR [ebp+0x18],0x1
1000cd47:	c7 00 22 00 00 00    	mov    DWORD PTR [eax],0x22
1000cd4d:	74 06                	je     0x1000cd55
1000cd4f:	83 4d fc ff          	or     DWORD PTR [ebp-0x4],0xffffffff
1000cd53:	eb 10                	jmp    0x1000cd65
1000cd55:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
1000cd58:	24 02                	and    al,0x2
1000cd5a:	f6 d8                	neg    al
1000cd5c:	1b c0                	sbb    eax,eax
1000cd5e:	f7 d8                	neg    eax
1000cd60:	03 c6                	add    eax,esi
1000cd62:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000cd65:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000cd68:	85 c0                	test   eax,eax
1000cd6a:	74 02                	je     0x1000cd6e
1000cd6c:	89 38                	mov    DWORD PTR [eax],edi
1000cd6e:	f6 45 18 02          	test   BYTE PTR [ebp+0x18],0x2
1000cd72:	74 03                	je     0x1000cd77
1000cd74:	f7 5d fc             	neg    DWORD PTR [ebp-0x4]
1000cd77:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
1000cd7b:	74 07                	je     0x1000cd84
1000cd7d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000cd80:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000cd84:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
1000cd87:	eb 18                	jmp    0x1000cda1
1000cd89:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000cd8c:	85 c0                	test   eax,eax
1000cd8e:	74 02                	je     0x1000cd92
1000cd90:	89 30                	mov    DWORD PTR [eax],esi
1000cd92:	80 7d f8 00          	cmp    BYTE PTR [ebp-0x8],0x0
1000cd96:	74 07                	je     0x1000cd9f
1000cd98:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000cd9b:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000cd9f:	33 c0                	xor    eax,eax
1000cda1:	5b                   	pop    ebx
1000cda2:	5f                   	pop    edi
1000cda3:	5e                   	pop    esi
1000cda4:	c9                   	leave  
1000cda5:	c3                   	ret    
1000cda6:	55                   	push   ebp
1000cda7:	8b ec                	mov    ebp,esp
1000cda9:	33 c0                	xor    eax,eax
1000cdab:	39 05 70 5b 01 10    	cmp    DWORD PTR ds:0x10015b70,eax
1000cdb1:	50                   	push   eax
1000cdb2:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000cdb5:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000cdb8:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000cdbb:	75 07                	jne    0x1000cdc4
1000cdbd:	68 80 0a 01 10       	push   0x10010a80
1000cdc2:	eb 01                	jmp    0x1000cdc5
1000cdc4:	50                   	push   eax
1000cdc5:	e8 b1 fd ff ff       	call   0x1000cb7b
1000cdca:	83 c4 14             	add    esp,0x14
1000cdcd:	5d                   	pop    ebp
1000cdce:	c3                   	ret    
1000cdcf:	cc                   	int3   
