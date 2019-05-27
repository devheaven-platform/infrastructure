#!/bin/bash

echo "This tool will setup promtail on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Adding promtail to helm"
helm repo add loki https://grafana.github.io/loki/charts
helm repo update
echo "Installing promtail"
helm install promtail loki/promtail \
    --name promtail \
    --namespace logging \
    --values values.yaml
echo

echo "Done"
echo
