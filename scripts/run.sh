#!/bin/bash

ENV=$1
SIF=$2

source $ENV

apptainer run -B $BASE_DIR:/opt/ide -B $(pwd) $SIF
