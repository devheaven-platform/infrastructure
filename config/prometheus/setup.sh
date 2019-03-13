#!/bin/bash

echo "This tool will setup prometheus on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

read -n 1 -s -r -p "Press any key to continue: "

echo "Installing prometheus"
helm install stable/prometheus-operator --namespace monitoring --values values.yaml
echo

echo "Setting up monitors"
kubectl apply -f monitors.yaml
echo

echo "Done"
echo