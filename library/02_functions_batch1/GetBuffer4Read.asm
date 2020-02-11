10001220:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10001224:	83 ec 08             	sub    esp,0x8
10001227:	85 c0                	test   eax,eax
10001229:	74 10                	je     0x1000123b
1000122b:	83 f8 ff             	cmp    eax,0xffffffff
1000122e:	74 0b                	je     0x1000123b
10001230:	a1 88 60 01 10       	mov    eax,ds:0x10016088
10001235:	83 c4 08             	add    esp,0x8
10001238:	c2 04 00             	ret    0x4
1000123b:	a1 84 60 01 10       	mov    eax,ds:0x10016084
10001240:	dd 05 90 60 01 10    	fld    QWORD PTR ds:0x10016090
10001246:	dc 0d 88 d1 00 10    	fmul   QWORD PTR ds:0x1000d188
1000124c:	99                   	cdq    
1000124d:	56                   	push   esi
1000124e:	2b c2                	sub    eax,edx
10001250:	8b f0                	mov    esi,eax
10001252:	d9 c0                	fld    st(0)
10001254:	d1 fe                	sar    esi,1
10001256:	e8 75 26 00 00       	call   0x100038d0
1000125b:	3b f0                	cmp    esi,eax
1000125d:	7d 0e                	jge    0x1000126d
1000125f:	a1 88 60 01 10       	mov    eax,ds:0x10016088
10001264:	dd d8                	fstp   st(0)
10001266:	5e                   	pop    esi
10001267:	83 c4 08             	add    esp,0x8
1000126a:	c2 04 00             	ret    0x4
1000126d:	d9 7c 24 10          	fnstcw WORD PTR [esp+0x10]
10001271:	0f b7 44 24 10       	movzx  eax,WORD PTR [esp+0x10]
10001276:	0d 00 0c 00 00       	or     eax,0xc00
1000127b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
1000127f:	8b c6                	mov    eax,esi
10001281:	5e                   	pop    esi
10001282:	d9 2c 24             	fldcw  WORD PTR [esp]
10001285:	df 3c 24             	fistp  QWORD PTR [esp]
10001288:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
1000128b:	2b c1                	sub    eax,ecx
1000128d:	03 05 74 60 01 10    	add    eax,DWORD PTR ds:0x10016074
10001293:	d9 6c 24 0c          	fldcw  WORD PTR [esp+0xc]
10001297:	03 05 88 60 01 10    	add    eax,DWORD PTR ds:0x10016088
1000129d:	83 c4 08             	add    esp,0x8
100012a0:	c2 04 00             	ret    0x4
100012a3:	cc                   	int3   
100012a4:	cc                   	int3   
100012a5:	cc                   	int3   
100012a6:	cc                   	int3   
100012a7:	cc                   	int3   
100012a8:	cc                   	int3   
100012a9:	cc                   	int3   
100012aa:	cc                   	int3   
100012ab:	cc                   	int3   
100012ac:	cc                   	int3   
100012ad:	cc                   	int3   
100012ae:	cc                   	int3   
100012af:	cc                   	int3   
