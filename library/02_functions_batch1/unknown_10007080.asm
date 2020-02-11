10007080:	55                   	push   ebp
10007081:	8b ec                	mov    ebp,esp
10007083:	57                   	push   edi
10007084:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10007087:	33 c0                	xor    eax,eax
10007089:	83 c9 ff             	or     ecx,0xffffffff
1000708c:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
1000708e:	83 c1 01             	add    ecx,0x1
10007091:	f7 d9                	neg    ecx
10007093:	83 ef 01             	sub    edi,0x1
10007096:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
10007099:	fd                   	std    
1000709a:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
1000709c:	83 c7 01             	add    edi,0x1
1000709f:	38 07                	cmp    BYTE PTR [edi],al
100070a1:	74 04                	je     0x100070a7
100070a3:	33 c0                	xor    eax,eax
100070a5:	eb 02                	jmp    0x100070a9
100070a7:	8b c7                	mov    eax,edi
100070a9:	fc                   	cld    
100070aa:	5f                   	pop    edi
100070ab:	c9                   	leave  
100070ac:	c3                   	ret    
100070ad:	2d a4 03 00 00       	sub    eax,0x3a4
100070b2:	74 22                	je     0x100070d6
100070b4:	83 e8 04             	sub    eax,0x4
100070b7:	74 17                	je     0x100070d0
100070b9:	83 e8 0d             	sub    eax,0xd
100070bc:	74 0c                	je     0x100070ca
100070be:	48                   	dec    eax
100070bf:	74 03                	je     0x100070c4
100070c1:	33 c0                	xor    eax,eax
100070c3:	c3                   	ret    
100070c4:	b8 04 04 00 00       	mov    eax,0x404
100070c9:	c3                   	ret    
100070ca:	b8 12 04 00 00       	mov    eax,0x412
100070cf:	c3                   	ret    
100070d0:	b8 04 08 00 00       	mov    eax,0x804
100070d5:	c3                   	ret    
100070d6:	b8 11 04 00 00       	mov    eax,0x411
100070db:	c3                   	ret    
100070dc:	53                   	push   ebx
100070dd:	55                   	push   ebp
100070de:	56                   	push   esi
100070df:	57                   	push   edi
100070e0:	bd 01 01 00 00       	mov    ebp,0x101
100070e5:	8b f0                	mov    esi,eax
100070e7:	55                   	push   ebp
100070e8:	33 ff                	xor    edi,edi
100070ea:	8d 5e 1c             	lea    ebx,[esi+0x1c]
100070ed:	57                   	push   edi
100070ee:	53                   	push   ebx
100070ef:	e8 fc 14 00 00       	call   0x100085f0
100070f4:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
100070f7:	89 7e 08             	mov    DWORD PTR [esi+0x8],edi
100070fa:	89 7e 0c             	mov    DWORD PTR [esi+0xc],edi
100070fd:	33 c0                	xor    eax,eax
100070ff:	8d 7e 10             	lea    edi,[esi+0x10]
10007102:	ab                   	stos   DWORD PTR es:[edi],eax
10007103:	ab                   	stos   DWORD PTR es:[edi],eax
10007104:	ab                   	stos   DWORD PTR es:[edi],eax
10007105:	b8 70 04 01 10       	mov    eax,0x10010470
1000710a:	83 c4 0c             	add    esp,0xc
1000710d:	2b c6                	sub    eax,esi
1000710f:	8a 0c 18             	mov    cl,BYTE PTR [eax+ebx*1]
10007112:	88 0b                	mov    BYTE PTR [ebx],cl
10007114:	43                   	inc    ebx
10007115:	4d                   	dec    ebp
10007116:	75 f7                	jne    0x1000710f
10007118:	8d 8e 1d 01 00 00    	lea    ecx,[esi+0x11d]
1000711e:	be 00 01 00 00       	mov    esi,0x100
10007123:	8a 14 01             	mov    dl,BYTE PTR [ecx+eax*1]
10007126:	88 11                	mov    BYTE PTR [ecx],dl
10007128:	41                   	inc    ecx
10007129:	4e                   	dec    esi
1000712a:	75 f7                	jne    0x10007123
1000712c:	5f                   	pop    edi
1000712d:	5e                   	pop    esi
1000712e:	5d                   	pop    ebp
1000712f:	5b                   	pop    ebx
10007130:	c3                   	ret    
10007131:	55                   	push   ebp
10007132:	8d ac 24 64 fb ff ff 	lea    ebp,[esp-0x49c]
10007139:	81 ec 1c 05 00 00    	sub    esp,0x51c
1000713f:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007144:	33 c5                	xor    eax,ebp
10007146:	89 85 98 04 00 00    	mov    DWORD PTR [ebp+0x498],eax
1000714c:	53                   	push   ebx
1000714d:	57                   	push   edi
1000714e:	8d 45 84             	lea    eax,[ebp-0x7c]
10007151:	50                   	push   eax
10007152:	ff 76 04             	push   DWORD PTR [esi+0x4]
10007155:	ff 15 dc d0 00 10    	call   DWORD PTR ds:0x1000d0dc
1000715b:	85 c0                	test   eax,eax
1000715d:	bf 00 01 00 00       	mov    edi,0x100
10007162:	0f 84 ef 00 00 00    	je     0x10007257
10007168:	33 c0                	xor    eax,eax
1000716a:	88 84 05 98 03 00 00 	mov    BYTE PTR [ebp+eax*1+0x398],al
10007171:	40                   	inc    eax
10007172:	3b c7                	cmp    eax,edi
10007174:	72 f4                	jb     0x1000716a
10007176:	8a 45 8a             	mov    al,BYTE PTR [ebp-0x76]
10007179:	84 c0                	test   al,al
1000717b:	c6 85 98 03 00 00 20 	mov    BYTE PTR [ebp+0x398],0x20
10007182:	74 2b                	je     0x100071af
10007184:	8d 5d 8b             	lea    ebx,[ebp-0x75]
10007187:	0f b6 c8             	movzx  ecx,al
1000718a:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
1000718d:	3b c8                	cmp    ecx,eax
1000718f:	77 16                	ja     0x100071a7
10007191:	2b c1                	sub    eax,ecx
10007193:	40                   	inc    eax
10007194:	50                   	push   eax
10007195:	8d 94 0d 98 03 00 00 	lea    edx,[ebp+ecx*1+0x398]
1000719c:	6a 20                	push   0x20
1000719e:	52                   	push   edx
1000719f:	e8 4c 14 00 00       	call   0x100085f0
100071a4:	83 c4 0c             	add    esp,0xc
100071a7:	43                   	inc    ebx
100071a8:	8a 03                	mov    al,BYTE PTR [ebx]
100071aa:	43                   	inc    ebx
100071ab:	84 c0                	test   al,al
100071ad:	75 d8                	jne    0x10007187
100071af:	6a 00                	push   0x0
100071b1:	ff 76 0c             	push   DWORD PTR [esi+0xc]
100071b4:	8d 45 98             	lea    eax,[ebp-0x68]
100071b7:	ff 76 04             	push   DWORD PTR [esi+0x4]
100071ba:	50                   	push   eax
100071bb:	57                   	push   edi
100071bc:	8d 85 98 03 00 00    	lea    eax,[ebp+0x398]
100071c2:	50                   	push   eax
100071c3:	6a 01                	push   0x1
100071c5:	6a 00                	push   0x0
100071c7:	e8 91 2d 00 00       	call   0x10009f5d
100071cc:	33 db                	xor    ebx,ebx
100071ce:	53                   	push   ebx
100071cf:	ff 76 04             	push   DWORD PTR [esi+0x4]
100071d2:	8d 85 98 02 00 00    	lea    eax,[ebp+0x298]
100071d8:	57                   	push   edi
100071d9:	50                   	push   eax
100071da:	57                   	push   edi
100071db:	8d 85 98 03 00 00    	lea    eax,[ebp+0x398]
100071e1:	50                   	push   eax
100071e2:	57                   	push   edi
100071e3:	ff 76 0c             	push   DWORD PTR [esi+0xc]
100071e6:	53                   	push   ebx
100071e7:	e8 76 2b 00 00       	call   0x10009d62
100071ec:	83 c4 44             	add    esp,0x44
100071ef:	53                   	push   ebx
100071f0:	ff 76 04             	push   DWORD PTR [esi+0x4]
100071f3:	8d 85 98 01 00 00    	lea    eax,[ebp+0x198]
100071f9:	57                   	push   edi
100071fa:	50                   	push   eax
100071fb:	57                   	push   edi
100071fc:	8d 85 98 03 00 00    	lea    eax,[ebp+0x398]
10007202:	50                   	push   eax
10007203:	68 00 02 00 00       	push   0x200
10007208:	ff 76 0c             	push   DWORD PTR [esi+0xc]
1000720b:	53                   	push   ebx
1000720c:	e8 51 2b 00 00       	call   0x10009d62
10007211:	83 c4 24             	add    esp,0x24
10007214:	33 c0                	xor    eax,eax
10007216:	0f b7 4c 45 98       	movzx  ecx,WORD PTR [ebp+eax*2-0x68]
1000721b:	f6 c1 01             	test   cl,0x1
1000721e:	74 0e                	je     0x1000722e
10007220:	80 4c 06 1d 10       	or     BYTE PTR [esi+eax*1+0x1d],0x10
10007225:	8a 8c 05 98 02 00 00 	mov    cl,BYTE PTR [ebp+eax*1+0x298]
1000722c:	eb 11                	jmp    0x1000723f
1000722e:	f6 c1 02             	test   cl,0x2
10007231:	74 15                	je     0x10007248
10007233:	80 4c 06 1d 20       	or     BYTE PTR [esi+eax*1+0x1d],0x20
10007238:	8a 8c 05 98 01 00 00 	mov    cl,BYTE PTR [ebp+eax*1+0x198]
1000723f:	88 8c 06 1d 01 00 00 	mov    BYTE PTR [esi+eax*1+0x11d],cl
10007246:	eb 08                	jmp    0x10007250
10007248:	c6 84 06 1d 01 00 00 	mov    BYTE PTR [esi+eax*1+0x11d],0x0
1000724f:	00 
10007250:	40                   	inc    eax
10007251:	3b c7                	cmp    eax,edi
10007253:	72 c1                	jb     0x10007216
10007255:	eb 4d                	jmp    0x100072a4
10007257:	8d 86 1d 01 00 00    	lea    eax,[esi+0x11d]
1000725d:	c7 45 80 9f ff ff ff 	mov    DWORD PTR [ebp-0x80],0xffffff9f
10007264:	33 c9                	xor    ecx,ecx
10007266:	29 45 80             	sub    DWORD PTR [ebp-0x80],eax
10007269:	8b 55 80             	mov    edx,DWORD PTR [ebp-0x80]
1000726c:	8d 84 0e 1d 01 00 00 	lea    eax,[esi+ecx*1+0x11d]
10007273:	03 d0                	add    edx,eax
10007275:	8d 5a 20             	lea    ebx,[edx+0x20]
10007278:	83 fb 19             	cmp    ebx,0x19
1000727b:	77 0c                	ja     0x10007289
1000727d:	80 4c 0e 1d 10       	or     BYTE PTR [esi+ecx*1+0x1d],0x10
10007282:	8a d1                	mov    dl,cl
10007284:	80 c2 20             	add    dl,0x20
10007287:	eb 0f                	jmp    0x10007298
10007289:	83 fa 19             	cmp    edx,0x19
1000728c:	77 0e                	ja     0x1000729c
1000728e:	80 4c 0e 1d 20       	or     BYTE PTR [esi+ecx*1+0x1d],0x20
10007293:	8a d1                	mov    dl,cl
10007295:	80 ea 20             	sub    dl,0x20
10007298:	88 10                	mov    BYTE PTR [eax],dl
1000729a:	eb 03                	jmp    0x1000729f
1000729c:	c6 00 00             	mov    BYTE PTR [eax],0x0
1000729f:	41                   	inc    ecx
100072a0:	3b cf                	cmp    ecx,edi
100072a2:	72 c5                	jb     0x10007269
100072a4:	8b 8d 98 04 00 00    	mov    ecx,DWORD PTR [ebp+0x498]
100072aa:	5f                   	pop    edi
100072ab:	33 cd                	xor    ecx,ebp
100072ad:	5b                   	pop    ebx
100072ae:	e8 68 c8 ff ff       	call   0x10003b1b
100072b3:	81 c5 9c 04 00 00    	add    ebp,0x49c
100072b9:	c9                   	leave  
100072ba:	c3                   	ret    
100072bb:	6a 0c                	push   0xc
100072bd:	68 c8 e4 00 10       	push   0x1000e4c8
100072c2:	e8 61 e5 ff ff       	call   0x10005828
100072c7:	e8 5e f0 ff ff       	call   0x1000632a
100072cc:	8b f8                	mov    edi,eax
100072ce:	a1 94 09 01 10       	mov    eax,ds:0x10010994
100072d3:	85 47 70             	test   DWORD PTR [edi+0x70],eax
100072d6:	74 1d                	je     0x100072f5
100072d8:	83 7f 6c 00          	cmp    DWORD PTR [edi+0x6c],0x0
100072dc:	74 17                	je     0x100072f5
100072de:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
100072e1:	85 f6                	test   esi,esi
100072e3:	75 08                	jne    0x100072ed
100072e5:	6a 20                	push   0x20
100072e7:	e8 3a e7 ff ff       	call   0x10005a26
100072ec:	59                   	pop    ecx
100072ed:	8b c6                	mov    eax,esi
100072ef:	e8 79 e5 ff ff       	call   0x1000586d
100072f4:	c3                   	ret    
100072f5:	6a 0d                	push   0xd
100072f7:	e8 fc d9 ff ff       	call   0x10004cf8
100072fc:	59                   	pop    ecx
100072fd:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10007301:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
10007304:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
10007307:	3b 35 98 08 01 10    	cmp    esi,DWORD PTR ds:0x10010898
1000730d:	74 36                	je     0x10007345
1000730f:	85 f6                	test   esi,esi
10007311:	74 1a                	je     0x1000732d
10007313:	56                   	push   esi
10007314:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
1000731a:	85 c0                	test   eax,eax
1000731c:	75 0f                	jne    0x1000732d
1000731e:	81 fe 70 04 01 10    	cmp    esi,0x10010470
10007324:	74 07                	je     0x1000732d
10007326:	56                   	push   esi
10007327:	e8 4f c6 ff ff       	call   0x1000397b
1000732c:	59                   	pop    ecx
1000732d:	a1 98 08 01 10       	mov    eax,ds:0x10010898
10007332:	89 47 68             	mov    DWORD PTR [edi+0x68],eax
10007335:	8b 35 98 08 01 10    	mov    esi,DWORD PTR ds:0x10010898
1000733b:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
1000733e:	56                   	push   esi
1000733f:	ff 15 9c d0 00 10    	call   DWORD PTR ds:0x1000d09c
10007345:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000734c:	e8 05 00 00 00       	call   0x10007356
10007351:	eb 8e                	jmp    0x100072e1
10007353:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
10007356:	6a 0d                	push   0xd
10007358:	e8 c3 d8 ff ff       	call   0x10004c20
1000735d:	59                   	pop    ecx
1000735e:	c3                   	ret    
1000735f:	55                   	push   ebp
10007360:	8b ec                	mov    ebp,esp
10007362:	83 ec 10             	sub    esp,0x10
10007365:	53                   	push   ebx
10007366:	33 db                	xor    ebx,ebx
10007368:	53                   	push   ebx
10007369:	8d 4d f0             	lea    ecx,[ebp-0x10]
1000736c:	e8 a9 ca ff ff       	call   0x10003e1a
10007371:	83 fe fe             	cmp    esi,0xfffffffe
10007374:	89 1d 54 5b 01 10    	mov    DWORD PTR ds:0x10015b54,ebx
1000737a:	75 1e                	jne    0x1000739a
1000737c:	c7 05 54 5b 01 10 01 	mov    DWORD PTR ds:0x10015b54,0x1
10007383:	00 00 00 
10007386:	ff 15 e4 d0 00 10    	call   DWORD PTR ds:0x1000d0e4
1000738c:	38 5d fc             	cmp    BYTE PTR [ebp-0x4],bl
1000738f:	74 45                	je     0x100073d6
10007391:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10007394:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10007398:	eb 3c                	jmp    0x100073d6
1000739a:	83 fe fd             	cmp    esi,0xfffffffd
1000739d:	75 12                	jne    0x100073b1
1000739f:	c7 05 54 5b 01 10 01 	mov    DWORD PTR ds:0x10015b54,0x1
100073a6:	00 00 00 
100073a9:	ff 15 e0 d0 00 10    	call   DWORD PTR ds:0x1000d0e0
100073af:	eb db                	jmp    0x1000738c
100073b1:	83 fe fc             	cmp    esi,0xfffffffc
100073b4:	75 12                	jne    0x100073c8
100073b6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100073b9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
100073bc:	c7 05 54 5b 01 10 01 	mov    DWORD PTR ds:0x10015b54,0x1
100073c3:	00 00 00 
100073c6:	eb c4                	jmp    0x1000738c
100073c8:	38 5d fc             	cmp    BYTE PTR [ebp-0x4],bl
100073cb:	74 07                	je     0x100073d4
100073cd:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
100073d0:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
100073d4:	8b c6                	mov    eax,esi
100073d6:	5b                   	pop    ebx
100073d7:	c9                   	leave  
100073d8:	c3                   	ret    
100073d9:	55                   	push   ebp
100073da:	8b ec                	mov    ebp,esp
100073dc:	83 ec 20             	sub    esp,0x20
100073df:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100073e4:	33 c5                	xor    eax,ebp
100073e6:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100073e9:	53                   	push   ebx
100073ea:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
100073ed:	56                   	push   esi
100073ee:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
100073f1:	57                   	push   edi
100073f2:	e8 68 ff ff ff       	call   0x1000735f
100073f7:	8b f8                	mov    edi,eax
100073f9:	33 f6                	xor    esi,esi
100073fb:	3b fe                	cmp    edi,esi
100073fd:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
10007400:	75 0e                	jne    0x10007410
10007402:	8b c3                	mov    eax,ebx
10007404:	e8 d3 fc ff ff       	call   0x100070dc
10007409:	33 c0                	xor    eax,eax
1000740b:	e9 93 01 00 00       	jmp    0x100075a3
10007410:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
10007413:	33 c0                	xor    eax,eax
10007415:	39 b8 a0 08 01 10    	cmp    DWORD PTR [eax+0x100108a0],edi
1000741b:	0f 84 91 00 00 00    	je     0x100074b2
10007421:	ff 45 e4             	inc    DWORD PTR [ebp-0x1c]
10007424:	83 c0 30             	add    eax,0x30
10007427:	3d f0 00 00 00       	cmp    eax,0xf0
1000742c:	72 e7                	jb     0x10007415
1000742e:	81 ff e8 fd 00 00    	cmp    edi,0xfde8
10007434:	0f 84 66 01 00 00    	je     0x100075a0
1000743a:	81 ff e9 fd 00 00    	cmp    edi,0xfde9
10007440:	0f 84 5a 01 00 00    	je     0x100075a0
10007446:	0f b7 c7             	movzx  eax,di
10007449:	50                   	push   eax
1000744a:	ff 15 e8 d0 00 10    	call   DWORD PTR ds:0x1000d0e8
10007450:	85 c0                	test   eax,eax
10007452:	0f 84 48 01 00 00    	je     0x100075a0
10007458:	8d 45 e8             	lea    eax,[ebp-0x18]
1000745b:	50                   	push   eax
1000745c:	57                   	push   edi
1000745d:	ff 15 dc d0 00 10    	call   DWORD PTR ds:0x1000d0dc
10007463:	85 c0                	test   eax,eax
10007465:	0f 84 29 01 00 00    	je     0x10007594
1000746b:	68 01 01 00 00       	push   0x101
10007470:	8d 43 1c             	lea    eax,[ebx+0x1c]
10007473:	56                   	push   esi
10007474:	50                   	push   eax
10007475:	e8 76 11 00 00       	call   0x100085f0
1000747a:	33 d2                	xor    edx,edx
1000747c:	42                   	inc    edx
1000747d:	83 c4 0c             	add    esp,0xc
10007480:	39 55 e8             	cmp    DWORD PTR [ebp-0x18],edx
10007483:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
10007486:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
10007489:	0f 86 f8 00 00 00    	jbe    0x10007587
1000748f:	80 7d ee 00          	cmp    BYTE PTR [ebp-0x12],0x0
10007493:	0f 84 cf 00 00 00    	je     0x10007568
10007499:	8d 75 ef             	lea    esi,[ebp-0x11]
1000749c:	8a 0e                	mov    cl,BYTE PTR [esi]
1000749e:	84 c9                	test   cl,cl
100074a0:	0f 84 c2 00 00 00    	je     0x10007568
100074a6:	0f b6 46 ff          	movzx  eax,BYTE PTR [esi-0x1]
100074aa:	0f b6 c9             	movzx  ecx,cl
100074ad:	e9 a6 00 00 00       	jmp    0x10007558
100074b2:	68 01 01 00 00       	push   0x101
100074b7:	8d 43 1c             	lea    eax,[ebx+0x1c]
100074ba:	56                   	push   esi
100074bb:	50                   	push   eax
100074bc:	e8 2f 11 00 00       	call   0x100085f0
100074c1:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
100074c4:	83 c4 0c             	add    esp,0xc
100074c7:	6b c9 30             	imul   ecx,ecx,0x30
100074ca:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
100074cd:	8d b1 b0 08 01 10    	lea    esi,[ecx+0x100108b0]
100074d3:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
100074d6:	eb 2a                	jmp    0x10007502
100074d8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100074db:	84 c0                	test   al,al
100074dd:	74 28                	je     0x10007507
100074df:	0f b6 3e             	movzx  edi,BYTE PTR [esi]
100074e2:	0f b6 c0             	movzx  eax,al
100074e5:	eb 12                	jmp    0x100074f9
100074e7:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
100074ea:	8a 80 9c 08 01 10    	mov    al,BYTE PTR [eax+0x1001089c]
100074f0:	08 44 3b 1d          	or     BYTE PTR [ebx+edi*1+0x1d],al
100074f4:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
100074f8:	47                   	inc    edi
100074f9:	3b f8                	cmp    edi,eax
100074fb:	76 ea                	jbe    0x100074e7
100074fd:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10007500:	46                   	inc    esi
10007501:	46                   	inc    esi
10007502:	80 3e 00             	cmp    BYTE PTR [esi],0x0
10007505:	75 d1                	jne    0x100074d8
10007507:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
1000750a:	ff 45 e0             	inc    DWORD PTR [ebp-0x20]
1000750d:	83 c6 08             	add    esi,0x8
10007510:	83 7d e0 04          	cmp    DWORD PTR [ebp-0x20],0x4
10007514:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
10007517:	72 e9                	jb     0x10007502
10007519:	8b c7                	mov    eax,edi
1000751b:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
1000751e:	c7 43 08 01 00 00 00 	mov    DWORD PTR [ebx+0x8],0x1
10007525:	e8 83 fb ff ff       	call   0x100070ad
1000752a:	6a 06                	push   0x6
1000752c:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
1000752f:	8d 43 10             	lea    eax,[ebx+0x10]
10007532:	8d 89 a4 08 01 10    	lea    ecx,[ecx+0x100108a4]
10007538:	5a                   	pop    edx
10007539:	66 8b 31             	mov    si,WORD PTR [ecx]
1000753c:	41                   	inc    ecx
1000753d:	66 89 30             	mov    WORD PTR [eax],si
10007540:	41                   	inc    ecx
10007541:	40                   	inc    eax
10007542:	40                   	inc    eax
10007543:	4a                   	dec    edx
10007544:	75 f3                	jne    0x10007539
10007546:	8b f3                	mov    esi,ebx
10007548:	e8 e4 fb ff ff       	call   0x10007131
1000754d:	e9 b7 fe ff ff       	jmp    0x10007409
10007552:	80 4c 03 1d 04       	or     BYTE PTR [ebx+eax*1+0x1d],0x4
10007557:	40                   	inc    eax
10007558:	3b c1                	cmp    eax,ecx
1000755a:	76 f6                	jbe    0x10007552
1000755c:	46                   	inc    esi
1000755d:	46                   	inc    esi
1000755e:	80 7e ff 00          	cmp    BYTE PTR [esi-0x1],0x0
10007562:	0f 85 34 ff ff ff    	jne    0x1000749c
10007568:	8d 43 1e             	lea    eax,[ebx+0x1e]
1000756b:	b9 fe 00 00 00       	mov    ecx,0xfe
10007570:	80 08 08             	or     BYTE PTR [eax],0x8
10007573:	40                   	inc    eax
10007574:	49                   	dec    ecx
10007575:	75 f9                	jne    0x10007570
10007577:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
1000757a:	e8 2e fb ff ff       	call   0x100070ad
1000757f:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
10007582:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
10007585:	eb 03                	jmp    0x1000758a
10007587:	89 73 08             	mov    DWORD PTR [ebx+0x8],esi
1000758a:	33 c0                	xor    eax,eax
1000758c:	8d 7b 10             	lea    edi,[ebx+0x10]
1000758f:	ab                   	stos   DWORD PTR es:[edi],eax
10007590:	ab                   	stos   DWORD PTR es:[edi],eax
10007591:	ab                   	stos   DWORD PTR es:[edi],eax
10007592:	eb b2                	jmp    0x10007546
10007594:	39 35 54 5b 01 10    	cmp    DWORD PTR ds:0x10015b54,esi
1000759a:	0f 85 62 fe ff ff    	jne    0x10007402
100075a0:	83 c8 ff             	or     eax,0xffffffff
100075a3:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
100075a6:	5f                   	pop    edi
100075a7:	5e                   	pop    esi
100075a8:	33 cd                	xor    ecx,ebp
100075aa:	5b                   	pop    ebx
100075ab:	e8 6b c5 ff ff       	call   0x10003b1b
100075b0:	c9                   	leave  
100075b1:	c3                   	ret    
100075b2:	6a 14                	push   0x14
100075b4:	68 e8 e4 00 10       	push   0x1000e4e8
100075b9:	e8 6a e2 ff ff       	call   0x10005828
100075be:	83 4d e0 ff          	or     DWORD PTR [ebp-0x20],0xffffffff
100075c2:	e8 63 ed ff ff       	call   0x1000632a
100075c7:	8b f8                	mov    edi,eax
100075c9:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
100075cc:	e8 ea fc ff ff       	call   0x100072bb
100075d1:	8b 5f 68             	mov    ebx,DWORD PTR [edi+0x68]
100075d4:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
100075d7:	e8 83 fd ff ff       	call   0x1000735f
100075dc:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
100075df:	3b 43 04             	cmp    eax,DWORD PTR [ebx+0x4]
100075e2:	0f 84 57 01 00 00    	je     0x1000773f
100075e8:	68 20 02 00 00       	push   0x220
100075ed:	e8 5e f0 ff ff       	call   0x10006650
100075f2:	59                   	pop    ecx
100075f3:	8b d8                	mov    ebx,eax
100075f5:	85 db                	test   ebx,ebx
100075f7:	0f 84 46 01 00 00    	je     0x10007743
100075fd:	b9 88 00 00 00       	mov    ecx,0x88
10007602:	8b 77 68             	mov    esi,DWORD PTR [edi+0x68]
10007605:	8b fb                	mov    edi,ebx
10007607:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007609:	83 23 00             	and    DWORD PTR [ebx],0x0
1000760c:	53                   	push   ebx
1000760d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10007610:	e8 c4 fd ff ff       	call   0x100073d9
10007615:	59                   	pop    ecx
10007616:	59                   	pop    ecx
10007617:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000761a:	85 c0                	test   eax,eax
1000761c:	0f 85 fc 00 00 00    	jne    0x1000771e
10007622:	8b 75 dc             	mov    esi,DWORD PTR [ebp-0x24]
10007625:	ff 76 68             	push   DWORD PTR [esi+0x68]
10007628:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
1000762e:	85 c0                	test   eax,eax
10007630:	75 11                	jne    0x10007643
10007632:	8b 46 68             	mov    eax,DWORD PTR [esi+0x68]
10007635:	3d 70 04 01 10       	cmp    eax,0x10010470
1000763a:	74 07                	je     0x10007643
1000763c:	50                   	push   eax
1000763d:	e8 39 c3 ff ff       	call   0x1000397b
10007642:	59                   	pop    ecx
10007643:	89 5e 68             	mov    DWORD PTR [esi+0x68],ebx
10007646:	53                   	push   ebx
10007647:	8b 3d 9c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d09c
1000764d:	ff d7                	call   edi
1000764f:	f6 46 70 02          	test   BYTE PTR [esi+0x70],0x2
10007653:	0f 85 ea 00 00 00    	jne    0x10007743
10007659:	f6 05 94 09 01 10 01 	test   BYTE PTR ds:0x10010994,0x1
10007660:	0f 85 dd 00 00 00    	jne    0x10007743
10007666:	6a 0d                	push   0xd
10007668:	e8 8b d6 ff ff       	call   0x10004cf8
1000766d:	59                   	pop    ecx
1000766e:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10007672:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
10007675:	a3 64 5b 01 10       	mov    ds:0x10015b64,eax
1000767a:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
1000767d:	a3 68 5b 01 10       	mov    ds:0x10015b68,eax
10007682:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
10007685:	a3 6c 5b 01 10       	mov    ds:0x10015b6c,eax
1000768a:	33 c0                	xor    eax,eax
1000768c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
1000768f:	83 f8 05             	cmp    eax,0x5
10007692:	7d 10                	jge    0x100076a4
10007694:	66 8b 4c 43 10       	mov    cx,WORD PTR [ebx+eax*2+0x10]
10007699:	66 89 0c 45 58 5b 01 	mov    WORD PTR [eax*2+0x10015b58],cx
100076a0:	10 
100076a1:	40                   	inc    eax
100076a2:	eb e8                	jmp    0x1000768c
100076a4:	33 c0                	xor    eax,eax
100076a6:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100076a9:	3d 01 01 00 00       	cmp    eax,0x101
100076ae:	7d 0d                	jge    0x100076bd
100076b0:	8a 4c 18 1c          	mov    cl,BYTE PTR [eax+ebx*1+0x1c]
100076b4:	88 88 90 06 01 10    	mov    BYTE PTR [eax+0x10010690],cl
100076ba:	40                   	inc    eax
100076bb:	eb e9                	jmp    0x100076a6
100076bd:	33 c0                	xor    eax,eax
100076bf:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
100076c2:	3d 00 01 00 00       	cmp    eax,0x100
100076c7:	7d 10                	jge    0x100076d9
100076c9:	8a 8c 18 1d 01 00 00 	mov    cl,BYTE PTR [eax+ebx*1+0x11d]
100076d0:	88 88 98 07 01 10    	mov    BYTE PTR [eax+0x10010798],cl
100076d6:	40                   	inc    eax
100076d7:	eb e6                	jmp    0x100076bf
100076d9:	ff 35 98 08 01 10    	push   DWORD PTR ds:0x10010898
100076df:	ff 15 a4 d0 00 10    	call   DWORD PTR ds:0x1000d0a4
100076e5:	85 c0                	test   eax,eax
100076e7:	75 13                	jne    0x100076fc
100076e9:	a1 98 08 01 10       	mov    eax,ds:0x10010898
100076ee:	3d 70 04 01 10       	cmp    eax,0x10010470
100076f3:	74 07                	je     0x100076fc
100076f5:	50                   	push   eax
100076f6:	e8 80 c2 ff ff       	call   0x1000397b
100076fb:	59                   	pop    ecx
100076fc:	89 1d 98 08 01 10    	mov    DWORD PTR ds:0x10010898,ebx
10007702:	53                   	push   ebx
10007703:	ff d7                	call   edi
10007705:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
1000770c:	e8 02 00 00 00       	call   0x10007713
10007711:	eb 30                	jmp    0x10007743
10007713:	6a 0d                	push   0xd
10007715:	e8 06 d5 ff ff       	call   0x10004c20
1000771a:	59                   	pop    ecx
1000771b:	c3                   	ret    
1000771c:	eb 25                	jmp    0x10007743
1000771e:	83 f8 ff             	cmp    eax,0xffffffff
10007721:	75 20                	jne    0x10007743
10007723:	81 fb 70 04 01 10    	cmp    ebx,0x10010470
10007729:	74 07                	je     0x10007732
1000772b:	53                   	push   ebx
1000772c:	e8 4a c2 ff ff       	call   0x1000397b
10007731:	59                   	pop    ecx
10007732:	e8 0f d3 ff ff       	call   0x10004a46
10007737:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000773d:	eb 04                	jmp    0x10007743
1000773f:	83 65 e0 00          	and    DWORD PTR [ebp-0x20],0x0
10007743:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
10007746:	e8 22 e1 ff ff       	call   0x1000586d
1000774b:	c3                   	ret    
1000774c:	83 3d cc 5d 01 10 00 	cmp    DWORD PTR ds:0x10015dcc,0x0
10007753:	75 12                	jne    0x10007767
10007755:	6a fd                	push   0xfffffffd
10007757:	e8 56 fe ff ff       	call   0x100075b2
1000775c:	59                   	pop    ecx
1000775d:	c7 05 cc 5d 01 10 01 	mov    DWORD PTR ds:0x10015dcc,0x1
10007764:	00 00 00 
10007767:	33 c0                	xor    eax,eax
10007769:	c3                   	ret    
1000776a:	53                   	push   ebx
1000776b:	55                   	push   ebp
1000776c:	56                   	push   esi
1000776d:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
10007771:	8b 86 bc 00 00 00    	mov    eax,DWORD PTR [esi+0xbc]
10007777:	33 ed                	xor    ebp,ebp
10007779:	3b c5                	cmp    eax,ebp
1000777b:	57                   	push   edi
1000777c:	74 6f                	je     0x100077ed
1000777e:	3d 58 0b 01 10       	cmp    eax,0x10010b58
10007783:	74 68                	je     0x100077ed
10007785:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
1000778b:	3b c5                	cmp    eax,ebp
1000778d:	74 5e                	je     0x100077ed
1000778f:	39 28                	cmp    DWORD PTR [eax],ebp
10007791:	75 5a                	jne    0x100077ed
10007793:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
10007799:	3b c5                	cmp    eax,ebp
1000779b:	74 17                	je     0x100077b4
1000779d:	39 28                	cmp    DWORD PTR [eax],ebp
1000779f:	75 13                	jne    0x100077b4
100077a1:	50                   	push   eax
100077a2:	e8 d4 c1 ff ff       	call   0x1000397b
100077a7:	ff b6 bc 00 00 00    	push   DWORD PTR [esi+0xbc]
100077ad:	e8 bb 29 00 00       	call   0x1000a16d
100077b2:	59                   	pop    ecx
100077b3:	59                   	pop    ecx
100077b4:	8b 86 b4 00 00 00    	mov    eax,DWORD PTR [esi+0xb4]
100077ba:	3b c5                	cmp    eax,ebp
100077bc:	74 17                	je     0x100077d5
100077be:	39 28                	cmp    DWORD PTR [eax],ebp
100077c0:	75 13                	jne    0x100077d5
100077c2:	50                   	push   eax
100077c3:	e8 b3 c1 ff ff       	call   0x1000397b
100077c8:	ff b6 bc 00 00 00    	push   DWORD PTR [esi+0xbc]
100077ce:	e8 5a 29 00 00       	call   0x1000a12d
100077d3:	59                   	pop    ecx
100077d4:	59                   	pop    ecx
100077d5:	ff b6 b0 00 00 00    	push   DWORD PTR [esi+0xb0]
100077db:	e8 9b c1 ff ff       	call   0x1000397b
100077e0:	ff b6 bc 00 00 00    	push   DWORD PTR [esi+0xbc]
100077e6:	e8 90 c1 ff ff       	call   0x1000397b
100077eb:	59                   	pop    ecx
100077ec:	59                   	pop    ecx
100077ed:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
100077f3:	3b c5                	cmp    eax,ebp
100077f5:	74 44                	je     0x1000783b
100077f7:	39 28                	cmp    DWORD PTR [eax],ebp
100077f9:	75 40                	jne    0x1000783b
100077fb:	8b 86 c4 00 00 00    	mov    eax,DWORD PTR [esi+0xc4]
10007801:	2d fe 00 00 00       	sub    eax,0xfe
10007806:	50                   	push   eax
10007807:	e8 6f c1 ff ff       	call   0x1000397b
1000780c:	8b 86 cc 00 00 00    	mov    eax,DWORD PTR [esi+0xcc]
10007812:	bf 80 00 00 00       	mov    edi,0x80
10007817:	2b c7                	sub    eax,edi
10007819:	50                   	push   eax
1000781a:	e8 5c c1 ff ff       	call   0x1000397b
1000781f:	8b 86 d0 00 00 00    	mov    eax,DWORD PTR [esi+0xd0]
10007825:	2b c7                	sub    eax,edi
10007827:	50                   	push   eax
10007828:	e8 4e c1 ff ff       	call   0x1000397b
1000782d:	ff b6 c0 00 00 00    	push   DWORD PTR [esi+0xc0]
10007833:	e8 43 c1 ff ff       	call   0x1000397b
10007838:	83 c4 10             	add    esp,0x10
1000783b:	8d be d4 00 00 00    	lea    edi,[esi+0xd4]
10007841:	8b 07                	mov    eax,DWORD PTR [edi]
10007843:	3d 98 0a 01 10       	cmp    eax,0x10010a98
10007848:	74 17                	je     0x10007861
1000784a:	39 a8 b4 00 00 00    	cmp    DWORD PTR [eax+0xb4],ebp
10007850:	75 0f                	jne    0x10007861
10007852:	50                   	push   eax
10007853:	e8 45 27 00 00       	call   0x10009f9d
10007858:	ff 37                	push   DWORD PTR [edi]
1000785a:	e8 1c c1 ff ff       	call   0x1000397b
1000785f:	59                   	pop    ecx
10007860:	59                   	pop    ecx
10007861:	6a 06                	push   0x6
10007863:	8d 7e 50             	lea    edi,[esi+0x50]
10007866:	5b                   	pop    ebx
10007867:	81 7f f8 98 09 01 10 	cmp    DWORD PTR [edi-0x8],0x10010998
1000786e:	74 11                	je     0x10007881
10007870:	8b 07                	mov    eax,DWORD PTR [edi]
10007872:	3b c5                	cmp    eax,ebp
10007874:	74 0b                	je     0x10007881
10007876:	39 28                	cmp    DWORD PTR [eax],ebp
10007878:	75 07                	jne    0x10007881
1000787a:	50                   	push   eax
1000787b:	e8 fb c0 ff ff       	call   0x1000397b
10007880:	59                   	pop    ecx
10007881:	39 6f fc             	cmp    DWORD PTR [edi-0x4],ebp
10007884:	74 12                	je     0x10007898
10007886:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10007889:	3b c5                	cmp    eax,ebp
1000788b:	74 0b                	je     0x10007898
1000788d:	39 28                	cmp    DWORD PTR [eax],ebp
1000788f:	75 07                	jne    0x10007898
10007891:	50                   	push   eax
10007892:	e8 e4 c0 ff ff       	call   0x1000397b
10007897:	59                   	pop    ecx
10007898:	83 c7 10             	add    edi,0x10
1000789b:	4b                   	dec    ebx
1000789c:	75 c9                	jne    0x10007867
1000789e:	56                   	push   esi
1000789f:	e8 d7 c0 ff ff       	call   0x1000397b
100078a4:	59                   	pop    ecx
100078a5:	5f                   	pop    edi
100078a6:	5e                   	pop    esi
100078a7:	5d                   	pop    ebp
100078a8:	5b                   	pop    ebx
100078a9:	c3                   	ret    
100078aa:	53                   	push   ebx
100078ab:	55                   	push   ebp
100078ac:	56                   	push   esi
100078ad:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
100078b1:	57                   	push   edi
100078b2:	8b 3d 9c d0 00 10    	mov    edi,DWORD PTR ds:0x1000d09c
100078b8:	56                   	push   esi
100078b9:	ff d7                	call   edi
100078bb:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
100078c1:	85 c0                	test   eax,eax
100078c3:	74 03                	je     0x100078c8
100078c5:	50                   	push   eax
100078c6:	ff d7                	call   edi
100078c8:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
100078ce:	85 c0                	test   eax,eax
100078d0:	74 03                	je     0x100078d5
100078d2:	50                   	push   eax
100078d3:	ff d7                	call   edi
100078d5:	8b 86 b4 00 00 00    	mov    eax,DWORD PTR [esi+0xb4]
100078db:	85 c0                	test   eax,eax
100078dd:	74 03                	je     0x100078e2
100078df:	50                   	push   eax
100078e0:	ff d7                	call   edi
100078e2:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
100078e8:	85 c0                	test   eax,eax
100078ea:	74 03                	je     0x100078ef
100078ec:	50                   	push   eax
100078ed:	ff d7                	call   edi
100078ef:	6a 06                	push   0x6
100078f1:	8d 5e 50             	lea    ebx,[esi+0x50]
100078f4:	5d                   	pop    ebp
100078f5:	81 7b f8 98 09 01 10 	cmp    DWORD PTR [ebx-0x8],0x10010998
100078fc:	74 09                	je     0x10007907
100078fe:	8b 03                	mov    eax,DWORD PTR [ebx]
10007900:	85 c0                	test   eax,eax
10007902:	74 03                	je     0x10007907
10007904:	50                   	push   eax
10007905:	ff d7                	call   edi
10007907:	83 7b fc 00          	cmp    DWORD PTR [ebx-0x4],0x0
1000790b:	74 0a                	je     0x10007917
1000790d:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
10007910:	85 c0                	test   eax,eax
10007912:	74 03                	je     0x10007917
10007914:	50                   	push   eax
10007915:	ff d7                	call   edi
10007917:	83 c3 10             	add    ebx,0x10
1000791a:	4d                   	dec    ebp
1000791b:	75 d8                	jne    0x100078f5
1000791d:	8b 86 d4 00 00 00    	mov    eax,DWORD PTR [esi+0xd4]
10007923:	05 b4 00 00 00       	add    eax,0xb4
10007928:	50                   	push   eax
10007929:	ff d7                	call   edi
1000792b:	5f                   	pop    edi
1000792c:	5e                   	pop    esi
1000792d:	5d                   	pop    ebp
1000792e:	5b                   	pop    ebx
1000792f:	c3                   	ret    
10007930:	56                   	push   esi
10007931:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
10007935:	85 f6                	test   esi,esi
10007937:	74 7f                	je     0x100079b8
10007939:	53                   	push   ebx
1000793a:	55                   	push   ebp
1000793b:	57                   	push   edi
1000793c:	8b 3d a4 d0 00 10    	mov    edi,DWORD PTR ds:0x1000d0a4
10007942:	56                   	push   esi
10007943:	ff d7                	call   edi
10007945:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
1000794b:	85 c0                	test   eax,eax
1000794d:	74 03                	je     0x10007952
1000794f:	50                   	push   eax
10007950:	ff d7                	call   edi
10007952:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
10007958:	85 c0                	test   eax,eax
1000795a:	74 03                	je     0x1000795f
1000795c:	50                   	push   eax
1000795d:	ff d7                	call   edi
1000795f:	8b 86 b4 00 00 00    	mov    eax,DWORD PTR [esi+0xb4]
10007965:	85 c0                	test   eax,eax
10007967:	74 03                	je     0x1000796c
10007969:	50                   	push   eax
1000796a:	ff d7                	call   edi
1000796c:	8b 86 c0 00 00 00    	mov    eax,DWORD PTR [esi+0xc0]
10007972:	85 c0                	test   eax,eax
10007974:	74 03                	je     0x10007979
10007976:	50                   	push   eax
10007977:	ff d7                	call   edi
10007979:	6a 06                	push   0x6
1000797b:	8d 5e 50             	lea    ebx,[esi+0x50]
1000797e:	5d                   	pop    ebp
1000797f:	81 7b f8 98 09 01 10 	cmp    DWORD PTR [ebx-0x8],0x10010998
10007986:	74 09                	je     0x10007991
10007988:	8b 03                	mov    eax,DWORD PTR [ebx]
1000798a:	85 c0                	test   eax,eax
1000798c:	74 03                	je     0x10007991
1000798e:	50                   	push   eax
1000798f:	ff d7                	call   edi
10007991:	83 7b fc 00          	cmp    DWORD PTR [ebx-0x4],0x0
10007995:	74 0a                	je     0x100079a1
10007997:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
1000799a:	85 c0                	test   eax,eax
1000799c:	74 03                	je     0x100079a1
1000799e:	50                   	push   eax
1000799f:	ff d7                	call   edi
100079a1:	83 c3 10             	add    ebx,0x10
100079a4:	4d                   	dec    ebp
100079a5:	75 d8                	jne    0x1000797f
100079a7:	8b 86 d4 00 00 00    	mov    eax,DWORD PTR [esi+0xd4]
100079ad:	05 b4 00 00 00       	add    eax,0xb4
100079b2:	50                   	push   eax
100079b3:	ff d7                	call   edi
100079b5:	5f                   	pop    edi
100079b6:	5d                   	pop    ebp
100079b7:	5b                   	pop    ebx
100079b8:	8b c6                	mov    eax,esi
100079ba:	5e                   	pop    esi
100079bb:	c3                   	ret    
100079bc:	85 ff                	test   edi,edi
100079be:	74 37                	je     0x100079f7
100079c0:	85 c0                	test   eax,eax
100079c2:	74 33                	je     0x100079f7
100079c4:	56                   	push   esi
100079c5:	8b 30                	mov    esi,DWORD PTR [eax]
100079c7:	3b f7                	cmp    esi,edi
100079c9:	74 28                	je     0x100079f3
100079cb:	57                   	push   edi
100079cc:	89 38                	mov    DWORD PTR [eax],edi
100079ce:	e8 d7 fe ff ff       	call   0x100078aa
100079d3:	85 f6                	test   esi,esi
100079d5:	59                   	pop    ecx
100079d6:	74 1b                	je     0x100079f3
100079d8:	56                   	push   esi
100079d9:	e8 52 ff ff ff       	call   0x10007930
100079de:	83 3e 00             	cmp    DWORD PTR [esi],0x0
100079e1:	59                   	pop    ecx
100079e2:	75 0f                	jne    0x100079f3
100079e4:	81 fe a0 09 01 10    	cmp    esi,0x100109a0
100079ea:	74 07                	je     0x100079f3
100079ec:	56                   	push   esi
100079ed:	e8 78 fd ff ff       	call   0x1000776a
100079f2:	59                   	pop    ecx
100079f3:	8b c7                	mov    eax,edi
100079f5:	5e                   	pop    esi
100079f6:	c3                   	ret    
100079f7:	33 c0                	xor    eax,eax
100079f9:	c3                   	ret    
100079fa:	6a 0c                	push   0xc
100079fc:	68 08 e5 00 10       	push   0x1000e508
10007a01:	e8 22 de ff ff       	call   0x10005828
10007a06:	e8 1f e9 ff ff       	call   0x1000632a
10007a0b:	8b f0                	mov    esi,eax
10007a0d:	a1 94 09 01 10       	mov    eax,ds:0x10010994
10007a12:	85 46 70             	test   DWORD PTR [esi+0x70],eax
10007a15:	74 22                	je     0x10007a39
10007a17:	83 7e 6c 00          	cmp    DWORD PTR [esi+0x6c],0x0
10007a1b:	74 1c                	je     0x10007a39
10007a1d:	e8 08 e9 ff ff       	call   0x1000632a
10007a22:	8b 70 6c             	mov    esi,DWORD PTR [eax+0x6c]
10007a25:	85 f6                	test   esi,esi
10007a27:	75 08                	jne    0x10007a31
10007a29:	6a 20                	push   0x20
10007a2b:	e8 f6 df ff ff       	call   0x10005a26
10007a30:	59                   	pop    ecx
10007a31:	8b c6                	mov    eax,esi
10007a33:	e8 35 de ff ff       	call   0x1000586d
10007a38:	c3                   	ret    
10007a39:	6a 0c                	push   0xc
10007a3b:	e8 b8 d2 ff ff       	call   0x10004cf8
10007a40:	59                   	pop    ecx
10007a41:	83 65 fc 00          	and    DWORD PTR [ebp-0x4],0x0
10007a45:	8d 46 6c             	lea    eax,[esi+0x6c]
10007a48:	8b 3d 78 0a 01 10    	mov    edi,DWORD PTR ds:0x10010a78
10007a4e:	e8 69 ff ff ff       	call   0x100079bc
10007a53:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
10007a56:	c7 45 fc fe ff ff ff 	mov    DWORD PTR [ebp-0x4],0xfffffffe
10007a5d:	e8 02 00 00 00       	call   0x10007a64
10007a62:	eb c1                	jmp    0x10007a25
10007a64:	6a 0c                	push   0xc
10007a66:	e8 b5 d1 ff ff       	call   0x10004c20
10007a6b:	59                   	pop    ecx
10007a6c:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
10007a6f:	c3                   	ret    
10007a70:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10007a74:	a3 94 5b 01 10       	mov    ds:0x10015b94,eax
10007a79:	c3                   	ret    
10007a7a:	55                   	push   ebp
10007a7b:	8d ac 24 58 fd ff ff 	lea    ebp,[esp-0x2a8]
10007a82:	81 ec 28 03 00 00    	sub    esp,0x328
10007a88:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007a8d:	33 c5                	xor    eax,ebp
10007a8f:	89 85 a4 02 00 00    	mov    DWORD PTR [ebp+0x2a4],eax
10007a95:	56                   	push   esi
10007a96:	89 85 88 00 00 00    	mov    DWORD PTR [ebp+0x88],eax
10007a9c:	89 8d 84 00 00 00    	mov    DWORD PTR [ebp+0x84],ecx
10007aa2:	89 95 80 00 00 00    	mov    DWORD PTR [ebp+0x80],edx
10007aa8:	89 5d 7c             	mov    DWORD PTR [ebp+0x7c],ebx
10007aab:	89 75 78             	mov    DWORD PTR [ebp+0x78],esi
10007aae:	89 7d 74             	mov    DWORD PTR [ebp+0x74],edi
10007ab1:	66 8c 95 a0 00 00 00 	data16 mov WORD PTR [ebp+0xa0],ss
10007ab8:	66 8c 8d 94 00 00 00 	data16 mov WORD PTR [ebp+0x94],cs
10007abf:	66 8c 5d 70          	data16 mov WORD PTR [ebp+0x70],ds
10007ac3:	66 8c 45 6c          	data16 mov WORD PTR [ebp+0x6c],es
10007ac7:	66 8c 65 68          	data16 mov WORD PTR [ebp+0x68],fs
10007acb:	66 8c 6d 64          	data16 mov WORD PTR [ebp+0x64],gs
10007acf:	9c                   	pushf  
10007ad0:	8f 85 98 00 00 00    	pop    DWORD PTR [ebp+0x98]
10007ad6:	8b b5 ac 02 00 00    	mov    esi,DWORD PTR [ebp+0x2ac]
10007adc:	8d 85 ac 02 00 00    	lea    eax,[ebp+0x2ac]
10007ae2:	89 85 9c 00 00 00    	mov    DWORD PTR [ebp+0x9c],eax
10007ae8:	c7 45 d8 01 00 01 00 	mov    DWORD PTR [ebp-0x28],0x10001
10007aef:	89 b5 90 00 00 00    	mov    DWORD PTR [ebp+0x90],esi
10007af5:	8b 40 fc             	mov    eax,DWORD PTR [eax-0x4]
10007af8:	6a 50                	push   0x50
10007afa:	89 85 8c 00 00 00    	mov    DWORD PTR [ebp+0x8c],eax
10007b00:	8d 45 80             	lea    eax,[ebp-0x80]
10007b03:	6a 00                	push   0x0
10007b05:	50                   	push   eax
10007b06:	e8 e5 0a 00 00       	call   0x100085f0
10007b0b:	8d 45 80             	lea    eax,[ebp-0x80]
10007b0e:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
10007b11:	8d 45 d8             	lea    eax,[ebp-0x28]
10007b14:	83 c4 0c             	add    esp,0xc
10007b17:	c7 45 80 0d 00 00 c0 	mov    DWORD PTR [ebp-0x80],0xc000000d
10007b1e:	89 75 8c             	mov    DWORD PTR [ebp-0x74],esi
10007b21:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
10007b24:	ff 15 8c d0 00 10    	call   DWORD PTR ds:0x1000d08c
10007b2a:	6a 00                	push   0x0
10007b2c:	8b f0                	mov    esi,eax
10007b2e:	ff 15 88 d0 00 10    	call   DWORD PTR ds:0x1000d088
10007b34:	8d 45 d0             	lea    eax,[ebp-0x30]
10007b37:	50                   	push   eax
10007b38:	ff 15 84 d0 00 10    	call   DWORD PTR ds:0x1000d084
10007b3e:	85 c0                	test   eax,eax
10007b40:	75 0c                	jne    0x10007b4e
10007b42:	85 f6                	test   esi,esi
10007b44:	75 08                	jne    0x10007b4e
10007b46:	6a 02                	push   0x2
10007b48:	e8 b3 16 00 00       	call   0x10009200
10007b4d:	59                   	pop    ecx
10007b4e:	68 0d 00 00 c0       	push   0xc000000d
10007b53:	ff 15 80 d0 00 10    	call   DWORD PTR ds:0x1000d080
10007b59:	50                   	push   eax
10007b5a:	ff 15 7c d0 00 10    	call   DWORD PTR ds:0x1000d07c
10007b60:	8b 8d a4 02 00 00    	mov    ecx,DWORD PTR [ebp+0x2a4]
10007b66:	33 cd                	xor    ecx,ebp
10007b68:	5e                   	pop    esi
10007b69:	e8 ad bf ff ff       	call   0x10003b1b
10007b6e:	81 c5 a8 02 00 00    	add    ebp,0x2a8
10007b74:	c9                   	leave  
10007b75:	c3                   	ret    
10007b76:	55                   	push   ebp
10007b77:	8b ec                	mov    ebp,esp
10007b79:	ff 35 94 5b 01 10    	push   DWORD PTR ds:0x10015b94
10007b7f:	e8 8a e5 ff ff       	call   0x1000610e
10007b84:	85 c0                	test   eax,eax
10007b86:	59                   	pop    ecx
10007b87:	74 03                	je     0x10007b8c
10007b89:	5d                   	pop    ebp
10007b8a:	ff e0                	jmp    eax
10007b8c:	6a 02                	push   0x2
10007b8e:	e8 6d 16 00 00       	call   0x10009200
10007b93:	59                   	pop    ecx
10007b94:	5d                   	pop    ebp
10007b95:	e9 e0 fe ff ff       	jmp    0x10007a7a
10007b9a:	55                   	push   ebp
10007b9b:	8b ec                	mov    ebp,esp
10007b9d:	83 ec 10             	sub    esp,0x10
10007ba0:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10007ba3:	8d 4d f0             	lea    ecx,[ebp-0x10]
10007ba6:	e8 6f c2 ff ff       	call   0x10003e1a
10007bab:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10007bae:	83 b8 ac 00 00 00 01 	cmp    DWORD PTR [eax+0xac],0x1
10007bb5:	7e 13                	jle    0x10007bca
10007bb7:	8d 45 f0             	lea    eax,[ebp-0x10]
10007bba:	50                   	push   eax
10007bbb:	6a 04                	push   0x4
10007bbd:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10007bc0:	e8 cb 26 00 00       	call   0x1000a290
10007bc5:	83 c4 0c             	add    esp,0xc
10007bc8:	eb 10                	jmp    0x10007bda
10007bca:	8b 80 c8 00 00 00    	mov    eax,DWORD PTR [eax+0xc8]
10007bd0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10007bd3:	0f b6 04 48          	movzx  eax,BYTE PTR [eax+ecx*2]
10007bd7:	83 e0 04             	and    eax,0x4
10007bda:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10007bde:	74 07                	je     0x10007be7
10007be0:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10007be3:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10007be7:	c9                   	leave  
10007be8:	c3                   	ret    
10007be9:	83 3d 70 5b 01 10 00 	cmp    DWORD PTR ds:0x10015b70,0x0
10007bf0:	75 12                	jne    0x10007c04
10007bf2:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10007bf6:	8b 0d 68 0a 01 10    	mov    ecx,DWORD PTR ds:0x10010a68
10007bfc:	0f b6 04 41          	movzx  eax,BYTE PTR [ecx+eax*2]
10007c00:	83 e0 04             	and    eax,0x4
10007c03:	c3                   	ret    
10007c04:	6a 00                	push   0x0
10007c06:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10007c0a:	e8 8b ff ff ff       	call   0x10007b9a
10007c0f:	59                   	pop    ecx
10007c10:	59                   	pop    ecx
10007c11:	c3                   	ret    
10007c12:	55                   	push   ebp
10007c13:	8b ec                	mov    ebp,esp
10007c15:	83 ec 18             	sub    esp,0x18
10007c18:	53                   	push   ebx
10007c19:	56                   	push   esi
10007c1a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10007c1d:	8d 4d e8             	lea    ecx,[ebp-0x18]
10007c20:	e8 f5 c1 ff ff       	call   0x10003e1a
10007c25:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
10007c28:	be 00 01 00 00       	mov    esi,0x100
10007c2d:	3b de                	cmp    ebx,esi
10007c2f:	73 54                	jae    0x10007c85
10007c31:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
10007c34:	83 b9 ac 00 00 00 01 	cmp    DWORD PTR [ecx+0xac],0x1
10007c3b:	7e 14                	jle    0x10007c51
10007c3d:	8d 45 e8             	lea    eax,[ebp-0x18]
10007c40:	50                   	push   eax
10007c41:	6a 01                	push   0x1
10007c43:	53                   	push   ebx
10007c44:	e8 47 26 00 00       	call   0x1000a290
10007c49:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
10007c4c:	83 c4 0c             	add    esp,0xc
10007c4f:	eb 0d                	jmp    0x10007c5e
10007c51:	8b 81 c8 00 00 00    	mov    eax,DWORD PTR [ecx+0xc8]
10007c57:	0f b6 04 58          	movzx  eax,BYTE PTR [eax+ebx*2]
10007c5b:	83 e0 01             	and    eax,0x1
10007c5e:	85 c0                	test   eax,eax
10007c60:	74 0f                	je     0x10007c71
10007c62:	8b 81 cc 00 00 00    	mov    eax,DWORD PTR [ecx+0xcc]
10007c68:	0f b6 04 18          	movzx  eax,BYTE PTR [eax+ebx*1]
10007c6c:	e9 a7 00 00 00       	jmp    0x10007d18
10007c71:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
10007c75:	74 07                	je     0x10007c7e
10007c77:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
10007c7a:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007c7e:	8b c3                	mov    eax,ebx
10007c80:	e9 a0 00 00 00       	jmp    0x10007d25
10007c85:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
10007c88:	83 b8 ac 00 00 00 01 	cmp    DWORD PTR [eax+0xac],0x1
10007c8f:	7e 31                	jle    0x10007cc2
10007c91:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
10007c94:	c1 7d 08 08          	sar    DWORD PTR [ebp+0x8],0x8
10007c98:	8d 45 e8             	lea    eax,[ebp-0x18]
10007c9b:	50                   	push   eax
10007c9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10007c9f:	25 ff 00 00 00       	and    eax,0xff
10007ca4:	50                   	push   eax
10007ca5:	e8 9c 26 00 00       	call   0x1000a346
10007caa:	85 c0                	test   eax,eax
10007cac:	59                   	pop    ecx
10007cad:	59                   	pop    ecx
10007cae:	74 12                	je     0x10007cc2
10007cb0:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
10007cb3:	6a 02                	push   0x2
10007cb5:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
10007cb8:	88 5d fd             	mov    BYTE PTR [ebp-0x3],bl
10007cbb:	c6 45 fe 00          	mov    BYTE PTR [ebp-0x2],0x0
10007cbf:	59                   	pop    ecx
10007cc0:	eb 15                	jmp    0x10007cd7
10007cc2:	e8 7f cd ff ff       	call   0x10004a46
10007cc7:	c7 00 2a 00 00 00    	mov    DWORD PTR [eax],0x2a
10007ccd:	33 c9                	xor    ecx,ecx
10007ccf:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
10007cd2:	c6 45 fd 00          	mov    BYTE PTR [ebp-0x3],0x0
10007cd6:	41                   	inc    ecx
10007cd7:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
10007cda:	6a 01                	push   0x1
10007cdc:	ff 70 04             	push   DWORD PTR [eax+0x4]
10007cdf:	8d 55 f8             	lea    edx,[ebp-0x8]
10007ce2:	6a 03                	push   0x3
10007ce4:	52                   	push   edx
10007ce5:	51                   	push   ecx
10007ce6:	8d 4d fc             	lea    ecx,[ebp-0x4]
10007ce9:	51                   	push   ecx
10007cea:	56                   	push   esi
10007ceb:	ff 70 14             	push   DWORD PTR [eax+0x14]
10007cee:	8d 45 e8             	lea    eax,[ebp-0x18]
10007cf1:	50                   	push   eax
10007cf2:	e8 6b 20 00 00       	call   0x10009d62
10007cf7:	83 c4 24             	add    esp,0x24
10007cfa:	85 c0                	test   eax,eax
10007cfc:	0f 84 6f ff ff ff    	je     0x10007c71
10007d02:	83 f8 01             	cmp    eax,0x1
10007d05:	75 06                	jne    0x10007d0d
10007d07:	0f b6 45 f8          	movzx  eax,BYTE PTR [ebp-0x8]
10007d0b:	eb 0b                	jmp    0x10007d18
10007d0d:	0f b6 4d f9          	movzx  ecx,BYTE PTR [ebp-0x7]
10007d11:	33 c0                	xor    eax,eax
10007d13:	8a 65 f8             	mov    ah,BYTE PTR [ebp-0x8]
10007d16:	0b c1                	or     eax,ecx
10007d18:	80 7d f4 00          	cmp    BYTE PTR [ebp-0xc],0x0
10007d1c:	74 07                	je     0x10007d25
10007d1e:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10007d21:	83 61 70 fd          	and    DWORD PTR [ecx+0x70],0xfffffffd
10007d25:	5e                   	pop    esi
10007d26:	5b                   	pop    ebx
10007d27:	c9                   	leave  
10007d28:	c3                   	ret    
10007d29:	83 3d 70 5b 01 10 00 	cmp    DWORD PTR ds:0x10015b70,0x0
10007d30:	75 10                	jne    0x10007d42
10007d32:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10007d36:	8d 48 bf             	lea    ecx,[eax-0x41]
10007d39:	83 f9 19             	cmp    ecx,0x19
10007d3c:	77 11                	ja     0x10007d4f
10007d3e:	83 c0 20             	add    eax,0x20
10007d41:	c3                   	ret    
10007d42:	6a 00                	push   0x0
10007d44:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
10007d48:	e8 c5 fe ff ff       	call   0x10007c12
10007d4d:	59                   	pop    ecx
10007d4e:	59                   	pop    ecx
10007d4f:	c3                   	ret    
10007d50:	55                   	push   ebp
10007d51:	8b ec                	mov    ebp,esp
10007d53:	83 ec 28             	sub    esp,0x28
10007d56:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007d5b:	33 c5                	xor    eax,ebp
10007d5d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10007d60:	53                   	push   ebx
10007d61:	56                   	push   esi
10007d62:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10007d65:	57                   	push   edi
10007d66:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10007d69:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
10007d6c:	8d 4d dc             	lea    ecx,[ebp-0x24]
10007d6f:	e8 a6 c0 ff ff       	call   0x10003e1a
10007d74:	8d 45 dc             	lea    eax,[ebp-0x24]
10007d77:	50                   	push   eax
10007d78:	33 db                	xor    ebx,ebx
10007d7a:	53                   	push   ebx
10007d7b:	53                   	push   ebx
10007d7c:	53                   	push   ebx
10007d7d:	53                   	push   ebx
10007d7e:	57                   	push   edi
10007d7f:	8d 45 d8             	lea    eax,[ebp-0x28]
10007d82:	50                   	push   eax
10007d83:	8d 45 f0             	lea    eax,[ebp-0x10]
10007d86:	50                   	push   eax
10007d87:	e8 74 30 00 00       	call   0x1000ae00
10007d8c:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
10007d8f:	8d 45 f0             	lea    eax,[ebp-0x10]
10007d92:	56                   	push   esi
10007d93:	50                   	push   eax
10007d94:	e8 e3 25 00 00       	call   0x1000a37c
10007d99:	83 c4 28             	add    esp,0x28
10007d9c:	f6 45 ec 03          	test   BYTE PTR [ebp-0x14],0x3
10007da0:	75 2b                	jne    0x10007dcd
10007da2:	83 f8 01             	cmp    eax,0x1
10007da5:	75 11                	jne    0x10007db8
10007da7:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007daa:	74 07                	je     0x10007db3
10007dac:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007daf:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007db3:	6a 03                	push   0x3
10007db5:	58                   	pop    eax
10007db6:	eb 2f                	jmp    0x10007de7
10007db8:	83 f8 02             	cmp    eax,0x2
10007dbb:	75 1c                	jne    0x10007dd9
10007dbd:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007dc0:	74 07                	je     0x10007dc9
10007dc2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007dc5:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007dc9:	6a 04                	push   0x4
10007dcb:	eb e8                	jmp    0x10007db5
10007dcd:	f6 45 ec 01          	test   BYTE PTR [ebp-0x14],0x1
10007dd1:	75 ea                	jne    0x10007dbd
10007dd3:	f6 45 ec 02          	test   BYTE PTR [ebp-0x14],0x2
10007dd7:	75 ce                	jne    0x10007da7
10007dd9:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007ddc:	74 07                	je     0x10007de5
10007dde:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007de1:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007de5:	33 c0                	xor    eax,eax
10007de7:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10007dea:	5f                   	pop    edi
10007deb:	5e                   	pop    esi
10007dec:	33 cd                	xor    ecx,ebp
10007dee:	5b                   	pop    ebx
10007def:	e8 27 bd ff ff       	call   0x10003b1b
10007df4:	c9                   	leave  
10007df5:	c3                   	ret    
10007df6:	55                   	push   ebp
10007df7:	8b ec                	mov    ebp,esp
10007df9:	83 ec 28             	sub    esp,0x28
10007dfc:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10007e01:	33 c5                	xor    eax,ebp
10007e03:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
10007e06:	53                   	push   ebx
10007e07:	56                   	push   esi
10007e08:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10007e0b:	57                   	push   edi
10007e0c:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10007e0f:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
10007e12:	8d 4d dc             	lea    ecx,[ebp-0x24]
10007e15:	e8 00 c0 ff ff       	call   0x10003e1a
10007e1a:	8d 45 dc             	lea    eax,[ebp-0x24]
10007e1d:	50                   	push   eax
10007e1e:	33 db                	xor    ebx,ebx
10007e20:	53                   	push   ebx
10007e21:	53                   	push   ebx
10007e22:	53                   	push   ebx
10007e23:	53                   	push   ebx
10007e24:	57                   	push   edi
10007e25:	8d 45 d8             	lea    eax,[ebp-0x28]
10007e28:	50                   	push   eax
10007e29:	8d 45 f0             	lea    eax,[ebp-0x10]
10007e2c:	50                   	push   eax
10007e2d:	e8 ce 2f 00 00       	call   0x1000ae00
10007e32:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
10007e35:	8d 45 f0             	lea    eax,[ebp-0x10]
10007e38:	56                   	push   esi
10007e39:	50                   	push   eax
10007e3a:	e8 7f 2a 00 00       	call   0x1000a8be
10007e3f:	83 c4 28             	add    esp,0x28
10007e42:	f6 45 ec 03          	test   BYTE PTR [ebp-0x14],0x3
10007e46:	75 2b                	jne    0x10007e73
10007e48:	83 f8 01             	cmp    eax,0x1
10007e4b:	75 11                	jne    0x10007e5e
10007e4d:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007e50:	74 07                	je     0x10007e59
10007e52:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007e55:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007e59:	6a 03                	push   0x3
10007e5b:	58                   	pop    eax
10007e5c:	eb 2f                	jmp    0x10007e8d
10007e5e:	83 f8 02             	cmp    eax,0x2
10007e61:	75 1c                	jne    0x10007e7f
10007e63:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007e66:	74 07                	je     0x10007e6f
10007e68:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007e6b:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007e6f:	6a 04                	push   0x4
10007e71:	eb e8                	jmp    0x10007e5b
10007e73:	f6 45 ec 01          	test   BYTE PTR [ebp-0x14],0x1
10007e77:	75 ea                	jne    0x10007e63
10007e79:	f6 45 ec 02          	test   BYTE PTR [ebp-0x14],0x2
10007e7d:	75 ce                	jne    0x10007e4d
10007e7f:	38 5d e8             	cmp    BYTE PTR [ebp-0x18],bl
10007e82:	74 07                	je     0x10007e8b
10007e84:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
10007e87:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10007e8b:	33 c0                	xor    eax,eax
10007e8d:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10007e90:	5f                   	pop    edi
10007e91:	5e                   	pop    esi
10007e92:	33 cd                	xor    ecx,ebp
10007e94:	5b                   	pop    ebx
10007e95:	e8 81 bc ff ff       	call   0x10003b1b
10007e9a:	c9                   	leave
10007e9b:	c3                   	ret
10007e9c:	cc                   	int3
10007e9d:	cc                   	int3
10007e9e:	cc                   	int3
10007e9f:	cc                   	int3
