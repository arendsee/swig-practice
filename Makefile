TARGET=sample

all:
	swig -python ${TARGET}.i
	gcc -c ${TARGET}_wrap.c -fPIC -I/usr/include/python3.8
	ld -shared ${TARGET}_wrap.o -o _${TARGET}.so

.PHONY: clean
clean:
	rm -rf ${TARGET}_wrap.c ${TARGET}.py __pycache__ *.o *.so
