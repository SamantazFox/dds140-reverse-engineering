; SetData
;
; void
; SetData(
;    int index,
;    double volt
; );
;
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
	mov    eax,DWORD PTR [esp+0x4]          ; eax = Arg #1 -> index

	cmp    eax,0x9                          ; redirect to 'default' if 'index' > 9
	ja     _default

	jmp    DWORD PTR [eax*4+0x10002314]     ; switch 'index'

; 0x10002184
_case_0
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU
	fstp   _global_CH2_FreqValue            ; QWORD PTR ds:0x10016038
	ret    0xc

; 0x10002191
_case_1
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    al,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH2_MaxValue,al          ; ds:0x10016040

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x100021bf
_case_2
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    cl,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH2_MinValue,cl          ; BYTE PTR ds:0x10016041

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x100021ee
_case_3
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    dl,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH2_PPValue,dl           ; BYTE PTR ds:0x10016042

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x1000221d
_case_4
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    al,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH2_AverageValue,al      ; ds:0x10016043

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x1000224b
_case_5
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU
	fstp   _global_CH1_FreqValue            ; QWORD PTR ds:0x10016000
	ret    0xc

; 0x10002258
_case_6
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    cl,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH1_MaxValue,cl          ; BYTE PTR ds:0x10016008

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x10002287
_case_7
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    dl,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH1_MinValue,dl          ; BYTE PTR ds:0x10016009

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x100022b6
_case_8
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    al,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH1_PPValue,al           ; ds:0x1001600a

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word
	ret    0xc

; 0x100022e4
_case_9
	fld    QWORD PTR [esp+0x8]              ; Load Arg #2 -> volt in to the FPU

	; FPU control word shenanigans
	fnstcw WORD PTR [esp+0x4]               ; Use Arg #1 as a temporary variable to store the FPU CW
	movzx  eax,WORD PTR [esp+0x4]           ; eax = zeroExtend( FPU control word )
	or     eax,0xc00                        ; Set (temporary) FPU control word bits 8 and 9
	                                        ;  These bits are the Precision Control Field (PC)
	                                        ;  Setting these to 11b enables double precision (64b) computation
	mov    DWORD PTR [esp+0x8],eax          ; Use Arg #2 as a temporary variable
	fldcw  WORD PTR [esp+0x8]               ; Load the modified FPU control word

	; Store the data given by user
	fistp  DWORD PTR [esp+0x8]              ; Restore Arg #2 -> volt back from the FPU
	mov    cl,BYTE PTR [esp+0x8]            ; Only store the lower 8bits in global variable (wut?)
	mov    _global_CH1_AverageValue,cl      ; BYTE PTR ds:0x1001600b

	fldcw  WORD PTR [esp+0x4]               ; Restore the original FPU control word

; 0x10002310
_default
	ret    0xc
	nop




10002314:	84 21 00 10  ; goto _case_0 (0x10002184)
10002318:	91 21 00 10  ; goto _case_1 (0x10002191)
1000231c:	bf 21 00 10  ; goto _case_2 (0x100021bf)
10002320:	ee 21 00 10  ; goto _case_3 (0x100021ee)
10002324:	1d 22 00 10  ; goto _case_4 (0x1000221d)
10002328:	4b 22 00 10  ; goto _case_5 (0x1000224b)
1000232c:	58 22 00 10  ; goto _case_6 (0x10002258)
10002330:	87 22 00 10  ; goto _case_7 (0x10002287)
10002334:	b6 22 00 10  ; goto _case_8 (0x100022b6)
10002338:	e4 22 00 10  ; goto _case_9 (0x100022e4)
