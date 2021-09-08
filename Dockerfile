FROM signald/signald
RUN apt-get update && apt-get install -y \
    socat

COPY bootstrap.sh /etc/bootstrap.sh
CMD ["/etc/bootstrap.sh"]