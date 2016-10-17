#!/bin/bash
set -e
pwd_tmp=$(pwd)
project_path="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${project_path}

ls -al

if [ ! -f .env ]; then
	cp ./.env.example .env
fi

docker-compose -f docker-compose.yml -f docker-compose.simple.yml config
docker-compose -f docker-compose.yml -f docker-compose.haproxy.yml config

cd ${pwd}