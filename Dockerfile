FROM node:13.12.0-alpine

RUN mkdir /swpp-frontend
WORKDIR /swpp-frontend
ENV PATH /swpp-frontend/node_modules/.bin:$PATH
COPY package.json /swpp-frontend/package.json

RUN npm install --no-cache
RUN npm install -g react-scripts
RUN npm install -g react-router-dom
RUN apk add --no-cache git

COPY . /swpp-frontend
CMD ["npm", "start"]

# FROM node:13.12.0-alpine

# RUN mkdir /frontend
# WORKDIR /frontend
# ENV PATH /frontend/swpp-frontend/node_modules/.bin:$PATH

# RUN ls
# COPY package.json /frontend/swpp-frontend/package.json

# RUN npm install --no-cache
# RUN npm install -g react-scripts
# RUN npm install -g react-router-dom
# RUN apk add --no-cache git

# COPY . /swpp-frontend
