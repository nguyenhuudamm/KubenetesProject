#!/usr/bin/env bash

docker --version

# Step 1:
# Build image and add a descriptive tag
docker build -t python-helloworld .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d -p 5000:5000 python-helloworld

docker ps

docker tag python-helloworld damnh1/python-helloworld:v1.0.0

docker login

docker push sudkul/python-helloworld:v1.0.0
