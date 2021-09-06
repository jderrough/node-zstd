#!/bin/bash
versions=( 12 14 16 )
for i in "${versions[@]}"
do
  echo "Build image for node $i"
  docker build -t jderrough/node-zstd:ubuntu-node$i --build-arg NODE_VERSION=$i .
done