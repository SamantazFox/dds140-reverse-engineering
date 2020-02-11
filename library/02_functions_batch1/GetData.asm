10001fe0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001fe4:	d9 ee                	fldz   
10001fe6:	83 f8 13             	cmp    eax,0x13
10001fe9:	0f 87 28 01 00 00    	ja     0x10002117
10001fef:	ff 24 85 1c 21 00 10 	jmp    DWORD PTR [eax*4+0x1000211c]
10001ff6:	dd d8                	fstp   st(0)
10001ff8:	dd 05 38 60 01 10    	fld    QWORD PTR ds:0x10016038
10001ffe:	c2 04 00             	ret    0x4
10002001:	0f b6 05 40 60 01 10 	movzx  eax,BYTE PTR ds:0x10016040
10002008:	dd d8                	fstp   st(0)
1000200a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
1000200e:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002012:	c2 04 00             	ret    0x4
10002015:	0f b6 0d 41 60 01 10 	movzx  ecx,BYTE PTR ds:0x10016041
1000201c:	dd d8                	fstp   st(0)
1000201e:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
10002022:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002026:	c2 04 00             	ret    0x4
10002029:	0f b6 15 42 60 01 10 	movzx  edx,BYTE PTR ds:0x10016042
10002030:	dd d8                	fstp   st(0)
10002032:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
10002036:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
1000203a:	c2 04 00             	ret    0x4
1000203d:	0f b6 05 43 60 01 10 	movzx  eax,BYTE PTR ds:0x10016043
10002044:	dd d8                	fstp   st(0)
10002046:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
1000204a:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
1000204e:	c2 04 00             	ret    0x4
10002051:	dd d8                	fstp   st(0)
10002053:	dd 05 00 60 01 10    	fld    QWORD PTR ds:0x10016000
10002059:	c2 04 00             	ret    0x4
1000205c:	0f b6 0d 08 60 01 10 	movzx  ecx,BYTE PTR ds:0x10016008
10002063:	dd d8                	fstp   st(0)
10002065:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
10002069:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
1000206d:	c2 04 00             	ret    0x4
10002070:	0f b6 15 09 60 01 10 	movzx  edx,BYTE PTR ds:0x10016009
10002077:	dd d8                	fstp   st(0)
10002079:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
1000207d:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002081:	c2 04 00             	ret    0x4
10002084:	0f b6 05 0a 60 01 10 	movzx  eax,BYTE PTR ds:0x1001600a
1000208b:	dd d8                	fstp   st(0)
1000208d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
10002091:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
10002095:	c2 04 00             	ret    0x4
10002098:	0f b6 0d 0b 60 01 10 	movzx  ecx,BYTE PTR ds:0x1001600b
1000209f:	dd d8                	fstp   st(0)
100020a1:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
100020a5:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
100020a9:	c2 04 00             	ret    0x4
100020ac:	dd d8                	fstp   st(0)
100020ae:	dd 05 50 60 01 10    	fld    QWORD PTR ds:0x10016050
100020b4:	c2 04 00             	ret    0x4
100020b7:	dd d8                	fstp   st(0)
100020b9:	dd 05 48 60 01 10    	fld    QWORD PTR ds:0x10016048
100020bf:	c2 04 00             	ret    0x4
100020c2:	dd d8                	fstp   st(0)
100020c4:	dd 05 58 60 01 10    	fld    QWORD PTR ds:0x10016058
100020ca:	c2 04 00             	ret    0x4
100020cd:	dd d8                	fstp   st(0)
100020cf:	dd 05 60 60 01 10    	fld    QWORD PTR ds:0x10016060
100020d5:	c2 04 00             	ret    0x4
100020d8:	dd d8                	fstp   st(0)
100020da:	dd 05 68 60 01 10    	fld    QWORD PTR ds:0x10016068
100020e0:	c2 04 00             	ret    0x4
100020e3:	dd d8                	fstp   st(0)
100020e5:	dd 05 18 60 01 10    	fld    QWORD PTR ds:0x10016018
100020eb:	c2 04 00             	ret    0x4
100020ee:	dd d8                	fstp   st(0)
100020f0:	dd 05 10 60 01 10    	fld    QWORD PTR ds:0x10016010
100020f6:	c2 04 00             	ret    0x4
100020f9:	dd d8                	fstp   st(0)
100020fb:	dd 05 20 60 01 10    	fld    QWORD PTR ds:0x10016020
10002101:	c2 04 00             	ret    0x4
10002104:	dd d8                	fstp   st(0)
10002106:	dd 05 28 60 01 10    	fld    QWORD PTR ds:0x10016028
1000210c:	c2 04 00             	ret    0x4
1000210f:	dd d8                	fstp   st(0)
10002111:	dd 05 30 60 01 10    	fld    QWORD PTR ds:0x10016030
10002117:	c2 04 00             	ret    0x4
1000211a:	8b ff                	mov    edi,edi
1000211c:	f6 1f                	neg    BYTE PTR [edi]
1000211e:	00 10                	add    BYTE PTR [eax],dl
10002120:	01 20                	add    DWORD PTR [eax],esp
10002122:	00 10                	add    BYTE PTR [eax],dl
10002124:	15 20 00 10 29       	adc    eax,0x29100020
10002129:	20 00                	and    BYTE PTR [eax],al
1000212b:	10 3d 20 00 10 51    	adc    BYTE PTR ds:0x51100020,bh
10002131:	20 00                	and    BYTE PTR [eax],al
10002133:	10 5c 20 00          	adc    BYTE PTR [eax+eiz*1+0x0],bl
10002137:	10 70 20             	adc    BYTE PTR [eax+0x20],dh
1000213a:	00 10                	add    BYTE PTR [eax],dl
1000213c:	84 20                	test   BYTE PTR [eax],ah
1000213e:	00 10                	add    BYTE PTR [eax],dl
10002140:	98                   	cwde   
10002141:	20 00                	and    BYTE PTR [eax],al
10002143:	10 ac 20 00 10 b7 20 	adc    BYTE PTR [eax+eiz*1+0x20b71000],ch
1000214a:	00 10                	add    BYTE PTR [eax],dl
1000214c:	c2 20 00             	ret    0x20
1000214f:	10 cd                	adc    ch,cl
10002151:	20 00                	and    BYTE PTR [eax],al
10002153:	10 d8                	adc    al,bl
10002155:	20 00                	and    BYTE PTR [eax],al
10002157:	10 e3                	adc    bl,ah
10002159:	20 00                	and    BYTE PTR [eax],al
1000215b:	10 ee                	adc    dh,ch
1000215d:	20 00                	and    BYTE PTR [eax],al
1000215f:	10 f9                	adc    cl,bh
10002161:	20 00                	and    BYTE PTR [eax],al
10002163:	10 04 21             	adc    BYTE PTR [ecx+eiz*1],al
10002166:	00 10                	add    BYTE PTR [eax],dl
10002168:	0f 21 00             	mov    eax,db0
1000216b:	10 cc                	adc    ah,cl
1000216d:	cc                   	int3   
1000216e:	cc                   	int3   
1000216f:	cc                   	int3   
