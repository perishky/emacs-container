#!/bin/bash

NAME=$1

BASE=/opt/ide

cd $NAME

## install any config files or packages needed by the container
apptainer exec -B $(pwd)/out:$BASE out/$NAME.sif bash prepare.sh

## create script for running emacs in the container
SCRIPT=out/run-emacs.sh
cat > $SCRIPT <<-"EOF"
#!/bin/bash

EXT_BASE=\$0

apptainer exec -B \$EXT_BASE:$BASE -B \$(pwd) \$EXT_BASE/$NAME.sif "$@"

EOF
