#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

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



export KUBECONFIG=$KUBECONFIG:/home/ec2-user/.kube/config
export KUBECONFIG=/home/ec2-user/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl config view --raw > ~/.kube/admin.conf
cp /etc/kubernetes/admin.conf $HOME/
chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

echo 'export KUBECONFIG=$HOME/admin.conf' >> $HOME/.bashrc
echo 'export KUBECONFIG=$HOME/.kube/config' >> $HOME/.bashrc

kubectl config use-context arn:aws:eks:us-east-1:830989663524:cluster/kubernitesproject

kubectl config set-credentials <user-name> --username=<your-username> --password=<your-password>

kubectl config set-credentials my-user --token=your-token

aws eks describe-cluster --name kubernetesproject --region us-east-1

# setting cluster
#create:  
    eksctl create cluster --name kubernetesproject --region=us-east-1
#cleanup: 
    eksctl delete cluster --region=us-east-1 --name=kubernetesproject
eksctl get cluster --name=kubernitesproject --region=us-east-1

# lệnh xác định IAM của aws 
aws sts get-caller-identity
# lệnh xác định IAM của user tạo cluster
aws eks describe-cluster --name kubernetesproject
# update
aws eks update-kubeconfig --region us-east-1 --name kubernitesproject
aws eks update-kubeconfig --region us-east-1 --name kubernetesproject --profile default
# xac nhận rằng tệp kubeconfig đã được cập nhật, hãy chạy lệnh sau:
kubectl config view --minify


 kubectl -n kube-system edit configmap aws-auth

 


