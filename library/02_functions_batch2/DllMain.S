; DllMain
;
; bool WINAPI
; DllMain(
;   HINSTANCE hinstDLL,
;   DWORD     fdwReason,
;   LPVOID    lpvReserved
; );
;

_entry_10001000:
	mov    eax,DWORD PTR [esp+0x8]          ; eax = Arg #2 -> fdwReason

	sub    eax,0x0                          ; 
	je     _1000104f                        ; jump if fdwReason == 0

	sub    eax,0x1                          ; decrement eax. this is an optimization
	                                        ; to test if eax == 1 and set it at 0 at
	                                        ; the same time.
	jne    _10001070                        ; jump if fdwReason != 1
	                                        ; (jump if eax != 0)

; fdwReason == 1 (DLL_PROCESS_ATTACH)
	cmp    _global_HWbuffer_ptr,eax         ; DWORD PTR ds:0x10016088
	jne    _10001037                        ; jump if _global_HWbuffer_ptr is NULL

	; Allocate buffer
	;
	push   0x40                             ; flProtect
	push   0x1000                           ; flAllocationType
	push   0x1400000                        ; dwSize
	push   eax                              ; lpAddress
	call   <VirtualAlloc()>                 ; DWORD PTR ds:0x1000d008
	; LPVOID VirtualAlloc(
	;   LPVOID lpAddress,
	;   SIZE_T dwSize,
	;   DWORD  flAllocationType,
	;   DWORD  flProtect
	; );

	test   eax,eax                          ; test "was the allocation successful?"
	mov    _global_HWbuffer_ptr,eax         ; ds:0x10016088
	                                        ; store the result in global variable
	jne    _10001037                        ; jump if eax != NULL

_10001032:
	xor    eax,eax                          ; return 0 (FALSE == fail)
	ret    0xc

_10001037:
	cmp    BYTE PTR ds:0x1001522c,0x0       ; is _global_1001522c == 0 ?
	jne    _10001032                        ; if not, jump

	mov    BYTE PTR ds:0x1001522c,0x1       ; _global_1001522c = 1
	mov    eax,0x1                          ; return 1 (TRUE == success)
	ret    0xc

; fdwReason == 0 (DLL_PROCESS_DETACH)
_1000104f:
	mov    eax,_global_HWbuffer_ptr         ; eax = data @ ds:0x10016088
	test   eax,eax                          ; is eax NULL ?
	je     _10001070                        ; if yes, jump

	; Deallocate buffer
	;
	push   0x8000                           ; dwFreeType
	push   0x0                              ; dwSize
	push   eax                              ; lpAddress
	call   <VirtualFree()>                  ; DWORD PTR ds:0x1000d004
	; BOOL VirtualFree(
	;   LPVOID lpAddress,
	;   SIZE_T dwSize,
	;   DWORD  dwFreeType
	; );

	mov    _global_HWbuffer_ptr,0x0         ; DWORD PTR ds:0x10016088
	                                        ; Put NULL inside the variable that
	                                        ; was pointing to HWbuffer

; fdwReason == 2 (DLL_THREAD_ATTACH)
; fdwReason == 3 (DLL_THREAD_DETACH)
_10001070:
	mov    eax,0x1                          ; return 1 (TRUE == success)
	ret    0xc
