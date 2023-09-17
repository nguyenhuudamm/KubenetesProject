#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# setting cluster
# eksctl create cluster --name kubernitesproject --region=us-east-1
# eksctl get cluster --name=kubernitesproject --region=us-east-1
# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="damnh1/kubernitesproject"

# Run in Docker Hub container with kubernetes
kubectl run kubernitesproject --image=kubernitesproject2:latest --port=8080 --labels app=kubernitesproject2

kubectl create deploy kubernitesproject --image=kubernitesproject:latest
    
    kubectl run kubernitesproject \
    --generator=run-pod/v1 \
    --image=$dockerpath:latest \
    --port=8080 --labels app=kubernitesproject

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskskearlndemo 8000:80

aws eks update-kubeconfig --region us-east-1 --name kubernitesproject
aws eks update-kubeconfig --name kubernitesproject --region us-east-1 --profile default

export KUBECONFIG=$KUBECONFIG:/home/ec2-user/.kube/config
echo 'export KUBECONFIG=$KUBECONFIG:/home/ec2-user/.kube/config' >> ~/.bashrc

kubectl config use-context arn:aws:eks:us-east-1:830989663524:cluster/kubernitesproject

kubectl config set-credentials <user-name> --username=<your-username> --password=<your-password>

aws eks describe-cluster --name kubernitesproject --region us-east-1

# lệnh xác định IAM của aws 
 aws sts get-caller-identity
 
 kubectl -n kube-system edit configmap aws-auth

 


