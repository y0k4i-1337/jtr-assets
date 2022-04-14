#!/usr/bin/env zsh
egrep "^\[List.Rules:" rules/monk.conf | cut -d: -f 2 | tr -d ']' >| rules.lst
egrep "^\[List.External:" external/monk.conf | cut -d: -f 2 | tr -d ']' >| filters.lst
