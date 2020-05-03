; init_interface
;
; int
; init_interface(
;   void
; );
;


; For later use:
;
; typedef struct _USB_INTERFACE_DESCRIPTOR {
;   UCHAR bLength;
;   UCHAR bDescriptorType;
;   UCHAR bInterfaceNumber;
;   UCHAR bAlternateSetting;
;   UCHAR bNumEndpoints;
;   UCHAR bInterfaceClass;
;   UCHAR bInterfaceSubClass;
;   UCHAR bInterfaceProtocol;
;   UCHAR iInterface;
; } USB_INTERFACE_DESCRIPTOR, *PUSB_INTERFACE_DESCRIPTOR;
;
; typedef struct _WINUSB_PIPE_INFORMATION {
;   USBD_PIPE_TYPE PipeType;
;   UCHAR          PipeId;
;   USHORT         MaximumPacketSize;
;   UCHAR          Interval;
; } WINUSB_PIPE_INFORMATION, *PWINUSB_PIPE_INFORMATION;
;
; typedef enum _USBD_PIPE_TYPE {
;   UsbdPipeTypeControl,      // Indicates that the pipe is a control pipe.
;   UsbdPipeTypeIsochronous,  // Indicates that the pipe is an isochronous transfer pipe.
;   UsbdPipeTypeBulk,         // Indicates that the pipe is a bulk transfer pipe.
;   UsbdPipeTypeInterrupt     // Indicates that the pipe is a interrupt pipe.
; } USBD_PIPE_TYPE;
;


_entry_10003670:
	mov    ecx,_global_DeviceHandle              ; DWORD PTR ds:0x10010000
	sub    esp,0x18                              ; Allocate 24 bytes of local variables


	; Prepare call to WinUsb_Initialize()
	;
	lea    eax,[esp+0x4]                         ; eax = addressOf(local_var_1)
	push   eax                                   ; arg -> *InterfaceHandle
	push   ecx                                   ; arg -> DeviceHandle

	call   <WinUsb_Initialize()>                 ; 0x10003840
	; BOOL WinUsb_Initialize(
	;   _in  HANDLE                   DeviceHandle,
	;   _out PWINUSB_INTERFACE_HANDLE InterfaceHandle
	; );

	; Exit if function failed
	test   eax,eax                               ; Did WinUsb_Initialize() return 0 (fail)?
	je     _exit                                 ; If yes, jump to 0x10003740


	; Prepare call to WinUsb_QueryDeviceInformation()
	;
	mov    eax,DWORD PTR [esp+0x4]               ; Put InterfaceHandle (local_var_1) in eax
	                                             ; stack space of local_var_1 will be reused later on

	lea    edx,[esp+0x3]                         ; ecx = addressOf(local_var_2)  (stack space reuse)
	push   edx                                   ; arg -> *Buffer

	lea    ecx,[esp+0xc]                         ; ecx = addressOf(local_var_3)  (stack space reuse)
	push   ecx                                   ; arg -> *BufferLength

	push   0x1                                   ; arg -> InformationType
	                                             ; From the docs:  On input, InformationType must have
	                                             ;   the following value: DEVICE_SPEED (0x01).

	push   eax                                   ; arg -> InterfaceHandle

	mov    _global_InterfaceHandle,eax           ; Save InterfaceHandle @ ds:0x10015210
	mov    DWORD PTR [esp+0x18],0x1              ; [esp+0x18] means 0x08 before pushed args -> local_var_3

	call   <WinUsb_QueryDeviceInformation()>     ; 0x1000383a
	; BOOL WinUsb_QueryDeviceInformation(
	;   _in  WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   _in  ULONG                   InformationType,
	;   _in  PULONG                  BufferLength,
	;   _out PVOID                   Buffer
	; );

	; Exit if function failed
	test   eax,eax                               ; Did WinUsb_QueryDeviceInformation() return 0 (fail)?
	je     _exit                                 ; If yes, jump to 0x10003740


	; Prepare call to WinUsb_QueryInterfaceSettings()
	;
	mov    ecx,_global_InterfaceHandle           ; DWORD PTR ds:0x10015210

	mov    dl,BYTE PTR [esp+0x3]                 ; Put Buffer[0] (local_var_2) in dl
	                                             ; From the docs:  If InformationType is DEVICE_SPEED, 
	                                             ;   on successful return, Buffer indicates the operating
	                                             ;   speed of the device. 0x03 indicates high-speed or higher;
	                                             ;   0x01 indicates full-speed or lower.

	lea    eax,[esp+0xc]                         ; eax = addressOf(local_var_3)
	push   eax                                   ; arg -> *UsbAltInterfaceDescriptor

	push   0x0                                   ; arg -> AlternateInterfaceNumber
	push   ecx                                   ; arg -> InterfaceHandle

	mov    _global_Device_Speed,dl               ; BYTE PTR ds:0x10015214

	call   <WinUsb_QueryInterfaceSettings()>     ; 0x10003834
	; BOOL WinUsb_QueryInterfaceSettings(
	;   _in  WINUSB_INTERFACE_HANDLE   InterfaceHandle,
	;   _in  UCHAR                     AlternateInterfaceNumber,
	;   _out PUSB_INTERFACE_DESCRIPTOR UsbAltInterfaceDescriptor
	; );

	; Exit if function failed
	test   eax,eax                               ; Did WinUsb_QueryInterfaceSettings() return 0 (fail)?
	je     _exit                                 ; If yes, jump to 0x10003740


	; Initialize the counter for the "for" loop below
	; Then check if the attached interface has (at least) an endpoint
	;
	push   esi                                   ; Save esi on the stack
	xor    esi,esi                               ; esi = 0

	cmp    BYTE PTR [esp+0x14],0x0               ; Is UsbAltInterfaceDescriptor.bNumEndpoints == 0 ?
	jbe    _no_endpoint_found                    ; If yes, jump to 0x1000373f


; 0x100036e2
_for_loop_start:
	mov    edx,_global_InterfaceHandle           ; DWORD PTR ds:0x10015210

	; Prepare call to WinUsb_QueryPipe()
	;
	push   0x10011000                            ; arg -> *PipeInformation (address of the WINUSB_PIPE_INFORMATION
	                                             ;   structure in memory (see globals))
	push   esi                                   ; arg -> PipeIndex
	push   0x0                                   ; arg -> AlternateInterfaceNumber
	push   edx                                   ; arg -> InterfaceHandle

	call   <WinUsb_QueryPipe()>                  ; 0x1000382e
	; BOOL WinUsb_QueryPipe(
	;   _in  WINUSB_INTERFACE_HANDLE  InterfaceHandle,
	;   _in  UCHAR                    AlternateInterfaceNumber,
	;   _in  UCHAR                    PipeIndex,
	;   _out PWINUSB_PIPE_INFORMATION PipeInformation
	; );


	; Extract data from WINUSB_PIPE_INFORMATION
	;
	; NB:  (from the docs) The PipeID parameter is an 8-bit value that consists
	;      in a 7-bit address and a direction bit. This parameter corresponds to
	;      the bEndpointAddress field in the endpoint descriptor.
	;
	; NB2: For information about the layout of this field, see Table 9-13 in
	;      "Universal Serial Bus Specification Revision 2.0" at USB Technology.
	;      In the bEndpointAddress field, Bit 7 indicates the direction of
	;      the endpoint: 0 for OUT; 1 for IN.
    ;
	mov    ecx,_global_PipeType                  ; ecx = PipeInformation.PipeType (DWORD PTR ds:0x10011000)

	cmp    ecx,0x2                               ; Is PipeInformation.PipeType == UsbdPipeTypeBulk ?
	jne    _1000371b                             ; If NOT, jump to next check


	mov    cl,_global_PipeID                     ; cl = content of (BYTE PTR ds:0x10011004)
	test   cl,cl                                 ; Is MSB(_global_PipeID) cleared ?
	jns    _endpoint_out                         ; If YES, jump to 0x10003713


_endpoint_in:
	; Bit 7 is set, the Pipe is an input
	mov    _global_BulkIn_PipeID,cl              ; Store content of cl at (BYTE PTR ds:0x10015215)
	jmp    _for_loop_continue                    ; Jump to 0x1000372c


; 0x10003713
_endpoint_out:
	; Bit 7 is cleared, the Pipe is an output
	mov    _global_BulkOut_PipeID,cl             ; Store content of cl at (BYTE PTR ds:0x10015216)
	jmp    _for_loop_continue                    ; Jump to 0x1000372c


_1000371b:
	cmp    ecx,0x3                               ; Is PipeInformation.PipeType == UsbdPipeTypeInterrupt ?
	jne    _return_0                             ; If NOT, jump to 0x1000373d

	mov    cl,_global_PipeID                     ; BYTE PTR ds:0x10011004
	mov    _global_Interrupt_PipeID,cl           ; BYTE PTR ds:0x10015217


; 0x1000372c
_for_loop_continue:
	; Increment loop counter
	movzx  edx,BYTE PTR [esp+0x14]               ; edx = UsbAltInterfaceDescriptor.bNumEndpoints
	add    esi,0x1                               ; i++

	; Check if "exit loop" condition is met
	cmp    esi,edx                               ; Is the counter (i) < UsbAltInterfaceDescriptor.bNumEndpoints
	jl     _for_loop_start                       ; If YES, continue to next iteration (0x100036e2)

	; Exit function after for loop ends
	pop    esi                                   ; Restore esi
	add    esp,0x18                              ; Deallocate the local variables
	ret                                          ; Return from function
	                                             ; At this point, return_data = return code of
	                                             ;   WinUsb_QueryInterfaceSettings()


; 0x1000373d
_return_0:
	xor    eax,eax                               ; return_data = 0


; 0x1000373f
_no_endpoint_found:
	pop    esi                                   ; Restore esi's value


; 0x10003740
_exit:
	add    esp,0x18                              ; Deallocate the local variables
	ret                                          ; Return from function
