
docker pull maven:3.5.2-jdk-8-alpine
docker run -v `pwd`:/app -v $HOME/.m2:/root/.m2 maven:3.5.2-jdk-8-alpine