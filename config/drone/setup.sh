#!/bin/bash

echo "This tool will setup drone on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

printf "Please enter your drone secret: "
read secret

printf "Please enter your github client id: "
read client_id

printf "Please enter your github client secret: "
read client_secret

echo "Installing drone"
kubectl apply -f namespace.yaml
cat secrets.yaml | sed "s/{{SECRET}}/$secret/g" | kubectl apply -f -
cat config.yaml | sed "s/{{GITHUB_CLIENT_ID}}/$client_id/g" | sed "s/{{GITHUB_CLIENT_SECRET}}/$client_secret/g" | kubectl apply -f -
kubectl apply -f pvc.yaml
kubectl apply -f deployment-server.yaml
kubectl apply -f deployment-agent.yaml
kubectl apply -f service-server.yaml
kubectl apply -f ingress.yaml
echo

echo "Done"
echo