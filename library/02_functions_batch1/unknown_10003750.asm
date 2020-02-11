10003750:	a1 10 52 01 10       	mov    eax,ds:0x10015210
10003755:	85 c0                	test   eax,eax
10003757:	74 06                	je     0x1000375f
10003759:	50                   	push   eax
1000375a:	e8 e7 00 00 00       	call   0x10003846
1000375f:	b8 01 00 00 00       	mov    eax,0x1
10003764:	c7 05 10 52 01 10 ff 	mov    DWORD PTR ds:0x10015210,0xffffffff
1000376b:	ff ff ff 
1000376e:	c3                   	ret    
1000376f:	cc                   	int3   
