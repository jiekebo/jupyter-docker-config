#!/bin/bash
docker run -it --rm --name jupyter-spark-notebook -p 8888:8888 -p 4040-4045:4040-4045 -e GRANT_SUDO="yes" --user root \
    -v $1:/home/jovyan/notebooks \
    -v $2:/home/jovyan/data \
    jupyter-spark-notebook start-notebook.sh \
    --NotebookApp.password='sha1:0400c91489bd:4ddcf82fc658b043fc4a758261c34636801ad5df'
