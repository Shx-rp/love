;;;;;;;;;;;;;
; Programmer.....: Shx
; Date...........: 15-03-2023
; Changes........: 
; Version........: V1.0 
; Obs............: My first Assembly Program
;			nasm -f elf64 -o love.o
;			ld love.o -o love
;			./love

section .data
	text db "I love Ethical Hacking" ,20

section .text
	global _start

_start:
	mov 	rax, 1
	mov 	rdi, 1
	mov	rsi, text
	mov	rdx, 30
	syscall
	mov	rax, 60
	xor	rdi, rdi
	syscall
	
	mov	rax, 60
	xor	rdi,rax
	syscall
