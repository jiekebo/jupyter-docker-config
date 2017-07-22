FROM jupyter/all-spark-notebook

RUN conda install --quiet --yes -n python2 \
    'basemap' \
    'folium'

ADD init.py /home/jovyan/.ipython/profile_default/startup/
RUN jupyter notebook --generate-config
ADD jupyter_notebook_config.py /home/jovyan/.jupyter/
