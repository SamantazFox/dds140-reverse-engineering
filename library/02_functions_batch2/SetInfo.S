; SetInfo
;
; void
; SetInfo(
; 	double dataNumPerPixar,
; 	double currentSampleRate,
; 	byte   ChannelMask,
; 	int    m_ZrroUniInt,
; 	uint   BufferOffset,
; 	uint   HWbufferSize
; );

_entry_10001120:
	mov    al,BYTE PTR [esp+0x14]           ;     al = Arg #3 -> ChannelMask
	fld    QWORD PTR [esp+0x4]              ; fp load: Arg #1 -> dataNumPerPixar
	mov    ecx,DWORD PTR [esp+0x18]         ;    ecx = Arg #4 -> m_ZrroUniInt
	fstp   _global_dataNumPerPixar          ; fp store in QWORD PTR ds:0x10016090

	fld    QWORD PTR [esp+0xc]              ; fp load: Arg #2 -> currentSampleRate
	mov    edx,DWORD PTR [esp+0x1c]         ;    edx = Arg #5 -> BufferOffset
	mov    _global_ChannelMask,al           ; ds:0x1001608c
	fstp   _global_currentSampleRate        ; fp store in QWORD PTR ds:0x10016078

	mov    eax,DWORD PTR [esp+0x20]         ; eax = Arg #6 -> HWbufferSize

	mov    _global_ZrroUniInt,ecx           ; DWORD PTR ds:0x10016044
	mov    _global_BufferOffset,edx         ; DWORD PTR ds:0x10016074
	mov    _global_HWbuffer_size,eax        ; ds:0x10016084

	ret    0x20
