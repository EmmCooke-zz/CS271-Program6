TITLE      (EmmetCookeProgram6.asm)

; Author: Emmet Cooke
; Course / Project ID: CS271 - Program 6 A                Date: 11/27/2017
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

;-------------------------------------
; Macro to display a string
;-------------------------------------
displayString MACRO buffer
	push	edx
	mov		edx, buffer
	call	WriteString
	pop		edx
ENDM

;-------------------------------------
; Macro to get a string input from the
; user that will be converted to an
; unsigned int
;-------------------------------------
getString MACRO prompt, userVar, varSize
	push			edx
	push			ecx
	displayString	prompt
	mov				edx, userVar
	mov				ecx, varSize
	call			ReadString
	pop				ecx
	pop				edx
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

	numArray		DWORD	10	DUP(?)

.code
main PROC
	; Introduce the Programmer and Program
	push			OFFSET programTitle
	push			OFFSET programmerName
	push			OFFSET programDesc
	call			introduceProgrammer

	; Get the numbers from the user
	push			OFFSET userInput		; +20
	push			SIZEOF userInput		; +16
	push			OFFSET getNumber		; +12
	push			OFFSET errorMessage		; +8
	call			readVal


	displayString	OFFSET userInput

	exit	; exit to operating system
main ENDP

;-------------------------------------
; Procedure 
; recieves: 
; returns: 
; preconditions: 
; registers changed: 
;-------------------------------------
introduceProgrammer PROC
	push			ebp
	mov				ebp, esp
	displayString	[ebp+16]
	call			Crlf
	displayString	[ebp+12]
	call			Crlf
	displayString	[ebp+8]
	call			Crlf
	pop				ebp
	ret
introduceProgrammer ENDP


;-------------------------------------
; Procedure 
; recieves: 
; returns: 
; preconditions: 
; registers changed: 
;-------------------------------------
readVal PROC
	push		ebp
	mov			ebp, esp

	mov			eax, [ebp+20]
	mov			ecx, [ebp+16]
	mov			edx, [ebp+12]

	getString	edx, eax, ecx
	pop			ebp
	ret
readVal ENDP

;-------------------------------------
; Procedure 
; recieves: 
; returns: 
; preconditions: 
; registers changed: 
;-------------------------------------
writeVal PROC
writeVal ENDP

END main

