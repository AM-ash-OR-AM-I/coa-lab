; Name: Ashutosh Mahapatra
; Branch: CSE
; Regd. No: 2141013014
; Section: K
; LAB-3: Move the 16 bits from one location to another
MOV SI,1000H        ; 1st memory location
MOV DI,2000H        ; 2nd memory location
MOV CL,[SI]         ; Length of array
INC SI              ; Check for next element          

ITERATE:MOV AX,[SI] ; Move element to temporary register AX 
        MOV [DI],AX ; Store element in 2nd memory location
        INC SI      ; Go to next memory location to scan
        INC DI      ; Move pointer to next memory location to move
        LOOP ITERATE; Iterate untill all elements scanned
HLT 