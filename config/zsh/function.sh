#!/bin/zsh

build() {
	./build.sh
	./build-docker.sh $@
}

