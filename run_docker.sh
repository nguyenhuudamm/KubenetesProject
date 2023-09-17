#!/usr/bin/env bash

docker --version

# Step 1:
# Build image and add a descriptive tag
docker build -t kubernitesproject .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d -p 8080:80 kubernitesproject

# Step 4:
# Check container
docker ps

