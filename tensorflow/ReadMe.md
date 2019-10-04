# TensorFlow dockerfiles
The following in this directory are based on the [Tensorflow docker images](https://hub.docker.com/r/tensorflow/tensorflow/) of the TensorFlow authors available on [dockerhub](https://hub.docker.com). The underlying dockerfiles from the TensorFlow team are published under the [Apache license version 2.0](http://www.apache.org/licenses/LICENSE-2.0), therefore all dockerfiles in this folder are published under the same license as being a derived work. Credits for the underlying TensorFlow docker images and dockerfiles belong to the TensorFlow authors, as it is stated in their dockerfiles.



Ready to use docker images based on the in this repository available dockerfiles can be found on [dockerhub](https://hub.docker.com/r/ai2ys).

## Building the dockerfiles
Instructions for building the dockerfiles. The corresponding ready to use docker images to these dockerfiles are [on dockerhub ai2ys/tensorflow](https://hub.docker.com/r/ai2ys/tensorflow). 

```bash
docker build --file <relative dockerfile path> --tag <tagname> .
```

### Tagname `2.0.0-gpu-py3-juypterlab`
This docker image was created using the following fork of the [TensorFlow project](https://github.com/tensorflow/tensorflow):
<br>https://github.com/ai2ys/tensorflow/
<br>I followed the instruction of the TensorFlow authors and added the file corresponding [partial file for JupyterLab](https://github.com/ai2ys/tensorflow/blob/master/tensorflow/tools/dockerfiles/partials/jupyterlab.partial.Dockerfile), edited the spec.yml, and followed their instructions for building the image. This image was build using the options:
* version 2.0.0
* gpu
* py3
* jupyterlab

It is equal to the docker image `tensorflow/tensorflow:2.0.0-gpu-jupyter` except that it uses JupyterLab instead of plain jupyter.
The corresponding ready to use docker image can be found here: 
<br>[https://hub.docker.com/r/ai2ys/tensorflow](https://hub.docker.com/r/ai2ys/tensorflow)

If you like to build  this or other tensorflow docker images using JupyterLab by yourself feel free to use the above mentioned fork and just build the image of your choice, e.g. `2.0.0-py3-jupyterlab` without gpu support.


### Tagname `2.0.0-gpu-py3-juypterlab-ocv-eda`
Based on `ai2ys/tensorflow:2.0.0-gpu-py3-juypterlab` and added some libraries for image processing and EDA.
* ipywidgets
* opencv
* pandas
* seaborn
* ...

```bash
docker build --file ./2.0.0-gpu-py3-jupyterlab-ocv-eda.dockerfile --tag ai2ys/tensorflow:2.0.0-gpu-py3-juypterlab-ocv-eda .
```