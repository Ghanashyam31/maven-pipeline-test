#!/bin/bash

echo "************************************************************"
echo "    --------  TESTING THE JAR FILE  -------------          "
echo "************************************************************"
WORKSPACE='/home/jenkin/jenkins-data/jenkins_home/workspace/mav-project1-pipeline-29june2020'

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

