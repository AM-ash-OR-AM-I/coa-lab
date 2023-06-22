; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; OBJ-2: Arrange the elements of a given array of size N in ascending and descending order

MOV SI, 2000H   
MOV BL, [SI]   
INC SI
DEC BL

C3:
MOV CL, BL      ; Copy value of BL to CL for each iteration in 2nd loop.
MOV SI, 2001H   

C2: 
MOV AL, [SI]
CMP AL, [SI+1]

JC C1           ; JNC C1 (For Decreasing order)
XCHG AL, [SI+1] ; Exhange current value with previous value.
MOV [SI], AL   

C1: 
INC SI

LOOP C2

DEC BL

JNZ C3
HLT