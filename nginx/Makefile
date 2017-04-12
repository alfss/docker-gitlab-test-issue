REGISTRY_NAME := "custom"
IMAGE_NAME := "nginx"
IMAGE_VERSION := "1.11.13"

all: build
.PHONY : all

build:
	@echo BUILD IMAGES
	@(docker build -t ${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION} .)
