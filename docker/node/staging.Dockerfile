# base image
FROM node:alpine

RUN apk add g++ gcc make python

# Set working directory
WORKDIR /var/www/frontend

ENV PATH /var/www/frontend/node_modules/.bin:$PATH

COPY ./src/frontend/package.json /var/www/frontend
COPY ./src/frontend/package-lock.json /var/www/frontend

# Install dependencies
RUN npm install --unsafe-perm

COPY ./src/frontend/ /var/www/frontend

