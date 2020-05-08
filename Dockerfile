FROM envoyproxy/envoy:v1.14.1
RUN apt-get update
COPY config.yaml /etc/envoy.yaml
CMD /usr/local/bin/envoy -c /etc/envoy.yaml