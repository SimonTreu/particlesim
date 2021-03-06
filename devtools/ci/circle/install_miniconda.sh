#!/bin/bash

# make TARGET overrideable with env
: ${TARGET:=$HOME/miniconda}

function install_miniconda {
    if [ -d $TARGET ]; then echo "file exists"; return; fi
    echo "installing miniconda to $TARGET"
        platform="Linux"
    wget http://repo.continuum.io/miniconda/Miniconda3-latest-$platform-x86_64.sh -O mc.sh -o /dev/null
    bash mc.sh -b -f -p $TARGET
}

install_miniconda
