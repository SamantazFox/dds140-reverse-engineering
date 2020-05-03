1000c064:	33 c0                	xor    eax,eax
1000c066:	f6 c2 10             	test   dl,0x10
1000c069:	74 05                	je     0x1000c070
1000c06b:	b8 80 00 00 00       	mov    eax,0x80
1000c070:	f6 c2 08             	test   dl,0x8
1000c073:	53                   	push   ebx
1000c074:	56                   	push   esi
1000c075:	57                   	push   edi
1000c076:	bb 00 02 00 00       	mov    ebx,0x200
1000c07b:	74 02                	je     0x1000c07f
1000c07d:	0b c3                	or     eax,ebx
1000c07f:	f6 c2 04             	test   dl,0x4
1000c082:	74 05                	je     0x1000c089
1000c084:	0d 00 04 00 00       	or     eax,0x400
1000c089:	f6 c2 02             	test   dl,0x2
1000c08c:	74 05                	je     0x1000c093
1000c08e:	0d 00 08 00 00       	or     eax,0x800
1000c093:	f6 c2 01             	test   dl,0x1
1000c096:	74 05                	je     0x1000c09d
1000c098:	0d 00 10 00 00       	or     eax,0x1000
1000c09d:	f7 c2 00 00 08 00    	test   edx,0x80000
1000c0a3:	bf 00 01 00 00       	mov    edi,0x100
1000c0a8:	74 02                	je     0x1000c0ac
1000c0aa:	0b c7                	or     eax,edi
1000c0ac:	8b ca                	mov    ecx,edx
1000c0ae:	be 00 03 00 00       	mov    esi,0x300
1000c0b3:	23 ce                	and    ecx,esi
1000c0b5:	74 1f                	je     0x1000c0d6
1000c0b7:	3b cf                	cmp    ecx,edi
1000c0b9:	74 16                	je     0x1000c0d1
1000c0bb:	3b cb                	cmp    ecx,ebx
1000c0bd:	74 0b                	je     0x1000c0ca
1000c0bf:	3b ce                	cmp    ecx,esi
1000c0c1:	75 13                	jne    0x1000c0d6
1000c0c3:	0d 00 60 00 00       	or     eax,0x6000
1000c0c8:	eb 0c                	jmp    0x1000c0d6
1000c0ca:	0d 00 40 00 00       	or     eax,0x4000
1000c0cf:	eb 05                	jmp    0x1000c0d6
1000c0d1:	0d 00 20 00 00       	or     eax,0x2000
1000c0d6:	b9 00 00 00 03       	mov    ecx,0x3000000
1000c0db:	5f                   	pop    edi
1000c0dc:	23 d1                	and    edx,ecx
1000c0de:	81 fa 00 00 00 01    	cmp    edx,0x1000000
1000c0e4:	5e                   	pop    esi
1000c0e5:	5b                   	pop    ebx
1000c0e6:	74 16                	je     0x1000c0fe
1000c0e8:	81 fa 00 00 00 02    	cmp    edx,0x2000000
1000c0ee:	74 0a                	je     0x1000c0fa
1000c0f0:	3b d1                	cmp    edx,ecx
1000c0f2:	75 0f                	jne    0x1000c103
1000c0f4:	0d 00 80 00 00       	or     eax,0x8000
1000c0f9:	c3                   	ret    
1000c0fa:	83 c8 40             	or     eax,0x40
1000c0fd:	c3                   	ret    
1000c0fe:	0d 40 80 00 00       	or     eax,0x8040
1000c103:	c3                   	ret    
