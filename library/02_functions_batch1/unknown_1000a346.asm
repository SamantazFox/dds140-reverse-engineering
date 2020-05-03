1000a346:	55                   	push   ebp
1000a347:	8b ec                	mov    ebp,esp
1000a349:	83 ec 10             	sub    esp,0x10
1000a34c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000a34f:	8d 4d f0             	lea    ecx,[ebp-0x10]
1000a352:	e8 c3 9a ff ff       	call   0x10003e1a
1000a357:	0f b6 45 08          	movzx  eax,BYTE PTR [ebp+0x8]
1000a35b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
1000a35e:	8b 89 c8 00 00 00    	mov    ecx,DWORD PTR [ecx+0xc8]
1000a364:	0f b7 04 41          	movzx  eax,WORD PTR [ecx+eax*2]
1000a368:	25 00 80 00 00       	and    eax,0x8000
1000a36d:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000a371:	74 07                	je     0x1000a37a
1000a373:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
1000a376:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
1000a37a:	c9                   	leave  
1000a37b:	c3                   	ret    
