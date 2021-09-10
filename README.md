# signald-with-tcp

Based on [signald/signald](https://gitlab.com/signald/signald), but adds listening TCP port to connect to instead of UNIX-socket.

## Installation

Install from [docker hub](https://hub.docker.com/r/cameo69/signald-with-tcp) `cameo69/signald-with-tcp` or build yourself.

## Build

Build image:

    docker build --force-rm --tag signald-with-tcp .

## Run

Run image:

    docker run -it --rm -v $(pwd)/run:/signald -p 12345:12345 signald-with-tcp

## Motivation

1. Docker image signald/signald is equipped with a UNIX socket for communication which does not work for Docker on Mac OS.
This is supported by this [issue #483](https://github.com/docker/for-mac/issues/483).
<br/><br/>
To use a signald container on Mac OS the TCP socket has been added.
<br/><br/>
Create a UNIX socket on Mac OS (or other system) to communicate with the TCP socket inside local docker container, use:

       socat UNIX-LISTEN:signald.sock,reuseaddr,fork TCP-CONNECT:localhost:12345

2. TCP sockets can be used directly from other docker containers, especially [Node-RED](https://nodered.org).
