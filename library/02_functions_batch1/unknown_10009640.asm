10009640:	55                   	push   ebp
10009641:	8b ec                	mov    ebp,esp
10009643:	57                   	push   edi
10009644:	56                   	push   esi
10009645:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10009648:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000964b:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000964e:	8b c1                	mov    eax,ecx
10009650:	8b d1                	mov    edx,ecx
10009652:	03 c6                	add    eax,esi
10009654:	3b fe                	cmp    edi,esi
10009656:	76 08                	jbe    0x10009660
10009658:	3b f8                	cmp    edi,eax
1000965a:	0f 82 a4 01 00 00    	jb     0x10009804
10009660:	81 f9 00 01 00 00    	cmp    ecx,0x100
10009666:	72 1f                	jb     0x10009687
10009668:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
1000966f:	74 16                	je     0x10009687
10009671:	57                   	push   edi
10009672:	56                   	push   esi
10009673:	83 e7 0f             	and    edi,0xf
10009676:	83 e6 0f             	and    esi,0xf
10009679:	3b fe                	cmp    edi,esi
1000967b:	5e                   	pop    esi
1000967c:	5f                   	pop    edi
1000967d:	75 08                	jne    0x10009687
1000967f:	5e                   	pop    esi
10009680:	5f                   	pop    edi
10009681:	5d                   	pop    ebp
10009682:	e9 c0 1e 00 00       	jmp    0x1000b547
10009687:	f7 c7 03 00 00 00    	test   edi,0x3
1000968d:	75 15                	jne    0x100096a4
1000968f:	c1 e9 02             	shr    ecx,0x2
10009692:	83 e2 03             	and    edx,0x3
10009695:	83 f9 08             	cmp    ecx,0x8
10009698:	72 2a                	jb     0x100096c4
1000969a:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000969c:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
100096a3:	90                   	nop
100096a4:	8b c7                	mov    eax,edi
100096a6:	ba 03 00 00 00       	mov    edx,0x3
100096ab:	83 e9 04             	sub    ecx,0x4
100096ae:	72 0c                	jb     0x100096bc
100096b0:	83 e0 03             	and    eax,0x3
100096b3:	03 c8                	add    ecx,eax
100096b5:	ff 24 85 c8 96 00 10 	jmp    DWORD PTR [eax*4+0x100096c8]
100096bc:	ff 24 8d c4 97 00 10 	jmp    DWORD PTR [ecx*4+0x100097c4]
100096c3:	90                   	nop
100096c4:	ff 24 8d 48 97 00 10 	jmp    DWORD PTR [ecx*4+0x10009748]
100096cb:	90                   	nop
100096cc:	d8 96 00 10 04 97    	fcom   DWORD PTR [esi-0x68fbf000]
100096d2:	00 10                	add    BYTE PTR [eax],dl
100096d4:	28 97 00 10 23 d1    	sub    BYTE PTR [edi-0x2edcf000],dl
100096da:	8a 06                	mov    al,BYTE PTR [esi]
100096dc:	88 07                	mov    BYTE PTR [edi],al
100096de:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100096e1:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100096e4:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100096e7:	c1 e9 02             	shr    ecx,0x2
100096ea:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100096ed:	83 c6 03             	add    esi,0x3
100096f0:	83 c7 03             	add    edi,0x3
100096f3:	83 f9 08             	cmp    ecx,0x8
100096f6:	72 cc                	jb     0x100096c4
100096f8:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100096fa:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
10009701:	8d 49 00             	lea    ecx,[ecx+0x0]
10009704:	23 d1                	and    edx,ecx
10009706:	8a 06                	mov    al,BYTE PTR [esi]
10009708:	88 07                	mov    BYTE PTR [edi],al
1000970a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
1000970d:	c1 e9 02             	shr    ecx,0x2
10009710:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10009713:	83 c6 02             	add    esi,0x2
10009716:	83 c7 02             	add    edi,0x2
10009719:	83 f9 08             	cmp    ecx,0x8
1000971c:	72 a6                	jb     0x100096c4
1000971e:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10009720:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
10009727:	90                   	nop
10009728:	23 d1                	and    edx,ecx
1000972a:	8a 06                	mov    al,BYTE PTR [esi]
1000972c:	88 07                	mov    BYTE PTR [edi],al
1000972e:	83 c6 01             	add    esi,0x1
10009731:	c1 e9 02             	shr    ecx,0x2
10009734:	83 c7 01             	add    edi,0x1
10009737:	83 f9 08             	cmp    ecx,0x8
1000973a:	72 88                	jb     0x100096c4
1000973c:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000973e:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
10009745:	8d 49 00             	lea    ecx,[ecx+0x0]
10009748:	ab                   	stos   DWORD PTR es:[edi],eax
10009749:	97                   	xchg   edi,eax
1000974a:	00 10                	add    BYTE PTR [eax],dl
1000974c:	98                   	cwde   
1000974d:	97                   	xchg   edi,eax
1000974e:	00 10                	add    BYTE PTR [eax],dl
10009750:	90                   	nop
10009751:	97                   	xchg   edi,eax
10009752:	00 10                	add    BYTE PTR [eax],dl
10009754:	88 97 00 10 80 97    	mov    BYTE PTR [edi-0x687ff000],dl
1000975a:	00 10                	add    BYTE PTR [eax],dl
1000975c:	78 97                	js     0x100096f5
1000975e:	00 10                	add    BYTE PTR [eax],dl
10009760:	70 97                	jo     0x100096f9
10009762:	00 10                	add    BYTE PTR [eax],dl
10009764:	68 97 00 10 8b       	push   0x8b100097
10009769:	44                   	inc    esp
1000976a:	8e e4                	mov    fs,esp
1000976c:	89 44 8f e4          	mov    DWORD PTR [edi+ecx*4-0x1c],eax
10009770:	8b 44 8e e8          	mov    eax,DWORD PTR [esi+ecx*4-0x18]
10009774:	89 44 8f e8          	mov    DWORD PTR [edi+ecx*4-0x18],eax
10009778:	8b 44 8e ec          	mov    eax,DWORD PTR [esi+ecx*4-0x14]
1000977c:	89 44 8f ec          	mov    DWORD PTR [edi+ecx*4-0x14],eax
10009780:	8b 44 8e f0          	mov    eax,DWORD PTR [esi+ecx*4-0x10]
10009784:	89 44 8f f0          	mov    DWORD PTR [edi+ecx*4-0x10],eax
10009788:	8b 44 8e f4          	mov    eax,DWORD PTR [esi+ecx*4-0xc]
1000978c:	89 44 8f f4          	mov    DWORD PTR [edi+ecx*4-0xc],eax
10009790:	8b 44 8e f8          	mov    eax,DWORD PTR [esi+ecx*4-0x8]
10009794:	89 44 8f f8          	mov    DWORD PTR [edi+ecx*4-0x8],eax
10009798:	8b 44 8e fc          	mov    eax,DWORD PTR [esi+ecx*4-0x4]
1000979c:	89 44 8f fc          	mov    DWORD PTR [edi+ecx*4-0x4],eax
100097a0:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
100097a7:	03 f0                	add    esi,eax
100097a9:	03 f8                	add    edi,eax
100097ab:	ff 24 95 b4 97 00 10 	jmp    DWORD PTR [edx*4+0x100097b4]
100097b2:	8b ff                	mov    edi,edi
100097b4:	c4 97 00 10 cc 97    	les    edx,FWORD PTR [edi-0x6833f000]
100097ba:	00 10                	add    BYTE PTR [eax],dl
100097bc:	d8 97 00 10 ec 97    	fcom   DWORD PTR [edi-0x6813f000]
100097c2:	00 10                	add    BYTE PTR [eax],dl
100097c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097c7:	5e                   	pop    esi
100097c8:	5f                   	pop    edi
100097c9:	c9                   	leave  
100097ca:	c3                   	ret    
100097cb:	90                   	nop
100097cc:	8a 06                	mov    al,BYTE PTR [esi]
100097ce:	88 07                	mov    BYTE PTR [edi],al
100097d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097d3:	5e                   	pop    esi
100097d4:	5f                   	pop    edi
100097d5:	c9                   	leave  
100097d6:	c3                   	ret    
100097d7:	90                   	nop
100097d8:	8a 06                	mov    al,BYTE PTR [esi]
100097da:	88 07                	mov    BYTE PTR [edi],al
100097dc:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100097df:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100097e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097e5:	5e                   	pop    esi
100097e6:	5f                   	pop    edi
100097e7:	c9                   	leave  
100097e8:	c3                   	ret    
100097e9:	8d 49 00             	lea    ecx,[ecx+0x0]
100097ec:	8a 06                	mov    al,BYTE PTR [esi]
100097ee:	88 07                	mov    BYTE PTR [edi],al
100097f0:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100097f3:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100097f6:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100097f9:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100097fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100097ff:	5e                   	pop    esi
10009800:	5f                   	pop    edi
10009801:	c9                   	leave  
10009802:	c3                   	ret    
10009803:	90                   	nop
10009804:	8d 74 31 fc          	lea    esi,[ecx+esi*1-0x4]
10009808:	8d 7c 39 fc          	lea    edi,[ecx+edi*1-0x4]
1000980c:	f7 c7 03 00 00 00    	test   edi,0x3
10009812:	75 24                	jne    0x10009838
10009814:	c1 e9 02             	shr    ecx,0x2
10009817:	83 e2 03             	and    edx,0x3
1000981a:	83 f9 08             	cmp    ecx,0x8
1000981d:	72 0d                	jb     0x1000982c
1000981f:	fd                   	std    
10009820:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10009822:	fc                   	cld    
10009823:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
1000982a:	8b ff                	mov    edi,edi
1000982c:	f7 d9                	neg    ecx
1000982e:	ff 24 8d 00 99 00 10 	jmp    DWORD PTR [ecx*4+0x10009900]
10009835:	8d 49 00             	lea    ecx,[ecx+0x0]
10009838:	8b c7                	mov    eax,edi
1000983a:	ba 03 00 00 00       	mov    edx,0x3
1000983f:	83 f9 04             	cmp    ecx,0x4
10009842:	72 0c                	jb     0x10009850
10009844:	83 e0 03             	and    eax,0x3
10009847:	2b c8                	sub    ecx,eax
10009849:	ff 24 85 54 98 00 10 	jmp    DWORD PTR [eax*4+0x10009854]
10009850:	ff 24 8d 50 99 00 10 	jmp    DWORD PTR [ecx*4+0x10009950]
10009857:	90                   	nop
10009858:	64 98                	fs cwde 
1000985a:	00 10                	add    BYTE PTR [eax],dl
1000985c:	88 98 00 10 b0 98    	mov    BYTE PTR [eax-0x674ff000],bl
10009862:	00 10                	add    BYTE PTR [eax],dl
10009864:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
10009867:	23 d1                	and    edx,ecx
10009869:	88 47 03             	mov    BYTE PTR [edi+0x3],al
1000986c:	83 ee 01             	sub    esi,0x1
1000986f:	c1 e9 02             	shr    ecx,0x2
10009872:	83 ef 01             	sub    edi,0x1
10009875:	83 f9 08             	cmp    ecx,0x8
10009878:	72 b2                	jb     0x1000982c
1000987a:	fd                   	std    
1000987b:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000987d:	fc                   	cld    
1000987e:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
10009885:	8d 49 00             	lea    ecx,[ecx+0x0]
10009888:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000988b:	23 d1                	and    edx,ecx
1000988d:	88 47 03             	mov    BYTE PTR [edi+0x3],al
10009890:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10009893:	c1 e9 02             	shr    ecx,0x2
10009896:	88 47 02             	mov    BYTE PTR [edi+0x2],al
10009899:	83 ee 02             	sub    esi,0x2
1000989c:	83 ef 02             	sub    edi,0x2
1000989f:	83 f9 08             	cmp    ecx,0x8
100098a2:	72 88                	jb     0x1000982c
100098a4:	fd                   	std    
100098a5:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100098a7:	fc                   	cld    
100098a8:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
100098af:	90                   	nop
100098b0:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100098b3:	23 d1                	and    edx,ecx
100098b5:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100098b8:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100098bb:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100098be:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100098c1:	c1 e9 02             	shr    ecx,0x2
100098c4:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100098c7:	83 ee 03             	sub    esi,0x3
100098ca:	83 ef 03             	sub    edi,0x3
100098cd:	83 f9 08             	cmp    ecx,0x8
100098d0:	0f 82 56 ff ff ff    	jb     0x1000982c
100098d6:	fd                   	std    
100098d7:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100098d9:	fc                   	cld    
100098da:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
100098e1:	8d 49 00             	lea    ecx,[ecx+0x0]
100098e4:	04 99                	add    al,0x99
100098e6:	00 10                	add    BYTE PTR [eax],dl
100098e8:	0c 99                	or     al,0x99
100098ea:	00 10                	add    BYTE PTR [eax],dl
100098ec:	14 99                	adc    al,0x99
100098ee:	00 10                	add    BYTE PTR [eax],dl
100098f0:	1c 99                	sbb    al,0x99
100098f2:	00 10                	add    BYTE PTR [eax],dl
100098f4:	24 99                	and    al,0x99
100098f6:	00 10                	add    BYTE PTR [eax],dl
100098f8:	2c 99                	sub    al,0x99
100098fa:	00 10                	add    BYTE PTR [eax],dl
100098fc:	34 99                	xor    al,0x99
100098fe:	00 10                	add    BYTE PTR [eax],dl
10009900:	47                   	inc    edi
10009901:	99                   	cdq    
10009902:	00 10                	add    BYTE PTR [eax],dl
10009904:	8b 44 8e 1c          	mov    eax,DWORD PTR [esi+ecx*4+0x1c]
10009908:	89 44 8f 1c          	mov    DWORD PTR [edi+ecx*4+0x1c],eax
1000990c:	8b 44 8e 18          	mov    eax,DWORD PTR [esi+ecx*4+0x18]
10009910:	89 44 8f 18          	mov    DWORD PTR [edi+ecx*4+0x18],eax
10009914:	8b 44 8e 14          	mov    eax,DWORD PTR [esi+ecx*4+0x14]
10009918:	89 44 8f 14          	mov    DWORD PTR [edi+ecx*4+0x14],eax
1000991c:	8b 44 8e 10          	mov    eax,DWORD PTR [esi+ecx*4+0x10]
10009920:	89 44 8f 10          	mov    DWORD PTR [edi+ecx*4+0x10],eax
10009924:	8b 44 8e 0c          	mov    eax,DWORD PTR [esi+ecx*4+0xc]
10009928:	89 44 8f 0c          	mov    DWORD PTR [edi+ecx*4+0xc],eax
1000992c:	8b 44 8e 08          	mov    eax,DWORD PTR [esi+ecx*4+0x8]
10009930:	89 44 8f 08          	mov    DWORD PTR [edi+ecx*4+0x8],eax
10009934:	8b 44 8e 04          	mov    eax,DWORD PTR [esi+ecx*4+0x4]
10009938:	89 44 8f 04          	mov    DWORD PTR [edi+ecx*4+0x4],eax
1000993c:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
10009943:	03 f0                	add    esi,eax
10009945:	03 f8                	add    edi,eax
10009947:	ff 24 95 50 99 00 10 	jmp    DWORD PTR [edx*4+0x10009950]
1000994e:	8b ff                	mov    edi,edi
10009950:	60                   	pusha  
10009951:	99                   	cdq    
10009952:	00 10                	add    BYTE PTR [eax],dl
10009954:	68 99 00 10 78       	push   0x78100099
10009959:	99                   	cdq    
1000995a:	00 10                	add    BYTE PTR [eax],dl
1000995c:	8c 99 00 10 8b 45    	mov    WORD PTR [ecx+0x458b1000],ds
10009962:	08 5e 5f             	or     BYTE PTR [esi+0x5f],bl
10009965:	c9                   	leave  
10009966:	c3                   	ret    
10009967:	90                   	nop
10009968:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000996b:	88 47 03             	mov    BYTE PTR [edi+0x3],al
1000996e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10009971:	5e                   	pop    esi
10009972:	5f                   	pop    edi
10009973:	c9                   	leave  
10009974:	c3                   	ret    
10009975:	8d 49 00             	lea    ecx,[ecx+0x0]
10009978:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000997b:	88 47 03             	mov    BYTE PTR [edi+0x3],al
1000997e:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10009981:	88 47 02             	mov    BYTE PTR [edi+0x2],al
10009984:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10009987:	5e                   	pop    esi
10009988:	5f                   	pop    edi
10009989:	c9                   	leave  
1000998a:	c3                   	ret    
1000998b:	90                   	nop
1000998c:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
1000998f:	88 47 03             	mov    BYTE PTR [edi+0x3],al
10009992:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10009995:	88 47 02             	mov    BYTE PTR [edi+0x2],al
10009998:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
1000999b:	88 47 01             	mov    BYTE PTR [edi+0x1],al
1000999e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100099a1:	5e                   	pop    esi
100099a2:	5f                   	pop    edi
100099a3:	c9                   	leave  
100099a4:	c3                   	ret    
100099a5:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
100099a9:	85 c0                	test   eax,eax
100099ab:	74 12                	je     0x100099bf
100099ad:	83 e8 08             	sub    eax,0x8
100099b0:	81 38 dd dd 00 00    	cmp    DWORD PTR [eax],0xdddd
100099b6:	75 07                	jne    0x100099bf
100099b8:	50                   	push   eax
100099b9:	e8 bd 9f ff ff       	call   0x1000397b
100099be:	59                   	pop    ecx
100099bf:	c3                   	ret    
100099c0:	55                   	push   ebp
100099c1:	8b ec                	mov    ebp,esp
100099c3:	83 ec 14             	sub    esp,0x14
100099c6:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100099cb:	33 c5                	xor    eax,ebp
100099cd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100099d0:	53                   	push   ebx
100099d1:	56                   	push   esi
100099d2:	33 db                	xor    ebx,ebx
100099d4:	39 1d dc 5b 01 10    	cmp    DWORD PTR ds:0x10015bdc,ebx
100099da:	57                   	push   edi
100099db:	8b f1                	mov    esi,ecx
100099dd:	75 38                	jne    0x10009a17
100099df:	53                   	push   ebx
100099e0:	53                   	push   ebx
100099e1:	33 ff                	xor    edi,edi
100099e3:	47                   	inc    edi
100099e4:	57                   	push   edi
100099e5:	68 b0 d9 00 10       	push   0x1000d9b0
100099ea:	68 00 01 00 00       	push   0x100
100099ef:	53                   	push   ebx
100099f0:	ff 15 30 d0 00 10    	call   DWORD PTR ds:0x1000d030
100099f6:	85 c0                	test   eax,eax
100099f8:	74 08                	je     0x10009a02
100099fa:	89 3d dc 5b 01 10    	mov    DWORD PTR ds:0x10015bdc,edi
10009a00:	eb 15                	jmp    0x10009a17
10009a02:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10009a08:	83 f8 78             	cmp    eax,0x78
10009a0b:	75 0a                	jne    0x10009a17
10009a0d:	c7 05 dc 5b 01 10 02 	mov    DWORD PTR ds:0x10015bdc,0x2
10009a14:	00 00 00 
10009a17:	39 5d 14             	cmp    DWORD PTR [ebp+0x14],ebx
10009a1a:	7e 22                	jle    0x10009a3e
10009a1c:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
10009a1f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10009a22:	49                   	dec    ecx
10009a23:	38 18                	cmp    BYTE PTR [eax],bl
10009a25:	74 08                	je     0x10009a2f
10009a27:	40                   	inc    eax
10009a28:	3b cb                	cmp    ecx,ebx
10009a2a:	75 f6                	jne    0x10009a22
10009a2c:	83 c9 ff             	or     ecx,0xffffffff
10009a2f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
10009a32:	2b c1                	sub    eax,ecx
10009a34:	48                   	dec    eax
10009a35:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
10009a38:	7d 01                	jge    0x10009a3b
10009a3a:	40                   	inc    eax
10009a3b:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
10009a3e:	a1 dc 5b 01 10       	mov    eax,ds:0x10015bdc
10009a43:	83 f8 02             	cmp    eax,0x2
10009a46:	0f 84 ab 01 00 00    	je     0x10009bf7
10009a4c:	3b c3                	cmp    eax,ebx
10009a4e:	0f 84 a3 01 00 00    	je     0x10009bf7
10009a54:	83 f8 01             	cmp    eax,0x1
10009a57:	0f 85 cb 01 00 00    	jne    0x10009c28
10009a5d:	39 5d 20             	cmp    DWORD PTR [ebp+0x20],ebx
10009a60:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
10009a63:	75 08                	jne    0x10009a6d
10009a65:	8b 06                	mov    eax,DWORD PTR [esi]
10009a67:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009a6a:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
10009a6d:	8b 35 fc d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0fc
10009a73:	33 c0                	xor    eax,eax
10009a75:	39 5d 24             	cmp    DWORD PTR [ebp+0x24],ebx
10009a78:	53                   	push   ebx
10009a79:	53                   	push   ebx
10009a7a:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009a7d:	0f 95 c0             	setne  al
10009a80:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009a83:	8d 04 c5 01 00 00 00 	lea    eax,[eax*8+0x1]
10009a8a:	50                   	push   eax
10009a8b:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009a8e:	ff d6                	call   esi
10009a90:	8b f8                	mov    edi,eax
10009a92:	3b fb                	cmp    edi,ebx
10009a94:	0f 84 8e 01 00 00    	je     0x10009c28
10009a9a:	7e 43                	jle    0x10009adf
10009a9c:	6a e0                	push   0xffffffe0
10009a9e:	33 d2                	xor    edx,edx
10009aa0:	58                   	pop    eax
10009aa1:	f7 f7                	div    edi
10009aa3:	83 f8 02             	cmp    eax,0x2
10009aa6:	72 37                	jb     0x10009adf
10009aa8:	8d 44 3f 08          	lea    eax,[edi+edi*1+0x8]
10009aac:	3d 00 04 00 00       	cmp    eax,0x400
10009ab1:	77 13                	ja     0x10009ac6
10009ab3:	e8 18 2e 00 00       	call   0x1000c8d0
10009ab8:	8b c4                	mov    eax,esp
10009aba:	3b c3                	cmp    eax,ebx
10009abc:	74 1c                	je     0x10009ada
10009abe:	c7 00 cc cc 00 00    	mov    DWORD PTR [eax],0xcccc
10009ac4:	eb 11                	jmp    0x10009ad7
10009ac6:	50                   	push   eax
10009ac7:	e8 8c 9f ff ff       	call   0x10003a58
10009acc:	3b c3                	cmp    eax,ebx
10009ace:	59                   	pop    ecx
10009acf:	74 09                	je     0x10009ada
10009ad1:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009ad7:	83 c0 08             	add    eax,0x8
10009ada:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
10009add:	eb 03                	jmp    0x10009ae2
10009adf:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10009ae2:	39 5d f4             	cmp    DWORD PTR [ebp-0xc],ebx
10009ae5:	0f 84 3d 01 00 00    	je     0x10009c28
10009aeb:	57                   	push   edi
10009aec:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009aef:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009af2:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009af5:	6a 01                	push   0x1
10009af7:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009afa:	ff d6                	call   esi
10009afc:	85 c0                	test   eax,eax
10009afe:	0f 84 e2 00 00 00    	je     0x10009be6
10009b04:	8b 35 30 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d030
10009b0a:	53                   	push   ebx
10009b0b:	53                   	push   ebx
10009b0c:	57                   	push   edi
10009b0d:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009b10:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009b13:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009b16:	ff d6                	call   esi
10009b18:	8b c8                	mov    ecx,eax
10009b1a:	3b cb                	cmp    ecx,ebx
10009b1c:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
10009b1f:	0f 84 c1 00 00 00    	je     0x10009be6
10009b25:	66 f7 45 0c 00 04    	test   WORD PTR [ebp+0xc],0x400
10009b2b:	74 29                	je     0x10009b56
10009b2d:	39 5d 1c             	cmp    DWORD PTR [ebp+0x1c],ebx
10009b30:	0f 84 b0 00 00 00    	je     0x10009be6
10009b36:	3b 4d 1c             	cmp    ecx,DWORD PTR [ebp+0x1c]
10009b39:	0f 8f a7 00 00 00    	jg     0x10009be6
10009b3f:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009b42:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009b45:	57                   	push   edi
10009b46:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009b49:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009b4c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009b4f:	ff d6                	call   esi
10009b51:	e9 90 00 00 00       	jmp    0x10009be6
10009b56:	3b cb                	cmp    ecx,ebx
10009b58:	7e 45                	jle    0x10009b9f
10009b5a:	6a e0                	push   0xffffffe0
10009b5c:	33 d2                	xor    edx,edx
10009b5e:	58                   	pop    eax
10009b5f:	f7 f1                	div    ecx
10009b61:	83 f8 02             	cmp    eax,0x2
10009b64:	72 39                	jb     0x10009b9f
10009b66:	8d 44 09 08          	lea    eax,[ecx+ecx*1+0x8]
10009b6a:	3d 00 04 00 00       	cmp    eax,0x400
10009b6f:	77 16                	ja     0x10009b87
10009b71:	e8 5a 2d 00 00       	call   0x1000c8d0
10009b76:	8b f4                	mov    esi,esp
10009b78:	3b f3                	cmp    esi,ebx
10009b7a:	74 6a                	je     0x10009be6
10009b7c:	c7 06 cc cc 00 00    	mov    DWORD PTR [esi],0xcccc
10009b82:	83 c6 08             	add    esi,0x8
10009b85:	eb 1a                	jmp    0x10009ba1
10009b87:	50                   	push   eax
10009b88:	e8 cb 9e ff ff       	call   0x10003a58
10009b8d:	3b c3                	cmp    eax,ebx
10009b8f:	59                   	pop    ecx
10009b90:	74 09                	je     0x10009b9b
10009b92:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009b98:	83 c0 08             	add    eax,0x8
10009b9b:	8b f0                	mov    esi,eax
10009b9d:	eb 02                	jmp    0x10009ba1
10009b9f:	33 f6                	xor    esi,esi
10009ba1:	3b f3                	cmp    esi,ebx
10009ba3:	74 41                	je     0x10009be6
10009ba5:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009ba8:	56                   	push   esi
10009ba9:	57                   	push   edi
10009baa:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009bad:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009bb0:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009bb3:	ff 15 30 d0 00 10    	call   DWORD PTR ds:0x1000d030
10009bb9:	85 c0                	test   eax,eax
10009bbb:	74 22                	je     0x10009bdf
10009bbd:	39 5d 1c             	cmp    DWORD PTR [ebp+0x1c],ebx
10009bc0:	53                   	push   ebx
10009bc1:	53                   	push   ebx
10009bc2:	75 04                	jne    0x10009bc8
10009bc4:	53                   	push   ebx
10009bc5:	53                   	push   ebx
10009bc6:	eb 06                	jmp    0x10009bce
10009bc8:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009bcb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009bce:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009bd1:	56                   	push   esi
10009bd2:	53                   	push   ebx
10009bd3:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009bd6:	ff 15 c4 d0 00 10    	call   DWORD PTR ds:0x1000d0c4
10009bdc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009bdf:	56                   	push   esi
10009be0:	e8 c0 fd ff ff       	call   0x100099a5
10009be5:	59                   	pop    ecx
10009be6:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009be9:	e8 b7 fd ff ff       	call   0x100099a5
10009bee:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10009bf1:	59                   	pop    ecx
10009bf2:	e9 59 01 00 00       	jmp    0x10009d50
10009bf7:	39 5d 08             	cmp    DWORD PTR [ebp+0x8],ebx
10009bfa:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
10009bfd:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
10009c00:	75 08                	jne    0x10009c0a
10009c02:	8b 06                	mov    eax,DWORD PTR [esi]
10009c04:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
10009c07:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
10009c0a:	39 5d 20             	cmp    DWORD PTR [ebp+0x20],ebx
10009c0d:	75 08                	jne    0x10009c17
10009c0f:	8b 06                	mov    eax,DWORD PTR [esi]
10009c11:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009c14:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
10009c17:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009c1a:	e8 b6 2a 00 00       	call   0x1000c6d5
10009c1f:	83 f8 ff             	cmp    eax,0xffffffff
10009c22:	59                   	pop    ecx
10009c23:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
10009c26:	75 07                	jne    0x10009c2f
10009c28:	33 c0                	xor    eax,eax
10009c2a:	e9 21 01 00 00       	jmp    0x10009d50
10009c2f:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
10009c32:	0f 84 db 00 00 00    	je     0x10009d13
10009c38:	53                   	push   ebx
10009c39:	53                   	push   ebx
10009c3a:	8d 4d 14             	lea    ecx,[ebp+0x14]
10009c3d:	51                   	push   ecx
10009c3e:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009c41:	50                   	push   eax
10009c42:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009c45:	e8 d2 2a 00 00       	call   0x1000c71c
10009c4a:	83 c4 18             	add    esp,0x18
10009c4d:	3b c3                	cmp    eax,ebx
10009c4f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
10009c52:	74 d4                	je     0x10009c28
10009c54:	8b 35 f8 d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0f8
10009c5a:	53                   	push   ebx
10009c5b:	53                   	push   ebx
10009c5c:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009c5f:	50                   	push   eax
10009c60:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009c63:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009c66:	ff d6                	call   esi
10009c68:	3b c3                	cmp    eax,ebx
10009c6a:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009c6d:	75 07                	jne    0x10009c76
10009c6f:	33 f6                	xor    esi,esi
10009c71:	e9 b7 00 00 00       	jmp    0x10009d2d
10009c76:	7e 3d                	jle    0x10009cb5
10009c78:	83 f8 e0             	cmp    eax,0xffffffe0
10009c7b:	77 38                	ja     0x10009cb5
10009c7d:	83 c0 08             	add    eax,0x8
10009c80:	3d 00 04 00 00       	cmp    eax,0x400
10009c85:	77 16                	ja     0x10009c9d
10009c87:	e8 44 2c 00 00       	call   0x1000c8d0
10009c8c:	8b fc                	mov    edi,esp
10009c8e:	3b fb                	cmp    edi,ebx
10009c90:	74 dd                	je     0x10009c6f
10009c92:	c7 07 cc cc 00 00    	mov    DWORD PTR [edi],0xcccc
10009c98:	83 c7 08             	add    edi,0x8
10009c9b:	eb 1a                	jmp    0x10009cb7
10009c9d:	50                   	push   eax
10009c9e:	e8 b5 9d ff ff       	call   0x10003a58
10009ca3:	3b c3                	cmp    eax,ebx
10009ca5:	59                   	pop    ecx
10009ca6:	74 09                	je     0x10009cb1
10009ca8:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009cae:	83 c0 08             	add    eax,0x8
10009cb1:	8b f8                	mov    edi,eax
10009cb3:	eb 02                	jmp    0x10009cb7
10009cb5:	33 ff                	xor    edi,edi
10009cb7:	3b fb                	cmp    edi,ebx
10009cb9:	74 b4                	je     0x10009c6f
10009cbb:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009cbe:	53                   	push   ebx
10009cbf:	57                   	push   edi
10009cc0:	e8 2b e9 ff ff       	call   0x100085f0
10009cc5:	83 c4 0c             	add    esp,0xc
10009cc8:	ff 75 f8             	push   DWORD PTR [ebp-0x8]
10009ccb:	57                   	push   edi
10009ccc:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009ccf:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009cd2:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009cd5:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009cd8:	ff d6                	call   esi
10009cda:	3b c3                	cmp    eax,ebx
10009cdc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009cdf:	75 04                	jne    0x10009ce5
10009ce1:	33 f6                	xor    esi,esi
10009ce3:	eb 25                	jmp    0x10009d0a
10009ce5:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009ce8:	8d 45 f8             	lea    eax,[ebp-0x8]
10009ceb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009cee:	50                   	push   eax
10009cef:	57                   	push   edi
10009cf0:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009cf3:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
10009cf6:	e8 21 2a 00 00       	call   0x1000c71c
10009cfb:	8b f0                	mov    esi,eax
10009cfd:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
10009d00:	83 c4 18             	add    esp,0x18
10009d03:	f7 de                	neg    esi
10009d05:	1b f6                	sbb    esi,esi
10009d07:	23 75 f8             	and    esi,DWORD PTR [ebp-0x8]
10009d0a:	57                   	push   edi
10009d0b:	e8 95 fc ff ff       	call   0x100099a5
10009d10:	59                   	pop    ecx
10009d11:	eb 1a                	jmp    0x10009d2d
10009d13:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009d16:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009d19:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009d1c:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009d1f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009d22:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009d25:	ff 15 f8 d0 00 10    	call   DWORD PTR ds:0x1000d0f8
10009d2b:	8b f0                	mov    esi,eax
10009d2d:	39 5d f4             	cmp    DWORD PTR [ebp-0xc],ebx
10009d30:	74 09                	je     0x10009d3b
10009d32:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
10009d35:	e8 41 9c ff ff       	call   0x1000397b
10009d3a:	59                   	pop    ecx
10009d3b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10009d3e:	3b c3                	cmp    eax,ebx
10009d40:	74 0c                	je     0x10009d4e
10009d42:	39 45 18             	cmp    DWORD PTR [ebp+0x18],eax
10009d45:	74 07                	je     0x10009d4e
10009d47:	50                   	push   eax
10009d48:	e8 2e 9c ff ff       	call   0x1000397b
10009d4d:	59                   	pop    ecx
10009d4e:	8b c6                	mov    eax,esi
10009d50:	8d 65 e0             	lea    esp,[ebp-0x20]
10009d53:	5f                   	pop    edi
10009d54:	5e                   	pop    esi
10009d55:	5b                   	pop    ebx
10009d56:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10009d59:	33 cd                	xor    ecx,ebp
10009d5b:	e8 bb 9d ff ff       	call   0x10003b1b
10009d60:	c9                   	leave  
10009d61:	c3                   	ret    
10009d62:	55                   	push   ebp
10009d63:	8b ec                	mov    ebp,esp
10009d65:	83 ec 10             	sub    esp,0x10
10009d68:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009d6b:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009d6e:	e8 a7 a0 ff ff       	call   0x10003e1a
10009d73:	ff 75 28             	push   DWORD PTR [ebp+0x28]
10009d76:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009d79:	ff 75 24             	push   DWORD PTR [ebp+0x24]
10009d7c:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009d7f:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009d82:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009d85:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009d88:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009d8b:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009d8e:	e8 2d fc ff ff       	call   0x100099c0
10009d93:	83 c4 20             	add    esp,0x20
10009d96:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10009d9a:	74 07                	je     0x10009da3
10009d9c:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10009d9f:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10009da3:	c9                   	leave  
10009da4:	c3                   	ret    
10009da5:	55                   	push   ebp
10009da6:	8b ec                	mov    ebp,esp
10009da8:	51                   	push   ecx
10009da9:	51                   	push   ecx
10009daa:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10009daf:	33 c5                	xor    eax,ebp
10009db1:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10009db4:	a1 e0 5b 01 10       	mov    eax,ds:0x10015be0
10009db9:	53                   	push   ebx
10009dba:	56                   	push   esi
10009dbb:	33 db                	xor    ebx,ebx
10009dbd:	3b c3                	cmp    eax,ebx
10009dbf:	57                   	push   edi
10009dc0:	8b f9                	mov    edi,ecx
10009dc2:	75 3a                	jne    0x10009dfe
10009dc4:	8d 45 f8             	lea    eax,[ebp-0x8]
10009dc7:	50                   	push   eax
10009dc8:	33 f6                	xor    esi,esi
10009dca:	46                   	inc    esi
10009dcb:	56                   	push   esi
10009dcc:	68 b0 d9 00 10       	push   0x1000d9b0
10009dd1:	56                   	push   esi
10009dd2:	ff 15 28 d0 00 10    	call   DWORD PTR ds:0x1000d028
10009dd8:	85 c0                	test   eax,eax
10009dda:	74 08                	je     0x10009de4
10009ddc:	89 35 e0 5b 01 10    	mov    DWORD PTR ds:0x10015be0,esi
10009de2:	eb 34                	jmp    0x10009e18
10009de4:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
10009dea:	83 f8 78             	cmp    eax,0x78
10009ded:	75 0a                	jne    0x10009df9
10009def:	6a 02                	push   0x2
10009df1:	58                   	pop    eax
10009df2:	a3 e0 5b 01 10       	mov    ds:0x10015be0,eax
10009df7:	eb 05                	jmp    0x10009dfe
10009df9:	a1 e0 5b 01 10       	mov    eax,ds:0x10015be0
10009dfe:	83 f8 02             	cmp    eax,0x2
10009e01:	0f 84 cf 00 00 00    	je     0x10009ed6
10009e07:	3b c3                	cmp    eax,ebx
10009e09:	0f 84 c7 00 00 00    	je     0x10009ed6
10009e0f:	83 f8 01             	cmp    eax,0x1
10009e12:	0f 85 e8 00 00 00    	jne    0x10009f00
10009e18:	39 5d 18             	cmp    DWORD PTR [ebp+0x18],ebx
10009e1b:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
10009e1e:	75 08                	jne    0x10009e28
10009e20:	8b 07                	mov    eax,DWORD PTR [edi]
10009e22:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009e25:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
10009e28:	8b 35 fc d0 00 10    	mov    esi,DWORD PTR ds:0x1000d0fc
10009e2e:	33 c0                	xor    eax,eax
10009e30:	39 5d 20             	cmp    DWORD PTR [ebp+0x20],ebx
10009e33:	53                   	push   ebx
10009e34:	53                   	push   ebx
10009e35:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009e38:	0f 95 c0             	setne  al
10009e3b:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009e3e:	8d 04 c5 01 00 00 00 	lea    eax,[eax*8+0x1]
10009e45:	50                   	push   eax
10009e46:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009e49:	ff d6                	call   esi
10009e4b:	8b f8                	mov    edi,eax
10009e4d:	3b fb                	cmp    edi,ebx
10009e4f:	0f 84 ab 00 00 00    	je     0x10009f00
10009e55:	7e 3c                	jle    0x10009e93
10009e57:	81 ff f0 ff ff 7f    	cmp    edi,0x7ffffff0
10009e5d:	77 34                	ja     0x10009e93
10009e5f:	8d 44 3f 08          	lea    eax,[edi+edi*1+0x8]
10009e63:	3d 00 04 00 00       	cmp    eax,0x400
10009e68:	77 13                	ja     0x10009e7d
10009e6a:	e8 61 2a 00 00       	call   0x1000c8d0
10009e6f:	8b c4                	mov    eax,esp
10009e71:	3b c3                	cmp    eax,ebx
10009e73:	74 1c                	je     0x10009e91
10009e75:	c7 00 cc cc 00 00    	mov    DWORD PTR [eax],0xcccc
10009e7b:	eb 11                	jmp    0x10009e8e
10009e7d:	50                   	push   eax
10009e7e:	e8 d5 9b ff ff       	call   0x10003a58
10009e83:	3b c3                	cmp    eax,ebx
10009e85:	59                   	pop    ecx
10009e86:	74 09                	je     0x10009e91
10009e88:	c7 00 dd dd 00 00    	mov    DWORD PTR [eax],0xdddd
10009e8e:	83 c0 08             	add    eax,0x8
10009e91:	8b d8                	mov    ebx,eax
10009e93:	85 db                	test   ebx,ebx
10009e95:	74 69                	je     0x10009f00
10009e97:	8d 04 3f             	lea    eax,[edi+edi*1]
10009e9a:	50                   	push   eax
10009e9b:	6a 00                	push   0x0
10009e9d:	53                   	push   ebx
10009e9e:	e8 4d e7 ff ff       	call   0x100085f0
10009ea3:	83 c4 0c             	add    esp,0xc
10009ea6:	57                   	push   edi
10009ea7:	53                   	push   ebx
10009ea8:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009eab:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009eae:	6a 01                	push   0x1
10009eb0:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009eb3:	ff d6                	call   esi
10009eb5:	85 c0                	test   eax,eax
10009eb7:	74 11                	je     0x10009eca
10009eb9:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009ebc:	50                   	push   eax
10009ebd:	53                   	push   ebx
10009ebe:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009ec1:	ff 15 28 d0 00 10    	call   DWORD PTR ds:0x1000d028
10009ec7:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
10009eca:	53                   	push   ebx
10009ecb:	e8 d5 fa ff ff       	call   0x100099a5
10009ed0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10009ed3:	59                   	pop    ecx
10009ed4:	eb 75                	jmp    0x10009f4b
10009ed6:	33 f6                	xor    esi,esi
10009ed8:	39 5d 1c             	cmp    DWORD PTR [ebp+0x1c],ebx
10009edb:	75 08                	jne    0x10009ee5
10009edd:	8b 07                	mov    eax,DWORD PTR [edi]
10009edf:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
10009ee2:	89 45 1c             	mov    DWORD PTR [ebp+0x1c],eax
10009ee5:	39 5d 18             	cmp    DWORD PTR [ebp+0x18],ebx
10009ee8:	75 08                	jne    0x10009ef2
10009eea:	8b 07                	mov    eax,DWORD PTR [edi]
10009eec:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
10009eef:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
10009ef2:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009ef5:	e8 db 27 00 00       	call   0x1000c6d5
10009efa:	83 f8 ff             	cmp    eax,0xffffffff
10009efd:	59                   	pop    ecx
10009efe:	75 04                	jne    0x10009f04
10009f00:	33 c0                	xor    eax,eax
10009f02:	eb 47                	jmp    0x10009f4b
10009f04:	3b 45 18             	cmp    eax,DWORD PTR [ebp+0x18]
10009f07:	74 1e                	je     0x10009f27
10009f09:	53                   	push   ebx
10009f0a:	53                   	push   ebx
10009f0b:	8d 4d 10             	lea    ecx,[ebp+0x10]
10009f0e:	51                   	push   ecx
10009f0f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009f12:	50                   	push   eax
10009f13:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009f16:	e8 01 28 00 00       	call   0x1000c71c
10009f1b:	8b f0                	mov    esi,eax
10009f1d:	83 c4 18             	add    esp,0x18
10009f20:	3b f3                	cmp    esi,ebx
10009f22:	74 dc                	je     0x10009f00
10009f24:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
10009f27:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009f2a:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009f2d:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009f30:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009f33:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009f36:	ff 15 2c d0 00 10    	call   DWORD PTR ds:0x1000d02c
10009f3c:	3b f3                	cmp    esi,ebx
10009f3e:	8b f8                	mov    edi,eax
10009f40:	74 07                	je     0x10009f49
10009f42:	56                   	push   esi
10009f43:	e8 33 9a ff ff       	call   0x1000397b
10009f48:	59                   	pop    ecx
10009f49:	8b c7                	mov    eax,edi
10009f4b:	8d 65 ec             	lea    esp,[ebp-0x14]
10009f4e:	5f                   	pop    edi
10009f4f:	5e                   	pop    esi
10009f50:	5b                   	pop    ebx
10009f51:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10009f54:	33 cd                	xor    ecx,ebp
10009f56:	e8 c0 9b ff ff       	call   0x10003b1b
10009f5b:	c9                   	leave  
10009f5c:	c3                   	ret    
10009f5d:	55                   	push   ebp
10009f5e:	8b ec                	mov    ebp,esp
10009f60:	83 ec 10             	sub    esp,0x10
10009f63:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10009f66:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009f69:	e8 ac 9e ff ff       	call   0x10003e1a
10009f6e:	ff 75 24             	push   DWORD PTR [ebp+0x24]
10009f71:	8d 4d f0             	lea    ecx,[ebp-0x10]
10009f74:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10009f77:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10009f7a:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10009f7d:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10009f80:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10009f83:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10009f86:	e8 1a fe ff ff       	call   0x10009da5
10009f8b:	83 c4 1c             	add    esp,0x1c
10009f8e:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10009f92:	74 07                	je     0x10009f9b
10009f94:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10009f97:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10009f9b:	c9                   	leave  
10009f9c:	c3                   	ret    
10009f9d:	56                   	push   esi
10009f9e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
10009fa2:	85 f6                	test   esi,esi
10009fa4:	0f 84 81 01 00 00    	je     0x1000a12b
10009faa:	ff 76 04             	push   DWORD PTR [esi+0x4]
10009fad:	e8 c9 99 ff ff       	call   0x1000397b
10009fb2:	ff 76 08             	push   DWORD PTR [esi+0x8]
10009fb5:	e8 c1 99 ff ff       	call   0x1000397b
10009fba:	ff 76 0c             	push   DWORD PTR [esi+0xc]
10009fbd:	e8 b9 99 ff ff       	call   0x1000397b
10009fc2:	ff 76 10             	push   DWORD PTR [esi+0x10]
10009fc5:	e8 b1 99 ff ff       	call   0x1000397b
10009fca:	ff 76 14             	push   DWORD PTR [esi+0x14]
10009fcd:	e8 a9 99 ff ff       	call   0x1000397b
10009fd2:	ff 76 18             	push   DWORD PTR [esi+0x18]
10009fd5:	e8 a1 99 ff ff       	call   0x1000397b
10009fda:	ff 36                	push   DWORD PTR [esi]
10009fdc:	e8 9a 99 ff ff       	call   0x1000397b
10009fe1:	ff 76 20             	push   DWORD PTR [esi+0x20]
10009fe4:	e8 92 99 ff ff       	call   0x1000397b
10009fe9:	ff 76 24             	push   DWORD PTR [esi+0x24]
10009fec:	e8 8a 99 ff ff       	call   0x1000397b
10009ff1:	ff 76 28             	push   DWORD PTR [esi+0x28]
10009ff4:	e8 82 99 ff ff       	call   0x1000397b
10009ff9:	ff 76 2c             	push   DWORD PTR [esi+0x2c]
10009ffc:	e8 7a 99 ff ff       	call   0x1000397b
1000a001:	ff 76 30             	push   DWORD PTR [esi+0x30]
1000a004:	e8 72 99 ff ff       	call   0x1000397b
1000a009:	ff 76 34             	push   DWORD PTR [esi+0x34]
1000a00c:	e8 6a 99 ff ff       	call   0x1000397b
1000a011:	ff 76 1c             	push   DWORD PTR [esi+0x1c]
1000a014:	e8 62 99 ff ff       	call   0x1000397b
1000a019:	ff 76 38             	push   DWORD PTR [esi+0x38]
1000a01c:	e8 5a 99 ff ff       	call   0x1000397b
1000a021:	ff 76 3c             	push   DWORD PTR [esi+0x3c]
1000a024:	e8 52 99 ff ff       	call   0x1000397b
1000a029:	83 c4 40             	add    esp,0x40
1000a02c:	ff 76 40             	push   DWORD PTR [esi+0x40]
1000a02f:	e8 47 99 ff ff       	call   0x1000397b
1000a034:	ff 76 44             	push   DWORD PTR [esi+0x44]
1000a037:	e8 3f 99 ff ff       	call   0x1000397b
1000a03c:	ff 76 48             	push   DWORD PTR [esi+0x48]
1000a03f:	e8 37 99 ff ff       	call   0x1000397b
1000a044:	ff 76 4c             	push   DWORD PTR [esi+0x4c]
1000a047:	e8 2f 99 ff ff       	call   0x1000397b
1000a04c:	ff 76 50             	push   DWORD PTR [esi+0x50]
1000a04f:	e8 27 99 ff ff       	call   0x1000397b
1000a054:	ff 76 54             	push   DWORD PTR [esi+0x54]
1000a057:	e8 1f 99 ff ff       	call   0x1000397b
1000a05c:	ff 76 58             	push   DWORD PTR [esi+0x58]
1000a05f:	e8 17 99 ff ff       	call   0x1000397b
1000a064:	ff 76 5c             	push   DWORD PTR [esi+0x5c]
1000a067:	e8 0f 99 ff ff       	call   0x1000397b
1000a06c:	ff 76 60             	push   DWORD PTR [esi+0x60]
1000a06f:	e8 07 99 ff ff       	call   0x1000397b
1000a074:	ff 76 64             	push   DWORD PTR [esi+0x64]
1000a077:	e8 ff 98 ff ff       	call   0x1000397b
1000a07c:	ff 76 68             	push   DWORD PTR [esi+0x68]
1000a07f:	e8 f7 98 ff ff       	call   0x1000397b
1000a084:	ff 76 6c             	push   DWORD PTR [esi+0x6c]
1000a087:	e8 ef 98 ff ff       	call   0x1000397b
1000a08c:	ff 76 70             	push   DWORD PTR [esi+0x70]
1000a08f:	e8 e7 98 ff ff       	call   0x1000397b
1000a094:	ff 76 74             	push   DWORD PTR [esi+0x74]
1000a097:	e8 df 98 ff ff       	call   0x1000397b
1000a09c:	ff 76 78             	push   DWORD PTR [esi+0x78]
1000a09f:	e8 d7 98 ff ff       	call   0x1000397b
1000a0a4:	ff 76 7c             	push   DWORD PTR [esi+0x7c]
1000a0a7:	e8 cf 98 ff ff       	call   0x1000397b
1000a0ac:	83 c4 40             	add    esp,0x40
1000a0af:	ff b6 80 00 00 00    	push   DWORD PTR [esi+0x80]
1000a0b5:	e8 c1 98 ff ff       	call   0x1000397b
1000a0ba:	ff b6 84 00 00 00    	push   DWORD PTR [esi+0x84]
1000a0c0:	e8 b6 98 ff ff       	call   0x1000397b
1000a0c5:	ff b6 88 00 00 00    	push   DWORD PTR [esi+0x88]
1000a0cb:	e8 ab 98 ff ff       	call   0x1000397b
1000a0d0:	ff b6 8c 00 00 00    	push   DWORD PTR [esi+0x8c]
1000a0d6:	e8 a0 98 ff ff       	call   0x1000397b
1000a0db:	ff b6 90 00 00 00    	push   DWORD PTR [esi+0x90]
1000a0e1:	e8 95 98 ff ff       	call   0x1000397b
1000a0e6:	ff b6 94 00 00 00    	push   DWORD PTR [esi+0x94]
1000a0ec:	e8 8a 98 ff ff       	call   0x1000397b
1000a0f1:	ff b6 98 00 00 00    	push   DWORD PTR [esi+0x98]
1000a0f7:	e8 7f 98 ff ff       	call   0x1000397b
1000a0fc:	ff b6 9c 00 00 00    	push   DWORD PTR [esi+0x9c]
1000a102:	e8 74 98 ff ff       	call   0x1000397b
1000a107:	ff b6 a0 00 00 00    	push   DWORD PTR [esi+0xa0]
1000a10d:	e8 69 98 ff ff       	call   0x1000397b
1000a112:	ff b6 a4 00 00 00    	push   DWORD PTR [esi+0xa4]
1000a118:	e8 5e 98 ff ff       	call   0x1000397b
1000a11d:	ff b6 a8 00 00 00    	push   DWORD PTR [esi+0xa8]
1000a123:	e8 53 98 ff ff       	call   0x1000397b
1000a128:	83 c4 2c             	add    esp,0x2c
1000a12b:	5e                   	pop    esi
1000a12c:	c3                   	ret    
1000a12d:	56                   	push   esi
1000a12e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
1000a132:	85 f6                	test   esi,esi
1000a134:	74 35                	je     0x1000a16b
1000a136:	8b 06                	mov    eax,DWORD PTR [esi]
1000a138:	3b 05 58 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b58
1000a13e:	74 07                	je     0x1000a147
1000a140:	50                   	push   eax
1000a141:	e8 35 98 ff ff       	call   0x1000397b
1000a146:	59                   	pop    ecx
1000a147:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
1000a14a:	3b 05 5c 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b5c
1000a150:	74 07                	je     0x1000a159
1000a152:	50                   	push   eax
1000a153:	e8 23 98 ff ff       	call   0x1000397b
1000a158:	59                   	pop    ecx
1000a159:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
1000a15c:	3b 35 60 0b 01 10    	cmp    esi,DWORD PTR ds:0x10010b60
1000a162:	74 07                	je     0x1000a16b
1000a164:	56                   	push   esi
1000a165:	e8 11 98 ff ff       	call   0x1000397b
1000a16a:	59                   	pop    ecx
1000a16b:	5e                   	pop    esi
1000a16c:	c3                   	ret    
1000a16d:	56                   	push   esi
1000a16e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
1000a172:	85 f6                	test   esi,esi
1000a174:	74 7e                	je     0x1000a1f4
1000a176:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
1000a179:	3b 05 64 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b64
1000a17f:	74 07                	je     0x1000a188
1000a181:	50                   	push   eax
1000a182:	e8 f4 97 ff ff       	call   0x1000397b
1000a187:	59                   	pop    ecx
1000a188:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
1000a18b:	3b 05 68 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b68
1000a191:	74 07                	je     0x1000a19a
1000a193:	50                   	push   eax
1000a194:	e8 e2 97 ff ff       	call   0x1000397b
1000a199:	59                   	pop    ecx
1000a19a:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
1000a19d:	3b 05 6c 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b6c
1000a1a3:	74 07                	je     0x1000a1ac
1000a1a5:	50                   	push   eax
1000a1a6:	e8 d0 97 ff ff       	call   0x1000397b
1000a1ab:	59                   	pop    ecx
1000a1ac:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
1000a1af:	3b 05 70 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b70
1000a1b5:	74 07                	je     0x1000a1be
1000a1b7:	50                   	push   eax
1000a1b8:	e8 be 97 ff ff       	call   0x1000397b
1000a1bd:	59                   	pop    ecx
1000a1be:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
1000a1c1:	3b 05 74 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b74
1000a1c7:	74 07                	je     0x1000a1d0
1000a1c9:	50                   	push   eax
1000a1ca:	e8 ac 97 ff ff       	call   0x1000397b
1000a1cf:	59                   	pop    ecx
1000a1d0:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
1000a1d3:	3b 05 78 0b 01 10    	cmp    eax,DWORD PTR ds:0x10010b78
1000a1d9:	74 07                	je     0x1000a1e2
1000a1db:	50                   	push   eax
1000a1dc:	e8 9a 97 ff ff       	call   0x1000397b
1000a1e1:	59                   	pop    ecx
1000a1e2:	8b 76 24             	mov    esi,DWORD PTR [esi+0x24]
1000a1e5:	3b 35 7c 0b 01 10    	cmp    esi,DWORD PTR ds:0x10010b7c
1000a1eb:	74 07                	je     0x1000a1f4
1000a1ed:	56                   	push   esi
1000a1ee:	e8 88 97 ff ff       	call   0x1000397b
1000a1f3:	59                   	pop    ecx
1000a1f4:	5e                   	pop    esi
1000a1f5:	c3                   	ret    
1000a1f6:	cc                   	int3   
1000a1f7:	cc                   	int3   
1000a1f8:	cc                   	int3   
1000a1f9:	cc                   	int3   
1000a1fa:	cc                   	int3   
1000a1fb:	cc                   	int3   
1000a1fc:	cc                   	int3   
1000a1fd:	cc                   	int3   
1000a1fe:	cc                   	int3   
1000a1ff:	cc                   	int3   
