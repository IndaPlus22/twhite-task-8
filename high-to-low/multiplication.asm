main: 
	li, $a0, 5
	li, $a1, 6
		jal multiply
	move $a0, $v0
	li $v0, 1
	syscall
	
	li $a1, 5
		jal faculty
		move $a0, $v0
	li $v0, 1
	syscall
	j exit
	
exit:
	li $v0, 10                          # system call code for exit
    syscall

multiply:
	move $t1, $a0
	move $t2, $a1
	li $t0, 0
	li $t3, 0
	
	multiply_loop:
		add $t3, $t3, $t2			#add second integer to the sum
		addi $t0, $t0, 1					#increment index 
		bne $t0, $t1, multiply_loop		#Loop until the index is equal to the first number 
		move $v0, $t3
		jr $ra
	
faculty:
	li $a0, 1
	la $t9, ($ra)
	
		faculty_loop:
			jal multiply
			move $a0, $v0
			addi $a1, $a1,  -1
			bne $a1, 1, faculty_loop
			move $v0, $t3
	jr $t9
		
		
	
	
	
	
