; USBCtrlTrans
;
; byte
; USBCtrlTrans(
;     byte Request,
;     ushort Value,
;     uint outBufSize
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

_entry_10003430:

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x10
	;   Arg #2 -> Value      is at esp+0x08
	;   Arg #1 -> Request    is at esp+0x04
	;   Return address       is at esp+0x00

	sub    esp,0xc                          ; Allocate 12 bytes on the stack

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x18
	;   Arg #2 -> Value      is at esp+0x14
	;   Arg #1 -> Request    is at esp+0x10
	;   Return address       is at esp+0x0c

	;   End of LocaVars      is at esp+0x0c - 1
	;   Start of LocaVars    is at esp+0x00

	cmp    _global_DeviceHandle,0xffffffff  ; DWORD PTR ds:0x10010000
	jne    _10003444                        ; make sure that _global_DeviceHandle != -1

	xor    al,al                            ; return_data = 0
	add    esp,0xc                          ; Free local variables
	ret    0xc

_10003444:
	mov    cl,BYTE PTR [esp+0x10]           ; cl = Arg #1 -> Request (low 8b of ecx)
	mov    dx,WORD PTR [esp+0x14]           ; dx = Arg #2 -> Value   (low 16b of edx)

	xor    eax,eax                          ; eax = 0
	push   eax                              ; arg -> *Overlapped

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x1c
	;   Arg #2 -> Value      is at esp+0x18
	;   Arg #1 -> Request    is at esp+0x14
	;   Return address       is at esp+0x10

	;   End of LocaVars      is at esp+0x10 - 1
	;   Start of LocaVars    is at esp+0x04

	;   Arg Overlapped       is at esp+0x00

	mov    WORD PTR [esp+0xc],ax            ; SetupPacket.Index = ax (0)
	mov    BYTE PTR [esp+0x7],al

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x1c
	;   Arg #2 -> Value      is at esp+0x18
	;   Arg #1 -> Request    is at esp+0x14
	;   Return address       is at esp+0x10

	;   End of LocaVars      is at esp+0x10 - 1
	;    local_var_1         is at esp+0x0c     ; SetupPacket.Index
	;    local_var_2         is at esp+0x07     ;  ???
	;   Start of LocaVars    is at esp+0x04

	;   Arg Overlapped       is at esp+0x00

	lea    eax,[esp+0x14]                   ; eax = addressOf(Arg #1 -> Request)
	push   eax                              ; arg -> *LengthTransferred

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x20
	;   Arg #2 -> Value      is at esp+0x1c
	;   Arg #1 -> Request    is at esp+0x18
	;   Return address       is at esp+0x14

	;   End of LocaVars      is at esp+0x14 - 1
	;    local_var_1         is at esp+0x10     ; SetupPacket.Index
	;    local_var_2         is at esp+0x0b     ;  ???
	;   Start of LocaVars    is at esp+0x08

	;   Arg Overlapped       is at esp+0x04
	;   Arg LengthTransferr~ is at esp+0x00

	mov    BYTE PTR [esp+0xd],cl            ; local_var_3 = eax (Arg #1 -> Request)

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x20
	;   Arg #2 -> Value      is at esp+0x1c
	;   Arg #1 -> Request    is at esp+0x18
	;   Return address       is at esp+0x14

	;   End of LocaVars      is at esp+0x14 - 1
	;    local_var_1         is at esp+0x10     ; SetupPacket.Index
	;    local_var_3         is at esp+0x0d     ; SetupPacket.Request
	;    local_var_2         is at esp+0x0b     ;  ???
	;   Start of LocaVars    is at esp+0x08

	;   Arg Overlapped       is at esp+0x04
	;   Arg LengthTransferr~ is at esp+0x00


	push   0x1                              ; arg -> BufferLength

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x24
	;   Arg #2 -> Value      is at esp+0x20
	;   Arg #1 -> Request    is at esp+0x1c
	;   Return address       is at esp+0x18

	;   End of LocaVars      is at esp+0x18 - 1
	;    local_var_1         is at esp+0x14     ; SetupPacket.Index
	;    local_var_3         is at esp+0x11     ; SetupPacket.Request
	;    local_var_2         is at esp+0x0f     ;  ???
	;   Start of LocaVars    is at esp+0x0c

	;   Arg Overlapped       is at esp+0x08
	;   Arg LengthTransferr~ is at esp+0x04
	;   Arg BufferLength     is at esp+0x00

	mov    WORD PTR [esp+0x12],dx          ; local_var_4 = dx (Arg #2 -> Value)

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x24
	;   Arg #2 -> Value      is at esp+0x20
	;   Arg #1 -> Request    is at esp+0x1c
	;   Return address       is at esp+0x18

	;   End of LocaVars      is at esp+0x18 - 1
	;    local_var_1         is at esp+0x14     ; SetupPacket.Index
	;    local_var_4         is at esp+0x12     ; SetupPacket.Value
	;    local_var_3         is at esp+0x11     ; SetupPacket.Request
	;    local_var_2         is at esp+0x0f     ;  ???
	;   Start of LocaVars    is at esp+0x0c

	;   Arg Overlapped       is at esp+0x08
	;   Arg LengthTransferr~ is at esp+0x04
	;   Arg BufferLength     is at esp+0x00

	lea    ecx,[esp+0xf]                    ; ecx = addressOf(local_var_2)
	push   ecx                              ; arg -> *Buffer

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x28
	;   Arg #2 -> Value      is at esp+0x24
	;   Arg #1 -> Request    is at esp+0x20
	;   Return address       is at esp+0x1c

	;   End of LocaVars      is at esp+0x1c - 1
	;    local_var_1         is at esp+0x18     ; SetupPacket.Index
	;    local_var_4         is at esp+0x16     ; SetupPacket.Value
	;    local_var_3         is at esp+0x15     ; SetupPacket.Request
	;    local_var_2         is at esp+0x13     ; Buffer
	;   Start of LocaVars    is at esp+0x10

	;   Arg Overlapped       is at esp+0x0c
	;   Arg LengthTransferr~ is at esp+0x08
	;   Arg BufferLength     is at esp+0x04
	;   Arg Buffer           is at esp+0x00

	mov    ecx,_global_InterfaceHandle      ; DWORD PTR ds:0x10015210

	mov    WORD PTR [esp+0x1a],0x1          ; SetupPacket.Length = 1

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x28
	;   Arg #2 -> Value      is at esp+0x24
	;   Arg #1 -> Request    is at esp+0x20
	;   Return address       is at esp+0x1c

	;   End of LocaVars      is at esp+0x1c - 1
	;    local_var_5         is at esp+0x1a     ; SetupPacket.Length
	;    local_var_1         is at esp+0x18     ; SetupPacket.Index
	;    local_var_4         is at esp+0x16     ; SetupPacket.Value
	;    local_var_3         is at esp+0x15     ; SetupPacket.Request
	;    local_var_2         is at esp+0x13     ; Buffer
	;   Start of LocaVars    is at esp+0x10

	;   Arg Overlapped       is at esp+0x0c
	;   Arg LengthTransferr~ is at esp+0x08
	;   Arg BufferLength     is at esp+0x04
	;   Arg Buffer           is at esp+0x00

	mov    edx,DWORD PTR [esp+0x18]         ; edx = SetupPacket (high)
	push   edx                              ; arg -> SetupPacket (high 4 bytes)
	                                        ;         - SetupPacket.Length  (esp+0x2)
	                                        ;         - SetupPacket.Index   (esp+0x0)

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x2c
	;   Arg #2 -> Value      is at esp+0x28
	;   Arg #1 -> Request    is at esp+0x24
	;   Return address       is at esp+0x20

	;   End of LocaVars      is at esp+0x20 - 1
	;    local_var_5         is at esp+0x1e     ; SetupPacket.Length
	;    local_var_1         is at esp+0x1c     ; SetupPacket.Index
	;    local_var_4         is at esp+0x1a     ; SetupPacket.Value
	;    local_var_3         is at esp+0x19     ; SetupPacket.Request
	;    local_var_2         is at esp+0x17     ; Buffer
	;   Start of LocaVars    is at esp+0x14

	;   Arg Overlapped       is at esp+0x10
	;   Arg LengthTransferr~ is at esp+0x0c
	;   Arg BufferLength     is at esp+0x08
	;   Arg Buffer           is at esp+0x04
	;   Arg SetupPacket (h)  is at esp+0x00

	mov    BYTE PTR [esp+0x18],0x80         ; SetupPacket.RequestType = 0x80
	                                        ;   Characteristics of request:
	                                        ;    1xxx xxxx : Data transfer direction = Device-to-host
	                                        ;    x00x xxxx : Type = Standard
	                                        ;    xxx0 0000 : Recipient = Device

	; From here:
	;   Arg #3 -> outBufSize is at esp+0x2c
	;   Arg #2 -> Value      is at esp+0x28
	;   Arg #1 -> Request    is at esp+0x24
	;   Return address       is at esp+0x20

	;   End of LocaVars      is at esp+0x20 - 1
	;    local_var_5         is at esp+0x1e     ; SetupPacket.Length
	;    local_var_1         is at esp+0x1c     ; SetupPacket.Index
	;    local_var_4         is at esp+0x1a     ; SetupPacket.Value
	;    local_var_3         is at esp+0x19     ; SetupPacket.Request
	;    local_var_6         is at esp+0x18     ; SetupPacket.RequestType
	;    local_var_2         is at esp+0x17     ; Buffer
	;   Start of LocaVars    is at esp+0x14

	;   Arg Overlapped       is at esp+0x10
	;   Arg LengthTransferr~ is at esp+0x0c
	;   Arg BufferLength     is at esp+0x08
	;   Arg Buffer           is at esp+0x04
	;   Arg SetupPacket (h)  is at esp+0x00

	mov    eax,DWORD PTR [esp+0x18]         ; eax = SetupPacket (low)
	push   eax                              ; arg -> SetupPacket (low 4 bytes)
	                                        ;        - SetupPacket.Value       (esp+0x2)
	                                        ;        - SetupPacket.Request     (esp+0x1)
	                                        ;        - SetupPacket.RequestType (esp+0x0)


	push   ecx                              ; arg -> InterfaceHandle

	call   <WinUsb_ControlTransfer()>       ; 0x1000381c
	; BOOL WinUsb_ControlTransfer(
	;   _In  WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   _In  WINUSB_SETUP_PACKET     SetupPacket,
	;   _In  PUCHAR                  Buffer,
	;   _In  ULONG                   BufferLength,
	;   _Out PULONG                  LengthTransferred,
	;   _In  LPOVERLAPPED            Overlapped
	; );

	mov    al,BYTE PTR [esp+0x3]           ; al = local_var_2 (Buffer)
	add    esp,0xc                         ; Free local variables
	ret    0xc                             ; Return from function (free args)
