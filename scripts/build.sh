#!/bin/bash

NAME=$1

cd $NAME
mkdir -p out

apptainer build out/$NAME.sif container.def

