#!/bin/bash

echo "This tool will setup Kafka on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Adding repo"
helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
echo

echo "Creating namespace"
kubectl create ns kafka-system
echo

echo "Installing kafka"
helm install incubator/kafka \
    --name kafka \
    --namespace kafka-system \
    --values values.yaml
echo

echo "Done"
echo