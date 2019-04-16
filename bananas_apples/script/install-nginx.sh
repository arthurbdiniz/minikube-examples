#!/bin/sh

# Start by creating the “mandatory” resources for Nginx Ingress in your cluster.
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

# Then, enable the ingress add-on for Minikube.
minikube addons enable ingress

# Check that it’s all set up correctly.
kubectl get pods --all-namespaces -l app=ingress-nginx