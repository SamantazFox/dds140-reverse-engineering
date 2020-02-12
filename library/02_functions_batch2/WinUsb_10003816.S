; WinUsb calls
;

10003816:  jmp    DWORD PTR ds:0x1000d128  ; 1000d128:  fe e8 00 00  =>  10  "WinUsb_ReadPipe"
1000381c:  jmp    DWORD PTR ds:0x1000d124  ; 1000d124:  10 e9 00 00  =>  01  "WinUsb_ControlTransfer"
10003822:  jmp    DWORD PTR ds:0x1000d138  ; 1000d138:  2a e9 00 00  =>  11  "WinUsb_ResetPipe"
10003828:  jmp    DWORD PTR ds:0x1000d11c  ; 1000d11c:  3e e9 00 00  =>  00  "WinUsb_AbortPipe"
1000382e:  jmp    DWORD PTR ds:0x1000d118  ; 1000d118:  52 e9 00 00  =>  0f  "WinUsb_QueryPipe"
10003834:  jmp    DWORD PTR ds:0x1000d120  ; 1000d120:  66 e9 00 00  =>  0e  "WinUsb_QueryInterfaceSettings"
1000383a:  jmp    DWORD PTR ds:0x1000d12c  ; 1000d12c:  86 e9 00 00  =>  0d  "WinUsb_QueryDeviceInformation"
10003840:  jmp    DWORD PTR ds:0x1000d130  ; 1000d130:  a6 e9 00 00  =>  0a  "WinUsb_Initialize"
10003846:  jmp    DWORD PTR ds:0x1000d134  ; 1000d134:  ba e9 00 00  =>  03  "WinUsb_Free"
	ret
