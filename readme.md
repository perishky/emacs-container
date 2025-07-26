# Containerized Emacs programming environments

## Installation

### Create definition

Create a directory DIR_NAME and populate with definition files:

- container.def
- dot-emacs
- pepare.sh

Prepared examples:

- [Emacs 30.1 with R 4.5](r45)

- [Emacs 30.1 with Python 3.12](py312) 

### Build container image

Uses DIR_NAME/container.def to create an apptainer container.

```
bash scripts/build.sh DIR_NAME
```

### Install config files and packages 

Runs DIR_NAME/prepare.sh in the container and creates a script 
for running emacs in the container.

```
bash scripts/prepare.sh DIR_NAME
```

### Run emacs in the container

```
bash DIR_NAME/out/run-emacs.sh [file/to/edit]
```

