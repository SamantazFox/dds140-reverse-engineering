; unknown_1000a200
;

_entry_1000a200:
	push   ebp
	mov    ebp,esp

	push   esi

	xor    eax,eax
	push   eax
	push   eax
	push   eax
	push   eax
	push   eax
	push   eax
	push   eax
	push   eax

	mov    edx,DWORD PTR [ebp+0xc]
	lea    ecx,[ecx+0x0]

_1000a214:
	mov    al,BYTE PTR [edx]
	or     al,al
	je     _1000a223

	add    edx,0x1
	bts    DWORD PTR [esp],eax
	jmp    _1000a214

_1000a223:
	mov    esi,DWORD PTR [ebp+0x8]
	or     ecx,0xffffffff
	lea    ecx,[ecx+0x0]

_1000a22c:
	add    ecx,0x1
	mov    al,BYTE PTR [esi]
	or     al,al
	je     _1000a23e

	add    esi,0x1
	bt     DWORD PTR [esp],eax
	jae    _1000a22c

_1000a23e:
	mov    eax,ecx
	add    esp,0x20
	pop    esi
	leave  
	ret    
