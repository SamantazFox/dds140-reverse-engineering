1000bf47:	55                   	push   ebp
1000bf48:	8b ec                	mov    ebp,esp
1000bf4a:	83 ec 10             	sub    esp,0x10
1000bf4d:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000bf50:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bf53:	99                   	cdq    
1000bf54:	8b f8                	mov    edi,eax
1000bf56:	33 fa                	xor    edi,edx
1000bf58:	2b fa                	sub    edi,edx
1000bf5a:	83 e7 0f             	and    edi,0xf
1000bf5d:	33 fa                	xor    edi,edx
1000bf5f:	2b fa                	sub    edi,edx
1000bf61:	85 ff                	test   edi,edi
1000bf63:	75 3c                	jne    0x1000bfa1
1000bf65:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000bf68:	8b d1                	mov    edx,ecx
1000bf6a:	83 e2 7f             	and    edx,0x7f
1000bf6d:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
1000bf70:	3b ca                	cmp    ecx,edx
1000bf72:	74 12                	je     0x1000bf86
1000bf74:	2b ca                	sub    ecx,edx
1000bf76:	51                   	push   ecx
1000bf77:	50                   	push   eax
1000bf78:	e8 73 ff ff ff       	call   0x1000bef0
1000bf7d:	83 c4 08             	add    esp,0x8
1000bf80:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bf83:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
1000bf86:	85 d2                	test   edx,edx
1000bf88:	74 45                	je     0x1000bfcf
1000bf8a:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
1000bf8d:	2b c2                	sub    eax,edx
1000bf8f:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
1000bf92:	33 c0                	xor    eax,eax
1000bf94:	8b 7d f8             	mov    edi,DWORD PTR [ebp-0x8]
1000bf97:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
1000bf9a:	f3 aa                	rep stos BYTE PTR es:[edi],al
1000bf9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bf9f:	eb 2e                	jmp    0x1000bfcf
1000bfa1:	f7 df                	neg    edi
1000bfa3:	83 c7 10             	add    edi,0x10
1000bfa6:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
1000bfa9:	33 c0                	xor    eax,eax
1000bfab:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000bfae:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000bfb1:	f3 aa                	rep stos BYTE PTR es:[edi],al
1000bfb3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
1000bfb6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000bfb9:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
1000bfbc:	03 c8                	add    ecx,eax
1000bfbe:	2b d0                	sub    edx,eax
1000bfc0:	52                   	push   edx
1000bfc1:	6a 00                	push   0x0
1000bfc3:	51                   	push   ecx
1000bfc4:	e8 7e ff ff ff       	call   0x1000bf47
1000bfc9:	83 c4 0c             	add    esp,0xc
1000bfcc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000bfcf:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000bfd2:	8b e5                	mov    esp,ebp
1000bfd4:	5d                   	pop    ebp
1000bfd5:	c3                   	ret    
