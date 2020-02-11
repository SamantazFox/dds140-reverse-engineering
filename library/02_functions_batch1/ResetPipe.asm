10003630:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003635:	85 c0                	test   eax,eax
10003637:	74 27                	je     0x10003660
10003639:	83 f8 ff             	cmp    eax,0xffffffff
1000363c:	74 22                	je     0x10003660
1000363e:	0f b6 0d 04 10 01 10 	movzx  ecx,BYTE PTR ds:0x10011004
10003645:	51                   	push   ecx
10003646:	50                   	push   eax
10003647:	e8 dc 01 00 00       	call   0x10003828
1000364c:	0f b6 15 04 10 01 10 	movzx  edx,BYTE PTR ds:0x10011004
10003653:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003658:	52                   	push   edx
10003659:	50                   	push   eax
1000365a:	e8 c3 01 00 00       	call   0x10003822
1000365f:	c3                   	ret    
10003660:	33 c0                	xor    eax,eax
10003662:	c3                   	ret    
10003663:	cc                   	int3   
10003664:	cc                   	int3   
10003665:	cc                   	int3   
10003666:	cc                   	int3   
10003667:	cc                   	int3   
10003668:	cc                   	int3   
10003669:	cc                   	int3   
1000366a:	cc                   	int3   
1000366b:	cc                   	int3   
1000366c:	cc                   	int3   
1000366d:	cc                   	int3   
1000366e:	cc                   	int3   
1000366f:	cc                   	int3
