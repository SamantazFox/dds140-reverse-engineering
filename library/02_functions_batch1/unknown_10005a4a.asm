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
