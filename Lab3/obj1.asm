; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-1: Find the sum and average of N 16-bit numbers

MOV SI, 2000H               ; Initialize stack index to 2000h
MOV CL, [SI]                ; Give offset address as 2000h for giving value of n (8 BIT number)
MOV BL, CL                  ; Store the copy of address 
INC SI
MOV AX, 0000H       

FIND_SUM: ADD AX, [SI]      ; Add values
          JNC NEXT          ; Go to next element if no overflow
            
          INC DX            ; Overflow condition.
            
NEXT:     INC SI          
          INC SI            ; Increment twice for next memory location (16 bits)
          LOOP FIND_SUM     ; Loop auto-decrements CX/CL

MOV [SI], AX                ; Store sum in next memory location
MOV [SI+2], DX              ; Store the Most significant bits (Overflow values for >16bit) in next 16bit location
DIV BX                      ; Divide AX<=AX/BX to get Average
MOV [SI+4], AX              ; Store average.
HLT