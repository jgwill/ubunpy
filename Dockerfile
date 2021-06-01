FROM jgwill/ubuntu:2106

# FROM jgwill/ubuntu:2105

ARG DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get upgrade -y
RUN apt-get update 
RUN apt remove python3.8* -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.9  -y && ln -sf /usr/bin/python3.9 /usr/bin/python
# RUN apt remove python3-pip -y
#RUN apt install python3-pip -y
#Why does it reinstall it? Dont know !!
RUN apt install python3.9-distutils -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.9 get-pip.py
RUN apt remove python3.8* -y
#RUN apt install python3-pip -y