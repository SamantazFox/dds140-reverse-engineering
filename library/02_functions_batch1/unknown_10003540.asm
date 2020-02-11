10003540:	83 ec 24             	sub    esp,0x24
10003543:	a1 10 00 01 10       	mov    eax,ds:0x10010010
10003548:	33 c4                	xor    eax,esp
1000354a:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
1000354e:	57                   	push   edi
1000354f:	6a 12                	push   0x12
10003551:	6a 00                	push   0x0
10003553:	6a 00                	push   0x0
10003555:	68 70 d1 00 10       	push   0x1000d170
1000355a:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
10003561:	00 
10003562:	ff 15 0c d1 00 10    	call   DWORD PTR ds:0x1000d10c
10003568:	8b f8                	mov    edi,eax
1000356a:	83 ff ff             	cmp    edi,0xffffffff
1000356d:	0f 84 a7 00 00 00    	je     0x1000361a
10003573:	53                   	push   ebx
10003574:	55                   	push   ebp
10003575:	8b 2d 08 d1 00 10    	mov    ebp,DWORD PTR ds:0x1000d108
1000357b:	56                   	push   esi
1000357c:	c7 44 24 14 1c 00 00 	mov    DWORD PTR [esp+0x14],0x1c
10003583:	00 
10003584:	8d 44 24 14          	lea    eax,[esp+0x14]
10003588:	50                   	push   eax
10003589:	6a 00                	push   0x0
1000358b:	68 70 d1 00 10       	push   0x1000d170
10003590:	6a 00                	push   0x0
10003592:	57                   	push   edi
10003593:	ff 15 10 d1 00 10    	call   DWORD PTR ds:0x1000d110
10003599:	85 c0                	test   eax,eax
1000359b:	74 4a                	je     0x100035e7
1000359d:	6a 00                	push   0x0
1000359f:	8d 4c 24 14          	lea    ecx,[esp+0x14]
100035a3:	51                   	push   ecx
100035a4:	6a 00                	push   0x0
100035a6:	6a 00                	push   0x0
100035a8:	8d 54 24 24          	lea    edx,[esp+0x24]
100035ac:	52                   	push   edx
100035ad:	57                   	push   edi
100035ae:	ff d5                	call   ebp
100035b0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100035b4:	50                   	push   eax
100035b5:	8b d8                	mov    ebx,eax
100035b7:	e8 9c 04 00 00       	call   0x10003a58
100035bc:	83 c4 04             	add    esp,0x4
100035bf:	6a 00                	push   0x0
100035c1:	8b f0                	mov    esi,eax
100035c3:	8d 44 24 14          	lea    eax,[esp+0x14]
100035c7:	50                   	push   eax
100035c8:	53                   	push   ebx
100035c9:	56                   	push   esi
100035ca:	8d 4c 24 24          	lea    ecx,[esp+0x24]
100035ce:	51                   	push   ecx
100035cf:	57                   	push   edi
100035d0:	c7 06 05 00 00 00    	mov    DWORD PTR [esi],0x5
100035d6:	ff d5                	call   ebp
100035d8:	85 c0                	test   eax,eax
100035da:	75 13                	jne    0x100035ef
100035dc:	56                   	push   esi
100035dd:	e8 99 03 00 00       	call   0x1000397b
100035e2:	83 c4 04             	add    esp,0x4
100035e5:	eb 9d                	jmp    0x10003584
100035e7:	ff 15 1c d0 00 10    	call   DWORD PTR ds:0x1000d01c
100035ed:	eb 21                	jmp    0x10003610
100035ef:	6a 00                	push   0x0
100035f1:	68 00 00 00 40       	push   0x40000000
100035f6:	6a 03                	push   0x3
100035f8:	6a 00                	push   0x0
100035fa:	6a 00                	push   0x0
100035fc:	68 00 00 00 c0       	push   0xc0000000
10003601:	83 c6 04             	add    esi,0x4
10003604:	56                   	push   esi
10003605:	ff 15 18 d0 00 10    	call   DWORD PTR ds:0x1000d018
1000360b:	a3 00 00 01 10       	mov    ds:0x10010000,eax
10003610:	57                   	push   edi
10003611:	ff 15 04 d1 00 10    	call   DWORD PTR ds:0x1000d104
10003617:	5e                   	pop    esi
10003618:	5d                   	pop    ebp
10003619:	5b                   	pop    ebx
1000361a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
1000361e:	a1 00 00 01 10       	mov    eax,ds:0x10010000
10003623:	5f                   	pop    edi
10003624:	33 cc                	xor    ecx,esp
10003626:	e8 f0 04 00 00       	call   0x10003b1b
1000362b:	83 c4 24             	add    esp,0x24
1000362e:	c3                   	ret    
1000362f:	cc                   	int3   
