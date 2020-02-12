; AiReadBulkData
;
; int
; AiReadBulkData(
;     int SampleCount,
;     uint num,
;     int ulTimeout,
;     IntPtr PBuffer
; );
;

_entry_10001080
	or     eax,0xffffffff                   ; eax = 0xffffffff
	cmp    DWORD PTR ds:0x10010000,eax
	je     _100010fd                        ; if *(10010000) == eax, jump

	push   esi                              ; save esi
	xor    esi,esi                          ; esi = 0
	cmp    DWORD PTR ds:0x1001609c,esi
	je     _100010fa                        ; if *(1001609c) == esi, jump

	mov    ecx,DWORD PTR [esp+0xc]          ; divisor = 'num'
	mov    eax,DWORD PTR [esp+0x8]          ; dividend = 'SampleCount'
	xor    edx,edx                          ; clear result
	div    ecx                              ; eax = eax / ecx
	                                        ; edx = eax % ecx
	cmp    ecx,esi
	push   ebx
	mov    ebx,DWORD PTR ds:0x10016088
	push   edi
	mov    DWORD PTR ds:0x1001600c,ecx
	mov    DWORD PTR [esp+0x14],esi
	mov    edi,eax
	jle    _100010f8                        ; jump if ecx <= esi (0)

	lea    ebx,[ebx+0x0]

_100010c0:                                  ; for (i = 0; i < x; i++)
	mov    eax,DWORD PTR [esi*4+0x10013010]
	movzx  edx,BYTE PTR ds:0x10015217
	push   0x10015218                       ; localvar1

	lea    ecx,[esp+0x18]                   ; ecx = &arg3 (ulTimeout)
	push   ecx                              ; arg -> LengthTransferred
	push   edi                              ; arg -> BufferLength
	push   ebx                              ; arg -> Buffer

	mov    ds:0x10015228,eax
	mov    eax,_global_InterfaceHandle      ; ds:0x10015210
	push   edx                              ; arg -> PipeID
	push   eax                              ; arg -> InterfaceHandle
	call   <WinUsb_ReadPipe()> ; 0x10003816
	; BOOL WinUsb_ReadPipe(
	;   WINUSB_INTERFACE_HANDLE InterfaceHandle,
	;   UCHAR                   PipeID,
	;   PUCHAR                  Buffer,
	;   ULONG                   BufferLength,
	;   PULONG                  LengthTransferred,
	;   LPOVERLAPPED            Overlapped
	; );

	add    esi,0x1                          ; i++
	add    ebx,edi
	cmp    esi,DWORD PTR ds:0x1001600c      ; if i < *(1001600c)
	jl     _100010c0                        ; jump

_100010f8:
	pop    edi
	pop    ebx

_100010fa:
	xor    eax,eax
	pop    esi

_100010fd:
	ret    0x10
