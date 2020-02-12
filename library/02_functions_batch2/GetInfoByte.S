// GetInfoByte

_entry_10001190:
	mov    eax,DWORD PTR [esp+0x4]

	sub    eax,0x0
	je     _100011b8

	sub    eax,0x1
	je     _100011b0

	sub    eax,0x1
	je     _100011a8

	xor    al,al
	ret    0x4

_100011a8:
	mov    al,ds:0x10016082
	ret    0x4

_100011b0:
	mov    al,ds:0x10016080
	ret    0x4

_100011b8:
	mov    al,ds:0x1001608c
	ret    0x4
