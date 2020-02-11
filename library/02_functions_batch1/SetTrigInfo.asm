10001170:	8a 44 24 04          	mov    al,BYTE PTR [esp+0x4]
10001174:	8a 4c 24 08          	mov    cl,BYTE PTR [esp+0x8]
10001178:	8a 54 24 0c          	mov    dl,BYTE PTR [esp+0xc]
1000117c:	a2 80 60 01 10       	mov    ds:0x10016080,al
10001181:	88 0d 81 60 01 10    	mov    BYTE PTR ds:0x10016081,cl
10001187:	88 15 82 60 01 10    	mov    BYTE PTR ds:0x10016082,dl
1000118d:	c2 0c 00             	ret    0xc
