; DeviceClose

_entry_100037c0:
	cmp    _global_DeviceHandle,0xffffffff       ; DWORD PTR ds:0x10010000
	                                             ; Is DeviceHandle != -1 ? 
	jne    _for_loop_init                       ; If NOT, jumpt to 0x100037cd

	or     eax,0xffffffff                        ; return_data = -1
	ret                                          ; Return from function


; 0x100037cd
_for_loop_init:
	push   esi
	push   edi

	mov    edi,DWORD PTR ds:0x1000d00c           ; Address of CloseHandle()
	mov    esi,0x10013010                        ; Address of ???
	lea    ebx,[ebx+0x0]


; 0x100037e0
_for_loop_start:
	mov    eax,DWORD PTR [esi]
	test   eax,eax
	je     _for_loop_continue                    ; 0x100037ef

	push   eax
	call   edi                                   ; CloseHandle()

	mov    DWORD PTR [esi],0x0


; 0x100037ef
_for_loop_continue:
	add    esi,0x4
	cmp    esi,0x10013410
	jl     _for_loop_start                       ; 0x100037e0


	mov    eax,_global_DeviceHandle              ; ds:0x10010000
	push   eax

	call   edi                                   ; CloseHandle()

	mov    _global_DeviceHandle,0xffffffff       ; DWORD PTR ds:0x10010000

	call   <free_interface()>                    ; 0x10003750

	pop    edi
	xor    eax,eax
	pop    esi
	ret    
