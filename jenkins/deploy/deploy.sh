#!/bin/bash

<<<<<<< HEAD
export IMAGE=maven-project
export BUILD_ID=10
export PASS=Power@#1234
=======
>>>>>>> 1b5f2db4bf2353a86d2a93c0a4dcbc21ed594d15

echo "$IMAGE" > /tmp/.auth
echo "$BUILD_ID" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

<<<<<<< HEAD
scp -i /tmp/id_rsa /tmp/.auth produser@192.168.1.57:/tmp/.auth
scp -i /tmp/id_rsa jenkins/deploy/publish.sh produser@192.168.1.57:/tmp/publish.sh

ssh -i /tmp/id_rsa produser@192.168.1.57 "/tmp/publish.sh"
=======
scp /tmp/.auth produser@jenkin-prod:/tmp/.auth
scp jenkin/deploy/publish.sh produser@jenkin-prod:/tmp/publish.sh

ssh produser@jenkin-prod "/tmp/publish.sh"
>>>>>>> 1b5f2db4bf2353a86d2a93c0a4dcbc21ed594d15
