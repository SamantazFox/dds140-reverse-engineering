; GetInfodouble
;
; double
; GetInfodouble(
;     int index
; );
;

_entry_100011c0:
	mov    eax,DWORD PTR [esp+0x4]       ; eax = Arg #1 -> index

	sub    eax,0x0                       ; is eax == 0 ?
	je     _case_eax_0                   ; if yes, jump to 0x100011eb

	sub    eax,0x1                       ; is eax == 1 ?
	je     _case_eax_1                   ; if yes, jump to 0x100011d3

	fldz                                 ; Push +0.0 on the FPU stack (return_data)
	ret    0x4                           ; Return and free 4 bytes off of the stack

; 0x100011d3
_case_eax_1:
	mov    eax,ds:0x10016098             ; unknown global
	fild   DWORD PTR ds:0x10016098       ; Load signed integer to FPU
	                                     ; Then convert it to double

	test   eax,eax                       ; eax AND eax
	                                     ; sets the SF, ZF, and PF status flags
	jge    _exit                         ; jump if SF == ZF

	fadd   _const_pow2_32                ; QWORD PTR ds:0x1000d180
	                                     ; Convert to double if overflow is detected
	ret    0x4                           ; Return and free 4 bytes off of the stack

; 0x100011eb
_case_eax_0:
	fld    _global_dataNumPerPixar       ; QWORD PTR ds:0x10016090

; 0x100011f1
_exit:
	ret    0x4                           ; Return and free 4 bytes off of the stack
