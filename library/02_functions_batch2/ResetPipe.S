; ResetPipe
;
; bool
; ResetPipe();
;

_entry_10003630:
	mov    eax,_global_InterfaceHandle      ; ds:0x10015210
	test   eax,eax                          ; if eax == NULL
	je     _10003660                        ; jump

	cmp    eax,0xffffffff
	je     _10003660

	movzx  ecx,_global_PipeID               ; BYTE PTR ds:0x10011004
	push   ecx                              ; arg -> PipeID
	push   eax                              ; arg -> InterfaceHandle
	call   <WinUsb_AbortPipe()>             ; 0x10003828
	; BOOL WinUsb_AbortPipe(
	;   WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   UCHAR                   PipeID
	; );

	movzx  edx,_global_PipeID               ; BYTE PTR ds:0x10011004
	mov    eax,_global_InterfaceHandle      ; ds:0x10015210
	push   edx                              ; arg -> PipeID
	push   eax                              ; arg -> InterfaceHandle
	call   <WinUsb_ResetPipe()>             ; 0x10003822
	; BOOL WinUsb_ResetPipe(
	;   WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   UCHAR                   PipeID
	; );

	ret

_10003660:
	xor    eax,eax                          ; return 0
	ret
