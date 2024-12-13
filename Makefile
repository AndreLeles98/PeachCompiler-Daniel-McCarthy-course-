OBJECTS= ./build/compiler.o ./build/cprocess.o
INCLUDES= -I./

all: ${OBJECTS}
	gcc main.c ${INCLUDES} ${OBJECTS} -g -o ./main

./build/compiler.o: ./compiler.c
	gcc ./compiler.c ${INCLUDES} -o ./build/compiler.o -g -c

./build/cprocess.o: ./cprocess.c
	gcc ./cprocess.c ${INCLUDES} -o ./build/cprocess.o -g -c

./build/buffers.o: ./helpers/buffer.c
	gcc ./helpers/buffer.c ${INCLUDES} -o ./builder/helpers/buffer.o -g -c

clean:
	rm ./main
	rm -rf ${OBJECTS}