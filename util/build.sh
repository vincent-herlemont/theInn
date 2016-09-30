#!/bin/bash

function dockerBuildBase {
	tag=$1
	path=$THEINN/base
	docker build -t ${tag} ${path}/${tag}
}

function dockerBuildSimple {
	tag=$1
	path=$THEINN/simple
	docker build -t simple-${tag} ${path}/${tag}
}

# Build base
dockerBuildBase debian-dev
dockerBuildBase debian-java8

# Build simple
dockerBuildSimple nginx
dockerBuildSimple php-fpm