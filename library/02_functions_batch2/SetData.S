; SetData
;
; void
; SetData(
;    int index,
;    double volt
; );
;
; Lookup table:
;
; case 0   =>  ds:0x10016038  =>  _global_CH2_FreqValue      // (kHz) => m_refresh[14]
; case 1   =>  ds:0x10016040  =>  _global_CH2_MaxValue       // (V)   => m_refresh[11]
; case 2   =>  ds:0x10016041  =>  _global_CH2_MinValue       // (V)   => m_refresh[12]
; case 3   =>  ds:0x10016042  =>  _global_CH2_PPValue        // (V)   => m_refresh[13]
; case 4   =>  ds:0x10016043  =>  _global_CH2_AverageValue   // (V)   => m_refresh[15]
; case 5   =>  ds:0x10016000  =>  _global_CH1_FreqValue      // (kHz) => m_refresh[3]
; case 6   =>  ds:0x10016008  =>  _global_CH1_MaxValue       // (V)   => m_refresh[0]
; case 7   =>  ds:0x10016009  =>  _global_CH1_MinValue       // (V)   => m_refresh[1]
; case 8   =>  ds:0x1001600a  =>  _global_CH1_PPValue        // (V)   => m_refresh[2]
; case 9   =>  ds:0x1001600b  =>  _global_CH1_AverageValue   // (V)   => m_refresh[4]

; case 10  =>  ds:0x10016050  =>  _global_CH2_RiseTimeValue  // (us)  => m_refresh[20]
; case 11  =>  ds:0x10016048  =>  _global_CH2_PeriodValue    // (us)  => m_refresh[16]
; case 12  =>  ds:0x10016058  =>  _global_CH2_PosWidthValue  // (us)  => m_refresh[17]
; case 13  =>  ds:0x10016060  =>  _global_CH2_NegWidthValue  // (us)  => m_refresh[18]
; case 14  =>  ds:0x10016068  =>  _global_CH2_DutyValue      // (%)   => m_refresh[19]
; case 15  =>  ds:0x10016018  =>  _global_CH1_RiseTimeValue  // (us)  => m_refresh[9]
; case 16  =>  ds:0x10016010  =>  _global_CH1_PeriodValue    // (us)  => m_refresh[5]
; case 17  =>  ds:0x10016020  =>  _global_CH1_PosWidthValue  // (us)  => m_refresh[6]
; case 18  =>  ds:0x10016028  =>  _global_CH1_NegWidthValue  // (us)  => m_refresh[7]
; case 19  =>  ds:0x10016030  =>  _global_CH1_DutyValue      // (%)   => m_refresh[8]


_entry_10002170:
	mov    eax,DWORD PTR [esp+0x4]          ; store 'index' in eax
	cmp    eax,0x9                          ; redirect to 'default' if 'index' > 9
	ja     _10002310

	jmp    DWORD PTR [eax*4+0x10002314]     ; switch 'index'

_10002184:                                  ; case 0
	fld    QWORD PTR [esp+0x8]              ;
	fstp   _global_CH2_FreqValue            ; QWORD* ds:0x10016038
	ret    0xc

_10002191:                                  ; case 1
	fld    QWORD PTR [esp+0x8]              ;
	fnstcw WORD PTR [esp+0x4]               ;
	movzx  eax,WORD PTR [esp+0x4]           ;
	or     eax,0xc00                        ;
	mov    DWORD PTR [esp+0x8],eax          ;
	fldcw  WORD PTR [esp+0x8]               ;
	fistp  DWORD PTR [esp+0x8]              ;
	mov    al,BYTE PTR [esp+0x8]            ;
	mov    _global_CH2_MaxValue,al          ; ds:0x10016040
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_100021bf:                                  ; case 2
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    cl,BYTE PTR [esp+0x8]
	mov    _global_CH2_MinValue,cl          ; BYTE* ds:0x10016041
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_100021ee:                                  ; case 3
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    dl,BYTE PTR [esp+0x8]
	mov    _global_CH2_PPValue,dl           ; BYTE* ds:0x10016042
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_1000221d:                                  ; case 4
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    al,BYTE PTR [esp+0x8]
	mov    _global_CH2_AverageValue,al      ; ds:0x10016043
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_1000224b:                                  ; case 5
	fld    QWORD PTR [esp+0x8]
	fstp   _global_CH1_FreqValue            ; QWORD* ds:0x10016000
	ret    0xc

_10002258:                                  ; case 6
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    cl,BYTE PTR [esp+0x8]
	mov    _global_CH1_MaxValue,cl          ; BYTE* ds:0x10016008
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_10002287:                                  ; case 7
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    dl,BYTE PTR [esp+0x8]
	mov    _global_CH1_MinValue,dl          ; BYTE* ds:0x10016009
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_100022b6:                                  ; case 8
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    al,BYTE PTR [esp+0x8]
	mov    _global_CH1_PPValue,al           ; ds:0x1001600a
	fldcw  WORD PTR [esp+0x4]
	ret    0xc

_100022e4:                                  ; case 9
	fld    QWORD PTR [esp+0x8]
	fnstcw WORD PTR [esp+0x4]
	movzx  eax,WORD PTR [esp+0x4]
	or     eax,0xc00
	mov    DWORD PTR [esp+0x8],eax
	fldcw  WORD PTR [esp+0x8]
	fistp  DWORD PTR [esp+0x8]
	mov    cl,BYTE PTR [esp+0x8]
	mov    _global_CH1_AverageValue,cl      ; BYTE* ds:0x1001600b
	fldcw  WORD PTR [esp+0x4]

_10002310:                                  ; default
	ret    0xc
	nop




10002314:	84 21 00 10  ; goto _10002184
10002318:	91 21 00 10  ; goto _10002191
1000231c:	bf 21 00 10  ; goto _100021bf
10002320:	ee 21 00 10  ; goto _100021ee
10002324:	1d 22 00 10  ; goto _1000221d
10002328:	4b 22 00 10  ; goto _1000224b
1000232c:	58 22 00 10  ; goto _10002258
10002330:	87 22 00 10  ; goto _10002287
10002334:	b6 22 00 10  ; goto _100022b6
10002338:	e4 22 00 10  ; goto _100022e4
