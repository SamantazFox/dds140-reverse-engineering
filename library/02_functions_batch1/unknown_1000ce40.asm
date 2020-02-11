1000ce40:	56                   	push   esi
1000ce41:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1000ce45:	0b c0                	or     eax,eax
1000ce47:	75 28                	jne    0x1000ce71
1000ce49:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1000ce4d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1000ce51:	33 d2                	xor    edx,edx
1000ce53:	f7 f1                	div    ecx
1000ce55:	8b d8                	mov    ebx,eax
1000ce57:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000ce5b:	f7 f1                	div    ecx
1000ce5d:	8b f0                	mov    esi,eax
1000ce5f:	8b c3                	mov    eax,ebx
1000ce61:	f7 64 24 10          	mul    DWORD PTR [esp+0x10]
1000ce65:	8b c8                	mov    ecx,eax
1000ce67:	8b c6                	mov    eax,esi
1000ce69:	f7 64 24 10          	mul    DWORD PTR [esp+0x10]
1000ce6d:	03 d1                	add    edx,ecx
1000ce6f:	eb 47                	jmp    0x1000ceb8
1000ce71:	8b c8                	mov    ecx,eax
1000ce73:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
1000ce77:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1000ce7b:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000ce7f:	d1 e9                	shr    ecx,1
1000ce81:	d1 db                	rcr    ebx,1
1000ce83:	d1 ea                	shr    edx,1
1000ce85:	d1 d8                	rcr    eax,1
1000ce87:	0b c9                	or     ecx,ecx
1000ce89:	75 f4                	jne    0x1000ce7f
1000ce8b:	f7 f3                	div    ebx
1000ce8d:	8b f0                	mov    esi,eax
1000ce8f:	f7 64 24 14          	mul    DWORD PTR [esp+0x14]
1000ce93:	8b c8                	mov    ecx,eax
1000ce95:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
1000ce99:	f7 e6                	mul    esi
1000ce9b:	03 d1                	add    edx,ecx
1000ce9d:	72 0e                	jb     0x1000cead
1000ce9f:	3b 54 24 0c          	cmp    edx,DWORD PTR [esp+0xc]
1000cea3:	77 08                	ja     0x1000cead
1000cea5:	72 0f                	jb     0x1000ceb6
1000cea7:	3b 44 24 08          	cmp    eax,DWORD PTR [esp+0x8]
1000ceab:	76 09                	jbe    0x1000ceb6
1000cead:	4e                   	dec    esi
1000ceae:	2b 44 24 10          	sub    eax,DWORD PTR [esp+0x10]
1000ceb2:	1b 54 24 14          	sbb    edx,DWORD PTR [esp+0x14]
1000ceb6:	33 db                	xor    ebx,ebx
1000ceb8:	2b 44 24 08          	sub    eax,DWORD PTR [esp+0x8]
1000cebc:	1b 54 24 0c          	sbb    edx,DWORD PTR [esp+0xc]
1000cec0:	f7 da                	neg    edx
1000cec2:	f7 d8                	neg    eax
1000cec4:	83 da 00             	sbb    edx,0x0
1000cec7:	8b ca                	mov    ecx,edx
1000cec9:	8b d3                	mov    edx,ebx
1000cecb:	8b d9                	mov    ebx,ecx
1000cecd:	8b c8                	mov    ecx,eax
1000cecf:	8b c6                	mov    eax,esi
1000ced1:	5e                   	pop    esi
1000ced2:	c2 10 00             	ret    0x10
1000ced5:	cc                   	int3   
1000ced6:	cc                   	int3   
1000ced7:	cc                   	int3   
1000ced8:	cc                   	int3   
1000ced9:	cc                   	int3   
1000ceda:	cc                   	int3   
1000cedb:	cc                   	int3   
1000cedc:	cc                   	int3   
1000cedd:	cc                   	int3   
1000cede:	cc                   	int3   
1000cedf:	cc                   	int3
