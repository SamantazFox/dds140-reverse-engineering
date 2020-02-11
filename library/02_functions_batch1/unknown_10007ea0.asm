10007ea0:	55                   	push   ebp
10007ea1:	8b ec                	mov    ebp,esp
10007ea3:	57                   	push   edi
10007ea4:	56                   	push   esi
10007ea5:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
10007ea8:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10007eab:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
10007eae:	8b c1                	mov    eax,ecx
10007eb0:	8b d1                	mov    edx,ecx
10007eb2:	03 c6                	add    eax,esi
10007eb4:	3b fe                	cmp    edi,esi
10007eb6:	76 08                	jbe    0x10007ec0
10007eb8:	3b f8                	cmp    edi,eax
10007eba:	0f 82 a4 01 00 00    	jb     0x10008064
10007ec0:	81 f9 00 01 00 00    	cmp    ecx,0x100
10007ec6:	72 1f                	jb     0x10007ee7
10007ec8:	83 3d f8 5d 01 10 00 	cmp    DWORD PTR ds:0x10015df8,0x0
10007ecf:	74 16                	je     0x10007ee7
10007ed1:	57                   	push   edi
10007ed2:	56                   	push   esi
10007ed3:	83 e7 0f             	and    edi,0xf
10007ed6:	83 e6 0f             	and    esi,0xf
10007ed9:	3b fe                	cmp    edi,esi
10007edb:	5e                   	pop    esi
10007edc:	5f                   	pop    edi
10007edd:	75 08                	jne    0x10007ee7
10007edf:	5e                   	pop    esi
10007ee0:	5f                   	pop    edi
10007ee1:	5d                   	pop    ebp
10007ee2:	e9 60 36 00 00       	jmp    0x1000b547
10007ee7:	f7 c7 03 00 00 00    	test   edi,0x3
10007eed:	75 15                	jne    0x10007f04
10007eef:	c1 e9 02             	shr    ecx,0x2
10007ef2:	83 e2 03             	and    edx,0x3
10007ef5:	83 f9 08             	cmp    ecx,0x8
10007ef8:	72 2a                	jb     0x10007f24
10007efa:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007efc:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007f03:	90                   	nop
10007f04:	8b c7                	mov    eax,edi
10007f06:	ba 03 00 00 00       	mov    edx,0x3
10007f0b:	83 e9 04             	sub    ecx,0x4
10007f0e:	72 0c                	jb     0x10007f1c
10007f10:	83 e0 03             	and    eax,0x3
10007f13:	03 c8                	add    ecx,eax
10007f15:	ff 24 85 28 7f 00 10 	jmp    DWORD PTR [eax*4+0x10007f28]
10007f1c:	ff 24 8d 24 80 00 10 	jmp    DWORD PTR [ecx*4+0x10008024]
10007f23:	90                   	nop
10007f24:	ff 24 8d a8 7f 00 10 	jmp    DWORD PTR [ecx*4+0x10007fa8]
10007f2b:	90                   	nop
10007f2c:	38 7f 00             	cmp    BYTE PTR [edi+0x0],bh
10007f2f:	10 64 7f 00          	adc    BYTE PTR [edi+edi*2+0x0],ah
10007f33:	10 88 7f 00 10 23    	adc    BYTE PTR [eax+0x2310007f],cl
10007f39:	d1 8a 06 88 07 8a    	ror    DWORD PTR [edx-0x75f877fa],1
10007f3f:	46                   	inc    esi
10007f40:	01 88 47 01 8a 46    	add    DWORD PTR [eax+0x468a0147],ecx
10007f46:	02 c1                	add    al,cl
10007f48:	e9 02 88 47 02       	jmp    0x1248074f
10007f4d:	83 c6 03             	add    esi,0x3
10007f50:	83 c7 03             	add    edi,0x3
10007f53:	83 f9 08             	cmp    ecx,0x8
10007f56:	72 cc                	jb     0x10007f24
10007f58:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007f5a:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007f61:	8d 49 00             	lea    ecx,[ecx+0x0]
10007f64:	23 d1                	and    edx,ecx
10007f66:	8a 06                	mov    al,BYTE PTR [esi]
10007f68:	88 07                	mov    BYTE PTR [edi],al
10007f6a:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
10007f6d:	c1 e9 02             	shr    ecx,0x2
10007f70:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10007f73:	83 c6 02             	add    esi,0x2
10007f76:	83 c7 02             	add    edi,0x2
10007f79:	83 f9 08             	cmp    ecx,0x8
10007f7c:	72 a6                	jb     0x10007f24
10007f7e:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007f80:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007f87:	90                   	nop
10007f88:	23 d1                	and    edx,ecx
10007f8a:	8a 06                	mov    al,BYTE PTR [esi]
10007f8c:	88 07                	mov    BYTE PTR [edi],al
10007f8e:	83 c6 01             	add    esi,0x1
10007f91:	c1 e9 02             	shr    ecx,0x2
10007f94:	83 c7 01             	add    edi,0x1
10007f97:	83 f9 08             	cmp    ecx,0x8
10007f9a:	72 88                	jb     0x10007f24
10007f9c:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10007f9e:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10007fa5:	8d 49 00             	lea    ecx,[ecx+0x0]
10007fa8:	0b 80 00 10 f8 7f    	or     eax,DWORD PTR [eax+0x7ff81000]
10007fae:	00 10                	add    BYTE PTR [eax],dl
10007fb0:	f0 7f 00             	lock jg 0x10007fb3
10007fb3:	10 e8                	adc    al,ch
10007fb5:	7f 00                	jg     0x10007fb7
10007fb7:	10 e0                	adc    al,ah
10007fb9:	7f 00                	jg     0x10007fbb
10007fbb:	10 d8                	adc    al,bl
10007fbd:	7f 00                	jg     0x10007fbf
10007fbf:	10 d0                	adc    al,dl
10007fc1:	7f 00                	jg     0x10007fc3
10007fc3:	10 c8                	adc    al,cl
10007fc5:	7f 00                	jg     0x10007fc7
10007fc7:	10 8b 44 8e e4 89    	adc    BYTE PTR [ebx-0x761b71bc],cl
10007fcd:	44                   	inc    esp
10007fce:	8f                   	(bad)  
10007fcf:	e4 8b                	in     al,0x8b
10007fd1:	44                   	inc    esp
10007fd2:	8e e8                	mov    gs,eax
10007fd4:	89 44 8f e8          	mov    DWORD PTR [edi+ecx*4-0x18],eax
10007fd8:	8b 44 8e ec          	mov    eax,DWORD PTR [esi+ecx*4-0x14]
10007fdc:	89 44 8f ec          	mov    DWORD PTR [edi+ecx*4-0x14],eax
10007fe0:	8b 44 8e f0          	mov    eax,DWORD PTR [esi+ecx*4-0x10]
10007fe4:	89 44 8f f0          	mov    DWORD PTR [edi+ecx*4-0x10],eax
10007fe8:	8b 44 8e f4          	mov    eax,DWORD PTR [esi+ecx*4-0xc]
10007fec:	89 44 8f f4          	mov    DWORD PTR [edi+ecx*4-0xc],eax
10007ff0:	8b 44 8e f8          	mov    eax,DWORD PTR [esi+ecx*4-0x8]
10007ff4:	89 44 8f f8          	mov    DWORD PTR [edi+ecx*4-0x8],eax
10007ff8:	8b 44 8e fc          	mov    eax,DWORD PTR [esi+ecx*4-0x4]
10007ffc:	89 44 8f fc          	mov    DWORD PTR [edi+ecx*4-0x4],eax
10008000:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
10008007:	03 f0                	add    esi,eax
10008009:	03 f8                	add    edi,eax
1000800b:	ff 24 95 14 80 00 10 	jmp    DWORD PTR [edx*4+0x10008014]
10008012:	8b ff                	mov    edi,edi
10008014:	24 80                	and    al,0x80
10008016:	00 10                	add    BYTE PTR [eax],dl
10008018:	2c 80                	sub    al,0x80
1000801a:	00 10                	add    BYTE PTR [eax],dl
1000801c:	38 80 00 10 4c 80    	cmp    BYTE PTR [eax-0x7fb3f000],al
10008022:	00 10                	add    BYTE PTR [eax],dl
10008024:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008027:	5e                   	pop    esi
10008028:	5f                   	pop    edi
10008029:	c9                   	leave  
1000802a:	c3                   	ret    
1000802b:	90                   	nop
1000802c:	8a 06                	mov    al,BYTE PTR [esi]
1000802e:	88 07                	mov    BYTE PTR [edi],al
10008030:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008033:	5e                   	pop    esi
10008034:	5f                   	pop    edi
10008035:	c9                   	leave  
10008036:	c3                   	ret    
10008037:	90                   	nop
10008038:	8a 06                	mov    al,BYTE PTR [esi]
1000803a:	88 07                	mov    BYTE PTR [edi],al
1000803c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
1000803f:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10008042:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008045:	5e                   	pop    esi
10008046:	5f                   	pop    edi
10008047:	c9                   	leave  
10008048:	c3                   	ret    
10008049:	8d 49 00             	lea    ecx,[ecx+0x0]
1000804c:	8a 06                	mov    al,BYTE PTR [esi]
1000804e:	88 07                	mov    BYTE PTR [edi],al
10008050:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
10008053:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10008056:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
10008059:	88 47 02             	mov    BYTE PTR [edi+0x2],al
1000805c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000805f:	5e                   	pop    esi
10008060:	5f                   	pop    edi
10008061:	c9                   	leave  
10008062:	c3                   	ret    
10008063:	90                   	nop
10008064:	8d 74 31 fc          	lea    esi,[ecx+esi*1-0x4]
10008068:	8d 7c 39 fc          	lea    edi,[ecx+edi*1-0x4]
1000806c:	f7 c7 03 00 00 00    	test   edi,0x3
10008072:	75 24                	jne    0x10008098
10008074:	c1 e9 02             	shr    ecx,0x2
10008077:	83 e2 03             	and    edx,0x3
1000807a:	83 f9 08             	cmp    ecx,0x8
1000807d:	72 0d                	jb     0x1000808c
1000807f:	fd                   	std    
10008080:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10008082:	fc                   	cld    
10008083:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
1000808a:	8b ff                	mov    edi,edi
1000808c:	f7 d9                	neg    ecx
1000808e:	ff 24 8d 60 81 00 10 	jmp    DWORD PTR [ecx*4+0x10008160]
10008095:	8d 49 00             	lea    ecx,[ecx+0x0]
10008098:	8b c7                	mov    eax,edi
1000809a:	ba 03 00 00 00       	mov    edx,0x3
1000809f:	83 f9 04             	cmp    ecx,0x4
100080a2:	72 0c                	jb     0x100080b0
100080a4:	83 e0 03             	and    eax,0x3
100080a7:	2b c8                	sub    ecx,eax
100080a9:	ff 24 85 b4 80 00 10 	jmp    DWORD PTR [eax*4+0x100080b4]
100080b0:	ff 24 8d b0 81 00 10 	jmp    DWORD PTR [ecx*4+0x100081b0]
100080b7:	90                   	nop
100080b8:	c4 80 00 10 e8 80    	les    eax,FWORD PTR [eax-0x7f17f000]
100080be:	00 10                	add    BYTE PTR [eax],dl
100080c0:	10 81 00 10 8a 46    	adc    BYTE PTR [ecx+0x468a1000],al
100080c6:	03 23                	add    esp,DWORD PTR [ebx]
100080c8:	d1 88 47 03 83 ee    	ror    DWORD PTR [eax-0x117cfcb9],1
100080ce:	01 c1                	add    ecx,eax
100080d0:	e9 02 83 ef 01       	jmp    0x11f003d7
100080d5:	83 f9 08             	cmp    ecx,0x8
100080d8:	72 b2                	jb     0x1000808c
100080da:	fd                   	std    
100080db:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
100080dd:	fc                   	cld    
100080de:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
100080e5:	8d 49 00             	lea    ecx,[ecx+0x0]
100080e8:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100080eb:	23 d1                	and    edx,ecx
100080ed:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100080f0:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100080f3:	c1 e9 02             	shr    ecx,0x2
100080f6:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100080f9:	83 ee 02             	sub    esi,0x2
100080fc:	83 ef 02             	sub    edi,0x2
100080ff:	83 f9 08             	cmp    ecx,0x8
10008102:	72 88                	jb     0x1000808c
10008104:	fd                   	std    
10008105:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10008107:	fc                   	cld    
10008108:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
1000810f:	90                   	nop
10008110:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
10008113:	23 d1                	and    edx,ecx
10008115:	88 47 03             	mov    BYTE PTR [edi+0x3],al
10008118:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
1000811b:	88 47 02             	mov    BYTE PTR [edi+0x2],al
1000811e:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
10008121:	c1 e9 02             	shr    ecx,0x2
10008124:	88 47 01             	mov    BYTE PTR [edi+0x1],al
10008127:	83 ee 03             	sub    esi,0x3
1000812a:	83 ef 03             	sub    edi,0x3
1000812d:	83 f9 08             	cmp    ecx,0x8
10008130:	0f 82 56 ff ff ff    	jb     0x1000808c
10008136:	fd                   	std    
10008137:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10008139:	fc                   	cld    
1000813a:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
10008141:	8d 49 00             	lea    ecx,[ecx+0x0]
10008144:	64 81 00 10 6c 81 00 	add    DWORD PTR fs:[eax],0x816c10
1000814b:	10 74 81 00          	adc    BYTE PTR [ecx+eax*4+0x0],dh
1000814f:	10 7c 81 00          	adc    BYTE PTR [ecx+eax*4+0x0],bh
10008153:	10 84 81 00 10 8c 81 	adc    BYTE PTR [ecx+eax*4-0x7e73f000],al
1000815a:	00 10                	add    BYTE PTR [eax],dl
1000815c:	94                   	xchg   esp,eax
1000815d:	81 00 10 a7 81 00    	add    DWORD PTR [eax],0x81a710
10008163:	10 8b 44 8e 1c 89    	adc    BYTE PTR [ebx-0x76e371bc],cl
10008169:	44                   	inc    esp
1000816a:	8f                   	(bad)  
1000816b:	1c 8b                	sbb    al,0x8b
1000816d:	44                   	inc    esp
1000816e:	8e 18                	mov    ds,WORD PTR [eax]
10008170:	89 44 8f 18          	mov    DWORD PTR [edi+ecx*4+0x18],eax
10008174:	8b 44 8e 14          	mov    eax,DWORD PTR [esi+ecx*4+0x14]
10008178:	89 44 8f 14          	mov    DWORD PTR [edi+ecx*4+0x14],eax
1000817c:	8b 44 8e 10          	mov    eax,DWORD PTR [esi+ecx*4+0x10]
10008180:	89 44 8f 10          	mov    DWORD PTR [edi+ecx*4+0x10],eax
10008184:	8b 44 8e 0c          	mov    eax,DWORD PTR [esi+ecx*4+0xc]
10008188:	89 44 8f 0c          	mov    DWORD PTR [edi+ecx*4+0xc],eax
1000818c:	8b 44 8e 08          	mov    eax,DWORD PTR [esi+ecx*4+0x8]
10008190:	89 44 8f 08          	mov    DWORD PTR [edi+ecx*4+0x8],eax
10008194:	8b 44 8e 04          	mov    eax,DWORD PTR [esi+ecx*4+0x4]
10008198:	89 44 8f 04          	mov    DWORD PTR [edi+ecx*4+0x4],eax
1000819c:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
100081a3:	03 f0                	add    esi,eax
100081a5:	03 f8                	add    edi,eax
100081a7:	ff 24 95 b0 81 00 10 	jmp    DWORD PTR [edx*4+0x100081b0]
100081ae:	8b ff                	mov    edi,edi
100081b0:	c0 81 00 10 c8 81 00 	rol    BYTE PTR [ecx-0x7e37f000],0x0
100081b7:	10 d8                	adc    al,bl
100081b9:	81 00 10 ec 81 00    	add    DWORD PTR [eax],0x81ec10
100081bf:	10 8b 45 08 5e 5f    	adc    BYTE PTR [ebx+0x5f5e0845],cl
100081c5:	c9                   	leave  
100081c6:	c3                   	ret    
100081c7:	90                   	nop
100081c8:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100081cb:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100081ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100081d1:	5e                   	pop    esi
100081d2:	5f                   	pop    edi
100081d3:	c9                   	leave  
100081d4:	c3                   	ret    
100081d5:	8d 49 00             	lea    ecx,[ecx+0x0]
100081d8:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100081db:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100081de:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100081e1:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100081e4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100081e7:	5e                   	pop    esi
100081e8:	5f                   	pop    edi
100081e9:	c9                   	leave  
100081ea:	c3                   	ret    
100081eb:	90                   	nop
100081ec:	8a 46 03             	mov    al,BYTE PTR [esi+0x3]
100081ef:	88 47 03             	mov    BYTE PTR [edi+0x3],al
100081f2:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
100081f5:	88 47 02             	mov    BYTE PTR [edi+0x2],al
100081f8:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
100081fb:	88 47 01             	mov    BYTE PTR [edi+0x1],al
100081fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10008201:	5e                   	pop    esi
10008202:	5f                   	pop    edi
10008203:	c9                   	leave  
10008204:	c3                   	ret    
10008205:	cc                   	int3
10008206:	cc                   	int3
10008207:	cc                   	int3
10008208:	cc                   	int3
10008209:	cc                   	int3
1000820a:	cc                   	int3
1000820b:	cc                   	int3
1000820c:	cc                   	int3
1000820d:	cc                   	int3
1000820e:	cc                   	int3
1000820f:	cc                   	int3
