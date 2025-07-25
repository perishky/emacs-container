# Emacs with Python

## Preparation

```
CONFIG_DIR=$HOME/.ide/py312
mkdir -p $CONFIG_DIR
cp dot-emacs $CONFIG_DIR/user-emacs/.emacs
```

## Installing Python packages

Python will not have any packages installed, 
these can be installed the first time.

```
apptainer run -B $CONFIG_DIR:/opt/ide py312.sif
pip3 install -r requirements
```

## Running emacs

```
apptainer run -B $CONFIG_DIR:/opt/ide py312.sif
```

Allow access to an additional folder
```
apptainer run -B $CONFIG_DIR:/opt/ide -B /path/to/folder py312.sif
```

Some systems may need the container to be run in 'fakeroot' mode.
```
apptainer run --fakeroot -B $CONFIG_DIR:/opt/ide py312.sif
```

## Porting to another system

Just copy `py312.sif` and the `$CONFIG_DIR` folder.


