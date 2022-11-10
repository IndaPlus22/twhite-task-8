# int multiply(int a, int b) {
#   int i, sum = 0;
#   for (i = 0; i < a; i++)
#   	sum += b;
#    return sum;
#}

# int faculty(int n) {
#   int i, fac = 1;
#   for (i = n; i > 1; i--)
#        fac = multiply(fac, i);
#    return fac;
#}

main: 
	li $a0 5
	li $a1 6
		jal multiply
	li $v0, 1
	syscall
	
	li $v0, 10                          # system call code for exit
    syscall
	

multiply:
	
	li $t0, 0			#initialize increment index as 0
	li $s0, 0			#initialize sum as 0
	
	loop:
		add $s0, $v0, $0			#add first integer to the sum
		add $t0, $t0, 1					#increment index 
		beq $t0, $a1, loop		#While the index is not equal to 
	
	jr $ra
	nop
	
faculty:
	
	
	
