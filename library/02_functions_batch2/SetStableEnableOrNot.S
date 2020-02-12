; SetStableEnableOrNot
;
; void
; SetStableEnableOrNot(
;     uint Readenable
; );
;

_entry_10001110:
	cmp    DWORD PTR [esp+0x4],0x0
	setne  al
	mov    ds:0x10016083,al
	ret    0x4
