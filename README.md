# terraform-multipass-kubernetes
Build a Local Kubernetes cluster the easiest way.

The cluster is built using [Kubeadm](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/), providing 1 control-plane node and 3 worker nodes, although you can customize this setup.

Reference from \
https://medium.com/globant/kubernetes-magic-0dd051f046e8 \
https://blog.kubesimplify.com/kubernetes-on-apple-macbooks-m-series

## Prerequisite:
* [Terraform](https://developer.hashicorp.com/terraform/downloads?product_intent=terraform)
* [Multipass](https://multipass.run/)
* [Kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
