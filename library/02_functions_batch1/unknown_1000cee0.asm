1000cee0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000cee4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1000cee8:	0b c8                	or     ecx,eax
1000ceea:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1000ceee:	75 09                	jne    0x1000cef9
1000cef0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
1000cef4:	f7 e1                	mul    ecx
1000cef6:	c2 10 00             	ret    0x10
1000cef9:	53                   	push   ebx
1000cefa:	f7 e1                	mul    ecx
1000cefc:	8b d8                	mov    ebx,eax
1000cefe:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000cf02:	f7 64 24 14          	mul    DWORD PTR [esp+0x14]
1000cf06:	03 d8                	add    ebx,eax
1000cf08:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000cf0c:	f7 e1                	mul    ecx
1000cf0e:	03 d3                	add    edx,ebx
1000cf10:	5b                   	pop    ebx
1000cf11:	c2 10 00             	ret    0x10
1000cf14:	cc                   	int3   
1000cf15:	cc                   	int3   
1000cf16:	cc                   	int3   
1000cf17:	cc                   	int3   
1000cf18:	cc                   	int3   
1000cf19:	cc                   	int3   
1000cf1a:	cc                   	int3   
1000cf1b:	cc                   	int3   
1000cf1c:	cc                   	int3   
1000cf1d:	cc                   	int3   
1000cf1e:	cc                   	int3   
1000cf1f:	cc                   	int3   
