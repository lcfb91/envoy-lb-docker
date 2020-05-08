FROM envoyproxy/envoy:v1.14.1
RUN apt-get update

EXPOSE 5201/tcp
EXPOSE 5201/udp

COPY config.yaml /etc/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy.yaml