; EH_epilog
;
; [inline]
; void
; EH_epilog(void);
;
;
; Read https://en.wikipedia.org/wiki/Microsoft-specific_exception_handling_mechanisms#Implementation
;


_entry_1000586d:
	mov    ecx,DWORD PTR [ebp-0x10]         ;
	mov    DWORD PTR fs:0x0,ecx             ;

	pop    ecx
	pop    edi
	pop    edi
	pop    esi
	pop    ebx
	mov    esp,ebp
	pop    ebp
	push   ecx
	ret    
