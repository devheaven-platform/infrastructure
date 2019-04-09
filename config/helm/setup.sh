#!/bin/bash

echo "This tool will setup helm on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed on your local computer."
echo

echo "Creating service account"
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding helm:tiller --clusterrole cluster-admin --serviceaccount kube-system:tiller
echo

echo "Installing tiller"
helm init --service-account tiller
echo

echo "Done"