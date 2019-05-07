#!/bin/bash

echo "This tool will setup a minecraft server on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

echo "Installing minecraft server"
helm install stable/minecraft \
    --name minecraft \
    --namespace minecraft \
    --values values.yaml \
    --set minecraftServer.eula=true
echo

echo "Done"
echo