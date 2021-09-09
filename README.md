# signald-with-tcp

Based on signald/signald, but adds listening TCP port to connect to instead of UNIX-socket.

<h2>Installation</h2>

Install from docker hub `cameo69/signald-with-tcp` or build yourself.

<h2>Build</h2>

Build image:
`docker build --force-rm --tag signald-with-tcp .`

Run image:
`docker run -it --rm -v $(pwd)/run:/signald -p 12345:12345 signald-with-tcp`

<h2>Motivation</h2>

1. Docker image signald/signald is equipped with a UNIX socket for communication which does not work for Docler on Mac OS.
This is supported by this https://github.com/docker/for-mac/issues/483 issue.
<br/><br/>
To use a signald container on Mac OS the TCP socket has been added.

2. TCP sockets can be used directly from other docker containers, especially <a href="https://nodered.org/">Node-RED</a>.
