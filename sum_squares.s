 	.text
 	.globl	_sum_squares

	# See the declaration in sum_squares.h
	# This function takes one parameter:
	#   -- a 64-bit integer n in the %rdi register
	# It returns the sum of squares of the numbers from 1 to n.
	# The return value, being 64 bits, must be placed in the %rax register.
	
_sum_squares:                            

	# Note: You can overwrite the 64-bit registers %rax, %rcx, %rdx,
	# %rsi, %rdi, %r8, %r9, %r10, %r11 as you like. These are
	# "caller-saved" registers.
	
	pushq	%rbp		# LEAVE THIS ALONE
	movq	%rsp, %rbp	# LEAVE THIS ALONE

	/* FILL THIS IN */  # sum = 0, since sum is to be returned,
	movq $0,%rax		    # use %rax to hold sum.

	/* FILL THIS IN */  # i = 1
	movq $1,%r11

/* THIS IS THE TOP OF THE LOOP, NEED A LABEL HERE */		
LOOPTOP:
	/* FILL THIS IN */  # compare i to n 
	/* FILL THIS IN   # if i is greater than n, jump out of loop*/
	cmpq %rdi,%r11
	jg LOOPBOTTOM

	/* FILL THIS IN */  # copy i into another register
	movq %r11,%r10

	/* FILL THIS IN */  # multiply that register by i to get i*i
	imulq %r11,%r10

	/* FILL THIS IN */  # add that register to sum
	addq %r10,%rax

	/* FILL THIS IN */  # i++
	incq %r11

	/* FILL THIS IN */  # jump to top of loop
	jmp LOOPTOP

/* THIS IS OUTSIDE THE LOOP, NEED A LABEL HERE */
LOOPBOTTOM:

		    # the return value, sum, is already in %rax

	popq	%rbp        # LEAVE THIS ALONE
	retq                # LEAVE THIS ALONE

