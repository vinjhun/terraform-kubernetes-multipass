#!/bin/bash
echo "*** Waiting for Cloud-Init to finish ***"
cloud-init status --wait
echo "*** Kubernetes Initializing:"
export LOCAL_IP=$(hostname -I | awk '{print $1}')
export HAPROXY_IP=$(cat /tmp/haproxy_ip)
kubeadm init \
  --upload-certs \
  --pod-network-cidr 10.244.0.0/16 \
  --apiserver-advertise-address $LOCAL_IP \
  --control-plane-endpoint $HAPROXY_IP:6443 | tee /tmp/kubeadm.log
echo "*** Installing Calico:"
# export K8S_VERSION="$(kubectl version | base64 | tr -d '\n')"
# export WEAVE_URL="https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml"
# kubectl apply -f "$WEAVE_URL"
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.1/manifests/tigera-operator.yaml
wget  https://raw.githubusercontent.com/projectcalico/calico/v3.28.1/manifests/custom-resources.yaml
sed -i -e 's,cidr: 192.168.0.0/16,cidr: 10.244.0.0/16,' custom-resources.yaml
kubectl create -f custom-resources.yaml
echo "*** Waiting for Kubernetes to get ready:"
STATE="NotReady"
while test "$STATE" != "Ready" ; do
STATE=$(kubectl get node | tail -1 | awk '{print $2}')
echo -n "." ; sleep 1
done
echo ""
if grep "kubeadm join" /tmp/kubeadm.log >/dev/null; then
  echo -n '{"join":"'$(kubeadm token create --ttl 0 --print-join-command)'"}' > /etc/join.json
  kubeadm init phase upload-certs --upload-certs --one-output | tail -1 > cert_id.txt
  echo -n '{"join":"'$(kubeadm token create --ttl 0 --certificate-key $(cat cert_id.txt) --print-join-command)'"}' > /etc/join-master.json
fi
