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
	mov    eax,DWORD PTR [esp+0x8]    ; arg #2 ?
	sub    eax,0x0
	je     _1000104f

	sub    eax,0x1
	jne    _10001070

	cmp    DWORD PTR ds:0x10016088,eax
	jne    _10001037

	push   0x40             ; flProtect
	push   0x1000           ; flAllocationType
	push   0x1400000        ; dwSize
	push   eax              ; lpAddress
	call   <VirtualAlloc()> ; DWORD PTR ds:0x1000d008
	; LPVOID VirtualAlloc(
	;   LPVOID lpAddress,
	;   SIZE_T dwSize,
	;   DWORD  flAllocationType,
	;   DWORD  flProtect
	; );

	test   eax,eax
	mov    ds:0x10016088,eax
	jne    _10001037

_10001032:
	xor    eax,eax
	ret    0xc

_10001037:
	cmp    BYTE PTR ds:0x1001522c,0x0
	jne    _10001032

	mov    BYTE PTR ds:0x1001522c,0x1
	mov    eax,0x1
	ret    0xc

_1000104f:
	mov    eax,ds:0x10016088
	test   eax,eax
	je     _10001070

	push   0x8000          ; dwFreeType
	push   0x0             ; dwSize
	push   eax             ; lpAddress
	call   <VirtualFree()> ; DWORD PTR ds:0x1000d004
	; BOOL VirtualFree(
	;   LPVOID lpAddress,
	;   SIZE_T dwSize,
	;   DWORD  dwFreeType
	; );

	mov    DWORD PTR ds:0x10016088,0x0

_10001070:
	mov    eax,0x1
	ret    0xc
