; FIND MAXIMUM AND MINIMUM IN ARRAY OF SIZE (N)
MOV SI, 2000H
MOV CL, [SI]            ; Store size of array
INC SI                  ; Increment stack index
CHECK:  MOV AL, [SI]
        CMP AH, AL      ; Carry bit is set if current < next value
        JNC NEXT        ; Jump to next element current is greatest
      
        MOV AH, AL      ; AH stores the greatest element, if AL>AH => AH=AL

NEXT:   INC SI          ; Increment stack pointer for next location
        DEC CL          ; Decrement count
        JNZ CHECK       ; End loop if count is zero, else continue checking     

HLT