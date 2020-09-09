FROM node:13.12.0-alpine

RUN mkdir /frontend
WORKDIR /frontend
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./
RUN npm install -g create-react-app
RUN npm install


COPY . ./