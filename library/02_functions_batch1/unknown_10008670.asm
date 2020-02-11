10008670:	80 f9 40             	cmp    cl,0x40
10008673:	73 15                	jae    0x1000868a
10008675:	80 f9 20             	cmp    cl,0x20
10008678:	73 06                	jae    0x10008680
1000867a:	0f ad d0             	shrd   eax,edx,cl
1000867d:	d3 ea                	shr    edx,cl
1000867f:	c3                   	ret    
10008680:	8b c2                	mov    eax,edx
10008682:	33 d2                	xor    edx,edx
10008684:	80 e1 1f             	and    cl,0x1f
10008687:	d3 e8                	shr    eax,cl
10008689:	c3                   	ret    
1000868a:	33 c0                	xor    eax,eax
1000868c:	33 d2                	xor    edx,edx
1000868e:	c3                   	ret    
1000868f:	6a 02                	push   0x2
10008691:	e8 90 d3 ff ff       	call   0x10005a26
10008696:	59                   	pop    ecx
10008697:	c3                   	ret    
10008698:	55                   	push   ebp
10008699:	8b ec                	mov    ebp,esp
1000869b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000869e:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
100086a1:	25 ff ff f7 ff       	and    eax,0xfff7ffff
100086a6:	23 c8                	and    ecx,eax
100086a8:	f7 c1 e0 fc f0 fc    	test   ecx,0xfcf0fce0
100086ae:	56                   	push   esi
100086af:	74 31                	je     0x100086e2
100086b1:	57                   	push   edi
100086b2:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
100086b5:	33 f6                	xor    esi,esi
100086b7:	3b fe                	cmp    edi,esi
100086b9:	74 0b                	je     0x100086c6
100086bb:	56                   	push   esi
100086bc:	56                   	push   esi
100086bd:	e8 42 3a 00 00       	call   0x1000c104
100086c2:	59                   	pop    ecx
100086c3:	59                   	pop    ecx
100086c4:	89 07                	mov    DWORD PTR [edi],eax
100086c6:	e8 7b c3 ff ff       	call   0x10004a46
100086cb:	6a 16                	push   0x16
100086cd:	5f                   	pop    edi
100086ce:	56                   	push   esi
100086cf:	56                   	push   esi
100086d0:	56                   	push   esi
100086d1:	56                   	push   esi
100086d2:	56                   	push   esi
100086d3:	89 38                	mov    DWORD PTR [eax],edi
100086d5:	e8 9c f4 ff ff       	call   0x10007b76
100086da:	83 c4 14             	add    esp,0x14
100086dd:	8b c7                	mov    eax,edi
100086df:	5f                   	pop    edi
100086e0:	eb 1d                	jmp    0x100086ff
100086e2:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
100086e5:	85 f6                	test   esi,esi
100086e7:	50                   	push   eax
100086e8:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100086eb:	74 09                	je     0x100086f6
100086ed:	e8 12 3a 00 00       	call   0x1000c104
100086f2:	89 06                	mov    DWORD PTR [esi],eax
100086f4:	eb 05                	jmp    0x100086fb
100086f6:	e8 09 3a 00 00       	call   0x1000c104
100086fb:	59                   	pop    ecx
100086fc:	59                   	pop    ecx
100086fd:	33 c0                	xor    eax,eax
100086ff:	5e                   	pop    esi
10008700:	5d                   	pop    ebp
10008701:	c3                   	ret    
10008702:	6a 0c                	push   0xc
10008704:	68 28 e5 00 10       	push   0x1000e528
10008709:	e8 1a d1 ff ff       	call   0x10005828
1000870e:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10008712:	66 0f 28 c1          	movapd xmm0,xmm1
10008716:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
1000871d:	eb 23                	jmp    0x10008742
1000871f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10008722:	8b 00                	mov    eax,DWORD PTR [eax]
10008724:	8b 00                	mov    eax,DWORD PTR [eax]
10008726:	3d 05 00 00 c0       	cmp    eax,0xc0000005
1000872b:	74 0a                	je     0x10008737
1000872d:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
10008732:	74 03                	je     0x10008737
10008734:	33 c0                	xor    eax,eax
10008736:	c3                   	ret    
10008737:	33 c0                	xor    eax,eax
10008739:	40                   	inc    eax
1000873a:	c3                   	ret    
1000873b:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
1000873e:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
10008742:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008749:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
1000874c:	e8 1c d1 ff ff       	call   0x1000586d
10008751:	c3                   	ret    
10008752:	55                   	push   ebp
10008753:	8b ec                	mov    ebp,esp
10008755:	83 ec 18             	sub    esp,0x18
10008758:	33 c0                	xor    eax,eax
1000875a:	53                   	push   ebx
1000875b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000875e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
10008761:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10008764:	53                   	push   ebx
10008765:	9c                   	pushf  
10008766:	58                   	pop    eax
10008767:	8b c8                	mov    ecx,eax
10008769:	35 00 00 20 00       	xor    eax,0x200000
1000876e:	50                   	push   eax
1000876f:	9d                   	popf   
10008770:	9c                   	pushf  
10008771:	5a                   	pop    edx
10008772:	2b d1                	sub    edx,ecx
10008774:	74 1f                	je     0x10008795
10008776:	51                   	push   ecx
10008777:	9d                   	popf   
10008778:	33 c0                	xor    eax,eax
1000877a:	0f a2                	cpuid  
1000877c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000877f:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
10008782:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
10008785:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
10008788:	b8 01 00 00 00       	mov    eax,0x1
1000878d:	0f a2                	cpuid  
1000878f:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
10008792:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10008795:	5b                   	pop    ebx
10008796:	f7 45 fc 00 00 00 04 	test   DWORD PTR [ebp-0x4],0x4000000
1000879d:	74 0e                	je     0x100087ad
1000879f:	e8 5e ff ff ff       	call   0x10008702
100087a4:	85 c0                	test   eax,eax
100087a6:	74 05                	je     0x100087ad
100087a8:	33 c0                	xor    eax,eax
100087aa:	40                   	inc    eax
100087ab:	eb 02                	jmp    0x100087af
100087ad:	33 c0                	xor    eax,eax
100087af:	5b                   	pop    ebx
100087b0:	c9                   	leave  
100087b1:	c3                   	ret    
100087b2:	e8 9b ff ff ff       	call   0x10008752
100087b7:	a3 f8 5d 01 10       	mov    ds:0x10015df8,eax
100087bc:	33 c0                	xor    eax,eax
100087be:	c3                   	ret    
100087bf:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100087c3:	a3 9c 5b 01 10       	mov    ds:0x10015b9c,eax
100087c8:	c3                   	ret    
100087c9:	ff 74 24 04          	push   DWORD PTR [esp+0x4]
100087cd:	ff 15 ec d0 00 10    	call   DWORD PTR ds:0x1000d0ec
100087d3:	33 c0                	xor    eax,eax
100087d5:	40                   	inc    eax
100087d6:	c2 08 00             	ret    0x8
100087d9:	6a 14                	push   0x14
100087db:	68 48 e5 00 10       	push   0x1000e548
100087e0:	e8 43 d0 ff ff       	call   0x10005828
100087e5:	33 ff                	xor    edi,edi
100087e7:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
100087ea:	ff 35 9c 5b 01 10    	push   DWORD PTR ds:0x10015b9c
100087f0:	e8 19 d9 ff ff       	call   0x1000610e
100087f5:	59                   	pop    ecx
100087f6:	8b f0                	mov    esi,eax
100087f8:	3b f7                	cmp    esi,edi
100087fa:	75 53                	jne    0x1000884f
100087fc:	8d 45 e4             	lea    eax,[ebp-0x1c]
100087ff:	50                   	push   eax
10008800:	e8 ca d2 ff ff       	call   0x10005acf
10008805:	59                   	pop    ecx
10008806:	3b c7                	cmp    eax,edi
10008808:	74 0d                	je     0x10008817
1000880a:	57                   	push   edi
1000880b:	57                   	push   edi
1000880c:	57                   	push   edi
1000880d:	57                   	push   edi
1000880e:	57                   	push   edi
1000880f:	e8 66 f2 ff ff       	call   0x10007a7a
10008814:	83 c4 14             	add    esp,0x14
10008817:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
1000881b:	74 21                	je     0x1000883e
1000881d:	68 30 d9 00 10       	push   0x1000d930
10008822:	ff 15 50 d0 00 10    	call   DWORD PTR ds:0x1000d050
10008828:	3b c7                	cmp    eax,edi
1000882a:	74 12                	je     0x1000883e
1000882c:	68 08 d9 00 10       	push   0x1000d908
10008831:	50                   	push   eax
10008832:	ff 15 4c d0 00 10    	call   DWORD PTR ds:0x1000d04c
10008838:	8b f0                	mov    esi,eax
1000883a:	3b f7                	cmp    esi,edi
1000883c:	75 05                	jne    0x10008843
1000883e:	be c9 87 00 10       	mov    esi,0x100087c9
10008843:	56                   	push   esi
10008844:	e8 4e d8 ff ff       	call   0x10006097
10008849:	59                   	pop    ecx
1000884a:	a3 9c 5b 01 10       	mov    ds:0x10015b9c,eax
1000884f:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
10008852:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10008855:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10008858:	ff d6                	call   esi
1000885a:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000885d:	eb 2f                	jmp    0x1000888e
1000885f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
10008862:	8b 00                	mov    eax,DWORD PTR [eax]
10008864:	8b 00                	mov    eax,DWORD PTR [eax]
10008866:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
10008869:	33 c9                	xor    ecx,ecx
1000886b:	3d 17 00 00 c0       	cmp    eax,0xc0000017
10008870:	0f 94 c1             	sete   cl
10008873:	8b c1                	mov    eax,ecx
10008875:	c3                   	ret    
10008876:	8b 65 e8             	mov    esp,DWORD PTR [ebp-0x18]
10008879:	81 7d dc 17 00 00 c0 	cmp    DWORD PTR [ebp-0x24],0xc0000017
10008880:	75 08                	jne    0x1000888a
10008882:	6a 08                	push   0x8
10008884:	ff 15 a0 d0 00 10    	call   DWORD PTR ds:0x1000d0a0
1000888a:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
1000888e:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10008895:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
10008898:	e8 d0 cf ff ff       	call   0x1000586d
1000889d:	c3                   	ret    
1000889e:	cc                   	int3   
1000889f:	cc                   	int3
