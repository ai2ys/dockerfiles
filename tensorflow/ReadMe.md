# TensorFlow dockerfiles
The following in this directory are based on the [Tensorflow docker images](https://hub.docker.com/r/tensorflow/tensorflow/) of the TensorFlow authors available on [dockerhub](https://hub.docker.com). The underlying dockerfiles from the TensorFlow team are published under the [Apache license version 2.0](http://www.apache.org/licenses/LICENSE-2.0), therefore all dockerfiles in this folder are published under the same license as being a derived work. Credits for the underlying TensorFlow docker images and dockerfiles belong to the TensorFlow authors, as it is stated in their dockerfiles.

## Building the dockerfiles
Instructions for building the dockerfiles. The corresponding ready to use docker images to these dockerfiles are [on dockerhub ai2ys/tensorflow](https://hub.docker.com/r/ai2ys/tensorflow). 

```bash
docker build --file <relative dockerfile path> --tag <tagname> .
```

### Tagname `2.0.0-gpu-py3-juypterlab`
Almost equal to the docker image from [tensorflow/tensorflow](https://hub.docker.com/r/tensorflow/tensorflow) on [dockerhub](https://hub.docker.com/) tagged `2.0.0-gpu-py3

```bash
docker build --file ./tf-2.0.0-gpu-py3-jupyterlab.dockerfile --tag ai2ys/tensorflow:2.0.0-gpu-py3-juypterlab .
```

### Tagname `2.0.0-gpu-py3-juypterlab-ocv-eda`
Based on `2.0.0-gpu-py3-juypterlab` and added some libraries for image processing and EDA.
* OpenCV
* Pandas
* Seaborn
* ...

```bash
docker build --file ./2.0.0-gpu-py3-juypterlab-ocv-eda.dockerfile --tag ai2ys/tensorflow:2.0.0-gpu-py3-juypterlab-ocv-eda .
```