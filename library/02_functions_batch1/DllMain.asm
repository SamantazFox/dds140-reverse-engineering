10001000:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10001004:	83 e8 00             	sub    eax,0x0
10001007:	74 46                	je     0x1000104f
10001009:	83 e8 01             	sub    eax,0x1
1000100c:	75 62                	jne    0x10001070
1000100e:	39 05 88 60 01 10    	cmp    DWORD PTR ds:0x10016088,eax
10001014:	75 21                	jne    0x10001037
10001016:	6a 40                	push   0x40
10001018:	68 00 10 00 00       	push   0x1000
1000101d:	68 00 00 40 01       	push   0x1400000
10001022:	50                   	push   eax
10001023:	ff 15 08 d0 00 10    	call   DWORD PTR ds:0x1000d008
10001029:	85 c0                	test   eax,eax
1000102b:	a3 88 60 01 10       	mov    ds:0x10016088,eax
10001030:	75 05                	jne    0x10001037
10001032:	33 c0                	xor    eax,eax
10001034:	c2 0c 00             	ret    0xc
10001037:	80 3d 2c 52 01 10 00 	cmp    BYTE PTR ds:0x1001522c,0x0
1000103e:	75 f2                	jne    0x10001032
10001040:	c6 05 2c 52 01 10 01 	mov    BYTE PTR ds:0x1001522c,0x1
10001047:	b8 01 00 00 00       	mov    eax,0x1
1000104c:	c2 0c 00             	ret    0xc
1000104f:	a1 88 60 01 10       	mov    eax,ds:0x10016088
10001054:	85 c0                	test   eax,eax
10001056:	74 18                	je     0x10001070
10001058:	68 00 80 00 00       	push   0x8000
1000105d:	6a 00                	push   0x0
1000105f:	50                   	push   eax
10001060:	ff 15 04 d0 00 10    	call   DWORD PTR ds:0x1000d004
10001066:	c7 05 88 60 01 10 00 	mov    DWORD PTR ds:0x10016088,0x0
1000106d:	00 00 00 
10001070:	b8 01 00 00 00       	mov    eax,0x1
10001075:	c2 0c 00             	ret    0xc
10001078:	cc                   	int3   
10001079:	cc                   	int3   
1000107a:	cc                   	int3   
1000107b:	cc                   	int3   
1000107c:	cc                   	int3   
1000107d:	cc                   	int3   
1000107e:	cc                   	int3   
1000107f:	cc                   	int3   
