; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-3: Addition of 2, 16-BIT numbers using indirect addressing mode
 
 
 MOV AX, 0000H;
 MOV DS, AX;
 MOV SI, 1000H;
 MOV AX, [SI];
 INC SI;
 INC SI;
 MOV BX, [SI];
 ADD AX, BX;  
 INC SI;
 INC SI;
 MOV [SI], AX;
 HLT