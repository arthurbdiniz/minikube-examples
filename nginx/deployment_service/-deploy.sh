#!/bin/sh

kubectl apply -f deployment.yaml

kubectl apply -f service.yaml

kubectl get all
