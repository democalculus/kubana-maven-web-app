#!/bin/bash

mss_pod_app="mss-maven-pod"

sleep 20s

if [[ $(kubectl -n ibm-ucd get deploy ${mss_pod_app} --timeout 5s) = *"successfully rolled out"* ]];
then
	echo "Deployment ${mss_pod_app} was successful"
    exit 0;
else
	echo "mss pod Dployment ${mss_pod_app} exist"
	echo "Here is the image: ${imageName}"
fi
