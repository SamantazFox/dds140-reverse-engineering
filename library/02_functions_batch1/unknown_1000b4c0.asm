1000b4c0:	55                   	push   ebp
1000b4c1:	8b ec                	mov    ebp,esp
1000b4c3:	83 ec 08             	sub    esp,0x8
1000b4c6:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
1000b4c9:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
1000b4cc:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
1000b4cf:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
1000b4d2:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
1000b4d5:	c1 e9 07             	shr    ecx,0x7
1000b4d8:	eb 06                	jmp    0x1000b4e0
1000b4da:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
1000b4e0:	66 0f 6f 06          	movdqa xmm0,XMMWORD PTR [esi]
1000b4e4:	66 0f 6f 4e 10       	movdqa xmm1,XMMWORD PTR [esi+0x10]
1000b4e9:	66 0f 6f 56 20       	movdqa xmm2,XMMWORD PTR [esi+0x20]
1000b4ee:	66 0f 6f 5e 30       	movdqa xmm3,XMMWORD PTR [esi+0x30]
1000b4f3:	66 0f 7f 07          	movdqa XMMWORD PTR [edi],xmm0
1000b4f7:	66 0f 7f 4f 10       	movdqa XMMWORD PTR [edi+0x10],xmm1
1000b4fc:	66 0f 7f 57 20       	movdqa XMMWORD PTR [edi+0x20],xmm2
1000b501:	66 0f 7f 5f 30       	movdqa XMMWORD PTR [edi+0x30],xmm3
1000b506:	66 0f 6f 66 40       	movdqa xmm4,XMMWORD PTR [esi+0x40]
1000b50b:	66 0f 6f 6e 50       	movdqa xmm5,XMMWORD PTR [esi+0x50]
1000b510:	66 0f 6f 76 60       	movdqa xmm6,XMMWORD PTR [esi+0x60]
1000b515:	66 0f 6f 7e 70       	movdqa xmm7,XMMWORD PTR [esi+0x70]
1000b51a:	66 0f 7f 67 40       	movdqa XMMWORD PTR [edi+0x40],xmm4
1000b51f:	66 0f 7f 6f 50       	movdqa XMMWORD PTR [edi+0x50],xmm5
1000b524:	66 0f 7f 77 60       	movdqa XMMWORD PTR [edi+0x60],xmm6
1000b529:	66 0f 7f 7f 70       	movdqa XMMWORD PTR [edi+0x70],xmm7
1000b52e:	8d b6 80 00 00 00    	lea    esi,[esi+0x80]
1000b534:	8d bf 80 00 00 00    	lea    edi,[edi+0x80]
1000b53a:	49                   	dec    ecx
1000b53b:	75 a3                	jne    0x1000b4e0
1000b53d:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
1000b540:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
1000b543:	8b e5                	mov    esp,ebp
1000b545:	5d                   	pop    ebp
1000b546:	c3                   	ret    
