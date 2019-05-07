#!/bin/bash

echo "This tool will setup Kafka on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Adding repo"
helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
echo

echo "Installing kafka in staging"
helm install incubator/kafka \
    --name kafka-staging \
    --namespace staging \
    --values values.yaml
echo

echo "Installing kafka in production"
helm install incubator/kafka \
    --name kafka-production \
    --namespace production \
    --values values.yaml
echo

echo "Done"
echo