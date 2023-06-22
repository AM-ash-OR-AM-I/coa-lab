; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-3: Perform the following operations on two 8-bit data (data1, data2) given in
; memory locations and store the result in another memory location using
; indirect addressing mode.

; i. Swapping of nibble of data1
MOV SI, 0500H;  Set offset value
MOV AL, [SI];   Data1 = 12
INC SI
MOV AH, [SI];   Data2 = 34
INC SI

ROR AL, 04H;    Rotate by 4 locations
ROR AH, 04H;    Rotate by 4 locations

MOV [SI], AL;   Move value of AL to physical memory
INC SI
MOV [SI], AH;   Move value of AH to physical memory
INC SI

; ii. Y = (data1 and data2) or (data1 xor data2);
MOV BL, AL;     Copy AL value to BL (data1)
MOV BH, AH;     Copy AH value to BH (data2)
AND BH, BL;     Apply AND operation on data1 and data2, result stored in BH
XOR AH, AL;     Apply XOR operation on data1 and data2, result stored in AH
OR AH, BH;      Apply OR operation on result

MOV [SI], AH;   Move contents of result to memory
HLT