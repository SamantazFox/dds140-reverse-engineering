1000a250:	55                   	push   ebp
1000a251:	8b ec                	mov    ebp,esp
1000a253:	56                   	push   esi
1000a254:	33 c0                	xor    eax,eax
1000a256:	50                   	push   eax
1000a257:	50                   	push   eax
1000a258:	50                   	push   eax
1000a259:	50                   	push   eax
1000a25a:	50                   	push   eax
1000a25b:	50                   	push   eax
1000a25c:	50                   	push   eax
1000a25d:	50                   	push   eax
1000a25e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
1000a261:	8d 49 00             	lea    ecx,[ecx+0x0]
1000a264:	8a 02                	mov    al,BYTE PTR [edx]
1000a266:	0a c0                	or     al,al
1000a268:	74 09                	je     0x1000a273
1000a26a:	83 c2 01             	add    edx,0x1
1000a26d:	0f ab 04 24          	bts    DWORD PTR [esp],eax
1000a271:	eb f1                	jmp    0x1000a264
1000a273:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
1000a276:	8b ff                	mov    edi,edi
1000a278:	8a 06                	mov    al,BYTE PTR [esi]
1000a27a:	0a c0                	or     al,al
1000a27c:	74 0c                	je     0x1000a28a
1000a27e:	83 c6 01             	add    esi,0x1
1000a281:	0f a3 04 24          	bt     DWORD PTR [esp],eax
1000a285:	73 f1                	jae    0x1000a278
1000a287:	8d 46 ff             	lea    eax,[esi-0x1]
1000a28a:	83 c4 20             	add    esp,0x20
1000a28d:	5e                   	pop    esi
1000a28e:	c9                   	leave  
1000a28f:	c3                   	ret    
