1000ae00:	55                   	push   ebp
1000ae01:	8b ec                	mov    ebp,esp
1000ae03:	83 ec 7c             	sub    esp,0x7c
1000ae06:	a1 10 00 01 10       	mov    eax,ds:0x10010010
1000ae0b:	33 c5                	xor    eax,ebp
1000ae0d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
1000ae10:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
1000ae13:	53                   	push   ebx
1000ae14:	33 db                	xor    ebx,ebx
1000ae16:	56                   	push   esi
1000ae17:	33 f6                	xor    esi,esi
1000ae19:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
1000ae1c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
1000ae1f:	46                   	inc    esi
1000ae20:	33 c9                	xor    ecx,ecx
1000ae22:	39 5d 24             	cmp    DWORD PTR [ebp+0x24],ebx
1000ae25:	57                   	push   edi
1000ae26:	89 45 90             	mov    DWORD PTR [ebp-0x70],eax
1000ae29:	8d 7d e0             	lea    edi,[ebp-0x20]
1000ae2c:	89 5d 8c             	mov    DWORD PTR [ebp-0x74],ebx
1000ae2f:	89 75 98             	mov    DWORD PTR [ebp-0x68],esi
1000ae32:	89 5d b4             	mov    DWORD PTR [ebp-0x4c],ebx
1000ae35:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
1000ae38:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
1000ae3b:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
1000ae3e:	89 5d 9c             	mov    DWORD PTR [ebp-0x64],ebx
1000ae41:	89 5d b0             	mov    DWORD PTR [ebp-0x50],ebx
1000ae44:	89 5d 94             	mov    DWORD PTR [ebp-0x6c],ebx
1000ae47:	75 1f                	jne    0x1000ae68
1000ae49:	e8 f8 9b ff ff       	call   0x10004a46
1000ae4e:	53                   	push   ebx
1000ae4f:	53                   	push   ebx
1000ae50:	53                   	push   ebx
1000ae51:	53                   	push   ebx
1000ae52:	53                   	push   ebx
1000ae53:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
1000ae59:	e8 18 cd ff ff       	call   0x10007b76
1000ae5e:	83 c4 14             	add    esp,0x14
1000ae61:	33 c0                	xor    eax,eax
1000ae63:	e9 19 06 00 00       	jmp    0x1000b481
1000ae68:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
1000ae6b:	89 55 ac             	mov    DWORD PTR [ebp-0x54],edx
1000ae6e:	8a 02                	mov    al,BYTE PTR [edx]
1000ae70:	3c 20                	cmp    al,0x20
1000ae72:	74 0c                	je     0x1000ae80
1000ae74:	3c 09                	cmp    al,0x9
1000ae76:	74 08                	je     0x1000ae80
1000ae78:	3c 0a                	cmp    al,0xa
1000ae7a:	74 04                	je     0x1000ae80
1000ae7c:	3c 0d                	cmp    al,0xd
1000ae7e:	75 03                	jne    0x1000ae83
1000ae80:	42                   	inc    edx
1000ae81:	eb eb                	jmp    0x1000ae6e
1000ae83:	b3 30                	mov    bl,0x30
1000ae85:	8a 02                	mov    al,BYTE PTR [edx]
1000ae87:	42                   	inc    edx
1000ae88:	83 f9 0b             	cmp    ecx,0xb
1000ae8b:	0f 87 2f 02 00 00    	ja     0x1000b0c0
1000ae91:	ff 24 8d 90 b4 00 10 	jmp    DWORD PTR [ecx*4+0x1000b490]
1000ae98:	8a c8                	mov    cl,al
1000ae9a:	80 e9 31             	sub    cl,0x31
1000ae9d:	80 f9 08             	cmp    cl,0x8
1000aea0:	77 06                	ja     0x1000aea8
1000aea2:	6a 03                	push   0x3
1000aea4:	59                   	pop    ecx
1000aea5:	4a                   	dec    edx
1000aea6:	eb dd                	jmp    0x1000ae85
1000aea8:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000aeab:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000aead:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000aeb3:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000aeb5:	3a 01                	cmp    al,BYTE PTR [ecx]
1000aeb7:	75 05                	jne    0x1000aebe
1000aeb9:	6a 05                	push   0x5
1000aebb:	59                   	pop    ecx
1000aebc:	eb c7                	jmp    0x1000ae85
1000aebe:	0f be c0             	movsx  eax,al
1000aec1:	83 e8 2b             	sub    eax,0x2b
1000aec4:	74 1d                	je     0x1000aee3
1000aec6:	48                   	dec    eax
1000aec7:	48                   	dec    eax
1000aec8:	74 0d                	je     0x1000aed7
1000aeca:	83 e8 03             	sub    eax,0x3
1000aecd:	0f 85 8b 01 00 00    	jne    0x1000b05e
1000aed3:	8b ce                	mov    ecx,esi
1000aed5:	eb ae                	jmp    0x1000ae85
1000aed7:	6a 02                	push   0x2
1000aed9:	59                   	pop    ecx
1000aeda:	c7 45 8c 00 80 00 00 	mov    DWORD PTR [ebp-0x74],0x8000
1000aee1:	eb a2                	jmp    0x1000ae85
1000aee3:	83 65 8c 00          	and    DWORD PTR [ebp-0x74],0x0
1000aee7:	6a 02                	push   0x2
1000aee9:	59                   	pop    ecx
1000aeea:	eb 99                	jmp    0x1000ae85
1000aeec:	8a c8                	mov    cl,al
1000aeee:	80 e9 31             	sub    cl,0x31
1000aef1:	80 f9 08             	cmp    cl,0x8
1000aef4:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
1000aef7:	76 a9                	jbe    0x1000aea2
1000aef9:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000aefc:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000aefe:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000af04:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af06:	3a 01                	cmp    al,BYTE PTR [ecx]
1000af08:	75 04                	jne    0x1000af0e
1000af0a:	6a 04                	push   0x4
1000af0c:	eb ad                	jmp    0x1000aebb
1000af0e:	3c 2b                	cmp    al,0x2b
1000af10:	74 28                	je     0x1000af3a
1000af12:	3c 2d                	cmp    al,0x2d
1000af14:	74 24                	je     0x1000af3a
1000af16:	3a c3                	cmp    al,bl
1000af18:	74 b9                	je     0x1000aed3
1000af1a:	3c 43                	cmp    al,0x43
1000af1c:	0f 8e 3c 01 00 00    	jle    0x1000b05e
1000af22:	3c 45                	cmp    al,0x45
1000af24:	7e 10                	jle    0x1000af36
1000af26:	3c 63                	cmp    al,0x63
1000af28:	0f 8e 30 01 00 00    	jle    0x1000b05e
1000af2e:	3c 65                	cmp    al,0x65
1000af30:	0f 8f 28 01 00 00    	jg     0x1000b05e
1000af36:	6a 06                	push   0x6
1000af38:	eb 81                	jmp    0x1000aebb
1000af3a:	4a                   	dec    edx
1000af3b:	6a 0b                	push   0xb
1000af3d:	e9 79 ff ff ff       	jmp    0x1000aebb
1000af42:	8a c8                	mov    cl,al
1000af44:	80 e9 31             	sub    cl,0x31
1000af47:	80 f9 08             	cmp    cl,0x8
1000af4a:	0f 86 52 ff ff ff    	jbe    0x1000aea2
1000af50:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000af53:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af55:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000af5b:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af5d:	3a 01                	cmp    al,BYTE PTR [ecx]
1000af5f:	0f 84 54 ff ff ff    	je     0x1000aeb9
1000af65:	3a c3                	cmp    al,bl
1000af67:	0f 84 66 ff ff ff    	je     0x1000aed3
1000af6d:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
1000af70:	e9 14 01 00 00       	jmp    0x1000b089
1000af75:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
1000af78:	eb 1a                	jmp    0x1000af94
1000af7a:	3c 39                	cmp    al,0x39
1000af7c:	7f 1a                	jg     0x1000af98
1000af7e:	83 7d b4 19          	cmp    DWORD PTR [ebp-0x4c],0x19
1000af82:	73 0a                	jae    0x1000af8e
1000af84:	ff 45 b4             	inc    DWORD PTR [ebp-0x4c]
1000af87:	2a c3                	sub    al,bl
1000af89:	88 07                	mov    BYTE PTR [edi],al
1000af8b:	47                   	inc    edi
1000af8c:	eb 03                	jmp    0x1000af91
1000af8e:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000af91:	8a 02                	mov    al,BYTE PTR [edx]
1000af93:	42                   	inc    edx
1000af94:	3a c3                	cmp    al,bl
1000af96:	7d e2                	jge    0x1000af7a
1000af98:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
1000af9b:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000af9d:	8b 89 bc 00 00 00    	mov    ecx,DWORD PTR [ecx+0xbc]
1000afa3:	8b 09                	mov    ecx,DWORD PTR [ecx]
1000afa5:	3a 01                	cmp    al,BYTE PTR [ecx]
1000afa7:	0f 84 5d ff ff ff    	je     0x1000af0a
1000afad:	3c 2b                	cmp    al,0x2b
1000afaf:	74 89                	je     0x1000af3a
1000afb1:	3c 2d                	cmp    al,0x2d
1000afb3:	74 85                	je     0x1000af3a
1000afb5:	e9 60 ff ff ff       	jmp    0x1000af1a
1000afba:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
1000afbe:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
1000afc1:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000afc4:	75 26                	jne    0x1000afec
1000afc6:	eb 06                	jmp    0x1000afce
1000afc8:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000afcb:	8a 02                	mov    al,BYTE PTR [edx]
1000afcd:	42                   	inc    edx
1000afce:	3a c3                	cmp    al,bl
1000afd0:	74 f6                	je     0x1000afc8
1000afd2:	eb 18                	jmp    0x1000afec
1000afd4:	3c 39                	cmp    al,0x39
1000afd6:	7f d5                	jg     0x1000afad
1000afd8:	83 7d b4 19          	cmp    DWORD PTR [ebp-0x4c],0x19
1000afdc:	73 0b                	jae    0x1000afe9
1000afde:	ff 45 b4             	inc    DWORD PTR [ebp-0x4c]
1000afe1:	2a c3                	sub    al,bl
1000afe3:	88 07                	mov    BYTE PTR [edi],al
1000afe5:	47                   	inc    edi
1000afe6:	ff 4d b0             	dec    DWORD PTR [ebp-0x50]
1000afe9:	8a 02                	mov    al,BYTE PTR [edx]
1000afeb:	42                   	inc    edx
1000afec:	3a c3                	cmp    al,bl
1000afee:	7d e4                	jge    0x1000afd4
1000aff0:	eb bb                	jmp    0x1000afad
1000aff2:	2a c3                	sub    al,bl
1000aff4:	3c 09                	cmp    al,0x9
1000aff6:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
1000aff9:	0f 87 6e ff ff ff    	ja     0x1000af6d
1000afff:	6a 04                	push   0x4
1000b001:	e9 9e fe ff ff       	jmp    0x1000aea4
1000b006:	8d 4a fe             	lea    ecx,[edx-0x2]
1000b009:	89 4d ac             	mov    DWORD PTR [ebp-0x54],ecx
1000b00c:	8a c8                	mov    cl,al
1000b00e:	80 e9 31             	sub    cl,0x31
1000b011:	80 f9 08             	cmp    cl,0x8
1000b014:	77 07                	ja     0x1000b01d
1000b016:	6a 09                	push   0x9
1000b018:	e9 87 fe ff ff       	jmp    0x1000aea4
1000b01d:	0f be c0             	movsx  eax,al
1000b020:	83 e8 2b             	sub    eax,0x2b
1000b023:	74 20                	je     0x1000b045
1000b025:	48                   	dec    eax
1000b026:	48                   	dec    eax
1000b027:	74 10                	je     0x1000b039
1000b029:	83 e8 03             	sub    eax,0x3
1000b02c:	0f 85 3b ff ff ff    	jne    0x1000af6d
1000b032:	6a 08                	push   0x8
1000b034:	e9 82 fe ff ff       	jmp    0x1000aebb
1000b039:	83 4d 98 ff          	or     DWORD PTR [ebp-0x68],0xffffffff
1000b03d:	6a 07                	push   0x7
1000b03f:	59                   	pop    ecx
1000b040:	e9 40 fe ff ff       	jmp    0x1000ae85
1000b045:	6a 07                	push   0x7
1000b047:	e9 6f fe ff ff       	jmp    0x1000aebb
1000b04c:	89 75 a0             	mov    DWORD PTR [ebp-0x60],esi
1000b04f:	eb 03                	jmp    0x1000b054
1000b051:	8a 02                	mov    al,BYTE PTR [edx]
1000b053:	42                   	inc    edx
1000b054:	3a c3                	cmp    al,bl
1000b056:	74 f9                	je     0x1000b051
1000b058:	2c 31                	sub    al,0x31
1000b05a:	3c 08                	cmp    al,0x8
1000b05c:	76 b8                	jbe    0x1000b016
1000b05e:	4a                   	dec    edx
1000b05f:	eb 28                	jmp    0x1000b089
1000b061:	8a c8                	mov    cl,al
1000b063:	80 e9 31             	sub    cl,0x31
1000b066:	80 f9 08             	cmp    cl,0x8
1000b069:	76 ab                	jbe    0x1000b016
1000b06b:	3a c3                	cmp    al,bl
1000b06d:	eb bd                	jmp    0x1000b02c
1000b06f:	83 7d 20 00          	cmp    DWORD PTR [ebp+0x20],0x0
1000b073:	74 47                	je     0x1000b0bc
1000b075:	0f be c0             	movsx  eax,al
1000b078:	83 e8 2b             	sub    eax,0x2b
1000b07b:	8d 4a ff             	lea    ecx,[edx-0x1]
1000b07e:	89 4d ac             	mov    DWORD PTR [ebp-0x54],ecx
1000b081:	74 c2                	je     0x1000b045
1000b083:	48                   	dec    eax
1000b084:	48                   	dec    eax
1000b085:	74 b2                	je     0x1000b039
1000b087:	8b d1                	mov    edx,ecx
1000b089:	83 7d a8 00          	cmp    DWORD PTR [ebp-0x58],0x0
1000b08d:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
1000b090:	89 10                	mov    DWORD PTR [eax],edx
1000b092:	0f 84 a4 03 00 00    	je     0x1000b43c
1000b098:	6a 18                	push   0x18
1000b09a:	58                   	pop    eax
1000b09b:	39 45 b4             	cmp    DWORD PTR [ebp-0x4c],eax
1000b09e:	76 10                	jbe    0x1000b0b0
1000b0a0:	80 7d f7 05          	cmp    BYTE PTR [ebp-0x9],0x5
1000b0a4:	7c 03                	jl     0x1000b0a9
1000b0a6:	fe 45 f7             	inc    BYTE PTR [ebp-0x9]
1000b0a9:	4f                   	dec    edi
1000b0aa:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000b0ad:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
1000b0b0:	83 7d b4 00          	cmp    DWORD PTR [ebp-0x4c],0x0
1000b0b4:	0f 86 a9 03 00 00    	jbe    0x1000b463
1000b0ba:	eb 59                	jmp    0x1000b115
1000b0bc:	6a 0a                	push   0xa
1000b0be:	59                   	pop    ecx
1000b0bf:	4a                   	dec    edx
1000b0c0:	83 f9 0a             	cmp    ecx,0xa
1000b0c3:	0f 85 bc fd ff ff    	jne    0x1000ae85
1000b0c9:	eb be                	jmp    0x1000b089
1000b0cb:	89 75 a0             	mov    DWORD PTR [ebp-0x60],esi
1000b0ce:	33 c9                	xor    ecx,ecx
1000b0d0:	eb 19                	jmp    0x1000b0eb
1000b0d2:	3c 39                	cmp    al,0x39
1000b0d4:	7f 20                	jg     0x1000b0f6
1000b0d6:	6b c9 0a             	imul   ecx,ecx,0xa
1000b0d9:	0f be f0             	movsx  esi,al
1000b0dc:	8d 4c 31 d0          	lea    ecx,[ecx+esi*1-0x30]
1000b0e0:	81 f9 50 14 00 00    	cmp    ecx,0x1450
1000b0e6:	7f 09                	jg     0x1000b0f1
1000b0e8:	8a 02                	mov    al,BYTE PTR [edx]
1000b0ea:	42                   	inc    edx
1000b0eb:	3a c3                	cmp    al,bl
1000b0ed:	7d e3                	jge    0x1000b0d2
1000b0ef:	eb 05                	jmp    0x1000b0f6
1000b0f1:	b9 51 14 00 00       	mov    ecx,0x1451
1000b0f6:	89 4d 9c             	mov    DWORD PTR [ebp-0x64],ecx
1000b0f9:	eb 0b                	jmp    0x1000b106
1000b0fb:	3c 39                	cmp    al,0x39
1000b0fd:	0f 8f 5b ff ff ff    	jg     0x1000b05e
1000b103:	8a 02                	mov    al,BYTE PTR [edx]
1000b105:	42                   	inc    edx
1000b106:	3a c3                	cmp    al,bl
1000b108:	7d f1                	jge    0x1000b0fb
1000b10a:	e9 4f ff ff ff       	jmp    0x1000b05e
1000b10f:	ff 4d b4             	dec    DWORD PTR [ebp-0x4c]
1000b112:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000b115:	4f                   	dec    edi
1000b116:	80 3f 00             	cmp    BYTE PTR [edi],0x0
1000b119:	74 f4                	je     0x1000b10f
1000b11b:	8d 45 c4             	lea    eax,[ebp-0x3c]
1000b11e:	50                   	push   eax
1000b11f:	ff 75 b4             	push   DWORD PTR [ebp-0x4c]
1000b122:	8d 45 e0             	lea    eax,[ebp-0x20]
1000b125:	50                   	push   eax
1000b126:	e8 e2 17 00 00       	call   0x1000c90d
1000b12b:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
1000b12e:	33 c9                	xor    ecx,ecx
1000b130:	83 c4 0c             	add    esp,0xc
1000b133:	39 4d 98             	cmp    DWORD PTR [ebp-0x68],ecx
1000b136:	7d 02                	jge    0x1000b13a
1000b138:	f7 d8                	neg    eax
1000b13a:	03 45 b0             	add    eax,DWORD PTR [ebp-0x50]
1000b13d:	39 4d a0             	cmp    DWORD PTR [ebp-0x60],ecx
1000b140:	75 03                	jne    0x1000b145
1000b142:	03 45 18             	add    eax,DWORD PTR [ebp+0x18]
1000b145:	39 4d a4             	cmp    DWORD PTR [ebp-0x5c],ecx
1000b148:	75 03                	jne    0x1000b14d
1000b14a:	2b 45 1c             	sub    eax,DWORD PTR [ebp+0x1c]
1000b14d:	3d 50 14 00 00       	cmp    eax,0x1450
1000b152:	0f 8f ed 02 00 00    	jg     0x1000b445
1000b158:	3d b0 eb ff ff       	cmp    eax,0xffffebb0
1000b15d:	0f 8c f9 02 00 00    	jl     0x1000b45c
1000b163:	be a0 0c 01 10       	mov    esi,0x10010ca0
1000b168:	83 ee 60             	sub    esi,0x60
1000b16b:	3b c1                	cmp    eax,ecx
1000b16d:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
1000b170:	0f 84 b4 02 00 00    	je     0x1000b42a
1000b176:	7d 0d                	jge    0x1000b185
1000b178:	f7 d8                	neg    eax
1000b17a:	be 00 0e 01 10       	mov    esi,0x10010e00
1000b17f:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
1000b182:	83 ee 60             	sub    esi,0x60
1000b185:	39 4d 14             	cmp    DWORD PTR [ebp+0x14],ecx
1000b188:	75 04                	jne    0x1000b18e
1000b18a:	66 89 4d c4          	mov    WORD PTR [ebp-0x3c],cx
1000b18e:	39 4d ac             	cmp    DWORD PTR [ebp-0x54],ecx
1000b191:	0f 84 93 02 00 00    	je     0x1000b42a
1000b197:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
1000b19a:	c1 7d ac 03          	sar    DWORD PTR [ebp-0x54],0x3
1000b19e:	83 c6 54             	add    esi,0x54
1000b1a1:	83 e0 07             	and    eax,0x7
1000b1a4:	85 c0                	test   eax,eax
1000b1a6:	89 75 b4             	mov    DWORD PTR [ebp-0x4c],esi
1000b1a9:	0f 84 71 02 00 00    	je     0x1000b420
1000b1af:	6b c0 0c             	imul   eax,eax,0xc
1000b1b2:	03 c6                	add    eax,esi
1000b1b4:	8b d8                	mov    ebx,eax
1000b1b6:	66 81 3b 00 80       	cmp    WORD PTR [ebx],0x8000
1000b1bb:	89 5d 90             	mov    DWORD PTR [ebp-0x70],ebx
1000b1be:	72 14                	jb     0x1000b1d4
1000b1c0:	8b f3                	mov    esi,ebx
1000b1c2:	8d 7d b8             	lea    edi,[ebp-0x48]
1000b1c5:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b1c6:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b1c7:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
1000b1c8:	ff 4d ba             	dec    DWORD PTR [ebp-0x46]
1000b1cb:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
1000b1ce:	8d 5d b8             	lea    ebx,[ebp-0x48]
1000b1d1:	89 5d 90             	mov    DWORD PTR [ebp-0x70],ebx
1000b1d4:	0f b7 53 0a          	movzx  edx,WORD PTR [ebx+0xa]
1000b1d8:	8b 4d ce             	mov    ecx,DWORD PTR [ebp-0x32]
1000b1db:	33 c0                	xor    eax,eax
1000b1dd:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
1000b1e0:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
1000b1e3:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
1000b1e6:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
1000b1e9:	8b c2                	mov    eax,edx
1000b1eb:	bf ff 7f 00 00       	mov    edi,0x7fff
1000b1f0:	33 c1                	xor    eax,ecx
1000b1f2:	23 cf                	and    ecx,edi
1000b1f4:	23 d7                	and    edx,edi
1000b1f6:	25 00 80 00 00       	and    eax,0x8000
1000b1fb:	66 81 f9 ff 7f       	cmp    cx,0x7fff
1000b200:	8d 3c 0a             	lea    edi,[edx+ecx*1]
1000b203:	0f b7 ff             	movzx  edi,di
1000b206:	0f 83 fa 01 00 00    	jae    0x1000b406
1000b20c:	66 81 fa ff 7f       	cmp    dx,0x7fff
1000b211:	0f 83 ef 01 00 00    	jae    0x1000b406
1000b217:	66 81 ff fd bf       	cmp    di,0xbffd
1000b21c:	0f 87 e4 01 00 00    	ja     0x1000b406
1000b222:	66 81 ff bf 3f       	cmp    di,0x3fbf
1000b227:	77 0d                	ja     0x1000b236
1000b229:	33 c0                	xor    eax,eax
1000b22b:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
1000b22e:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
1000b231:	e9 e7 01 00 00       	jmp    0x1000b41d
1000b236:	66 85 c9             	test   cx,cx
1000b239:	75 1f                	jne    0x1000b25a
1000b23b:	47                   	inc    edi
1000b23c:	f7 45 cc ff ff ff 7f 	test   DWORD PTR [ebp-0x34],0x7fffffff
1000b243:	75 15                	jne    0x1000b25a
1000b245:	83 7d c8 00          	cmp    DWORD PTR [ebp-0x38],0x0
1000b249:	75 0f                	jne    0x1000b25a
1000b24b:	83 7d c4 00          	cmp    DWORD PTR [ebp-0x3c],0x0
1000b24f:	75 09                	jne    0x1000b25a
1000b251:	66 21 4d ce          	and    WORD PTR [ebp-0x32],cx
1000b255:	e9 c6 01 00 00       	jmp    0x1000b420
1000b25a:	33 c9                	xor    ecx,ecx
1000b25c:	66 3b d1             	cmp    dx,cx
1000b25f:	75 21                	jne    0x1000b282
1000b261:	47                   	inc    edi
1000b262:	f7 43 08 ff ff ff 7f 	test   DWORD PTR [ebx+0x8],0x7fffffff
1000b269:	75 17                	jne    0x1000b282
1000b26b:	39 4b 04             	cmp    DWORD PTR [ebx+0x4],ecx
1000b26e:	75 12                	jne    0x1000b282
1000b270:	39 0b                	cmp    DWORD PTR [ebx],ecx
1000b272:	75 0e                	jne    0x1000b282
1000b274:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
1000b277:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
1000b27a:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
1000b27d:	e9 9e 01 00 00       	jmp    0x1000b420
1000b282:	21 4d 98             	and    DWORD PTR [ebp-0x68],ecx
1000b285:	8d 75 d8             	lea    esi,[ebp-0x28]
1000b288:	c7 45 a8 05 00 00 00 	mov    DWORD PTR [ebp-0x58],0x5
1000b28f:	8b 4d 98             	mov    ecx,DWORD PTR [ebp-0x68]
1000b292:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
1000b295:	03 c9                	add    ecx,ecx
1000b297:	85 d2                	test   edx,edx
1000b299:	89 55 9c             	mov    DWORD PTR [ebp-0x64],edx
1000b29c:	7e 55                	jle    0x1000b2f3
1000b29e:	8d 4c 0d c4          	lea    ecx,[ebp+ecx*1-0x3c]
1000b2a2:	83 c3 08             	add    ebx,0x8
1000b2a5:	89 4d a4             	mov    DWORD PTR [ebp-0x5c],ecx
1000b2a8:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
1000b2ab:	8b 4d a0             	mov    ecx,DWORD PTR [ebp-0x60]
1000b2ae:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
1000b2b1:	0f b7 12             	movzx  edx,WORD PTR [edx]
1000b2b4:	0f b7 09             	movzx  ecx,WORD PTR [ecx]
1000b2b7:	83 65 88 00          	and    DWORD PTR [ebp-0x78],0x0
1000b2bb:	0f af ca             	imul   ecx,edx
1000b2be:	8b 56 fc             	mov    edx,DWORD PTR [esi-0x4]
1000b2c1:	8d 1c 0a             	lea    ebx,[edx+ecx*1]
1000b2c4:	3b da                	cmp    ebx,edx
1000b2c6:	72 04                	jb     0x1000b2cc
1000b2c8:	3b d9                	cmp    ebx,ecx
1000b2ca:	73 07                	jae    0x1000b2d3
1000b2cc:	c7 45 88 01 00 00 00 	mov    DWORD PTR [ebp-0x78],0x1
1000b2d3:	83 7d 88 00          	cmp    DWORD PTR [ebp-0x78],0x0
1000b2d7:	89 5e fc             	mov    DWORD PTR [esi-0x4],ebx
1000b2da:	74 03                	je     0x1000b2df
1000b2dc:	66 ff 06             	inc    WORD PTR [esi]
1000b2df:	83 45 a4 02          	add    DWORD PTR [ebp-0x5c],0x2
1000b2e3:	83 6d a0 02          	sub    DWORD PTR [ebp-0x60],0x2
1000b2e7:	ff 4d 9c             	dec    DWORD PTR [ebp-0x64]
1000b2ea:	83 7d 9c 00          	cmp    DWORD PTR [ebp-0x64],0x0
1000b2ee:	7f bb                	jg     0x1000b2ab
1000b2f0:	8b 5d 90             	mov    ebx,DWORD PTR [ebp-0x70]
1000b2f3:	46                   	inc    esi
1000b2f4:	46                   	inc    esi
1000b2f5:	ff 45 98             	inc    DWORD PTR [ebp-0x68]
1000b2f8:	ff 4d a8             	dec    DWORD PTR [ebp-0x58]
1000b2fb:	83 7d a8 00          	cmp    DWORD PTR [ebp-0x58],0x0
1000b2ff:	7f 8e                	jg     0x1000b28f
1000b301:	81 c7 02 c0 00 00    	add    edi,0xc002
1000b307:	66 85 ff             	test   di,di
1000b30a:	7e 3b                	jle    0x1000b347
1000b30c:	f7 45 dc 00 00 00 80 	test   DWORD PTR [ebp-0x24],0x80000000
1000b313:	75 2d                	jne    0x1000b342
1000b315:	8b 75 d8             	mov    esi,DWORD PTR [ebp-0x28]
1000b318:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
1000b31b:	d1 65 d4             	shl    DWORD PTR [ebp-0x2c],1
1000b31e:	c1 e9 1f             	shr    ecx,0x1f
1000b321:	8b d6                	mov    edx,esi
1000b323:	03 f6                	add    esi,esi
1000b325:	0b f1                	or     esi,ecx
1000b327:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000b32a:	c1 ea 1f             	shr    edx,0x1f
1000b32d:	03 c9                	add    ecx,ecx
1000b32f:	0b ca                	or     ecx,edx
1000b331:	81 c7 ff ff 00 00    	add    edi,0xffff
1000b337:	66 85 ff             	test   di,di
1000b33a:	89 75 d8             	mov    DWORD PTR [ebp-0x28],esi
1000b33d:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
1000b340:	7f ca                	jg     0x1000b30c
1000b342:	66 85 ff             	test   di,di
1000b345:	7f 4d                	jg     0x1000b394
1000b347:	81 c7 ff ff 00 00    	add    edi,0xffff
1000b34d:	66 85 ff             	test   di,di
1000b350:	7d 42                	jge    0x1000b394
1000b352:	8b cf                	mov    ecx,edi
1000b354:	f7 d9                	neg    ecx
1000b356:	0f b7 f1             	movzx  esi,cx
1000b359:	03 fe                	add    edi,esi
1000b35b:	f6 45 d4 01          	test   BYTE PTR [ebp-0x2c],0x1
1000b35f:	74 03                	je     0x1000b364
1000b361:	ff 45 b0             	inc    DWORD PTR [ebp-0x50]
1000b364:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000b367:	8b 5d d8             	mov    ebx,DWORD PTR [ebp-0x28]
1000b36a:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
1000b36d:	d1 6d dc             	shr    DWORD PTR [ebp-0x24],1
1000b370:	c1 e1 1f             	shl    ecx,0x1f
1000b373:	d1 eb                	shr    ebx,1
1000b375:	0b d9                	or     ebx,ecx
1000b377:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
1000b37a:	c1 e2 1f             	shl    edx,0x1f
1000b37d:	d1 e9                	shr    ecx,1
1000b37f:	0b ca                	or     ecx,edx
1000b381:	4e                   	dec    esi
1000b382:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
1000b385:	89 4d d4             	mov    DWORD PTR [ebp-0x2c],ecx
1000b388:	75 d1                	jne    0x1000b35b
1000b38a:	39 75 b0             	cmp    DWORD PTR [ebp-0x50],esi
1000b38d:	74 05                	je     0x1000b394
1000b38f:	66 83 4d d4 01       	or     WORD PTR [ebp-0x2c],0x1
1000b394:	66 81 7d d4 00 80    	cmp    WORD PTR [ebp-0x2c],0x8000
1000b39a:	77 11                	ja     0x1000b3ad
1000b39c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
1000b39f:	81 e1 ff ff 01 00    	and    ecx,0x1ffff
1000b3a5:	81 f9 00 80 01 00    	cmp    ecx,0x18000
1000b3ab:	75 33                	jne    0x1000b3e0
1000b3ad:	83 7d d6 ff          	cmp    DWORD PTR [ebp-0x2a],0xffffffff
1000b3b1:	75 2a                	jne    0x1000b3dd
1000b3b3:	83 65 d6 00          	and    DWORD PTR [ebp-0x2a],0x0
1000b3b7:	83 7d da ff          	cmp    DWORD PTR [ebp-0x26],0xffffffff
1000b3bb:	75 1b                	jne    0x1000b3d8
1000b3bd:	83 65 da 00          	and    DWORD PTR [ebp-0x26],0x0
1000b3c1:	66 81 7d de ff ff    	cmp    WORD PTR [ebp-0x22],0xffff
1000b3c7:	75 09                	jne    0x1000b3d2
1000b3c9:	66 c7 45 de 00 80    	mov    WORD PTR [ebp-0x22],0x8000
1000b3cf:	47                   	inc    edi
1000b3d0:	eb 0e                	jmp    0x1000b3e0
1000b3d2:	66 ff 45 de          	inc    WORD PTR [ebp-0x22]
1000b3d6:	eb 08                	jmp    0x1000b3e0
1000b3d8:	ff 45 da             	inc    DWORD PTR [ebp-0x26]
1000b3db:	eb 03                	jmp    0x1000b3e0
1000b3dd:	ff 45 d6             	inc    DWORD PTR [ebp-0x2a]
1000b3e0:	66 81 ff ff 7f       	cmp    di,0x7fff
1000b3e5:	8b 75 b4             	mov    esi,DWORD PTR [ebp-0x4c]
1000b3e8:	73 1c                	jae    0x1000b406
1000b3ea:	66 8b 4d d6          	mov    cx,WORD PTR [ebp-0x2a]
1000b3ee:	66 89 4d c4          	mov    WORD PTR [ebp-0x3c],cx
1000b3f2:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
1000b3f5:	89 4d c6             	mov    DWORD PTR [ebp-0x3a],ecx
1000b3f8:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
1000b3fb:	0b f8                	or     edi,eax
1000b3fd:	89 4d ca             	mov    DWORD PTR [ebp-0x36],ecx
1000b400:	66 89 7d ce          	mov    WORD PTR [ebp-0x32],di
1000b404:	eb 1a                	jmp    0x1000b420
1000b406:	66 f7 d8             	neg    ax
1000b409:	1b c0                	sbb    eax,eax
1000b40b:	83 65 c8 00          	and    DWORD PTR [ebp-0x38],0x0
1000b40f:	25 00 00 00 80       	and    eax,0x80000000
1000b414:	05 00 80 ff 7f       	add    eax,0x7fff8000
1000b419:	83 65 c4 00          	and    DWORD PTR [ebp-0x3c],0x0
1000b41d:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
1000b420:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
1000b424:	0f 85 6d fd ff ff    	jne    0x1000b197
1000b42a:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
1000b42d:	0f b7 4d c4          	movzx  ecx,WORD PTR [ebp-0x3c]
1000b431:	8b 75 c6             	mov    esi,DWORD PTR [ebp-0x3a]
1000b434:	8b 55 ca             	mov    edx,DWORD PTR [ebp-0x36]
1000b437:	c1 e8 10             	shr    eax,0x10
1000b43a:	eb 2f                	jmp    0x1000b46b
1000b43c:	c7 45 94 04 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x4
1000b443:	eb 1e                	jmp    0x1000b463
1000b445:	33 f6                	xor    esi,esi
1000b447:	b8 ff 7f 00 00       	mov    eax,0x7fff
1000b44c:	ba 00 00 00 80       	mov    edx,0x80000000
1000b451:	33 c9                	xor    ecx,ecx
1000b453:	c7 45 94 02 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x2
1000b45a:	eb 0f                	jmp    0x1000b46b
1000b45c:	c7 45 94 01 00 00 00 	mov    DWORD PTR [ebp-0x6c],0x1
1000b463:	33 c9                	xor    ecx,ecx
1000b465:	33 c0                	xor    eax,eax
1000b467:	33 d2                	xor    edx,edx
1000b469:	33 f6                	xor    esi,esi
1000b46b:	8b 7d 84             	mov    edi,DWORD PTR [ebp-0x7c]
1000b46e:	0b 45 8c             	or     eax,DWORD PTR [ebp-0x74]
1000b471:	66 89 0f             	mov    WORD PTR [edi],cx
1000b474:	66 89 47 0a          	mov    WORD PTR [edi+0xa],ax
1000b478:	8b 45 94             	mov    eax,DWORD PTR [ebp-0x6c]
1000b47b:	89 77 02             	mov    DWORD PTR [edi+0x2],esi
1000b47e:	89 57 06             	mov    DWORD PTR [edi+0x6],edx
1000b481:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
1000b484:	5f                   	pop    edi
1000b485:	5e                   	pop    esi
1000b486:	33 cd                	xor    ecx,ebp
1000b488:	5b                   	pop    ebx
1000b489:	e8 8d 86 ff ff       	call   0x10003b1b
1000b48e:	c9                   	leave  
1000b48f:	c3                   	ret    

; There's a switch/case somewhere!
1000b490:	98 ae 00 10
1000b494:	ec ae 00 10
1000b498:	42 af 00 10
1000b49c:	75 af 00 10
1000b4a0:	ba af 00 10
1000b4a4:	f2 af 00 10
1000b4a8:	06 b0 00 10
1000b4ac:	61 b0 00 10
1000b4b0:	4c b0 00 10
1000b4b4:	cb b0 00 10
1000b4b8:	c0 b0 00 10
1000b4bc:	6f b0 00 10
