# This makefile is mostly a helper for neovim
# to generate compile_commands.json
# it also actually produces a working luluman.so
# but you should use `luarocks make` instead

LUA_CFLAGS := $(shell scripts/cflags.sh)

luluman.so: src/huffman.c
	gcc -O2 -fPIC $(LUA_CFLAGS) -c src/huffman.c -o src/huffman.o
	gcc -O2 -fPIC $(LUA_CFLAGS) -c src/luluman.c -o src/luluman.o
	gcc  -shared -o src/luluman.so src/huffman.o src/luluman.o

.PHONY: clean

clean:
	rm -f luluman.so
	rm -f src/*.o

