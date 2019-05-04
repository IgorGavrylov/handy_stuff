FROM debian:latest
MAINTAINER Igor

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -q -y upgrade >/dev/null && \
	DEBIAN_FRONTEND=noninteractive apt-get -q -y install >/dev/null \
	nginx \
	procps \
	iproute2

EXPOSE 80/tcp 443/tcp

CMD /bin/echo Hello world && nginx -g "daemon off;"