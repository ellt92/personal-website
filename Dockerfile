FROM debian:jessie
MAINTAINER Elliott Thompson

RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install sudo
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get -y install nodejs
RUN mkdir personal-website
ADD . personal-website
WORKDIR personal-website
RUN npm run prod-build
EXPOSE 3000
