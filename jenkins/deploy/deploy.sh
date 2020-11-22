#!/bin/bash
echo maven-project >/tmp/auth
echo $BUILD_TAG >>/tmp/auth
echo $PASS >>/tmp/auth
scp -i /opt/id_rsa /tmp/auth nsaini@192.168.0.15:/tmp/auth
scp -i /opt/id_rsa publish  nsaini@192.168.0.15:/home/nsaini/maven
ssh -i /opt/id_rsa nsaini@192.168.0.15 "/home/nsaini/maven/publish"

