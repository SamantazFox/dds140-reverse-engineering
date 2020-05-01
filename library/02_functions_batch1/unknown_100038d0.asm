100038d0:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
100038d7:	74 2d                	je     0x10003906
100038d9:	55                   	push   ebp
100038da:	8b ec                	mov    ebp,esp
100038dc:	83 ec 08             	sub    esp,0x8
100038df:	83 e4 f8             	and    esp,0xfffffff8
100038e2:	dd 1c 24             	fstp   QWORD PTR [esp]
100038e5:	f2 0f 2c 04 24       	cvttsd2si eax,QWORD PTR [esp]
100038ea:	c9                   	leave  
100038eb:	c3                   	ret    
100038ec:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
100038f3:	74 11                	je     0x10003906
100038f5:	83 ec 04             	sub    esp,0x4
100038f8:	d9 3c 24             	fnstcw WORD PTR [esp]
100038fb:	58                   	pop    eax
100038fc:	66 83 e0 7f          	and    ax,0x7f
10003900:	66 83 f8 7f          	cmp    ax,0x7f
10003904:	74 d3                	je     0x100038d9
10003906:	55                   	push   ebp
10003907:	8b ec                	mov    ebp,esp
10003909:	83 ec 20             	sub    esp,0x20
1000390c:	83 e4 f0             	and    esp,0xfffffff0
1000390f:	d9 c0                	fld    st(0)
10003911:	d9 54 24 18          	fst    DWORD PTR [esp+0x18]
10003915:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
10003919:	df 6c 24 10          	fild   QWORD PTR [esp+0x10]
1000391d:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
10003921:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10003925:	85 c0                	test   eax,eax
10003927:	74 3c                	je     0x10003965
10003929:	de e9                	fsubrp st(1),st
1000392b:	85 d2                	test   edx,edx
1000392d:	79 1e                	jns    0x1000394d
1000392f:	d9 1c 24             	fstp   DWORD PTR [esp]
10003932:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
10003935:	81 f1 00 00 00 80    	xor    ecx,0x80000000
1000393b:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
10003941:	83 d0 00             	adc    eax,0x0
10003944:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003948:	83 d2 00             	adc    edx,0x0
1000394b:	eb 2c                	jmp    0x10003979
1000394d:	d9 1c 24             	fstp   DWORD PTR [esp]
10003950:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
10003953:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
10003959:	83 d8 00             	sbb    eax,0x0
1000395c:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003960:	83 da 00             	sbb    edx,0x0
10003963:	eb 14                	jmp    0x10003979
10003965:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10003969:	f7 c2 ff ff ff 7f    	test   edx,0x7fffffff
1000396f:	75 b8                	jne    0x10003929
10003971:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
10003975:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
10003979:	c9                   	leave  
1000397a:	c3                   	ret    
