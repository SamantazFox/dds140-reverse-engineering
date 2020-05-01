10005a26:	e8 97 04 00 00       	call   0x10005ec2
10005a2b:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a2f:	e8 ee 02 00 00       	call   0x10005d22
10005a34:	ff 35 d8 02 01 10    	push   DWORD PTR ds:0x100102d8
10005a3a:	e8 cf 06 00 00       	call   0x1000610e
10005a3f:	68 ff 00 00 00       	push   0xff
10005a44:	ff d0                	call   eax
10005a46:	83 c4 0c             	add    esp,0xc
10005a49:	c3                   	ret    
10005a4a:	68 50 d2 00 10       	push   0x1000d250
10005a4f:	ff 15 50 d0 00 10    	call   <GetModuleHandleA()>  ; DWORD PTR ds:0x1000d050
10005a55:	85 c0                	test   eax,eax
10005a57:	74 16                	je     0x10005a6f
10005a59:	68 40 d2 00 10       	push   0x1000d240
10005a5e:	50                   	push   eax
10005a5f:	ff 15 4c d0 00 10    	call   <GetProcAddress()>  ; DWORD PTR ds:0x1000d04c
10005a65:	85 c0                	test   eax,eax
10005a67:	74 06                	je     0x10005a6f
10005a69:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
10005a6d:	ff d0                	call   eax
10005a6f:	c3                   	ret    
