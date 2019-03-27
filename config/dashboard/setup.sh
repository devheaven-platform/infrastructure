#!/bin/bash

echo "This tool will setup dashboard on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing dashboard"
helm install stable/kubernetes-dashboard --name dashboard --namespace kube-system --values values.yaml
echo

echo "Done"
echo