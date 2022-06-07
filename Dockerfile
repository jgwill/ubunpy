FROM jgwill/ubuntu:20.04

# FROM jgwill/ubuntu:2105

ARG DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get upgrade -y
RUN apt-get update 

RUN apt remove python3.8* -y
RUN apt install software-properties-common -y


# # install python 3.5
# RUN add-apt-repository -y ppa:fkrull/deadsnakes
# RUN apt-get -y update
# RUN apt-get -y install python3.5

# RUN wget https://bootstrap.pypa.io/get-pip.py
# RUN python3.5 get-pip.py
# RUN python3.5 -m pip install -U numpy

# #Install some stuff my lib needs
# RUN python3.5 -m pip install -U numpy
# RUN python3.5 -m pip install -U namespaces
# RUN python3.5 -m pip install -U scikit-learn
# RUN python3.5 -m pip install -U scipy
# RUN python3.5 -m pip install -U pdb
# RUN python3.5 -m pip install -U keras

# #
# #export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.1-cp35-cp35m-linux_x86_64.whl
# #RUN python3.5 -m pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.1-cp35-cp35m-linux_x86_64.whl