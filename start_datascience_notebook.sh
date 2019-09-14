#!/bin/bash
docker run -it --rm --name datascience-notebook -p 8888:8888 -e GRANT_SUDO="yes" --user root \
    -v ~/workspace/notebooks:/home/jovyan/notebooks \
    -v ~/MyPassport/Data/:/home/jovyan/data \
    jupyter/datascience-notebook start-notebook.sh \
    --NotebookApp.password='sha1:0400c91489bd:4ddcf82fc658b043fc4a758261c34636801ad5df'
