; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB2: Subtraction of 2, 16-BIT numbers using direct addressing mode

MOV AX, 1000H;
MOV DS, AX;
MOV AX, [2000h];
MOV BX, [2002h];
SUB AX, BX;
MOV [2004H], AX;
HLT