; GetRawData4Read
;
; IntPtr
; GetRawData4Read(
;     int index
; );
;

_entry_10001200:
	cmp    DWORD PTR [esp+0x4],0x0          ; 'index' == 0 ?
	mov    eax,0x10011010                   ; retVal = _global_10011010
	je     _10001211                        ; if compare above is true, jump

	mov    eax,0x10013210                   ; retVal = _global_10013210

_10001211:
	ret    0x4                              ; return retVal
