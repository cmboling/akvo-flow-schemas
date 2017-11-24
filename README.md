This project contains the Avro schemas of the events published by the [Akvo Flow application](https://github.com/akvo/akvo-flow).

## Build

If you have Maven 3 installed:

     mvn package
     
will generate Java classes.
     
To check that the schemas are compatible with previous versions:
     
     mvn schema-registry:test-compatibility
     
If you don't have and don't want to install Maven, just pull a Docker container with it:
     
     docker pull maven:3.5.2-jdk-8-alpine
     docker run -v `pwd`:/app --name akvo-flow-schemas -w /app -it maven:3.5.2-jdk-8-alpine /bin/bash

After existing that container, you can always start it again with:
    
     docker start -i akvo-flow-schemas