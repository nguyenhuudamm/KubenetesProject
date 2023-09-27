#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=damnh1/kubernetesproject

# Step 2:  z0-=====================================
# Authenticate & tag
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 830989663524.dkr.ecr.us-east-1.amazonaws.com
docker tag kubernetesproject:latest $dockerpath:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest



docker tag kubernetesproject:latest damnh1/kubernetesproject:latest
echo "Docker ID and Image: damnh1/kubernetesproject"

# Step 3:
# Push image to a docker repository
docker push damnh1/kubernetesproject:latest
