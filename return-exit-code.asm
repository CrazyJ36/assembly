/* A comment, GNU assembler type. */

/* entry point main must be global to file */
.global main

/* main is declared as a function */
.func main 

main:		    /* actual main, start of instructions */
    mov r0, #2	/* Puts number 2 into cpu register 'r0', there are 12: r0, r1..*/
    bx  lr		/* br is 'Branch/exchange' branching changes flow of instructions
				   lr is 'Link register', used to hold return address for function.
				   So while still with number 2 at r0 we're sending 2 to return
				   to lowest register, which handles system calls.*/