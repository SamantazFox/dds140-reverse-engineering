; SetReadEnableOrNot
;
; void
; SetReadEnableOrNot(
;     uint Readenable
; );
;

_entry_10001100:
	mov    eax,DWORD PTR [esp+0x4]       ; eax = Arg #1 -> Readenable
	mov    _global_ReadEnable,eax        ; _global_ReadEnable (ds:0x1001609c) = eax
	ret    0x4                           ; Return and free 4 bytes on stack
