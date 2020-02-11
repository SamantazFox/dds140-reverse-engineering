10017000 <.rsrc>:
	...
10017008:	04 00                	add    al,0x0
1001700a:	00 00                	add    BYTE PTR [eax],al
1001700c:	00 00                	add    BYTE PTR [eax],al
1001700e:	01 00                	add    DWORD PTR [eax],eax
10017010:	18 00                	sbb    BYTE PTR [eax],al
10017012:	00 00                	add    BYTE PTR [eax],al
10017014:	18 00                	sbb    BYTE PTR [eax],al
10017016:	00 80 00 00 00 00    	add    BYTE PTR [eax+0x0],al
1001701c:	00 00                	add    BYTE PTR [eax],al
1001701e:	00 00                	add    BYTE PTR [eax],al
10017020:	04 00                	add    al,0x0
10017022:	00 00                	add    BYTE PTR [eax],al
10017024:	00 00                	add    BYTE PTR [eax],al
10017026:	01 00                	add    DWORD PTR [eax],eax
10017028:	02 00                	add    al,BYTE PTR [eax]
1001702a:	00 00                	add    BYTE PTR [eax],al
1001702c:	30 00                	xor    BYTE PTR [eax],al
1001702e:	00 80 00 00 00 00    	add    BYTE PTR [eax+0x0],al
10017034:	00 00                	add    BYTE PTR [eax],al
10017036:	00 00                	add    BYTE PTR [eax],al
10017038:	04 00                	add    al,0x0
1001703a:	00 00                	add    BYTE PTR [eax],al
1001703c:	00 00                	add    BYTE PTR [eax],al
1001703e:	01 00                	add    DWORD PTR [eax],eax
10017040:	09 04 00             	or     DWORD PTR [eax+eax*1],eax
10017043:	00 48 00             	add    BYTE PTR [eax+0x0],cl
10017046:	00 00                	add    BYTE PTR [eax],al
10017048:	58                   	pop    eax
10017049:	70 01                	jo     0x1001704c
1001704b:	00 56 00             	add    BYTE PTR [esi+0x0],dl
1001704e:	00 00                	add    BYTE PTR [eax],al
10017050:	e4 04                	in     al,0x4
10017052:	00 00                	add    BYTE PTR [eax],al
10017054:	00 00                	add    BYTE PTR [eax],al
10017056:	00 00                	add    BYTE PTR [eax],al
10017058:	3c 61                	cmp    al,0x61
1001705a:	73 73                	jae    0x100170cf
1001705c:	65 6d                	gs ins DWORD PTR es:[edi],dx
1001705e:	62 6c 79 20          	bound  ebp,QWORD PTR [ecx+edi*2+0x20]
10017062:	78 6d                	js     0x100170d1
10017064:	6c                   	ins    BYTE PTR es:[edi],dx
10017065:	6e                   	outs   dx,BYTE PTR ds:[esi]
10017066:	73 3d                	jae    0x100170a5
10017068:	22 75 72             	and    dh,BYTE PTR [ebp+0x72]
1001706b:	6e                   	outs   dx,BYTE PTR ds:[esi]
1001706c:	3a 73 63             	cmp    dh,BYTE PTR [ebx+0x63]
1001706f:	68 65 6d 61 73       	push   0x73616d65
10017074:	2d 6d 69 63 72       	sub    eax,0x7263696d
10017079:	6f                   	outs   dx,DWORD PTR ds:[esi]
1001707a:	73 6f                	jae    0x100170eb
1001707c:	66 74 2d             	data16 je 0x100170ac
1001707f:	63 6f 6d             	arpl   WORD PTR [edi+0x6d],bp
10017082:	3a 61 73             	cmp    ah,BYTE PTR [ecx+0x73]
10017085:	6d                   	ins    DWORD PTR es:[edi],dx
10017086:	2e 76 31             	cs jbe 0x100170ba
10017089:	22 20                	and    ah,BYTE PTR [eax]
1001708b:	6d                   	ins    DWORD PTR es:[edi],dx
1001708c:	61                   	popa   
1001708d:	6e                   	outs   dx,BYTE PTR ds:[esi]
1001708e:	69 66 65 73 74 56 65 	imul   esp,DWORD PTR [esi+0x65],0x65567473
10017095:	72 73                	jb     0x1001710a
10017097:	69 6f 6e 3d 22 31 2e 	imul   ebp,DWORD PTR [edi+0x6e],0x2e31223d
1001709e:	30 22                	xor    BYTE PTR [edx],ah
100170a0:	3e 0d 0a 3c 2f 61    	ds or  eax,0x612f3c0a
100170a6:	73 73                	jae    0x1001711b
100170a8:	65 6d                	gs ins DWORD PTR es:[edi],dx
100170aa:	62 6c 79 3e          	bound  ebp,QWORD PTR [ecx+edi*2+0x3e]
100170ae:	50                   	push   eax
100170af:	41                   	inc    ecx
