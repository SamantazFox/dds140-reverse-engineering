; Functions in this file:
;   test_SSE2_support()
;   has_SSE2_support()
;   save_SSE2_test_result()
;


; [inline]
; test_SSE2_support()
;
_entry_10008702:
	push   0xc
	push   0x1000e528                       ; Pointer to data : fe ff ff ff
	call   <EH_prolog()>                    ; 0x10005828
	; inline void EH_prolog(
	;   dword *address,
	;   byte arg2
	; );

	; __try
1000870e:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0          ; local_var_1 = 0
10008712:	66 0f 28 c1          	movapd xmm0,xmm1
10008716:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
1000871d:	eb 23                	jmp    _10008742

1000871f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14] ;
10008722:	8b 00                	mov    eax,DWORD PTR [eax]      ;
10008724:	8b 00                	mov    eax,DWORD PTR [eax]      ; eax = *(*(local_var_)) 

	cmp    eax,0xc0000005                   ;
	je     _return_1                        ; jump to 0x10008737

	cmp    eax,0xc000001d                   ;
	je     _return_1                        ; jump to 0x10008737

	xor    eax,eax                          ; return_data = 0
	ret                                     ; return from function

; 0x10008737
_return_1:
	xor    eax,eax                          ; return_data = 0
	inc    eax                              ; return_data = 1
	ret                                     ; return from function

1000873b:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
1000873e:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0

	; end __try

	; __except
	; __finally
_10008742:
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	mov    eax,DWORD PTR [ebp-0x1c]

	call   <EH_epilog()>                    ; 0x1000586d
	ret    




; has_SSE2_support()
;
; called from 0x100049fe
; called from 0x100087b2
;
_entry_10008752:
	push   ebp
	mov    ebp,esp
	sub    esp,0x18                         ; Allocate 8 uint32 local variables

	xor    eax,eax                          ; eax = 0
	push   ebx

	mov    DWORD PTR [ebp-0x4],eax          ; local_var_1 = 0
	mov    DWORD PTR [ebp-0xc],eax          ; local_var_3 = 0
	mov    DWORD PTR [ebp-0x8],eax          ; local_var_2 = 0

	push   ebx

	; Check if CPU supports the CPUID instruction
	pushf                                   ; Save the status flags register on the stack
	pop    eax                              ; And pop it in eax right after
	mov    ecx,eax                          ; ecx = eax
	xor    eax,0x200000                     ; Flip the "Able to use CPUID instruction" flag
	push   eax                              ; Put eax on the stack...
	popf                                    ; ...in order to "restore" the modified status flags register

	pushf                                   ; Save (again) the status flags register on the stack
	pop    edx                              ; edx = status flags register

	sub    edx,ecx                          ; Compare old & modified status flags register
	je     _ID_flag_error                   ;  * If nothing changed, handle the error

	push   ecx                              ;  * Otherwise, push old status flags register
	popf                                    ;     on the stack and restore it

	; CPUID, read command #1
	xor    eax,eax                          ; Prepare for CPUID sub-command 0x00
	cpuid                                   ;  
	mov    DWORD PTR [ebp-0xc],eax          ; local_var_3 = Maximum Input Value for Basic CPUID Information
	mov    DWORD PTR [ebp-0x18],ebx         ; local_var_6 = CPU indentifier, string part 1
	mov    DWORD PTR [ebp-0x14],edx         ; local_var_5 = CPU indentifier, string part 2
	mov    DWORD PTR [ebp-0x10],ecx         ; local_var_4 = CPU indentifier, string part 3

	; CPUID, read command #2
	mov    eax,0x1                          ; Prepare for CPUID sub-command 0x01
	cpuid                                   ;
	mov    DWORD PTR [ebp-0x4],edx          ; local_var_1 = Feature Identifiers
	mov    DWORD PTR [ebp-0x8],eax          ; local_var_2 = Family, Model, Stepping Identifiers

; 0x10008795
_ID_flag_error:
	pop    ebx                              ; Restore ebx

	test   DWORD PTR [ebp-0x4],0x4000000    ; Check if local_var_1 bit 26 is set 
	                                        ;   => Feature Identifiers
	                                        ;   -> SSE2 instruction support

	je     _return_0                        ; If bit not set, jump to 0x100087ad

	call   <test_SSE2_support()>            ; 0x10008702

	test   eax,eax                          ; if test_SSE2_support() == NULL
	je     _return_0                        ; jump to 0x100087ad

	xor    eax,eax                          ; return_value = 0
	inc    eax                              ; return_value = 1
	jmp    _exit                            ; 0x100087af

; 0x100087ad
_return_0:
	xor    eax,eax                          ; return_value = 0

; 0x100087af
_exit:
	pop    ebx                              ; Restore ebx

	leave  
	ret    




; save_SSE2_test_result()
;
_entry_100087b2:
	call   <has_SSE2_support()>             ; 0x10008752
	mov    _global_cpu_sopports_SSE2,eax    ; ds:0x10015df8

	xor    eax,eax                          ; return_data = 0
	ret                                     ; Exit function
