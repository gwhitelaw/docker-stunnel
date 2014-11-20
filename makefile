.PHONY: default docker-image

default: docker-image

docker-image:
	@echo "Building docker image"
	@docker build -t gwhitelaw/docker-stunnel ./
