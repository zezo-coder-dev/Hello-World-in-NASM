section .text
  global _start
_start:
  mov edx , length_of_message ; set the length of message
  mov ecx , message ; set the message
  mov ebx , 1 ; ( stdout )
  mov eax , 4 ; ( sys_write )
  int 0x80 ; call kernel
  mov eax , 1 ; ( sys_exit )
  xor ebx , ebx ; call program to exit ( return 0 )
  int 0x80 ; call kernel
section .data
message db 'Hello World!' , 0xa ; set the content of message
length_of_message equ $ - message ; set the length of message to it