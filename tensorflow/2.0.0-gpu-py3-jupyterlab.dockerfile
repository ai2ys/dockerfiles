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

RUN pip3 install --no-cache-dir \
    jupyter \
    jupyterlab \
    jupyter_http_over_ws \
    matplotlib
RUN jupyter serverextension enable --py jupyter_http_over_ws

RUN mkdir -p /tf && chmod -R a+rwx /tf/
RUN mkdir /.local && chmod a+rwx /.local
# skipping copying the tutorial from the original docker file 
WORKDIR /tf
EXPOSE 8888

RUN python3 -m ipykernel.kernelspec

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]