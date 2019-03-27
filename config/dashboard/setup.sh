#!/bin/bash

echo "This tool will setup dashboard on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Creating service account"
kubectl create ns kube-dashboard
kubectl create serviceaccount dashboard-admin -n kube-dashboard
kubectl create clusterrolebinding dashboard-admin --clusterrole=cluster-admin --serviceaccount=kube-dashboard:dashboard-admin
echo

echo "Installing dashboard"
helm install stable/kubernetes-dashboard \
    --name dashboard \
    --namespace kube-system \
    --values values.yaml \
    --tiller-namespace helm-system
echo

echo "Use the following token to interact with the dashboard:"
kubectl describe secret dashboard-admin | awk '$1=="token:"{print $2}'
echo

echo "Done"
echo