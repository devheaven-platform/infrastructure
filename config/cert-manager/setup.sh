#!/bin/bash

echo "This tool will setup cert-manager on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing CRD's"
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.7/deploy/manifests/00-crds.yaml
echo

echo "Creating namespace"
kubectl create namespace cert-manager
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
echo

echo "Adding jetstack repo"
helm repo add jetstack https://charts.jetstack.io
helm repo update
echo

echo "Installing cert-manager"
helm install \
  --name cert-manager \
  --namespace cert-manager \
  --version v0.7.0 \
  --values values.yaml \
  jetstack/cert-manager
echo

echo "Setting up cluster issuer's"
kubectl apply -f issuers.yaml
echo

echo "Done"
echo