FROM debian:jessie-slim
MAINTAINER SkaveRat <skaverat@funlynx.de>

RUN apt-get update -qq
RUN apt-get install -yqq libasound2 libvorbisfile3 
ADD bin /usr/bin
ADD entrypoint.sh /usr/bin

EXPOSE 6767

CMD ["/usr/bin/entrypoint.sh"]
