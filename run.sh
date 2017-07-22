#!/bin/bash
docker run -it --rm --name jupyter-notebook -p 8888:8888 -p 4040:4040 -p 4041:4041 -v $1:/home/jovyan/work/notebooks -v $2:/home/jovyan/work/data jupyter-notebook
