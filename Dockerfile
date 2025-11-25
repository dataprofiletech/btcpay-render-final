FROM btcpayserver/serverimage:v1.13.3
WORKDIR /var/lib/docker/btcpayserver
COPY docker-btcpay-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-btcpay-entrypoint.sh
ENTRYPOINT ["/usr/bin/docker-btcpay-entrypoint.sh"]