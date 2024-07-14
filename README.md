# luluman

Lua bindings for the teeworlds huffman compression code written in C.


```
luarocks install luluman
```

```lua
local huffman = require("huffman")
local data = string.char(0x1c, 0xa5, 0xb8, 0x01)
local decompressed = huffman.decompress(data, #data)
print(decompressed) -- "a"
```
