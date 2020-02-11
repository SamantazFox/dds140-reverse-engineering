10001190:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001194:	83 e8 00             	sub    eax,0x0
10001197:	74 1f                	je     0x100011b8
10001199:	83 e8 01             	sub    eax,0x1
1000119c:	74 12                	je     0x100011b0
1000119e:	83 e8 01             	sub    eax,0x1
100011a1:	74 05                	je     0x100011a8
100011a3:	32 c0                	xor    al,al
100011a5:	c2 04 00             	ret    0x4
100011a8:	a0 82 60 01 10       	mov    al,ds:0x10016082
100011ad:	c2 04 00             	ret    0x4
100011b0:	a0 80 60 01 10       	mov    al,ds:0x10016080
100011b5:	c2 04 00             	ret    0x4
100011b8:	a0 8c 60 01 10       	mov    al,ds:0x1001608c
100011bd:	c2 04 00             	ret    0x4
