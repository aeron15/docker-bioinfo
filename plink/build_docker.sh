#!/bin/bash
VERSION_FILE='VERSION'
IMAGE_BASE_NAME=plink
export VERSION="${IMAGE_BASE_NAME}:$(cat ${VERSION_FILE})"

CMD="docker build -t $VERSION ."
echo $CMD
eval $CMD
