TITLE      (EmmetCookeProgram6.asm)

; Author: Emmet Cooke
; Course / Project ID: CS271 - Program 6 A                Date:
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

.data
	; Strings for the introduction
	programTitle	BYTE	"Program 6A:  Read and Write Ints with Macros",0
	programmerName	BYTE	"Programmer: Emmet Cooke",0
	programDesc		BYTE	"This program asks the user for a number of integers and then", 0ah
					BYTE	"checks whether those are valid numbers. Once the correct number", 0ah
					BYTE	"has been entered, they are printed with their total sum and average.",0

.code
main PROC
	; Introduce the Programmer and Program
	mov		edx, OFFSET programTitle
	call	WriteString
	call	Crlf
	mov		edx, OFFSET programmerName
	call	WriteString
	call	Crlf
	mov		edx, OFFSET programDesc
	call	WriteString
	call	Crlf



	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
