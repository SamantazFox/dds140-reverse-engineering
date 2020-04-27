; EH_prolog
;
; [inline]
; void
; EH_prolog(
;   dword *address,
;   byte arg2
; );
;
;
; Read https://en.wikipedia.org/wiki/Microsoft-specific_exception_handling_mechanisms#Implementation
;

_entry_10005828:
	push   0x10005890                       ; push unknown_10005890()'s address'
	push   DWORD PTR fs:0x0                 ; push the urrent Structured Exception Handling (SEH) frame
	                                        ;   https://en.wikipedia.org/wiki/Win32_Thread_Information_Block

	mov    eax,DWORD PTR [esp+0x10]         ; eax = *(Arg #1) -> address' content
	mov    DWORD PTR [esp+0x10],ebp         ; save ebp variable pointed to by address

	lea    ebp,[esp+0x10]                   ; ebp = *(Arg #1) -> address' content
	sub    esp,eax                          ; increase stack size by 'eax' bytes

	push   ebx                              ; Save ebx on the stack
	push   esi                              ; Save esi on the stack
	push   edi                              ; Save edi on the stack

	mov    eax,ds:0x10010010
	xor    DWORD PTR [ebp-0x4],eax          ; *local_var_1 ^= eax
	xor    eax,ebp                          ;
	push   eax                              ;
	mov    DWORD PTR [ebp-0x18],esp         ; *local_var_6 = esp
	push   DWORD PTR [ebp-0x8]              ; push *local_var_2

	; Swap local_var_1 and local_var_2
	mov    eax,DWORD PTR [ebp-0x4]          ; eax = *local_var_1
	mov    DWORD PTR [ebp-0x4],0xfffffffe   ; *local_var_1 = 0xfffffffe
	mov    DWORD PTR [ebp-0x8],eax          ; *local_var_2 = eax

	lea    eax,[ebp-0x10]                   ; eax = &local_var_3
	mov    fs:0x0,eax                       ; Update the SEH frame ????

	ret                                     ; Return from function, but do NOT touch the stack
