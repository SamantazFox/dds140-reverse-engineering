; CorExitProcess
;
; void
; CorExitProcess(
;   int  exitCode
; );
;

_entry_10005a4a:
	; Get the address of "mscoree.dll"
	push   0x1000d250                       ; arg -> lpModuleName  (String "mscoree.dll")
	call   <GetModuleHandleA()>             ; DWORD PTR ds:0x1000d050
	; HMODULE GetModuleHandleA(
	;   LPCSTR lpModuleName
	; );

	; Check if address is valid
	test   eax,eax                          ; If address returned is NULL
	je     _exit                            ;  jump to 0x10005a6f


	; Get the address of CorExitProcess()
	push   0x1000d240                       ; arg -> lpProcName  (String "CorExitProcess")
	push   eax                              ; arg -> hModule
	call   <GetProcAddress()>               ; DWORD PTR ds:0x1000d04c
	; FARPROC GetProcAddress(
	;   HMODULE hModule,
	;   LPCSTR  lpProcName
	; );

	; Check if address is valid
	test   eax,eax                          ; If address returned is NULL
	je     _exit                            ;  jump to 0x10005a6f


	; Execute CorExitProcess()
	push   DWORD PTR [esp+0x4]              ; arg -> exitCode
	call   eax                              ; Call CorExitProcess()
	; void CorExitProcess(
	;   int  exitCode
	; );

_exit:
	ret                                     ; Return from function
