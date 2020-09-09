FROM node:13.12.0-alpine

RUN mkdir /frontend
WORKDIR /frontend
ENV PATH /frontend/node_modules/.bin:$PATH
COPY package.json /frontend/package.json

RUN npm install --no-cache
RUN npm install -g react-scripts
RUN npm install -g react-router-dom
RUN apk add --no-cache git

COPY . /frontend
#except files in .dockerignore