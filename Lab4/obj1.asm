; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-1: Find the largest and smallest number (8BIT) in each array of size N

MOV SI, 2000H   
MOV CL, [SI]    ; Get size of array
INC SI          
MOV AL, [SI]    ; Get the value of 1st number
DEC CL          ; decrement size since 1st number (AL) is taken
C1: INC SI          
MOV BL, [SI]    ; Get next input of array
CMP AL, BL      ; Compare current value with previous value (max < A[i], max-A[i] requires carry => sets carry flag true)
JNC C2          ; If not carry, A[i]<max skip line 17 and go to C2
MOV AL, BL      ; If carry flag set 1 => BL>AL (A[i]>max => max = A[i])
C2: DEC CL      ; Decrement Count
JNZ C1          ; Jump to C1 while count not zero
HLT