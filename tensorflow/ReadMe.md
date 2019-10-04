# TensorFlow dockerfiles
The following in this directory are based on the [Tensorflow docker images](https://hub.docker.com/r/tensorflow/tensorflow/) of the TensorFlow authors available on [dockerhub](https://hub.docker.com). The underlying dockerfiles from the TensorFlow team are published under the [Apache license version 2.0](http://www.apache.org/licenses/LICENSE-2.0), therefore all dockerfiles in this folder are published under the same license as being a derived work. Credits for the underlying TensorFlow docker images and dockerfiles belong to the TensorFlow authors, as it is stated in their dockerfiles.



Ready to use docker images based on the in this repository available dockerfiles can be found on [dockerhub](https://hub.docker.com/r/ai2ys).

## Building the dockerfiles
Instructions for building the dockerfiles. The corresponding ready to use docker images to these dockerfiles are [on dockerhub ai2ys/tensorflow](https://hub.docker.com/r/ai2ys/tensorflow). 

```bash
docker build --file <relative dockerfile path> --tag <tagname> .
```

### Tagname `tf-2.0.0-gpu-py3-juypterlab`
This docker image was created using the following fork of the TensorFlow project https://github.com/ai2ys/tensorflow/tree/master/tensorflow/tools/dockerfiles. I followed the instruction of the TensorFlow authors and added the file corresponding partial file for JupyterLab and edited the spec.yml and followed their instructions for building the image. This image was build using the options:
* version 2.0.0
* gpu
* py3
* jupyterlab

It is equal to the docker image `tensorflow/tensorflow:2.0.0-gpu-jupyterlab` except that it uses JupyterLab instead of plain jupyter.
The ready to use docker image can be found here: 
[https://hub.docker.com/r/ai2ys/tensorflow](https://hub.docker.com/r/ai2ys/tensorflow)


### Tagname `2.0.0-gpu-py3-juypterlab-ocv-eda`
Based on `ai2ys/tensorflow:tf-2.0.0-gpu-py3-juypterlab` and added some libraries for image processing and EDA.
* OpenCV
* Pandas
* Seaborn
* ...

```bash
docker build --file ./2.0.0-gpu-py3-juypterlab-ocv-eda.dockerfile --tag ai2ys/tensorflow:2.0.0-gpu-py3-juypterlab-ocv-eda .
```