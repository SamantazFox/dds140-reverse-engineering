; unknown_1000397b

_entry_1000397b:
	push   0xc
	push   0x1000e3c0
	call   0x10005828

	mov    esi,DWORD PTR [ebp+0x8]
	test   esi,esi
	je     _10003a03

	cmp    DWORD PTR ds:0x10015df0,0x3
	jne    _100039da

	push   0x4
	call   0x10004cf8

	pop    ecx
	and    DWORD PTR [ebp-0x4],0x0
	push   esi
	call   0x10004d71

	pop    ecx
	mov    DWORD PTR [ebp-0x1c],eax
	test   eax,eax
	je     _100039ba

	push   esi
	push   eax
	call   0x10004d9c

	pop    ecx
	pop    ecx

_100039ba:
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	call   0x100039d1

	cmp    DWORD PTR [ebp-0x1c],0x0
	jne    _10003a03

	push   DWORD PTR [ebp+0x8]
	jmp    _100039db

	push   0x4
	call   0x10004c20

	pop    ecx
	ret    

_100039da:
	push   esi

_100039db:
	push   0x0
	push   DWORD PTR ds:0x1001524c
	call   DWORD PTR ds:0x1000d034

	test   eax,eax
	jne    _10003a03

	call   0x10004a46

	mov    esi,eax
	call   DWORD PTR ds:0x1000d01c

	push   eax
	call   0x10004a0b

	mov    DWORD PTR [esi],eax
	pop    ecx

_10003a03:
	call   0x1000586d ; epilog ?
	ret    
