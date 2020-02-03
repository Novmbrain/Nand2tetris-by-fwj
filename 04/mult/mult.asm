// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
//initialize the variables
@R0
D = M
@a  
M = D   //a <- R0

@R1 
D = M
@n 
M = D   //n <- R1

@R2
M = 0 //初始化R2

@sum
M = 0
@i 
M = 0   //use i as conter, use sum to save the result - > R2

(LOOP)
//if (i == n) goto END

@sum
D = M
@R2
M = D

@i
D = M
@n 
D = D - M 
@END
D;JEQ


@sum 
D = M
@a
D = D + M 
@sum
M = D   //sum = sun + a

@i
M = M + 1   //i++
@LOOP
0;JMP


(END)
@END
0;JMP




