#!/bin/bash

# Build Docker image
docker build -t counter-app:v1 .

# Deploy to Kubernetes
kubectl apply -f redis-deployment.yaml
kubectl apply -f redis-service.yaml
kubectl apply -f counter-app-deployment.yaml
kubectl apply -f counter-app-service.yaml


sleep 3

kubectl get service counter-app-service


# cleanup
# kubectl delete service counter-app
# kubectl delete deployment counter-app
# kubectl delete deployment redis-deployment
# kubectl delete service redis-master
