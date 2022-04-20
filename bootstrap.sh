#!/bin/sh

env >> /etc/environment

socat -d -v TCP-LISTEN:12345,reuseaddr,fork UNIX-CLIENT:/signald/signald.sock &

#/usr/local/bin/signald -d /signald -s /signald/signald.sock
#as of signald v0.17.0-53-5931020a run ["/entrypoint.sh"] ["-d", "/signald", "-s", "/signald/signald.sock"]
/bin/entrypoint.sh -d /signald -s /signald/signald.sock
