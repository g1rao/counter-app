#!/bin/bash
kubectl delete service counter-app-service
kubectl delete deployment counter-app
kubectl delete deployment redis-deployment
kubectl delete service redis-master
