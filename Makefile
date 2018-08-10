all:
    nasm -f elf32 shell.s
    ld -m elf_i386 -o shell shell.o
clean:
    rm -rf shell.o
    rm -rf shell
