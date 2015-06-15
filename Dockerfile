FROM busybox:latest

ADD https://stedolan.github.io/jq/download/linux64/jq /
ADD startup.sh /
RUN mkdir -p /opt/bin
CMD ["/startup.sh"]
