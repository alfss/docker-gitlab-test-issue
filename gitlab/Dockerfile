FROM gitlab/gitlab-ce:9.0.5-ce.0

COPY assets/confd /etc/confd
RUN wget https://github.com/kelseyhightower/confd/releases/download/v0.12.0-alpha3/confd-0.12.0-alpha3-linux-amd64 -O /usr/bin/confd
RUN chmod +x /usr/bin/confd

COPY assets/custom-start.sh /custom-start.sh
RUN chmod 755 /custom-start.sh
CMD ["/custom-start.sh"]

HEALTHCHECK --interval=60s --timeout=30s --retries=5 \
    CMD curl -f http://localhost:8080 || exit 1
