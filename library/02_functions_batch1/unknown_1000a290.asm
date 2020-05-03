1000a290:	55                   	push   ebp
1000a291:	8b ec                	mov    ebp,esp
1000a293:	83 ec 18             	sub    esp,0x18
1000a296:	53                   	push   ebx
1000a297:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000a29a:	8d 4d e8             	lea    ecx,[ebp-0x18]
1000a29d:	e8 78 9b ff ff       	call   0x10003e1a
1000a2a2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
1000a2a5:	8d 43 01             	lea    eax,[ebx+0x1]
1000a2a8:	3d 00 01 00 00       	cmp    eax,0x100
1000a2ad:	77 0f                	ja     0x1000a2be
1000a2af:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000a2b2:	8b 80 c8 00 00 00    	mov    eax,DWORD PTR [eax+0xc8]
1000a2b8:	0f b7 04 58          	movzx  eax,WORD PTR [eax+ebx*2]
1000a2bc:	eb 75                	jmp    0x1000a333
1000a2be:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
1000a2c1:	c1 7d 08 08          	sar    DWORD PTR [ebp+0x8],0x8
1000a2c5:	8d 45 e8             	lea    eax,[ebp-0x18]
1000a2c8:	50                   	push   eax
1000a2c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000a2cc:	25 ff 00 00 00       	and    eax,0xff
1000a2d1:	50                   	push   eax
1000a2d2:	e8 6f 00 00 00       	call   0x1000a346
1000a2d7:	85 c0                	test   eax,eax
1000a2d9:	59                   	pop    ecx
1000a2da:	59                   	pop    ecx
1000a2db:	74 12                	je     0x1000a2ef
1000a2dd:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
1000a2e0:	6a 02                	push   0x2
1000a2e2:	88 45 f8             	mov    BYTE PTR [ebp-0x8],al
1000a2e5:	88 5d f9             	mov    BYTE PTR [ebp-0x7],bl
1000a2e8:	c6 45 fa 00          	mov    BYTE PTR [ebp-0x6],0x0
1000a2ec:	59                   	pop    ecx
1000a2ed:	eb 0a                	jmp    0x1000a2f9
1000a2ef:	33 c9                	xor    ecx,ecx
1000a2f1:	88 5d f8             	mov    BYTE PTR [ebp-0x8],bl
1000a2f4:	c6 45 f9 00          	mov    BYTE PTR [ebp-0x7],0x0
1000a2f8:	41                   	inc    ecx
1000a2f9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
1000a2fc:	6a 01                	push   0x1
1000a2fe:	ff 70 14             	push   DWORD PTR [eax+0x14]
1000a301:	ff 70 04             	push   DWORD PTR [eax+0x4]
1000a304:	8d 45 fc             	lea    eax,[ebp-0x4]
1000a307:	50                   	push   eax
1000a308:	51                   	push   ecx
1000a309:	8d 45 f8             	lea    eax,[ebp-0x8]
1000a30c:	50                   	push   eax
1000a30d:	8d 45 e8             	lea    eax,[ebp-0x18]
1000a310:	6a 01                	push   0x1
1000a312:	50                   	push   eax
1000a313:	e8 45 fc ff ff       	call   0x10009f5d
1000a318:	83 c4 20             	add    esp,0x20
1000a31b:	85 c0                	test   eax,eax
1000a31d:	75 10                	jne    0x1000a32f
1000a31f:	38 45 f4             	cmp    BYTE PTR [ebp-0xc],al
1000a322:	74 07                	je     0x1000a32b
1000a324:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
1000a327:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
1000a32b:	33 c0                	xor    eax,eax
1000a32d:	eb 14                	jmp    0x1000a343
1000a32f:	0f b7 45 fc          	movzx  eax,WORD PTR [ebp-0x4]
1000a333:	23 45 0c             	and    eax,DWORD PTR [ebp+0xc]
1000a336:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
1000a33a:	74 07                	je     0x1000a343
1000a33c:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000a33f:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
1000a343:	5b                   	pop    ebx
1000a344:	c9                   	leave  
1000a345:	c3                   	ret    
