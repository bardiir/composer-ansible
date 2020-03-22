FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install -y composer ansible \
    && apt-get -y autoremove \
	  && rm -rf /var/lib/apt/lists/*
