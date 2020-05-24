#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="yasirjanjua/machine-learning-services-kubernetes:lastest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-ml-project --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-ml-project --type="NodePort" --port=80
kubectl port-forward deployment/udacity-ml-project 8000:80
