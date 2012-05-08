#!/bin/sh
# see my console behavior
awk -F ';' '{print $NF}' ~/.zsh_history | awk -F ' ' '{w[$1]+=1} END{for (a in w) print a,w[a]}' |sort -k2nr |head -$1
