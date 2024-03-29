TARGET=sample

all:
	swig -python ${TARGET}.i
	gcc -c ${TARGET}_wrap.c -fPIC -I/usr/include/python3.8
	ld -shared ${TARGET}_wrap.o -o _${TARGET}.so

# see the results of pre-processing
postproc:
	swig -E -python ${TARGET}.i

# This is a list of all the files that are included in order of inclusion
dependencies:
	swig -M -python ${TARGET}.i

debugtags:
	swig -python -debug-tags ${TARGET}.i

debugmod:
	swig -python -debug-module 1 ${TARGET}.i

.PHONY: clean
clean:
	rm -rf ${TARGET}_wrap.c ${TARGET}.py __pycache__ *.o *.so
