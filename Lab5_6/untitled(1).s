// Name: Ashutosh Mahapatra
// Reg.No: 214013014
// Lab5: Obj-2

.global _start
_start:

	ldr r0, =a		// 1st memory location
	ldr r1, =b		// 2nd memory location 
	ldr r2, [r0]	// load first number to r2
	ldr r3, [r1]	// load 2nd numbe to r3
	sub r4, r2, r3	// sub r3, r2 and store to r4

	.data
	a: .word	5
	b: .word	3
.end