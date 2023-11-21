; Temperature Conversion
; Northampton Community College
; CISC 225, Computer Organization

global main		; exposes program entry point to the linker
extern printf	; declare external function
extern scanf

section .text	; start of code segment

main:
	push rbp				; preserve base pointer
	mov rbp,rsp				; copy stack pointer to base pointer

  ; Prompt for input

  ; Input temperature and scale

  ; Branch to appropriate label based on scale

.ftoc:
  ; Input scale was F, convert to C and output

.ctof:
  ; Input scale was C, convert to F and output

.done:
	pop		rbp				; restore base pointer
	mov		rax, 0			; exit status (0 = success)
	ret

section .data	; start of initialized data segment

  ; Format strings for prompt and input
	fmt_prompt db "Temperature and scale (e.g. 45.2f): ",0
  fmt_input db "%lf%c",0

  ; Format strings for output
  fmt_ftoc_output db "%.2lfF = %.2lfC",0xa,0
  fmt_ctof_output db "%.2lfC = %.2lfF",0xa,0

  ; Constants for conversion formulas
  c5 dq 5.0
  c9 dq 9.0
  c32 dq 32.0

section .bss	; start of uninitialized data segment
  temp resq 1      ; To receive floating point temperature input
  scale resb 1     ; To receive character scale