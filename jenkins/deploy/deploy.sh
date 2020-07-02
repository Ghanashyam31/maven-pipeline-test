#!/bin/bash

export IMAGE=maven-project
export PASS=Power@#1234

echo "$IMAGE" > /tmp/.auth
echo "$BUILD_ID" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp -i /tmp/id_rsa /tmp/.auth produser@192.168.1.57:/tmp/.auth
scp -i /tmp/id_rsa jenkins/deploy/publish.sh produser@192.168.1.57:/tmp/publish.sh

ssh -i /tmp/id_rsa produser@192.168.1.57 "/tmp/publish.sh"
