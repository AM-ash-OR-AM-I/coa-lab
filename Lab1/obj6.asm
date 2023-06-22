; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB6: Multiply 2 16-BIT numbers without using MUL

MOV AX, 0000H
MOV BX, [0500H]
MOV CX, [0502H]
C1: ADD AX, BX
    JNC C2
    INC DX
C2: LOOP C1
MOV [0504H], AX
MOV [0506H], DX
HLT