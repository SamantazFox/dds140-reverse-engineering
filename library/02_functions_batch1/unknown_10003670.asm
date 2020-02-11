10003670:	8b 0d 00 00 01 10    	mov    ecx,DWORD PTR ds:0x10010000
10003676:	83 ec 18             	sub    esp,0x18
10003679:	8d 44 24 04          	lea    eax,[esp+0x4]
1000367d:	50                   	push   eax
1000367e:	51                   	push   ecx
1000367f:	e8 bc 01 00 00       	call   0x10003840
10003684:	85 c0                	test   eax,eax
10003686:	0f 84 b4 00 00 00    	je     0x10003740
1000368c:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003690:	8d 54 24 03          	lea    edx,[esp+0x3]
10003694:	52                   	push   edx
10003695:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
10003699:	51                   	push   ecx
1000369a:	6a 01                	push   0x1
1000369c:	50                   	push   eax
1000369d:	a3 10 52 01 10       	mov    ds:0x10015210,eax
100036a2:	c7 44 24 18 01 00 00 	mov    DWORD PTR [esp+0x18],0x1
100036a9:	00 
100036aa:	e8 8b 01 00 00       	call   0x1000383a
100036af:	85 c0                	test   eax,eax
100036b1:	0f 84 89 00 00 00    	je     0x10003740
100036b7:	8b 0d 10 52 01 10    	mov    ecx,DWORD PTR ds:0x10015210
100036bd:	8a 54 24 03          	mov    dl,BYTE PTR [esp+0x3]
100036c1:	8d 44 24 0c          	lea    eax,[esp+0xc]
100036c5:	50                   	push   eax
100036c6:	6a 00                	push   0x0
100036c8:	51                   	push   ecx
100036c9:	88 15 14 52 01 10    	mov    BYTE PTR ds:0x10015214,dl
100036cf:	e8 60 01 00 00       	call   0x10003834
100036d4:	85 c0                	test   eax,eax
100036d6:	74 68                	je     0x10003740
100036d8:	56                   	push   esi
100036d9:	33 f6                	xor    esi,esi
100036db:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
100036e0:	76 5d                	jbe    0x1000373f
100036e2:	8b 15 10 52 01 10    	mov    edx,DWORD PTR ds:0x10015210
100036e8:	68 00 10 01 10       	push   0x10011000
100036ed:	56                   	push   esi
100036ee:	6a 00                	push   0x0
100036f0:	52                   	push   edx
100036f1:	e8 38 01 00 00       	call   0x1000382e
100036f6:	8b 0d 00 10 01 10    	mov    ecx,DWORD PTR ds:0x10011000
100036fc:	83 f9 02             	cmp    ecx,0x2
100036ff:	75 1a                	jne    0x1000371b
10003701:	8a 0d 04 10 01 10    	mov    cl,BYTE PTR ds:0x10011004
10003707:	84 c9                	test   cl,cl
10003709:	79 08                	jns    0x10003713
1000370b:	88 0d 15 52 01 10    	mov    BYTE PTR ds:0x10015215,cl
10003711:	eb 19                	jmp    0x1000372c
10003713:	88 0d 16 52 01 10    	mov    BYTE PTR ds:0x10015216,cl
10003719:	eb 11                	jmp    0x1000372c
1000371b:	83 f9 03             	cmp    ecx,0x3
1000371e:	75 1d                	jne    0x1000373d
10003720:	8a 0d 04 10 01 10    	mov    cl,BYTE PTR ds:0x10011004
10003726:	88 0d 17 52 01 10    	mov    BYTE PTR ds:0x10015217,cl
1000372c:	0f b6 54 24 14       	movzx  edx,BYTE PTR [esp+0x14]
10003731:	83 c6 01             	add    esi,0x1
10003734:	3b f2                	cmp    esi,edx
10003736:	7c aa                	jl     0x100036e2
10003738:	5e                   	pop    esi
10003739:	83 c4 18             	add    esp,0x18
1000373c:	c3                   	ret    
1000373d:	33 c0                	xor    eax,eax
1000373f:	5e                   	pop    esi
10003740:	83 c4 18             	add    esp,0x18
10003743:	c3                   	ret    
10003744:	cc                   	int3   
10003745:	cc                   	int3   
10003746:	cc                   	int3   
10003747:	cc                   	int3   
10003748:	cc                   	int3   
10003749:	cc                   	int3   
1000374a:	cc                   	int3   
1000374b:	cc                   	int3   
1000374c:	cc                   	int3   
1000374d:	cc                   	int3   
1000374e:	cc                   	int3   
1000374f:	cc                   	int3
