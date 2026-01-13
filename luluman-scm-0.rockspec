package = "luluman"
rockspec_format = "3.0"
version = "scm-0"
description = {
   summary = "teeworlds huffman compression",
   detailed = "lua bindings for the teeworlds huffman compression code written in C",
   license = "Zlib",
   homepage = "https://github.com/luluworlds/luluman",
   issues_url = "https://github.com/luluworlds/luluman/issues",
   maintainer = "ChillerDragon <chillerdragon@gmail.com>",
   labels = { "compression", "huffman", "teeworlds", "ddnet", "ddracenetwork", "game" }
}
source = {
   url = "git://github.com/luluworlds/luluman",
   branch = "master"
}
build = {
   type = "builtin",
   modules = {
      luluman = { "src/huffman.c", "src/luluman.c" }
   }
}
