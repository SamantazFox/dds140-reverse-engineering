1000b62a:	55                   	push   ebp
1000b62b:	8b ec                	mov    ebp,esp
1000b62d:	83 ec 74             	sub    esp,0x74
1000b630:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000b635:	33 c5                	xor    eax,ebp
1000b637:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000b63a:	53                   	push   ebx
1000b63b:	8b 5d 1c             	mov    ebx,DWORD PTR [ebp+0x1c]
1000b63e:	56                   	push   esi
1000b63f:	57                   	push   edi
1000b640:	8d 75 08             	lea    esi,[ebp+0x8]
1000b643:	8d 7d f0             	lea    edi,[ebp-0x10]
1000b646:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b647:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b648:	66 a5                	movs   WORD PTR es:[edi],WORD PTR ds:[esi]
1000b64a:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000b64d:	8b ca                	mov    ecx,edx
1000b64f:	b8 00 80 00 00       	mov    eax,0x8000
1000b654:	23 c8                	and    ecx,eax
1000b656:	81 e2 ff 7f 00 00    	and    edx,0x7fff
1000b65c:	66 85 c9             	test   cx,cx
1000b65f:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
1000b662:	c6 45 d0 cc          	mov    BYTE PTR [ebp-0x30],0xcc
1000b666:	c6 45 d1 cc          	mov    BYTE PTR [ebp-0x2f],0xcc
1000b66a:	c6 45 d2 cc          	mov    BYTE PTR [ebp-0x2e],0xcc
1000b66e:	c6 45 d3 cc          	mov    BYTE PTR [ebp-0x2d],0xcc
1000b672:	c6 45 d4 cc          	mov    BYTE PTR [ebp-0x2c],0xcc
1000b676:	c6 45 d5 cc          	mov    BYTE PTR [ebp-0x2b],0xcc
1000b67a:	c6 45 d6 cc          	mov    BYTE PTR [ebp-0x2a],0xcc
1000b67e:	c6 45 d7 cc          	mov    BYTE PTR [ebp-0x29],0xcc
1000b682:	c6 45 d8 cc          	mov    BYTE PTR [ebp-0x28],0xcc
1000b686:	c6 45 d9 cc          	mov    BYTE PTR [ebp-0x27],0xcc
1000b68a:	c6 45 da fb          	mov    BYTE PTR [ebp-0x26],0xfb
1000b68e:	c6 45 db 3f          	mov    BYTE PTR [ebp-0x25],0x3f
1000b692:	c7 45 8c 01 00 00 00 	mov    DWORD PTR [ebp-0x74],0x1
1000b699:	89 4d 94             	mov    DWORD PTR [ebp-0x6c],ecx
1000b69c:	74 06                	je     0x1000b6a4
1000b69e:	c6 43 02 2d          	mov    BYTE PTR [ebx+0x2],0x2d
1000b6a2:	eb 04                	jmp    0x1000b6a8
1000b6a4:	c6 43 02 20          	mov    BYTE PTR [ebx+0x2],0x20
1000b6a8:	66 85 d2             	test   dx,dx
1000b6ab:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000b6ae:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
1000b6b1:	75 2e                	jne    0x1000b6e1
1000b6b3:	85 f6                	test   esi,esi
1000b6b5:	75 2a                	jne    0x1000b6e1
1000b6b7:	85 ff                	test   edi,edi
1000b6b9:	75 26                	jne    0x1000b6e1
1000b6bb:	66 21 3b             	and    WORD PTR [ebx],di
1000b6be:	66 3b c8             	cmp    cx,ax
1000b6c1:	0f 95 c0             	setne  al
1000b6c4:	fe c8                	dec    al
1000b6c6:	24 0d                	and    al,0xd
1000b6c8:	04 20                	add    al,0x20
1000b6ca:	88 43 02             	mov    BYTE PTR [ebx+0x2],al
1000b6cd:	c6 43 03 01          	mov    BYTE PTR [ebx+0x3],0x1
1000b6d1:	c6 43 04 30          	mov    BYTE PTR [ebx+0x4],0x30
1000b6d5:	c6 43 05 00          	mov    BYTE PTR [ebx+0x5],0x0
1000b6d9:	33 c0                	xor    eax,eax
1000b6db:	40                   	inc    eax
1000b6dc:	e9 c7 07 00 00       	jmp    0x1000bea8
1000b6e1:	66 81 fa ff 7f       	cmp    dx,0x7fff
1000b6e6:	0f 85 9e 00 00 00    	jne    0x1000b78a
1000b6ec:	b8 00 00 00 80       	mov    eax,0x80000000
1000b6f1:	3b f0                	cmp    esi,eax
1000b6f3:	66 c7 03 01 00       	mov    WORD PTR [ebx],0x1
1000b6f8:	75 04                	jne    0x1000b6fe
1000b6fa:	85 ff                	test   edi,edi
1000b6fc:	74 0f                	je     0x1000b70d
1000b6fe:	f7 c6 00 00 00 40    	test   esi,0x40000000
1000b704:	75 07                	jne    0x1000b70d
1000b706:	68 04 e3 00 10       	push   0x1000e304
1000b70b:	eb 51                	jmp    0x1000b75e
1000b70d:	66 85 c9             	test   cx,cx
1000b710:	74 13                	je     0x1000b725
1000b712:	81 fe 00 00 00 c0    	cmp    esi,0xc0000000
1000b718:	75 0b                	jne    0x1000b725
1000b71a:	85 ff                	test   edi,edi
1000b71c:	75 3b                	jne    0x1000b759
1000b71e:	68 fc e2 00 10       	push   0x1000e2fc
1000b723:	eb 0d                	jmp    0x1000b732
1000b725:	3b f0                	cmp    esi,eax
1000b727:	75 30                	jne    0x1000b759
1000b729:	85 ff                	test   edi,edi
1000b72b:	75 2c                	jne    0x1000b759
1000b72d:	68 f4 e2 00 10       	push   0x1000e2f4
1000b732:	8d 43 04             	lea    eax,[ebx+0x4]
1000b735:	6a 16                	push   0x16
1000b737:	50                   	push   eax
1000b738:	e8 5e cb ff ff       	call   0x1000829b
1000b73d:	83 c4 0c             	add    esp,0xc
1000b740:	33 f6                	xor    esi,esi
1000b742:	85 c0                	test   eax,eax
1000b744:	74 0d                	je     0x1000b753
1000b746:	56                   	push   esi
1000b747:	56                   	push   esi
1000b748:	56                   	push   esi
1000b749:	56                   	push   esi
1000b74a:	56                   	push   esi
1000b74b:	e8 2a c3 ff ff       	call   0x10007a7a
1000b750:	83 c4 14             	add    esp,0x14
1000b753:	c6 43 03 05          	mov    BYTE PTR [ebx+0x3],0x5
1000b757:	eb 2a                	jmp    0x1000b783
1000b759:	68 ec e2 00 10       	push   0x1000e2ec
1000b75e:	8d 43 04             	lea    eax,[ebx+0x4]
1000b761:	6a 16                	push   0x16
1000b763:	50                   	push   eax
1000b764:	e8 32 cb ff ff       	call   0x1000829b
1000b769:	83 c4 0c             	add    esp,0xc
1000b76c:	33 f6                	xor    esi,esi
1000b76e:	85 c0                	test   eax,eax
1000b770:	74 0d                	je     0x1000b77f
1000b772:	56                   	push   esi
1000b773:	56                   	push   esi
1000b774:	56                   	push   esi
1000b775:	56                   	push   esi
1000b776:	56                   	push   esi
1000b777:	e8 fe c2 ff ff       	call   0x10007a7a
1000b77c:	83 c4 14             	add    esp,0x14
1000b77f:	c6 43 03 06          	mov    BYTE PTR [ebx+0x3],0x6
1000b783:	33 c0                	xor    eax,eax
1000b785:	e9 1e 07 00 00       	jmp    0x1000bea8
1000b78a:	0f b7 ca             	movzx  ecx,dx
1000b78d:	8b d9                	mov    ebx,ecx
1000b78f:	69 c9 10 4d 00 00    	imul   ecx,ecx,0x4d10
1000b795:	c1 eb 08             	shr    ebx,0x8
1000b798:	8b c6                	mov    eax,esi
1000b79a:	c1 e8 18             	shr    eax,0x18
1000b79d:	8d 04 43             	lea    eax,[ebx+eax*2]
1000b7a0:	6b c0 4d             	imul   eax,eax,0x4d
1000b7a3:	8d 84 08 0c ed bc ec 	lea    eax,[eax+ecx*1-0x134312f4]
1000b7aa:	c1 f8 10             	sar    eax,0x10
1000b7ad:	0f b7 c8             	movzx  ecx,ax
1000b7b0:	0f bf d9             	movsx  ebx,cx
1000b7b3:	89 4d b4             	mov    DWORD PTR [ebp-0x4c],ecx
1000b7b6:	33 c0                	xor    eax,eax
1000b7b8:	b9 a0 0c 01 10       	mov    ecx,0x10010ca0
1000b7bd:	f7 db                	neg    ebx
1000b7bf:	83 e9 60             	sub    ecx,0x60
1000b7c2:	3b d8                	cmp    ebx,eax
1000b7c4:	66 89 55 ea          	mov    WORD PTR [ebp-0x16],dx
1000b7c8:	89 75 e6             	mov    DWORD PTR [ebp-0x1a],esi
1000b7cb:	89 7d e2             	mov    DWORD PTR [ebp-0x1e],edi
1000b7ce:	66 89 45 e0          	mov    WORD PTR [ebp-0x20],ax
1000b7d2:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
1000b7d5:	0f 84 ae 02 00 00    	je     0x1000ba89
1000b7db:	7d 0d                	jge    0x1000b7ea
1000b7dd:	b9 00 0e 01 10       	mov    ecx,0x10010e00
1000b7e2:	f7 db                	neg    ebx
1000b7e4:	83 e9 60             	sub    ecx,0x60
1000b7e7:	89 4d 98             	mov    DWORD PTR [ebp-0x68],ecx
1000b7ea:	3b d8                	cmp    ebx,eax
1000b7ec:	0f 84 97 02 00 00    	je     0x1000ba89
1000b7f2:	83 45 98 54          	add    DWORD PTR [ebp-0x68],0x54
1000b7f6:	8b cb                	mov    ecx,ebx
1000b7f8:	83 e1 07             	and    ecx,0x7
1000b7fb:	c1 fb 03             	sar    ebx,0x3
1000b7fe:	85 c9                	test   ecx,ecx
1000b800:	0f 84 79 02 00 00    	je     0x1000ba7f
1000b806:	6b c9 0c             	imul   ecx,ecx,0xc
1000b809:	03 4d 98             	add    ecx,DWORD PTR [ebp-0x68]
1000b80c:	66 81 39 00 80       	cmp    WORD PTR [ecx],0x8000
1000b811:	89 4d 9c             	mov    DWORD PTR [ebp-0x64],ecx
1000b814:	72 13                	jb     0x1000b829
1000b816:	8b f1                	mov    esi,ecx
1000b818:	8d 7d c4             	lea    edi,[ebp-0x3c]
1000b81b:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b81c:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b81d:	8d 45 c4             	lea    eax,[ebp-0x3c]
1000b820:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b821:	ff 4d c6             	dec    DWORD PTR [ebp-0x3a]
1000b824:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
1000b827:	8b c8                	mov    ecx,eax
1000b829:	0f b7 79 0a          	movzx  edi,WORD PTR [ecx+0xa]
1000b82d:	8b 55 ea             	mov    edx,DWORD PTR [ebp-0x16]
1000b830:	33 c0                	xor    eax,eax
1000b832:	8b cf                	mov    ecx,edi
1000b834:	be ff 7f 00 00       	mov    esi,0x7fff
1000b839:	33 ca                	xor    ecx,edx
1000b83b:	23 d6                	and    edx,esi
1000b83d:	23 fe                	and    edi,esi
1000b83f:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
1000b842:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
1000b845:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000b848:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
1000b84b:	81 e1 00 80 00 00    	and    ecx,0x8000
1000b851:	66 3b d6             	cmp    dx,si
1000b854:	8d 04 17             	lea    eax,[edi+edx*1]
1000b857:	0f b7 c0             	movzx  eax,ax
1000b85a:	0f 83 03 02 00 00    	jae    0x1000ba63
1000b860:	66 3b fe             	cmp    di,si
1000b863:	0f 83 fa 01 00 00    	jae    0x1000ba63
1000b869:	66 3d fd bf          	cmp    ax,0xbffd
1000b86d:	0f 87 f0 01 00 00    	ja     0x1000ba63
1000b873:	66 3d bf 3f          	cmp    ax,0x3fbf
1000b877:	77 10                	ja     0x1000b889
1000b879:	33 c0                	xor    eax,eax
1000b87b:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000b87e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000b881:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000b884:	e9 f6 01 00 00       	jmp    0x1000ba7f
1000b889:	33 f6                	xor    esi,esi
1000b88b:	66 3b d6             	cmp    dx,si
1000b88e:	75 1d                	jne    0x1000b8ad
1000b890:	40                   	inc    eax
1000b891:	f7 45 e8 ff ff ff 7f 	test   DWORD PTR [ebp-0x18],0x7fffffff
1000b898:	75 13                	jne    0x1000b8ad
1000b89a:	39 75 e4             	cmp    DWORD PTR [ebp-0x1c],esi
1000b89d:	75 0e                	jne    0x1000b8ad
1000b89f:	39 75 e0             	cmp    DWORD PTR [ebp-0x20],esi
1000b8a2:	75 09                	jne    0x1000b8ad
1000b8a4:	66 89 75 ea          	mov    WORD PTR [ebp-0x16],si
1000b8a8:	e9 d2 01 00 00       	jmp    0x1000ba7f
1000b8ad:	66 3b fe             	cmp    di,si
1000b8b0:	75 24                	jne    0x1000b8d6
1000b8b2:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
1000b8b5:	40                   	inc    eax
1000b8b6:	f7 42 08 ff ff ff 7f 	test   DWORD PTR [edx+0x8],0x7fffffff
1000b8bd:	75 17                	jne    0x1000b8d6
1000b8bf:	39 72 04             	cmp    DWORD PTR [edx+0x4],esi
1000b8c2:	75 12                	jne    0x1000b8d6
1000b8c4:	39 32                	cmp    DWORD PTR [edx],esi
1000b8c6:	75 0e                	jne    0x1000b8d6
1000b8c8:	89 75 e8             	mov    DWORD PTR [ebp-0x18],esi
1000b8cb:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000b8ce:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
1000b8d1:	e9 a9 01 00 00       	jmp    0x1000ba7f
1000b8d6:	8d 7d f4             	lea    edi,[ebp-0xc]
1000b8d9:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000b8dc:	89 7d bc             	mov    DWORD PTR [ebp-0x44],edi
1000b8df:	c7 45 c0 05 00 00 00 	mov    DWORD PTR [ebp-0x40],0x5
1000b8e6:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
1000b8e9:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
1000b8ec:	03 d2                	add    edx,edx
1000b8ee:	85 f6                	test   esi,esi
1000b8f0:	89 75 b0             	mov    DWORD PTR [ebp-0x50],esi
1000b8f3:	7e 58                	jle    0x1000b94d
1000b8f5:	8d 54 15 e0          	lea    edx,[ebp+edx*1-0x20]
1000b8f9:	89 55 a8             	mov    DWORD PTR [ebp-0x58],edx
1000b8fc:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
1000b8ff:	83 c2 08             	add    edx,0x8
1000b902:	89 55 ac             	mov    DWORD PTR [ebp-0x54],edx
1000b905:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
1000b908:	8b 75 ac             	mov    esi,DWORD PTR [ebp-0x54]
1000b90b:	0f b7 36             	movzx  esi,WORD PTR [esi]
1000b90e:	0f b7 12             	movzx  edx,WORD PTR [edx]
1000b911:	8b 7f fc             	mov    edi,DWORD PTR [edi-0x4]
1000b914:	0f af d6             	imul   edx,esi
1000b917:	83 65 90 00          	and    DWORD PTR [ebp-0x70],0x0
1000b91b:	8d 34 17             	lea    esi,[edi+edx*1]
1000b91e:	3b f7                	cmp    esi,edi
1000b920:	72 04                	jb     0x1000b926
1000b922:	3b f2                	cmp    esi,edx
1000b924:	73 07                	jae    0x1000b92d
1000b926:	c7 45 90 01 00 00 00 	mov    DWORD PTR [ebp-0x70],0x1
1000b92d:	83 7d 90 00          	cmp    DWORD PTR [ebp-0x70],0x0
1000b931:	8b 7d bc             	mov    edi,DWORD PTR [ebp-0x44]
1000b934:	89 77 fc             	mov    DWORD PTR [edi-0x4],esi
1000b937:	74 03                	je     0x1000b93c
1000b939:	66 ff 07             	inc    WORD PTR [edi]
1000b93c:	83 45 a8 02          	add    DWORD PTR [ebp-0x58],0x2
1000b940:	83 6d ac 02          	sub    DWORD PTR [ebp-0x54],0x2
1000b944:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000b947:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
1000b94b:	7f b8                	jg     0x1000b905
1000b94d:	47                   	inc    edi
1000b94e:	47                   	inc    edi
1000b94f:	ff 45 a4             	inc    DWORD PTR [ebp-0x5c]
1000b952:	ff 4d c0             	dec    DWORD PTR [ebp-0x40]
1000b955:	83 7d c0 00          	cmp    DWORD PTR [ebp-0x40],0x0
1000b959:	89 7d bc             	mov    DWORD PTR [ebp-0x44],edi
1000b95c:	7f 88                	jg     0x1000b8e6
1000b95e:	05 02 c0 00 00       	add    eax,0xc002
1000b963:	66 85 c0             	test   ax,ax
1000b966:	7e 3b                	jle    0x1000b9a3
1000b968:	f7 45 f8 00 00 00 80 	test   DWORD PTR [ebp-0x8],0x80000000
1000b96f:	75 2d                	jne    0x1000b99e
1000b971:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000b974:	8b 7d f4             	mov    edi,DWORD PTR [ebp-0xc]
1000b977:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000b97a:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
1000b97d:	c1 ea 1f             	shr    edx,0x1f
1000b980:	03 ff                	add    edi,edi
1000b982:	0b fa                	or     edi,edx
1000b984:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000b987:	c1 ee 1f             	shr    esi,0x1f
1000b98a:	03 d2                	add    edx,edx
1000b98c:	0b d6                	or     edx,esi
1000b98e:	05 ff ff 00 00       	add    eax,0xffff
1000b993:	66 85 c0             	test   ax,ax
1000b996:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000b999:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
1000b99c:	7f ca                	jg     0x1000b968
1000b99e:	66 85 c0             	test   ax,ax
1000b9a1:	7f 52                	jg     0x1000b9f5
1000b9a3:	05 ff ff 00 00       	add    eax,0xffff
1000b9a8:	66 85 c0             	test   ax,ax
1000b9ab:	7d 48                	jge    0x1000b9f5
1000b9ad:	8b d0                	mov    edx,eax
1000b9af:	f7 da                	neg    edx
1000b9b1:	0f b7 d2             	movzx  edx,dx
1000b9b4:	89 55 bc             	mov    DWORD PTR [ebp-0x44],edx
1000b9b7:	03 c2                	add    eax,edx
1000b9b9:	f6 45 f0 01          	test   BYTE PTR [ebp-0x10],0x1
1000b9bd:	74 03                	je     0x1000b9c2
1000b9bf:	ff 45 b8             	inc    DWORD PTR [ebp-0x48]
1000b9c2:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000b9c5:	8b 7d f4             	mov    edi,DWORD PTR [ebp-0xc]
1000b9c8:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000b9cb:	d1 6d f8             	shr    DWORD PTR [ebp-0x8],1
1000b9ce:	c1 e2 1f             	shl    edx,0x1f
1000b9d1:	d1 ef                	shr    edi,1
1000b9d3:	0b fa                	or     edi,edx
1000b9d5:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000b9d8:	c1 e6 1f             	shl    esi,0x1f
1000b9db:	d1 ea                	shr    edx,1
1000b9dd:	0b d6                	or     edx,esi
1000b9df:	ff 4d bc             	dec    DWORD PTR [ebp-0x44]
1000b9e2:	89 7d f4             	mov    DWORD PTR [ebp-0xc],edi
1000b9e5:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
1000b9e8:	75 cf                	jne    0x1000b9b9
1000b9ea:	83 7d b8 00          	cmp    DWORD PTR [ebp-0x48],0x0
1000b9ee:	74 05                	je     0x1000b9f5
1000b9f0:	66 83 4d f0 01       	or     WORD PTR [ebp-0x10],0x1
1000b9f5:	66 81 7d f0 00 80    	cmp    WORD PTR [ebp-0x10],0x8000
1000b9fb:	77 11                	ja     0x1000ba0e
1000b9fd:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000ba00:	81 e2 ff ff 01 00    	and    edx,0x1ffff
1000ba06:	81 fa 00 80 01 00    	cmp    edx,0x18000
1000ba0c:	75 33                	jne    0x1000ba41
1000ba0e:	83 7d f2 ff          	cmp    DWORD PTR [ebp-0xe],0xffffffff
1000ba12:	75 2a                	jne    0x1000ba3e
1000ba14:	83 65 f2 00          	and    DWORD PTR [ebp-0xe],0x0
1000ba18:	83 7d f6 ff          	cmp    DWORD PTR [ebp-0xa],0xffffffff
1000ba1c:	75 1b                	jne    0x1000ba39
1000ba1e:	83 65 f6 00          	and    DWORD PTR [ebp-0xa],0x0
1000ba22:	66 81 7d fa ff ff    	cmp    WORD PTR [ebp-0x6],0xffff
1000ba28:	75 09                	jne    0x1000ba33
1000ba2a:	66 c7 45 fa 00 80    	mov    WORD PTR [ebp-0x6],0x8000
1000ba30:	40                   	inc    eax
1000ba31:	eb 0e                	jmp    0x1000ba41
1000ba33:	66 ff 45 fa          	inc    WORD PTR [ebp-0x6]
1000ba37:	eb 08                	jmp    0x1000ba41
1000ba39:	ff 45 f6             	inc    DWORD PTR [ebp-0xa]
1000ba3c:	eb 03                	jmp    0x1000ba41
1000ba3e:	ff 45 f2             	inc    DWORD PTR [ebp-0xe]
1000ba41:	66 3d ff 7f          	cmp    ax,0x7fff
1000ba45:	73 1c                	jae    0x1000ba63
1000ba47:	66 8b 55 f2          	mov    dx,WORD PTR [ebp-0xe]
1000ba4b:	66 89 55 e0          	mov    WORD PTR [ebp-0x20],dx
1000ba4f:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
1000ba52:	89 55 e2             	mov    DWORD PTR [ebp-0x1e],edx
1000ba55:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000ba58:	0b c1                	or     eax,ecx
1000ba5a:	89 55 e6             	mov    DWORD PTR [ebp-0x1a],edx
1000ba5d:	66 89 45 ea          	mov    WORD PTR [ebp-0x16],ax
1000ba61:	eb 1c                	jmp    0x1000ba7f
1000ba63:	66 f7 d9             	neg    cx
1000ba66:	1b c9                	sbb    ecx,ecx
1000ba68:	83 65 e4 00          	and    DWORD PTR [ebp-0x1c],0x0
1000ba6c:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000ba72:	81 c1 00 80 ff 7f    	add    ecx,0x7fff8000
1000ba78:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
1000ba7c:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000ba7f:	85 db                	test   ebx,ebx
1000ba81:	0f 85 6b fd ff ff    	jne    0x1000b7f2
1000ba87:	33 c0                	xor    eax,eax
1000ba89:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
1000ba8c:	c1 e9 10             	shr    ecx,0x10
1000ba8f:	66 81 f9 ff 3f       	cmp    cx,0x3fff
1000ba94:	bb ff 7f 00 00       	mov    ebx,0x7fff
1000ba99:	0f 82 48 02 00 00    	jb     0x1000bce7
1000ba9f:	8b 75 da             	mov    esi,DWORD PTR [ebp-0x26]
1000baa2:	ff 45 b4             	inc    DWORD PTR [ebp-0x4c]
1000baa5:	0f b7 d1             	movzx  edx,cx
1000baa8:	8b ce                	mov    ecx,esi
1000baaa:	33 ca                	xor    ecx,edx
1000baac:	23 d3                	and    edx,ebx
1000baae:	23 f3                	and    esi,ebx
1000bab0:	81 e1 00 80 00 00    	and    ecx,0x8000
1000bab6:	66 3b d3             	cmp    dx,bx
1000bab9:	8d 3c 16             	lea    edi,[esi+edx*1]
1000babc:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
1000babf:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
1000bac2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
1000bac5:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
1000bac8:	0f b7 ff             	movzx  edi,di
1000bacb:	0f 83 fc 01 00 00    	jae    0x1000bccd
1000bad1:	66 3b f3             	cmp    si,bx
1000bad4:	0f 83 f3 01 00 00    	jae    0x1000bccd
1000bada:	66 81 ff fd bf       	cmp    di,0xbffd
1000badf:	0f 87 e8 01 00 00    	ja     0x1000bccd
1000bae5:	66 81 ff bf 3f       	cmp    di,0x3fbf
1000baea:	77 08                	ja     0x1000baf4
1000baec:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000baef:	e9 ed 01 00 00       	jmp    0x1000bce1
1000baf4:	66 3b d0             	cmp    dx,ax
1000baf7:	75 1d                	jne    0x1000bb16
1000baf9:	47                   	inc    edi
1000bafa:	f7 45 e8 ff ff ff 7f 	test   DWORD PTR [ebp-0x18],0x7fffffff
1000bb01:	75 13                	jne    0x1000bb16
1000bb03:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
1000bb06:	75 0e                	jne    0x1000bb16
1000bb08:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
1000bb0b:	75 09                	jne    0x1000bb16
1000bb0d:	66 89 45 ea          	mov    WORD PTR [ebp-0x16],ax
1000bb11:	e9 d1 01 00 00       	jmp    0x1000bce7
1000bb16:	66 3b f0             	cmp    si,ax
1000bb19:	75 14                	jne    0x1000bb2f
1000bb1b:	47                   	inc    edi
1000bb1c:	f7 45 d8 ff ff ff 7f 	test   DWORD PTR [ebp-0x28],0x7fffffff
1000bb23:	75 0a                	jne    0x1000bb2f
1000bb25:	39 45 d4             	cmp    DWORD PTR [ebp-0x2c],eax
1000bb28:	75 05                	jne    0x1000bb2f
1000bb2a:	39 45 d0             	cmp    DWORD PTR [ebp-0x30],eax
1000bb2d:	74 bd                	je     0x1000baec
1000bb2f:	83 65 ac 00          	and    DWORD PTR [ebp-0x54],0x0
1000bb33:	8d 45 f4             	lea    eax,[ebp-0xc]
1000bb36:	c7 45 c0 05 00 00 00 	mov    DWORD PTR [ebp-0x40],0x5
1000bb3d:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
1000bb40:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
1000bb43:	03 d2                	add    edx,edx
1000bb45:	85 f6                	test   esi,esi
1000bb47:	89 75 b0             	mov    DWORD PTR [ebp-0x50],esi
1000bb4a:	7e 52                	jle    0x1000bb9e
1000bb4c:	8d 75 d8             	lea    esi,[ebp-0x28]
1000bb4f:	8d 54 15 e0          	lea    edx,[ebp+edx*1-0x20]
1000bb53:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000bb56:	89 55 b8             	mov    DWORD PTR [ebp-0x48],edx
1000bb59:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
1000bb5c:	8b 75 b8             	mov    esi,DWORD PTR [ebp-0x48]
1000bb5f:	0f b7 36             	movzx  esi,WORD PTR [esi]
1000bb62:	0f b7 12             	movzx  edx,WORD PTR [edx]
1000bb65:	83 65 bc 00          	and    DWORD PTR [ebp-0x44],0x0
1000bb69:	0f af d6             	imul   edx,esi
1000bb6c:	8b 70 fc             	mov    esi,DWORD PTR [eax-0x4]
1000bb6f:	8d 1c 16             	lea    ebx,[esi+edx*1]
1000bb72:	3b de                	cmp    ebx,esi
1000bb74:	72 04                	jb     0x1000bb7a
1000bb76:	3b da                	cmp    ebx,edx
1000bb78:	73 07                	jae    0x1000bb81
1000bb7a:	c7 45 bc 01 00 00 00 	mov    DWORD PTR [ebp-0x44],0x1
1000bb81:	83 7d bc 00          	cmp    DWORD PTR [ebp-0x44],0x0
1000bb85:	89 58 fc             	mov    DWORD PTR [eax-0x4],ebx
1000bb88:	74 03                	je     0x1000bb8d
1000bb8a:	66 ff 00             	inc    WORD PTR [eax]
1000bb8d:	83 45 b8 02          	add    DWORD PTR [ebp-0x48],0x2
1000bb91:	83 6d a4 02          	sub    DWORD PTR [ebp-0x5c],0x2
1000bb95:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000bb98:	83 7d b0 00          	cmp    DWORD PTR [ebp-0x50],0x0
1000bb9c:	7f bb                	jg     0x1000bb59
1000bb9e:	40                   	inc    eax
1000bb9f:	40                   	inc    eax
1000bba0:	ff 45 ac             	inc    DWORD PTR [ebp-0x54]
1000bba3:	ff 4d c0             	dec    DWORD PTR [ebp-0x40]
1000bba6:	83 7d c0 00          	cmp    DWORD PTR [ebp-0x40],0x0
1000bbaa:	7f 91                	jg     0x1000bb3d
1000bbac:	81 c7 02 c0 00 00    	add    edi,0xc002
1000bbb2:	33 c0                	xor    eax,eax
1000bbb4:	66 3b f8             	cmp    di,ax
1000bbb7:	7e 3c                	jle    0x1000bbf5
1000bbb9:	f7 45 f8 00 00 00 80 	test   DWORD PTR [ebp-0x8],0x80000000
1000bbc0:	75 2e                	jne    0x1000bbf0
1000bbc2:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000bbc5:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
1000bbc8:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000bbcb:	d1 65 f0             	shl    DWORD PTR [ebp-0x10],1
1000bbce:	c1 ea 1f             	shr    edx,0x1f
1000bbd1:	03 db                	add    ebx,ebx
1000bbd3:	0b da                	or     ebx,edx
1000bbd5:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000bbd8:	c1 ee 1f             	shr    esi,0x1f
1000bbdb:	03 d2                	add    edx,edx
1000bbdd:	0b d6                	or     edx,esi
1000bbdf:	81 c7 ff ff 00 00    	add    edi,0xffff
1000bbe5:	66 3b f8             	cmp    di,ax
1000bbe8:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
1000bbeb:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
1000bbee:	7f c9                	jg     0x1000bbb9
1000bbf0:	66 3b f8             	cmp    di,ax
1000bbf3:	7f 4d                	jg     0x1000bc42
1000bbf5:	81 c7 ff ff 00 00    	add    edi,0xffff
1000bbfb:	66 3b f8             	cmp    di,ax
1000bbfe:	7d 42                	jge    0x1000bc42
1000bc00:	8b c7                	mov    eax,edi
1000bc02:	f7 d8                	neg    eax
1000bc04:	0f b7 c0             	movzx  eax,ax
1000bc07:	03 f8                	add    edi,eax
1000bc09:	f6 45 f0 01          	test   BYTE PTR [ebp-0x10],0x1
1000bc0d:	74 03                	je     0x1000bc12
1000bc0f:	ff 45 a8             	inc    DWORD PTR [ebp-0x58]
1000bc12:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
1000bc15:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
1000bc18:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
1000bc1b:	d1 6d f8             	shr    DWORD PTR [ebp-0x8],1
1000bc1e:	c1 e2 1f             	shl    edx,0x1f
1000bc21:	d1 eb                	shr    ebx,1
1000bc23:	0b da                	or     ebx,edx
1000bc25:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000bc28:	c1 e6 1f             	shl    esi,0x1f
1000bc2b:	d1 ea                	shr    edx,1
1000bc2d:	0b d6                	or     edx,esi
1000bc2f:	48                   	dec    eax
1000bc30:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
1000bc33:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
1000bc36:	75 d1                	jne    0x1000bc09
1000bc38:	39 45 a8             	cmp    DWORD PTR [ebp-0x58],eax
1000bc3b:	74 05                	je     0x1000bc42
1000bc3d:	66 83 4d f0 01       	or     WORD PTR [ebp-0x10],0x1
1000bc42:	66 81 7d f0 00 80    	cmp    WORD PTR [ebp-0x10],0x8000
1000bc48:	77 11                	ja     0x1000bc5b
1000bc4a:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
1000bc4d:	81 e2 ff ff 01 00    	and    edx,0x1ffff
1000bc53:	81 fa 00 80 01 00    	cmp    edx,0x18000
1000bc59:	75 31                	jne    0x1000bc8c
1000bc5b:	83 7d f2 ff          	cmp    DWORD PTR [ebp-0xe],0xffffffff
1000bc5f:	75 28                	jne    0x1000bc89
1000bc61:	83 7d f6 ff          	cmp    DWORD PTR [ebp-0xa],0xffffffff
1000bc65:	89 45 f2             	mov    DWORD PTR [ebp-0xe],eax
1000bc68:	75 1a                	jne    0x1000bc84
1000bc6a:	66 81 7d fa ff ff    	cmp    WORD PTR [ebp-0x6],0xffff
1000bc70:	89 45 f6             	mov    DWORD PTR [ebp-0xa],eax
1000bc73:	75 09                	jne    0x1000bc7e
1000bc75:	66 c7 45 fa 00 80    	mov    WORD PTR [ebp-0x6],0x8000
1000bc7b:	47                   	inc    edi
1000bc7c:	eb 0e                	jmp    0x1000bc8c
1000bc7e:	66 ff 45 fa          	inc    WORD PTR [ebp-0x6]
1000bc82:	eb 08                	jmp    0x1000bc8c
1000bc84:	ff 45 f6             	inc    DWORD PTR [ebp-0xa]
1000bc87:	eb 03                	jmp    0x1000bc8c
1000bc89:	ff 45 f2             	inc    DWORD PTR [ebp-0xe]
1000bc8c:	66 81 ff ff 7f       	cmp    di,0x7fff
1000bc91:	72 1e                	jb     0x1000bcb1
1000bc93:	66 f7 d9             	neg    cx
1000bc96:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000bc99:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000bc9c:	1b c9                	sbb    ecx,ecx
1000bc9e:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000bca4:	81 c1 00 80 ff 7f    	add    ecx,0x7fff8000
1000bcaa:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000bcad:	33 c0                	xor    eax,eax
1000bcaf:	eb 36                	jmp    0x1000bce7
1000bcb1:	66 8b 45 f2          	mov    ax,WORD PTR [ebp-0xe]
1000bcb5:	66 89 45 e0          	mov    WORD PTR [ebp-0x20],ax
1000bcb9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
1000bcbc:	89 45 e2             	mov    DWORD PTR [ebp-0x1e],eax
1000bcbf:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000bcc2:	0b f9                	or     edi,ecx
1000bcc4:	89 45 e6             	mov    DWORD PTR [ebp-0x1a],eax
1000bcc7:	66 89 7d ea          	mov    WORD PTR [ebp-0x16],di
1000bccb:	eb e0                	jmp    0x1000bcad
1000bccd:	66 f7 d9             	neg    cx
1000bcd0:	1b c9                	sbb    ecx,ecx
1000bcd2:	81 e1 00 00 00 80    	and    ecx,0x80000000
1000bcd8:	81 c1 00 80 ff 7f    	add    ecx,0x7fff8000
1000bcde:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000bce1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000bce4:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000bce7:	f6 45 18 01          	test   BYTE PTR [ebp+0x18],0x1
1000bceb:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
1000bcee:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
1000bcf1:	66 89 0a             	mov    WORD PTR [edx],cx
1000bcf4:	74 32                	je     0x1000bd28
1000bcf6:	0f bf c9             	movsx  ecx,cx
1000bcf9:	01 4d 14             	add    DWORD PTR [ebp+0x14],ecx
1000bcfc:	39 45 14             	cmp    DWORD PTR [ebp+0x14],eax
1000bcff:	7f 27                	jg     0x1000bd28
1000bd01:	66 83 22 00          	and    WORD PTR [edx],0x0
1000bd05:	66 81 7d 94 00 80    	cmp    WORD PTR [ebp-0x6c],0x8000
1000bd0b:	c6 42 03 01          	mov    BYTE PTR [edx+0x3],0x1
1000bd0f:	0f 95 c0             	setne  al
1000bd12:	fe c8                	dec    al
1000bd14:	24 0d                	and    al,0xd
1000bd16:	04 20                	add    al,0x20
1000bd18:	88 42 02             	mov    BYTE PTR [edx+0x2],al
1000bd1b:	c6 42 04 30          	mov    BYTE PTR [edx+0x4],0x30
1000bd1f:	c6 42 05 00          	mov    BYTE PTR [edx+0x5],0x0
1000bd23:	e9 b1 f9 ff ff       	jmp    0x1000b6d9
1000bd28:	6a 15                	push   0x15
1000bd2a:	59                   	pop    ecx
1000bd2b:	39 4d 14             	cmp    DWORD PTR [ebp+0x14],ecx
1000bd2e:	7e 03                	jle    0x1000bd33
1000bd30:	89 4d 14             	mov    DWORD PTR [ebp+0x14],ecx
1000bd33:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
1000bd36:	c1 ee 10             	shr    esi,0x10
1000bd39:	6a 08                	push   0x8
1000bd3b:	81 ee fe 3f 00 00    	sub    esi,0x3ffe
1000bd41:	66 89 45 ea          	mov    WORD PTR [ebp-0x16],ax
1000bd45:	5b                   	pop    ebx
1000bd46:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000bd49:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
1000bd4c:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
1000bd4f:	d1 65 e0             	shl    DWORD PTR [ebp-0x20],1
1000bd52:	c1 e8 1f             	shr    eax,0x1f
1000bd55:	03 ff                	add    edi,edi
1000bd57:	0b f8                	or     edi,eax
1000bd59:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000bd5c:	c1 e9 1f             	shr    ecx,0x1f
1000bd5f:	03 c0                	add    eax,eax
1000bd61:	0b c1                	or     eax,ecx
1000bd63:	4b                   	dec    ebx
1000bd64:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
1000bd67:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
1000bd6a:	75 da                	jne    0x1000bd46
1000bd6c:	85 f6                	test   esi,esi
1000bd6e:	7d 32                	jge    0x1000bda2
1000bd70:	f7 de                	neg    esi
1000bd72:	81 e6 ff 00 00 00    	and    esi,0xff
1000bd78:	7e 28                	jle    0x1000bda2
1000bd7a:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000bd7d:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
1000bd80:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
1000bd83:	d1 6d e8             	shr    DWORD PTR [ebp-0x18],1
1000bd86:	c1 e0 1f             	shl    eax,0x1f
1000bd89:	d1 ef                	shr    edi,1
1000bd8b:	0b f8                	or     edi,eax
1000bd8d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000bd90:	c1 e1 1f             	shl    ecx,0x1f
1000bd93:	d1 e8                	shr    eax,1
1000bd95:	0b c1                	or     eax,ecx
1000bd97:	4e                   	dec    esi
1000bd98:	85 f6                	test   esi,esi
1000bd9a:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
1000bd9d:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000bda0:	7f d8                	jg     0x1000bd7a
1000bda2:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
1000bda5:	40                   	inc    eax
1000bda6:	85 c0                	test   eax,eax
1000bda8:	8d 5a 04             	lea    ebx,[edx+0x4]
1000bdab:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
1000bdae:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
1000bdb1:	0f 8e b5 00 00 00    	jle    0x1000be6c
1000bdb7:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
1000bdba:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
1000bdbd:	8d 75 e0             	lea    esi,[ebp-0x20]
1000bdc0:	8d 7d c4             	lea    edi,[ebp-0x3c]
1000bdc3:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000bdc4:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000bdc5:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000bdc6:	d1 65 e0             	shl    DWORD PTR [ebp-0x20],1
1000bdc9:	8b 7d e0             	mov    edi,DWORD PTR [ebp-0x20]
1000bdcc:	d1 65 e0             	shl    DWORD PTR [ebp-0x20],1
1000bdcf:	c1 ea 1f             	shr    edx,0x1f
1000bdd2:	8d 0c 00             	lea    ecx,[eax+eax*1]
1000bdd5:	0b ca                	or     ecx,edx
1000bdd7:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
1000bdda:	8b f0                	mov    esi,eax
1000bddc:	c1 ee 1f             	shr    esi,0x1f
1000bddf:	03 d2                	add    edx,edx
1000bde1:	0b d6                	or     edx,esi
1000bde3:	8b c1                	mov    eax,ecx
1000bde5:	8d 34 09             	lea    esi,[ecx+ecx*1]
1000bde8:	c1 e8 1f             	shr    eax,0x1f
1000bdeb:	8d 0c 12             	lea    ecx,[edx+edx*1]
1000bdee:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
1000bdf1:	c1 ef 1f             	shr    edi,0x1f
1000bdf4:	0b c8                	or     ecx,eax
1000bdf6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
1000bdf9:	0b f7                	or     esi,edi
1000bdfb:	8d 3c 02             	lea    edi,[edx+eax*1]
1000bdfe:	3b f8                	cmp    edi,eax
1000be00:	72 04                	jb     0x1000be06
1000be02:	3b fa                	cmp    edi,edx
1000be04:	73 18                	jae    0x1000be1e
1000be06:	8d 46 01             	lea    eax,[esi+0x1]
1000be09:	33 d2                	xor    edx,edx
1000be0b:	3b c6                	cmp    eax,esi
1000be0d:	72 05                	jb     0x1000be14
1000be0f:	83 f8 01             	cmp    eax,0x1
1000be12:	73 03                	jae    0x1000be17
1000be14:	33 d2                	xor    edx,edx
1000be16:	42                   	inc    edx
1000be17:	85 d2                	test   edx,edx
1000be19:	8b f0                	mov    esi,eax
1000be1b:	74 01                	je     0x1000be1e
1000be1d:	41                   	inc    ecx
1000be1e:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
1000be21:	8d 14 30             	lea    edx,[eax+esi*1]
1000be24:	3b d6                	cmp    edx,esi
1000be26:	89 55 bc             	mov    DWORD PTR [ebp-0x44],edx
1000be29:	72 04                	jb     0x1000be2f
1000be2b:	3b d0                	cmp    edx,eax
1000be2d:	73 01                	jae    0x1000be30
1000be2f:	41                   	inc    ecx
1000be30:	03 4d cc             	add    ecx,DWORD PTR [ebp-0x34]
1000be33:	c1 ea 1f             	shr    edx,0x1f
1000be36:	03 c9                	add    ecx,ecx
1000be38:	0b ca                	or     ecx,edx
1000be3a:	8d 34 3f             	lea    esi,[edi+edi*1]
1000be3d:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
1000be40:	8b 75 bc             	mov    esi,DWORD PTR [ebp-0x44]
1000be43:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
1000be46:	c1 e9 18             	shr    ecx,0x18
1000be49:	03 f6                	add    esi,esi
1000be4b:	80 c1 30             	add    cl,0x30
1000be4e:	8b c7                	mov    eax,edi
1000be50:	c1 e8 1f             	shr    eax,0x1f
1000be53:	0b f0                	or     esi,eax
1000be55:	88 0b                	mov    BYTE PTR [ebx],cl
1000be57:	43                   	inc    ebx
1000be58:	ff 4d b4             	dec    DWORD PTR [ebp-0x4c]
1000be5b:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
1000be5f:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000be62:	c6 45 eb 00          	mov    BYTE PTR [ebp-0x15],0x0
1000be66:	0f 8f 4b ff ff ff    	jg     0x1000bdb7
1000be6c:	4b                   	dec    ebx
1000be6d:	8a 03                	mov    al,BYTE PTR [ebx]
1000be6f:	4b                   	dec    ebx
1000be70:	3c 35                	cmp    al,0x35
1000be72:	7d 0e                	jge    0x1000be82
1000be74:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
1000be77:	eb 44                	jmp    0x1000bebd
1000be79:	80 3b 39             	cmp    BYTE PTR [ebx],0x39
1000be7c:	75 09                	jne    0x1000be87
1000be7e:	c6 03 30             	mov    BYTE PTR [ebx],0x30
1000be81:	4b                   	dec    ebx
1000be82:	3b 5d c0             	cmp    ebx,DWORD PTR [ebp-0x40]
1000be85:	73 f2                	jae    0x1000be79
1000be87:	3b 5d c0             	cmp    ebx,DWORD PTR [ebp-0x40]
1000be8a:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
1000be8d:	73 04                	jae    0x1000be93
1000be8f:	43                   	inc    ebx
1000be90:	66 ff 00             	inc    WORD PTR [eax]
1000be93:	fe 03                	inc    BYTE PTR [ebx]
1000be95:	2a d8                	sub    bl,al
1000be97:	80 eb 03             	sub    bl,0x3
1000be9a:	0f be cb             	movsx  ecx,bl
1000be9d:	88 58 03             	mov    BYTE PTR [eax+0x3],bl
1000bea0:	c6 44 01 04 00       	mov    BYTE PTR [ecx+eax*1+0x4],0x0
1000bea5:	8b 45 8c             	mov    eax,DWORD PTR [ebp-0x74]
1000bea8:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000beab:	5f                   	pop    edi
1000beac:	5e                   	pop    esi
1000bead:	33 cd                	xor    ecx,ebp
1000beaf:	5b                   	pop    ebx
1000beb0:	e8 66 7c ff ff       	call   0x10003b1b
1000beb5:	c9                   	leave  
1000beb6:	c3                   	ret    

1000beb7:	80 3b 30             	cmp    BYTE PTR [ebx],0x30
1000beba:	75 05                	jne    0x1000bec1
1000bebc:	4b                   	dec    ebx
1000bebd:	3b d9                	cmp    ebx,ecx
1000bebf:	73 f6                	jae    0x1000beb7
1000bec1:	3b d9                	cmp    ebx,ecx
1000bec3:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
1000bec6:	73 cd                	jae    0x1000be95
1000bec8:	66 83 20 00          	and    WORD PTR [eax],0x0
1000becc:	66 81 7d 94 00 80    	cmp    WORD PTR [ebp-0x6c],0x8000
1000bed2:	c6 40 03 01          	mov    BYTE PTR [eax+0x3],0x1
1000bed6:	0f 95 c2             	setne  dl
1000bed9:	fe ca                	dec    dl
1000bedb:	80 e2 0d             	and    dl,0xd
1000bede:	80 c2 20             	add    dl,0x20
1000bee1:	88 50 02             	mov    BYTE PTR [eax+0x2],dl
1000bee4:	c6 01 30             	mov    BYTE PTR [ecx],0x30
1000bee7:	c6 40 05 00          	mov    BYTE PTR [eax+0x5],0x0
1000beeb:	e9 e9 f7 ff ff       	jmp    0x1000b6d9
1000bef0:	55                   	push   ebp
1000bef1:	8b ec                	mov    ebp,esp
1000bef3:	83 ec 04             	sub    esp,0x4
1000bef6:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000bef9:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000befc:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
1000beff:	c1 e9 07             	shr    ecx,0x7
1000bf02:	66 0f ef c0          	pxor   xmm0,xmm0
1000bf06:	eb 08                	jmp    0x1000bf10
1000bf08:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
1000bf0f:	90                   	nop
1000bf10:	66 0f 7f 07          	movdqa XMMWORD PTR [edi],xmm0
1000bf14:	66 0f 7f 47 10       	movdqa XMMWORD PTR [edi+0x10],xmm0
1000bf19:	66 0f 7f 47 20       	movdqa XMMWORD PTR [edi+0x20],xmm0
1000bf1e:	66 0f 7f 47 30       	movdqa XMMWORD PTR [edi+0x30],xmm0
1000bf23:	66 0f 7f 47 40       	movdqa XMMWORD PTR [edi+0x40],xmm0
1000bf28:	66 0f 7f 47 50       	movdqa XMMWORD PTR [edi+0x50],xmm0
1000bf2d:	66 0f 7f 47 60       	movdqa XMMWORD PTR [edi+0x60],xmm0
1000bf32:	66 0f 7f 47 70       	movdqa XMMWORD PTR [edi+0x70],xmm0
1000bf37:	8d bf 80 00 00 00    	lea    edi,[edi+0x80]
1000bf3d:	49                   	dec    ecx
1000bf3e:	75 d0                	jne    0x1000bf10
1000bf40:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000bf43:	8b e5                	mov    esp,ebp
1000bf45:	5d                   	pop    ebp
1000bf46:	c3                   	ret    
