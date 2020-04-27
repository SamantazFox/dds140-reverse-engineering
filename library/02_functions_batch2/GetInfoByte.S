; GetInfoByte
;
; byte
; GetInfoByte(
;     int index
; );
;

_entry_10001190:
	mov    eax,DWORD PTR [esp+0x4]       ; eax = Arg #1 -> index

	sub    eax,0x0                       ; is eax == 0 ?
	je     _case_eax_0                   ; if yes, jump to 0x100011b8

	sub    eax,0x1                       ; is eax == 1 ?
	je     _case_eax_1                   ; if yes, jump to 0x100011b0

	sub    eax,0x1                       ; is eax == 2 ?
	je     _case_eax_2                   ; if yes, jump to 0x100011a8

	xor    al,al                         ; return_data = 0
	ret    0x4                           ; return and free 4 bytes

; 0x100011a8
_case_eax_2:
	mov    al,_global_TrigEdgeFlag       ; return_data = data @ ds:0x10016082
	ret    0x4                           ; return and free 4 bytes

; 0x100011b0
_case_eax_1:
	mov    al,_global_TrigSourceChan     ; return_data = data @ ds:0x10016080
	ret    0x4                           ; return and free 4 bytes

; 0x100011b8
_case_eax_0:
	mov    al,_global_ChannelMask        ; return_data = data @ ds:0x1001608c
	ret    0x4                           ; return and free 4 bytes
