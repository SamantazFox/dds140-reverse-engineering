10003770:	e8 cb fd ff ff       	call   0x10003540
10003775:	83 f8 ff             	cmp    eax,0xffffffff
10003778:	a3 00 00 01 10       	mov    ds:0x10010000,eax
1000377d:	74 1f                	je     0x1000379e
1000377f:	e8 ec fe ff ff       	call   0x10003670
10003784:	85 c0                	test   eax,eax
10003786:	75 1a                	jne    0x100037a2
10003788:	a1 00 00 01 10       	mov    eax,ds:0x10010000
1000378d:	50                   	push   eax
1000378e:	ff 15 0c d0 00 10    	call   DWORD PTR ds:0x1000d00c
10003794:	c7 05 00 00 01 10 ff 	mov    DWORD PTR ds:0x10010000,0xffffffff
1000379b:	ff ff ff 
1000379e:	83 c8 ff             	or     eax,0xffffffff
100037a1:	c3                   	ret    
100037a2:	e8 f9 fc ff ff       	call   0x100034a0
100037a7:	85 c0                	test   eax,eax
100037a9:	75 f3                	jne    0x1000379e
100037ab:	a3 20 52 01 10       	mov    ds:0x10015220,eax
100037b0:	a3 24 52 01 10       	mov    ds:0x10015224,eax
100037b5:	c3                   	ret    
100037b6:	cc                   	int3   
100037b7:	cc                   	int3   
100037b8:	cc                   	int3   
100037b9:	cc                   	int3   
100037ba:	cc                   	int3   
100037bb:	cc                   	int3   
100037bc:	cc                   	int3   
100037bd:	cc                   	int3   
100037be:	cc                   	int3   
100037bf:	cc                   	int3   
