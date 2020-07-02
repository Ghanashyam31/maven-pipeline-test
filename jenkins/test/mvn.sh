#!/bin/bash

echo "************************************************************"
echo "    --------  TESTING THE JAR FILE  -------------          "
echo "************************************************************"
<<<<<<< HEAD
WORKSPACE='/home/jenkin/jenkins-data/jenkins_home/workspace/mav-project1-pipeline-29june2020'

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
=======

WORKSPACE='/home/jenkin/jenkins-data/jenkins_home/workspace/final-pipeline'

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
>>>>>>> 1b5f2db4bf2353a86d2a93c0a4dcbc21ed594d15

