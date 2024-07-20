local huffman = require("huffman")
local data = string.char(0x1c, 0xa5, 0xb8, 0x01)
local decompressed = huffman.decompress(data, #data)
assert(decompressed == "a")

