; unknown_100010005828
;
; int?
; unknown_100010005828(
;    dword arg1,
;    byte arg2
; );
;

_entry_10005828:
	push   0x10005890                       ; push unknown_10005890()'s address'
	push   DWORD PTR fs:0x0                 ; push the urrent Structured Exception Handling (SEH) frame
	                                        ;   https://en.wikipedia.org/wiki/Win32_Thread_Information_Block

	mov    eax,DWORD PTR [esp+0x10]         ; copy data stored at [ESP+0x10] into eax
	mov    DWORD PTR [esp+0x10],ebp         ; copy ebp content to 'address stored at [ESP+0x10]'
	lea    ebp,[esp+0x10]                   ; ebp = [esp+0x10]
	sub    esp,eax                          ; increase stack by 'eax' bytes
	push   ebx
	push   esi
	push   edi
	mov    eax,ds:0x10010010
	xor    DWORD PTR [ebp-0x4],eax          ; *local_var_1 ^= eax
	xor    eax,ebp                          ;
	push   eax                              ;
	mov    DWORD PTR [ebp-0x18],esp         ; *local_var_6 = esp
	push   DWORD PTR [ebp-0x8]              ; push *local_var_2

	; Swap
	mov    eax,DWORD PTR [ebp-0x4]          ; eax = *local_var_1
	mov    DWORD PTR [ebp-0x4],0xfffffffe   ; *local_var_1 = 0xfffffffe
	mov    DWORD PTR [ebp-0x8],eax          ; *local_var_2 = eax

	lea    eax,[ebp-0x10]                   ; eax = &local_var_3
	mov    fs:0x0,eax                       ; Update the SEH frame ????
	ret
