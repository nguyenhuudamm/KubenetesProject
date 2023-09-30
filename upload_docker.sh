#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 0:
# Login to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 830989663524.dkr.ecr.us-east-1.amazonaws.com

# Step 1:
# Create dockerpath
dockerpath=damnh1-kubernestesproject

# Step 2:
# Authenticate & tag
docker tag damnh1-kubernestesproject:latest 830989663524.dkr.ecr.us-east-1.amazonaws.com/damnh1-kubernestesproject:latest

# Step 3:
# Push image to a docker repository
docker push damnh1/kubernetesproject:latest
