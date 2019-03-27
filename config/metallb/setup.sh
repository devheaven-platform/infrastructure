#!/bin/bash

echo "This tool will setup metallb on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing metallb"
helm install stable/metallb \
    --name metallb \
    --namespace metallb-system \
    --values values.yaml \
    --tiller-namespace helm-system
echo

echo "Done"
echo