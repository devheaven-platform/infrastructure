# Infrastructure
This repository contains the configuration files for the production &amp; test environment. The platform is deployed on a kubernetes cluster. The cluster is running on a vsphere appliance provided by fontys. Each node in the cluster uses the CentOS operating system. Credentials for the vsphere appliance and the individual nodes can be found in the Google Drive for this project.

# Cluster Requirements
```
Provider: seclab
VPN: vpnseclab.fhict.nl

K8s-Master
 - Name: pts-s61e-k8s-master
 - Hostname: k8s-master.devheaven.com
 - IP: 192.168.24.50
 - CPU: 4 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-NFS
 - Name: pts-s61e-k8s-nfs
 - Hostname: k8s-nfs.devheaven.com
 - IP: 192.168.24.51
 - CPU:4 vCPUs
 - Memory: 8 GB
 - Disk: 200GB

K8s-Node-1
 - Name: pts-s61e-k8s-node-1
 - Hostname: k8s-node-1.devheaven.com
 - IP: 192.168.24.52
 - CPU: 4 vCPUs
 - Memory: 8 GB
 - Disk: 32GB
 
K8s-Node-2
 - Name: pts-s61e-k8s-node-2
 - Hostname: k8s-node-2.devheaven.com
 - IP: 192.168.24.53
 - CPU: 4 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-3
 - Name: pts-s61e-k8s-node-3
 - Hostname: k8s-node-3.devheaven.com
 - IP: 192.168.24.54
 - CPU: 4 vCPUs
 - Memory: 8 GB
 - Disk: 32GB

K8s-Node-4
 - Name: pts-s61e-k8s-node-4
 - Hostname: k8s-node-4.devheaven.com
 - IP: 192.168.24.55
 - CPU: 4 vCPUs
 - Memory: 8 GB
 - Disk: 32GB
```

# References

[Cluster Setup Scratch](https://kubernetes.io/docs/setup/scratch/)

[Cluster Networking](https://kubernetes.io/docs/concepts/cluster-administration/networking/)

[CNI Providers](https://chrislovecnm.com/kubernetes/cni/choosing-a-cni-provider/)

[K8 On Bare Metal](https://joshrendek.com/2018/04/kubernetes-on-bare-metal/)

[Kubectl Install](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

[Prometheus](https://itnext.io/kubernetes-monitoring-with-prometheus-in-15-minutes-8e54d1de2e13)

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
