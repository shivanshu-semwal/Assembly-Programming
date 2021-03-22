// move data from memory block at location 3050 
// to 3060, block length is 5

MVI L,05H       // [L] <- 05H
LXI B,3050H     // [B] <- 30, [C] <- 50
LXI D,3060H     // [D] <- 30, [E] <- 60
LOOP: LDAX B    // [A] <- [[BC]]
STAX D          // [[DE]] <- [A]
INX B           // [BC] <- [BC] + 1
INX D           // [DE] <- [DE] + 1
DCR L           // [L] <- [L] - 1
JNZ LOOP        // jump if not zero
HLT

# ORG 3050
# DB 12,13,14,15,16