100011c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100011c4:	83 e8 00             	sub    eax,0x0
100011c7:	74 22                	je     0x100011eb
100011c9:	83 e8 01             	sub    eax,0x1
100011cc:	74 05                	je     0x100011d3
100011ce:	d9 ee                	fldz   
100011d0:	c2 04 00             	ret    0x4
100011d3:	a1 98 60 01 10       	mov    eax,ds:0x10016098
100011d8:	db 05 98 60 01 10    	fild   DWORD PTR ds:0x10016098
100011de:	85 c0                	test   eax,eax
100011e0:	7d 0f                	jge    0x100011f1
100011e2:	dc 05 80 d1 00 10    	fadd   QWORD PTR ds:0x1000d180
100011e8:	c2 04 00             	ret    0x4
100011eb:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
100011f1:	c2 04 00             	ret    0x4
100011f4:	cc                   	int3   
100011f5:	cc                   	int3   
100011f6:	cc                   	int3   
100011f7:	cc                   	int3   
100011f8:	cc                   	int3   
100011f9:	cc                   	int3   
100011fa:	cc                   	int3   
100011fb:	cc                   	int3   
100011fc:	cc                   	int3   
100011fd:	cc                   	int3   
100011fe:	cc                   	int3   
100011ff:	cc                   	int3   
