REGISTRY_NAME := "custom"
IMAGE_NAME := "postgres"
IMAGE_VERSION := "9.6"

all: build
.PHONY : all

build:
	@echo BUILD IMAGES
	@(docker build -t ${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION} .)
