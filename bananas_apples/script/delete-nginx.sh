#!/bin/sh

# Start by creating the “mandatory” resources for Nginx Ingress in your cluster.
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

# Then, disable the ingress add-on for Minikube.
minikube addons disable ingress

# Check that it’s all set up correctly.
kubectl get pods --all-namespaces -l app=ingress-nginx