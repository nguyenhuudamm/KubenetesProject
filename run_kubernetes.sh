#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="830989663524.dkr.ecr.us-east-1.amazonaws.com/damnh1-kubernestesproject:latest"

# Run in Docker Hub container with kubernetes
kubectl run kubernetesproject --image=830989663524.dkr.ecr.us-east-1.amazonaws.com/damnh1-kubernestesproject:latest --port=8000 --labels app=kubernetesproject

kubectl create deploy kubernetesproject --image=kubernetesproject:latest
    
    kubectl run kubernetesproject \
    --generator=run-pod/v1 \
    --image=$dockerpath:latest \
    --port=8080 --labels app=kubernetesproject

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward kubernetesproject 8000:80


#create:  
    eksctl create cluster --name kubernetesproject --region=us-east-1
#cleanup: 
    eksctl delete cluster --region=us-east-1 --name=kubernetesproject

 


