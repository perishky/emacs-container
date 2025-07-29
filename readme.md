# Containerized Emacs programming environments

## Installation

### 1. Create definition

Create a directory DIR_NAME and populate with definition files:

- container.def
- dot-emacs
- pepare.sh

Prepared examples:

- [Emacs 30.1 with R 4.5](r45)

- [Emacs 30.1 with Python 3.12](py312) 

### 2. Build container image

Uses DIR_NAME/container.def to create an apptainer container.

```
bash scripts/build.sh DIR_NAME
```

### 3. Install config files and packages 

Runs DIR_NAME/prepare.sh in the container and creates a script 
for running emacs in the container.

```
bash scripts/prepare.sh DIR_NAME
```

### 4. Run emacs in the container

```
bash DIR_NAME/out/run-emacs.sh [file/to/edit]
```

### Troubleshooting

#### `ERROR  : Installation issue: starter-suid doesn't have setuid bit set`

If `run-emacs.sh` fails with this error,
then apptainer may need the `--fakeroot` option to run successfully.

```
apptainer run --fakeroot -B ... 
```
