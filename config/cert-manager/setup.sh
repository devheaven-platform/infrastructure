#!/bin/bash

echo "This tool will setup cert-manager on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing CRD's"
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.6/deploy/manifests/00-crds.yaml
echo

echo "Installing cert-manager"
helm install stable/cert-manager \
    --name cert-manager \
    --namespace cert-manager-system \
    --values values.yaml
echo

echo "Deploy issuer"
kubectl apply -f issuer.yaml
echo

echo "Done"
echo