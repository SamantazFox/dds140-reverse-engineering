; EventCheck
;
; int
; EventCheck(
;     int ulTimeout
; );
;

_entry_100034f0:
	cmp    DWORD PTR ds:0x1001609c,0x0
	jne    _100034fe

	xor    eax,eax
	ret    0x4

_100034fe:
	cmp    DWORD PTR ds:0x10010000,0xffffffff
	jne    _1000350d

_10003507:
	or     eax,0xffffffff                   ; return -1
	ret    0x4

_1000350d:
	mov    eax,DWORD PTR [esp+0x4]          ; store 'ulTimeout' in eax
	mov    ecx,DWORD PTR ds:0x1001600c      ; store *1001600c in ecx

	push   eax
	push   0x0
	push   0x10013010
	push   ecx
	call   <WaitForMultipleObjects()>       ; DWORD PTR ds:0x1000d014

	cmp    eax,0xffffffff                   ; if eax == -1
	je     _10003507                        ; jump

	cmp    eax,0x102                        ; if eax != 0x102
	jne    _10003537                        ; return 0

	mov    eax,0x555                        ; return 0x555 (???)

_10003537:
	ret    0x4
