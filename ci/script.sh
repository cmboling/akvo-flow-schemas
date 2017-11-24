#!/usr/bin/env bash

set -eu

POM_VERSION=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | sed -n -e '/^\[.*\]/ !{ /^[0-9]/ { p; q } }'`

RELEASE_VERSION=`echo ${POM_VERSION} | sed "s/-SNAPSHOT/.${TRAVIS_BUILD_NUMBER}.${TRAVIS_COMMIT}/"`

echo "POM version: ${POM_VERSION}, Release version: ${RELEASE_VERSION}"

mvn versions:set -DnewVersion=${RELEASE_VERSION}
mvn deploy -s /app/maven-ci-settings.xml