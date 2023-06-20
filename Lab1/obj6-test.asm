; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB5: Addition of 2, 16-BIT numbers using base index addressing mode

MOV AX, 0000H
MOV DS, AX
MOV SI, 0500H
MOV BX, 1000H
MOV AX, [SI+BX]
MOV CX, [SI+BX+02H];
ADD AX, CX
MOV [SI+BX+04H], AX
HLT