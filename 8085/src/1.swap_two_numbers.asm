// program to swap two numbers 
// at location 3050, 3060

LXI H, 3050H    // load [H] <- 30, [L] <- 50
MOV B,M         // [B] <- [HL]         
LDA 3060H       // [A] <- [3060]
STA 3050H       // [3060] <- [A]
MOV A,B         // [A] <- [B]
STA 3060H       // [3060] <- [A]
HLT

# ORG 3050
# DB 10
# ORG 3060
# DB 20
