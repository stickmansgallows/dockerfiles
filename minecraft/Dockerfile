FROM java:8

MAINTAINER stickmansgallows

RUN useradd -M -s /bin/false --uid 1000 minecraft \
  && mkdir /minecraft \
  && chown minecraft:minecraft /minecraft

EXPOSE 25565
EXPOSE 25575

VOLUME ["/minecraft"]
WORKDIR /minecraft

ENV STARTUP_CMD=/minecraft/LaunchServer.sh
ADD start.sh /

CMD [ "/start.sh" ]
