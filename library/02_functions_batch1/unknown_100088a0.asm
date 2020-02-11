100088a0:	53                   	push   ebx
100088a1:	56                   	push   esi
100088a2:	57                   	push   edi
100088a3:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100088a7:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100088ab:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100088af:	55                   	push   ebp
100088b0:	52                   	push   edx
100088b1:	50                   	push   eax
100088b2:	51                   	push   ecx
100088b3:	51                   	push   ecx
100088b4:	68 30 89 00 10       	push   0x10008930
100088b9:	64 ff 35 00 00 00 00 	push   DWORD PTR fs:0x0
100088c0:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100088c5:	33 c4                	xor    eax,esp
100088c7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
100088cb:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
100088d2:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
100088d6:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
100088d9:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
100088dd:	33 19                	xor    ebx,DWORD PTR [ecx]
100088df:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
100088e2:	83 fe fe             	cmp    esi,0xfffffffe
100088e5:	74 3b                	je     0x10008922
100088e7:	8b 54 24 34          	mov    edx,DWORD PTR [esp+0x34]
100088eb:	83 fa fe             	cmp    edx,0xfffffffe
100088ee:	74 04                	je     0x100088f4
100088f0:	3b f2                	cmp    esi,edx
100088f2:	76 2e                	jbe    0x10008922
100088f4:	8d 34 76             	lea    esi,[esi+esi*2]
100088f7:	8d 5c b3 10          	lea    ebx,[ebx+esi*4+0x10]
100088fb:	8b 0b                	mov    ecx,DWORD PTR [ebx]
100088fd:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
10008900:	83 7b 04 00          	cmp    DWORD PTR [ebx+0x4],0x0
10008904:	75 cc                	jne    0x100088d2
10008906:	68 01 01 00 00       	push   0x101
1000890b:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
1000890e:	e8 0a 3c 00 00       	call   0x1000c51d
10008913:	b9 01 00 00 00       	mov    ecx,0x1
10008918:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
1000891b:	e8 1c 3c 00 00       	call   0x1000c53c
10008920:	eb b0                	jmp    0x100088d2
10008922:	64 8f 05 00 00 00 00 	pop    DWORD PTR fs:0x0
10008929:	83 c4 18             	add    esp,0x18
1000892c:	5f                   	pop    edi
1000892d:	5e                   	pop    esi
1000892e:	5b                   	pop    ebx
1000892f:	c3                   	ret    
10008930:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
10008934:	f7 41 04 06 00 00 00 	test   DWORD PTR [ecx+0x4],0x6
1000893b:	b8 01 00 00 00       	mov    eax,0x1
10008940:	74 33                	je     0x10008975
10008942:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
10008946:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
10008949:	33 c8                	xor    ecx,eax
1000894b:	e8 cb b1 ff ff       	call   0x10003b1b
10008950:	55                   	push   ebp
10008951:	8b 68 18             	mov    ebp,DWORD PTR [eax+0x18]
10008954:	ff 70 0c             	push   DWORD PTR [eax+0xc]
10008957:	ff 70 10             	push   DWORD PTR [eax+0x10]
1000895a:	ff 70 14             	push   DWORD PTR [eax+0x14]
1000895d:	e8 3e ff ff ff       	call   0x100088a0
10008962:	83 c4 0c             	add    esp,0xc
10008965:	5d                   	pop    ebp
10008966:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
1000896a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
1000896e:	89 02                	mov    DWORD PTR [edx],eax
10008970:	b8 03 00 00 00       	mov    eax,0x3
10008975:	c3                   	ret    
10008976:	55                   	push   ebp
10008977:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
1000897b:	8b 29                	mov    ebp,DWORD PTR [ecx]
1000897d:	ff 71 1c             	push   DWORD PTR [ecx+0x1c]
10008980:	ff 71 18             	push   DWORD PTR [ecx+0x18]
10008983:	ff 71 28             	push   DWORD PTR [ecx+0x28]
10008986:	e8 15 ff ff ff       	call   0x100088a0
1000898b:	83 c4 0c             	add    esp,0xc
1000898e:	5d                   	pop    ebp
1000898f:	c2 04 00             	ret    0x4
10008992:	55                   	push   ebp
10008993:	56                   	push   esi
10008994:	57                   	push   edi
10008995:	53                   	push   ebx
10008996:	8b ea                	mov    ebp,edx
10008998:	33 c0                	xor    eax,eax
1000899a:	33 db                	xor    ebx,ebx
1000899c:	33 d2                	xor    edx,edx
1000899e:	33 f6                	xor    esi,esi
100089a0:	33 ff                	xor    edi,edi
100089a2:	ff d1                	call   ecx
100089a4:	5b                   	pop    ebx
100089a5:	5f                   	pop    edi
100089a6:	5e                   	pop    esi
100089a7:	5d                   	pop    ebp
100089a8:	c3                   	ret    
100089a9:	8b ea                	mov    ebp,edx
100089ab:	8b f1                	mov    esi,ecx
100089ad:	8b c1                	mov    eax,ecx
100089af:	6a 01                	push   0x1
100089b1:	e8 67 3b 00 00       	call   0x1000c51d
100089b6:	33 c0                	xor    eax,eax
100089b8:	33 db                	xor    ebx,ebx
100089ba:	33 c9                	xor    ecx,ecx
100089bc:	33 d2                	xor    edx,edx
100089be:	33 ff                	xor    edi,edi
100089c0:	ff e6                	jmp    esi
100089c2:	55                   	push   ebp
100089c3:	8b ec                	mov    ebp,esp
100089c5:	53                   	push   ebx
100089c6:	56                   	push   esi
100089c7:	57                   	push   edi
100089c8:	6a 00                	push   0x0
100089ca:	6a 00                	push   0x0
100089cc:	68 d7 89 00 10       	push   0x100089d7
100089d1:	51                   	push   ecx
100089d2:	e8 17 46 00 00       	call   0x1000cfee
100089d7:	5f                   	pop    edi
100089d8:	5e                   	pop    esi
100089d9:	5b                   	pop    ebx
100089da:	5d                   	pop    ebp
100089db:	c3                   	ret    
100089dc:	55                   	push   ebp
100089dd:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
100089e1:	52                   	push   edx
100089e2:	51                   	push   ecx
100089e3:	ff 74 24 14          	push   DWORD PTR [esp+0x14]
100089e7:	e8 b4 fe ff ff       	call   0x100088a0
100089ec:	83 c4 0c             	add    esp,0xc
100089ef:	5d                   	pop    ebp
100089f0:	c2 08 00             	ret    0x8
100089f3:	cc                   	int3
100089f4:	cc                   	int3
100089f5:	cc                   	int3
100089f6:	cc                   	int3
100089f7:	cc                   	int3
100089f8:	cc                   	int3
100089f9:	cc                   	int3
100089fa:	cc                   	int3
100089fb:	cc                   	int3
100089fc:	cc                   	int3
100089fd:	cc                   	int3
100089fe:	cc                   	int3
100089ff:	cc                   	int3
