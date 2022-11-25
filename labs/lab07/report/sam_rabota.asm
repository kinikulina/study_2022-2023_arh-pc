%include 'in_out.asm'

SECTION .data

prim: DB '(11+ x)*2-6',0
x1: DB 'Введите зачение x: ',0
otv1: DB 'Ответ при x= ',0

SECTION .bss
x:  RESB 80
rez:RESB 80

SECTION .text
Global _start
_start:

mov eax, prim
call sprintLF

mov eax,x1
call sprintLF

mov ecx,x
mov edx,80
call sread

mov eax, x
call atoi

mov ebx, 11
add eax, ebx
mov ebx, 2
mul ebx
sub eax, 6

mov [rez], eax

mov eax,otv1
call sprintLF
mov eax, [rez]
call iprintLF

call quit

