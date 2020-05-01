; unknown_10005a26

_entry_10005a26:
	call   0x10005ec2

	push   DWORD PTR [esp+0x4]
	call   0x10005d22

	push   DWORD PTR ds:0x100102d8
	call   0x1000610e

	push   0xff
	call   eax
	add    esp,0xc
	ret    
