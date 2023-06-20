// Name: Ashutosh Mahapatra
// Reg.No: 214013014
// Lab6: Obj-1

.global _start
_start:
		ldr r0, =count		// count memory location 
		ldr r1, =arr		// Array memory location
		ldr r2, [r0]		// load count to r2
		sub r2, r2, #1		// Reduce count by 1
		ldr r3, [r1]		// Load first element in array, r3 = greatest
loop1:	ldr r4, [r1], #4	// Load next element and update r1 to next number
		cmp r4, r3			// Compare if greatest < next
		blt loop2			// Branch to loop2 if current less than next
		ldr r3, [r1]		// Update greatest = next
loop2:	add r1, r1, #4		// Read the next element in arr
		adds r2, r2, #-1	// Reduce count by 1
		bne loop1			// Branch 
		ldr r4, =res
		str r3, [r4]

	.data
	arr:	.word	1, 8, 3, 4, 5
	count:	.word	5
	res:
.end