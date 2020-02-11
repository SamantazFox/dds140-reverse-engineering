10005890:	83 ec 14             	sub    esp,0x14
10005893:	53                   	push   ebx
10005894:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
10005898:	55                   	push   ebp
10005899:	56                   	push   esi
1000589a:	8b 73 08             	mov    esi,DWORD PTR [ebx+0x8]
1000589d:	33 35 10 00 01 10    	xor    esi,DWORD PTR ds:0x10010010
100058a3:	57                   	push   edi
100058a4:	8b 06                	mov    eax,DWORD PTR [esi]
100058a6:	83 f8 fe             	cmp    eax,0xfffffffe
100058a9:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
100058ae:	c7 44 24 18 01 00 00 	mov    DWORD PTR [esp+0x18],0x1
100058b5:	00 
100058b6:	8d 7b 10             	lea    edi,[ebx+0x10]
100058b9:	74 0d                	je     0x100058c8
100058bb:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
100058be:	03 cf                	add    ecx,edi
100058c0:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
100058c3:	e8 53 e2 ff ff       	call   0x10003b1b
100058c8:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
100058cb:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
100058ce:	03 cf                	add    ecx,edi
100058d0:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
100058d3:	e8 43 e2 ff ff       	call   0x10003b1b
100058d8:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
100058dc:	f6 40 04 66          	test   BYTE PTR [eax+0x4],0x66
100058e0:	0f 85 1f 01 00 00    	jne    0x10005a05
100058e6:	8b 6b 0c             	mov    ebp,DWORD PTR [ebx+0xc]
100058e9:	83 fd fe             	cmp    ebp,0xfffffffe
100058ec:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
100058f0:	8d 54 24 1c          	lea    edx,[esp+0x1c]
100058f4:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
100058f8:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
100058fc:	89 53 fc             	mov    DWORD PTR [ebx-0x4],edx
100058ff:	74 5e                	je     0x1000595f
10005901:	8d 44 6d 00          	lea    eax,[ebp+ebp*2+0x0]
10005905:	8b 4c 86 14          	mov    ecx,DWORD PTR [esi+eax*4+0x14]
10005909:	85 c9                	test   ecx,ecx
1000590b:	8d 5c 86 10          	lea    ebx,[esi+eax*4+0x10]
1000590f:	8b 03                	mov    eax,DWORD PTR [ebx]
10005911:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
10005915:	74 16                	je     0x1000592d
10005917:	8b d7                	mov    edx,edi
10005919:	e8 74 30 00 00       	call   0x10008992
1000591e:	85 c0                	test   eax,eax
10005920:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
10005925:	7c 44                	jl     0x1000596b
10005927:	7f 4c                	jg     0x10005975
10005929:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000592d:	83 f8 fe             	cmp    eax,0xfffffffe
10005930:	8b e8                	mov    ebp,eax
10005932:	75 cd                	jne    0x10005901
10005934:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
10005939:	74 24                	je     0x1000595f
1000593b:	8b 06                	mov    eax,DWORD PTR [esi]
1000593d:	83 f8 fe             	cmp    eax,0xfffffffe
10005940:	74 0d                	je     0x1000594f
10005942:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
10005945:	03 cf                	add    ecx,edi
10005947:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
1000594a:	e8 cc e1 ff ff       	call   0x10003b1b
1000594f:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
10005952:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
10005955:	03 cf                	add    ecx,edi
10005957:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
1000595a:	e8 bc e1 ff ff       	call   0x10003b1b
1000595f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10005963:	5f                   	pop    edi
10005964:	5e                   	pop    esi
10005965:	5d                   	pop    ebp
10005966:	5b                   	pop    ebx
10005967:	83 c4 14             	add    esp,0x14
1000596a:	c3                   	ret    
1000596b:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
10005972:	00 
10005973:	eb c6                	jmp    0x1000593b
10005975:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
10005979:	81 39 63 73 6d e0    	cmp    DWORD PTR [ecx],0xe06d7363
1000597f:	75 2a                	jne    0x100059ab
10005981:	83 3d d4 5d 01 10 00 	cmp    DWORD PTR ds:0x10015dd4,0x0
10005988:	74 21                	je     0x100059ab
1000598a:	68 d4 5d 01 10       	push   0x10015dd4
1000598f:	e8 ec 30 00 00       	call   0x10008a80
10005994:	83 c4 04             	add    esp,0x4
10005997:	85 c0                	test   eax,eax
10005999:	74 10                	je     0x100059ab
1000599b:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
1000599f:	6a 01                	push   0x1
100059a1:	52                   	push   edx
100059a2:	ff 15 d4 5d 01 10    	call   DWORD PTR ds:0x10015dd4
100059a8:	83 c4 08             	add    esp,0x8
100059ab:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
100059af:	e8 0e 30 00 00       	call   0x100089c2
100059b4:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
100059b8:	39 68 0c             	cmp    DWORD PTR [eax+0xc],ebp
100059bb:	74 13                	je     0x100059d0
100059bd:	68 10 00 01 10       	push   0x10010010
100059c2:	57                   	push   edi
100059c3:	8b d5                	mov    edx,ebp
100059c5:	8b c8                	mov    ecx,eax
100059c7:	e8 10 30 00 00       	call   0x100089dc
100059cc:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
100059d0:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100059d4:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
100059d7:	8b 06                	mov    eax,DWORD PTR [esi]
100059d9:	83 f8 fe             	cmp    eax,0xfffffffe
100059dc:	74 0d                	je     0x100059eb
100059de:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
100059e1:	03 cf                	add    ecx,edi
100059e3:	33 0c 38             	xor    ecx,DWORD PTR [eax+edi*1]
100059e6:	e8 30 e1 ff ff       	call   0x10003b1b
100059eb:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
100059ee:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
100059f1:	03 cf                	add    ecx,edi
100059f3:	33 0c 3a             	xor    ecx,DWORD PTR [edx+edi*1]
100059f6:	e8 20 e1 ff ff       	call   0x10003b1b
100059fb:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
100059fe:	8b d7                	mov    edx,edi
10005a00:	e9 a4 2f 00 00       	jmp    0x100089a9
10005a05:	83 7b 0c fe          	cmp    DWORD PTR [ebx+0xc],0xfffffffe
10005a09:	0f 84 50 ff ff ff    	je     0x1000595f
10005a0f:	68 10 00 01 10       	push   0x10010010
10005a14:	57                   	push   edi
10005a15:	8b cb                	mov    ecx,ebx
10005a17:	ba fe ff ff ff       	mov    edx,0xfffffffe
10005a1c:	e8 bb 2f 00 00       	call   0x100089dc
10005a21:	e9 15 ff ff ff       	jmp    0x1000593b
10005a26:	e8 97 04 00 00       	call   0x10005ec2
10005a2b:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a2f:	e8 ee 02 00 00       	call   0x10005d22
10005a34:	ff 35 d8 02 01 10    	push   DWORD PTR ds:0x100102d8
10005a3a:	e8 cf 06 00 00       	call   0x1000610e
10005a3f:	68 ff 00 00 00       	push   0xff
10005a44:	ff d0                	call   eax
10005a46:	83 c4 0c             	add    esp,0xc
10005a49:	c3                   	ret    
10005a4a:	68 50 d2 00 10       	push   0x1000d250
10005a4f:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
10005a55:	85 c0                	test   eax,eax
10005a57:	74 16                	je     0x10005a6f
10005a59:	68 40 d2 00 10       	push   0x1000d240
10005a5e:	50                   	push   eax
10005a5f:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
10005a65:	85 c0                	test   eax,eax
10005a67:	74 06                	je     0x10005a6f
10005a69:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a6d:	ff d0                	call   eax
10005a6f:	c3                   	ret    
10005a70:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a74:	e8 d1 ff ff ff       	call   0x10005a4a
10005a79:	59                   	pop    ecx
10005a7a:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a7e:	ff 15 6c d0 00 10    	call   DWORD PTR ds:0x1000d06c
10005a84:	cc                   	int3
