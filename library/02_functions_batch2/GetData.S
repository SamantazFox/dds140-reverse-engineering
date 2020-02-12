; GetData
;
; double
; GetData(
;     int index
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


_entry_10001fe0:
	mov    eax,DWORD PTR [esp+0x4] ; Load 'index' in eax
	fldz   
	cmp    eax,0x13
	ja     _10002117

	jmp    DWORD PTR [eax*4+0x1000211c]     ; switch 'index'

_10001ff6:                                  ; case 0
	fstp   st(0)
	fld    _global_CH2_FreqValue            ; QWORD* ds:0x10016038
	ret    0x4

_10002001:                                  ; case 1
	movzx  eax, _global_CH2_MaxValue        ; BYTE* ds:0x10016040
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],eax
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_10002015:                                  ; case 2
	movzx  ecx, _global_CH2_MinValue        ; BYTE* ds:0x10016041
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],ecx
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_10002029:                                  ; case 3
	movzx  edx, _global_CH2_PPValue         ; BYTE* ds:0x10016042
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],edx
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_1000203d:                                  ; case 4
	movzx  eax, _global_CH2_AverageValue    ; BYTE* ds:0x10016043
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],eax
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_10002051:                                  ; case 5
	fstp   st(0)
	fld    _global_CH1_FreqValue           ; QWORD* ds:0x10016000
	ret    0x4

_1000205c:                                  ; case 6
	movzx  ecx, _global_CH1_MaxValue        ; BYTE* ds:0x10016008
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],ecx
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_10002070:                                  ; case 7
	movzx  edx, _global_CH1_MinValue        ; BYTE* ds:0x10016009
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],edx
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_10002084:                                  ; case 8
	movzx  eax, _global_CH1_PPValue         ; BYTE* ds:0x1001600a
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],eax
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_10002098:                                  ; case 9
	movzx  ecx, _global_CH1_AverageValue    ; BYTE* ds:0x1001600b
	fstp   st(0)
	mov    DWORD PTR [esp+0x4],ecx
	fild   DWORD PTR [esp+0x4]
	ret    0x4

_100020ac:                                  ; case 10
	fstp   st(0)
	fld    _global_CH2_RiseTimeValue        ; QWORD* ds:0x10016050
	ret    0x4

_100020b7:                                  ; case 11
	fstp   st(0)
	fld    _global_CH2_PeriodValue          ; QWORD* ds:0x10016048
	ret    0x4

_100020c2:                                  ; case 12
	fstp   st(0)
	fld    _global_CH2_PosWidthValue        ; QWORD* ds:0x10016058
	ret    0x4

_100020cd:                                  ; case 13
	fstp   st(0)
	fld    _global_CH2_NegWidthValue        ; QWORD* ds:0x10016060
	ret    0x4

_100020d8:                                  ; case 14
	fstp   st(0)
	fld    _global_CH2_DutyValue            ; QWORD* ds:0x10016068
	ret    0x4

_100020e3:                                  ; case 15
	fstp   st(0)
	fld    _global_CH1_RiseTimeValue        ; QWORD* ds:0x10016018
	ret    0x4

_100020ee:                                  ; case 16
	fstp   st(0)
	fld    _global_CH1_PeriodValue          ; QWORD* ds:0x10016010
	ret    0x4

_100020f9:                                  ; case 17
	fstp   st(0)
	fld    _global_CH1_PosWidthValue        ; QWORD* ds:0x10016020
	ret    0x4

_10002104:                                  ; case 18
	fstp   st(0)
	fld    _global_CH1_NegWidthValue        ; QWORD* ds:0x10016028
	ret    0x4

_1000210f:                                  ; case 19
	fstp   st(0)
	fld    _global_CH1_DutyValue            ; QWORD* ds:0x10016030

_10002117:                                  ; default
	ret    0x4
	mov    edi,edi                          ; Padding bytes?




1000211c:	f6 1f 00 10  ; goto _10001ff6
10002120:	01 20 00 10  ; goto _10002001
10002124:	15 20 00 10  ; goto _10002015
10002128:	29 20 00 10  ; goto _10002029
1000212a:	3d 20 00 10  ; goto _1000203d
10002130:	51 20 00 10  ; goto _10002051
10002132:	5c 20 00 10  ; goto _1000205c
10002136:	70 20 00 10  ; goto _10002070
1000213c:	84 20 00 10  ; goto _10002084
10002140:	98 20 00 10  ; goto _10002098
10002144:	ac 20 00 10  ; goto _100020ac
10002148:	b7 20 00 10  ; goto _100020b7
1000214c:	c2 20 00 10  ; goto _100020c2
10002150:	cd 20 00 10  ; goto _100020cd
10002154:	d8 20 00 10  ; goto _100020d8
10002158:	e3 20 00 10  ; goto _100020e3
1000215c:	ee 20 00 10  ; goto _100020ee
10002160:	f9 20 00 10  ; goto _100020f9
10002164:	04 21 00 10  ; goto _10002104
10002168:	0f 21 00 10  ; goto _1000210f
