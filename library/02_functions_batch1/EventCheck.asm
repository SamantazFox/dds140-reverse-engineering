100034f0:	83 3d 9c 60 01 10 00 	cmp    DWORD PTR ds:0x1001609c,0x0
100034f7:	75 05                	jne    0x100034fe
100034f9:	33 c0                	xor    eax,eax
100034fb:	c2 04 00             	ret    0x4
100034fe:	83 3d 00 00 01 10 ff 	cmp    DWORD PTR ds:0x10010000,0xffffffff
10003505:	75 06                	jne    0x1000350d
10003507:	83 c8 ff             	or     eax,0xffffffff
1000350a:	c2 04 00             	ret    0x4
1000350d:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003511:	8b 0d 0c 60 01 10    	mov    ecx,DWORD PTR ds:0x1001600c
10003517:	50                   	push   eax
10003518:	6a 00                	push   0x0
1000351a:	68 10 30 01 10       	push   0x10013010
1000351f:	51                   	push   ecx
10003520:	ff 15 14 d0 00 10    	call   DWORD PTR ds:0x1000d014
10003526:	83 f8 ff             	cmp    eax,0xffffffff
10003529:	74 dc                	je     0x10003507
1000352b:	3d 02 01 00 00       	cmp    eax,0x102
10003530:	75 05                	jne    0x10003537
10003532:	b8 55 05 00 00       	mov    eax,0x555
10003537:	c2 04 00             	ret    0x4
1000353a:	cc                   	int3   
1000353b:	cc                   	int3   
1000353c:	cc                   	int3   
1000353d:	cc                   	int3   
1000353e:	cc                   	int3   
1000353f:	cc                   	int3
