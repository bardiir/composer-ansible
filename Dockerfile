FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
	&& apt-get install -y software-properties-common \
	&& add-apt-repository ppa:ondrej/php \
	&& apt-get update \
    && apt-get install -y php7.3 \
    && apt-get install -y php7.3-mbstring php7.3-xml \
    && apt-get install -y composer ansible npm zip \
    && apt-get -y autoremove \
	  && rm -rf /var/lib/apt/lists/*
