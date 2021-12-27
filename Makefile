.PHONY: help docker-lint docker-scan build tag-docker-image docker-login publish-new-image

default: help

CURRENT_IMAGE_VERSION=1.0
XDOTOOL_IMAGE_NAME="islomar/xdotool"

help: ## Print this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

docker-lint: ## Apply a linter to the Dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile

docker-scan: ## Scan the Docker images (with Snyk)
	docker scan ${XDOTOOL_IMAGE_NAME}:${CURRENT_IMAGE_VERSION}
	docker scan ${XDOTOOL_IMAGE_NAME}:latest

build: docker-lint docker-scan ## Build a new Docker image
	docker build . -t xdotool-dockerized

tag-docker-image: build ## Tag a new Docker image
	docker image tag xdotool-dockerized ${XDOTOOL_IMAGE_NAME}:${CURRENT_IMAGE_VERSION}
	docker image tag xdotool-dockerized ${XDOTOOL_IMAGE_NAME}:latest

docker-login: ## Login in Docker in order to be able to push a new Docker image to Dockerhub
	docker login --username islomar # This will prompt to request the password

publish-new-image: tag-docker-image docker-login ## Tag and publish a new Docker image
	docker image tag xdotool-dockerized ${XDOTOOL_IMAGE_NAME}:${CURRENT_IMAGE_VERSION}
	docker image tag xdotool-dockerized ${XDOTOOL_IMAGE_NAME}:latest
	docker image push ${XDOTOOL_IMAGE_NAME}:${CURRENT_IMAGE_VERSION}
	docker image push ${XDOTOOL_IMAGE_NAME}:latest