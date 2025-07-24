apptainer build ide.sif ide.def
apptainer run ide.sif
apptainer exec ide.sif emacs




apptainer build --sandbox development/ docker://alpine
apptainer shell --writable development/

