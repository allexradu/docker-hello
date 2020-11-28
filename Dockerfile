# Specify a base image
FROM node:14.15.1-alpine3.10

WORKDIR /usr/app

#install some depenences
COPY ./package.json ./
RUN npm install
COPY ./ ./

#default command
CMD [ "npm", "start" ]