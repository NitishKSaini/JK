#!/bin/bash
echo maven-project >/tmp/auth
echo $BUILD_TAG >>/tmp/auth
echo $PASS >>/tmp/auth
scp -i /opt/id_rsa /tmp/auth  root@192.168.1.129:/tmp/auth
scp -i /opt/id_rsa ./jenkins/deploy/publish root@192.168.1.129:/tmp/publish
ssh -i /opt/id_rsa root@192.168.1.129 "/tmp/publish"
