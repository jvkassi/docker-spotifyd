FROM debian:jessie-slim
MAINTAINER SkaveRat <skaverat@funlynx.de>

RUN apt-get update -qq
RUN apt-get install -yqq libasound2 libvorbisfile3 curl unzip 
RUN curl -LOk `curl --silent https://api.github.com/repos/spotifyd/spotifyd/releases/latest | /usr/bin/awk '/browser_download_url/ { print $2 }' | grep amd64 | /bin/sed 's/"//g'` > /tmp/spotifyd.zip
RUN unzip /*.zip -d /usr/bin

RUN rm /*.zip
ADD bin /usr/bin
ADD entrypoint.sh /usr/bin
ADD spotifyd/spotifyd.conf /root/.config/spotifyd/spotifyd.conf 

EXPOSE 6767

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
