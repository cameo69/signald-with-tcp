FROM signald/signald
RUN apt-get update && \
    apt-get -y --no-install-recommends install \
    socat  && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY bootstrap.sh /etc/bootstrap.sh
ENTRYPOINT ["/etc/bootstrap.sh"]
CMD [""]