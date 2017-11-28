TITLE      (EmmetCookeProgram6.asm)

; Author: Emmet Cooke
; Course / Project ID: CS271 - Program 6 A                Date: 11/27/2017
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

getString MACRO prompt, error, userVar
	push			ecx
	push			edx
	displayString	prompt
	mov				edx, OFFSET userVar
	mov				ecx, (SIZEOF userVar) - 1
	call			ReadString
	pop				edx
	pop				ecx
ENDM

displayString MACRO buffer
	push	edx
	mov		edx, OFFSET buffer
	call	WriteString
	pop		edx
ENDM

.data
	; Strings for the introduction
	programTitle	BYTE	"Program 6A:  Read and Write Ints with Macros",0
	programmerName	BYTE	"Programmer: Emmet Cooke",0
	programDesc		BYTE	"This program asks the user for a number of integers and then", 0ah
					BYTE	"checks whether those are valid numbers. Once the correct number", 0ah
					BYTE	"has been entered, they are printed with their total sum and average.",0

	; Variables to get number from the user
	getNumber		BYTE	"Please enter an unsigned integer: ",0
	errorMessage	BYTE	"Error. Please try again.",0
	userInput		BYTE	32	DUP(?)
	userNumber		DWORD	?

.code
main PROC
	; Introduce the Programmer and Program
	displayString	programTitle
	call			Crlf
	displayString	programmerName
	call			Crlf
	displayString	programDesc
	call			Crlf

	; TEST
	getString		getNumber, errorMessage, userInput

	displayString	userInput

	exit	; exit to operating system
main ENDP

;-------------------------------------
; Procedure 
; recieves: 
; returns: 
; preconditions: 
; registers changed: 
;-------------------------------------
ReadVal PROC
ReadVal ENDP

;-------------------------------------
; Procedure 
; recieves: 
; returns: 
; preconditions: 
; registers changed: 
;-------------------------------------
WriteVal PROC
WriteVal ENDP

END main

