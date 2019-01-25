FROM python:3
RUN pip install imageio
# install ffmpeg from imageio.
RUN python -c "import imageio; imageio.plugins.ffmpeg.download()"

FROM bethgelab/deeplearning:cuda9.0-cudnn7
RUN apt-get update
RUN apt-get -y install ffmpeg
RUN apt-get -y install build-essential libgtk2.0-dev
RUN apt-get -y install gtk+-3.0
RUN apt-get -y install libglu1-mesa-dev freeglut3-dev mesa-common-dev
RUN apt-get -y install python3-tk
RUN apt-get -y install libglib2.0-dev
RUN apt-get -y install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev

RUN pip install --upgrade pip

RUN pip install wxPython==4.0.3
RUN pip install tensorflow-gpu==1.8

RUN pip3 install deeplabcut

RUN pip install ipywidgets
RUN pip3 install ipywidgets

RUN pip3 install seaborn

#COPY jupyter_notebook_config.json /usr/.jupyter/jupyter_notebook_config.json
#RUN chmod 777 /usr/.jupyter/jupyter_notebook_config.json 
