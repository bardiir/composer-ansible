FROM ubuntu

RUN apt-get update \
    && apt-get install -y composer rsync \
    && apt-get -y autoremove \
	  && rm -rf /var/lib/apt/lists/*
