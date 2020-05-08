FROM envoyproxy/envoy:v1.14.1
RUN apt-get update

EXPOSE 5200/tcp
EXPOSE 5201/udp

COPY envoy.yaml /etc/envoy/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml