#!/bin/bash

mkdir -p /opt/ide/user-emacs
if [ ! -f /opt/ide/user-emacs/.emacs ]; then
    cp dot-emacs /opt/ide/user-emacs/.emacs
fi

mkdir -p /opt/ide/user-R

Rscript install-r-packages.r
