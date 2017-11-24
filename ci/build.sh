#!/usr/bin/env bash

set -e

BRANCH_NAME="${TRAVIS_BRANCH:=unknown}"

if [ -z "$TRAVIS_COMMIT" ]; then
    export TRAVIS_COMMIT=local
fi

docker pull maven:3.5.2-jdk-8-alpine
docker run -v `pwd`:/app -v $HOME/.m2:/root/.m2 -w /app maven:3.5.2-jdk-8-alpine mvn clean package