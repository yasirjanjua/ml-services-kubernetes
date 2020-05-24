#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="yasirjanjua/machine-learning-services-kubernetes:lastest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacity-project-4 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-project-4 --type="NodePort" --port=80
kubectl port-forward deployment/udacity-project-4 8000:80
