; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB7: Div 2 16-BIT numbers without using DIV

MOV AX, 0000H
MOV DS, AX; Sets DS to 0 default is 0100H
MOV AX, [0500H]
MOV BX, [0502H]
MOV CX, 0000H;
C2: CMP AX, BX;  Checks if AX > BX continues loop, if AX <= BX JC C1
JC C1
SUB AX, BX
INC CX
JMP C2
C1: MOV [0504H], AX;  Remainder is stored at AX
MOV [0506H], CX; Quotient is stored at CX
HLT
