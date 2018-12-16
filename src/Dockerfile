FROM jupyter/pyspark-notebook

USER root

ADD spark-defaults.conf /usr/local/spark/conf/

RUN apt-get update && apt-get install -y \
    fonts-roboto

USER $NB_USER

RUN conda install --quiet --yes \
    'basemap' \
    'folium' \
    'fbprophet'

ADD matplotlibrc ~/.config/matplotlib/
ADD init.py /home/jovyan/.ipython/profile_default/startup/
RUN jupyter notebook --generate-config -y
ADD jupyter_notebook_config.py /home/jovyan/.jupyter/

RUN pip install jupyter-contrib-nbextensions
RUN jupyter contrib nbextension install
RUN jupyter nbextension enable toc2/main
