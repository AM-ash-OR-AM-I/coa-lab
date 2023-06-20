; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-2: Count no. of 1’s in an 8-bit number.

MOV SI, 1000H   ; Initialize stack Index
MOV AL, [SI]    ; Offset address for AL
MOV BL, 08H     ; To shift by 8 bits 
MOV CL, 00H     ; To store count of 1s
C1: SHR AL, 01H ; Right bit-shift operation
JNC C2          ; Jump to C2 if Carry flag is False i.e. Least significant bit for AL is non zero
INC CL          ; If set-bit(1) found / CarryFlag is True increment CL
C2: DEC BL      ; Decrement BL for each bit shift operation
JNZ C1          ; Jump to C1 until 8 bitshift operation is made
MOV [SI+1], CL  ; Store the count of set bits in next offset address.
HLT