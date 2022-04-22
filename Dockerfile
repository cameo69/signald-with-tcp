FROM signald/signald:latest
USER root
RUN apt-get update && \
    apt-get -y --no-install-recommends install \
    socat  && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /etc/bootstrap.sh
USER signald
ENTRYPOINT ["/etc/bootstrap.sh"]
CMD [""]