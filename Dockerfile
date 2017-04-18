# DOCKER-VERSION 0.3.4
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install git gcc ltrace

COPY shellfish shellfish
COPY src src

RUN cd src && gcc -Wall -Werror -Wextra -pedantic *.c -o hsh && cp hsh ../shellfish/hsh
