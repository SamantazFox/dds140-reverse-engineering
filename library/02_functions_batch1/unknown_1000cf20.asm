1000cf20:	8d 42 ff             	lea    eax,[edx-0x1]
1000cf23:	5b                   	pop    ebx
1000cf24:	c3                   	ret    
1000cf25:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
1000cf2c:	8d 64 24 00          	lea    esp,[esp+0x0]
1000cf30:	33 c0                	xor    eax,eax
1000cf32:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
1000cf36:	53                   	push   ebx
1000cf37:	8b d8                	mov    ebx,eax
1000cf39:	c1 e0 08             	shl    eax,0x8
1000cf3c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
1000cf40:	f7 c2 03 00 00 00    	test   edx,0x3
1000cf46:	74 15                	je     0x1000cf5d
1000cf48:	8a 0a                	mov    cl,BYTE PTR [edx]
1000cf4a:	83 c2 01             	add    edx,0x1
1000cf4d:	3a cb                	cmp    cl,bl
1000cf4f:	74 cf                	je     0x1000cf20
1000cf51:	84 c9                	test   cl,cl
1000cf53:	74 51                	je     0x1000cfa6
1000cf55:	f7 c2 03 00 00 00    	test   edx,0x3
1000cf5b:	75 eb                	jne    0x1000cf48
1000cf5d:	0b d8                	or     ebx,eax
1000cf5f:	57                   	push   edi
1000cf60:	8b c3                	mov    eax,ebx
1000cf62:	c1 e3 10             	shl    ebx,0x10
1000cf65:	56                   	push   esi
1000cf66:	0b d8                	or     ebx,eax
1000cf68:	8b 0a                	mov    ecx,DWORD PTR [edx]
1000cf6a:	bf ff fe fe 7e       	mov    edi,0x7efefeff
1000cf6f:	8b c1                	mov    eax,ecx
1000cf71:	8b f7                	mov    esi,edi
1000cf73:	33 cb                	xor    ecx,ebx
1000cf75:	03 f0                	add    esi,eax
1000cf77:	03 f9                	add    edi,ecx
1000cf79:	83 f1 ff             	xor    ecx,0xffffffff
1000cf7c:	83 f0 ff             	xor    eax,0xffffffff
1000cf7f:	33 cf                	xor    ecx,edi
1000cf81:	33 c6                	xor    eax,esi
1000cf83:	83 c2 04             	add    edx,0x4
1000cf86:	81 e1 00 01 01 81    	and    ecx,0x81010100
1000cf8c:	75 1c                	jne    0x1000cfaa
1000cf8e:	25 00 01 01 81       	and    eax,0x81010100
1000cf93:	74 d3                	je     0x1000cf68
1000cf95:	25 00 01 01 01       	and    eax,0x1010100
1000cf9a:	75 08                	jne    0x1000cfa4
1000cf9c:	81 e6 00 00 00 80    	and    esi,0x80000000
1000cfa2:	75 c4                	jne    0x1000cf68
1000cfa4:	5e                   	pop    esi
1000cfa5:	5f                   	pop    edi
1000cfa6:	5b                   	pop    ebx
1000cfa7:	33 c0                	xor    eax,eax
1000cfa9:	c3                   	ret    
1000cfaa:	8b 42 fc             	mov    eax,DWORD PTR [edx-0x4]
1000cfad:	3a c3                	cmp    al,bl
1000cfaf:	74 36                	je     0x1000cfe7
1000cfb1:	84 c0                	test   al,al
1000cfb3:	74 ef                	je     0x1000cfa4
1000cfb5:	3a e3                	cmp    ah,bl
1000cfb7:	74 27                	je     0x1000cfe0
1000cfb9:	84 e4                	test   ah,ah
1000cfbb:	74 e7                	je     0x1000cfa4
1000cfbd:	c1 e8 10             	shr    eax,0x10
1000cfc0:	3a c3                	cmp    al,bl
1000cfc2:	74 15                	je     0x1000cfd9
1000cfc4:	84 c0                	test   al,al
1000cfc6:	74 dc                	je     0x1000cfa4
1000cfc8:	3a e3                	cmp    ah,bl
1000cfca:	74 06                	je     0x1000cfd2
1000cfcc:	84 e4                	test   ah,ah
1000cfce:	74 d4                	je     0x1000cfa4
1000cfd0:	eb 96                	jmp    0x1000cf68
1000cfd2:	5e                   	pop    esi
1000cfd3:	5f                   	pop    edi
1000cfd4:	8d 42 ff             	lea    eax,[edx-0x1]
1000cfd7:	5b                   	pop    ebx
1000cfd8:	c3                   	ret    
1000cfd9:	8d 42 fe             	lea    eax,[edx-0x2]
1000cfdc:	5e                   	pop    esi
1000cfdd:	5f                   	pop    edi
1000cfde:	5b                   	pop    ebx
1000cfdf:	c3                   	ret    
1000cfe0:	8d 42 fd             	lea    eax,[edx-0x3]
1000cfe3:	5e                   	pop    esi
1000cfe4:	5f                   	pop    edi
1000cfe5:	5b                   	pop    ebx
1000cfe6:	c3                   	ret    
1000cfe7:	8d 42 fc             	lea    eax,[edx-0x4]
1000cfea:	5e                   	pop    esi
1000cfeb:	5f                   	pop    edi
1000cfec:	5b                   	pop    ebx
1000cfed:	c3                   	ret    
1000cfee:	ff 25 f0 d0 00 10    	jmp    DWORD PTR ds:0x1000d0f0
