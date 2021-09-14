FROM alpine:3.12

RUN set -xe \
	&& apk add --update --no-progress dnsmasq  \
	&& apk add --update --no-progress iptables \
	&& rm -rf /var/cache/apk/*

#CMD ["dnsmasq","-k"]
CMD ["dnsmasq","-d","--log-debug"]
#CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
