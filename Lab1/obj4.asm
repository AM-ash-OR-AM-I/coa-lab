; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB4: Subtraction of 2, 16-BIT numbers using index addressing mode

MOV AX, 0000H;
MOV DS, AX;
MOV SI, 0500H;
MOV AX, [SI];
MOV BX, [SI+2];
SUB AX, BX;
MOV [SI+4], AX;
HLT