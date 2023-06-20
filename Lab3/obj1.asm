; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-1: Find the sum and average of N 16-bit numbers

MOV SI, 2000H   ; Initialize stack index to 2000h
MOV CL, [SI]    ; Give offset address as 2000h for giving value of n (8 BIT number)
MOV BL, CL      ; Save the copy of n in bx BL<=CL
MOV DX, 0000H   ; Initialize DX to 0000h for storing overflow
INC SI
L1:      
ADD AX, [SI]    ; Add each number a1, a2,..., an to AX
INC SI          ; Increment stack index by 16bit to get the next number ai
INC SI
JNC L2          ; If carry flag is zero i.e. no overflow Jump to L2 else increment DX for overflow case.
INC DX
L2: DEC CL      ; keep decreasing CL i.e. numbers to read
JNZ L1          ; If CL is not zero jump to L1 else move to next instruction
MOV [SI], AX    ; Store/move value of sum of next 16 bit address
MOV [SI+2], DX  ; Store the Most significant bits (Overflow values for >16bit) in next 16bit location
DIV BX          ; Divide AX<=AX/BX to get Average
MOV [SI+4], AX  ; Store avg.
HLT