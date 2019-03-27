#!/bin/bash

echo "This tool will setup prometheus on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

printf "Please enter your grafana password: "
read password

echo "Installing prometheus"
helm install stable/prometheus-operator \
    --name=prometheus-operator \
    --namespace monitoring \
    --values values.yaml \
    --set grafana.adminPassword=$password \
    --tiller-namespace helm-system
echo

echo "Setting up monitors"
kubectl apply -f monitors.yaml
echo

echo "Done"
echo