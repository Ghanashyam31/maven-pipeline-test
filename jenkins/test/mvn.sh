#!/bin/bash

echo "************************************************************"
echo "    --------  TESTING THE JAR FILE  -------------          "
echo "************************************************************"
WORKSPACE='/home/jenkin/jenkins-data/jenkins_home/workspace/maven-pipeline-test'

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

