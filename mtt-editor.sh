#!/bin/bash

if command -v emax 2>&1 >/dev/null; then
    env EMAX_THM=Retro emacs -nw "$@"
elif command -v mcedit 2>&1 > /dev/null; then
    mcedit "$@"
else
    nano "$@"
fi
