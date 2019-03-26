#!/bin/bash

echo "This tool will setup cert-manager on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing cert-manager"
helm install stable/ambassador --name ambassador --namespace ambassador-system --values values.yaml
echo

echo "Done"
echo