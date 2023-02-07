#!/bin/sh

image=$1

# sudo docker run -v $(pwd)/test_dir:/opt/ml -p 8080:8080 --rm ${image} inference-container

sudo docker run -it -d --volume $(pwd)/test_dir:/opt/ml -p 8080:8080 inference-container
