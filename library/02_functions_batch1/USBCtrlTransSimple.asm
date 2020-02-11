100033d0:	83 ec 0c             	sub    esp,0xc
100033d3:	33 c0                	xor    eax,eax
100033d5:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
100033dc:	74 49                	je     0x10003427
100033de:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
100033e2:	50                   	push   eax
100033e3:	8d 54 24 14          	lea    edx,[esp+0x14]
100033e7:	52                   	push   edx
100033e8:	66 89 44 24 0e       	mov    WORD PTR [esp+0xe],ax
100033ed:	66 89 44 24 10       	mov    WORD PTR [esp+0x10],ax
100033f2:	6a 01                	push   0x1
100033f4:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
100033f8:	88 4c 24 11          	mov    BYTE PTR [esp+0x11],cl
100033fc:	8d 44 24 0f          	lea    eax,[esp+0xf]
10003400:	50                   	push   eax
10003401:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003406:	66 c7 44 24 1a 01 00 	mov    WORD PTR [esp+0x1a],0x1
1000340d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10003411:	51                   	push   ecx
10003412:	c6 44 24 18 80       	mov    BYTE PTR [esp+0x18],0x80
10003417:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1000341b:	52                   	push   edx
1000341c:	50                   	push   eax
1000341d:	e8 fa 03 00 00       	call   0x1000381c
10003422:	0f b6 44 24 03       	movzx  eax,BYTE PTR [esp+0x3]
10003427:	83 c4 0c             	add    esp,0xc
1000342a:	c2 04 00             	ret    0x4
1000342d:	cc                   	int3   
1000342e:	cc                   	int3   
1000342f:	cc                   	int3   
