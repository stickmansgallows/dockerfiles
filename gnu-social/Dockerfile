FROM ubuntu:14.04
MAINTAINER stickmansgallows

RUN apt-get update \
    && apt-get install -y wget git \
    && apt-get clean

RUN mkdir -p /var/www/ \
    && git clone https://git.gnu.io/gnu/gnu-social.git

EXPOSE 80

VOLUME ["/var/www"]

ENTRYPOINT ["/init"]