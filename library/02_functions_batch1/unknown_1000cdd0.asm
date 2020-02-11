1000cdd0:	55                   	push   ebp
1000cdd1:	8b ec                	mov    ebp,esp
1000cdd3:	57                   	push   edi
1000cdd4:	56                   	push   esi
1000cdd5:	53                   	push   ebx
1000cdd6:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000cdd9:	0b c9                	or     ecx,ecx
1000cddb:	74 4d                	je     0x1000ce2a
1000cddd:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000cde0:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000cde3:	b7 41                	mov    bh,0x41
1000cde5:	b3 5a                	mov    bl,0x5a
1000cde7:	b6 20                	mov    dh,0x20
1000cde9:	8d 49 00             	lea    ecx,[ecx+0x0]
1000cdec:	8a 26                	mov    ah,BYTE PTR [esi]
1000cdee:	0a e4                	or     ah,ah
1000cdf0:	8a 07                	mov    al,BYTE PTR [edi]
1000cdf2:	74 27                	je     0x1000ce1b
1000cdf4:	0a c0                	or     al,al
1000cdf6:	74 23                	je     0x1000ce1b
1000cdf8:	83 c6 01             	add    esi,0x1
1000cdfb:	83 c7 01             	add    edi,0x1
1000cdfe:	3a e7                	cmp    ah,bh
1000ce00:	72 06                	jb     0x1000ce08
1000ce02:	3a e3                	cmp    ah,bl
1000ce04:	77 02                	ja     0x1000ce08
1000ce06:	02 e6                	add    ah,dh
1000ce08:	3a c7                	cmp    al,bh
1000ce0a:	72 06                	jb     0x1000ce12
1000ce0c:	3a c3                	cmp    al,bl
1000ce0e:	77 02                	ja     0x1000ce12
1000ce10:	02 c6                	add    al,dh
1000ce12:	3a e0                	cmp    ah,al
1000ce14:	75 0b                	jne    0x1000ce21
1000ce16:	83 e9 01             	sub    ecx,0x1
1000ce19:	75 d1                	jne    0x1000cdec
1000ce1b:	33 c9                	xor    ecx,ecx
1000ce1d:	3a e0                	cmp    ah,al
1000ce1f:	74 09                	je     0x1000ce2a
1000ce21:	b9 ff ff ff ff       	mov    ecx,0xffffffff
1000ce26:	72 02                	jb     0x1000ce2a
1000ce28:	f7 d9                	neg    ecx
1000ce2a:	8b c1                	mov    eax,ecx
1000ce2c:	5b                   	pop    ebx
1000ce2d:	5e                   	pop    esi
1000ce2e:	5f                   	pop    edi
1000ce2f:	c9                   	leave  
1000ce30:	c3                   	ret    
1000ce31:	cc                   	int3   
1000ce32:	cc                   	int3   
1000ce33:	cc                   	int3   
1000ce34:	cc                   	int3   
1000ce35:	cc                   	int3   
1000ce36:	cc                   	int3   
1000ce37:	cc                   	int3   
1000ce38:	cc                   	int3   
1000ce39:	cc                   	int3   
1000ce3a:	cc                   	int3   
1000ce3b:	cc                   	int3   
1000ce3c:	cc                   	int3   
1000ce3d:	cc                   	int3   
1000ce3e:	cc                   	int3   
1000ce3f:	cc                   	int3
