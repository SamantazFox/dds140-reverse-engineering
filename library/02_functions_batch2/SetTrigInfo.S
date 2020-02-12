// SetTrigInfo

_entry_10001170:
	mov    al,BYTE PTR [esp+0x4]
	mov    cl,BYTE PTR [esp+0x8]
	mov    dl,BYTE PTR [esp+0xc]
	mov    ds:0x10016080,al
	mov    BYTE PTR ds:0x10016081,cl
	mov    BYTE PTR ds:0x10016082,dl
	ret    0xc
