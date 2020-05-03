1000a8be:	55                   	push   ebp
1000a8bf:	8b ec                	mov    ebp,esp
1000a8c1:	83 ec 2c             	sub    esp,0x2c
1000a8c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000a8c7:	0f b7 48 0a          	movzx  ecx,WORD PTR [eax+0xa]
1000a8cb:	53                   	push   ebx
1000a8cc:	8b d9                	mov    ebx,ecx
1000a8ce:	81 e1 00 80 00 00    	and    ecx,0x8000
1000a8d4:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
1000a8d7:	8b 48 06             	mov    ecx,DWORD PTR [eax+0x6]
1000a8da:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
1000a8dd:	8b 48 02             	mov    ecx,DWORD PTR [eax+0x2]
1000a8e0:	0f b7 00             	movzx  eax,WORD PTR [eax]
1000a8e3:	81 e3 ff 7f 00 00    	and    ebx,0x7fff
1000a8e9:	81 eb ff 3f 00 00    	sub    ebx,0x3fff
1000a8ef:	c1 e0 10             	shl    eax,0x10
1000a8f2:	81 fb 01 c0 ff ff    	cmp    ebx,0xffffc001
1000a8f8:	57                   	push   edi
1000a8f9:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
1000a8fc:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000a8ff:	75 27                	jne    0x1000a928
1000a901:	33 db                	xor    ebx,ebx
1000a903:	33 c0                	xor    eax,eax
1000a905:	39 5c 85 e0          	cmp    DWORD PTR [ebp+eax*4-0x20],ebx
1000a909:	75 0d                	jne    0x1000a918
1000a90b:	40                   	inc    eax
1000a90c:	83 f8 03             	cmp    eax,0x3
1000a90f:	7c f4                	jl     0x1000a905
1000a911:	33 c0                	xor    eax,eax
1000a913:	e9 a5 04 00 00       	jmp    0x1000adbd
1000a918:	33 c0                	xor    eax,eax
1000a91a:	8d 7d e0             	lea    edi,[ebp-0x20]
1000a91d:	ab                   	stos   DWORD PTR es:[edi],eax
1000a91e:	ab                   	stos   DWORD PTR es:[edi],eax
1000a91f:	6a 02                	push   0x2
1000a921:	ab                   	stos   DWORD PTR es:[edi],eax
1000a922:	58                   	pop    eax
1000a923:	e9 95 04 00 00       	jmp    0x1000adbd
1000a928:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000a92c:	56                   	push   esi
1000a92d:	8d 75 e0             	lea    esi,[ebp-0x20]
1000a930:	8d 7d d4             	lea    edi,[ebp-0x2c]
1000a933:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a934:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a935:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000a936:	8b 35 c0 0b 01 10    	mov    esi,DWORD PTR ds:0x10010bc0
1000a93c:	4e                   	dec    esi
1000a93d:	8d 4e 01             	lea    ecx,[esi+0x1]
1000a940:	8b c1                	mov    eax,ecx
1000a942:	99                   	cdq    
1000a943:	83 e2 1f             	and    edx,0x1f
1000a946:	03 c2                	add    eax,edx
1000a948:	c1 f8 05             	sar    eax,0x5
1000a94b:	8b d1                	mov    edx,ecx
1000a94d:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000a953:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
1000a956:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000a959:	79 05                	jns    0x1000a960
1000a95b:	4a                   	dec    edx
1000a95c:	83 ca e0             	or     edx,0xffffffe0
1000a95f:	42                   	inc    edx
1000a960:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000a964:	6a 1f                	push   0x1f
1000a966:	33 c0                	xor    eax,eax
1000a968:	59                   	pop    ecx
1000a969:	2b ca                	sub    ecx,edx
1000a96b:	40                   	inc    eax
1000a96c:	d3 e0                	shl    eax,cl
1000a96e:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
1000a971:	85 07                	test   DWORD PTR [edi],eax
1000a973:	0f 84 8d 00 00 00    	je     0x1000aa06
1000a979:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000a97c:	83 ca ff             	or     edx,0xffffffff
1000a97f:	d3 e2                	shl    edx,cl
1000a981:	f7 d2                	not    edx
1000a983:	85 54 85 e0          	test   DWORD PTR [ebp+eax*4-0x20],edx
1000a987:	eb 05                	jmp    0x1000a98e
1000a989:	83 7c 85 e0 00       	cmp    DWORD PTR [ebp+eax*4-0x20],0x0
1000a98e:	75 08                	jne    0x1000a998
1000a990:	40                   	inc    eax
1000a991:	83 f8 03             	cmp    eax,0x3
1000a994:	7c f3                	jl     0x1000a989
1000a996:	eb 6e                	jmp    0x1000aa06
1000a998:	8b c6                	mov    eax,esi
1000a99a:	99                   	cdq    
1000a99b:	6a 1f                	push   0x1f
1000a99d:	59                   	pop    ecx
1000a99e:	23 d1                	and    edx,ecx
1000a9a0:	03 c2                	add    eax,edx
1000a9a2:	c1 f8 05             	sar    eax,0x5
1000a9a5:	81 e6 1f 00 00 80    	and    esi,0x8000001f
1000a9ab:	79 05                	jns    0x1000a9b2
1000a9ad:	4e                   	dec    esi
1000a9ae:	83 ce e0             	or     esi,0xffffffe0
1000a9b1:	46                   	inc    esi
1000a9b2:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000a9b6:	2b ce                	sub    ecx,esi
1000a9b8:	33 d2                	xor    edx,edx
1000a9ba:	42                   	inc    edx
1000a9bb:	d3 e2                	shl    edx,cl
1000a9bd:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a9c1:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a9c3:	03 f2                	add    esi,edx
1000a9c5:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
1000a9c8:	8b 31                	mov    esi,DWORD PTR [ecx]
1000a9ca:	39 75 08             	cmp    DWORD PTR [ebp+0x8],esi
1000a9cd:	72 22                	jb     0x1000a9f1
1000a9cf:	39 55 08             	cmp    DWORD PTR [ebp+0x8],edx
1000a9d2:	eb 1b                	jmp    0x1000a9ef
1000a9d4:	85 c9                	test   ecx,ecx
1000a9d6:	74 2b                	je     0x1000aa03
1000a9d8:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
1000a9dc:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000a9e0:	8b 11                	mov    edx,DWORD PTR [ecx]
1000a9e2:	8d 72 01             	lea    esi,[edx+0x1]
1000a9e5:	3b f2                	cmp    esi,edx
1000a9e7:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
1000a9ea:	72 05                	jb     0x1000a9f1
1000a9ec:	83 fe 01             	cmp    esi,0x1
1000a9ef:	73 07                	jae    0x1000a9f8
1000a9f1:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
1000a9f8:	48                   	dec    eax
1000a9f9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
1000a9fc:	89 11                	mov    DWORD PTR [ecx],edx
1000a9fe:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000aa01:	79 d1                	jns    0x1000a9d4
1000aa03:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
1000aa06:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000aa09:	83 c8 ff             	or     eax,0xffffffff
1000aa0c:	d3 e0                	shl    eax,cl
1000aa0e:	21 07                	and    DWORD PTR [edi],eax
1000aa10:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000aa13:	40                   	inc    eax
1000aa14:	83 f8 03             	cmp    eax,0x3
1000aa17:	7d 0d                	jge    0x1000aa26
1000aa19:	6a 03                	push   0x3
1000aa1b:	59                   	pop    ecx
1000aa1c:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000aa20:	2b c8                	sub    ecx,eax
1000aa22:	33 c0                	xor    eax,eax
1000aa24:	f3 ab                	rep stos DWORD PTR es:[edi],eax
1000aa26:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
1000aa2a:	74 01                	je     0x1000aa2d
1000aa2c:	43                   	inc    ebx
1000aa2d:	a1 bc 0b 01 10       	mov    eax,ds:0x10010bbc
1000aa32:	8b c8                	mov    ecx,eax
1000aa34:	2b 0d c0 0b 01 10    	sub    ecx,DWORD PTR ds:0x10010bc0
1000aa3a:	3b d9                	cmp    ebx,ecx
1000aa3c:	7d 0d                	jge    0x1000aa4b
1000aa3e:	33 c0                	xor    eax,eax
1000aa40:	8d 7d e0             	lea    edi,[ebp-0x20]
1000aa43:	ab                   	stos   DWORD PTR es:[edi],eax
1000aa44:	ab                   	stos   DWORD PTR es:[edi],eax
1000aa45:	ab                   	stos   DWORD PTR es:[edi],eax
1000aa46:	e9 0d 02 00 00       	jmp    0x1000ac58
1000aa4b:	3b d8                	cmp    ebx,eax
1000aa4d:	0f 8f 0f 02 00 00    	jg     0x1000ac62
1000aa53:	2b 45 f0             	sub    eax,DWORD PTR [ebp-0x10]
1000aa56:	8d 75 d4             	lea    esi,[ebp-0x2c]
1000aa59:	8b c8                	mov    ecx,eax
1000aa5b:	8d 7d e0             	lea    edi,[ebp-0x20]
1000aa5e:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000aa5f:	99                   	cdq    
1000aa60:	83 e2 1f             	and    edx,0x1f
1000aa63:	03 c2                	add    eax,edx
1000aa65:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000aa66:	8b d1                	mov    edx,ecx
1000aa68:	c1 f8 05             	sar    eax,0x5
1000aa6b:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000aa71:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000aa72:	79 05                	jns    0x1000aa79
1000aa74:	4a                   	dec    edx
1000aa75:	83 ca e0             	or     edx,0xffffffe0
1000aa78:	42                   	inc    edx
1000aa79:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000aa7d:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000aa81:	83 cf ff             	or     edi,0xffffffff
1000aa84:	8b ca                	mov    ecx,edx
1000aa86:	d3 e7                	shl    edi,cl
1000aa88:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000aa8f:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000aa92:	f7 d7                	not    edi
1000aa94:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000aa97:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000aa9b:	8b 33                	mov    esi,DWORD PTR [ebx]
1000aa9d:	8b ce                	mov    ecx,esi
1000aa9f:	23 cf                	and    ecx,edi
1000aaa1:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000aaa4:	8b ca                	mov    ecx,edx
1000aaa6:	d3 ee                	shr    esi,cl
1000aaa8:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000aaab:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000aaae:	89 33                	mov    DWORD PTR [ebx],esi
1000aab0:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000aab3:	d3 e6                	shl    esi,cl
1000aab5:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000aab8:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000aabc:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000aabf:	7c d3                	jl     0x1000aa94
1000aac1:	8b f0                	mov    esi,eax
1000aac3:	6a 02                	push   0x2
1000aac5:	c1 e6 02             	shl    esi,0x2
1000aac8:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000aacb:	5a                   	pop    edx
1000aacc:	2b ce                	sub    ecx,esi
1000aace:	3b d0                	cmp    edx,eax
1000aad0:	7c 08                	jl     0x1000aada
1000aad2:	8b 31                	mov    esi,DWORD PTR [ecx]
1000aad4:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000aad8:	eb 05                	jmp    0x1000aadf
1000aada:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000aadf:	4a                   	dec    edx
1000aae0:	83 e9 04             	sub    ecx,0x4
1000aae3:	85 d2                	test   edx,edx
1000aae5:	7d e7                	jge    0x1000aace
1000aae7:	8b 35 c0 0b 01 10    	mov    esi,DWORD PTR ds:0x10010bc0
1000aaed:	4e                   	dec    esi
1000aaee:	8d 4e 01             	lea    ecx,[esi+0x1]
1000aaf1:	8b c1                	mov    eax,ecx
1000aaf3:	99                   	cdq    
1000aaf4:	83 e2 1f             	and    edx,0x1f
1000aaf7:	03 c2                	add    eax,edx
1000aaf9:	c1 f8 05             	sar    eax,0x5
1000aafc:	8b d1                	mov    edx,ecx
1000aafe:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000ab04:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000ab07:	79 05                	jns    0x1000ab0e
1000ab09:	4a                   	dec    edx
1000ab0a:	83 ca e0             	or     edx,0xffffffe0
1000ab0d:	42                   	inc    edx
1000ab0e:	6a 1f                	push   0x1f
1000ab10:	59                   	pop    ecx
1000ab11:	2b ca                	sub    ecx,edx
1000ab13:	33 d2                	xor    edx,edx
1000ab15:	42                   	inc    edx
1000ab16:	d3 e2                	shl    edx,cl
1000ab18:	8d 5c 85 e0          	lea    ebx,[ebp+eax*4-0x20]
1000ab1c:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000ab1f:	85 13                	test   DWORD PTR [ebx],edx
1000ab21:	0f 84 82 00 00 00    	je     0x1000aba9
1000ab27:	83 ca ff             	or     edx,0xffffffff
1000ab2a:	d3 e2                	shl    edx,cl
1000ab2c:	f7 d2                	not    edx
1000ab2e:	85 54 85 e0          	test   DWORD PTR [ebp+eax*4-0x20],edx
1000ab32:	eb 05                	jmp    0x1000ab39
1000ab34:	83 7c 85 e0 00       	cmp    DWORD PTR [ebp+eax*4-0x20],0x0
1000ab39:	75 08                	jne    0x1000ab43
1000ab3b:	40                   	inc    eax
1000ab3c:	83 f8 03             	cmp    eax,0x3
1000ab3f:	7c f3                	jl     0x1000ab34
1000ab41:	eb 66                	jmp    0x1000aba9
1000ab43:	8b c6                	mov    eax,esi
1000ab45:	99                   	cdq    
1000ab46:	6a 1f                	push   0x1f
1000ab48:	59                   	pop    ecx
1000ab49:	23 d1                	and    edx,ecx
1000ab4b:	03 c2                	add    eax,edx
1000ab4d:	c1 f8 05             	sar    eax,0x5
1000ab50:	81 e6 1f 00 00 80    	and    esi,0x8000001f
1000ab56:	79 05                	jns    0x1000ab5d
1000ab58:	4e                   	dec    esi
1000ab59:	83 ce e0             	or     esi,0xffffffe0
1000ab5c:	46                   	inc    esi
1000ab5d:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000ab61:	33 d2                	xor    edx,edx
1000ab63:	2b ce                	sub    ecx,esi
1000ab65:	42                   	inc    edx
1000ab66:	d3 e2                	shl    edx,cl
1000ab68:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000ab6c:	8b 31                	mov    esi,DWORD PTR [ecx]
1000ab6e:	8d 3c 16             	lea    edi,[esi+edx*1]
1000ab71:	3b fe                	cmp    edi,esi
1000ab73:	72 04                	jb     0x1000ab79
1000ab75:	3b fa                	cmp    edi,edx
1000ab77:	73 07                	jae    0x1000ab80
1000ab79:	c7 45 08 01 00 00 00 	mov    DWORD PTR [ebp+0x8],0x1
1000ab80:	89 39                	mov    DWORD PTR [ecx],edi
1000ab82:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000ab85:	eb 1f                	jmp    0x1000aba6
1000ab87:	85 c9                	test   ecx,ecx
1000ab89:	74 1e                	je     0x1000aba9
1000ab8b:	8d 4c 85 e0          	lea    ecx,[ebp+eax*4-0x20]
1000ab8f:	8b 11                	mov    edx,DWORD PTR [ecx]
1000ab91:	8d 72 01             	lea    esi,[edx+0x1]
1000ab94:	33 ff                	xor    edi,edi
1000ab96:	3b f2                	cmp    esi,edx
1000ab98:	72 05                	jb     0x1000ab9f
1000ab9a:	83 fe 01             	cmp    esi,0x1
1000ab9d:	73 03                	jae    0x1000aba2
1000ab9f:	33 ff                	xor    edi,edi
1000aba1:	47                   	inc    edi
1000aba2:	89 31                	mov    DWORD PTR [ecx],esi
1000aba4:	8b cf                	mov    ecx,edi
1000aba6:	48                   	dec    eax
1000aba7:	79 de                	jns    0x1000ab87
1000aba9:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000abac:	83 c8 ff             	or     eax,0xffffffff
1000abaf:	d3 e0                	shl    eax,cl
1000abb1:	21 03                	and    DWORD PTR [ebx],eax
1000abb3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000abb6:	40                   	inc    eax
1000abb7:	83 f8 03             	cmp    eax,0x3
1000abba:	7d 0d                	jge    0x1000abc9
1000abbc:	6a 03                	push   0x3
1000abbe:	59                   	pop    ecx
1000abbf:	8d 7c 85 e0          	lea    edi,[ebp+eax*4-0x20]
1000abc3:	2b c8                	sub    ecx,eax
1000abc5:	33 c0                	xor    eax,eax
1000abc7:	f3 ab                	rep stos DWORD PTR es:[edi],eax
1000abc9:	8b 0d c4 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bc4
1000abcf:	41                   	inc    ecx
1000abd0:	8b c1                	mov    eax,ecx
1000abd2:	99                   	cdq    
1000abd3:	83 e2 1f             	and    edx,0x1f
1000abd6:	03 c2                	add    eax,edx
1000abd8:	8b d1                	mov    edx,ecx
1000abda:	c1 f8 05             	sar    eax,0x5
1000abdd:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000abe3:	79 05                	jns    0x1000abea
1000abe5:	4a                   	dec    edx
1000abe6:	83 ca e0             	or     edx,0xffffffe0
1000abe9:	42                   	inc    edx
1000abea:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000abee:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000abf2:	83 cf ff             	or     edi,0xffffffff
1000abf5:	8b ca                	mov    ecx,edx
1000abf7:	d3 e7                	shl    edi,cl
1000abf9:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000ac00:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000ac03:	f7 d7                	not    edi
1000ac05:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000ac08:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000ac0c:	8b 33                	mov    esi,DWORD PTR [ebx]
1000ac0e:	8b ce                	mov    ecx,esi
1000ac10:	23 cf                	and    ecx,edi
1000ac12:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000ac15:	8b ca                	mov    ecx,edx
1000ac17:	d3 ee                	shr    esi,cl
1000ac19:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000ac1c:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000ac1f:	89 33                	mov    DWORD PTR [ebx],esi
1000ac21:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000ac24:	d3 e6                	shl    esi,cl
1000ac26:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000ac29:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000ac2d:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000ac30:	7c d3                	jl     0x1000ac05
1000ac32:	8b f0                	mov    esi,eax
1000ac34:	6a 02                	push   0x2
1000ac36:	c1 e6 02             	shl    esi,0x2
1000ac39:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000ac3c:	5a                   	pop    edx
1000ac3d:	2b ce                	sub    ecx,esi
1000ac3f:	3b d0                	cmp    edx,eax
1000ac41:	7c 08                	jl     0x1000ac4b
1000ac43:	8b 31                	mov    esi,DWORD PTR [ecx]
1000ac45:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000ac49:	eb 05                	jmp    0x1000ac50
1000ac4b:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000ac50:	4a                   	dec    edx
1000ac51:	83 e9 04             	sub    ecx,0x4
1000ac54:	85 d2                	test   edx,edx
1000ac56:	7d e7                	jge    0x1000ac3f
1000ac58:	6a 02                	push   0x2
1000ac5a:	33 db                	xor    ebx,ebx
1000ac5c:	58                   	pop    eax
1000ac5d:	e9 5a 01 00 00       	jmp    0x1000adbc
1000ac62:	3b 1d b8 0b 01 10    	cmp    ebx,DWORD PTR ds:0x10010bb8
1000ac68:	8b 0d c4 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bc4
1000ac6e:	0f 8c ad 00 00 00    	jl     0x1000ad21
1000ac74:	33 c0                	xor    eax,eax
1000ac76:	8d 7d e0             	lea    edi,[ebp-0x20]
1000ac79:	ab                   	stos   DWORD PTR es:[edi],eax
1000ac7a:	ab                   	stos   DWORD PTR es:[edi],eax
1000ac7b:	ab                   	stos   DWORD PTR es:[edi],eax
1000ac7c:	81 4d e0 00 00 00 80 	or     DWORD PTR [ebp-0x20],0x80000000
1000ac83:	8b c1                	mov    eax,ecx
1000ac85:	99                   	cdq    
1000ac86:	83 e2 1f             	and    edx,0x1f
1000ac89:	03 c2                	add    eax,edx
1000ac8b:	8b d1                	mov    edx,ecx
1000ac8d:	c1 f8 05             	sar    eax,0x5
1000ac90:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000ac96:	79 05                	jns    0x1000ac9d
1000ac98:	4a                   	dec    edx
1000ac99:	83 ca e0             	or     edx,0xffffffe0
1000ac9c:	42                   	inc    edx
1000ac9d:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000aca1:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000aca5:	83 cf ff             	or     edi,0xffffffff
1000aca8:	8b ca                	mov    ecx,edx
1000acaa:	d3 e7                	shl    edi,cl
1000acac:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000acb3:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000acb6:	f7 d7                	not    edi
1000acb8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000acbb:	8d 5c 9d e0          	lea    ebx,[ebp+ebx*4-0x20]
1000acbf:	8b 33                	mov    esi,DWORD PTR [ebx]
1000acc1:	8b ce                	mov    ecx,esi
1000acc3:	23 cf                	and    ecx,edi
1000acc5:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000acc8:	8b ca                	mov    ecx,edx
1000acca:	d3 ee                	shr    esi,cl
1000accc:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000accf:	0b 75 f4             	or     esi,DWORD PTR [ebp-0xc]
1000acd2:	89 33                	mov    DWORD PTR [ebx],esi
1000acd4:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
1000acd7:	d3 e6                	shl    esi,cl
1000acd9:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000acdc:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000ace0:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
1000ace3:	7c d3                	jl     0x1000acb8
1000ace5:	8b f0                	mov    esi,eax
1000ace7:	6a 02                	push   0x2
1000ace9:	c1 e6 02             	shl    esi,0x2
1000acec:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000acef:	5a                   	pop    edx
1000acf0:	2b ce                	sub    ecx,esi
1000acf2:	3b d0                	cmp    edx,eax
1000acf4:	7c 08                	jl     0x1000acfe
1000acf6:	8b 31                	mov    esi,DWORD PTR [ecx]
1000acf8:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000acfc:	eb 05                	jmp    0x1000ad03
1000acfe:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000ad03:	4a                   	dec    edx
1000ad04:	83 e9 04             	sub    ecx,0x4
1000ad07:	85 d2                	test   edx,edx
1000ad09:	7d e7                	jge    0x1000acf2
1000ad0b:	a1 b8 0b 01 10       	mov    eax,ds:0x10010bb8
1000ad10:	8b 0d cc 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bcc
1000ad16:	8d 1c 01             	lea    ebx,[ecx+eax*1]
1000ad19:	33 c0                	xor    eax,eax
1000ad1b:	40                   	inc    eax
1000ad1c:	e9 9b 00 00 00       	jmp    0x1000adbc
1000ad21:	a1 cc 0b 01 10       	mov    eax,ds:0x10010bcc
1000ad26:	81 65 e0 ff ff ff 7f 	and    DWORD PTR [ebp-0x20],0x7fffffff
1000ad2d:	03 d8                	add    ebx,eax
1000ad2f:	8b c1                	mov    eax,ecx
1000ad31:	99                   	cdq    
1000ad32:	83 e2 1f             	and    edx,0x1f
1000ad35:	03 c2                	add    eax,edx
1000ad37:	8b d1                	mov    edx,ecx
1000ad39:	c1 f8 05             	sar    eax,0x5
1000ad3c:	81 e2 1f 00 00 80    	and    edx,0x8000001f
1000ad42:	79 05                	jns    0x1000ad49
1000ad44:	4a                   	dec    edx
1000ad45:	83 ca e0             	or     edx,0xffffffe0
1000ad48:	42                   	inc    edx
1000ad49:	83 65 f4 00          	and    DWORD PTR [ebp-0xc],0x0
1000ad4d:	83 65 08 00          	and    DWORD PTR [ebp+0x8],0x0
1000ad51:	83 ce ff             	or     esi,0xffffffff
1000ad54:	8b ca                	mov    ecx,edx
1000ad56:	d3 e6                	shl    esi,cl
1000ad58:	c7 45 fc 20 00 00 00 	mov    DWORD PTR [ebp-0x4],0x20
1000ad5f:	29 55 fc             	sub    DWORD PTR [ebp-0x4],edx
1000ad62:	f7 d6                	not    esi
1000ad64:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000ad67:	8b 7c 8d e0          	mov    edi,DWORD PTR [ebp+ecx*4-0x20]
1000ad6b:	8b cf                	mov    ecx,edi
1000ad6d:	23 ce                	and    ecx,esi
1000ad6f:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
1000ad72:	8b ca                	mov    ecx,edx
1000ad74:	d3 ef                	shr    edi,cl
1000ad76:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
1000ad79:	0b 7d f4             	or     edi,DWORD PTR [ebp-0xc]
1000ad7c:	89 7c 8d e0          	mov    DWORD PTR [ebp+ecx*4-0x20],edi
1000ad80:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
1000ad83:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000ad86:	d3 e7                	shl    edi,cl
1000ad88:	ff 45 08             	inc    DWORD PTR [ebp+0x8]
1000ad8b:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
1000ad8f:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000ad92:	7c d0                	jl     0x1000ad64
1000ad94:	8b f0                	mov    esi,eax
1000ad96:	6a 02                	push   0x2
1000ad98:	c1 e6 02             	shl    esi,0x2
1000ad9b:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000ad9e:	5a                   	pop    edx
1000ad9f:	2b ce                	sub    ecx,esi
1000ada1:	3b d0                	cmp    edx,eax
1000ada3:	7c 08                	jl     0x1000adad
1000ada5:	8b 31                	mov    esi,DWORD PTR [ecx]
1000ada7:	89 74 95 e0          	mov    DWORD PTR [ebp+edx*4-0x20],esi
1000adab:	eb 05                	jmp    0x1000adb2
1000adad:	83 64 95 e0 00       	and    DWORD PTR [ebp+edx*4-0x20],0x0
1000adb2:	4a                   	dec    edx
1000adb3:	83 e9 04             	sub    ecx,0x4
1000adb6:	85 d2                	test   edx,edx
1000adb8:	7d e7                	jge    0x1000ada1
1000adba:	33 c0                	xor    eax,eax
1000adbc:	5e                   	pop    esi
1000adbd:	6a 1f                	push   0x1f
1000adbf:	59                   	pop    ecx
1000adc0:	2b 0d c4 0b 01 10    	sub    ecx,DWORD PTR ds:0x10010bc4
1000adc6:	d3 e3                	shl    ebx,cl
1000adc8:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
1000adcb:	f7 d9                	neg    ecx
1000adcd:	1b c9                	sbb    ecx,ecx
1000adcf:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000add5:	0b d9                	or     ebx,ecx
1000add7:	8b 0d c8 0b 01 10    	mov    ecx,DWORD PTR ds:0x10010bc8
1000addd:	0b 5d e0             	or     ebx,DWORD PTR [ebp-0x20]
1000ade0:	83 f9 40             	cmp    ecx,0x40
1000ade3:	75 0d                	jne    0x1000adf2
1000ade5:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000ade8:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
1000adeb:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
1000adee:	89 11                	mov    DWORD PTR [ecx],edx
1000adf0:	eb 0a                	jmp    0x1000adfc
1000adf2:	83 f9 20             	cmp    ecx,0x20
1000adf5:	75 05                	jne    0x1000adfc
1000adf7:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000adfa:	89 19                	mov    DWORD PTR [ecx],ebx
1000adfc:	5f                   	pop    edi
1000adfd:	5b                   	pop    ebx
1000adfe:	c9                   	leave  
1000adff:	c3                   	ret    
