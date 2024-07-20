#include <lua5.1/lua.h>
#include <lua5.1/lauxlib.h>

#include "huffman.h"

int huff_decompress(lua_State *L)
{
	const char *pInput = lua_tostring(L, -2);
	lua_Integer Size = lua_tointeger(L, -1);

	Init(0);
	unsigned char aOutput[4048];
	int DecompressedSize = Decompress(pInput, Size, aOutput, sizeof(aOutput));
	lua_pushlstring(L, (const char *)aOutput, DecompressedSize);

	return 1;
}

int huff_compress(lua_State *L)
{
	const char *pInput = lua_tostring(L, -2);
	lua_Integer Size = lua_tointeger(L, -1);

	Init(0);
	unsigned char aOutput[4048];
	int CompressedSize = Compress(pInput, Size, aOutput, sizeof(aOutput));
	lua_pushlstring(L, (const char *)aOutput, CompressedSize);

	return 1;
}


int luaopen_luluman(lua_State *L)
{
	lua_newtable(L);
	lua_pushcfunction(L, huff_decompress);
	lua_setfield(L, -2, "decompress");
	lua_pushcfunction(L, huff_compress);
	lua_setfield(L, -2, "compress");
	return 1;
}

// sudo luarocks make
// echo 'h = require("huffman");r = h.decompress(string.char(0x1c, 0xa5, 0xb8, 0x01), 4);print(r)' |  lua -
