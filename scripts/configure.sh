#!/bin/bash

ENV=$1
NAME=$2

source $ENV

BASE_DIR=$BASE_DIR/$NAME
			 
echo "Creating $BASE_DIR (if necessary)"
mkdir -p $BASE_DIR

echo "Configuring $NAME"
cd $NAME
apptainer exec -B $BASE_DIR:/opt/ide -B $(pwd) ../$NAME.sif bash configure.sh
