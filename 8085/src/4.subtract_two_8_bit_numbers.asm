// assembly language program to subtract two 8 bit numbers
// with borrow, at location 3050, 3051 and store result at
// 3060 and 3061

MVI C,00H
LXI H,3050H
MOV A,M
INX H
SUB M
JNC LOC
INR C
CMA
INR A
LOC: STA 3060H 
MOV A,C
STA 3061H
HLT

# ORG 3050
# DB 21,31