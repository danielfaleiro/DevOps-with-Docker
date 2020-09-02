#!/bin/bash
set -e

mkdir -p rep
cd rep
git clone $1 .
docker build -t $3/$2 .
echo "$4" | docker login --username=$3 --password-stdin
docker push $3/$2
cd ..
rm -r rep/