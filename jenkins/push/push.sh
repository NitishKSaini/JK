#!/bin/bash
echo "*********************"
echo "****Pushing**********"
echo "*********************"
image="maven-project"
docker login -u nitishsaini -p $PASS
docker tag $image:$BUILD_TAG nitishsaini/$image:$BUILD_TAG
docker push nitishsaini/$image:$BUILD_TAG

