#!/bin/sh

kubectl delete -f pod.yaml

kubectl delete -f service.yaml

kubectl get all
