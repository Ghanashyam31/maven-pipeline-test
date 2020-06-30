#!/bin/bash

export IMAGE=maven-project
export BUILD_ID=10
export PASS=Power@#1234

echo "$IMAGE" > /tmp/.auth
echo "$BUILD_ID" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp /tmp/.auth produser@192.168.1.57:/tmp/.auth
scp jenkins/deploy/publish.sh produser@192.168.1.57:/tmp/publish.sh

ssh produser@192.168.1.57 "/tmp/publish.sh"
