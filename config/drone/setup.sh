#!/bin/bash

echo "This tool will setup drone on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

printf "Please enter your drone host name: "
read host

printf "Please enter your drone secret: "
read secret

printf "Please enter your github client id: "
read client_id

printf "Please enter your github client secret: "
read client_secret

echo "Installing drone"
helm install stable/drone --name drone --namespace drone-system --values values.yaml \
    --set "sever.env.DRONE_KUBERNETES_ENABLED=true" \
    --set "server.env.DRONE_KUBERNETES_NAMESPACE=drone-system" \
    --set "server.env.DRONE_SERVER_HOST=$host" \
    --set "server.env.DRONE_RPC_SECRET=$secret" \
    --set "server.env.DRONE_PROVIDER=github" \
    --set "server.env.DRONE_GITHUB_SERVER=https://github.com" \
    --set "server.env.DRONE_GITHUB_CLIENT_ID=$client_id" \
    --set "server.env.DRONE_GITHUB_CLIENT_SECRET=$client_secret"
echo

echo "Done"
echo