echo "deploying kubernetes (with calico)..."
kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address=192.167.10.70
export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/canal/rbac.yaml
kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/canal/canal.yaml