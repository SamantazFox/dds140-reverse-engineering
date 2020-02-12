; unknown_10003a09
;

_entry_10003a09:
	push   0xc
	push   0x1000e3e0
	call   <unknown_10005828()>             ; 0x10005828

	and    DWORD PTR [ebp-0x1c],0x0
	mov    esi,DWORD PTR [ebp+0x8]
	cmp    esi,DWORD PTR ds:0x10015de0
	ja     _10003a46

	push   0x4
	call   <unknown_10004cf8()>             ; 0x10004cf8

	pop    ecx
	and    DWORD PTR [ebp-0x4],0x0
	push   esi
	call   <unknown_10005545()>             ; 0x10005545

	pop    ecx
	mov    DWORD PTR [ebp-0x1c],eax
	mov    DWORD PTR [ebp-0x4],0xfffffffe
	call   _entry_10003a4f                  ; 0x10003a4f

_10003a46:
	mov    eax,DWORD PTR [ebp-0x1c]
	call   <unknown_1000586d()>             ; 0x1000586d
	ret    


_entry_10003a4f:
	push   0x4
	call   <unkown_10004c20()>              ; 0x10004c20
	pop    ecx
	ret    
