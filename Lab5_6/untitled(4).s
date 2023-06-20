// Name: Ashutosh Mahapatra
// Reg.No: 214013014
// Lab6: Obj-3

.global _start
_start:
		ldr r0, =list		// list memory location 
		ldr r1, =oddlist	// oddlist memory location
		ldr r2, =evenlist	 
		ldr r3, =count		
		ldr r3, [r3]
loop1:	ldr r4, [r0]
		and r5, r4, #1
		cmp r5, #1
		beq odd
even:	str r4, [r2], #4
		bal loop2
odd:	str r4, [r1], #4
loop2:	subs r3, r3, #1
		bne loop1

.data
list:		.word	1, 8, 3, 4, 5, 6
count:		.word	6
oddlist:	.word	0, 0, 0, 0, 0, 0
evenlist: 	.word	0, 0, 0, 0, 0, 0

.end