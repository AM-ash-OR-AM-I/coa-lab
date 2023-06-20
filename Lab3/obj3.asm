; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-3: Move the 16 bits from one location to another

MOV SI, 2000H
MOV CL, [SI]
INC SI
L1: MOV AX, [SI]
MOV [SI+100], AX
INC SI
INC SI
DEC CL
JNZ L1
HLT