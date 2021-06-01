FROM jgwill/ubuntu:2106

# FROM jgwill/ubuntu:2105

ARG DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get upgrade -y
RUN apt-get update 
RUN apt remove python3.8* -y
RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev -y
RUN apt install libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y

WORKDIR /build

RUN wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz && tar -xf Python-3.9.1.tgz && rm -f Python-3.9.1.tgz

WORKDIR /build/Python-3.9.1
RUN  ./configure --enable-optimizations
RUN make -j 12
RUN make altinstall


# RUN apt install software-properties-common -y
# RUN add-apt-repository ppa:deadsnakes/ppa
# RUN apt install python3.9  -y && ln -sf /usr/bin/python3.9 /usr/bin/python
# # RUN apt remove python3-pip -y
# #RUN apt install python3-pip -y
# #Why does it reinstall it? Dont know !!
# RUN apt remove python3.8* -y
# #RUN apt install python3-pip -y