# Infrastructure
This repository contains the configuration files for the production &amp; test environment. The platform is deployed on a kubernetes cluster. The cluster is running on a vsphere appliance provided by fontys. Each node in the cluster uses the CentOS operating system. Credentials for the vsphere appliance and the individual nodes can be found in the Google Drive for this project.

# Commands
* Kubernetes Dashboard: `kubectl proxy` [Open Dashboard](http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:https/proxy)
* Prometheus: `kubectl port-forward service/prometheus-prometheus 9090:9090 -n monitoring`
* Grafana Dashboard: `kubectl port-forward service/prometheus-grafana 8080:80 -n monitoring`

# Cluster Packges
These packages must be installed on each node for the cluster to operate:
* rsync
* nfs-utils

# Cluster Requirements
```
Provider: seclab
VPN: vpnseclab.fhict.nl

K8s-Master
 - Name: pts-s61e-k8s-master
 - Hostname: k8s-master.devheaven.com
 - IP: 10.10.0.10
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-1
 - Name: pts-s61e-k8s-node-1
 - Hostname: k8s-node-1.devheaven.com
 - IP: 10.10.0.20
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB
 
K8s-Node-2
 - Name: pts-s61e-k8s-node-2
 - Hostname: k8s-node-2.devheaven.com
 - IP: 10.10.0.30
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-3
 - Name: pts-s61e-k8s-node-3
 - Hostname: k8s-node-3.devheaven.com
 - IP: 10.10.0.40
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-4
 - Name: pts-s61e-k8s-node-4
 - Hostname: k8s-node-4.devheaven.com
 - IP: 10.10.0.50
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-5
 - Name: pts-s61e-k8s-node-5
 - Hostname: k8s-node-5.devheaven.com
 - IP: 10.10.0.60
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-6
 - Name: pts-s61e-k8s-node-6
 - Hostname: k8s-node-6.devheaven.com
 - IP: 10.10.0.70
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-7
 - Name: pts-s61e-k8s-node-7
 - Hostname: k8s-node-7.devheaven.com
 - IP: 10.10.0.80
 - CPU: 2 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-NFS
 - Name: pts-s61e-k8s-nfs
 - Hostname: k8s-nfs.devheaven.com
 - IP: 10.10.0.90
 - CPU:4 vCPUs
 - Memory: 8 GB
 - Disk: 200GB
```

# References

[Cluster Setup Scratch](https://kubernetes.io/docs/setup/scratch/)

[Cluster Networking](https://kubernetes.io/docs/concepts/cluster-administration/networking/)

[CNI Providers](https://chrislovecnm.com/kubernetes/cni/choosing-a-cni-provider/)

[K8 On Bare Metal](https://joshrendek.com/2018/04/kubernetes-on-bare-metal/)

[Kubectl Install](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

[NFS](http://teknoarticles.blogspot.com/2018/10/setup-nfs-client-provisioner-in.html)

[NFS CentOS](https://unix.stackexchange.com/questions/243756/nfs-servers-and-firewalld)

[Prometheus](https://itnext.io/kubernetes-monitoring-with-prometheus-in-15-minutes-8e54d1de2e13)

[Prometheues Operator](https://www.novatec-gmbh.de/en/blog/scale-your-spring-boot-application-in-kubernetes/)

[Squid Reverse Proxy pfSense](https://travellingtechguy.eu/reverse-proxy-with-pfsense-and-squid/)

[HaProxy Reverse Proxy pfSense](https://sysadms.de/2018/10/pfsense-haproxy-als-reverse-proxy/)

[Drone Setup](https://medium.com/honestbee-tw-engineer/setup-kubernetes-cluster-and-deploy-drone-on-aws-part-ii-c7b4a5e3f184)

[CI/CD Using Drone](https://medium.com/leboncoin-engineering-blog/ci-cd-with-drone-kubernetes-and-helm-part-1-a80df7098c61)

# Contribution
There are probably some points of improvement in the application design, structure or code.

If you believe there is a best practice I have not followed, please let me know by opening an issue on the issue tracker. Pull requests are welcome!

# License
DevHeaven is released under the [MIT license](http://opensource.org/licenses/MIT):

```
The MIT License (MIT)

Copyright (c) 2019 DevHeaven

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
