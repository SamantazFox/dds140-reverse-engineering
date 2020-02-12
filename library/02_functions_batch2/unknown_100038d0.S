; unknown_100038d0
;

_entry_100038d0:
	cmp    DWORD PTR ds:0x10015df8,0x0
	je     _10003906

_100038d9:
	push   ebp
	mov    ebp,esp
	sub    esp,0x8
	and    esp,0xfffffff8
	fstp   QWORD PTR [esp]
	cvttsd2si eax,QWORD PTR [esp]
	leave  
	ret    

	cmp    DWORD PTR ds:0x10015df8,0x0
	je     _10003906

	sub    esp,0x4
	fnstcw WORD PTR [esp]
	pop    eax
	and    ax,0x7f
	cmp    ax,0x7f
	je     _100038d9

_10003906:
	push   ebp
	mov    ebp,esp
	sub    esp,0x20
	and    esp,0xfffffff0
	fld    st(0)
	fst    DWORD PTR [esp+0x18]
	fistp  QWORD PTR [esp+0x10]
	fild   QWORD PTR [esp+0x10]
	mov    edx,DWORD PTR [esp+0x18]
	mov    eax,DWORD PTR [esp+0x10]
	test   eax,eax
	je     _10003965

_10003929:
	fsubrp st(1),st
	test   edx,edx
	jns    _1000394d

	fstp   DWORD PTR [esp]
	mov    ecx,DWORD PTR [esp]
	xor    ecx,0x80000000
	add    ecx,0x7fffffff
	adc    eax,0x0
	mov    edx,DWORD PTR [esp+0x14]
	adc    edx,0x0
	jmp    _10003979

_1000394d:
	fstp   DWORD PTR [esp]
	mov    ecx,DWORD PTR [esp]
	add    ecx,0x7fffffff
	sbb    eax,0x0
	mov    edx,DWORD PTR [esp+0x14]
	sbb    edx,0x0
	jmp    _10003979

_10003965:
	mov    edx,DWORD PTR [esp+0x14]
	test   edx,0x7fffffff
	jne    _10003929

	fstp   DWORD PTR [esp+0x18]
	fstp   DWORD PTR [esp+0x18]

_10003979:
	leave  
	ret
