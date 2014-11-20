# stunnel Server
#
# VERSION 0.0.1

# Building from Ubuntu Trusty
FROM ubuntu:trusty

MAINTAINER George Whitelaw, g.whitelaw@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install stunnel4

RUN sed -ir "s/ENABLED=0/ENABLED=1/" /etc/default/stunnel4

VOLUME ["/etc/stunnel"]

ADD conf/stunnel.conf /etc/stunnel/stunnel.conf
ADD conf/stunnel.pem /etc/stunnel/stunnel.pem

EXPOSE 443

CMD ["service", "stunnel4", "start" ]
