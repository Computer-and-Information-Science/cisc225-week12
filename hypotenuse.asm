; Given two sides of a right triangle, calculate hypotenuse
; Northampton Community College
; CISC 225, Computer Organization

global main		; exposes program entry point to the linker
extern printf	; declare external function
extern scanf

section .text	; start of code segment

main:
	push rbp				; preserve base pointer
	mov rbp,rsp				; copy stack pointer to base pointer

  ; Prompt for input of two sides


  ; Input side a and side b


  ; Square side a, leaving result in XMM0


  ; Square side b, leaving result in XMM1


  ; Add squares of sides a and b, result in XMM0


  ; Square root of sum, result in XMM0


  ; Output result


	pop		rbp				; restore base pointer
	mov		rax, 0			; exit status (0 = success)
	ret

section .data	; start of initialized data segment

  fmt_prompt db "Enter length of two sides: ",0 ; prompt format string
  fmt_input db "%lf %lf",0 ; input format string, two 64-bit fp values
  fmt_output db "The hypotenuse is %0.2lf.",0xa,0

section .bss	; start of uninitialized data segment

  side_a resq 1
  side_b resq 1