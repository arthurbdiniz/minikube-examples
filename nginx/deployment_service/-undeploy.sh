#!/bin/sh

kubectl delete -f deployment.yaml

kubectl delete -f service.yaml

kubectl get all
