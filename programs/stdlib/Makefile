FILES=./build/start.o ./build/sidos.o
INCLUDES=

all: ${FILES}
	i686-elf-ld -m elf_i386 -relocatable ${FILES} -o ./stdlib.elf

./build/start.o: ./src/start.asm
	nasm -f elf ./src/start.asm -o ./build/start.o

./build/sidos.o: ./src/sidos.asm
	nasm -f elf ./src/sidos.asm -o ./build/sidos.o


clean:
	rm -rf ${FILES}
	rm ./stdlib.elf