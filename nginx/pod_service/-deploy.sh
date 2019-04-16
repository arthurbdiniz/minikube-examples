#!/bin/sh

kubectl apply -f pod.yaml

kubectl apply -f service.yaml

kubectl get all
