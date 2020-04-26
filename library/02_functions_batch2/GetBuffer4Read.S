; GetBuffer4Read
;
; IntPtr
; GetBuffer4Read(
;     int index
; );
;

_entry_10001220:
	mov    eax,DWORD PTR [esp+0x4]          ; eax = Arg #1 -> index
	sub    esp,0x8                          ; Allocate 8 bytes of local variables

	test   eax,eax                          ; if eax == 0
	je     _1000123b

	cmp    eax,0xffffffff                   ; if eax == -1
	je     _1000123b

	mov    eax,_global_HWbuffer_ptr         ; ds:0x10016088
	                                        ; return the buffer's pointer
	add    esp,0x8                          ; Deallocate local variables
	ret    0x4

_1000123b:
	mov    eax,_global_HWbuffer_size        ; ds:0x10016084
	fld    _global_dataNumPerPixar          ; QWORD PTR ds:0x10016090
	fmul   _const_512                       ; QWORD PTR ds:0x1000d188
	                                        ; _global_dataNumPerPixar * 512.0

	cdq                                     ; convert double word to quad word
	                                        ; result is stored in EDX:EAX

	push   esi                              ; save esi
	sub    eax,edx                          ; 
	mov    esi,eax                          ; esi = eax
	fld    st(0)                            ; fp load: result of the fmul above
	sar    esi,1                            ; arithmetic right shift (= esi/2)
	call   <unknown_100038d0()>             ; 0x100038d0

	cmp    esi,eax
	jge    _1000126d

	mov    eax,_global_HWbuffer_ptr         ; ds:0x10016088
	fstp   st(0)
	pop    esi
	add    esp,0x8
	ret    0x4

_1000126d:
	fnstcw WORD PTR [esp+0x10]
	movzx  eax,WORD PTR [esp+0x10]
	or     eax,0xc00

	mov    DWORD PTR [esp+0x4],eax
	mov    eax,esi
	pop    esi

	fldcw  WORD PTR [esp]
	fistp  QWORD PTR [esp]

	mov    ecx,DWORD PTR [esp]
	sub    eax,ecx

	add    eax,_global_BufferOffset         ; DWORD PTR ds:0x10016074
	fldcw  WORD PTR [esp+0xc]

	add    eax,_global_HWbuffer_ptr         ; DWORD PTR ds:0x10016088
	add    esp,0x8
	ret    0x4
