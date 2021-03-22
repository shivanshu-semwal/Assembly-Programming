# NASM Assembly CheatSheet
```shell
# compile to object file using nasm
nasm -f elf filename.asm

# link with ld linker
ld -m elf_i386 -s -o filename filename.o
```

## Sections
>.data : it is used for initialized data
>.bss : it is used for uninitialized data
>.text : it is used for code

## Comments

```asm
; assembly comments starts with semicolon
```

## Statements

* executable instructions
* assembler directives (pseudo-ops)
* macros

## Syntax

```asm
[label] mnemonic [operands] [;comment]
```

## Memory segments

* data segment : used to declare memory region where data elements are stored and cannot be expanded after the data elements are declared, and it remains static throughout the program. The __.bss__ section is also a static memory section that contains __buffers__ for data to be declared later in the program. This buffer memory is __zero-filled__.
* code segment : defines area in memory that stores instructions.
* stack segment : contains data value passed to functions and procedures within the program

## Registers


* General 
	* Data
	* Pointer
	* Index 
* Control
* Segment

### Data Registers


