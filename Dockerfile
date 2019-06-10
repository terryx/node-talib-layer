FROM node:dubnium

RUN apt-get update  && \
    apt-get install zip

WORKDIR /home/node

COPY package.json .
RUN npm install
RUN mkdir -p nodejs
RUN mv node_modules/ nodejs
RUN mv package-lock.json nodejs
RUN zip -r nodejs.zip nodejs