#!/bin/bash

set -eu

if [ -x "$(command -v luarocks)" ]
then
	if include="$(luarocks config variables.LUA_INCDIR)"
	then
		printf -- '-I%s\n' "$include"
		exit 0
	fi
fi
pkg-config --cflags lua
