10005828:	68 90 58 00 10       	push   0x10005890
1000582d:	64 ff 35 00 00 00 00 	push   DWORD PTR fs:0x0
10005834:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10005838:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
1000583c:	8d 6c 24 10          	lea    ebp,[esp+0x10]
10005840:	2b e0                	sub    esp,eax
10005842:	53                   	push   ebx
10005843:	56                   	push   esi
10005844:	57                   	push   edi
10005845:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000584a:	31 45 fc             	xor    DWORD PTR [ebp-0x4],eax
1000584d:	33 c5                	xor    eax,ebp
1000584f:	50                   	push   eax
10005850:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
10005853:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10005856:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
10005859:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10005860:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10005863:	8d 45 f0             	lea    eax,[ebp-0x10]
10005866:	64 a3 00 00 00 00    	mov    fs:0x0,eax
1000586c:	c3                   	ret    
1000586d:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10005870:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
10005877:	59                   	pop    ecx
10005878:	5f                   	pop    edi
10005879:	5f                   	pop    edi
1000587a:	5e                   	pop    esi
1000587b:	5b                   	pop    ebx
1000587c:	8b e5                	mov    esp,ebp
1000587e:	5d                   	pop    ebp
1000587f:	51                   	push   ecx
10005880:	c3                   	ret    
10005881:	cc                   	int3   
10005882:	cc                   	int3   
10005883:	cc                   	int3   
10005884:	cc                   	int3   
10005885:	cc                   	int3   
10005886:	cc                   	int3   
10005887:	cc                   	int3   
10005888:	cc                   	int3   
10005889:	cc                   	int3   
1000588a:	cc                   	int3   
1000588b:	cc                   	int3   
1000588c:	cc                   	int3   
1000588d:	cc                   	int3   
1000588e:	cc                   	int3   
1000588f:	cc                   	int3   
