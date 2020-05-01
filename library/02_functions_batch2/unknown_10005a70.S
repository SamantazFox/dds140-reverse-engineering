; unknown_10005a70

_entry_10005a70:
	push   DWORD PTR [esp+0x4]
	call   0x10005a4a

	pop    ecx                           ; ???

	push   DWORD PTR [esp+0x4]
	call   <ExitProcess()>               ; DWORD PTR ds:0x1000d06c
