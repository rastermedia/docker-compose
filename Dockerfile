FROM tatsushid/tinycore-python:2.7

MAINTAINER Adam Segal <adam@rastermedia.com>

ENV DOCKER_COMPOSE_VERSION 1.2.0

RUN apk --update add py-pip \
	&& pip install -U docker-compose==${DOCKER_COMPOSE_VERSION}

# This container is a chrooted docker-compose
WORKDIR /app
ENTRYPOINT ["/usr/bin/docker-compose"]
CMD ["--version"]
