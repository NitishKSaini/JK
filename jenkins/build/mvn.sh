#!/bin/bash
echo "***************************"
echo "******* Building Jar ******"
echo "***************************"

WORKSPACE=/home/nsaini/jenkins/jenkins-data/jenkins_home/jobs/Jenkins-docker/workspace
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:alpine "$@"
