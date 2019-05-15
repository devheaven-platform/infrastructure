#!/bin/bash

echo "This tool will setup sonarqube on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing sonarqube"
helm install stable/sonarqube \
    --name sonarqube \
    --namespace sonarqube \
    --values values.yaml
echo

echo "Done"
echo
