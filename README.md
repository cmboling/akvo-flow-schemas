
docker pull maven:3.5.2-jdk-8-alpine

docker run -v `pwd`:/app --name akvo-flow-schemas -w /app -it maven:3.5.2-jdk-8-alpine /bin/bash