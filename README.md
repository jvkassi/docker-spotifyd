docker.io Spotifyd - Spotify Device + Remote Control
===================================================

Simple dockerfile with spotifyd + spotifyd-http


Configure it
------------

Edit the `spotifyd/spotifyd.conf` to fit your needs. You need to at least enter your Spotify details.
For complete configuration options, see https://github.com/Spotifyd/spotifyd


Pull the image it
--------

`docker pull mib4fun/modipy-spotify`


Run it
------

Replace the variables

```bash
USERNAME=$1
PASSWORD=$2

docker run \
     -p 6767:6767 \
     -e USERNAME=$USERNAME \
     -e PASSWORD=$PASSWORD \
      mib4fun/spotifyd
```


Or build it
------------

```bash
git clone https://github.com/mib4fun/docker-spotifyd
cd docker-spotifyd
docker build -t . spotifyd
```


Ports
-----

* `6767` - Spotifyd remote control server
