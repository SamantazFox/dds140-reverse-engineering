10003a09:	6a 0c                	push   0xc
10003a0b:	68 e0 e3 00 10       	push   0x1000e3e0
10003a10:	e8 13 1e 00 00       	call   0x10005828
10003a15:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
10003a19:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10003a1c:	3b 35 e0 5d 01 10    	cmp    esi,DWORD PTR ds:0x10015de0
10003a22:	77 22                	ja     0x10003a46
10003a24:	6a 04                	push   0x4
10003a26:	e8 cd 12 00 00       	call   0x10004cf8
10003a2b:	59                   	pop    ecx
10003a2c:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10003a30:	56                   	push   esi
10003a31:	e8 0f 1b 00 00       	call   0x10005545
10003a36:	59                   	pop    ecx
10003a37:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10003a3a:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10003a41:	e8 09 00 00 00       	call   0x10003a4f
10003a46:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10003a49:	e8 1f 1e 00 00       	call   0x1000586d
10003a4e:	c3                   	ret    
10003a4f:	6a 04                	push   0x4
10003a51:	e8 ca 11 00 00       	call   0x10004c20
10003a56:	59                   	pop    ecx
10003a57:	c3                   	ret    
