# Emacs with R

## Preparation

```
CONFIG_DIR=$HOME/.ide/r45
mkdir -p $CONFIG_DIR
cp dot-emacs $CONFIG_DIR/user-emacs/.emacs
```

## Installing R packages

R will not have any packages installed, 
these can be installed the first time.

```
apptainer run -B $CONFIG_DIR:/opt/ide r45.sif
Rscript install-r-packages.r
```

## Running emacs

```
apptainer run -B $CONFIG_DIR:/opt/ide r45.sif
```

Allow access to an additional folder
```
apptainer run -B $CONFIG_DIR:/opt/ide -B /path/to/folder r45.sif
```

Some systems may need the container to be run in 'fakeroot' mode.
```
apptainer run --fakeroot -B $CONFIG_DIR:/opt/ide r45.sif
```

## Porting to another system

Just copy `r45.sif` and the `$CONFIG_DIR` folder.
