#!/bin/bash

echo "This tool will setup dashboard on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Creating service account"
kubectl create serviceaccount dashboard-admin -n kube-system
kubectl create clusterrolebinding dashboard:dashboard-admin --clusterrole=cluster-admin --serviceaccount=kube-system:dashboard-admin
echo 

echo "Installing dashboard"
helm install stable/kubernetes-dashboard \
    --name dashboard \
    --namespace kube-system \
    --values values.yaml

echo

echo "Use the following token to interact with the dashboard:"
kubectl describe secret dashboard-admin -n kube-system | awk '$1=="token:"{print $2}'
echo

echo "Done"
echo