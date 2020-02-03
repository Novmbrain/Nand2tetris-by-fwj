// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;       
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// par1 to blacken all the screen

@SCREEN 
D = A 
@addr
M = D   //addr = 16384,screen's base address

@i 
M = 0
@8192
D = M
@n
M = D //initialize i and n as counter, 32 * 256 = 8192

@KBD 
D = A
@key 
M = D  // 将KBD的固定数值放入key，保护KBD不被破坏

(LOOP)
@key 
A = M   //利用A寄存器间接寻址
D = M   //将键盘寄存器的内容读入D寄存器

@LOOPFILL
D;JGT
@LOOP
D;JEQ

(LOOPFILL)
@R1
M = M + 1
@LOOP
0;JMP

// @LOOPNFILL
// D;JEQ   //if key = 0 jump to loopnfill, else jump to loopfill 

// //----------------
// (LOOPFILL)
// @i
// D = M
// @n 
// D = D - M 
// @LOOP
// D;JLT   //if i > n goto END

// @i
// D = M
// @addr
// A = M + D
// M = -1  //RAM[addr]=1111111111111111

// @i 
// M = M + 1   //i++      
// @LOOPFILL
// 0;JMP
// //----------------




