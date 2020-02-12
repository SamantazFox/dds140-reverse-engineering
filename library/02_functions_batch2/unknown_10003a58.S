; unknown_10003a58
;

_entry_10003a58:
	push   ebp
	mov    ebp,DWORD PTR [esp+0x8]
	cmp    ebp,0xffffffe0
	ja     _10003b05

	push   ebx                              ; save EBX
	mov    ebx,DWORD PTR ds:0x1000d038      ; EBX = pointer to unknown funcion
	push   esi
	push   edi

_10003a6f:
	xor    esi,esi
	cmp    DWORD PTR ds:0x1001524c,esi
	mov    edi,ebp
	jne    _10003a93

	call   0x10005ec2

	push   0x1e
	call   0x10005d22

	push   0xff
	call   0x10005a70

	pop    ecx
	pop    ecx

_10003a93:
	mov    eax,ds:0x10015df0
	cmp    eax,0x1
	jne    _10003aab

	cmp    ebp,esi                          ; if EBP == null
	je     _10003aa5                        ; jump

	mov    eax,ebp
	jmp    _10003aa8

_10003aa5:
	xor    eax,eax
	inc    eax                              ; EAX = 1

_10003aa8:
	push   eax
	jmp    _10003ac9

_10003aab:
	cmp    eax,0x3
	jne    _10003abb

	push   ebp
	call   0x10003a09

	cmp    eax,esi
	pop    ecx
	jne    _10003ad2

_10003abb:
	cmp    ebp,esi
	jne    _10003ac2

	xor    edi,edi
	inc    edi

_10003ac2:
	add    edi,0xf
	and    edi,0xfffffff0
	push   edi

_10003ac9:
	push   esi
	push   DWORD PTR ds:0x1001524c
	call   ebx

_10003ad2:
	mov    esi,eax
	test   esi,esi
	jne    _10003afe

	cmp    DWORD PTR ds:0x10015708,eax
	push   0xc
	pop    edi
	je     _10003af0

	push   ebp
	call   0x10005f05

	test   eax,eax
	pop    ecx
	jne    _10003a6f
	jmp    _10003af7

_10003af0:
	call   0x10004a46

	mov    DWORD PTR [eax],edi

_10003af7:
	call   0x10004a46

	mov    DWORD PTR [eax],edi

_10003afe:
	pop    edi
	mov    eax,esi
	pop    esi
	pop    ebx
	pop    ebp
	ret    

_10003b05:
	push   ebp
	call   0x10005f05

	pop    ecx
	call   0x10004a46

	mov    DWORD PTR [eax],0xc
	xor    eax,eax
	pop    ebp
	ret    
