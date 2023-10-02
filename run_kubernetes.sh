#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="830989663524.dkr.ecr.us-east-1.amazonaws.com/damnh1-kubernestesproject:latest"

# Run in Docker Hub container with Kubernetes
kubectl run kubernetesproject --image=$dockerpath --port=8000 --labels app=kubernetesproject

# Create deploy
kubectl create deploy kubernetesproject --image=kubernetesproject:latest
sleep 120
# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward kubernetesproject 8081:8080