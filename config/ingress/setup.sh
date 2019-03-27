#!/bin/bash

echo "This tool will setup ingress on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing ingress"
helm install stable/nginx-ingress \
    --name ingress \
    --namespace ingress-system \
    --values values.yaml
echo

echo "Done"
echo