#!/usr/bin/env bash

dockerpath="saadaj/mlproj"

# Run in Docker Hub container with kubernetes
kubectl run --image=$dockerpath mlprojdemo --port=80 --labels app=mlprojemo

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward mlprojdemo 8000:80