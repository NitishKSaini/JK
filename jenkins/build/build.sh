#!/bin/bash
echo "****************************"
echo "******copy jar file ********"
echo "****************************"

cp java-app/target/*.jar jenkins/build
echo "*********************************"
echo "******build-jar-file*************"
echo "*********************************"

cd jenkins/build && docker-compose -f docker-compose-build.yml build




