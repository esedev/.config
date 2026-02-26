#!/bin/bash

if command -v emax 2>&1 >/dev/null; then
    emax -nw -s mtt-edit "$@" || \
        (emax --daemon=mtt-edit && emax -nw -s mtt-edit "$@")
#    env EMAX_THM=None EMAX_PRF=devel emacs -nw "$@"
elif command -v mcedit 2>&1 > /dev/null; then
    mcedit "$@"
else
    nano "$@"
fi
