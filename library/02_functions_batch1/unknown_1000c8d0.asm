1000c8d0:	51                   	push   ecx
1000c8d1:	8d 4c 24 08          	lea    ecx,[esp+0x8]
1000c8d5:	2b c8                	sub    ecx,eax
1000c8d7:	83 e1 0f             	and    ecx,0xf
1000c8da:	03 c1                	add    eax,ecx
1000c8dc:	1b c9                	sbb    ecx,ecx
1000c8de:	0b c1                	or     eax,ecx
1000c8e0:	59                   	pop    ecx
1000c8e1:	e9 6a 02 00 00       	jmp    0x1000cb50
1000c8e6:	51                   	push   ecx
1000c8e7:	8d 4c 24 08          	lea    ecx,[esp+0x8]
1000c8eb:	2b c8                	sub    ecx,eax
1000c8ed:	83 e1 07             	and    ecx,0x7
1000c8f0:	03 c1                	add    eax,ecx
1000c8f2:	1b c9                	sbb    ecx,ecx
1000c8f4:	0b c1                	or     eax,ecx
1000c8f6:	59                   	pop    ecx
1000c8f7:	e9 54 02 00 00       	jmp    0x1000cb50
1000c8fc:	6a 0a                	push   0xa
1000c8fe:	6a 00                	push   0x0
1000c900:	ff 74 24 0c          	push   DWORD PTR [esp+0xc]
1000c904:	e8 9d 04 00 00       	call   0x1000cda6
1000c909:	83 c4 0c             	add    esp,0xc
1000c90c:	c3                   	ret    
1000c90d:	55                   	push   ebp
1000c90e:	8b ec                	mov    ebp,esp
1000c910:	83 ec 18             	sub    esp,0x18
1000c913:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c918:	33 c5                	xor    eax,ebp
1000c91a:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000c91d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000c920:	53                   	push   ebx
1000c921:	56                   	push   esi
1000c922:	33 f6                	xor    esi,esi
1000c924:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
1000c927:	57                   	push   edi
1000c928:	c7 45 e8 4e 40 00 00 	mov    DWORD PTR [ebp-0x18],0x404e
1000c92f:	89 30                	mov    DWORD PTR [eax],esi
1000c931:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
1000c934:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
1000c937:	0f 86 46 01 00 00    	jbe    0x1000ca83
1000c93d:	8b 10                	mov    edx,DWORD PTR [eax]
1000c93f:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
1000c942:	8b f0                	mov    esi,eax
1000c944:	8d 7d f0             	lea    edi,[ebp-0x10]
1000c947:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000c948:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000c949:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000c94a:	8b ca                	mov    ecx,edx
1000c94c:	c1 e9 1f             	shr    ecx,0x1f
1000c94f:	8d 3c 12             	lea    edi,[edx+edx*1]
1000c952:	8d 14 1b             	lea    edx,[ebx+ebx*1]
1000c955:	0b d1                	or     edx,ecx
1000c957:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
1000c95a:	8b f3                	mov    esi,ebx
1000c95c:	c1 ee 1f             	shr    esi,0x1f
1000c95f:	03 c9                	add    ecx,ecx
1000c961:	0b ce                	or     ecx,esi
1000c963:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
1000c966:	8b f7                	mov    esi,edi
1000c968:	83 65 ec 00          	and    DWORD PTR [ebp-0x14],0x0
1000c96c:	8b da                	mov    ebx,edx
1000c96e:	c1 eb 1f             	shr    ebx,0x1f
1000c971:	03 c9                	add    ecx,ecx
1000c973:	c1 ef 1f             	shr    edi,0x1f
1000c976:	0b cb                	or     ecx,ebx
1000c978:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
1000c97b:	03 f6                	add    esi,esi
1000c97d:	03 d2                	add    edx,edx
1000c97f:	0b d7                	or     edx,edi
1000c981:	8d 3c 1e             	lea    edi,[esi+ebx*1]
1000c984:	3b fe                	cmp    edi,esi
1000c986:	89 30                	mov    DWORD PTR [eax],esi
1000c988:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
1000c98b:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000c98e:	72 04                	jb     0x1000c994
1000c990:	3b fb                	cmp    edi,ebx
1000c992:	73 07                	jae    0x1000c99b
1000c994:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
1000c99b:	33 db                	xor    ebx,ebx
1000c99d:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
1000c9a0:	89 38                	mov    DWORD PTR [eax],edi
1000c9a2:	74 1a                	je     0x1000c9be
1000c9a4:	8d 72 01             	lea    esi,[edx+0x1]
1000c9a7:	3b f2                	cmp    esi,edx
1000c9a9:	72 05                	jb     0x1000c9b0
1000c9ab:	83 fe 01             	cmp    esi,0x1
1000c9ae:	73 03                	jae    0x1000c9b3
1000c9b0:	33 db                	xor    ebx,ebx
1000c9b2:	43                   	inc    ebx
1000c9b3:	85 db                	test   ebx,ebx
1000c9b5:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
1000c9b8:	74 04                	je     0x1000c9be
1000c9ba:	41                   	inc    ecx
1000c9bb:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000c9be:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
1000c9c1:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
1000c9c4:	8d 1c 11             	lea    ebx,[ecx+edx*1]
1000c9c7:	33 f6                	xor    esi,esi
1000c9c9:	3b d9                	cmp    ebx,ecx
1000c9cb:	72 04                	jb     0x1000c9d1
1000c9cd:	3b da                	cmp    ebx,edx
1000c9cf:	73 03                	jae    0x1000c9d4
1000c9d1:	33 f6                	xor    esi,esi
1000c9d3:	46                   	inc    esi
1000c9d4:	85 f6                	test   esi,esi
1000c9d6:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
1000c9d9:	74 03                	je     0x1000c9de
1000c9db:	ff 40 08             	inc    DWORD PTR [eax+0x8]
1000c9de:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000c9e1:	01 48 08             	add    DWORD PTR [eax+0x8],ecx
1000c9e4:	83 65 ec 00          	and    DWORD PTR [ebp-0x14],0x0
1000c9e8:	8d 0c 3f             	lea    ecx,[edi+edi*1]
1000c9eb:	8b d7                	mov    edx,edi
1000c9ed:	c1 ea 1f             	shr    edx,0x1f
1000c9f0:	8d 3c 1b             	lea    edi,[ebx+ebx*1]
1000c9f3:	0b fa                	or     edi,edx
1000c9f5:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
1000c9f8:	8b f3                	mov    esi,ebx
1000c9fa:	c1 ee 1f             	shr    esi,0x1f
1000c9fd:	8d 1c 12             	lea    ebx,[edx+edx*1]
1000ca00:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
1000ca03:	0b de                	or     ebx,esi
1000ca05:	89 08                	mov    DWORD PTR [eax],ecx
1000ca07:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
1000ca0a:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
1000ca0d:	0f be 12             	movsx  edx,BYTE PTR [edx]
1000ca10:	8d 34 11             	lea    esi,[ecx+edx*1]
1000ca13:	3b f1                	cmp    esi,ecx
1000ca15:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
1000ca18:	72 04                	jb     0x1000ca1e
1000ca1a:	3b f2                	cmp    esi,edx
1000ca1c:	73 07                	jae    0x1000ca25
1000ca1e:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
1000ca25:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
1000ca29:	89 30                	mov    DWORD PTR [eax],esi
1000ca2b:	74 1c                	je     0x1000ca49
1000ca2d:	8d 4f 01             	lea    ecx,[edi+0x1]
1000ca30:	33 d2                	xor    edx,edx
1000ca32:	3b cf                	cmp    ecx,edi
1000ca34:	72 05                	jb     0x1000ca3b
1000ca36:	83 f9 01             	cmp    ecx,0x1
1000ca39:	73 03                	jae    0x1000ca3e
1000ca3b:	33 d2                	xor    edx,edx
1000ca3d:	42                   	inc    edx
1000ca3e:	85 d2                	test   edx,edx
1000ca40:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
1000ca43:	74 04                	je     0x1000ca49
1000ca45:	43                   	inc    ebx
1000ca46:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
1000ca49:	ff 4d 0c             	dec    DWORD PTR [ebp+0xc]
1000ca4c:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000ca4f:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
1000ca53:	0f 87 e4 fe ff ff    	ja     0x1000c93d
1000ca59:	33 f6                	xor    esi,esi
1000ca5b:	eb 26                	jmp    0x1000ca83
1000ca5d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
1000ca60:	8b d1                	mov    edx,ecx
1000ca62:	c1 ea 10             	shr    edx,0x10
1000ca65:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
1000ca68:	8b 10                	mov    edx,DWORD PTR [eax]
1000ca6a:	8b fa                	mov    edi,edx
1000ca6c:	c1 e1 10             	shl    ecx,0x10
1000ca6f:	c1 ef 10             	shr    edi,0x10
1000ca72:	0b cf                	or     ecx,edi
1000ca74:	c1 e2 10             	shl    edx,0x10
1000ca77:	81 45 e8 f0 ff 00 00 	add    DWORD PTR [ebp-0x18],0xfff0
1000ca7e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
1000ca81:	89 10                	mov    DWORD PTR [eax],edx
1000ca83:	39 70 08             	cmp    DWORD PTR [eax+0x8],esi
1000ca86:	74 d5                	je     0x1000ca5d
1000ca88:	bb 00 80 00 00       	mov    ebx,0x8000
1000ca8d:	85 58 08             	test   DWORD PTR [eax+0x8],ebx
1000ca90:	75 30                	jne    0x1000cac2
1000ca92:	8b 30                	mov    esi,DWORD PTR [eax]
1000ca94:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
1000ca97:	81 45 e8 ff ff 00 00 	add    DWORD PTR [ebp-0x18],0xffff
1000ca9e:	8b ce                	mov    ecx,esi
1000caa0:	03 f6                	add    esi,esi
1000caa2:	c1 e9 1f             	shr    ecx,0x1f
1000caa5:	89 30                	mov    DWORD PTR [eax],esi
1000caa7:	8d 34 3f             	lea    esi,[edi+edi*1]
1000caaa:	0b f1                	or     esi,ecx
1000caac:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
1000caaf:	8b d7                	mov    edx,edi
1000cab1:	c1 ea 1f             	shr    edx,0x1f
1000cab4:	03 c9                	add    ecx,ecx
1000cab6:	0b ca                	or     ecx,edx
1000cab8:	85 cb                	test   ebx,ecx
1000caba:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
1000cabd:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
1000cac0:	74 d0                	je     0x1000ca92
1000cac2:	66 8b 4d e8          	mov    cx,WORD PTR [ebp-0x18]
1000cac6:	66 89 48 0a          	mov    WORD PTR [eax+0xa],cx
1000caca:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000cacd:	5f                   	pop    edi
1000cace:	5e                   	pop    esi
1000cacf:	33 cd                	xor    ecx,ebp
1000cad1:	5b                   	pop    ebx
1000cad2:	e8 44 70 ff ff       	call   0x10003b1b
1000cad7:	c9                   	leave  
1000cad8:	c3                   	ret    
1000cad9:	6a 08                	push   0x8
1000cadb:	68 48 e6 00 10       	push   0x1000e648
1000cae0:	e8 43 8d ff ff       	call   0x10005828
1000cae5:	33 c0                	xor    eax,eax
1000cae7:	39 05 f8 5d 01 10    	cmp    DWORD PTR ds:0x10015df8,eax
1000caed:	74 56                	je     0x1000cb45
1000caef:	f6 45 08 40          	test   BYTE PTR [ebp+0x8],0x40
1000caf3:	74 48                	je     0x1000cb3d
1000caf5:	39 05 74 0f 01 10    	cmp    DWORD PTR ds:0x10010f74,eax
1000cafb:	74 40                	je     0x1000cb3d
1000cafd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000cb00:	0f ae 55 08          	ldmxcsr DWORD PTR [ebp+0x8]
1000cb04:	eb 2e                	jmp    0x1000cb34
1000cb06:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
1000cb09:	8b 00                	mov    eax,DWORD PTR [eax]
1000cb0b:	8b 00                	mov    eax,DWORD PTR [eax]
1000cb0d:	3d 05 00 00 c0       	cmp    eax,0xc0000005
1000cb12:	74 0a                	je     0x1000cb1e
1000cb14:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
1000cb19:	74 03                	je     0x1000cb1e
1000cb1b:	33 c0                	xor    eax,eax
1000cb1d:	c3                   	ret    
1000cb1e:	33 c0                	xor    eax,eax
1000cb20:	40                   	inc    eax
1000cb21:	c3                   	ret    
1000cb22:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
1000cb25:	83 25 74 0f 01 10 00 	and    DWORD PTR ds:0x10010f74,0x0
1000cb2c:	83 65 08 bf          	and    DWORD PTR [ebp+0x8],0xffffffbf
1000cb30:	0f ae 55 08          	ldmxcsr DWORD PTR [ebp+0x8]
1000cb34:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000cb3b:	eb 08                	jmp    0x1000cb45
1000cb3d:	83 65 08 bf          	and    DWORD PTR [ebp+0x8],0xffffffbf
1000cb41:	0f ae 55 08          	ldmxcsr DWORD PTR [ebp+0x8]
1000cb45:	e8 23 8d ff ff       	call   0x1000586d
1000cb4a:	c3                   	ret    
1000cb4b:	cc                   	int3   
1000cb4c:	cc                   	int3   
1000cb4d:	cc                   	int3   
1000cb4e:	cc                   	int3   
1000cb4f:	cc                   	int3   
