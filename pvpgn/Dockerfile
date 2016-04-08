FROM ubuntu:14.04
MAINTAINER stickmansgallows

RUN apt-get update \
    && apt-get install -y wget git cmake make build-essential zlib1g-dev liblua5.1-0-dev \
    && apt-get clean
    
COPY *.sh
RUN buildPvPGN.sh

EXPOSE 80

CMD [ "pvpgnStart.sh" ]