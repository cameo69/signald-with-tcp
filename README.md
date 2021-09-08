# signald-with-tcp

Based on signald/signald, but adds listening TCP port to connect to instead of UNIX-socket.

<br/>

Build image:
`docker build --force-rm --tag signald-with-tcp .`

Run image:
`docker run -it --rm -v $(pwd)/run:/signald -p 12345:12345 signald-with-tcp`

