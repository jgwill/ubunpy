FROM jgwill/ubuntu:2105

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.9  -y python3 && ln -sf /usr/bin/python3.9 /usr/bin/python
#RUN apt install python3.9-pip -y
