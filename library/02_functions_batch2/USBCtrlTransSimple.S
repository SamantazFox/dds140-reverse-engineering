; USBCtrlTransSimple
;
; int
; USBCtrlTransSimple(
;     int Request
; );
;

_entry_100033d0:
	sub    esp,0xc                          ; Allocate 12 Bytes of local variables
	                                        ; Stack:
	                                        ;   byte ???
	                                        ;   byte ???
	                                        ;   word local_var1

	                                        ;   word local_var2
	                                        ;   byte local_var3
	                                        ;   byte ????
	                                        ;   byte local_var4


	xor    eax,eax                          ; eax = 0

	cmp    DWORD PTR ds:0x10010000,0xffffffff
	je     _10003427                        ; make sure that _global_01001000 != -1

	mov    cl,BYTE PTR [esp+0x10]           ; 
	push   eax                              ; arg -> Overlapped

	lea    edx,[esp+0x14]                   ; save our base address to edx
	push   edx                              ; push edx on the stack (new BP?)

	mov    WORD PTR [esp+0xe],ax            ; local_var1 = ax = 0
	mov    WORD PTR [esp+0x10],ax           ; local_var2 = ax = 0
	push   0x1                              ;

	mov    BYTE PTR [esp+0xf],al            ; byte local_var3 = al
	mov    BYTE PTR [esp+0x11],cl           ; byte local_var4 = cl
	lea    eax,[esp+0xf]                    ; store pointer to local_var3 in eax
	push   eax                              ; push eax on the stack

	mov    eax,_global_InterfaceHandle      ; ds:0x10015210
	mov    WORD PTR [esp+0x1a],0x1          ; local_var

	mov    ecx,DWORD PTR [esp+0x18]
	push   ecx                              ; arg -> Buffer

	mov    BYTE PTR [esp+0x18],0x80
	mov    edx,DWORD PTR [esp+0x18]
	push   edx                              ; arg -> SetupPacket
	push   eax                              ; arg -> InterfaceHandle
	call   <WinUsb_ControlTransfer()>       ; 0x1000381c
	; BOOL WinUsb_ControlTransfer(
	;   WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   WINUSB_SETUP_PACKET     SetupPacket,
	;   PUCHAR                  Buffer,
	;   ULONG                   BufferLength,
	;   PULONG                  LengthTransferred,
	;   LPOVERLAPPED            Overlapped
	; );

	movzx  eax,BYTE PTR [esp+0x3]

_10003427:
	add    esp,0xc
	ret    0x4
