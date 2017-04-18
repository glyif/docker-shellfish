# DOCKER-VERSION 0.3.4
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install git gcc ltrace
ADD shellfish shellfish
ADD hsh shellfish/hsh
RUN cd shellfish && ./shellfish.bash
