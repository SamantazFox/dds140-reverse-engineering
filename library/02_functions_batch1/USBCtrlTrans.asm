10003430:	83 ec 0c             	sub    esp,0xc
10003433:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
1000343a:	75 08                	jne    0x10003444
1000343c:	32 c0                	xor    al,al
1000343e:	83 c4 0c             	add    esp,0xc
10003441:	c2 0c 00             	ret    0xc
10003444:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
10003448:	66 8b 54 24 14       	mov    dx,WORD PTR [esp+0x14]
1000344d:	33 c0                	xor    eax,eax
1000344f:	50                   	push   eax
10003450:	66 89 44 24 0c       	mov    WORD PTR [esp+0xc],ax
10003455:	88 44 24 07          	mov    BYTE PTR [esp+0x7],al
10003459:	8d 44 24 14          	lea    eax,[esp+0x14]
1000345d:	50                   	push   eax
1000345e:	88 4c 24 0d          	mov    BYTE PTR [esp+0xd],cl
10003462:	6a 01                	push   0x1
10003464:	66 89 54 24 12       	mov    WORD PTR [esp+0x12],dx
10003469:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
1000346d:	51                   	push   ecx
1000346e:	8b 0d 10 52 01 10    	mov    ecx,DWORD PTR ds:0x10015210
10003474:	66 c7 44 24 1a 01 00 	mov    WORD PTR [esp+0x1a],0x1
1000347b:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1000347f:	52                   	push   edx
10003480:	c6 44 24 18 80       	mov    BYTE PTR [esp+0x18],0x80
10003485:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10003489:	50                   	push   eax
1000348a:	51                   	push   ecx
1000348b:	e8 8c 03 00 00       	call   0x1000381c
10003490:	8a 44 24 03          	mov    al,BYTE PTR [esp+0x3]
10003494:	83 c4 0c             	add    esp,0xc
10003497:	c2 0c 00             	ret    0xc
1000349a:	cc                   	int3   
1000349b:	cc                   	int3   
1000349c:	cc                   	int3   
1000349d:	cc                   	int3   
1000349e:	cc                   	int3   
1000349f:	cc                   	int3
