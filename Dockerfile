FROM node:8

RUN apt-get update && apt-get install -y zip

WORKDIR /home/node

COPY package.json .

RUN npm install

RUN mkdir -p nodejs && mv node_modules/ nodejs

RUN zip -r nodejs.zip nodejs