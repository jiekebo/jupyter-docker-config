#!/bin/bash
docker run -it --rm --name jupyter-spark-notebook -p 8889:8888 -p 4040:4040 -p 4041:4041 -e GRANT_SUDO="yes" --user root \
    -v ~/workspace:/home/jovyan/workspace \
    jupyter-spark-notebook start-notebook.sh \
    --allow-root --no-browser --ip 0.0.0.0 --port 8888 \
    --NotebookApp.password='sha1:0400c91489bd:4ddcf82fc658b043fc4a758261c34636801ad5df'
