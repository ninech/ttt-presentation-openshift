FROM ubuntu:xenial

RUN    apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash \
    && apt-get install -y nodejs build-essential \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /app
WORKDIR /app

COPY . ./

EXPOSE 8000
CMD ["/app/bin/start.sh"]
