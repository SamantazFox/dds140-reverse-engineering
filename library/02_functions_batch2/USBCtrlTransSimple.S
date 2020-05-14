; USBCtrlTransSimple
;
; int
; USBCtrlTransSimple(
;     int Request
; );
;
;
; Needed for WinUsb_ControlTransfer():
;
; typedef struct _WINUSB_SETUP_PACKET {
;   UCHAR  RequestType;
;   UCHAR  Request;
;   USHORT Value;
;   USHORT Index;
;   USHORT Length;
; } WINUSB_SETUP_PACKET, *PWINUSB_SETUP_PACKET;
;

_entry_100033d0:
	sub    esp,0xc                          ; Allocate 12 Bytes of local variables

	xor    eax,eax                          ; eax = 0

	cmp    _global_DeviceHandle,0xffffffff  ; DWORD PTR ds:0x10010000
	je     _10003427                        ; make sure that _global_DeviceHandle != -1

	mov    cl,BYTE PTR [esp+0x10]           ; cl = Arg #1 -> Request
	push   eax                              ; arg -> Overlapped

	lea    edx,[esp+0x14]                   ; save our base address to edx
	push   edx                              ; push edx on the stack (new BP?)

	mov    WORD PTR [esp+0xe],ax            ; SetupPacket.Value = ax = 0
	mov    WORD PTR [esp+0x10],ax           ; SetupPacket.Index = ax = 0

	push   0x1                              ; arg -> BufferLength

	mov    BYTE PTR [esp+0xf],al            ; buffer = 0
	mov    BYTE PTR [esp+0x11],cl           ; SetupPacket.Request = cl (Arg #1 -> Request)

	lea    eax,[esp+0xf]                    ; eax = addressOf(local_var_2)
	push   eax                              ; arg -> *Buffer

	mov    eax,_global_InterfaceHandle      ; ds:0x10015210
	mov    WORD PTR [esp+0x1a],0x1          ; SetupPacket.Length = 1


	mov    ecx,DWORD PTR [esp+0x18]         ; edx = SetupPacket (high)
	push   ecx                              ; arg -> SetupPacket (high 4 bytes)
	                                        ;         - SetupPacket.Length  (esp+0x2)
	                                        ;         - SetupPacket.Index   (esp+0x0)

	mov    BYTE PTR [esp+0x18],0x80         ; SetupPacket.RequestType = 0x80
	                                        ;   Characteristics of request:
	                                        ;    1xxx xxxx : Data transfer direction = Device-to-host
	                                        ;    x00x xxxx : Type = Standard
	                                        ;    xxx0 0000 : Recipient = Device

	mov    edx,DWORD PTR [esp+0x18]         ; eax = SetupPacket (low)
	push   edx                              ; arg -> SetupPacket (low 4 bytes)
	                                        ;        - SetupPacket.Value       (edx+0x2)
	                                        ;        - SetupPacket.Request     (edx+0x1)
	                                        ;        - SetupPacket.RequestType (edx+0x0)


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
