; SetTrigInfo
;
; void
; SetTrigInfo(
;     byte TrigSourceChan,
;     byte TrigMode,
;     byte TrigEdgeFlag
; );
;

_entry_10001170:
	mov    al,BYTE PTR [esp+0x4]                ; al = Arg #1 -> TrigSourceChan
	mov    cl,BYTE PTR [esp+0x8]                ; cl = Arg #2 -> TrigMode
	mov    dl,BYTE PTR [esp+0xc]                ; dl = Arg #3 -> TrigEdgeFlag
	mov    _global_TrigSourceChan,al            ; (ds:0x10016080)
	mov    _global_TrigMode,cl                  ; (BYTE PTR ds:0x10016081)
	mov    _global_TrigEdgeFlag,dl              ; (BYTE PTR ds:0x10016082)
	ret    0xc                                  ; Return and free 12 bytes on the stack
