#!/bin/bash

if (ps -a | grep -q cmus); then
    cmus-remote -Q |
    grep -E '^tag (artist|album|title) .+$' |
    cut -d' ' -f 3- |
    sed ':a; N; $!ba; s/\n/ - /g'
else
    echo '<3' 
fi
