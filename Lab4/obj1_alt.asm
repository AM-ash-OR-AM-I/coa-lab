; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-1: Find the largest and smallest number (8BIT) in each array of size N

MOV SI, 2000H   
MOV CL, [SI]             
INC SI          
MOV AL, [SI]    
DEC CL
C1: INC SI    ; Loop auto decrements CX w/o updating its value
MOV BL, [SI]    
CMP AL, BL
JNC C2
MOV AL, BL      
C2:LOOP C1
HLT