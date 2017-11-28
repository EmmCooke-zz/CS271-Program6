TITLE      (EmmetCookeProgram6.asm)

; Author: Emmet Cooke
; Course / Project ID: CS271 - Program 6 A                Date:
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

getString MACRO buffer
ENDM

displayString MACRO buffer
	push	edx
	mov		edx, OFFSET buffer
	call	WriteString
	call	Crlf
	pop		edx
ENDM

.data
	; Strings for the introduction
	programTitle	BYTE	"Program 6A:  Read and Write Ints with Macros",0
	programmerName	BYTE	"Programmer: Emmet Cooke",0
	programDesc		BYTE	"This program asks the user for a number of integers and then", 0ah
					BYTE	"checks whether those are valid numbers. Once the correct number", 0ah
					BYTE	"has been entered, they are printed with their total sum and average.",0

	; String to get number from the user
	getNumber		BYTE	"Please enter an unsigned integer: ",0
	errorMessage	BYTE	"Error. Please try again.",0

.code
main PROC
	; Introduce the Programmer and Program
	displayString	programTitle
	displayString	programmerName
	displayString	programDesc



	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main

