; DeviceOpen

_entry_10003770:
	call   0x10003540

	cmp    eax,0xffffffff
	mov    ds:0x10010000,eax
	je     _exit_fail                            ; 0x1000379e

	call   <init_interface()>                    ; 0x10003670

	test   eax,eax
	jne    _exit_sucess                          ; 0x100037a2

	mov    eax,ds:0x10010000
	push   eax
	call   <CloseHandle()>                       ; DWORD PTR ds:0x1000d00c

	mov    DWORD PTR ds:0x10010000,0xffffffff


; 0x1000379e
_exit_fail:
	or     eax,0xffffffff
	ret    


; 0x100037a2
_exit_sucess:
	call   <unknown_100034a0()>                  ; 0x100034a0

	test   eax,eax
	jne    _1000379e  ; 0x1000379e

	mov    ds:0x10015220,eax
	mov    ds:0x10015224,eax
	ret    
