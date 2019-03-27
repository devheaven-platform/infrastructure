#!/bin/bash

echo "This tool will setup nfs on a kubernetes cluster."
echo "It expects that you have your cluster up and running and"
echo "helm installed."
echo

printf "Please enter your nfs ip: "
read ip

printf "Please enter your nfs share path: "
read path

echo "Installing nfs"
helm install stable/nfs-client-provisioner \
    --name nfs \
    --namespace kube-system \
    --set nfs.server=$ip \
    --set nfs.path=$path \
    --values values.yaml
echo

echo "Set as default"
kubectl patch storageclass nfs-client -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
echo

echo "Done"
echo
