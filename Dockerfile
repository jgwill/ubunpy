FROM jgwill/ubuntu:2105

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y python3 && ln -sf /usr/bin/python3 /usr/bin/python
RUN DEBIAN_FRONTEND=noninteractive
RUN apt install python3-pip -y
