10008a30:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10008a34:	8b 48 3c             	mov    ecx,DWORD PTR [eax+0x3c]
10008a37:	03 c8                	add    ecx,eax
10008a39:	0f b7 41 14          	movzx  eax,WORD PTR [ecx+0x14]
10008a3d:	53                   	push   ebx
10008a3e:	56                   	push   esi
10008a3f:	0f b7 71 06          	movzx  esi,WORD PTR [ecx+0x6]
10008a43:	33 d2                	xor    edx,edx
10008a45:	85 f6                	test   esi,esi
10008a47:	57                   	push   edi
10008a48:	8d 44 08 18          	lea    eax,[eax+ecx*1+0x18]
10008a4c:	76 1e                	jbe    0x10008a6c
10008a4e:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
10008a52:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
10008a55:	3b f9                	cmp    edi,ecx
10008a57:	72 09                	jb     0x10008a62
10008a59:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
10008a5c:	03 d9                	add    ebx,ecx
10008a5e:	3b fb                	cmp    edi,ebx
10008a60:	72 0c                	jb     0x10008a6e
10008a62:	83 c2 01             	add    edx,0x1
10008a65:	83 c0 28             	add    eax,0x28
10008a68:	3b d6                	cmp    edx,esi
10008a6a:	72 e6                	jb     0x10008a52
10008a6c:	33 c0                	xor    eax,eax
10008a6e:	5f                   	pop    edi
10008a6f:	5e                   	pop    esi
10008a70:	5b                   	pop    ebx
10008a71:	c3                   	ret    
10008a72:	cc                   	int3   
10008a73:	cc                   	int3   
10008a74:	cc                   	int3   
10008a75:	cc                   	int3   
10008a76:	cc                   	int3   
10008a77:	cc                   	int3   
10008a78:	cc                   	int3   
10008a79:	cc                   	int3   
10008a7a:	cc                   	int3   
10008a7b:	cc                   	int3   
10008a7c:	cc                   	int3   
10008a7d:	cc                   	int3   
10008a7e:	cc                   	int3   
10008a7f:	cc                   	int3   
