# NASM

## How to compile

```shell
# compile to object file using nasm
nasm -f elf filename.asm

# link with ld linker
ld -m elf_i386 -s -o filename filename.o
```