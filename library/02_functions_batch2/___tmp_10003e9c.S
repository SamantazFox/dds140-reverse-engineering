
_entry_100038ad:
	call   _entry_1000384d                  ; Preload function pointers (see below)
	call   0x100049ce
	cmp    DWORD PTR [esp+0x4],0x0
	mov    ds:0x10015234,eax
	je     0x100038c8
	call   0x10004969
	fnclex
	ret


_entry_1000384d:
	mov    eax,0x10004929
	mov    ds:0x10010018,eax
	mov    DWORD PTR ds:0x1001001c,0x10004025
	mov    DWORD PTR ds:0x10010020,0x10003fe3
	mov    DWORD PTR ds:0x10010024,0x10004017
	mov    DWORD PTR ds:0x10010028,0x10003f8d
	mov    ds:0x1001002c,eax
	mov    DWORD PTR ds:0x10010030,0x100048a3
	mov    DWORD PTR ds:0x10010034,0x10003fa3
	mov    DWORD PTR ds:0x10010038,0x10003f0d
	mov    DWORD PTR ds:0x1001003c,0x10003e9c
	ret





_entry_10003e9c:	55                   	push   ebp
10003e9d:	8b ec                	mov    ebp,esp
10003e9f:	83 ec 10             	sub    esp,0x10
10003ea2:	56                   	push   esi
10003ea3:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10003ea6:	8d 4d f0             	lea    ecx,[ebp-0x10]
10003ea9:	e8 6c ff ff ff       	call   0x10003e1a
10003eae:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
10003eb1:	0f be 06             	movsx  eax,BYTE PTR [esi]
10003eb4:	50                   	push   eax
10003eb5:	e8 6f 3e 00 00       	call   0x10007d29
10003eba:	83 f8 65             	cmp    eax,0x65
10003ebd:	eb 0c                	jmp    0x10003ecb
10003ebf:	46                   	inc    esi
10003ec0:	0f b6 06             	movzx  eax,BYTE PTR [esi]
10003ec3:	50                   	push   eax
10003ec4:	e8 20 3d 00 00       	call   0x10007be9
10003ec9:	85 c0                	test   eax,eax
10003ecb:	59                   	pop    ecx
10003ecc:	75 f1                	jne    0x10003ebf
10003ece:	0f be 06             	movsx  eax,BYTE PTR [esi]
10003ed1:	50                   	push   eax
10003ed2:	e8 52 3e 00 00       	call   0x10007d29
10003ed7:	83 f8 78             	cmp    eax,0x78
10003eda:	59                   	pop    ecx
10003edb:	75 02                	jne    0x10003edf
10003edd:	46                   	inc    esi
10003ede:	46                   	inc    esi
10003edf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
10003ee2:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
10003ee8:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003eea:	8a 06                	mov    al,BYTE PTR [esi]
10003eec:	8a 09                	mov    cl,BYTE PTR [ecx]
10003eee:	88 0e                	mov    BYTE PTR [esi],cl
10003ef0:	46                   	inc    esi
10003ef1:	8a 0e                	mov    cl,BYTE PTR [esi]
10003ef3:	88 06                	mov    BYTE PTR [esi],al
10003ef5:	8a c1                	mov    al,cl
10003ef7:	8a 0e                	mov    cl,BYTE PTR [esi]
10003ef9:	46                   	inc    esi
10003efa:	84 c9                	test   cl,cl
10003efc:	75 f3                	jne    0x10003ef1
10003efe:	38 4d fc             	cmp    BYTE PTR [ebp-0x4],cl
10003f01:	5e                   	pop    esi
10003f02:	74 07                	je     0x10003f0b
10003f04:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10003f07:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10003f0b:	c9                   	leave  
10003f0c:	c3                   	ret    




10003f0d:	55                   	push   ebp
10003f0e:	8b ec                	mov    ebp,esp
10003f10:	83 ec 10             	sub    esp,0x10
10003f13:	56                   	push   esi
10003f14:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10003f17:	8d 4d f0             	lea    ecx,[ebp-0x10]
10003f1a:	e8 fb fe ff ff       	call   0x10003e1a
10003f1f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
10003f22:	8a 08                	mov    cl,BYTE PTR [eax]
10003f24:	84 c9                	test   cl,cl
10003f26:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
10003f29:	74 15                	je     0x10003f40
10003f2b:	8b 96 bc 00 00 00    	mov    edx,DWORD PTR [esi+0xbc]
10003f31:	8b 12                	mov    edx,DWORD PTR [edx]
10003f33:	8a 12                	mov    dl,BYTE PTR [edx]
10003f35:	3a ca                	cmp    cl,dl
10003f37:	74 07                	je     0x10003f40
10003f39:	40                   	inc    eax
10003f3a:	8a 08                	mov    cl,BYTE PTR [eax]
10003f3c:	84 c9                	test   cl,cl
10003f3e:	75 f5                	jne    0x10003f35
10003f40:	8a 08                	mov    cl,BYTE PTR [eax]
10003f42:	40                   	inc    eax
10003f43:	84 c9                	test   cl,cl
10003f45:	74 36                	je     0x10003f7d
10003f47:	eb 0b                	jmp    0x10003f54
10003f49:	80 f9 65             	cmp    cl,0x65
10003f4c:	74 0c                	je     0x10003f5a
10003f4e:	80 f9 45             	cmp    cl,0x45
10003f51:	74 07                	je     0x10003f5a
10003f53:	40                   	inc    eax
10003f54:	8a 08                	mov    cl,BYTE PTR [eax]
10003f56:	84 c9                	test   cl,cl
10003f58:	75 ef                	jne    0x10003f49
10003f5a:	8b d0                	mov    edx,eax
10003f5c:	48                   	dec    eax
10003f5d:	80 38 30             	cmp    BYTE PTR [eax],0x30
10003f60:	74 fa                	je     0x10003f5c
10003f62:	8b 8e bc 00 00 00    	mov    ecx,DWORD PTR [esi+0xbc]
10003f68:	8b 09                	mov    ecx,DWORD PTR [ecx]
10003f6a:	53                   	push   ebx
10003f6b:	8a 18                	mov    bl,BYTE PTR [eax]
10003f6d:	3a 19                	cmp    bl,BYTE PTR [ecx]
10003f6f:	5b                   	pop    ebx
10003f70:	75 01                	jne    0x10003f73
10003f72:	48                   	dec    eax
10003f73:	8a 0a                	mov    cl,BYTE PTR [edx]
10003f75:	40                   	inc    eax
10003f76:	42                   	inc    edx
10003f77:	84 c9                	test   cl,cl
10003f79:	88 08                	mov    BYTE PTR [eax],cl
10003f7b:	75 f6                	jne    0x10003f73
10003f7d:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10003f81:	5e                   	pop    esi
10003f82:	74 07                	je     0x10003f8b
10003f84:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10003f87:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10003f8b:	c9                   	leave  
10003f8c:	c3                   	ret    




_10003f8d:	d9 ee                	fldz   
10003f8f:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10003f93:	dc 18                	fcomp  QWORD PTR [eax]
10003f95:	df e0                	fnstsw ax
10003f97:	f6 c4 41             	test   ah,0x41
10003f9a:	7a 04                	jp     0x10003fa0

10003f9c:	33 c0                	xor    eax,eax
10003f9e:	40                   	inc    eax
10003f9f:	c3                   	ret    

_10003fa0:	33 c0                	xor    eax,eax
10003fa2:	c3                   	ret    




10003fa3:	55                   	push   ebp
10003fa4:	8b ec                	mov    ebp,esp
10003fa6:	51                   	push   ecx
10003fa7:	51                   	push   ecx
10003fa8:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
10003fac:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10003faf:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10003fb2:	74 19                	je     0x10003fcd
10003fb4:	8d 45 f8             	lea    eax,[ebp-0x8]
10003fb7:	50                   	push   eax
10003fb8:	e8 93 3d 00 00       	call   0x10007d50
10003fbd:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
10003fc0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003fc3:	89 08                	mov    DWORD PTR [eax],ecx
10003fc5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10003fc8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
10003fcb:	eb 11                	jmp    0x10003fde
10003fcd:	8d 45 08             	lea    eax,[ebp+0x8]
10003fd0:	50                   	push   eax
10003fd1:	e8 20 3e 00 00       	call   0x10007df6
10003fd6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10003fd9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
10003fdc:	89 08                	mov    DWORD PTR [eax],ecx
10003fde:	83 c4 0c             	add    esp,0xc
10003fe1:	c9                   	leave  
10003fe2:	c3                   	ret    




_10003fe3:	6a 00                	push   0x0
10003fe5:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003fe9:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003fed:	ff 74 24 10          	push   DWORD PTR [esp+0x10]
10003ff1:	e8 ad ff ff ff       	call   0x10003fa3
10003ff6:	83 c4 10             	add    esp,0x10
10003ff9:	c3                   	ret    
10003ffa:	85 ff                	test   edi,edi
10003ffc:	56                   	push   esi
10003ffd:	8b f0                	mov    esi,eax
10003fff:	74 14                	je     0x10004015
10004001:	56                   	push   esi
10004002:	e8 09 42 00 00       	call   0x10008210
10004007:	40                   	inc    eax
10004008:	50                   	push   eax
10004009:	56                   	push   esi
1000400a:	03 f7                	add    esi,edi
1000400c:	56                   	push   esi
1000400d:	e8 8e 3e 00 00       	call   0x10007ea0
10004012:	83 c4 10             	add    esp,0x10
10004015:	5e                   	pop    esi
10004016:	c3                   	ret    




_10004017:	6a 00                	push   0x0
10004019:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
1000401d:	e8 7a fe ff ff       	call   0x10003e9c
10004022:	59                   	pop    ecx
10004023:	59                   	pop    ecx
10004024:	c3                   	ret    




_10004025:	6a 00                	push   0x0
10004027:	ff 74 24 08          	push   DWORD PTR [esp+0x8]
1000402b:	e8 dd fe ff ff       	call   0x10003f0d
10004030:	59                   	pop    ecx
10004031:	59                   	pop    ecx
10004032:	c3                   	ret    
10004033:	55                   	push   ebp
10004034:	8b ec                	mov    ebp,esp
10004036:	83 ec 10             	sub    esp,0x10
10004039:	53                   	push   ebx
1000403a:	56                   	push   esi
1000403b:	57                   	push   edi
1000403c:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000403f:	8d 4d f0             	lea    ecx,[ebp-0x10]
10004042:	8b d8                	mov    ebx,eax
10004044:	e8 d1 fd ff ff       	call   0x10003e1a
10004049:	33 f6                	xor    esi,esi
1000404b:	3b de                	cmp    ebx,esi
1000404d:	75 2b                	jne    0x1000407a
1000404f:	e8 f2 09 00 00       	call   0x10004a46
10004054:	6a 16                	push   0x16
10004056:	5f                   	pop    edi
10004057:	56                   	push   esi
10004058:	56                   	push   esi
10004059:	56                   	push   esi
1000405a:	56                   	push   esi
1000405b:	56                   	push   esi
1000405c:	89 38                	mov    DWORD PTR [eax],edi
1000405e:	e8 13 3b 00 00       	call   0x10007b76
10004063:	83 c4 14             	add    esp,0x14
10004066:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
1000406a:	74 07                	je     0x10004073
1000406c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
1000406f:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004073:	8b c7                	mov    eax,edi
10004075:	e9 21 01 00 00       	jmp    0x1000419b
1000407a:	39 75 08             	cmp    DWORD PTR [ebp+0x8],esi
1000407d:	76 d0                	jbe    0x1000404f
1000407f:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
10004082:	7e 05                	jle    0x10004089
10004084:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
10004087:	eb 02                	jmp    0x1000408b
10004089:	33 c0                	xor    eax,eax
1000408b:	83 c0 09             	add    eax,0x9
1000408e:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
10004091:	77 09                	ja     0x1000409c
10004093:	e8 ae 09 00 00       	call   0x10004a46
10004098:	6a 22                	push   0x22
1000409a:	eb ba                	jmp    0x10004056
1000409c:	80 7d 18 00          	cmp    BYTE PTR [ebp+0x18],0x0
100040a0:	74 1e                	je     0x100040c0
100040a2:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
100040a5:	33 c0                	xor    eax,eax
100040a7:	39 75 0c             	cmp    DWORD PTR [ebp+0xc],esi
100040aa:	0f 9f c0             	setg   al
100040ad:	33 c9                	xor    ecx,ecx
100040af:	83 3a 2d             	cmp    DWORD PTR [edx],0x2d
100040b2:	0f 94 c1             	sete   cl
100040b5:	8b f8                	mov    edi,eax
100040b7:	03 cb                	add    ecx,ebx
100040b9:	8b c1                	mov    eax,ecx
100040bb:	e8 3a ff ff ff       	call   0x10003ffa
100040c0:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
100040c3:	83 3f 2d             	cmp    DWORD PTR [edi],0x2d
100040c6:	8b f3                	mov    esi,ebx
100040c8:	75 06                	jne    0x100040d0
100040ca:	c6 03 2d             	mov    BYTE PTR [ebx],0x2d
100040cd:	8d 73 01             	lea    esi,[ebx+0x1]
100040d0:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
100040d4:	7e 18                	jle    0x100040ee
100040d6:	8d 46 01             	lea    eax,[esi+0x1]
100040d9:	8a 08                	mov    cl,BYTE PTR [eax]
100040db:	88 0e                	mov    BYTE PTR [esi],cl
100040dd:	8b f0                	mov    esi,eax
100040df:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
100040e2:	8b 80 bc 00 00 00    	mov    eax,DWORD PTR [eax+0xbc]
100040e8:	8b 00                	mov    eax,DWORD PTR [eax]
100040ea:	8a 00                	mov    al,BYTE PTR [eax]
100040ec:	88 06                	mov    BYTE PTR [esi],al
100040ee:	33 c0                	xor    eax,eax
100040f0:	38 45 18             	cmp    BYTE PTR [ebp+0x18],al
100040f3:	0f 94 c0             	sete   al
100040f6:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
100040f9:	03 f0                	add    esi,eax
100040fb:	83 7d 08 ff          	cmp    DWORD PTR [ebp+0x8],0xffffffff
100040ff:	75 05                	jne    0x10004106
10004101:	83 cb ff             	or     ebx,0xffffffff
10004104:	eb 05                	jmp    0x1000410b
10004106:	2b de                	sub    ebx,esi
10004108:	03 5d 08             	add    ebx,DWORD PTR [ebp+0x8]
1000410b:	68 00 d2 00 10       	push   0x1000d200
10004110:	53                   	push   ebx
10004111:	56                   	push   esi
10004112:	e8 84 41 00 00       	call   0x1000829b
10004117:	83 c4 0c             	add    esp,0xc
1000411a:	33 db                	xor    ebx,ebx
1000411c:	85 c0                	test   eax,eax
1000411e:	74 0d                	je     0x1000412d
10004120:	53                   	push   ebx
10004121:	53                   	push   ebx
10004122:	53                   	push   ebx
10004123:	53                   	push   ebx
10004124:	53                   	push   ebx
10004125:	e8 50 39 00 00       	call   0x10007a7a
1000412a:	83 c4 14             	add    esp,0x14
1000412d:	39 5d 10             	cmp    DWORD PTR [ebp+0x10],ebx
10004130:	8d 4e 02             	lea    ecx,[esi+0x2]
10004133:	74 03                	je     0x10004138
10004135:	c6 06 45             	mov    BYTE PTR [esi],0x45
10004138:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
1000413b:	46                   	inc    esi
1000413c:	80 38 30             	cmp    BYTE PTR [eax],0x30
1000413f:	74 2e                	je     0x1000416f
10004141:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
10004144:	48                   	dec    eax
10004145:	79 05                	jns    0x1000414c
10004147:	f7 d8                	neg    eax
10004149:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
1000414c:	46                   	inc    esi
1000414d:	83 f8 64             	cmp    eax,0x64
10004150:	7c 0a                	jl     0x1000415c
10004152:	99                   	cdq    
10004153:	6a 64                	push   0x64
10004155:	5f                   	pop    edi
10004156:	f7 ff                	idiv   edi
10004158:	00 06                	add    BYTE PTR [esi],al
1000415a:	8b c2                	mov    eax,edx
1000415c:	46                   	inc    esi
1000415d:	83 f8 0a             	cmp    eax,0xa
10004160:	7c 0a                	jl     0x1000416c
10004162:	99                   	cdq    
10004163:	6a 0a                	push   0xa
10004165:	5f                   	pop    edi
10004166:	f7 ff                	idiv   edi
10004168:	00 06                	add    BYTE PTR [esi],al
1000416a:	8b c2                	mov    eax,edx
1000416c:	00 46 01             	add    BYTE PTR [esi+0x1],al
1000416f:	f6 05 98 5b 01 10 01 	test   BYTE PTR ds:0x10015b98,0x1
10004176:	74 14                	je     0x1000418c
10004178:	80 39 30             	cmp    BYTE PTR [ecx],0x30
1000417b:	75 0f                	jne    0x1000418c
1000417d:	6a 03                	push   0x3
1000417f:	8d 41 01             	lea    eax,[ecx+0x1]
10004182:	50                   	push   eax
10004183:	51                   	push   ecx
10004184:	e8 17 3d 00 00       	call   0x10007ea0
10004189:	83 c4 0c             	add    esp,0xc
1000418c:	80 7d fc 00          	cmp    BYTE PTR [ebp-0x4],0x0
10004190:	74 07                	je     0x10004199
10004192:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
10004195:	83 60 70 fd          	and    DWORD PTR [eax+0x70],0xfffffffd
10004199:	33 c0                	xor    eax,eax
1000419b:	5f                   	pop    edi
1000419c:	5e                   	pop    esi
1000419d:	5b                   	pop    ebx
1000419e:	c9                   	leave  
1000419f:	c3                   	ret    




10004708:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
1000470b:	6a 16                	push   0x16
1000470d:	5e                   	pop    esi
1000470e:	56                   	push   esi
1000470f:	8d 4d e4             	lea    ecx,[ebp-0x1c]
10004712:	51                   	push   ecx
10004713:	8d 4d d4             	lea    ecx,[ebp-0x2c]
10004716:	51                   	push   ecx
10004717:	ff 70 04             	push   DWORD PTR [eax+0x4]
1000471a:	ff 30                	push   DWORD PTR [eax]
1000471c:	e8 57 3d 00 00       	call   0x10008478
10004721:	33 db                	xor    ebx,ebx
10004723:	83 c4 14             	add    esp,0x14
10004726:	3b fb                	cmp    edi,ebx
10004728:	75 18                	jne    0x10004742
1000472a:	e8 17 03 00 00       	call   0x10004a46
1000472f:	53                   	push   ebx
10004730:	53                   	push   ebx
10004731:	53                   	push   ebx
10004732:	53                   	push   ebx
10004733:	53                   	push   ebx
10004734:	89 30                	mov    DWORD PTR [eax],esi
10004736:	e8 3b 34 00 00       	call   0x10007b76
1000473b:	83 c4 14             	add    esp,0x14
1000473e:	8b c6                	mov    eax,esi
10004740:	eb 5a                	jmp    0x1000479c
10004742:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
10004745:	3b c3                	cmp    eax,ebx
10004747:	76 e1                	jbe    0x1000472a
10004749:	83 f8 ff             	cmp    eax,0xffffffff
1000474c:	75 04                	jne    0x10004752
1000474e:	0b c0                	or     eax,eax
10004750:	eb 0b                	jmp    0x1000475d
10004752:	33 c9                	xor    ecx,ecx
10004754:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004758:	0f 94 c1             	sete   cl
1000475b:	2b c1                	sub    eax,ecx
1000475d:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
10004760:	8d 4d d4             	lea    ecx,[ebp-0x2c]
10004763:	51                   	push   ecx
10004764:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
10004767:	03 ce                	add    ecx,esi
10004769:	51                   	push   ecx
1000476a:	50                   	push   eax
1000476b:	33 c0                	xor    eax,eax
1000476d:	83 7d d4 2d          	cmp    DWORD PTR [ebp-0x2c],0x2d
10004771:	0f 94 c0             	sete   al
10004774:	03 c7                	add    eax,edi
10004776:	50                   	push   eax
10004777:	e8 84 3b 00 00       	call   0x10008300
1000477c:	83 c4 10             	add    esp,0x10
1000477f:	3b c3                	cmp    eax,ebx
10004781:	74 04                	je     0x10004787
10004783:	88 1f                	mov    BYTE PTR [edi],bl
10004785:	eb 15                	jmp    0x1000479c
10004787:	ff 75 18             	push   DWORD PTR [ebp+0x18]
1000478a:	8d 45 d4             	lea    eax,[ebp-0x2c]
1000478d:	53                   	push   ebx
1000478e:	56                   	push   esi
1000478f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004792:	8b cf                	mov    ecx,edi
10004794:	e8 64 fe ff ff       	call   0x100045fd
10004799:	83 c4 10             	add    esp,0x10
1000479c:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000479f:	5f                   	pop    edi
100047a0:	5e                   	pop    esi
100047a1:	33 cd                	xor    ecx,ebp
100047a3:	5b                   	pop    ebx
100047a4:	e8 72 f3 ff ff       	call   0x10003b1b
100047a9:	c9                   	leave  
100047aa:	c3                   	ret    

100047ab:	55                   	push   ebp
100047ac:	8b ec                	mov    ebp,esp
100047ae:	83 ec 30             	sub    esp,0x30
100047b1:	a1 10 00 01 10       	mov    eax,ds:0x10010010
100047b6:	33 c5                	xor    eax,ebp
100047b8:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
100047bb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
100047be:	53                   	push   ebx
100047bf:	56                   	push   esi
100047c0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
100047c3:	57                   	push   edi
100047c4:	6a 16                	push   0x16
100047c6:	5f                   	pop    edi
100047c7:	57                   	push   edi
100047c8:	8d 4d e4             	lea    ecx,[ebp-0x1c]
100047cb:	51                   	push   ecx
100047cc:	8d 4d d0             	lea    ecx,[ebp-0x30]
100047cf:	51                   	push   ecx
100047d0:	ff 70 04             	push   DWORD PTR [eax+0x4]
100047d3:	ff 30                	push   DWORD PTR [eax]
100047d5:	e8 9e 3c 00 00       	call   0x10008478
100047da:	33 db                	xor    ebx,ebx
100047dc:	83 c4 14             	add    esp,0x14
100047df:	3b f3                	cmp    esi,ebx
100047e1:	75 1b                	jne    0x100047fe
100047e3:	e8 5e 02 00 00       	call   0x10004a46
100047e8:	53                   	push   ebx
100047e9:	53                   	push   ebx
100047ea:	53                   	push   ebx
100047eb:	53                   	push   ebx
100047ec:	53                   	push   ebx
100047ed:	89 38                	mov    DWORD PTR [eax],edi
100047ef:	e8 82 33 00 00       	call   0x10007b76
100047f4:	83 c4 14             	add    esp,0x14
100047f7:	8b c7                	mov    eax,edi
100047f9:	e9 96 00 00 00       	jmp    0x10004894
100047fe:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
10004801:	3b cb                	cmp    ecx,ebx
10004803:	76 de                	jbe    0x100047e3
10004805:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
10004808:	48                   	dec    eax
10004809:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
1000480c:	33 c0                	xor    eax,eax
1000480e:	83 7d d0 2d          	cmp    DWORD PTR [ebp-0x30],0x2d
10004812:	0f 94 c0             	sete   al
10004815:	83 f9 ff             	cmp    ecx,0xffffffff
10004818:	8d 3c 30             	lea    edi,[eax+esi*1]
1000481b:	75 04                	jne    0x10004821
1000481d:	0b c9                	or     ecx,ecx
1000481f:	eb 02                	jmp    0x10004823
10004821:	2b c8                	sub    ecx,eax
10004823:	8d 45 d0             	lea    eax,[ebp-0x30]
10004826:	50                   	push   eax
10004827:	ff 75 14             	push   DWORD PTR [ebp+0x14]
1000482a:	51                   	push   ecx
1000482b:	57                   	push   edi
1000482c:	e8 cf 3a 00 00       	call   0x10008300
10004831:	83 c4 10             	add    esp,0x10
10004834:	3b c3                	cmp    eax,ebx
10004836:	74 04                	je     0x1000483c
10004838:	88 1e                	mov    BYTE PTR [esi],bl
1000483a:	eb 58                	jmp    0x10004894
1000483c:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
1000483f:	48                   	dec    eax
10004840:	39 45 e0             	cmp    DWORD PTR [ebp-0x20],eax
10004843:	0f 9c c1             	setl   cl
10004846:	83 f8 fc             	cmp    eax,0xfffffffc
10004849:	7c 2d                	jl     0x10004878
1000484b:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
1000484e:	7d 28                	jge    0x10004878
10004850:	3a cb                	cmp    cl,bl
10004852:	74 0a                	je     0x1000485e
10004854:	8a 07                	mov    al,BYTE PTR [edi]
10004856:	47                   	inc    edi
10004857:	84 c0                	test   al,al
10004859:	75 f9                	jne    0x10004854
1000485b:	88 5f fe             	mov    BYTE PTR [edi-0x2],bl
1000485e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004861:	8d 45 d0             	lea    eax,[ebp-0x30]
10004864:	6a 01                	push   0x1
10004866:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004869:	8b ce                	mov    ecx,esi
1000486b:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000486e:	e8 8a fd ff ff       	call   0x100045fd
10004873:	83 c4 10             	add    esp,0x10
10004876:	eb 1c                	jmp    0x10004894
10004878:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
1000487b:	8d 45 d0             	lea    eax,[ebp-0x30]
1000487e:	6a 01                	push   0x1
10004880:	50                   	push   eax
10004881:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004884:	8b c6                	mov    eax,esi
10004886:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004889:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000488c:	e8 a2 f7 ff ff       	call   0x10004033
10004891:	83 c4 18             	add    esp,0x18
10004894:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
10004897:	5f                   	pop    edi
10004898:	5e                   	pop    esi
10004899:	33 cd                	xor    ecx,ebp
1000489b:	5b                   	pop    ebx
1000489c:	e8 7a f2 ff ff       	call   0x10003b1b
100048a1:	c9                   	leave  
100048a2:	c3                   	ret    




100048a3:	55                   	push   ebp
100048a4:	8b ec                	mov    ebp,esp
100048a6:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
100048a9:	83 f8 65             	cmp    eax,0x65
100048ac:	74 5f                	je     0x1000490d
100048ae:	83 f8 45             	cmp    eax,0x45
100048b1:	74 5a                	je     0x1000490d
100048b3:	83 f8 66             	cmp    eax,0x66
100048b6:	75 19                	jne    0x100048d1

100048b8:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048bb:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048be:	ff 75 10             	push   DWORD PTR [ebp+0x10]
100048c1:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100048c4:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100048c7:	e8 26 fe ff ff       	call   0x100046f2
100048cc:	83 c4 14             	add    esp,0x14
100048cf:	5d                   	pop    ebp
100048d0:	c3                   	ret    
100048d1:	83 f8 61             	cmp    eax,0x61
100048d4:	74 1e                	je     0x100048f4
100048d6:	83 f8 41             	cmp    eax,0x41
100048d9:	74 19                	je     0x100048f4

100048db:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048de:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
100048e1:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048e4:	ff 75 10             	push   DWORD PTR [ebp+0x10]
100048e7:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
100048ea:	ff 75 08             	push   DWORD PTR [ebp+0x8]
100048ed:	e8 b9 fe ff ff       	call   0x100047ab
100048f2:	eb 30                	jmp    0x10004924

100048f4:	ff 75 20             	push   DWORD PTR [ebp+0x20]
100048f7:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
100048fa:	ff 75 18             	push   DWORD PTR [ebp+0x18]
100048fd:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004900:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
10004903:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004906:	e8 81 f9 ff ff       	call   0x1000428c
1000490b:	eb 17                	jmp    0x10004924

1000490d:	ff 75 20             	push   DWORD PTR [ebp+0x20]
10004910:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004913:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004916:	ff 75 10             	push   DWORD PTR [ebp+0x10]
10004919:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000491c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
1000491f:	e8 7c f8 ff ff       	call   0x100041a0
10004924:	83 c4 18             	add    esp,0x18
10004927:	5d                   	pop    ebp
10004928:	c3                   	ret    
10004929:	55                   	push   ebp
1000492a:	8b ec                	mov    ebp,esp
1000492c:	6a 00                	push   0x0
1000492e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
10004931:	ff 75 18             	push   DWORD PTR [ebp+0x18]
10004934:	ff 75 14             	push   DWORD PTR [ebp+0x14]
10004937:	ff 75 10             	push   DWORD PTR [ebp+0x10]
1000493a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
1000493d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
10004940:	e8 5e ff ff ff       	call   0x100048a3
10004945:	83 c4 1c             	add    esp,0x1c
10004948:	5d                   	pop    ebp
10004949:	c3                   	ret    

1000494a:	56                   	push   esi
1000494b:	57                   	push   edi
1000494c:	33 ff                	xor    edi,edi
1000494e:	8d b7 18 00 01 10    	lea    esi,[edi+0x10010018]
10004954:	ff 36                	push   DWORD PTR [esi]
10004956:	e8 3c 17 00 00       	call   0x10006097
1000495b:	83 c7 04             	add    edi,0x4
1000495e:	83 ff 28             	cmp    edi,0x28
10004961:	59                   	pop    ecx
10004962:	89 06                	mov    DWORD PTR [esi],eax
10004964:	72 e8                	jb     0x1000494e
10004966:	5f                   	pop    edi
10004967:	5e                   	pop    esi
10004968:	c3                   	ret    
10004969:	56                   	push   esi
1000496a:	68 00 00 03 00       	push   0x30000
1000496f:	68 00 00 01 00       	push   0x10000
10004974:	33 f6                	xor    esi,esi
10004976:	56                   	push   esi
10004977:	e8 1c 3d 00 00       	call   0x10008698
1000497c:	83 c4 0c             	add    esp,0xc
1000497f:	85 c0                	test   eax,eax
10004981:	74 0d                	je     0x10004990
10004983:	56                   	push   esi
10004984:	56                   	push   esi
10004985:	56                   	push   esi
10004986:	56                   	push   esi
10004987:	56                   	push   esi
10004988:	e8 ed 30 00 00       	call   0x10007a7a
1000498d:	83 c4 14             	add    esp,0x14
10004990:	5e                   	pop    esi
10004991:	c3                   	ret    
10004992:	55                   	push   ebp
10004993:	8b ec                	mov    ebp,esp
10004995:	83 ec 18             	sub    esp,0x18
10004998:	dd 05 10 d2 00 10    	fld    QWORD PTR ds:0x1000d210
1000499e:	dd 5d f0             	fstp   QWORD PTR [ebp-0x10]
100049a1:	dd 05 08 d2 00 10    	fld    QWORD PTR ds:0x1000d208
100049a7:	dd 5d e8             	fstp   QWORD PTR [ebp-0x18]
100049aa:	dd 45 e8             	fld    QWORD PTR [ebp-0x18]
100049ad:	dc 75 f0             	fdiv   QWORD PTR [ebp-0x10]
100049b0:	dc 4d f0             	fmul   QWORD PTR [ebp-0x10]
100049b3:	dc 6d e8             	fsubr  QWORD PTR [ebp-0x18]
100049b6:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
100049b9:	d9 e8                	fld1   
100049bb:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
100049be:	df e0                	fnstsw ax
100049c0:	f6 c4 05             	test   ah,0x5
100049c3:	7a 05                	jp     0x100049ca
100049c5:	33 c0                	xor    eax,eax
100049c7:	40                   	inc    eax
100049c8:	c9                   	leave  
100049c9:	c3                   	ret    
100049ca:	33 c0                	xor    eax,eax
100049cc:	c9                   	leave  
100049cd:	c3                   	ret    




100049ce:	68 34 d2 00 10       	push   0x1000d234
100049d3:	ff 15 50 d0 00 10    	call   <GetModuleHandleA()>      ; DWORD PTR ds:0x1000d050
100049d9:	85 c0                	test   eax,eax
100049db:	74 15                	je     0x100049f2

100049dd:	68 18 d2 00 10       	push   0x1000d218
100049e2:	50                   	push   eax
100049e3:	ff 15 4c d0 00 10    	call   <GetProcAddress()>        ; DWORD PTR ds:0x1000d04c
100049e9:	85 c0                	test   eax,eax
100049eb:	74 05                	je     0x100049f2
100049ed:	6a 00                	push   0x0
100049ef:	ff d0                	call   eax
100049f1:	c3                   	ret    
100049f2:	e9 9b ff ff ff       	jmp    0x10004992
100049f7:	83 25 f4 5d 01 10 00 	and    DWORD PTR ds:0x10015df4,0x0
100049fe:	e8 4f 3d 00 00       	call   0x10008752
10004a03:	a3 f4 5d 01 10       	mov    ds:0x10015df4,eax
10004a08:	33 c0                	xor    eax,eax
10004a0a:	c3                   	ret    
10004a0b:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
10004a0f:	33 c9                	xor    ecx,ecx
10004a11:	3b 04 cd 40 00 01 10 	cmp    eax,DWORD PTR [ecx*8+0x10010040]
10004a18:	74 12                	je     0x10004a2c
10004a1a:	41                   	inc    ecx
10004a1b:	83 f9 2d             	cmp    ecx,0x2d
10004a1e:	72 f1                	jb     0x10004a11
10004a20:	8d 48 ed             	lea    ecx,[eax-0x13]
10004a23:	83 f9 11             	cmp    ecx,0x11
10004a26:	77 0c                	ja     0x10004a34
10004a28:	6a 0d                	push   0xd
10004a2a:	58                   	pop    eax
10004a2b:	c3                   	ret    
10004a2c:	8b 04 cd 44 00 01 10 	mov    eax,DWORD PTR [ecx*8+0x10010044]
10004a33:	c3                   	ret    
10004a34:	05 44 ff ff ff       	add    eax,0xffffff44
10004a39:	6a 0e                	push   0xe
10004a3b:	59                   	pop    ecx
10004a3c:	3b c8                	cmp    ecx,eax
10004a3e:	1b c0                	sbb    eax,eax
10004a40:	23 c1                	and    eax,ecx
10004a42:	83 c0 08             	add    eax,0x8
10004a45:	c3                   	ret    
10004a46:	e8 68 18 00 00       	call   0x100062b3
10004a4b:	85 c0                	test   eax,eax
10004a4d:	75 06                	jne    0x10004a55
10004a4f:	b8 a8 01 01 10       	mov    eax,0x100101a8
10004a54:	c3                   	ret    
10004a55:	83 c0 08             	add    eax,0x8
10004a58:	c3                   	ret    
10004a59:	55                   	push   ebp
10004a5a:	8b ec                	mov    ebp,esp
10004a5c:	51                   	push   ecx
10004a5d:	51                   	push   ecx
10004a5e:	56                   	push   esi
10004a5f:	8d 45 fc             	lea    eax,[ebp-0x4]
10004a62:	33 f6                	xor    esi,esi
10004a64:	50                   	push   eax
10004a65:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
10004a68:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
10004a6b:	e8 5f 10 00 00       	call   0x10005acf
10004a70:	85 c0                	test   eax,eax
10004a72:	59                   	pop    ecx
10004a73:	74 0d                	je     0x10004a82
10004a75:	56                   	push   esi
10004a76:	56                   	push   esi
10004a77:	56                   	push   esi
10004a78:	56                   	push   esi
10004a79:	56                   	push   esi
10004a7a:	e8 fb 2f 00 00       	call   0x10007a7a
10004a7f:	83 c4 14             	add    esp,0x14
10004a82:	8d 45 f8             	lea    eax,[ebp-0x8]
10004a85:	50                   	push   eax
10004a86:	e8 7b 10 00 00       	call   0x10005b06
10004a8b:	85 c0                	test   eax,eax
10004a8d:	59                   	pop    ecx
10004a8e:	74 0d                	je     0x10004a9d
10004a90:	56                   	push   esi
10004a91:	56                   	push   esi
10004a92:	56                   	push   esi
10004a93:	56                   	push   esi
10004a94:	56                   	push   esi
10004a95:	e8 e0 2f 00 00       	call   0x10007a7a
10004a9a:	83 c4 14             	add    esp,0x14
10004a9d:	83 7d fc 02          	cmp    DWORD PTR [ebp-0x4],0x2
10004aa1:	5e                   	pop    esi
10004aa2:	75 0b                	jne    0x10004aaf
10004aa4:	83 7d f8 05          	cmp    DWORD PTR [ebp-0x8],0x5
10004aa8:	72 05                	jb     0x10004aaf
10004aaa:	33 c0                	xor    eax,eax
10004aac:	40                   	inc    eax
10004aad:	c9                   	leave  
10004aae:	c3                   	ret    
10004aaf:	6a 03                	push   0x3
10004ab1:	58                   	pop    eax
10004ab2:	c9                   	leave  
10004ab3:	c3                   	ret   