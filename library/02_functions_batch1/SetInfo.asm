10001120:	8a 44 24 14          	mov    al,BYTE PTR [esp+0x14]
10001124:	dd 44 24 04          	fld    QWORD PTR [esp+0x4]
10001128:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1000112c:	dd 1d 90 60 01 10    	fstp   QWORD PTR ds:0x10016090
10001132:	dd 44 24 0c          	fld    QWORD PTR [esp+0xc]
10001136:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
1000113a:	a2 8c 60 01 10       	mov    ds:0x1001608c,al
1000113f:	dd 1d 78 60 01 10    	fstp   QWORD PTR ds:0x10016078
10001145:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
10001149:	89 0d 44 60 01 10    	mov    DWORD PTR ds:0x10016044,ecx
1000114f:	89 15 74 60 01 10    	mov    DWORD PTR ds:0x10016074,edx
10001155:	a3 84 60 01 10       	mov    ds:0x10016084,eax
1000115a:	c2 20 00             	ret    0x20
1000115d:	cc                   	int3   
1000115e:	cc                   	int3   
1000115f:	cc                   	int3   
