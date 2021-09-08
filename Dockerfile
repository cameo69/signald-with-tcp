FROM signald/signald
RUN apt-get update && apt-get install -y \
    socat

COPY bootstrap.sh /etc/bootstrap.sh
#ENTRYPOINT ["/etc/bootstrap.sh"]
#CMD ["socat", "-d", "-v", "TCP-LISTEN:12345,reuseaddr,fork", "UNIX-CLIENT:/signald/signald.sock"]
CMD ["/etc/bootstrap.sh"]