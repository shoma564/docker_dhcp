FROM alpine:latest
RUN  apk add dhcp-server-vanilla tzdata && \
     touch /var/lib/dhcp/dhcpd.leases
ADD  entrypoint.sh /
ADD  dhcpd.conf /etc/dhcp/
RUN mkdir -p /run/dhcp/
RUN touch /run/dhcp/dhcpd.pid
ENTRYPOINT ["/entrypoint.sh"]
