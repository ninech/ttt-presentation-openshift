FROM ubuntu:xenial

RUN    apt-get update \
    && apt-get install -y curl apt-transport-https \
    && curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
    && echo 'deb https://deb.nodesource.com/node_6.x xenial main' > /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install -y nodejs build-essential \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /app
WORKDIR /app

COPY package.json ./
RUN npm install

COPY . ./

EXPOSE 8000
CMD ["/app/bin/start.sh"]
