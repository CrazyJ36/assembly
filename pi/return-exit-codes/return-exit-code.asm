/* This is A basic example program that only returns A *fake*
   error exit-code 2(even though it runs sucessfully. After
   running the program return code can be viewed in linux with:
   $ echo $?
   Normally programs would return 0 on success, 1 if there was an error.

/* compile/run:
   $ as program.asm -o program.o
   $ gcc -o program program.o
   $ ./program
*/

/* This is how to write comment in GNU linux assembler. */

.global main        /* entry point main must be global to file */
.func main          /* main is declared as a function */
main:		    /* actual main, start of instructions */
    mov r0, #2	    /* Puts integer number 2 into cpu register 'r0', there are 12: r0, r1..*/
    bx  lr          /* br is 'Branch/exchange' branching changes flow of instructions
		       lr is 'Link register', used to hold return address for function.
		       So while still with number 2 at r0 we're sending 2 to return
		       to lowest register, which handles system calls.*/
