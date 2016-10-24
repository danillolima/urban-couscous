   global _main
   %include "asm_io.inc"
segment .msg
  m1 db "Tabuada de multiplicar", 10, 0
  m2 db "", 10, 0
  m3 db " * ", 0
  m4 db " = ", 0
  m5 db " | ", 0
   section .text
_main: 
	mov eax, m1
	call print_string
	mov ebx, 0
	mov  ecx, 1

L1: cmp ebx, 11
	je L2
    mov eax, ecx
    call print_int
    mov eax, m3	  
    call print_string	
    mov eax, ebx
    call print_int
    mov eax, m4  
   call print_string	
    mov eax, ebx 	
    imul eax, ecx
    call print_int
    mov eax, m5
    call print_string
    inc ebx 
    jmp L1
L2:	
    cmp ecx, 10
	je end
    mov eax, m2
    call print_string 
    inc ecx
    mov ebx, 0	
    jmp L1	 

end:
	ret