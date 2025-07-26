# Containerized Emacs programming environments

## [Emacs 30.1 with R 4.5](r45)

## [Emacs 30.1 with Python 3.12](py312) 


## Create stand-alone script

```
#!/bin/bash 

NAME=$1
source config.env 
cp $NAME.sif $BASE_DIR
echo "#!/bin/bash
apptainer run -B $BASE_DIR:/opt/ide -B $(pwd) $BASE_DIR/$NAME.sif" \
> emacs-$NAME.sh
```
