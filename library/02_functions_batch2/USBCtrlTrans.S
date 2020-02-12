; USBCtrlTrans
;
; byte
; USBCtrlTrans(
;     byte Request,
;     ushort usValue,
;     uint outBufSize
; );
;

_entry_10003430:
	sub    esp,0xc                          ; increase stack: 3 Bytes
	cmp    DWORD PTR ds:0x10010000,0xffffffff
	jne    _10003444                        ; make sure that _global_01001000 != -1

	xor    al,al
	add    esp,0xc
	ret    0xc

_10003444:
	mov    cl,BYTE PTR [esp+0x10]           ; put 'Request' in cl (low 8b of ecx)
	mov    dx,WORD PTR [esp+0x14]           ; put 'usValue' in dx (low 16b of edx)

	xor    eax,eax                          ; eax = 0
	push   eax                              ; arg -> Overlapped

	mov    WORD PTR [esp+0xc],ax
	mov    BYTE PTR [esp+0x7],al
	lea    eax,[esp+0x14]
	push   eax                              ; arg -> LengthTransferred

	mov    BYTE PTR [esp+0xd],cl
	push   0x1                              ; BufferLength (high)

	mov    WORD PTR [esp+0x12],dx
	lea    ecx,[esp+0xf]
	push   ecx                              ; arg -> BufferLength

	mov    ecx,_global_InterfaceHandle      ; DWORD PTR ds:0x10015210
	mov    WORD PTR [esp+0x1a],0x1

	mov    edx,DWORD PTR [esp+0x18]
	push   edx                              ; arg -> Buffer

	mov    BYTE PTR [esp+0x18],0x80
	mov    eax,DWORD PTR [esp+0x18]
	push   eax                              ; arg -> SetupPacket
	push   ecx                              ; arg -> InterfaceHandle
	call   <WinUsb_ControlTransfer()>       ; 0x1000381c
	; BOOL WinUsb_ControlTransfer(
	;   WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   WINUSB_SETUP_PACKET     SetupPacket,
	;   PUCHAR                  Buffer,
	;   ULONG                   BufferLength,
	;   PULONG                  LengthTransferred,
	;   LPOVERLAPPED            Overlapped
	; );

	mov    al,BYTE PTR [esp+0x3]
	add    esp,0xc
	ret    0xc
