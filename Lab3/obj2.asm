; Count no. of 1s in 8-bit number

MOV SI, 2000H
MOV AL, [SI]
MOV CL, 08H         ; iterate 8 times
MOV BL, 0H          ; Store count

CHECK:  SHR AL, 01H ; Bit-shift right, if value is 1 carry flag is set
        JNC CONTIN  ; don't increment if no carry
        INC BL      ; Increment count
CONTIN: LOOP CHECK  ; Loop decrements CL internally until zero.

MOV [SI+1], BL      ; Store count in memory
HLT