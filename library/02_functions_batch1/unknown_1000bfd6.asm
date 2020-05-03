1000bfd6:	33 c0                	xor    eax,eax
1000bfd8:	f6 c3 10             	test   bl,0x10
1000bfdb:	74 01                	je     0x1000bfde
1000bfdd:	40                   	inc    eax
1000bfde:	f6 c3 08             	test   bl,0x8
1000bfe1:	74 03                	je     0x1000bfe6
1000bfe3:	83 c8 04             	or     eax,0x4
1000bfe6:	f6 c3 04             	test   bl,0x4
1000bfe9:	74 03                	je     0x1000bfee
1000bfeb:	83 c8 08             	or     eax,0x8
1000bfee:	f6 c3 02             	test   bl,0x2
1000bff1:	74 03                	je     0x1000bff6
1000bff3:	83 c8 10             	or     eax,0x10
1000bff6:	f6 c3 01             	test   bl,0x1
1000bff9:	74 03                	je     0x1000bffe
1000bffb:	83 c8 20             	or     eax,0x20
1000bffe:	f7 c3 00 00 08 00    	test   ebx,0x80000
1000c004:	74 03                	je     0x1000c009
1000c006:	83 c8 02             	or     eax,0x2
1000c009:	8b cb                	mov    ecx,ebx
1000c00b:	ba 00 03 00 00       	mov    edx,0x300
1000c010:	23 ca                	and    ecx,edx
1000c012:	56                   	push   esi
1000c013:	be 00 02 00 00       	mov    esi,0x200
1000c018:	74 23                	je     0x1000c03d
1000c01a:	81 f9 00 01 00 00    	cmp    ecx,0x100
1000c020:	74 16                	je     0x1000c038
1000c022:	3b ce                	cmp    ecx,esi
1000c024:	74 0b                	je     0x1000c031
1000c026:	3b ca                	cmp    ecx,edx
1000c028:	75 13                	jne    0x1000c03d
1000c02a:	0d 00 0c 00 00       	or     eax,0xc00
1000c02f:	eb 0c                	jmp    0x1000c03d
1000c031:	0d 00 08 00 00       	or     eax,0x800
1000c036:	eb 05                	jmp    0x1000c03d
1000c038:	0d 00 04 00 00       	or     eax,0x400
1000c03d:	8b cb                	mov    ecx,ebx
1000c03f:	81 e1 00 00 03 00    	and    ecx,0x30000
1000c045:	74 0c                	je     0x1000c053
1000c047:	81 f9 00 00 01 00    	cmp    ecx,0x10000
1000c04d:	75 06                	jne    0x1000c055
1000c04f:	0b c6                	or     eax,esi
1000c051:	eb 02                	jmp    0x1000c055
1000c053:	0b c2                	or     eax,edx
1000c055:	f7 c3 00 00 04 00    	test   ebx,0x40000
1000c05b:	5e                   	pop    esi
1000c05c:	74 05                	je     0x1000c063
1000c05e:	0d 00 10 00 00       	or     eax,0x1000
1000c063:	c3                   	ret    
