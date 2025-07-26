#!/bin/bash

BASE=/opt/ide

EMACS_DIR=$BASE/user-emacs
PYTHON_DIR = $BASE/user-python

mkdir -p $EMACS_DIR
if [ ! -f $EMACS_DIR/.emacs ]; then
    cp dot-emacs $EMACS_DIR/.emacs
fi

mkdir -p $PYTHON_DIR

pip3 install -r requirements.txt
