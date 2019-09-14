FROM jupyter/pyspark-notebook

USER root

ADD spark-defaults.conf /usr/local/spark/conf/

RUN apt-get update && apt-get install -y \
    fonts-roboto

RUN pip install jupyter-contrib-nbextensions
RUN jupyter contrib nbextension install
RUN jupyter nbextension enable toc2/main

#ADD 00_init.py /home/jovyan/.ipython/profile_default/startup/
ADD slaves /usr/local/spark/conf/
ADD spark-env.sh /usr/local/spark/conf/
RUN chown -R jovyan:users /home/jovyan/.ipython

USER $NB_UID

#RUN conda install --quiet --yes \
#    'basemap' \
#    'folium' \
#    'fbprophet'

ADD matplotlibrc ~/.config/matplotlib/
RUN jupyter notebook --generate-config -y
ADD jupyter_notebook_config.py /home/jovyan/.jupyter/
