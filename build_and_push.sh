#!/usr/bin/env bash

timestamp=`date +%Y%m%d%H%M%S`
echo $timestamp

docker build . \
    -t asfer/load-test-tools:$timestamp \
    -t asfer/load-test-tools:latest 

docker push asfer/load-test-tools:$timestamp
docker push asfer/load-test-tools:latest 

