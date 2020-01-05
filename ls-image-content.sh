#!/bin/bash

context=$1
dir=`dirname $0`
tag='docker-ls-146f666a-1f26-4f5e-ad56-56bc769d1c65'

if [ -z "$context" ]; then
    context='.'
fi

docker build -t $tag -f "$dir/ls-image-content.dockerfile" $context
docker rmi $tag