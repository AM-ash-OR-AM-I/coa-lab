; Obj: sort in ascending and descending order
; Using bubble sort

MOV SI, 2000H
MOV BL, [SI]
INC SI
DEC BL                      ; Because we want to run this n-1 times.

RESET:  MOV     CL, BL      ; Reset counter for inner loop
        MOV     SI, 2001H   ; Reset pointer to the beginning of the array

CHECK:  MOV     AL, [SI]    ; Value of current element
        CMP     AL, [SI+1]  ; Compare current and next if current < next, carry is set to 1
        
        JC      NEXT        ; If current < next, no exchange needed go to next element

        XCHG    AL, [SI+1]  ; Exchange next value with the AL register containing current value
        MOV     [SI], AL    ; Replace previous value in AL register to current value
        
NEXT:   INC     SI          ; Get the next element
        DEC     CL          ; Decrement count for inner loop
        JNZ     CHECK       ; Continue checking until count is zero
        
        DEC     BL          ; Decrement count for main loop
        JNZ     RESET       ; Continue untill main loop finishes

HLT        