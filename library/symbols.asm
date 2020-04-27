[1000]  [sym]  DllMain
[1080]  [sym]  AiReadBulkData
[1100]  [sym]  SetReadEnableOrNot
[1110]  [sym]  SetStableEnableOrNot
[1120]  [sym]  SetInfo
[1160]  [sym]  GetHWbufferSize
[1170]  [sym]  SetTrigInfo
[1190]  [sym]  GetInfoByte
[11c0]  [sym]  GetInfodouble
[1200]  [sym]  GetRawData4Read
[1220]  [sym]  GetBuffer4Read
[12b0]  [sym]  GetBuffer4Wr
[12c0]  [sym]  BufferInit
[12d0]  [sym]  DataPreDisposal
[1fe0]  [sym]  GetData
[2170]  [sym]  SetData
[2340]  [sym]  AutoMeasurement
[2fc0]  [sym]  TrigDataPrepare
[33d0]  [sym]  USBCtrlTransSimple
[3430]  [sym]  USBCtrlTrans

[34a0]  [unk]  unknown_100034a0

[34f0]  [sym]  EventCheck

[3540]  [unk]  unknown_10003540

[3630]  [sym]  ResetPipe

[3670]  [unk]  unknown_10003670
[3750]  [fun]  free_interface

[3770]  [sym]  DeviceOpen
[37c0]  [sym]  DeviceClose

; Jumps to WinUSB.DLL symbols
[3816]  [jmp]  WinUsb_ReadPipe
[381c]  [jmp]  WinUsb_ControlTransfer
[3822]  [jmp]  WinUsb_ResetPipe
[3828]  [jmp]  WinUsb_AbortPipe
[382e]  [jmp]  WinUsb_QueryPipe
[3834]  [jmp]  WinUsb_QueryInterfaceSettings
[383a]  [jmp]  WinUsb_QueryDeviceInformation
[3840]  [jmp]  WinUsb_Initialize
[3846]  [jmp]  WinUsb_Free


[384d]  [unk]  unknown_1000384d
[38d0]  [unk]  unknown_100038d0

[397b]  [unk]  unknown_1000397b

[3a09]  [unk]  unknown_10003a09
[3a58]  [unk]  unknown_10003a58
[3b1b]  [unk]  unknown_10003b1b

[3e9c]  [unk]  unknown_10003e9c  ; see ds:0x1001003c
[3f0d]  [unk]  unknown_10003f0d  ; see ds:0x10010038
[3f8d]  [unk]  unknown_10003f8d  ; see ds:0x10010028
[3fa3]  [unk]  unknown_10003fa3  ; see ds:0x10010034
[3fe3]  [unk]  unknown_10003fe3  ; see ds:0x10010020
[4017]  [unk]  unknown_10004017  ; see ds:0x10010024
[4025]  [unk]  unknown_10004025  ; see ds:0x1001001c
[48a3]  [unk]  unknown_100048a3  ; see ds:0x10010030
[4929]  [unk]  unknown_10004929  ; see ds:0x10010018 / ds:0x1001002c

[494a]  [unk]  unknown_1000494a
[4969]  [unk]  unknown_10004969
[49ce]  [unk]  unknown_100049ce

[4a46]  [unk]  unknown_10004a46

[4c20]  [unk]  unknown_10004c20
[4cf8]  [unk]  unknown_10004cf8

[5545]  [unk]  unknown_10005545

[5828]  [in-]  EH_prolog
[586d]  [in-]  EH_epilog

[5890]  [unk]  unknown_10005890

[5a4a]  [fun]  CorExitProcess

;[5a70]  [unk]  unknown_10005a70
;[5a85]  [unk]  unknown_10005a85
;[5a8e]  [unk]  unknown_10005a8e
;[5a97]  [unk]  unknown_10005a97
;[5bd4]  [unk]  unknown_10005bd4

[5d22]  [unk]  unknown_10005d22
[5ec2]  [unk]  unknown_10005ec2
[5f05]  [unk]  unknown_10005f05
[602b]  [unk]  unknown_1000602b
[6097]  [unk]  unknown_10006097
[6105]  [unk]  unknown_10006105
[610e]  [unk]  unknown_1000610e

[7a7a]  [unk]  unknown_10007a7a
[7b76]  [unk]  unknown_10007b76

[85f0]  [unk]  unknown_100085f0

[9394]  [unk]  unknown_10009394

[]  [unk]  unknown_


; WinAPI symbols
; Pointers stocked in .rdata
;
[d000]  [ptr]  TlsGetValue

; Kernel32.dll symbols
;
; memoryapi.h
[d004]  [ptr]  VirtualFree
[d008]  [ptr]  VirtualAlloc
;handleapi.h
[d00c]  [ptr]  CloseHandle
;synchapi.h
[d010]  [ptr]  CreateEventA
[d014]  [ptr]  WaitForMultipleObjects
;fileapi.h
[d018]  [ptr]  CreateFileA
[d01c]  [ptr]  GetLastError
;heapapi.h
[d020]  [ptr]  HeapSize
;winnls.h 
[d024]  [ptr]  GetLocaleInfoA
[d028]  [ptr]  GetStringTypeW
[d02c]  [ptr]  GetStringTypeA
[d030]  [ptr]  LCMapStringW
;heapapi.h
[d034]  [ptr]  HeapFree
[d038]  [ptr]  HeapAlloc

[d03c]  [ptr]  GetCurrentThreadId
[d040]  [ptr]  GetCommandLineA
[d044]  [ptr]  GetVersionExA
;heapapi.h
[d048]  [ptr]  GetProcessHeap

[d04c]  [ptr]  GetProcAddress
[d050]  [ptr]  GetModuleHandleA
;heapapi.h
[d054]  [ptr]  HeapDestroy
[d058]  [ptr]  HeapCreate

[d05c]  [ptr]  DeleteCriticalSection
[d060]  [ptr]  LeaveCriticalSection
[d064]  [ptr]  EnterCriticalSection
;heapapi.h
[d068]  [ptr]  HeapReAlloc

[d06c]  [ptr]  ExitProcess
[d070]  [ptr]  WriteFile
[d074]  [ptr]  GetStdHandle
[d078]  [ptr]  GetModuleFileNameA
[d07c]  [ptr]  TerminateProcess
[d080]  [ptr]  GetCurrentProcess

[d084]  [ptr]  UnhandledExceptionFilter
[d088]  [ptr]  SetUnhandledExceptionFilter
[d08c]  [ptr]  IsDebuggerPresent
[d090]  [ptr]  TlsAlloc
[d094]  [ptr]  TlsSetValue
[d098]  [ptr]  TlsFree
[d09c]  [ptr]  InterlockedIncrement
[d0a0]  [ptr]  SetLastError
[d0a4]  [ptr]  InterlockedDecrement
[d0a8]  [ptr]  Sleep
[d0ac]  [ptr]  SetHandleCount
[d0b0]  [ptr]  GetFileType
[d0b4]  [ptr]  GetStartupInfoA

[d0b8]  [ptr]  FreeEnvironmentStringsA
[d0bc]  [ptr]  GetEnvironmentStrings
[d0c0]  [ptr]  FreeEnvironmentStringsW
[d0c4]  [ptr]  WideCharToMultiByte
[d0c8]  [ptr]  GetEnvironmentStringsW

[d0cc]  [ptr]  QueryPerformanceCounter
[d0d0]  [ptr]  GetTickCount
[d0d4]  [ptr]  GetCurrentProcessId
[d0d8]  [ptr]  GetSystemTimeAsFileTime
[d0dc]  [ptr]  GetCPInfo
[d0e0]  [ptr]  GetACP
[d0e4]  [ptr]  GetOEMCP

[d0e8]  [ptr]  IsValidCodePage
[d0ec]  [ptr]  InitializeCriticalSection
[d0f0]  [ptr]  RtlUnwind
[d0f4]  [ptr]  LoadLibraryA
[d0f8]  [ptr]  LCMapStringA
;stringapiset.h
[d0fc]  [ptr]  MultiByteToWideChar

; SETUPAPI.dll symbols
[d104]  [ptr]  SetupDiDestroyDeviceInfoList
[d108]  [ptr]  SetupDiGetDeviceInterfaceDetailA
[d10c]  [ptr]  SetupDiGetClassDevsA
[d110]  [ptr]  SetupDiEnumDeviceInterfaces

; WinUSB.DLL symbols
[d118]  [ptr]  WinUsb_QueryPipe
[d11c]  [ptr]  WinUsb_AbortPipe
[d120]  [ptr]  WinUsb_QueryInterfaceSettings
[d124]  [ptr]  WinUsb_ControlTransfer
[d128]  [ptr]  WinUsb_ReadPipe
[d12c]  [ptr]  WinUsb_QueryDeviceInformation
[d130]  [ptr]  WinUsb_Initialize
[d134]  [ptr]  WinUsb_Free
[d138]  [ptr]  WinUsb_ResetPipe


; MSCorEE.dll
[d240]  [str]  CorExitProcess
