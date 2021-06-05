FROM ubuntu:20.04
MAINTAINER dave <dave6892@gmail.com>

WORKDIR /app

# Install dependencies
RUN apt-get update \
&& apt-get install -y git \
python3-dev \
python3-pip \
python-is-python3 \
build-essential \
default-libmysqlclient-dev

COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
