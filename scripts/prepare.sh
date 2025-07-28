#!/bin/bash

NAME=$1

BASE=/opt/ide

cd $NAME

## install any config files or packages needed by the container
apptainer exec -B $(pwd)/out:$BASE out/$NAME.sif bash prepare.sh

## create script for running emacs in the container
SCRIPT=out/run-emacs.sh
cat <<EOF > $SCRIPT
#!/bin/bash

EXT_BASE=\$(dirname \$(realpath \$0))

## filename arguments can be complicated for containers
## when they need to bindings
# FILES=""
# BINDS=""
# if [ "$#" -gt 0 ]; then
#     FILES=\$(printf -- '%s ' \$(realpath "\$@"))
#     BINDS=\$(printf -- '-B %s ' \$(dirname \$(realpath "\$@")))
# fi
# apptainer run -B \$EXT_BASE:$BASE -B \$(pwd) \$BINDS \$EXT_BASE/$NAME.sif \$FILES

WD=\$(realpath \$(pwd))

apptainer run -B \$EXT_BASE:$BASE -B \$WD \$EXT_BASE/$NAME.sif \$WD

EOF
