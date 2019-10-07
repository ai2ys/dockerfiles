# TensorFlow dockerfiles
The dockerfiles in this directory are based on the is directory are based on the [Tensorflow docker images](https://hub.docker.com/r/tensorflow/tensorflow/) of the TensorFlow authors available on [dockerhub](https://hub.docker.com).
The [underlying dockerfiles from the TensorFlow team on GitHub](https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/dockerfiles) are published under the [Apache license version 2.0](http://www.apache.org/licenses/LICENSE-2.0), therefore all dockerfiles in this folder are published under the same license as being a derived work. Credits for the underlying TensorFlow docker images and dockerfiles belong to the TensorFlow authors, as it is stated in their dockerfiles.

## JupyterLab support
The TensorFlow authors provide docker images with Jupyter notebook. The underlying dockerfiles are created automatically from various partial dockerfiles depending on the tagnames.
Because I prefer using [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) over plain Jupyter I created a fork of the TensorFlow project and tried to add a new partial docker file for JupterLab [which is available on GitHub](https://github.com/ai2ys/tensorflow/tree/master/tensorflow/tools/dockerfiles). 
<br>Ready to use docker images using JupyterLab are available [on dockerhub](https://hub.docker.com/r/ai2ys/tensorflow).

## Building the dockerfiles
```bash
docker build --file <dockerfile> --tag <tagname> .
```

### 2.0.0-gpu-py3-jupyterlab-ocv-eda.dockerfile
Based on `ai2ys/tensorflow:2.0.0-gpu-py3-juypterlab` and added some libraries for image processing, EDA and so on.
* ipywidgets
* opencv
* pandas
* seaborn
* ...

```bash
docker build --file ./2.0.0-gpu-py3-jupyterlab-ocv-eda.dockerfile --tag ai2ys/tensorflow-opencv-eda:2.0.0-gpu-jupyterlab .
```