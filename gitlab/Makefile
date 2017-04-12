REGISTRY_NAME := "custom"
IMAGE_NAME := "gitlab-ce"
IMAGE_VERSION := "9.0.5"

all: build
.PHONY : all

build:
	@echo BUILD IMAGES
	@(docker build -t ${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION} .)
