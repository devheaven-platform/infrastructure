#!/bin/bash

echo "This tool will setup loki on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Adding loki to helm"
helm repo add loki https://grafana.github.io/loki/charts
helm repo update
echo "Installing loki"
helm install loki loki/loki \
    --name loki \
    --namespace logging \
    --values loki/values.yaml
echo

echo "Installing promtail"
helm install promtail loki/promtail \
    --name promtail \
    --namespace logging \
    --values promtail/values.yaml
echo

echo "Done"
echo

