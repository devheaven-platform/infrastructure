#!/bin/bash

echo "This tool will setup drone on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

printf "Please enter your github client id: "
read client_id

printf "Please enter your github client secret: "
read client_secret

echo "Installing drone"
helm install stable/drone \
    --name drone \
    --namespace drone-system \
    --values values.yaml
echo

echo "Adding secret"
kubectl create secret generic drone-server-secrets \
    --namespace=drone-system \
    --from-literal=DRONE_GITHUB_CLIENT="$client_id" \
    --from-literal=DRONE_GITHUB_SECRET="$client_secret"
echo

echo "Updating helm"
helm upgrade drone \
    --reuse-values \
    --set 'server.env.DRONE_PROVIDER="github"' \
    --set 'server.env.DRONE_GITHUB=true' \
    --set 'server.envSecrets.drone-server-secrets[0]=DRONE_GITHUB_CLIENT' \
    --set 'server.envSecrets.drone-server-secrets[1]=DRONE_GITHUB_SECRET' \
    stable/drone
echo

echo "Adding RBAC"
kubectl apply -f rbac.yaml
echo

echo "Done"
echo