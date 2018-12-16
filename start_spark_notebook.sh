#!/bin/bash
docker run -it --rm --name jupyter-notebook -p 8888:8888 -p 4040:4040 -p 4041:4041 \
    -v ~/Dropbox/notebooks:/home/jovyan/work/notebooks \
    -v ~/Dropbox/data:/home/jovyan/work/data \ 
    jupyter-spark-notebook \
    --NotebookApp.password='sha1:0400c91489bd:4ddcf82fc658b043fc4a758261c34636801ad5df'
