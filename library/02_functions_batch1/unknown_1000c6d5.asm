1000c6d5:	55                   	push   ebp
1000c6d6:	8b ec                	mov    ebp,esp
1000c6d8:	83 ec 0c             	sub    esp,0xc
1000c6db:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c6e0:	33 c5                	xor    eax,ebp
1000c6e2:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000c6e5:	6a 06                	push   0x6
1000c6e7:	8d 45 f4             	lea    eax,[ebp-0xc]
1000c6ea:	50                   	push   eax
1000c6eb:	68 04 10 00 00       	push   0x1004
1000c6f0:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c6f3:	c6 45 fa 00          	mov    BYTE PTR [ebp-0x6],0x0
1000c6f7:	ff 15 24 d0 00 10    	call   DWORD PTR ds:0x1000d024
1000c6fd:	85 c0                	test   eax,eax
1000c6ff:	75 05                	jne    0x1000c706
1000c701:	83 c8 ff             	or     eax,0xffffffff
1000c704:	eb 0a                	jmp    0x1000c710
1000c706:	8d 45 f4             	lea    eax,[ebp-0xc]
1000c709:	50                   	push   eax
1000c70a:	e8 ed 01 00 00       	call   0x1000c8fc
1000c70f:	59                   	pop    ecx
1000c710:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000c713:	33 cd                	xor    ecx,ebp
1000c715:	e8 01 74 ff ff       	call   0x10003b1b
1000c71a:	c9                   	leave  
1000c71b:	c3                   	ret    
1000c71c:	55                   	push   ebp
1000c71d:	8b ec                	mov    ebp,esp
1000c71f:	83 ec 34             	sub    esp,0x34
1000c722:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000c727:	33 c5                	xor    eax,ebp
1000c729:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000c72c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
1000c72f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
1000c732:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
1000c735:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000c738:	53                   	push   ebx
1000c739:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
1000c73c:	8b 00                	mov    eax,DWORD PTR [eax]
1000c73e:	56                   	push   esi
1000c73f:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
1000c742:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000c745:	57                   	push   edi
1000c746:	33 ff                	xor    edi,edi
1000c748:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
1000c74b:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
1000c74e:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
1000c751:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
1000c754:	0f 84 5f 01 00 00    	je     0x1000c8b9
1000c75a:	8b 35 dc d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0dc
1000c760:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000c763:	51                   	push   ecx
1000c764:	50                   	push   eax
1000c765:	ff d6                	call   esi
1000c767:	85 c0                	test   eax,eax
1000c769:	8b 1d fc d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d0fc
1000c76f:	74 5e                	je     0x1000c7cf
1000c771:	83 7d e8 01          	cmp    DWORD PTR [ebp-0x18],0x1
1000c775:	75 58                	jne    0x1000c7cf
1000c777:	8d 45 e8             	lea    eax,[ebp-0x18]
1000c77a:	50                   	push   eax
1000c77b:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c77e:	ff d6                	call   esi
1000c780:	85 c0                	test   eax,eax
1000c782:	74 4b                	je     0x1000c7cf
1000c784:	83 7d e8 01          	cmp    DWORD PTR [ebp-0x18],0x1
1000c788:	75 45                	jne    0x1000c7cf
1000c78a:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
1000c78d:	83 fe ff             	cmp    esi,0xffffffff
1000c790:	c7 45 d4 01 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x1
1000c797:	75 0c                	jne    0x1000c7a5
1000c799:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
1000c79c:	e8 6f ba ff ff       	call   0x10008210
1000c7a1:	8b f0                	mov    esi,eax
1000c7a3:	59                   	pop    ecx
1000c7a4:	46                   	inc    esi
1000c7a5:	3b f7                	cmp    esi,edi
1000c7a7:	7e 5b                	jle    0x1000c804
1000c7a9:	81 fe f0 ff ff 7f    	cmp    esi,0x7ffffff0
1000c7af:	77 53                	ja     0x1000c804
1000c7b1:	8d 44 36 08          	lea    eax,[esi+esi*1+0x8]
1000c7b5:	3d 00 04 00 00       	cmp    eax,0x400
1000c7ba:	77 2f                	ja     0x1000c7eb
1000c7bc:	e8 0f 01 00 00       	call   0x1000c8d0
1000c7c1:	8b c4                	mov    eax,esp
1000c7c3:	3b c7                	cmp    eax,edi
1000c7c5:	74 38                	je     0x1000c7ff
1000c7c7:	c7 00 cc cc 00 00    	mov    DWORD PTR [eax],0xcccc
1000c7cd:	eb 2d                	jmp    0x1000c7fc
1000c7cf:	57                   	push   edi
1000c7d0:	57                   	push   edi
1000c7d1:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
1000c7d4:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
1000c7d7:	6a 01                	push   0x1
1000c7d9:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c7dc:	ff d3                	call   ebx
1000c7de:	8b f0                	mov    esi,eax
1000c7e0:	3b f7                	cmp    esi,edi
1000c7e2:	75 c3                	jne    0x1000c7a7
1000c7e4:	33 c0                	xor    eax,eax
1000c7e6:	e9 d1 00 00 00       	jmp    0x1000c8bc
1000c7eb:	50                   	push   eax
1000c7ec:	e8 67 72 ff ff       	call   0x10003a58
1000c7f1:	3b c7                	cmp    eax,edi
1000c7f3:	59                   	pop    ecx
1000c7f4:	74 09                	je     0x1000c7ff
1000c7f6:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
1000c7fc:	83 c0 08             	add    eax,0x8
1000c7ff:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000c802:	eb 03                	jmp    0x1000c807
1000c804:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
1000c807:	39 7d e4             	cmp    DWORD PTR [ebp-0x1c],edi
1000c80a:	74 d8                	je     0x1000c7e4
1000c80c:	8d 04 36             	lea    eax,[esi+esi*1]
1000c80f:	50                   	push   eax
1000c810:	57                   	push   edi
1000c811:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c814:	e8 d7 bd ff ff       	call   0x100085f0
1000c819:	83 c4 0c             	add    esp,0xc
1000c81c:	56                   	push   esi
1000c81d:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c820:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
1000c823:	ff 75 d8             	push   DWORD PTR [ebp-0x28]
1000c826:	6a 01                	push   0x1
1000c828:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000c82b:	ff d3                	call   ebx
1000c82d:	85 c0                	test   eax,eax
1000c82f:	74 7f                	je     0x1000c8b0
1000c831:	8b 5d cc             	mov    ebx,DWORD PTR [ebp-0x34]
1000c834:	3b df                	cmp    ebx,edi
1000c836:	74 1d                	je     0x1000c855
1000c838:	57                   	push   edi
1000c839:	57                   	push   edi
1000c83a:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000c83d:	53                   	push   ebx
1000c83e:	56                   	push   esi
1000c83f:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c842:	57                   	push   edi
1000c843:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c846:	ff 15 c4 d0 00 10    	call   DWORD PTR ds:0x1000d0c4
1000c84c:	85 c0                	test   eax,eax
1000c84e:	74 60                	je     0x1000c8b0
1000c850:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
1000c853:	eb 5b                	jmp    0x1000c8b0
1000c855:	39 7d d4             	cmp    DWORD PTR [ebp-0x2c],edi
1000c858:	8b 1d c4 d0 00 10    	mov    ebx,DWORD PTR ds:0x1000d0c4
1000c85e:	75 14                	jne    0x1000c874
1000c860:	57                   	push   edi
1000c861:	57                   	push   edi
1000c862:	57                   	push   edi
1000c863:	57                   	push   edi
1000c864:	56                   	push   esi
1000c865:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c868:	57                   	push   edi
1000c869:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c86c:	ff d3                	call   ebx
1000c86e:	8b f0                	mov    esi,eax
1000c870:	3b f7                	cmp    esi,edi
1000c872:	74 3c                	je     0x1000c8b0
1000c874:	56                   	push   esi
1000c875:	6a 01                	push   0x1
1000c877:	e8 14 9e ff ff       	call   0x10006690
1000c87c:	3b c7                	cmp    eax,edi
1000c87e:	59                   	pop    ecx
1000c87f:	59                   	pop    ecx
1000c880:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000c883:	74 2b                	je     0x1000c8b0
1000c885:	57                   	push   edi
1000c886:	57                   	push   edi
1000c887:	56                   	push   esi
1000c888:	50                   	push   eax
1000c889:	56                   	push   esi
1000c88a:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c88d:	57                   	push   edi
1000c88e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000c891:	ff d3                	call   ebx
1000c893:	3b c7                	cmp    eax,edi
1000c895:	75 0e                	jne    0x1000c8a5
1000c897:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
1000c89a:	e8 dc 70 ff ff       	call   0x1000397b
1000c89f:	59                   	pop    ecx
1000c8a0:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
1000c8a3:	eb 0b                	jmp    0x1000c8b0
1000c8a5:	83 7d dc ff          	cmp    DWORD PTR [ebp-0x24],0xffffffff
1000c8a9:	74 05                	je     0x1000c8b0
1000c8ab:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
1000c8ae:	89 01                	mov    DWORD PTR [ecx],eax
1000c8b0:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
1000c8b3:	e8 ed d0 ff ff       	call   0x100099a5
1000c8b8:	59                   	pop    ecx
1000c8b9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000c8bc:	8d 65 c0             	lea    esp,[ebp-0x40]
1000c8bf:	5f                   	pop    edi
1000c8c0:	5e                   	pop    esi
1000c8c1:	5b                   	pop    ebx
1000c8c2:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000c8c5:	33 cd                	xor    ecx,ebp
1000c8c7:	e8 4f 72 ff ff       	call   0x10003b1b
1000c8cc:	c9                   	leave  
1000c8cd:	c3                   	ret    
1000c8ce:	cc                   	int3   
1000c8cf:	cc                   	int3   
