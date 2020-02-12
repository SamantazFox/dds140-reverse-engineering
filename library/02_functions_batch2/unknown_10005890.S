// unknown_10005890

_entry_10005890:
	sub    esp,0x14
	push   ebx
	mov    ebx,DWORD PTR [esp+0x20]
	push   ebp
	push   esi
	mov    esi,DWORD PTR [ebx+0x8]
	xor    esi,DWORD PTR ds:0x10010010
	push   edi
	mov    eax,DWORD PTR [esi]
	cmp    eax,0xfffffffe
	mov    BYTE PTR [esp+0x13],0x0
	mov    DWORD PTR [esp+0x18],0x1
	lea    edi,[ebx+0x10]
	je     _100058c8

	mov    ecx,DWORD PTR [esi+0x4]
	add    ecx,edi
	xor    ecx,DWORD PTR [eax+edi*1]
	call   0x10003b1b

_100058c8:
	mov    ecx,DWORD PTR [esi+0xc]
	mov    eax,DWORD PTR [esi+0x8]
	add    ecx,edi
	xor    ecx,DWORD PTR [eax+edi*1]
	call   0x10003b1b

	mov    eax,DWORD PTR [esp+0x28]
	test   BYTE PTR [eax+0x4],0x66
	jne    _10005a05

	mov    ebp,DWORD PTR [ebx+0xc]
	cmp    ebp,0xfffffffe
	mov    ecx,DWORD PTR [esp+0x30]
	lea    edx,[esp+0x1c]
	mov    DWORD PTR [esp+0x1c],eax
	mov    DWORD PTR [esp+0x20],ecx
	mov    DWORD PTR [ebx-0x4],edx
	je     _1000595f

_10005901:
	lea    eax,[ebp+ebp*2+0x0]
	mov    ecx,DWORD PTR [esi+eax*4+0x14]
	test   ecx,ecx
	lea    ebx,[esi+eax*4+0x10]
	mov    eax,DWORD PTR [ebx]
	mov    DWORD PTR [esp+0x14],eax
	je     _1000592d

	mov    edx,edi
	call   0x10008992

	test   eax,eax
	mov    BYTE PTR [esp+0x13],0x1
	jl     _1000596b
	jg     _10005975
	mov    eax,DWORD PTR [esp+0x14]

_1000592d:
	cmp    eax,0xfffffffe
	mov    ebp,eax
	jne    _10005901
	cmp    BYTE PTR [esp+0x13],0x0
	je     _1000595f

_1000593b:
	mov    eax,DWORD PTR [esi]
	cmp    eax,0xfffffffe
	je     _1000594f
	mov    ecx,DWORD PTR [esi+0x4]
	add    ecx,edi
	xor    ecx,DWORD PTR [eax+edi*1]
	call   0x10003b1b

_1000594f:
	mov    ecx,DWORD PTR [esi+0xc]
	mov    eax,DWORD PTR [esi+0x8]
	add    ecx,edi
	xor    ecx,DWORD PTR [eax+edi*1]
	call   0x10003b1b

_1000595f:
	mov    eax,DWORD PTR [esp+0x18]
	pop    edi
	pop    esi
	pop    ebp
	pop    ebx
	add    esp,0x14
	ret    

_1000596b:
	mov    DWORD PTR [esp+0x18],0x0
	jmp    _1000593b

_10005975:
	mov    ecx,DWORD PTR [esp+0x28]

	cmp    DWORD PTR [ecx],0xe06d7363
	jne    _100059ab
	cmp    DWORD PTR ds:0x10015dd4,0x0
	je     _100059ab

	push   0x10015dd4
	call   <unknown_10008a80> ; call 0x10008a80

	add    esp,0x4
	test   eax,eax
	je     _100059ab

	mov    edx,DWORD PTR [esp+0x28]
	push   0x1
	push   edx
	call   DWORD PTR ds:0x10015dd4
	add    esp,0x8

_100059ab:
	mov    ecx,DWORD PTR [esp+0x2c]
	call   0x100089c2
	mov    eax,DWORD PTR [esp+0x2c]
	cmp    DWORD PTR [eax+0xc],ebp
	je     _100059d0

	push   0x10010010
	push   edi
	mov    edx,ebp
	mov    ecx,eax
	call   0x100089dc
	mov    eax,DWORD PTR [esp+0x2c]

_100059d0:
	mov    ecx,DWORD PTR [esp+0x14]
	mov    DWORD PTR [eax+0xc],ecx
	mov    eax,DWORD PTR [esi]
	cmp    eax,0xfffffffe
	je     _100059eb
	mov    ecx,DWORD PTR [esi+0x4]
	add    ecx,edi
	xor    ecx,DWORD PTR [eax+edi*1]
	call   0x10003b1b

_100059eb:
	mov    ecx,DWORD PTR [esi+0xc]
	mov    edx,DWORD PTR [esi+0x8]
	add    ecx,edi
	xor    ecx,DWORD PTR [edx+edi*1]
	call   0x10003b1b
	mov    ecx,DWORD PTR [ebx+0x8]
	mov    edx,edi
	jmp    0x100089a9

_10005a05:
	cmp    DWORD PTR [ebx+0xc],0xfffffffe
	je     _1000595f
	push   0x10010010
	push   edi
	mov    ecx,ebx
	mov    edx,0xfffffffe
	call   0x100089dc
	jmp    _1000593b







; 10005a26:	e8 97 04 00 00       	call   0x10005ec2
; 10005a2b:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
; 10005a2f:	e8 ee 02 00 00       	call   0x10005d22
; 10005a34:	ff 35 d8 02 01 10    	push   DWORD PTR ds:0x100102d8
; 10005a3a:	e8 cf 06 00 00       	call   0x1000610e
; 10005a3f:	68 ff 00 00 00       	push   0xff
; 10005a44:	ff d0                	call   eax
; 10005a46:	83 c4 0c             	add    esp,0xc
; 10005a49:	c3                   	ret    
; 10005a4a:	68 50 d2 00 10       	push   0x1000d250
; 10005a4f:	ff 15 50 d0 00 10    	call   <GetModuleHandleA()>  ; DWORD PTR ds:0x1000d050
; 10005a55:	85 c0                	test   eax,eax
; 10005a57:	74 16                	je     0x10005a6f
; 10005a59:	68 40 d2 00 10       	push   0x1000d240
; 10005a5e:	50                   	push   eax
; 10005a5f:	ff 15 4c d0 00 10    	call   <GetProcAddress()>  ; DWORD PTR ds:0x1000d04c
; 10005a65:	85 c0                	test   eax,eax
; 10005a67:	74 06                	je     0x10005a6f
; 10005a69:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
; 10005a6d:	ff d0                	call   eax
; 10005a6f:	c3                   	ret    
; 10005a70:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
; 10005a74:	e8 d1 ff ff ff       	call   0x10005a4a
; 10005a79:	59                   	pop    ecx
; 10005a7a:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
; 10005a7e:	ff 15 6c d0 00 10    	call   <ExitProcess()>  ; DWORD PTR ds:0x1000d06c
; 10005a84:	cc                   	int3
