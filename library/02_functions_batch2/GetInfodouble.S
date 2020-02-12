// GetInfodouble

_entry_100011c0:
	mov    eax,DWORD PTR [esp+0x4]
	sub    eax,0x0
	je     _100011eb
	sub    eax,0x1
	je     _100011d3
	fldz
	ret    0x4

_100011d3:
	mov    eax,ds:0x10016098
	fild   DWORD PTR ds:0x10016098
	test   eax,eax
	jge    _100011f1
	fadd   pow2(32)                      ; QWORD* ds:0x1000d180 / see globals
	ret    0x4

_100011eb:
	fld    QWORD PTR ds:0x10016090

_100011f1:
	ret    0x4
