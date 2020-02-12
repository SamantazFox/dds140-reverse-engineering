; free_interface
;
; bool
; free_interface(void);
;


_entry_10003750:
	mov    eax,_global_InterfaceHandle             ; ds:0x10015210

	test   eax,eax
	je     _1000375f                               ; jump if InterfaceHandle == NULL

	push   eax                                     ; arg -> InterfaceHandle
	call   <WinUsb_Free()>                         ; 0x10003846
	; BOOL WinUsb_Free(
	;   WINUSB_INTERFACE_HANDLE InterfaceHandle
	; );

_1000375f:
	mov    eax,0x1                                 ; Prepare to return 0
	mov    _global_InterfaceHandle,0xffffffff      ; DWORD PTR ds:0x10015210
	                                               ; Set InterfaceHandle to -1

	ret                                            ; return from function
