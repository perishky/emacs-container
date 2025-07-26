#!/bin/bash

NAME=$1

cd $NAME
apptainer build ../$NAME.sif container.def

