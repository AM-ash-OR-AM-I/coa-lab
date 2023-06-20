// Name: Ashutosh Mahapatra
// Reg.No: 214013014
// Lab5: Obj-4	

.global _start
_start:

	ldr r0, =a		// 1st memory location
	ldr r1, =b		// 2nd memory location 
	ldr r2, [r0]	// load first number to r2
	ldr r3, [r1]	// load 2nd numbe to r3
	and r4, r2, r3	// and operation r3, r2 and store to r4
	orr r5, r2, r3	// or operation r3, r2 and store to r4
	eor r6, r2, r3	// xor operation r3, r2 and store to r4
	mvn r7, r2	// not operation r2 and store to r4
	

	.data
	a: .word	5
	b: .word	3
.end