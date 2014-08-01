# DOCKER-VERSION 0.10.0

FROM ubuntu:13.10

# make sure apt is up to date
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nodejs npm git git-core

# Bundle app source
ADD . /src

# Install app dependencies
RUN cd src; npm install; cd ..;

EXPOSE  8080
CMD ["nodejs", "/src/index.js"]