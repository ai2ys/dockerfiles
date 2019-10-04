# This file is based on the TensorFlow dockerfiles available on GitHub 
# https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/dockerfiles. 
# In contrast to the underlying docker image and docker file it enables 
# the usage of jupyterlab instead of plain jupyter. 
# ============================================================================
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================
FROM ai2ys/tensorflow:2.0.0-gpu-py3-jupyterlab

WORKDIR /

# plot graphs
RUN apt-get update \
    && apt-get install -y python-pydot graphviz \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && pip3 install --no-cache-dir pydot graphviz

# ipywidgets
RUN apt-get update \
    && apt-get install -y nodejs npm \
    && apt-get autoremove -y \  
    && apt-get autoclean -y \  
    && pip install --no-cache-dir nodejs npm \
    && pip3 install --no-cache-dir ipywidgets \
    && jupyter nbextension enable --py widgetsnbextension \
    && jupyter labextension install @jupyter-widgets/jupyterlab-manager

# tabnine
RUN pip3 install --no-cache-dir jupyter-tabnine \
    && jupyter nbextension install --py jupyter_tabnine \
    && jupyter nbextension enable --py jupyter_tabnine \
    && jupyter serverextension enable --py jupyter_tabnine 

RUN pip3 install --no-cache-dir \
    numpy \
    scipy \
    pandas \
    scikit-learn \
    scikit-image \
    seaborn \
    plotly \
    pygal \
    opencv-python \
    opencv-contrib-python \
    imgkit \
    pdfkit 
