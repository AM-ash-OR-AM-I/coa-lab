; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-2: Find Gray code of an 8-bit binary number

MOV AL, 12H
MOV AH, AL; Copies value of AL to AH
SHR AL, 01H; Shift value of AL by 1 bit (0001 0010 -> 0000 1001)
XOR AH, AL; Finds XOR value of AH and AL => 1BH
HLT