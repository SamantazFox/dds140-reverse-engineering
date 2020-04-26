; SetStableEnableOrNot
;
; void
; SetStableEnableOrNot(
;     uint StableEnable
; );
;

_entry_10001110:
	cmp    DWORD PTR [esp+0x4],0x0       ; is Arg #1 == 0x0 ?
	setne  al                            ; al = !(zero_flag)
	                                     ;   if ZF is set : al = 0
	                                     ;   if ZF is clr : al = 1
	mov    _global_ReadEnable,al         ; _global_ReadEnable (ds:0x10016083) = al
	ret    0x4                           ; Return and free 4 bytes on stack
