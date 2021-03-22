// add two 8 bit numbers with or without carry
// number are stored at location 3050, and 3051
// store result at 3060, 3061

MVI C,00H       // [C] <- 0
LXI H,3050H     // [H] <- 30, [L] <- [50]
MOV A,M         // [A] <- [[HL]]
INX H           // [HL] <- [HL] + 1
ADD M           // [A] <- [A] + [[HL]]
JNC LOC         // jump to loc if no carry
INR C           // [C] <- [C] + 1
LOC: STA 3060H  // [3060] <- [A]
MOV A,C         // [A] <- [C]
STA 3061H       // [3061] <- [A]
HLT

# ORG 3050
# DB 99,99