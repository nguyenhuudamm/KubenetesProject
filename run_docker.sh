#!/usr/bin/env bash

docker --version

# Step 1:
# Build image and add a descriptive tag
docker build -t damnh1-kubernestesproject .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d -p 8000:80 kubernetesproject

# Step 4:
# Check container
docker ps

# Step 5:
# Get IP address
# docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container-id>
# docker run -it --network container:19ad54b7d4d3 ubuntu:latest

