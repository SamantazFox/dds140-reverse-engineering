10010000 <.data>:
10010000:	ff                   	(bad)  
10010001:	ff                   	(bad)  
10010002:	ff                   	(bad)  
10010003:	ff 75 98             	push   DWORD PTR [ebp-0x68]
10010006:	00 00                	add    BYTE PTR [eax],al
10010008:	73 98                	jae    0x1000ffa2
1001000a:	00 00                	add    BYTE PTR [eax],al
1001000c:	00 00                	add    BYTE PTR [eax],al
1001000e:	00 00                	add    BYTE PTR [eax],al
10010010:	4e                   	dec    esi
10010011:	e6 40                	out    0x40,al
10010013:	bb b1 19 bf 44       	mov    ebx,0x44bf19b1
10010018:	8f 86 00 10 8f 86    	pop    DWORD PTR [esi-0x7970f000]
1001001e:	00 10                	add    BYTE PTR [eax],dl
10010020:	8f 86 00 10 8f 86    	pop    DWORD PTR [esi-0x7970f000]
10010026:	00 10                	add    BYTE PTR [eax],dl
10010028:	8f 86 00 10 8f 86    	pop    DWORD PTR [esi-0x7970f000]
1001002e:	00 10                	add    BYTE PTR [eax],dl
10010030:	8f 86 00 10 8f 86    	pop    DWORD PTR [esi-0x7970f000]
10010036:	00 10                	add    BYTE PTR [eax],dl
10010038:	8f 86 00 10 8f 86    	pop    DWORD PTR [esi-0x7970f000]
1001003e:	00 10                	add    BYTE PTR [eax],dl
10010040:	01 00                	add    DWORD PTR [eax],eax
10010042:	00 00                	add    BYTE PTR [eax],al
10010044:	16                   	push   ss
10010045:	00 00                	add    BYTE PTR [eax],al
10010047:	00 02                	add    BYTE PTR [edx],al
10010049:	00 00                	add    BYTE PTR [eax],al
1001004b:	00 02                	add    BYTE PTR [edx],al
1001004d:	00 00                	add    BYTE PTR [eax],al
1001004f:	00 03                	add    BYTE PTR [ebx],al
10010051:	00 00                	add    BYTE PTR [eax],al
10010053:	00 02                	add    BYTE PTR [edx],al
10010055:	00 00                	add    BYTE PTR [eax],al
10010057:	00 04 00             	add    BYTE PTR [eax+eax*1],al
1001005a:	00 00                	add    BYTE PTR [eax],al
1001005c:	18 00                	sbb    BYTE PTR [eax],al
1001005e:	00 00                	add    BYTE PTR [eax],al
10010060:	05 00 00 00 0d       	add    eax,0xd000000
10010065:	00 00                	add    BYTE PTR [eax],al
10010067:	00 06                	add    BYTE PTR [esi],al
10010069:	00 00                	add    BYTE PTR [eax],al
1001006b:	00 09                	add    BYTE PTR [ecx],cl
1001006d:	00 00                	add    BYTE PTR [eax],al
1001006f:	00 07                	add    BYTE PTR [edi],al
10010071:	00 00                	add    BYTE PTR [eax],al
10010073:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
10010076:	00 00                	add    BYTE PTR [eax],al
10010078:	08 00                	or     BYTE PTR [eax],al
1001007a:	00 00                	add    BYTE PTR [eax],al
1001007c:	0c 00                	or     al,0x0
1001007e:	00 00                	add    BYTE PTR [eax],al
10010080:	09 00                	or     DWORD PTR [eax],eax
10010082:	00 00                	add    BYTE PTR [eax],al
10010084:	0c 00                	or     al,0x0
10010086:	00 00                	add    BYTE PTR [eax],al
10010088:	0a 00                	or     al,BYTE PTR [eax]
1001008a:	00 00                	add    BYTE PTR [eax],al
1001008c:	07                   	pop    es
1001008d:	00 00                	add    BYTE PTR [eax],al
1001008f:	00 0b                	add    BYTE PTR [ebx],cl
10010091:	00 00                	add    BYTE PTR [eax],al
10010093:	00 08                	add    BYTE PTR [eax],cl
10010095:	00 00                	add    BYTE PTR [eax],al
10010097:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
1001009a:	00 00                	add    BYTE PTR [eax],al
1001009c:	16                   	push   ss
1001009d:	00 00                	add    BYTE PTR [eax],al
1001009f:	00 0d 00 00 00 16    	add    BYTE PTR ds:0x16000000,cl
100100a5:	00 00                	add    BYTE PTR [eax],al
100100a7:	00 0f                	add    BYTE PTR [edi],cl
100100a9:	00 00                	add    BYTE PTR [eax],al
100100ab:	00 02                	add    BYTE PTR [edx],al
100100ad:	00 00                	add    BYTE PTR [eax],al
100100af:	00 10                	add    BYTE PTR [eax],dl
100100b1:	00 00                	add    BYTE PTR [eax],al
100100b3:	00 0d 00 00 00 11    	add    BYTE PTR ds:0x11000000,cl
100100b9:	00 00                	add    BYTE PTR [eax],al
100100bb:	00 12                	add    BYTE PTR [edx],dl
100100bd:	00 00                	add    BYTE PTR [eax],al
100100bf:	00 12                	add    BYTE PTR [edx],dl
100100c1:	00 00                	add    BYTE PTR [eax],al
100100c3:	00 02                	add    BYTE PTR [edx],al
100100c5:	00 00                	add    BYTE PTR [eax],al
100100c7:	00 21                	add    BYTE PTR [ecx],ah
100100c9:	00 00                	add    BYTE PTR [eax],al
100100cb:	00 0d 00 00 00 35    	add    BYTE PTR ds:0x35000000,cl
100100d1:	00 00                	add    BYTE PTR [eax],al
100100d3:	00 02                	add    BYTE PTR [edx],al
100100d5:	00 00                	add    BYTE PTR [eax],al
100100d7:	00 41 00             	add    BYTE PTR [ecx+0x0],al
100100da:	00 00                	add    BYTE PTR [eax],al
100100dc:	0d 00 00 00 43       	or     eax,0x43000000
100100e1:	00 00                	add    BYTE PTR [eax],al
100100e3:	00 02                	add    BYTE PTR [edx],al
100100e5:	00 00                	add    BYTE PTR [eax],al
100100e7:	00 50 00             	add    BYTE PTR [eax+0x0],dl
100100ea:	00 00                	add    BYTE PTR [eax],al
100100ec:	11 00                	adc    DWORD PTR [eax],eax
100100ee:	00 00                	add    BYTE PTR [eax],al
100100f0:	52                   	push   edx
100100f1:	00 00                	add    BYTE PTR [eax],al
100100f3:	00 0d 00 00 00 53    	add    BYTE PTR ds:0x53000000,cl
100100f9:	00 00                	add    BYTE PTR [eax],al
100100fb:	00 0d 00 00 00 57    	add    BYTE PTR ds:0x57000000,cl
10010101:	00 00                	add    BYTE PTR [eax],al
10010103:	00 16                	add    BYTE PTR [esi],dl
10010105:	00 00                	add    BYTE PTR [eax],al
10010107:	00 59 00             	add    BYTE PTR [ecx+0x0],bl
1001010a:	00 00                	add    BYTE PTR [eax],al
1001010c:	0b 00                	or     eax,DWORD PTR [eax]
1001010e:	00 00                	add    BYTE PTR [eax],al
10010110:	6c                   	ins    BYTE PTR es:[edi],dx
10010111:	00 00                	add    BYTE PTR [eax],al
10010113:	00 0d 00 00 00 6d    	add    BYTE PTR ds:0x6d000000,cl
10010119:	00 00                	add    BYTE PTR [eax],al
1001011b:	00 20                	add    BYTE PTR [eax],ah
1001011d:	00 00                	add    BYTE PTR [eax],al
1001011f:	00 70 00             	add    BYTE PTR [eax+0x0],dh
10010122:	00 00                	add    BYTE PTR [eax],al
10010124:	1c 00                	sbb    al,0x0
10010126:	00 00                	add    BYTE PTR [eax],al
10010128:	72 00                	jb     0x1001012a
1001012a:	00 00                	add    BYTE PTR [eax],al
1001012c:	09 00                	or     DWORD PTR [eax],eax
1001012e:	00 00                	add    BYTE PTR [eax],al
10010130:	06                   	push   es
10010131:	00 00                	add    BYTE PTR [eax],al
10010133:	00 16                	add    BYTE PTR [esi],dl
10010135:	00 00                	add    BYTE PTR [eax],al
10010137:	00 80 00 00 00 0a    	add    BYTE PTR [eax+0xa000000],al
1001013d:	00 00                	add    BYTE PTR [eax],al
1001013f:	00 81 00 00 00 0a    	add    BYTE PTR [ecx+0xa000000],al
10010145:	00 00                	add    BYTE PTR [eax],al
10010147:	00 82 00 00 00 09    	add    BYTE PTR [edx+0x9000000],al
1001014d:	00 00                	add    BYTE PTR [eax],al
1001014f:	00 83 00 00 00 16    	add    BYTE PTR [ebx+0x16000000],al
10010155:	00 00                	add    BYTE PTR [eax],al
10010157:	00 84 00 00 00 0d 00 	add    BYTE PTR [eax+eax*1+0xd0000],al
1001015e:	00 00                	add    BYTE PTR [eax],al
10010160:	91                   	xchg   ecx,eax
10010161:	00 00                	add    BYTE PTR [eax],al
10010163:	00 29                	add    BYTE PTR [ecx],ch
10010165:	00 00                	add    BYTE PTR [eax],al
10010167:	00 9e 00 00 00 0d    	add    BYTE PTR [esi+0xd000000],bl
1001016d:	00 00                	add    BYTE PTR [eax],al
1001016f:	00 a1 00 00 00 02    	add    BYTE PTR [ecx+0x2000000],ah
10010175:	00 00                	add    BYTE PTR [eax],al
10010177:	00 a4 00 00 00 0b 00 	add    BYTE PTR [eax+eax*1+0xb0000],ah
1001017e:	00 00                	add    BYTE PTR [eax],al
10010180:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
10010181:	00 00                	add    BYTE PTR [eax],al
10010183:	00 0d 00 00 00 b7    	add    BYTE PTR ds:0xb7000000,cl
10010189:	00 00                	add    BYTE PTR [eax],al
1001018b:	00 11                	add    BYTE PTR [ecx],dl
1001018d:	00 00                	add    BYTE PTR [eax],al
1001018f:	00 ce                	add    dh,cl
10010191:	00 00                	add    BYTE PTR [eax],al
10010193:	00 02                	add    BYTE PTR [edx],al
10010195:	00 00                	add    BYTE PTR [eax],al
10010197:	00 d7                	add    bh,dl
10010199:	00 00                	add    BYTE PTR [eax],al
1001019b:	00 0b                	add    BYTE PTR [ebx],cl
1001019d:	00 00                	add    BYTE PTR [eax],al
1001019f:	00 18                	add    BYTE PTR [eax],bl
100101a1:	07                   	pop    es
100101a2:	00 00                	add    BYTE PTR [eax],al
100101a4:	0c 00                	or     al,0x0
100101a6:	00 00                	add    BYTE PTR [eax],al
100101a8:	0c 00                	or     al,0x0
100101aa:	00 00                	add    BYTE PTR [eax],al
100101ac:	08 00                	or     BYTE PTR [eax],al
100101ae:	00 00                	add    BYTE PTR [eax],al
100101b0:	10 00                	adc    BYTE PTR [eax],al
	...
100101ba:	00 00                	add    BYTE PTR [eax],al
100101bc:	01 00                	add    DWORD PTR [eax],eax
100101be:	00 00                	add    BYTE PTR [eax],al
100101c0:	00 00                	add    BYTE PTR [eax],al
100101c2:	00 00                	add    BYTE PTR [eax],al
100101c4:	01 00                	add    DWORD PTR [eax],eax
	...
100101d2:	00 00                	add    BYTE PTR [eax],al
100101d4:	01 00                	add    DWORD PTR [eax],eax
100101d6:	00 00                	add    BYTE PTR [eax],al
100101d8:	00 00                	add    BYTE PTR [eax],al
100101da:	00 00                	add    BYTE PTR [eax],al
100101dc:	01 00                	add    DWORD PTR [eax],eax
	...
100101ea:	00 00                	add    BYTE PTR [eax],al
100101ec:	01 00                	add    DWORD PTR [eax],eax
100101ee:	00 00                	add    BYTE PTR [eax],al
100101f0:	00 00                	add    BYTE PTR [eax],al
100101f2:	00 00                	add    BYTE PTR [eax],al
100101f4:	01 00                	add    DWORD PTR [eax],eax
100101f6:	00 00                	add    BYTE PTR [eax],al
100101f8:	00 00                	add    BYTE PTR [eax],al
100101fa:	00 00                	add    BYTE PTR [eax],al
100101fc:	01 00                	add    DWORD PTR [eax],eax
	...
1001020a:	00 00                	add    BYTE PTR [eax],al
1001020c:	01 00                	add    DWORD PTR [eax],eax
	...
1001021a:	00 00                	add    BYTE PTR [eax],al
1001021c:	01 00                	add    DWORD PTR [eax],eax
1001021e:	00 00                	add    BYTE PTR [eax],al
10010220:	00 00                	add    BYTE PTR [eax],al
10010222:	00 00                	add    BYTE PTR [eax],al
10010224:	01 00                	add    DWORD PTR [eax],eax
10010226:	00 00                	add    BYTE PTR [eax],al
10010228:	00 00                	add    BYTE PTR [eax],al
1001022a:	00 00                	add    BYTE PTR [eax],al
1001022c:	01 00                	add    DWORD PTR [eax],eax
	...
1001023a:	00 00                	add    BYTE PTR [eax],al
1001023c:	01 00                	add    DWORD PTR [eax],eax
1001023e:	00 00                	add    BYTE PTR [eax],al
10010240:	00 00                	add    BYTE PTR [eax],al
10010242:	00 00                	add    BYTE PTR [eax],al
10010244:	01 00                	add    DWORD PTR [eax],eax
10010246:	00 00                	add    BYTE PTR [eax],al
10010248:	00 00                	add    BYTE PTR [eax],al
1001024a:	00 00                	add    BYTE PTR [eax],al
1001024c:	01 00                	add    DWORD PTR [eax],eax
	...
100102d6:	00 00                	add    BYTE PTR [eax],al
100102d8:	b6 5c                	mov    dh,0x5c
100102da:	00 10                	add    BYTE PTR [eax],dl
100102dc:	00 00                	add    BYTE PTR [eax],al
100102de:	00 00                	add    BYTE PTR [eax],al
100102e0:	02 00                	add    al,BYTE PTR [eax]
100102e2:	00 00                	add    BYTE PTR [eax],al
100102e4:	88 d7                	mov    bh,dl
100102e6:	00 10                	add    BYTE PTR [eax],dl
100102e8:	08 00                	or     BYTE PTR [eax],al
100102ea:	00 00                	add    BYTE PTR [eax],al
100102ec:	5c                   	pop    esp
100102ed:	d7                   	xlat   BYTE PTR ds:[ebx]
100102ee:	00 10                	add    BYTE PTR [eax],dl
100102f0:	09 00                	or     DWORD PTR [eax],eax
100102f2:	00 00                	add    BYTE PTR [eax],al
100102f4:	30 d7                	xor    bh,dl
100102f6:	00 10                	add    BYTE PTR [eax],dl
100102f8:	0a 00                	or     al,BYTE PTR [eax]
100102fa:	00 00                	add    BYTE PTR [eax],al
100102fc:	98                   	cwde   
100102fd:	d6                   	(bad)  
100102fe:	00 10                	add    BYTE PTR [eax],dl
10010300:	10 00                	adc    BYTE PTR [eax],al
10010302:	00 00                	add    BYTE PTR [eax],al
10010304:	6c                   	ins    BYTE PTR es:[edi],dx
10010305:	d6                   	(bad)  
10010306:	00 10                	add    BYTE PTR [eax],dl
10010308:	11 00                	adc    DWORD PTR [eax],eax
1001030a:	00 00                	add    BYTE PTR [eax],al
1001030c:	3c d6                	cmp    al,0xd6
1001030e:	00 10                	add    BYTE PTR [eax],dl
10010310:	12 00                	adc    al,BYTE PTR [eax]
10010312:	00 00                	add    BYTE PTR [eax],al
10010314:	18 d6                	sbb    dh,dl
10010316:	00 10                	add    BYTE PTR [eax],dl
10010318:	13 00                	adc    eax,DWORD PTR [eax]
1001031a:	00 00                	add    BYTE PTR [eax],al
1001031c:	ec                   	in     al,dx
1001031d:	d5 00                	aad    0x0
1001031f:	10 18                	adc    BYTE PTR [eax],bl
10010321:	00 00                	add    BYTE PTR [eax],al
10010323:	00 b4 d5 00 10 19 00 	add    BYTE PTR [ebp+edx*8+0x191000],dh
1001032a:	00 00                	add    BYTE PTR [eax],al
1001032c:	8c d5                	mov    ebp,ss
1001032e:	00 10                	add    BYTE PTR [eax],dl
10010330:	1a 00                	sbb    al,BYTE PTR [eax]
10010332:	00 00                	add    BYTE PTR [eax],al
10010334:	54                   	push   esp
10010335:	d5 00                	aad    0x0
10010337:	10 1b                	adc    BYTE PTR [ebx],bl
10010339:	00 00                	add    BYTE PTR [eax],al
1001033b:	00 1c d5 00 10 1c 00 	add    BYTE PTR [edx*8+0x1c1000],bl
10010342:	00 00                	add    BYTE PTR [eax],al
10010344:	f4                   	hlt    
10010345:	d4 00                	aam    0x0
10010347:	10 1e                	adc    BYTE PTR [esi],bl
10010349:	00 00                	add    BYTE PTR [eax],al
1001034b:	00 d4                	add    ah,dl
1001034d:	d4 00                	aam    0x0
1001034f:	10 1f                	adc    BYTE PTR [edi],bl
10010351:	00 00                	add    BYTE PTR [eax],al
10010353:	00 70 d4             	add    BYTE PTR [eax-0x2c],dh
10010356:	00 10                	add    BYTE PTR [eax],dl
10010358:	20 00                	and    BYTE PTR [eax],al
1001035a:	00 00                	add    BYTE PTR [eax],al
1001035c:	38 d4                	cmp    ah,dl
1001035e:	00 10                	add    BYTE PTR [eax],dl
10010360:	21 00                	and    DWORD PTR [eax],eax
10010362:	00 00                	add    BYTE PTR [eax],al
10010364:	40                   	inc    eax
10010365:	d3 00                	rol    DWORD PTR [eax],cl
10010367:	10 22                	adc    BYTE PTR [edx],ah
10010369:	00 00                	add    BYTE PTR [eax],al
1001036b:	00 a0 d2 00 10 78    	add    BYTE PTR [eax+0x781000d2],ah
10010371:	00 00                	add    BYTE PTR [eax],al
10010373:	00 90 d2 00 10 79    	add    BYTE PTR [eax+0x791000d2],dl
10010379:	00 00                	add    BYTE PTR [eax],al
1001037b:	00 80 d2 00 10 7a    	add    BYTE PTR [eax+0x7a1000d2],al
10010381:	00 00                	add    BYTE PTR [eax],al
10010383:	00 70 d2             	add    BYTE PTR [eax-0x2e],dh
10010386:	00 10                	add    BYTE PTR [eax],dl
10010388:	fc                   	cld    
10010389:	00 00                	add    BYTE PTR [eax],al
1001038b:	00 6c d2 00          	add    BYTE PTR [edx+edx*8+0x0],ch
1001038f:	10 ff                	adc    bh,bh
10010391:	00 00                	add    BYTE PTR [eax],al
10010393:	00 5c d2 00          	add    BYTE PTR [edx+edx*8+0x0],bl
10010397:	10 ff                	adc    bh,bh
10010399:	ff                   	(bad)  
1001039a:	ff                   	(bad)  
1001039b:	ff                   	(bad)  
1001039c:	ff                   	(bad)  
1001039d:	ff                   	(bad)  
1001039e:	ff                   	(bad)  
1001039f:	ff                   	(bad)  
100103a0:	ff                   	(bad)  
100103a1:	ff                   	(bad)  
100103a2:	ff                   	(bad)  
100103a3:	ff 80 0a 00 00 00    	inc    DWORD PTR [eax+0xa]
	...
100103dd:	00 00                	add    BYTE PTR [eax],al
100103df:	00 05 00 00 c0 0b    	add    BYTE PTR ds:0xbc00000,al
100103e5:	00 00                	add    BYTE PTR [eax],al
100103e7:	00 00                	add    BYTE PTR [eax],al
100103e9:	00 00                	add    BYTE PTR [eax],al
100103eb:	00 1d 00 00 c0 04    	add    BYTE PTR ds:0x4c00000,bl
100103f1:	00 00                	add    BYTE PTR [eax],al
100103f3:	00 00                	add    BYTE PTR [eax],al
100103f5:	00 00                	add    BYTE PTR [eax],al
100103f7:	00 96 00 00 c0 04    	add    BYTE PTR [esi+0x4c00000],dl
100103fd:	00 00                	add    BYTE PTR [eax],al
100103ff:	00 00                	add    BYTE PTR [eax],al
10010401:	00 00                	add    BYTE PTR [eax],al
10010403:	00 8d 00 00 c0 08    	add    BYTE PTR [ebp+0x8c00000],cl
10010409:	00 00                	add    BYTE PTR [eax],al
1001040b:	00 00                	add    BYTE PTR [eax],al
1001040d:	00 00                	add    BYTE PTR [eax],al
1001040f:	00 8e 00 00 c0 08    	add    BYTE PTR [esi+0x8c00000],cl
10010415:	00 00                	add    BYTE PTR [eax],al
10010417:	00 00                	add    BYTE PTR [eax],al
10010419:	00 00                	add    BYTE PTR [eax],al
1001041b:	00 8f 00 00 c0 08    	add    BYTE PTR [edi+0x8c00000],cl
10010421:	00 00                	add    BYTE PTR [eax],al
10010423:	00 00                	add    BYTE PTR [eax],al
10010425:	00 00                	add    BYTE PTR [eax],al
10010427:	00 90 00 00 c0 08    	add    BYTE PTR [eax+0x8c00000],dl
1001042d:	00 00                	add    BYTE PTR [eax],al
1001042f:	00 00                	add    BYTE PTR [eax],al
10010431:	00 00                	add    BYTE PTR [eax],al
10010433:	00 91 00 00 c0 08    	add    BYTE PTR [ecx+0x8c00000],dl
10010439:	00 00                	add    BYTE PTR [eax],al
1001043b:	00 00                	add    BYTE PTR [eax],al
1001043d:	00 00                	add    BYTE PTR [eax],al
1001043f:	00 92 00 00 c0 08    	add    BYTE PTR [edx+0x8c00000],dl
10010445:	00 00                	add    BYTE PTR [eax],al
10010447:	00 00                	add    BYTE PTR [eax],al
10010449:	00 00                	add    BYTE PTR [eax],al
1001044b:	00 93 00 00 c0 08    	add    BYTE PTR [ebx+0x8c00000],dl
10010451:	00 00                	add    BYTE PTR [eax],al
10010453:	00 00                	add    BYTE PTR [eax],al
10010455:	00 00                	add    BYTE PTR [eax],al
10010457:	00 03                	add    BYTE PTR [ebx],al
10010459:	00 00                	add    BYTE PTR [eax],al
1001045b:	00 07                	add    BYTE PTR [edi],al
1001045d:	00 00                	add    BYTE PTR [eax],al
1001045f:	00 78 00             	add    BYTE PTR [eax+0x0],bh
10010462:	00 00                	add    BYTE PTR [eax],al
10010464:	0a 00                	or     al,BYTE PTR [eax]
	...
100104ce:	10 10                	adc    BYTE PTR [eax],dl
100104d0:	10 10                	adc    BYTE PTR [eax],dl
100104d2:	10 10                	adc    BYTE PTR [eax],dl
100104d4:	10 10                	adc    BYTE PTR [eax],dl
100104d6:	10 10                	adc    BYTE PTR [eax],dl
100104d8:	10 10                	adc    BYTE PTR [eax],dl
100104da:	10 10                	adc    BYTE PTR [eax],dl
100104dc:	10 10                	adc    BYTE PTR [eax],dl
100104de:	10 10                	adc    BYTE PTR [eax],dl
100104e0:	10 10                	adc    BYTE PTR [eax],dl
100104e2:	10 10                	adc    BYTE PTR [eax],dl
100104e4:	10 10                	adc    BYTE PTR [eax],dl
100104e6:	10 10                	adc    BYTE PTR [eax],dl
100104e8:	00 00                	add    BYTE PTR [eax],al
100104ea:	00 00                	add    BYTE PTR [eax],al
100104ec:	00 00                	add    BYTE PTR [eax],al
100104ee:	20 20                	and    BYTE PTR [eax],ah
100104f0:	20 20                	and    BYTE PTR [eax],ah
100104f2:	20 20                	and    BYTE PTR [eax],ah
100104f4:	20 20                	and    BYTE PTR [eax],ah
100104f6:	20 20                	and    BYTE PTR [eax],ah
100104f8:	20 20                	and    BYTE PTR [eax],ah
100104fa:	20 20                	and    BYTE PTR [eax],ah
100104fc:	20 20                	and    BYTE PTR [eax],ah
100104fe:	20 20                	and    BYTE PTR [eax],ah
10010500:	20 20                	and    BYTE PTR [eax],ah
10010502:	20 20                	and    BYTE PTR [eax],ah
10010504:	20 20                	and    BYTE PTR [eax],ah
10010506:	20 20                	and    BYTE PTR [eax],ah
	...
100105cc:	00 00                	add    BYTE PTR [eax],al
100105ce:	61                   	popa   
100105cf:	62 63 64             	bound  esp,QWORD PTR [ebx+0x64]
100105d2:	65 66 67 68 69 6a    	gs addr16 pushw 0x6a69
100105d8:	6b 6c 6d 6e 6f       	imul   ebp,DWORD PTR [ebp+ebp*2+0x6e],0x6f
100105dd:	70 71                	jo     0x10010650
100105df:	72 73                	jb     0x10010654
100105e1:	74 75                	je     0x10010658
100105e3:	76 77                	jbe    0x1001065c
100105e5:	78 79                	js     0x10010660
100105e7:	7a 00                	jp     0x100105e9
100105e9:	00 00                	add    BYTE PTR [eax],al
100105eb:	00 00                	add    BYTE PTR [eax],al
100105ed:	00 41 42             	add    BYTE PTR [ecx+0x42],al
100105f0:	43                   	inc    ebx
100105f1:	44                   	inc    esp
100105f2:	45                   	inc    ebp
100105f3:	46                   	inc    esi
100105f4:	47                   	inc    edi
100105f5:	48                   	dec    eax
100105f6:	49                   	dec    ecx
100105f7:	4a                   	dec    edx
100105f8:	4b                   	dec    ebx
100105f9:	4c                   	dec    esp
100105fa:	4d                   	dec    ebp
100105fb:	4e                   	dec    esi
100105fc:	4f                   	dec    edi
100105fd:	50                   	push   eax
100105fe:	51                   	push   ecx
100105ff:	52                   	push   edx
10010600:	53                   	push   ebx
10010601:	54                   	push   esp
10010602:	55                   	push   ebp
10010603:	56                   	push   esi
10010604:	57                   	push   edi
10010605:	58                   	pop    eax
10010606:	59                   	pop    ecx
10010607:	5a                   	pop    edx
	...
100106d0:	00 00                	add    BYTE PTR [eax],al
100106d2:	10 10                	adc    BYTE PTR [eax],dl
100106d4:	10 10                	adc    BYTE PTR [eax],dl
100106d6:	10 10                	adc    BYTE PTR [eax],dl
100106d8:	10 10                	adc    BYTE PTR [eax],dl
100106da:	10 10                	adc    BYTE PTR [eax],dl
100106dc:	10 10                	adc    BYTE PTR [eax],dl
100106de:	10 10                	adc    BYTE PTR [eax],dl
100106e0:	10 10                	adc    BYTE PTR [eax],dl
100106e2:	10 10                	adc    BYTE PTR [eax],dl
100106e4:	10 10                	adc    BYTE PTR [eax],dl
100106e6:	10 10                	adc    BYTE PTR [eax],dl
100106e8:	10 10                	adc    BYTE PTR [eax],dl
100106ea:	10 10                	adc    BYTE PTR [eax],dl
100106ec:	00 00                	add    BYTE PTR [eax],al
100106ee:	00 00                	add    BYTE PTR [eax],al
100106f0:	00 00                	add    BYTE PTR [eax],al
100106f2:	20 20                	and    BYTE PTR [eax],ah
100106f4:	20 20                	and    BYTE PTR [eax],ah
100106f6:	20 20                	and    BYTE PTR [eax],ah
100106f8:	20 20                	and    BYTE PTR [eax],ah
100106fa:	20 20                	and    BYTE PTR [eax],ah
100106fc:	20 20                	and    BYTE PTR [eax],ah
100106fe:	20 20                	and    BYTE PTR [eax],ah
10010700:	20 20                	and    BYTE PTR [eax],ah
10010702:	20 20                	and    BYTE PTR [eax],ah
10010704:	20 20                	and    BYTE PTR [eax],ah
10010706:	20 20                	and    BYTE PTR [eax],ah
10010708:	20 20                	and    BYTE PTR [eax],ah
1001070a:	20 20                	and    BYTE PTR [eax],ah
	...
100107d8:	00 61 62             	add    BYTE PTR [ecx+0x62],ah
100107db:	63 64 65 66          	arpl   WORD PTR [ebp+eiz*2+0x66],sp
100107df:	67 68 69 6a 6b 6c    	addr16 push 0x6c6b6a69
100107e5:	6d                   	ins    DWORD PTR es:[edi],dx
100107e6:	6e                   	outs   dx,BYTE PTR ds:[esi]
100107e7:	6f                   	outs   dx,DWORD PTR ds:[esi]
100107e8:	70 71                	jo     0x1001085b
100107ea:	72 73                	jb     0x1001085f
100107ec:	74 75                	je     0x10010863
100107ee:	76 77                	jbe    0x10010867
100107f0:	78 79                	js     0x1001086b
100107f2:	7a 00                	jp     0x100107f4
100107f4:	00 00                	add    BYTE PTR [eax],al
100107f6:	00 00                	add    BYTE PTR [eax],al
100107f8:	00 41 42             	add    BYTE PTR [ecx+0x42],al
100107fb:	43                   	inc    ebx
100107fc:	44                   	inc    esp
100107fd:	45                   	inc    ebp
100107fe:	46                   	inc    esi
100107ff:	47                   	inc    edi
10010800:	48                   	dec    eax
10010801:	49                   	dec    ecx
10010802:	4a                   	dec    edx
10010803:	4b                   	dec    ebx
10010804:	4c                   	dec    esp
10010805:	4d                   	dec    ebp
10010806:	4e                   	dec    esi
10010807:	4f                   	dec    edi
10010808:	50                   	push   eax
10010809:	51                   	push   ecx
1001080a:	52                   	push   edx
1001080b:	53                   	push   ebx
1001080c:	54                   	push   esp
1001080d:	55                   	push   ebp
1001080e:	56                   	push   esi
1001080f:	57                   	push   edi
10010810:	58                   	pop    eax
10010811:	59                   	pop    ecx
10010812:	5a                   	pop    edx
	...
10010897:	00 70 04             	add    BYTE PTR [eax+0x4],dh
1001089a:	01 10                	add    DWORD PTR [eax],edx
1001089c:	01 02                	add    DWORD PTR [edx],eax
1001089e:	04 08                	add    al,0x8
100108a0:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
100108a1:	03 00                	add    eax,DWORD PTR [eax]
100108a3:	00 60 82             	add    BYTE PTR [eax-0x7e],ah
100108a6:	79 82                	jns    0x1001082a
100108a8:	21 00                	and    DWORD PTR [eax],eax
100108aa:	00 00                	add    BYTE PTR [eax],al
100108ac:	00 00                	add    BYTE PTR [eax],al
100108ae:	00 00                	add    BYTE PTR [eax],al
100108b0:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
100108b1:	df 00                	fild   WORD PTR [eax]
100108b3:	00 00                	add    BYTE PTR [eax],al
100108b5:	00 00                	add    BYTE PTR [eax],al
100108b7:	00 a1 a5 00 00 00    	add    BYTE PTR [ecx+0xa5],ah
100108bd:	00 00                	add    BYTE PTR [eax],al
100108bf:	00 81 9f e0 fc 00    	add    BYTE PTR [ecx+0xfce09f],al
100108c5:	00 00                	add    BYTE PTR [eax],al
100108c7:	00 40 7e             	add    BYTE PTR [eax+0x7e],al
100108ca:	80 fc 00             	cmp    ah,0x0
100108cd:	00 00                	add    BYTE PTR [eax],al
100108cf:	00 a8 03 00 00 c1    	add    BYTE PTR [eax-0x3efffffd],ch
100108d5:	a3 da a3 20 00       	mov    ds:0x20a3da,eax
	...
100108ee:	00 00                	add    BYTE PTR [eax],al
100108f0:	81 fe 00 00 00 00    	cmp    esi,0x0
100108f6:	00 00                	add    BYTE PTR [eax],al
100108f8:	40                   	inc    eax
100108f9:	fe 00                	inc    BYTE PTR [eax]
100108fb:	00 00                	add    BYTE PTR [eax],al
100108fd:	00 00                	add    BYTE PTR [eax],al
100108ff:	00 b5 03 00 00 c1    	add    BYTE PTR [ebp-0x3efffffd],dh
10010905:	a3 da a3 20 00       	mov    ds:0x20a3da,eax
	...
1001091e:	00 00                	add    BYTE PTR [eax],al
10010920:	81 fe 00 00 00 00    	cmp    esi,0x0
10010926:	00 00                	add    BYTE PTR [eax],al
10010928:	41                   	inc    ecx
10010929:	fe 00                	inc    BYTE PTR [eax]
1001092b:	00 00                	add    BYTE PTR [eax],al
1001092d:	00 00                	add    BYTE PTR [eax],al
1001092f:	00 b6 03 00 00 cf    	add    BYTE PTR [esi-0x30fffffd],dh
10010935:	a2 e4 a2 1a 00       	mov    ds:0x1aa2e4,al
1001093a:	e5 a2                	in     eax,0xa2
1001093c:	e8 a2 5b 00 00       	call   0x100164e3
	...
1001094d:	00 00                	add    BYTE PTR [eax],al
1001094f:	00 81 fe 00 00 00    	add    BYTE PTR [ecx+0xfe],al
10010955:	00 00                	add    BYTE PTR [eax],al
10010957:	00 40 7e             	add    BYTE PTR [eax+0x7e],al
1001095a:	a1 fe 00 00 00       	mov    eax,ds:0xfe
1001095f:	00 51 05             	add    BYTE PTR [ecx+0x5],dl
10010962:	00 00                	add    BYTE PTR [eax],al
10010964:	51                   	push   ecx
10010965:	da 5e da             	ficomp DWORD PTR [esi-0x26]
10010968:	20 00                	and    BYTE PTR [eax],al
1001096a:	5f                   	pop    edi
1001096b:	da 6a da             	fisubr DWORD PTR [edx-0x26]
1001096e:	32 00                	xor    al,BYTE PTR [eax]
	...
10010980:	81 d3 d8 de e0 f9    	adc    ebx,0xf9e0ded8
10010986:	00 00                	add    BYTE PTR [eax],al
10010988:	31 7e 81             	xor    DWORD PTR [esi-0x7f],edi
1001098b:	fe 00                	inc    BYTE PTR [eax]
1001098d:	00 00                	add    BYTE PTR [eax],al
1001098f:	00 bc dc 00 10 fe ff 	add    BYTE PTR [esp+ebx*8-0x1f000],bh
10010996:	ff                   	(bad)  
10010997:	ff 43 00             	inc    DWORD PTR [ebx+0x0]
1001099a:	00 00                	add    BYTE PTR [eax],al
1001099c:	00 00                	add    BYTE PTR [eax],al
1001099e:	00 00                	add    BYTE PTR [eax],al
100109a0:	01 00                	add    DWORD PTR [eax],eax
	...
100109f6:	00 00                	add    BYTE PTR [eax],al
100109f8:	98                   	cwde   
100109f9:	09 01                	or     DWORD PTR [ecx],eax
100109fb:	10 00                	adc    BYTE PTR [eax],al
	...
10010a05:	00 00                	add    BYTE PTR [eax],al
10010a07:	00 98 09 01 10 00    	add    BYTE PTR [eax+0x100109],bl
	...
10010a15:	00 00                	add    BYTE PTR [eax],al
10010a17:	00 98 09 01 10 00    	add    BYTE PTR [eax+0x100109],bl
	...
10010a25:	00 00                	add    BYTE PTR [eax],al
10010a27:	00 98 09 01 10 00    	add    BYTE PTR [eax+0x100109],bl
	...
10010a35:	00 00                	add    BYTE PTR [eax],al
10010a37:	00 98 09 01 10 00    	add    BYTE PTR [eax+0x100109],bl
	...
10010a45:	00 00                	add    BYTE PTR [eax],al
10010a47:	00 01                	add    BYTE PTR [ecx],al
10010a49:	00 00                	add    BYTE PTR [eax],al
10010a4b:	00 01                	add    BYTE PTR [ecx],al
	...
10010a59:	00 00                	add    BYTE PTR [eax],al
10010a5b:	00 58 0b             	add    BYTE PTR [eax+0xb],bl
10010a5e:	01 10                	add    DWORD PTR [eax],edx
	...
10010a68:	b8 da 00 10 40       	mov    eax,0x401000da
10010a6d:	df 00                	fild   WORD PTR [eax]
10010a6f:	10 c0                	adc    al,al
10010a71:	e0 00                	loopne 0x10010a73
10010a73:	10 98 0a 01 10 a0    	adc    BYTE PTR [eax-0x5feffef6],bl
10010a79:	09 01                	or     DWORD PTR [ecx],eax
10010a7b:	10 01                	adc    BYTE PTR [ecx],al
10010a7d:	00 00                	add    BYTE PTR [eax],al
10010a7f:	00 a0 09 01 10 70    	add    BYTE PTR [eax+0x70100109],ah
10010a85:	04 01                	add    al,0x1
10010a87:	10 00                	adc    BYTE PTR [eax],al
10010a89:	00 00                	add    BYTE PTR [eax],al
10010a8b:	00 00                	add    BYTE PTR [eax],al
10010a8d:	00 00                	add    BYTE PTR [eax],al
10010a8f:	00 b8 da 00 10 ba    	add    BYTE PTR [eax-0x45efff26],bh
10010a95:	dc 00                	fadd   QWORD PTR [eax]
10010a97:	10 e8                	adc    al,ch
10010a99:	e2 00                	loop   0x10010a9b
10010a9b:	10 e4                	adc    ah,ah
10010a9d:	e2 00                	loop   0x10010a9f
10010a9f:	10 e0                	adc    al,ah
10010aa1:	e2 00                	loop   0x10010aa3
10010aa3:	10 dc                	adc    ah,bl
10010aa5:	e2 00                	loop   0x10010aa7
10010aa7:	10 d8                	adc    al,bl
10010aa9:	e2 00                	loop   0x10010aab
10010aab:	10 d4                	adc    ah,dl
10010aad:	e2 00                	loop   0x10010aaf
10010aaf:	10 d0                	adc    al,dl
10010ab1:	e2 00                	loop   0x10010ab3
10010ab3:	10 c8                	adc    al,cl
10010ab5:	e2 00                	loop   0x10010ab7
10010ab7:	10 c0                	adc    al,al
10010ab9:	e2 00                	loop   0x10010abb
10010abb:	10 b8 e2 00 10 ac    	adc    BYTE PTR [eax-0x53efff1e],bh
10010ac1:	e2 00                	loop   0x10010ac3
10010ac3:	10 a0 e2 00 10 98    	adc    BYTE PTR [eax-0x67efff1e],ah
10010ac9:	e2 00                	loop   0x10010acb
10010acb:	10 8c e2 00 10 88 e2 	adc    BYTE PTR [edx+eiz*8-0x1d77f000],cl
10010ad2:	00 10                	add    BYTE PTR [eax],dl
10010ad4:	84 e2                	test   dl,ah
10010ad6:	00 10                	add    BYTE PTR [eax],dl
10010ad8:	80 e2 00             	and    dl,0x0
10010adb:	10 7c e2 00          	adc    BYTE PTR [edx+eiz*8+0x0],bh
10010adf:	10 78 e2             	adc    BYTE PTR [eax-0x1e],bh
10010ae2:	00 10                	add    BYTE PTR [eax],dl
10010ae4:	74 e2                	je     0x10010ac8
10010ae6:	00 10                	add    BYTE PTR [eax],dl
10010ae8:	70 e2                	jo     0x10010acc
10010aea:	00 10                	add    BYTE PTR [eax],dl
10010aec:	6c                   	ins    BYTE PTR es:[edi],dx
10010aed:	e2 00                	loop   0x10010aef
10010aef:	10 68 e2             	adc    BYTE PTR [eax-0x1e],ch
10010af2:	00 10                	add    BYTE PTR [eax],dl
10010af4:	64 e2 00             	fs loop 0x10010af7
10010af7:	10 60 e2             	adc    BYTE PTR [eax-0x1e],ah
10010afa:	00 10                	add    BYTE PTR [eax],dl
10010afc:	5c                   	pop    esp
10010afd:	e2 00                	loop   0x10010aff
10010aff:	10 54 e2 00          	adc    BYTE PTR [edx+eiz*8+0x0],dl
10010b03:	10 48 e2             	adc    BYTE PTR [eax-0x1e],cl
10010b06:	00 10                	add    BYTE PTR [eax],dl
10010b08:	40                   	inc    eax
10010b09:	e2 00                	loop   0x10010b0b
10010b0b:	10 38                	adc    BYTE PTR [eax],bh
10010b0d:	e2 00                	loop   0x10010b0f
10010b0f:	10 78 e2             	adc    BYTE PTR [eax-0x1e],bh
10010b12:	00 10                	add    BYTE PTR [eax],dl
10010b14:	30 e2                	xor    dl,ah
10010b16:	00 10                	add    BYTE PTR [eax],dl
10010b18:	28 e2                	sub    dl,ah
10010b1a:	00 10                	add    BYTE PTR [eax],dl
10010b1c:	20 e2                	and    dl,ah
10010b1e:	00 10                	add    BYTE PTR [eax],dl
10010b20:	14 e2                	adc    al,0xe2
10010b22:	00 10                	add    BYTE PTR [eax],dl
10010b24:	0c e2                	or     al,0xe2
10010b26:	00 10                	add    BYTE PTR [eax],dl
10010b28:	00 e2                	add    dl,ah
10010b2a:	00 10                	add    BYTE PTR [eax],dl
10010b2c:	f4                   	hlt    
10010b2d:	e1 00                	loope  0x10010b2f
10010b2f:	10 f0                	adc    al,dh
10010b31:	e1 00                	loope  0x10010b33
10010b33:	10 ec                	adc    ah,ch
10010b35:	e1 00                	loope  0x10010b37
10010b37:	10 e0                	adc    al,ah
10010b39:	e1 00                	loope  0x10010b3b
10010b3b:	10 cc                	adc    ah,cl
10010b3d:	e1 00                	loope  0x10010b3f
10010b3f:	10 c0                	adc    al,al
10010b41:	e1 00                	loope  0x10010b43
10010b43:	10 09                	adc    BYTE PTR [ecx],cl
10010b45:	04 00                	add    al,0x0
10010b47:	00 01                	add    BYTE PTR [ecx],al
10010b49:	00 00                	add    BYTE PTR [eax],al
10010b4b:	00 00                	add    BYTE PTR [eax],al
10010b4d:	00 00                	add    BYTE PTR [eax],al
10010b4f:	00 98 0a 01 10 2e    	add    BYTE PTR [eax+0x2e10010a],bl
10010b55:	00 00                	add    BYTE PTR [eax],al
10010b57:	00 54 0b 01          	add    BYTE PTR [ebx+ecx*1+0x1],dl
10010b5b:	10 e4                	adc    ah,ah
10010b5d:	5b                   	pop    ebx
10010b5e:	01 10                	add    DWORD PTR [eax],edx
10010b60:	e4 5b                	in     al,0x5b
10010b62:	01 10                	add    DWORD PTR [eax],edx
10010b64:	e4 5b                	in     al,0x5b
10010b66:	01 10                	add    DWORD PTR [eax],edx
10010b68:	e4 5b                	in     al,0x5b
10010b6a:	01 10                	add    DWORD PTR [eax],edx
10010b6c:	e4 5b                	in     al,0x5b
10010b6e:	01 10                	add    DWORD PTR [eax],edx
10010b70:	e4 5b                	in     al,0x5b
10010b72:	01 10                	add    DWORD PTR [eax],edx
10010b74:	e4 5b                	in     al,0x5b
10010b76:	01 10                	add    DWORD PTR [eax],edx
10010b78:	e4 5b                	in     al,0x5b
10010b7a:	01 10                	add    DWORD PTR [eax],edx
10010b7c:	e4 5b                	in     al,0x5b
10010b7e:	01 10                	add    DWORD PTR [eax],edx
10010b80:	7f 7f                	jg     0x10010c01
10010b82:	7f 7f                	jg     0x10010c03
10010b84:	7f 7f                	jg     0x10010c05
10010b86:	7f 7f                	jg     0x10010c07
10010b88:	58                   	pop    eax
10010b89:	0b 01                	or     eax,DWORD PTR [ecx]
10010b8b:	10 01                	adc    BYTE PTR [ecx],al
10010b8d:	00 00                	add    BYTE PTR [eax],al
10010b8f:	00 2e                	add    BYTE PTR [esi],ch
10010b91:	00 00                	add    BYTE PTR [eax],al
10010b93:	00 01                	add    BYTE PTR [ecx],al
	...
10010ba1:	04 00                	add    al,0x0
10010ba3:	00 01                	add    BYTE PTR [ecx],al
10010ba5:	fc                   	cld    
10010ba6:	ff                   	(bad)  
10010ba7:	ff 35 00 00 00 0b    	push   DWORD PTR ds:0xb000000
10010bad:	00 00                	add    BYTE PTR [eax],al
10010baf:	00 40 00             	add    BYTE PTR [eax+0x0],al
10010bb2:	00 00                	add    BYTE PTR [eax],al
10010bb4:	ff 03                	inc    DWORD PTR [ebx]
10010bb6:	00 00                	add    BYTE PTR [eax],al
10010bb8:	80 00 00             	add    BYTE PTR [eax],0x0
10010bbb:	00 81 ff ff ff 18    	add    BYTE PTR [ecx+0x18ffffff],al
10010bc1:	00 00                	add    BYTE PTR [eax],al
10010bc3:	00 08                	add    BYTE PTR [eax],cl
10010bc5:	00 00                	add    BYTE PTR [eax],al
10010bc7:	00 20                	add    BYTE PTR [eax],ah
10010bc9:	00 00                	add    BYTE PTR [eax],al
10010bcb:	00 7f 00             	add    BYTE PTR [edi+0x0],bh
10010bce:	00 00                	add    BYTE PTR [eax],al
10010bd0:	20 05 93 19 00 00    	and    BYTE PTR ds:0x1993,al
	...
10010bde:	00 00                	add    BYTE PTR [eax],al
10010be0:	03 00                	add    eax,DWORD PTR [eax]
	...
10010bee:	00 00                	add    BYTE PTR [eax],al
10010bf0:	80 70 00 00          	xor    BYTE PTR [eax+0x0],0x0
10010bf4:	01 00                	add    DWORD PTR [eax],eax
10010bf6:	00 00                	add    BYTE PTR [eax],al
10010bf8:	f0 f1                	lock icebp 
10010bfa:	ff                   	(bad)  
10010bfb:	ff 00                	inc    DWORD PTR [eax]
10010bfd:	00 00                	add    BYTE PTR [eax],al
10010bff:	00 50 53             	add    BYTE PTR [eax+0x53],dl
10010c02:	54                   	push   esp
	...
10010c3f:	00 50 44             	add    BYTE PTR [eax+0x44],dl
10010c42:	54                   	push   esp
	...
10010c7f:	00 00                	add    BYTE PTR [eax],al
10010c81:	0c 01                	or     al,0x1
10010c83:	10 40 0c             	adc    BYTE PTR [eax+0xc],al
10010c86:	01 10                	add    DWORD PTR [eax],edx
10010c88:	ff                   	(bad)  
10010c89:	ff                   	(bad)  
10010c8a:	ff                   	(bad)  
10010c8b:	ff 00                	inc    DWORD PTR [eax]
10010c8d:	00 00                	add    BYTE PTR [eax],al
10010c8f:	00 00                	add    BYTE PTR [eax],al
10010c91:	00 00                	add    BYTE PTR [eax],al
10010c93:	00 ff                	add    bh,bh
10010c95:	ff                   	(bad)  
10010c96:	ff                   	(bad)  
10010c97:	ff 00                	inc    DWORD PTR [eax]
	...
10010ca9:	a0 02 40 00 00       	mov    al,ds:0x4002
10010cae:	00 00                	add    BYTE PTR [eax],al
10010cb0:	00 00                	add    BYTE PTR [eax],al
10010cb2:	00 00                	add    BYTE PTR [eax],al
10010cb4:	00 c8                	add    al,cl
10010cb6:	05 40 00 00 00       	add    eax,0x40
10010cbb:	00 00                	add    BYTE PTR [eax],al
10010cbd:	00 00                	add    BYTE PTR [eax],al
10010cbf:	00 00                	add    BYTE PTR [eax],al
10010cc1:	fa                   	cli    
10010cc2:	08 40 00             	or     BYTE PTR [eax+0x0],al
10010cc5:	00 00                	add    BYTE PTR [eax],al
10010cc7:	00 00                	add    BYTE PTR [eax],al
10010cc9:	00 00                	add    BYTE PTR [eax],al
10010ccb:	00 40 9c             	add    BYTE PTR [eax-0x64],al
10010cce:	0c 40                	or     al,0x40
	...
10010cd8:	50                   	push   eax
10010cd9:	c3                   	ret    
10010cda:	0f 40 00             	cmovo  eax,DWORD PTR [eax]
10010cdd:	00 00                	add    BYTE PTR [eax],al
10010cdf:	00 00                	add    BYTE PTR [eax],al
10010ce1:	00 00                	add    BYTE PTR [eax],al
10010ce3:	00 24 f4             	add    BYTE PTR [esp+esi*8],ah
10010ce6:	12 40 00             	adc    al,BYTE PTR [eax+0x0]
10010ce9:	00 00                	add    BYTE PTR [eax],al
10010ceb:	00 00                	add    BYTE PTR [eax],al
10010ced:	00 00                	add    BYTE PTR [eax],al
10010cef:	80 96 98 16 40 00 00 	adc    BYTE PTR [esi+0x401698],0x0
10010cf6:	00 00                	add    BYTE PTR [eax],al
10010cf8:	00 00                	add    BYTE PTR [eax],al
10010cfa:	00 20                	add    BYTE PTR [eax],ah
10010cfc:	bc be 19 40 00       	mov    esp,0x4019be
10010d01:	00 00                	add    BYTE PTR [eax],al
10010d03:	00 00                	add    BYTE PTR [eax],al
10010d05:	04 bf                	add    al,0xbf
10010d07:	c9                   	leave  
10010d08:	1b 8e 34 40 00 00    	sbb    ecx,DWORD PTR [esi+0x4034]
10010d0e:	00 a1 ed cc ce 1b    	add    BYTE PTR [ecx+0x1bcecced],ah
10010d14:	c2 d3 4e             	ret    0x4ed3
10010d17:	40                   	inc    eax
10010d18:	20 f0                	and    al,dh
10010d1a:	9e                   	sahf   
10010d1b:	b5 70                	mov    ch,0x70
10010d1d:	2b a8 ad c5 9d 69    	sub    ebp,DWORD PTR [eax+0x699dc5ad]
10010d23:	40                   	inc    eax
10010d24:	d0 5d fd             	rcr    BYTE PTR [ebp-0x3],1
10010d27:	25 e5 1a 8e 4f       	and    eax,0x4f8e1ae5
10010d2c:	19 eb                	sbb    ebx,ebp
10010d2e:	83 40 71 96          	add    DWORD PTR [eax+0x71],0xffffff96
10010d32:	d7                   	xlat   BYTE PTR ds:[ebx]
10010d33:	95                   	xchg   ebp,eax
10010d34:	43                   	inc    ebx
10010d35:	0e                   	push   cs
10010d36:	05 8d 29 af 9e       	add    eax,0x9eaf298d
10010d3b:	40                   	inc    eax
10010d3c:	f9                   	stc    
10010d3d:	bf a0 44 ed 81       	mov    edi,0x81ed44a0
10010d42:	12 8f 81 82 b9 40    	adc    cl,BYTE PTR [edi+0x40b98281]
10010d48:	bf 3c d5 a6 cf       	mov    edi,0xcfa6d53c
10010d4d:	ff 49 1f             	dec    DWORD PTR [ecx+0x1f]
10010d50:	78 c2                	js     0x10010d14
10010d52:	d3 40 6f             	rol    DWORD PTR [eax+0x6f],cl
10010d55:	c6                   	(bad)  
10010d56:	e0 8c                	loopne 0x10010ce4
10010d58:	e9 80 c9 47 ba       	jmp    0xca48d6dd
10010d5d:	93                   	xchg   ebx,eax
10010d5e:	a8 41                	test   al,0x41
10010d60:	bc 85 6b 55 27       	mov    esp,0x27556b85
10010d65:	39 8d f7 70 e0 7c    	cmp    DWORD PTR [ebp+0x7ce070f7],ecx
10010d6b:	42                   	inc    edx
10010d6c:	bc dd 8e de f9       	mov    esp,0xf9de8edd
10010d71:	9d                   	popf   
10010d72:	fb                   	sti    
10010d73:	eb 7e                	jmp    0x10010df3
10010d75:	aa                   	stos   BYTE PTR es:[edi],al
10010d76:	51                   	push   ecx
10010d77:	43                   	inc    ebx
10010d78:	a1 e6 76 e3 cc       	mov    eax,ds:0xcce376e6
10010d7d:	f2 29 2f             	repnz sub DWORD PTR [edi],ebp
10010d80:	84 81 26 44 28 10    	test   BYTE PTR [ecx+0x10284426],al
10010d86:	17                   	pop    ss
10010d87:	aa                   	stos   BYTE PTR es:[edi],al
10010d88:	f8                   	clc    
10010d89:	ae                   	scas   al,BYTE PTR es:[edi]
10010d8a:	10 e3                	adc    bl,ah
10010d8c:	c5 c4 fa             	(bad)  
10010d8f:	44                   	inc    esp
10010d90:	eb a7                	jmp    0x10010d39
10010d92:	d4 f3                	aam    0xf3
10010d94:	f7 eb                	imul   ebx
10010d96:	e1 4a                	loope  0x10010de2
10010d98:	7a 95                	jp     0x10010d2f
10010d9a:	cf                   	iret   
10010d9b:	45                   	inc    ebp
10010d9c:	65 cc                	gs int3 
10010d9e:	c7                   	(bad)  
10010d9f:	91                   	xchg   ecx,eax
10010da0:	0e                   	push   cs
10010da1:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
10010da2:	ae                   	scas   al,BYTE PTR es:[edi]
10010da3:	a0 19 e3 a3 46       	mov    al,ds:0x46a3e319
10010da8:	0d 65 17 0c 75       	or     eax,0x750c1765
10010dad:	81 86 75 76 c9 48 4d 	add    DWORD PTR [esi+0x48c97675],0xe442584d
10010db4:	58 42 e4 
10010db7:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
10010db8:	93                   	xchg   ebx,eax
10010db9:	39 3b                	cmp    DWORD PTR [ebx],edi
10010dbb:	35 b8 b2 ed 53       	xor    eax,0x53edb2b8
10010dc0:	4d                   	dec    ebp
10010dc1:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
10010dc2:	e5 5d                	in     eax,0x5d
10010dc4:	3d c5 5d 3b 8b       	cmp    eax,0x8b3b5dc5
10010dc9:	9e                   	sahf   
10010dca:	92                   	xchg   edx,eax
10010dcb:	5a                   	pop    edx
10010dcc:	ff 5d a6             	call   FWORD PTR [ebp-0x5a]
10010dcf:	f0 a1 20 c0 54 a5    	lock mov eax,ds:0xa554c020
10010dd5:	8c 37                	mov    WORD PTR [edi],?
10010dd7:	61                   	popa   
10010dd8:	d1 fd                	sar    ebp,1
10010dda:	8b 5a 8b             	mov    ebx,DWORD PTR [edx-0x75]
10010ddd:	d8 25 5d 89 f9 db    	fsub   DWORD PTR ds:0xdbf9895d
10010de3:	67 aa                	stos   BYTE PTR es:[di],al
10010de5:	95                   	xchg   ebp,eax
10010de6:	f8                   	clc    
10010de7:	f3 27                	repz daa 
10010de9:	bf a2 c8 5d dd       	mov    edi,0xdd5dc8a2
10010dee:	80 6e 4c c9          	sub    BYTE PTR [esi+0x4c],0xc9
10010df2:	9b                   	fwait
10010df3:	97                   	xchg   edi,eax
10010df4:	20 8a 02 52 60 c4    	and    BYTE PTR [edx-0x3b9fadfe],cl
10010dfa:	25 75 00 00 00       	and    eax,0x75
10010dff:	00 cd                	add    ch,cl
10010e01:	cc                   	int3   
10010e02:	cd cc                	int    0xcc
10010e04:	cc                   	int3   
10010e05:	cc                   	int3   
10010e06:	cc                   	int3   
10010e07:	cc                   	int3   
10010e08:	cc                   	int3   
10010e09:	cc                   	int3   
10010e0a:	fb                   	sti    
10010e0b:	3f                   	aas    
10010e0c:	71 3d                	jno    0x10010e4b
10010e0e:	0a d7                	or     dl,bh
10010e10:	a3 70 3d 0a d7       	mov    ds:0xd70a3d70,eax
10010e15:	a3 f8 3f 5a 64       	mov    ds:0x645a3ff8,eax
10010e1a:	3b df                	cmp    ebx,edi
10010e1c:	4f                   	dec    edi
10010e1d:	8d 97 6e 12 83 f5    	lea    edx,[edi-0xa7ced92]
10010e23:	3f                   	aas    
10010e24:	c3                   	ret    
10010e25:	d3 2c 65 19 e2 58 17 	shr    DWORD PTR [eiz*2+0x1758e219],cl
10010e2c:	b7 d1                	mov    bh,0xd1
10010e2e:	f1                   	icebp  
10010e2f:	3f                   	aas    
10010e30:	d0 0f                	ror    BYTE PTR [edi],1
10010e32:	23 84 47 1b 47 ac c5 	and    eax,DWORD PTR [edi+eax*2-0x3a53b8e5]
10010e39:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
10010e3a:	ee                   	out    dx,al
10010e3b:	3f                   	aas    
10010e3c:	40                   	inc    eax
10010e3d:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
10010e3e:	b6 69                	mov    dh,0x69
10010e40:	6c                   	ins    BYTE PTR es:[edi],dx
10010e41:	af                   	scas   eax,DWORD PTR es:[edi]
10010e42:	05 bd 37 86 eb       	add    eax,0xeb8637bd
10010e47:	3f                   	aas    
10010e48:	33 3d bc 42 7a e5    	xor    edi,DWORD PTR ds:0xe57a42bc
10010e4e:	d5 94                	aad    0x94
10010e50:	bf d6 e7 3f c2       	mov    edi,0xc23fe7d6
10010e55:	fd                   	std    
10010e56:	fd                   	std    
10010e57:	ce                   	into   
10010e58:	61                   	popa   
10010e59:	84 11                	test   BYTE PTR [ecx],dl
10010e5b:	77 cc                	ja     0x10010e29
10010e5d:	ab                   	stos   DWORD PTR es:[edi],eax
10010e5e:	e4 3f                	in     al,0x3f
10010e60:	2f                   	das    
10010e61:	4c                   	dec    esp
10010e62:	5b                   	pop    ebx
10010e63:	e1 4d                	loope  0x10010eb2
10010e65:	c4 be 94 95 e6 c9    	les    edi,FWORD PTR [esi-0x36196a6c]
10010e6b:	3f                   	aas    
10010e6c:	92                   	xchg   edx,eax
10010e6d:	c4 53 3b             	les    edx,FWORD PTR [ebx+0x3b]
10010e70:	75 44                	jne    0x10010eb6
10010e72:	cd 14                	int    0x14
10010e74:	be 9a af 3f de       	mov    esi,0xde3faf9a
10010e79:	67 ba 94 39 45 ad    	addr16 mov edx,0xad453994
10010e7f:	1e                   	push   ds
10010e80:	b1 cf                	mov    cl,0xcf
10010e82:	94                   	xchg   esp,eax
10010e83:	3f                   	aas    
10010e84:	24 23                	and    al,0x23
10010e86:	c6                   	(bad)  
10010e87:	e2 bc                	loop   0x10010e45
10010e89:	ba 3b 31 61 8b       	mov    edx,0x8b61313b
10010e8e:	7a 3f                	jp     0x10010ecf
10010e90:	61                   	popa   
10010e91:	55                   	push   ebp
10010e92:	59                   	pop    ecx
10010e93:	c1 7e b1 53          	sar    DWORD PTR [esi-0x4f],0x53
10010e97:	7c 12                	jl     0x10010eab
10010e99:	bb 5f 3f d7 ee       	mov    ebx,0xeed73f5f
10010e9e:	2f                   	das    
10010e9f:	8d 06                	lea    eax,[esi]
10010ea1:	be 92 85 15 fb       	mov    esi,0xfb158592
10010ea6:	44                   	inc    esp
10010ea7:	3f                   	aas    
10010ea8:	24 3f                	and    al,0x3f
10010eaa:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
10010eab:	e9 39 a5 27 ea       	jmp    0xfa28b3e9
10010eb0:	7f a8                	jg     0x10010e5a
10010eb2:	2a 3f                	sub    bh,BYTE PTR [edi]
10010eb4:	7d ac                	jge    0x10010e62
10010eb6:	a1 e4 bc 64 7c       	mov    eax,ds:0x7c64bce4
10010ebb:	46                   	inc    esi
10010ebc:	d0 dd                	rcr    ch,1
10010ebe:	55                   	push   ebp
10010ebf:	3e 63 7b 06          	arpl   WORD PTR ds:[ebx+0x6],di
10010ec3:	cc                   	int3   
10010ec4:	23 54 77 83          	and    edx,DWORD PTR [edi+esi*2-0x7d]
10010ec8:	ff 91 81 3d 91 fa    	call   DWORD PTR [ecx-0x56ec27f]
10010ece:	3a 19                	cmp    bl,BYTE PTR [ecx]
10010ed0:	7a 63                	jp     0x10010f35
10010ed2:	25 43 31 c0 ac       	and    eax,0xacc03143
10010ed7:	3c 21                	cmp    al,0x21
10010ed9:	89 d1                	mov    ecx,edx
10010edb:	38 82 47 97 b8 00    	cmp    BYTE PTR [edx+0xb89747],al
10010ee1:	fd                   	std    
10010ee2:	d7                   	xlat   BYTE PTR ds:[ebx]
10010ee3:	3b dc                	cmp    ebx,esp
10010ee5:	88 58 08             	mov    BYTE PTR [eax+0x8],bl
10010ee8:	1b b1 e8 e3 86 a6    	sbb    esi,DWORD PTR [ecx-0x59791c18]
10010eee:	03 3b                	add    edi,DWORD PTR [ebx]
10010ef0:	c6 84 45 42 07 b6 99 	mov    BYTE PTR [ebp+eax*2-0x6649f8be],0x75
10010ef7:	75 
10010ef8:	37                   	aaa    
10010ef9:	db 2e                	fld    TBYTE PTR [esi]
10010efb:	3a 33                	cmp    dh,BYTE PTR [ebx]
10010efd:	71 1c                	jno    0x10010f1b
10010eff:	d2 23                	shl    BYTE PTR [ebx],cl
10010f01:	db 32                	(bad)  [edx]
10010f03:	ee                   	out    dx,al
10010f04:	49                   	dec    ecx
10010f05:	90                   	nop
10010f06:	5a                   	pop    edx
10010f07:	39 a6 87 be c0 57    	cmp    DWORD PTR [esi+0x57c0be87],esp
10010f0d:	da a5 82 a6 a2 b5    	fisub  DWORD PTR [ebp-0x4a5d597e]
10010f13:	32 e2                	xor    ah,dl
10010f15:	68 b2 11 a7 52       	push   0x52a711b2
10010f1a:	9f                   	lahf   
10010f1b:	44                   	inc    esp
10010f1c:	59                   	pop    ecx
10010f1d:	b7 10                	mov    bh,0x10
10010f1f:	2c 25                	sub    al,0x25
10010f21:	49                   	dec    ecx
10010f22:	e4 2d                	in     al,0x2d
10010f24:	36 34 4f             	ss xor al,0x4f
10010f27:	53                   	push   ebx
10010f28:	ae                   	scas   al,BYTE PTR es:[edi]
10010f29:	ce                   	into   
10010f2a:	6b 25 8f 59 04 a4 c0 	imul   esp,DWORD PTR ds:0xa404598f,0xffffffc0
10010f31:	de c2                	faddp  st(2),st
10010f33:	7d fb                	jge    0x10010f30
10010f35:	e8 c6 1e 9e e7       	call   0xf79f2e00
10010f3a:	88 5a 57             	mov    BYTE PTR [edx+0x57],bl
10010f3d:	91                   	xchg   ecx,eax
10010f3e:	3c bf                	cmp    al,0xbf
10010f40:	50                   	push   eax
10010f41:	83 22 18             	and    DWORD PTR [edx],0x18
10010f44:	4e                   	dec    esi
10010f45:	4b                   	dec    ebx
10010f46:	65 62                	gs (bad) 
10010f48:	fd                   	std    
10010f49:	83 8f af 06 94 7d 11 	or     DWORD PTR [edi+0x7d9406af],0x11
10010f50:	e4 2d                	in     al,0x2d
10010f52:	de 9f ce d2 c8 04    	ficomp WORD PTR [edi+0x4c8d2ce]
10010f58:	dd a6 d8 0a 00 00    	frstor [esi+0xad8]
10010f5e:	00 00                	add    BYTE PTR [eax],al
10010f60:	00 00                	add    BYTE PTR [eax],al
10010f62:	00 80 10 44 00 00    	add    BYTE PTR [eax+0x4410],al
10010f68:	01 00                	add    DWORD PTR [eax],eax
10010f6a:	00 00                	add    BYTE PTR [eax],al
10010f6c:	00 00                	add    BYTE PTR [eax],al
10010f6e:	00 80 00 30 00 00    	add    BYTE PTR [eax+0x3000],al
10010f74:	01 00                	add    DWORD PTR [eax],eax
	...
10010f7e:	00 00                	add    BYTE PTR [eax],al
10010f80:	ff                   	(bad)  
10010f81:	ff                   	(bad)  
10010f82:	ff                   	(bad)  
10010f83:	ff 1e                	call   FWORD PTR [esi]
10010f85:	00 00                	add    BYTE PTR [eax],al
10010f87:	00 3b                	add    BYTE PTR [ebx],bh
10010f89:	00 00                	add    BYTE PTR [eax],al
10010f8b:	00 5a 00             	add    BYTE PTR [edx+0x0],bl
10010f8e:	00 00                	add    BYTE PTR [eax],al
10010f90:	78 00                	js     0x10010f92
10010f92:	00 00                	add    BYTE PTR [eax],al
10010f94:	97                   	xchg   edi,eax
10010f95:	00 00                	add    BYTE PTR [eax],al
10010f97:	00 b5 00 00 00 d4    	add    BYTE PTR [ebp-0x2c000000],dh
10010f9d:	00 00                	add    BYTE PTR [eax],al
10010f9f:	00 f3                	add    bl,dh
10010fa1:	00 00                	add    BYTE PTR [eax],al
10010fa3:	00 11                	add    BYTE PTR [ecx],dl
10010fa5:	01 00                	add    DWORD PTR [eax],eax
10010fa7:	00 30                	add    BYTE PTR [eax],dh
10010fa9:	01 00                	add    DWORD PTR [eax],eax
10010fab:	00 4e 01             	add    BYTE PTR [esi+0x1],cl
10010fae:	00 00                	add    BYTE PTR [eax],al
10010fb0:	6d                   	ins    DWORD PTR es:[edi],dx
10010fb1:	01 00                	add    DWORD PTR [eax],eax
10010fb3:	00 ff                	add    bh,bh
10010fb5:	ff                   	(bad)  
10010fb6:	ff                   	(bad)  
10010fb7:	ff 1e                	call   FWORD PTR [esi]
10010fb9:	00 00                	add    BYTE PTR [eax],al
10010fbb:	00 3a                	add    BYTE PTR [edx],bh
10010fbd:	00 00                	add    BYTE PTR [eax],al
10010fbf:	00 59 00             	add    BYTE PTR [ecx+0x0],bl
10010fc2:	00 00                	add    BYTE PTR [eax],al
10010fc4:	77 00                	ja     0x10010fc6
10010fc6:	00 00                	add    BYTE PTR [eax],al
10010fc8:	96                   	xchg   esi,eax
10010fc9:	00 00                	add    BYTE PTR [eax],al
10010fcb:	00 b4 00 00 00 d3 00 	add    BYTE PTR [eax+eax*1+0xd30000],dh
10010fd2:	00 00                	add    BYTE PTR [eax],al
10010fd4:	f2 00 00             	repnz add BYTE PTR [eax],al
10010fd7:	00 10                	add    BYTE PTR [eax],dl
10010fd9:	01 00                	add    DWORD PTR [eax],eax
10010fdb:	00 2f                	add    BYTE PTR [edi],ch
10010fdd:	01 00                	add    DWORD PTR [eax],eax
10010fdf:	00 4d 01             	add    BYTE PTR [ebp+0x1],cl
10010fe2:	00 00                	add    BYTE PTR [eax],al
10010fe4:	6c                   	ins    BYTE PTR es:[edi],dx
10010fe5:	01 00                	add    DWORD PTR [eax],eax
	...
