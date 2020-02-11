1000a200:	55                   	push   ebp
1000a201:	8b ec                	mov    ebp,esp
1000a203:	56                   	push   esi
1000a204:	33 c0                	xor    eax,eax
1000a206:	50                   	push   eax
1000a207:	50                   	push   eax
1000a208:	50                   	push   eax
1000a209:	50                   	push   eax
1000a20a:	50                   	push   eax
1000a20b:	50                   	push   eax
1000a20c:	50                   	push   eax
1000a20d:	50                   	push   eax
1000a20e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
1000a211:	8d 49 00             	lea    ecx,[ecx+0x0]
1000a214:	8a 02                	mov    al,BYTE PTR [edx]
1000a216:	0a c0                	or     al,al
1000a218:	74 09                	je     0x1000a223
1000a21a:	83 c2 01             	add    edx,0x1
1000a21d:	0f ab 04 24          	bts    DWORD PTR [esp],eax
1000a221:	eb f1                	jmp    0x1000a214
1000a223:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000a226:	83 c9 ff             	or     ecx,0xffffffff
1000a229:	8d 49 00             	lea    ecx,[ecx+0x0]
1000a22c:	83 c1 01             	add    ecx,0x1
1000a22f:	8a 06                	mov    al,BYTE PTR [esi]
1000a231:	0a c0                	or     al,al
1000a233:	74 09                	je     0x1000a23e
1000a235:	83 c6 01             	add    esi,0x1
1000a238:	0f a3 04 24          	bt     DWORD PTR [esp],eax
1000a23c:	73 ee                	jae    0x1000a22c
1000a23e:	8b c1                	mov    eax,ecx
1000a240:	83 c4 20             	add    esp,0x20
1000a243:	5e                   	pop    esi
1000a244:	c9                   	leave  
1000a245:	c3                   	ret    
1000a246:	cc                   	int3   
1000a247:	cc                   	int3   
1000a248:	cc                   	int3   
1000a249:	cc                   	int3   
1000a24a:	cc                   	int3   
1000a24b:	cc                   	int3   
1000a24c:	cc                   	int3   
1000a24d:	cc                   	int3   
1000a24e:	cc                   	int3   
1000a24f:	cc                   	int3   
