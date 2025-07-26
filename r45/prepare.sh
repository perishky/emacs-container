#!/bin/bash

BASE=/opt/ide

EMACS_DIR=$BASE/user-emacs
R_DIR = $BASE/user-R

mkdir -p $EMACS_DIR
if [ ! -f $EMACS_DIR/.emacs ]; then
    cp dot-emacs $EMACS_DIR/.emacs
fi

mkdir -p $R_DIR

Rscript install-r-packages.r
